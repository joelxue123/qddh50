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
	.file	"stm32g4xx_ll_comp.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.LL_COMP_DeInit,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	LL_COMP_DeInit
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	LL_COMP_DeInit, %function
LL_COMP_DeInit:
.LVL0:
.LFB149:
	.file 1 "Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_ll_comp.c"
	.loc 1 286 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 287 3 view .LVU1
	.loc 1 290 3 view .LVU2
	.loc 1 294 3 view .LVU3
.LBB6:
.LBI6:
	.file 2 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_ll_comp.h"
	.loc 2 692 26 view .LVU4
.LBB7:
	.loc 2 694 3 view .LVU5
	.loc 2 694 12 is_stmt 0 view .LVU6
	ldr	r3, [r0]
	.loc 2 694 74 view .LVU7
	cmp	r3, #0
.LVL1:
	.loc 2 694 74 view .LVU8
.LBE7:
.LBE6:
	.loc 1 296 5 is_stmt 1 view .LVU9
	ittte	ge
	movge	r3, #0
	strge	r3, [r0]
	.loc 1 287 15 is_stmt 0 view .LVU10
	movge	r0, r3
.LVL2:
	.loc 1 304 12 view .LVU11
	movlt	r0, #1
.LVL3:
	.loc 1 307 3 is_stmt 1 view .LVU12
	.loc 1 308 1 is_stmt 0 view .LVU13
	bx	lr
	.cfi_endproc
.LFE149:
	.size	LL_COMP_DeInit, .-LL_COMP_DeInit
	.section	.text.LL_COMP_Init,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	LL_COMP_Init
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	LL_COMP_Init, %function
LL_COMP_Init:
.LVL4:
.LFB150:
	.loc 1 323 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 324 3 view .LVU15
	.loc 1 327 3 view .LVU16
	.loc 1 328 3 view .LVU17
	.loc 1 329 3 view .LVU18
	.loc 1 330 3 view .LVU19
	.loc 1 331 3 view .LVU20
	.loc 1 332 3 view .LVU21
	.loc 1 336 3 view .LVU22
.LBB8:
.LBI8:
	.loc 2 692 26 view .LVU23
.LBB9:
	.loc 2 694 3 view .LVU24
	.loc 2 694 12 is_stmt 0 view .LVU25
	ldr	r3, [r0]
	.loc 2 694 74 view .LVU26
	cmp	r3, #0
	blt	.L7
.LVL5:
	.loc 2 694 74 view .LVU27
.LBE9:
.LBE8:
	.loc 1 344 5 is_stmt 1 view .LVU28
	.loc 1 323 1 is_stmt 0 view .LVU29
	push	{r4}
.LCFI0:
	.cfi_def_cfa_offset 4
	.cfi_offset 4, -4
	.loc 1 344 5 view .LVU30
	ldrd	r3, r4, [r1]
	ldr	r2, [r1, #8]
	orrs	r3, r3, r4
	orrs	r3, r3, r2
	ldrd	r2, r1, [r1, #12]
.LVL6:
	.loc 1 344 5 view .LVU31
	ldr	r4, [r0]
	orrs	r3, r3, r2
	ldr	r2, .L12
	orrs	r3, r3, r1
	ands	r2, r2, r4
	orrs	r3, r3, r2
	str	r3, [r0]
	.loc 1 368 1 view .LVU32
	ldr	r4, [sp], #4
.LCFI1:
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 324 15 view .LVU33
	movs	r0, #0
.LVL7:
	.loc 1 367 3 is_stmt 1 view .LVU34
	.loc 1 368 1 is_stmt 0 view .LVU35
	bx	lr
.LVL8:
.L7:
	.loc 1 364 12 view .LVU36
	movs	r0, #1
.LVL9:
	.loc 1 367 3 is_stmt 1 view .LVU37
	.loc 1 368 1 is_stmt 0 view .LVU38
	bx	lr
.L13:
	.align	2
.L12:
	.word	-16744945
	.cfi_endproc
.LFE150:
	.size	LL_COMP_Init, .-LL_COMP_Init
	.section	.text.LL_COMP_StructInit,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	LL_COMP_StructInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	LL_COMP_StructInit, %function
LL_COMP_StructInit:
.LVL10:
.LFB151:
	.loc 1 377 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 379 3 view .LVU40
	.loc 1 380 41 is_stmt 0 view .LVU41
	ldr	r2, .L15
	movs	r3, #0
	strd	r3, r2, [r0]
	.loc 1 381 3 is_stmt 1 view .LVU42
	.loc 1 382 41 is_stmt 0 view .LVU43
	strd	r3, r3, [r0, #8]
	.loc 1 383 3 is_stmt 1 view .LVU44
	.loc 1 383 41 is_stmt 0 view .LVU45
	str	r3, [r0, #16]
	.loc 1 384 1 view .LVU46
	bx	lr
.L16:
	.align	2
.L15:
	.word	8388656
	.cfi_endproc
.LFE151:
	.size	LL_COMP_StructInit, .-LL_COMP_StructInit
	.text
.Letext0:
	.file 3 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/machine/_default_types.h"
	.file 4 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/sys/_stdint.h"
	.file 5 "Drivers/CMSIS/Device/ST/STM32G4xx/Include/stm32g431xx.h"
	.file 6 "Drivers/CMSIS/Device/ST/STM32G4xx/Include/stm32g4xx.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x2a0
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF27
	.byte	0xc
	.4byte	.LASF28
	.4byte	.LASF29
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x3
	.byte	0x4f
	.byte	0x19
	.4byte	0x58
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x4
	.byte	0x30
	.byte	0x14
	.4byte	0x4c
	.uleb128 0x5
	.4byte	0x7b
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.2byte	0x118
	.byte	0x9
	.4byte	0xa7
	.uleb128 0x7
	.ascii	"CSR\000"
	.byte	0x5
	.2byte	0x11a
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x8
	.4byte	.LASF11
	.byte	0x5
	.2byte	0x11b
	.byte	0x3
	.4byte	0x8c
	.uleb128 0x9
	.4byte	0xa7
	.uleb128 0xa
	.byte	0x7
	.byte	0x1
	.4byte	0x30
	.byte	0x6
	.byte	0x97
	.byte	0x1
	.4byte	0xd4
	.uleb128 0xb
	.4byte	.LASF12
	.byte	0
	.uleb128 0xb
	.4byte	.LASF13
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x6
	.byte	0x9a
	.byte	0x3
	.4byte	0xb9
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF15
	.uleb128 0xc
	.byte	0x14
	.byte	0x2
	.byte	0x3e
	.byte	0x9
	.4byte	0x13c
	.uleb128 0xd
	.4byte	.LASF16
	.byte	0x2
	.byte	0x40
	.byte	0xc
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.4byte	.LASF17
	.byte	0x2
	.byte	0x45
	.byte	0xc
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.4byte	.LASF18
	.byte	0x2
	.byte	0x4a
	.byte	0xc
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.4byte	.LASF19
	.byte	0x2
	.byte	0x4f
	.byte	0xc
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.4byte	.LASF20
	.byte	0x2
	.byte	0x54
	.byte	0xc
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x2
	.byte	0x59
	.byte	0x3
	.4byte	0xe7
	.uleb128 0x9
	.4byte	0x13c
	.uleb128 0xe
	.byte	0x1
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x178
	.byte	0x6
	.byte	0x1
	.4byte	.LFB151
	.4byte	.LFE151
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x178
	.uleb128 0xf
	.4byte	.LASF23
	.byte	0x1
	.2byte	0x178
	.byte	0x2e
	.4byte	0x178
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x13c
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF24
	.byte	0x1
	.2byte	0x142
	.byte	0xd
	.byte	0x1
	.4byte	0xd4
	.4byte	.LFB150
	.4byte	.LFE150
	.4byte	.LLST3
	.byte	0x1
	.4byte	0x202
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x142
	.byte	0x28
	.4byte	0x202
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x12
	.4byte	.LASF23
	.byte	0x1
	.2byte	0x142
	.byte	0x4a
	.4byte	0x208
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x13
	.4byte	.LASF26
	.byte	0x1
	.2byte	0x144
	.byte	0xf
	.4byte	0xd4
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x14
	.4byte	0x27c
	.4byte	.LBI8
	.byte	.LVU23
	.4byte	.LBB8
	.4byte	.LBE8
	.byte	0x1
	.2byte	0x150
	.byte	0x7
	.uleb128 0x15
	.4byte	0x28f
	.4byte	.LLST7
	.4byte	.LVUS7
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0xa7
	.uleb128 0x10
	.byte	0x4
	.4byte	0x148
	.uleb128 0x16
	.byte	0x1
	.4byte	.LASF25
	.byte	0x1
	.2byte	0x11d
	.byte	0xd
	.byte	0x1
	.4byte	0xd4
	.4byte	.LFB149
	.4byte	.LFE149
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x27c
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x11d
	.byte	0x2a
	.4byte	0x202
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x13
	.4byte	.LASF26
	.byte	0x1
	.2byte	0x11f
	.byte	0xf
	.4byte	0xd4
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x14
	.4byte	0x27c
	.4byte	.LBI6
	.byte	.LVU4
	.4byte	.LBB6
	.4byte	.LBE6
	.byte	0x1
	.2byte	0x126
	.byte	0x7
	.uleb128 0x15
	.4byte	0x28f
	.4byte	.LLST2
	.4byte	.LVUS2
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LASF31
	.byte	0x2
	.2byte	0x2b4
	.byte	0x1a
	.byte	0x1
	.4byte	0x7b
	.byte	0x3
	.4byte	0x29d
	.uleb128 0x18
	.4byte	.LASF22
	.byte	0x2
	.2byte	0x2b4
	.byte	0x3f
	.4byte	0x29d
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0xb4
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
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
	.uleb128 0xf
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
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x5
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
	.uleb128 0x12
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
	.uleb128 0x2
	.uleb128 0x6
	.uleb128 0x2137
	.uleb128 0x6
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
	.uleb128 0x5
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
	.uleb128 0x14
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
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
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
	.uleb128 0x17
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST3:
	.4byte	.LFB150
	.4byte	.LCFI0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI0
	.4byte	.LCFI1
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI1
	.4byte	.LFE150
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 0
	.uleb128 .LVU34
	.uleb128 .LVU34
	.uleb128 .LVU36
	.uleb128 .LVU36
	.uleb128 .LVU37
	.uleb128 .LVU37
	.uleb128 0
.LLST4:
	.4byte	.LVL4
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL9
	.4byte	.LFE150
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 0
	.uleb128 .LVU31
	.uleb128 .LVU31
	.uleb128 .LVU36
	.uleb128 .LVU36
	.uleb128 0
.LLST5:
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LFE150
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 .LVU16
	.uleb128 .LVU34
	.uleb128 .LVU34
	.uleb128 .LVU36
	.uleb128 .LVU36
	.uleb128 .LVU37
	.uleb128 .LVU37
	.uleb128 0
.LLST6:
	.4byte	.LVL4
	.4byte	.LVL7
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LFE150
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 .LVU23
	.uleb128 .LVU27
	.uleb128 .LVU36
	.uleb128 .LVU37
.LLST7:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU11
	.uleb128 .LVU11
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL2
	.4byte	.LFE149
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 .LVU2
	.uleb128 .LVU12
	.uleb128 .LVU12
	.uleb128 0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LFE149
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 .LVU4
	.uleb128 .LVU8
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL1
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
	.4byte	.LFB149
	.4byte	.LFE149-.LFB149
	.4byte	.LFB150
	.4byte	.LFE150-.LFB150
	.4byte	.LFB151
	.4byte	.LFE151-.LFB151
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB149
	.4byte	.LFE149
	.4byte	.LFB150
	.4byte	.LFE150
	.4byte	.LFB151
	.4byte	.LFE151
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF26:
	.ascii	"status\000"
.LASF31:
	.ascii	"LL_COMP_IsLocked\000"
.LASF30:
	.ascii	"LL_COMP_StructInit\000"
.LASF21:
	.ascii	"LL_COMP_InitTypeDef\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF12:
	.ascii	"SUCCESS\000"
.LASF14:
	.ascii	"ErrorStatus\000"
.LASF5:
	.ascii	"long unsigned int\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF19:
	.ascii	"OutputPolarity\000"
.LASF9:
	.ascii	"__uint32_t\000"
.LASF18:
	.ascii	"InputHysteresis\000"
.LASF16:
	.ascii	"InputPlus\000"
.LASF17:
	.ascii	"InputMinus\000"
.LASF8:
	.ascii	"unsigned int\000"
.LASF20:
	.ascii	"OutputBlankingSource\000"
.LASF24:
	.ascii	"LL_COMP_Init\000"
.LASF7:
	.ascii	"long long unsigned int\000"
.LASF28:
	.ascii	"Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_ll_comp."
	.ascii	"c\000"
.LASF27:
	.ascii	"GNU C17 10.2.1 20201103 (release) -mcpu=cortex-m4 -"
	.ascii	"mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=hard -march=ar"
	.ascii	"mv7e-m+fp -g -gdwarf-2 -O3 -fdata-sections -ffuncti"
	.ascii	"on-sections\000"
.LASF13:
	.ascii	"ERROR\000"
.LASF6:
	.ascii	"long long int\000"
.LASF23:
	.ascii	"COMP_InitStruct\000"
.LASF29:
	.ascii	"/home/joel/share/EVSPIN32G4_Shinano\000"
.LASF2:
	.ascii	"short int\000"
.LASF25:
	.ascii	"LL_COMP_DeInit\000"
.LASF22:
	.ascii	"COMPx\000"
.LASF10:
	.ascii	"uint32_t\000"
.LASF4:
	.ascii	"long int\000"
.LASF15:
	.ascii	"long double\000"
.LASF0:
	.ascii	"signed char\000"
.LASF11:
	.ascii	"COMP_TypeDef\000"
	.ident	"GCC: (GNU Arm Embedded Toolchain 10-2020-q4-major) 10.2.1 20201103 (release)"
