#ifndef CONFIG_SYSTEM_H
#define CONFIG_SYSTEM_H

#include <stdint.h>
#include <stdbool.h>

#ifdef __cplusplus
extern "C" {
#endif

/* Flash configuration area definitions */
#define FLASH_CONFIG_START_PAGE   60                  // 使用倒数第4页开始
#define FLASH_CONFIG_PAGES        2                   // 使用2页存储配置
#define CONFIG_FLASH_ADDR         (FLASH_BASE + (FLASH_CONFIG_START_PAGE * FLASH_PAGE_SIZE))  // 0x0801E000
#define CONFIG_FLASH_SIZE         (FLASH_CONFIG_PAGES * FLASH_PAGE_SIZE)                      // 0x1000 (4KB)


/* 配置系统魔数和版本 */
#define CONFIG_MAGIC    0xABCD1234
#define CONFIG_VERSION  0x0001

/* 配置区域定义 */
typedef enum {
    CONFIG_AREA_SYSTEM = 0,
    CONFIG_AREA_MOTOR,
    CONFIG_AREA_CAN,
    CONFIG_AREA_ENCODER,
    CONFIG_AREA_CONTROLLER,
    CONFIG_AREA_LIMITS,
    CONFIG_AREA_MAX
} ConfigArea_t;

/* 系统配置结构 */
typedef struct {
    struct {
        uint32_t magic;
        uint32_t version;
        uint32_t crc;
    } header;
    
    // 系统配置
    struct {
        uint32_t can_id;
        uint32_t heartbeat_rate_ms;
        uint8_t  debug_level;
    } system_config;
    
    // 电机配置
    struct {
        float current_limit;
        float voltage_limit;
        float temp_limit;
        uint16_t pole_pairs;
    } motor_config;
    
    // CAN配置
    struct {
        uint32_t baudrate;
        bool enabled;
    } can_config;
    
    // 编码器配置
    struct {
        uint16_t cpr;
        uint8_t mode;
        bool use_index;
        float index_offset;
    } encoder_config;
    
    // 控制器配置
    struct {
        float speed_pid_p;
        float speed_pid_i;
        float speed_pid_d;
        float pos_pid_p;
        float pos_pid_i;
        float pos_pid_d;
    } controller_config;
    
    // 限制配置
    struct {
        int32_t max_rpm;
        float max_current;
        float max_duty;
        float max_temp;
    } limits_config;
    
} ConfigStorage_t;

/* 配置操作函数声明 */
bool Config_Init(void);
bool Config_SaveArea(ConfigArea_t area);
bool Config_LoadArea(ConfigArea_t area);
bool Config_SaveAll(void);
bool Config_LoadDefault(void);
const void* Config_GetAreaPtr(ConfigArea_t area);
uint32_t Config_GetAreaSize(ConfigArea_t area);
bool Config_LoadAllAreas(void);

#ifdef __cplusplus
}
#endif

#endif /* CONFIG_SYSTEM_H */
