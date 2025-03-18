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
	.file	"stm32g4xx_hal_msp.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.HAL_MspInit,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_MspInit
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_MspInit, %function
HAL_MspInit:
.LFB1867:
	.file 1 "Src/stm32g4xx_hal_msp.c"
	.loc 1 64 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 70 3 view .LVU1
.LBB2:
	.loc 1 70 3 view .LVU2
	.loc 1 70 3 view .LVU3
	ldr	r3, .L4
.LBE2:
	.loc 1 64 1 is_stmt 0 view .LVU4
	push	{r4, lr}
.LCFI0:
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
.LBB3:
	.loc 1 70 3 view .LVU5
	ldr	r0, [r3, #96]
	orr	r0, r0, #1
	str	r0, [r3, #96]
	.loc 1 70 3 is_stmt 1 view .LVU6
	ldr	r4, [r3, #96]
.LBE3:
	.loc 1 64 1 is_stmt 0 view .LVU7
	sub	sp, sp, #8
.LCFI1:
	.cfi_def_cfa_offset 16
.LBB4:
	.loc 1 70 3 view .LVU8
	and	r4, r4, #1
	str	r4, [sp]
	.loc 1 70 3 is_stmt 1 view .LVU9
	ldr	r4, [sp]
.LBE4:
	.loc 1 70 3 view .LVU10
	.loc 1 71 3 view .LVU11
.LBB5:
	.loc 1 71 3 view .LVU12
	.loc 1 71 3 view .LVU13
	ldr	r4, [r3, #88]
	orr	r4, r4, #268435456
	str	r4, [r3, #88]
	.loc 1 71 3 view .LVU14
	ldr	r3, [r3, #88]
	and	r3, r3, #268435456
	str	r3, [sp, #4]
	.loc 1 71 3 view .LVU15
.LBE5:
	.loc 1 75 3 is_stmt 0 view .LVU16
	movs	r2, #0
	movs	r1, #15
	mvn	r0, #1
.LBB6:
	.loc 1 71 3 view .LVU17
	ldr	r3, [sp, #4]
.LBE6:
	.loc 1 71 3 is_stmt 1 view .LVU18
	.loc 1 75 3 view .LVU19
	bl	HAL_NVIC_SetPriority
.LVL0:
	.loc 1 79 3 view .LVU20
	.loc 1 84 1 is_stmt 0 view .LVU21
	add	sp, sp, #8
.LCFI2:
	.cfi_def_cfa_offset 8
	@ sp needed
	pop	{r4, lr}
.LCFI3:
	.cfi_restore 14
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 79 3 view .LVU22
	b	HAL_PWREx_DisableUCPDDeadBattery
.LVL1:
.L5:
	.align	2
.L4:
	.word	1073876992
	.cfi_endproc
.LFE1867:
	.size	HAL_MspInit, .-HAL_MspInit
	.text
.Letext0:
	.file 2 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "Drivers/CMSIS/Device/ST/STM32G4xx/Include/stm32g431xx.h"
	.file 5 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_ll_tim.h"
	.file 6 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_ll_usart.h"
	.file 7 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_ll_dma.h"
	.file 8 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_hal_cortex.h"
	.file 9 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_hal_pwr_ex.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x6ec
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF146
	.byte	0xc
	.4byte	.LASF147
	.4byte	.LASF148
	.4byte	.Ldebug_ranges0+0x38
	.4byte	0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x5
	.byte	0x1
	.4byte	0x212
	.byte	0x4
	.byte	0x42
	.byte	0x1
	.4byte	0x212
	.uleb128 0x3
	.4byte	.LASF0
	.sleb128 -14
	.uleb128 0x3
	.4byte	.LASF1
	.sleb128 -13
	.uleb128 0x3
	.4byte	.LASF2
	.sleb128 -12
	.uleb128 0x3
	.4byte	.LASF3
	.sleb128 -11
	.uleb128 0x3
	.4byte	.LASF4
	.sleb128 -10
	.uleb128 0x3
	.4byte	.LASF5
	.sleb128 -5
	.uleb128 0x3
	.4byte	.LASF6
	.sleb128 -4
	.uleb128 0x3
	.4byte	.LASF7
	.sleb128 -2
	.uleb128 0x3
	.4byte	.LASF8
	.sleb128 -1
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x2
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x3
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x6
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x7
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x9
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0xa
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0xb
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0xc
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0xd
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0xe
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0xf
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0x10
	.uleb128 0x4
	.4byte	.LASF26
	.byte	0x12
	.uleb128 0x4
	.4byte	.LASF27
	.byte	0x13
	.uleb128 0x4
	.4byte	.LASF28
	.byte	0x14
	.uleb128 0x4
	.4byte	.LASF29
	.byte	0x15
	.uleb128 0x4
	.4byte	.LASF30
	.byte	0x16
	.uleb128 0x4
	.4byte	.LASF31
	.byte	0x17
	.uleb128 0x4
	.4byte	.LASF32
	.byte	0x18
	.uleb128 0x4
	.4byte	.LASF33
	.byte	0x19
	.uleb128 0x4
	.4byte	.LASF34
	.byte	0x1a
	.uleb128 0x4
	.4byte	.LASF35
	.byte	0x1b
	.uleb128 0x4
	.4byte	.LASF36
	.byte	0x1c
	.uleb128 0x4
	.4byte	.LASF37
	.byte	0x1d
	.uleb128 0x4
	.4byte	.LASF38
	.byte	0x1e
	.uleb128 0x4
	.4byte	.LASF39
	.byte	0x1f
	.uleb128 0x4
	.4byte	.LASF40
	.byte	0x20
	.uleb128 0x4
	.4byte	.LASF41
	.byte	0x21
	.uleb128 0x4
	.4byte	.LASF42
	.byte	0x22
	.uleb128 0x4
	.4byte	.LASF43
	.byte	0x23
	.uleb128 0x4
	.4byte	.LASF44
	.byte	0x24
	.uleb128 0x4
	.4byte	.LASF45
	.byte	0x25
	.uleb128 0x4
	.4byte	.LASF46
	.byte	0x26
	.uleb128 0x4
	.4byte	.LASF47
	.byte	0x27
	.uleb128 0x4
	.4byte	.LASF48
	.byte	0x28
	.uleb128 0x4
	.4byte	.LASF49
	.byte	0x29
	.uleb128 0x4
	.4byte	.LASF50
	.byte	0x2a
	.uleb128 0x4
	.4byte	.LASF51
	.byte	0x2b
	.uleb128 0x4
	.4byte	.LASF52
	.byte	0x2c
	.uleb128 0x4
	.4byte	.LASF53
	.byte	0x2d
	.uleb128 0x4
	.4byte	.LASF54
	.byte	0x2e
	.uleb128 0x4
	.4byte	.LASF55
	.byte	0x31
	.uleb128 0x4
	.4byte	.LASF56
	.byte	0x33
	.uleb128 0x4
	.4byte	.LASF57
	.byte	0x34
	.uleb128 0x4
	.4byte	.LASF58
	.byte	0x36
	.uleb128 0x4
	.4byte	.LASF59
	.byte	0x37
	.uleb128 0x4
	.4byte	.LASF60
	.byte	0x38
	.uleb128 0x4
	.4byte	.LASF61
	.byte	0x39
	.uleb128 0x4
	.4byte	.LASF62
	.byte	0x3a
	.uleb128 0x4
	.4byte	.LASF63
	.byte	0x3b
	.uleb128 0x4
	.4byte	.LASF64
	.byte	0x3c
	.uleb128 0x4
	.4byte	.LASF65
	.byte	0x3f
	.uleb128 0x4
	.4byte	.LASF66
	.byte	0x40
	.uleb128 0x4
	.4byte	.LASF67
	.byte	0x41
	.uleb128 0x4
	.4byte	.LASF68
	.byte	0x4b
	.uleb128 0x4
	.4byte	.LASF69
	.byte	0x4c
	.uleb128 0x4
	.4byte	.LASF70
	.byte	0x51
	.uleb128 0x4
	.4byte	.LASF71
	.byte	0x5a
	.uleb128 0x4
	.4byte	.LASF72
	.byte	0x5b
	.uleb128 0x4
	.4byte	.LASF73
	.byte	0x5c
	.uleb128 0x4
	.4byte	.LASF74
	.byte	0x5d
	.uleb128 0x4
	.4byte	.LASF75
	.byte	0x5e
	.uleb128 0x4
	.4byte	.LASF76
	.byte	0x61
	.uleb128 0x4
	.4byte	.LASF77
	.byte	0x64
	.uleb128 0x4
	.4byte	.LASF78
	.byte	0x65
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.4byte	.LASF79
	.uleb128 0x6
	.4byte	.LASF84
	.byte	0x2
	.byte	0x2b
	.byte	0x18
	.4byte	0x225
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF80
	.uleb128 0x5
	.byte	0x2
	.byte	0x5
	.4byte	.LASF81
	.uleb128 0x5
	.byte	0x2
	.byte	0x7
	.4byte	.LASF82
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.4byte	.LASF83
	.uleb128 0x6
	.4byte	.LASF85
	.byte	0x2
	.byte	0x4f
	.byte	0x19
	.4byte	0x24d
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF86
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.4byte	.LASF87
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.4byte	.LASF88
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF89
	.uleb128 0x6
	.4byte	.LASF90
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x219
	.uleb128 0x8
	.4byte	0x270
	.uleb128 0x6
	.4byte	.LASF91
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x241
	.uleb128 0x9
	.4byte	0x281
	.uleb128 0x8
	.4byte	0x281
	.uleb128 0xa
	.byte	0xa0
	.byte	0x4
	.2byte	0x23f
	.byte	0x9
	.4byte	0x529
	.uleb128 0xb
	.ascii	"CR\000"
	.byte	0x4
	.2byte	0x241
	.byte	0x11
	.4byte	0x28d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.4byte	.LASF92
	.byte	0x4
	.2byte	0x242
	.byte	0x11
	.4byte	0x28d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.4byte	.LASF93
	.byte	0x4
	.2byte	0x243
	.byte	0x11
	.4byte	0x28d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.4byte	.LASF94
	.byte	0x4
	.2byte	0x244
	.byte	0x11
	.4byte	0x28d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.4byte	.LASF95
	.byte	0x4
	.2byte	0x245
	.byte	0x11
	.4byte	0x281
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.4byte	.LASF96
	.byte	0x4
	.2byte	0x246
	.byte	0x11
	.4byte	0x281
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xc
	.4byte	.LASF97
	.byte	0x4
	.2byte	0x247
	.byte	0x11
	.4byte	0x28d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.4byte	.LASF98
	.byte	0x4
	.2byte	0x248
	.byte	0x11
	.4byte	0x28d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xc
	.4byte	.LASF99
	.byte	0x4
	.2byte	0x249
	.byte	0x11
	.4byte	0x28d
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xc
	.4byte	.LASF100
	.byte	0x4
	.2byte	0x24a
	.byte	0x11
	.4byte	0x281
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xc
	.4byte	.LASF101
	.byte	0x4
	.2byte	0x24b
	.byte	0x11
	.4byte	0x28d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xc
	.4byte	.LASF102
	.byte	0x4
	.2byte	0x24c
	.byte	0x11
	.4byte	0x28d
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xc
	.4byte	.LASF103
	.byte	0x4
	.2byte	0x24d
	.byte	0x11
	.4byte	0x28d
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xc
	.4byte	.LASF104
	.byte	0x4
	.2byte	0x24e
	.byte	0x11
	.4byte	0x281
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xc
	.4byte	.LASF105
	.byte	0x4
	.2byte	0x24f
	.byte	0x11
	.4byte	0x28d
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xc
	.4byte	.LASF106
	.byte	0x4
	.2byte	0x250
	.byte	0x11
	.4byte	0x28d
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xc
	.4byte	.LASF107
	.byte	0x4
	.2byte	0x251
	.byte	0x11
	.4byte	0x28d
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xc
	.4byte	.LASF108
	.byte	0x4
	.2byte	0x252
	.byte	0x11
	.4byte	0x281
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xc
	.4byte	.LASF109
	.byte	0x4
	.2byte	0x253
	.byte	0x11
	.4byte	0x28d
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xc
	.4byte	.LASF110
	.byte	0x4
	.2byte	0x254
	.byte	0x11
	.4byte	0x28d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xc
	.4byte	.LASF111
	.byte	0x4
	.2byte	0x255
	.byte	0x11
	.4byte	0x28d
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xc
	.4byte	.LASF112
	.byte	0x4
	.2byte	0x256
	.byte	0x11
	.4byte	0x281
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xc
	.4byte	.LASF113
	.byte	0x4
	.2byte	0x257
	.byte	0x11
	.4byte	0x28d
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xc
	.4byte	.LASF114
	.byte	0x4
	.2byte	0x258
	.byte	0x11
	.4byte	0x28d
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xc
	.4byte	.LASF115
	.byte	0x4
	.2byte	0x259
	.byte	0x11
	.4byte	0x28d
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xc
	.4byte	.LASF116
	.byte	0x4
	.2byte	0x25a
	.byte	0x11
	.4byte	0x281
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xc
	.4byte	.LASF117
	.byte	0x4
	.2byte	0x25b
	.byte	0x11
	.4byte	0x28d
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xc
	.4byte	.LASF118
	.byte	0x4
	.2byte	0x25c
	.byte	0x11
	.4byte	0x28d
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xc
	.4byte	.LASF119
	.byte	0x4
	.2byte	0x25d
	.byte	0x11
	.4byte	0x28d
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xc
	.4byte	.LASF120
	.byte	0x4
	.2byte	0x25e
	.byte	0x11
	.4byte	0x281
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xc
	.4byte	.LASF121
	.byte	0x4
	.2byte	0x25f
	.byte	0x11
	.4byte	0x28d
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xc
	.4byte	.LASF122
	.byte	0x4
	.2byte	0x260
	.byte	0x11
	.4byte	0x28d
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xc
	.4byte	.LASF123
	.byte	0x4
	.2byte	0x261
	.byte	0x11
	.4byte	0x28d
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xc
	.4byte	.LASF124
	.byte	0x4
	.2byte	0x262
	.byte	0x11
	.4byte	0x281
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0xc
	.4byte	.LASF125
	.byte	0x4
	.2byte	0x263
	.byte	0x11
	.4byte	0x28d
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xc
	.4byte	.LASF126
	.byte	0x4
	.2byte	0x264
	.byte	0x11
	.4byte	0x281
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xc
	.4byte	.LASF127
	.byte	0x4
	.2byte	0x265
	.byte	0x11
	.4byte	0x28d
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xb
	.ascii	"CSR\000"
	.byte	0x4
	.2byte	0x266
	.byte	0x11
	.4byte	0x28d
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xc
	.4byte	.LASF128
	.byte	0x4
	.2byte	0x267
	.byte	0x11
	.4byte	0x28d
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xc
	.4byte	.LASF129
	.byte	0x4
	.2byte	0x268
	.byte	0x11
	.4byte	0x28d
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.byte	0
	.uleb128 0xd
	.4byte	.LASF130
	.byte	0x4
	.2byte	0x269
	.byte	0x3
	.4byte	0x297
	.uleb128 0x5
	.byte	0x8
	.byte	0x4
	.4byte	.LASF131
	.uleb128 0xe
	.4byte	0x27c
	.4byte	0x54d
	.uleb128 0xf
	.4byte	0x269
	.byte	0x9
	.byte	0
	.uleb128 0x8
	.4byte	0x53d
	.uleb128 0x10
	.4byte	.LASF132
	.byte	0x5
	.byte	0x2d
	.byte	0x16
	.4byte	0x54d
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
	.uleb128 0x10
	.4byte	.LASF133
	.byte	0x5
	.byte	0x3c
	.byte	0x16
	.4byte	0x54d
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
	.uleb128 0x10
	.4byte	.LASF134
	.byte	0x5
	.byte	0x4a
	.byte	0x16
	.4byte	0x54d
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
	.uleb128 0x10
	.4byte	.LASF135
	.byte	0x5
	.byte	0x58
	.byte	0x16
	.4byte	0x54d
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
	.uleb128 0x10
	.4byte	.LASF136
	.byte	0x5
	.byte	0x66
	.byte	0x16
	.4byte	0x54d
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
	.uleb128 0xe
	.4byte	0x292
	.4byte	0x5d5
	.uleb128 0xf
	.4byte	0x269
	.byte	0xb
	.byte	0
	.uleb128 0x8
	.4byte	0x5c5
	.uleb128 0x10
	.4byte	.LASF137
	.byte	0x6
	.byte	0x2e
	.byte	0x17
	.4byte	0x5d5
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
	.uleb128 0xe
	.4byte	0x27c
	.4byte	0x627
	.uleb128 0xf
	.4byte	0x269
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.4byte	0x617
	.uleb128 0x10
	.4byte	.LASF138
	.byte	0x7
	.byte	0x2f
	.byte	0x16
	.4byte	0x627
	.byte	0x6
	.byte	0x8
	.byte	0x1c
	.byte	0x30
	.byte	0x44
	.byte	0x58
	.byte	0x6c
	.uleb128 0x5
	.byte	0x4
	.byte	0x4
	.4byte	.LASF139
	.uleb128 0x5
	.byte	0x1
	.byte	0x2
	.4byte	.LASF140
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF141
	.uleb128 0x5
	.byte	0x8
	.byte	0x4
	.4byte	.LASF142
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF149
	.byte	0x1
	.byte	0x3f
	.byte	0x6
	.byte	0x1
	.4byte	.LFB1867
	.4byte	.LFE1867
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x6d1
	.uleb128 0x12
	.4byte	.Ldebug_ranges0+0
	.4byte	0x68f
	.uleb128 0x13
	.4byte	.LASF143
	.byte	0x1
	.byte	0x46
	.byte	0x3
	.4byte	0x28d
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x12
	.4byte	.Ldebug_ranges0+0x20
	.4byte	0x6a8
	.uleb128 0x13
	.4byte	.LASF143
	.byte	0x1
	.byte	0x47
	.byte	0x3
	.4byte	0x28d
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x14
	.4byte	.LVL0
	.4byte	0x6d1
	.4byte	0x6c6
	.uleb128 0x15
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x9
	.byte	0xfe
	.uleb128 0x15
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x3f
	.uleb128 0x15
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x16
	.4byte	.LVL1
	.byte	0x1
	.4byte	0x6e0
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.byte	0x1
	.4byte	.LASF144
	.4byte	.LASF144
	.byte	0x8
	.2byte	0x10e
	.byte	0x6
	.uleb128 0x17
	.byte	0x1
	.byte	0x1
	.4byte	.LASF145
	.4byte	.LASF145
	.byte	0x9
	.2byte	0x318
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
	.uleb128 0x3
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x12
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
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
	.4byte	.LCFI2
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI2
	.4byte	.LCFI3
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI3
	.4byte	.LFE1867
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB1867
	.4byte	.LFE1867-.LFB1867
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	0
	.4byte	0
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	0
	.4byte	0
	.4byte	.LFB1867
	.4byte	.LFE1867
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF34:
	.ascii	"TIM1_TRG_COM_TIM17_IRQn\000"
.LASF67:
	.ascii	"COMP4_IRQn\000"
.LASF135:
	.ascii	"SHIFT_TAB_CCxP\000"
.LASF39:
	.ascii	"I2C1_EV_IRQn\000"
.LASF84:
	.ascii	"__uint8_t\000"
.LASF88:
	.ascii	"long long unsigned int\000"
.LASF60:
	.ascii	"DMA2_Channel1_IRQn\000"
.LASF129:
	.ascii	"CCIPR2\000"
.LASF49:
	.ascii	"RTC_Alarm_IRQn\000"
.LASF42:
	.ascii	"I2C2_ER_IRQn\000"
.LASF38:
	.ascii	"TIM4_IRQn\000"
.LASF17:
	.ascii	"EXTI2_IRQn\000"
.LASF9:
	.ascii	"WWDG_IRQn\000"
.LASF97:
	.ascii	"CIER\000"
.LASF22:
	.ascii	"DMA1_Channel3_IRQn\000"
.LASF79:
	.ascii	"signed char\000"
.LASF101:
	.ascii	"AHB1RSTR\000"
.LASF117:
	.ascii	"AHB1SMENR\000"
.LASF123:
	.ascii	"APB2SMENR\000"
.LASF143:
	.ascii	"tmpreg\000"
.LASF132:
	.ascii	"OFFSET_TAB_CCMRx\000"
.LASF64:
	.ascii	"DMA2_Channel5_IRQn\000"
.LASF83:
	.ascii	"long int\000"
.LASF107:
	.ascii	"APB2RSTR\000"
.LASF105:
	.ascii	"APB1RSTR1\000"
.LASF106:
	.ascii	"APB1RSTR2\000"
.LASF31:
	.ascii	"EXTI9_5_IRQn\000"
.LASF87:
	.ascii	"long long int\000"
.LASF24:
	.ascii	"DMA1_Channel5_IRQn\000"
.LASF142:
	.ascii	"double\000"
.LASF77:
	.ascii	"CORDIC_IRQn\000"
.LASF26:
	.ascii	"ADC1_2_IRQn\000"
.LASF58:
	.ascii	"TIM6_DAC_IRQn\000"
.LASF94:
	.ascii	"PLLCFGR\000"
.LASF57:
	.ascii	"UART4_IRQn\000"
.LASF74:
	.ascii	"I2C3_ER_IRQn\000"
.LASF7:
	.ascii	"PendSV_IRQn\000"
.LASF23:
	.ascii	"DMA1_Channel4_IRQn\000"
.LASF98:
	.ascii	"CIFR\000"
.LASF85:
	.ascii	"__uint32_t\000"
.LASF3:
	.ascii	"BusFault_IRQn\000"
.LASF118:
	.ascii	"AHB2SMENR\000"
.LASF99:
	.ascii	"CICR\000"
.LASF30:
	.ascii	"FDCAN1_IT1_IRQn\000"
.LASF76:
	.ascii	"DMA2_Channel6_IRQn\000"
.LASF55:
	.ascii	"LPTIM1_IRQn\000"
.LASF89:
	.ascii	"unsigned int\000"
.LASF137:
	.ascii	"USART_PRESCALER_TAB\000"
.LASF93:
	.ascii	"CFGR\000"
.LASF2:
	.ascii	"MemoryManagement_IRQn\000"
.LASF73:
	.ascii	"I2C3_EV_IRQn\000"
.LASF86:
	.ascii	"long unsigned int\000"
.LASF69:
	.ascii	"SAI1_IRQn\000"
.LASF130:
	.ascii	"RCC_TypeDef\000"
.LASF5:
	.ascii	"SVCall_IRQn\000"
.LASF82:
	.ascii	"short unsigned int\000"
.LASF12:
	.ascii	"RTC_WKUP_IRQn\000"
.LASF119:
	.ascii	"AHB3SMENR\000"
.LASF103:
	.ascii	"AHB3RSTR\000"
.LASF48:
	.ascii	"EXTI15_10_IRQn\000"
.LASF149:
	.ascii	"HAL_MspInit\000"
.LASF43:
	.ascii	"SPI1_IRQn\000"
.LASF44:
	.ascii	"SPI2_IRQn\000"
.LASF81:
	.ascii	"short int\000"
.LASF27:
	.ascii	"USB_HP_IRQn\000"
.LASF134:
	.ascii	"SHIFT_TAB_ICxx\000"
.LASF8:
	.ascii	"SysTick_IRQn\000"
.LASF35:
	.ascii	"TIM1_CC_IRQn\000"
.LASF59:
	.ascii	"TIM7_IRQn\000"
.LASF21:
	.ascii	"DMA1_Channel2_IRQn\000"
.LASF51:
	.ascii	"TIM8_BRK_IRQn\000"
.LASF29:
	.ascii	"FDCAN1_IT0_IRQn\000"
.LASF54:
	.ascii	"TIM8_CC_IRQn\000"
.LASF131:
	.ascii	"long double\000"
.LASF61:
	.ascii	"DMA2_Channel2_IRQn\000"
.LASF18:
	.ascii	"EXTI3_IRQn\000"
.LASF33:
	.ascii	"TIM1_UP_TIM16_IRQn\000"
.LASF145:
	.ascii	"HAL_PWREx_DisableUCPDDeadBattery\000"
.LASF62:
	.ascii	"DMA2_Channel3_IRQn\000"
.LASF113:
	.ascii	"APB1ENR1\000"
.LASF114:
	.ascii	"APB1ENR2\000"
.LASF148:
	.ascii	"/home/joel/share/EVSPIN32G4_Shinano\000"
.LASF139:
	.ascii	"float\000"
.LASF20:
	.ascii	"DMA1_Channel1_IRQn\000"
.LASF146:
	.ascii	"GNU C17 10.2.1 20201103 (release) -mcpu=cortex-m4 -"
	.ascii	"mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=hard -march=ar"
	.ascii	"mv7e-m+fp -g -gdwarf-2 -O3 -fdata-sections -ffuncti"
	.ascii	"on-sections\000"
.LASF95:
	.ascii	"RESERVED0\000"
.LASF96:
	.ascii	"RESERVED1\000"
.LASF100:
	.ascii	"RESERVED2\000"
.LASF10:
	.ascii	"PVD_PVM_IRQn\000"
.LASF45:
	.ascii	"USART1_IRQn\000"
.LASF112:
	.ascii	"RESERVED5\000"
.LASF116:
	.ascii	"RESERVED6\000"
.LASF120:
	.ascii	"RESERVED7\000"
.LASF124:
	.ascii	"RESERVED8\000"
.LASF126:
	.ascii	"RESERVED9\000"
.LASF68:
	.ascii	"CRS_IRQn\000"
.LASF140:
	.ascii	"_Bool\000"
.LASF80:
	.ascii	"unsigned char\000"
.LASF53:
	.ascii	"TIM8_TRG_COM_IRQn\000"
.LASF19:
	.ascii	"EXTI4_IRQn\000"
.LASF125:
	.ascii	"CCIPR\000"
.LASF71:
	.ascii	"RNG_IRQn\000"
.LASF128:
	.ascii	"CRRCR\000"
.LASF72:
	.ascii	"LPUART1_IRQn\000"
.LASF66:
	.ascii	"COMP1_2_3_IRQn\000"
.LASF115:
	.ascii	"APB2ENR\000"
.LASF111:
	.ascii	"AHB3ENR\000"
.LASF13:
	.ascii	"FLASH_IRQn\000"
.LASF104:
	.ascii	"RESERVED3\000"
.LASF108:
	.ascii	"RESERVED4\000"
.LASF91:
	.ascii	"uint32_t\000"
.LASF46:
	.ascii	"USART2_IRQn\000"
.LASF4:
	.ascii	"UsageFault_IRQn\000"
.LASF141:
	.ascii	"char\000"
.LASF63:
	.ascii	"DMA2_Channel4_IRQn\000"
.LASF144:
	.ascii	"HAL_NVIC_SetPriority\000"
.LASF11:
	.ascii	"RTC_TAMP_LSECSS_IRQn\000"
.LASF102:
	.ascii	"AHB2RSTR\000"
.LASF0:
	.ascii	"NonMaskableInt_IRQn\000"
.LASF133:
	.ascii	"SHIFT_TAB_OCxx\000"
.LASF138:
	.ascii	"CHANNEL_OFFSET_TAB\000"
.LASF25:
	.ascii	"DMA1_Channel6_IRQn\000"
.LASF28:
	.ascii	"USB_LP_IRQn\000"
.LASF110:
	.ascii	"AHB2ENR\000"
.LASF147:
	.ascii	"Src/stm32g4xx_hal_msp.c\000"
.LASF1:
	.ascii	"HardFault_IRQn\000"
.LASF136:
	.ascii	"SHIFT_TAB_OISx\000"
.LASF50:
	.ascii	"USBWakeUp_IRQn\000"
.LASF75:
	.ascii	"DMAMUX_OVR_IRQn\000"
.LASF41:
	.ascii	"I2C2_EV_IRQn\000"
.LASF47:
	.ascii	"USART3_IRQn\000"
.LASF36:
	.ascii	"TIM2_IRQn\000"
.LASF52:
	.ascii	"TIM8_UP_IRQn\000"
.LASF15:
	.ascii	"EXTI0_IRQn\000"
.LASF127:
	.ascii	"BDCR\000"
.LASF90:
	.ascii	"uint8_t\000"
.LASF14:
	.ascii	"RCC_IRQn\000"
.LASF32:
	.ascii	"TIM1_BRK_TIM15_IRQn\000"
.LASF92:
	.ascii	"ICSCR\000"
.LASF121:
	.ascii	"APB1SMENR1\000"
.LASF109:
	.ascii	"AHB1ENR\000"
.LASF70:
	.ascii	"FPU_IRQn\000"
.LASF6:
	.ascii	"DebugMonitor_IRQn\000"
.LASF65:
	.ascii	"UCPD1_IRQn\000"
.LASF40:
	.ascii	"I2C1_ER_IRQn\000"
.LASF56:
	.ascii	"SPI3_IRQn\000"
.LASF78:
	.ascii	"FMAC_IRQn\000"
.LASF37:
	.ascii	"TIM3_IRQn\000"
.LASF16:
	.ascii	"EXTI1_IRQn\000"
.LASF122:
	.ascii	"APB1SMENR2\000"
	.ident	"GCC: (GNU Arm Embedded Toolchain 10-2020-q4-major) 10.2.1 20201103 (release)"
