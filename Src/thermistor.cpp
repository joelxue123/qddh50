#include "main.h"
#include "low_level.h"
#include "thermistor.hpp"
#include "axis.hpp"
#include "motor.hpp"


ThermistorCurrentLimiter::ThermistorCurrentLimiter(uint16_t adc_channel,
                                                   const float* const coefficients,
                                                   const float* const aux_coefficients,
                                                   size_t num_coeffs,
                                                   const float& temp_limit_lower,
                                                   const float& temp_limit_upper,
                                                   const bool& enabled) :
    adc_channel_(adc_channel),
    coefficients_(coefficients),
    aux_coefficients_(aux_coefficients),
    num_coeffs_(num_coeffs),
    temperature_(NAN),
    temp_limit_lower_(temp_limit_lower),
    temp_limit_upper_(temp_limit_upper),
    enabled_(enabled),
    error_(ERROR_NONE)
{
}

void ThermistorCurrentLimiter::update() {
    float voltage = get_adc_voltage_channel(2);
    float normalized_voltage = voltage / adc_ref_voltage;
    temperature_ = horner_fma(normalized_voltage, coefficients_, 4);
    temperature_int_ = (int32_t)temperature_;
    voltage = get_adc_voltage_channel(4);
    normalized_voltage = voltage / adc_ref_voltage;
    aux_temperature_ = horner_fma(normalized_voltage, aux_coefficients_, 4);
    aux_temperature_int_ = (int32_t)aux_temperature_;

}

bool ThermistorCurrentLimiter::do_checks() {
    if (enabled_ && ( (temperature_ >= temp_limit_upper_ + 1 ) ||  (aux_temperature_ >= temp_limit_upper_ + 1 )  )  ) {
        error_ = ERROR_OVER_TEMP;
        // Properly cast error flags when combining
        axis_->error_ = static_cast<Axis::Error>(
            static_cast<uint32_t>(axis_->error_) | 
            static_cast<uint32_t>(Axis::ERROR_OVER_TEMP)
        );
                
        axis_->axis_state_.erro = Axis::ENCOS_ERRO::ENCOS_ERROR_OVER_TEMP;
        return false;
    }
    return true;
}

float ThermistorCurrentLimiter::get_current_limit(float base_current_lim) const {
    if (!enabled_) {
        return base_current_lim;
    }

    float aux_temp_margin = temp_limit_upper_ - aux_temperature_;
    float fet_temp_margin = temp_limit_upper_ - temperature_;
    float temp_margin = std::min(aux_temp_margin, fet_temp_margin);
    const float derating_range = temp_limit_upper_ - temp_limit_lower_;
    float thermal_current_lim = base_current_lim * (temp_margin / derating_range);
    if (!(thermal_current_lim >= 0.0f)) { // Funny polarity to also catch NaN
        thermal_current_lim = 0.0f;
    }

    return std::min(thermal_current_lim, base_current_lim);
}

OnboardThermistorCurrentLimiter::OnboardThermistorCurrentLimiter(const ThermistorHardwareConfig_t& hw_config, Config_t& config) :
    ThermistorCurrentLimiter(hw_config.adc_ch,
                             hw_config.coeffs,
                             hw_config.aux_coefficients,
                             hw_config.num_coeffs,
                             config.temp_limit_lower,
                             config.temp_limit_upper,
                             config.enabled),
    config_(config)
{
}

OffboardThermistorCurrentLimiter::OffboardThermistorCurrentLimiter(Config_t& config) :
    ThermistorCurrentLimiter(UINT16_MAX,
                             &config.thermistor_poly_coeffs[0],
                             &config.thermistor_poly_coeffs2[0],
                             num_coeffs_,
                             config.temp_limit_lower,
                             config.temp_limit_upper,
                             config.enabled),
    config_(config)
{
    decode_pin();
}

void OffboardThermistorCurrentLimiter::decode_pin() {

}
