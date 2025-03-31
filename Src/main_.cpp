
#define __MAIN_CPP__

#include "freertos_vars.h"
#include <interface_can.hpp>

#include "main_.hpp"
#include "low_level.h"

BoardConfig_t board_config;
SystemStats_t system_stats;


float current_meas_period = CURRENT_MEAS_PERIOD;
ODriveCAN::Config_t can_config;
Encoder::Config_t encoder_configs;
Controller::Config_t controller_configs;
Motor::Config_t motor_configs;
OnboardThermistorCurrentLimiter::Config_t fet_thermistor_configs;
OffboardThermistorCurrentLimiter::Config_t motor_thermistor_configs;
Axis::Config_t axis_configs;

Axis* axes;
ODriveCAN *odCAN = nullptr;

// 声明全局变量
 MotorParams motor_params;
 MotorRuntime motor_runtime;



void save_configuration(void) {
    // if (ConfigFormat::safe_store_config(
    //         &board_config,
    //         &can_config,
    //         &encoder_configs,
    //         &controller_configs,
    //         &motor_configs,
    //         &fet_thermistor_configs,
    //         &motor_thermistor_configs,
    //         &axis_configs)) {
    //     printf("saving configuration failed\r\n"); osDelay(5);
    // } else {
    //     user_config_loaded_ = true;
    // }
}

extern "C" int load_configuration(void) {
//     // Try to load configs
//     if (NVM_init() ||
//         ConfigFormat::safe_load_config(
//                 &board_config,
//                 &can_config,
//                 &encoder_configs,
//                 &controller_configs,
//                 &motor_configs,
//                 &fet_thermistor_configs,
//                 &motor_thermistor_configs,
//                 &axis_configs)) {
//         //If loading failed, restore defaults
//         board_config = BoardConfig_t();
//         can_config = ODriveCAN::Config_t();
//         for (size_t i = 0; i < AXIS_COUNT; ++i) {
//             encoder_configs[i] = Encoder::Config_t();
//             controller_configs[i] = Controller::Config_t();
//             motor_configs[i] = Motor::Config_t();
//             fet_thermistor_configs[i] = OnboardThermistorCurrentLimiter::Config_t();
//             motor_thermistor_configs[i] = OffboardThermistorCurrentLimiter::Config_t();
//             axis_configs[i] = Axis::Config_t();
//             // Default step/dir pins are different, so we need to explicitly load them
//          //   Axis::load_default_can_id(i, axis_configs[i]);

//             controller_configs[i].load_encoder_axis = i;
//         }
//     } else {
//         odrv.user_config_loaded_ = true;
//     }
//  //   encoder_configs[0].mode = Encoder::MODE_UART_ABS_KING;
//     return odrv.user_config_loaded_;
}

void erase_configuration(void) {
    // NVM_erase();

    // // FIXME: this reboot is a workaround because we don't want the next save_configuration
    // // to write back the old configuration from RAM to NVM. The proper action would
    // // be to reset the values in RAM to default. However right now that's not
    // // practical because several startup actions depend on the config. The
    // // other problem is that the stack overflows if we reset to default here.
    // NVIC_SystemReset();
}

extern "C" int construct_objects(){
// #if HW_VERSION_MAJOR == 3 && HW_VERSION_MINOR >= 3
//     if (odrv.config_.enable_i2c_instead_of_can) {
//         // Set up the direction GPIO as input
//         GPIO_InitTypeDef GPIO_InitStruct;
//         GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
//         GPIO_InitStruct.Pull = GPIO_PULLUP;

//         GPIO_InitStruct.Pin = I2C_A0_PIN;
//         HAL_GPIO_Init(I2C_A0_PORT, &GPIO_InitStruct);
//         GPIO_InitStruct.Pin = I2C_A1_PIN;
//         HAL_GPIO_Init(I2C_A1_PORT, &GPIO_InitStruct);
//         GPIO_InitStruct.Pin = I2C_A2_PIN;
//         HAL_GPIO_Init(I2C_A2_PORT, &GPIO_InitStruct);

//         osDelay(1);
//         i2c_stats_.addr = (0xD << 3);
//         i2c_stats_.addr |= HAL_GPIO_ReadPin(I2C_A0_PORT, I2C_A0_PIN) != GPIO_PIN_RESET ? 0x1 : 0;
//         i2c_stats_.addr |= HAL_GPIO_ReadPin(I2C_A1_PORT, I2C_A1_PIN) != GPIO_PIN_RESET ? 0x2 : 0;
//         i2c_stats_.addr |= HAL_GPIO_ReadPin(I2C_A2_PORT, I2C_A2_PIN) != GPIO_PIN_RESET ? 0x4 : 0;
//         MX_I2C1_Init(i2c_stats_.addr);
//     } else
// #endif
//         MX_CAN1_Init();

//     HAL_UART_DeInit(&huart4);
//     huart4.Init.BaudRate = odrv.config_.uart_baudrate;
//     HAL_UART_Init(&huart4);

//     // Init general user ADC on some GPIOs.
//     GPIO_InitTypeDef GPIO_InitStruct;
//     GPIO_InitStruct.Mode = GPIO_MODE_ANALOG;
//     GPIO_InitStruct.Pull = GPIO_NOPULL;
//     GPIO_InitStruct.Pin = GPIO_1_Pin;
//     HAL_GPIO_Init(GPIO_1_GPIO_Port, &GPIO_InitStruct);
//     GPIO_InitStruct.Pin = GPIO_2_Pin;
//     HAL_GPIO_Init(GPIO_2_GPIO_Port, &GPIO_InitStruct);
//     GPIO_InitStruct.Pin = GPIO_3_Pin;
//     HAL_GPIO_Init(GPIO_3_GPIO_Port, &GPIO_InitStruct);
//     GPIO_InitStruct.Pin = GPIO_4_Pin;
//     HAL_GPIO_Init(GPIO_4_GPIO_Port, &GPIO_InitStruct);
// #if HW_VERSION_MAJOR == 3 && HW_VERSION_MINOR >= 5
//     GPIO_InitStruct.Pin = GPIO_5_Pin;
//     HAL_GPIO_Init(GPIO_5_GPIO_Port, &GPIO_InitStruct);
// #endif

//     // Construct all objects.
//     odCAN = new ODriveCAN(can_config, &hcan1);
//     for (size_t i = 0; i < AXIS_COUNT; ++i) {
//         Encoder *encoder = new Encoder(hw_configs[i].encoder_config,
//                                        encoder_configs[i], motor_configs[i]);
//         Controller *controller = new Controller(controller_configs[i]);

//         OnboardThermistorCurrentLimiter *fet_thermistor = new OnboardThermistorCurrentLimiter(hw_configs[i].thermistor_config,
//                                                                                               fet_thermistor_configs[i]);
//         OffboardThermistorCurrentLimiter *motor_thermistor = new OffboardThermistorCurrentLimiter(motor_thermistor_configs[i]);

//         Motor *motor = new Motor(hw_configs[i].motor_config,
//                                  hw_configs[i].gate_driver_config,
//                                  motor_configs[i]);
//         axes[i] = new Axis(i, hw_configs[i].axis_config, axis_configs[i],
//                 *encoder, *controller, *fet_thermistor,
//                 *motor_thermistor, *motor);

//         controller_configs[i].parent = controller;
//         encoder_configs[i].parent = encoder;
//         motor_thermistor_configs[i].parent = motor_thermistor;
//         motor_configs[i].parent = motor;
//         axis_configs[i].parent = axes[i];
//     }
//     return 0;
}

extern "C" {
int odrive_main(void);
void vApplicationStackOverflowHook(xTaskHandle *pxTask, signed portCHAR *pcTaskName) {

        safety_critical_disarm_motor_pwm(axes->motor_);

        safety_critical_disarm_brake_resistor();
    for (;;); // TODO: safe action
}
void vApplicationIdleHook(void) {
    if (system_stats.fully_booted) {
        // system_stats.uptime = xTaskGetTickCount();
        // system_stats.min_heap_space = xPortGetMinimumEverFreeHeapSize();
        // system_stats.min_stack_space_comms = uxTaskGetStackHighWaterMark(comm_thread) * sizeof(StackType_t);
        // system_stats.min_stack_space_axis0 = uxTaskGetStackHighWaterMark(axes[0]->thread_id_) * sizeof(StackType_t);
        // system_stats.min_stack_space_uart = uxTaskGetStackHighWaterMark(uart_thread) * sizeof(StackType_t);
        // system_stats.min_stack_space_startup = uxTaskGetStackHighWaterMark(defaultTaskHandle) * sizeof(StackType_t);
        // system_stats.min_stack_space_can = uxTaskGetStackHighWaterMark(odCAN->thread_id_) * sizeof(StackType_t);

        // // Actual usage, in bytes, so we don't have to math
        // system_stats.stack_usage_axis0 = axes[0]->stack_size_ - system_stats_.min_stack_space_axis0;
        // system_stats.stack_usage_comms = stack_size_comm_thread - system_stats_.min_stack_space_comms;
        // system_stats.stack_usage_uart = stack_size_uart_thread - system_stats_.min_stack_space_uart;
        // system_stats.stack_usage_startup = stack_size_default_task - system_stats_.min_stack_space_startup;
        // system_stats.stack_usage_can = odCAN->stack_size_ - system_stats_.min_stack_space_can;
        for (ThermistorCurrentLimiter* thermistor : axes->thermistors_) {
            thermistor->update();
        }
       
       axes->checks_ok_ = axes->do_checks();
       

    }
}
}

int odrive_main(void) {
    // Start ADC for temperature measurements and user measurements
    start_general_purpose_adc();

    // TODO: make dynamically reconfigurable
#if HW_VERSION_MAJOR == 3 && HW_VERSION_MINOR >= 3
    if (odrv.config_.enable_uart) {
        SetGPIO12toUART();
    }
#endif
    //osDelay(100);
    // Init communications (this requires the axis objects to be constructed)
    // Start pwm-in compare modules
    // must happen after communication is initialized
    pwm_in_init();

    // Set up the CS pins for absolute encoders

    if(axes->encoder_.config_.mode & Encoder::MODE_FLAG_ABS){
        axes->encoder_.abs_spi_cs_pin_init();
    }


    // Setup motors (DRV8301 SPI transactions here)
   // for(auto& axis : axes){
    axes->motor_.setup();
   // }

    // Setup encoders (Starts encoder SPI transactions)

    axes->encoder_.setup();


    // Setup anything remaining in each axis
    axes->setup();

    // Start PWM and enable adc interrupts/callbacks
    start_adc_pwm();
    // This delay serves two purposes:
    //  - Let the current sense calibration converge (the current
    //    sense interrupts are firing in background by now)
    //  - Allow a user to interrupt the code, e.g. by flashing a new code,
    //    before it does anything crazy
    // TODO make timing a function of calibration filter tau
    osDelay(1500);

    // Start state machine threads. Each thread will go through various calibration
    // procedures and then run the actual controller loops.
    // TODO: generalize for AXIS_COUNT != 2
    for (size_t i = 0; i < 1; ++i) {
        axes->start_thread();
    }

    start_analog_thread();

    system_stats.fully_booted = true;
    return 0;
}
