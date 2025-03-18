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
	.file	"stm32g4xx_ll_opamp.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.LL_OPAMP_DeInit,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	LL_OPAMP_DeInit
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	LL_OPAMP_DeInit, %function
LL_OPAMP_DeInit:
.LVL0:
.LFB166:
	.file 1 "Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_ll_opamp.c"
	.loc 1 106 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 107 3 view .LVU1
	.loc 1 110 3 view .LVU2
	.loc 1 114 3 view .LVU3
.LBB8:
.LBI8:
	.file 2 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_ll_opamp.h"
	.loc 2 958 26 view .LVU4
.LBB9:
	.loc 2 960 3 view .LVU5
	.loc 2 960 12 is_stmt 0 view .LVU6
	ldr	r3, [r0]
	.loc 2 960 77 view .LVU7
	cmp	r3, #0
.LVL1:
	.loc 2 960 77 view .LVU8
.LBE9:
.LBE8:
	.loc 1 116 5 is_stmt 1 view .LVU9
	itt	ge
	movge	r3, #0
	strge	r3, [r0]
.LBB10:
.LBB11:
	.loc 2 987 12 is_stmt 0 view .LVU10
	ldr	r2, [r0, #24]
.LBE11:
.LBE10:
	.loc 1 123 12 view .LVU11
	it	lt
	movlt	r3, #1
.LVL2:
	.loc 1 127 3 is_stmt 1 view .LVU12
.LBB13:
.LBI10:
	.loc 2 985 26 view .LVU13
.LBB12:
	.loc 2 987 3 view .LVU14
	.loc 2 987 80 is_stmt 0 view .LVU15
	cmp	r2, #0
	blt	.L3
.LVL3:
	.loc 2 987 80 view .LVU16
.LBE12:
.LBE13:
	.loc 1 129 5 is_stmt 1 view .LVU17
	movs	r2, #0
	str	r2, [r0, #24]
	.loc 1 140 3 view .LVU18
	.loc 1 142 3 view .LVU19
	.loc 1 143 1 is_stmt 0 view .LVU20
	mov	r0, r3
.LVL4:
	.loc 1 143 1 view .LVU21
	bx	lr
.LVL5:
.L3:
	.loc 1 131 8 is_stmt 1 view .LVU22
	.loc 1 131 12 is_stmt 0 view .LVU23
	ldr	r2, [r0, #24]
	.loc 1 135 12 view .LVU24
	cmp	r2, #-2147483648
	it	ne
	movne	r3, #1
.LVL6:
	.loc 1 140 3 is_stmt 1 view .LVU25
	.loc 1 142 3 view .LVU26
	.loc 1 143 1 is_stmt 0 view .LVU27
	mov	r0, r3
.LVL7:
	.loc 1 143 1 view .LVU28
	bx	lr
	.cfi_endproc
.LFE166:
	.size	LL_OPAMP_DeInit, .-LL_OPAMP_DeInit
	.section	.text.LL_OPAMP_Init,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	LL_OPAMP_Init
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	LL_OPAMP_Init, %function
LL_OPAMP_Init:
.LVL8:
.LFB167:
	.loc 1 158 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 159 3 view .LVU30
	.loc 1 162 3 view .LVU31
	.loc 1 163 3 view .LVU32
	.loc 1 164 3 view .LVU33
	.loc 1 165 3 view .LVU34
	.loc 1 171 3 view .LVU35
	.loc 1 173 5 view .LVU36
	.loc 1 178 3 view .LVU37
.LBB14:
.LBI14:
	.loc 2 958 26 view .LVU38
.LBB15:
	.loc 2 960 3 view .LVU39
	.loc 2 960 12 is_stmt 0 view .LVU40
	ldr	r3, [r0]
	.loc 2 960 77 view .LVU41
	cmp	r3, #0
	blt	.L12
.LBE15:
.LBE14:
	.loc 1 158 1 view .LVU42
	push	{r4}
.LCFI0:
	.cfi_def_cfa_offset 4
	.cfi_offset 4, -4
	.loc 1 171 23 view .LVU43
	ldr	r4, [r1, #4]
.LVL9:
	.loc 1 186 5 is_stmt 1 view .LVU44
	.loc 1 188 7 is_stmt 0 view .LVU45
	ldr	r3, [r0]
	.loc 1 186 8 view .LVU46
	cmp	r4, #96
	beq	.L11
	.loc 1 188 7 is_stmt 1 view .LVU47
	bic	r3, r3, #395264
	ldr	r2, [r1]
	bic	r3, r3, #236
	orrs	r3, r3, r4
	orrs	r3, r3, r2
	ldrd	r4, r2, [r1, #8]
	orrs	r3, r3, r4
	orrs	r3, r3, r2
	str	r3, [r0]
	.loc 1 223 1 is_stmt 0 view .LVU48
	ldr	r4, [sp], #4
.LCFI1:
	.cfi_remember_state
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 159 15 view .LVU49
	movs	r0, #0
.LVL10:
	.loc 1 222 3 is_stmt 1 view .LVU50
	.loc 1 223 1 is_stmt 0 view .LVU51
	bx	lr
.LVL11:
.L11:
.LCFI2:
	.cfi_restore_state
	.loc 1 203 7 is_stmt 1 view .LVU52
	ldr	r4, [r1, #8]
	ldr	r2, [r1]
	bic	r3, r3, #395264
	bic	r3, r3, #236
	orrs	r3, r3, r4
	orrs	r3, r3, r2
	orr	r3, r3, #96
	str	r3, [r0]
	.loc 1 223 1 is_stmt 0 view .LVU53
	ldr	r4, [sp], #4
.LCFI3:
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 159 15 view .LVU54
	movs	r0, #0
.LVL12:
	.loc 1 222 3 is_stmt 1 view .LVU55
	.loc 1 223 1 is_stmt 0 view .LVU56
	bx	lr
.LVL13:
.L12:
	.loc 1 219 12 view .LVU57
	movs	r0, #1
.LVL14:
	.loc 1 222 3 is_stmt 1 view .LVU58
	.loc 1 223 1 is_stmt 0 view .LVU59
	bx	lr
	.cfi_endproc
.LFE167:
	.size	LL_OPAMP_Init, .-LL_OPAMP_Init
	.section	.text.LL_OPAMP_StructInit,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	LL_OPAMP_StructInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	LL_OPAMP_StructInit, %function
LL_OPAMP_StructInit:
.LVL15:
.LFB168:
	.loc 1 232 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 234 3 view .LVU61
	.loc 1 234 39 is_stmt 0 view .LVU62
	movs	r3, #0
	.loc 1 235 39 view .LVU63
	movs	r1, #96
	.loc 1 239 39 view .LVU64
	movs	r2, #64
	.loc 1 235 39 view .LVU65
	strd	r3, r1, [r0]
	.loc 1 236 3 is_stmt 1 view .LVU66
	.loc 1 239 39 is_stmt 0 view .LVU67
	strd	r3, r2, [r0, #8]
	.loc 1 240 1 view .LVU68
	bx	lr
	.cfi_endproc
.LFE168:
	.size	LL_OPAMP_StructInit, .-LL_OPAMP_StructInit
	.text
.Letext0:
	.file 3 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/machine/_default_types.h"
	.file 4 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/sys/_stdint.h"
	.file 5 "Drivers/CMSIS/Device/ST/STM32G4xx/Include/stm32g431xx.h"
	.file 6 "Drivers/CMSIS/Device/ST/STM32G4xx/Include/stm32g4xx.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x2df
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF28
	.byte	0xc
	.4byte	.LASF29
	.4byte	.LASF30
	.4byte	.Ldebug_ranges0+0x18
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
	.byte	0x1c
	.byte	0x5
	.2byte	0x213
	.byte	0x9
	.4byte	0xc7
	.uleb128 0x7
	.ascii	"CSR\000"
	.byte	0x5
	.2byte	0x215
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.4byte	.LASF11
	.byte	0x5
	.2byte	0x216
	.byte	0x11
	.4byte	0xd7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.4byte	.LASF12
	.byte	0x5
	.2byte	0x217
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x9
	.4byte	0x87
	.4byte	0xd7
	.uleb128 0xa
	.4byte	0x74
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	0xc7
	.uleb128 0xb
	.4byte	.LASF13
	.byte	0x5
	.2byte	0x218
	.byte	0x3
	.4byte	0x8c
	.uleb128 0xc
	.byte	0x7
	.byte	0x1
	.4byte	0x30
	.byte	0x6
	.byte	0x97
	.byte	0x1
	.4byte	0x104
	.uleb128 0xd
	.4byte	.LASF14
	.byte	0
	.uleb128 0xd
	.4byte	.LASF15
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x6
	.byte	0x9a
	.byte	0x3
	.4byte	0xe9
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF17
	.uleb128 0xe
	.byte	0x10
	.byte	0x2
	.byte	0x5e
	.byte	0x9
	.4byte	0x15d
	.uleb128 0xf
	.4byte	.LASF18
	.byte	0x2
	.byte	0x60
	.byte	0xc
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.4byte	.LASF19
	.byte	0x2
	.byte	0x66
	.byte	0xc
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.4byte	.LASF20
	.byte	0x2
	.byte	0x6c
	.byte	0xc
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.4byte	.LASF21
	.byte	0x2
	.byte	0x71
	.byte	0xc
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x2
	.byte	0x77
	.byte	0x3
	.4byte	0x117
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF31
	.byte	0x1
	.byte	0xe7
	.byte	0x6
	.byte	0x1
	.4byte	.LFB168
	.4byte	.LFE168
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x192
	.uleb128 0x11
	.4byte	.LASF23
	.byte	0x1
	.byte	0xe7
	.byte	0x30
	.4byte	0x192
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x12
	.byte	0x4
	.4byte	0x15d
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF24
	.byte	0x1
	.byte	0x9d
	.byte	0xd
	.byte	0x1
	.4byte	0x104
	.4byte	.LFB167
	.4byte	.LFE167
	.4byte	.LLST4
	.byte	0x1
	.4byte	0x211
	.uleb128 0x14
	.4byte	.LASF26
	.byte	0x1
	.byte	0x9d
	.byte	0x2a
	.4byte	0x211
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x11
	.4byte	.LASF23
	.byte	0x1
	.byte	0x9d
	.byte	0x48
	.4byte	0x192
	.byte	0x1
	.byte	0x51
	.uleb128 0x15
	.4byte	.LASF27
	.byte	0x1
	.byte	0x9f
	.byte	0xf
	.4byte	0x104
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x16
	.4byte	0x2c5
	.4byte	.LBI14
	.byte	.LVU38
	.4byte	.LBB14
	.4byte	.LBE14
	.byte	0x1
	.byte	0xb2
	.byte	0x7
	.uleb128 0x17
	.4byte	0x2d4
	.4byte	.LLST7
	.4byte	.LVUS7
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x4
	.4byte	0xdc
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF25
	.byte	0x1
	.byte	0x69
	.byte	0xd
	.byte	0x1
	.4byte	0x104
	.4byte	.LFB166
	.4byte	.LFE166
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x2a4
	.uleb128 0x14
	.4byte	.LASF26
	.byte	0x1
	.byte	0x69
	.byte	0x2c
	.4byte	0x211
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x15
	.4byte	.LASF27
	.byte	0x1
	.byte	0x6b
	.byte	0xf
	.4byte	0x104
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x19
	.4byte	0x2c5
	.4byte	.LBI8
	.byte	.LVU4
	.4byte	.LBB8
	.4byte	.LBE8
	.byte	0x1
	.byte	0x72
	.byte	0x7
	.4byte	0x284
	.uleb128 0x17
	.4byte	0x2d4
	.4byte	.LLST2
	.4byte	.LVUS2
	.byte	0
	.uleb128 0x1a
	.4byte	0x2a4
	.4byte	.LBI10
	.byte	.LVU13
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x7f
	.byte	0x7
	.uleb128 0x17
	.4byte	0x2b7
	.4byte	.LLST3
	.4byte	.LVUS3
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF32
	.byte	0x2
	.2byte	0x3d9
	.byte	0x1a
	.byte	0x1
	.4byte	0x7b
	.byte	0x3
	.4byte	0x2c5
	.uleb128 0x1c
	.4byte	.LASF26
	.byte	0x2
	.2byte	0x3d9
	.byte	0x43
	.4byte	0x211
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF33
	.byte	0x2
	.2byte	0x3be
	.byte	0x1a
	.byte	0x1
	.4byte	0x7b
	.byte	0x3
	.uleb128 0x1c
	.4byte	.LASF26
	.byte	0x2
	.2byte	0x3be
	.byte	0x3b
	.4byte	0x211
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
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x6
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST4:
	.4byte	.LFB167
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
	.4byte	.LCFI2
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI2
	.4byte	.LCFI3
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI3
	.4byte	.LFE167
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 0
	.uleb128 .LVU50
	.uleb128 .LVU50
	.uleb128 .LVU52
	.uleb128 .LVU52
	.uleb128 .LVU55
	.uleb128 .LVU55
	.uleb128 .LVU57
	.uleb128 .LVU57
	.uleb128 .LVU58
	.uleb128 .LVU58
	.uleb128 0
.LLST5:
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL14
	.4byte	.LFE167
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 .LVU31
	.uleb128 .LVU50
	.uleb128 .LVU50
	.uleb128 .LVU52
	.uleb128 .LVU52
	.uleb128 .LVU55
	.uleb128 .LVU55
	.uleb128 .LVU57
	.uleb128 .LVU57
	.uleb128 .LVU58
	.uleb128 .LVU58
	.uleb128 0
.LLST6:
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LFE167
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 .LVU38
	.uleb128 .LVU44
	.uleb128 .LVU57
	.uleb128 .LVU58
.LLST7:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU21
	.uleb128 .LVU21
	.uleb128 .LVU22
	.uleb128 .LVU22
	.uleb128 .LVU28
	.uleb128 .LVU28
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL7
	.4byte	.LFE166
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
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LFE166
	.2byte	0x1
	.byte	0x53
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
.LVUS3:
	.uleb128 .LVU13
	.uleb128 .LVU16
.LLST3:
	.4byte	.LVL2
	.4byte	.LVL3
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
	.4byte	.LFB166
	.4byte	.LFE166-.LFB166
	.4byte	.LFB167
	.4byte	.LFE167-.LFB167
	.4byte	.LFB168
	.4byte	.LFE168-.LFB168
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	0
	.4byte	0
	.4byte	.LFB166
	.4byte	.LFE166
	.4byte	.LFB167
	.4byte	.LFE167
	.4byte	.LFB168
	.4byte	.LFE168
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF22:
	.ascii	"LL_OPAMP_InitTypeDef\000"
.LASF27:
	.ascii	"status\000"
.LASF26:
	.ascii	"OPAMPx\000"
.LASF31:
	.ascii	"LL_OPAMP_StructInit\000"
.LASF23:
	.ascii	"OPAMP_InitStruct\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF14:
	.ascii	"SUCCESS\000"
.LASF16:
	.ascii	"ErrorStatus\000"
.LASF5:
	.ascii	"long unsigned int\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF18:
	.ascii	"PowerMode\000"
.LASF24:
	.ascii	"LL_OPAMP_Init\000"
.LASF11:
	.ascii	"RESERVED\000"
.LASF25:
	.ascii	"LL_OPAMP_DeInit\000"
.LASF9:
	.ascii	"__uint32_t\000"
.LASF32:
	.ascii	"LL_OPAMP_IsTimerMuxLocked\000"
.LASF8:
	.ascii	"unsigned int\000"
.LASF28:
	.ascii	"GNU C17 10.2.1 20201103 (release) -mcpu=cortex-m4 -"
	.ascii	"mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=hard -march=ar"
	.ascii	"mv7e-m+fp -g -gdwarf-2 -O3 -fdata-sections -ffuncti"
	.ascii	"on-sections\000"
.LASF7:
	.ascii	"long long unsigned int\000"
.LASF33:
	.ascii	"LL_OPAMP_IsLocked\000"
.LASF21:
	.ascii	"InputInverting\000"
.LASF15:
	.ascii	"ERROR\000"
.LASF6:
	.ascii	"long long int\000"
.LASF19:
	.ascii	"FunctionalMode\000"
.LASF30:
	.ascii	"/home/joel/share/EVSPIN32G4_Shinano\000"
.LASF12:
	.ascii	"TCMR\000"
.LASF2:
	.ascii	"short int\000"
.LASF20:
	.ascii	"InputNonInverting\000"
.LASF10:
	.ascii	"uint32_t\000"
.LASF4:
	.ascii	"long int\000"
.LASF17:
	.ascii	"long double\000"
.LASF13:
	.ascii	"OPAMP_TypeDef\000"
.LASF0:
	.ascii	"signed char\000"
.LASF29:
	.ascii	"Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_ll_opamp"
	.ascii	".c\000"
	.ident	"GCC: (GNU Arm Embedded Toolchain 10-2020-q4-major) 10.2.1 20201103 (release)"
