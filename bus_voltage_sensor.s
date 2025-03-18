	.cpu cortex-m4
	.eabi_attribute 27, 1
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"bus_voltage_sensor.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.VBS_GetBusVoltage_d,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	VBS_GetBusVoltage_d
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	VBS_GetBusVoltage_d, %function
VBS_GetBusVoltage_d:
.LVL0:
.LFB1437:
	.file 1 "MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Src/bus_voltage_sensor.c"
	.loc 1 57 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 70 3 view .LVU1
	.loc 1 72 1 is_stmt 0 view .LVU2
	ldrh	r0, [r0, #4]
.LVL1:
	.loc 1 72 1 view .LVU3
	bx	lr
	.cfi_endproc
.LFE1437:
	.size	VBS_GetBusVoltage_d, .-VBS_GetBusVoltage_d
	.section	.text.VBS_GetAvBusVoltage_V,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	VBS_GetAvBusVoltage_V
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	VBS_GetAvBusVoltage_V, %function
VBS_GetAvBusVoltage_V:
.LVL2:
.LFB1438:
	.loc 1 80 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 81 3 view .LVU5
	.loc 1 90 5 view .LVU6
	.loc 1 90 10 is_stmt 0 view .LVU7
	ldrh	r3, [r0, #6]
.LVL3:
	.loc 1 91 5 is_stmt 1 view .LVU8
	.loc 1 91 20 is_stmt 0 view .LVU9
	ldrh	r0, [r0, #2]
.LVL4:
	.loc 1 91 10 view .LVU10
	mul	r0, r3, r0
.LVL5:
	.loc 1 92 5 is_stmt 1 view .LVU11
	.loc 1 96 3 view .LVU12
	.loc 1 97 1 is_stmt 0 view .LVU13
	lsrs	r0, r0, #16
.LVL6:
	.loc 1 97 1 view .LVU14
	bx	lr
	.cfi_endproc
.LFE1438:
	.size	VBS_GetAvBusVoltage_V, .-VBS_GetAvBusVoltage_V
	.text
.Letext0:
	.file 2 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_ll_tim.h"
	.file 5 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_ll_usart.h"
	.file 6 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_ll_dma.h"
	.file 7 "Inc/mc_type.h"
	.file 8 "MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Inc/bus_voltage_sensor.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x2d7
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF34
	.byte	0xc
	.4byte	.LASF35
	.4byte	.LASF36
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x2
	.byte	0x2b
	.byte	0x18
	.4byte	0x3c
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x39
	.byte	0x19
	.4byte	0x56
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x4f
	.byte	0x19
	.4byte	0x70
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x30
	.uleb128 0x5
	.4byte	0x93
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x24
	.byte	0x14
	.4byte	0x4a
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x64
	.uleb128 0x5
	.4byte	0xb0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF15
	.uleb128 0x6
	.4byte	0x9f
	.4byte	0xd8
	.uleb128 0x7
	.4byte	0x8c
	.byte	0x9
	.byte	0
	.uleb128 0x5
	.4byte	0xc8
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x4
	.byte	0x2d
	.byte	0x16
	.4byte	0xd8
	.byte	0xa
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x38
	.byte	0x38
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x4
	.byte	0x3c
	.byte	0x16
	.4byte	0xd8
	.byte	0xa
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x4
	.byte	0x4a
	.byte	0x16
	.4byte	0xd8
	.byte	0xa
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x4
	.byte	0x58
	.byte	0x16
	.4byte	0xd8
	.byte	0xa
	.byte	0
	.byte	0x2
	.byte	0x4
	.byte	0x6
	.byte	0x8
	.byte	0xa
	.byte	0xc
	.byte	0xe
	.byte	0x10
	.byte	0x14
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x4
	.byte	0x66
	.byte	0x16
	.4byte	0xd8
	.byte	0xa
	.byte	0
	.byte	0x1
	.byte	0x2
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.byte	0x6
	.byte	0x7
	.byte	0x8
	.byte	0xa
	.uleb128 0x6
	.4byte	0xbc
	.4byte	0x160
	.uleb128 0x7
	.4byte	0x8c
	.byte	0xb
	.byte	0
	.uleb128 0x5
	.4byte	0x150
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x5
	.byte	0x2e
	.byte	0x17
	.4byte	0x160
	.byte	0x30
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.byte	0x2
	.byte	0
	.byte	0
	.byte	0
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.byte	0x40
	.byte	0
	.byte	0
	.byte	0
	.byte	0x80
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x9f
	.4byte	0x1b2
	.uleb128 0x7
	.4byte	0x8c
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.4byte	0x1a2
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x6
	.byte	0x2f
	.byte	0x16
	.4byte	0x1b2
	.byte	0x6
	.byte	0x8
	.byte	0x1c
	.byte	0x30
	.byte	0x44
	.byte	0x58
	.byte	0x6c
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF23
	.uleb128 0x9
	.byte	0x7
	.byte	0x1
	.4byte	0x3c
	.byte	0x7
	.byte	0xbf
	.byte	0x1
	.4byte	0x1ec
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x7
	.byte	0xc1
	.byte	0x3
	.4byte	0x1d1
	.uleb128 0xb
	.byte	0xa
	.byte	0x8
	.byte	0x2c
	.byte	0x9
	.4byte	0x24d
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x8
	.byte	0x2e
	.byte	0x10
	.4byte	0x1ec
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x8
	.byte	0x32
	.byte	0xc
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x8
	.byte	0x3b
	.byte	0xc
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x8
	.byte	0x3d
	.byte	0xc
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x8
	.byte	0x3f
	.byte	0xc
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x8
	.byte	0x41
	.byte	0x3
	.4byte	0x1f8
	.uleb128 0x5
	.4byte	0x24d
	.uleb128 0xd
	.byte	0x1
	.4byte	.LASF37
	.byte	0x1
	.byte	0x4f
	.byte	0x11
	.byte	0x1
	.4byte	0xa4
	.4byte	.LFB1438
	.4byte	.LFE1438
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x2a5
	.uleb128 0xe
	.4byte	.LASF33
	.byte	0x1
	.byte	0x4f
	.byte	0x48
	.4byte	0x2a5
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0xf
	.4byte	.LASF38
	.byte	0x1
	.byte	0x51
	.byte	0xc
	.4byte	0xb0
	.4byte	.LLST2
	.4byte	.LVUS2
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x259
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF39
	.byte	0x1
	.byte	0x38
	.byte	0x11
	.byte	0x1
	.4byte	0xa4
	.4byte	.LFB1437
	.4byte	.LFE1437
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF33
	.byte	0x1
	.byte	0x38
	.byte	0x46
	.4byte	0x2a5
	.4byte	.LLST0
	.4byte	.LVUS0
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.uleb128 0x2137
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.uleb128 0x2137
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LVUS1:
	.uleb128 0
	.uleb128 .LVU10
	.uleb128 .LVU10
	.uleb128 0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL4
	.4byte	.LFE1438
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 .LVU8
	.uleb128 .LVU11
	.uleb128 .LVU11
	.uleb128 .LVU12
	.uleb128 .LVU12
	.uleb128 .LVU14
	.uleb128 .LVU14
	.uleb128 0
.LLST2:
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL5
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x5
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LFE1438
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU3
	.uleb128 .LVU3
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL1
	.4byte	.LFE1437
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB1437
	.4byte	.LFE1437-.LFB1437
	.4byte	.LFB1438
	.4byte	.LFE1438-.LFB1438
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB1437
	.4byte	.LFE1437
	.4byte	.LFB1438
	.4byte	.LFE1438
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF38:
	.ascii	"temp\000"
.LASF3:
	.ascii	"__uint8_t\000"
.LASF30:
	.ascii	"AvBusVoltage_d\000"
.LASF18:
	.ascii	"SHIFT_TAB_ICxx\000"
.LASF26:
	.ascii	"SensorType_t\000"
.LASF35:
	.ascii	"MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Src/"
	.ascii	"bus_voltage_sensor.c\000"
.LASF25:
	.ascii	"VIRTUAL_SENSOR\000"
.LASF20:
	.ascii	"SHIFT_TAB_OISx\000"
.LASF32:
	.ascii	"BusVoltageSensor_Handle_t\000"
.LASF37:
	.ascii	"VBS_GetAvBusVoltage_V\000"
.LASF23:
	.ascii	"float\000"
.LASF28:
	.ascii	"ConversionFactor\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF24:
	.ascii	"REAL_SENSOR\000"
.LASF17:
	.ascii	"SHIFT_TAB_OCxx\000"
.LASF8:
	.ascii	"long unsigned int\000"
.LASF33:
	.ascii	"pHandle\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF16:
	.ascii	"OFFSET_TAB_CCMRx\000"
.LASF4:
	.ascii	"__uint16_t\000"
.LASF19:
	.ascii	"SHIFT_TAB_CCxP\000"
.LASF7:
	.ascii	"__uint32_t\000"
.LASF34:
	.ascii	"GNU C17 10.2.1 20201103 (release) -mcpu=cortex-m4 -"
	.ascii	"mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=hard -march=ar"
	.ascii	"mv7e-m+fp -g -gdwarf-2 -O3 -fdata-sections -ffuncti"
	.ascii	"on-sections\000"
.LASF11:
	.ascii	"unsigned int\000"
.LASF39:
	.ascii	"VBS_GetBusVoltage_d\000"
.LASF10:
	.ascii	"long long unsigned int\000"
.LASF12:
	.ascii	"uint8_t\000"
.LASF22:
	.ascii	"CHANNEL_OFFSET_TAB\000"
.LASF21:
	.ascii	"USART_PRESCALER_TAB\000"
.LASF9:
	.ascii	"long long int\000"
.LASF29:
	.ascii	"LatestConv\000"
.LASF36:
	.ascii	"/home/joel/share/EVSPIN32G4_Shinano\000"
.LASF2:
	.ascii	"short int\000"
.LASF13:
	.ascii	"uint16_t\000"
.LASF14:
	.ascii	"uint32_t\000"
.LASF6:
	.ascii	"long int\000"
.LASF15:
	.ascii	"long double\000"
.LASF0:
	.ascii	"signed char\000"
.LASF31:
	.ascii	"FaultState\000"
.LASF27:
	.ascii	"SensorType\000"
	.ident	"GCC: (GNU Arm Embedded Toolchain 10-2020-q4-major) 10.2.1 20201103 (release)"
