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
	.file	"pqd_motor_power_measurement.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.PQD_CalcElMotorPower,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	PQD_CalcElMotorPower
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	PQD_CalcElMotorPower, %function
PQD_CalcElMotorPower:
.LVL0:
.LFB1437:
	.file 1 "MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Src/pqd_motor_power_measurement.c"
	.loc 1 66 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 75 5 view .LVU1
	.loc 1 76 5 view .LVU2
	.loc 1 76 23 is_stmt 0 view .LVU3
	ldr	r2, [r0, #8]
.LVL1:
	.loc 1 77 5 is_stmt 1 view .LVU4
	.loc 1 79 5 view .LVU5
	.loc 1 66 1 is_stmt 0 view .LVU6
	push	{lr}
.LCFI0:
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	.loc 1 80 28 view .LVU7
	ldrh	r1, [r2, #14]
	ldrh	lr, [r2, #24]
	.loc 1 79 10 view .LVU8
	ldrh	r3, [r2, #12]
	ldrh	ip, [r2, #22]
	.loc 1 80 28 view .LVU9
	smulbb	r2, r1, lr
.LVL2:
	.loc 1 81 5 is_stmt 1 view .LVU10
	.loc 1 84 5 view .LVU11
	.loc 1 81 10 is_stmt 0 view .LVU12
	smlabb	r3, r3, ip, r2
.LVL3:
	.loc 1 81 10 view .LVU13
	cmp	r3, #0
	.loc 1 84 32 view .LVU14
	ldrsh	r2, [r0]
	.loc 1 81 10 view .LVU15
	itt	lt
	addlt	r3, r3, #65280
.LVL4:
	.loc 1 81 10 view .LVU16
	addlt	r3, r3, #255
	.loc 1 84 90 view .LVU17
	rsbs	r3, r2, r3, asr #16
	it	mi
	addmi	r3, r3, #15
	.loc 1 84 32 view .LVU18
	add	r3, r2, r3, asr #4
	strh	r3, [r0]	@ movhi
.LVL5:
	.loc 1 89 1 view .LVU19
	ldr	pc, [sp], #4
	.cfi_endproc
.LFE1437:
	.size	PQD_CalcElMotorPower, .-PQD_CalcElMotorPower
	.section	.text.PQD_Clear,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	PQD_Clear
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	PQD_Clear, %function
PQD_Clear:
.LVL6:
.LFB1438:
	.loc 1 99 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 108 5 view .LVU21
	.loc 1 108 32 is_stmt 0 view .LVU22
	movs	r3, #0
	strh	r3, [r0]	@ movhi
	.loc 1 112 1 view .LVU23
	bx	lr
	.cfi_endproc
.LFE1438:
	.size	PQD_Clear, .-PQD_Clear
	.section	.text.PQD_GetAvrgElMotorPowerW,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	PQD_GetAvrgElMotorPowerW
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	PQD_GetAvrgElMotorPowerW, %function
PQD_GetAvrgElMotorPowerW:
.LVL7:
.LFB1439:
	.loc 1 124 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 125 3 view .LVU25
	.loc 1 137 3 view .LVU26
	.loc 1 124 1 is_stmt 0 view .LVU27
	push	{r4, lr}
.LCFI1:
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 137 13 view .LVU28
	ldrsh	r3, [r0]
	vmov	s15, r3	@ int
	.loc 1 124 1 view .LVU29
	vpush.64	{d8}
.LCFI2:
	.cfi_def_cfa_offset 16
	.cfi_offset 80, -16
	.cfi_offset 81, -12
	.loc 1 124 1 view .LVU30
	mov	r4, r0
	.loc 1 137 60 view .LVU31
	ldr	r0, [r0, #12]
.LVL8:
	.loc 1 137 13 view .LVU32
	vcvt.f32.s32	s16, s15
	.loc 1 137 60 view .LVU33
	bl	VBS_GetAvBusVoltage_V
.LVL9:
	.loc 1 142 3 is_stmt 1 view .LVU34
	.loc 1 137 51 is_stmt 0 view .LVU35
	vmov	s15, r0	@ int
	vcvt.f32.u32	s15, s15
	.loc 1 137 10 view .LVU36
	vldr.32	s0, [r4, #4]
	.loc 1 137 49 view .LVU37
	vmul.f32	s15, s15, s16
	.loc 1 143 1 view .LVU38
	vldm	sp!, {d8}
.LCFI3:
	.cfi_restore 80
	.cfi_restore 81
	.cfi_def_cfa_offset 8
.LVL10:
	.loc 1 143 1 view .LVU39
	vmul.f32	s0, s15, s0
	pop	{r4, pc}
	.loc 1 143 1 view .LVU40
	.cfi_endproc
.LFE1439:
	.size	PQD_GetAvrgElMotorPowerW, .-PQD_GetAvrgElMotorPowerW
	.text
.Letext0:
	.file 2 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_ll_tim.h"
	.file 5 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_ll_usart.h"
	.file 6 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_ll_dma.h"
	.file 7 "Inc/mc_type.h"
	.file 8 "MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Inc/bus_voltage_sensor.h"
	.file 9 "MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Inc/pqd_motor_power_measurement.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x584
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0xc
	.4byte	.LASF67
	.4byte	.LASF68
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x2b
	.byte	0x18
	.4byte	0x4a
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x37
	.byte	0x18
	.4byte	0x5d
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x39
	.byte	0x19
	.4byte	0x30
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x2
	.byte	0x4d
	.byte	0x18
	.4byte	0x7c
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x2
	.byte	0x4f
	.byte	0x19
	.4byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x3e
	.uleb128 0x5
	.4byte	0xb2
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x3
	.byte	0x20
	.byte	0x13
	.4byte	0x51
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x3
	.byte	0x24
	.byte	0x14
	.4byte	0x64
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x3
	.byte	0x2c
	.byte	0x13
	.4byte	0x70
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x83
	.uleb128 0x5
	.4byte	0xe7
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF20
	.uleb128 0x6
	.4byte	0xbe
	.4byte	0x10f
	.uleb128 0x7
	.4byte	0xab
	.byte	0x9
	.byte	0
	.uleb128 0x5
	.4byte	0xff
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x4
	.byte	0x2d
	.byte	0x16
	.4byte	0x10f
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
	.4byte	.LASF22
	.byte	0x4
	.byte	0x3c
	.byte	0x16
	.4byte	0x10f
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
	.4byte	.LASF23
	.byte	0x4
	.byte	0x4a
	.byte	0x16
	.4byte	0x10f
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
	.4byte	.LASF24
	.byte	0x4
	.byte	0x58
	.byte	0x16
	.4byte	0x10f
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
	.4byte	.LASF25
	.byte	0x4
	.byte	0x66
	.byte	0x16
	.4byte	0x10f
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
	.4byte	0xf3
	.4byte	0x197
	.uleb128 0x7
	.4byte	0xab
	.byte	0xb
	.byte	0
	.uleb128 0x5
	.4byte	0x187
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x5
	.byte	0x2e
	.byte	0x17
	.4byte	0x197
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
	.4byte	0xbe
	.4byte	0x1e9
	.uleb128 0x7
	.4byte	0xab
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.4byte	0x1d9
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0x6
	.byte	0x2f
	.byte	0x16
	.4byte	0x1e9
	.byte	0x6
	.byte	0x8
	.byte	0x1c
	.byte	0x30
	.byte	0x44
	.byte	0x58
	.byte	0x6c
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x7
	.byte	0x30
	.byte	0x19
	.4byte	0x29
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.byte	0x7e
	.byte	0x9
	.4byte	0x231
	.uleb128 0xa
	.ascii	"q\000"
	.byte	0x7
	.byte	0x80
	.byte	0xb
	.4byte	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.ascii	"d\000"
	.byte	0x7
	.byte	0x81
	.byte	0xb
	.4byte	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x7
	.byte	0x82
	.byte	0x3
	.4byte	0x20d
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.byte	0x91
	.byte	0x9
	.4byte	0x261
	.uleb128 0xa
	.ascii	"a\000"
	.byte	0x7
	.byte	0x93
	.byte	0xb
	.4byte	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.ascii	"b\000"
	.byte	0x7
	.byte	0x94
	.byte	0xb
	.4byte	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x7
	.byte	0x95
	.byte	0x3
	.4byte	0x23d
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.byte	0xa3
	.byte	0x9
	.4byte	0x295
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x7
	.byte	0xa5
	.byte	0xb
	.4byte	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x7
	.byte	0xa6
	.byte	0xb
	.4byte	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x7
	.byte	0xa7
	.byte	0x3
	.4byte	0x26d
	.uleb128 0xc
	.byte	0x7
	.byte	0x1
	.4byte	0x4a
	.byte	0x7
	.byte	0xbf
	.byte	0x1
	.4byte	0x2bc
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0
	.uleb128 0xd
	.4byte	.LASF35
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x7
	.byte	0xc1
	.byte	0x3
	.4byte	0x2a1
	.uleb128 0xe
	.byte	0x7
	.byte	0x1
	.4byte	0x4a
	.byte	0x7
	.2byte	0x108
	.byte	0x1
	.4byte	0x2e4
	.uleb128 0xd
	.4byte	.LASF37
	.byte	0
	.uleb128 0xd
	.4byte	.LASF38
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.4byte	.LASF39
	.byte	0x7
	.2byte	0x10a
	.byte	0x3
	.4byte	0x2c8
	.uleb128 0x10
	.byte	0x26
	.byte	0x7
	.2byte	0x10f
	.byte	0x9
	.4byte	0x3bc
	.uleb128 0x11
	.ascii	"Iab\000"
	.byte	0x7
	.2byte	0x112
	.byte	0x8
	.4byte	0x261
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.4byte	.LASF40
	.byte	0x7
	.2byte	0x116
	.byte	0xf
	.4byte	0x295
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF41
	.byte	0x7
	.2byte	0x11a
	.byte	0x8
	.4byte	0x231
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.ascii	"Iqd\000"
	.byte	0x7
	.2byte	0x11e
	.byte	0x8
	.4byte	0x231
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x12
	.4byte	.LASF42
	.byte	0x7
	.2byte	0x122
	.byte	0x8
	.4byte	0x231
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.4byte	.LASF43
	.byte	0x7
	.2byte	0x126
	.byte	0xb
	.4byte	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x11
	.ascii	"Vqd\000"
	.byte	0x7
	.2byte	0x12a
	.byte	0x8
	.4byte	0x231
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0x12
	.4byte	.LASF44
	.byte	0x7
	.2byte	0x12e
	.byte	0xf
	.4byte	0x295
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0x12
	.4byte	.LASF45
	.byte	0x7
	.2byte	0x132
	.byte	0xb
	.4byte	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1e
	.uleb128 0x12
	.4byte	.LASF46
	.byte	0x7
	.2byte	0x136
	.byte	0xb
	.4byte	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x12
	.4byte	.LASF47
	.byte	0x7
	.2byte	0x13a
	.byte	0xc
	.4byte	0xcf
	.byte	0x2
	.byte	0x23
	.uleb128 0x22
	.uleb128 0x12
	.4byte	.LASF48
	.byte	0x7
	.2byte	0x13e
	.byte	0x13
	.4byte	0x2e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0
	.uleb128 0xf
	.4byte	.LASF49
	.byte	0x7
	.2byte	0x143
	.byte	0xf
	.4byte	0x3c9
	.uleb128 0x13
	.byte	0x4
	.4byte	0x2f1
	.uleb128 0x9
	.byte	0xa
	.byte	0x8
	.byte	0x2c
	.byte	0x9
	.4byte	0x424
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x8
	.byte	0x2e
	.byte	0x10
	.4byte	0x2bc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x8
	.byte	0x32
	.byte	0xc
	.4byte	0xcf
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x8
	.byte	0x3b
	.byte	0xc
	.4byte	0xcf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x8
	.byte	0x3d
	.byte	0xc
	.4byte	0xcf
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xb
	.4byte	.LASF54
	.byte	0x8
	.byte	0x3f
	.byte	0xc
	.4byte	0xcf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF55
	.byte	0x8
	.byte	0x41
	.byte	0x3
	.4byte	0x3cf
	.uleb128 0x9
	.byte	0x10
	.byte	0x9
	.byte	0x31
	.byte	0x9
	.4byte	0x476
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0x9
	.byte	0x33
	.byte	0xb
	.4byte	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF57
	.byte	0x9
	.byte	0x35
	.byte	0xb
	.4byte	0x201
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF58
	.byte	0x9
	.byte	0x38
	.byte	0xe
	.4byte	0x3bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF59
	.byte	0x9
	.byte	0x39
	.byte	0x1e
	.4byte	0x476
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.4byte	0x424
	.uleb128 0x3
	.4byte	.LASF60
	.byte	0x9
	.byte	0x3a
	.byte	0x3
	.4byte	0x430
	.uleb128 0x5
	.4byte	0x47c
	.uleb128 0x14
	.byte	0x1
	.4byte	.LASF69
	.byte	0x1
	.byte	0x7b
	.byte	0x10
	.byte	0x1
	.4byte	0x201
	.4byte	.LFB1439
	.4byte	.LFE1439
	.4byte	.LLST4
	.byte	0x1
	.4byte	0x4de
	.uleb128 0x15
	.4byte	.LASF63
	.byte	0x1
	.byte	0x7b
	.byte	0x4a
	.4byte	0x4de
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x16
	.4byte	.LASF64
	.byte	0x1
	.byte	0x7d
	.byte	0xb
	.4byte	0x201
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x17
	.4byte	.LVL9
	.4byte	0x579
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.4byte	0x488
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF61
	.byte	0x1
	.byte	0x62
	.byte	0xd
	.byte	0x1
	.4byte	.LFB1438
	.4byte	.LFE1438
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x50d
	.uleb128 0x19
	.4byte	.LASF63
	.byte	0x1
	.byte	0x62
	.byte	0x32
	.4byte	0x50d
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.4byte	0x47c
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF62
	.byte	0x1
	.byte	0x41
	.byte	0xd
	.byte	0x1
	.4byte	.LFB1437
	.4byte	.LFE1437
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x579
	.uleb128 0x19
	.4byte	.LASF63
	.byte	0x1
	.byte	0x41
	.byte	0x3d
	.4byte	0x50d
	.byte	0x1
	.byte	0x50
	.uleb128 0x16
	.4byte	.LASF65
	.byte	0x1
	.byte	0x4b
	.byte	0xd
	.4byte	0xdb
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x1b
	.ascii	"Iqd\000"
	.byte	0x1
	.byte	0x4c
	.byte	0xa
	.4byte	0x231
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x1b
	.ascii	"Vqd\000"
	.byte	0x1
	.byte	0x4d
	.byte	0xa
	.4byte	0x231
	.4byte	.LLST3
	.4byte	.LVUS3
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.byte	0x1
	.4byte	.LASF70
	.4byte	.LASF70
	.byte	0x8
	.byte	0x46
	.byte	0xa
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
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST4:
	.4byte	.LFB1439
	.4byte	.LCFI1
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI1
	.4byte	.LCFI2
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI2
	.4byte	.LCFI3
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI3
	.4byte	.LFE1439
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 0
	.uleb128 .LVU32
	.uleb128 .LVU32
	.uleb128 0
.LLST5:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL8
	.4byte	.LFE1439
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 .LVU26
	.uleb128 .LVU34
	.uleb128 .LVU34
	.uleb128 .LVU39
.LLST6:
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x11
	.byte	0x70
	.sleb128 0
	.byte	0xf7
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x50
	.uleb128 0x29
	.byte	0x1e
	.byte	0x74
	.sleb128 4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0x1e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LFB1437
	.4byte	.LCFI0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI0
	.4byte	.LFE1437
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 .LVU10
	.uleb128 .LVU11
	.uleb128 .LVU11
	.uleb128 .LVU13
	.uleb128 .LVU13
	.uleb128 .LVU16
	.uleb128 .LVU16
	.uleb128 0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL2
	.2byte	0x11
	.byte	0x73
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x7c
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1e
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x15
	.byte	0x73
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x7c
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1e
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x40
	.byte	0x3c
	.byte	0x24
	.byte	0x1b
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x7
	.byte	0x73
	.sleb128 0
	.byte	0x40
	.byte	0x3c
	.byte	0x24
	.byte	0x1b
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LFE1437
	.2byte	0x25
	.byte	0x70
	.sleb128 8
	.byte	0x6
	.byte	0x23
	.uleb128 0xc
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x7c
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1e
	.byte	0x71
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x7e
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1e
	.byte	0x22
	.byte	0x40
	.byte	0x3c
	.byte	0x24
	.byte	0x1b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 .LVU4
	.uleb128 .LVU10
	.uleb128 .LVU10
	.uleb128 .LVU19
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x8
	.byte	0x72
	.sleb128 12
	.byte	0x93
	.uleb128 0x2
	.byte	0x72
	.sleb128 14
	.byte	0x93
	.uleb128 0x2
	.4byte	.LVL2
	.4byte	.LVL5
	.2byte	0xe
	.byte	0x70
	.sleb128 8
	.byte	0x6
	.byte	0x23
	.uleb128 0xc
	.byte	0x93
	.uleb128 0x2
	.byte	0x70
	.sleb128 8
	.byte	0x6
	.byte	0x23
	.uleb128 0xe
	.byte	0x93
	.uleb128 0x2
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 .LVU5
	.uleb128 .LVU10
	.uleb128 .LVU10
	.uleb128 .LVU19
.LLST3:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x8
	.byte	0x72
	.sleb128 22
	.byte	0x93
	.uleb128 0x2
	.byte	0x72
	.sleb128 24
	.byte	0x93
	.uleb128 0x2
	.4byte	.LVL2
	.4byte	.LVL5
	.2byte	0xe
	.byte	0x70
	.sleb128 8
	.byte	0x6
	.byte	0x23
	.uleb128 0x16
	.byte	0x93
	.uleb128 0x2
	.byte	0x70
	.sleb128 8
	.byte	0x6
	.byte	0x23
	.uleb128 0x18
	.byte	0x93
	.uleb128 0x2
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x2c
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
	.4byte	.LFB1439
	.4byte	.LFE1439-.LFB1439
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB1437
	.4byte	.LFE1437
	.4byte	.LFB1438
	.4byte	.LFE1438
	.4byte	.LFB1439
	.4byte	.LFE1439
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF60:
	.ascii	"PQD_MotorPowMeas_Handle_t\000"
.LASF35:
	.ascii	"VIRTUAL_SENSOR\000"
.LASF28:
	.ascii	"float_t\000"
.LASF24:
	.ascii	"SHIFT_TAB_CCxP\000"
.LASF6:
	.ascii	"short int\000"
.LASF38:
	.ascii	"EXTERNAL\000"
.LASF49:
	.ascii	"pFOCVars_t\000"
.LASF70:
	.ascii	"VBS_GetAvBusVoltage_V\000"
.LASF39:
	.ascii	"CurrRefSource_t\000"
.LASF54:
	.ascii	"FaultState\000"
.LASF10:
	.ascii	"__uint32_t\000"
.LASF52:
	.ascii	"LatestConv\000"
.LASF7:
	.ascii	"__uint16_t\000"
.LASF65:
	.ascii	"wAux\000"
.LASF36:
	.ascii	"SensorType_t\000"
.LASF56:
	.ascii	"hAvrgElMotorPower\000"
.LASF5:
	.ascii	"__int16_t\000"
.LASF31:
	.ascii	"alpha\000"
.LASF66:
	.ascii	"GNU C17 10.2.1 20201103 (release) -mcpu=cortex-m4 -"
	.ascii	"mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=hard -march=ar"
	.ascii	"mv7e-m+fp -g -gdwarf-2 -O3 -fdata-sections -ffuncti"
	.ascii	"on-sections\000"
.LASF42:
	.ascii	"Iqdref\000"
.LASF55:
	.ascii	"BusVoltageSensor_Handle_t\000"
.LASF30:
	.ascii	"ab_t\000"
.LASF0:
	.ascii	"float\000"
.LASF12:
	.ascii	"long long int\000"
.LASF22:
	.ascii	"SHIFT_TAB_OCxx\000"
.LASF9:
	.ascii	"long int\000"
.LASF4:
	.ascii	"__uint8_t\000"
.LASF43:
	.ascii	"UserIdref\000"
.LASF45:
	.ascii	"hTeref\000"
.LASF69:
	.ascii	"PQD_GetAvrgElMotorPowerW\000"
.LASF15:
	.ascii	"uint8_t\000"
.LASF20:
	.ascii	"long double\000"
.LASF3:
	.ascii	"unsigned char\000"
.LASF67:
	.ascii	"MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Src/"
	.ascii	"pqd_motor_power_measurement.c\000"
.LASF44:
	.ascii	"Valphabeta\000"
.LASF2:
	.ascii	"signed char\000"
.LASF13:
	.ascii	"long long unsigned int\000"
.LASF19:
	.ascii	"uint32_t\000"
.LASF14:
	.ascii	"unsigned int\000"
.LASF58:
	.ascii	"pFOCVars\000"
.LASF37:
	.ascii	"INTERNAL\000"
.LASF53:
	.ascii	"AvBusVoltage_d\000"
.LASF34:
	.ascii	"REAL_SENSOR\000"
.LASF62:
	.ascii	"PQD_CalcElMotorPower\000"
.LASF1:
	.ascii	"short unsigned int\000"
.LASF64:
	.ascii	"PowerW\000"
.LASF17:
	.ascii	"uint16_t\000"
.LASF29:
	.ascii	"qd_t\000"
.LASF18:
	.ascii	"int32_t\000"
.LASF27:
	.ascii	"CHANNEL_OFFSET_TAB\000"
.LASF59:
	.ascii	"pVBS\000"
.LASF61:
	.ascii	"PQD_Clear\000"
.LASF32:
	.ascii	"beta\000"
.LASF46:
	.ascii	"hElAngle\000"
.LASF11:
	.ascii	"long unsigned int\000"
.LASF47:
	.ascii	"hCodeError\000"
.LASF68:
	.ascii	"/home/joel/share/EVSPIN32G4_Shinano\000"
.LASF25:
	.ascii	"SHIFT_TAB_OISx\000"
.LASF40:
	.ascii	"Ialphabeta\000"
.LASF23:
	.ascii	"SHIFT_TAB_ICxx\000"
.LASF8:
	.ascii	"__int32_t\000"
.LASF48:
	.ascii	"bDriveInput\000"
.LASF41:
	.ascii	"IqdHF\000"
.LASF57:
	.ascii	"ConvFact\000"
.LASF16:
	.ascii	"int16_t\000"
.LASF33:
	.ascii	"alphabeta_t\000"
.LASF63:
	.ascii	"pHandle\000"
.LASF26:
	.ascii	"USART_PRESCALER_TAB\000"
.LASF21:
	.ascii	"OFFSET_TAB_CCMRx\000"
.LASF50:
	.ascii	"SensorType\000"
.LASF51:
	.ascii	"ConversionFactor\000"
	.ident	"GCC: (GNU Arm Embedded Toolchain 10-2020-q4-major) 10.2.1 20201103 (release)"
