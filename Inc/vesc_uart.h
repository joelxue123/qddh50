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

/* Motor Status Structure */
typedef struct {
    int32_t position_set;    /**< Commanded position in encoder counts */
    int32_t position_act;    /**< Actual position in encoder counts */
    int32_t speed_set;       /**< Commanded speed in RPM */
    int32_t speed_act;       /**< Actual speed in RPM */
    int32_t current_set;     /**< Commanded current in mA */
    int32_t current_act;     /**< Actual current in mA */
    uint16_t temp;           /**< Motor temperature in 0.1°C */
    uint8_t voltage;         /**< Bus voltage in V */
} MotorStatus_t;

/* Parameter System */
typedef enum {
    PARAM_TYPE_INT8 = 0,
    PARAM_TYPE_UINT8,
    PARAM_TYPE_INT16,
    PARAM_TYPE_UINT16,
    PARAM_TYPE_INT32,
    PARAM_TYPE_UINT32,
    PARAM_TYPE_FLOAT
} ParamType_t;

typedef enum {
    PARAM_ACCESS_READ = 0x01,
    PARAM_ACCESS_WRITE = 0x02,
    PARAM_ACCESS_RW = 0x03
} ParamAccess_t;

typedef struct {
    uint16_t id;           // Parameter ID
    const char* name;      // Parameter name
    const char* unit;      // Unit (e.g. rpm, A, V)
    ParamType_t type;      // Data type
    uint8_t access;        // Access rights
    void* value_ptr;       // Pointer to parameter value
    float min;            // Minimum value
    float max;            // Maximum value
} ParamDescriptor_t;

/* Protocol Constants */
#define PACKET_HEADER1            0xAA     // Header byte 1
#define PACKET_HEADER2            0x55     // Header byte 2
#define RX_BUFFER_SIZE           64      // Maximum receive buffer size
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
    COMM_ALIVE = 30,
    
    // Parameter system commands
    COMM_GET_PARAM_LIST = 40,
    COMM_GET_PARAM_INFO = 41,
    COMM_GET_PARAM = 42,
    COMM_SET_PARAM = 43,
    COMM_SAVE_PARAMS = 44
} VescCommands;

/* Packet Status */
typedef enum {
    PACKET_INVALID_HEADER,
    PACKET_INCOMPLETE,
    PACKET_SUCCESS
} PacketStatus;

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

/* Parameter System Functions */
void SendParameterList(void);
void SendParameterInfo(uint16_t param_id);
void SendParameterValue(uint16_t param_id);
bool HandleParameterSet(uint16_t param_id, uint8_t* data, uint16_t len);
bool SaveParameters(void);

extern volatile bool tx_in_progress;

#ifdef __cplusplus
}
#endif

#endif /* VESC_UART_H */
