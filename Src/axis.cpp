
#include <stdlib.h>
#include <functional>
#include "gpio.h"


#include "utils.hpp"
#include "interface_can.hpp"

#include "axis.hpp"
#include "motor.hpp"
#include "controller.hpp"
#include "current_limiter.hpp"
#include "encoder.hpp"
#include "thermistor.hpp"
#include "main_.hpp"


bool TaskTimer::enabled = false;


Axis::Axis(int axis_num,
           Config_t& config,
           Encoder& encoder,
           Controller& controller,
           OnboardThermistorCurrentLimiter& fet_thermistor,
           OffboardThermistorCurrentLimiter& motor_thermistor,
           Motor& motor)
    : axis_num_(axis_num),
      config_(config),
      encoder_(encoder),
      controller_(controller),
      fet_thermistor_(fet_thermistor),
      motor_thermistor_(motor_thermistor),
      motor_(motor),
      current_limiters_(make_array(
          static_cast<CurrentLimiter*>(&fet_thermistor),
          static_cast<CurrentLimiter*>(&motor_thermistor))),
      thermistors_(make_array(
          static_cast<ThermistorCurrentLimiter*>(&fet_thermistor),
          static_cast<ThermistorCurrentLimiter*>(&motor_thermistor)))
{
    encoder_.axis_ = this;
    controller_.axis_ = this;
    fet_thermistor_.axis_ = this;
    motor_thermistor.axis_ = this;
    motor_.axis_ = this;

    decode_step_dir_pins();
    watchdog_feed();
}

Axis::LockinConfig_t Axis::default_calibration() {
    Axis::LockinConfig_t config;
    config.current = 10.0f;           // [A]
    config.ramp_time = 0.4f;          // [s]
    config.ramp_distance = 1 * M_PI;  // [rad]
    config.accel = 20.0f;     // [rad/s^2]
    config.vel = 40.0f; // [rad/s]
    config.finish_distance = 100.0f * 2.0f * M_PI;  // [rad]
    config.finish_on_vel = false;
    config.finish_on_distance = true;
    config.finish_on_enc_idx = true;
    return config;
}

Axis::LockinConfig_t Axis::default_sensorless() {
    Axis::LockinConfig_t config;
    config.current = 10.0f;           // [A]
    config.ramp_time = 0.4f;          // [s]
    config.ramp_distance = 1 * M_PI;  // [rad]
    config.accel = 200.0f;     // [rad/s^2]
    config.vel = 400.0f; // [rad/s]
    config.finish_distance = 100.0f;  // [rad]
    config.finish_on_vel = true;
    config.finish_on_distance = false;
    config.finish_on_enc_idx = false;
    return config;
}


int32_t *  Axis::get_pos_src(bool is_gear_position){
    int32_t * pos_src_ = nullptr;
    if(true == is_gear_position )
    {
        pos_src_ = &encoder_.gearboxpos_rad_pu_q15_;
    }
    else
    {
        pos_src_ = &encoder_.pos_estimate_rad_pu_q15_;
    }
    return pos_src_;
}
static void step_cb_wrapper(void* ctx) {
    reinterpret_cast<Axis*>(ctx)->step_cb();
}

void Axis::get_axis_state(axis_state_t* state)
{

    float actual_torque = motor_.convert_torque_from_current(motor_.current_control_.Iq_measured_, motor_.config_.CURRENT2TORQUE_COEFF_POSITIVE,motor_.config_.CURRENT2TORQUE_COEFF_NEGATIVE, NUM_LINEARITY_SEG,  motor_.CALIBRATION_INCREMENT);

    state->erro =  axis_state_.erro;
    
    
    state->pos = saturation((int32_t)( *pos_src_ +32768),0,65535 );   // 2pi*12.5*32768


    state->vel = saturation((int32_t)(encoder_.gear_vel_estimate_rad_pu_q11_  + 2048),0,4095);   // 1/2/pi/36*2048/16将速度的系数再减半 22.3402f
   
    state->cur = saturation((int32_t)(actual_torque *current_coeff_motor2encos + 2048),10,4090);  //这是有问题的代码，不要忘记 2024-10-8
    state->motor_temperature = (int32_t)fet_thermistor_.aux_temperature_ *2 + 50 ;
    state->mos_temperature = (int32_t)fet_thermistor_.temperature_ *2 + 50;
    
}

void Axis::set_axis_pvt_parm(axis_pvt_parm_t *axis_pvt_parm)
{
    float torque_setpoint=0;


    motor_.using_old_torque_constant_ = false;

    controller_.config_.kp_pu_q12_ = ((float)axis_pvt_parm->kp);   //500/4096

    controller_.config_.kd_pu_q9_ = ((float)axis_pvt_parm->kd) ;      // 5/512
    
    controller_.pos_setpoint_pu_q15_ = (axis_pvt_parm->pos_setpoint - 32768);  //12.5/ 32768
    controller_.vel_setpoint_pu_q11_ = (axis_pvt_parm->vel_setpoint - 2048);   // 18/ 2048

    torque_setpoint = axis_pvt_parm->torque_setpoint - 2048;
    controller_.input_pos_pu_q11_ = torque_setpoint;
    can_raw_ = axis_pvt_parm->torque_setpoint;
} 

void Axis::set_axis_current(int16_t current)
{
    motor_.using_old_torque_constant_ = true;
    controller_.config_.kp_pu_q12_ = 0;
    controller_.config_.kd_pu_q9_ = 0;
    controller_.input_torque_ = current * motor_.config_.torque_constant * 0.01f;

}



// @brief Does Nothing
void Axis::setup() {
    bool sensorless_mode = config_.enable_sensorless_mode;

    speed_base_inverse_ = 1.0f / config_.speed_base;
    position_base_inverse_ = 1.0f / config_.position_base;
    gear_ratio_inverse_  = 1/motor_.config_.gear_ratio;


    speed_coeff_motor2encos = 2048/config_.speed_base;

    speed_coeff_encos2motor = 1.0f / speed_coeff_motor2encos;
    position_coeff_motor2encos = 32768/config_.position_base;
    position_coeff_encos2motor = 1.0f / position_coeff_motor2encos;
    current_coeff_motor2encos = 2048.0f/config_.current_base;
    current_coeff_encos2motor = (float)(2048.0f/config_.current_base);
    // Does nothing - Motor and encoder setup called separately.
    axis_state_.erro = 0;

    get_pos_src(true);

    if (sensorless_mode) {
        controller_.pos_estimate_linear_src_.disconnect();
        controller_.pos_estimate_circular_src_.disconnect();
        controller_.pos_wrap_src_.disconnect();
        } else{
        
        controller_.pos_estimate_circular_src_.connect_to(&encoder_.pos_circular_);
        controller_.pos_wrap_src_.connect_to(&controller_.config_.circular_setpoint_range);
        controller_.pos_estimate_linear_src_.connect_to(&encoder_.pos_estimate_);
        controller_.vel_estimate_src_.connect_to(&encoder_.gear_vel_estimate_rad_);
    }

}

bool Axis::set_offset(void) {
    if(current_state_ != AXIS_STATE_IDLE)
        return false;
    encoder_.config_.Gearoffset = encoder_.gear_single_turn_abs_;
    encoder_ . GearboxOutputEncoder_turns_ =0;
    encoder_.first_init_ = true;
    config_.offset = 0; //TODO: 将当前位置设置为零点
    return true;
};

void Axis::clear_errors() {
    motor_.error_ = Motor::ERROR_NONE;
    controller_.error_ = Controller::ERROR_NONE;
    encoder_.error_ = Encoder::ERROR_NONE;
    encoder_.spi_error_rate_ = 0.0f;

    error_ = ERROR_NONE;
    axis_state_.erro = ENCOS_ERROR_NONE;
}

static void run_state_machine_loop_wrapper(const void* ctx) {
    Axis* axis = reinterpret_cast<Axis*>(const_cast<void*>(ctx));
    axis->run_state_machine_loop();
    axis->thread_id_valid_ = false;
}



// @brief Unblocks the control loop thread.
// This is called from the current sense interrupt handler.
void Axis::signal_current_meas() {
    if (thread_id_valid_)
    {
        is_current_meas_update_ = true;
    }
}

// @brief Blocks until a current measurement is completed
// @returns True on success, false otherwise
bool Axis::wait_for_current_meas() {
    if(is_current_meas_update_  == true)
    {
        is_current_meas_update_ = false;
        return true;
    }
    else
    {
        return false;
    }
}

/**
 * @brief Blocks until at least one complete control loop has been executed.
 */
bool Axis::wait_for_control_iteration() {

    is_current_meas_update_ = false;
    while(is_current_meas_update_ == false);
    is_current_meas_update_ = false;
    while(is_current_meas_update_ == false);
    is_current_meas_update_ = false;
    while(is_current_meas_update_ == false);  
    return true;
}


// step/direction interface
void Axis::step_cb() {
    const bool dir_pin = dir_port_->IDR & dir_pin_;
    const int32_t dir = (-1 + 2 * dir_pin) * step_dir_active_;
    controller_.input_pos_ += dir * config_.turns_per_step;
    controller_.input_pos_updated();
};


void Axis::load_default_can_id(const int& id, Config_t& config){
    config.can_node_id = id;
}

void Axis::decode_step_dir_pins() {

}

// @brief (de)activates step/dir input
void Axis::set_step_dir_active(bool active) {
    if (active) {
        // Set up the direction GPIO as input
        GPIO_InitTypeDef GPIO_InitStruct;
        GPIO_InitStruct.Pin = dir_pin_;
        GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
        GPIO_InitStruct.Pull = GPIO_NOPULL;
        HAL_GPIO_Init(dir_port_, &GPIO_InitStruct);

        // Subscribe to rising edges of the step GPIO

        step_dir_active_ = true;
    } else {
        step_dir_active_ = false;

        // Unsubscribe from step GPIO
    }
}

// @brief Do axis level checks and call subcomponent do_checks
// Returns true if everything is ok.
bool Axis::do_checks() {

    if (!(vbus_voltage >= board_config.dc_bus_undervoltage_trip_level))
    {
        error_ = static_cast<Error>(static_cast<uint32_t>(error_) | static_cast<uint32_t>(ERROR_DC_BUS_UNDER_VOLTAGE));

        axis_state_.erro = Axis::ENCOS_ERRO::ENCOS_ERROR_DC_BUS_UNDER_VOLTAGE;
    }
       
    if (!(vbus_voltage <= board_config.dc_bus_overvoltage_trip_level))
    {
        axis_state_.erro = Axis::ENCOS_ERRO::ENCOS_ERROR_DC_BUS_OVER_VOLTAGE;
        error_ = static_cast<Error>(static_cast<uint32_t>(error_) | static_cast<uint32_t>(ERROR_DC_BUS_OVER_VOLTAGE));

    }
        
    thermistors_[0]->do_checks();

    //motor_.do_checks();
    // encoder_.do_checks();
    // sensorless_estimator_.do_checks();
    // controller_.do_checks();

    // Check for endstop presses
    // if (min_endstop_.config_.enabled && min_endstop_.get_state() && !(current_state_ == AXIS_STATE_HOMING)) {
    //     error_ |= ERROR_MIN_ENDSTOP_PRESSED;
    // } else if (max_endstop_.config_.enabled && max_endstop_.get_state() && !(current_state_ == AXIS_STATE_HOMING)) {
    //     error_ |= ERROR_MAX_ENDSTOP_PRESSED;
    // }

    return check_for_errors();
}

// @brief Update all esitmators
bool Axis::do_updates() {
    // Sub-components should use set_error which will propegate to this error_

    if(config_.startup_sensorless_control)
    {

        //sensorless_estimator_.update2();
    }
    
    bool ret = check_for_errors();
   // odCAN->send_heartbeat(this);
    return ret;
}

// @brief Feed the watchdog to prevent watchdog timeouts.
void Axis::watchdog_feed() {
    watchdog_current_value_ = get_watchdog_reset();
}

// @brief Check the watchdog timer for expiration. Also sets the watchdog error bit if expired.
bool Axis::watchdog_check() {
    if (!config_.enable_watchdog) return true;

    // explicit check here to ensure that we don't underflow back to UINT32_MAX
    if (watchdog_current_value_ > 0) {
        watchdog_current_value_--;
        return true;
    } else {
        error_ = static_cast<Error>(static_cast<uint32_t>(error_) | static_cast<uint32_t>(ERROR_WATCHDOG_TIMER_EXPIRED));

        return false;
    }
}

void Axis::axis_enable_by_encos(void)
{
    motor_.error_ = Motor::ERROR_NONE;
    error_ = ERROR_NONE;
    if(current_state_ != AXIS_STATE_CLOSED_LOOP_CONTROL )
    {
        requested_state_  = AXIS_STATE_CLOSED_LOOP_CONTROL;
    }
}


#define SAMPLE_FRE 2000

struct Sin_t{
    uint32_t sample_rate;
    uint32_t output_fre;
    volatile  uint32_t index;
    bool is_sin;
    float phase;
    float start_freq;
    float end_freq;
    float (*generate_wave_callback)(struct Sin_t * rule, int32_t div, float force_amplitude);

};
// In header file
 float generateSineWave(struct Sin_t * rule, int32_t div, float wave_amplitude);
 float generateSineWave(struct Sin_t * rule, int32_t div,float wave_amplitude)
{
    struct Sin_t *sin_rule = rule;
    uint32_t sample_rate = sin_rule->sample_rate ;
    uint32_t output_fre = sin_rule->output_fre;
    float dt = 1.0f / sample_rate;
    float amplitude =wave_amplitude ;

    float phase = 2.0f*M_PI* sin_rule->index * output_fre*dt ;
    phase = wrap_pm_pi(phase);

    float  sin_data;

    if( sin_rule->is_sin )
    {
        sin_data  =   our_arm_sin_f32(phase) * amplitude  ;
    }
    else
    {
        sin_data  = ( (phase < 0) ?-1:1 ) * amplitude  ;
    }
   

    sin_rule->index++;
    if( sin_rule->index > sample_rate/output_fre -1)
    {
        sin_rule->index =0;
    }

    return sin_data;
}



float qtauChirp(struct Sin_t * rule, int32_t div, float amplitude)
{
    struct Sin_t *sin_rule = rule;
    uint32_t sample_rate = sin_rule->sample_rate ;
    float dt = 1.0f / sample_rate;
    float f0 = rule->start_freq;
    float f1 = rule->end_freq;
    float duration_time = 4096.f/SAMPLE_FRE;
    float k = (f1 - f0) / duration_time;
    
    float phase;
    float t = dt * sin_rule->index;
    float phi;

    
    if (t <= duration_time) {
        sin_rule->index++;
        phi = f0  + k *  t;
    } else {
        phi = 0;
    }

    phi = f0*t + 0.5f*k*t*t;
    phase = 2*M_PI * phi;
    phase = wrap_pm_pi(phase);
    sin_rule->phase = phase;

    float  sin_data;
    sin_data  =   our_arm_sin_f32(phase) * amplitude;

    return sin_data;
}

 struct Sin_t sin_rule = {

    .sample_rate = SAMPLE_FRE,
    .output_fre = 200,
    .index = 0,
    .is_sin = false,
    .phase=0,
    .start_freq = 10,
    .end_freq = 100,
    .generate_wave_callback = qtauChirp,
};





bool Axis::run_lockin_spin(const LockinConfig_t &lockin_config, bool remain_armed,
        std::function<bool(bool)> loop_cb) {
     
    // Reset state variables
    open_loop_controller_.Idq_setpoint_ = {0.0f, 0.0f};
    open_loop_controller_.Vdq_setpoint_ = {0.0f, 0.0f};
    open_loop_controller_.phase_ = 0.0f;
    open_loop_controller_.phase_vel_ = 0.0f;

    open_loop_controller_.max_current_ramp_ = lockin_config.current / lockin_config.ramp_time;
    open_loop_controller_.max_voltage_ramp_ = lockin_config.current / lockin_config.ramp_time;
    open_loop_controller_.max_phase_vel_ramp_ = lockin_config.accel;
    open_loop_controller_.target_current_ = motor_.config_.motor_type != Motor::MOTOR_TYPE_GIMBAL ? lockin_config.current : 0.0f;
    open_loop_controller_.target_voltage_ = motor_.config_.motor_type != Motor::MOTOR_TYPE_GIMBAL ? 0.0f : lockin_config.current;
    open_loop_controller_.target_vel_ = lockin_config.vel;
    open_loop_controller_.total_distance_ = 0.0f;

    motor_.current_control_.enable_current_control_src_ = motor_.config_.motor_type != Motor::MOTOR_TYPE_GIMBAL;
    motor_.current_control_.Idq_setpoint_src_.connect_to(&open_loop_controller_.Idq_setpoint_);
    motor_.current_control_.Vdq_setpoint_src_.connect_to(&open_loop_controller_.Vdq_setpoint_);

    motor_.current_control_.phase_src_.connect_to(&open_loop_controller_.phase_);

    
    motor_.phase_vel_src_.connect_to(&open_loop_controller_.phase_vel_);
    motor_.current_control_.phase_vel_src_.connect_to(&open_loop_controller_.phase_vel_);

    motor_.config_.R_wL_FF_enable  = false;

    motor_.arm(&motor_.current_control_);

    bool subscribed_to_idx_once = false;
    bool success = false;
    float dir = lockin_config.vel >= 0.0f ? 1.0f : -1.0f;

    while ((requested_state_ == AXIS_STATE_UNDEFINED) && motor_.is_armed_) {
        bool reached_target_vel = std::abs(open_loop_controller_.phase_vel_.any().value_or(0.0f) - lockin_config.vel) <= std::numeric_limits<float>::epsilon();
        bool reached_target_dist = open_loop_controller_.total_distance_.any().value_or(0.0f) * dir >= lockin_config.finish_distance * dir;

        // Check if terminal condition is reached
        bool terminal_condition = (reached_target_vel && lockin_config.finish_on_vel)
                               || (reached_target_dist && lockin_config.finish_on_distance)
                               || (encoder_.index_found_ && lockin_config.finish_on_enc_idx);
        if (terminal_condition) {
            success = true;
            break;
        }

        // Activate index pin as soon as target velocity was reached. This is
        // to avoid hitting the index from the wrong direction.
        if (reached_target_vel && !encoder_.index_found_ && !subscribed_to_idx_once) {
            encoder_.set_idx_subscribe(true);
            subscribed_to_idx_once = true;
        }

        if (loop_cb)
            if (!loop_cb(reached_target_vel))
                break;

        // TODO: use new sync function instead
        asm volatile ("" ::: "memory");
        osDelay(1);
    }

    if (!success || !remain_armed) {
        motor_.disarm();
    }

    return success;
}



// Note run_sensorless_control_loop and run_closed_loop_control_loop are very similar and differ only in where we get the estimate from.
bool Axis::run_sensorless_control_loop() {


    run_control_loop([this](){
        // Note that all estimators are updated in the loop prefix in run_control_loop// set_error should update axis.error_
        return true;
    });
    return check_for_errors();
}





bool Axis::start_closed_loop_control() {
    bool sensorless_mode = config_.enable_sensorless_mode;

    if (sensorless_mode) {
        // TODO: restart if desired
        if (!run_lockin_spin(config_.sensorless_ramp, true)) {
            return false;
        }
    }

    // Hook up the data paths between the components
    uint32_t mask = cpu_enter_critical();
    {
        if (sensorless_mode) {
            controller_.pos_estimate_linear_src_.disconnect();
            controller_.pos_estimate_circular_src_.disconnect();
            controller_.pos_wrap_src_.disconnect();
        } else{
            
            controller_.pos_estimate_circular_src_.connect_to(&encoder_.pos_circular_);
            controller_.pos_wrap_src_.connect_to(&controller_.config_.circular_setpoint_range);
            controller_.pos_estimate_linear_src_.connect_to(&encoder_.pos_estimate_);
            controller_.vel_estimate_src_.connect_to(&encoder_.gear_vel_estimate_rad_);
        }
        // To avoid any transient on startup, we intialize the setpoint to be the current position
        controller_.control_mode_updated();
        controller_.input_pos_updated();

        // Avoid integrator windup issues
        controller_.vel_integrator_torque_ = 0.0f;

        motor_.torque_setpoint_src_.connect_to(&controller_.torque_output_);
        motor_.direction_ = sensorless_mode ? 1.0f : encoder_.config_.direction;

        motor_.current_control_.enable_current_control_src_ = motor_.config_.motor_type != Motor::MOTOR_TYPE_GIMBAL;
        motor_.current_control_.Idq_setpoint_src_.connect_to(&motor_.Idq_setpoint_);
        motor_.current_control_.Vdq_setpoint_src_.connect_to(&motor_.Vdq_setpoint_);

        // phase
        OutputPort<float>* phase_src =  &encoder_.phase_;
        motor_.current_control_.phase_src_.connect_to(phase_src);
        // phase vel
        OutputPort<float>* phase_vel_src =  &encoder_.phase_vel_;
        motor_.phase_vel_src_.connect_to(phase_vel_src);
        motor_.current_control_.phase_vel_src_.connect_to(phase_vel_src);
        
        motor_.config_.R_wL_FF_enable  = true;

        if (sensorless_mode) {
            // Make the final velocity of the loĉk-in spin the setpoint of the
            // closed loop controller to allow for smooth transition.
            float vel = config_.sensorless_ramp.vel / (2.0f * M_PI * motor_.config_.pole_pairs);
            controller_.input_vel_ = vel;
            controller_.vel_setpoint_ = vel;
        }
    }
    cpu_exit_critical(mask);
    // In sensorless mode the motor is already armed.
    if (!motor_.is_armed_) {
        wait_for_control_iteration();
        motor_.arm(&motor_.current_control_);
    }

    return true;
}

bool Axis::stop_closed_loop_control() {
    motor_.disarm();
    return check_for_errors();
}




bool Axis::run_closed_loop_control_loop() {

    start_closed_loop_control();
    set_step_dir_active(config_.enable_step_dir);

    while ((requested_state_ == AXIS_STATE_UNDEFINED) && motor_.is_armed_) {
        osDelay(1);
    }

    set_step_dir_active(config_.enable_step_dir && config_.step_dir_always_on);
    stop_closed_loop_control();

    return check_for_errors();

}


// Slowly drive in the negative direction at homing_speed until the min endstop is pressed
// When pressed, set the linear count to the offset (default 0), and then go to position 0
bool Axis::run_homing() {
    return true;
}

bool Axis::run_idle_loop() {
    // run_control_loop ignores missed modulation timing updates
    // if and only if we're in AXIS_STATE_IDLE
    motor_.disarm();
    while (requested_state_ == AXIS_STATE_UNDEFINED) {
        vTaskDelay(1);
    }
    return check_for_errors();
}

// Infinite loop that does calibration and enters main control loop as appropriate
void Axis::run_state_machine_loop() {

    thread_id_valid_ = true;
    wait_for_control_iteration();
    motor_.measure_current_offset();
    for (;;) {
        // Load the task chain if a specific request is pending
        if (requested_state_ != AXIS_STATE_UNDEFINED) {
            size_t pos = 0;
            if (requested_state_ == AXIS_STATE_STARTUP_SEQUENCE) {
                if (config_.startup_motor_calibration)
                    task_chain_[pos++] = AXIS_STATE_MOTOR_CALIBRATION;
                if (config_.startup_encoder_index_search && encoder_.config_.use_index)
                    task_chain_[pos++] = AXIS_STATE_ENCODER_INDEX_SEARCH;
                if (config_.startup_encoder_offset_calibration)
                    task_chain_[pos++] = AXIS_STATE_ENCODER_OFFSET_CALIBRATION;
                if (config_.startup_homing)
                    task_chain_[pos++] = AXIS_STATE_HOMING;
                if (config_.startup_closed_loop_control)
                    task_chain_[pos++] = AXIS_STATE_CLOSED_LOOP_CONTROL;
                else if (config_.startup_sensorless_control)
                    task_chain_[pos++] = AXIS_STATE_SENSORLESS_CONTROL;
                task_chain_[pos++] = AXIS_STATE_IDLE;
            } else if (requested_state_ == AXIS_STATE_FULL_CALIBRATION_SEQUENCE) {
                task_chain_[pos++] = AXIS_STATE_MOTOR_CALIBRATION;
                if (encoder_.config_.use_index)
                    task_chain_[pos++] = AXIS_STATE_ENCODER_INDEX_SEARCH;
                task_chain_[pos++] = AXIS_STATE_ENCODER_OFFSET_CALIBRATION;
                task_chain_[pos++] = AXIS_STATE_IDLE;
            } else if (requested_state_ != AXIS_STATE_UNDEFINED) {
                task_chain_[pos++] = requested_state_;
                task_chain_[pos++] = AXIS_STATE_IDLE;
            }
            task_chain_[pos++] = AXIS_STATE_UNDEFINED;  // TODO: bounds checking
            requested_state_ = AXIS_STATE_UNDEFINED;
            // Auto-clear any invalid state error
            error_ = static_cast<Error>(static_cast<uint32_t>(error_) & (~ static_cast<uint32_t>(ERROR_INVALID_STATE)));

        }
        wait_for_control_iteration();
        
        // Note that current_state is a reference to task_chain_[0]

        // Run the specified state
        // Handlers should exit if requested_state != AXIS_STATE_UNDEFINED
        bool status = false;
        
        switch (current_state_) {
            case AXIS_STATE_MOTOR_CALIBRATION: {
                status = motor_.run_calibration();
            } break;

            case AXIS_STATE_ENCODER_INDEX_SEARCH: {
                if (!motor_.is_calibrated_)
                    goto invalid_state_label;

                status = encoder_.run_index_search();
            } break;

            case AXIS_STATE_ENCODER_DIR_FIND: {
                if (!motor_.is_calibrated_)
                    goto invalid_state_label;

                status = encoder_.run_direction_find();
            } break;

            case AXIS_STATE_HOMING: {
                Controller::ControlMode stored_control_mode = controller_.config_.control_mode;
                Controller::InputMode stored_input_mode = controller_.config_.input_mode;
                
                status = run_homing();

                controller_.config_.control_mode = stored_control_mode;
                controller_.config_.input_mode = stored_input_mode;
            } break;

            case AXIS_STATE_ENCODER_OFFSET_CALIBRATION: {
                if (!motor_.is_calibrated_)
                    goto invalid_state_label;

                status = encoder_.run_offset_calibration();
            } break;

            case AXIS_STATE_LOCKIN_SPIN: {
                if (!motor_.is_calibrated_ || motor_.config_.direction==0)
                    goto invalid_state_label;
                status = run_lockin_spin(config_.general_lockin,false);
            } break;

            case AXIS_STATE_SENSORLESS_CONTROL: {
                if (!motor_.is_calibrated_ || motor_.config_.direction==0)
                        goto invalid_state_label;
                //status = run_lockin_spin(config_.sensorless_ramp); // TODO: restart if desired
                status = true;
                if (status) {
                    // call to controller.reset() that happend when arming means that vel_setpoint
                    // is zeroed. So we make the setpoint the spinup target for smooth transition.
                    controller_.vel_setpoint_ = config_.sensorless_ramp.vel / (2.0f * M_PI * motor_.config_.pole_pairs);
                    status = run_sensorless_control_loop();
                }
            } break;

            case AXIS_STATE_CLOSED_LOOP_CONTROL: {
                if (!motor_.is_calibrated_ || motor_.config_.direction==0)
                    goto invalid_state_label;
                if (!encoder_.is_ready_)
                    goto invalid_state_label;
                watchdog_feed();
                status = run_closed_loop_control_loop();
            } break;

            case AXIS_STATE_IDLE: {
                motor_.config_.R_wL_FF_enable  = false;
                run_idle_loop();
                status = true;
            } break;

            default:
            invalid_state_label:
                error_ = static_cast<Error>(static_cast<uint32_t>(error_) | static_cast<uint32_t>(ERROR_INVALID_STATE));

                status = false;  // this will set the state to idle
                break;
        }

        // If the state failed, go to idle, else advance task chain
        if (!status) {
            std::fill(task_chain_.begin(), task_chain_.end(), AXIS_STATE_UNDEFINED);
            current_state_ = AXIS_STATE_IDLE;
        } else {
            std::rotate(task_chain_.begin(), task_chain_.begin() + 1, task_chain_.end());
            task_chain_.back() = AXIS_STATE_UNDEFINED;
        }
    }
}


void Axis::control_loop_cb(uint32_t timestamp)
{

    // Update all estimators
    // Note: updates run even if checks fail
    

    {
        controller_.torque_output_.reset();
        encoder_.phase_.reset();
        encoder_.phase_vel_.reset();
        encoder_.pos_estimate_.reset();
        encoder_.vel_estimate_.reset();
        motor_.Vdq_setpoint_.reset();
        motor_.Idq_setpoint_.reset();
        motor_.current_control_.q_iq_measured_ =0 ;
        motor_.current_control_.q_id_measured_ =0 ;
        open_loop_controller_.Idq_setpoint_.reset();
        open_loop_controller_.Vdq_setpoint_.reset();
        open_loop_controller_.phase_.reset();
        open_loop_controller_.phase_vel_.reset();
        open_loop_controller_.total_distance_.reset();
    }


    // look for errors at axis level and also all subcomponents
    bool checks_ok = do_checks();
    // make sure the watchdog is being fed. 
    bool watchdog_ok = watchdog_check();
    bool motor_ok = motor_.do_checks();



    
    if (!checks_ok  || !watchdog_ok || !motor_ok) {
        // It's not useful to quit idle since that is the safe action
        // Also leaving idle would rearm the motors
        motor_.disarm();
    }
    //??? 是否放在这里呢？等待验证
 //   MEASURE_TIME(task_times_.encoder_update)
        encoder_.update();

 //   MEASURE_TIME(task_times_.controller_update) {
        if (!controller_.update()) { // uses position and velocity from encoder

            error_ = static_cast<Error>(static_cast<uint32_t>(error_) | static_cast<uint32_t>(ERROR_CONTROLLER_FAILED));

        }
  //  }

    // MEASURE_TIME(task_times_.open_loop_controller_update)
         open_loop_controller_.update(timestamp);

  //  MEASURE_TIME(task_times_.motor_update)
        motor_.update(timestamp); // uses torque from controller and phase_vel from encoder

  //  MEASURE_TIME(task_times_.current_controller_update)
        motor_.current_control_.update(timestamp); // uses the output of controller_ or open_loop_contoller_ and encoder_ or sensorless_estimator_ or acim_estimator_

        oscilloscope_.update();
}
