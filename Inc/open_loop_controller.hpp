#ifndef __OPEN_LOOP_CONTROLLER_HPP
#define __OPEN_LOOP_CONTROLLER_HPP

#include <cmath>
#include "component.hpp"

class OpenLoopController : public ComponentBase {
public:
    void update(uint32_t timestamp) final;

    // Config
    float max_current_ramp_ = INFINITY; // [A/s]
    float max_voltage_ramp_ = INFINITY; // [V/s]
    float max_phase_vel_ramp_ = INFINITY; // [rad/s^2]

    // Inputs
    float target_vel_ = 0.0f;
    float target_current_ = 0.0f;
    float target_voltage_ = 0.0f;
    float initial_phase_ = 0.0f;

    float test_target_current_ = 3.0f;
    int32_t cnt = 0;

    // State/Outputs
    uint32_t timestamp_ = 0;
    OutputPort<float2D> Idq_setpoint_ = {{0.0f, 0.0f}};
    OutputPort<float2D> Vdq_setpoint_ = {{0.0f, 0.0f}};
    OutputPort<float> phase_ = 0.0f;
    OutputPort<float> phase_vel_ = 0.0f;
    OutputPort<float> total_distance_ = 0.0f;
};

#endif // __OPEN_LOOP_CONTROLLER_HPP