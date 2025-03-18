#include "vesc_uart.h"

/* Static Variables */
static UART_Handle_t uart_handle;
static uint8_t tx_buffer[RX_BUFFER_SIZE];
volatile bool tx_in_progress = false;
static volatile bool dma_busy = false;


/* Private Function Prototypes */
static void ConfigureDMA(void)
{
    /* Configure DMA1 Channel 1 for UART RX */
    LL_DMA_DisableChannel(VESC_DMA, VESC_DMA_RX_CHANNEL);
    
    /* Configure RX DMA parameters */
    LL_DMA_SetPeriphAddress(VESC_DMA, VESC_DMA_RX_CHANNEL, (uint32_t)&VESC_UART->RDR);
    LL_DMA_SetMode(VESC_DMA, VESC_DMA_RX_CHANNEL, LL_DMA_MODE_CIRCULAR);
    LL_DMA_SetPeriphIncMode(VESC_DMA, VESC_DMA_RX_CHANNEL, LL_DMA_PERIPH_NOINCREMENT);
    LL_DMA_SetMemoryIncMode(VESC_DMA, VESC_DMA_RX_CHANNEL, LL_DMA_MEMORY_INCREMENT);
    LL_DMA_SetPeriphSize(VESC_DMA, VESC_DMA_RX_CHANNEL, LL_DMA_PDATAALIGN_BYTE);
    LL_DMA_SetMemorySize(VESC_DMA, VESC_DMA_RX_CHANNEL, LL_DMA_MDATAALIGN_BYTE);
    LL_DMA_SetChannelPriorityLevel(VESC_DMA, VESC_DMA_RX_CHANNEL, LL_DMA_PRIORITY_HIGH);
    LL_DMA_EnableIT_TC(VESC_DMA, VESC_DMA_RX_CHANNEL);

    /* Configure DMA1 Channel 2 for UART TX */
    LL_DMA_DisableChannel(VESC_DMA, VESC_DMA_TX_CHANNEL);
    
    /* Configure TX DMA parameters */
    LL_DMA_SetPeriphAddress(VESC_DMA, VESC_DMA_TX_CHANNEL, (uint32_t)&VESC_UART->TDR);
    LL_DMA_SetMode(VESC_DMA, VESC_DMA_TX_CHANNEL, LL_DMA_MODE_NORMAL);
    LL_DMA_SetPeriphIncMode(VESC_DMA, VESC_DMA_TX_CHANNEL, LL_DMA_PERIPH_NOINCREMENT);
    LL_DMA_SetMemoryIncMode(VESC_DMA, VESC_DMA_TX_CHANNEL, LL_DMA_MEMORY_INCREMENT);
    LL_DMA_SetPeriphSize(VESC_DMA, VESC_DMA_TX_CHANNEL, LL_DMA_PDATAALIGN_BYTE);
    LL_DMA_SetMemorySize(VESC_DMA, VESC_DMA_TX_CHANNEL, LL_DMA_MDATAALIGN_BYTE);
    LL_DMA_SetChannelPriorityLevel(VESC_DMA, VESC_DMA_TX_CHANNEL, LL_DMA_PRIORITY_HIGH);
    LL_DMA_EnableIT_TC(VESC_DMA, VESC_DMA_TX_CHANNEL);

    /* Enable DMA requests */
    LL_USART_EnableDMAReq_RX(VESC_UART);
    LL_USART_EnableDMAReq_TX(VESC_UART);

    /* Configure NVIC for DMA interrupts */
    NVIC_SetPriority(DMA1_Channel1_IRQn, NVIC_EncodePriority(NVIC_GetPriorityGrouping(), 1, 0));
    NVIC_SetPriority(DMA1_Channel2_IRQn, NVIC_EncodePriority(NVIC_GetPriorityGrouping(), 1, 0));
    NVIC_EnableIRQ(DMA1_Channel1_IRQn);
    NVIC_EnableIRQ(DMA1_Channel2_IRQn);
}
static uint8_t EncodeLength(size_t length, uint8_t* buffer);
static PacketStatus DecodeLength(const uint8_t* buffer, size_t* length, uint8_t* length_size);
static uint16_t CalculateCRC16(const uint8_t* data, size_t len);

/**
 * @brief Initialize VESC UART communication
 */
void VESC_UART_Init(void)
{
    /* Reset handle structure */
    uart_handle.rx_pos = 0;
    uart_handle.rx_complete = false;
    uart_handle.last_rx_size = 0;
    uart_handle.last_alive_time = 0;
    uart_handle.callback = VESC_ExecuteCommand;

    /* Enable DMA1 clock */
    __HAL_RCC_DMA1_CLK_ENABLE();

    /* Configure and initialize DMA */
    ConfigureDMA();

    /* Set up DMA reception parameters */
    LL_DMA_SetMemoryAddress(VESC_DMA, VESC_DMA_RX_CHANNEL, (uint32_t)uart_handle.dma_buffer);
    LL_DMA_SetDataLength(VESC_DMA, VESC_DMA_RX_CHANNEL, RX_BUFFER_SIZE);
    
    /* Enable DMA channel */
    LL_DMA_EnableChannel(VESC_DMA, VESC_DMA_RX_CHANNEL);

    /* Enable UART IDLE interrupt */
    LL_USART_EnableIT_IDLE(VESC_UART);
}

/**
 * @brief Calculate CRC16
 */
/**
 * @brief Calculate CRC16 using VESC protocol polynomial (0x1021)
 */
/* CRC lookup table */
static const uint16_t crc16_tab[] = {
    0x0000, 0x1021, 0x2042, 0x3063, 0x4084, 0x50a5, 0x60c6, 0x70e7,
    0x8108, 0x9129, 0xa14a, 0xb16b, 0xc18c, 0xd1ad, 0xe1ce, 0xf1ef,
    0x1231, 0x0210, 0x3273, 0x2252, 0x52b5, 0x4294, 0x72f7, 0x62d6,
    0x9339, 0x8318, 0xb37b, 0xa35a, 0xd3bd, 0xc39c, 0xf3ff, 0xe3de,
    0x2462, 0x3443, 0x0420, 0x1401, 0x64e6, 0x74c7, 0x44a4, 0x5485,
    0xa56a, 0xb54b, 0x8528, 0x9509, 0xe5ee, 0xf5cf, 0xc5ac, 0xd58d
    // ... rest of the table
};

/**
 * @brief Calculate CRC16 using lookup table
 *//**
 * @brief Calculate CRC16 for VESC protocol
 */
static uint16_t CalculateCRC16(const uint8_t* data, size_t len)
{
    uint16_t crc = 0;
    
    for (size_t i = 0; i < len; i++) {
        // Step 1: Rotate CRC left by 8 bits
        crc = ((crc << 8) & 0xFF00) | (crc >> 8);
        
        // Step 2: XOR with current byte
        crc ^= data[i];
        
        // Step 3: XOR with right shift 4 of lower byte
        crc ^= (crc & 0xFF) >> 4;
        
        // Step 4: XOR with left shift 12 (equivalent to (crc << 8) << 4)
        crc ^= (crc << 8) << 4;
        
        // Step 5: XOR with left shift 5 of lower byte (equivalent to ((crc & 0xFF) << 4) << 1)
        crc ^= ((crc & 0xFF) << 4) << 1;
    }
    
    return crc & 0xFFFF;  // Ensure 16-bit result
}
/**
 * @brief Encode length field according to protocol
 * @return Number of bytes used for length encoding
 */
static uint8_t EncodeLength(size_t length, uint8_t* buffer)
{
    if (length <= 255) {
        buffer[0] = 2;  // length field size
        buffer[1] = length;
        return 2;
    } else if (length <= 65535) {
        buffer[0] = 3;  // length field size
        buffer[1] = (length >> 8) & 0xFF;
        buffer[2] = length & 0xFF;
        return 3;
    } else {
        buffer[0] = 4;  // length field size
        buffer[1] = (length >> 16) & 0xFF;
        buffer[2] = (length >> 8) & 0xFF;
        buffer[3] = length & 0xFF;
        return 4;
    }
}

/**
 * @brief Decode length field from received data
 */
static PacketStatus DecodeLength(const uint8_t* buffer, size_t* length, uint8_t* length_size)
{
    *length_size = buffer[0];
    
    if (*length_size < 2 || *length_size > 4) {
        return PACKET_INVALID_HEADER;
    }
    
    if (*length_size == 2) {
        *length = buffer[1];
    } else if (*length_size == 3) {
        *length = (buffer[1] << 8) | buffer[2];
    } else {
        *length = (buffer[1] << 16) | (buffer[2] << 8) | buffer[3];
    }
    
    return PACKET_SUCCESS;
}

/**
 * @brief Process received packet
 */
void VESC_ProcessPacket(void)
{
    if (uart_handle.rx_pos < 4) {  // Minimum packet size
        return;
    }
    
    const uint8_t* buffer = uart_handle.parse_buffer;
    
    // Check header
    if (buffer[0] != PACKET_HEADER1 || buffer[1] != PACKET_HEADER2) {
        uart_handle.rx_pos = 0;
        return;
    }
    
    // Decode length
    size_t payload_length;
    uint8_t length_size;
    PacketStatus status = DecodeLength(buffer + 2, &payload_length, &length_size);
    
    if (status != PACKET_SUCCESS) {
        uart_handle.rx_pos = 0;
        return;
    }
    
    size_t total_length = 2 + length_size + payload_length + 2;  // Header + Length + Payload + CRC
    
    if (uart_handle.rx_pos < total_length) {
        return;  // Not enough data yet
    }
    
    // Check CRC
    uint16_t calc_crc = CalculateCRC16(buffer + 2 + length_size, payload_length);
    uint16_t rcv_crc = (buffer[total_length - 2] << 8) | buffer[total_length - 1];
    
    if (calc_crc != rcv_crc) {
        uart_handle.rx_pos = 0;
        return;
    }
    
    // Execute command
    uint8_t cmd = buffer[2 + length_size];
    uint8_t* data = (uint8_t*)(buffer + 2 + length_size + 1);
    size_t data_len = payload_length - 1;
    
    if (uart_handle.callback) {
        uart_handle.callback(cmd, data, data_len);
    }
    
    // Reset buffer
    uart_handle.rx_pos = 0;
}

/**
 * @brief Send VESC packet
 */
void VESC_SendPacket(uint8_t cmd, uint8_t* data, uint16_t len)
{
    if (tx_in_progress || len > MAX_PAYLOAD_LENGTH) {
        return;
    }
    
    size_t idx = 0;
    
    // Header
    tx_buffer[idx++] = PACKET_HEADER1;
    tx_buffer[idx++] = PACKET_HEADER2;
    
    // Length field (including command byte)
    idx += EncodeLength(len + 1, tx_buffer + idx);
    
    // Command
    tx_buffer[idx++] = cmd;
    
    // Data
    for (size_t i = 0; i < len; i++) {
        tx_buffer[idx++] = data[i];
    }
    
    // CRC
    uint16_t crc = CalculateCRC16(tx_buffer + 4, len+1);
    tx_buffer[idx++] = (crc >> 8) & 0xFF;
    tx_buffer[idx++] = crc & 0xFF;
    
    // Send using DMA
    tx_in_progress = true;
    LL_DMA_SetMemoryAddress(VESC_DMA, VESC_DMA_TX_CHANNEL, (uint32_t)tx_buffer);
    LL_DMA_SetDataLength(VESC_DMA, VESC_DMA_TX_CHANNEL, idx);
    LL_DMA_EnableChannel(VESC_DMA, VESC_DMA_TX_CHANNEL);
}

/**
 * @brief UART IDLE interrupt handler
 */
void VESC_UART_IRQHandler(void)
{
    if (LL_USART_IsActiveFlag_IDLE(VESC_UART)) {
        /* Clear IDLE flag */
        LL_USART_ClearFlag_IDLE(VESC_UART);
        
        if (!dma_busy) {
            dma_busy = true;
            
            /* Calculate received data size */
            size_t dma_pos = RX_BUFFER_SIZE - LL_DMA_GetDataLength(VESC_DMA, VESC_DMA_RX_CHANNEL);
            
            /* Copy DMA buffer to parse buffer */
            for (size_t i = 0; i < dma_pos; i++) {
                uart_handle.parse_buffer[uart_handle.rx_pos + i] = uart_handle.dma_buffer[i];
            }
            uart_handle.rx_pos += dma_pos;
            
            /* Process packet */
            VESC_ProcessPacket();
            
            /* Reset DMA */
            LL_DMA_DisableChannel(VESC_DMA, VESC_DMA_RX_CHANNEL);
            LL_DMA_SetDataLength(VESC_DMA, VESC_DMA_RX_CHANNEL, RX_BUFFER_SIZE);
            LL_DMA_EnableChannel(VESC_DMA, VESC_DMA_RX_CHANNEL);
            
            dma_busy = false;
        }
    }
}
