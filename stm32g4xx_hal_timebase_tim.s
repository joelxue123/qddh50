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
	.file	"stm32g4xx_hal_timebase_tim.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.HAL_InitTick,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_InitTick
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_InitTick, %function
HAL_InitTick:
.LVL0:
.LFB132:
	.file 1 "Src/stm32g4xx_hal_timebase_tim.c"
	.loc 1 42 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 43 3 view .LVU1
	.loc 1 44 3 view .LVU2
	.loc 1 45 3 view .LVU3
	.loc 1 46 3 view .LVU4
	.loc 1 47 3 view .LVU5
	.loc 1 50 3 view .LVU6
.LBB2:
	.loc 1 50 3 view .LVU7
	.loc 1 50 3 view .LVU8
	ldr	r3, .L8
.LBE2:
	.loc 1 42 1 is_stmt 0 view .LVU9
	push	{r4, r5, r6, lr}
.LCFI0:
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
.LBB3:
	.loc 1 50 3 view .LVU10
	ldr	r2, [r3, #88]
.LBE3:
	.loc 1 62 18 view .LVU11
	ldr	r4, .L8+4
.LBB4:
	.loc 1 50 3 view .LVU12
	orr	r2, r2, #16
	str	r2, [r3, #88]
	.loc 1 50 3 is_stmt 1 view .LVU13
	ldr	r3, [r3, #88]
.LBE4:
	.loc 1 42 1 is_stmt 0 view .LVU14
	sub	sp, sp, #32
.LCFI1:
	.cfi_def_cfa_offset 48
.LBB5:
	.loc 1 50 3 view .LVU15
	and	r3, r3, #16
.LBE5:
	.loc 1 53 3 view .LVU16
	add	r1, sp, #4
.LBB6:
	.loc 1 50 3 view .LVU17
	str	r3, [sp, #8]
	.loc 1 50 3 is_stmt 1 view .LVU18
.LBE6:
	.loc 1 42 1 is_stmt 0 view .LVU19
	mov	r6, r0
	.loc 1 53 3 view .LVU20
	add	r0, sp, #12
.LVL1:
.LBB7:
	.loc 1 50 3 view .LVU21
	ldr	r3, [sp, #8]
.LBE7:
	.loc 1 50 3 is_stmt 1 view .LVU22
	.loc 1 53 3 view .LVU23
	bl	HAL_RCC_GetClockConfig
.LVL2:
	.loc 1 56 3 view .LVU24
	.loc 1 56 16 is_stmt 0 view .LVU25
	bl	HAL_RCC_GetPCLK1Freq
.LVL3:
	.loc 1 59 46 view .LVU26
	ldr	r2, .L8+8
.LVL4:
	.loc 1 59 3 is_stmt 1 view .LVU27
	.loc 1 62 3 view .LVU28
	.loc 1 62 18 is_stmt 0 view .LVU29
	ldr	r1, .L8+12
	.loc 1 59 46 view .LVU30
	umull	r2, r3, r2, r0
	lsrs	r3, r3, #18
	.loc 1 59 20 view .LVU31
	subs	r3, r3, #1
	.loc 1 73 28 view .LVU32
	movs	r2, #0
	.loc 1 72 24 view .LVU33
	strd	r1, r3, [r4]
	.loc 1 76 12 view .LVU34
	mov	r0, r4
.LVL5:
	.loc 1 71 21 view .LVU35
	movw	r3, #999
	.loc 1 73 28 view .LVU36
	str	r2, [r4, #16]
	.loc 1 74 26 view .LVU37
	str	r2, [r4, #8]
	.loc 1 71 21 view .LVU38
	str	r3, [r4, #12]
	.loc 1 72 3 is_stmt 1 view .LVU39
	.loc 1 73 3 view .LVU40
	.loc 1 74 3 view .LVU41
	.loc 1 76 3 view .LVU42
	.loc 1 76 12 is_stmt 0 view .LVU43
	bl	HAL_TIM_Base_Init
.LVL6:
	.loc 1 77 3 is_stmt 1 view .LVU44
	.loc 1 77 6 is_stmt 0 view .LVU45
	mov	r5, r0
	cbz	r0, .L6
.LVL7:
.L2:
	.loc 1 100 3 is_stmt 1 view .LVU46
	.loc 1 101 1 is_stmt 0 view .LVU47
	mov	r0, r5
	add	sp, sp, #32
.LCFI2:
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	@ sp needed
	pop	{r4, r5, r6, pc}
.LVL8:
.L6:
.LCFI3:
	.cfi_restore_state
	.loc 1 80 5 is_stmt 1 view .LVU48
	.loc 1 80 14 is_stmt 0 view .LVU49
	mov	r0, r4
.LVL9:
	.loc 1 80 14 view .LVU50
	bl	HAL_TIM_Base_Start_IT
.LVL10:
	.loc 1 81 5 is_stmt 1 view .LVU51
	.loc 1 81 8 is_stmt 0 view .LVU52
	mov	r5, r0
	cmp	r0, #0
	bne	.L2
	.loc 1 84 9 is_stmt 1 view .LVU53
	movs	r0, #54
.LVL11:
	.loc 1 84 9 is_stmt 0 view .LVU54
	bl	HAL_NVIC_EnableIRQ
.LVL12:
	.loc 1 86 7 is_stmt 1 view .LVU55
	.loc 1 86 10 is_stmt 0 view .LVU56
	cmp	r6, #15
	bls	.L7
	.loc 1 94 16 view .LVU57
	movs	r5, #1
	b	.L2
.L7:
	.loc 1 89 9 is_stmt 1 view .LVU58
	mov	r2, r5
	mov	r1, r6
	movs	r0, #54
	bl	HAL_NVIC_SetPriority
.LVL13:
	.loc 1 90 9 view .LVU59
	.loc 1 90 20 is_stmt 0 view .LVU60
	ldr	r3, .L8+16
	str	r6, [r3]
	b	.L2
.L9:
	.align	2
.L8:
	.word	1073876992
	.word	.LANCHOR0
	.word	1125899907
	.word	1073745920
	.word	uwTickPrio
	.cfi_endproc
.LFE132:
	.size	HAL_InitTick, .-HAL_InitTick
	.section	.text.HAL_SuspendTick,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_SuspendTick
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_SuspendTick, %function
HAL_SuspendTick:
.LFB133:
	.loc 1 110 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 112 3 view .LVU62
	ldr	r3, .L11
	ldr	r2, [r3]
	ldr	r3, [r2, #12]
	bic	r3, r3, #1
	str	r3, [r2, #12]
	.loc 1 113 1 is_stmt 0 view .LVU63
	bx	lr
.L12:
	.align	2
.L11:
	.word	.LANCHOR0
	.cfi_endproc
.LFE133:
	.size	HAL_SuspendTick, .-HAL_SuspendTick
	.section	.text.HAL_ResumeTick,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_ResumeTick
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_ResumeTick, %function
HAL_ResumeTick:
.LFB134:
	.loc 1 122 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 124 3 view .LVU65
	ldr	r3, .L14
	ldr	r2, [r3]
	ldr	r3, [r2, #12]
	orr	r3, r3, #1
	str	r3, [r2, #12]
	.loc 1 125 1 is_stmt 0 view .LVU66
	bx	lr
.L15:
	.align	2
.L14:
	.word	.LANCHOR0
	.cfi_endproc
.LFE134:
	.size	HAL_ResumeTick, .-HAL_ResumeTick
	.global	htim6
	.section	.bss.htim6,"aw",%nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	htim6, %object
	.size	htim6, 76
htim6:
	.space	76
	.text
.Letext0:
	.file 2 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "Drivers/CMSIS/Device/ST/STM32G4xx/Include/stm32g431xx.h"
	.file 5 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_hal_def.h"
	.file 6 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_hal_rcc.h"
	.file 7 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_hal_dma.h"
	.file 8 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_hal_tim.h"
	.file 9 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_hal.h"
	.file 10 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_hal_cortex.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xf6f
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF258
	.byte	0xc
	.4byte	.LASF259
	.4byte	.LASF260
	.4byte	.Ldebug_ranges0+0x38
	.4byte	0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF79
	.uleb128 0x3
	.byte	0x5
	.byte	0x1
	.4byte	0x219
	.byte	0x4
	.byte	0x42
	.byte	0x1
	.4byte	0x219
	.uleb128 0x4
	.4byte	.LASF0
	.sleb128 -14
	.uleb128 0x4
	.4byte	.LASF1
	.sleb128 -13
	.uleb128 0x4
	.4byte	.LASF2
	.sleb128 -12
	.uleb128 0x4
	.4byte	.LASF3
	.sleb128 -11
	.uleb128 0x4
	.4byte	.LASF4
	.sleb128 -10
	.uleb128 0x4
	.4byte	.LASF5
	.sleb128 -5
	.uleb128 0x4
	.4byte	.LASF6
	.sleb128 -4
	.uleb128 0x4
	.4byte	.LASF7
	.sleb128 -2
	.uleb128 0x4
	.4byte	.LASF8
	.sleb128 -1
	.uleb128 0x5
	.4byte	.LASF9
	.byte	0
	.uleb128 0x5
	.4byte	.LASF10
	.byte	0x1
	.uleb128 0x5
	.4byte	.LASF11
	.byte	0x2
	.uleb128 0x5
	.4byte	.LASF12
	.byte	0x3
	.uleb128 0x5
	.4byte	.LASF13
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF14
	.byte	0x5
	.uleb128 0x5
	.4byte	.LASF15
	.byte	0x6
	.uleb128 0x5
	.4byte	.LASF16
	.byte	0x7
	.uleb128 0x5
	.4byte	.LASF17
	.byte	0x8
	.uleb128 0x5
	.4byte	.LASF18
	.byte	0x9
	.uleb128 0x5
	.4byte	.LASF19
	.byte	0xa
	.uleb128 0x5
	.4byte	.LASF20
	.byte	0xb
	.uleb128 0x5
	.4byte	.LASF21
	.byte	0xc
	.uleb128 0x5
	.4byte	.LASF22
	.byte	0xd
	.uleb128 0x5
	.4byte	.LASF23
	.byte	0xe
	.uleb128 0x5
	.4byte	.LASF24
	.byte	0xf
	.uleb128 0x5
	.4byte	.LASF25
	.byte	0x10
	.uleb128 0x5
	.4byte	.LASF26
	.byte	0x12
	.uleb128 0x5
	.4byte	.LASF27
	.byte	0x13
	.uleb128 0x5
	.4byte	.LASF28
	.byte	0x14
	.uleb128 0x5
	.4byte	.LASF29
	.byte	0x15
	.uleb128 0x5
	.4byte	.LASF30
	.byte	0x16
	.uleb128 0x5
	.4byte	.LASF31
	.byte	0x17
	.uleb128 0x5
	.4byte	.LASF32
	.byte	0x18
	.uleb128 0x5
	.4byte	.LASF33
	.byte	0x19
	.uleb128 0x5
	.4byte	.LASF34
	.byte	0x1a
	.uleb128 0x5
	.4byte	.LASF35
	.byte	0x1b
	.uleb128 0x5
	.4byte	.LASF36
	.byte	0x1c
	.uleb128 0x5
	.4byte	.LASF37
	.byte	0x1d
	.uleb128 0x5
	.4byte	.LASF38
	.byte	0x1e
	.uleb128 0x5
	.4byte	.LASF39
	.byte	0x1f
	.uleb128 0x5
	.4byte	.LASF40
	.byte	0x20
	.uleb128 0x5
	.4byte	.LASF41
	.byte	0x21
	.uleb128 0x5
	.4byte	.LASF42
	.byte	0x22
	.uleb128 0x5
	.4byte	.LASF43
	.byte	0x23
	.uleb128 0x5
	.4byte	.LASF44
	.byte	0x24
	.uleb128 0x5
	.4byte	.LASF45
	.byte	0x25
	.uleb128 0x5
	.4byte	.LASF46
	.byte	0x26
	.uleb128 0x5
	.4byte	.LASF47
	.byte	0x27
	.uleb128 0x5
	.4byte	.LASF48
	.byte	0x28
	.uleb128 0x5
	.4byte	.LASF49
	.byte	0x29
	.uleb128 0x5
	.4byte	.LASF50
	.byte	0x2a
	.uleb128 0x5
	.4byte	.LASF51
	.byte	0x2b
	.uleb128 0x5
	.4byte	.LASF52
	.byte	0x2c
	.uleb128 0x5
	.4byte	.LASF53
	.byte	0x2d
	.uleb128 0x5
	.4byte	.LASF54
	.byte	0x2e
	.uleb128 0x5
	.4byte	.LASF55
	.byte	0x31
	.uleb128 0x5
	.4byte	.LASF56
	.byte	0x33
	.uleb128 0x5
	.4byte	.LASF57
	.byte	0x34
	.uleb128 0x5
	.4byte	.LASF58
	.byte	0x36
	.uleb128 0x5
	.4byte	.LASF59
	.byte	0x37
	.uleb128 0x5
	.4byte	.LASF60
	.byte	0x38
	.uleb128 0x5
	.4byte	.LASF61
	.byte	0x39
	.uleb128 0x5
	.4byte	.LASF62
	.byte	0x3a
	.uleb128 0x5
	.4byte	.LASF63
	.byte	0x3b
	.uleb128 0x5
	.4byte	.LASF64
	.byte	0x3c
	.uleb128 0x5
	.4byte	.LASF65
	.byte	0x3f
	.uleb128 0x5
	.4byte	.LASF66
	.byte	0x40
	.uleb128 0x5
	.4byte	.LASF67
	.byte	0x41
	.uleb128 0x5
	.4byte	.LASF68
	.byte	0x4b
	.uleb128 0x5
	.4byte	.LASF69
	.byte	0x4c
	.uleb128 0x5
	.4byte	.LASF70
	.byte	0x51
	.uleb128 0x5
	.4byte	.LASF71
	.byte	0x5a
	.uleb128 0x5
	.4byte	.LASF72
	.byte	0x5b
	.uleb128 0x5
	.4byte	.LASF73
	.byte	0x5c
	.uleb128 0x5
	.4byte	.LASF74
	.byte	0x5d
	.uleb128 0x5
	.4byte	.LASF75
	.byte	0x5e
	.uleb128 0x5
	.4byte	.LASF76
	.byte	0x61
	.uleb128 0x5
	.4byte	.LASF77
	.byte	0x64
	.uleb128 0x5
	.4byte	.LASF78
	.byte	0x65
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF80
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF81
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF82
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF83
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF84
	.uleb128 0x6
	.4byte	.LASF88
	.byte	0x2
	.byte	0x4f
	.byte	0x19
	.4byte	0x248
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF85
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF86
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF87
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x6
	.4byte	.LASF89
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x23c
	.uleb128 0x8
	.4byte	0x264
	.uleb128 0x9
	.byte	0x10
	.byte	0x4
	.2byte	0x167
	.byte	0x9
	.4byte	0x2c0
	.uleb128 0xa
	.ascii	"CCR\000"
	.byte	0x4
	.2byte	0x169
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF90
	.byte	0x4
	.2byte	0x16a
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF91
	.byte	0x4
	.2byte	0x16b
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF92
	.byte	0x4
	.2byte	0x16c
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0xc
	.4byte	.LASF93
	.byte	0x4
	.2byte	0x16d
	.byte	0x3
	.4byte	0x275
	.uleb128 0x9
	.byte	0x8
	.byte	0x4
	.2byte	0x16f
	.byte	0x9
	.4byte	0x2f8
	.uleb128 0xa
	.ascii	"ISR\000"
	.byte	0x4
	.2byte	0x171
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF94
	.byte	0x4
	.2byte	0x172
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xc
	.4byte	.LASF95
	.byte	0x4
	.2byte	0x173
	.byte	0x3
	.4byte	0x2cd
	.uleb128 0x9
	.byte	0x4
	.byte	0x4
	.2byte	0x179
	.byte	0x9
	.4byte	0x320
	.uleb128 0xa
	.ascii	"CCR\000"
	.byte	0x4
	.2byte	0x17b
	.byte	0x13
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF96
	.byte	0x4
	.2byte	0x17c
	.byte	0x2
	.4byte	0x305
	.uleb128 0x9
	.byte	0x8
	.byte	0x4
	.2byte	0x17e
	.byte	0x9
	.4byte	0x358
	.uleb128 0xa
	.ascii	"CSR\000"
	.byte	0x4
	.2byte	0x180
	.byte	0x13
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.ascii	"CFR\000"
	.byte	0x4
	.2byte	0x181
	.byte	0x13
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xc
	.4byte	.LASF97
	.byte	0x4
	.2byte	0x182
	.byte	0x2
	.4byte	0x32d
	.uleb128 0x9
	.byte	0x4
	.byte	0x4
	.2byte	0x184
	.byte	0x9
	.4byte	0x380
	.uleb128 0xb
	.4byte	.LASF98
	.byte	0x4
	.2byte	0x186
	.byte	0x13
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF99
	.byte	0x4
	.2byte	0x187
	.byte	0x2
	.4byte	0x365
	.uleb128 0x9
	.byte	0x8
	.byte	0x4
	.2byte	0x189
	.byte	0x9
	.4byte	0x3b8
	.uleb128 0xb
	.4byte	.LASF100
	.byte	0x4
	.2byte	0x18b
	.byte	0x13
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF101
	.byte	0x4
	.2byte	0x18c
	.byte	0x13
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xc
	.4byte	.LASF102
	.byte	0x4
	.2byte	0x18d
	.byte	0x2
	.4byte	0x38d
	.uleb128 0x9
	.byte	0xa0
	.byte	0x4
	.2byte	0x23f
	.byte	0x9
	.4byte	0x657
	.uleb128 0xa
	.ascii	"CR\000"
	.byte	0x4
	.2byte	0x241
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF103
	.byte	0x4
	.2byte	0x242
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF104
	.byte	0x4
	.2byte	0x243
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF105
	.byte	0x4
	.2byte	0x244
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF106
	.byte	0x4
	.2byte	0x245
	.byte	0x11
	.4byte	0x264
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.4byte	.LASF107
	.byte	0x4
	.2byte	0x246
	.byte	0x11
	.4byte	0x264
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.4byte	.LASF108
	.byte	0x4
	.2byte	0x247
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.4byte	.LASF109
	.byte	0x4
	.2byte	0x248
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.4byte	.LASF110
	.byte	0x4
	.2byte	0x249
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.4byte	.LASF111
	.byte	0x4
	.2byte	0x24a
	.byte	0x11
	.4byte	0x264
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.4byte	.LASF112
	.byte	0x4
	.2byte	0x24b
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.4byte	.LASF113
	.byte	0x4
	.2byte	0x24c
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.4byte	.LASF114
	.byte	0x4
	.2byte	0x24d
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.4byte	.LASF115
	.byte	0x4
	.2byte	0x24e
	.byte	0x11
	.4byte	0x264
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.4byte	.LASF116
	.byte	0x4
	.2byte	0x24f
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.4byte	.LASF117
	.byte	0x4
	.2byte	0x250
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xb
	.4byte	.LASF118
	.byte	0x4
	.2byte	0x251
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.4byte	.LASF119
	.byte	0x4
	.2byte	0x252
	.byte	0x11
	.4byte	0x264
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xb
	.4byte	.LASF120
	.byte	0x4
	.2byte	0x253
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xb
	.4byte	.LASF121
	.byte	0x4
	.2byte	0x254
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xb
	.4byte	.LASF122
	.byte	0x4
	.2byte	0x255
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xb
	.4byte	.LASF123
	.byte	0x4
	.2byte	0x256
	.byte	0x11
	.4byte	0x264
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xb
	.4byte	.LASF124
	.byte	0x4
	.2byte	0x257
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xb
	.4byte	.LASF125
	.byte	0x4
	.2byte	0x258
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xb
	.4byte	.LASF126
	.byte	0x4
	.2byte	0x259
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xb
	.4byte	.LASF127
	.byte	0x4
	.2byte	0x25a
	.byte	0x11
	.4byte	0x264
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xb
	.4byte	.LASF128
	.byte	0x4
	.2byte	0x25b
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xb
	.4byte	.LASF129
	.byte	0x4
	.2byte	0x25c
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xb
	.4byte	.LASF130
	.byte	0x4
	.2byte	0x25d
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xb
	.4byte	.LASF131
	.byte	0x4
	.2byte	0x25e
	.byte	0x11
	.4byte	0x264
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xb
	.4byte	.LASF132
	.byte	0x4
	.2byte	0x25f
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xb
	.4byte	.LASF133
	.byte	0x4
	.2byte	0x260
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xb
	.4byte	.LASF134
	.byte	0x4
	.2byte	0x261
	.byte	0x11
	.4byte	0x270
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xb
	.4byte	.LASF135
	.byte	0x4
	.2byte	0x262
	.byte	0x11
	.4byte	0x264
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0xb
	.4byte	.LASF136
	.byte	0x4
	.2byte	0x263
	.byte	0x11
	.4byte	0x270
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xb
	.4byte	.LASF137
	.byte	0x4
	.2byte	0x264
	.byte	0x11
	.4byte	0x264
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xb
	.4byte	.LASF138
	.byte	0x4
	.2byte	0x265
	.byte	0x11
	.4byte	0x270
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xa
	.ascii	"CSR\000"
	.byte	0x4
	.2byte	0x266
	.byte	0x11
	.4byte	0x270
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xb
	.4byte	.LASF139
	.byte	0x4
	.2byte	0x267
	.byte	0x11
	.4byte	0x270
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xb
	.4byte	.LASF140
	.byte	0x4
	.2byte	0x268
	.byte	0x11
	.4byte	0x270
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.byte	0
	.uleb128 0xc
	.4byte	.LASF141
	.byte	0x4
	.2byte	0x269
	.byte	0x3
	.4byte	0x3c5
	.uleb128 0xd
	.2byte	0x3e4
	.byte	0x4
	.2byte	0x2f3
	.byte	0x9
	.4byte	0x850
	.uleb128 0xa
	.ascii	"CR1\000"
	.byte	0x4
	.2byte	0x2f5
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.ascii	"CR2\000"
	.byte	0x4
	.2byte	0x2f6
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF142
	.byte	0x4
	.2byte	0x2f7
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF143
	.byte	0x4
	.2byte	0x2f8
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.ascii	"SR\000"
	.byte	0x4
	.2byte	0x2f9
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.ascii	"EGR\000"
	.byte	0x4
	.2byte	0x2fa
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.4byte	.LASF144
	.byte	0x4
	.2byte	0x2fb
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.4byte	.LASF145
	.byte	0x4
	.2byte	0x2fc
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.4byte	.LASF146
	.byte	0x4
	.2byte	0x2fd
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.ascii	"CNT\000"
	.byte	0x4
	.2byte	0x2fe
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.ascii	"PSC\000"
	.byte	0x4
	.2byte	0x2ff
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.ascii	"ARR\000"
	.byte	0x4
	.2byte	0x300
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xa
	.ascii	"RCR\000"
	.byte	0x4
	.2byte	0x301
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.4byte	.LASF147
	.byte	0x4
	.2byte	0x302
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.4byte	.LASF148
	.byte	0x4
	.2byte	0x303
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.4byte	.LASF149
	.byte	0x4
	.2byte	0x304
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xb
	.4byte	.LASF150
	.byte	0x4
	.2byte	0x305
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.4byte	.LASF151
	.byte	0x4
	.2byte	0x306
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xb
	.4byte	.LASF152
	.byte	0x4
	.2byte	0x307
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xb
	.4byte	.LASF153
	.byte	0x4
	.2byte	0x308
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xb
	.4byte	.LASF154
	.byte	0x4
	.2byte	0x309
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xb
	.4byte	.LASF155
	.byte	0x4
	.2byte	0x30a
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xa
	.ascii	"ECR\000"
	.byte	0x4
	.2byte	0x30b
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xb
	.4byte	.LASF156
	.byte	0x4
	.2byte	0x30c
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xa
	.ascii	"AF1\000"
	.byte	0x4
	.2byte	0x30d
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xa
	.ascii	"AF2\000"
	.byte	0x4
	.2byte	0x30e
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xa
	.ascii	"OR\000"
	.byte	0x4
	.2byte	0x30f
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xb
	.4byte	.LASF106
	.byte	0x4
	.2byte	0x310
	.byte	0x11
	.4byte	0x850
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xa
	.ascii	"DCR\000"
	.byte	0x4
	.2byte	0x311
	.byte	0x11
	.4byte	0x270
	.byte	0x3
	.byte	0x23
	.uleb128 0x3dc
	.uleb128 0xb
	.4byte	.LASF157
	.byte	0x4
	.2byte	0x312
	.byte	0x11
	.4byte	0x270
	.byte	0x3
	.byte	0x23
	.uleb128 0x3e0
	.byte	0
	.uleb128 0xe
	.4byte	0x264
	.4byte	0x860
	.uleb128 0xf
	.4byte	0x29
	.byte	0xdb
	.byte	0
	.uleb128 0xc
	.4byte	.LASF158
	.byte	0x4
	.2byte	0x313
	.byte	0x3
	.4byte	0x664
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF159
	.uleb128 0x3
	.byte	0x7
	.byte	0x1
	.4byte	0x220
	.byte	0x5
	.byte	0x27
	.byte	0x1
	.4byte	0x89b
	.uleb128 0x5
	.4byte	.LASF160
	.byte	0
	.uleb128 0x5
	.4byte	.LASF161
	.byte	0x1
	.uleb128 0x5
	.4byte	.LASF162
	.byte	0x2
	.uleb128 0x5
	.4byte	.LASF163
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.4byte	.LASF164
	.byte	0x5
	.byte	0x2c
	.byte	0x3
	.4byte	0x874
	.uleb128 0x3
	.byte	0x7
	.byte	0x1
	.4byte	0x220
	.byte	0x5
	.byte	0x32
	.byte	0x1
	.4byte	0x8c2
	.uleb128 0x5
	.4byte	.LASF165
	.byte	0
	.uleb128 0x5
	.4byte	.LASF166
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF167
	.byte	0x5
	.byte	0x35
	.byte	0x3
	.4byte	0x8a7
	.uleb128 0x10
	.byte	0x14
	.byte	0x6
	.byte	0x68
	.byte	0x9
	.4byte	0x923
	.uleb128 0x11
	.4byte	.LASF168
	.byte	0x6
	.byte	0x6a
	.byte	0xc
	.4byte	0x264
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.4byte	.LASF169
	.byte	0x6
	.byte	0x6d
	.byte	0xc
	.4byte	0x264
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.4byte	.LASF170
	.byte	0x6
	.byte	0x70
	.byte	0xc
	.4byte	0x264
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.4byte	.LASF171
	.byte	0x6
	.byte	0x73
	.byte	0xc
	.4byte	0x264
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.4byte	.LASF172
	.byte	0x6
	.byte	0x76
	.byte	0xc
	.4byte	0x264
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x6
	.4byte	.LASF173
	.byte	0x6
	.byte	0x79
	.byte	0x2
	.4byte	0x8ce
	.uleb128 0x10
	.byte	0x20
	.byte	0x7
	.byte	0x2e
	.byte	0x9
	.4byte	0x9b1
	.uleb128 0x11
	.4byte	.LASF174
	.byte	0x7
	.byte	0x30
	.byte	0xc
	.4byte	0x264
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.4byte	.LASF175
	.byte	0x7
	.byte	0x33
	.byte	0xc
	.4byte	0x264
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.4byte	.LASF176
	.byte	0x7
	.byte	0x37
	.byte	0xc
	.4byte	0x264
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.4byte	.LASF177
	.byte	0x7
	.byte	0x3a
	.byte	0xc
	.4byte	0x264
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.4byte	.LASF178
	.byte	0x7
	.byte	0x3d
	.byte	0xc
	.4byte	0x264
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.4byte	.LASF179
	.byte	0x7
	.byte	0x40
	.byte	0xc
	.4byte	0x264
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x11
	.4byte	.LASF180
	.byte	0x7
	.byte	0x43
	.byte	0xc
	.4byte	0x264
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x11
	.4byte	.LASF181
	.byte	0x7
	.byte	0x48
	.byte	0xc
	.4byte	0x264
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0
	.uleb128 0x6
	.4byte	.LASF182
	.byte	0x7
	.byte	0x4a
	.byte	0x3
	.4byte	0x92f
	.uleb128 0x3
	.byte	0x7
	.byte	0x1
	.4byte	0x220
	.byte	0x7
	.byte	0x50
	.byte	0x1
	.4byte	0x9e4
	.uleb128 0x5
	.4byte	.LASF183
	.byte	0
	.uleb128 0x5
	.4byte	.LASF184
	.byte	0x1
	.uleb128 0x5
	.4byte	.LASF185
	.byte	0x2
	.uleb128 0x5
	.4byte	.LASF186
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.4byte	.LASF187
	.byte	0x7
	.byte	0x55
	.byte	0x3
	.4byte	0x9bd
	.uleb128 0x8
	.4byte	0x9e4
	.uleb128 0x12
	.4byte	.LASF261
	.byte	0x60
	.byte	0x7
	.byte	0x71
	.byte	0x10
	.4byte	0xb11
	.uleb128 0x11
	.4byte	.LASF188
	.byte	0x7
	.byte	0x73
	.byte	0x1b
	.4byte	0xb11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.4byte	.LASF189
	.byte	0x7
	.byte	0x75
	.byte	0x19
	.4byte	0x9b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.4byte	.LASF190
	.byte	0x7
	.byte	0x77
	.byte	0x19
	.4byte	0x8c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x11
	.4byte	.LASF191
	.byte	0x7
	.byte	0x79
	.byte	0x1e
	.4byte	0x9f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x25
	.uleb128 0x11
	.4byte	.LASF192
	.byte	0x7
	.byte	0x7b
	.byte	0x1a
	.4byte	0xb17
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x11
	.4byte	.LASF193
	.byte	0x7
	.byte	0x7d
	.byte	0xb
	.4byte	0xb2b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x11
	.4byte	.LASF194
	.byte	0x7
	.byte	0x7f
	.byte	0xb
	.4byte	0xb2b
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x11
	.4byte	.LASF195
	.byte	0x7
	.byte	0x81
	.byte	0xb
	.4byte	0xb2b
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x11
	.4byte	.LASF196
	.byte	0x7
	.byte	0x83
	.byte	0xb
	.4byte	0xb2b
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x11
	.4byte	.LASF197
	.byte	0x7
	.byte	0x85
	.byte	0x1a
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x11
	.4byte	.LASF198
	.byte	0x7
	.byte	0x87
	.byte	0x1b
	.4byte	0xb31
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x11
	.4byte	.LASF199
	.byte	0x7
	.byte	0x89
	.byte	0x1a
	.4byte	0x264
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x11
	.4byte	.LASF200
	.byte	0x7
	.byte	0x8b
	.byte	0x25
	.4byte	0xb37
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x11
	.4byte	.LASF201
	.byte	0x7
	.byte	0x8d
	.byte	0x25
	.4byte	0xb3d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x11
	.4byte	.LASF202
	.byte	0x7
	.byte	0x8f
	.byte	0x24
	.4byte	0x264
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x11
	.4byte	.LASF203
	.byte	0x7
	.byte	0x91
	.byte	0x25
	.4byte	0xb43
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x11
	.4byte	.LASF204
	.byte	0x7
	.byte	0x93
	.byte	0x25
	.4byte	0xb49
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x11
	.4byte	.LASF205
	.byte	0x7
	.byte	0x95
	.byte	0x24
	.4byte	0x264
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.4byte	0x2c0
	.uleb128 0x14
	.byte	0x4
	.uleb128 0x15
	.byte	0x1
	.4byte	0xb25
	.uleb128 0x16
	.4byte	0xb25
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.4byte	0x9f5
	.uleb128 0x13
	.byte	0x4
	.4byte	0xb19
	.uleb128 0x13
	.byte	0x4
	.4byte	0x2f8
	.uleb128 0x13
	.byte	0x4
	.4byte	0x320
	.uleb128 0x13
	.byte	0x4
	.4byte	0x358
	.uleb128 0x13
	.byte	0x4
	.4byte	0x380
	.uleb128 0x13
	.byte	0x4
	.4byte	0x3b8
	.uleb128 0x6
	.4byte	.LASF206
	.byte	0x7
	.byte	0x97
	.byte	0x3
	.4byte	0x9f5
	.uleb128 0x10
	.byte	0x18
	.byte	0x8
	.byte	0x2e
	.byte	0x9
	.4byte	0xbbf
	.uleb128 0x11
	.4byte	.LASF207
	.byte	0x8
	.byte	0x30
	.byte	0xc
	.4byte	0x264
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.4byte	.LASF208
	.byte	0x8
	.byte	0x34
	.byte	0xc
	.4byte	0x264
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.4byte	.LASF209
	.byte	0x8
	.byte	0x37
	.byte	0xc
	.4byte	0x264
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.4byte	.LASF210
	.byte	0x8
	.byte	0x3e
	.byte	0xc
	.4byte	0x264
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.4byte	.LASF211
	.byte	0x8
	.byte	0x41
	.byte	0xc
	.4byte	0x264
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.4byte	.LASF212
	.byte	0x8
	.byte	0x4c
	.byte	0xc
	.4byte	0x264
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0x6
	.4byte	.LASF213
	.byte	0x8
	.byte	0x4e
	.byte	0x3
	.4byte	0xb5b
	.uleb128 0x17
	.byte	0x7
	.byte	0x1
	.4byte	0x220
	.byte	0x8
	.2byte	0x13b
	.byte	0x1
	.4byte	0xbf9
	.uleb128 0x5
	.4byte	.LASF214
	.byte	0
	.uleb128 0x5
	.4byte	.LASF215
	.byte	0x1
	.uleb128 0x5
	.4byte	.LASF216
	.byte	0x2
	.uleb128 0x5
	.4byte	.LASF217
	.byte	0x3
	.uleb128 0x5
	.4byte	.LASF218
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.4byte	.LASF219
	.byte	0x8
	.2byte	0x141
	.byte	0x3
	.4byte	0xbcb
	.uleb128 0x8
	.4byte	0xbf9
	.uleb128 0x17
	.byte	0x7
	.byte	0x1
	.4byte	0x220
	.byte	0x8
	.2byte	0x147
	.byte	0x1
	.4byte	0xc2d
	.uleb128 0x5
	.4byte	.LASF220
	.byte	0
	.uleb128 0x5
	.4byte	.LASF221
	.byte	0x1
	.uleb128 0x5
	.4byte	.LASF222
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.4byte	.LASF223
	.byte	0x8
	.2byte	0x14b
	.byte	0x3
	.4byte	0xc0b
	.uleb128 0x8
	.4byte	0xc2d
	.uleb128 0x17
	.byte	0x7
	.byte	0x1
	.4byte	0x220
	.byte	0x8
	.2byte	0x151
	.byte	0x1
	.4byte	0xc61
	.uleb128 0x5
	.4byte	.LASF224
	.byte	0
	.uleb128 0x5
	.4byte	.LASF225
	.byte	0x1
	.uleb128 0x5
	.4byte	.LASF226
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.4byte	.LASF227
	.byte	0x8
	.2byte	0x155
	.byte	0x3
	.4byte	0xc3f
	.uleb128 0x8
	.4byte	0xc61
	.uleb128 0x17
	.byte	0x7
	.byte	0x1
	.4byte	0x220
	.byte	0x8
	.2byte	0x15b
	.byte	0x1
	.4byte	0xcad
	.uleb128 0x5
	.4byte	.LASF228
	.byte	0x1
	.uleb128 0x5
	.4byte	.LASF229
	.byte	0x2
	.uleb128 0x5
	.4byte	.LASF230
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF231
	.byte	0x8
	.uleb128 0x5
	.4byte	.LASF232
	.byte	0x10
	.uleb128 0x5
	.4byte	.LASF233
	.byte	0x20
	.uleb128 0x5
	.4byte	.LASF234
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LASF235
	.byte	0x8
	.2byte	0x163
	.byte	0x3
	.4byte	0xc73
	.uleb128 0x9
	.byte	0x4c
	.byte	0x8
	.2byte	0x16b
	.byte	0x9
	.4byte	0xd55
	.uleb128 0xb
	.4byte	.LASF188
	.byte	0x8
	.2byte	0x16e
	.byte	0x27
	.4byte	0xd55
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF189
	.byte	0x8
	.2byte	0x16f
	.byte	0x26
	.4byte	0xbbf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF236
	.byte	0x8
	.2byte	0x170
	.byte	0x26
	.4byte	0xcad
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.4byte	.LASF237
	.byte	0x8
	.2byte	0x171
	.byte	0x27
	.4byte	0xd5b
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.4byte	.LASF190
	.byte	0x8
	.2byte	0x173
	.byte	0x26
	.4byte	0x8c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xb
	.4byte	.LASF191
	.byte	0x8
	.2byte	0x174
	.byte	0x26
	.4byte	0xc06
	.byte	0x2
	.byte	0x23
	.uleb128 0x3d
	.uleb128 0xb
	.4byte	.LASF238
	.byte	0x8
	.2byte	0x175
	.byte	0x26
	.4byte	0xd81
	.byte	0x2
	.byte	0x23
	.uleb128 0x3e
	.uleb128 0xb
	.4byte	.LASF239
	.byte	0x8
	.2byte	0x176
	.byte	0x26
	.4byte	0xd96
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xb
	.4byte	.LASF240
	.byte	0x8
	.2byte	0x177
	.byte	0x26
	.4byte	0xc6e
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.4byte	0x860
	.uleb128 0xe
	.4byte	0xd6b
	.4byte	0xd6b
	.uleb128 0xf
	.4byte	0x29
	.byte	0x6
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.4byte	0xb4f
	.uleb128 0xe
	.4byte	0xc3a
	.4byte	0xd81
	.uleb128 0xf
	.4byte	0x29
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.4byte	0xd71
	.uleb128 0xe
	.4byte	0xc3a
	.4byte	0xd96
	.uleb128 0xf
	.4byte	0x29
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.4byte	0xd86
	.uleb128 0xc
	.4byte	.LASF241
	.byte	0x8
	.2byte	0x19b
	.byte	0x3
	.4byte	0xcba
	.uleb128 0x18
	.4byte	.LASF242
	.byte	0x9
	.2byte	0x240
	.byte	0x11
	.4byte	0x264
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.4byte	.LASF243
	.byte	0x1
	.byte	0x1c
	.byte	0x1a
	.4byte	0xd9b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	htim6
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF244
	.byte	0x1
	.byte	0x79
	.byte	0x6
	.byte	0x1
	.4byte	.LFB134
	.4byte	.LFE134
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF245
	.byte	0x1
	.byte	0x6d
	.byte	0x6
	.byte	0x1
	.4byte	.LFB133
	.4byte	.LFE133
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF262
	.byte	0x1
	.byte	0x29
	.byte	0x13
	.byte	0x1
	.4byte	0x89b
	.4byte	.LFB132
	.4byte	.LFE132
	.4byte	.LLST0
	.byte	0x1
	.4byte	0xf18
	.uleb128 0x1c
	.4byte	.LASF263
	.byte	0x1
	.byte	0x29
	.byte	0x29
	.4byte	0x264
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x1d
	.4byte	.LASF248
	.byte	0x1
	.byte	0x2b
	.byte	0x19
	.4byte	0x923
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1e
	.4byte	.LASF246
	.byte	0x1
	.byte	0x2c
	.byte	0x19
	.4byte	0x264
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x1e
	.4byte	.LASF247
	.byte	0x1
	.byte	0x2d
	.byte	0x19
	.4byte	0x264
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x1d
	.4byte	.LASF249
	.byte	0x1
	.byte	0x2e
	.byte	0x19
	.4byte	0x264
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1e
	.4byte	.LASF250
	.byte	0x1
	.byte	0x2f
	.byte	0x19
	.4byte	0x89b
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x1f
	.4byte	.Ldebug_ranges0+0
	.4byte	0xe9c
	.uleb128 0x1d
	.4byte	.LASF251
	.byte	0x1
	.byte	0x32
	.byte	0x3
	.4byte	0x270
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x20
	.4byte	.LVL2
	.4byte	0xf18
	.4byte	0xeb6
	.uleb128 0x21
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x21
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x22
	.4byte	.LVL3
	.4byte	0xf27
	.uleb128 0x20
	.4byte	.LVL6
	.4byte	0xf36
	.4byte	0xed3
	.uleb128 0x21
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL10
	.4byte	0xf45
	.4byte	0xee7
	.uleb128 0x21
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.4byte	.LVL12
	.4byte	0xf54
	.4byte	0xefb
	.uleb128 0x21
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x8
	.byte	0x36
	.byte	0
	.uleb128 0x23
	.4byte	.LVL13
	.4byte	0xf63
	.uleb128 0x21
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x8
	.byte	0x36
	.uleb128 0x21
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x21
	.byte	0x1
	.byte	0x52
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.byte	0x1
	.4byte	.LASF252
	.4byte	.LASF252
	.byte	0x6
	.2byte	0xd33
	.byte	0x13
	.uleb128 0x24
	.byte	0x1
	.byte	0x1
	.4byte	.LASF253
	.4byte	.LASF253
	.byte	0x6
	.2byte	0xd30
	.byte	0x13
	.uleb128 0x24
	.byte	0x1
	.byte	0x1
	.4byte	.LASF254
	.4byte	.LASF254
	.byte	0x8
	.2byte	0x92a
	.byte	0x13
	.uleb128 0x24
	.byte	0x1
	.byte	0x1
	.4byte	.LASF255
	.4byte	.LASF255
	.byte	0x8
	.2byte	0x932
	.byte	0x13
	.uleb128 0x24
	.byte	0x1
	.byte	0x1
	.4byte	.LASF256
	.4byte	.LASF256
	.byte	0xa
	.2byte	0x10f
	.byte	0x6
	.uleb128 0x24
	.byte	0x1
	.byte	0x1
	.4byte	.LASF257
	.4byte	.LASF257
	.byte	0xa
	.2byte	0x10e
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
	.uleb128 0x4
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
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
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x34
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.4byte	.LFB132
	.4byte	.LCFI0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI0
	.4byte	.LCFI1
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI1
	.4byte	.LCFI2
	.2byte	0x2
	.byte	0x7d
	.sleb128 48
	.4byte	.LCFI2
	.4byte	.LCFI3
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI3
	.4byte	.LFE132
	.2byte	0x2
	.byte	0x7d
	.sleb128 48
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU21
	.uleb128 .LVU21
	.uleb128 0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL1
	.4byte	.LFE132
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 .LVU3
	.uleb128 .LVU27
	.uleb128 .LVU27
	.uleb128 .LVU35
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 .LVU4
	.uleb128 .LVU28
	.uleb128 .LVU28
	.uleb128 .LVU35
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x11
	.byte	0x70
	.sleb128 0
	.byte	0xf7
	.uleb128 0x29
	.byte	0xc
	.4byte	0xf4240
	.byte	0xf7
	.uleb128 0x29
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU44
	.uleb128 .LVU46
	.uleb128 .LVU46
	.uleb128 .LVU48
	.uleb128 .LVU48
	.uleb128 .LVU50
	.uleb128 .LVU51
	.uleb128 .LVU54
.LLST4:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x50
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
	.4byte	.LFB132
	.4byte	.LFE132-.LFB132
	.4byte	.LFB133
	.4byte	.LFE133-.LFB133
	.4byte	.LFB134
	.4byte	.LFE134-.LFB134
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
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	0
	.4byte	0
	.4byte	.LFB132
	.4byte	.LFE132
	.4byte	.LFB133
	.4byte	.LFE133
	.4byte	.LFB134
	.4byte	.LFE134
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF255:
	.ascii	"HAL_TIM_Base_Start_IT\000"
.LASF12:
	.ascii	"RTC_WKUP_IRQn\000"
.LASF17:
	.ascii	"EXTI2_IRQn\000"
.LASF175:
	.ascii	"Direction\000"
.LASF239:
	.ascii	"ChannelNState\000"
.LASF124:
	.ascii	"APB1ENR1\000"
.LASF125:
	.ascii	"APB1ENR2\000"
.LASF164:
	.ascii	"HAL_StatusTypeDef\000"
.LASF98:
	.ascii	"RGCR\000"
.LASF78:
	.ascii	"FMAC_IRQn\000"
.LASF190:
	.ascii	"Lock\000"
.LASF173:
	.ascii	"RCC_ClkInitTypeDef\000"
.LASF24:
	.ascii	"DMA1_Channel5_IRQn\000"
.LASF140:
	.ascii	"CCIPR2\000"
.LASF155:
	.ascii	"DTR2\000"
.LASF161:
	.ascii	"HAL_ERROR\000"
.LASF169:
	.ascii	"SYSCLKSource\000"
.LASF56:
	.ascii	"SPI3_IRQn\000"
.LASF13:
	.ascii	"FLASH_IRQn\000"
.LASF102:
	.ascii	"DMAMUX_RequestGenStatus_TypeDef\000"
.LASF103:
	.ascii	"ICSCR\000"
.LASF220:
	.ascii	"HAL_TIM_CHANNEL_STATE_RESET\000"
.LASF90:
	.ascii	"CNDTR\000"
.LASF36:
	.ascii	"TIM2_IRQn\000"
.LASF157:
	.ascii	"DMAR\000"
.LASF245:
	.ascii	"HAL_SuspendTick\000"
.LASF247:
	.ascii	"uwPrescalerValue\000"
.LASF147:
	.ascii	"CCR1\000"
.LASF148:
	.ascii	"CCR2\000"
.LASF149:
	.ascii	"CCR3\000"
.LASF150:
	.ascii	"CCR4\000"
.LASF152:
	.ascii	"CCR5\000"
.LASF153:
	.ascii	"CCR6\000"
.LASF44:
	.ascii	"SPI2_IRQn\000"
.LASF244:
	.ascii	"HAL_ResumeTick\000"
.LASF246:
	.ascii	"uwTimclock\000"
.LASF205:
	.ascii	"DMAmuxRequestGenStatusMask\000"
.LASF222:
	.ascii	"HAL_TIM_CHANNEL_STATE_BUSY\000"
.LASF96:
	.ascii	"DMAMUX_Channel_TypeDef\000"
.LASF130:
	.ascii	"AHB3SMENR\000"
.LASF84:
	.ascii	"long int\000"
.LASF213:
	.ascii	"TIM_Base_InitTypeDef\000"
.LASF253:
	.ascii	"HAL_RCC_GetPCLK1Freq\000"
.LASF76:
	.ascii	"DMA2_Channel6_IRQn\000"
.LASF248:
	.ascii	"clkconfig\000"
.LASF197:
	.ascii	"ErrorCode\000"
.LASF126:
	.ascii	"APB2ENR\000"
.LASF236:
	.ascii	"Channel\000"
.LASF219:
	.ascii	"HAL_TIM_StateTypeDef\000"
.LASF8:
	.ascii	"SysTick_IRQn\000"
.LASF47:
	.ascii	"USART3_IRQn\000"
.LASF91:
	.ascii	"CPAR\000"
.LASF80:
	.ascii	"signed char\000"
.LASF201:
	.ascii	"DMAmuxChannelStatus\000"
.LASF160:
	.ascii	"HAL_OK\000"
.LASF158:
	.ascii	"TIM_TypeDef\000"
.LASF106:
	.ascii	"RESERVED0\000"
.LASF107:
	.ascii	"RESERVED1\000"
.LASF81:
	.ascii	"unsigned char\000"
.LASF115:
	.ascii	"RESERVED3\000"
.LASF119:
	.ascii	"RESERVED4\000"
.LASF123:
	.ascii	"RESERVED5\000"
.LASF127:
	.ascii	"RESERVED6\000"
.LASF131:
	.ascii	"RESERVED7\000"
.LASF135:
	.ascii	"RESERVED8\000"
.LASF137:
	.ascii	"RESERVED9\000"
.LASF95:
	.ascii	"DMA_TypeDef\000"
.LASF199:
	.ascii	"ChannelIndex\000"
.LASF40:
	.ascii	"I2C1_ER_IRQn\000"
.LASF216:
	.ascii	"HAL_TIM_STATE_BUSY\000"
.LASF20:
	.ascii	"DMA1_Channel1_IRQn\000"
.LASF29:
	.ascii	"FDCAN1_IT0_IRQn\000"
.LASF111:
	.ascii	"RESERVED2\000"
.LASF228:
	.ascii	"HAL_TIM_ACTIVE_CHANNEL_1\000"
.LASF229:
	.ascii	"HAL_TIM_ACTIVE_CHANNEL_2\000"
.LASF230:
	.ascii	"HAL_TIM_ACTIVE_CHANNEL_3\000"
.LASF231:
	.ascii	"HAL_TIM_ACTIVE_CHANNEL_4\000"
.LASF4:
	.ascii	"UsageFault_IRQn\000"
.LASF144:
	.ascii	"CCMR1\000"
.LASF145:
	.ascii	"CCMR2\000"
.LASF154:
	.ascii	"CCMR3\000"
.LASF55:
	.ascii	"LPTIM1_IRQn\000"
.LASF94:
	.ascii	"IFCR\000"
.LASF224:
	.ascii	"HAL_DMA_BURST_STATE_RESET\000"
.LASF203:
	.ascii	"DMAmuxRequestGen\000"
.LASF121:
	.ascii	"AHB2ENR\000"
.LASF202:
	.ascii	"DMAmuxChannelStatusMask\000"
.LASF50:
	.ascii	"USBWakeUp_IRQn\000"
.LASF38:
	.ascii	"TIM4_IRQn\000"
.LASF46:
	.ascii	"USART2_IRQn\000"
.LASF116:
	.ascii	"APB1RSTR1\000"
.LASF117:
	.ascii	"APB1RSTR2\000"
.LASF99:
	.ascii	"DMAMUX_RequestGen_TypeDef\000"
.LASF207:
	.ascii	"Prescaler\000"
.LASF176:
	.ascii	"PeriphInc\000"
.LASF138:
	.ascii	"BDCR\000"
.LASF10:
	.ascii	"PVD_PVM_IRQn\000"
.LASF196:
	.ascii	"XferAbortCallback\000"
.LASF39:
	.ascii	"I2C1_EV_IRQn\000"
.LASF252:
	.ascii	"HAL_RCC_GetClockConfig\000"
.LASF139:
	.ascii	"CRRCR\000"
.LASF32:
	.ascii	"TIM1_BRK_TIM15_IRQn\000"
.LASF104:
	.ascii	"CFGR\000"
.LASF61:
	.ascii	"DMA2_Channel2_IRQn\000"
.LASF35:
	.ascii	"TIM1_CC_IRQn\000"
.LASF16:
	.ascii	"EXTI1_IRQn\000"
.LASF122:
	.ascii	"AHB3ENR\000"
.LASF188:
	.ascii	"Instance\000"
.LASF170:
	.ascii	"AHBCLKDivider\000"
.LASF72:
	.ascii	"LPUART1_IRQn\000"
.LASF0:
	.ascii	"NonMaskableInt_IRQn\000"
.LASF136:
	.ascii	"CCIPR\000"
.LASF9:
	.ascii	"WWDG_IRQn\000"
.LASF85:
	.ascii	"long unsigned int\000"
.LASF65:
	.ascii	"UCPD1_IRQn\000"
.LASF200:
	.ascii	"DMAmuxChannel\000"
.LASF221:
	.ascii	"HAL_TIM_CHANNEL_STATE_READY\000"
.LASF242:
	.ascii	"uwTickPrio\000"
.LASF2:
	.ascii	"MemoryManagement_IRQn\000"
.LASF23:
	.ascii	"DMA1_Channel4_IRQn\000"
.LASF143:
	.ascii	"DIER\000"
.LASF181:
	.ascii	"Priority\000"
.LASF167:
	.ascii	"HAL_LockTypeDef\000"
.LASF214:
	.ascii	"HAL_TIM_STATE_RESET\000"
.LASF240:
	.ascii	"DMABurstState\000"
.LASF60:
	.ascii	"DMA2_Channel1_IRQn\000"
.LASF28:
	.ascii	"USB_LP_IRQn\000"
.LASF52:
	.ascii	"TIM8_UP_IRQn\000"
.LASF156:
	.ascii	"TISEL\000"
.LASF42:
	.ascii	"I2C2_ER_IRQn\000"
.LASF75:
	.ascii	"DMAMUX_OVR_IRQn\000"
.LASF3:
	.ascii	"BusFault_IRQn\000"
.LASF105:
	.ascii	"PLLCFGR\000"
.LASF71:
	.ascii	"RNG_IRQn\000"
.LASF204:
	.ascii	"DMAmuxRequestGenStatus\000"
.LASF179:
	.ascii	"MemDataAlignment\000"
.LASF88:
	.ascii	"__uint32_t\000"
.LASF68:
	.ascii	"CRS_IRQn\000"
.LASF59:
	.ascii	"TIM7_IRQn\000"
.LASF86:
	.ascii	"long long int\000"
.LASF69:
	.ascii	"SAI1_IRQn\000"
.LASF178:
	.ascii	"PeriphDataAlignment\000"
.LASF43:
	.ascii	"SPI1_IRQn\000"
.LASF34:
	.ascii	"TIM1_TRG_COM_TIM17_IRQn\000"
.LASF5:
	.ascii	"SVCall_IRQn\000"
.LASF234:
	.ascii	"HAL_TIM_ACTIVE_CHANNEL_CLEARED\000"
.LASF118:
	.ascii	"APB2RSTR\000"
.LASF129:
	.ascii	"AHB2SMENR\000"
.LASF70:
	.ascii	"FPU_IRQn\000"
.LASF77:
	.ascii	"CORDIC_IRQn\000"
.LASF57:
	.ascii	"UART4_IRQn\000"
.LASF64:
	.ascii	"DMA2_Channel5_IRQn\000"
.LASF212:
	.ascii	"AutoReloadPreload\000"
.LASF100:
	.ascii	"RGSR\000"
.LASF186:
	.ascii	"HAL_DMA_STATE_TIMEOUT\000"
.LASF19:
	.ascii	"EXTI4_IRQn\000"
.LASF58:
	.ascii	"TIM6_DAC_IRQn\000"
.LASF237:
	.ascii	"hdma\000"
.LASF101:
	.ascii	"RGCFR\000"
.LASF41:
	.ascii	"I2C2_EV_IRQn\000"
.LASF79:
	.ascii	"unsigned int\000"
.LASF198:
	.ascii	"DmaBaseAddress\000"
.LASF192:
	.ascii	"Parent\000"
.LASF92:
	.ascii	"CMAR\000"
.LASF238:
	.ascii	"ChannelState\000"
.LASF183:
	.ascii	"HAL_DMA_STATE_RESET\000"
.LASF189:
	.ascii	"Init\000"
.LASF63:
	.ascii	"DMA2_Channel4_IRQn\000"
.LASF218:
	.ascii	"HAL_TIM_STATE_ERROR\000"
.LASF177:
	.ascii	"MemInc\000"
.LASF232:
	.ascii	"HAL_TIM_ACTIVE_CHANNEL_5\000"
.LASF233:
	.ascii	"HAL_TIM_ACTIVE_CHANNEL_6\000"
.LASF195:
	.ascii	"XferErrorCallback\000"
.LASF114:
	.ascii	"AHB3RSTR\000"
.LASF159:
	.ascii	"long double\000"
.LASF211:
	.ascii	"RepetitionCounter\000"
.LASF180:
	.ascii	"Mode\000"
.LASF162:
	.ascii	"HAL_BUSY\000"
.LASF235:
	.ascii	"HAL_TIM_ActiveChannel\000"
.LASF51:
	.ascii	"TIM8_BRK_IRQn\000"
.LASF93:
	.ascii	"DMA_Channel_TypeDef\000"
.LASF262:
	.ascii	"HAL_InitTick\000"
.LASF49:
	.ascii	"RTC_Alarm_IRQn\000"
.LASF74:
	.ascii	"I2C3_ER_IRQn\000"
.LASF48:
	.ascii	"EXTI15_10_IRQn\000"
.LASF87:
	.ascii	"long long unsigned int\000"
.LASF66:
	.ascii	"COMP1_2_3_IRQn\000"
.LASF261:
	.ascii	"__DMA_HandleTypeDef\000"
.LASF227:
	.ascii	"HAL_TIM_DMABurstStateTypeDef\000"
.LASF37:
	.ascii	"TIM3_IRQn\000"
.LASF146:
	.ascii	"CCER\000"
.LASF45:
	.ascii	"USART1_IRQn\000"
.LASF208:
	.ascii	"CounterMode\000"
.LASF191:
	.ascii	"State\000"
.LASF257:
	.ascii	"HAL_NVIC_SetPriority\000"
.LASF217:
	.ascii	"HAL_TIM_STATE_TIMEOUT\000"
.LASF134:
	.ascii	"APB2SMENR\000"
.LASF165:
	.ascii	"HAL_UNLOCKED\000"
.LASF206:
	.ascii	"DMA_HandleTypeDef\000"
.LASF193:
	.ascii	"XferCpltCallback\000"
.LASF142:
	.ascii	"SMCR\000"
.LASF225:
	.ascii	"HAL_DMA_BURST_STATE_READY\000"
.LASF172:
	.ascii	"APB2CLKDivider\000"
.LASF53:
	.ascii	"TIM8_TRG_COM_IRQn\000"
.LASF251:
	.ascii	"tmpreg\000"
.LASF256:
	.ascii	"HAL_NVIC_EnableIRQ\000"
.LASF15:
	.ascii	"EXTI0_IRQn\000"
.LASF185:
	.ascii	"HAL_DMA_STATE_BUSY\000"
.LASF215:
	.ascii	"HAL_TIM_STATE_READY\000"
.LASF120:
	.ascii	"AHB1ENR\000"
.LASF6:
	.ascii	"DebugMonitor_IRQn\000"
.LASF73:
	.ascii	"I2C3_EV_IRQn\000"
.LASF174:
	.ascii	"Request\000"
.LASF113:
	.ascii	"AHB2RSTR\000"
.LASF182:
	.ascii	"DMA_InitTypeDef\000"
.LASF209:
	.ascii	"Period\000"
.LASF22:
	.ascii	"DMA1_Channel3_IRQn\000"
.LASF141:
	.ascii	"RCC_TypeDef\000"
.LASF243:
	.ascii	"htim6\000"
.LASF82:
	.ascii	"short int\000"
.LASF223:
	.ascii	"HAL_TIM_ChannelStateTypeDef\000"
.LASF14:
	.ascii	"RCC_IRQn\000"
.LASF67:
	.ascii	"COMP4_IRQn\000"
.LASF187:
	.ascii	"HAL_DMA_StateTypeDef\000"
.LASF168:
	.ascii	"ClockType\000"
.LASF26:
	.ascii	"ADC1_2_IRQn\000"
.LASF110:
	.ascii	"CICR\000"
.LASF132:
	.ascii	"APB1SMENR1\000"
.LASF133:
	.ascii	"APB1SMENR2\000"
.LASF260:
	.ascii	"/home/joel/share/EVSPIN32G4_Shinano\000"
.LASF21:
	.ascii	"DMA1_Channel2_IRQn\000"
.LASF30:
	.ascii	"FDCAN1_IT1_IRQn\000"
.LASF258:
	.ascii	"GNU C17 10.2.1 20201103 (release) -mcpu=cortex-m4 -"
	.ascii	"mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=hard -march=ar"
	.ascii	"mv7e-m+fp -g -gdwarf-2 -O3 -fdata-sections -ffuncti"
	.ascii	"on-sections\000"
.LASF241:
	.ascii	"TIM_HandleTypeDef\000"
.LASF194:
	.ascii	"XferHalfCpltCallback\000"
.LASF33:
	.ascii	"TIM1_UP_TIM16_IRQn\000"
.LASF97:
	.ascii	"DMAMUX_ChannelStatus_TypeDef\000"
.LASF250:
	.ascii	"status\000"
.LASF151:
	.ascii	"BDTR\000"
.LASF89:
	.ascii	"uint32_t\000"
.LASF128:
	.ascii	"AHB1SMENR\000"
.LASF108:
	.ascii	"CIER\000"
.LASF259:
	.ascii	"Src/stm32g4xx_hal_timebase_tim.c\000"
.LASF31:
	.ascii	"EXTI9_5_IRQn\000"
.LASF166:
	.ascii	"HAL_LOCKED\000"
.LASF249:
	.ascii	"pFLatency\000"
.LASF163:
	.ascii	"HAL_TIMEOUT\000"
.LASF27:
	.ascii	"USB_HP_IRQn\000"
.LASF83:
	.ascii	"short unsigned int\000"
.LASF171:
	.ascii	"APB1CLKDivider\000"
.LASF54:
	.ascii	"TIM8_CC_IRQn\000"
.LASF184:
	.ascii	"HAL_DMA_STATE_READY\000"
.LASF18:
	.ascii	"EXTI3_IRQn\000"
.LASF7:
	.ascii	"PendSV_IRQn\000"
.LASF11:
	.ascii	"RTC_TAMP_LSECSS_IRQn\000"
.LASF226:
	.ascii	"HAL_DMA_BURST_STATE_BUSY\000"
.LASF109:
	.ascii	"CIFR\000"
.LASF112:
	.ascii	"AHB1RSTR\000"
.LASF1:
	.ascii	"HardFault_IRQn\000"
.LASF25:
	.ascii	"DMA1_Channel6_IRQn\000"
.LASF263:
	.ascii	"TickPriority\000"
.LASF210:
	.ascii	"ClockDivision\000"
.LASF62:
	.ascii	"DMA2_Channel3_IRQn\000"
.LASF254:
	.ascii	"HAL_TIM_Base_Init\000"
	.ident	"GCC: (GNU Arm Embedded Toolchain 10-2020-q4-major) 10.2.1 20201103 (release)"
