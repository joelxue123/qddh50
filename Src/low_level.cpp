/* Includes ------------------------------------------------------------------*/

// Because of broken cmsis_os.h, we need to include arm_math first,
// otherwise chip specific defines are ommited


#include "main.h"
#define ARM_MATH_CM4
#include <arm_math.h>

#include <cmsis_os.h>
#include <math.h>
#include <stdint.h>
#include <stdlib.h>


#include <gpio.h>
#include <main.h>

#include <tim.h>
#include <utils.hpp>
#include "stm32g4xx_hal.h"
#include "motor.hpp"  // Add this for Motor class
#include "axis.hpp"   // Add this for Axis class

#include "main_.hpp"
#include "encoder.hpp"
#include "stm32g4xx_hal_adc.h"


ADC_HandleTypeDef hadc1;
ADC_HandleTypeDef hadc2;
/* Private defines -----------------------------------------------------------*/

// #define DEBUG_PRINT

/* Private macros ------------------------------------------------------------*/
/* Private typedef -----------------------------------------------------------*/
/* Global constant data ------------------------------------------------------*/
constexpr float adc_full_scale = static_cast<float>(1UL << 16UL);
constexpr float adc_ref_voltage = 3.3f;
/* Global variables ----------------------------------------------------------*/

// This value is updated by the DC-bus reading ADC.
// Arbitrary non-zero inital value to avoid division by zero if ADC reading is late
float vbus_voltage = 12.0f;
float ibus_ = 0.0f; // exposed for monitoring only
bool brake_resistor_armed = false;
bool brake_resistor_saturated = false;
/* Private constant data -----------------------------------------------------*/
static const GPIO_TypeDef* GPIOs_to_samp[] = { GPIOA, GPIOB, GPIOC };
static const int num_GPIO = sizeof(GPIOs_to_samp) / sizeof(GPIOs_to_samp[0]); 
/* Private variables ---------------------------------------------------------*/

// Two motors, sampling port A,B,C (coherent with current meas timing)
static uint16_t GPIO_port_samples [2][num_GPIO];
/* CPU critical section helpers ----------------------------------------------*/

/* Safety critical functions -------------------------------------------------*/

/*
* This section contains all accesses to safety critical hardware registers.
* Specifically, these registers:
*   Motor0 PWMs:
*     Timer1.MOE (master output enabled)
*     Timer1.CCR1 (counter compare register 1)
*     Timer1.CCR2 (counter compare register 2)
*     Timer1.CCR3 (counter compare register 3)
*   Motor1 PWMs:
*     Timer8.MOE (master output enabled)
*     Timer8.CCR1 (counter compare register 1)
*     Timer8.CCR2 (counter compare register 2)
*     Timer8.CCR3 (counter compare register 3)
*   Brake resistor PWM:
*     Timer2.CCR3 (counter compare register 3)
*     Timer2.CCR4 (counter compare register 4)
* 
* The following assumptions are made:
*   - The hardware operates as described in the datasheet:
*     http://www.st.com/content/ccc/resource/technical/document/reference_manual/3d/6d/5a/66/b4/99/40/d4/DM00031020.pdf/files/DM00031020.pdf/jcr:content/translations/en.DM00031020.pdf
*     This assumption also requires for instance that there are no radiation
*     caused hardware errors.
*   - After startup, all variables used in this section are exclusively modified
*     by the code in this section (this excludes function parameters)
*     This assumption also requires that there is no memory corruption.
*   - This code is compiled by a C standard compliant compiler.
*
* Furthermore:
*   - Between calls to safety_critical_arm_motor_pwm and
*     safety_critical_disarm_motor_pwm the motor's Ibus current is
*     set to the correct value and update_brake_resistor is called
*     at a high rate.
*/

// @brief Floats ALL phases immediately and disarms both motors and the brake resistor.
void low_level_fault(Motor::Error error) {
    // Disable all motors NOW!

    safety_critical_disarm_motor_pwm(axis.motor_);
    axis.motor_.error_ = error;

    safety_critical_disarm_brake_resistor();
}

// @brief Kicks off the arming process of the motor.
// All calls to this function must clearly originate
// from user input.
void safety_critical_arm_motor_pwm(Motor& motor) {
    uint32_t mask = cpu_enter_critical();
    if (brake_resistor_armed) {
        motor.armed_state_ = Motor::ARMED_STATE_WAITING_FOR_TIMINGS;
    }
    cpu_exit_critical(mask);
}

// @brief Disarms the motor PWM.
// After calling this function, it is guaranteed that all three
// motor phases are floating and will not be enabled again until
// safety_critical_arm_motor_phases is called.
// @returns true if the motor was in a state other than disarmed before
bool safety_critical_disarm_motor_pwm(Motor& motor) {
    uint32_t mask = cpu_enter_critical();
    bool was_armed = motor.armed_state_ != Motor::ARMED_STATE_DISARMED;
    motor.armed_state_ = Motor::ARMED_STATE_DISARMED;
    LL_TIM_DisableAllOutputs(motor.hw_config_.timer); //进入刹车模式 2024-10-11
    cpu_exit_critical(mask);
    return was_armed;
}


// @brief Updates the phase timings unless the motor is disarmed.
//
// If this is called at a rate higher than the motor's timer period,
// the actual PMW timings on the pins can be undefined for up to one
// timer period.
void safety_critical_apply_motor_pwm_timings(Motor& motor, uint16_t timings[3]) {
    uint32_t mask = cpu_enter_critical();
    if (!brake_resistor_armed) {
        motor.armed_state_ = Motor::ARMED_STATE_DISARMED;
    }

    motor.hw_config_.timer->CCR1 = timings[0];
    motor.hw_config_.timer->CCR2 = timings[1];
    motor.hw_config_.timer->CCR3 = timings[2];

    if (motor.armed_state_ == Motor::ARMED_STATE_WAITING_FOR_TIMINGS) {
        // timings were just loaded into the timer registers
        // the timer register are buffered, so they won't have an effect
        // on the output just yet so we need to wait until the next
        // interrupt before we actually enable the output
        motor.armed_state_ = Motor::ARMED_STATE_WAITING_FOR_UPDATE;
    } else if (motor.armed_state_ == Motor::ARMED_STATE_WAITING_FOR_UPDATE) {
        // now we waited long enough. Enter armed state and
        // enable the actual PWM outputs.
        motor.armed_state_ = Motor::ARMED_STATE_ARMED;
        LL_TIM_EnableAllOutputs(motor.hw_config_.timer);  // enable pwm outputs
    } else if (motor.armed_state_ == Motor::ARMED_STATE_ARMED) {
        // nothing to do, PWM is running, all good
    } else {
        // unknown state oh no
        safety_critical_disarm_motor_pwm(motor);
    }
    cpu_exit_critical(mask);
}

// @brief Arms the brake resistor
void safety_critical_arm_brake_resistor() {
    uint32_t mask = cpu_enter_critical();
    brake_resistor_armed = true;
    htim2.Instance->CCR3 = 0;
    htim2.Instance->CCR4 = TIM_APB1_PERIOD_CLOCKS + 1;
    cpu_exit_critical(mask);
}

// @brief Disarms the brake resistor and by extension
// all motor PWM outputs.
// After calling this, the brake resistor can only be armed again
// by calling safety_critical_arm_brake_resistor().
void safety_critical_disarm_brake_resistor() {
    uint32_t mask = cpu_enter_critical();
    brake_resistor_armed = false;
    htim2.Instance->CCR3 = 0;
    htim2.Instance->CCR4 = TIM_APB1_PERIOD_CLOCKS + 1;
    for (size_t i = 0; i < AXIS_COUNT; ++i) {
        safety_critical_disarm_motor_pwm(axis.motor_);
    }
    cpu_exit_critical(mask);
}

// @brief Updates the brake resistor PWM timings unless
// the brake resistor is disarmed.
void safety_critical_apply_brake_resistor_timings(uint32_t low_off, uint32_t high_on) {
    if (high_on - low_off < TIM_APB1_DEADTIME_CLOCKS)
        low_level_fault(Motor::ERROR_BRAKE_DEADTIME_VIOLATION);
    uint32_t mask = cpu_enter_critical();
    if (brake_resistor_armed) {
        // Safe update of low and high side timings
        // To avoid race condition, first reset timings to safe state
        // ch3 is low side, ch4 is high side
        htim2.Instance->CCR3 = 0;
        htim2.Instance->CCR4 = TIM_APB1_PERIOD_CLOCKS + 1;
        htim2.Instance->CCR3 = low_off;
        htim2.Instance->CCR4 = high_on;
    }
    cpu_exit_critical(mask);
}

/* Function implementations --------------------------------------------------*/

void start_adc_pwm() {
    // Enable ADC and interrupts
    //LL_ADC_Enable(ADC1);
    //LL_ADC_Enable(ADC2);

    // 1. 使能 ADC2
    LL_ADC_Enable(ADC2);
    LL_ADC_Enable(ADC1);
    
    // 2. 等待 ADC 就绪
    while(!(ADC2->ISR & ADC_ISR_ADRDY));
    while(!(ADC1->ISR & ADC_ISR_ADRDY));
    
    // 3. 配置注入序列
    ADC2->JSQR = (uint32_t)(
        (LL_ADC_INJ_TRIG_EXT_TIM1_TRGO & ADC_JSQR_JEXTSEL) |
        (0x1UL << ADC_JSQR_JEXTEN_Pos) |
        (0x07 << 9) |
        (0x0UL << ADC_JSQR_JL_Pos)
    );
    
    // 3. 配置注入序列
    ADC1->JSQR = (uint32_t)(
        (LL_ADC_INJ_TRIG_EXT_TIM1_TRGO & ADC_JSQR_JEXTSEL) |
        (0x1UL << ADC_JSQR_JEXTEN_Pos) |
        (0x06 << 9) |
        (0x0UL << ADC_JSQR_JL_Pos)
    );
        
    
    // 5. 开始注入组转换
    ADC1->CR |= ADC_CR_JADSTART;
    ADC2->CR |= ADC_CR_JADSTART;

}

void start_pwm(TIM_HandleTypeDef* htim) {
    // Init PWM
    int half_load = TIM_1_8_PERIOD_CLOCKS / 2;
    htim->Instance->CCR1 = half_load-0;
    htim->Instance->CCR2 = half_load+0;
    htim->Instance->CCR3 = half_load+0;
    if(htim == &htim1) {
            // This hardware obfustication layer really is getting on my nerves
        HAL_TIM_PWM_Start(htim, TIM_CHANNEL_1);
        HAL_TIMEx_PWMN_Start(htim, TIM_CHANNEL_1);
        HAL_TIM_PWM_Start(htim, TIM_CHANNEL_2);
        HAL_TIMEx_PWMN_Start(htim, TIM_CHANNEL_2);
        HAL_TIM_PWM_Start(htim, TIM_CHANNEL_3);
        HAL_TIMEx_PWMN_Start(htim, TIM_CHANNEL_3);
        
    } else {
       HAL_TIM_PWM_Start(htim, TIM_CHANNEL_1);
    }


    htim->Instance->CCR4 = 1;
    HAL_TIM_PWM_Start_IT(htim, TIM_CHANNEL_4);
}

/*
 * Initial intention of this function:
 * Synchronize TIM1, TIM8 and TIM13 such that:
 *  1. The triangle waveform of TIM1 leads the triangle waveform of TIM8 by a
 *     90° phase shift.
 *  2. The timer update events of TIM1 and TIM8 are symmetrically interleaved.
 *  3. Each TIM13 reload coincides with a TIM1 lower update event.
 * 
 * However right now this function only ensures point (1) and (3) but because
 * TIM1 and TIM3 only trigger an update on every third reload, this does not
 * imply (or even allow for) (2).
 * 
 * TODO: revisit the timing topic in general.
 */
void sync_timers(TIM_HandleTypeDef* htim_a, TIM_HandleTypeDef* htim_b,
                 uint16_t TIM_CLOCKSOURCE_ITRx, uint16_t count_offset,
                 TIM_HandleTypeDef* htim_refbase) {
    // Store intial timer configs
    uint16_t MOE_store_a = htim_a->Instance->BDTR & (TIM_BDTR_MOE);
    uint16_t MOE_store_b = htim_b->Instance->BDTR & (TIM_BDTR_MOE);
    uint16_t CR2_store = htim_a->Instance->CR2;
    uint16_t SMCR_store = htim_b->Instance->SMCR;
    // Turn off output
    htim_a->Instance->BDTR &= ~(TIM_BDTR_MOE);
    htim_b->Instance->BDTR &= ~(TIM_BDTR_MOE);
    // Disable both timer counters
    htim_a->Instance->CR1 &= ~TIM_CR1_CEN;
    htim_b->Instance->CR1 &= ~TIM_CR1_CEN;
    // Set first timer to send TRGO on counter enable
    htim_a->Instance->CR2 &= ~TIM_CR2_MMS;
    htim_a->Instance->CR2 |= TIM_TRGO_ENABLE;
    // Set Trigger Source of second timer to the TRGO of the first timer
    htim_b->Instance->SMCR &= ~TIM_SMCR_TS;
    htim_b->Instance->SMCR |= TIM_CLOCKSOURCE_ITRx;
    // Set 2nd timer to start on trigger
    htim_b->Instance->SMCR &= ~TIM_SMCR_SMS;
    htim_b->Instance->SMCR |= TIM_SLAVEMODE_TRIGGER;
    // Dir bit is read only in center aligned mode, so we clear the mode for now
    uint16_t CMS_store_a = htim_a->Instance->CR1 & TIM_CR1_CMS;
    uint16_t CMS_store_b = htim_b->Instance->CR1 & TIM_CR1_CMS;
    htim_a->Instance->CR1 &= ~TIM_CR1_CMS;
    htim_b->Instance->CR1 &= ~TIM_CR1_CMS;
    // Set both timers to up-counting state
    htim_a->Instance->CR1 &= ~TIM_CR1_DIR;
    htim_b->Instance->CR1 &= ~TIM_CR1_DIR;
    // Restore center aligned mode
    htim_a->Instance->CR1 |= CMS_store_a;
    htim_b->Instance->CR1 |= CMS_store_b;
    // set counter offset
    htim_a->Instance->CNT = count_offset;
    htim_b->Instance->CNT = count_offset/2;
    // Set and start reference timebase timer (if used)
    if (htim_refbase) {
        htim_refbase->Instance->CNT = count_offset;
        htim_refbase->Instance->CR1 |= (TIM_CR1_CEN); // start
    }
    // Start Timer a
    htim_a->Instance->CR1 |= (TIM_CR1_CEN);
    // Restore timer configs
    htim_a->Instance->CR2 = CR2_store;
    htim_b->Instance->SMCR = SMCR_store;
    // restore output
    htim_a->Instance->BDTR |= MOE_store_a;
    htim_b->Instance->BDTR |= MOE_store_b;
}

// @brief ADC1 measurements are written to this buffer by DMA
uint16_t adc_measurements_[ADC_CHANNEL_COUNT] = { 0 };

// @brief Starts the general purpose ADC on the ADC1 peripheral.
// The measured ADC voltages can be read with get_adc_voltage().
//
// ADC1 is set up to continuously sample all channels 0 to 15 in a
// round-robin fashion.
// DMA is used to copy the measured 12-bit values to adc_measurements_.
//
// The injected (high priority) channel of ADC1 is used to sample vbus_voltage.
// This conversion is triggered by TIM1 at the frequency of the motor control loop.
void start_general_purpose_adc() {
    ADC_ChannelConfTypeDef sConfig;

    // Configure the global features of the ADC (Clock, Resolution, Data Alignment and number of conversion)
    hadc1.Instance = ADC1;
    hadc1.Init.ClockPrescaler = ADC_CLOCK_SYNC_PCLK_DIV4;
    hadc1.Init.Resolution = ADC_RESOLUTION_12B;
    hadc1.Init.ScanConvMode = ENABLE;
    hadc1.Init.ContinuousConvMode = ENABLE;
    hadc1.Init.DiscontinuousConvMode = DISABLE;
    hadc1.Init.ExternalTrigConvEdge = ADC_EXTERNALTRIGCONVEDGE_NONE;
    hadc1.Init.ExternalTrigConv = ADC_SOFTWARE_START;
    hadc1.Init.DataAlign = ADC_DATAALIGN_RIGHT;
    hadc1.Init.NbrOfConversion = ADC_CHANNEL_COUNT;
    hadc1.Init.DMAContinuousRequests = ENABLE;
    hadc1.Init.EOCSelection = ADC_EOC_SINGLE_CONV;

    if (HAL_ADC_Init(&hadc1) != HAL_OK)
    {
        _Error_Handler((char*)__FILE__, __LINE__);
    }



    // Set up sampling sequence (channel 0 ... channel 15)
    sConfig.SamplingTime = ADC_SAMPLETIME_12CYCLES_5;
    for (uint32_t channel = 0; channel < ADC_CHANNEL_COUNT; ++channel) {
        sConfig.Channel = channel << 0;
        sConfig.Rank = channel + 1; // rank numbering starts at 1
        if (HAL_ADC_ConfigChannel(&hadc1, &sConfig) != HAL_OK)
            _Error_Handler((char*)__FILE__, __LINE__);
    }

    HAL_ADC_Start_DMA(&hadc1, reinterpret_cast<uint32_t*>(adc_measurements_), ADC_CHANNEL_COUNT);

}

// @brief Returns the ADC voltage associated with the specified pin.
// GPIO_set_to_analog() must be called first to put the Pin into
// analog mode.
// Returns NaN if the pin has no associated ADC1 channel.
//
// On ODrive 3.3 and 3.4 the following pins can be used with this function:
//  GPIO_1, GPIO_2, GPIO_3, GPIO_4 and some pins that are connected to
//  on-board sensors (M0_TEMP, M1_TEMP, AUX_TEMP)
//
// The ADC values are sampled in background at ~30kHz without
// any CPU involvement.
//
// Details: each of the 16 conversion takes (15+26) ADC clock
// cycles and the ADC, so the update rate of the entire sequence is:
//  21000kHz / (15+26) / 16 = 32kHz
// The true frequency is slightly lower because of the injected vbus
// measurements
float get_adc_voltage(const GPIO_TypeDef* const GPIO_port, uint16_t GPIO_pin) {
    const uint16_t channel = channel_from_gpio(GPIO_port, GPIO_pin);
    return get_adc_voltage_channel(channel);
}

// @brief Given a GPIO_port and pin return the associated adc_channel.
// returns UINT16_MAX if there is no adc_channel;
uint16_t channel_from_gpio(const GPIO_TypeDef* const GPIO_port, uint16_t GPIO_pin)
{
    uint16_t channel = UINT16_MAX;
    if (GPIO_port == GPIOA) {
        if (GPIO_pin == GPIO_PIN_0)
            channel = 0;
        else if (GPIO_pin == GPIO_PIN_1)
            channel = 1;
        else if (GPIO_pin == GPIO_PIN_2)
            channel = 2;
        else if (GPIO_pin == GPIO_PIN_3)
            channel = 3;
        else if (GPIO_pin == GPIO_PIN_4)
            channel = 4;
        else if (GPIO_pin == GPIO_PIN_5)
            channel = 5;
        else if (GPIO_pin == GPIO_PIN_6)
            channel = 6;
        else if (GPIO_pin == GPIO_PIN_7)
            channel = 7;
    } else if (GPIO_port == GPIOB) {
        if (GPIO_pin == GPIO_PIN_0)
            channel = 8;
        else if (GPIO_pin == GPIO_PIN_1)
            channel = 9;
    } else if (GPIO_port == GPIOC) {
        if (GPIO_pin == GPIO_PIN_0)
            channel = 10;
        else if (GPIO_pin == GPIO_PIN_1)
            channel = 11;
        else if (GPIO_pin == GPIO_PIN_2)
            channel = 12;
        else if (GPIO_pin == GPIO_PIN_3)
            channel = 13;
        else if (GPIO_pin == GPIO_PIN_4)
            channel = 14;
        else if (GPIO_pin == GPIO_PIN_5)
            channel = 15;
    }
    return channel;
}

// @brief Given an adc channel return the measured voltage.
// returns NaN if the channel is not valid.
float get_adc_voltage_channel(uint16_t channel)
{
    if (channel < ADC_CHANNEL_COUNT)
        return ((float)adc_measurements_[channel]) * (adc_ref_voltage / adc_full_scale);
    else
        return 0.0f / 0.0f; // NaN
}

//--------------------------------
// IRQ Callbacks
//--------------------------------
#define FILTER_SIZE 32
struct filter_st {
    int32_t filter_data[FILTER_SIZE];
    int32_t filter_index; // 索引不需要初始化，因为它将在函数中初始化
    int32_t filtered_value; // 滤波值不需要初始化
    int32_t sum; // 总和不需要初始化
};

struct filter_st dc_current_a, dc_current_c,vbus_voltage_filter; // 两个滤波器实例


void smooth_filter(uint32_t new_sample, struct filter_st *dc_current) {
    // 从结构体中获取当前的总和和索引
    int32_t sum = dc_current->sum;
    int32_t *filter_data = dc_current->filter_data;
    int32_t filter_index = dc_current->filter_index;

    // 移除最老的样本，并添加新的样本
    sum -= filter_data[filter_index]; // 减去最老的样本
    sum += new_sample; // 加上新的样本
    filter_data[filter_index] = new_sample; // 更新数组

    // 计算索引以循环使用数组
    filter_index = (filter_index + 1) % FILTER_SIZE;
    dc_current->filter_index = filter_index; // 修复了遗漏的分号

    // 计算平均值作为滤波结果
    dc_current->filtered_value = sum / FILTER_SIZE;

    // 更新总和
    dc_current->sum = sum;
}

void vbus_sense_adc_cb(ADC_TypeDef *adc, bool injected) {
    constexpr float voltage_scale = adc_ref_voltage * VBUS_S_DIVIDER_RATIO / adc_full_scale;
    // Only one conversion in sequence, so only rank1
    uint32_t ADCValue = LL_ADC_INJ_ReadConversionData12(adc, LL_ADC_INJ_RANK_1);
    smooth_filter(ADCValue , &vbus_voltage_filter);
    vbus_voltage = vbus_voltage_filter.filtered_value * voltage_scale;
}



void sample_encoder(void ) { 
    axis.encoder_.abs_start_transaction();
}




volatile uint32_t timestamp_ = 0;


// Sets up the correct chip specifc defines required by arm_math
// This is the callback from the ADC that we expect after the PWM has triggered an ADC conversion.
// Timing diagram: Firmware/timing_diagram_v3.png

void pwm_trig_adc_cb(ADC_TypeDef *adc, bool injected) {

    axis.motor_.timing_log_[0] = TIM1->CNT;
    
  //  axis.motor_.log_timing(TIMING_LOG_ADC_CB_I);

    timestamp_ += TIM_1_8_PERIOD_CLOCKS * (TIM_1_8_RCR + 1 + 1);
    uint32_t timestamp = timestamp_;

    vbus_voltage = get_adc_voltage_channel(3) *19.f;

   // vbus_voltage = get_adc_voltage_channel(3) *VBUS_S_DIVIDER_RATIO;

    //while(!(ADC2->ISR & ADC_ISR_JEOC));
    //while(!(ADC2->ISR & ADC_ISR_JEOS));

    volatile int32_t adc1_raw = ADC1->JDR1;
    volatile int32_t adc2_raw = ADC2->JDR1;


    

    axis.motor_.check_for_current_saturation(adc1_raw);
    axis.motor_.check_for_current_saturation(adc2_raw);

    axis.motor_.current_meas_.Q16_phA = adc1_raw  - axis.motor_.DC_calib_.Q16_phA;
    axis.motor_.current_meas_.Q16_phB = adc2_raw - axis.motor_.DC_calib_.Q16_phB ;
    axis.motor_.current_meas_.Q16_phC = (0 - axis.motor_.current_meas_.Q16_phA - axis.motor_.current_meas_.Q16_phB);

    axis.motor_.current_meas_.phA= axis.motor_.current_meas_.Q16_phA*CURRENT_SCALE_FACTOR;
    axis.motor_.current_meas_.phB= axis.motor_.current_meas_.Q16_phB*CURRENT_SCALE_FACTOR;
    axis.motor_.current_meas_.phC= axis.motor_.current_meas_.Q16_phC*CURRENT_SCALE_FACTOR;
    axis.motor_.timing_log_[1] = TIM1->CNT;

 




    axis.motor_.current_meas_cb(timestamp);
    axis.motor_.timing_log_[2] = TIM1->CNT;
    //while(TIM1->CNT>10);

    axis.control_loop_cb(timestamp);

    
    axis.motor_.timing_log_[3] = TIM1->CNT;

    //while(TIM1->CNT<3000);
    axis.motor_.pwm_update_cb(timestamp + TIM_1_8_PERIOD_CLOCKS * (TIM_1_8_RCR + 1));


    axis.motor_.timing_log_[4] = TIM1->CNT;
    axis.signal_current_meas(); 
 //   axis.motor_.log_timing(TIMING_LOG_ADC_CB_DC);
    
    
}





void tim_update_cb(TIM_HandleTypeDef* htim) {
    
}

// @brief Sums up the Ibus contribution of each motor and updates the
// brake resistor PWM accordingly.
void update_brake_current() {
}


/* RC PWM input --------------------------------------------------------------*/

// @brief Returns the ODrive GPIO number for a given
// TIM2 or TIM5 input capture channel number.
int tim_2_5_channel_num_to_gpio_num(int channel) {
#if HW_VERSION_MAJOR == 3 && HW_VERSION_MINOR >= 3
    if (channel >= 1 && channel <= 4) {
        // the channel numbers just happen to coincide with
        // the GPIO numbers
        return channel;
    } else {
        return -1;
    }
#else
    // Only ch4 is available on v3.2
    if (channel == 4) {
        return 4;
    } else {
        return -1;
    }
#endif
}
// @brief Returns the TIM2 or TIM5 channel number
// for a given GPIO number.
uint32_t gpio_num_to_tim_2_5_channel(int gpio_num) {
#if HW_VERSION_MAJOR == 3 && HW_VERSION_MINOR >= 3
    switch (gpio_num) {
        case 1: return TIM_CHANNEL_1;
        case 2: return TIM_CHANNEL_2;
        case 3: return TIM_CHANNEL_3;
        case 4: return TIM_CHANNEL_4;
        default: return 0;
    }
#else
    // Only ch4 is available on v3.2
    if (gpio_num == 4) {
        return TIM_CHANNEL_4;
    } else {
        return 0;
    }
#endif
}

void pwm_in_init() {

}

//TODO: These expressions have integer division by 1MHz, so it will be incorrect for clock speeds of not-integer MHz
#define TIM_2_5_CLOCK_HZ        TIM_APB1_CLOCK_HZ
#define PWM_MIN_HIGH_TIME          ((TIM_2_5_CLOCK_HZ / 1000000UL) * 1000UL) // 1ms high is considered full reverse
#define PWM_MAX_HIGH_TIME          ((TIM_2_5_CLOCK_HZ / 1000000UL) * 2000UL) // 2ms high is considered full forward
#define PWM_MIN_LEGAL_HIGH_TIME    ((TIM_2_5_CLOCK_HZ / 1000000UL) * 500UL) // ignore high periods shorter than 0.5ms
#define PWM_MAX_LEGAL_HIGH_TIME    ((TIM_2_5_CLOCK_HZ / 1000000UL) * 2500UL) // ignore high periods longer than 2.5ms
#define PWM_INVERT_INPUT        false

void handle_pulse(int gpio_num, uint32_t high_time) {
}

void pwm_in_cb(int channel, uint32_t timestamp) {

}


/* Analog speed control input */

static void update_analog_endpoint(const struct PWMMapping_t *map, int gpio)
{
    //float fraction = get_adc_voltage(get_gpio_port_by_pin(gpio), get_gpio_pin_by_pin(gpio)) / 3.3f;
    
}
// Change function signature to match os_pthread type
static void analog_polling_thread(const void* argument) {
    while (true) {
        axis.fet_thermistor_.update();
        axis.motor_.check_protection();
        osDelay(2);
    }
}

osThreadId analog_thread_ = NULL;

void start_analog_thread() {
    osThreadDef(thread_def, analog_polling_thread, osPriorityLow, 0, 512 / sizeof(StackType_t));
    analog_thread_ = osThreadCreate(osThread(thread_def), NULL);
}



void selfdefined_UART_DMAReceiveCpltCallback(SPI_HandleTypeDef *hspi)
{
    
}


void selfdefined_UART_DMAsendCpltCallback(SPI_HandleTypeDef *hspi)
{

}



void axis_loop(void)
{
    axis.run_state_machine_loop();
}
