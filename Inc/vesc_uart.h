#ifndef VESC_UART_H
#define VESC_UART_H

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

/* Device Specific */
#define USART1                      ((USART_TypeDef *) USART1_BASE)
#define DMA1                        ((DMA_TypeDef *) DMA1_BASE)

#define RX_BUFFER_SIZE 64
/* Time Type */
typedef uint_fast32_t tick_t;


typedef struct {
    uint8_t   dma_buffer[RX_BUFFER_SIZE];   // DMA receive buffer
    size_t    rx_pos;                       // Current position in parse buffer
    bool      rx_complete;                  // Reception complete flag
    size_t    last_rx_size;                // Last received data size
    tick_t    last_alive_time;             // Last alive packet time in ms
} UART_Handle_t;


#ifdef __cplusplus
extern "C" {
#endif








/* Function Prototypes */
void VESC_UART_Init(void);
void VESC_UART_IRQHandler(void);

#ifdef __cplusplus
}
#endif

#endif /* VESC_UART_H */
