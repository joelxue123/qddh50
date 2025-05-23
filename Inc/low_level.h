/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __LOW_LEVEL_H
#define __LOW_LEVEL_H


#ifdef __cplusplus
// Forward declare Motor class before extern "C" block
class Motor;

extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include <cmsis_os.h>
#include <stdbool.h>
#include "stm32g4xx_hal.h"  // Add this for ADC_HandleTypeDef and TIM_HandleTypeDef
#include "stm32g4xx_hal_adc.h" // Add this for TIM_HandleTypeDef


/* Exported types ------------------------------------------------------------*/
/* Exported constants --------------------------------------------------------*/
#define ADC_CHANNEL_COUNT 16
extern const float adc_full_scale;
extern const float adc_ref_voltage;
/* Exported variables --------------------------------------------------------*/
extern float vbus_voltage;
extern float ibus_;
extern bool brake_resistor_armed;
extern bool brake_resistor_saturated;
extern uint16_t adc_measurements_[ADC_CHANNEL_COUNT];
/* Exported macro ------------------------------------------------------------*/
/* Exported functions --------------------------------------------------------*/

void safety_critical_arm_motor_pwm(Motor& motor);
bool safety_critical_disarm_motor_pwm(Motor& motor);
void safety_critical_apply_motor_pwm_timings(Motor& motor, uint16_t timings[3]);
void safety_critical_arm_brake_resistor();
void safety_critical_disarm_brake_resistor();
void safety_critical_apply_brake_resistor_timings(uint32_t low_off, uint32_t high_on);

// called from STM platform code
extern "C" {
void pwm_trig_adc_cb(ADC_TypeDef* hadc, bool injected);
void sample_encoder(void ) ;
void vbus_sense_adc_cb(ADC_HandleTypeDef* hadc, bool injected);
void tim_update_cb(TIM_HandleTypeDef* htim);
void pwm_in_cb(int channel, uint32_t timestamp);
void send_notification(void);
void axis_loop(void);

bool Flash_Init(void);
bool Flash_LoadConfig(void);
bool Flash_SaveConfig(void);
void start_adc_pwm();

}

// Initalisation

void start_pwm(TIM_HandleTypeDef* htim);
void sync_timers(TIM_HandleTypeDef* htim_a, TIM_HandleTypeDef* htim_b,
                 uint16_t TIM_CLOCKSOURCE_ITRx, uint16_t count_offset,
                 TIM_HandleTypeDef* htim_refbase = nullptr);
void start_general_purpose_adc();
float get_adc_voltage(const GPIO_TypeDef* const GPIO_port, uint16_t GPIO_pin);
uint16_t channel_from_gpio(const GPIO_TypeDef* const GPIO_port, uint16_t GPIO_pin);
float get_adc_voltage_channel(uint16_t channel);
void pwm_in_init();
void start_analog_thread();

void update_brake_current();

inline uint32_t cpu_enter_critical() {
    uint32_t primask = __get_PRIMASK();
    __disable_irq();
    return primask;
}

inline void cpu_exit_critical(uint32_t priority_mask) {
    __set_PRIMASK(priority_mask);
}

#ifdef __cplusplus
}
#endif

#endif //__LOW_LEVEL_H
