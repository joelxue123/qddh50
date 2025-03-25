

#include <string.h>

#include "stm32g4xx_hal.h"
#include "config_system.hpp"

static void Config_LoadAreaDefaults(ConfigArea_t area);

// Update the flash error codes to match HAL definitions
typedef enum {
    FLASH_OK = 0,
    FLASH_ERROR_ALIGN ,  // Alignment error
    FLASH_ERROR_OPT      // Option error
} FlashStatus_t;

// Update the Flash_Write function
FlashStatus_t Flash_Write(uint32_t address, const void* data, uint32_t size) 
{
    // Check alignment (STM32G4 requires 8-byte alignment)
    if ((address % 8) != 0) {
        return FLASH_ERROR_ALIGN;
    }
    
    HAL_FLASH_Unlock();

    const uint64_t* src = (const uint64_t*)data;
    uint32_t remaining = size;
    uint32_t dest = address;

    // Write full double words (8 bytes)
    while (remaining >= 8) {
        if (HAL_FLASH_Program(FLASH_TYPEPROGRAM_DOUBLEWORD, dest, *src) != HAL_OK) {
            HAL_FLASH_Lock();
            return FLASH_ERROR_OPT;
        }
        src++;
        dest += 8;
        remaining -= 8;
    }
    // Handle remaining bytes if any
    if (remaining > 0) {
        uint64_t last_word = 0;
        memcpy(&last_word, src, remaining);
        if (HAL_FLASH_Program(FLASH_TYPEPROGRAM_DOUBLEWORD, dest, last_word) != HAL_OK) {
            HAL_FLASH_Lock();
            return FLASH_ERROR_OPT;
        }
    }

    HAL_FLASH_Lock();
    return FLASH_OK;
}

// Update Flash_Erase function
FlashStatus_t Flash_Erase(uint32_t address, uint32_t size)
{
    uint32_t page = (address - FLASH_BASE) / FLASH_PAGE_SIZE;
    uint32_t num_pages = (size + FLASH_PAGE_SIZE - 1) / FLASH_PAGE_SIZE;
    
    HAL_FLASH_Unlock();

    FLASH_EraseInitTypeDef erase_init = {
        .TypeErase = FLASH_TYPEERASE_PAGES,
        .Banks = FLASH_BANK_1,
        .Page = page,
        .NbPages = num_pages
    };

    uint32_t page_error;
    HAL_StatusTypeDef status = HAL_FLASHEx_Erase(&erase_init, &page_error);
    
    HAL_FLASH_Lock();
    
    return (status == HAL_OK) ? FLASH_OK : FLASH_ERROR_OPT;
}



/* 全局配置存储 */
static ConfigStorage_t g_config;
static bool g_config_initialized = false;

/* CRC计算函数 */
static uint32_t Calculate_CRC(const void* data, uint32_t size)
{
    uint32_t crc = 0;
    const uint8_t* bytes = (const uint8_t*)data;
    
    for(uint32_t i = 0; i < size; i++) {
        crc = crc ^ bytes[i];
        for(int j = 0; j < 8; j++) {
            if(crc & 1) crc = (crc >> 1) ^ 0xA001;
            else crc = crc >> 1;
        }
    }
    return crc;
}

/* 获取配置区域指针和大小 */
const void* Config_GetAreaPtr(ConfigArea_t area)
{
    switch(area) {
        case CONFIG_AREA_SYSTEM:
            return &g_config.system_config;
        case CONFIG_AREA_MOTOR:
            return &g_config.motor_config;
        case CONFIG_AREA_CAN:
            return &g_config.can_config;
        case CONFIG_AREA_ENCODER:
            return &g_config.encoder_config;
        case CONFIG_AREA_CONTROLLER:
            return &g_config.controller_config;
        case CONFIG_AREA_LIMITS:
            return &g_config.limits_config;
        default:
            return NULL;
    }
}

uint32_t Config_GetAreaSize(ConfigArea_t area)
{
    switch(area) {
        case CONFIG_AREA_SYSTEM:
            return sizeof(g_config.system_config);
        case CONFIG_AREA_MOTOR:
            return sizeof(g_config.motor_config);
        case CONFIG_AREA_CAN:
            return sizeof(g_config.can_config);
        case CONFIG_AREA_ENCODER:
            return sizeof(g_config.encoder_config);
        case CONFIG_AREA_CONTROLLER:
            return sizeof(g_config.controller_config);
        case CONFIG_AREA_LIMITS:
            return sizeof(g_config.limits_config);
        default:
            return 0;
    }
}

/* 保存指定配置区域 */
bool Config_SaveArea(ConfigArea_t area)
{
    if(static_cast<int>(area) >= static_cast<int>(CONFIG_AREA_MAX)) return false;
    
    const void* data = Config_GetAreaPtr(area);
    uint32_t size = Config_GetAreaSize(area);
    uint32_t offset = 0;
    
    // 计算区域在Flash中的偏移
    for(int i = 0; i < static_cast<int>(area); i++) {
        offset += Config_GetAreaSize(static_cast<ConfigArea_t>(i));
    }
    
    // 写入Flash
    if(Flash_Write(CONFIG_FLASH_ADDR + offset, data, size) != FLASH_OK) {
        return false;
    }
    
    return true;
}

/* 加载指定配置区域 */
bool Config_LoadArea(ConfigArea_t area)
{
    if(static_cast<int>(area) >= static_cast<int>(CONFIG_AREA_MAX)) return false;
    
    void* data = (void*)Config_GetAreaPtr(area);
    uint32_t size = Config_GetAreaSize(area);
    uint32_t offset = 0;
    
    // 计算区域在Flash中的偏移
    for(int i = 0; i < static_cast<int>(area); i++) {
        offset += Config_GetAreaSize(static_cast<ConfigArea_t>(i));
    }
    
    // 从Flash读取
    memcpy(data, (void*)(CONFIG_FLASH_ADDR + offset), size);
    
    return true;
}

/* 初始化配置系统 */
bool Config_Init(void)
{
    if(g_config_initialized) return true;
    
    // 尝试从Flash加载配置
    ConfigStorage_t* flash_config = (ConfigStorage_t*)CONFIG_FLASH_ADDR;
    
    if(flash_config->header.magic == CONFIG_MAGIC &&
       flash_config->header.version == CONFIG_VERSION) {
        // 验证CRC
        uint32_t crc = Calculate_CRC(&flash_config->system_config,
                                   sizeof(ConfigStorage_t) - sizeof(flash_config->header));
        
        if(crc == flash_config->header.crc) {
            // 配置有效,加载
            memcpy(&g_config, flash_config, sizeof(ConfigStorage_t));
            g_config_initialized = true;
            return true;
        }
    }
    
    // 配置无效,加载默认值
    return Config_LoadDefault();
}

/* 保存所有配置 */
bool Config_SaveAll(void)
{
    // 更新头部信息
    g_config.header.magic = CONFIG_MAGIC;
    g_config.header.version = CONFIG_VERSION;
    g_config.header.crc = Calculate_CRC(&g_config.system_config,
                                      sizeof(ConfigStorage_t) - sizeof(g_config.header));
    
    // 擦除配置扇区
    if(Flash_Erase(CONFIG_FLASH_ADDR, CONFIG_FLASH_SIZE) != FLASH_OK) {
        return false;
    }
    
    // 写入整个配置
    if(Flash_Write(CONFIG_FLASH_ADDR, &g_config, sizeof(ConfigStorage_t)) != FLASH_OK) {
        return false;
    }
    
    return true;
}

/* 加载默认配置 */
bool Config_LoadDefault(void)
{
    memset(&g_config, 0, sizeof(ConfigStorage_t));
    
    // 设置默认值
    g_config.system_config.can_id = 1;
    g_config.system_config.heartbeat_rate_ms = 1000;
    g_config.system_config.debug_level = 1;
    
    g_config.motor_config.current_limit = 60.0f;
    g_config.motor_config.voltage_limit = 24.0f;
    g_config.motor_config.temp_limit = 85.0f;
    g_config.motor_config.pole_pairs = 7;
    
    // ... 设置其他默认值 ...
    
    g_config_initialized = true;
    return true;
}

/* 加载所有配置区域 */
bool Config_LoadAllAreas(void)
{
    bool all_success = true;
    
    // 检查是否已初始化
    if (!g_config_initialized) {
        if (!Config_Init()) {
            return false;
        }
    }
    
    // 遍历所有配置区域
    for (int i = static_cast<int>(CONFIG_AREA_SYSTEM); i < static_cast<int>(CONFIG_AREA_MAX); i++) {
        ConfigArea_t area = static_cast<ConfigArea_t>(i);
        // 获取区域信息
        void* data = (void*)Config_GetAreaPtr(area);
        uint32_t size = Config_GetAreaSize(area);
        uint32_t offset = 0;
        
        if (!data || size == 0) {
            all_success = false;
            continue;
        }
        
        // 计算Flash中的偏移量
        for (int j = 0; j < i; j++) {
            offset += Config_GetAreaSize(static_cast<ConfigArea_t>(j));
        }
        
        // 从Flash读取数据
        const uint8_t* src = (const uint8_t*)(CONFIG_FLASH_ADDR + offset);
        
        // 验证区域CRC
        uint32_t stored_crc = *(uint32_t*)(src + size - sizeof(uint32_t));
        uint32_t calc_crc = Calculate_CRC(src, size - sizeof(uint32_t));
        
        if (calc_crc != stored_crc) {
            // CRC校验失败，加载默认值
            Config_LoadAreaDefaults(area);
            all_success = false;
            continue;
        }
        
        // 复制数据到RAM
        memcpy(data, src, size - sizeof(uint32_t));
    }
    
    return all_success;
}

/* 加载区域默认值 */
static void Config_LoadAreaDefaults(ConfigArea_t area)
{
    switch(area) {
        case CONFIG_AREA_SYSTEM:
            g_config.system_config.can_id = 1;
            g_config.system_config.heartbeat_rate_ms = 1000;
            g_config.system_config.debug_level = 1;
            break;
            
        case CONFIG_AREA_MOTOR:
            g_config.motor_config.current_limit = 60.0f;
            g_config.motor_config.voltage_limit = 24.0f;
            g_config.motor_config.temp_limit = 85.0f;
            g_config.motor_config.pole_pairs = 7;
            break;
            
        case CONFIG_AREA_CAN:
            g_config.can_config.baudrate = 1000000;
            g_config.can_config.enabled = true;
            break;
            
        case CONFIG_AREA_ENCODER:
            g_config.encoder_config.cpr = 4096;
            g_config.encoder_config.mode = 0;
            g_config.encoder_config.use_index = false;
            g_config.encoder_config.index_offset = 0.0f;
            break;
            
        case CONFIG_AREA_CONTROLLER:
            g_config.controller_config.speed_pid_p = 0.1f;
            g_config.controller_config.speed_pid_i = 0.01f;
            g_config.controller_config.speed_pid_d = 0.0f;
            g_config.controller_config.pos_pid_p = 1.0f;
            g_config.controller_config.pos_pid_i = 0.0f;
            g_config.controller_config.pos_pid_d = 0.0f;
            break;
            
        case CONFIG_AREA_LIMITS:
            g_config.limits_config.max_rpm = 3000;
            g_config.limits_config.max_current = 60.0f;
            g_config.limits_config.max_duty = 0.95f;
            g_config.limits_config.max_temp = 85.0f;
            break;
            
        default:
            break;
    }
}
