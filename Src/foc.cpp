
#include "interfaces.hpp"
#include "foc.hpp"
#include "low_level.h"
#include "utils.hpp"
#include "main.h"
#include "motor.hpp"

ODriveIntf::MotorIntf::Error AlphaBetaFrameController::on_measurement(
            std::optional<float> vbus_voltage,
            std::optional<std::array<float, 3>> currents,
            uint32_t input_timestamp) {

    std::optional<float2D> Ialpha_beta;
    
    if (currents.has_value()) {
        // Clarke transform
        Ialpha_beta = {
            (*currents)[0],
            one_by_sqrt3 * ((*currents)[1] - (*currents)[2])
        };
    }
    
    return on_measurement(vbus_voltage, Ialpha_beta, input_timestamp);
}

ODriveIntf::MotorIntf::Error AlphaBetaFrameController::get_output(
            uint32_t output_timestamp, float (&pwm_timings)[3],
            std::optional<float>* ibus) {
    std::optional<float2D> mod_alpha_beta;
    ODriveIntf::MotorIntf::Error status = get_alpha_beta_output(output_timestamp, &mod_alpha_beta, ibus);
    
    if (status != ODriveIntf::MotorIntf::ERROR_NONE) {
        return status;
    } else if (!mod_alpha_beta.has_value() || is_nan(mod_alpha_beta->first) || is_nan(mod_alpha_beta->second)) {
        return ODriveIntf::MotorIntf::Error::ERROR_MODULATION_IS_NAN;
    }

    float tA, tB, tC;
    if (SVM(mod_alpha_beta->first, mod_alpha_beta->second, &tA, &tB, &tC) != 0)
    {
        return ODriveIntf::MotorIntf::Error::ERROR_MODULATION_MAGNITUDE;
    }
        


    pwm_timings[0] = tA;
    pwm_timings[1] = tB;
    pwm_timings[2] = tC;

    return ODriveIntf::MotorIntf::ERROR_NONE;
}

void FieldOrientedController::reset() {
    v_current_control_integral_d_ = 0.0f;
    v_current_control_integral_q_ = 0.0f;
    vbus_voltage_measured_ = std::nullopt;
    Ialpha_beta_measured_ = std::nullopt;

    q_iq_measured_ = 0;
    q_id_measured_ = 0;

    power_ = 0.0f;
}

ODriveIntf::MotorIntf::Error FieldOrientedController::on_measurement(
        std::optional<float> vbus_voltage, std::optional<float2D> Ialpha_beta,
        uint32_t input_timestamp) {
    // Store the measurements for later processing.
    i_timestamp_ = input_timestamp;
    vbus_voltage_measured_ = vbus_voltage;
    Ialpha_beta_measured_ = Ialpha_beta;

    return ODriveIntf::MotorIntf::ERROR_NONE;
}

ODriveIntf::MotorIntf::Error FieldOrientedController::get_alpha_beta_output(
        uint32_t output_timestamp, std::optional<float2D>* mod_alpha_beta,
        std::optional<float>* ibus) {

    if (!vbus_voltage_measured_.has_value() || !Ialpha_beta_measured_.has_value()) {
        // FOC didn't receive a current measurement yet.
        return ODriveIntf::MotorIntf::Error::ERROR_CONTROLLER_INITIALIZING;
    } else if (abs((int32_t)(i_timestamp_ - ctrl_timestamp_)) > MAX_CONTROL_LOOP_UPDATE_TO_CURRENT_UPDATE_DELTA) {
        // Data from control loop and current measurement are too far apart.
        return ODriveIntf::MotorIntf::Error::ERROR_BAD_TIMING;
    }

    // TODO: improve efficiency in case PWM updates are requested at a higher
    // rate than current sensor updates. In this case we can reuse mod_d and
    // mod_q from a previous iteration.

    if (!Vdq_setpoint_.has_value()) {
        //return Motor::ERROR_UNKNOWN_VOLTAGE_COMMAND;
    } else if (!phase_.has_value() || !phase_vel_.has_value()) {
        return ODriveIntf::MotorIntf::Error::ERROR_UNKNOWN_PHASE_ESTIMATE;
    } else if (!vbus_voltage_measured_.has_value()) {
        return ODriveIntf::MotorIntf::Error::ERROR_UNKNOWN_VBUS_VOLTAGE;
    }

    auto [Vd, Vq] = *Vdq_setpoint_;
    float phase = *phase_;
    float phase_vel = *phase_vel_;
    float vbus_voltage = *vbus_voltage_measured_;

    std::optional<float2D> Idq;

    // Park transform
    if (Ialpha_beta_measured_.has_value()) {
        auto [Ialpha, Ibeta] = *Ialpha_beta_measured_;
        float I_phase = phase + phase_vel * ((float)(int32_t)(i_timestamp_ - ctrl_timestamp_) / (float)TIM_1_8_CLOCK_HZ);
        float c_I = 0.0f;
        float s_I = 0.0f;

        cordic_sin_cos(I_phase, &s_I, &c_I);
        Idq = {
            c_I * Ialpha + s_I * Ibeta,
            c_I * Ibeta - s_I * Ialpha
        };
        Id_measured_ += I_measured_report_filter_k_ * (Idq->first - Id_measured_);
        Iq_measured_ += I_measured_report_filter_k_ * (Idq->second - Iq_measured_);
    } else {
        Id_measured_ = 0.0f;
        Iq_measured_ = 0.0f;
    }





    q_iq_measured_ = (int16_t)(Iq_measured_ * CURRENT_TO_ADC_RATIO);
    q_id_measured_ = (int16_t)(Id_measured_ * CURRENT_TO_ADC_RATIO);

    float mod_to_V = (2.0f / 3.0f) * vbus_voltage;
    float V_to_mod = 1.0f / mod_to_V;
    float mod_d;
    float mod_q;

    if (enable_current_control_) {
        // Current control mode

        if (!pi_gains_.has_value()) {
            return ODriveIntf::MotorIntf::Error::ERROR_UNKNOWN_GAINS;
        } else if (!Idq.has_value()) {
            return ODriveIntf::MotorIntf::Error::ERROR_UNKNOWN_CURRENT_MEASUREMENT;
        } else if (!Idq_setpoint_.has_value()) {
            return ODriveIntf::MotorIntf::Error::ERROR_UNKNOWN_CURRENT_COMMAND;
        }
  
        Vd = 0.f;
        Vq = 0.f;

        if(motor_->config_.R_wL_FF_enable == true)
        {
            float dec_vd=0, dec_vq=0,pm_flux_linkage=0;
            pm_flux_linkage =  0.6f*motor_->config_.torque_constant/ (motor_->config_.pole_pairs);
            dec_vd  -= Iq_measured_ * phase_vel * motor_->config_.phase_inductance;
            dec_vd += motor_->config_.phase_resistance * Id_measured_;
        
            dec_vq = Id_measured_ * phase_vel * motor_->config_.phase_inductance;
            dec_vq += Iq_measured_ * motor_->config_.phase_resistance;
            dec_bemf_ = phase_vel * pm_flux_linkage;
        
            Vd = dec_vd;
            Vq = dec_vq + dec_bemf_;
        }

        auto [p_gain, i_gain] = *pi_gains_;
        auto [Id, Iq] = *Idq;
        auto [Id_setpoint, Iq_setpoint] = *Idq_setpoint_;

        float ilim = motor_->effective_current_lim();
        Id_setpoint = std::clamp(Id_setpoint, -ilim, ilim);
        Iq_setpoint = std::clamp(Iq_setpoint, -ilim, ilim);

        float Ierr_d = Id_setpoint - Id;
        float Ierr_q = Iq_setpoint - Iq;

        // Apply PI control (V{d,q}_setpoint act as feed-forward terms in this mode)
        mod_d = V_to_mod * (Vd + v_current_control_integral_d_ + Ierr_d * p_gain);
        mod_q = V_to_mod * (Vq + v_current_control_integral_q_ + Ierr_q * p_gain);

        // Vector modulation saturation, lock integrator if saturated
        // TODO make maximum modulation configurable
        float mod_scalefactor = 0.80f * sqrt3_by_2 * 1.0f / std::sqrt(mod_d * mod_d + mod_q * mod_q);
        if (mod_scalefactor < 1.0f) {
            mod_d *= mod_scalefactor;
            mod_q *= mod_scalefactor;
            // TODO make decayfactor configurable
            v_current_control_integral_d_ *= 0.99f;
            v_current_control_integral_q_ *= 0.99f;
        } else {
            v_current_control_integral_d_ += Ierr_d * (i_gain * current_meas_period);
            v_current_control_integral_q_ += Ierr_q * (i_gain * current_meas_period);
        }

    } else {
        // Voltage control mode
        mod_d = V_to_mod * Vd;
        mod_q = V_to_mod * Vq;
    }

    // Inverse park transform
    float pwm_phase = phase + phase_vel * ((float)(int32_t)(output_timestamp - ctrl_timestamp_) / (float)TIM_1_8_CLOCK_HZ);
    float c_p = 0.0f;
    float s_p = 0.0f;
    cordic_sin_cos(pwm_phase, &s_p, &c_p);
    float mod_alpha = c_p * mod_d - s_p * mod_q;
    float mod_beta = c_p * mod_q + s_p * mod_d;

    // Report final applied voltage in stationary frame (for sensorless estimator)
    final_v_alpha_ = mod_to_V * mod_alpha;
    final_v_beta_ = mod_to_V * mod_beta;

    *mod_alpha_beta = {mod_alpha, mod_beta};

    if (Idq.has_value()) {
        auto [Id, Iq] = *Idq;
        *ibus = mod_d * Id + mod_q * Iq;
        power_ = vbus_voltage * (*ibus).value();
    }
    
    return ODriveIntf::MotorIntf::ERROR_NONE;
}

void FieldOrientedController::update(uint32_t timestamp) {
   uint32_t mask = cpu_enter_critical();
    {
        ctrl_timestamp_ = timestamp;
        enable_current_control_ = enable_current_control_src_;
        Idq_setpoint_ = Idq_setpoint_src_.present();
        Vdq_setpoint_ = Vdq_setpoint_src_.present();
        phase_ = phase_src_.present();
        phase_vel_ = phase_vel_src_.present();

        q_Idq_setpoint_[0] = Idq_setpoint_->first * CURRENT_TO_ADC_RATIO;
        q_Idq_setpoint_[1] = Idq_setpoint_->second * CURRENT_TO_ADC_RATIO;

        q_Vdq_setpoint_[0] = Vdq_setpoint_->first * VOLTAGE_TO_ADC_RATIO;
        q_Vdq_setpoint_[1] = Vdq_setpoint_->second * VOLTAGE_TO_ADC_RATIO;

        q_phase_ = (*phase_)* PHASE_TO_ADC_RATIO;
        q_phase_vel_ = (*phase_vel_) * VEL_TO_ADC_RATIO ;






    }
    cpu_exit_critical(mask);
}

