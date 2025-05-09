#include "flash_storage.hpp"
#include <string.h>

FlashStorage_t flash_storage;
static bool is_initialized = false;

// Calculate CRC32 of configuration data
static uint32_t Flash_CalculateCRC(const uint8_t* data, uint32_t length) {
    uint32_t crc = 0xFFFFFFFF;
    
    for(uint32_t i = 0; i < length; i++) {
        crc ^= data[i];
        for(uint32_t j = 0; j < 8; j++) {
            if(crc & 1) {
                crc = (crc >> 1) ^ 0xEDB88320;
            } else {
                crc >>= 1;
            }
        }
    }
    
    return ~crc;
}

// Write data to flash
static HAL_StatusTypeDef Flash_WriteData(uint32_t addr, uint8_t* data, uint32_t length) {
    HAL_StatusTypeDef status;
    
    // Unlock flash
    HAL_FLASH_Unlock();
    
    // Write data
    for(uint32_t i = 0; i < length; i += 8) {  // STM32G4 writes in double words (8 bytes)
        uint64_t word = 0;
        memcpy(&word, &data[i], (length - i >= 8) ? 8 : (length - i));
        
        status = HAL_FLASH_Program(FLASH_TYPEPROGRAM_DOUBLEWORD, addr + i, word);
        if(status != HAL_OK) {
            HAL_FLASH_Lock();
            return status;
        }
    }
    
    // Lock flash
    HAL_FLASH_Lock();
    
    return HAL_OK;
}

extern "C"  bool Flash_Init(void) {
    if(is_initialized) {
        return true;
    }
    
    // Check if we have valid configuration
    if(!Flash_ValidateConfig()) {
        // No valid configuration found, initialize with defaults
        flash_storage.magic = FLASH_CONFIG_MAGIC;
        flash_storage.version = FLASH_CONFIG_VERSION;
        
        // Initialize with default values
        // Note: Default values should be set here based on your requirements
        
        if(!Flash_SaveConfig()) {
            return false;
        }
    }
    
    is_initialized = true;
    return true;
}

extern "C"  bool Flash_LoadConfig(void) {
    // Copy configuration from flash
    memcpy(&flash_storage, (void*)FLASH_CONFIG_START_ADDR, sizeof(FlashStorage_t));
    
    // Validate configuration
    return Flash_ValidateConfig();
}

extern "C" bool Flash_SaveConfig(void) {



    LL_TIM_DisableCounter(TIM1);
    osDelay(10); // Wait for PWM to stop

    portENTER_CRITICAL();


    // Calculate CRC before saving
    flash_storage.crc = Flash_CalculateCRC((uint8_t*)&flash_storage, 
                                         sizeof(FlashStorage_t) - sizeof(uint32_t));
    
    // Erase config section
    if(!Flash_EraseConfig()) {
        LL_TIM_EnableCounter(TIM1);
        portEXIT_CRITICAL();

        return false;
    }
    
    // Write configuration to flash
    if(Flash_WriteData(FLASH_CONFIG_START_ADDR, (uint8_t*)&flash_storage, 
                      sizeof(FlashStorage_t)) != HAL_OK) {
        LL_TIM_EnableCounter(TIM1);
        portEXIT_CRITICAL();
        return false;
    }

    LL_TIM_EnableCounter(TIM1);
    portEXIT_CRITICAL();
    

    return true;
}

bool Flash_EraseConfig(void) {

 
    HAL_StatusTypeDef status;
    FLASH_EraseInitTypeDef erase_init;
    uint32_t page_error;
    
    // Configure erase operation
    erase_init.TypeErase = FLASH_TYPEERASE_PAGES;
    erase_init.Page = (FLASH_CONFIG_START_ADDR - FLASH_BASE) / FLASH_PAGE_SIZE;
    erase_init.NbPages = 1;
    
    // Unlock flash
    HAL_FLASH_Unlock();
    
    // Erase page
    status = HAL_FLASHEx_Erase(&erase_init, &page_error);
    
    // Lock flash
    HAL_FLASH_Lock();
    
    return (status == HAL_OK);

}

bool Flash_ValidateConfig(void) {
    FlashStorage_t* stored_config = (FlashStorage_t*)FLASH_CONFIG_START_ADDR;
    
    // Check magic number
    if(stored_config->magic != FLASH_CONFIG_MAGIC) {
        return false;
    }
    
    // Check version
    if(stored_config->version != FLASH_CONFIG_VERSION) {
        return false;
    }
    
    // Calculate and verify CRC
    uint32_t calc_crc = Flash_CalculateCRC((uint8_t*)stored_config, 
                                         sizeof(FlashStorage_t) - sizeof(uint32_t));
    if(calc_crc != stored_config->crc) {
        return false;
    }
    
    return true;
}