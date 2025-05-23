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
    {0x1003, 0, OD_INT16_RW, &system_stats_.min_heap_space},
    {0x1004, 0, OD_INT16_RW, &system_stats_.stack_usage_mediumFrequencyHandle},
    {0x1005, 0, OD_INT16_RW, &system_stats_.stack_usage_safetyHandle},
    {0x1006, 0, OD_INT16_RW, &system_stats_.stack_usage_uart_thread},
    {0x1007, 0, OD_INT16_RW, &system_stats_.stack_usage_analog_thread},
    {0x1008, 0, OD_INT16_RW, &system_stats_.stack_usage_can},
    {0x1009, 0, OD_INT16_RW, (void*)&system_stats_.msp_used},

    
    // Motor Parameters (0x2000-0x2FFF)
    {0x2000, 0, OD_REAL32_RW, &axis.motor_.config_.phase_inductance},
    {0x2001, 0, OD_REAL32_RW, &axis.motor_.config_.phase_resistance},
    {0x2002, 0, OD_REAL32_RW, &axis.motor_.config_.current_control_bandwidth},
    {0x2003, 0, OD_INT16_RW, &axis.motor_.config_.pole_pairs},
    {0x2004, 0, OD_INT16_RW, &axis.motor_.config_.gear_ratio},
    {0x2005, 0, OD_REAL32_RW, &axis.motor_.config_.torque_lim},
    {0x2006, 0, OD_REAL32_RW, &axis.motor_.config_.current_lim},
    {0x2007, 0, OD_REAL32_RW, &axis.motor_.config_.torque_constant},
    {0x2008, 0, OD_REAL32_RW, &axis.motor_.config_.motor_type},
    {0x2009, 0, OD_INT16_RW, &axis.motor_.config_.pre_calibrated},
    {0x200a, 0, OD_REAL32_RW, &axis.motor_.config_.calibration_current},
    {0x200b, 0, OD_REAL32_RW, &axis.motor_.config_.resistance_calib_max_voltage},
    {0x200c, 0, OD_REAL32_RW, &axis.motor_.config_.peak_current},
    {0x200d, 0, OD_REAL32_RW, &axis.motor_.config_.nominal_current},

    
    // Main Encoder Parameters
    {0x2020, 0, OD_INT32_RW, &axis.encoder_.config_.cpr},
    {0x2021, 0, OD_INT32_RW, &axis.encoder_.config_.offset},
    {0x2022, 0, OD_REAL32_RW, &axis.encoder_.config_.offset_float},
    {0x2023, 0, OD_INT16_RW, &axis.encoder_.config_.pre_calibrated},
    {0x2024, 0, OD_INT16_RW, &axis.encoder_.config_.is_high_speed_encode_query_enabled},
    
    
    // Sub Encoder Parameters  
    {0x2026, 0, OD_INT32_RW, &axis.encoder_.config_.GearboxOutputEncoder_cpr},
    {0x2027, 0, OD_INT32_RW, &axis.encoder_.config_.Gearoffset},
    {0x2028, 0, OD_INT16_RW, &axis.is_gear_position_used_},


    
    // PID Parameters
    {0x2030, 0, OD_REAL32_RW, &axis.controller_.config_.kp_pu_q12_},
    {0x2031, 0, OD_REAL32_RW, &axis.controller_.config_.kd_pu_q9_},
    {0x2032, 0, OD_REAL32_RW, &axis.controller_.config_.pos_gain},
    {0x2033, 0, OD_REAL32_RW, &axis.controller_.config_.vel_gain},
    {0x2034, 0, OD_REAL32_RW, &axis.controller_.config_.vel_integrator_gain},


    // temperature Parameters

    {0x2040, 0, OD_REAL32_RW, &axis.fet_thermistor_.temperature_},
    {0x2041, 0, OD_REAL32_RW, &axis.fet_thermistor_.aux_temperature_},
    {0x2042, 0, OD_REAL32_RW, &axis.fet_thermistor_.config_.temp_limit_lower},
    {0x2043, 0, OD_REAL32_RW, &axis.fet_thermistor_.config_.temp_limit_upper},
  
    // can parameter
    {0x2050, 0, OD_INT16_RW, &axis.config_.enable_watchdog},


    // Runtime Parameters (0x3000-0x3FFF)
    // Position Related
    {0x3000, 0, OD_REAL32_RW, (void*)&axis.controller_.config_.pos_gain},
    {0x3001, 0, OD_REAL32_RW, (void*)&axis.controller_.input_pos_},
    {0x3002, 0, OD_REAL32_RW, (void*)&axis.encoder_.gearboxpos_},



    // Velocity Related
    {0x3010, 0, OD_REAL32_RW, (void*)&axis.controller_.config_.vel_gain},
    {0x3011, 0, OD_REAL32_RW, (void*)&axis.controller_.config_.vel_integrator_gain},
    {0x3012, 0, OD_REAL32_RW, (void*)&axis.controller_.config_.vel_limit},
    {0x3014, 0, OD_REAL32_RW, (void*)&axis.controller_.input_vel_},
    {0x3015, 0, OD_REAL32_RW, (void*)&axis.encoder_.vel_estimate_},
    {0x3016, 0, OD_REAL32_RW, (void*)&axis.encoder_.gear_vel_estimate_},


    // current Related
    {0x3020, 0, OD_REAL32_RW, (void*)&axis.controller_.input_torque_},
    {0x3022, 0, OD_INT16_RO, (void*)&axis.motor_.current_control_.q_Idq_setpoint_[0]},
    {0x3023, 0, OD_INT16_RO, (void*)&axis.motor_.current_control_.q_Idq_setpoint_[1]},
    {0x3024, 0, OD_INT16_RO, (void*)&axis.motor_.current_control_.q_iq_measured_},
    {0x3025, 0, OD_INT16_RO, (void*)&axis.motor_.current_control_.q_id_measured_},

    //open loop
    {0x3030, 0, OD_REAL32_RW, (void*)&axis.config_.general_lockin.current},
    {0x3031, 0, OD_REAL32_RW, (void*)&axis.config_.general_lockin.accel},
    {0x3032, 0, OD_REAL32_RW, (void*)&axis.config_.general_lockin.vel},
    
    
    // Status
    {0x3040, 0, OD_REAL32_RW, (void*)&axis.error_},
    {0x3041, 0, OD_REAL32_RW, (void*)&axis.motor_.error_},
    {0x3042, 0, OD_REAL32_RW, (void*)&axis.encoder_.error_},

    
    // Current-Torque Linearity Parameters (0x4000-0x4003)
    {0x4000, NUM_LINEARITY_SEG, OD_REAL32_RW, axis.motor_.config_.TORQUE_LINEARITY_POSITIVE},
    {0x4001, NUM_LINEARITY_SEG, OD_REAL32_RW, axis.motor_.config_.TORQUE_LINEARITY_NEGATIVE},
    {0x4002, NUM_LINEARITY_SEG, OD_REAL32_RW, axis.motor_.config_.CURRENT2TORQUE_COEFF_POSITIVE},
    {0x4003, NUM_LINEARITY_SEG, OD_REAL32_RW, axis.motor_.config_.CURRENT2TORQUE_COEFF_NEGATIVE},



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
    if((entry->type_access & OD_TYPE_INT32)) {
        if(length) *length = 4;
        return ((int32_t*)entry->data)[array_index];
    } 
    else if((entry->type_access & OD_TYPE_FLOAT))
    {
        if(length) *length = 4;
        return ((int32_t*)entry->data)[array_index];
    }
    else {
        if(length) *length = 2;
        return ((int16_t*)entry->data)[array_index];
    }
}

// Write value to object dictionary (also update)
bool OD_Write(uint16_t index, uint16_t subindex, void *value) {
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
        ((int32_t*)entry->data)[array_index] = *(int32_t*)value;
    } 
    else if(entry->type_access & OD_TYPE_FLOAT) {
        ((float*)entry->data)[array_index] = *(float*)value;
    }
    else {
        ((int16_t*)entry->data)[array_index] = *(int16_t*)value;
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



void canopen_cmd_process( int16_t index, int16_t sub_index, void* value)
{
    int16_t cmd  = index;
    int16_t data = *(int16_t*)value;

    switch (cmd)
    {
    case 0x2028:
        axis.is_gear_position_used_ = data;
        axis.set_encos_position_src(axis.is_gear_position_used_);
        /* code */
        break;
    
    default:
        break;
    }
}