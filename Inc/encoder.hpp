#ifndef __ENCODER_HPP
#define __ENCODER_HPP

#include <cstdint>  // Add this for uint32_t
#include "component.hpp"
#include "interfaces.hpp"
#include "main.h"
#include "utils.hpp"



class Axis;


class Encoder : public ODriveIntf::EncoderIntf {
public:
    static constexpr uint32_t MODE_FLAG_ABS = 0x100;
    static constexpr uint32_t MODE_FLAG_485_ABS = 0x200;
    static constexpr int32_t HALF_CPR =  (1<<18) / 2;

    struct Config_t {
        Mode mode = MODE_SPI_ABS_RLS;
        bool use_index = false;
        bool pre_calibrated = false; // If true, this means the offset stored in
                                    // configuration is valid and does not need
                                    // be determined by run_offset_calibration.
                                    // In this case the encoder will enter ready
                                    // state as soon as the index is found.
        bool is_high_speed_encode_query_enabled = true;
        bool zero_count_on_find_idx = true;
        int32_t cpr = (16384 * 4);   // Default resolution of CUI-AMT102 encoder,
        int32_t offset = 0;        // Offset between encoder count and rotor electrical phase
        float offset_float = 0.0f; // Sub-count phase alignment offset
        bool enable_phase_interpolation = true; // Use velocity to interpolate inside the count state
        float calib_range = 0.002f; // Accuracy required to pass encoder cpr check
        float calib_scan_distance = 16.0f * M_PI; // rad electrical
        float calib_scan_omega = 4.0f * M_PI; // rad/s electrical
        float bandwidth = 4000.0f;
        bool ignore_illegal_hall_state = false; // dont error on bad states like 000 or 111

        int32_t GearboxOutputEncoder_cpr = (1<<18);
        int32_t Gearoffset = 0;
        int32_t direction =1;
        // custom setters
        Encoder* parent = nullptr;
        void set_use_index(bool value) { use_index = value; parent->set_idx_subscribe(); }
        void set_pre_calibrated(bool value) { pre_calibrated = value; parent->check_pre_calibrated(); }
        void set_bandwidth(float value) { bandwidth = value; parent->update_pll_gains(); }
        void set_is_high_speed_encode_query_enabled (bool value) { is_high_speed_encode_query_enabled = value; parent->set_spi_enable(); }

    };

    Encoder(const EncoderHardwareConfig_t& hw_config,
            Config_t& config);
    
    void setup();
    void set_error(Error error);
    bool do_checks();

    void enc_index_cb();
    void set_idx_subscribe(bool override_enable = false);
    void update_pll_gains();
    void check_pre_calibrated();
    void set_spi_enable();
    void set_linear_count(int32_t count);
    void set_circular_count(int32_t count, bool update_offset);
    bool calib_enc_offset(float voltage_magnitude);

    bool run_index_search();
    bool run_direction_find();
    bool run_offset_calibration();
    void sample_now();
    bool update();

    const EncoderHardwareConfig_t& hw_config_;
    Config_t& config_;
    Axis* axis_ = nullptr; // set by Axis constructor

    Error error_ = ERROR_NONE;
    bool index_found_ = false;
    bool is_ready_ = false;
    int32_t shadow_count_ = 0;
    int32_t count_in_cpr_ = 0;
    int32_t GearboxOutputEncoder_count_in_cpr_ = 0;
    int32_t GearboxOutputEncoder_turns_ = 0;
    float GearboxOutputEncoder_counts = 0;
    int32_t gear_single_turn_abs_=0;
    int32_t gear_single_turn_abs_by_user_ = 0;
    float interpolation_ = 0.0f;
    OutputPort<float> phase_ = 0.0f;        // [count]
    OutputPort<float> phase_vel_ = 0.0f; // [rad/s]
    float GearboxOutputEncoder_phase_ = 0.0f;        // [count]
    float pos_estimate_counts_ = 0.0f;  // [count]
    float pos_cpr_counts_ = 0.0f;  // [count]
    float vel_estimate_counts_ = 0.0f;  // [count/s]
    float pll_kp_ = 0.0f;   // [count/s / count]
    float pll_ki_ = 0.0f;   // [(count/s^2) / count]
    float gear_pll_kp_ = 0.0f;
    float gear_pll_ki_ = 0.0f;
    float calib_scan_response_ = 0.0f; // debug report from offset calib
    int32_t pos_abs_ = 0;
    int32_t sencond_pos_abs_ = 0;
    float spi_error_rate_ = 0.0f;

    OutputPort<float> pos_estimate_ = 0.0f; // [turn]
    OutputPort<float> vel_estimate_ = 0.0f; // [turn/s]
    int32_t vel_estimate_q11_ = 0;
    float pos_cpr_ = 0.0f;      // [turn]
    float pos_circular_ = 0.0f; // [turn]

    float gearboxpos_ = 0;
    int32_t gearboxpos_q15_ = 0;
    
    bool pos_estimate_valid_ = false;
    bool vel_estimate_valid_ = false;
    
    float cpr_inverse_ = 1.0f/1000;
    float GearboxOutputEncoder_cpr_inverse_ = 1.0f/1000;

    float gear_pos_cpr_counts_ = 0.0f;
    float gear_vel_estimate_counts_ = 0.0f;
    float gear_vel_estimate_ = 0.0f;



    int16_t tim_cnt_sample_ = 0; // 
    // Updated by low_level pwm_adc_cb
    uint8_t hall_state_ = 0x0; // bit[0] = HallA, .., bit[2] = HallC
    float sincos_sample_s_ = 0.0f;
    float sincos_sample_c_ = 0.0f;

    bool abs_spi_init();
    bool abs_485_init();
    bool abs_start_transaction();
    bool abs_spi_start_transaction();
    bool abs_485_start_transaction();
    void abs_spi_cb();
    void abs_spi_cs_pin_init();
    void abs_485_cs_pin_init();
    void set_cs_high(void);
    uint8_t abs_spi_dma_tx_[4] = {0xA6,0x00,0x00,0x00};
    uint8_t abs_spi_dma_rx_[4];

    uint8_t GearboxOutputEncoder_spi_dma_tx_[4] = {0xA6,0x00,0x00,0x00};
    uint8_t GearboxOutputEncoder_spi_dma_rx_[4];

    uint8_t abs_485_dma_tx_[4] = {0xA6,0x00,0x00,0x00};
    uint8_t abs_485_dma_rx_[7];

    bool abs_spi_pos_updated_ = false;
    bool first_init_ = true;

    Mode mode_ = MODE_SPI_ABS_RLS;

    GPIO_TypeDef* motor_spi_cs_port_;
    uint16_t motor_spi_cs_pin_;

    GPIO_TypeDef* GearboxOutputEncoder_spi_cs_port_;
    uint16_t GearboxOutputEncoder_spi_cs_pin_;

    void set_zero_pos (void) { pos_estimate_counts_ = shadow_count_ ;  }

    uint32_t abs_spi_cr1;
    uint32_t abs_spi_cr2;
    uint32_t raw_data1_ = 0;
    constexpr float getCoggingRatio(){
        return 1.0f / 3600.0f;
    }
};

#endif // __ENCODER_HPP
