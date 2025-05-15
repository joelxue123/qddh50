#ifndef __MOTOR_HPP
#define __MOTOR_HPP


#include <cstdint>  // Add this for uint32_t
#include "component.hpp"

#include "interfaces.hpp"
#include "phase_control_law.hpp"
#include "main.h"
#include "current_limiter.hpp"
#include "foc.hpp"
#include <algorithm>  // Add this for std::clamp


class FieldOrientedController;
class Axis;

class Motor : public ODriveIntf::MotorIntf{
public:
    struct Iph_BC_t {
        volatile int16_t Q16_phA;
        volatile int16_t Q16_phB;    
        volatile int16_t Q16_phC;
        float phA;
        float phB;
        float phC;
    };

    enum MotorType {
        MOTOR_TYPE_HIGH_CURRENT          = 0,
        MOTOR_TYPE_GIMBAL                = 2,
        MOTOR_TYPE_ACIM                  = 3,
    };

    int16_t timing_log_[TIMING_LOG_NUM_SLOTS];
    struct CurrentControl_t{
        float p_gain; // [V/A]
        float i_gain; // [V/As]
        float v_current_control_integral_d; // [V]
        float v_current_control_integral_q; // [V]
        float Ibus; // DC bus current [A]
        // Voltage applied at end of cycle:
        float final_v_alpha; // [V]
        float final_v_beta; // [V]

        float final_v_d; // [V]
        float final_v_q; // [V]

        float Id_setpoint; // [A]
        float Iq_setpoint; // [A]
        float Iq_measured; // [A]
        float Id_measured; // [A]
        float I_measured_report_filter_k;
        float max_allowed_current; // [A]
        float overcurrent_trip_level; // [A]
        float acim_rotor_flux; // [A]
        float async_phase_vel; // [rad/s electrical]
        float async_phase_offset; // [rad electrical]
    };
    
     float CALIBRATION_INCREMENT = 1.0f;
    // NOTE: for gimbal motors, all units of Nm are instead V.
    // example: vel_gain is [V/(turn/s)] instead of [Nm/(turn/s)]
    // example: current_lim and calibration_current will instead determine the maximum voltage applied to the motor.
    struct Config_t {
        bool pre_calibrated = false; // can be set to true to indicate that all values here are valid
        int32_t pole_pairs = 21;
        int32_t gear_ratio = 16;
        float motor_torque_base = 60.0f; // [Nm]
        float calibration_current = 10.0f;    // [A]
        float resistance_calib_max_voltage = 6.0f; // [V] - You may need to increase this if this voltage isn't sufficient to drive calibration_current through the motor.
        float phase_inductance = 0.000055f;        // to be set by measure_phase_inductance
        float phase_resistance = 0.07f;        // to be set by measure_phase_resistance
        float torque_constant = 0.087f;         // [Nm/A] for PM motors, [Nm/A^2] for induction motors. Equal to 8.27/Kv of the motor
        int32_t direction = 1;                // 1 or -1 (0 = unspecified)
        MotorType motor_type = MOTOR_TYPE_HIGH_CURRENT;
        // Read out max_allowed_current to see max supported value for current_lim.
        // float current_lim = 70.0f; //[A]
        float current_lim = 10.0f;          //[A]
        float current_lim_margin = 8.0f;    // Maximum violation of current_lim
        float torque_lim = 60.f;//std::numeric_limits<float>::infinity();           //[Nm]. 
        // Value used to compute shunt amplifier gains
        float requested_current_range = 60.0f; // [A]
        float current_control_bandwidth = 3000.0f;  // [rad/s]
        float inverter_temp_limit_lower = 100;
        float inverter_temp_limit_upper = 120;
  

        float TORQUE_LINEARITY_POSITIVE[NUM_LINEARITY_SEG]={1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1};
        float TORQUE_LINEARITY_NEGATIVE[NUM_LINEARITY_SEG]={1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1};

        float CURRENT2TORQUE_COEFF_POSITIVE[NUM_LINEARITY_SEG]={1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1};  // 正向电流-力矩系数
        float CURRENT2TORQUE_COEFF_NEGATIVE[NUM_LINEARITY_SEG]={1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1};  // 负向电流-力矩系数

        bool R_wL_FF_enable = false; // Enable feedforwards for R*I and w*L*I terms
        bool bEMF_FF_enable = false; // Enable feedforward for bEMF

        float I_bus_hard_min = -INFINITY;
        float I_bus_hard_max = INFINITY;
        // custom property setters
        Motor* parent = nullptr;
        void set_pre_calibrated(bool value) {
            pre_calibrated = value;
            parent->is_calibrated_ = parent->is_calibrated_ || parent->config_.pre_calibrated;
        }
        void set_phase_inductance(float value) { phase_inductance = value; parent->update_current_controller_gains(); }
        void set_phase_resistance(float value) { phase_resistance = value; parent->update_current_controller_gains(); }
        void set_current_control_bandwidth(float value) { current_control_bandwidth = value; parent->update_current_controller_gains(); }
    };

    struct ProtectionConfig {
        float CURRENT_THRESHOLD = 40.0f * 0.95f;    // Stall current threshold
        float I2T_THRESHOLD = 3360.0f;              // I2t protection threshold
        static constexpr float DECAY_FACTOR = 0.9998f;               // I2t decay factor
        static constexpr float THERMAL_INTEGRATION_RATE = 0.002f;    // Integration time constant
        static constexpr int STALL_COUNT_THRESHOLD = 250;           // Stall detection time
    };





    Motor(const MotorHardwareConfig_t& hw_config,
         Config_t& config);


    bool arm(PhaseControlLaw<3>* control_law);
    bool disarm();

    void current_meas_cb(uint32_t timestamp);
    void pwm_update_cb(uint32_t output_timestamp);

    void setup() {
        int32_t index = 0;

        is_calibrated_ = config_.pre_calibrated;
        update_current_controller_gains();
        
        for( index = 0;index < NUM_LINEARITY_SEG;index++)
        {
            L_Slop_Array_P_[index] = config_.TORQUE_LINEARITY_POSITIVE[index];
            L_Slop_Array_N_[index] = config_.TORQUE_LINEARITY_NEGATIVE[index];
        }
        protection_config_.CURRENT_THRESHOLD = std::clamp(config_.current_lim  - 1.5f,1.0f,config_.current_lim);
        peak_current_ = config_.current_lim *1.414f* 0.5f ;
        nominal_current_ = peak_current_ * 0.5f;
        protection_config_.I2T_THRESHOLD = peak_current_ * peak_current_*3.0f;


    }
    void reset_current_control();

    void update_current_controller_gains();
    void DRV8301_setup();

    bool check_DRV_fault();
    void set_error(ODriveIntf::MotorIntf::Error error);
    bool do_checks();
    float effective_current_lim();
    float max_available_torque();
    void log_timing(ODriveIntf::TimingLog_t log_idx);
    float phase_current_from_adcval(int32_t ADCValue, float phase_current_gain_coeff);
    bool check_for_current_saturation(const uint32_t ADCValue);
    bool measure_phase_resistance(float test_current, float max_voltage);
    bool measure_phase_inductance(float test_voltage);
    bool run_calibration();
    void measure_current_offset();


    bool check_protection(void);


    bool enqueue_modulation_timings(float mod_alpha, float mod_beta);
    bool enqueue_voltage_timings(float v_alpha, float v_beta);
    bool FOC_voltage(float v_d, float v_q, float pwm_phase);
    bool FOC_current(float Id_des, float Iq_des, float I_phase, float pwm_phase);
    bool update(float current_setpoint, float phase, float phase_vel);
    void update(uint32_t timestamp);
    void pos_linearity_ini(void);
    float current_Correct(int32_t Torque_Org);
    void abc_sign_calculation(float phase , int32_t *a, int32_t *b, int32_t *c);
    void apply_pwm_timings(uint16_t timings[3], bool tentative);
    const MotorHardwareConfig_t& hw_config_;
    Config_t& config_;
    Axis* axis_ = nullptr; // set by Axis constructor

//private:

    uint16_t next_timings_[3] = {
        TIM_1_8_PERIOD_CLOCKS / 2,
        TIM_1_8_PERIOD_CLOCKS / 2,
        TIM_1_8_PERIOD_CLOCKS / 2
    };
    bool next_timings_valid_ = false;
    uint16_t last_cpu_time_ = 0;

    
    // variables exposed on protocol
    ODriveIntf::MotorIntf::Error error_ = ODriveIntf::MotorIntf::ERROR_NONE;
    // Do not write to this variable directly!
    // It is for exclusive use by the safety_critical_... functions.
    bool is_armed_ = false;
    ArmedState armed_state_ = ARMED_STATE_DISARMED; 
    bool is_calibrated_ = config_.pre_calibrated;
    Iph_BC_t current_meas_ ;
    Iph_BC_t DC_calib_ = {0,0,0,0.0f,0.0f, 0.0f};
    float phase_current_rev_gain_ = 0.0f; // Reverse gain for ADC to Amps (to be set by DRV8301_setup)
    CurrentControl_t current_control1_ = {
        .p_gain = 0.0f,        // [V/A] should be auto set after resistance and inductance measurement
        .i_gain = 0.0f,        // [V/As] should be auto set after resistance and inductance measurement
        .v_current_control_integral_d = 0.0f,
        .v_current_control_integral_q = 0.0f,
        .Ibus = 0.0f,
        .final_v_alpha = 0.0f,
        .final_v_beta = 0.0f,
        .final_v_d = 0.0f,
        .final_v_q = 0.0f,
        .Id_setpoint = 0.0f,
        .Iq_setpoint = 0.0f,
        .Iq_measured = 0.0f,
        .Id_measured = 0.0f,
        .I_measured_report_filter_k = 1.0f,
        .max_allowed_current = 0.0f,
        .overcurrent_trip_level = 0.0f,
        .acim_rotor_flux = 0.0f,
        .async_phase_vel = 0.0f,
        .async_phase_offset = 0.0f,
    };

    float effective_current_lim_ = 10.0f;
    bool capturing_ = false;
    int32_t oscilloscope_div = 0;
    float  m_speed_est_fast =0;
    float Iq_filter = 0;
    float Id_filter = 0;
    float Iq_filter2 = 0;
    float Id_filter2 = 0;
    float Idq_filter_k_ = 0.4f;
    float Idq_filter_k2_ = 0.01f;
    bool using_old_torque_constant_ = true;
    float L_Slop_Array_P_[NUM_LINEARITY_SEG] = {2.5f,2.5f,2.5f,2.5f,2.5f,2.5f,2.5f,2.5f,2.5f,2.5f,2.5f,2.5f,2.5f,2.5f,2.5f,2.5f,2.5f,2.5f,2.5f,2.5f};
    float L_Slop_Array_N_[NUM_LINEARITY_SEG] = {2.5f,2.5f,2.5f,2.5f,2.5f,2.5f,2.5f,2.5f,2.5f,2.5f,2.5f,2.5f,2.5f,2.5f,2.5f,2.5f,2.5f,2.5f,2.5f,2.5f};
    int32_t sign_a_, sign_b_, sign_c_;
    float total_phase_for_abc_sign_calculation_;
    float I_phase_;
    float I_phase2_;
    float deadtime_compensation_coff_ = 0.0f;
    int16_t Aphase_deadtime_compensation_ = 0;
    int16_t Bphase_deadtime_compensation_ = 0;
    int16_t Cphase_deadtime_compensation_ = 0;
    float torque_setpoint_filterd_ = 0;
    float torque_setpoint_notch_filterd_ = 0;

    float notch_filter_sample_rate_ = 20000.f;
    float notch_filter_frequency_ = 50.f;
    float notch_filter_bandwidth_ = 10.f;  
    uint32_t notch_filter_enable_ = 0;

    float dec_bemf_ = 0;

    float I_bus_ = 0.0f; // this motors contribution to the bus current
    float max_allowed_current_ = 0.0f; // [A] set in setup()
    float max_dc_calib_ = 0.0f; // [A] set in setup()


    FieldOrientedController current_control_;
    PhaseControlLaw<3>* control_law_ = nullptr;

    InputPort<float> torque_setpoint_src_; // Usually points to the Controller object's output
    InputPort<float> phase_vel_src_; // Usually points to the Encoder object's output
    float direction_ = 0.0f; // if -1 then positive torque is converted to negative Iq

    OutputPort<float2D> Vdq_setpoint_ = {{0.0f, 0.0f}}; // fed to the FOC
    OutputPort<float2D> Idq_setpoint_ = {{0.0f, 0.0f}}; // fed to the FOC
    
    float v_alpha_ = 0.0f;
    float v_beta_ = 0.0f;


    struct ProtectionConfig protection_config_ = 
    {
        .CURRENT_THRESHOLD = 40.0f * 0.95f,
        .I2T_THRESHOLD = 3360.0f,
    };

    float peak_current_ = 0.0f;      // Peak current limit
    float nominal_current_ = 0.0f;   // Nominal (continuous) current limit
    uint32_t delay_restart_cnt_ = 0;

    float i2t_integral_ = 0;
    int32_t current_stall_cnt_ = 0;


    void setting_motor_current_linearity(uint32_t index, float value);
    void setting_motor_torque_linearity(uint32_t index, float value);
    float get_motor_current_linearity(uint32_t index);
    float get_motor_torque_linearity(uint32_t index);
    void setting_positive_torque_slope(uint32_t index, float value);
    float get_positive_torque_slope(uint32_t index);
    void setting_negative_torque_slope(uint32_t index, float value);
    float get_negative_torque_slope(uint32_t index);

    void  setting_current2torque_slope_positive(uint32_t index, float value);
    void setting_current2torque_slope_negative(uint32_t index, float value);
    float getting_current2torque_slope_negative(uint32_t index);
    float getting_current2torque_slope_positive(uint32_t index);

    float convert_torque_from_current(float current, float *positive_coeff, 
        float *negative_coeff, uint32_t coeff_size, 
        float current_step);
    void pos_linearity_init(void);
};

#endif // __MOTOR_HPP
