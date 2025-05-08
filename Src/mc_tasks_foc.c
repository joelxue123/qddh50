
/**
  ******************************************************************************
  * @file    mc_tasks_foc.c
  * @author  Motor Control SDK Team, ST Microelectronics
  * @brief   This file implements tasks definition
  *
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
  */

/* Includes ------------------------------------------------------------------*/
//cstat -MISRAC2012-Rule-21.1
#include "main.h"
//cstat +MISRAC2012-Rule-21.1
#include "mc_type.h"
#include "mc_math.h"
#include "motorcontrol.h"
#include "regular_conversion_manager.h"
#include "mc_interface.h"
#include "digital_output.h"
#include "pwm_common.h"
#include "mc_tasks.h"
#include "parameters_conversion.h"
#include "mcp_config.h"
#include "mc_app_hooks.h"

/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* USER CODE BEGIN Private define */
/* Private define ------------------------------------------------------------*/

/* USER CODE END Private define */

/* Private variables----------------------------------------------------------*/

static volatile uint16_t hBootCapDelayCounterM1 = ((uint16_t)0);
static volatile uint16_t hStopPermanencyCounterM1 = ((uint16_t)0);

#define M1_CHARGE_BOOT_CAP_TICKS          (((uint16_t)SYS_TICK_FREQUENCY * (uint16_t)10) / 1000U)
#define M1_CHARGE_BOOT_CAP_DUTY_CYCLES ((uint32_t)0.000\
                                      * ((uint32_t)PWM_PERIOD_CYCLES / 2U))
#define M2_CHARGE_BOOT_CAP_TICKS         (((uint16_t)SYS_TICK_FREQUENCY * (uint16_t)10) / 1000U)
#define M2_CHARGE_BOOT_CAP_DUTY_CYCLES ((uint32_t)0\
                                      * ((uint32_t)PWM_PERIOD_CYCLES2 / 2U))

/* USER CODE BEGIN Private Variables */

/* USER CODE END Private Variables */

/* Private functions ---------------------------------------------------------*/
void TSK_MediumFrequencyTaskM1(void);
void FOC_InitAdditionalMethods(uint8_t bMotor);
void FOC_CalcCurrRef(uint8_t bMotor);
void TSK_MF_StopProcessing(uint8_t motor);

MCI_Handle_t *GetMCI(uint8_t bMotor);
bool SCC_DetectBemf( SCC_Handle_t * pHandle );

void TSK_SafetyTask_PWMOFF(uint8_t motor);

/* USER CODE BEGIN Private Functions */

/* USER CODE END Private Functions */
/**
  * @brief  It initializes the whole MC core according to user defined
  *         parameters.
  */
__weak void FOC_Init(void)
{

  /* USER CODE BEGIN MCboot 0 */

  /* USER CODE END MCboot 0 */

    /**********************************************************/
    /*    PWM and current sensing component initialization    */
    /**********************************************************/
    pwmcHandle[M1] = &PWM_Handle_M1._Super;
   // R3_2_Init(&PWM_Handle_M1);

    /* USER CODE BEGIN MCboot 1 */

    /* USER CODE END MCboot 1 */

    /**************************************/
    /*    Start timers synchronously      */
    /**************************************/
    startTimers();

    /******************************************************/
    /*   PID component initialization: speed regulation   */
    /******************************************************/
    PID_HandleInit(&PIDSpeedHandle_M1);

    /******************************************************/
    /*   Main speed sensor component initialization       */
    /******************************************************/
    STO_PLL_Init (&STO_PLL_M1);

    /******************************************************/
    /*   Speed & torque component initialization          */
    /******************************************************/
    STC_Init(pSTC[M1],&PIDSpeedHandle_M1, &STO_PLL_M1._Super);

    /**************************************/
    /*   Rev-up component initialization  */
    /**************************************/
    RUC_Init(&RevUpControlM1, pSTC[M1], &VirtualSpeedSensorM1, &STO_M1, pwmcHandle[M1]);

    /********************************************************/
    /*   PID component initialization: current regulation   */
    /********************************************************/
    PID_HandleInit(&PIDIqHandle_M1);
    PID_HandleInit(&PIDIdHandle_M1);

    /*************************************************/
    /*   Power measurement component initialization  */
    /*************************************************/
    pMPM[M1]->pVBS = &(BusVoltageSensor_M1._Super);
    pMPM[M1]->pFOCVars = &FOCVars[M1];

    /*******************************************************/
    /*   Feed forward component initialization             */
    /*******************************************************/
    FF_Init(pFF[M1],&(BusVoltageSensor_M1._Super),pPIDId[M1],pPIDIq[M1]);

    pREMNG[M1] = &RampExtMngrHFParamsM1;
    REMNG_Init(pREMNG[M1]);

    SCC.pPWMC = pwmcHandle[M1];
    SCC.pVBS = &BusVoltageSensor_M1;
    SCC.pFOCVars = &FOCVars[M1];
    SCC.pMCI = &Mci[M1];
    SCC.pVSS = &VirtualSpeedSensorM1;
    SCC.pCLM = &CircleLimitationM1;
    SCC.pPIDIq = pPIDIq[M1];
    SCC.pPIDId = pPIDId[M1];
    SCC.pRevupCtrl = &RevUpControlM1;
    SCC.pSTO = &STO_PLL_M1;
    SCC.pSTC = &SpeednTorqCtrlM1;
    SCC.pOTT = &OTT;
    SCC.pHT = MC_NULL;
    SCC_Init(&SCC);

    OTT.pSpeedSensor = &STO_PLL_M1._Super;
    OTT.pFOCVars = &FOCVars[M1];
    OTT.pPIDSpeed = &PIDSpeedHandle_M1;
    OTT.pSTC = &SpeednTorqCtrlM1;
    OTT_Init(&OTT);

    FOC_Clear(M1);
    FOCVars[M1].bDriveInput = EXTERNAL;
    FOCVars[M1].Iqdref = STC_GetDefaultIqdref(pSTC[M1]);
    FOCVars[M1].UserIdref = STC_GetDefaultIqdref(pSTC[M1]).d;

    MCI_ExecTorqueRamp(&Mci[M1], STC_GetDefaultIqdref(pSTC[M1]).q, 0);

    /* USER CODE BEGIN MCboot 2 */

    /* USER CODE END MCboot 2 */
}

/**
 * @brief Performs stop process and update the state machine.This function
 *        shall be called only during medium frequency task.
 */
void TSK_MF_StopProcessing(uint8_t motor)
{
    R3_2_SwitchOffPWM(pwmcHandle[motor]);

  SCC_Stop(&SCC);
  OTT_Stop(&OTT);
  FOC_Clear(motor);

  TSK_SetStopPermanencyTimeM1(STOPPERMANENCY_TICKS);
  Mci[motor].State = STOP;
}
int32_t  task_run = 0;
 float  theta_ =0.0f;
 int32_t a_offset = 0;
 int32_t b_offset = 0;
 uint8_t tx[10] = {0xA0,0x03,0x00,0x00,0x00,0x00};
 uint8_t rx[10] = {0};
void test_svm(float mod_q, float mod_d, float *theta, float *ta, float *tb, float *tc) ;
/**
  * @brief Executes medium frequency periodic Motor Control tasks
  *
  * This function performs some of the control duties on Motor 1 according to the
  * present state of its state machine. In particular, duties requiring a periodic
  * execution at a medium frequency rate (such as the speed controller for instance)
  * are executed here.
  */
__weak void TSK_MediumFrequencyTaskM1(void)
{
  /* USER CODE BEGIN MediumFrequencyTask M1 0 */

  /* USER CODE END MediumFrequencyTask M1 0 */

  int16_t wAux = 0;
  bool IsSpeedReliable = 0;//STO_PLL_CalcAvrgMecSpeedUnit(&STO_PLL_M1, &wAux);
  //PQD_CalcElMotorPower(pMPM[M1]);

  if (MCI_GetCurrentFaults(&Mci[M1]) == MC_NO_FAULTS)
  {
    if (1)//MCI_GetOccurredFaults(&Mci[M1]) == MC_NO_FAULTS)
    {
      switch (Mci[M1].State)
      {

        case IDLE:
        {
          if ((MCI_START == Mci[M1].DirectCommand) || (MCI_MEASURE_OFFSETS == Mci[M1].DirectCommand))
          {
              RUC_Clear(&RevUpControlM1, MCI_GetImposedMotorDirection(&Mci[M1]));
            if (0)//pwmcHandle[M1]->offsetCalibStatus == false)
            {
              (void)PWMC_CurrentReadingCalibr(pwmcHandle[M1], CRC_START);
              Mci[M1].State = OFFSET_CALIB;
            }
            else
            {
              a_offset = 0;
              b_offset = 0;
              STSPIN32G4_clearFaults(&HdlSTSPING4);
              STSPIN32G4_wakeup(&HdlSTSPING4, 4);
              vTaskDelay(100);




              LL_ADC_INJ_StartConversion(ADC1);
              LL_ADC_INJ_StartConversion(ADC2);
              LL_ADC_EnableIT_JEOS(ADC1);  // Enable ADC1 injected end of sequence interrupt

              LL_TIM_SetTriggerOutput(TIM1, LL_TIM_TRGO_OC4REF);

              /* Calibration already done. Enables only TIM channels */
              pwmcHandle[M1]->OffCalibrWaitTimeCounter = 1u;

              //(void)PWMC_CurrentReadingCalibr(pwmcHandle[M1], CRC_EXEC);
   //           (void)PWMC_CurrentReadingCalibr(pwmcHandle[M1], CRC_START);
              R3_2_SwitchOnPWM(pwmcHandle[M1]);
      //        R3_2_TurnOnLowSides(pwmcHandle[M1],M1_CHARGE_BOOT_CAP_DUTY_CYCLES);
              TSK_SetChargeBootCapDelayM1(M1_CHARGE_BOOT_CAP_TICKS);

              LL_TIM_SetTriggerOutput(TIM1, LL_TIM_TRGO_OC4REF);


              RUC_Clear(&RevUpControlM1, MCI_GetImposedMotorDirection(&Mci[M1]));
        
              /* PWM Configuration */
              // 1. 配置所有PWM通道
              LL_TIM_CC_EnableChannel(TIM1, LL_TIM_CHANNEL_CH1 | LL_TIM_CHANNEL_CH1N |
                                          LL_TIM_CHANNEL_CH2 | LL_TIM_CHANNEL_CH2N |
                                          LL_TIM_CHANNEL_CH3 | LL_TIM_CHANNEL_CH3N);
              
              // 2. 配置PWM模式
              LL_TIM_OC_SetMode(TIM1, LL_TIM_CHANNEL_CH1, LL_TIM_OCMODE_PWM1);
              LL_TIM_OC_SetMode(TIM1, LL_TIM_CHANNEL_CH2, LL_TIM_OCMODE_PWM1);
              LL_TIM_OC_SetMode(TIM1, LL_TIM_CHANNEL_CH3, LL_TIM_OCMODE_PWM1);
              
              // 3. 设置死区时间
              LL_TIM_OC_SetDeadTime(TIM1, 50); // 根据实际需求调整死区时间
              
              // 4. 使能预加载
              LL_TIM_OC_EnablePreload(TIM1, LL_TIM_CHANNEL_CH1);
              LL_TIM_OC_EnablePreload(TIM1, LL_TIM_CHANNEL_CH2);
              LL_TIM_OC_EnablePreload(TIM1, LL_TIM_CHANNEL_CH3);
              LL_TIM_OC_SetCompareCH1(TIM1, 0);
              LL_TIM_OC_SetCompareCH2(TIM1, 0);
              LL_TIM_OC_SetCompareCH3(TIM1, 0);
              LL_TIM_EnableAllOutputs(TIM1);
              
              

              LL_TIM_SetTriggerOutput(TIM1, LL_TIM_TRGO_OC4REF);

              LL_ADC_EnableIT_JEOS(ADC1);
                            // Check Timer trigger configuration
              LL_TIM_SetTriggerOutput(TIM1, LL_TIM_TRGO_OC4REF);  // 使用TIM1 OC4作为触发源

              // ADC注入组触发配置
              LL_ADC_INJ_SetTriggerSource(ADC1, LL_ADC_INJ_TRIG_EXT_TIM1_TRGO);
              LL_ADC_INJ_SetTriggerEdge(ADC1, LL_ADC_INJ_TRIG_EXT_RISING);

              // 5. 启用 Break 功能
              TIM1->BDTR |= LL_TIM_OSSI_ENABLE;
              LL_TIM_EnableAllOutputs(TIM1);
              STSPIN32G4_clearFaults(&HdlSTSPING4);
              LL_TIM_SetTriggerOutput(TIM1, LL_TIM_TRGO_OC4REF);
              vTaskDelay(1000);
              //a_offset =  0 - FOCVars[M1].Iab .a;
              //b_offset = 0 - FOCVars[M1].Iab .b;

              LL_TIM_SetRepetitionCounter(TIM1, 1);

              axis_loop();
              while(1)
              {
                
                LL_TIM_EnableAllOutputs(TIM1);
                
                LL_TIM_SetTriggerOutput(TIM1, LL_TIM_TRGO_OC4REF);
                vTaskDelay(1000);

                task_run = 1;

      
             //   LL_TIM_DisableAllOutputs(TIM1);
                vTaskDelay(1000);
  

                // LL_TIM_OC_SetCompareCH1(TIM1, 0);
                // LL_TIM_OC_SetCompareCH2(TIM1, 0);
                // LL_TIM_OC_SetCompareCH3(TIM1, 0);
                // vTaskDelay(1);
                // LL_TIM_EnableAllOutputs(TIM1);
   
                

              }
              Mci[M1].State = CHARGE_BOOT_CAP;
            }
            OTT_Clear(&OTT);
          }
          else
          {
            /* Nothing to be done, FW stays in IDLE state */
          }
          break;
        }

        case OFFSET_CALIB:
        {
          if (MCI_STOP == Mci[M1].DirectCommand)
          {
            TSK_MF_StopProcessing(M1);
          }
          else
          {
            if (PWMC_CurrentReadingCalibr(pwmcHandle[M1], CRC_EXEC))
            {
              if (MCI_MEASURE_OFFSETS == Mci[M1].DirectCommand)
              {
                FOC_Clear(M1);
                Mci[M1].DirectCommand = MCI_NO_COMMAND;
                Mci[M1].State = IDLE;
              }
              else
              {
                Mci[M1].State = WAIT_STOP_MOTOR;
              }
            }
            else
            {
              /* Nothing to be done, FW waits for offset calibration to finish */
            }
          }
          break;
        }

        case CHARGE_BOOT_CAP:
        {
          if (MCI_STOP == Mci[M1].DirectCommand)
          {
            TSK_MF_StopProcessing(M1);
          }
          else
          {
            if (TSK_ChargeBootCapDelayHasElapsedM1())
            {
              R3_2_SwitchOffPWM(pwmcHandle[M1]);
              FOCVars[M1].bDriveInput = EXTERNAL;
              STC_SetSpeedSensor( pSTC[M1], &VirtualSpeedSensorM1._Super );

              STO_PLL_Clear(&STO_PLL_M1);
              PWMC_Clear(pwmcHandle[M1]);

              FOC_Clear( M1 );

        SCC_Start(&SCC);
              /* The generic function needs to be called here as the undelying
               * implementation changes in time depending on the Profiler's state
               * machine. Calling the generic function ensures that the correct
               * implementation is invoked */
              PWMC_SwitchOnPWM(pwmcHandle[M1]);
              Mci[M1].State = START;
              PWMC_SwitchOnPWM(pwmcHandle[M1]);
            }
            else
            {
              /* Nothing to be done, FW waits for bootstrap capacitor to charge */
            }
          }
          break;
        }

        case START:
        {
          if (MCI_STOP == Mci[M1].DirectCommand)
          {
            TSK_MF_StopProcessing(M1);
          }
          else
          {
            /* Mechanical speed as imposed by the Virtual Speed Sensor during the Rev Up phase. */
            int16_t hForcedMecSpeedUnit;
            qd_t IqdRef;
            bool ObserverConverged;

            /* Execute the Rev Up procedure */
            if(! RUC_Exec(&RevUpControlM1))
            {
            /* The time allowed for the startup sequence has expired */
              /* However, no error is generated when OPEN LOOP is enabled
               * since then the system does not try to close the loop... */
            }
            else
            {
              /* Execute the torque open loop current start-up ramp:
               * Compute the Iq reference current as configured in the Rev Up sequence */
              IqdRef.q = STC_CalcTorqueReference(pSTC[M1]);
              IqdRef.d = FOCVars[M1].UserIdref;
              /* Iqd reference current used by the High Frequency Loop to generate the PWM output */
              FOCVars[M1].Iqdref = IqdRef;
           }

            (void)VSS_CalcAvrgMecSpeedUnit(&VirtualSpeedSensorM1, &hForcedMecSpeedUnit);

              ObserverConverged = STO_PLL_IsObserverConverged(&STO_PLL_M1, &hForcedMecSpeedUnit);
              STO_SetDirection(&STO_PLL_M1, (int8_t)MCI_GetImposedMotorDirection(&Mci[M1]));

              (void)VSS_SetStartTransition(&VirtualSpeedSensorM1, ObserverConverged);
            if (ObserverConverged)
            {
              qd_t StatorCurrent = MCM_Park(FOCVars[M1].Ialphabeta, SPD_GetElAngle(&STO_PLL_M1._Super));

              /* Start switch over ramp. This ramp will transition from the revup to the closed loop FOC */
              REMNG_Init(pREMNG[M1]);
              (void)REMNG_ExecRamp(pREMNG[M1], FOCVars[M1].Iqdref.q, 0);
              (void)REMNG_ExecRamp(pREMNG[M1], StatorCurrent.q, TRANSITION_DURATION);

              Mci[M1].State = SWITCH_OVER;
            }
          }
          break;
        }

        case SWITCH_OVER:
        {
          if (MCI_STOP == Mci[M1].DirectCommand)
          {
            TSK_MF_StopProcessing(M1);
          }
          else
          {
            bool LoopClosed;
            int16_t hForcedMecSpeedUnit;

              /* Compute the virtual speed and positions of the rotor.
                 The function returns true if the virtual speed is in the reliability range */
              LoopClosed = VSS_CalcAvrgMecSpeedUnit(&VirtualSpeedSensorM1, &hForcedMecSpeedUnit);
              /* Check if the transition ramp has completed. */
              bool tempBool;
              tempBool = VSS_TransitionEnded(&VirtualSpeedSensorM1);
              LoopClosed = LoopClosed || tempBool;

              /* If any of the above conditions is true, the loop is considered closed.
                 The state machine transitions to the RUN state */
              if (true ==  LoopClosed)
              {
#if PID_SPEED_INTEGRAL_INIT_DIV == 0
                PID_SetIntegralTerm(&PIDSpeedHandle_M1, 0);
#else
                PID_SetIntegralTerm(&PIDSpeedHandle_M1,
                                    (((int32_t)FOCVars[M1].Iqdref.q * (int16_t)PID_GetKIDivisor(&PIDSpeedHandle_M1))
                                    / PID_SPEED_INTEGRAL_INIT_DIV));
#endif
                OTT_SR(&OTT);
                /* USER CODE BEGIN MediumFrequencyTask M1 1 */

                /* USER CODE END MediumFrequencyTask M1 1 */
                STC_SetSpeedSensor(pSTC[M1], &STO_PLL_M1._Super); /* Observer has converged */
                FOC_InitAdditionalMethods(M1);
                FOC_CalcCurrRef(M1);
                STC_ForceSpeedReferenceToCurrentSpeed(pSTC[M1]); /* Init the reference speed to current speed */
                MCI_ExecBufferedCommands(&Mci[M1]); /* Exec the speed ramp after changing of the speed sensor */
                Mci[M1].State = RUN;
              }
          }
          break;
        }

        case RUN:
        {
          if (MCI_STOP == Mci[M1].DirectCommand)
          {
            TSK_MF_StopProcessing(M1);
          }
          else
          {
            /* USER CODE BEGIN MediumFrequencyTask M1 2 */

            /* USER CODE END MediumFrequencyTask M1 2 */

            MCI_ExecBufferedCommands(&Mci[M1]);

              FOC_CalcCurrRef(M1);
              if(!IsSpeedReliable)
              {
                MCI_FaultProcessing(&Mci[M1], MC_SPEED_FDBK, 0);
              }
              else
              {
                /* Nothing to do */
              }
            OTT_MF(&OTT);
          }
          break;
        }

        case STOP:
        {
          if (TSK_StopPermanencyTimeHasElapsedM1())
          {

            STC_SetSpeedSensor(pSTC[M1], &VirtualSpeedSensorM1._Super);    /* Sensor-less */
            VSS_Clear(&VirtualSpeedSensorM1); /* Reset measured speed in IDLE */
            /* USER CODE BEGIN MediumFrequencyTask M1 5 */

            /* USER CODE END MediumFrequencyTask M1 5 */
            Mci[M1].DirectCommand = MCI_NO_COMMAND;
            Mci[M1].State = IDLE;
          }
          else
          {
            /* Nothing to do, FW waits for to stop */
          }
          break;
        }

        case FAULT_OVER:
        {
          if (MCI_ACK_FAULTS == Mci[M1].DirectCommand)
          {
            Mci[M1].DirectCommand = MCI_NO_COMMAND;
            Mci[M1].State = IDLE;
          }
          else
          {
            /* Nothing to do, FW stays in FAULT_OVER state until acknowledgement */
          }
          break;
        }

        case FAULT_NOW:
        {
          Mci[M1].State = FAULT_OVER;
          break;
        }

        case WAIT_STOP_MOTOR:
        {
          if (MCI_STOP == Mci[M1].DirectCommand)
          {
            TSK_MF_StopProcessing(M1);
          }
          else
          {
            if (0 == SCC_DetectBemf(&SCC))
            {
              /* In a sensorless configuration. Initiate the Revup procedure */
              FOCVars[M1].bDriveInput = EXTERNAL;
              STC_SetSpeedSensor(pSTC[M1], &VirtualSpeedSensorM1._Super);
               STO_PLL_Clear(&STO_PLL_M1);
              FOC_Clear(M1);
              SCC_Start(&SCC);
              /* The generic function needs to be called here as the undelying
               * implementation changes in time depending on the Profiler's state
               * machine. Calling the generic function ensures that the correct
               * implementation is invoked */
              PWMC_SwitchOnPWM(pwmcHandle[M1]);
              Mci[M1].State = START;
            }
            else
            {
              /* Nothing to do */
            }
          }
          break;
        }

        default:
          break;
       }
    }
    else
    {
      Mci[M1].State = FAULT_OVER;
    }
  }
  else
  {
    Mci[M1].State = FAULT_NOW;
  }
  SCC_MF(&SCC);
  /* USER CODE BEGIN MediumFrequencyTask M1 6 */

  /* USER CODE END MediumFrequencyTask M1 6 */
}

/**
  * @brief  It re-initializes the current and voltage variables. Moreover
  *         it clears qd currents PI controllers, voltage sensor and SpeednTorque
  *         controller. It must be called before each motor restart.
  *         It does not clear speed sensor.
  * @param  bMotor related motor it can be M1 or M2.
  */
__weak void FOC_Clear(uint8_t bMotor)
{
  /* USER CODE BEGIN FOC_Clear 0 */

  /* USER CODE END FOC_Clear 0 */

  ab_t NULL_ab = {((int16_t)0), ((int16_t)0)};
  qd_t NULL_qd = {((int16_t)0), ((int16_t)0)};
  alphabeta_t NULL_alphabeta = {((int16_t)0), ((int16_t)0)};

  FOCVars[bMotor].Iab = NULL_ab;
  FOCVars[bMotor].Ialphabeta = NULL_alphabeta;
  FOCVars[bMotor].Iqd = NULL_qd;
    FOCVars[bMotor].Iqdref = NULL_qd;
  FOCVars[bMotor].hTeref = (int16_t)0;
  FOCVars[bMotor].Vqd = NULL_qd;
  FOCVars[bMotor].Valphabeta = NULL_alphabeta;
  FOCVars[bMotor].hElAngle = (int16_t)0;

  PID_SetIntegralTerm(pPIDIq[bMotor], ((int32_t)0));
  PID_SetIntegralTerm(pPIDId[bMotor], ((int32_t)0));

  STC_Clear(pSTC[bMotor]);

  PWMC_SwitchOffPWM(pwmcHandle[bMotor]);

  if (NULL == pFF[bMotor])
  {
    /* Nothing to do */
  }
  else
  {
    FF_Clear(pFF[bMotor]);
  }

  MC_Perf_Clear(&PerfTraces,bMotor);
  /* USER CODE BEGIN FOC_Clear 1 */

  /* USER CODE END FOC_Clear 1 */
}

/**
  * @brief  Use this method to initialize additional methods (if any) in
  *         START_TO_RUN state.
  * @param  bMotor related motor it can be M1 or M2.
  */
__weak void FOC_InitAdditionalMethods(uint8_t bMotor) //cstat !RED-func-no-effect
{
    if (M_NONE == bMotor)
    {
      /* Nothing to do */
    }
    else
    {
      if (NULL == pFF[bMotor])
      {
        /* Nothing to do */
      }
      else
      {
        FF_InitFOCAdditionalMethods(pFF[bMotor]);
      }
  /* USER CODE BEGIN FOC_InitAdditionalMethods 0 */

  /* USER CODE END FOC_InitAdditionalMethods 0 */
    }
}

/**
  * @brief  It computes the new values of Iqdref (current references on qd
  *         reference frame) based on the required electrical torque information
  *         provided by oTSC object (internally clocked).
  *         If implemented in the derived class it executes flux weakening and/or
  *         MTPA algorithm(s). It must be called with the periodicity specified
  *         in oTSC parameters.
  * @param  bMotor related motor it can be M1 or M2.
  */
__weak void FOC_CalcCurrRef(uint8_t bMotor)
{
  qd_t IqdTmp;

  /* Enter critical section */
  /* Disable interrupts to avoid any interruption during Iqd reference latching */
  /* to avoid MF task writing them while HF task reading them */
  __disable_irq();
  IqdTmp = FOCVars[bMotor].Iqdref;

  /* Exit critical section */
  __enable_irq();

  /* USER CODE BEGIN FOC_CalcCurrRef 0 */

  /* USER CODE END FOC_CalcCurrRef 0 */
  if (INTERNAL == FOCVars[bMotor].bDriveInput)
  {
    FOCVars[bMotor].hTeref = STC_CalcTorqueReference(pSTC[bMotor]);
    IqdTmp.q = FOCVars[bMotor].hTeref;

    if (NULL == pFF[bMotor])
    {
      /* Nothing to do */
    }
    else
    {
      FF_VqdffComputation(pFF[bMotor], IqdTmp, pSTC[bMotor]);
    }
  }
  else
  {
    /* Nothing to do */
  }

  /* Enter critical section */
  /* Disable interrupts to avoid any interruption during Iqd reference restoring */
  __disable_irq();
  FOCVars[bMotor].Iqdref = IqdTmp;

  /* Exit critical section */
  __enable_irq();
  /* USER CODE BEGIN FOC_CalcCurrRef 1 */

  /* USER CODE END FOC_CalcCurrRef 1 */
}


#if defined (CCMRAM)
#if defined (__ICCARM__)
#pragma location = ".ccmram"
#elif defined (__CC_ARM) || defined(__GNUC__)
__attribute__((section (".ccmram")))
#endif
#endif


extern void clark_park(float *iq, float *id, float theta, float ia, float ib);
/**
  * @brief  Motor control profiler HF task
  * @param  None
  * @retval uint8_t It return always 0.
  */
__weak uint8_t FOC_HighFrequencyTask(uint8_t bMotorNbr)
{
  float ta =0;
  float tb =0;
  float tc =0;
  
  float mod_q = 0.05f;
  float mod_d = 0;
  ab_t Iab;
  float a = 0;
  float b = 0;
  float iq = 0;
  float id = 0;



  if (SWITCH_OVER == Mci[M1].State)
  {
    // if (!REMNG_RampCompleted(pREMNG[M1]))
    // {
    //   FOCVars[M1].Iqdref.q = (int16_t)REMNG_Calc(pREMNG[M1]);
    // }
    // else
    // {
    //   /* Nothing to do */
    // }
  }
  else
  {
    /* Nothing to do */
  }
  //RCM_ReadOngoingConv();
  //RCM_ExecNextConv();
  /* The generic function needs to be called here as the undelying
   * implementation changes in time depending on the Profiler's state
   * machine. Calling the generic function ensures that the correct
   * implementation is invoked */

  //PWMC_GetPhaseCurrents(pwmcHandle[M1], &Iab);

// ADC1 - Phase U current
// LL_ADC_INJ_SetSequencerRanks(ADC1, LL_ADC_INJ_RANK_1, LL_ADC_CHANNEL_3); // OPAMP1 output

// // ADC2 - Phase V current  
// LL_ADC_INJ_SetSequencerRanks(ADC2, LL_ADC_INJ_RANK_1, LL_ADC_CHANNEL_3); // OPAMP2 output


LL_GPIO_ResetOutputPin(SPI1_Pin_CS_Port, SPI1_Pin_CS); // 设置 CS 初始为低电平（激活）
LL_GPIO_ResetOutputPin(SPI3_Pin_CS_Port, SPI3_Pin_CS); // 设置 CS 初始为低电平（激活）


SPI3_TransferDMA(tx,rx,6);
SPI1->DR =0;
#if 0
if(task_run == 1)
{
                  //STSPIN32G4_clearFaults(&HdlSTSPING4);
                  test_svm(mod_q, mod_d, &theta_, &ta, &tb, &tc);
                  /* Turn on the three low side switches */
                  LL_TIM_OC_SetCompareCH1(TIM1, ta*TIM_1_8_PERIOD_CLOCKS);
                  LL_TIM_OC_SetCompareCH2(TIM1, tb*TIM_1_8_PERIOD_CLOCKS);
                  LL_TIM_OC_SetCompareCH3(TIM1, tc*TIM_1_8_PERIOD_CLOCKS);
                  TIM1->BDTR |= LL_TIM_OSSI_ENABLE;
                  LL_TIM_EnableAllOutputs(TIM1);
  
                  theta_ = theta_ + 0.00001f;

 }
LL_TIM_SetTriggerOutput(TIM1, LL_TIM_TRGO_OC4REF);  // 使用TIM1 OC4作为触发源

#endif

 // SCC_SetPhaseVoltage(&SCC);

  return (0); /* Single motor only */
}

/* USER CODE BEGIN mc_task 0 */

/* USER CODE END mc_task 0 */

/******************* (C) COPYRIGHT 2024 STMicroelectronics *****END OF FILE****/

