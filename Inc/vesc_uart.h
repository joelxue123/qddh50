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

/* Time Type */
typedef uint_fast32_t tick_t;

#ifdef __cplusplus
extern "C" {
#endif

/* Hardware Definitions */
#define VESC_UART                   USART1
#define VESC_DMA                    DMA1
#define VESC_DMA_RX_CHANNEL        LL_DMA_CHANNEL_1
#define VESC_DMA_TX_CHANNEL        LL_DMA_CHANNEL_2
#define VESC_TX_PIN                UART_TX_Pin
#define VESC_RX_PIN                UART_RX_Pin
#define VESC_GPIO_PORT             GPIOA

/* Protocol Constants */
#define PACKET_HEADER1            0xAA     // Header byte 1
#define PACKET_HEADER2            0x55     // Header byte 2
#define RX_BUFFER_SIZE           1024      // Maximum receive buffer size
#define MAX_PAYLOAD_LENGTH       (RX_BUFFER_SIZE - 7)  // Maximum payload length
#define POLLING_INTERVAL         100       // Polling interval in ms
#define RECEIVE_TIMEOUT         100        // Receive timeout in ms

/* Command Definitions */
typedef enum {
    COMM_FW_VERSION = 0,
    COMM_GET_VALUES = 4,
    COMM_SET_DUTY = 5,
    COMM_SET_CURRENT = 6,
    COMM_SET_CURRENT_BRAKE = 7,
    COMM_SET_RPM = 8,
    COMM_SET_POS = 9,
    COMM_SET_HANDBRAKE = 10,
    COMM_SET_DETECT = 11,
    COMM_REBOOT = 29,
    COMM_ALIVE = 30
} VescCommands;

/* Packet Status */
typedef enum {
    PACKET_INVALID_HEADER,
    PACKET_INCOMPLETE,
    PACKET_SUCCESS
} PacketStatus;

/* Global variables */
extern volatile bool tx_in_progress;

/* Packet Structure */
typedef struct {
    uint8_t   header[2];       // Header bytes [0xAA, 0x55]
    uint8_t   length_size;     // Size of length field (2-4 bytes)
    size_t    payload_length;  // Length of payload
    uint8_t   cmd;            // Command byte
    uint8_t*  payload;        // Pointer to payload data
    uint16_t  crc;           // CRC16 checksum
} Packet_t;

/* UART Handle */
typedef struct {
    uint8_t   dma_buffer[RX_BUFFER_SIZE];   // DMA receive buffer
    uint8_t   parse_buffer[RX_BUFFER_SIZE]; // Packet parsing buffer
    size_t    rx_pos;                       // Current position in parse buffer
    bool      rx_complete;                  // Reception complete flag
    size_t    last_rx_size;                // Last received data size
    tick_t    last_alive_time;             // Last alive packet time in ms
    void (*callback)(uint8_t cmd, uint8_t* data, uint16_t len); // Command callback
} UART_Handle_t;

/* Function Prototypes */
void VESC_UART_Init(void);
void VESC_ProcessPacket(void);
void VESC_SendPacket(uint8_t cmd, uint8_t* data, uint16_t len);
void VESC_UART_IRQHandler(void);
uint16_t VESC_CRC16(uint8_t* data, uint16_t len);
void VESC_ExecuteCommand(uint8_t cmd, uint8_t* data, uint16_t len);

#ifdef __cplusplus
}
#endif

#endif /* VESC_UART_H */
