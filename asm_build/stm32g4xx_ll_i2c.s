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
	.file	"stm32g4xx_ll_i2c.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.LL_I2C_DeInit,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	LL_I2C_DeInit
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	LL_I2C_DeInit, %function
LL_I2C_DeInit:
.LVL0:
.LFB308:
	.file 1 "Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_ll_i2c.c"
	.loc 1 87 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 88 3 view .LVU1
	.loc 1 91 3 view .LVU2
	.loc 1 93 3 view .LVU3
	.loc 1 93 6 is_stmt 0 view .LVU4
	ldr	r3, .L10
	cmp	r0, r3
	beq	.L7
	.loc 1 101 8 is_stmt 1 view .LVU5
	.loc 1 101 11 is_stmt 0 view .LVU6
	ldr	r3, .L10+4
	cmp	r0, r3
	beq	.L8
	.loc 1 110 8 is_stmt 1 view .LVU7
	.loc 1 110 11 is_stmt 0 view .LVU8
	ldr	r3, .L10+8
	cmp	r0, r3
	beq	.L9
	.loc 1 130 12 view .LVU9
	movs	r0, #1
.LVL1:
	.loc 1 133 3 is_stmt 1 view .LVU10
	.loc 1 134 1 is_stmt 0 view .LVU11
	bx	lr
.LVL2:
.L8:
	.loc 1 104 5 is_stmt 1 view .LVU12
.LBB32:
.LBI32:
	.file 2 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_ll_bus.h"
	.loc 2 1139 22 view .LVU13
.LBB33:
	.loc 2 1141 3 view .LVU14
	add	r3, r3, #112640
.LBE33:
.LBE32:
	.loc 1 88 15 is_stmt 0 view .LVU15
	movs	r0, #0
.LVL3:
.LBB35:
.LBB34:
	.loc 2 1141 3 view .LVU16
	ldr	r2, [r3, #56]
	orr	r2, r2, #4194304
	str	r2, [r3, #56]
.LVL4:
	.loc 2 1141 3 view .LVU17
.LBE34:
.LBE35:
	.loc 1 107 5 is_stmt 1 view .LVU18
.LBB36:
.LBI36:
	.loc 2 1209 22 view .LVU19
.LBB37:
	.loc 2 1211 3 view .LVU20
	ldr	r2, [r3, #56]
	bic	r2, r2, #4194304
	str	r2, [r3, #56]
	.loc 2 1212 1 is_stmt 0 view .LVU21
	bx	lr
.LVL5:
.L7:
	.loc 2 1212 1 view .LVU22
.LBE37:
.LBE36:
	.loc 1 96 5 is_stmt 1 view .LVU23
.LBB38:
.LBI38:
	.loc 2 1139 22 view .LVU24
.LBB39:
	.loc 2 1141 3 view .LVU25
	add	r3, r3, #113664
.LBE39:
.LBE38:
	.loc 1 88 15 is_stmt 0 view .LVU26
	movs	r0, #0
.LVL6:
.LBB41:
.LBB40:
	.loc 2 1141 3 view .LVU27
	ldr	r2, [r3, #56]
	orr	r2, r2, #2097152
	str	r2, [r3, #56]
.LVL7:
	.loc 2 1141 3 view .LVU28
.LBE40:
.LBE41:
	.loc 1 99 5 is_stmt 1 view .LVU29
.LBB42:
.LBI42:
	.loc 2 1209 22 view .LVU30
.LBB43:
	.loc 2 1211 3 view .LVU31
	ldr	r2, [r3, #56]
	bic	r2, r2, #2097152
	str	r2, [r3, #56]
	.loc 2 1212 1 is_stmt 0 view .LVU32
	bx	lr
.LVL8:
.L9:
	.loc 2 1212 1 view .LVU33
.LBE43:
.LBE42:
	.loc 1 113 5 is_stmt 1 view .LVU34
.LBB44:
.LBI44:
	.loc 2 1139 22 view .LVU35
.LBB45:
	.loc 2 1141 3 view .LVU36
	add	r3, r3, #104448
.LBE45:
.LBE44:
	.loc 1 88 15 is_stmt 0 view .LVU37
	movs	r0, #0
.LVL9:
.LBB47:
.LBB46:
	.loc 2 1141 3 view .LVU38
	ldr	r2, [r3, #56]
	orr	r2, r2, #1073741824
	str	r2, [r3, #56]
.LVL10:
	.loc 2 1141 3 view .LVU39
.LBE46:
.LBE47:
	.loc 1 116 5 is_stmt 1 view .LVU40
.LBB48:
.LBI48:
	.loc 2 1209 22 view .LVU41
.LBB49:
	.loc 2 1211 3 view .LVU42
	ldr	r2, [r3, #56]
	bic	r2, r2, #1073741824
	str	r2, [r3, #56]
	.loc 2 1212 1 is_stmt 0 view .LVU43
	bx	lr
.L11:
	.align	2
.L10:
	.word	1073763328
	.word	1073764352
	.word	1073772544
.LBE49:
.LBE48:
	.cfi_endproc
.LFE308:
	.size	LL_I2C_DeInit, .-LL_I2C_DeInit
	.section	.text.LL_I2C_Init,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	LL_I2C_Init
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	LL_I2C_Init, %function
LL_I2C_Init:
.LVL11:
.LFB309:
	.loc 1 145 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 147 3 view .LVU45
	.loc 1 150 3 view .LVU46
	.loc 1 151 3 view .LVU47
	.loc 1 152 3 view .LVU48
	.loc 1 153 3 view .LVU49
	.loc 1 154 3 view .LVU50
	.loc 1 155 3 view .LVU51
	.loc 1 158 3 view .LVU52
.LBB50:
.LBI50:
	.file 3 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_ll_i2c.h"
	.loc 3 443 22 view .LVU53
.LBB51:
	.loc 3 445 3 view .LVU54
	ldr	r3, [r0]
	bic	r3, r3, #1
.LBE51:
.LBE50:
	.loc 1 145 1 is_stmt 0 view .LVU55
	push	{r4}
.LCFI0:
	.cfi_def_cfa_offset 4
	.cfi_offset 4, -4
.LBB53:
.LBB52:
	.loc 3 445 3 view .LVU56
	str	r3, [r0]
.LVL12:
	.loc 3 445 3 view .LVU57
.LBE52:
.LBE53:
	.loc 1 165 3 is_stmt 1 view .LVU58
.LBB54:
.LBI54:
	.loc 3 475 22 view .LVU59
.LBB55:
	.loc 3 477 3 view .LVU60
	ldrd	r3, r4, [r1, #8]
	ldr	r2, [r0]
	orr	r3, r3, r4, lsl #8
	bic	r2, r2, #7936
.LBE55:
.LBE54:
	.loc 1 172 3 is_stmt 0 view .LVU61
	ldr	r4, [r1, #4]
.LBB57:
.LBB56:
	.loc 3 477 3 view .LVU62
	orrs	r3, r3, r2
	str	r3, [r0]
.LVL13:
	.loc 3 477 3 view .LVU63
.LBE56:
.LBE57:
	.loc 1 172 3 is_stmt 1 view .LVU64
.LBB58:
.LBI58:
	.loc 3 922 22 view .LVU65
.LBB59:
	.loc 3 924 3 view .LVU66
	str	r4, [r0, #16]
.LVL14:
	.loc 3 924 3 is_stmt 0 view .LVU67
.LBE59:
.LBE58:
	.loc 1 175 3 is_stmt 1 view .LVU68
.LBB60:
.LBI60:
	.loc 3 429 22 view .LVU69
.LBB61:
	.loc 3 431 3 view .LVU70
	ldr	r3, [r0]
.LBE61:
.LBE60:
	.loc 1 183 3 is_stmt 0 view .LVU71
	ldr	r4, [r1, #16]
.LBB63:
.LBB62:
	.loc 3 431 3 view .LVU72
	orr	r3, r3, #1
	str	r3, [r0]
.LVL15:
	.loc 3 431 3 view .LVU73
.LBE62:
.LBE63:
	.loc 1 182 3 is_stmt 1 view .LVU74
.LBB64:
.LBI64:
	.loc 3 841 22 view .LVU75
.LBB65:
	.loc 3 843 3 view .LVU76
	ldr	r3, [r0, #8]
	bic	r3, r3, #32768
	str	r3, [r0, #8]
.LVL16:
	.loc 3 843 3 is_stmt 0 view .LVU77
.LBE65:
.LBE64:
	.loc 1 183 3 is_stmt 1 view .LVU78
.LBB66:
.LBI66:
	.loc 3 819 22 view .LVU79
.LBB67:
	.loc 3 821 3 view .LVU80
	ldr	r2, [r0, #8]
	ldr	r3, [r1, #24]
	bic	r2, r2, #2040
	orrs	r3, r3, r4
	bic	r2, r2, #7
	orrs	r3, r3, r2
	str	r3, [r0, #8]
.LVL17:
	.loc 3 821 3 is_stmt 0 view .LVU81
.LBE67:
.LBE66:
	.loc 1 186 3 is_stmt 1 view .LVU82
	.loc 1 186 6 is_stmt 0 view .LVU83
	cbz	r4, .L13
	.loc 1 188 5 is_stmt 1 view .LVU84
.LVL18:
.LBB68:
.LBI68:
	.loc 3 830 22 view .LVU85
.LBB69:
	.loc 3 832 3 view .LVU86
	ldr	r3, [r0, #8]
	orr	r3, r3, #32768
	str	r3, [r0, #8]
.LVL19:
.L13:
	.loc 3 832 3 is_stmt 0 view .LVU87
.LBE69:
.LBE68:
	.loc 1 195 3 is_stmt 1 view .LVU88
.LBB70:
.LBI70:
	.loc 3 996 22 view .LVU89
.LBB71:
	.loc 3 998 3 view .LVU90
	ldr	r3, [r0]
	ldr	r2, [r1]
.LBE71:
.LBE70:
	.loc 1 205 1 is_stmt 0 view .LVU91
	ldr	r4, [sp], #4
.LCFI1:
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LBB73:
.LBB72:
	.loc 3 998 3 view .LVU92
	bic	r3, r3, #3145728
	orrs	r3, r3, r2
	str	r3, [r0]
.LVL20:
	.loc 3 998 3 view .LVU93
.LBE72:
.LBE73:
	.loc 1 202 3 is_stmt 1 view .LVU94
.LBB74:
.LBI74:
	.loc 3 1977 22 view .LVU95
.LBB75:
	.loc 3 1979 3 view .LVU96
	ldr	r3, [r0, #4]
	ldr	r2, [r1, #20]
	bic	r3, r3, #32768
	orrs	r3, r3, r2
	str	r3, [r0, #4]
.LVL21:
	.loc 3 1979 3 is_stmt 0 view .LVU97
.LBE75:
.LBE74:
	.loc 1 204 3 is_stmt 1 view .LVU98
	.loc 1 205 1 is_stmt 0 view .LVU99
	movs	r0, #0
.LVL22:
	.loc 1 205 1 view .LVU100
	bx	lr
	.cfi_endproc
.LFE309:
	.size	LL_I2C_Init, .-LL_I2C_Init
	.section	.text.LL_I2C_StructInit,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	LL_I2C_StructInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	LL_I2C_StructInit, %function
LL_I2C_StructInit:
.LVL23:
.LFB310:
	.loc 1 213 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 215 3 view .LVU102
	.loc 1 215 35 is_stmt 0 view .LVU103
	movs	r3, #0
	.loc 1 220 35 view .LVU104
	mov	r2, #32768
	.loc 1 216 35 view .LVU105
	strd	r3, r3, [r0]
	.loc 1 217 3 is_stmt 1 view .LVU106
	.loc 1 218 35 is_stmt 0 view .LVU107
	strd	r3, r3, [r0, #8]
	.loc 1 219 3 is_stmt 1 view .LVU108
	.loc 1 220 35 is_stmt 0 view .LVU109
	strd	r3, r2, [r0, #16]
	.loc 1 221 3 is_stmt 1 view .LVU110
	.loc 1 221 35 is_stmt 0 view .LVU111
	str	r3, [r0, #24]
	.loc 1 222 1 view .LVU112
	bx	lr
	.cfi_endproc
.LFE310:
	.size	LL_I2C_StructInit, .-LL_I2C_StructInit
	.text
.Letext0:
	.file 4 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/machine/_default_types.h"
	.file 5 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/sys/_stdint.h"
	.file 6 "Drivers/CMSIS/Device/ST/STM32G4xx/Include/stm32g431xx.h"
	.file 7 "Drivers/CMSIS/Device/ST/STM32G4xx/Include/stm32g4xx.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x983
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF85
	.byte	0xc
	.4byte	.LASF86
	.4byte	.LASF87
	.4byte	.Ldebug_ranges0+0xa8
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
	.byte	0x4
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
	.byte	0x5
	.byte	0x30
	.byte	0x14
	.4byte	0x4c
	.uleb128 0x5
	.4byte	0x7b
	.uleb128 0x6
	.byte	0x2c
	.byte	0x6
	.2byte	0x1e2
	.byte	0x9
	.4byte	0x147
	.uleb128 0x7
	.ascii	"CR1\000"
	.byte	0x6
	.2byte	0x1e4
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.ascii	"CR2\000"
	.byte	0x6
	.2byte	0x1e5
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.4byte	.LASF11
	.byte	0x6
	.2byte	0x1e6
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.4byte	.LASF12
	.byte	0x6
	.2byte	0x1e7
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.4byte	.LASF13
	.byte	0x6
	.2byte	0x1e8
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x6
	.2byte	0x1e9
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.ascii	"ISR\000"
	.byte	0x6
	.2byte	0x1ea
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.ascii	"ICR\000"
	.byte	0x6
	.2byte	0x1eb
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x6
	.2byte	0x1ec
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x6
	.2byte	0x1ed
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x6
	.2byte	0x1ee
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x6
	.2byte	0x1ef
	.byte	0x3
	.4byte	0x8c
	.uleb128 0xa
	.4byte	0x147
	.uleb128 0x6
	.byte	0xa0
	.byte	0x6
	.2byte	0x23f
	.byte	0x9
	.4byte	0x3eb
	.uleb128 0x7
	.ascii	"CR\000"
	.byte	0x6
	.2byte	0x241
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x6
	.2byte	0x242
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x6
	.2byte	0x243
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x6
	.2byte	0x244
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x6
	.2byte	0x245
	.byte	0x11
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x6
	.2byte	0x246
	.byte	0x11
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x6
	.2byte	0x247
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x6
	.2byte	0x248
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x6
	.2byte	0x249
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0x6
	.2byte	0x24a
	.byte	0x11
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x8
	.4byte	.LASF28
	.byte	0x6
	.2byte	0x24b
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.4byte	.LASF29
	.byte	0x6
	.2byte	0x24c
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x8
	.4byte	.LASF30
	.byte	0x6
	.2byte	0x24d
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x8
	.4byte	.LASF31
	.byte	0x6
	.2byte	0x24e
	.byte	0x11
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x8
	.4byte	.LASF32
	.byte	0x6
	.2byte	0x24f
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x8
	.4byte	.LASF33
	.byte	0x6
	.2byte	0x250
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x8
	.4byte	.LASF34
	.byte	0x6
	.2byte	0x251
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x8
	.4byte	.LASF35
	.byte	0x6
	.2byte	0x252
	.byte	0x11
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x8
	.4byte	.LASF36
	.byte	0x6
	.2byte	0x253
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x8
	.4byte	.LASF37
	.byte	0x6
	.2byte	0x254
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x8
	.4byte	.LASF38
	.byte	0x6
	.2byte	0x255
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x8
	.4byte	.LASF39
	.byte	0x6
	.2byte	0x256
	.byte	0x11
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x8
	.4byte	.LASF40
	.byte	0x6
	.2byte	0x257
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x8
	.4byte	.LASF41
	.byte	0x6
	.2byte	0x258
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x8
	.4byte	.LASF42
	.byte	0x6
	.2byte	0x259
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x8
	.4byte	.LASF43
	.byte	0x6
	.2byte	0x25a
	.byte	0x11
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x8
	.4byte	.LASF44
	.byte	0x6
	.2byte	0x25b
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x8
	.4byte	.LASF45
	.byte	0x6
	.2byte	0x25c
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x8
	.4byte	.LASF46
	.byte	0x6
	.2byte	0x25d
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x8
	.4byte	.LASF47
	.byte	0x6
	.2byte	0x25e
	.byte	0x11
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x8
	.4byte	.LASF48
	.byte	0x6
	.2byte	0x25f
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x8
	.4byte	.LASF49
	.byte	0x6
	.2byte	0x260
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x8
	.4byte	.LASF50
	.byte	0x6
	.2byte	0x261
	.byte	0x11
	.4byte	0x87
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x8
	.4byte	.LASF51
	.byte	0x6
	.2byte	0x262
	.byte	0x11
	.4byte	0x7b
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x8
	.4byte	.LASF52
	.byte	0x6
	.2byte	0x263
	.byte	0x11
	.4byte	0x87
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x8
	.4byte	.LASF53
	.byte	0x6
	.2byte	0x264
	.byte	0x11
	.4byte	0x7b
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x8
	.4byte	.LASF54
	.byte	0x6
	.2byte	0x265
	.byte	0x11
	.4byte	0x87
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x7
	.ascii	"CSR\000"
	.byte	0x6
	.2byte	0x266
	.byte	0x11
	.4byte	0x87
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x8
	.4byte	.LASF55
	.byte	0x6
	.2byte	0x267
	.byte	0x11
	.4byte	0x87
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x8
	.4byte	.LASF56
	.byte	0x6
	.2byte	0x268
	.byte	0x11
	.4byte	0x87
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.byte	0
	.uleb128 0x9
	.4byte	.LASF57
	.byte	0x6
	.2byte	0x269
	.byte	0x3
	.4byte	0x159
	.uleb128 0xb
	.byte	0x7
	.byte	0x1
	.4byte	0x30
	.byte	0x7
	.byte	0x97
	.byte	0x1
	.4byte	0x413
	.uleb128 0xc
	.4byte	.LASF58
	.byte	0
	.uleb128 0xc
	.4byte	.LASF59
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF60
	.byte	0x7
	.byte	0x9a
	.byte	0x3
	.4byte	0x3f8
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF61
	.uleb128 0xd
	.byte	0x1c
	.byte	0x3
	.byte	0x42
	.byte	0x9
	.4byte	0x499
	.uleb128 0xe
	.4byte	.LASF62
	.byte	0x3
	.byte	0x44
	.byte	0xc
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.4byte	.LASF63
	.byte	0x3
	.byte	0x4a
	.byte	0xc
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.4byte	.LASF64
	.byte	0x3
	.byte	0x51
	.byte	0xc
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.4byte	.LASF65
	.byte	0x3
	.byte	0x57
	.byte	0xc
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.4byte	.LASF66
	.byte	0x3
	.byte	0x5d
	.byte	0xc
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.4byte	.LASF67
	.byte	0x3
	.byte	0x63
	.byte	0xc
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.4byte	.LASF68
	.byte	0x3
	.byte	0x6a
	.byte	0xc
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x3
	.4byte	.LASF69
	.byte	0x3
	.byte	0x6f
	.byte	0x3
	.4byte	0x426
	.uleb128 0xa
	.4byte	0x499
	.uleb128 0xf
	.byte	0x1
	.4byte	.LASF88
	.byte	0x1
	.byte	0xd4
	.byte	0x6
	.byte	0x1
	.4byte	.LFB310
	.4byte	.LFE310
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x4d3
	.uleb128 0x10
	.4byte	.LASF70
	.byte	0x1
	.byte	0xd4
	.byte	0x2c
	.4byte	0x4d3
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x499
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF71
	.byte	0x1
	.byte	0x90
	.byte	0xd
	.byte	0x1
	.4byte	0x413
	.4byte	.LFB309
	.4byte	.LFE309
	.4byte	.LLST7
	.byte	0x1
	.4byte	0x6c1
	.uleb128 0x13
	.4byte	.LASF73
	.byte	0x1
	.byte	0x90
	.byte	0x26
	.4byte	0x6c1
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x10
	.4byte	.LASF70
	.byte	0x1
	.byte	0x90
	.byte	0x46
	.4byte	0x6c7
	.byte	0x1
	.byte	0x51
	.uleb128 0x14
	.4byte	0x950
	.4byte	.LBI50
	.byte	.LVU53
	.4byte	.Ldebug_ranges0+0x48
	.byte	0x1
	.byte	0x9e
	.byte	0x3
	.4byte	0x53d
	.uleb128 0x15
	.4byte	0x95f
	.4byte	.LLST9
	.4byte	.LVUS9
	.byte	0
	.uleb128 0x14
	.4byte	0x919
	.4byte	.LBI54
	.byte	.LVU59
	.4byte	.Ldebug_ranges0+0x60
	.byte	0x1
	.byte	0xa5
	.byte	0x3
	.4byte	0x57a
	.uleb128 0x15
	.4byte	0x942
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x15
	.4byte	0x935
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x15
	.4byte	0x928
	.4byte	.LLST12
	.4byte	.LVUS12
	.byte	0
	.uleb128 0x16
	.4byte	0x87e
	.4byte	.LBI58
	.byte	.LVU65
	.4byte	.LBB58
	.4byte	.LBE58
	.byte	0x1
	.byte	0xac
	.byte	0x3
	.4byte	0x5ae
	.uleb128 0x15
	.4byte	0x89a
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x15
	.4byte	0x88d
	.4byte	.LLST14
	.4byte	.LVUS14
	.byte	0
	.uleb128 0x14
	.4byte	0x96d
	.4byte	.LBI60
	.byte	.LVU69
	.4byte	.Ldebug_ranges0+0x78
	.byte	0x1
	.byte	0xaf
	.byte	0x3
	.4byte	0x5d1
	.uleb128 0x15
	.4byte	0x978
	.4byte	.LLST15
	.4byte	.LVUS15
	.byte	0
	.uleb128 0x16
	.4byte	0x8a8
	.4byte	.LBI64
	.byte	.LVU75
	.4byte	.LBB64
	.4byte	.LBE64
	.byte	0x1
	.byte	0xb6
	.byte	0x3
	.4byte	0x5f8
	.uleb128 0x15
	.4byte	0x8b7
	.4byte	.LLST16
	.4byte	.LVUS16
	.byte	0
	.uleb128 0x16
	.4byte	0x8e2
	.4byte	.LBI66
	.byte	.LVU79
	.4byte	.LBB66
	.4byte	.LBE66
	.byte	0x1
	.byte	0xb7
	.byte	0x3
	.4byte	0x639
	.uleb128 0x15
	.4byte	0x90b
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0x15
	.4byte	0x8fe
	.4byte	.LLST18
	.4byte	.LVUS18
	.uleb128 0x15
	.4byte	0x8f1
	.4byte	.LLST19
	.4byte	.LVUS19
	.byte	0
	.uleb128 0x16
	.4byte	0x8c5
	.4byte	.LBI68
	.byte	.LVU85
	.4byte	.LBB68
	.4byte	.LBE68
	.byte	0x1
	.byte	0xbc
	.byte	0x5
	.4byte	0x660
	.uleb128 0x15
	.4byte	0x8d4
	.4byte	.LLST20
	.4byte	.LVUS20
	.byte	0
	.uleb128 0x14
	.4byte	0x854
	.4byte	.LBI70
	.byte	.LVU89
	.4byte	.Ldebug_ranges0+0x90
	.byte	0x1
	.byte	0xc3
	.byte	0x3
	.4byte	0x690
	.uleb128 0x15
	.4byte	0x870
	.4byte	.LLST21
	.4byte	.LVUS21
	.uleb128 0x15
	.4byte	0x863
	.4byte	.LLST22
	.4byte	.LVUS22
	.byte	0
	.uleb128 0x17
	.4byte	0x82a
	.4byte	.LBI74
	.byte	.LVU95
	.4byte	.LBB74
	.4byte	.LBE74
	.byte	0x1
	.byte	0xca
	.byte	0x3
	.uleb128 0x15
	.4byte	0x846
	.4byte	.LLST23
	.4byte	.LVUS23
	.uleb128 0x15
	.4byte	0x839
	.4byte	.LLST24
	.4byte	.LVUS24
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x147
	.uleb128 0x11
	.byte	0x4
	.4byte	0x4a5
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF72
	.byte	0x1
	.byte	0x56
	.byte	0xd
	.byte	0x1
	.4byte	0x413
	.4byte	.LFB308
	.4byte	.LFE308
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x7ea
	.uleb128 0x13
	.4byte	.LASF73
	.byte	0x1
	.byte	0x56
	.byte	0x2e
	.4byte	0x7ea
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x19
	.4byte	.LASF89
	.byte	0x1
	.byte	0x58
	.byte	0xf
	.4byte	0x413
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x14
	.4byte	0x80d
	.4byte	.LBI32
	.byte	.LVU13
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x68
	.byte	0x5
	.4byte	0x736
	.uleb128 0x15
	.4byte	0x81c
	.4byte	.LLST2
	.4byte	.LVUS2
	.byte	0
	.uleb128 0x16
	.4byte	0x7f0
	.4byte	.LBI36
	.byte	.LVU19
	.4byte	.LBB36
	.4byte	.LBE36
	.byte	0x1
	.byte	0x6b
	.byte	0x5
	.4byte	0x75d
	.uleb128 0x15
	.4byte	0x7ff
	.4byte	.LLST3
	.4byte	.LVUS3
	.byte	0
	.uleb128 0x14
	.4byte	0x80d
	.4byte	.LBI38
	.byte	.LVU24
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x60
	.byte	0x5
	.4byte	0x780
	.uleb128 0x15
	.4byte	0x81c
	.4byte	.LLST4
	.4byte	.LVUS4
	.byte	0
	.uleb128 0x16
	.4byte	0x7f0
	.4byte	.LBI42
	.byte	.LVU30
	.4byte	.LBB42
	.4byte	.LBE42
	.byte	0x1
	.byte	0x63
	.byte	0x5
	.4byte	0x7a7
	.uleb128 0x15
	.4byte	0x7ff
	.4byte	.LLST5
	.4byte	.LVUS5
	.byte	0
	.uleb128 0x14
	.4byte	0x80d
	.4byte	.LBI44
	.byte	.LVU35
	.4byte	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0x71
	.byte	0x5
	.4byte	0x7ca
	.uleb128 0x15
	.4byte	0x81c
	.4byte	.LLST6
	.4byte	.LVUS6
	.byte	0
	.uleb128 0x17
	.4byte	0x7f0
	.4byte	.LBI48
	.byte	.LVU41
	.4byte	.LBB48
	.4byte	.LBE48
	.byte	0x1
	.byte	0x74
	.byte	0x5
	.uleb128 0x1a
	.4byte	0x7ff
	.4byte	0x40000000
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x154
	.uleb128 0x1b
	.4byte	.LASF74
	.byte	0x2
	.2byte	0x4b9
	.byte	0x16
	.byte	0x1
	.byte	0x3
	.4byte	0x80d
	.uleb128 0x1c
	.4byte	.LASF76
	.byte	0x2
	.2byte	0x4b9
	.byte	0x39
	.4byte	0x7b
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF75
	.byte	0x2
	.2byte	0x473
	.byte	0x16
	.byte	0x1
	.byte	0x3
	.4byte	0x82a
	.uleb128 0x1c
	.4byte	.LASF76
	.byte	0x2
	.2byte	0x473
	.byte	0x37
	.4byte	0x7b
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF77
	.byte	0x3
	.2byte	0x7b9
	.byte	0x16
	.byte	0x1
	.byte	0x3
	.4byte	0x854
	.uleb128 0x1c
	.4byte	.LASF73
	.byte	0x3
	.2byte	0x7b9
	.byte	0x3e
	.4byte	0x6c1
	.uleb128 0x1c
	.4byte	.LASF67
	.byte	0x3
	.2byte	0x7b9
	.byte	0x4d
	.4byte	0x7b
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF78
	.byte	0x3
	.2byte	0x3e4
	.byte	0x16
	.byte	0x1
	.byte	0x3
	.4byte	0x87e
	.uleb128 0x1c
	.4byte	.LASF73
	.byte	0x3
	.2byte	0x3e4
	.byte	0x32
	.4byte	0x6c1
	.uleb128 0x1c
	.4byte	.LASF62
	.byte	0x3
	.2byte	0x3e4
	.byte	0x41
	.4byte	0x7b
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF79
	.byte	0x3
	.2byte	0x39a
	.byte	0x16
	.byte	0x1
	.byte	0x3
	.4byte	0x8a8
	.uleb128 0x1c
	.4byte	.LASF73
	.byte	0x3
	.2byte	0x39a
	.byte	0x34
	.4byte	0x6c1
	.uleb128 0x1c
	.4byte	.LASF63
	.byte	0x3
	.2byte	0x39a
	.byte	0x43
	.4byte	0x7b
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF80
	.byte	0x3
	.2byte	0x349
	.byte	0x16
	.byte	0x1
	.byte	0x3
	.4byte	0x8c5
	.uleb128 0x1c
	.4byte	.LASF73
	.byte	0x3
	.2byte	0x349
	.byte	0x3d
	.4byte	0x6c1
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF81
	.byte	0x3
	.2byte	0x33e
	.byte	0x16
	.byte	0x1
	.byte	0x3
	.4byte	0x8e2
	.uleb128 0x1c
	.4byte	.LASF73
	.byte	0x3
	.2byte	0x33e
	.byte	0x3c
	.4byte	0x6c1
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF82
	.byte	0x3
	.2byte	0x333
	.byte	0x16
	.byte	0x1
	.byte	0x3
	.4byte	0x919
	.uleb128 0x1c
	.4byte	.LASF73
	.byte	0x3
	.2byte	0x333
	.byte	0x39
	.4byte	0x6c1
	.uleb128 0x1c
	.4byte	.LASF66
	.byte	0x3
	.2byte	0x333
	.byte	0x48
	.4byte	0x7b
	.uleb128 0x1c
	.4byte	.LASF68
	.byte	0x3
	.2byte	0x333
	.byte	0x5e
	.4byte	0x7b
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF83
	.byte	0x3
	.2byte	0x1db
	.byte	0x16
	.byte	0x1
	.byte	0x3
	.4byte	0x950
	.uleb128 0x1c
	.4byte	.LASF73
	.byte	0x3
	.2byte	0x1db
	.byte	0x38
	.4byte	0x6c1
	.uleb128 0x1c
	.4byte	.LASF64
	.byte	0x3
	.2byte	0x1db
	.byte	0x47
	.4byte	0x7b
	.uleb128 0x1c
	.4byte	.LASF65
	.byte	0x3
	.2byte	0x1db
	.byte	0x5e
	.4byte	0x7b
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF84
	.byte	0x3
	.2byte	0x1bb
	.byte	0x16
	.byte	0x1
	.byte	0x3
	.4byte	0x96d
	.uleb128 0x1c
	.4byte	.LASF73
	.byte	0x3
	.2byte	0x1bb
	.byte	0x32
	.4byte	0x6c1
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF90
	.byte	0x3
	.2byte	0x1ad
	.byte	0x16
	.byte	0x1
	.byte	0x3
	.uleb128 0x1c
	.4byte	.LASF73
	.byte	0x3
	.2byte	0x1ad
	.byte	0x31
	.4byte	0x6c1
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
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST7:
	.4byte	.LFB309
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
	.4byte	.LFE309
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 0
	.uleb128 .LVU100
	.uleb128 .LVU100
	.uleb128 0
.LLST8:
	.4byte	.LVL11
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL22
	.4byte	.LFE309
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 .LVU53
	.uleb128 .LVU57
.LLST9:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 .LVU59
	.uleb128 .LVU63
.LLST10:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x2
	.byte	0x71
	.sleb128 12
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 .LVU59
	.uleb128 .LVU63
.LLST11:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	0
	.4byte	0
.LVUS12:
	.uleb128 .LVU59
	.uleb128 .LVU63
.LLST12:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS13:
	.uleb128 .LVU65
	.uleb128 .LVU67
.LLST13:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS14:
	.uleb128 .LVU65
	.uleb128 .LVU67
.LLST14:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS15:
	.uleb128 .LVU69
	.uleb128 .LVU73
.LLST15:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS16:
	.uleb128 .LVU75
	.uleb128 .LVU77
.LLST16:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS17:
	.uleb128 .LVU79
	.uleb128 .LVU81
.LLST17:
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x2
	.byte	0x71
	.sleb128 24
	.4byte	0
	.4byte	0
.LVUS18:
	.uleb128 .LVU79
	.uleb128 .LVU81
.LLST18:
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS19:
	.uleb128 .LVU79
	.uleb128 .LVU81
.LLST19:
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS20:
	.uleb128 .LVU85
	.uleb128 .LVU87
.LLST20:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS21:
	.uleb128 .LVU89
	.uleb128 .LVU93
.LLST21:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS22:
	.uleb128 .LVU89
	.uleb128 .LVU93
.LLST22:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS23:
	.uleb128 .LVU95
	.uleb128 .LVU97
.LLST23:
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x2
	.byte	0x71
	.sleb128 20
	.4byte	0
	.4byte	0
.LVUS24:
	.uleb128 .LVU95
	.uleb128 .LVU97
.LLST24:
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU10
	.uleb128 .LVU10
	.uleb128 .LVU12
	.uleb128 .LVU12
	.uleb128 .LVU16
	.uleb128 .LVU16
	.uleb128 .LVU22
	.uleb128 .LVU22
	.uleb128 .LVU27
	.uleb128 .LVU27
	.uleb128 .LVU33
	.uleb128 .LVU33
	.uleb128 .LVU38
	.uleb128 .LVU38
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL6
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
	.4byte	.LFE308
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 .LVU2
	.uleb128 .LVU10
	.uleb128 .LVU10
	.uleb128 .LVU12
	.uleb128 .LVU12
	.uleb128 0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL2
	.4byte	.LFE308
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 .LVU13
	.uleb128 .LVU17
.LLST2:
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x4
	.byte	0x40
	.byte	0x42
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 .LVU19
	.uleb128 .LVU22
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x4
	.byte	0x40
	.byte	0x42
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU24
	.uleb128 .LVU28
.LLST4:
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x4
	.byte	0x40
	.byte	0x41
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 .LVU30
	.uleb128 .LVU33
.LLST5:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x4
	.byte	0x40
	.byte	0x41
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 .LVU35
	.uleb128 .LVU39
.LLST6:
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x4
	.byte	0x40
	.byte	0x4a
	.byte	0x24
	.byte	0x9f
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
	.4byte	.LFB308
	.4byte	.LFE308-.LFB308
	.4byte	.LFB309
	.4byte	.LFE309-.LFB309
	.4byte	.LFB310
	.4byte	.LFE310-.LFB310
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB32
	.4byte	.LBE32
	.4byte	.LBB35
	.4byte	.LBE35
	.4byte	0
	.4byte	0
	.4byte	.LBB38
	.4byte	.LBE38
	.4byte	.LBB41
	.4byte	.LBE41
	.4byte	0
	.4byte	0
	.4byte	.LBB44
	.4byte	.LBE44
	.4byte	.LBB47
	.4byte	.LBE47
	.4byte	0
	.4byte	0
	.4byte	.LBB50
	.4byte	.LBE50
	.4byte	.LBB53
	.4byte	.LBE53
	.4byte	0
	.4byte	0
	.4byte	.LBB54
	.4byte	.LBE54
	.4byte	.LBB57
	.4byte	.LBE57
	.4byte	0
	.4byte	0
	.4byte	.LBB60
	.4byte	.LBE60
	.4byte	.LBB63
	.4byte	.LBE63
	.4byte	0
	.4byte	0
	.4byte	.LBB70
	.4byte	.LBE70
	.4byte	.LBB73
	.4byte	.LBE73
	.4byte	0
	.4byte	0
	.4byte	.LFB308
	.4byte	.LFE308
	.4byte	.LFB309
	.4byte	.LFE309
	.4byte	.LFB310
	.4byte	.LFE310
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF71:
	.ascii	"LL_I2C_Init\000"
.LASF65:
	.ascii	"DigitalFilter\000"
.LASF21:
	.ascii	"PLLCFGR\000"
.LASF32:
	.ascii	"APB1RSTR1\000"
.LASF33:
	.ascii	"APB1RSTR2\000"
.LASF37:
	.ascii	"AHB2ENR\000"
.LASF72:
	.ascii	"LL_I2C_DeInit\000"
.LASF82:
	.ascii	"LL_I2C_SetOwnAddress1\000"
.LASF83:
	.ascii	"LL_I2C_ConfigFilters\000"
.LASF2:
	.ascii	"short int\000"
.LASF70:
	.ascii	"I2C_InitStruct\000"
.LASF54:
	.ascii	"BDCR\000"
.LASF13:
	.ascii	"TIMINGR\000"
.LASF80:
	.ascii	"LL_I2C_DisableOwnAddress1\000"
.LASF52:
	.ascii	"CCIPR\000"
.LASF73:
	.ascii	"I2Cx\000"
.LASF26:
	.ascii	"CICR\000"
.LASF76:
	.ascii	"Periphs\000"
.LASF28:
	.ascii	"AHB1RSTR\000"
.LASF20:
	.ascii	"CFGR\000"
.LASF16:
	.ascii	"RXDR\000"
.LASF88:
	.ascii	"LL_I2C_StructInit\000"
.LASF24:
	.ascii	"CIER\000"
.LASF85:
	.ascii	"GNU C17 10.2.1 20201103 (release) -mcpu=cortex-m4 -"
	.ascii	"mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=hard -march=ar"
	.ascii	"mv7e-m+fp -g -gdwarf-2 -O3 -fdata-sections -ffuncti"
	.ascii	"on-sections\000"
.LASF38:
	.ascii	"AHB3ENR\000"
.LASF69:
	.ascii	"LL_I2C_InitTypeDef\000"
.LASF67:
	.ascii	"TypeAcknowledge\000"
.LASF6:
	.ascii	"long long int\000"
.LASF62:
	.ascii	"PeripheralMode\000"
.LASF48:
	.ascii	"APB1SMENR1\000"
.LASF49:
	.ascii	"APB1SMENR2\000"
.LASF4:
	.ascii	"long int\000"
.LASF60:
	.ascii	"ErrorStatus\000"
.LASF57:
	.ascii	"RCC_TypeDef\000"
.LASF78:
	.ascii	"LL_I2C_SetMode\000"
.LASF45:
	.ascii	"AHB2SMENR\000"
.LASF34:
	.ascii	"APB2RSTR\000"
.LASF59:
	.ascii	"ERROR\000"
.LASF75:
	.ascii	"LL_APB1_GRP1_ForceReset\000"
.LASF66:
	.ascii	"OwnAddress1\000"
.LASF61:
	.ascii	"long double\000"
.LASF68:
	.ascii	"OwnAddrSize\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF42:
	.ascii	"APB2ENR\000"
.LASF55:
	.ascii	"CRRCR\000"
.LASF0:
	.ascii	"signed char\000"
.LASF7:
	.ascii	"long long unsigned int\000"
.LASF10:
	.ascii	"uint32_t\000"
.LASF8:
	.ascii	"unsigned int\000"
.LASF29:
	.ascii	"AHB2RSTR\000"
.LASF87:
	.ascii	"/home/joel/share/EVSPIN32G4_Shinano\000"
.LASF5:
	.ascii	"long unsigned int\000"
.LASF86:
	.ascii	"Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_ll_i2c.c"
	.ascii	"\000"
.LASF64:
	.ascii	"AnalogFilter\000"
.LASF40:
	.ascii	"APB1ENR1\000"
.LASF41:
	.ascii	"APB1ENR2\000"
.LASF89:
	.ascii	"status\000"
.LASF56:
	.ascii	"CCIPR2\000"
.LASF90:
	.ascii	"LL_I2C_Enable\000"
.LASF19:
	.ascii	"ICSCR\000"
.LASF15:
	.ascii	"PECR\000"
.LASF79:
	.ascii	"LL_I2C_SetTiming\000"
.LASF50:
	.ascii	"APB2SMENR\000"
.LASF77:
	.ascii	"LL_I2C_AcknowledgeNextData\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF84:
	.ascii	"LL_I2C_Disable\000"
.LASF14:
	.ascii	"TIMEOUTR\000"
.LASF11:
	.ascii	"OAR1\000"
.LASF12:
	.ascii	"OAR2\000"
.LASF22:
	.ascii	"RESERVED0\000"
.LASF23:
	.ascii	"RESERVED1\000"
.LASF27:
	.ascii	"RESERVED2\000"
.LASF31:
	.ascii	"RESERVED3\000"
.LASF35:
	.ascii	"RESERVED4\000"
.LASF39:
	.ascii	"RESERVED5\000"
.LASF43:
	.ascii	"RESERVED6\000"
.LASF47:
	.ascii	"RESERVED7\000"
.LASF51:
	.ascii	"RESERVED8\000"
.LASF53:
	.ascii	"RESERVED9\000"
.LASF25:
	.ascii	"CIFR\000"
.LASF9:
	.ascii	"__uint32_t\000"
.LASF36:
	.ascii	"AHB1ENR\000"
.LASF81:
	.ascii	"LL_I2C_EnableOwnAddress1\000"
.LASF17:
	.ascii	"TXDR\000"
.LASF58:
	.ascii	"SUCCESS\000"
.LASF46:
	.ascii	"AHB3SMENR\000"
.LASF74:
	.ascii	"LL_APB1_GRP1_ReleaseReset\000"
.LASF44:
	.ascii	"AHB1SMENR\000"
.LASF30:
	.ascii	"AHB3RSTR\000"
.LASF18:
	.ascii	"I2C_TypeDef\000"
.LASF63:
	.ascii	"Timing\000"
	.ident	"GCC: (GNU Arm Embedded Toolchain 10-2020-q4-major) 10.2.1 20201103 (release)"
