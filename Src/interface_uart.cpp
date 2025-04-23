
#include "interface_uart.h"
#include "freertos_vars.h"
#include "canopen.hpp"

#include "main.h"

#include "mc_config.h"
#include "utils.hpp"
#include "low_level.h"
#include "main_.hpp"
#include "interfaces.hpp"
#

// DMA open loop continous circular buffer
// 1ms delay periodic, chase DMA ptr around
static uint8_t dma_tx_buffer[UART_RX_BUFFER_SIZE];
static uint8_t tx_len = 0;

typedef struct
{
	volatile uint8_t len;
  unsigned char buf[UART_RX_BUFFER_SIZE];
} uart_recv_buf_t;

static uart_recv_buf_t uart_recv_buf;

// FIXME: the stdlib doesn't know about CMSIS threads, so this is just a global variable
// static thread_local uint32_t deadline_ms = 0;

osThreadId uart_thread;
const uint32_t stack_size_uart_thread = 1024;  // Bytes



void copy_data_to_uart_buffer(const uint8_t *data, size_t length) {
    if (length > UART_RX_BUFFER_SIZE) {
        length = UART_RX_BUFFER_SIZE;  // Prevent buffer overflow
    }
    // Copy data to the circular buffer
    for (size_t i = 0; i < length; i++) {
        uart_recv_buf.buf[i] = data[i];
    }
    uart_recv_buf.len = length;
    osSemaphoreRelease(sem_uart_dma);
}


int parse_uart_frame_(uart_recv_buf_t *rx_buf);

static void uart_server_thread(const void * ctx) {
    (void) ctx;

    for (;;) {
        if (osSemaphoreWait(sem_uart_dma, osWaitForever) == osOK)
        {

            parse_uart_frame_(&uart_recv_buf);
        }
        else
        {
            int i =0;
            i++;
            // Timeout, do nothing
        }

    };
}




void start_uart_server() {

    // Start UART communication thread
    osThreadDef(uart_server_thread_def, uart_server_thread, osPriorityNormal, 0, stack_size_uart_thread / sizeof(StackType_t) /* the ascii protocol needs considerable stack space */);
    uart_thread = osThreadCreate(osThread(uart_server_thread_def), NULL);
}


static uint8_t CheckSum(uint8_t* pdata, uint8_t len)
{
	uint8_t sum = 0;
	uint8_t i;
	for(i=0; i<len; i++)
		sum += pdata[i];
	return sum;
}


void UART_PushFrame_(uint8_t DataLen,uint8_t Cmd, uint16_t Index, uint8_t Subindex ,uint8_t* pdata)
{
	uint8_t i;
	uint8_t pos = 0;

    if (DataLen + 9 > UART_TX_BUFFER_SIZE) {  // 9 = frame overhead
        return;  // Buffer overflow protection
    }

	dma_tx_buffer[pos++] = 0xAA;				      // ֡ͷ
	dma_tx_buffer[pos++] = 0x55;				      // ֡ͷ	

	dma_tx_buffer[pos++] = DataLen+5;		      // ���ݳ���
	dma_tx_buffer[pos++] = 0x01;	// ID
	dma_tx_buffer[pos++] = Cmd;
	dma_tx_buffer[pos++] = Index&0xff;
	dma_tx_buffer[pos++] = (Index>>8)&0xff;
	dma_tx_buffer[pos++] = (Subindex)&0xff;
	for (i=0; i<DataLen; i++)
	{
		dma_tx_buffer[pos++] = pdata[i];
	}
	dma_tx_buffer[pos] = CheckSum(&dma_tx_buffer[2], pos-2);  // У���
	pos++;

    LL_DMA_DisableChannel(VESC_DMA, VESC_DMA_TX_CHANNEL);
    LL_DMA_SetMemoryAddress(VESC_DMA, VESC_DMA_TX_CHANNEL, (uint32_t)dma_tx_buffer);
    LL_DMA_SetDataLength(VESC_DMA, VESC_DMA_TX_CHANNEL, pos);
    LL_DMA_EnableChannel(VESC_DMA, VESC_DMA_TX_CHANNEL);

	

}


void UART_ParseFrame_(uint8_t* pdata) {

	
    uint8_t cmd = pdata[2];
    uint16_t index = pdata[3+1]<<8 | pdata[3];
		uint16_t sub_index = pdata[3 + 2];
		uint16_t length =0;
		int32_t value = 0;

    switch(cmd) {
        case FRAME_CMD_SDO_READ:
			// Read parameter by index and sub-index
            // Read parameter and send response
						length =0;
            value = OD_Read(index, sub_index,&length);
            UART_PushFrame_(length, FRAME_CMD_SDO_READ, index,sub_index, (uint8_t*)&value);
            break;

        case FRAME_CMD_SDO_WRITE:
						length = pdata[0] - 5;
							// Write parameter
						if(length == 2)
									value = (pdata[6+1] << 8) | pdata[6];
						else if(length == 4)
									value = (pdata[6 + 3] << 24) | (pdata[6 + 2] << 16) | (pdata[6 + 1] << 8) | pdata[6];
                                    
						OD_Write(index, sub_index,(void*)&value);
						// Send ACK
						UART_PushFrame_(0, FRAME_CMD_SDO_WRITE, index,sub_index, NULL);
            break;

		case FRAME_CMD_PDO_READ:
			{
				uint8_t tx_buf[24];  // Buffer for up to 6 PDO values
				int pos = 0;
			
				// Read all PDO channels
				for(int i = 0; i < 6; i++) {
					// Read each PDO channel
					value = PDO_Read(i, &length);
					
					if(length > 0) {
						// Pack data in little-endian format
						for(int j = 0; j < length; j++) {
							tx_buf[pos++] = (value >> (8*j)) & 0xFF;
						}
					}
				}
			
				// Send response frame with all PDO data
				UART_PushFrame_(pos, FRAME_CMD_PDO_READ, 0, 0, tx_buf);
			}
			break;

		case FRAME_CMD_RESET:
			// Check magic number to confirm reset
			 value = (pdata[6 + 1] << 8) | pdata[6];
			// if(value == FACTORY_RESET_MAGIC) {
			// 	// Reset parameters to factory defaults
			// 	if(Flash_ResetToFactory() == 1) {
			// 		UART_PushFrame_(0, FRAME_CMD_RESET, 0,0, NULL); // Success
			// 	}
			// }
			break;
		
		// ...existing code...
        case FRAME_CMD_SAVE:
            // Save all parameters to flash
            Flash_SaveConfig();
            // Send ACK
            UART_PushFrame_(0, FRAME_CMD_SAVE, 0,0, NULL);
            break;

		case FRAME_CMD_START:
            // Start motor

            UART_PushFrame_(0, FRAME_CMD_START, 0,0, NULL);
            break;

        case FRAME_CMD_STOP:
            // Stop motor

            UART_PushFrame_(0, FRAME_CMD_STOP, 0,0, NULL);
            break;

        case FRAME_CMD_SET_POS:
            // Set position

            UART_PushFrame_(0, FRAME_CMD_SET_POS, 0,0, NULL);
            break;

		case SET_AXIS_STATE:
			// Set axis state
			value = (pdata[6+1] << 8) | pdata[6];
			axis.requested_state_  =  (Axis::AxisState)value;
			UART_PushFrame_(0, SET_AXIS_STATE, 0,0, NULL);
			break;

		case FRAME_CMD_SCOPE:
			
		//55 AA 05 01 80 00 00 00 86 
		//AA 55 15 01 80 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 96 
		// 发送一帧状态数据
		{
			uint8_t tx_buf[24];  // 6个int16_t数据
			int pos = 0;
	
			// 获取当前状态
			int16_t target_pos = axis.motor_.v_alpha_*1000;
			int16_t current_pos = axis.motor_.v_beta_*1000;
			int16_t target_vel =  axis.motor_.timing_log_[2];;
			int16_t current_vel = axis.motor_.timing_log_[3];;
			int16_t target_cur =  axis.motor_.timing_log_[4];;
			int16_t current_cur =axis.motor_.timing_log_[5];;
			
		
			int16_t temp = axis.motor_.error_;//vbus_voltage;
			uint16_t erro = axis.error_;
			
			// 打包数据 (小端序)
			tx_buf[pos++] = (target_pos) & 0xFF;
			tx_buf[pos++] = (target_pos>>8) & 0xFF;
			tx_buf[pos++] = (current_pos) & 0xFF;
			tx_buf[pos++] = (current_pos>>8) & 0xFF;
			tx_buf[pos++] = (target_vel) & 0xFF;
			tx_buf[pos++] = (target_vel>>8) & 0xFF;
			tx_buf[pos++] = current_vel & 0xFF;
			tx_buf[pos++] = (current_vel>>8) & 0xFF;
			tx_buf[pos++] = (target_cur) & 0xFF;
			tx_buf[pos++] = (target_cur>>8) & 0xFF;
			tx_buf[pos++] = (current_cur) & 0xFF;
			tx_buf[pos++] = (current_cur>>8) & 0xFF;
			tx_buf[pos++] = (temp) & 0xFF;
			tx_buf[pos++] = (temp>>8) & 0xFF;
			tx_buf[pos++] = (erro) & 0xFF;
			tx_buf[pos++] = (erro>>8) & 0xFF;
			
			// 发送数据帧
			UART_PushFrame_(pos, FRAME_CMD_SCOPE, 0,0, tx_buf);
		}
		break;

		default:
			break;
	
    }
}



int parse_uart_frame_(uart_recv_buf_t *rx_buf) {
    uint16_t len = rx_buf->len;
    uint16_t i = 0;
	uint8_t psum = 0;
    uint8_t payload = 0;

    if (!rx_buf || rx_buf->len < 4) {
        return -1;  // Invalid parameters
    }

	for(i = 0; i < len-1; i++)  
	{
		if(rx_buf->buf[i] ==0x55 && rx_buf->buf[i+1] ==0xaa  )
		{
			if(i>1)
			{
				break;
			}
			
			if( (i+2) > ( len-1) )
			{
				break;
			}
			payload = rx_buf->buf[i+2];
			
			if( payload > (len - i - 4))
			{
				break;
			}
			
			psum = rx_buf->buf[i+payload+3];
			if( psum == CheckSum(&(rx_buf->buf[i+2]),payload+1) )
			{
				UART_ParseFrame_(&(rx_buf->buf[i+2]));  // ����֡����
				uart_recv_buf.len = 0;
				break;
			}
			else
			{
			//	while(1);
			}
		}
	}
	return 0;
}


