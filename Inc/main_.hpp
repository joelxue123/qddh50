#ifndef __MAIN_HPP
#define __MAIN_HPP

#include <array>
#include "axis.hpp"
#include "interface_can.hpp"  // Add this for ODriveCAN definition
#include "thermistor.hpp"

#include "encoder.hpp"
#include "controller.hpp"
#include "motor.hpp"
// Forward declarations


#define HW_VERSION_VOLTAGE 56


// @brief general user configurable board configuration
struct BoardConfig_t {
    int16_t magic = 0xA5A5;
    int16_t hw_version = 0x0001;
    bool enable_brake_resistor = false;
    bool enable_uart = true;
    bool enable_i2c_instead_of_can = false;
    bool enable_ascii_protocol_on_usb = true;
    float max_regen_current = 0.0f;
  #if HW_VERSION_MAJOR == 3 && HW_VERSION_MINOR >= 5 && HW_VERSION_VOLTAGE >= 48
    float brake_resistance = 2.0f;     // [ohm]
  #else
    float brake_resistance = 0.47f;     // [ohm]
  #endif
    float dc_bus_undervoltage_trip_level = 8.0f;                        //<! [V] minimum voltage below which the motor stops operating
    float dc_bus_overvoltage_trip_level = 1.2f * HW_VERSION_VOLTAGE;   //<! [V] maximum voltage above which the motor stops operating.
                                                                        //<! This protects against cases in which the power supply fails to dissipate
                                                                        //<! the brake power if the brake resistor is disabled.
                                                                        //<! The default is 26V for the 24V board version and 52V for the 48V board version.
  
    /**
     * If enabled, if the measured DC voltage exceeds `dc_bus_overvoltage_ramp_start`,
     * the ODrive will sink more power than usual into the the brake resistor
     * in an attempt to bring the voltage down again.
     * 
     * The brake duty cycle is increased by the following amount:
     *  vbus_voltage == dc_bus_overvoltage_ramp_start  =>  brake_duty_cycle += 0%
     *  vbus_voltage == dc_bus_overvoltage_ramp_end  =>  brake_duty_cycle += 100%
     * 
     * Remarks:
     *  - This feature is active even when all motors are disarmed.
     *  - This feature is disabled if `brake_resistance` is non-positive.
     */
    bool enable_dc_bus_overvoltage_ramp = false;
    float dc_bus_overvoltage_ramp_start = 1.07f * HW_VERSION_VOLTAGE; //!< See `enable_dc_bus_overvoltage_ramp`.
                                                                      //!< Do not set this lower than your usual vbus_voltage,
                                                                      //!< unless you like fried brake resistors.
    float dc_bus_overvoltage_ramp_end = 1.07f * HW_VERSION_VOLTAGE; //!< See `enable_dc_bus_overvoltage_ramp`.
                                                                    //!< Must be larger than `dc_bus_overvoltage_ramp_start`,
                                                                    //!< otherwise the ramp feature is disabled.
  
    float dc_max_positive_current = INFINITY; // Max current [A] the power supply can source
    float dc_max_negative_current = -0.000001f; // Max current [A] the power supply can sink. You most likely want a non-positive value here. Set to -INFINITY to disable.
  
  
    /**
     * Defines the baudrate used on the UART interface.
     * Some baudrates will have a small timing error due to hardware limitations.
     * 
     * Here's an (incomplete) list of baudrates for ODrive v3.x:
     * 
     *   Configured  | Actual        | Error [%]
     *  -------------|---------------|-----------
     *   1.2 KBps    | 1.2 KBps      | 0
     *   2.4 KBps    | 2.4 KBps      | 0
     *   9.6 KBps    | 9.6 KBps      | 0
     *   19.2 KBps   | 19.195 KBps   | 0.02
     *   38.4 KBps   | 38.391 KBps   | 0.02
     *   57.6 KBps   | 57.613 KBps   | 0.02
     *   115.2 KBps  | 115.068 KBps  | 0.11
     *   230.4 KBps  | 230.769 KBps  | 0.16
     *   460.8 KBps  | 461.538 KBps  | 0.16
     *   921.6 KBps  | 913.043 KBps  | 0.93
     *   1.792 MBps  | 1.826 MBps    | 1.9
     *   1.8432 MBps | 1.826 MBps    | 0.93
     * 
     * For more information refer to Section 30.3.4 and Table 142 (the column with f_PCLK = 42 MHz) in the STM datasheet:
     * https://www.st.com/content/ccc/resource/technical/document/reference_manual/3d/6d/5a/66/b4/99/40/d4/DM00031020.pdf/files/DM00031020.pdf/jcr:content/translations/en.DM00031020.pdf
     */
    uint32_t uart_baudrate = 115200;
  };
  
  typedef struct {
    bool fully_booted;
    uint32_t uptime; // [ms]
    uint32_t min_heap_space; // FreeRTOS heap [Bytes]
    uint32_t min_stack_space_axis0; // minimum remaining space since startup [Bytes]
    uint32_t min_stack_space_axis1;
    uint32_t min_stack_space_comms;
    uint32_t min_stack_space_usb;
    uint32_t min_stack_space_uart;
    uint32_t min_stack_space_usb_irq;
    uint32_t min_stack_space_startup;
    uint32_t min_stack_space_can;

    uint32_t stack_usage_axis0;
    uint32_t stack_usage_axis1;
    uint32_t stack_usage_comms;
    uint32_t stack_usage_usb;
    uint32_t stack_usage_uart;
    uint32_t stack_usage_usb_irq;
    uint32_t stack_usage_startup;
    uint32_t stack_usage_can;


} SystemStats_t;

#define FACTORY_RESET_MAGIC  0x55AA  
#define MOTOR_PARAMS_MAGIC        0xAA55      // 用于验证参数有效性
#define MIN_PARAMS_VERSION        0x0100
#define MOTOR_PARAMS_VERSION      0x0100      // 版本号 v1.0

// 默认参数值 (Q15格式)
#define DEFAULT_POS_KP    16384   // 0.5 in Q15 format
#define DEFAULT_POS_KD    3276    // 0.1 in Q15 format
#define DEFAULT_VEL_KP    16384   // 0.5 in Q15 format
#define DEFAULT_VEL_KI    3276    // 0.1 in Q15 format
#define DEFAULT_CUR_KP    16384   // 0.5 in Q15 format
#define DEFAULT_CUR_KI    3276    // 0.1 in Q15 format


typedef struct {
    uint16_t magic;           
    uint16_t version;          // 固件版本号
    uint16_t motor_id;         // 电机ID
    
    // Physical parameters
    int16_t inductance;        // 电感值 (Q15格式)
    int16_t resistance;        // 电阻值 (Q15格式)
    
    // Encoder parameters - 主编码器
    uint16_t main_encoder_type;    // 主编码器类型 (0:增量式 1:绝对式)
    uint16_t main_encoder_lines;   // 主编码器线数
    int16_t main_encoder_offset;   // 主编码器零点偏置
    uint16_t main_encoder_dir;     // 主编码器方向 (0:正向 1:反向)
    
    // Encoder parameters - 副编码器
    uint16_t sub_encoder_type;     // 副编码器类型 (0:增量式 1:绝对式)
    uint16_t sub_encoder_lines;    // 副编码器线数
    int16_t sub_encoder_offset;    // 副编码器零点偏置
    uint16_t sub_encoder_dir;      // 副编码器方向 (0:正向 1:反向)
    
    // PID控制参数 (Q15格式)
    int16_t pos_kp;           // 位置环KP
    int16_t pos_kd;           // 位置环KD
    int16_t vel_kp;           // 速度环KP 
    int16_t vel_ki;           // 速度环KI
    int16_t cur_kp;           // 电流环KP
    int16_t cur_ki;           // 电流环KI
    
    // 限制参数
    int16_t max_current;      // 最大电流限制
    int16_t max_speed;        // 最大速度限制
    int16_t max_position;     // 最大位置限制
    int16_t min_position;     // 最小位置限制

    // 电机控制参数
    uint16_t ctrl_mode;        // 控制模式 (0:开环 1:电流 2:速度 3:位置)
    
} MotorParams;

// 电机运行时变量结构体 - 使用Q15定点数格式
typedef struct {
    // 位置相关
    volatile int16_t input_pos;      // 目标位置
    volatile int16_t profile_pos;     // 规划位置
    volatile int16_t des_pos;        // 期望位置 (Q15格式)
    volatile int16_t current_pos;     // 当前位置
    
    // 速度相关
    volatile int16_t input_vel;      // 目标速度
    volatile int16_t profile_vel;     // 规划速度
    volatile int16_t des_vel;       // 期望速度 (Q15格式)
    volatile int16_t current_vel;     // 当前速度
    
    // 电流相关
    volatile int16_t input_cur;      // 目标电流
    volatile int16_t profile_cur;     // 规划电流
    volatile int16_t des_cur;        // 期望电流 (Q15格式)
    volatile int16_t current_cur;     // 实际电流
    
    // 状态标志
    volatile uint16_t is_enabled;      // 使能状态
    volatile uint16_t is_running;      // 运行状态
	volatile int16_t temperatrue; 
    volatile uint16_t error_code;      // 错误代码
    
    // Scope channels


} MotorRuntime;






extern Axis axis;

class ODriveCAN;


#define AXIS_COUNT 1
// Global variables declarations
extern float current_meas_period;
extern ODriveCAN::Config_t can_config;
extern Encoder::Config_t encoder_configs;
extern Controller::Config_t controller_configs;
extern Motor::Config_t motor_configs;
extern OnboardThermistorCurrentLimiter::Config_t fet_thermistor_configs;
extern OffboardThermistorCurrentLimiter::Config_t motor_thermistor_configs;
extern Axis::Config_t axis_configs;

extern Axis* axes;
extern ODriveCAN* odCAN;
extern BoardConfig_t board_config;
#include "nvm_config.hpp"

// Type definitions
typedef Config<
    BoardConfig_t,
    ODriveCAN::Config_t,
    Encoder::Config_t,
    Controller::Config_t,
    Motor::Config_t,
    OnboardThermistorCurrentLimiter::Config_t,
    OffboardThermistorCurrentLimiter::Config_t,
    Axis::Config_t
> ConfigFormat;

void save_configuration(void);

// Function declarations
#ifdef __cplusplus
extern "C" {
#endif



int load_configuration(void);
int construct_objects(void);


#ifdef __cplusplus
}
#endif

#endif // __MAIN_HPP