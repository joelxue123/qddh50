#ifndef __FOC_HPP
#define __FOC_HPP

#include "user_int.hpp"
#include "interfaces.hpp"
#include <cstdint>  // Add this for uint32_t
#include "component.hpp"
#include "phase_control_law.hpp"


class Motor;
/**
 * @brief Field oriented controller.
 * 
 * This controller can run in either current control mode or voltage control
 * mode.
 */
class FieldOrientedController: public AlphaBetaFrameController, public ComponentBase {

public:

    void update(uint32_t timestamp) final;

    void reset() final;
    
    ODriveIntf::MotorIntf::Error on_measurement(
            std::optional<float> vbus_voltage,
            std::optional<float2D> Ialpha_beta,
            uint32_t input_timestamp) final;

    ODriveIntf::MotorIntf::Error get_alpha_beta_output(
            uint32_t output_timestamp,
            std::optional<float2D>* mod_alpha_beta,
            std::optional<float>* ibus) final;

    // Config - these values are set while this controller is inactive
    std::optional<float2D> pi_gains_; // [V/A, V/As] should be auto set after resistance and inductance measurement
    float I_measured_report_filter_k_ = 1.0f;

    // Inputs
    bool enable_current_control_src_ = false;
    InputPort<float2D> Idq_setpoint_src_;
    InputPort<float2D> Vdq_setpoint_src_;
    InputPort<float> phase_src_;
    InputPort<float> phase_vel_src_;

    // These values are set atomically by the update() function and read by the
    // calculate() function in an interrupt context.
    uint32_t ctrl_timestamp_; // [HCLK ticks]
    bool enable_current_control_ = false; // true: FOC runs in current control mode using I{dq}_setpoint, false: FOC runs in voltage control mode using V{dq}_setpoint
    std::optional<float2D> Idq_setpoint_; // [A] only used if enable_current_control_ == true
    std::optional<float2D> Vdq_setpoint_; // [V] feed-forward voltage term (or standalone setpoint if enable_current_control_ == false)

    int16_t q_Idq_setpoint_[2]; // [A] only used if enable_current_control_ == true
    int16_t q_Vdq_setpoint_[2]; // [V] feed-forward voltage term (or standalone setpoint if enable_current_control_ == false)

    std::optional<float> phase_; // [rad]
    std::optional<float> phase_vel_; // [rad/s]



    int16_t q_phase_; // [rad]
    int16_t q_phase_vel_; // [rad/s]

    // These values (or some of them) are updated inside on_measurement() and get_alpha_beta_output()
    uint32_t i_timestamp_;
    std::optional<float> vbus_voltage_measured_; // [V]
    std::optional<float2D> Ialpha_beta_measured_; // [A, A]
    float Id_measured_; // [A]
    float Iq_measured_; // [A]
    int16_t q_iq_measured_; // [A]
    int16_t q_id_measured_; // [A]
    float v_current_control_integral_d_ = 0.0f; // [V]
    float v_current_control_integral_q_ = 0.0f; // [V]
    //float mod_to_V_ = 0.0f;
    //float mod_d_ = 0.0f;
    //float mod_q_ = 0.0f;
    //float ibus_ = 0.0f;
    float final_v_alpha_ = 0.0f; // [V]
    float final_v_beta_ = 0.0f; // [V]
    float final_v_d_ = 0.0f; // [V]
    float final_v_q_ = 0.0f; // [V]
    float power_ = 0.0f; // [W] dot product of Vdq and Idq

    float dec_bemf_ = 0;
    Motor *motor_ = nullptr;

};

#endif // __FOC_HPP