#include "vesc_uart.h"
#include "mc_api.h"
#include "mc_config.h"
#include "mc_interface.h"
#include <string.h>

/* Global variables */
static uint8_t response_buffer[128];

/* Parameter settings */
static float speed_pid_p = 0.0f;
static float speed_pid_i = 0.0f;
static float speed_pid_d = 0.0f;
static int32_t max_rpm = 10000;
static int32_t max_current = 60;
static float temperature_limit = 85.0f;

/* Forward declarations */
static const ParamDescriptor_t* FindParameter(uint16_t param_id);
static uint16_t PackMotorStatus(uint8_t* buffer, const MotorStatus_t* status);
static void GetMotorStatus(MotorStatus_t* status);

/* Parameter list */
static const ParamDescriptor_t param_list[] = {
    {
        .id = 1,
        .name = "Speed_PID_P",
        .unit = "",
        .type = PARAM_TYPE_FLOAT,
        .access = PARAM_ACCESS_RW,
        .value_ptr = &speed_pid_p,
        .min = 0.0f,
        .max = 100.0f
    },
    {
        .id = 2,
        .name = "Speed_PID_I",
        .unit = "",
        .type = PARAM_TYPE_FLOAT,
        .access = PARAM_ACCESS_RW,
        .value_ptr = &speed_pid_i,
        .min = 0.0f,
        .max = 100.0f
    },
    {
        .id = 3,
        .name = "Speed_PID_D",
        .unit = "",
        .type = PARAM_TYPE_FLOAT,
        .access = PARAM_ACCESS_RW,
        .value_ptr = &speed_pid_d,
        .min = 0.0f,
        .max = 100.0f
    },
    {
        .id = 4,
        .name = "Max_RPM",
        .unit = "RPM",
        .type = PARAM_TYPE_INT32,
        .access = PARAM_ACCESS_RW,
        .value_ptr = &max_rpm,
        .min = 0.0f,
        .max = 100000.0f
    },
    {
        .id = 5,
        .name = "Max_Current",
        .unit = "A",
        .type = PARAM_TYPE_INT32,
        .access = PARAM_ACCESS_RW,
        .value_ptr = &max_current,
        .min = 0.0f,
        .max = 100.0f
    },
    {
        .id = 6,
        .name = "Temp_Limit",
        .unit = "°C",
        .type = PARAM_TYPE_FLOAT,
        .access = PARAM_ACCESS_RW,
        .value_ptr = &temperature_limit,
        .min = 0.0f,
        .max = 150.0f
    }
};

#define NUM_PARAMS (sizeof(param_list) / sizeof(param_list[0]))

/* Parameter System Functions */
static const ParamDescriptor_t* FindParameter(uint16_t param_id) {
    for(uint16_t i = 0; i < NUM_PARAMS; i++) {
        if(param_list[i].id == param_id) {
            return &param_list[i];
        }
    }
    return NULL;
}

void SendParameterList(void) {
    uint16_t idx = 0;
    
    response_buffer[idx++] = NUM_PARAMS & 0xFF;
    response_buffer[idx++] = (NUM_PARAMS >> 8) & 0xFF;
    
    for(uint16_t i = 0; i < NUM_PARAMS; i++) {
        response_buffer[idx++] = param_list[i].id & 0xFF;
        response_buffer[idx++] = (param_list[i].id >> 8) & 0xFF;
    }
    
    VESC_SendPacket(COMM_GET_PARAM_LIST, response_buffer, idx);
}

void SendParameterInfo(uint16_t param_id) {
    const ParamDescriptor_t* param = FindParameter(param_id);
    if(!param) return;
    
    uint16_t idx = 0;
    uint8_t name_len = strlen(param->name);
    uint8_t unit_len = strlen(param->unit);
    
    response_buffer[idx++] = param->id & 0xFF;
    response_buffer[idx++] = (param->id >> 8) & 0xFF;
    response_buffer[idx++] = param->type;
    response_buffer[idx++] = param->access;
    
    response_buffer[idx++] = name_len;
    memcpy(&response_buffer[idx], param->name, name_len);
    idx += name_len;
    
    response_buffer[idx++] = unit_len;
    memcpy(&response_buffer[idx], param->unit, unit_len);
    idx += unit_len;
    
    memcpy(&response_buffer[idx], &param->min, sizeof(float));
    idx += sizeof(float);
    memcpy(&response_buffer[idx], &param->max, sizeof(float));
    idx += sizeof(float);
    
    VESC_SendPacket(COMM_GET_PARAM_INFO, response_buffer, idx);
}

static void PackBytes(uint8_t* buffer, uint16_t* idx, const void* data, size_t size) {
    const uint8_t* src = (const uint8_t*)data;
    size_t i;
    for(i = 0; i < size; i++) {
        buffer[(*idx)++] = src[i];
    }
}

void SendParameterValue(uint16_t param_id) {
    const ParamDescriptor_t* param = FindParameter(param_id);
    if(!param || !(param->access & PARAM_ACCESS_READ)) return;
    
    uint16_t idx = 0;
    
    // Pack parameter ID
    response_buffer[idx++] = param->id & 0xFF;
    response_buffer[idx++] = (param->id >> 8) & 0xFF;
    
    // Pack value
    switch(param->type) {
        case PARAM_TYPE_INT8:
        case PARAM_TYPE_UINT8:
            PackBytes(response_buffer, &idx, param->value_ptr, 1);
            break;
        case PARAM_TYPE_INT16:
        case PARAM_TYPE_UINT16:
            PackBytes(response_buffer, &idx, param->value_ptr, 2);
            break;
        case PARAM_TYPE_INT32:
        case PARAM_TYPE_UINT32:
        case PARAM_TYPE_FLOAT:
            PackBytes(response_buffer, &idx, param->value_ptr, 4);
            break;
    }
    VESC_SendPacket(COMM_GET_PARAM, response_buffer, idx);
}

bool HandleParameterSet(uint16_t param_id, uint8_t* data, uint16_t len) {
    const ParamDescriptor_t* param = FindParameter(param_id);
    if(!param || !(param->access & PARAM_ACCESS_WRITE)) return false;
    
    uint8_t expected_len = 0;
    switch(param->type) {
        case PARAM_TYPE_INT8:
        case PARAM_TYPE_UINT8:
            expected_len = 1;
            break;
        case PARAM_TYPE_INT16:
        case PARAM_TYPE_UINT16:
            expected_len = 2;
            break;
        case PARAM_TYPE_INT32:
        case PARAM_TYPE_UINT32:
        case PARAM_TYPE_FLOAT:
            expected_len = 4;
            break;
    }
    
    if(len < expected_len) return false;
    
    float value = 0;
    switch(param->type) {
        case PARAM_TYPE_INT8:
            value = (float)(*(int8_t*)data);
            break;
        case PARAM_TYPE_UINT8:
            value = (float)(*(uint8_t*)data);
            break;
        case PARAM_TYPE_INT16:
            value = (float)(*(int16_t*)data);
            break;
        case PARAM_TYPE_UINT16:
            value = (float)(*(uint16_t*)data);
            break;
        case PARAM_TYPE_INT32:
            value = (float)(*(int32_t*)data);
            break;
        case PARAM_TYPE_UINT32:
            value = (float)(*(uint32_t*)data);
            break;
        case PARAM_TYPE_FLOAT:
            value = *(float*)data;
            break;
    }
    
    if(value < param->min || value > param->max) return false;
    
    memcpy(param->value_ptr, data, expected_len);
    return true;
}

/* Motor Status Functions */
static uint16_t PackMotorStatus(uint8_t* buffer, const MotorStatus_t* status) {
    uint16_t idx = 0;
    
    buffer[idx++] = (status->position_set >> 24) & 0xFF;
    buffer[idx++] = (status->position_set >> 16) & 0xFF;
    buffer[idx++] = (status->position_set >> 8) & 0xFF;
    buffer[idx++] = status->position_set & 0xFF;
    
    buffer[idx++] = (status->position_act >> 24) & 0xFF;
    buffer[idx++] = (status->position_act >> 16) & 0xFF;
    buffer[idx++] = (status->position_act >> 8) & 0xFF;
    buffer[idx++] = status->position_act & 0xFF;
    
    buffer[idx++] = (status->speed_set >> 24) & 0xFF;
    buffer[idx++] = (status->speed_set >> 16) & 0xFF;
    buffer[idx++] = (status->speed_set >> 8) & 0xFF;
    buffer[idx++] = status->speed_set & 0xFF;
    
    buffer[idx++] = (status->speed_act >> 24) & 0xFF;
    buffer[idx++] = (status->speed_act >> 16) & 0xFF;
    buffer[idx++] = (status->speed_act >> 8) & 0xFF;
    buffer[idx++] = status->speed_act & 0xFF;
    
    buffer[idx++] = (status->current_set >> 24) & 0xFF;
    buffer[idx++] = (status->current_set >> 16) & 0xFF;
    buffer[idx++] = (status->current_set >> 8) & 0xFF;
    buffer[idx++] = status->current_set & 0xFF;
    
    buffer[idx++] = (status->current_act >> 24) & 0xFF;
    buffer[idx++] = (status->current_act >> 16) & 0xFF;
    buffer[idx++] = (status->current_act >> 8) & 0xFF;
    buffer[idx++] = status->current_act & 0xFF;
    
    buffer[idx++] = (status->temp >> 8) & 0xFF;
    buffer[idx++] = status->temp & 0xFF;
    
    buffer[idx++] = status->voltage;
    
    return idx;
}

static void GetMotorStatus(MotorStatus_t* status) {
    status->position_set = 0;
    status->position_act = 0;
    status->speed_set = 1;
    status->speed_act = 1;
    status->current_set = 2;
    status->current_act = 2;
    status->temp = 4;
    status->voltage = 5;
}

void VESC_ExecuteCommand(uint8_t cmd, uint8_t* data, uint16_t len) {
    switch(cmd) {
        case COMM_GET_PARAM_LIST:
            SendParameterList();
            break;
            
        case COMM_GET_PARAM_INFO:
            if(len >= 2) {
                uint16_t param_id = (data[1] << 8) | data[0];
                SendParameterInfo(param_id);
            }
            break;
            
        case COMM_GET_PARAM:
            if(len >= 2) {
                uint16_t param_id = (data[1] << 8) | data[0];
                SendParameterValue(param_id);
            }
            break;
            
        case COMM_SET_PARAM:
            if(len >= 3) {
                uint16_t param_id = (data[1] << 8) | data[0];
                if(HandleParameterSet(param_id, &data[2], len-2)) {
                    SendParameterValue(param_id);
                }
            }
            break;
            
        case COMM_SAVE_PARAMS:
            // TODO: Implement parameter saving to flash
            break;
            
        case COMM_GET_VALUES: {
            MotorStatus_t status;
            GetMotorStatus(&status);
            uint16_t resp_len = PackMotorStatus(response_buffer, &status);
            VESC_SendPacket(COMM_GET_VALUES, response_buffer, resp_len);
            break;
        }
        
        case COMM_SET_DUTY: {
            if (len >= 4) {
                float duty = *((float*)data);
                duty = (duty < -1.0f) ? -1.0f : (duty > 1.0f) ? 1.0f : duty;
            }
            break;
        }
        
        case COMM_SET_CURRENT: {
            if (len >= 4) {
                float current = *((float*)data);
            }
            break;
        }
        
        case COMM_SET_RPM: {
            if (len >= 4) {
                int32_t rpm = *((int32_t*)data);
            }
            break;
        }
        
        case COMM_ALIVE:
            VESC_SendPacket(COMM_ALIVE, NULL, 0);
            break;
        
        default:
            break;
    }
}
