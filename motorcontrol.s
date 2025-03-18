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
	.file	"motorcontrol.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.MX_MotorControl_Init,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	MX_MotorControl_Init
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	MX_MotorControl_Init, %function
MX_MotorControl_Init:
.LFB1867:
	.file 1 "Src/motorcontrol.c"
	.loc 1 50 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 53 3 view .LVU1
	.loc 1 50 1 is_stmt 0 view .LVU2
	push	{r3, lr}
.LCFI0:
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 1 53 3 view .LVU3
	ldr	r0, .L4
	bl	MCboot
.LVL0:
	.loc 1 54 3 is_stmt 1 view .LVU4
	.loc 1 55 1 is_stmt 0 view .LVU5
	pop	{r3, lr}
.LCFI1:
	.cfi_restore 14
	.cfi_restore 3
	.cfi_def_cfa_offset 0
	.loc 1 54 3 view .LVU6
	b	mc_lock_pins
.LVL1:
.L5:
	.align	2
.L4:
	.word	.LANCHOR0
	.cfi_endproc
.LFE1867:
	.size	MX_MotorControl_Init, .-MX_MotorControl_Init
	.section	.text.vPortSetupTimerInterrupt,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	vPortSetupTimerInterrupt
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	vPortSetupTimerInterrupt, %function
vPortSetupTimerInterrupt:
.LFB1868:
	.loc 1 58 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 60 3 view .LVU8
	.loc 1 58 1 is_stmt 0 view .LVU9
	push	{r3, lr}
.LCFI2:
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 1 60 28 view .LVU10
	bl	HAL_RCC_GetHCLKFreq
.LVL2:
	.loc 1 60 9 view .LVU11
	ldr	r3, .L8
	umull	r3, r0, r3, r0
	lsrs	r0, r0, #7
	.loc 1 61 1 view .LVU12
	pop	{r3, lr}
.LCFI3:
	.cfi_restore 14
	.cfi_restore 3
	.cfi_def_cfa_offset 0
	.loc 1 60 9 view .LVU13
	b	HAL_SYSTICK_Config
.LVL3:
.L9:
	.align	2
.L8:
	.word	274877907
	.cfi_endproc
.LFE1868:
	.size	vPortSetupTimerInterrupt, .-vPortSetupTimerInterrupt
	.global	pMCI
	.section	.bss.pMCI,"aw",%nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	pMCI, %object
	.size	pMCI, 4
pMCI:
	.space	4
	.text
.Letext0:
	.file 2 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "Drivers/CMSIS/Device/ST/STM32G4xx/Include/stm32g431xx.h"
	.file 5 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_ll_tim.h"
	.file 6 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_ll_usart.h"
	.file 7 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_ll_dma.h"
	.file 8 "Inc/mc_type.h"
	.file 9 "MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Inc/pid_regulator.h"
	.file 10 "MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Inc/speed_pos_fdbk.h"
	.file 11 "MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Inc/speed_torq_ctrl.h"
	.file 12 "Inc/pwm_curr_fdbk.h"
	.file 13 "Inc/mc_perf.h"
	.file 14 "Inc/mc_interface.h"
	.file 15 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_hal_rcc.h"
	.file 16 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_hal_cortex.h"
	.file 17 "Inc/mc_tasks.h"
	.file 18 "Inc/mc_config.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x113b
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF254
	.byte	0xc
	.4byte	.LASF255
	.4byte	.LASF256
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x2
	.byte	0x2b
	.byte	0x18
	.4byte	0x3c
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x2
	.byte	0x37
	.byte	0x18
	.4byte	0x4f
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x39
	.byte	0x19
	.4byte	0x62
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x4d
	.byte	0x18
	.4byte	0x75
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x2
	.byte	0x4f
	.byte	0x19
	.4byte	0x88
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x30
	.uleb128 0x5
	.4byte	0xab
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x20
	.byte	0x13
	.4byte	0x43
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x3
	.byte	0x24
	.byte	0x14
	.4byte	0x56
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x3
	.byte	0x2c
	.byte	0x13
	.4byte	0x69
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x7c
	.uleb128 0x6
	.4byte	0xe0
	.uleb128 0x5
	.4byte	0xe0
	.uleb128 0x7
	.4byte	0xec
	.4byte	0x106
	.uleb128 0x8
	.4byte	0xa4
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	0xf6
	.uleb128 0x9
	.byte	0x2c
	.byte	0x4
	.2byte	0x1d0
	.byte	0x9
	.4byte	0x1b6
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x4
	.2byte	0x1d2
	.byte	0x11
	.4byte	0xec
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x4
	.2byte	0x1d3
	.byte	0x11
	.4byte	0xec
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x4
	.2byte	0x1d4
	.byte	0x11
	.4byte	0xec
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x4
	.2byte	0x1d5
	.byte	0x11
	.4byte	0xec
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.ascii	"IDR\000"
	.byte	0x4
	.2byte	0x1d6
	.byte	0x11
	.4byte	0xec
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.ascii	"ODR\000"
	.byte	0x4
	.2byte	0x1d7
	.byte	0x11
	.4byte	0xec
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x4
	.2byte	0x1d8
	.byte	0x11
	.4byte	0xec
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x4
	.2byte	0x1d9
	.byte	0x11
	.4byte	0xec
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.ascii	"AFR\000"
	.byte	0x4
	.2byte	0x1da
	.byte	0x11
	.4byte	0x106
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.ascii	"BRR\000"
	.byte	0x4
	.2byte	0x1db
	.byte	0x11
	.4byte	0xec
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x4
	.2byte	0x1dc
	.byte	0x3
	.4byte	0x10b
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF26
	.uleb128 0x7
	.4byte	0xb7
	.4byte	0x1da
	.uleb128 0x8
	.4byte	0xa4
	.byte	0x9
	.byte	0
	.uleb128 0x5
	.4byte	0x1ca
	.uleb128 0xd
	.4byte	.LASF27
	.byte	0x5
	.byte	0x2d
	.byte	0x16
	.4byte	0x1da
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
	.4byte	.LASF28
	.byte	0x5
	.byte	0x3c
	.byte	0x16
	.4byte	0x1da
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
	.4byte	.LASF29
	.byte	0x5
	.byte	0x4a
	.byte	0x16
	.4byte	0x1da
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
	.4byte	.LASF30
	.byte	0x5
	.byte	0x58
	.byte	0x16
	.4byte	0x1da
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
	.4byte	.LASF31
	.byte	0x5
	.byte	0x66
	.byte	0x16
	.4byte	0x1da
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
	.4byte	0xf1
	.4byte	0x262
	.uleb128 0x8
	.4byte	0xa4
	.byte	0xb
	.byte	0
	.uleb128 0x5
	.4byte	0x252
	.uleb128 0xd
	.4byte	.LASF32
	.byte	0x6
	.byte	0x2e
	.byte	0x17
	.4byte	0x262
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
	.4byte	0xb7
	.4byte	0x2b4
	.uleb128 0x8
	.4byte	0xa4
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.4byte	0x2a4
	.uleb128 0xd
	.4byte	.LASF33
	.byte	0x7
	.byte	0x2f
	.byte	0x16
	.4byte	0x2b4
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
	.4byte	.LASF34
	.uleb128 0xe
	.byte	0x4
	.byte	0x8
	.byte	0x7e
	.byte	0x9
	.4byte	0x2f7
	.uleb128 0xf
	.ascii	"q\000"
	.byte	0x8
	.byte	0x80
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.ascii	"d\000"
	.byte	0x8
	.byte	0x81
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0x8
	.byte	0x82
	.byte	0x3
	.4byte	0x2d3
	.uleb128 0xe
	.byte	0x4
	.byte	0x8
	.byte	0x91
	.byte	0x9
	.4byte	0x327
	.uleb128 0xf
	.ascii	"a\000"
	.byte	0x8
	.byte	0x93
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.ascii	"b\000"
	.byte	0x8
	.byte	0x94
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x8
	.byte	0x95
	.byte	0x3
	.4byte	0x303
	.uleb128 0xe
	.byte	0x4
	.byte	0x8
	.byte	0xa3
	.byte	0x9
	.4byte	0x35b
	.uleb128 0x10
	.4byte	.LASF37
	.byte	0x8
	.byte	0xa5
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.4byte	.LASF38
	.byte	0x8
	.byte	0xa6
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0x8
	.byte	0xa7
	.byte	0x3
	.4byte	0x333
	.uleb128 0x11
	.byte	0x7
	.byte	0x1
	.4byte	0x3c
	.byte	0x8
	.byte	0xd9
	.byte	0x1
	.4byte	0x3ac
	.uleb128 0x12
	.4byte	.LASF40
	.byte	0
	.uleb128 0x12
	.4byte	.LASF41
	.byte	0x1
	.uleb128 0x12
	.4byte	.LASF42
	.byte	0x2
	.uleb128 0x12
	.4byte	.LASF43
	.byte	0x3
	.uleb128 0x12
	.4byte	.LASF44
	.byte	0x4
	.uleb128 0x12
	.4byte	.LASF45
	.byte	0x5
	.uleb128 0x12
	.4byte	.LASF46
	.byte	0x6
	.uleb128 0x12
	.4byte	.LASF47
	.byte	0x7
	.uleb128 0x12
	.4byte	.LASF48
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF49
	.byte	0x8
	.byte	0xed
	.byte	0x3
	.4byte	0x367
	.uleb128 0xe
	.byte	0xc
	.byte	0x8
	.byte	0xfd
	.byte	0x9
	.4byte	0x3f1
	.uleb128 0x10
	.4byte	.LASF50
	.byte	0x8
	.byte	0xff
	.byte	0xb
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF51
	.byte	0x8
	.2byte	0x100
	.byte	0xb
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF52
	.byte	0x8
	.2byte	0x101
	.byte	0xb
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x8
	.2byte	0x102
	.byte	0x3
	.4byte	0x3b8
	.uleb128 0x13
	.byte	0x7
	.byte	0x1
	.4byte	0x3c
	.byte	0x8
	.2byte	0x108
	.byte	0x1
	.4byte	0x41a
	.uleb128 0x12
	.4byte	.LASF54
	.byte	0
	.uleb128 0x12
	.4byte	.LASF55
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x8
	.2byte	0x10a
	.byte	0x3
	.4byte	0x3fe
	.uleb128 0x9
	.byte	0x26
	.byte	0x8
	.2byte	0x10f
	.byte	0x9
	.4byte	0x4f2
	.uleb128 0xb
	.ascii	"Iab\000"
	.byte	0x8
	.2byte	0x112
	.byte	0x8
	.4byte	0x327
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF57
	.byte	0x8
	.2byte	0x116
	.byte	0xf
	.4byte	0x35b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF58
	.byte	0x8
	.2byte	0x11a
	.byte	0x8
	.4byte	0x2f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.ascii	"Iqd\000"
	.byte	0x8
	.2byte	0x11e
	.byte	0x8
	.4byte	0x2f7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF59
	.byte	0x8
	.2byte	0x122
	.byte	0x8
	.4byte	0x2f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF60
	.byte	0x8
	.2byte	0x126
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.ascii	"Vqd\000"
	.byte	0x8
	.2byte	0x12a
	.byte	0x8
	.4byte	0x2f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0xa
	.4byte	.LASF61
	.byte	0x8
	.2byte	0x12e
	.byte	0xf
	.4byte	0x35b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0xa
	.4byte	.LASF62
	.byte	0x8
	.2byte	0x132
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x1e
	.uleb128 0xa
	.4byte	.LASF63
	.byte	0x8
	.2byte	0x136
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF64
	.byte	0x8
	.2byte	0x13a
	.byte	0xc
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x22
	.uleb128 0xa
	.4byte	.LASF65
	.byte	0x8
	.2byte	0x13e
	.byte	0x13
	.4byte	0x41a
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0
	.uleb128 0xc
	.4byte	.LASF66
	.byte	0x8
	.2byte	0x143
	.byte	0xf
	.4byte	0x4ff
	.uleb128 0x14
	.byte	0x4
	.4byte	0x427
	.uleb128 0x13
	.byte	0x7
	.byte	0x1
	.4byte	0x3c
	.byte	0x8
	.2byte	0x156
	.byte	0x1
	.4byte	0x527
	.uleb128 0x12
	.4byte	.LASF67
	.byte	0
	.uleb128 0x12
	.4byte	.LASF68
	.byte	0x1
	.uleb128 0x12
	.4byte	.LASF69
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.4byte	.LASF70
	.byte	0x8
	.2byte	0x15c
	.byte	0x3
	.4byte	0x505
	.uleb128 0xe
	.byte	0x2c
	.byte	0x9
	.byte	0x36
	.byte	0x9
	.4byte	0x64c
	.uleb128 0x10
	.4byte	.LASF71
	.byte	0x9
	.byte	0x38
	.byte	0xd
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.4byte	.LASF72
	.byte	0x9
	.byte	0x3d
	.byte	0xd
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x10
	.4byte	.LASF73
	.byte	0x9
	.byte	0x42
	.byte	0xd
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.4byte	.LASF74
	.byte	0x9
	.byte	0x43
	.byte	0xd
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x10
	.4byte	.LASF75
	.byte	0x9
	.byte	0x44
	.byte	0xd
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.4byte	.LASF76
	.byte	0x9
	.byte	0x51
	.byte	0xd
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x10
	.4byte	.LASF77
	.byte	0x9
	.byte	0x55
	.byte	0xd
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.4byte	.LASF78
	.byte	0x9
	.byte	0x59
	.byte	0xd
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x10
	.4byte	.LASF79
	.byte	0x9
	.byte	0x5e
	.byte	0xd
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0x10
	.4byte	.LASF80
	.byte	0x9
	.byte	0x63
	.byte	0xd
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x10
	.4byte	.LASF81
	.byte	0x9
	.byte	0x6c
	.byte	0xd
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0x10
	.4byte	.LASF82
	.byte	0x9
	.byte	0x75
	.byte	0xd
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x10
	.4byte	.LASF83
	.byte	0x9
	.byte	0x7a
	.byte	0xd
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1e
	.uleb128 0x10
	.4byte	.LASF84
	.byte	0x9
	.byte	0x7f
	.byte	0xd
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x10
	.4byte	.LASF85
	.byte	0x9
	.byte	0x84
	.byte	0xd
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x22
	.uleb128 0x10
	.4byte	.LASF86
	.byte	0x9
	.byte	0x85
	.byte	0xd
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x10
	.4byte	.LASF87
	.byte	0x9
	.byte	0x8e
	.byte	0xd
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x26
	.uleb128 0x10
	.4byte	.LASF88
	.byte	0x9
	.byte	0x93
	.byte	0xd
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.4byte	.LASF89
	.byte	0x9
	.byte	0x9a
	.byte	0x3
	.4byte	0x534
	.uleb128 0xe
	.byte	0x20
	.byte	0xa
	.byte	0x32
	.byte	0x9
	.4byte	0x752
	.uleb128 0x10
	.4byte	.LASF90
	.byte	0xa
	.byte	0x35
	.byte	0xb
	.4byte	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.4byte	.LASF91
	.byte	0xa
	.byte	0x36
	.byte	0xb
	.4byte	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x10
	.4byte	.LASF92
	.byte	0xa
	.byte	0x38
	.byte	0xb
	.4byte	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x10
	.4byte	.LASF93
	.byte	0xa
	.byte	0x3a
	.byte	0xb
	.4byte	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x10
	.4byte	.LASF63
	.byte	0xa
	.byte	0x3b
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.4byte	.LASF94
	.byte	0xa
	.byte	0x3d
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x10
	.4byte	.LASF95
	.byte	0xa
	.byte	0x3e
	.byte	0xb
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.4byte	.LASF96
	.byte	0xa
	.byte	0x3f
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x10
	.4byte	.LASF97
	.byte	0xa
	.byte	0x41
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x10
	.4byte	.LASF98
	.byte	0xa
	.byte	0x44
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.4byte	.LASF99
	.byte	0xa
	.byte	0x46
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0x10
	.4byte	.LASF100
	.byte	0xa
	.byte	0x48
	.byte	0xc
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x10
	.4byte	.LASF101
	.byte	0xa
	.byte	0x4a
	.byte	0xc
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0x10
	.4byte	.LASF102
	.byte	0xa
	.byte	0x4c
	.byte	0xc
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x10
	.4byte	.LASF103
	.byte	0xa
	.byte	0x4f
	.byte	0xc
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0x10
	.4byte	.LASF104
	.byte	0xa
	.byte	0x51
	.byte	0xc
	.4byte	0xe0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0
	.uleb128 0x3
	.4byte	.LASF105
	.byte	0xa
	.byte	0x56
	.byte	0x3
	.4byte	0x658
	.uleb128 0xe
	.byte	0x34
	.byte	0xb
	.byte	0x34
	.byte	0x9
	.4byte	0x885
	.uleb128 0x10
	.4byte	.LASF106
	.byte	0xb
	.byte	0x36
	.byte	0x14
	.4byte	0x3ac
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.4byte	.LASF107
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x10
	.4byte	.LASF108
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.4byte	.LASF109
	.byte	0xb
	.byte	0x3c
	.byte	0xb
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.4byte	.LASF110
	.byte	0xb
	.byte	0x3e
	.byte	0xc
	.4byte	0xe0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x10
	.4byte	.LASF111
	.byte	0xb
	.byte	0x3f
	.byte	0x11
	.4byte	0x885
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.ascii	"SPD\000"
	.byte	0xb
	.byte	0x40
	.byte	0x1b
	.4byte	0x88b
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x10
	.4byte	.LASF112
	.byte	0xb
	.byte	0x41
	.byte	0xb
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x10
	.4byte	.LASF113
	.byte	0xb
	.byte	0x43
	.byte	0xc
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x10
	.4byte	.LASF114
	.byte	0xb
	.byte	0x45
	.byte	0xc
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1e
	.uleb128 0x10
	.4byte	.LASF115
	.byte	0xb
	.byte	0x47
	.byte	0xc
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x10
	.4byte	.LASF116
	.byte	0xb
	.byte	0x49
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x22
	.uleb128 0x10
	.4byte	.LASF117
	.byte	0xb
	.byte	0x4b
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x10
	.4byte	.LASF118
	.byte	0xb
	.byte	0x4d
	.byte	0xc
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x26
	.uleb128 0x10
	.4byte	.LASF119
	.byte	0xb
	.byte	0x4f
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x10
	.4byte	.LASF120
	.byte	0xb
	.byte	0x51
	.byte	0x14
	.4byte	0x3ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x2a
	.uleb128 0x10
	.4byte	.LASF121
	.byte	0xb
	.byte	0x52
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x10
	.4byte	.LASF122
	.byte	0xb
	.byte	0x54
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x2e
	.uleb128 0x10
	.4byte	.LASF123
	.byte	0xb
	.byte	0x56
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.4byte	0x64c
	.uleb128 0x14
	.byte	0x4
	.4byte	0x752
	.uleb128 0x3
	.4byte	.LASF124
	.byte	0xb
	.byte	0x57
	.byte	0x3
	.4byte	0x75e
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF125
	.uleb128 0x6
	.4byte	0x89d
	.uleb128 0x3
	.4byte	.LASF126
	.byte	0xc
	.byte	0x3a
	.byte	0x1c
	.4byte	0x8b5
	.uleb128 0x15
	.4byte	.LASF257
	.byte	0x88
	.byte	0xc
	.byte	0x97
	.byte	0x8
	.4byte	0xc0e
	.uleb128 0x10
	.4byte	.LASF127
	.byte	0xc
	.byte	0x9b
	.byte	0x3
	.4byte	0xc32
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.4byte	.LASF128
	.byte	0xc
	.byte	0x9d
	.byte	0x3
	.4byte	0xc0e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.4byte	.LASF129
	.byte	0xc
	.byte	0x9f
	.byte	0x3
	.4byte	0xc0e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.4byte	.LASF130
	.byte	0xc
	.byte	0xa1
	.byte	0x3
	.4byte	0xc0e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x10
	.4byte	.LASF131
	.byte	0xc
	.byte	0xa3
	.byte	0x3
	.4byte	0xc5b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.4byte	.LASF132
	.byte	0xc
	.byte	0xa5
	.byte	0x3
	.4byte	0xca1
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x10
	.4byte	.LASF133
	.byte	0xc
	.byte	0xa7
	.byte	0x3
	.4byte	0xc7e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x10
	.4byte	.LASF134
	.byte	0xc
	.byte	0xa9
	.byte	0x3
	.4byte	0xc0e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x10
	.4byte	.LASF135
	.byte	0xc
	.byte	0xab
	.byte	0x3
	.4byte	0xc0e
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x10
	.4byte	.LASF136
	.byte	0xc
	.byte	0xad
	.byte	0x3
	.4byte	0xcc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x10
	.4byte	.LASF137
	.byte	0xc
	.byte	0xb0
	.byte	0x3
	.4byte	0xc0e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x10
	.4byte	.LASF138
	.byte	0xc
	.byte	0xb2
	.byte	0x3
	.4byte	0xcea
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x10
	.4byte	.LASF139
	.byte	0xc
	.byte	0xb4
	.byte	0x3
	.4byte	0xd13
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x10
	.4byte	.LASF140
	.byte	0xc
	.byte	0xb6
	.byte	0xd
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x10
	.4byte	.LASF141
	.byte	0xc
	.byte	0xb7
	.byte	0xd
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x10
	.4byte	.LASF142
	.byte	0xc
	.byte	0xb8
	.byte	0x12
	.4byte	0xd1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x10
	.4byte	.LASF143
	.byte	0xc
	.byte	0xb9
	.byte	0x12
	.4byte	0xd1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x10
	.4byte	.LASF144
	.byte	0xc
	.byte	0xba
	.byte	0x12
	.4byte	0xd1f
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x10
	.4byte	.LASF145
	.byte	0xc
	.byte	0xbb
	.byte	0xc
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x10
	.4byte	.LASF146
	.byte	0xc
	.byte	0xbc
	.byte	0xc
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4a
	.uleb128 0x10
	.4byte	.LASF147
	.byte	0xc
	.byte	0xbd
	.byte	0xc
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x10
	.4byte	.LASF148
	.byte	0xc
	.byte	0xbe
	.byte	0xd
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4e
	.uleb128 0x10
	.4byte	.LASF149
	.byte	0xc
	.byte	0xbf
	.byte	0xd
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x10
	.4byte	.LASF150
	.byte	0xc
	.byte	0xc0
	.byte	0xd
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x52
	.uleb128 0x10
	.4byte	.LASF151
	.byte	0xc
	.byte	0xc1
	.byte	0xd
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x10
	.4byte	.LASF152
	.byte	0xc
	.byte	0xc2
	.byte	0xd
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x56
	.uleb128 0x10
	.4byte	.LASF153
	.byte	0xc
	.byte	0xc3
	.byte	0xd
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x10
	.4byte	.LASF154
	.byte	0xc
	.byte	0xc4
	.byte	0xd
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x5a
	.uleb128 0x10
	.4byte	.LASF155
	.byte	0xc
	.byte	0xc5
	.byte	0xd
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x10
	.4byte	.LASF156
	.byte	0xc
	.byte	0xc6
	.byte	0xd
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x5e
	.uleb128 0x10
	.4byte	.LASF157
	.byte	0xc
	.byte	0xc7
	.byte	0xd
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xf
	.ascii	"Ia\000"
	.byte	0xc
	.byte	0xc9
	.byte	0xd
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x62
	.uleb128 0xf
	.ascii	"Ib\000"
	.byte	0xc
	.byte	0xca
	.byte	0xd
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xf
	.ascii	"Ic\000"
	.byte	0xc
	.byte	0xcb
	.byte	0xd
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x66
	.uleb128 0x10
	.4byte	.LASF158
	.byte	0xc
	.byte	0xcc
	.byte	0xd
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x10
	.4byte	.LASF159
	.byte	0xc
	.byte	0xcd
	.byte	0xd
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x6a
	.uleb128 0x10
	.4byte	.LASF160
	.byte	0xc
	.byte	0xce
	.byte	0xd
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x10
	.4byte	.LASF161
	.byte	0xc
	.byte	0xcf
	.byte	0xd
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x6e
	.uleb128 0x10
	.4byte	.LASF162
	.byte	0xc
	.byte	0xd0
	.byte	0xc
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x10
	.4byte	.LASF163
	.byte	0xc
	.byte	0xd2
	.byte	0xc
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x72
	.uleb128 0xf
	.ascii	"Ton\000"
	.byte	0xc
	.byte	0xd5
	.byte	0xd
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x10
	.4byte	.LASF164
	.byte	0xc
	.byte	0xd6
	.byte	0xd
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x76
	.uleb128 0x10
	.4byte	.LASF165
	.byte	0xc
	.byte	0xd7
	.byte	0xd
	.4byte	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x10
	.4byte	.LASF166
	.byte	0xc
	.byte	0xd8
	.byte	0xd
	.4byte	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0x79
	.uleb128 0x10
	.4byte	.LASF167
	.byte	0xc
	.byte	0xd9
	.byte	0xd
	.4byte	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0x7a
	.uleb128 0x10
	.4byte	.LASF168
	.byte	0xc
	.byte	0xda
	.byte	0x1c
	.4byte	0x527
	.byte	0x2
	.byte	0x23
	.uleb128 0x7b
	.uleb128 0x10
	.4byte	.LASF169
	.byte	0xc
	.byte	0xdb
	.byte	0x8
	.4byte	0x89d
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x10
	.4byte	.LASF170
	.byte	0xc
	.byte	0xdd
	.byte	0xd
	.4byte	0x89d
	.byte	0x2
	.byte	0x23
	.uleb128 0x7d
	.uleb128 0x10
	.4byte	.LASF171
	.byte	0xc
	.byte	0xde
	.byte	0xd
	.4byte	0x89d
	.byte	0x2
	.byte	0x23
	.uleb128 0x7e
	.uleb128 0x10
	.4byte	.LASF172
	.byte	0xc
	.byte	0xdf
	.byte	0x8
	.4byte	0x89d
	.byte	0x2
	.byte	0x23
	.uleb128 0x7f
	.uleb128 0x10
	.4byte	.LASF173
	.byte	0xc
	.byte	0xe0
	.byte	0x8
	.4byte	0x89d
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x10
	.4byte	.LASF174
	.byte	0xc
	.byte	0xe1
	.byte	0x8
	.4byte	0x89d
	.byte	0x3
	.byte	0x23
	.uleb128 0x81
	.uleb128 0x10
	.4byte	.LASF175
	.byte	0xc
	.byte	0xe2
	.byte	0x8
	.4byte	0x89d
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0x10
	.4byte	.LASF176
	.byte	0xc
	.byte	0xe3
	.byte	0x8
	.4byte	0x89d
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0x10
	.4byte	.LASF177
	.byte	0xc
	.byte	0xe4
	.byte	0x17
	.4byte	0x8a4
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x10
	.4byte	.LASF178
	.byte	0xc
	.byte	0xe6
	.byte	0x8
	.4byte	0x89d
	.byte	0x3
	.byte	0x23
	.uleb128 0x85
	.byte	0
	.uleb128 0x3
	.4byte	.LASF179
	.byte	0xc
	.byte	0x4a
	.byte	0x10
	.4byte	0xc1a
	.uleb128 0x14
	.byte	0x4
	.4byte	0xc20
	.uleb128 0x16
	.byte	0x1
	.4byte	0xc2c
	.uleb128 0x17
	.4byte	0xc2c
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.4byte	0x8a9
	.uleb128 0x3
	.4byte	.LASF180
	.byte	0xc
	.byte	0x53
	.byte	0x10
	.4byte	0xc3e
	.uleb128 0x14
	.byte	0x4
	.4byte	0xc44
	.uleb128 0x16
	.byte	0x1
	.4byte	0xc55
	.uleb128 0x17
	.4byte	0xc2c
	.uleb128 0x17
	.4byte	0xc55
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.4byte	0x327
	.uleb128 0x3
	.4byte	.LASF181
	.byte	0xc
	.byte	0x5c
	.byte	0x10
	.4byte	0xc67
	.uleb128 0x14
	.byte	0x4
	.4byte	0xc6d
	.uleb128 0x16
	.byte	0x1
	.4byte	0xc7e
	.uleb128 0x17
	.4byte	0xc2c
	.uleb128 0x17
	.4byte	0xf1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF182
	.byte	0xc
	.byte	0x66
	.byte	0x10
	.4byte	0xc8a
	.uleb128 0x14
	.byte	0x4
	.4byte	0xc90
	.uleb128 0x16
	.byte	0x1
	.4byte	0xca1
	.uleb128 0x17
	.4byte	0xc2c
	.uleb128 0x17
	.4byte	0xc8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF183
	.byte	0xc
	.byte	0x75
	.byte	0x14
	.4byte	0xcad
	.uleb128 0x14
	.byte	0x4
	.4byte	0xcb3
	.uleb128 0x18
	.byte	0x1
	.4byte	0xc8
	.4byte	0xcc3
	.uleb128 0x17
	.4byte	0xc2c
	.byte	0
	.uleb128 0x3
	.4byte	.LASF184
	.byte	0xc
	.byte	0x7f
	.byte	0x14
	.4byte	0xccf
	.uleb128 0x14
	.byte	0x4
	.4byte	0xcd5
	.uleb128 0x18
	.byte	0x1
	.4byte	0xc8
	.4byte	0xcea
	.uleb128 0x17
	.4byte	0xc2c
	.uleb128 0x17
	.4byte	0xc8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF185
	.byte	0xc
	.byte	0x89
	.byte	0x10
	.4byte	0xcf6
	.uleb128 0x14
	.byte	0x4
	.4byte	0xcfc
	.uleb128 0x16
	.byte	0x1
	.4byte	0xd0d
	.uleb128 0x17
	.4byte	0xc2c
	.uleb128 0x17
	.4byte	0xd0d
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.4byte	0x3f1
	.uleb128 0x3
	.4byte	.LASF186
	.byte	0xc
	.byte	0x91
	.byte	0x10
	.4byte	0xcf6
	.uleb128 0x14
	.byte	0x4
	.4byte	0x1b6
	.uleb128 0x14
	.byte	0x4
	.4byte	0x891
	.uleb128 0xe
	.byte	0x10
	.byte	0xd
	.byte	0x23
	.byte	0x9
	.4byte	0xd71
	.uleb128 0x10
	.4byte	.LASF187
	.byte	0xd
	.byte	0x25
	.byte	0xf
	.4byte	0xe0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.4byte	.LASF188
	.byte	0xd
	.byte	0x26
	.byte	0xf
	.4byte	0xe0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.ascii	"min\000"
	.byte	0xd
	.byte	0x27
	.byte	0xf
	.4byte	0xe0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.ascii	"max\000"
	.byte	0xd
	.byte	0x28
	.byte	0xf
	.4byte	0xe0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF189
	.byte	0xd
	.byte	0x29
	.byte	0x3
	.4byte	0xd2b
	.uleb128 0xe
	.byte	0x28
	.byte	0xd
	.byte	0x2b
	.byte	0x9
	.4byte	0xdb4
	.uleb128 0x10
	.4byte	.LASF190
	.byte	0xd
	.byte	0x2d
	.byte	0xc
	.4byte	0x89d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.4byte	.LASF191
	.byte	0xd
	.byte	0x2e
	.byte	0xf
	.4byte	0xe0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.4byte	.LASF192
	.byte	0xd
	.byte	0x2f
	.byte	0x13
	.4byte	0xdb4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x7
	.4byte	0xd71
	.4byte	0xdc4
	.uleb128 0x8
	.4byte	0xa4
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF193
	.byte	0xd
	.byte	0x30
	.byte	0x3
	.4byte	0xd7d
	.uleb128 0x11
	.byte	0x7
	.byte	0x1
	.4byte	0x3c
	.byte	0xe
	.byte	0x35
	.byte	0x1
	.4byte	0xdf7
	.uleb128 0x12
	.4byte	.LASF194
	.byte	0
	.uleb128 0x12
	.4byte	.LASF195
	.byte	0x1
	.uleb128 0x12
	.4byte	.LASF196
	.byte	0x2
	.uleb128 0x12
	.4byte	.LASF197
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF198
	.byte	0xe
	.byte	0x3a
	.byte	0x3
	.4byte	0xdd0
	.uleb128 0x11
	.byte	0x7
	.byte	0x1
	.4byte	0x3c
	.byte	0xe
	.byte	0x40
	.byte	0x1
	.4byte	0xe36
	.uleb128 0x12
	.4byte	.LASF199
	.byte	0
	.uleb128 0x12
	.4byte	.LASF200
	.byte	0x1
	.uleb128 0x12
	.4byte	.LASF201
	.byte	0x2
	.uleb128 0x12
	.4byte	.LASF202
	.byte	0x3
	.uleb128 0x12
	.4byte	.LASF203
	.byte	0x4
	.uleb128 0x12
	.4byte	.LASF204
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF205
	.byte	0xe
	.byte	0x47
	.byte	0x3
	.4byte	0xe03
	.uleb128 0xe
	.byte	0x10
	.byte	0xe
	.byte	0x49
	.byte	0x9
	.4byte	0xe88
	.uleb128 0x10
	.4byte	.LASF206
	.byte	0xe
	.byte	0x4b
	.byte	0x8
	.4byte	0x2cc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.4byte	.LASF207
	.byte	0xe
	.byte	0x4c
	.byte	0x8
	.4byte	0x2cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.4byte	.LASF208
	.byte	0xe
	.byte	0x4d
	.byte	0x8
	.4byte	0x2cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.4byte	.LASF209
	.byte	0xe
	.byte	0x4e
	.byte	0x8
	.4byte	0xe88
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x7
	.4byte	0x2cc
	.4byte	0xe98
	.uleb128 0x8
	.4byte	0xa4
	.byte	0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF210
	.byte	0xe
	.byte	0x4f
	.byte	0x1c
	.4byte	0xe42
	.uleb128 0x11
	.byte	0x7
	.byte	0x1
	.4byte	0x3c
	.byte	0xe
	.byte	0x55
	.byte	0x1
	.4byte	0xefb
	.uleb128 0x12
	.4byte	.LASF211
	.byte	0xc
	.uleb128 0x12
	.4byte	.LASF212
	.byte	0
	.uleb128 0x12
	.4byte	.LASF213
	.byte	0x2
	.uleb128 0x12
	.4byte	.LASF214
	.byte	0x10
	.uleb128 0x12
	.4byte	.LASF215
	.byte	0x11
	.uleb128 0x12
	.4byte	.LASF216
	.byte	0x4
	.uleb128 0x12
	.4byte	.LASF217
	.byte	0x13
	.uleb128 0x19
	.ascii	"RUN\000"
	.byte	0x6
	.uleb128 0x12
	.4byte	.LASF218
	.byte	0x8
	.uleb128 0x12
	.4byte	.LASF219
	.byte	0xa
	.uleb128 0x12
	.4byte	.LASF220
	.byte	0xb
	.uleb128 0x12
	.4byte	.LASF221
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.4byte	.LASF222
	.byte	0xe
	.byte	0x75
	.byte	0x3
	.4byte	0xea4
	.uleb128 0x11
	.byte	0x7
	.byte	0x1
	.4byte	0x3c
	.byte	0xe
	.byte	0x7b
	.byte	0x1
	.4byte	0xf3a
	.uleb128 0x12
	.4byte	.LASF223
	.byte	0
	.uleb128 0x12
	.4byte	.LASF224
	.byte	0x1
	.uleb128 0x12
	.4byte	.LASF225
	.byte	0x2
	.uleb128 0x12
	.4byte	.LASF226
	.byte	0x3
	.uleb128 0x12
	.4byte	.LASF227
	.byte	0x4
	.uleb128 0x12
	.4byte	.LASF228
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF229
	.byte	0xe
	.byte	0x83
	.byte	0x3
	.4byte	0xf07
	.uleb128 0xe
	.byte	0x2c
	.byte	0xe
	.byte	0x85
	.byte	0x9
	.4byte	0x1040
	.uleb128 0x10
	.4byte	.LASF230
	.byte	0xe
	.byte	0x87
	.byte	0x1c
	.4byte	0xd25
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.4byte	.LASF231
	.byte	0xe
	.byte	0x88
	.byte	0xe
	.4byte	0x4f2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.4byte	.LASF232
	.byte	0xe
	.byte	0x89
	.byte	0x12
	.4byte	0xc2c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.4byte	.LASF233
	.byte	0xe
	.byte	0x8a
	.byte	0x16
	.4byte	0xe36
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x10
	.4byte	.LASF234
	.byte	0xe
	.byte	0x8b
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x10
	.4byte	.LASF235
	.byte	0xe
	.byte	0x8c
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.4byte	.LASF59
	.byte	0xe
	.byte	0x8d
	.byte	0x8
	.4byte	0x2f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0x10
	.4byte	.LASF236
	.byte	0xe
	.byte	0x8e
	.byte	0x12
	.4byte	0x1040
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x10
	.4byte	.LASF237
	.byte	0xe
	.byte	0x8f
	.byte	0xc
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x10
	.4byte	.LASF238
	.byte	0xe
	.byte	0x90
	.byte	0x17
	.4byte	0xf3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1e
	.uleb128 0x10
	.4byte	.LASF239
	.byte	0xe
	.byte	0x91
	.byte	0xe
	.4byte	0xefb
	.byte	0x2
	.byte	0x23
	.uleb128 0x1f
	.uleb128 0x10
	.4byte	.LASF240
	.byte	0xe
	.byte	0x92
	.byte	0xb
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x10
	.4byte	.LASF241
	.byte	0xe
	.byte	0x93
	.byte	0xb
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x22
	.uleb128 0x10
	.4byte	.LASF242
	.byte	0xe
	.byte	0x94
	.byte	0x15
	.4byte	0xdf7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x10
	.4byte	.LASF243
	.byte	0xe
	.byte	0x95
	.byte	0x13
	.4byte	0x3ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x25
	.uleb128 0x10
	.4byte	.LASF244
	.byte	0xe
	.byte	0x96
	.byte	0x15
	.4byte	0x1046
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.4byte	0xe98
	.uleb128 0x14
	.byte	0x4
	.4byte	0xdc4
	.uleb128 0x3
	.4byte	.LASF245
	.byte	0xe
	.byte	0x97
	.byte	0x3
	.4byte	0xf46
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF246
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF247
	.uleb128 0x14
	.byte	0x4
	.4byte	0x104c
	.uleb128 0x7
	.4byte	0x1066
	.4byte	0x107c
	.uleb128 0x8
	.4byte	0xa4
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF258
	.byte	0x12
	.byte	0x40
	.byte	0x16
	.4byte	0x106c
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.4byte	0x107c
	.byte	0x1
	.byte	0x24
	.byte	0xf
	.byte	0x5
	.byte	0x3
	.4byte	pMCI
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF248
	.byte	0x1
	.byte	0x39
	.byte	0x6
	.byte	0x1
	.4byte	.LFB1868
	.4byte	.LFE1868
	.4byte	.LLST1
	.byte	0x1
	.4byte	0x10c7
	.uleb128 0x1d
	.4byte	.LVL2
	.4byte	0x1104
	.uleb128 0x1e
	.4byte	.LVL3
	.byte	0x1
	.4byte	0x1113
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF249
	.byte	0x1
	.byte	0x31
	.byte	0xd
	.byte	0x1
	.4byte	.LFB1867
	.4byte	.LFE1867
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x1104
	.uleb128 0x1f
	.4byte	.LVL0
	.4byte	0x1122
	.4byte	0x10f9
	.uleb128 0x20
	.byte	0x1
	.byte	0x50
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL1
	.byte	0x1
	.4byte	0x1130
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.byte	0x1
	.4byte	.LASF250
	.4byte	.LASF250
	.byte	0xf
	.2byte	0xd2f
	.byte	0x13
	.uleb128 0x21
	.byte	0x1
	.byte	0x1
	.4byte	.LASF251
	.4byte	.LASF251
	.byte	0x10
	.2byte	0x112
	.byte	0xa
	.uleb128 0x22
	.byte	0x1
	.byte	0x1
	.4byte	.LASF252
	.4byte	.LASF252
	.byte	0x11
	.byte	0x32
	.byte	0x6
	.uleb128 0x22
	.byte	0x1
	.byte	0x1
	.4byte	.LASF253
	.4byte	.LASF253
	.byte	0x11
	.byte	0x6d
	.byte	0x6
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x16
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x22
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
.LLST1:
	.4byte	.LFB1868
	.4byte	.LCFI2
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI2
	.4byte	.LCFI3
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI3
	.4byte	.LFE1868
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LFB1867
	.4byte	.LCFI0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI0
	.4byte	.LCFI1
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI1
	.4byte	.LFE1867
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
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
	.4byte	.LFB1867
	.4byte	.LFE1867-.LFB1867
	.4byte	.LFB1868
	.4byte	.LFE1868-.LFB1868
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB1867
	.4byte	.LFE1867
	.4byte	.LFB1868
	.4byte	.LFE1868
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF133:
	.ascii	"pFctOCPSetReferenceVoltage\000"
.LASF52:
	.ascii	"phaseCOffset\000"
.LASF80:
	.ascii	"hKpDivisor\000"
.LASF112:
	.ascii	"IncDecAmount\000"
.LASF228:
	.ascii	"MCI_STOP\000"
.LASF126:
	.ascii	"PWMC_Handle_t\000"
.LASF23:
	.ascii	"BSRR\000"
.LASF246:
	.ascii	"char\000"
.LASF218:
	.ascii	"STOP\000"
.LASF110:
	.ascii	"RampRemainingStep\000"
.LASF235:
	.ascii	"hFinalTorque\000"
.LASF251:
	.ascii	"HAL_SYSTICK_Config\000"
.LASF68:
	.ascii	"LS_PWM_TIMER\000"
.LASF194:
	.ascii	"MCI_BUFFER_EMPTY\000"
.LASF65:
	.ascii	"bDriveInput\000"
.LASF182:
	.ascii	"PWMC_SetOcpRefVolt_Cb_t\000"
.LASF55:
	.ascii	"EXTERNAL\000"
.LASF139:
	.ascii	"pFctGetOffsetCalib\000"
.LASF132:
	.ascii	"pFctSetADCSampPointSectX\000"
.LASF188:
	.ascii	"DeltaTimeInCycle\000"
.LASF240:
	.ascii	"CurrentFaults\000"
.LASF13:
	.ascii	"unsigned int\000"
.LASF102:
	.ascii	"hMaxReliableMecAccelUnitP\000"
.LASF159:
	.ascii	"IbEst\000"
.LASF93:
	.ascii	"bMaximumSpeedErrorsNumber\000"
.LASF127:
	.ascii	"pFctGetPhaseCurrents\000"
.LASF7:
	.ascii	"__int32_t\000"
.LASF163:
	.ascii	"DTCompCnt\000"
.LASF44:
	.ascii	"MCM_TORQUE_MODE\000"
.LASF88:
	.ascii	"wPrevProcessVarError\000"
.LASF144:
	.ascii	"pwm_en_w_port\000"
.LASF167:
	.ascii	"Sector\000"
.LASF206:
	.ascii	"voltage\000"
.LASF195:
	.ascii	"MCI_COMMAND_NOT_ALREADY_EXECUTED\000"
.LASF239:
	.ascii	"State\000"
.LASF257:
	.ascii	"PWMC_Handle\000"
.LASF256:
	.ascii	"/home/joel/share/EVSPIN32G4_Shinano\000"
.LASF198:
	.ascii	"MCI_CommandState_t\000"
.LASF181:
	.ascii	"PWMC_TurnOnLowSides_Cb_t\000"
.LASF177:
	.ascii	"useEstCurrent\000"
.LASF137:
	.ascii	"pFctRLTurnOnLowSidesAndStart\000"
.LASF241:
	.ascii	"PastFaults\000"
.LASF121:
	.ascii	"MecSpeedRefUnitDefault\000"
.LASF58:
	.ascii	"IqdHF\000"
.LASF78:
	.ascii	"hUpperOutputLimit\000"
.LASF156:
	.ascii	"HighDutyStored\000"
.LASF90:
	.ascii	"bSpeedErrorNumber\000"
.LASF172:
	.ascii	"offsetCalibStatus\000"
.LASF166:
	.ascii	"AlignFlag\000"
.LASF45:
	.ascii	"MCM_PROFILING_MODE\000"
.LASF109:
	.ascii	"TorqueRef\000"
.LASF254:
	.ascii	"GNU C17 10.2.1 20201103 (release) -mcpu=cortex-m4 -"
	.ascii	"mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=hard -march=ar"
	.ascii	"mv7e-m+fp -g -gdwarf-2 -O3 -fdata-sections -ffuncti"
	.ascii	"on-sections\000"
.LASF43:
	.ascii	"MCM_SPEED_MODE\000"
.LASF147:
	.ascii	"pwm_en_w_pin\000"
.LASF258:
	.ascii	"pMCI\000"
.LASF226:
	.ascii	"MCI_MEASURE_OFFSETS\000"
.LASF18:
	.ascii	"uint32_t\000"
.LASF210:
	.ascii	"ScaleParams_t\000"
.LASF196:
	.ascii	"MCI_COMMAND_EXECUTED_SUCCESSFULLY\000"
.LASF227:
	.ascii	"MCI_ALIGN_ENCODER\000"
.LASF171:
	.ascii	"RLDetectionMode\000"
.LASF34:
	.ascii	"float\000"
.LASF184:
	.ascii	"PWMC_RLDetectSetDuty_Cb_t\000"
.LASF107:
	.ascii	"TargetFinal\000"
.LASF248:
	.ascii	"vPortSetupTimerInterrupt\000"
.LASF53:
	.ascii	"PolarizationOffsets_t\000"
.LASF15:
	.ascii	"int16_t\000"
.LASF185:
	.ascii	"PWMC_SetOffsetCalib_Cb_t\000"
.LASF12:
	.ascii	"long long unsigned int\000"
.LASF97:
	.ascii	"hElSpeedDpp\000"
.LASF149:
	.ascii	"CntPhA\000"
.LASF150:
	.ascii	"CntPhB\000"
.LASF151:
	.ascii	"CntPhC\000"
.LASF108:
	.ascii	"SpeedRefUnitExt\000"
.LASF95:
	.ascii	"wMecAngle\000"
.LASF5:
	.ascii	"__uint16_t\000"
.LASF158:
	.ascii	"IaEst\000"
.LASF205:
	.ascii	"MCI_UserCommands_t\000"
.LASF73:
	.ascii	"hKpGain\000"
.LASF49:
	.ascii	"MC_ControlMode_t\000"
.LASF214:
	.ascii	"CHARGE_BOOT_CAP\000"
.LASF116:
	.ascii	"MaxAppNegativeMecSpeedUnit\000"
.LASF154:
	.ascii	"midDuty\000"
.LASF200:
	.ascii	"MCI_CMD_EXECSPEEDRAMP\000"
.LASF231:
	.ascii	"pFOCVars\000"
.LASF141:
	.ascii	"LPFIdBuf\000"
.LASF120:
	.ascii	"ModeDefault\000"
.LASF247:
	.ascii	"double\000"
.LASF192:
	.ascii	"MC_Perf_TraceLog\000"
.LASF125:
	.ascii	"_Bool\000"
.LASF19:
	.ascii	"MODER\000"
.LASF72:
	.ascii	"hDefKiGain\000"
.LASF62:
	.ascii	"hTeref\000"
.LASF249:
	.ascii	"MX_MotorControl_Init\000"
.LASF199:
	.ascii	"MCI_NOCOMMANDSYET\000"
.LASF153:
	.ascii	"lowDuty\000"
.LASF131:
	.ascii	"pFctTurnOnLowSides\000"
.LASF75:
	.ascii	"wIntegralTerm\000"
.LASF180:
	.ascii	"PWMC_GetPhaseCurr_Cb_t\000"
.LASF83:
	.ascii	"hKiDivisorPOW2\000"
.LASF22:
	.ascii	"PUPDR\000"
.LASF115:
	.ascii	"MinAppPositiveMecSpeedUnit\000"
.LASF122:
	.ascii	"TorqueRefDefault\000"
.LASF33:
	.ascii	"CHANNEL_OFFSET_TAB\000"
.LASF243:
	.ascii	"LastModalitySetByUser\000"
.LASF203:
	.ascii	"MCI_CMD_SETOPENLOOPCURRENT\000"
.LASF42:
	.ascii	"MCM_OPEN_LOOP_CURRENT_MODE\000"
.LASF51:
	.ascii	"phaseBOffset\000"
.LASF86:
	.ascii	"hKdDivisor\000"
.LASF105:
	.ascii	"SpeednPosFdbk_Handle_t\000"
.LASF128:
	.ascii	"pFctSwitchOffPwm\000"
.LASF14:
	.ascii	"uint8_t\000"
.LASF201:
	.ascii	"MCI_CMD_EXECTORQUERAMP\000"
.LASF85:
	.ascii	"hKdGain\000"
.LASF224:
	.ascii	"MCI_START\000"
.LASF29:
	.ascii	"SHIFT_TAB_ICxx\000"
.LASF245:
	.ascii	"MCI_Handle_t\000"
.LASF76:
	.ascii	"wUpperIntegralLimit\000"
.LASF81:
	.ascii	"hKiDivisor\000"
.LASF11:
	.ascii	"long long int\000"
.LASF233:
	.ascii	"lastCommand\000"
.LASF36:
	.ascii	"ab_t\000"
.LASF234:
	.ascii	"hFinalSpeed\000"
.LASF67:
	.ascii	"LS_DISABLED\000"
.LASF173:
	.ascii	"OverCurrentFlag\000"
.LASF209:
	.ascii	"padding\000"
.LASF39:
	.ascii	"alphabeta_t\000"
.LASF70:
	.ascii	"LowSideOutputsFunction_t\000"
.LASF117:
	.ascii	"MinAppNegativeMecSpeedUnit\000"
.LASF100:
	.ascii	"hMaxReliableMecSpeedUnit\000"
.LASF3:
	.ascii	"__int16_t\000"
.LASF237:
	.ascii	"hDurationms\000"
.LASF146:
	.ascii	"pwm_en_v_pin\000"
.LASF99:
	.ascii	"hMecAccelUnitP\000"
.LASF216:
	.ascii	"START\000"
.LASF129:
	.ascii	"pFctSwitchOnPwm\000"
.LASF114:
	.ascii	"MaxAppPositiveMecSpeedUnit\000"
.LASF179:
	.ascii	"PWMC_Generic_Cb_t\000"
.LASF165:
	.ascii	"Motor\000"
.LASF123:
	.ascii	"IdrefDefault\000"
.LASF169:
	.ascii	"TurnOnLowSidesAction\000"
.LASF174:
	.ascii	"OverVoltageFlag\000"
.LASF143:
	.ascii	"pwm_en_v_port\000"
.LASF57:
	.ascii	"Ialphabeta\000"
.LASF155:
	.ascii	"highDuty\000"
.LASF204:
	.ascii	"MCI_CMD_SETOPENLOOPVOLTAGE\000"
.LASF124:
	.ascii	"SpeednTorqCtrl_Handle_t\000"
.LASF21:
	.ascii	"OSPEEDR\000"
.LASF253:
	.ascii	"mc_lock_pins\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF71:
	.ascii	"hDefKpGain\000"
.LASF26:
	.ascii	"long double\000"
.LASF16:
	.ascii	"uint16_t\000"
.LASF87:
	.ascii	"hKdDivisorPOW2\000"
.LASF168:
	.ascii	"LowSideOutputs\000"
.LASF61:
	.ascii	"Valphabeta\000"
.LASF160:
	.ascii	"IcEst\000"
.LASF190:
	.ascii	"BG_Task_OnGoing\000"
.LASF152:
	.ascii	"SWerror\000"
.LASF225:
	.ascii	"MCI_ACK_FAULTS\000"
.LASF187:
	.ascii	"StartMeasure\000"
.LASF4:
	.ascii	"short int\000"
.LASF32:
	.ascii	"USART_PRESCALER_TAB\000"
.LASF106:
	.ascii	"Mode\000"
.LASF230:
	.ascii	"pSTC\000"
.LASF8:
	.ascii	"long int\000"
.LASF77:
	.ascii	"wLowerIntegralLimit\000"
.LASF69:
	.ascii	"ES_GPIO\000"
.LASF157:
	.ascii	"OffCalibrWaitTimeCounter\000"
.LASF250:
	.ascii	"HAL_RCC_GetHCLKFreq\000"
.LASF170:
	.ascii	"DPWM_Mode\000"
.LASF197:
	.ascii	"MCI_COMMAND_EXECUTED_UNSUCCESSFULLY\000"
.LASF161:
	.ascii	"LPFIqd_const\000"
.LASF212:
	.ascii	"IDLE\000"
.LASF20:
	.ascii	"OTYPER\000"
.LASF148:
	.ascii	"hT_Sqrt3\000"
.LASF74:
	.ascii	"hKiGain\000"
.LASF48:
	.ascii	"MCM_MODE_NUM\000"
.LASF64:
	.ascii	"hCodeError\000"
.LASF217:
	.ascii	"SWITCH_OVER\000"
.LASF221:
	.ascii	"WAIT_STOP_MOTOR\000"
.LASF183:
	.ascii	"PWMC_SetSampPointSectX_Cb_t\000"
.LASF189:
	.ascii	"Perf_Handle_t\000"
.LASF223:
	.ascii	"MCI_NO_COMMAND\000"
.LASF60:
	.ascii	"UserIdref\000"
.LASF252:
	.ascii	"MCboot\000"
.LASF2:
	.ascii	"__uint8_t\000"
.LASF111:
	.ascii	"PISpeed\000"
.LASF25:
	.ascii	"GPIO_TypeDef\000"
.LASF46:
	.ascii	"MCM_SHORTED_MODE\000"
.LASF175:
	.ascii	"driverProtectionFlag\000"
.LASF35:
	.ascii	"qd_t\000"
.LASF91:
	.ascii	"bElToMecRatio\000"
.LASF202:
	.ascii	"MCI_CMD_SETCURRENTREFERENCES\000"
.LASF92:
	.ascii	"SpeedUnit\000"
.LASF113:
	.ascii	"STCFrequencyHz\000"
.LASF10:
	.ascii	"long unsigned int\000"
.LASF134:
	.ascii	"pFctRLDetectionModeEnable\000"
.LASF37:
	.ascii	"alpha\000"
.LASF17:
	.ascii	"int32_t\000"
.LASF219:
	.ascii	"FAULT_NOW\000"
.LASF136:
	.ascii	"pFctRLDetectionModeSetDuty\000"
.LASF140:
	.ascii	"LPFIqBuf\000"
.LASF119:
	.ascii	"MinNegativeTorque\000"
.LASF215:
	.ascii	"OFFSET_CALIB\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF9:
	.ascii	"__uint32_t\000"
.LASF229:
	.ascii	"MCI_DirectCommands_t\000"
.LASF213:
	.ascii	"ALIGNMENT\000"
.LASF176:
	.ascii	"BrakeActionLock\000"
.LASF207:
	.ascii	"current\000"
.LASF98:
	.ascii	"InstantaneousElSpeedDpp\000"
.LASF164:
	.ascii	"Toff\000"
.LASF40:
	.ascii	"MCM_OBSERVING_MODE\000"
.LASF79:
	.ascii	"hLowerOutputLimit\000"
.LASF220:
	.ascii	"FAULT_OVER\000"
.LASF238:
	.ascii	"DirectCommand\000"
.LASF208:
	.ascii	"frequency\000"
.LASF56:
	.ascii	"CurrRefSource_t\000"
.LASF38:
	.ascii	"beta\000"
.LASF47:
	.ascii	"MCM_POSITION_MODE\000"
.LASF50:
	.ascii	"phaseAOffset\000"
.LASF145:
	.ascii	"pwm_en_u_pin\000"
.LASF31:
	.ascii	"SHIFT_TAB_OISx\000"
.LASF104:
	.ascii	"DPPConvFactor\000"
.LASF96:
	.ascii	"hAvrMecSpeedUnit\000"
.LASF82:
	.ascii	"hKpDivisorPOW2\000"
.LASF193:
	.ascii	"MC_Perf_Handle_t\000"
.LASF162:
	.ascii	"PWMperiod\000"
.LASF135:
	.ascii	"pFctRLDetectionModeDisable\000"
.LASF0:
	.ascii	"signed char\000"
.LASF232:
	.ascii	"pPWM\000"
.LASF118:
	.ascii	"MaxPositiveTorque\000"
.LASF54:
	.ascii	"INTERNAL\000"
.LASF130:
	.ascii	"pFctCurrReadingCalib\000"
.LASF222:
	.ascii	"MCI_State_t\000"
.LASF27:
	.ascii	"OFFSET_TAB_CCMRx\000"
.LASF103:
	.ascii	"hMeasurementFrequency\000"
.LASF59:
	.ascii	"Iqdref\000"
.LASF178:
	.ascii	"SingleShuntTopology\000"
.LASF142:
	.ascii	"pwm_en_u_port\000"
.LASF28:
	.ascii	"SHIFT_TAB_OCxx\000"
.LASF63:
	.ascii	"hElAngle\000"
.LASF191:
	.ascii	"AccHighFreqTasksCnt\000"
.LASF66:
	.ascii	"pFOCVars_t\000"
.LASF186:
	.ascii	"PWMC_GetOffsetCalib_Cb_t\000"
.LASF89:
	.ascii	"PID_Handle_t\000"
.LASF244:
	.ascii	"pPerfMeasure\000"
.LASF94:
	.ascii	"hMecAngle\000"
.LASF236:
	.ascii	"pScale\000"
.LASF41:
	.ascii	"MCM_OPEN_LOOP_VOLTAGE_MODE\000"
.LASF138:
	.ascii	"pFctSetOffsetCalib\000"
.LASF101:
	.ascii	"hMinReliableMecSpeedUnit\000"
.LASF30:
	.ascii	"SHIFT_TAB_CCxP\000"
.LASF84:
	.ascii	"hDefKdGain\000"
.LASF255:
	.ascii	"Src/motorcontrol.c\000"
.LASF242:
	.ascii	"CommandState\000"
.LASF24:
	.ascii	"LCKR\000"
.LASF211:
	.ascii	"ICLWAIT\000"
	.ident	"GCC: (GNU Arm Embedded Toolchain 10-2020-q4-major) 10.2.1 20201103 (release)"
