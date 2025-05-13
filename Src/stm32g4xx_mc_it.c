
/**
  ******************************************************************************
  * @file    stm32g4xx_mc_it.c
  * @author  Motor Control SDK Team, ST Microelectronics
  * @brief   Main Interrupt Service Routines.
  *          This file provides exceptions handler and peripherals interrupt
  *          service routine related to Motor Control for the STM32G4 Family.
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2024 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under Ultimate Liberty license
  * SLA0044, the "License"; You may not use this file except in compliance with
  * the License. You may obtain a copy of the License at:
  *                             www.st.com/SLA0044
  *
  ******************************************************************************
  * @ingroup STM32G4xx_IRQ_Handlers
  */

/* Includes ------------------------------------------------------------------*/
#include "mc_config.h"
#include "mc_type.h"
//cstat -MISRAC2012-Rule-3.1
#include "mc_tasks.h"
//cstat +MISRAC2012-Rule-3.1
#include "motorcontrol.h"
#include "can.h"
#include "stm32g4xx_hal_fdcan.h"
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/** @addtogroup MCSDK
  * @{
  */

/** @addtogroup STM32G4xx_IRQ_Handlers STM32G4xx IRQ Handlers
  * @{
  */

/* USER CODE BEGIN PRIVATE */

/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
/* Private functions ---------------------------------------------------------*/

/* USER CODE END PRIVATE */

/* Public prototypes of IRQ handlers called from assembly code ---------------*/
void ADC1_2_IRQHandler(void);
void TIMx_UP_M1_IRQHandler(void);
void TIMx_BRK_M1_IRQHandler(void);

#if defined (CCMRAM)
#if defined (__ICCARM__)
#pragma location = ".ccmram"
#elif defined (__CC_ARM) || defined(__GNUC__)
__attribute__((section (".ccmram")))
#endif
#endif
void fun1(PWMC_R3_2_Handle_t *pHandle);

void pwm_trig_adc_cb(ADC_TypeDef* hadc, bool injected);

/**
  * @brief  This function handles ADC1/ADC2 interrupt request.
  * @param  None
  */
void ADC1_2_IRQHandler(void)
{
  /* USER CODE BEGIN ADC1_2_IRQn 0 */

  /* USER CODE END ADC1_2_IRQn 0 */

    /* Clear Flags M1 */
    LL_ADC_ClearFlag_JEOS(ADC1);
    LL_ADC_ClearFlag_JEOS(ADC2);
    LL_GPIO_SetOutputPin(SPI1_Pin_CS_Port, SPI1_Pin_CS); // 设置 CS 初始为高电平（非激活）
    LL_GPIO_SetOutputPin(SPI3_Pin_CS_Port, SPI3_Pin_CS); // 设置 CS 初始为低电平（激活）
  /* Highfrequency task */
  (void)TSK_HighFrequencyTask();



  
  /* Start ADC2 conversion */
 // LL_ADC_INJ_StartConversion(ADC2);

 // LL_ADC_INJ_SetSequencerRanks(ADC1, LL_ADC_INJ_RANK_1, LL_ADC_CHANNEL_6); // OPAMP1 output
 // LL_ADC_INJ_SetSequencerRanks(ADC2, LL_ADC_INJ_RANK_1, LL_ADC_CHANNEL_6); // OPAMP1 output
 //  LL_ADC_INJ_SetTriggerSource(ADC1, LL_ADC_INJ_TRIG_EXT_TIM1_TRGO);
 //  LL_ADC_INJ_SetTriggerEdge(ADC1, LL_ADC_INJ_TRIG_EXT_RISING);
  LL_TIM_SetTriggerOutput(TIM1, LL_TIM_TRGO_OC4REF);




  pwm_trig_adc_cb(ADC1,0);
    /* Configure ADC2 JSQR directly */
  //   ADC1->JSQR = (uint32_t)(
  //     (LL_ADC_INJ_TRIG_EXT_TIM1_TRGO & ADC_JSQR_JEXTSEL) |  // External trigger selection
  //     (0x1UL << ADC_JSQR_JEXTEN_Pos) |                       // Rising edge trigger
  //     (0x06 << 9) |             // Channel 3 as first conversion
  //     (0x0UL << ADC_JSQR_JL_Pos)                            // Length = 1 conversion
  // );

  //     /* Configure ADC2 JSQR directly */
  //     ADC2->JSQR = (uint32_t)(
  //       (LL_ADC_INJ_TRIG_EXT_TIM1_TRGO & ADC_JSQR_JEXTSEL) |  // External trigger selection
  //       (0x1UL << ADC_JSQR_JEXTEN_Pos) |                       // Rising edge trigger
  //       (0x07 << 9) |             // Channel 3 as first conversion
  //       (0x0UL << ADC_JSQR_JL_Pos)                            // Length = 1 conversion
  //   );
  /* USER CODE BEGIN HighFreq */

  /* USER CODE END HighFreq  */

  /* USER CODE BEGIN ADC1_2_IRQn 1 */

  /* USER CODE END ADC1_2_IRQn 1 */
}

#if defined (CCMRAM)
#if defined (__ICCARM__)
#pragma location = ".ccmram"
#elif defined (__CC_ARM) || defined(__GNUC__)
__attribute__((section (".ccmram")))
#endif
#endif
/**
  * @brief  This function handles first motor TIMx Update interrupt request.
  * @param  None
  */
void TIMx_UP_M1_IRQHandler(void)
{
 /* USER CODE BEGIN TIMx_UP_M1_IRQn 0 */

 /* USER CODE END  TIMx_UP_M1_IRQn 0 */

  LL_TIM_ClearFlag_UPDATE(TIM1);
  (void)R3_2_TIMx_UP_IRQHandler(&PWM_Handle_M1);

 /* USER CODE BEGIN TIMx_UP_M1_IRQn 1 */

 /* USER CODE END  TIMx_UP_M1_IRQn 1 */
}

void TIMx_BRK_M1_IRQHandler(void)
{
  /* USER CODE BEGIN TIMx_BRK_M1_IRQn 0 */

  /* USER CODE END TIMx_BRK_M1_IRQn 0 */

  if (0U == LL_TIM_IsActiveFlag_BRK(TIM1))
  {
    /* Nothing to do */
  }
  else
  {
    LL_TIM_ClearFlag_BRK(TIM1);
   // PWMC_OCP_Handler(&PWM_Handle_M1._Super);
  }

  if (0U == LL_TIM_IsActiveFlag_BRK2(TIM1))
  {
    /* Nothing to do */
  }
  else
  {
    LL_TIM_ClearFlag_BRK2(TIM1);
 //   PWMC_OVP_Handler(&PWM_Handle_M1._Super, TIM1);
  }

  /* Systick is not executed due low priority so is necessary to call MC_Scheduler here */
 // MC_RunMotorControlTasks();

  /* USER CODE BEGIN TIMx_BRK_M1_IRQn 1 */

  /* USER CODE END TIMx_BRK_M1_IRQn 1 */
}

/* USER CODE BEGIN 1 */

/**
  * @brief  This function handles USART1 interrupt request.
  * @param  None
  */
 void USART1_IRQHandler(void)
 {
     VESC_UART_IRQHandler();
 }
 
 /**
   * @brief  This function handles DMA1 channel1 interrupt request.
   * @param  None
   */
 void DMA1_Channel1_IRQHandler(void)
 {
     /* Check half-transfer complete interrupt */
     if (LL_DMA_IsActiveFlag_HT1(DMA1)) {
         LL_DMA_ClearFlag_HT1(DMA1);
     }
     
     /* Check transfer-complete interrupt */
     if (LL_DMA_IsActiveFlag_TC1(DMA1)) {
         LL_DMA_ClearFlag_TC1(DMA1);
     }
     
     /* Check transfer-error interrupt */
     if (LL_DMA_IsActiveFlag_TE1(DMA1)) {
         LL_DMA_ClearFlag_TE1(DMA1);
     }
 }
 
 /**
   * @brief  This function handles DMA1 channel2 interrupt request.
   * @param  None
   */
 void DMA1_Channel2_IRQHandler(void)
 {
     /* Check transfer-complete interrupt */
     if (LL_DMA_IsActiveFlag_TC2(DMA1)) {
         LL_DMA_ClearFlag_TC2(DMA1);
         /* Stop DMA transfer */
         LL_DMA_DisableChannel(DMA1, LL_DMA_CHANNEL_2);
         /* Clear TX in progress flag */
         extern volatile bool tx_in_progress;
         tx_in_progress = false;
     }
     
     /* Check transfer-error interrupt */
     if (LL_DMA_IsActiveFlag_TE2(DMA1)) {
         LL_DMA_ClearFlag_TE2(DMA1);
         /* Stop DMA transfer */
         LL_DMA_DisableChannel(DMA1, LL_DMA_CHANNEL_2);
     }
 }



 // 中断服务函数 
 void FDCAN1_IT0_IRQHandler(void) 
 { 
  HAL_FDCAN_IRQHandler(&hfdcan1);
 }
 void FDCAN1_IT1_IRQHandler(void) 
 { 
    HAL_FDCAN_IRQHandler(&hfdcan1);
 }

/* USER CODE END 1 */

/**
  * @}
  */

/**
  * @}
  */
/******************* (C) COPYRIGHT 2024 STMicroelectronics *****END OF FILE****/
