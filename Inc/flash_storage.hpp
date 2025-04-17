#ifndef __FLASH_STORAGE_HPP
#define __FLASH_STORAGE_HPP

#include <stdint.h>
#include "stm32g4xx_hal.h"
#include "canopen.hpp"
#include "encoder.hpp"
#include "controller.hpp"
#include "motor.hpp"
#include "current_limiter.hpp"
#include "axis.hpp"
#include "thermistor.hpp"
#include "interface_can.hpp"

// Flash configuration
#define FLASH_CONFIG_START_ADDR   (0x0801F000)  // Use last 2KB page
#define FLASH_PAGE_SIZE          (0x800)        // 2KB per page
#define FLASH_CONFIG_VERSION     (0x01)         // Initial version
#define FLASH_CONFIG_MAGIC      (0xCAFE0001)   // Magic number for validation

typedef struct {
    uint32_t magic;
    uint32_t version;
    ODriveCAN::Config_t can_config;
    Encoder::Config_t encoder_configs;
    Controller::Config_t controller_configs;
    Motor::Config_t motor_configs;
    OnboardThermistorCurrentLimiter::Config_t fet_thermistor_configs;
    OffboardThermistorCurrentLimiter::Config_t motor_thermistor_configs;
    Axis::Config_t axis_configs;
    uint32_t crc;
} FlashStorage_t;

// Function declarations
bool Flash_EraseConfig(void);
bool Flash_ValidateConfig(void);

#endif // __FLASH_STORAGE_H