#include "vesc_uart.h"
#include "freertos_vars.h"
#include "main.h"

/* Static Variables */
static UART_Handle_t uart_handle;
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
    // NVIC_SetPriority(DMA1_Channel1_IRQn, NVIC_EncodePriority(NVIC_GetPriorityGrouping(), 1, 0));
    // NVIC_SetPriority(DMA1_Channel2_IRQn, NVIC_EncodePriority(NVIC_GetPriorityGrouping(), 1, 0));
    // NVIC_EnableIRQ(DMA1_Channel1_IRQn);
    // NVIC_EnableIRQ(DMA1_Channel2_IRQn);
};


void VESC_UART_Init(void)
{
    /* Reset handle structure */
    uart_handle.rx_pos = 0;
    uart_handle.rx_complete = false;
    uart_handle.last_rx_size = 0;
    uart_handle.last_alive_time = 0;

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

        

/**
 * @brief Send VESC packet
*/

void copy_data_to_uart_buffer(const uint8_t *data, size_t length);

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

            copy_data_to_uart_buffer(uart_handle.dma_buffer, dma_pos);
            
            /* Reset DMA */
            LL_DMA_DisableChannel(VESC_DMA, VESC_DMA_RX_CHANNEL);
            LL_DMA_SetDataLength(VESC_DMA, VESC_DMA_RX_CHANNEL, RX_BUFFER_SIZE);
            LL_DMA_EnableChannel(VESC_DMA, VESC_DMA_RX_CHANNEL);
            
            dma_busy = false;
        }
    }
    LL_USART_ClearFlag_FE(VESC_UART);
    LL_USART_ClearFlag_NE(VESC_UART);
    LL_USART_ClearFlag_ORE(VESC_UART);
}
