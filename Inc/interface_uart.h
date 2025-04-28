#ifndef INTERFACE_UART_H
#define INTERFACE_UART_H




#ifdef __cplusplus

extern "C" {
#endif
/* STM32 Headers */
#include "stm32g4xx.h"
#include "stm32g4xx_hal.h"
#include "stm32g4xx_ll_dma.h"
#include "stm32g4xx_ll_usart.h"
#include "stm32g4xx_ll_gpio.h"

/* C Standard Headers */
#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>
#include <cmsis_os.h>


#define UART_TX_BUFFER_SIZE 96
#define UART_RX_BUFFER_SIZE 96

// Communication frame format
#define FRAME_HEADER1    0xAA
#define FRAME_HEADER2    0x55

#define FRAME_CMD_SAVE   0x03  // Save all parameters
#define FRAME_CMD_START  0x04  // Start motor
#define FRAME_CMD_STOP   0x05  // Stop motor
#define FRAME_CMD_SET_POS    0x06  // Set position
#define FRAME_CMD_SET_VEL    0x07  // Set velocity
#define FRAME_CMD_SET_CUR    0x08  // Set current
#define FRAME_CMD_SET_PWM    0x09  // Set PWM duty cycle
#define FRAME_CMD_SET_MODE   0x0A  // Set control mode
#define FRAME_CMD_RESET      0x0B  // Reset to factory defaults

#define SET_AXIS_STATE      0x20
//固定高速的通信帧格式
#define FRAME_CMD_SCOPE      0x80  // 固定的示波器数据命令

//修改成canopen的命令
#define FRAME_CMD_SDO_READ     0x82  // Read object dictionary entry (SDO)
#define FRAME_CMD_SDO_WRITE    0x83  // Write object dictionary entry (SDO)
#define FRAME_CMD_PDO_READ     0x84  // Read PDO mapped value



typedef enum {
    OSCILLOSCOPE_CMD_START = 0x01,
    OSCILLOSCOPE_CMD_READ = 0x02,
    OSCILLOSCOPE_CMD_CONFIG_CHANNEL = 0x04,
}oscilloscope_cmd_t;

#define OSCILLOSCOPE_CMD  0x90  // Start capture













extern osThreadId uart_thread;
extern const uint32_t stack_size_uart_thread;

void start_uart_server(void);
void copy_data_to_uart_buffer(const uint8_t *data, size_t length);

/* Function Prototypes */
void VESC_UART_Init(void);
void VESC_UART_IRQHandler(void);

#ifdef __cplusplus
}
#endif

#endif // __INTERFACE_UART_HPP
