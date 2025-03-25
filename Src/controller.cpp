
#include <algorithm>

#include <algorithm>

#include "axis.hpp"
#include "controller.hpp"
#include "motor.hpp"
#include "encoder.hpp"

Controller::Controller(Config_t& config) :
    config_(config)
{
    update_filter_gains();
}

void Controller::reset() {
    pos_setpoint_ = 0.0f;
    vel_setpoint_ = 0.0f;
    vel_integrator_torque_ = 0.0f;
    torque_setpoint_ = 0.0f;
}

void Controller::set_error(Error error) {
    error_ = static_cast<Error>(static_cast<uint32_t>(error_) | static_cast<uint32_t>(error));

}

//--------------------------------
// Command Handling
//--------------------------------


bool Controller::select_encoder(size_t encoder_num) {
    return true;

}

void Controller::move_to_pos(float goal_point) {
}

void Controller::move_incremental(float displacement, bool from_input_pos = true){
    if(from_input_pos){
        input_pos_ += displacement;
    } else{
        input_pos_ = pos_setpoint_ + displacement;
    }

    input_pos_updated();
}

void Controller::start_anticogging_calibration() {
    // Ensure the cogging map was correctly allocated earlier and that the motor is capable of calibrating
    if (axis_->error_ == Axis::ERROR_NONE) {
        config_.anticogging.calib_anticogging = true;
    }
}


/*
 * This anti-cogging implementation iterates through each encoder position,
 * waits for zero velocity & position error,
 * then samples the current required to maintain that position.
 * 
 * This holding current is added as a feedforward term in the control loop.
 */
bool Controller::anticogging_calibration(float pos_estimate, float vel_estimate) {
    float pos_err = input_pos_ - pos_estimate;
    if (std::abs(pos_err) <= config_.anticogging.calib_pos_threshold / (float)axis_->encoder_.config_.cpr &&
        std::abs(vel_estimate) < config_.anticogging.calib_vel_threshold / (float)axis_->encoder_.config_.cpr) {
        config_.anticogging.cogging_map[std::clamp<uint32_t>(config_.anticogging.index++, 0, 128)] = vel_integrator_torque_;
    }
    if (config_.anticogging.index < 3600) {
        config_.control_mode = CONTROL_MODE_POSITION_CONTROL;
        input_pos_ = config_.anticogging.index * axis_->encoder_.getCoggingRatio();
        input_vel_ = 0.0f;
        input_torque_ = 0.0f;
        input_pos_updated();
        return false;
    } else {
        config_.anticogging.index = 0;
        config_.control_mode = CONTROL_MODE_POSITION_CONTROL;
        input_pos_ = 0.0f;  // Send the motor home
        input_vel_ = 0.0f;
        input_torque_ = 0.0f;
        input_pos_updated();
        anticogging_valid_ = true;
        config_.anticogging.calib_anticogging = false;
        return true;
    }
}



void Controller::set_input_pos_and_steps(float const pos) {
    input_pos_ = pos;
    if (config_.circular_setpoints) {
        float const range = config_.circular_setpoint_range;
        axis_->steps_ = (int64_t)(fmodf_pos(pos, range) / range * config_.steps_per_circular_range);
    } else {
        axis_->steps_ = (int64_t)(pos * config_.steps_per_circular_range);
    }
}

bool Controller::control_mode_updated() {
    if (config_.control_mode >= CONTROL_MODE_POSITION_CONTROL) {
        std::optional<float> estimate = (config_.circular_setpoints ?
                                pos_estimate_circular_src_ :
                                pos_estimate_linear_src_).any();
        if (!estimate.has_value()) {
            return false;
        }

        pos_setpoint_ = *estimate;
        set_input_pos_and_steps(*estimate);
    }
    return true;
}

void Controller::update_filter_gains() {
    float bandwidth = std::min(config_.input_filter_bandwidth, 0.25f * CURRENT_MEAS_HZ);
    input_filter_ki_ = 2.0f * bandwidth;  // basic conversion to discrete time
    input_filter_kp_ = 0.25f * (input_filter_ki_ * input_filter_ki_); // Critically damped
}


static float limitVel(const float vel_limit, const float vel_estimate, const float vel_gain, const float torque) {

    static const float hysteresis = 0.1f * vel_limit; // 5% hysteresis
    static bool limiting = false;
    float abs_vel_estimate = std::abs(vel_estimate);

    if (limiting) {
        if (abs_vel_estimate < vel_limit - hysteresis) {
            limiting = false;
        }
    } else {
        if (abs_vel_estimate > vel_limit) {
            limiting = true;
        }
    }
    if (limiting)
    {
        float Tmax = (vel_limit - vel_estimate) * vel_gain;
        float Tmin = (-vel_limit - vel_estimate) * vel_gain;
        return std::clamp(torque, Tmin, Tmax);
    }
    else
    {
        return torque;
    }
    
}

bool Controller::update() {

    float torque =0;
    bool limited = false;
    float anticogging_pos = 0.0f;
    std::optional<float> vel_estimate = vel_estimate_src_.present();
    

    if (!vel_estimate.has_value()) {
        set_error(ERROR_INVALID_ESTIMATE);
        return false;
    }


    if( CONTROL_MODE_PVT_CONTROL == config_.control_mode )
    {
        float kp = config_.kp;
        float kd = config_.kd;
        
        if(axis_->config_.gear_vel_used == true)
        {
            torque = kp*(pos_setpoint_ - axis_->encoder_.gearboxpos_) + input_torque_ + kd*(vel_setpoint_ - axis_->encoder_.gear_vel_estimate_);
        }
        else
        {
            torque = kp*(pos_setpoint_ - axis_->encoder_.gearboxpos_) + input_torque_ + kd*(vel_setpoint_ - (*vel_estimate));

        }

        float vel_gain = config_.vel_gain;
        torque = limitVel(config_.vel_limit, *vel_estimate, vel_gain, torque);
        // Torque limiting
        
        //float Tlim = axis_->motor_.max_available_torque() * axis_->motor_.config_.gear_ratio;
        float Tlim = axis_->motor_.config_.torque_lim;
        if (torque > Tlim) {
            limited = true;
            torque = Tlim;
        }
        if (torque < -Tlim) {
            limited = true;
            torque = -Tlim;
        }
        torque_output_ = torque;
        return true;
    }

    // Update inputs
    switch (config_.input_mode) {
        case INPUT_MODE_INACTIVE: {
            // do nothing
        } break;
        case INPUT_MODE_PASSTHROUGH: {
            pos_setpoint_ = input_pos_;
            vel_setpoint_ = input_vel_;
            torque_setpoint_ = input_torque_; 
        } break;
        case INPUT_MODE_VEL_RAMP: {
            float max_step_size = std::abs(current_meas_period * config_.vel_ramp_rate);
            float full_step = input_vel_ - vel_setpoint_;
            float step = std::clamp(full_step, -max_step_size, max_step_size);

            vel_setpoint_ += step;
            torque_setpoint_ = (step / current_meas_period) * config_.inertia;
        } break;
        case INPUT_MODE_TORQUE_RAMP: {
            float max_step_size = std::abs(current_meas_period * config_.torque_ramp_rate);
            float full_step = input_torque_ - torque_setpoint_;
            float step = std::clamp(full_step, -max_step_size, max_step_size);

            torque_setpoint_ += step;
        } break;
        case INPUT_MODE_POS_FILTER: {
            // 2nd order pos tracking filter
            float delta_pos = input_pos_ - pos_setpoint_; // Pos error
            float delta_vel = input_vel_ - vel_setpoint_; // Vel error
            float accel = input_filter_kp_*delta_pos + input_filter_ki_*delta_vel; // Feedback
            torque_setpoint_ = accel * config_.inertia; // Accel
            vel_setpoint_ += current_meas_period * accel; // delta vel
            pos_setpoint_ += current_meas_period * vel_setpoint_; // Delta pos
        } break;
        case INPUT_MODE_MIRROR: {

        } break;
        // case INPUT_MODE_MIX_CHANNELS: {
        //     // NOT YET IMPLEMENTED
        // } break;
        case INPUT_MODE_TRAP_TRAJ: {

        } break;
        default: {
            set_error(ERROR_INVALID_INPUT_MODE);
            return false;
        }
        
    }

    // Position control
    // TODO Decide if we want to use encoder or pll position here
    float gain_scheduling_multiplier = 1.0f;
    float vel_des = vel_setpoint_;
    if (config_.control_mode >= CONTROL_MODE_POSITION_CONTROL) {
        float pos_err;
        std::optional<float> pos_estimate_circular = pos_estimate_circular_src_.present();
        std::optional<float> pos_estimate_linear = pos_estimate_linear_src_.present();
        std::optional<float> pos_wrap_src = pos_wrap_src_.present();
        if (config_.circular_setpoints) {
            if(!pos_estimate_circular.has_value()) {
                set_error(ERROR_INVALID_ESTIMATE);
                return false;
            }
            // Keep pos setpoint from drifting
            pos_setpoint_ = fmodf_pos(pos_setpoint_, *pos_wrap_src);
            // Circular delta
            pos_err = pos_setpoint_ - *pos_estimate_circular;
            pos_err = wrap_pm(pos_err, 0.5f * *pos_wrap_src);
        } else {
            if(!pos_estimate_linear.has_value()) {
                set_error(ERROR_INVALID_ESTIMATE);
                return false;
            }
            pos_err = pos_setpoint_ - *pos_estimate_linear;
        }

        vel_des += config_.pos_gain * pos_err;
        // V-shaped gain shedule based on position error
        float abs_pos_err = std::abs(pos_err);
        if (config_.enable_gain_scheduling && abs_pos_err <= config_.gain_scheduling_width) {
            gain_scheduling_multiplier = abs_pos_err / config_.gain_scheduling_width;
        }
    }

    // Velocity limiting
    float vel_lim = config_.vel_limit;
    if (config_.enable_vel_limit) {
        vel_des = std::clamp(vel_des, -vel_lim, vel_lim);
    }

    // Check for overspeed fault (done in this module (controller) for cohesion with vel_lim)
    if (config_.enable_overspeed_error) {  // 0.0f to disable
        if (!vel_estimate.has_value()) {
            set_error(ERROR_INVALID_ESTIMATE);
            return false;
        }
        if (std::abs(*vel_estimate) > config_.vel_limit_tolerance * vel_lim) {
            
            set_error(ERROR_OVERSPEED);
            return false;
        }
    }

    // TODO: Change to controller working in torque units
    // Torque per amp gain scheduling (ACIM)
    float vel_gain = config_.vel_gain;
    float vel_integrator_gain = config_.vel_integrator_gain;


    // Velocity control
    torque = torque_setpoint_;

    // Anti-cogging is enabled after calibration
    // We get the current position and apply a current feed-forward
    // ensuring that we handle negative encoder positions properly (-1 == motor->encoder.encoder_cpr - 1)
    if (anticogging_valid_ && config_.anticogging.anticogging_enabled) {
        torque += config_.anticogging.cogging_map[std::clamp(mod((int)anticogging_pos, 128), 0, 128)];
    }

    float v_err = 0.0f;
    if (config_.control_mode >= CONTROL_MODE_VELOCITY_CONTROL) {
        if (!vel_estimate.has_value()) {
            set_error(ERROR_INVALID_ESTIMATE);
            return false;
        }

        v_err = vel_des - *vel_estimate;
        torque += (vel_gain * gain_scheduling_multiplier) * v_err;

        // Velocity integral action before limiting
        torque += vel_integrator_torque_;
    }

    // Velocity limiting in current mode
    if (config_.control_mode < CONTROL_MODE_VELOCITY_CONTROL && config_.enable_current_mode_vel_limit) {
        if (!vel_estimate.has_value()) {
            set_error(ERROR_INVALID_ESTIMATE);
            return false;
        }
        torque = limitVel(config_.vel_limit, *vel_estimate, vel_gain, torque);
    }



    // Velocity integrator (behaviour dependent on limiting)
    if (config_.control_mode < CONTROL_MODE_VELOCITY_CONTROL) {
        // reset integral if not in use
        vel_integrator_torque_ = 0.0f;
    } else {
        if (limited) {
            // TODO make decayfactor configurable
            vel_integrator_torque_ *= 0.99f;
        } else {
            vel_integrator_torque_ += ((vel_integrator_gain * gain_scheduling_multiplier) * current_meas_period) * v_err;
        }
    }

    // Torque limiting

    float Tlim = axis_->motor_.max_available_torque();
    if (torque > Tlim) {
        limited = true;
        torque = Tlim;
    }
    if (torque < -Tlim) {
        limited = true;
        torque = -Tlim;
    }
    torque_output_= torque;
    return true;
}

