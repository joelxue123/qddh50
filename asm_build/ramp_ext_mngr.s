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
	.file	"ramp_ext_mngr.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.REMNG_Init,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	REMNG_Init
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	REMNG_Init, %function
REMNG_Init:
.LVL0:
.LFB1435:
	.file 1 "MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Src/ramp_ext_mngr.c"
	.loc 1 45 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 54 5 view .LVU1
	.loc 1 54 18 is_stmt 0 view .LVU2
	movs	r3, #0
	.loc 1 58 28 view .LVU3
	movs	r2, #1
	.loc 1 55 26 view .LVU4
	strd	r3, r3, [r0, #4]
	.loc 1 56 5 is_stmt 1 view .LVU5
	.loc 1 57 27 is_stmt 0 view .LVU6
	strd	r3, r3, [r0, #12]
	.loc 1 58 5 is_stmt 1 view .LVU7
	.loc 1 58 28 is_stmt 0 view .LVU8
	str	r2, [r0, #20]
	.loc 1 62 1 view .LVU9
	bx	lr
	.cfi_endproc
.LFE1435:
	.size	REMNG_Init, .-REMNG_Init
	.section	.text.REMNG_Calc,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	REMNG_Calc
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	REMNG_Calc, %function
REMNG_Calc:
.LVL1:
.LFB1436:
	.loc 1 79 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 80 3 view .LVU11
	.loc 1 89 5 view .LVU12
	.loc 1 91 5 view .LVU13
	.loc 1 91 17 is_stmt 0 view .LVU14
	ldrd	r3, r1, [r0, #8]
.LVL2:
	.loc 1 94 5 is_stmt 1 view .LVU15
	.loc 1 94 8 is_stmt 0 view .LVU16
	cmp	r1, #1
	bls	.L4
	.loc 1 97 7 is_stmt 1 view .LVU17
.LVL3:
	.loc 1 79 1 is_stmt 0 view .LVU18
	push	{r4}
.LCFI0:
	.cfi_def_cfa_offset 4
	.cfi_offset 4, -4
	.loc 1 97 19 view .LVU19
	ldrd	r4, r2, [r0, #16]
	.loc 1 100 34 view .LVU20
	subs	r1, r1, #1
	.loc 1 97 19 view .LVU21
	add	r3, r3, r4
.LVL4:
	.loc 1 100 7 is_stmt 1 view .LVU22
	.loc 1 100 34 is_stmt 0 view .LVU23
	str	r1, [r0, #12]
	.loc 1 113 18 view .LVU24
	str	r3, [r0, #8]
.LVL5:
	.loc 1 114 13 view .LVU25
	sdiv	r2, r3, r2
	.loc 1 111 5 is_stmt 1 view .LVU26
	.loc 1 113 5 view .LVU27
	.loc 1 114 5 view .LVU28
.LVL6:
	.loc 1 118 3 view .LVU29
	.loc 1 119 1 is_stmt 0 view .LVU30
	ldr	r4, [sp], #4
.LCFI1:
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	mov	r0, r2
.LVL7:
	.loc 1 119 1 view .LVU31
	bx	lr
.LVL8:
.L4:
	.loc 1 102 10 is_stmt 1 view .LVU32
	.loc 1 102 13 is_stmt 0 view .LVU33
	beq	.L6
	.loc 1 114 13 view .LVU34
	ldr	r2, [r0, #20]
	.loc 1 113 18 view .LVU35
	str	r3, [r0, #8]
	.loc 1 114 13 view .LVU36
	sdiv	r2, r3, r2
	.loc 1 111 5 is_stmt 1 view .LVU37
	.loc 1 113 5 view .LVU38
	.loc 1 114 5 view .LVU39
.LVL9:
	.loc 1 118 3 view .LVU40
	.loc 1 119 1 is_stmt 0 view .LVU41
	mov	r0, r2
.LVL10:
	.loc 1 119 1 view .LVU42
	bx	lr
.LVL11:
.L6:
	.loc 1 105 7 is_stmt 1 view .LVU43
	.loc 1 105 28 is_stmt 0 view .LVU44
	ldr	r2, [r0, #4]
	.loc 1 105 19 view .LVU45
	ldr	r3, [r0, #20]
.LVL12:
	.loc 1 106 34 view .LVU46
	movs	r1, #0
	.loc 1 105 19 view .LVU47
	mul	r3, r2, r3
.LVL13:
	.loc 1 106 7 is_stmt 1 view .LVU48
	.loc 1 106 34 is_stmt 0 view .LVU49
	str	r1, [r0, #12]
	.loc 1 111 5 is_stmt 1 view .LVU50
	.loc 1 113 5 view .LVU51
	.loc 1 113 18 is_stmt 0 view .LVU52
	str	r3, [r0, #8]
	.loc 1 114 5 is_stmt 1 view .LVU53
.LVL14:
	.loc 1 118 3 view .LVU54
	.loc 1 119 1 is_stmt 0 view .LVU55
	mov	r0, r2
.LVL15:
	.loc 1 119 1 view .LVU56
	bx	lr
	.cfi_endproc
.LFE1436:
	.size	REMNG_Calc, .-REMNG_Calc
	.section	.text.REMNG_GetValue,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	REMNG_GetValue
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	REMNG_GetValue, %function
REMNG_GetValue:
.LVL16:
.LFB1438:
	.loc 1 217 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 221 3 view .LVU58
	.loc 1 221 24 is_stmt 0 view .LVU59
	ldr	r2, [r0, #8]
	ldr	r0, [r0, #20]
.LVL17:
	.loc 1 223 1 view .LVU60
	sdiv	r0, r2, r0
	bx	lr
	.cfi_endproc
.LFE1438:
	.size	REMNG_GetValue, .-REMNG_GetValue
	.section	.text.REMNG_RampCompleted,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	REMNG_RampCompleted
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	REMNG_RampCompleted, %function
REMNG_RampCompleted:
.LVL18:
.LFB1439:
	.loc 1 238 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 239 3 view .LVU62
	.loc 1 248 5 view .LVU63
	.loc 1 255 5 view .LVU64
	.loc 1 259 3 view .LVU65
	.loc 1 248 8 is_stmt 0 view .LVU66
	ldr	r0, [r0, #12]
.LVL19:
	.loc 1 261 1 view .LVU67
	clz	r0, r0
.LVL20:
	.loc 1 261 1 view .LVU68
	lsrs	r0, r0, #5
	bx	lr
	.cfi_endproc
.LFE1439:
	.size	REMNG_RampCompleted, .-REMNG_RampCompleted
	.section	.text.REMNG_StopRamp,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	REMNG_StopRamp
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	REMNG_StopRamp, %function
REMNG_StopRamp:
.LVL21:
.LFB1440:
	.loc 1 269 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 278 5 view .LVU70
	.loc 1 278 32 is_stmt 0 view .LVU71
	movs	r3, #0
	.loc 1 279 27 view .LVU72
	strd	r3, r3, [r0, #12]
	.loc 1 283 1 view .LVU73
	bx	lr
	.cfi_endproc
.LFE1440:
	.size	REMNG_StopRamp, .-REMNG_StopRamp
	.section	.text.getScalingFactor,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	getScalingFactor
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	getScalingFactor, %function
getScalingFactor:
.LVL22:
.LFB1441:
	.loc 1 293 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 294 3 view .LVU75
	.loc 1 295 3 view .LVU76
	.loc 1 296 3 view .LVU77
	.loc 1 298 3 view .LVU78
	.loc 1 300 9 is_stmt 0 view .LVU79
	cmp	r0, #0
	it	lt
	rsblt	r0, r0, #0
.LVL23:
	.loc 1 307 3 is_stmt 1 view .LVU80
	.loc 1 307 16 view .LVU81
	.loc 1 293 1 is_stmt 0 view .LVU82
	movs	r3, #1
.LBB2:
	.loc 1 309 14 view .LVU83
	mov	r1, #-2147483648
	b	.L18
.LVL24:
.L22:
	.loc 1 309 14 view .LVU84
.LBE2:
	.loc 1 307 3 discriminator 2 view .LVU85
	adds	r3, r3, #1
.LVL25:
	.loc 1 307 3 discriminator 2 view .LVU86
	cmp	r3, #32
	beq	.L21
.LVL26:
.L18:
.LBB3:
	.loc 1 309 5 is_stmt 1 view .LVU87
	.loc 1 310 5 view .LVU88
	.loc 1 317 5 view .LVU89
.LBE3:
	.loc 1 307 25 view .LVU90
	.loc 1 307 16 view .LVU91
.LBB4:
	.loc 1 309 14 is_stmt 0 view .LVU92
	lsr	r2, r1, r3
	.loc 1 310 8 view .LVU93
	cmp	r0, r2
	bcc	.L22
.LBE4:
	.loc 1 319 31 view .LVU94
	subs	r3, r3, #1
.LVL27:
	.loc 1 319 25 view .LVU95
	movs	r0, #1
.LVL28:
	.loc 1 319 25 view .LVU96
	lsls	r0, r0, r3
	.loc 1 319 3 is_stmt 1 view .LVU97
	.loc 1 320 1 is_stmt 0 view .LVU98
	bx	lr
.LVL29:
.L21:
	.loc 1 320 1 view .LVU99
	mov	r0, #-2147483648
.LVL30:
	.loc 1 320 1 view .LVU100
	bx	lr
	.cfi_endproc
.LFE1441:
	.size	getScalingFactor, .-getScalingFactor
	.section	.text.REMNG_ExecRamp,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	REMNG_ExecRamp
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	REMNG_ExecRamp, %function
REMNG_ExecRamp:
.LVL31:
.LFB1437:
	.loc 1 132 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 133 3 view .LVU102
	.loc 1 142 5 view .LVU103
	.loc 1 143 5 view .LVU104
	.loc 1 144 5 view .LVU105
	.loc 1 148 5 view .LVU106
	.loc 1 132 1 is_stmt 0 view .LVU107
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
.LCFI2:
	.cfi_def_cfa_offset 32
	.cfi_offset 4, -32
	.cfi_offset 5, -28
	.cfi_offset 6, -24
	.cfi_offset 7, -20
	.cfi_offset 8, -16
	.cfi_offset 9, -12
	.cfi_offset 10, -8
	.cfi_offset 14, -4
	.loc 1 132 1 view .LVU108
	mov	r5, r0
.LVL32:
	.loc 1 150 5 is_stmt 1 view .LVU109
	.loc 1 132 1 is_stmt 0 view .LVU110
	mov	r6, r1
	.loc 1 150 8 view .LVU111
	mov	r4, r2
	cbnz	r2, .L24
	.loc 1 152 7 is_stmt 1 view .LVU112
	.loc 1 152 32 is_stmt 0 view .LVU113
	mov	r0, r1
.LVL33:
	.loc 1 152 32 view .LVU114
	bl	getScalingFactor
.LVL34:
	.loc 1 153 34 view .LVU115
	mul	r6, r0, r6
.LVL35:
	.loc 1 152 30 view .LVU116
	str	r0, [r5, #20]
	.loc 1 153 7 is_stmt 1 view .LVU117
	.loc 1 154 34 is_stmt 0 view .LVU118
	strd	r6, r4, [r5, #8]
	.loc 1 155 7 is_stmt 1 view .LVU119
	.loc 1 155 29 is_stmt 0 view .LVU120
	str	r4, [r5, #16]
	.loc 1 208 3 is_stmt 1 view .LVU121
	.loc 1 209 1 is_stmt 0 view .LVU122
	movs	r0, #1
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.LVL36:
.L24:
	.loc 1 148 17 view .LVU123
	ldr	r3, [r0, #20]
	ldr	r7, [r0, #8]
	sdiv	r7, r7, r3
.LBB5:
	.loc 1 159 7 is_stmt 1 view .LVU124
	.loc 1 159 33 is_stmt 0 view .LVU125
	sub	r8, r1, r7
	mov	r0, r8
.LVL37:
	.loc 1 159 33 view .LVU126
	bl	getScalingFactor
.LVL38:
	.loc 1 159 33 view .LVU127
	mov	r10, r0
.LVL39:
	.loc 1 160 7 is_stmt 1 view .LVU128
	.loc 1 160 34 is_stmt 0 view .LVU129
	mov	r0, r7
.LVL40:
	.loc 1 160 34 view .LVU130
	bl	getScalingFactor
.LVL41:
	mov	r9, r0
.LVL42:
	.loc 1 161 7 is_stmt 1 view .LVU131
	.loc 1 161 34 is_stmt 0 view .LVU132
	mov	r0, r6
.LVL43:
	.loc 1 161 34 view .LVU133
	bl	getScalingFactor
.LVL44:
	.loc 1 194 11 view .LVU134
	ldr	r2, [r5]
	.loc 1 191 28 view .LVU135
	str	r6, [r5, #4]
	.loc 1 164 10 view .LVU136
	cmp	r10, r9
	.loc 1 194 11 view .LVU137
	mul	r4, r2, r4
.LVL45:
	.loc 1 195 11 view .LVU138
	ldr	r2, .L29
	.loc 1 161 34 view .LVU139
	mov	r3, r0
.LVL46:
	.loc 1 162 7 is_stmt 1 view .LVU140
	.loc 1 164 7 view .LVU141
	.loc 1 166 9 view .LVU142
	ite	cs
	movcs	r0, r9
.LVL47:
	.loc 1 166 9 is_stmt 0 view .LVU143
	movcc	r0, r10
	.loc 1 177 9 is_stmt 1 view .LVU144
	cmp	r0, r3
	.loc 1 195 11 is_stmt 0 view .LVU145
	umull	r2, r4, r2, r4
	it	cs
	movcs	r0, r3
.LVL48:
	.loc 1 187 7 is_stmt 1 view .LVU146
	.loc 1 195 11 is_stmt 0 view .LVU147
	lsrs	r4, r4, #6
	.loc 1 188 34 view .LVU148
	mul	r7, r0, r7
	.loc 1 197 33 view .LVU149
	adds	r4, r4, #1
	.loc 1 201 12 view .LVU150
	mul	r3, r0, r8
.LVL49:
	.loc 1 187 30 view .LVU151
	str	r0, [r5, #20]
	.loc 1 188 7 is_stmt 1 view .LVU152
	.loc 1 191 7 view .LVU153
	.loc 1 194 7 view .LVU154
	.loc 1 195 7 view .LVU155
	.loc 1 196 7 view .LVU156
	.loc 1 197 7 view .LVU157
	.loc 1 197 33 is_stmt 0 view .LVU158
	str	r4, [r5, #12]
	.loc 1 201 7 is_stmt 1 view .LVU159
.LVL50:
	.loc 1 202 7 view .LVU160
	.loc 1 203 7 view .LVU161
	.loc 1 188 20 is_stmt 0 view .LVU162
	str	r7, [r5, #8]
	.loc 1 202 12 view .LVU163
	sdiv	r4, r3, r4
.LVL51:
	.loc 1 202 12 view .LVU164
.LBE5:
	.loc 1 209 1 view .LVU165
	movs	r0, #1
.LVL52:
.LBB6:
	.loc 1 203 29 view .LVU166
	str	r4, [r5, #16]
.LBE6:
	.loc 1 208 3 is_stmt 1 view .LVU167
	.loc 1 209 1 is_stmt 0 view .LVU168
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.LVL53:
.L30:
	.loc 1 209 1 view .LVU169
	.align	2
.L29:
	.word	274877907
	.cfi_endproc
.LFE1437:
	.size	REMNG_ExecRamp, .-REMNG_ExecRamp
	.text
.Letext0:
	.file 2 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_ll_tim.h"
	.file 5 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_ll_usart.h"
	.file 6 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_ll_dma.h"
	.file 7 "MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Inc/ramp_ext_mngr.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x540
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0xc
	.4byte	.LASF50
	.4byte	.LASF51
	.4byte	.Ldebug_ranges0+0x38
	.4byte	0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF4
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
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x4d
	.byte	0x18
	.4byte	0x5d
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
	.byte	0x2c
	.byte	0x13
	.4byte	0x51
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
	.byte	0x18
	.byte	0x7
	.byte	0x2c
	.byte	0x9
	.4byte	0x235
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x7
	.byte	0x2e
	.byte	0xc
	.4byte	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x7
	.byte	0x2f
	.byte	0xc
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.ascii	"Ext\000"
	.byte	0x7
	.byte	0x30
	.byte	0xc
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x7
	.byte	0x31
	.byte	0xc
	.4byte	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x7
	.byte	0x32
	.byte	0xc
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x7
	.byte	0x34
	.byte	0xc
	.4byte	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x7
	.byte	0x35
	.byte	0x3
	.4byte	0x1d1
	.uleb128 0x5
	.4byte	0x235
	.uleb128 0xc
	.byte	0x1
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x124
	.byte	0x11
	.byte	0x1
	.4byte	0xb0
	.4byte	.LFB1441
	.4byte	.LFE1441
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x2cb
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x124
	.byte	0x2a
	.4byte	0xa4
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0xe
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x126
	.byte	0xc
	.4byte	0xb0
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0xf
	.ascii	"aux\000"
	.byte	0x1
	.2byte	0x127
	.byte	0xb
	.4byte	0xa4
	.uleb128 0x10
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x128
	.byte	0xb
	.4byte	0x93
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x11
	.4byte	.Ldebug_ranges0+0
	.uleb128 0xe
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x135
	.byte	0xe
	.4byte	0xb0
	.4byte	.LLST10
	.4byte	.LVUS10
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x10c
	.byte	0xd
	.byte	0x1
	.4byte	.LFB1440
	.4byte	.LFE1440
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x2f6
	.uleb128 0x13
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x10c
	.byte	0x32
	.4byte	0x2f6
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.4byte	0x235
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF33
	.byte	0x1
	.byte	0xed
	.byte	0xd
	.byte	0x1
	.4byte	0x343
	.4byte	.LFB1439
	.4byte	.LFE1439
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x343
	.uleb128 0x16
	.4byte	.LASF35
	.byte	0x1
	.byte	0xed
	.byte	0x3d
	.4byte	0x34a
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x17
	.4byte	.LASF36
	.byte	0x1
	.byte	0xef
	.byte	0x8
	.4byte	0x343
	.4byte	.LLST6
	.4byte	.LVUS6
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF37
	.uleb128 0x14
	.byte	0x4
	.4byte	0x241
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF38
	.byte	0x1
	.byte	0xd8
	.byte	0x10
	.byte	0x1
	.4byte	0xa4
	.4byte	.LFB1438
	.4byte	.LFE1438
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x383
	.uleb128 0x16
	.4byte	.LASF35
	.byte	0x1
	.byte	0xd8
	.byte	0x3b
	.4byte	0x34a
	.4byte	.LLST4
	.4byte	.LVUS4
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF39
	.byte	0x1
	.byte	0x83
	.byte	0xd
	.byte	0x1
	.4byte	0x343
	.4byte	.LFB1437
	.4byte	.LFE1437
	.4byte	.LLST11
	.byte	0x1
	.4byte	0x4c2
	.uleb128 0x16
	.4byte	.LASF35
	.byte	0x1
	.byte	0x83
	.byte	0x32
	.4byte	0x2f6
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x16
	.4byte	.LASF25
	.byte	0x1
	.byte	0x83
	.byte	0x43
	.4byte	0xa4
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x16
	.4byte	.LASF40
	.byte	0x1
	.byte	0x83
	.byte	0x59
	.4byte	0xb0
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x19
	.4byte	.LASF36
	.byte	0x1
	.byte	0x85
	.byte	0x8
	.4byte	0x343
	.byte	0x1
	.uleb128 0x1a
	.ascii	"aux\000"
	.byte	0x1
	.byte	0x8e
	.byte	0xe
	.4byte	0xb0
	.uleb128 0x17
	.4byte	.LASF41
	.byte	0x1
	.byte	0x8f
	.byte	0xd
	.4byte	0xa4
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0x17
	.4byte	.LASF42
	.byte	0x1
	.byte	0x90
	.byte	0xd
	.4byte	0xa4
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0x1b
	.4byte	.Ldebug_ranges0+0x20
	.4byte	0x4b1
	.uleb128 0x17
	.4byte	.LASF43
	.byte	0x1
	.byte	0x9f
	.byte	0x10
	.4byte	0xb0
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0x17
	.4byte	.LASF44
	.byte	0x1
	.byte	0xa0
	.byte	0x10
	.4byte	0xb0
	.4byte	.LLST18
	.4byte	.LVUS18
	.uleb128 0x17
	.4byte	.LASF45
	.byte	0x1
	.byte	0xa1
	.byte	0x10
	.4byte	0xb0
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0x17
	.4byte	.LASF46
	.byte	0x1
	.byte	0xa2
	.byte	0x10
	.4byte	0xb0
	.4byte	.LLST20
	.4byte	.LVUS20
	.uleb128 0x1c
	.4byte	.LVL38
	.4byte	0x246
	.4byte	0x48c
	.uleb128 0x1d
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL41
	.4byte	0x246
	.4byte	0x4a0
	.uleb128 0x1d
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL44
	.4byte	0x246
	.uleb128 0x1d
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL34
	.4byte	0x246
	.uleb128 0x1d
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF47
	.byte	0x1
	.byte	0x4e
	.byte	0x10
	.byte	0x1
	.4byte	0xa4
	.4byte	.LFB1436
	.4byte	.LFE1436
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x51e
	.uleb128 0x16
	.4byte	.LASF35
	.byte	0x1
	.byte	0x4e
	.byte	0x31
	.4byte	0x2f6
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x17
	.4byte	.LASF48
	.byte	0x1
	.byte	0x50
	.byte	0xb
	.4byte	0xa4
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x17
	.4byte	.LASF42
	.byte	0x1
	.byte	0x59
	.byte	0xd
	.4byte	0xa4
	.4byte	.LLST3
	.4byte	.LVUS3
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF53
	.byte	0x1
	.byte	0x2c
	.byte	0x6
	.byte	0x1
	.4byte	.LFB1435
	.4byte	.LFE1435
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x20
	.4byte	.LASF35
	.byte	0x1
	.byte	0x2c
	.byte	0x27
	.4byte	0x2f6
	.byte	0x1
	.byte	0x50
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x34
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
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x34
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
	.uleb128 0x2
	.uleb128 0x6
	.uleb128 0x2137
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
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
	.uleb128 0x13
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
	.uleb128 0x6
	.uleb128 0x2137
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x6
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LVUS7:
	.uleb128 0
	.uleb128 .LVU80
	.uleb128 .LVU80
	.uleb128 0
.LLST7:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL23
	.4byte	.LFE1441
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 .LVU80
	.uleb128 .LVU96
	.uleb128 .LVU96
	.uleb128 .LVU99
	.uleb128 .LVU99
	.uleb128 .LVU100
	.uleb128 .LVU100
	.uleb128 0
.LLST8:
	.4byte	.LVL23
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x12
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x1f
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x30
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL30
	.4byte	.LFE1441
	.2byte	0x12
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x1f
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x30
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 .LVU81
	.uleb128 .LVU84
	.uleb128 .LVU84
	.uleb128 .LVU86
	.uleb128 .LVU87
	.uleb128 .LVU91
	.uleb128 .LVU91
	.uleb128 .LVU95
.LLST9:
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 .LVU84
	.uleb128 .LVU86
	.uleb128 .LVU86
	.uleb128 .LVU87
	.uleb128 .LVU88
	.uleb128 .LVU95
	.uleb128 .LVU95
	.uleb128 .LVU99
	.uleb128 .LVU99
	.uleb128 0
.LLST10:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x8
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x1f
	.byte	0x73
	.sleb128 0
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x8
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x1f
	.byte	0x73
	.sleb128 -1
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x8
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x1f
	.byte	0x73
	.sleb128 0
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x8
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x1f
	.byte	0x73
	.sleb128 1
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LFE1441
	.2byte	0x8
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x1f
	.byte	0x73
	.sleb128 -1
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 0
	.uleb128 .LVU67
	.uleb128 .LVU67
	.uleb128 0
.LLST5:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL19
	.4byte	.LFE1439
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 .LVU63
	.uleb128 .LVU64
	.uleb128 .LVU64
	.uleb128 .LVU67
	.uleb128 .LVU67
	.uleb128 .LVU68
	.uleb128 .LVU68
	.uleb128 0
.LLST6:
	.4byte	.LVL18
	.4byte	.LVL18
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x6
	.byte	0x70
	.sleb128 12
	.byte	0x6
	.byte	0x30
	.byte	0x29
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x5
	.byte	0x70
	.sleb128 0
	.byte	0x30
	.byte	0x29
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LFE1439
	.2byte	0x9
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x23
	.uleb128 0xc
	.byte	0x6
	.byte	0x30
	.byte	0x29
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 0
	.uleb128 .LVU60
	.uleb128 .LVU60
	.uleb128 0
.LLST4:
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL17
	.4byte	.LFE1438
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LFB1437
	.4byte	.LCFI2
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI2
	.4byte	.LFE1437
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	0
	.4byte	0
.LVUS12:
	.uleb128 0
	.uleb128 .LVU114
	.uleb128 .LVU114
	.uleb128 .LVU123
	.uleb128 .LVU123
	.uleb128 .LVU126
	.uleb128 .LVU126
	.uleb128 .LVU169
	.uleb128 .LVU169
	.uleb128 0
.LLST12:
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL33
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL37
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL53
	.4byte	.LFE1437
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS13:
	.uleb128 0
	.uleb128 .LVU115
	.uleb128 .LVU115
	.uleb128 .LVU116
	.uleb128 .LVU116
	.uleb128 .LVU123
	.uleb128 .LVU123
	.uleb128 .LVU127
	.uleb128 .LVU127
	.uleb128 .LVU169
	.uleb128 .LVU169
	.uleb128 0
.LLST13:
	.4byte	.LVL31
	.4byte	.LVL34-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL34-1
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL38-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL38-1
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL53
	.4byte	.LFE1437
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x23
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LVUS14:
	.uleb128 0
	.uleb128 .LVU115
	.uleb128 .LVU115
	.uleb128 .LVU123
	.uleb128 .LVU123
	.uleb128 .LVU127
	.uleb128 .LVU127
	.uleb128 .LVU138
	.uleb128 .LVU138
	.uleb128 0
.LLST14:
	.4byte	.LVL31
	.4byte	.LVL34-1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL34-1
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL36
	.4byte	.LVL38-1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL38-1
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL45
	.4byte	.LFE1437
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS15:
	.uleb128 .LVU160
	.uleb128 .LVU161
	.uleb128 .LVU161
	.uleb128 .LVU164
	.uleb128 .LVU164
	.uleb128 .LVU169
	.uleb128 .LVU169
	.uleb128 0
.LLST15:
	.4byte	.LVL50
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1b
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL53
	.4byte	.LFE1437
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x23
	.uleb128 0x10
	.4byte	0
	.4byte	0
.LVUS16:
	.uleb128 .LVU109
	.uleb128 .LVU114
	.uleb128 .LVU114
	.uleb128 .LVU115
	.uleb128 .LVU123
	.uleb128 .LVU126
	.uleb128 .LVU126
	.uleb128 .LVU127
.LLST16:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x8
	.byte	0x70
	.sleb128 8
	.byte	0x6
	.byte	0x70
	.sleb128 20
	.byte	0x6
	.byte	0x1b
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL34-1
	.2byte	0x8
	.byte	0x75
	.sleb128 8
	.byte	0x6
	.byte	0x75
	.sleb128 20
	.byte	0x6
	.byte	0x1b
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x8
	.byte	0x70
	.sleb128 8
	.byte	0x6
	.byte	0x70
	.sleb128 20
	.byte	0x6
	.byte	0x1b
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL38-1
	.2byte	0x8
	.byte	0x75
	.sleb128 8
	.byte	0x6
	.byte	0x75
	.sleb128 20
	.byte	0x6
	.byte	0x1b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS17:
	.uleb128 .LVU128
	.uleb128 .LVU130
	.uleb128 .LVU130
	.uleb128 .LVU169
.LLST17:
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL40
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LVUS18:
	.uleb128 .LVU131
	.uleb128 .LVU133
	.uleb128 .LVU133
	.uleb128 .LVU169
.LLST18:
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL43
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LVUS19:
	.uleb128 .LVU140
	.uleb128 .LVU143
	.uleb128 .LVU143
	.uleb128 .LVU151
.LLST19:
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL47
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS20:
	.uleb128 .LVU146
	.uleb128 .LVU166
	.uleb128 .LVU166
	.uleb128 .LVU169
	.uleb128 .LVU169
	.uleb128 0
.LLST20:
	.4byte	.LVL48
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x2
	.byte	0x75
	.sleb128 20
	.4byte	.LVL53
	.4byte	.LFE1437
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x23
	.uleb128 0x14
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LFB1436
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
	.4byte	.LFE1436
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU31
	.uleb128 .LVU31
	.uleb128 .LVU32
	.uleb128 .LVU32
	.uleb128 .LVU42
	.uleb128 .LVU42
	.uleb128 .LVU43
	.uleb128 .LVU43
	.uleb128 .LVU56
	.uleb128 .LVU56
	.uleb128 0
.LLST1:
	.4byte	.LVL1
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
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL15
	.4byte	.LFE1436
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 .LVU40
	.uleb128 .LVU42
	.uleb128 .LVU42
	.uleb128 .LVU43
	.uleb128 .LVU54
	.uleb128 .LVU56
	.uleb128 .LVU56
	.uleb128 0
.LLST2:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x7
	.byte	0x73
	.sleb128 0
	.byte	0x70
	.sleb128 20
	.byte	0x6
	.byte	0x1b
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0xa
	.byte	0x73
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x23
	.uleb128 0x14
	.byte	0x6
	.byte	0x1b
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x7
	.byte	0x73
	.sleb128 0
	.byte	0x70
	.sleb128 20
	.byte	0x6
	.byte	0x1b
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LFE1436
	.2byte	0xa
	.byte	0x73
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x23
	.uleb128 0x14
	.byte	0x6
	.byte	0x1b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 .LVU15
	.uleb128 .LVU18
	.uleb128 .LVU18
	.uleb128 .LVU22
	.uleb128 .LVU22
	.uleb128 .LVU25
	.uleb128 .LVU32
	.uleb128 .LVU46
	.uleb128 .LVU46
	.uleb128 .LVU48
	.uleb128 .LVU48
	.uleb128 0
.LLST3:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x7
	.byte	0x73
	.sleb128 0
	.byte	0x70
	.sleb128 16
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x8
	.byte	0x70
	.sleb128 8
	.byte	0x6
	.byte	0x70
	.sleb128 16
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LFE1436
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x4c
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
	.4byte	.LFB1438
	.4byte	.LFE1438-.LFB1438
	.4byte	.LFB1439
	.4byte	.LFE1439-.LFB1439
	.4byte	.LFB1440
	.4byte	.LFE1440-.LFB1440
	.4byte	.LFB1441
	.4byte	.LFE1441-.LFB1441
	.4byte	.LFB1437
	.4byte	.LFE1437-.LFB1437
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
	.4byte	.LFB1435
	.4byte	.LFE1435
	.4byte	.LFB1436
	.4byte	.LFE1436
	.4byte	.LFB1438
	.4byte	.LFE1438
	.4byte	.LFB1439
	.4byte	.LFE1439
	.4byte	.LFB1440
	.4byte	.LFE1440
	.4byte	.LFB1441
	.4byte	.LFE1441
	.4byte	.LFB1437
	.4byte	.LFE1437
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF4:
	.ascii	"__uint8_t\000"
.LASF18:
	.ascii	"SHIFT_TAB_ICxx\000"
.LASF30:
	.ascii	"TargetAbs\000"
.LASF5:
	.ascii	"__int32_t\000"
.LASF26:
	.ascii	"RampRemainingStep\000"
.LASF27:
	.ascii	"IncDecAmount\000"
.LASF20:
	.ascii	"SHIFT_TAB_OISx\000"
.LASF28:
	.ascii	"ScalingFactor\000"
.LASF36:
	.ascii	"retVal\000"
.LASF15:
	.ascii	"long double\000"
.LASF23:
	.ascii	"float\000"
.LASF10:
	.ascii	"long long unsigned int\000"
.LASF48:
	.ascii	"ret_val\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF38:
	.ascii	"REMNG_GetValue\000"
.LASF17:
	.ascii	"SHIFT_TAB_OCxx\000"
.LASF8:
	.ascii	"long unsigned int\000"
.LASF35:
	.ascii	"pHandle\000"
.LASF31:
	.ascii	"limit\000"
.LASF16:
	.ascii	"OFFSET_TAB_CCMRx\000"
.LASF32:
	.ascii	"getScalingFactor\000"
.LASF44:
	.ascii	"wScalingFactor2\000"
.LASF45:
	.ascii	"wScalingFactor3\000"
.LASF7:
	.ascii	"__uint32_t\000"
.LASF24:
	.ascii	"FrequencyHz\000"
.LASF47:
	.ascii	"REMNG_Calc\000"
.LASF34:
	.ascii	"Target\000"
.LASF43:
	.ascii	"wScalingFactor\000"
.LASF50:
	.ascii	"MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Src/"
	.ascii	"ramp_ext_mngr.c\000"
.LASF19:
	.ascii	"SHIFT_TAB_CCxP\000"
.LASF11:
	.ascii	"unsigned int\000"
.LASF39:
	.ascii	"REMNG_ExecRamp\000"
.LASF49:
	.ascii	"GNU C17 10.2.1 20201103 (release) -mcpu=cortex-m4 -"
	.ascii	"mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=hard -march=ar"
	.ascii	"mv7e-m+fp -g -gdwarf-2 -O3 -fdata-sections -ffuncti"
	.ascii	"on-sections\000"
.LASF12:
	.ascii	"uint8_t\000"
.LASF25:
	.ascii	"TargetFinal\000"
.LASF22:
	.ascii	"CHANNEL_OFFSET_TAB\000"
.LASF29:
	.ascii	"RampExtMngr_Handle_t\000"
.LASF21:
	.ascii	"USART_PRESCALER_TAB\000"
.LASF13:
	.ascii	"int32_t\000"
.LASF9:
	.ascii	"long long int\000"
.LASF33:
	.ascii	"REMNG_RampCompleted\000"
.LASF40:
	.ascii	"Durationms\000"
.LASF51:
	.ascii	"/home/joel/share/EVSPIN32G4_Shinano\000"
.LASF2:
	.ascii	"short int\000"
.LASF53:
	.ascii	"REMNG_Init\000"
.LASF14:
	.ascii	"uint32_t\000"
.LASF6:
	.ascii	"long int\000"
.LASF42:
	.ascii	"current_ref\000"
.LASF41:
	.ascii	"aux1\000"
.LASF46:
	.ascii	"wScalingFactorMin\000"
.LASF0:
	.ascii	"signed char\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF37:
	.ascii	"_Bool\000"
.LASF52:
	.ascii	"REMNG_StopRamp\000"
	.ident	"GCC: (GNU Arm Embedded Toolchain 10-2020-q4-major) 10.2.1 20201103 (release)"
