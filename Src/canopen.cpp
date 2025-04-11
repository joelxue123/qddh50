#include "canopen.hpp"
#include "main_.hpp"



// PDO mapping configuration
static PDO_Map_t scope_map[6] = {
    {{0x4000, 0}},  // CH1: Current Position
    {{0x4001, 0}},  // CH2: Current Velocity 
    {{0x4002, 0}},  // CH3: Current Current
    {{0, 0}},       // CH4: Unmapped
    {{0, 0}},       // CH5: Unmapped 
    {{0, 0}}        // CH6: Unmapped
};

// Object Dictionary
static const OD_Entry_t OD_List[] = {
    // Device Info (0x1000-0x1FFF)
    {0x1000, 0, OD_INT16_RO, &board_config.magic},
    {0x1001, 0, OD_INT16_RO, &board_config.hw_version},
    {0x1002, 0, OD_INT16_RW, &axis.config_.can_node_id},
    
    // Motor Parameters (0x2000-0x2FFF)
    {0x2000, 0, OD_INT32_RW, &axis.motor_.config_.phase_inductance},
    {0x2001, 0, OD_INT32_RW, &axis.motor_.config_.phase_resistance},
    
    // Main Encoder Parameters
    {0x2010, 0, OD_INT32_RW, &motor_params.main_encoder_type},
    {0x2011, 0, OD_INT32_RW, &motor_params.main_encoder_lines},
    {0x2012, 0, OD_INT32_RW, &motor_params.main_encoder_offset},
    {0x2013, 0, OD_INT32_RW, &motor_params.main_encoder_dir},
    
    // Sub Encoder Parameters  
    {0x2020, 0, OD_INT32_RW, &motor_params.sub_encoder_type},
    {0x2021, 0, OD_INT32_RW, &motor_params.sub_encoder_lines},
    {0x2022, 0, OD_INT32_RW, &motor_params.sub_encoder_offset},
    {0x2023, 0, OD_INT32_RW, &motor_params.sub_encoder_dir},
    
    // PID Parameters
    {0x2030, 0, OD_INT32_RW, &motor_params.pos_kp},
    {0x2031, 0, OD_INT32_RW, &motor_params.pos_kd},
    {0x2032, 0, OD_INT32_RW, &motor_params.vel_kp},
    {0x2033, 0, OD_INT32_RW, &motor_params.vel_ki},
    {0x2034, 0, OD_INT32_RW, &motor_params.cur_kp},
    {0x2035, 0, OD_INT32_RW, &motor_params.cur_ki},
    
    // Limit Parameters
    {0x2040, 0, OD_INT32_RW, &motor_params.max_current},
    {0x2041, 0, OD_INT32_RW, &motor_params.max_speed},
    {0x2042, 0, OD_INT32_RW, &motor_params.max_position},
    {0x2043, 0, OD_INT32_RW, &motor_params.min_position},
    {0x2044, 0, OD_INT32_RW, &motor_params.ctrl_mode},
    
    // Runtime Parameters (0x3000-0x3FFF)
    // Position Related
    {0x3000, 0, OD_INT32_RW, (void*)&motor_runtime.input_pos},
    {0x3001, 0, OD_INT16_RO, (void*)&motor_runtime.profile_pos},
    {0x3002, 0, OD_INT16_RO, (void*)&motor_runtime.des_pos},
    {0x3003, 0, OD_INT16_RO, (void*)&motor_runtime.current_pos},
    
    // Velocity Related
    {0x3010, 0, OD_INT16_RW, (void*)&motor_runtime.input_vel},
    {0x3011, 0, OD_INT16_RO, (void*)&motor_runtime.profile_vel},
    {0x3012, 0, OD_INT16_RO, (void*)&motor_runtime.des_vel},
    {0x3013, 0, OD_INT16_RO, (void*)&motor_runtime.current_vel},
    
    // Current Related
    {0x3020, 0, OD_INT16_RW, (void*)&motor_runtime.input_cur},
    {0x3021, 0, OD_INT16_RO, (void*)&motor_runtime.profile_cur},
    {0x3022, 0, OD_INT16_RO, (void*)&motor_runtime.des_cur},
    {0x3023, 0, OD_INT16_RO, (void*)&motor_runtime.current_cur},
    
    // Status
    {0x3030, 0, OD_INT16_RO, (void*)&motor_runtime.is_enabled},
    {0x3031, 0, OD_INT16_RO, (void*)&motor_runtime.is_running},
    {0x3032, 0, OD_INT16_RO, (void*)&motor_runtime.temperatrue},
    {0x3033, 0, OD_INT16_RO, (void*)&motor_runtime.error_code},
    
    // PDO Mapping Configuration (0x6000)
    {0x6000, 6, OD_INT32_RW, &scope_map[0]},
    

};
#define OD_ENTRIES_COUNT (sizeof(OD_List)/sizeof(OD_Entry_t))

// Find entry in object dictionary
const OD_Entry_t* OD_FindEntry(uint16_t index, uint8_t subindex) {
    for(int i = 0; i < OD_ENTRIES_COUNT; i++) {
        if(OD_List[i].index == index) {
            return &OD_List[i];
        }
    }
    return NULL;
}

int32_t OD_Read(uint16_t index, uint16_t subindex, uint16_t* length) {
    // Initialize length to 0
    if(length) *length = 0;
    
    // Find entry and validate access rights
    const OD_Entry_t* entry = OD_FindEntry(index, subindex);
    if(!entry || !(entry->type_access & OD_ACCESS_RO)) {
        return 0;
    }
    
    // Handle array access
    uint8_t array_index = (entry->subindex > 0) ? subindex : 0;
    if(array_index >= entry->subindex && entry->subindex > 0) {
        return 0;
    }
    
    // Read value based on data type
    if(entry->type_access & OD_TYPE_INT32) {
        if(length) *length = 4;
        return ((int32_t*)entry->data)[array_index];
    } else {
        if(length) *length = 2;
        return ((int16_t*)entry->data)[array_index];
    }
}

// Write value to object dictionary (also update)
bool OD_Write(uint16_t index, uint16_t subindex, int32_t value) {
    const OD_Entry_t* entry = OD_FindEntry(index, subindex);
    if(!entry || !(entry->type_access & OD_ACCESS_WO)) {
        return false;
    }
    
    // If entry is array type (subindex > 0), use subindex as array index
    uint8_t array_index = (entry->subindex > 0) ? subindex : 0;
    if(array_index >= entry->subindex && entry->subindex > 0) {
        return false;
    }
    
    // Write based on data type
    if(entry->type_access & OD_TYPE_INT32) {
        ((int32_t*)entry->data)[array_index] = value;
    } else {
        ((int16_t*)entry->data)[array_index] = (int16_t)value;
    }
    
    return true;
}



int32_t PDO_Read(uint8_t channel, uint16_t *length) {
    // Initialize length to 0
    if(length) *length = 0;
    
    // Validate channel
    if(channel >= 6) {
        return 0;
    }
    
    // Get mapping configuration
    PDO_Map_t map = scope_map[channel];
    if(map.raw == 0) {
        return 0;  // Channel not mapped
    }
    
    // Get source parameter directly
    const OD_Entry_t* entry = OD_FindEntry(map.fields.index, map.fields.subindex);
    if(!entry || !(entry->type_access & OD_ACCESS_RO)) {
        return 0;
    }
    
    // Read data with length information
    uint16_t data_length;
    int32_t data = OD_Read(map.fields.index, map.fields.subindex, &data_length);
    
    // Update length if pointer provided
    if(length) *length = data_length;
    
    return data;
}