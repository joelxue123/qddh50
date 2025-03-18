#include "vesc_uart.h"
#include "mc_api.h"
#include "mc_config.h"
#include "mc_interface.h"

/* Static data buffer for responses */
static uint8_t response_buffer[32];

/**
 * @brief Motor status and control parameters
 */
typedef struct {
    /* Position control */
    int32_t position_set;    /**< Commanded position in encoder counts */
    int32_t position_act;    /**< Actual position in encoder counts */
    
    /* Speed control */
    int32_t speed_set;       /**< Commanded speed in RPM */
    int32_t speed_act;       /**< Actual speed in RPM */
    
    /* Current control */
    int32_t current_set;     /**< Commanded current in mA */
    int32_t current_act;     /**< Actual current in mA */
    
    /* Additional status */
    uint16_t temp;           /**< Motor temperature in 0.1°C */
    uint8_t voltage;         /**< Bus voltage in V */
} MotorStatus_t;
/**
 * @brief Pack motor status into response buffer
 */
/**
 * @brief Pack motor status into response buffer
 * @param buffer Output buffer to pack data into
 * @param status Pointer to motor status structure
 * @return Number of bytes packed
 */
static uint16_t PackMotorStatus(uint8_t* buffer, const MotorStatus_t* status)
{
    uint16_t idx = 0;
    
    /* Pack position values */
    buffer[idx++] = (status->position_set >> 24) & 0xFF;
    buffer[idx++] = (status->position_set >> 16) & 0xFF;
    buffer[idx++] = (status->position_set >> 8) & 0xFF;
    buffer[idx++] = status->position_set & 0xFF;
    
    buffer[idx++] = (status->position_act >> 24) & 0xFF;
    buffer[idx++] = (status->position_act >> 16) & 0xFF;
    buffer[idx++] = (status->position_act >> 8) & 0xFF;
    buffer[idx++] = status->position_act & 0xFF;
    
    /* Pack speed values */
    buffer[idx++] = (status->speed_set >> 24) & 0xFF;
    buffer[idx++] = (status->speed_set >> 16) & 0xFF;
    buffer[idx++] = (status->speed_set >> 8) & 0xFF;
    buffer[idx++] = status->speed_set & 0xFF;
    
    buffer[idx++] = (status->speed_act >> 24) & 0xFF;
    buffer[idx++] = (status->speed_act >> 16) & 0xFF;
    buffer[idx++] = (status->speed_act >> 8) & 0xFF;
    buffer[idx++] = status->speed_act & 0xFF;
    
    /* Pack current values */
    buffer[idx++] = (status->current_set >> 24) & 0xFF;
    buffer[idx++] = (status->current_set >> 16) & 0xFF;
    buffer[idx++] = (status->current_set >> 8) & 0xFF;
    buffer[idx++] = status->current_set & 0xFF;
    
    buffer[idx++] = (status->current_act >> 24) & 0xFF;
    buffer[idx++] = (status->current_act >> 16) & 0xFF;
    buffer[idx++] = (status->current_act >> 8) & 0xFF;
    buffer[idx++] = status->current_act & 0xFF;
    
    /* Pack temperature */
    buffer[idx++] = (status->temp >> 8) & 0xFF;
    buffer[idx++] = status->temp & 0xFF;
    
    /* Pack voltage */
    buffer[idx++] = status->voltage;
    
    return idx;
}

/**
 * @brief Get current motor status
 */
static void GetMotorStatus(MotorStatus_t* status)
{
    status->position_set = 0;
    status->position_act = 0;
    /* Get speed in RPM */
    status->speed_set = 1;
    status->speed_act = 1;


    
    /* Get current in mA */
    status->current_set = 2;
    status->current_act = 2;
    
    /* Get duty cycle in 0.1% */
    
    /* Get temperature in 0.1 degrees */
    status->temp = 4;//(uint16_t)(NTC_GetAvTemp_C() * 10.0f);
    
    /* Get bus voltage in V */
    status->voltage = 5;
}

/**
 * @brief Handle VESC commands
 */
void VESC_ExecuteCommand(uint8_t cmd, uint8_t* data, uint16_t len)
{
    switch(cmd)
    {
        case COMM_GET_VALUES:
        {
            /* Prepare motor status */
            MotorStatus_t status;
            GetMotorStatus(&status);
            
            /* Pack data */
            uint16_t resp_len = PackMotorStatus(response_buffer, &status);
            /* Send response */
            VESC_SendPacket(COMM_GET_VALUES, response_buffer, resp_len);
            break;
        }
        
        case COMM_SET_DUTY:
        {
            if (len >= 4)
            {
                /* Extract duty cycle value (0-1000) */
                float duty = *((float*)data);
                duty = (duty < -1.0f) ? -1.0f : (duty > 1.0f) ? 1.0f : duty;
            }
            break;
        }
        
        case COMM_SET_CURRENT:
        {
            if (len >= 4)
            {
                /* Extract current value in A */
                float current = *((float*)data);
                

            }
            break;
        }
        
        case COMM_SET_RPM:
        {
            if (len >= 4)
            {
                /* Extract RPM value */
                int32_t rpm = *((int32_t*)data);
                
                /* Set speed */
            }
            break;
        }
        
        case COMM_ALIVE:
        {
            /* Just send back the same command to acknowledge */
            VESC_SendPacket(COMM_ALIVE, NULL, 0);
            break;
        }
        
        default:
            break;
    }
}
