#include "interface_can.hpp"

#include "crc.hpp"
#include "freertos_vars.h"
#include "utils.hpp"

#include <cmsis_os.h>
#include "stm32g4xx_hal.h"

// Specific CAN Protocols
#include "can_encos.hpp"
#include "stm32g4xx_hal_fdcan.h"  // Include FDCAN header
#include "axis.hpp"


// Safer context handling via maps instead of arrays
// #include <unordered_map>
// std::unordered_map<CAN_HandleTypeDef *, ODriveCAN *> ctxMap;

// Constructor is called by communication.cpp and the handle is assigned appropriately
ODriveCAN::ODriveCAN(ODriveCAN::Config_t &config, FDCAN_HandleTypeDef *handle)
    : config_{config},
      handle_{handle} {
    // ctxMap[handle_] = this;
}

void ODriveCAN::can_server_thread() {
    for (;;) {
        uint32_t status = HAL_FDCAN_GetError(handle_);
        if (status == HAL_FDCAN_ERROR_NONE) {
            can_Message_t rxmsg;

            // Poll every 10ms regardless of semaphore status
            osSemaphoreWait(sem_can, 10);  
            
            while (available()) {
                read(rxmsg);
                switch (config_.protocol) {
                    case PROTOCOL_SIMPLE:
                        break;
                    case PROTOCOL_ENCOS:
                        CANEncos::handle_can_message(rxmsg);
                        break;
                }
            }
            
            // Re-enable FDCAN notifications
            HAL_FDCAN_ActivateNotification(handle_, 
                FDCAN_IT_RX_FIFO0_NEW_MESSAGE, 
                FDCAN_INTERRUPT_LINE0);
                
        } else {
            if (status == HAL_FDCAN_ERROR_TIMEOUT) {
                // Reset FDCAN on timeout by stopping and restarting
                HAL_FDCAN_Stop(handle_);
                
                // Clear error flags in ECR register
                CLEAR_BIT(handle_->Instance->ECR, (FDCAN_ECR_TEC | FDCAN_ECR_REC));
                
                // Restart FDCAN
                status = HAL_FDCAN_Start(handle_);
                if (status == HAL_OK) {
                    status = HAL_FDCAN_ActivateNotification(handle_,
                        FDCAN_IT_RX_FIFO0_NEW_MESSAGE,
                        FDCAN_INTERRUPT_LINE0);
                }
            }
        }
    }
}

 

static void can_server_thread_wrapper(void *ctx) {
    reinterpret_cast<ODriveCAN *>(ctx)->can_server_thread();
    reinterpret_cast<ODriveCAN *>(ctx)->thread_id_valid_ = false;
}

bool ODriveCAN::start_can_server() {
    HAL_StatusTypeDef status;

    // Set initial baud rate
    set_baud_rate(config_.baud_rate);

    // Initialize FDCAN with current configuration
    status = HAL_FDCAN_Init(handle_);
    if (status != HAL_OK) {
        return false;
    }

        // 配置标准ID过滤器
        FDCAN_FilterTypeDef sFilterConfig;
        sFilterConfig.IdType = FDCAN_STANDARD_ID;
        sFilterConfig.FilterIndex = 0;
        sFilterConfig.FilterType = FDCAN_FILTER_MASK;  // 使用掩码模式
        sFilterConfig.FilterConfig = FDCAN_FILTER_TO_RXFIFO0;  // 匹配的消息存入FIFO0
        sFilterConfig.FilterID1 = 0x000;  // 根据实际需要的ID设置
        sFilterConfig.FilterID2 = 0x7FF;  // 掩码，0表示必须匹配，1表示不关心
        
        if (HAL_FDCAN_ConfigFilter(handle_, &sFilterConfig) != HAL_OK) {
            return false;
        }
    
        // 如果需要扩展ID过滤器
        sFilterConfig.IdType = FDCAN_EXTENDED_ID;
        sFilterConfig.FilterIndex = 0;  // 扩展ID过滤器独立编号
        sFilterConfig.FilterID1 = 0x00000000;  // 根据实际需要的扩展ID设置
        sFilterConfig.FilterID2 = 0x1FFFFFFF;  // 扩展ID掩码
        
        if (HAL_FDCAN_ConfigFilter(handle_, &sFilterConfig) != HAL_OK) {
            return false;
        }
    

    
    // Configure FDCAN global filter
    HAL_FDCAN_ConfigGlobalFilter(handle_,
                                FDCAN_ACCEPT_IN_RX_FIFO0,
                                FDCAN_ACCEPT_IN_RX_FIFO0,
                                FDCAN_FILTER_REMOTE,
                                FDCAN_FILTER_REJECT);

    // Start FDCAN peripheral
    status = HAL_FDCAN_Start(handle_);
    if (status != HAL_OK) {
        return false;
    }
    
    HAL_FDCAN_ConfigInterruptLines(handle_,
        FDCAN_IT_RX_FIFO0_NEW_MESSAGE | 
        FDCAN_IT_RX_FIFO0_FULL | 
        FDCAN_IT_ERROR_WARNING,
        FDCAN_INTERRUPT_LINE0);

    // Enable FDCAN notifications
    status = HAL_FDCAN_ActivateNotification(handle_,
        FDCAN_IT_RX_FIFO0_NEW_MESSAGE | 
        FDCAN_IT_RX_FIFO0_FULL | 
        FDCAN_IT_ERROR_WARNING,
        FDCAN_INTERRUPT_LINE0);
    
    if (status != HAL_OK) {
        return false;
    }

    // Create CAN server thread using CMSIS-RTOS v1
    osThreadDef_t thread_def;
    thread_def.name = "can_server";
    thread_def.pthread = (os_pthread)can_server_thread_wrapper;
    thread_def.tpriority = osPriorityRealtime;
    thread_def.instances = 0;
    thread_def.stacksize = stack_size_ / sizeof(StackType_t);

    thread_id_ = osThreadCreate(&thread_def, this);
    thread_id_valid_ = (thread_id_ != nullptr);

    return thread_id_valid_;
}

// Send a CAN message on the bus

uint32_t ODriveCAN::write(can_Message_t &txmsg) {
    if (HAL_FDCAN_GetError(handle_) == HAL_FDCAN_ERROR_NONE) {
        FDCAN_TxHeaderTypeDef header;
        
        // Configure message header
        header.Identifier = txmsg.id;
        header.IdType = txmsg.isExt ? FDCAN_EXTENDED_ID : FDCAN_STANDARD_ID;
        header.TxFrameType = txmsg.rtr ? FDCAN_REMOTE_FRAME : FDCAN_DATA_FRAME;
        header.DataLength = txmsg.len;  
        header.ErrorStateIndicator = FDCAN_ESI_ACTIVE;
        header.BitRateSwitch = FDCAN_BRS_OFF;
        header.FDFormat = FDCAN_CLASSIC_CAN;
        header.TxEventFifoControl = FDCAN_NO_TX_EVENTS;
        header.MessageMarker = 0;

        // Add message to transmission FIFO
        if (HAL_FDCAN_GetTxFifoFreeLevel(handle_) > 0) {
            HAL_StatusTypeDef status = HAL_FDCAN_AddMessageToTxFifoQ(handle_, 
                                                                    &header,
                                                                    txmsg.buf);
            return (status == HAL_OK) ? 1 : 0;
        }
        return 0;
    }
    return -1;
}


uint32_t ODriveCAN::available() {
    return (HAL_FDCAN_GetRxFifoFillLevel(handle_, FDCAN_RX_FIFO0) + 
            HAL_FDCAN_GetRxFifoFillLevel(handle_, FDCAN_RX_FIFO1));
}

bool ODriveCAN::read(can_Message_t &rxmsg) {
    FDCAN_RxHeaderTypeDef header;
    bool validRead = false;

    if (HAL_FDCAN_GetRxFifoFillLevel(handle_, FDCAN_RX_FIFO0) > 0) {
        if (HAL_FDCAN_GetRxMessage(handle_, FDCAN_RX_FIFO0, &header, rxmsg.buf) == HAL_OK) {
            validRead = true;
        }
    } else if (HAL_FDCAN_GetRxFifoFillLevel(handle_, FDCAN_RX_FIFO1) > 0) {
        if (HAL_FDCAN_GetRxMessage(handle_, FDCAN_RX_FIFO1, &header, rxmsg.buf) == HAL_OK) {
            validRead = true;
        }
    }

    if (validRead) {
        rxmsg.isExt = (header.IdType == FDCAN_EXTENDED_ID);
        rxmsg.id = rxmsg.isExt ? header.Identifier : header.Identifier;
        rxmsg.len = header.DataLength; //
        rxmsg.rtr = (header.RxFrameType == FDCAN_REMOTE_FRAME);
    }

    return validRead;
}

// Set one of only a few common baud rates.  CAN doesn't do arbitrary baud rates well due to the time-quanta issue.
// 21 TQ allows for easy sampling at exactly 80% (recommended by Vector Informatik GmbH for high reliability systems)
// Conveniently, the CAN peripheral's 42MHz clock lets us easily create 21TQs for all common baud rates
void ODriveCAN::set_baud_rate(uint32_t baudRate) {
    switch (baudRate) {
        case CAN_BAUD_125K:
            handle_->Init.NominalPrescaler = 17;    // 21 TQ's
            handle_->Init.NominalTimeSeg1 = 67;     // 80% sample point
            handle_->Init.NominalTimeSeg2 = 12;
            handle_->Init.NominalSyncJumpWidth = 1;
            config_.baud_rate = baudRate;
            reinit_can();
            break;

        case CAN_BAUD_250K:
            handle_->Init.NominalPrescaler = 17;     // 21 TQ's
            handle_->Init.NominalTimeSeg1 = 31;     // 80% sample point
            handle_->Init.NominalTimeSeg2 = 8;
            handle_->Init.NominalSyncJumpWidth = 1;
            config_.baud_rate = baudRate;
            reinit_can();
            break;

        case CAN_BAUD_500K:
            handle_->Init.NominalPrescaler = 17;     // 21 TQ's
            handle_->Init.NominalTimeSeg1 = 15;     // 80% sample point
            handle_->Init.NominalTimeSeg2 = 4;
            handle_->Init.NominalSyncJumpWidth = 1;
            config_.baud_rate = baudRate;
            reinit_can();
            break;

        case CAN_BAUD_1000K:
            handle_->Init.NominalPrescaler = 17;     // 21 TQ's
            handle_->Init.NominalTimeSeg1 = 7;     // 80% sample point
            handle_->Init.NominalTimeSeg2 = 2;
            handle_->Init.NominalSyncJumpWidth = 1;
            config_.baud_rate = baudRate;
            reinit_can();
            break;

        default:
            // baudRate is invalid, so don't accept it.
            break;
    }
}
void ODriveCAN::reinit_can() {
    // Stop FDCAN peripheral
    HAL_FDCAN_Stop(handle_);
    
    // Configure FDCAN init structure
    handle_->Init.FrameFormat = FDCAN_FRAME_CLASSIC;
    handle_->Init.Mode = FDCAN_MODE_NORMAL;
    handle_->Init.AutoRetransmission = ENABLE;
    handle_->Init.TransmitPause = DISABLE;
    handle_->Init.ProtocolException = DISABLE;
    
    // Set timing parameters for the selected baud rate
    handle_->Init.NominalPrescaler = handle_->Init.NominalPrescaler; // Use existing prescaler
    handle_->Init.NominalSyncJumpWidth = 1;
    handle_->Init.NominalPrescaler = handle_->Init.NominalPrescaler; // Use existing prescaler
    handle_->Init.NominalTimeSeg1 = handle_->Init.NominalTimeSeg1; // 80% sample point
    handle_->Init.NominalTimeSeg2 = handle_->Init.NominalTimeSeg2; // Remaining TQ's
    
    // Reinitialize FDCAN
    HAL_FDCAN_Init(handle_);
    
    // Configure global filter to accept all messages
    HAL_FDCAN_ConfigGlobalFilter(handle_,
                                FDCAN_ACCEPT_IN_RX_FIFO0,  // Non-matching frames
                                FDCAN_ACCEPT_IN_RX_FIFO0,  // Non-matching frames
                                FDCAN_FILTER_REMOTE,       // Remote frames
                                FDCAN_FILTER_REJECT);      // Reject error frames
    
    // Start FDCAN peripheral
    HAL_StatusTypeDef status = HAL_FDCAN_Start(handle_);
    
    if (status == HAL_OK) {
        // Enable notifications for new messages
        // FDCAN requires interrupt line parameter (0 or 1)
        status = HAL_FDCAN_ActivateNotification(handle_, 
            FDCAN_IT_RX_FIFO0_NEW_MESSAGE | 
            FDCAN_IT_RX_FIFO0_FULL | 
            FDCAN_IT_ERROR_WARNING,
            FDCAN_INTERRUPT_LINE0);  // Use interrupt line 0
    }
}
void ODriveCAN::set_error(Error error) {
    error_ = error;
}
// This function is called by each axis.
// It provides an abstraction from the specific CAN protocol in use
void ODriveCAN::send_heartbeat(Axis *axis) {
    // Handle heartbeat message
    if (axis->config_.can_heartbeat_rate_ms > 0) {
        uint32_t now = osKernelSysTick();
        if ((now - axis->last_heartbeat_) >= axis->config_.can_heartbeat_rate_ms) {
            switch (config_.protocol) {
                case PROTOCOL_SIMPLE:
                    break;
                case PROTOCOL_ENCOS:
                    break;

                default:
                    break;

            }
            axis->last_heartbeat_ = now;
        }
    }
}
void HAL_FDCAN_TxFifoEmptyCallback(FDCAN_HandleTypeDef *hfdcan) {}
void HAL_FDCAN_TxBufferCompleteCallback(FDCAN_HandleTypeDef *hfdcan) {}
void HAL_FDCAN_TxBufferAbortCallback(FDCAN_HandleTypeDef *hfdcan) {}
void HAL_FDCAN_RxFifo0Callback(FDCAN_HandleTypeDef *hfdcan, uint32_t RxFifo0ITs){
    HAL_FDCAN_DeactivateNotification(hfdcan, FDCAN_IT_RX_FIFO0_NEW_MESSAGE);
    osSemaphoreRelease(sem_can);
}
void HAL_FDCAN_RxFifo0FullCallback(FDCAN_HandleTypeDef *hfdcan) {
    // osSemaphoreRelease(sem_can);
}
void HAL_CAN_RxFifo0FullCallback(FDCAN_HandleTypeDef *hcan) {
    // osSemaphoreRelease(sem_can);
}
void HAL_FDCAN_RxFifo1Callback(FDCAN_HandleTypeDef *hcan) {}
void HAL_FDCAN_RxFifo1FullCallback(FDCAN_HandleTypeDef *hcan) {}
void HAL_FDCAN_SleepCallback(FDCAN_HandleTypeDef *hcan) {}
void HAL_FDCAN_WakeUpFromRxMsgCallback(FDCAN_HandleTypeDef *hcan) {}
void HAL_FDCAN_ErrorCallback(FDCAN_HandleTypeDef *hcan) {
    uint32_t CounterStartValue = 0;
    HAL_FDCAN_ConfigRamWatchdog(hcan, CounterStartValue);
    
    // Clear error flags in ECR register
    CLEAR_BIT(hcan->Instance->ECR, (FDCAN_ECR_TEC | FDCAN_ECR_REC));
}
