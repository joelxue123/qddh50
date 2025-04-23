#ifndef __CANOPEN_H
#define __CANOPEN_H

#include <stdint.h>
#include <stdbool.h>

// Data type definitions (bits 4-5)
#define OD_TYPE_INT16    0x10    // int16_t type
#define OD_TYPE_INT32    0x20    // int32_t type
#define OD_TYPE_FLOAT    0x40    // float type
#define OD_TYPE_MASK     0xF0    // Type mask

// Access rights (bits 0-1)
#define OD_ACCESS_RO     0x01    // Read Only
#define OD_ACCESS_WO     0x02    // Write Only
#define OD_ACCESS_RW     0x03    // Read/Write
#define OD_ACCESS_MASK   0x03    // Access mask

// Combined type and access
#define OD_INT16_RO      (OD_TYPE_INT16 | OD_ACCESS_RO)
#define OD_INT16_WO      (OD_TYPE_INT16 | OD_ACCESS_WO)
#define OD_INT16_RW      (OD_TYPE_INT16 | OD_ACCESS_RW)
#define OD_INT32_RO      (OD_TYPE_INT32 | OD_ACCESS_RO)
#define OD_INT32_WO      (OD_TYPE_INT32 | OD_ACCESS_WO)
#define OD_INT32_RW      (OD_TYPE_INT32 | OD_ACCESS_RW)
#define OD_REAL32_RO     (OD_TYPE_FLOAT | OD_ACCESS_RO)
#define OD_REAL32_WO     (OD_TYPE_FLOAT | OD_ACCESS_WO)
#define OD_REAL32_RW     (OD_TYPE_FLOAT | OD_ACCESS_RW)



// PDO Mapping Entry
typedef union {
    struct {
        uint16_t index;      // Source parameter index
        uint16_t subindex;   // Source parameter subindex
    }fields;
    uint32_t raw;           // Raw 32-bit access
} PDO_Map_t;

// Object Dictionary Entry
typedef struct {
    uint16_t index;          // Parameter index
    uint8_t subindex;        // 0:single value, >0:array length
    uint8_t type_access;     // Combined type and access rights
    void* data;              // Pointer to data
} OD_Entry_t;

// Function prototypes
const OD_Entry_t* OD_FindEntry(uint16_t index, uint8_t subindex);
int32_t OD_Read(uint16_t index, uint16_t subindex, uint16_t* length);
bool OD_Write(uint16_t index, uint16_t subindex, void *value);
int32_t PDO_Read(uint8_t channel, uint16_t *length);

#endif