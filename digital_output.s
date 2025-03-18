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
	.file	"digital_output.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.DOUT_SetOutputState,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	DOUT_SetOutputState
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	DOUT_SetOutputState, %function
DOUT_SetOutputState:
.LVL0:
.LFB1435:
	.file 1 "MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Src/digital_output.c"
	.loc 1 46 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 55 5 view .LVU1
	.loc 1 55 8 is_stmt 0 view .LVU2
	cmp	r1, #1
	.loc 1 57 10 view .LVU3
	ldrb	r3, [r0, #10]	@ zero_extendqisi2
	.loc 1 55 8 view .LVU4
	beq	.L8
	.loc 1 66 10 is_stmt 1 view .LVU5
	.loc 1 66 13 is_stmt 0 view .LVU6
	cmp	r3, #1
	.loc 1 68 7 view .LVU7
	ldrh	r2, [r0, #8]
	ldr	r3, [r0, #4]
	.loc 1 66 13 view .LVU8
	beq	.L6
.L5:
	.loc 1 72 7 is_stmt 1 view .LVU9
.LVL1:
.LBB10:
.LBI10:
	.file 2 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_ll_gpio.h"
	.loc 2 894 22 view .LVU10
.LBB11:
	.loc 2 896 3 view .LVU11
	str	r2, [r3, #24]
.LVL2:
	.loc 2 896 3 is_stmt 0 view .LVU12
.LBE11:
.LBE10:
	.loc 1 74 5 is_stmt 1 view .LVU13
	.loc 1 74 26 is_stmt 0 view .LVU14
	strb	r1, [r0]
	.loc 1 78 1 view .LVU15
	bx	lr
.L8:
	.loc 1 57 7 is_stmt 1 view .LVU16
	.loc 1 57 10 is_stmt 0 view .LVU17
	cmp	r3, #1
	.loc 1 59 9 view .LVU18
	ldrh	r2, [r0, #8]
	ldr	r3, [r0, #4]
	.loc 1 57 10 view .LVU19
	beq	.L5
.L6:
	.loc 1 68 7 is_stmt 1 view .LVU20
.LVL3:
.LBB12:
.LBI12:
	.loc 2 923 22 view .LVU21
.LBB13:
	.loc 2 925 3 view .LVU22
	str	r2, [r3, #40]
.LVL4:
	.loc 2 925 3 is_stmt 0 view .LVU23
.LBE13:
.LBE12:
	.loc 1 74 5 is_stmt 1 view .LVU24
	.loc 1 74 26 is_stmt 0 view .LVU25
	strb	r1, [r0]
	.loc 1 78 1 view .LVU26
	bx	lr
	.cfi_endproc
.LFE1435:
	.size	DOUT_SetOutputState, .-DOUT_SetOutputState
	.section	.text.DOUT_GetOutputState,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	DOUT_GetOutputState
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	DOUT_GetOutputState, %function
DOUT_GetOutputState:
.LVL5:
.LFB1436:
	.loc 1 86 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 100 3 view .LVU28
	.loc 1 102 1 is_stmt 0 view .LVU29
	ldrb	r0, [r0]	@ zero_extendqisi2
.LVL6:
	.loc 1 102 1 view .LVU30
	bx	lr
	.cfi_endproc
.LFE1436:
	.size	DOUT_GetOutputState, .-DOUT_GetOutputState
	.text
.Letext0:
	.file 3 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/machine/_default_types.h"
	.file 4 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/sys/_stdint.h"
	.file 5 "Drivers/CMSIS/Device/ST/STM32G4xx/Include/stm32g431xx.h"
	.file 6 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_ll_tim.h"
	.file 7 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_ll_usart.h"
	.file 8 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_ll_dma.h"
	.file 9 "Inc/mc_type.h"
	.file 10 "MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Inc/digital_output.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x443
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0xc
	.4byte	.LASF44
	.4byte	.LASF45
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x4
	.byte	0x18
	.byte	0x13
	.4byte	0x30
	.uleb128 0x5
	.4byte	0x93
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x24
	.byte	0x14
	.4byte	0x4a
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x30
	.byte	0x14
	.4byte	0x64
	.uleb128 0x6
	.4byte	0xb0
	.uleb128 0x5
	.4byte	0xb0
	.uleb128 0x7
	.4byte	0xbc
	.4byte	0xd6
	.uleb128 0x8
	.4byte	0x8c
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	0xc6
	.uleb128 0x9
	.byte	0x2c
	.byte	0x5
	.2byte	0x1d0
	.byte	0x9
	.4byte	0x186
	.uleb128 0xa
	.4byte	.LASF15
	.byte	0x5
	.2byte	0x1d2
	.byte	0x11
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF16
	.byte	0x5
	.2byte	0x1d3
	.byte	0x11
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF17
	.byte	0x5
	.2byte	0x1d4
	.byte	0x11
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0x5
	.2byte	0x1d5
	.byte	0x11
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.ascii	"IDR\000"
	.byte	0x5
	.2byte	0x1d6
	.byte	0x11
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.ascii	"ODR\000"
	.byte	0x5
	.2byte	0x1d7
	.byte	0x11
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x5
	.2byte	0x1d8
	.byte	0x11
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x5
	.2byte	0x1d9
	.byte	0x11
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.ascii	"AFR\000"
	.byte	0x5
	.2byte	0x1da
	.byte	0x11
	.4byte	0xd6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.ascii	"BRR\000"
	.byte	0x5
	.2byte	0x1db
	.byte	0x11
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0xc
	.4byte	.LASF21
	.byte	0x5
	.2byte	0x1dc
	.byte	0x3
	.4byte	0xdb
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF22
	.uleb128 0x7
	.4byte	0x9f
	.4byte	0x1aa
	.uleb128 0x8
	.4byte	0x8c
	.byte	0x9
	.byte	0
	.uleb128 0x5
	.4byte	0x19a
	.uleb128 0xd
	.4byte	.LASF23
	.byte	0x6
	.byte	0x2d
	.byte	0x16
	.4byte	0x1aa
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
	.uleb128 0xd
	.4byte	.LASF24
	.byte	0x6
	.byte	0x3c
	.byte	0x16
	.4byte	0x1aa
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
	.uleb128 0xd
	.4byte	.LASF25
	.byte	0x6
	.byte	0x4a
	.byte	0x16
	.4byte	0x1aa
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
	.uleb128 0xd
	.4byte	.LASF26
	.byte	0x6
	.byte	0x58
	.byte	0x16
	.4byte	0x1aa
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
	.uleb128 0xd
	.4byte	.LASF27
	.byte	0x6
	.byte	0x66
	.byte	0x16
	.4byte	0x1aa
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
	.uleb128 0x7
	.4byte	0xc1
	.4byte	0x232
	.uleb128 0x8
	.4byte	0x8c
	.byte	0xb
	.byte	0
	.uleb128 0x5
	.4byte	0x222
	.uleb128 0xd
	.4byte	.LASF28
	.byte	0x7
	.byte	0x2e
	.byte	0x17
	.4byte	0x232
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
	.uleb128 0x7
	.4byte	0x9f
	.4byte	0x284
	.uleb128 0x8
	.4byte	0x8c
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.4byte	0x274
	.uleb128 0xd
	.4byte	.LASF29
	.byte	0x8
	.byte	0x2f
	.byte	0x16
	.4byte	0x284
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
	.4byte	.LASF30
	.uleb128 0xe
	.byte	0x7
	.byte	0x1
	.4byte	0x3c
	.byte	0x9
	.byte	0xc8
	.byte	0x1
	.4byte	0x2be
	.uleb128 0xf
	.4byte	.LASF31
	.byte	0
	.uleb128 0xf
	.4byte	.LASF32
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x9
	.byte	0xca
	.byte	0x3
	.4byte	0x2a3
	.uleb128 0x10
	.byte	0xc
	.byte	0xa
	.byte	0x34
	.byte	0x9
	.4byte	0x310
	.uleb128 0x11
	.4byte	.LASF34
	.byte	0xa
	.byte	0x36
	.byte	0x12
	.4byte	0x2be
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.4byte	.LASF35
	.byte	0xa
	.byte	0x37
	.byte	0x11
	.4byte	0x310
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.4byte	.LASF36
	.byte	0xa
	.byte	0x38
	.byte	0xc
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.4byte	.LASF37
	.byte	0xa
	.byte	0x39
	.byte	0xc
	.4byte	0x93
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0
	.uleb128 0x12
	.byte	0x4
	.4byte	0x186
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0xa
	.byte	0x3b
	.byte	0x3
	.4byte	0x2ca
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF46
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.4byte	0x2be
	.4byte	.LFB1436
	.4byte	.LFE1436
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x355
	.uleb128 0x14
	.4byte	.LASF39
	.byte	0x1
	.byte	0x55
	.byte	0x3a
	.4byte	0x355
	.4byte	.LLST4
	.4byte	.LVUS4
	.byte	0
	.uleb128 0x12
	.byte	0x4
	.4byte	0x316
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF47
	.byte	0x1
	.byte	0x2d
	.byte	0xd
	.byte	0x1
	.4byte	.LFB1435
	.4byte	.LFE1435
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x3f6
	.uleb128 0x16
	.4byte	.LASF39
	.byte	0x1
	.byte	0x2d
	.byte	0x30
	.4byte	0x355
	.byte	0x1
	.byte	0x50
	.uleb128 0x16
	.4byte	.LASF40
	.byte	0x1
	.byte	0x2d
	.byte	0x48
	.4byte	0x2be
	.byte	0x1
	.byte	0x51
	.uleb128 0x17
	.4byte	0x420
	.4byte	.LBI10
	.byte	.LVU10
	.4byte	.LBB10
	.4byte	.LBE10
	.byte	0x1
	.byte	0x48
	.byte	0x7
	.4byte	0x3c5
	.uleb128 0x18
	.4byte	0x438
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x18
	.4byte	0x42b
	.4byte	.LLST1
	.4byte	.LVUS1
	.byte	0
	.uleb128 0x19
	.4byte	0x3f6
	.4byte	.LBI12
	.byte	.LVU21
	.4byte	.LBB12
	.4byte	.LBE12
	.byte	0x1
	.byte	0x44
	.byte	0x7
	.uleb128 0x18
	.4byte	0x412
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x18
	.4byte	0x405
	.4byte	.LLST3
	.4byte	.LVUS3
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF48
	.byte	0x2
	.2byte	0x39b
	.byte	0x16
	.byte	0x1
	.byte	0x3
	.4byte	0x420
	.uleb128 0x1b
	.4byte	.LASF41
	.byte	0x2
	.2byte	0x39b
	.byte	0x3b
	.4byte	0x310
	.uleb128 0x1b
	.4byte	.LASF42
	.byte	0x2
	.2byte	0x39b
	.byte	0x4b
	.4byte	0xb0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF49
	.byte	0x2
	.2byte	0x37e
	.byte	0x16
	.byte	0x1
	.byte	0x3
	.uleb128 0x1b
	.4byte	.LASF41
	.byte	0x2
	.2byte	0x37e
	.byte	0x39
	.4byte	0x310
	.uleb128 0x1b
	.4byte	.LASF42
	.byte	0x2
	.2byte	0x37e
	.byte	0x49
	.4byte	0xb0
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.uleb128 0x2137
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LVUS4:
	.uleb128 0
	.uleb128 .LVU30
	.uleb128 .LVU30
	.uleb128 0
.LLST4:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL6
	.4byte	.LFE1436
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 .LVU10
	.uleb128 .LVU12
.LLST0:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 .LVU10
	.uleb128 .LVU12
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 .LVU21
	.uleb128 .LVU23
.LLST2:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 .LVU21
	.uleb128 .LVU23
.LLST3:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x53
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
	.4byte	.LFB1435
	.4byte	.LFE1435-.LFB1435
	.4byte	.LFB1436
	.4byte	.LFE1436-.LFB1436
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB1435
	.4byte	.LFE1435
	.4byte	.LFB1436
	.4byte	.LFE1436
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF3:
	.ascii	"__uint8_t\000"
.LASF15:
	.ascii	"MODER\000"
.LASF36:
	.ascii	"hDOutputPin\000"
.LASF25:
	.ascii	"SHIFT_TAB_ICxx\000"
.LASF35:
	.ascii	"hDOutputPort\000"
.LASF32:
	.ascii	"ACTIVE\000"
.LASF41:
	.ascii	"GPIOx\000"
.LASF46:
	.ascii	"DOUT_GetOutputState\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF16:
	.ascii	"OTYPER\000"
.LASF27:
	.ascii	"SHIFT_TAB_OISx\000"
.LASF33:
	.ascii	"DOutputState_t\000"
.LASF30:
	.ascii	"float\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF24:
	.ascii	"SHIFT_TAB_OCxx\000"
.LASF8:
	.ascii	"long unsigned int\000"
.LASF39:
	.ascii	"pHandle\000"
.LASF40:
	.ascii	"State\000"
.LASF14:
	.ascii	"uint32_t\000"
.LASF19:
	.ascii	"BSRR\000"
.LASF44:
	.ascii	"MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Src/"
	.ascii	"digital_output.c\000"
.LASF23:
	.ascii	"OFFSET_TAB_CCMRx\000"
.LASF4:
	.ascii	"__uint16_t\000"
.LASF26:
	.ascii	"SHIFT_TAB_CCxP\000"
.LASF7:
	.ascii	"__uint32_t\000"
.LASF43:
	.ascii	"GNU C17 10.2.1 20201103 (release) -mcpu=cortex-m4 -"
	.ascii	"mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=hard -march=ar"
	.ascii	"mv7e-m+fp -g -gdwarf-2 -O3 -fdata-sections -ffuncti"
	.ascii	"on-sections\000"
.LASF17:
	.ascii	"OSPEEDR\000"
.LASF11:
	.ascii	"unsigned int\000"
.LASF21:
	.ascii	"GPIO_TypeDef\000"
.LASF10:
	.ascii	"long long unsigned int\000"
.LASF12:
	.ascii	"uint8_t\000"
.LASF38:
	.ascii	"DOUT_handle_t\000"
.LASF29:
	.ascii	"CHANNEL_OFFSET_TAB\000"
.LASF28:
	.ascii	"USART_PRESCALER_TAB\000"
.LASF34:
	.ascii	"OutputState\000"
.LASF37:
	.ascii	"bDOutputPolarity\000"
.LASF18:
	.ascii	"PUPDR\000"
.LASF9:
	.ascii	"long long int\000"
.LASF42:
	.ascii	"PinMask\000"
.LASF45:
	.ascii	"/home/joel/share/EVSPIN32G4_Shinano\000"
.LASF48:
	.ascii	"LL_GPIO_ResetOutputPin\000"
.LASF2:
	.ascii	"short int\000"
.LASF49:
	.ascii	"LL_GPIO_SetOutputPin\000"
.LASF13:
	.ascii	"uint16_t\000"
.LASF47:
	.ascii	"DOUT_SetOutputState\000"
.LASF6:
	.ascii	"long int\000"
.LASF22:
	.ascii	"long double\000"
.LASF0:
	.ascii	"signed char\000"
.LASF31:
	.ascii	"INACTIVE\000"
.LASF20:
	.ascii	"LCKR\000"
	.ident	"GCC: (GNU Arm Embedded Toolchain 10-2020-q4-major) 10.2.1 20201103 (release)"
