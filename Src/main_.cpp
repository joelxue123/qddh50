
#define __MAIN_CPP__

#include "freertos_vars.h"
#include "interface_can.hpp"

#include "main_.hpp"
#include "low_level.h"
#include "flash_storage.hpp"
#include "can.h"



extern FlashStorage_t flash_storage;

BoardConfig_t board_config;



const float fet_thermistor_poly_coeffs[] =
    {257.61f, -324.08f,  258.34f, -23.12f};  //3300 Ohm
const float fet_thermistor_poly_coeffs2[] =
    {432.91f,-634.23f, 383.988f, -62.37f};  //100000 Ohm
const size_t fet_thermistor_num_coeffs = sizeof(fet_thermistor_poly_coeffs)/sizeof(fet_thermistor_poly_coeffs[1]);


float current_meas_period = CURRENT_MEAS_PERIOD;
ODriveCAN::Config_t can_config;




Axis::Config_t axis_configs;

EncoderHardwareConfig_t encoder_hardware_config;
MotorHardwareConfig_t motor_hardware_config ={
    .timer = TIM1,

};
ThermistorHardwareConfig_t thermistor_hardware_config = {
    .coeffs = fet_thermistor_poly_coeffs,
    .aux_coefficients = fet_thermistor_poly_coeffs2,
    .num_coeffs = 4,
};


 Encoder encoder(encoder_hardware_config,flash_storage.encoder_configs);
 Controller controller(flash_storage.controller_configs);

 OnboardThermistorCurrentLimiter fet_thermistor(thermistor_hardware_config,flash_storage.fet_thermistor_configs);
 OffboardThermistorCurrentLimiter motor_thermistor(flash_storage.motor_thermistor_configs);

 Motor motor(motor_hardware_config,flash_storage.motor_configs);

// 初始化 Axis 对象
 Axis axis(0, flash_storage.axis_configs, encoder, controller, 
                    fet_thermistor, motor_thermistor, motor);


ODriveCAN odCAN(can_config, &hfdcan1);


// Edit these to suit your capture needs
Oscilloscope oscilloscope_{
    &motor.current_control_.q_id_measured_, // trigger_src
    100, // trigger_threshold
    &motor.current_control_.q_id_measured_,// data_src TODO: change data type
};


extern "C" {
int odrive_main(void);
void vApplicationStackOverflowHook(xTaskHandle *pxTask, signed portCHAR *pcTaskName) {

        safety_critical_disarm_motor_pwm(axis.motor_);

        safety_critical_disarm_brake_resistor();
    for (;;); // TODO: safe action
}
void vApplicationIdleHook(void) {
    if (system_stats_.fully_booted) {
        system_stats_.uptime = xTaskGetTickCount();
        system_stats_.min_heap_space = xPortGetMinimumEverFreeHeapSize();
        system_stats_.min_stack_space_mediumFrequencyHandle = uxTaskGetStackHighWaterMark(mediumFrequencyHandle);
        system_stats_.min_stack_space_safetyHandle = uxTaskGetStackHighWaterMark(safetyHandle) ;
        system_stats_.min_stack_space_uart_thread = uxTaskGetStackHighWaterMark(uart_thread) ;
        system_stats_.min_stack_space_analog_thread = uxTaskGetStackHighWaterMark(analog_thread_) ;
        system_stats_.min_stack_space_can_thread = uxTaskGetStackHighWaterMark(odCAN.thread_id_);

        // Actual usage, in bytes, so we don't have to math
        system_stats_.stack_usage_mediumFrequencyHandle = mediumFrequencyHandle_stack_size- system_stats_.min_stack_space_mediumFrequencyHandle;
        system_stats_.stack_usage_safetyHandle = 128 - system_stats_.min_stack_space_safetyHandle;
        system_stats_.stack_usage_uart_thread = 256 - system_stats_.min_stack_space_uart_thread;
        system_stats_.stack_usage_analog_thread = 128 - system_stats_.min_stack_space_analog_thread;
        system_stats_.stack_usage_can = 256 - system_stats_.min_stack_space_can_thread;
 

    }
}
}

int odrive_main(void) {
    start_adc_pwm();
    motor.setup();
    odCAN.start_can_server();
    system_stats_.fully_booted = true;
    
    // Start ADC for temperature measurements and user measurements
   // start_general_purpose_adc();

    return 0;

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

    if(axis.encoder_.config_.mode & Encoder::MODE_FLAG_ABS){
        axis.encoder_.abs_spi_cs_pin_init();
    }


    // Setup motors (DRV8301 SPI transactions here)
   // for(auto& axis : axes){
    axis.motor_.setup();
   // }

    // Setup encoders (Starts encoder SPI transactions)

    axis.encoder_.setup();


    // Setup anything remaining in each axis
    axis.setup();

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
        axis.start_thread();
    }

    start_analog_thread();

    
    return 0;
}
