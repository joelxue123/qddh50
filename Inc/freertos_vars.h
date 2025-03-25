/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __FREERTOS_H
#define __FREERTOS_H

#include "cmsis_os.h"

#ifdef __cplusplus
extern "C" {
#endif

// List of semaphores (using CMSIS-RTOS v1 types)
extern osSemaphoreId sem_uart_dma;
extern osSemaphoreId sem_can;

// Thread handles (using CMSIS-RTOS v1 types)
extern osThreadId defaultTaskHandle;

// Stack sizes
extern const uint32_t stack_size_default_task;

#ifdef __cplusplus
}
#endif

#endif /* __FREERTOS_H */