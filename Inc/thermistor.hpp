#ifndef __THERMISTOR_HPP
#define __THERMISTOR_HPP

#include "main.h"
#include "interfaces.hpp"
#include "current_limiter.hpp"

#define THERMISTOR_CURRENT_LIMITER_MAX_TEMP 150.0f
#define THERMISTOR_CURRENT_LIMITER_MIN_TEMP -40.0f

#define THERMISTOR_CURRENT_LIMITER_MAX_CURRENT 3.0f

class Axis;


class ThermistorCurrentLimiter : public CurrentLimiter, public ODriveIntf::ThermistorCurrentLimiterIntf {
public:
    virtual ~ThermistorCurrentLimiter() = default;

    ThermistorCurrentLimiter(uint16_t adc_channel,
                             const float* const coefficients,
                             const float* const aux_coefficients,
                             size_t num_coeffs,
                             const float& temp_limit_lower,
                             const float& temp_limit_upper,
                             const bool& enabled);

    void update();
    bool do_checks();
    float get_current_limit(float base_current_lim) const override;

    uint16_t adc_channel_;
    const float* const coefficients_;
    const float* const aux_coefficients_;
    const size_t num_coeffs_;
    float temperature_;
    int32_t temperature_int_;
    float aux_temperature_;
    int32_t aux_temperature_int_;
    const float& temp_limit_lower_;
    const float& temp_limit_upper_;
    const bool& enabled_;
    Error error_;
    Axis* axis_ = nullptr; // set by Axis constructor
};

class OnboardThermistorCurrentLimiter : public ThermistorCurrentLimiter, public ODriveIntf::OnboardThermistorCurrentLimiterIntf {
public:
    struct Config_t {
        float temp_limit_lower = 100;
        float temp_limit_upper = 120;
        bool enabled = true;
    };

    virtual ~OnboardThermistorCurrentLimiter() = default;
    OnboardThermistorCurrentLimiter(const ThermistorHardwareConfig_t& hw_config, Config_t& config);

    Config_t& config_;
};

class OffboardThermistorCurrentLimiter : public ThermistorCurrentLimiter, public ODriveIntf::OffboardThermistorCurrentLimiterIntf {
public:
    static const size_t num_coeffs_ = 4;

    struct Config_t {
        float thermistor_poly_coeffs[num_coeffs_];
        float thermistor_poly_coeffs2[num_coeffs_];
        uint16_t gpio_pin = 4;
        float temp_limit_lower = 60;
        float temp_limit_upper = 80;
        bool enabled = true;

        // custom setters
        OffboardThermistorCurrentLimiter* parent;
        void set_gpio_pin(uint16_t value) { gpio_pin = value; parent->decode_pin(); }
    };

    virtual ~OffboardThermistorCurrentLimiter() = default;
    OffboardThermistorCurrentLimiter(Config_t& config);

    Config_t& config_;

private:
    void decode_pin();
};

#endif // __THERMISTOR_HPP
