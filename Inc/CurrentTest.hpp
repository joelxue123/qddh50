#ifndef __CURRENTTEST_HPP
#define __CURRENTTEST_HPP

#include "TestBase.hpp"

class CurrentTestController : public TestBase {
    public:
        struct Config {
            float test_amplitude = 1.0f;    // 测试电流幅值
            uint32_t period_cycles = 100;   // 测试周期
        };

        OutputPort<float2D> current_setpoint_ = {{0.0f, 0.0f}};
        float phase_ = 0.0f;
        float phase_vel_ = 0.0f;
    
        void update(uint32_t timestamp) override {
            if (!test_running_) return;
            
            cnt_++;
            if(cnt_ >= config_.period_cycles) {
                test_current_ = -test_current_;
                cnt_ = 0;
            }
    
            output_ = test_current_ * config_.test_amplitude;
            current_setpoint_  = {output_, 0.0f};
            timestamp_ = timestamp;
        }
    
        void start_bandwidth_test() override {
            test_running_ = true;
            cnt_ = 0;
            test_current_ = 1.0f;
        }
    
        void stop_bandwidth_test() override {
            test_running_ = false;
            output_ = 0;
        }

        void set_config(const Config& config) {
            config_ = config;
        }

        void analyze_bandwidth(void);
    

    private:
        Config config_;
        bool test_running_ = false;
        uint32_t cnt_ = 0;
        float test_current_ = 1.0f;
    };

#endif