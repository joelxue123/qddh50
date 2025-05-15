/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2025 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32g4xx_hal.h"

#include "motorcontrol.h"

#include "stm32g4xx_ll_adc.h"
#include "stm32g4xx_ll_comp.h"
#include "stm32g4xx_ll_exti.h"
#include "stm32g4xx_ll_cordic.h"
#include "stm32g4xx_ll_dac.h"
#include "stm32g4xx_ll_dma.h"
#include "stm32g4xx_ll_i2c.h"
#include "stm32g4xx_ll_opamp.h"
#include "stm32g4xx_ll_rcc.h"
#include "stm32g4xx_ll_bus.h"
#include "stm32g4xx_ll_crs.h"
#include "stm32g4xx_ll_system.h"
#include "stm32g4xx_ll_cortex.h"
#include "stm32g4xx_ll_utils.h"
#include "stm32g4xx_ll_pwr.h"
#include "stm32g4xx_ll_tim.h"
#include "stm32g4xx_ll_usart.h"
#include "stm32g4xx_ll_gpio.h"
#include "stm32g4xx_ll_spi.h"
#include "stm32g4xx_hal_spi.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Exported types ------------------------------------------------------------*/
/* USER CODE BEGIN ET */

/* USER CODE END ET */

/* Exported constants --------------------------------------------------------*/
/* USER CODE BEGIN EC */

/* USER CODE END EC */

/* Exported macro ------------------------------------------------------------*/
/* USER CODE BEGIN EM */

/* USER CODE END EM */

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* USER CODE BEGIN EFP */

/* Private define ------------------------------------------------------------*/
#define TIM_1_8_CLOCK_HZ 170000000
#define TIM_1_8_PERIOD_CLOCKS 4250 //2024-5-6  原来3500
#define TIM_1_8_DEADTIME_CLOCKS 40
#define TIM_APB1_CLOCK_HZ 85000000
#define TIM_APB1_PERIOD_CLOCKS 4096
#define TIM_APB1_DEADTIME_CLOCKS 40
#define TIM_1_8_RCR 0  //原来2

#define TIM_TIME_BASE TIM16

#define CURRENT_MEAS_PERIOD ( (float)2*TIM_1_8_PERIOD_CLOCKS*(TIM_1_8_RCR+1) / (float)TIM_1_8_CLOCK_HZ )
#define CURRENT_MEAS_HZ ( (float)(TIM_1_8_CLOCK_HZ) / (float)(2*TIM_1_8_PERIOD_CLOCKS*(TIM_1_8_RCR+1)) )


#define CURRENT_SENSE_MIN_VOLT  0.3f
#define CURRENT_SENSE_MAX_VOLT  3.0f
#define MAX_CONTROL_LOOP_UPDATE_TO_CURRENT_UPDATE_DELTA (TIM_1_8_PERIOD_CLOCKS / 2 + 1 * 128)

#define VBUS_S_DIVIDER_RATIO 19.0f

/* Current Measurement Scale Factors */
#define ADC_CURRENT_FULL_SCALE  2048.0f     // ADC full scale value (15-bit)
#define MAX_PHASE_CURRENT       55.0f        // Maximum measurable phase current (A)
#define CURRENT_SCALE_FACTOR    (MAX_PHASE_CURRENT/ADC_CURRENT_FULL_SCALE)  // ~0.0013f A/bit
#define CURRENT_TO_ADC_RATIO    (ADC_CURRENT_FULL_SCALE/MAX_PHASE_CURRENT)

#define MAX_PHASE_VOLTAGE     40.0f        // Maximum measurable phase voltage (V)
#define ADC_VOLTAGE_FULL_SCALE  2048.0f     // ADC full scale value (15-bit)
#define VOLTAGE_SCALE_FACTOR  (MAX_PHASE_VOLTAGE/ADC_VOLTAGE_FULL_SCALE)
#define VOLTAGE_TO_ADC_RATIO (ADC_VOLTAGE_FULL_SCALE/MAX_PHASE_VOLTAGE)




#define MAX_PHASE_VEL  18.0f   //rad/s
#define VEL_FULL_SCALE  2048.0f
#define VEL_TO_ADC_RATIO (VEL_FULL_SCALE/MAX_PHASE_VEL)


#define MAX_PHASE (12.5f)
#define PHASE_FULL_SCALE  32768.0f
#define PHASE_TO_ADC_RATIO (PHASE_FULL_SCALE/MAX_PHASE)


/* 用户参数配置*/
#define  NUM_LINEARITY_SEG   60

/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define Start_Stop_Pin LL_GPIO_PIN_13
#define Start_Stop_GPIO_Port GPIOC
#define Start_Stop_EXTI_IRQn EXTI15_10_IRQn
#define M1_BUS_VOLTAGE_Pin LL_GPIO_PIN_0
#define M1_BUS_VOLTAGE_GPIO_Port GPIOA
#define M1_CURR_SHUNT_U_Pin LL_GPIO_PIN_1
#define M1_CURR_SHUNT_U_GPIO_Port GPIOA
#define M1_OPAMP1_OUT_Pin LL_GPIO_PIN_2
#define M1_OPAMP1_OUT_GPIO_Port GPIOA
#define M1_OPAMP1_EXT_GAIN_Pin LL_GPIO_PIN_3
#define M1_OPAMP1_EXT_GAIN_GPIO_Port GPIOA
#define M1_OPAMP2_OUT_Pin LL_GPIO_PIN_6
#define M1_OPAMP2_OUT_GPIO_Port GPIOA
#define M1_CURR_SHUNT_V_Pin LL_GPIO_PIN_7
#define M1_CURR_SHUNT_V_GPIO_Port GPIOA
#define M1_TEMPERATURE_Pin LL_GPIO_PIN_4
#define M1_TEMPERATURE_GPIO_Port GPIOC
#define M1_OPAMP2_EXT_GAIN_Pin LL_GPIO_PIN_5
#define M1_OPAMP2_EXT_GAIN_GPIO_Port GPIOC
#define M1_CURR_SHUNT_W_Pin LL_GPIO_PIN_0
#define M1_CURR_SHUNT_W_GPIO_Port GPIOB
#define GD_WAKE_Pin LL_GPIO_PIN_7
#define GD_WAKE_GPIO_Port GPIOE
#define M1_PWM_UL_Pin LL_GPIO_PIN_8
#define M1_PWM_UL_GPIO_Port GPIOE
#define M1_PWM_UH_Pin LL_GPIO_PIN_9
#define M1_PWM_UH_GPIO_Port GPIOE
#define M1_PWM_VL_Pin LL_GPIO_PIN_10
#define M1_PWM_VL_GPIO_Port GPIOE
#define M1_PWM_VH_Pin LL_GPIO_PIN_11
#define M1_PWM_VH_GPIO_Port GPIOE
#define M1_PWM_WL_Pin LL_GPIO_PIN_12
#define M1_PWM_WL_GPIO_Port GPIOE
#define M1_PWM_WH_Pin LL_GPIO_PIN_13
#define M1_PWM_WH_GPIO_Port GPIOE
#define GD_READY_Pin LL_GPIO_PIN_14
#define GD_READY_GPIO_Port GPIOE
#define GD_NFAULT_Pin LL_GPIO_PIN_15
#define GD_NFAULT_GPIO_Port GPIOE
#define GD_SCL_Pin LL_GPIO_PIN_8
#define GD_SCL_GPIO_Port GPIOC
#define GD_SDA_Pin LL_GPIO_PIN_9
#define GD_SDA_GPIO_Port GPIOC
#define UART_TX_Pin LL_GPIO_PIN_9
#define UART_TX_GPIO_Port GPIOA
#define UART_RX_Pin LL_GPIO_PIN_10
#define UART_RX_GPIO_Port GPIOA
#define TMS_Pin LL_GPIO_PIN_13
#define TMS_GPIO_Port GPIOA
#define TCK_Pin LL_GPIO_PIN_14
#define TCK_GPIO_Port GPIOA

#define CURRENT_U_PIN LL_GPIO_PIN_0
#define CURRENT_U_PORT GPIOC
#define CURRENT_V_PIN LL_GPIO_PIN_1
#define CURRENT_V_PORT GPIOC
#define CURRENT_W_PIN LL_GPIO_PIN_2
#define CURRENT_W_PORT GPIOC

/* SPI1 Pin Definitions */
#define SPI1_Pin_Clk        LL_GPIO_PIN_5
#define SPI1_Pin_Clk_Port   GPIOA
#define SPI1_Pin_MISO       LL_GPIO_PIN_6
#define SPI1_Pin_MISO_Port  GPIOA  
#define SPI1_Pin_MOSI       LL_GPIO_PIN_7
#define SPI1_Pin_MOSI_Port  GPIOA
#define SPI1_Pin_CS         LL_GPIO_PIN_4
#define SPI1_Pin_CS_Port    GPIOA


/* SPI3 Pin Definitions */
#define SPI3_Pin_Clk        LL_GPIO_PIN_3
#define SPI3_Pin_Clk_Port   GPIOB
#define SPI3_Pin_MISO       LL_GPIO_PIN_4
#define SPI3_Pin_MISO_Port  GPIOB  
#define SPI3_Pin_MOSI       LL_GPIO_PIN_5
#define SPI3_Pin_MOSI_Port  GPIOB
#define SPI3_Pin_CS         LL_GPIO_PIN_6
#define SPI3_Pin_CS_Port    GPIOB



#define EN_GATE_Pin GPIO_PIN_12
#define EN_GATE_GPIO_Port GPIOB
#define M0_AL_Pin GPIO_PIN_13
#define M0_AL_GPIO_Port GPIOB
#define M0_BL_Pin GPIO_PIN_14
#define M0_BL_GPIO_Port GPIOB
#define M0_CL_Pin GPIO_PIN_15
#define M0_CL_GPIO_Port GPIOB

#define M0_AH_Pin GPIO_PIN_8
#define M0_AH_GPIO_Port GPIOA
#define M0_BH_Pin GPIO_PIN_9
#define M0_BH_GPIO_Port GPIOA
#define M0_CH_Pin GPIO_PIN_10
#define M0_CH_GPIO_Port GPIOA



/* SPI1 DMA Channels */
#define SPI1_DMA_TX_Channel LL_DMA_CHANNEL_3
#define SPI1_DMA_RX_Channel LL_DMA_CHANNEL_4
/* Hardware Definitions */
#define VESC_UART                   USART1
#define VESC_DMA                    DMA1
#define VESC_DMA_RX_CHANNEL        LL_DMA_CHANNEL_1
#define VESC_DMA_TX_CHANNEL        LL_DMA_CHANNEL_2
#define VESC_TX_PIN                UART_TX_Pin
#define VESC_RX_PIN                UART_RX_Pin
#define VESC_GPIO_PORT             GPIOA


/* USER CODE BEGIN Private defines */

extern float current_meas_period;


typedef struct {
  SPI_HandleTypeDef* motor_spi;
  SPI_HandleTypeDef* GearboxOutputEncoder_spi;
//  UART_HandleTypeDef *uart;

} EncoderHardwareConfig_t;
typedef struct {
  TIM_TypeDef* timer;
  uint16_t control_deadline;
  float shunt_conductance;
} MotorHardwareConfig_t;
typedef struct {
  const float* const coeffs;
  const float* const aux_coefficients;
  size_t num_coeffs;
  size_t adc_ch;
  size_t aux_temp;
} ThermistorHardwareConfig_t;

void SPI3_TransferDMA(uint8_t *txData, uint8_t *rxData, uint16_t size);


/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif




#endif /* __MAIN_H */
