#include "encoder.hpp"

#include "axis.hpp"
#include "motor.hpp"
#include "interfaces.hpp"
#include "controller.hpp"
#include "spi.h"


Encoder::Encoder(const EncoderHardwareConfig_t& hw_config,
                Config_t& config) :
        hw_config_(hw_config),
        config_(config)
{
    update_pll_gains();

    if (config.pre_calibrated) {
            is_ready_ = true;
    }
}

static void enc_index_cb_wrapper(void* ctx) {
    reinterpret_cast<Encoder*>(ctx)->enc_index_cb();
}

void Encoder::set_cs_high(void)
{
    if(mode_ & MODE_FLAG_ABS)
    {  
        LL_GPIO_SetOutputPin(SPI1_Pin_CS_Port, SPI1_Pin_CS); // 设置 CS 初始为高电平（非激活）
        LL_GPIO_SetOutputPin(SPI3_Pin_CS_Port, SPI3_Pin_CS); // 设置 CS 初始为低电平（激活）
    }    
}

void Encoder::set_cs_low(void)
{
    LL_GPIO_ResetOutputPin(SPI1_Pin_CS_Port, SPI1_Pin_CS); // 设置 CS 初始为低电平（激活）
    LL_GPIO_ResetOutputPin(SPI3_Pin_CS_Port, SPI3_Pin_CS); // 设置 CS 初始为低电平（激活）

}


void Encoder::setup() {
   // HAL_TIM_Encoder_Start(hw_config_.timer, TIM_CHANNEL_ALL);
   // set_idx_subscribe();

    mode_ = config_.mode;
    abs_spi_cs_pin_init();
    if(mode_ & MODE_FLAG_ABS){
        
        abs_spi_init();
        if (axis_->controller_.config_.anticogging.pre_calibrated) {
            axis_->controller_.anticogging_valid_ = true;
        }
    }
    else if(mode_ & MODE_FLAG_485_ABS)
    {
        abs_485_cs_pin_init();
        abs_485_init();
    }
    
    cpr_inverse_ = 1.0f / config_.cpr;
    GearboxOutputEncoder_cpr_inverse_ = 1.0f / config_.GearboxOutputEncoder_cpr;
}

void Encoder::set_error(Error error) {
    vel_estimate_valid_ = false;
    pos_estimate_valid_ = false;
    error_ = static_cast<Error>(static_cast<uint32_t>(error_) | static_cast<uint32_t>(error));
    axis_->error_ = static_cast<Axis::Error>(
        static_cast<uint32_t>(axis_->error_) | 
        static_cast<uint32_t>(Axis::ERROR_ENCODER_FAILED)
    );

}

bool Encoder::do_checks(){
    return error_ == ERROR_NONE;
}

//--------------------
// Hardware Dependent
//--------------------

// Triggered when an encoder passes over the "Index" pin
// TODO: only arm index edge interrupt when we know encoder has powered up
// (maybe by attaching the interrupt on start search, synergistic with following)
void Encoder::enc_index_cb() {
    if (config_.use_index) {
        set_circular_count(0, false);
        if (config_.zero_count_on_find_idx)
            set_linear_count(0); // Avoid position control transient after search
        if (config_.pre_calibrated) {
            is_ready_ = true;
            if(axis_->controller_.config_.anticogging.pre_calibrated){
                axis_->controller_.anticogging_valid_ = true;
            }
        } else {
            // We can't use the update_offset facility in set_circular_count because
            // we also set the linear count before there is a chance to update. Therefore:
            // Invalidate offset calibration that may have happened before idx search
            is_ready_ = false;
        }
        index_found_ = true;
    }

    // Disable interrupt

}

void Encoder::set_idx_subscribe(bool override_enable) {
}

void Encoder::update_pll_gains() {
    pll_kp_ = 2.0f * config_.bandwidth;  // basic conversion to discrete time
    pll_ki_ = 0.25f * (pll_kp_ * pll_kp_); // Critically damped 0.025f

    gear_pll_kp_ = 2.0f * config_.bandwidth;  // basic conversion to discrete time
    gear_pll_ki_ = 0.25f * (gear_pll_kp_ * gear_pll_kp_); // Critically damped 0.025f
    // Check that we don't get problems with discrete time approximation
    if (!(current_meas_period * pll_kp_ < 1.0f)) {
        set_error(ERROR_UNSTABLE_GAIN);
    }
}

void Encoder::check_pre_calibrated() {
    // TODO: restoring config from python backup is fragile here (ACIM motor type must be set first)
    if (!is_ready_ && axis_->motor_.config_.motor_type != Motor::MOTOR_TYPE_ACIM)
        config_.pre_calibrated = false;
    if (mode_ == MODE_INCREMENTAL && !index_found_)
        config_.pre_calibrated = false;
}

// Function that sets the current encoder count to a desired 32-bit value.
void Encoder::set_linear_count(int32_t count) {
    // Disable interrupts to make a critical section to avoid race condition
    uint32_t prim = cpu_enter_critical();

    // Update states
    shadow_count_ = count;
    pos_estimate_counts_ = (float)count;
    tim_cnt_sample_ = count;

    //Write hardware last


    cpu_exit_critical(prim);
}

// Function that sets the CPR circular tracking encoder count to a desired 32-bit value.
// Note that this will get mod'ed down to [0, cpr)
void Encoder::set_circular_count(int32_t count, bool update_offset) {
    // Disable interrupts to make a critical section to avoid race condition
    uint32_t prim = cpu_enter_critical();

    if (update_offset) {
        config_.offset += count - count_in_cpr_;
        config_.offset = mod(config_.offset, config_.cpr);
    }

    // Update states
    count_in_cpr_ = mod(count, config_.cpr);
    pos_cpr_counts_ = (float)count_in_cpr_;

    cpu_exit_critical(prim);
}



bool Encoder::run_index_search() {
    config_.use_index = true;
    index_found_ = false;

    bool status = axis_->run_lockin_spin(axis_->config_.calibration_lockin,false);
    return status;
}

bool Encoder::run_direction_find() {
    int32_t init_enc_val = shadow_count_;
    axis_->motor_.config_.direction = 1; // Must test spin forwards for direction detect logic

    Axis::LockinConfig_t lockin_config = axis_->config_.calibration_lockin;
    lockin_config.finish_distance = lockin_config.vel * 3.0f; // run for 3 seconds
    lockin_config.finish_on_distance = true;
    lockin_config.finish_on_enc_idx = false;
    lockin_config.finish_on_vel = false;
    bool status = axis_->run_lockin_spin(lockin_config,false);

    if (status) {
        // Check response and direction
        if (shadow_count_ > init_enc_val + 8) {
            // motor same dir as encoder
            axis_->motor_.config_.direction = 1;
        } else if (shadow_count_ < init_enc_val - 8) {
            // motor opposite dir as encoder
            axis_->motor_.config_.direction = -1;
        } else {
            axis_->motor_.config_.direction = 0;
        }
    }

    return status;
}

// @brief Turns the motor in one direction for a bit and then in the other
// direction in order to find the offset between the electrical phase 0
// and the encoder state 0.
// TODO: Do the scan with current, not voltage!
bool Encoder::run_offset_calibration() {

    const float start_lock_duration = 1.0f;
    
    // We use shadow_count_ to do the calibration, but the offset is used by count_in_cpr_
    // Therefore we have to sync them for calibration
    shadow_count_ = count_in_cpr_;

    uint32_t mask = cpu_enter_critical();
    {
        // Reset state variables
        axis_->open_loop_controller_.Idq_setpoint_ = {0.0f, 0.0f};
        axis_->open_loop_controller_.Vdq_setpoint_ = {0.0f, 0.0f};
        axis_->open_loop_controller_.phase_ = 0.0f;
        axis_->open_loop_controller_.phase_vel_ = 0.0f;

        float max_current_ramp = axis_->motor_.config_.calibration_current / start_lock_duration * 2.0f;
        axis_->open_loop_controller_.max_current_ramp_ = max_current_ramp;
        axis_->open_loop_controller_.max_voltage_ramp_ = max_current_ramp;
        axis_->open_loop_controller_.max_phase_vel_ramp_ = INFINITY;
        axis_->open_loop_controller_.target_current_ = axis_->motor_.config_.motor_type != Motor::MOTOR_TYPE_GIMBAL ? axis_->motor_.config_.calibration_current : 0.0f;
        axis_->open_loop_controller_.target_voltage_ = axis_->motor_.config_.motor_type != Motor::MOTOR_TYPE_GIMBAL ? 0.0f : axis_->motor_.config_.calibration_current;
        axis_->open_loop_controller_.target_vel_ = 0.0f;
        axis_->open_loop_controller_.total_distance_ = 0.0f;
        axis_->open_loop_controller_.phase_ = axis_->open_loop_controller_.initial_phase_ = wrap_pm_pi(0 - config_.calib_scan_distance / 2.0f);

        axis_->motor_.current_control_.enable_current_control_src_ = (axis_->motor_.config_.motor_type != Motor::MOTOR_TYPE_GIMBAL);
        axis_->motor_.current_control_.Idq_setpoint_src_.connect_to(&axis_->open_loop_controller_.Idq_setpoint_);
        axis_->motor_.current_control_.Vdq_setpoint_src_.connect_to(&axis_->open_loop_controller_.Vdq_setpoint_);
        
        axis_->motor_.current_control_.phase_src_.connect_to(&axis_->open_loop_controller_.phase_);

        axis_->motor_.phase_vel_src_.connect_to(&axis_->open_loop_controller_.phase_vel_);
        axis_->motor_.current_control_.phase_vel_src_.connect_to(&axis_->open_loop_controller_.phase_vel_);
    }
    cpu_exit_critical(mask);

    axis_->wait_for_control_iteration();

    axis_->motor_.arm(&axis_->motor_.current_control_);

    // go to start position of forward scan for start_lock_duration to get ready to scan
    for (size_t i = 0; i < (size_t)(start_lock_duration * 1000.0f); ++i) {
        if (!axis_->motor_.is_armed_) {
            return false; // TODO: return "disarmed" error code
        }
        if (axis_->requested_state_ != Axis::AXIS_STATE_UNDEFINED) {
            axis_->motor_.disarm();
            return false; // TODO: return "aborted" error code
        }
        osDelay(1);
    }


    int32_t init_enc_val = shadow_count_;
    uint32_t num_steps = 0;
    int64_t encvaluesum = 0;

    mask = cpu_enter_critical();
    {
        axis_->open_loop_controller_.target_vel_ = config_.calib_scan_omega;
        axis_->open_loop_controller_.total_distance_ = 0.0f;
    }
    cpu_exit_critical(mask);

    // scan forward
    while ((axis_->requested_state_ == Axis::AXIS_STATE_UNDEFINED) && axis_->motor_.is_armed_) {
        bool reached_target_dist = axis_->open_loop_controller_.total_distance_.any().value_or(-INFINITY) >= config_.calib_scan_distance;
        if (reached_target_dist) {
            break;
        }
        encvaluesum += shadow_count_;
        num_steps++;
        osDelay(1);
    }

    // Check response and direction
    if (shadow_count_ > init_enc_val + 8) {
        // motor same dir as encoder
        config_.direction = 1;
    } else if (shadow_count_ < init_enc_val - 8) {
        // motor opposite dir as encoder
        config_.direction = -1;
    } else {
        // Encoder response error
        set_error(ERROR_NO_RESPONSE);
        axis_->motor_.disarm();
        return false;
    }

    // Check CPR
    float elec_rad_per_enc = axis_->motor_.config_.pole_pairs * 2 * M_PI * (1.0f / (float)(config_.cpr));
    float expected_encoder_delta = config_.calib_scan_distance / elec_rad_per_enc;
    calib_scan_response_ = std::abs(shadow_count_ - init_enc_val);
    if (std::abs(calib_scan_response_ - expected_encoder_delta) / expected_encoder_delta > config_.calib_range) {
        set_error(ERROR_CPR_POLEPAIRS_MISMATCH);
        axis_->motor_.disarm();
        return false;
    }

    mask = cpu_enter_critical();
    {
        axis_->open_loop_controller_.target_vel_ = -config_.calib_scan_omega;
    }
    cpu_exit_critical(mask);

    // scan backwards
    while ((axis_->requested_state_ == Axis::AXIS_STATE_UNDEFINED) && axis_->motor_.is_armed_) {
        bool reached_target_dist = axis_->open_loop_controller_.total_distance_.any().value_or(INFINITY) <= 0.0f;
        if (reached_target_dist) {
            break;
        }
        encvaluesum += shadow_count_;
        num_steps++;
        osDelay(1);
    }

    // Motor disarmed because of an error
    if (!axis_->motor_.is_armed_) {
        return false;
    }

    axis_->motor_.disarm();

    config_.offset = encvaluesum / num_steps;
    int32_t residual = encvaluesum - ((int64_t)config_.offset * (int64_t)num_steps);
    config_.offset_float = (float)residual / (float)num_steps + 0.5f;  // add 0.5 to center-align state to phase

    is_ready_ = true;
    return true;

}

static bool decode_hall(uint8_t hall_state, int32_t* hall_cnt) {
    switch (hall_state) {
        case 0b001: *hall_cnt = 0; return true;
        case 0b011: *hall_cnt = 1; return true;
        case 0b010: *hall_cnt = 2; return true;
        case 0b110: *hall_cnt = 3; return true;
        case 0b100: *hall_cnt = 4; return true;
        case 0b101: *hall_cnt = 5; return true;
        default: return false;
    }
}

void Encoder::sample_now() {
    switch (mode_) {
        case MODE_HALL: {
            // do nothing: samples already captured in general GPIO capture
        } break;

        case MODE_SINCOS: {
        } break;

        case MODE_SPI_ABS_AMS:
        case MODE_SPI_ABS_CUI:
        case MODE_SPI_ABS_AEAT:
        case MODE_SPI_ABS_RLS:
        {
            axis_->motor_.log_timing(ODriveIntf::TIMING_LOG_SAMPLE_NOW);
            // Do nothing
        } break;

        default: {
           //set_error(ERROR_UNSUPPORTED_ENCODER_MODE);
        } break;
    }
}

bool Encoder::abs_spi_init(){
//     if ((mode_ & MODE_FLAG_ABS) == 0x0)
//         return false;

//     SPI_HandleTypeDef * spi = hw_config_.motor_spi;
//     spi->Init.Mode = SPI_MODE_MASTER;
//     spi->Init.Direction = SPI_DIRECTION_2LINES;
//     spi->Init.DataSize = SPI_DATASIZE_8BIT;
//     spi->Init.CLKPolarity = SPI_POLARITY_HIGH;
//     spi->Init.CLKPhase = SPI_PHASE_2EDGE;
//     spi->Init.NSS = SPI_NSS_SOFT;
//     spi->Init.BaudRatePrescaler = SPI_BAUDRATEPRESCALER_16;
//     spi->Init.FirstBit = SPI_FIRSTBIT_MSB;
//     spi->Init.TIMode = SPI_TIMODE_DISABLE;
//     spi->Init.CRCCalculation = SPI_CRCCALCULATION_DISABLE;
//     spi->Init.CRCPolynomial = 7;
//     if (mode_ == MODE_SPI_ABS_AEAT) {
//         spi->Init.CLKPolarity = SPI_POLARITY_HIGH;
//     }
//     HAL_SPI_DeInit(spi);
//     //HAL_SPI_Init(spi);
//     __HAL_SPI_ENABLE(spi);

//     spi = hw_config_.GearboxOutputEncoder_spi;
//     spi->Init.Mode = SPI_MODE_MASTER;
//     spi->Init.Direction = SPI_DIRECTION_2LINES;
//     spi->Init.DataSize = SPI_DATASIZE_8BIT;
//     spi->Init.CLKPolarity = SPI_POLARITY_HIGH;
//     spi->Init.CLKPhase = SPI_PHASE_2EDGE;
//     spi->Init.NSS = SPI_NSS_SOFT;
//     spi->Init.BaudRatePrescaler = SPI_BAUDRATEPRESCALER_16;
//     spi->Init.FirstBit = SPI_FIRSTBIT_MSB;
//     spi->Init.TIMode = SPI_TIMODE_DISABLE;
//     spi->Init.CRCCalculation = SPI_CRCCALCULATION_DISABLE;
//     spi->Init.CRCPolynomial = 7;
//     if (mode_ == MODE_SPI_ABS_AEAT) {
//         spi->Init.CLKPolarity = SPI_POLARITY_HIGH;
//     }
//     HAL_SPI_DeInit(spi);
//    // HAL_SPI_Init(spi);
//     __HAL_SPI_ENABLE(spi);

//     return true;
}



void Encoder::set_spi_enable(void)
{
    SPI_HandleTypeDef * spi;
    if (config_.is_high_speed_encode_query_enabled == true) 
    {
        abs_spi_cs_pin_init();
        abs_spi_init();

    } 
    else 
    {
        
        spi= hw_config_.motor_spi;
        HAL_SPI_DeInit(spi);
        spi = hw_config_.GearboxOutputEncoder_spi;
        HAL_SPI_DeInit(spi);

        motor_spi_cs_port_ = SPI1_Pin_CS_Port;
        motor_spi_cs_pin_ = SPI1_Pin_CS;
        GearboxOutputEncoder_spi_cs_port_ = SPI3_Pin_CS_Port;
        GearboxOutputEncoder_spi_cs_pin_ = SPI3_Pin_CS;
        // Init cs pin
        HAL_GPIO_DeInit(motor_spi_cs_port_, motor_spi_cs_pin_);
        HAL_GPIO_DeInit(GearboxOutputEncoder_spi_cs_port_, GearboxOutputEncoder_spi_cs_pin_);

    }


}

bool Encoder::abs_485_init()
{
    return true;
}
  
void Encoder::abs_485_cs_pin_init(){
    // Decode cs pin

    GPIO_TypeDef  *GPIOx = GPIOA;
    uint32_t GPIO_Pin =  GPIO_PIN_2;

    // Init cs pin
    HAL_GPIO_DeInit(GPIOx, GPIO_Pin);
    GPIO_InitTypeDef GPIO_InitStruct;
    GPIO_InitStruct.Pin = GPIO_Pin;
    GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
    GPIO_InitStruct.Pull = GPIO_PULLUP;
    GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
    HAL_GPIO_Init(GPIOx, &GPIO_InitStruct);

    // Write pin high
    HAL_GPIO_WritePin(GPIOx, GPIO_Pin, GPIO_PIN_RESET);
}

bool Encoder::abs_start_transaction(){

    if(config_.is_high_speed_encode_query_enabled == false)
    return true;

    set_cs_low();
    if (mode_ & MODE_FLAG_485_ABS){
        abs_485_start_transaction();
    }
    else if(mode_ & MODE_FLAG_ABS)
    {
        abs_spi_start_transaction();
        //abs_spi_pos_updated_ = false;
    }
    else
    {
         return true;
    }
    return true; 
}



bool Encoder::abs_485_start_transaction(){

    return true;
}


bool Encoder::abs_spi_start_transaction(){

    if (mode_ & MODE_FLAG_ABS){

        SPI3_TransferDMA((uint8_t*)GearboxOutputEncoder_spi_dma_tx_,(uint8_t*)GearboxOutputEncoder_spi_dma_rx_,6);
        SPI1->DR =0;

        abs_spi_pos_updated_ = true;
    }
    return true;
}

uint8_t ams_parity(uint16_t v) {
    v ^= v >> 8;
    v ^= v >> 4;
    v ^= v >> 2;
    v ^= v >> 1;
    return v & 1;
}

uint8_t cui_parity(uint16_t v) {
    v ^= v >> 8;
    v ^= v >> 4;
    v ^= v >> 2;
    return ~v & 3;
}

void Encoder::abs_spi_cb(){
    HAL_GPIO_WritePin(motor_spi_cs_port_, motor_spi_cs_pin_, GPIO_PIN_SET);
    HAL_GPIO_WritePin(GearboxOutputEncoder_spi_cs_port_, GearboxOutputEncoder_spi_cs_pin_, GPIO_PIN_SET);
    axis_->motor_.log_timing(ODriveIntf::TIMING_LOG_SPI_END);

    uint32_t pos;

    switch (mode_) {
        case MODE_SPI_ABS_AMS: {
            uint16_t rawVal = abs_spi_dma_rx_[0];
            // check if parity is correct (even) and error flag clear
            if (ams_parity(rawVal) || ((rawVal >> 14) & 1)) {
                return;
            }
            pos = rawVal & 0x3fff;
        } break;

        case MODE_SPI_ABS_CUI: {
            uint16_t rawVal = abs_spi_dma_rx_[0];
            // check if parity is correct
            if (cui_parity(rawVal)) {
                return;
            }
            pos = rawVal & 0x3fff;
        } break;

        case MODE_SPI_ABS_RLS: {
          //  uint16_t rawVal = abs_spi_dma_rx_[0];
          //  pos = (rawVal >> 2) & 0x3fff;
          uint32_t rawVal = *(uint32_t *)&abs_spi_dma_rx_[0];
          pos = ((rawVal & 0x0000ff00)) | ( (rawVal & 0x00ff0000)>>16 ) ;
          rawVal = *(uint32_t *)&GearboxOutputEncoder_spi_dma_rx_[0];
          sencond_pos_abs_ =  ((rawVal & 0x0000ff00)<<8) | ( (rawVal & 0x00ff0000)>>8 )| ( (rawVal & 0xff000000)>>24 )  ;
        } break;

        default: {
           set_error(ERROR_UNSUPPORTED_ENCODER_MODE);
           return;
        } break;
    }

    pos_abs_ = pos;
    abs_spi_pos_updated_ = true;
    if (config_.pre_calibrated) {
        is_ready_ = true;
    }
}

void Encoder::abs_spi_cs_pin_init(){
    // Decode cs pin
    motor_spi_cs_port_ = SPI1_Pin_CS_Port;
    motor_spi_cs_pin_ = SPI1_Pin_CS;
    GearboxOutputEncoder_spi_cs_port_ = SPI3_Pin_CS_Port;
    GearboxOutputEncoder_spi_cs_pin_ = SPI3_Pin_CS;
    // Init cs pin
    HAL_GPIO_DeInit(motor_spi_cs_port_, motor_spi_cs_pin_);
    HAL_GPIO_DeInit(GearboxOutputEncoder_spi_cs_port_, GearboxOutputEncoder_spi_cs_pin_);
    GPIO_InitTypeDef GPIO_InitStruct;
    GPIO_InitStruct.Pin = motor_spi_cs_pin_;
    GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
    GPIO_InitStruct.Pull = GPIO_PULLUP;
    GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
    HAL_GPIO_Init(motor_spi_cs_port_, &GPIO_InitStruct);

    GPIO_InitStruct.Pin = GearboxOutputEncoder_spi_cs_pin_;
    HAL_GPIO_Init(GearboxOutputEncoder_spi_cs_port_, &GPIO_InitStruct);

    // Write pin high
    HAL_GPIO_WritePin(motor_spi_cs_port_, motor_spi_cs_pin_, GPIO_PIN_SET);
    HAL_GPIO_WritePin(GearboxOutputEncoder_spi_cs_port_, GearboxOutputEncoder_spi_cs_pin_, GPIO_PIN_SET);
}


bool Encoder::update() {
    // update internal encoder state.
    int32_t delta_enc = 0,gear_delta_enc = 0;
    int32_t pos_abs_latched = pos_abs_; //LATCH
    switch (mode_) {
        case MODE_INCREMENTAL: {
            //TODO: use count_in_cpr_ instead as shadow_count_ can overflow
            //or use 64 bit
            int16_t delta_enc_16 = (int16_t)tim_cnt_sample_ - (int16_t)shadow_count_;
            delta_enc = (int32_t)delta_enc_16; //sign extend
        } break;

        case MODE_HALL: {
            int32_t hall_cnt;
            if (decode_hall(hall_state_, &hall_cnt)) {
                delta_enc = hall_cnt - count_in_cpr_;
                delta_enc = mod(delta_enc, 6);
                if (delta_enc > 3)
                    delta_enc -= 6;
            } else {
                if (!config_.ignore_illegal_hall_state) {
                    set_error(ERROR_ILLEGAL_HALL_STATE);
                    return false;
                }
            }
        } break;

        case MODE_SINCOS: {
            float phase = fast_atan2(sincos_sample_s_, sincos_sample_c_);
            int fake_count = (int)(1000.0f * phase);
            //CPR = 6283 = 2pi * 1k

            delta_enc = fake_count - count_in_cpr_;
            delta_enc = mod(delta_enc, 6283);
            if (delta_enc > 6283/2)
                delta_enc -= 6283;
        } break;
        
        case MODE_SPI_ABS_RLS:
        case MODE_SPI_ABS_AMS:
        case MODE_SPI_ABS_CUI: 
        case MODE_SPI_ABS_AEAT: {

            uint32_t rawVal = SPI1->DR;

            set_cs_high();
            pos_abs_  = ((rawVal & 0x000000ff)) | ( (rawVal & 0x0000ff00)) ;
            pos_abs_ = config_.cpr - pos_abs_; //取反

            bool encoder_error_detected = false;
            
            if (abs_spi_pos_updated_ == false) {
                    //todo                    
            } else {
               // bool dma_flag = __HAL_DMA_GET_FLAG(hw_config_.motor_spi->hdmatx, DMA_FLAG_TCIF1_5);
                if(0)  //todo
                {
                    encoder_error_detected = true;
                   raw_data1_++;
                }
                abs_spi_dma_rx_[0] = 0;
            }
            
            if(encoder_error_detected)
            {
                axis_->axis_state_.erro = Axis::ENCOS_ERRO::ENCOS_ERROR_ABS_SPI_COM_FAIL;
                set_error(ERROR_ABS_SPI_COM_FAIL);
            }

            pos_abs_latched = pos_abs_;
            abs_spi_pos_updated_ = false;
            delta_enc = pos_abs_latched - count_in_cpr_; //LATCH
            delta_enc = mod(delta_enc, config_.cpr);
            if (delta_enc > config_.cpr/2) {
                delta_enc -= config_.cpr;
            }

            rawVal = *(uint32_t *)&GearboxOutputEncoder_spi_dma_rx_[0];
            sencond_pos_abs_ =  (GearboxOutputEncoder_spi_dma_rx_[2]<<16) | (GearboxOutputEncoder_spi_dma_rx_[3]<<8) | (GearboxOutputEncoder_spi_dma_rx_[4]&0xf8) ; 
            sencond_pos_abs_ >>= 9;
            sencond_pos_abs_ = sencond_pos_abs_; //取反
            
            gear_single_turn_abs_ = sencond_pos_abs_;

            gear_single_turn_abs_by_user_ = gear_single_turn_abs_ - config_.Gearoffset;
            while(gear_single_turn_abs_by_user_ > HALF_CPR) {
                gear_single_turn_abs_by_user_ -= 2 * HALF_CPR;
            }
            while(gear_single_turn_abs_by_user_ < -HALF_CPR) {
                gear_single_turn_abs_by_user_ += 2 * HALF_CPR;
            }

            if(first_init_ == true)
            {
                GearboxOutputEncoder_count_in_cpr_ = gear_single_turn_abs_by_user_;
                first_init_ = false;
            }

            gear_delta_enc =  gear_single_turn_abs_by_user_ - GearboxOutputEncoder_count_in_cpr_; //LATCH
            GearboxOutputEncoder_count_in_cpr_ = gear_single_turn_abs_by_user_;
            if (gear_delta_enc > HALF_CPR) {
                GearboxOutputEncoder_turns_ -=  1;
            }
            else if (gear_delta_enc < -HALF_CPR) {
                GearboxOutputEncoder_turns_ +=  1;
            }
            else
            {}

                          
            if( (GearboxOutputEncoder_turns_ > 1) || (GearboxOutputEncoder_turns_ < -1) )
            {
                GearboxOutputEncoder_turns_ = 0;
            }

            GearboxOutputEncoder_counts = GearboxOutputEncoder_turns_*2*HALF_CPR+ gear_single_turn_abs_by_user_;
            gearboxpos_ = GearboxOutputEncoder_counts * GearboxOutputEncoder_cpr_inverse_;
            gear_boxpos_rad_ = gearboxpos_ * 2 * PI;
            gearboxpos_rad_pu_q15_ = (int32_t)(gear_boxpos_rad_ * axis_->position_coeff_motor2encos);
            

        }break;
        default: {
            delta_enc = pos_abs_latched - count_in_cpr_; //LATCH
            delta_enc = mod(delta_enc, config_.cpr);
            if (delta_enc > config_.cpr/2) {
                delta_enc -= config_.cpr;
            }
           //set_error(ERROR_UNSUPPORTED_ENCODER_MODE);
           //return false;
        } break;
    }

    shadow_count_ += delta_enc;
    count_in_cpr_ += delta_enc;
    count_in_cpr_ = mod(count_in_cpr_, config_.cpr);

    if( (mode_ & MODE_FLAG_ABS) | (mode_ & MODE_FLAG_485_ABS) )
    {
        count_in_cpr_ = pos_abs_latched;
        

    }
        

    //// run pll (for now pll is in units of encoder counts)
    // Predict current pos
    pos_estimate_counts_ += current_meas_period * vel_estimate_counts_;
    pos_cpr_counts_      += current_meas_period * vel_estimate_counts_;
    gear_pos_cpr_counts_      += current_meas_period * gear_vel_estimate_counts_;

    // discrete phase detector
    float delta_pos_counts = (float)(shadow_count_ - (int32_t)std::floor(pos_estimate_counts_));
    float delta_pos_cpr_counts = (float)(count_in_cpr_ - (int32_t)std::floor(pos_cpr_counts_));
    delta_pos_cpr_counts = wrap_pm(delta_pos_cpr_counts, 0.5f * (float)(config_.cpr));

    float delta_pos_gear_counts = (float)(sencond_pos_abs_ - (int32_t)std::floor(gear_pos_cpr_counts_));
    delta_pos_gear_counts = wrap_pm(delta_pos_gear_counts, 0.5f * (float)(config_.GearboxOutputEncoder_cpr));

    // pll feedback
    pos_estimate_counts_ += current_meas_period * pll_kp_ * delta_pos_counts;
    pos_cpr_counts_ += current_meas_period * pll_kp_ * delta_pos_cpr_counts;
    pos_cpr_counts_ = fmodf_pos(pos_cpr_counts_, (float)(config_.cpr));

    gear_pos_cpr_counts_ += current_meas_period * gear_pll_kp_ * delta_pos_gear_counts;
    gear_pos_cpr_counts_ = fmodf_pos(gear_pos_cpr_counts_, (float)(config_.GearboxOutputEncoder_cpr));

    vel_estimate_counts_ += current_meas_period * pll_ki_ * delta_pos_cpr_counts;
    gear_vel_estimate_counts_ += current_meas_period * gear_pll_ki_ * delta_pos_gear_counts;


    bool snap_to_zero_vel = false;
    if (std::abs(vel_estimate_counts_) < 0.5f * current_meas_period * pll_ki_) {
        vel_estimate_counts_ = 0.0f;  //align delta-sigma on zero to prevent jitter
        snap_to_zero_vel = true;
    }


    vel_estimate_ = vel_estimate_counts_ * cpr_inverse_;
    q_vel_estimate_ = (int32_t)(*vel_estimate_.present()*VEL_TO_ADC_RATIO);
    gear_vel_estimate_rad_ = (*vel_estimate_.present()) * 2.0f * M_PI*axis_->gear_ratio_inverse_;
    gear_vel_estimate_rad_pu_q11_ = gear_vel_estimate_rad_ * 2048 * axis_->speed_base_inverse_;

    gear_vel_estimate_ = gear_vel_estimate_counts_ * GearboxOutputEncoder_cpr_inverse_;

    float pos_cpr_last = pos_cpr_;
    (void)pos_cpr_last;

    pos_estimate_ = pos_estimate_counts_ / (float)config_.cpr;
    pos_estimate_rad_  = (*pos_estimate_.present()) * 2.0f * M_PI;
    pos_estimate_rad_pu_q15_ = (int32_t)(pos_estimate_rad_ * 32768.f * axis_->position_base_inverse_);

    //// run encoder count interpolation
    int32_t corrected_enc = count_in_cpr_ - config_.offset;
    // if we are stopped, make sure we don't randomly drift
    if (snap_to_zero_vel || !config_.enable_phase_interpolation) {
        interpolation_ = 0.5f;
    // reset interpolation if encoder edge comes
    // TODO: This isn't correct. At high velocities the first phase in this count may very well not be at the edge.
    } else if (delta_enc > 0) {
        interpolation_ = 0.0f;
    } else if (delta_enc < 0) {
        interpolation_ = 1.0f;
    } else {
        // Interpolate (predict) between encoder counts using vel_estimate,
        interpolation_ += current_meas_period * vel_estimate_counts_;
        // don't allow interpolation indicated position outside of [enc, enc+1)
        if (interpolation_ > 1.0f) interpolation_ = 1.0f;
        if (interpolation_ < 0.0f) interpolation_ = 0.0f;
    }
    interpolation_ = current_meas_period * vel_estimate_counts_;
    float interpolated_enc = corrected_enc + interpolation_;

    //// compute electrical phase
    //TODO avoid recomputing elec_rad_per_enc every time
    float elec_rad_per_enc = axis_->motor_.config_.pole_pairs * 2 * M_PI * cpr_inverse_;
    float ph = elec_rad_per_enc * (interpolated_enc - config_.offset_float);
    // ph = fmodf(ph, 2*M_PI);

    vel_estimate_valid_ = true;
    pos_estimate_valid_ = true;
 
   if (is_ready_) {
        phase_ = wrap_pm_pi(ph) * config_.direction;
        phase_vel_ = (2*M_PI) * (*vel_estimate_.present())* axis_->motor_.config_.pole_pairs * config_.direction;
    }

    return true;
}
