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
	.file	"speed_torq_ctrl.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.STC_Init,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	STC_Init
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	STC_Init, %function
STC_Init:
.LVL0:
.LFB1445:
	.file 1 "MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Src/speed_torq_ctrl.c"
	.loc 1 66 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 75 5 view .LVU1
	.loc 1 78 33 is_stmt 0 view .LVU2
	ldrsh	ip, [r0, #44]
	.loc 1 75 22 view .LVU3
	str	r1, [r0, #16]
	.loc 1 76 5 is_stmt 1 view .LVU4
	.loc 1 79 27 is_stmt 0 view .LVU5
	ldrsh	r1, [r0, #46]
.LVL1:
	.loc 1 76 18 view .LVU6
	str	r2, [r0, #20]
	.loc 1 77 5 is_stmt 1 view .LVU7
	.loc 1 78 5 view .LVU8
	.loc 1 66 1 is_stmt 0 view .LVU9
	push	{r4}
.LCFI0:
	.cfi_def_cfa_offset 4
	.cfi_offset 4, -4
	.loc 1 77 19 view .LVU10
	ldrb	r4, [r0, #42]	@ zero_extendqisi2
	strb	r4, [r0]
	.loc 1 80 26 view .LVU11
	movs	r3, #0
	.loc 1 78 75 view .LVU12
	lsl	r4, ip, #16
	.loc 1 79 63 view .LVU13
	lsls	r1, r1, #16
	.loc 1 79 24 view .LVU14
	strd	r4, r1, [r0, #4]
	.loc 1 80 5 is_stmt 1 view .LVU15
	.loc 1 80 26 is_stmt 0 view .LVU16
	strh	r3, [r0, #2]	@ movhi
	.loc 1 81 5 is_stmt 1 view .LVU17
	.loc 1 86 1 is_stmt 0 view .LVU18
	ldr	r4, [sp], #4
.LCFI1:
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 81 32 view .LVU19
	str	r3, [r0, #12]
	.loc 1 82 5 is_stmt 1 view .LVU20
	.loc 1 82 27 is_stmt 0 view .LVU21
	str	r3, [r0, #24]
	.loc 1 86 1 view .LVU22
	bx	lr
	.cfi_endproc
.LFE1445:
	.size	STC_Init, .-STC_Init
	.section	.text.STC_SetSpeedSensor,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	STC_SetSpeedSensor
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	STC_SetSpeedSensor, %function
STC_SetSpeedSensor:
.LVL2:
.LFB1446:
	.loc 1 97 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 106 5 view .LVU24
	.loc 1 106 18 is_stmt 0 view .LVU25
	str	r1, [r0, #20]
	.loc 1 110 1 view .LVU26
	bx	lr
	.cfi_endproc
.LFE1446:
	.size	STC_SetSpeedSensor, .-STC_SetSpeedSensor
	.section	.text.STC_Clear,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	STC_Clear
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	STC_Clear, %function
STC_Clear:
.LVL3:
.LFB1447:
	.loc 1 120 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 129 5 view .LVU28
	.loc 1 129 8 is_stmt 0 view .LVU29
	ldrb	r3, [r0]	@ zero_extendqisi2
	cmp	r3, #3
	beq	.L7
	.loc 1 140 1 view .LVU30
	bx	lr
.L7:
	.loc 1 131 7 is_stmt 1 view .LVU31
	ldr	r0, [r0, #16]
.LVL4:
	.loc 1 131 7 is_stmt 0 view .LVU32
	movs	r1, #0
	b	PID_SetIntegralTerm
.LVL5:
	.cfi_endproc
.LFE1447:
	.size	STC_Clear, .-STC_Clear
	.section	.text.STC_GetMecSpeedRefUnit,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	STC_GetMecSpeedRefUnit
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	STC_GetMecSpeedRefUnit, %function
STC_GetMecSpeedRefUnit:
.LVL6:
.LFB1448:
	.loc 1 153 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 159 3 view .LVU34
	.loc 1 168 1 is_stmt 0 view .LVU35
	ldrsh	r0, [r0, #6]
.LVL7:
	.loc 1 168 1 view .LVU36
	bx	lr
	.cfi_endproc
.LFE1448:
	.size	STC_GetMecSpeedRefUnit, .-STC_GetMecSpeedRefUnit
	.section	.text.STC_SetControlMode,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	STC_SetControlMode
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	STC_SetControlMode, %function
STC_SetControlMode:
.LVL8:
.LFB1450:
	.loc 1 223 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 232 5 view .LVU38
	.loc 1 233 32 is_stmt 0 view .LVU39
	movs	r3, #0
	.loc 1 232 19 view .LVU40
	strb	r1, [r0]
	.loc 1 233 5 is_stmt 1 view .LVU41
	.loc 1 233 32 is_stmt 0 view .LVU42
	str	r3, [r0, #12]
	.loc 1 237 1 view .LVU43
	bx	lr
	.cfi_endproc
.LFE1450:
	.size	STC_SetControlMode, .-STC_SetControlMode
	.section	.text.STC_ExecRamp,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	STC_ExecRamp
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	STC_ExecRamp, %function
STC_ExecRamp:
.LVL9:
.LFB1451:
	.loc 1 270 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 271 3 view .LVU45
	.loc 1 280 5 view .LVU46
	.loc 1 281 5 view .LVU47
	.loc 1 282 5 view .LVU48
	.loc 1 285 5 view .LVU49
	.loc 1 270 1 is_stmt 0 view .LVU50
	push	{r4}
.LCFI2:
	.cfi_def_cfa_offset 4
	.cfi_offset 4, -4
	.loc 1 285 35 view .LVU51
	ldrb	r3, [r0]	@ zero_extendqisi2
	.loc 1 285 8 view .LVU52
	cmp	r3, #4
	beq	.L30
	.loc 1 311 7 is_stmt 1 view .LVU53
.LVL10:
	.loc 1 317 7 view .LVU54
	.loc 1 317 35 is_stmt 0 view .LVU55
	ldrh	ip, [r0, #30]
	.loc 1 317 10 view .LVU56
	cmp	r1, ip
	ble	.L31
.LVL11:
.L23:
	.loc 1 299 22 view .LVU57
	movs	r0, #0
.LVL12:
	.loc 1 376 3 is_stmt 1 view .LVU58
	.loc 1 377 1 is_stmt 0 view .LVU59
	ldr	r4, [sp], #4
.LCFI3:
	.cfi_remember_state
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	bx	lr
.LVL13:
.L31:
.LCFI4:
	.cfi_restore_state
	.loc 1 321 12 is_stmt 1 view .LVU60
	.loc 1 321 15 is_stmt 0 view .LVU61
	ldrsh	r4, [r0, #36]
	cmp	r4, r1
	bgt	.L23
	.loc 1 325 12 is_stmt 1 view .LVU62
	.loc 1 325 40 is_stmt 0 view .LVU63
	ldrh	r4, [r0, #32]
	.loc 1 325 15 view .LVU64
	cmp	r1, r4
	bge	.L14
	.loc 1 327 9 is_stmt 1 view .LVU65
	.loc 1 327 12 is_stmt 0 view .LVU66
	ldrsh	r4, [r0, #34]
	cmp	r4, r1
	blt	.L23
.L14:
	.loc 1 311 44 view .LVU67
	ldr	r4, [r0, #4]
.LVL14:
	.loc 1 342 7 is_stmt 1 view .LVU68
	.loc 1 342 10 is_stmt 0 view .LVU69
	cbnz	r2, .L15
	.loc 1 344 9 is_stmt 1 view .LVU70
	.loc 1 344 12 is_stmt 0 view .LVU71
	cmp	r3, #3
	bne	.L16
	.loc 1 346 11 is_stmt 1 view .LVU72
	.loc 1 346 62 is_stmt 0 view .LVU73
	lsls	r1, r1, #16
.LVL15:
	.loc 1 346 36 view .LVU74
	str	r1, [r0, #4]
	b	.L17
.LVL16:
.L30:
	.loc 1 287 7 is_stmt 1 view .LVU75
.LBB4:
.LBI4:
	.loc 1 183 23 view .LVU76
.LBB5:
	.loc 1 190 3 view .LVU77
	.loc 1 190 3 is_stmt 0 view .LVU78
.LBE5:
.LBE4:
	.loc 1 289 7 is_stmt 1 view .LVU79
	.loc 1 289 35 is_stmt 0 view .LVU80
	ldrh	r3, [r0, #38]
	.loc 1 289 10 view .LVU81
	cmp	r1, r3
	bgt	.L23
	.loc 1 297 10 view .LVU82
	ldrsh	r4, [r0, #40]
.LBB8:
.LBB6:
	.loc 1 190 28 view .LVU83
	ldr	r3, [r0, #8]
	.loc 1 190 28 view .LVU84
.LBE6:
.LBE8:
	.loc 1 296 7 is_stmt 1 view .LVU85
	.loc 1 297 7 view .LVU86
	.loc 1 297 10 is_stmt 0 view .LVU87
	cmp	r4, r1
	bgt	.L23
.LVL17:
	.loc 1 342 7 is_stmt 1 view .LVU88
	.loc 1 342 10 is_stmt 0 view .LVU89
	cbnz	r2, .L32
.L16:
	.loc 1 350 11 is_stmt 1 view .LVU90
	.loc 1 350 56 is_stmt 0 view .LVU91
	lsls	r1, r1, #16
.LVL18:
	.loc 1 350 30 view .LVU92
	str	r1, [r0, #8]
.L17:
	.loc 1 352 9 is_stmt 1 view .LVU93
	.loc 1 352 36 is_stmt 0 view .LVU94
	movs	r3, #0
	str	r3, [r0, #12]
	.loc 1 353 9 is_stmt 1 view .LVU95
	.loc 1 353 31 is_stmt 0 view .LVU96
	str	r3, [r0, #24]
	.loc 1 377 1 view .LVU97
	ldr	r4, [sp], #4
.LCFI5:
	.cfi_remember_state
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	movs	r0, #1
.LVL19:
	.loc 1 377 1 view .LVU98
	bx	lr
.LVL20:
.L15:
.LCFI6:
	.cfi_restore_state
	.loc 1 311 25 view .LVU99
	asrs	r3, r4, #16
.L18:
	.loc 1 358 9 is_stmt 1 view .LVU100
	.loc 1 361 43 is_stmt 0 view .LVU101
	ldrh	r4, [r0, #28]
	.loc 1 358 30 view .LVU102
	strh	r1, [r0, #2]	@ movhi
	.loc 1 361 14 view .LVU103
	mul	r2, r4, r2
.LVL21:
	.loc 1 362 14 view .LVU104
	ldr	r4, .L33
	umull	r4, r2, r4, r2
	lsrs	r2, r2, #6
	.loc 1 364 35 view .LVU105
	adds	r2, r2, #1
	.loc 1 368 42 view .LVU106
	subs	r3, r1, r3
	.loc 1 368 15 view .LVU107
	lsls	r3, r3, #16
	.loc 1 361 9 is_stmt 1 view .LVU108
.LVL22:
	.loc 1 362 9 view .LVU109
	.loc 1 363 9 view .LVU110
	.loc 1 364 9 view .LVU111
	.loc 1 364 35 is_stmt 0 view .LVU112
	str	r2, [r0, #12]
	.loc 1 369 15 view .LVU113
	sdiv	r3, r3, r2
	.loc 1 368 9 is_stmt 1 view .LVU114
.LVL23:
	.loc 1 369 9 view .LVU115
	.loc 1 370 9 view .LVU116
	.loc 1 377 1 is_stmt 0 view .LVU117
	ldr	r4, [sp], #4
.LCFI7:
	.cfi_remember_state
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 370 31 view .LVU118
	str	r3, [r0, #24]
	movs	r0, #1
.LVL24:
	.loc 1 377 1 view .LVU119
	bx	lr
.LVL25:
.L32:
.LCFI8:
	.cfi_restore_state
.LBB9:
.LBB7:
	.loc 1 190 11 view .LVU120
	asrs	r3, r3, #16
	b	.L18
.L34:
	.align	2
.L33:
	.word	274877907
.LBE7:
.LBE9:
	.cfi_endproc
.LFE1451:
	.size	STC_ExecRamp, .-STC_ExecRamp
	.section	.text.STC_CalcTorqueReference,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	STC_CalcTorqueReference
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	STC_CalcTorqueReference, %function
STC_CalcTorqueReference:
.LVL26:
.LFB1452:
	.loc 1 393 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 394 3 view .LVU122
	.loc 1 403 5 view .LVU123
	.loc 1 404 5 view .LVU124
	.loc 1 405 5 view .LVU125
	.loc 1 406 5 view .LVU126
	.loc 1 408 5 view .LVU127
	.loc 1 393 1 is_stmt 0 view .LVU128
	push	{r3, r4, r5, lr}
.LCFI9:
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	.loc 1 410 25 view .LVU129
	ldrd	r5, r1, [r0, #4]
	.loc 1 408 35 view .LVU130
	ldrb	r2, [r0]	@ zero_extendqisi2
	.loc 1 419 16 view .LVU131
	ldr	r3, [r0, #12]
	.loc 1 410 25 view .LVU132
	cmp	r2, #4
	it	eq
	moveq	r5, r1
.LVL27:
	.loc 1 419 5 is_stmt 1 view .LVU133
	.loc 1 419 8 is_stmt 0 view .LVU134
	cmp	r3, #1
	.loc 1 393 1 view .LVU135
	mov	r4, r0
	.loc 1 419 8 view .LVU136
	bls	.L37
	.loc 1 422 7 is_stmt 1 view .LVU137
	.loc 1 422 25 is_stmt 0 view .LVU138
	ldr	r1, [r0, #24]
	.loc 1 425 33 view .LVU139
	subs	r3, r3, #1
	.loc 1 422 25 view .LVU140
	add	r5, r5, r1
.LVL28:
	.loc 1 425 7 is_stmt 1 view .LVU141
	.loc 1 425 33 is_stmt 0 view .LVU142
	str	r3, [r0, #12]
.L38:
	.loc 1 436 5 is_stmt 1 view .LVU143
	.loc 1 438 5 view .LVU144
	.loc 1 438 8 is_stmt 0 view .LVU145
	cmp	r2, #3
	beq	.L42
.L39:
	.loc 1 458 7 is_stmt 1 view .LVU146
	.loc 1 458 26 is_stmt 0 view .LVU147
	str	r5, [r4, #8]
	.loc 1 461 7 is_stmt 1 view .LVU148
	.loc 1 461 24 is_stmt 0 view .LVU149
	asrs	r0, r5, #16
.LVL29:
	.loc 1 469 3 is_stmt 1 view .LVU150
	.loc 1 470 1 is_stmt 0 view .LVU151
	pop	{r3, r4, r5, pc}
.LVL30:
.L37:
	.loc 1 427 10 is_stmt 1 view .LVU152
	.loc 1 427 13 is_stmt 0 view .LVU153
	bne	.L38
	.loc 1 430 7 is_stmt 1 view .LVU154
	.loc 1 430 28 is_stmt 0 view .LVU155
	ldrsh	r5, [r0, #2]
.LVL31:
	.loc 1 431 34 view .LVU156
	movs	r3, #0
	.loc 1 438 8 view .LVU157
	cmp	r2, #3
	.loc 1 430 25 view .LVU158
	lsl	r5, r5, #16
.LVL32:
	.loc 1 431 7 is_stmt 1 view .LVU159
	.loc 1 431 34 is_stmt 0 view .LVU160
	str	r3, [r0, #12]
	.loc 1 436 5 is_stmt 1 view .LVU161
	.loc 1 438 5 view .LVU162
	.loc 1 438 8 is_stmt 0 view .LVU163
	bne	.L39
.L42:
	.loc 1 445 7 is_stmt 1 view .LVU164
.LVL33:
	.loc 1 449 7 view .LVU165
	.loc 1 449 24 is_stmt 0 view .LVU166
	ldr	r0, [r4, #20]
.LVL34:
	.loc 1 449 24 view .LVU167
	bl	SPD_GetAvrgMecSpeedUnit
.LVL35:
	.loc 1 450 7 is_stmt 1 view .LVU168
	.loc 1 451 7 view .LVU169
	.loc 1 450 29 is_stmt 0 view .LVU170
	rsb	r1, r0, r5, asr #16
	.loc 1 451 26 view .LVU171
	sxth	r1, r1
	ldr	r0, [r4, #16]
.LVL36:
	.loc 1 451 26 view .LVU172
	bl	PI_Controller
.LVL37:
	.loc 1 453 7 is_stmt 1 view .LVU173
	.loc 1 454 56 is_stmt 0 view .LVU174
	lsls	r3, r0, #16
	.loc 1 454 26 view .LVU175
	strd	r5, r3, [r4, #4]
	.loc 1 469 3 is_stmt 1 view .LVU176
	.loc 1 470 1 is_stmt 0 view .LVU177
	pop	{r3, r4, r5, pc}
	.loc 1 470 1 view .LVU178
	.cfi_endproc
.LFE1452:
	.size	STC_CalcTorqueReference, .-STC_CalcTorqueReference
	.section	.text.STC_GetMecSpeedRefUnitDefault,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	STC_GetMecSpeedRefUnitDefault
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	STC_GetMecSpeedRefUnitDefault, %function
STC_GetMecSpeedRefUnitDefault:
.LVL38:
.LFB1453:
	.loc 1 483 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 487 3 view .LVU180
	.loc 1 489 1 is_stmt 0 view .LVU181
	ldrsh	r0, [r0, #44]
.LVL39:
	.loc 1 489 1 view .LVU182
	bx	lr
	.cfi_endproc
.LFE1453:
	.size	STC_GetMecSpeedRefUnitDefault, .-STC_GetMecSpeedRefUnitDefault
	.section	.text.STC_GetMaxAppPositiveMecSpeedUnit,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	STC_GetMaxAppPositiveMecSpeedUnit
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	STC_GetMaxAppPositiveMecSpeedUnit, %function
STC_GetMaxAppPositiveMecSpeedUnit:
.LVL40:
.LFB1454:
	.loc 1 500 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 504 3 view .LVU184
	.loc 1 506 1 is_stmt 0 view .LVU185
	ldrh	r0, [r0, #30]
.LVL41:
	.loc 1 506 1 view .LVU186
	bx	lr
	.cfi_endproc
.LFE1454:
	.size	STC_GetMaxAppPositiveMecSpeedUnit, .-STC_GetMaxAppPositiveMecSpeedUnit
	.section	.text.STC_GetMinAppNegativeMecSpeedUnit,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	STC_GetMinAppNegativeMecSpeedUnit
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	STC_GetMinAppNegativeMecSpeedUnit, %function
STC_GetMinAppNegativeMecSpeedUnit:
.LVL42:
.LFB1455:
	.loc 1 517 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 521 3 view .LVU188
	.loc 1 523 1 is_stmt 0 view .LVU189
	ldrsh	r0, [r0, #36]
.LVL43:
	.loc 1 523 1 view .LVU190
	bx	lr
	.cfi_endproc
.LFE1455:
	.size	STC_GetMinAppNegativeMecSpeedUnit, .-STC_GetMinAppNegativeMecSpeedUnit
	.section	.text.STC_StopSpeedRamp,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	STC_StopSpeedRamp
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	STC_StopSpeedRamp, %function
STC_StopSpeedRamp:
.LVL44:
.LFB1456:
	.loc 1 533 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 534 3 view .LVU192
	.loc 1 543 5 view .LVU193
	.loc 1 543 8 is_stmt 0 view .LVU194
	ldrb	r3, [r0]	@ zero_extendqisi2
	cmp	r3, #3
	.loc 1 545 7 is_stmt 1 view .LVU195
	.loc 1 545 34 is_stmt 0 view .LVU196
	ittte	eq
	moveq	r3, #0
	streq	r3, [r0, #12]
	.loc 1 546 7 is_stmt 1 view .LVU197
.LVL45:
	.loc 1 546 14 is_stmt 0 view .LVU198
	moveq	r0, #1
.LVL46:
	.loc 1 534 8 view .LVU199
	movne	r0, #0
.LVL47:
	.loc 1 551 3 is_stmt 1 view .LVU200
	.loc 1 552 1 is_stmt 0 view .LVU201
	bx	lr
	.cfi_endproc
.LFE1456:
	.size	STC_StopSpeedRamp, .-STC_StopSpeedRamp
	.section	.text.STC_GetDefaultIqdref,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	STC_GetDefaultIqdref
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	STC_GetDefaultIqdref, %function
STC_GetDefaultIqdref:
.LVL48:
.LFB1457:
	.loc 1 562 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 563 3 view .LVU203
	.loc 1 573 5 view .LVU204
	.loc 1 574 5 view .LVU205
	.loc 1 578 3 view .LVU206
	.loc 1 573 30 is_stmt 0 view .LVU207
	ldr	r3, [r0, #46]	@ unaligned
	.loc 1 578 10 view .LVU208
	movs	r2, #0
	uxth	r1, r3
	bfi	r2, r1, #0, #16
	lsrs	r3, r3, #16
	bfi	r2, r3, #16, #16
	.loc 1 562 1 view .LVU209
	sub	sp, sp, #8
.LCFI10:
	.cfi_def_cfa_offset 8
	.loc 1 579 1 view .LVU210
	mov	r0, r2
.LVL49:
	.loc 1 579 1 view .LVU211
	add	sp, sp, #8
.LCFI11:
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE1457:
	.size	STC_GetDefaultIqdref, .-STC_GetDefaultIqdref
	.section	.text.STC_ForceSpeedReferenceToCurrentSpeed,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	STC_ForceSpeedReferenceToCurrentSpeed
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	STC_ForceSpeedReferenceToCurrentSpeed, %function
STC_ForceSpeedReferenceToCurrentSpeed:
.LVL50:
.LFB1458:
	.loc 1 591 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 600 5 view .LVU213
	.loc 1 591 1 is_stmt 0 view .LVU214
	push	{r4, lr}
.LCFI12:
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 591 1 view .LVU215
	mov	r4, r0
	.loc 1 600 42 view .LVU216
	ldr	r0, [r0, #20]
.LVL51:
	.loc 1 600 42 view .LVU217
	bl	SPD_GetAvrgMecSpeedUnit
.LVL52:
	.loc 1 600 81 view .LVU218
	lsls	r0, r0, #16
	.loc 1 600 30 view .LVU219
	str	r0, [r4, #4]
	.loc 1 604 1 view .LVU220
	pop	{r4, pc}
	.loc 1 604 1 view .LVU221
	.cfi_endproc
.LFE1458:
	.size	STC_ForceSpeedReferenceToCurrentSpeed, .-STC_ForceSpeedReferenceToCurrentSpeed
	.text
.Letext0:
	.file 2 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_ll_tim.h"
	.file 5 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_ll_usart.h"
	.file 6 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_ll_dma.h"
	.file 7 "Inc/mc_type.h"
	.file 8 "MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Inc/pid_regulator.h"
	.file 9 "MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Inc/speed_pos_fdbk.h"
	.file 10 "MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Inc/speed_torq_ctrl.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xa4e
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF127
	.byte	0xc
	.4byte	.LASF128
	.4byte	.LASF129
	.4byte	.Ldebug_ranges0+0x20
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
	.uleb128 0x5
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF19
	.uleb128 0x6
	.4byte	0xb7
	.4byte	0x108
	.uleb128 0x7
	.4byte	0xa4
	.byte	0x9
	.byte	0
	.uleb128 0x5
	.4byte	0xf8
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x4
	.byte	0x2d
	.byte	0x16
	.4byte	0x108
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
	.4byte	.LASF21
	.byte	0x4
	.byte	0x3c
	.byte	0x16
	.4byte	0x108
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
	.4byte	.LASF22
	.byte	0x4
	.byte	0x4a
	.byte	0x16
	.4byte	0x108
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
	.4byte	.LASF23
	.byte	0x4
	.byte	0x58
	.byte	0x16
	.4byte	0x108
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
	.4byte	.LASF24
	.byte	0x4
	.byte	0x66
	.byte	0x16
	.4byte	0x108
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
	.4byte	0xec
	.4byte	0x190
	.uleb128 0x7
	.4byte	0xa4
	.byte	0xb
	.byte	0
	.uleb128 0x5
	.4byte	0x180
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x5
	.byte	0x2e
	.byte	0x17
	.4byte	0x190
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
	.4byte	0xb7
	.4byte	0x1e2
	.uleb128 0x7
	.4byte	0xa4
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.4byte	0x1d2
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x6
	.byte	0x2f
	.byte	0x16
	.4byte	0x1e2
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
	.4byte	.LASF27
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.byte	0x7e
	.byte	0x9
	.4byte	0x225
	.uleb128 0xa
	.ascii	"q\000"
	.byte	0x7
	.byte	0x80
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.ascii	"d\000"
	.byte	0x7
	.byte	0x81
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x7
	.byte	0x82
	.byte	0x3
	.4byte	0x201
	.uleb128 0xb
	.byte	0x7
	.byte	0x1
	.4byte	0x3c
	.byte	0x7
	.byte	0xd9
	.byte	0x1
	.4byte	0x276
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x3
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x6
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x7
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x7
	.byte	0xed
	.byte	0x3
	.4byte	0x231
	.uleb128 0x9
	.byte	0x2c
	.byte	0x8
	.byte	0x36
	.byte	0x9
	.4byte	0x39a
	.uleb128 0xd
	.4byte	.LASF39
	.byte	0x8
	.byte	0x38
	.byte	0xd
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.4byte	.LASF40
	.byte	0x8
	.byte	0x3d
	.byte	0xd
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xd
	.4byte	.LASF41
	.byte	0x8
	.byte	0x42
	.byte	0xd
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.4byte	.LASF42
	.byte	0x8
	.byte	0x43
	.byte	0xd
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xd
	.4byte	.LASF43
	.byte	0x8
	.byte	0x44
	.byte	0xd
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.4byte	.LASF44
	.byte	0x8
	.byte	0x51
	.byte	0xd
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.4byte	.LASF45
	.byte	0x8
	.byte	0x55
	.byte	0xd
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.4byte	.LASF46
	.byte	0x8
	.byte	0x59
	.byte	0xd
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.4byte	.LASF47
	.byte	0x8
	.byte	0x5e
	.byte	0xd
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0xd
	.4byte	.LASF48
	.byte	0x8
	.byte	0x63
	.byte	0xd
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.4byte	.LASF49
	.byte	0x8
	.byte	0x6c
	.byte	0xd
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0xd
	.4byte	.LASF50
	.byte	0x8
	.byte	0x75
	.byte	0xd
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.4byte	.LASF51
	.byte	0x8
	.byte	0x7a
	.byte	0xd
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1e
	.uleb128 0xd
	.4byte	.LASF52
	.byte	0x8
	.byte	0x7f
	.byte	0xd
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.4byte	.LASF53
	.byte	0x8
	.byte	0x84
	.byte	0xd
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x22
	.uleb128 0xd
	.4byte	.LASF54
	.byte	0x8
	.byte	0x85
	.byte	0xd
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.4byte	.LASF55
	.byte	0x8
	.byte	0x8e
	.byte	0xd
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x26
	.uleb128 0xd
	.4byte	.LASF56
	.byte	0x8
	.byte	0x93
	.byte	0xd
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.4byte	.LASF57
	.byte	0x8
	.byte	0x9a
	.byte	0x3
	.4byte	0x282
	.uleb128 0x9
	.byte	0x20
	.byte	0x9
	.byte	0x32
	.byte	0x9
	.4byte	0x4a0
	.uleb128 0xd
	.4byte	.LASF58
	.byte	0x9
	.byte	0x35
	.byte	0xb
	.4byte	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.4byte	.LASF59
	.byte	0x9
	.byte	0x36
	.byte	0xb
	.4byte	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xd
	.4byte	.LASF60
	.byte	0x9
	.byte	0x38
	.byte	0xb
	.4byte	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xd
	.4byte	.LASF61
	.byte	0x9
	.byte	0x3a
	.byte	0xb
	.4byte	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xd
	.4byte	.LASF62
	.byte	0x9
	.byte	0x3b
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.4byte	.LASF63
	.byte	0x9
	.byte	0x3d
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xd
	.4byte	.LASF64
	.byte	0x9
	.byte	0x3e
	.byte	0xb
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.4byte	.LASF65
	.byte	0x9
	.byte	0x3f
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.4byte	.LASF66
	.byte	0x9
	.byte	0x41
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xd
	.4byte	.LASF67
	.byte	0x9
	.byte	0x44
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.4byte	.LASF68
	.byte	0x9
	.byte	0x46
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0xd
	.4byte	.LASF69
	.byte	0x9
	.byte	0x48
	.byte	0xc
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.4byte	.LASF70
	.byte	0x9
	.byte	0x4a
	.byte	0xc
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0xd
	.4byte	.LASF71
	.byte	0x9
	.byte	0x4c
	.byte	0xc
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.4byte	.LASF72
	.byte	0x9
	.byte	0x4f
	.byte	0xc
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0xd
	.4byte	.LASF73
	.byte	0x9
	.byte	0x51
	.byte	0xc
	.4byte	0xe0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0
	.uleb128 0x3
	.4byte	.LASF74
	.byte	0x9
	.byte	0x56
	.byte	0x3
	.4byte	0x3a6
	.uleb128 0x9
	.byte	0x34
	.byte	0xa
	.byte	0x34
	.byte	0x9
	.4byte	0x5d3
	.uleb128 0xd
	.4byte	.LASF75
	.byte	0xa
	.byte	0x36
	.byte	0x14
	.4byte	0x276
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.4byte	.LASF76
	.byte	0xa
	.byte	0x39
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xd
	.4byte	.LASF77
	.byte	0xa
	.byte	0x3a
	.byte	0xb
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.4byte	.LASF78
	.byte	0xa
	.byte	0x3c
	.byte	0xb
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.4byte	.LASF79
	.byte	0xa
	.byte	0x3e
	.byte	0xc
	.4byte	0xe0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.4byte	.LASF80
	.byte	0xa
	.byte	0x3f
	.byte	0x11
	.4byte	0x5d3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.ascii	"SPD\000"
	.byte	0xa
	.byte	0x40
	.byte	0x1b
	.4byte	0x5d9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.4byte	.LASF81
	.byte	0xa
	.byte	0x41
	.byte	0xb
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.4byte	.LASF82
	.byte	0xa
	.byte	0x43
	.byte	0xc
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.4byte	.LASF83
	.byte	0xa
	.byte	0x45
	.byte	0xc
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1e
	.uleb128 0xd
	.4byte	.LASF84
	.byte	0xa
	.byte	0x47
	.byte	0xc
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.4byte	.LASF85
	.byte	0xa
	.byte	0x49
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x22
	.uleb128 0xd
	.4byte	.LASF86
	.byte	0xa
	.byte	0x4b
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.4byte	.LASF87
	.byte	0xa
	.byte	0x4d
	.byte	0xc
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x26
	.uleb128 0xd
	.4byte	.LASF88
	.byte	0xa
	.byte	0x4f
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.4byte	.LASF89
	.byte	0xa
	.byte	0x51
	.byte	0x14
	.4byte	0x276
	.byte	0x2
	.byte	0x23
	.uleb128 0x2a
	.uleb128 0xd
	.4byte	.LASF90
	.byte	0xa
	.byte	0x52
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.4byte	.LASF91
	.byte	0xa
	.byte	0x54
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x2e
	.uleb128 0xd
	.4byte	.LASF92
	.byte	0xa
	.byte	0x56
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x39a
	.uleb128 0xe
	.byte	0x4
	.4byte	0x4a0
	.uleb128 0x3
	.4byte	.LASF93
	.byte	0xa
	.byte	0x57
	.byte	0x3
	.4byte	0x4ac
	.uleb128 0xf
	.byte	0x1
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x24e
	.byte	0xd
	.byte	0x1
	.4byte	.LFB1458
	.4byte	.LFE1458
	.4byte	.LLST26
	.byte	0x1
	.4byte	0x626
	.uleb128 0x10
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x24e
	.byte	0x4c
	.4byte	0x626
	.4byte	.LLST27
	.4byte	.LVUS27
	.uleb128 0x11
	.4byte	.LVL52
	.4byte	0xa27
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x5df
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x231
	.byte	0xd
	.byte	0x1
	.4byte	0x225
	.4byte	.LFB1457
	.4byte	.LFE1457
	.4byte	.LLST23
	.byte	0x1
	.4byte	0x677
	.uleb128 0x10
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x231
	.byte	0x3b
	.4byte	0x626
	.4byte	.LLST24
	.4byte	.LVUS24
	.uleb128 0x13
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x233
	.byte	0x8
	.4byte	0x225
	.4byte	.LLST25
	.4byte	.LVUS25
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x214
	.byte	0xd
	.byte	0x1
	.4byte	0x6c1
	.4byte	.LFB1456
	.4byte	.LFE1456
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x6c1
	.uleb128 0x10
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x214
	.byte	0x38
	.4byte	0x626
	.4byte	.LLST21
	.4byte	.LVUS21
	.uleb128 0x13
	.4byte	.LASF98
	.byte	0x1
	.2byte	0x216
	.byte	0x8
	.4byte	0x6c1
	.4byte	.LLST22
	.4byte	.LVUS22
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF99
	.uleb128 0x14
	.byte	0x1
	.4byte	.LASF100
	.byte	0x1
	.2byte	0x204
	.byte	0x10
	.byte	0x1
	.4byte	0xbc
	.4byte	.LFB1455
	.4byte	.LFE1455
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x6fd
	.uleb128 0x10
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x204
	.byte	0x4b
	.4byte	0x626
	.4byte	.LLST20
	.4byte	.LVUS20
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x1f3
	.byte	0x11
	.byte	0x1
	.4byte	0xc8
	.4byte	.LFB1454
	.4byte	.LFE1454
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x732
	.uleb128 0x10
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x1f3
	.byte	0x4c
	.4byte	0x626
	.4byte	.LLST19
	.4byte	.LVUS19
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x1e2
	.byte	0x10
	.byte	0x1
	.4byte	0xbc
	.4byte	.LFB1453
	.4byte	.LFE1453
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x767
	.uleb128 0x10
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x1e2
	.byte	0x47
	.4byte	0x626
	.4byte	.LLST18
	.4byte	.LVUS18
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x188
	.byte	0x10
	.byte	0x1
	.4byte	0xbc
	.4byte	.LFB1452
	.4byte	.LFE1452
	.4byte	.LLST11
	.byte	0x1
	.4byte	0x818
	.uleb128 0x10
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x188
	.byte	0x41
	.4byte	0x626
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x13
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x18a
	.byte	0xb
	.4byte	0xbc
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x13
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x193
	.byte	0xd
	.4byte	0xd4
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x13
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x194
	.byte	0xd
	.4byte	0xbc
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0x13
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x195
	.byte	0xd
	.4byte	0xbc
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0x13
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x196
	.byte	0xd
	.4byte	0xbc
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0x11
	.4byte	.LVL35
	.4byte	0xa27
	.uleb128 0x11
	.4byte	.LVL37
	.4byte	0xa35
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF109
	.byte	0x1
	.2byte	0x10d
	.byte	0xd
	.byte	0x1
	.4byte	0x6c1
	.4byte	.LFB1451
	.4byte	.LFE1451
	.4byte	.LLST4
	.byte	0x1
	.4byte	0x8dc
	.uleb128 0x10
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x10d
	.byte	0x33
	.4byte	0x626
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x10
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x10d
	.byte	0x44
	.4byte	0xbc
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x10
	.4byte	.LASF111
	.byte	0x1
	.2byte	0x10d
	.byte	0x5b
	.4byte	0xe0
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x13
	.4byte	.LASF112
	.byte	0x1
	.2byte	0x10f
	.byte	0x8
	.4byte	0x6c1
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x15
	.4byte	.LASF113
	.byte	0x1
	.2byte	0x118
	.byte	0xe
	.4byte	0xe0
	.uleb128 0x15
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x119
	.byte	0xd
	.4byte	0xd4
	.uleb128 0x13
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x11a
	.byte	0xd
	.4byte	0xbc
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x16
	.4byte	0x913
	.4byte	.LBI4
	.byte	.LVU76
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.2byte	0x11f
	.byte	0x1b
	.uleb128 0x17
	.4byte	0x925
	.4byte	.LLST10
	.4byte	.LVUS10
	.byte	0
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF117
	.byte	0x1
	.byte	0xde
	.byte	0xd
	.byte	0x1
	.4byte	.LFB1450
	.4byte	.LFE1450
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x913
	.uleb128 0x19
	.4byte	.LASF94
	.byte	0x1
	.byte	0xde
	.byte	0x39
	.4byte	0x626
	.byte	0x1
	.byte	0x50
	.uleb128 0x19
	.4byte	.LASF118
	.byte	0x1
	.byte	0xde
	.byte	0x53
	.4byte	0x276
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF130
	.byte	0x1
	.byte	0xb7
	.byte	0x17
	.byte	0x1
	.4byte	0xbc
	.byte	0x3
	.4byte	0x932
	.uleb128 0x1b
	.4byte	.LASF94
	.byte	0x1
	.byte	0xb7
	.byte	0x41
	.4byte	0x626
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF119
	.byte	0x1
	.byte	0x98
	.byte	0x10
	.byte	0x1
	.4byte	0xbc
	.4byte	.LFB1448
	.4byte	.LFE1448
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x965
	.uleb128 0x1d
	.4byte	.LASF94
	.byte	0x1
	.byte	0x98
	.byte	0x40
	.4byte	0x626
	.4byte	.LLST3
	.4byte	.LVUS3
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF120
	.byte	0x1
	.byte	0x77
	.byte	0xd
	.byte	0x1
	.4byte	.LFB1447
	.4byte	.LFE1447
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x9a4
	.uleb128 0x1d
	.4byte	.LASF94
	.byte	0x1
	.byte	0x77
	.byte	0x30
	.4byte	0x626
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x1e
	.4byte	.LVL5
	.byte	0x1
	.4byte	0xa43
	.uleb128 0x1f
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF121
	.byte	0x1
	.byte	0x60
	.byte	0xd
	.byte	0x1
	.4byte	.LFB1446
	.4byte	.LFE1446
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x9db
	.uleb128 0x19
	.4byte	.LASF94
	.byte	0x1
	.byte	0x60
	.byte	0x39
	.4byte	0x626
	.byte	0x1
	.byte	0x50
	.uleb128 0x19
	.4byte	.LASF122
	.byte	0x1
	.byte	0x60
	.byte	0x5a
	.4byte	0x5d9
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.4byte	.LASF123
	.byte	0x1
	.byte	0x41
	.byte	0xd
	.byte	0x1
	.4byte	.LFB1445
	.4byte	.LFE1445
	.4byte	.LLST0
	.byte	0x1
	.4byte	0xa27
	.uleb128 0x19
	.4byte	.LASF94
	.byte	0x1
	.byte	0x41
	.byte	0x2f
	.4byte	0x626
	.byte	0x1
	.byte	0x50
	.uleb128 0x21
	.ascii	"pPI\000"
	.byte	0x1
	.byte	0x41
	.byte	0x46
	.4byte	0x5d3
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x19
	.4byte	.LASF122
	.byte	0x1
	.byte	0x41
	.byte	0x63
	.4byte	0x5d9
	.byte	0x1
	.byte	0x52
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.byte	0x1
	.4byte	.LASF124
	.4byte	.LASF124
	.byte	0x9
	.byte	0x65
	.byte	0x9
	.uleb128 0x22
	.byte	0x1
	.byte	0x1
	.4byte	.LASF125
	.4byte	.LASF125
	.byte	0x8
	.byte	0xe2
	.byte	0x9
	.uleb128 0x22
	.byte	0x1
	.byte	0x1
	.4byte	.LASF126
	.4byte	.LASF126
	.byte	0x8
	.byte	0xb2
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x6
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x15
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
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x5
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
.LLST26:
	.4byte	.LFB1458
	.4byte	.LCFI12
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI12
	.4byte	.LFE1458
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LVUS27:
	.uleb128 0
	.uleb128 .LVU217
	.uleb128 .LVU217
	.uleb128 0
.LLST27:
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL51
	.4byte	.LFE1458
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LFB1457
	.4byte	.LCFI10
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI10
	.4byte	.LCFI11
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI11
	.4byte	.LFE1457
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS24:
	.uleb128 0
	.uleb128 .LVU211
	.uleb128 .LVU211
	.uleb128 0
.LLST24:
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL49
	.4byte	.LFE1457
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS25:
	.uleb128 .LVU205
	.uleb128 .LVU206
	.uleb128 .LVU206
	.uleb128 .LVU207
.LLST25:
	.4byte	.LVL48
	.4byte	.LVL48
	.2byte	0x6
	.byte	0x70
	.sleb128 46
	.byte	0x93
	.uleb128 0x2
	.byte	0x93
	.uleb128 0x2
	.4byte	.LVL48
	.4byte	.LVL48
	.2byte	0x8
	.byte	0x70
	.sleb128 46
	.byte	0x93
	.uleb128 0x2
	.byte	0x70
	.sleb128 48
	.byte	0x93
	.uleb128 0x2
	.4byte	0
	.4byte	0
.LVUS21:
	.uleb128 0
	.uleb128 .LVU199
	.uleb128 .LVU199
	.uleb128 0
.LLST21:
	.4byte	.LVL44
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL46
	.4byte	.LFE1456
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS22:
	.uleb128 .LVU193
	.uleb128 .LVU198
	.uleb128 .LVU198
	.uleb128 .LVU200
	.uleb128 .LVU200
	.uleb128 0
.LLST22:
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL47
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LFE1456
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS20:
	.uleb128 0
	.uleb128 .LVU190
	.uleb128 .LVU190
	.uleb128 0
.LLST20:
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL43
	.4byte	.LFE1455
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS19:
	.uleb128 0
	.uleb128 .LVU186
	.uleb128 .LVU186
	.uleb128 0
.LLST19:
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL41
	.4byte	.LFE1454
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS18:
	.uleb128 0
	.uleb128 .LVU182
	.uleb128 .LVU182
	.uleb128 0
.LLST18:
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL39
	.4byte	.LFE1453
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LFB1452
	.4byte	.LCFI9
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI9
	.4byte	.LFE1452
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0
	.4byte	0
.LVUS12:
	.uleb128 0
	.uleb128 .LVU150
	.uleb128 .LVU150
	.uleb128 .LVU152
	.uleb128 .LVU152
	.uleb128 .LVU167
	.uleb128 .LVU167
	.uleb128 0
.LLST12:
	.4byte	.LVL26
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL30
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL34
	.4byte	.LFE1452
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS13:
	.uleb128 .LVU150
	.uleb128 .LVU152
	.uleb128 .LVU173
	.uleb128 0
.LLST13:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL37
	.4byte	.LFE1452
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS14:
	.uleb128 .LVU133
	.uleb128 .LVU156
	.uleb128 .LVU156
	.uleb128 .LVU159
	.uleb128 .LVU159
	.uleb128 0
.LLST14:
	.4byte	.LVL27
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0xf
	.byte	0x70
	.sleb128 4
	.byte	0x6
	.byte	0x71
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x34
	.byte	0x2e
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LFE1452
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS15:
	.uleb128 .LVU168
	.uleb128 .LVU172
.LLST15:
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS16:
	.uleb128 .LVU165
	.uleb128 0
.LLST16:
	.4byte	.LVL33
	.4byte	.LFE1452
	.2byte	0x5
	.byte	0x75
	.sleb128 0
	.byte	0x40
	.byte	0x26
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS17:
	.uleb128 .LVU169
	.uleb128 .LVU172
.LLST17:
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x8
	.byte	0x75
	.sleb128 0
	.byte	0x40
	.byte	0x26
	.byte	0x70
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LFB1451
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
	.4byte	.LCFI4
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI4
	.4byte	.LCFI5
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI5
	.4byte	.LCFI6
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI6
	.4byte	.LCFI7
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI7
	.4byte	.LCFI8
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI8
	.4byte	.LFE1451
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 0
	.uleb128 .LVU58
	.uleb128 .LVU58
	.uleb128 .LVU60
	.uleb128 .LVU60
	.uleb128 .LVU98
	.uleb128 .LVU98
	.uleb128 .LVU99
	.uleb128 .LVU99
	.uleb128 .LVU119
	.uleb128 .LVU119
	.uleb128 .LVU120
	.uleb128 .LVU120
	.uleb128 0
.LLST5:
	.4byte	.LVL9
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
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LFE1451
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 0
	.uleb128 .LVU74
	.uleb128 .LVU74
	.uleb128 .LVU75
	.uleb128 .LVU75
	.uleb128 .LVU92
	.uleb128 .LVU92
	.uleb128 .LVU99
	.uleb128 .LVU99
	.uleb128 0
.LLST6:
	.4byte	.LVL9
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LFE1451
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 0
	.uleb128 .LVU104
	.uleb128 .LVU104
	.uleb128 .LVU120
	.uleb128 .LVU120
	.uleb128 0
.LLST7:
	.4byte	.LVL9
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL21
	.4byte	.LVL25
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LFE1451
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 .LVU46
	.uleb128 .LVU58
	.uleb128 .LVU60
	.uleb128 .LVU68
	.uleb128 .LVU75
	.uleb128 .LVU88
.LLST8:
	.4byte	.LVL9
	.4byte	.LVL12
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 .LVU54
	.uleb128 .LVU57
	.uleb128 .LVU60
	.uleb128 .LVU68
	.uleb128 .LVU78
	.uleb128 .LVU88
.LLST9:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x2
	.byte	0x70
	.sleb128 6
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x70
	.sleb128 6
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x2
	.byte	0x70
	.sleb128 10
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 .LVU76
	.uleb128 .LVU78
.LLST10:
	.4byte	.LVL16
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU36
	.uleb128 .LVU36
	.uleb128 0
.LLST3:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL7
	.4byte	.LFE1448
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU32
	.uleb128 .LVU32
	.uleb128 0
.LLST2:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL4
	.4byte	.LFE1447
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LFB1445
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
	.4byte	.LFE1445
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU6
	.uleb128 .LVU6
	.uleb128 0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL1
	.4byte	.LFE1445
	.2byte	0x2
	.byte	0x70
	.sleb128 16
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x7c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB1445
	.4byte	.LFE1445-.LFB1445
	.4byte	.LFB1446
	.4byte	.LFE1446-.LFB1446
	.4byte	.LFB1447
	.4byte	.LFE1447-.LFB1447
	.4byte	.LFB1448
	.4byte	.LFE1448-.LFB1448
	.4byte	.LFB1450
	.4byte	.LFE1450-.LFB1450
	.4byte	.LFB1451
	.4byte	.LFE1451-.LFB1451
	.4byte	.LFB1452
	.4byte	.LFE1452-.LFB1452
	.4byte	.LFB1453
	.4byte	.LFE1453-.LFB1453
	.4byte	.LFB1454
	.4byte	.LFE1454-.LFB1454
	.4byte	.LFB1455
	.4byte	.LFE1455-.LFB1455
	.4byte	.LFB1456
	.4byte	.LFE1456-.LFB1456
	.4byte	.LFB1457
	.4byte	.LFE1457-.LFB1457
	.4byte	.LFB1458
	.4byte	.LFE1458-.LFB1458
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	0
	.4byte	0
	.4byte	.LFB1445
	.4byte	.LFE1445
	.4byte	.LFB1446
	.4byte	.LFE1446
	.4byte	.LFB1447
	.4byte	.LFE1447
	.4byte	.LFB1448
	.4byte	.LFE1448
	.4byte	.LFB1450
	.4byte	.LFE1450
	.4byte	.LFB1451
	.4byte	.LFE1451
	.4byte	.LFB1452
	.4byte	.LFE1452
	.4byte	.LFB1453
	.4byte	.LFE1453
	.4byte	.LFB1454
	.4byte	.LFE1454
	.4byte	.LFB1455
	.4byte	.LFE1455
	.4byte	.LFB1456
	.4byte	.LFE1456
	.4byte	.LFB1457
	.4byte	.LFE1457
	.4byte	.LFB1458
	.4byte	.LFE1458
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF123:
	.ascii	"STC_Init\000"
.LASF98:
	.ascii	"retVal\000"
.LASF87:
	.ascii	"MaxPositiveTorque\000"
.LASF30:
	.ascii	"MCM_OPEN_LOOP_VOLTAGE_MODE\000"
.LASF125:
	.ascii	"PI_Controller\000"
.LASF2:
	.ascii	"__uint8_t\000"
.LASF50:
	.ascii	"hKpDivisorPOW2\000"
.LASF31:
	.ascii	"MCM_OPEN_LOOP_CURRENT_MODE\000"
.LASF60:
	.ascii	"SpeedUnit\000"
.LASF119:
	.ascii	"STC_GetMecSpeedRefUnit\000"
.LASF53:
	.ascii	"hKdGain\000"
.LASF12:
	.ascii	"long long unsigned int\000"
.LASF122:
	.ascii	"SPD_Handle\000"
.LASF51:
	.ascii	"hKiDivisorPOW2\000"
.LASF114:
	.ascii	"wAux1\000"
.LASF83:
	.ascii	"MaxAppPositiveMecSpeedUnit\000"
.LASF23:
	.ascii	"SHIFT_TAB_CCxP\000"
.LASF15:
	.ascii	"int16_t\000"
.LASF11:
	.ascii	"long long int\000"
.LASF0:
	.ascii	"signed char\000"
.LASF102:
	.ascii	"STC_GetMecSpeedRefUnitDefault\000"
.LASF49:
	.ascii	"hKiDivisor\000"
.LASF56:
	.ascii	"wPrevProcessVarError\000"
.LASF77:
	.ascii	"SpeedRefUnitExt\000"
.LASF39:
	.ascii	"hDefKpGain\000"
.LASF20:
	.ascii	"OFFSET_TAB_CCMRx\000"
.LASF109:
	.ascii	"STC_ExecRamp\000"
.LASF72:
	.ascii	"hMeasurementFrequency\000"
.LASF8:
	.ascii	"long int\000"
.LASF33:
	.ascii	"MCM_TORQUE_MODE\000"
.LASF130:
	.ascii	"STC_GetTorqueRef\000"
.LASF59:
	.ascii	"bElToMecRatio\000"
.LASF124:
	.ascii	"SPD_GetAvrgMecSpeedUnit\000"
.LASF86:
	.ascii	"MinAppNegativeMecSpeedUnit\000"
.LASF42:
	.ascii	"hKiGain\000"
.LASF16:
	.ascii	"uint16_t\000"
.LASF64:
	.ascii	"wMecAngle\000"
.LASF127:
	.ascii	"GNU C17 10.2.1 20201103 (release) -mcpu=cortex-m4 -"
	.ascii	"mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=hard -march=ar"
	.ascii	"mv7e-m+fp -g -gdwarf-2 -O3 -fdata-sections -ffuncti"
	.ascii	"on-sections\000"
.LASF97:
	.ascii	"IqdRefDefault\000"
.LASF9:
	.ascii	"__uint32_t\000"
.LASF43:
	.ascii	"wIntegralTerm\000"
.LASF75:
	.ascii	"Mode\000"
.LASF52:
	.ascii	"hDefKdGain\000"
.LASF116:
	.ascii	"STC_ForceSpeedReferenceToCurrentSpeed\000"
.LASF69:
	.ascii	"hMaxReliableMecSpeedUnit\000"
.LASF36:
	.ascii	"MCM_POSITION_MODE\000"
.LASF79:
	.ascii	"RampRemainingStep\000"
.LASF58:
	.ascii	"bSpeedErrorNumber\000"
.LASF78:
	.ascii	"TorqueRef\000"
.LASF13:
	.ascii	"unsigned int\000"
.LASF25:
	.ascii	"USART_PRESCALER_TAB\000"
.LASF128:
	.ascii	"MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Src/"
	.ascii	"speed_torq_ctrl.c\000"
.LASF48:
	.ascii	"hKpDivisor\000"
.LASF121:
	.ascii	"STC_SetSpeedSensor\000"
.LASF95:
	.ascii	"STC_GetDefaultIqdref\000"
.LASF89:
	.ascii	"ModeDefault\000"
.LASF10:
	.ascii	"long unsigned int\000"
.LASF82:
	.ascii	"STCFrequencyHz\000"
.LASF85:
	.ascii	"MaxAppNegativeMecSpeedUnit\000"
.LASF96:
	.ascii	"STC_StopSpeedRamp\000"
.LASF73:
	.ascii	"DPPConvFactor\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF104:
	.ascii	"hTorqueReference\000"
.LASF129:
	.ascii	"/home/joel/share/EVSPIN32G4_Shinano\000"
.LASF80:
	.ascii	"PISpeed\000"
.LASF57:
	.ascii	"PID_Handle_t\000"
.LASF34:
	.ascii	"MCM_PROFILING_MODE\000"
.LASF45:
	.ascii	"wLowerIntegralLimit\000"
.LASF120:
	.ascii	"STC_Clear\000"
.LASF22:
	.ascii	"SHIFT_TAB_ICxx\000"
.LASF67:
	.ascii	"InstantaneousElSpeedDpp\000"
.LASF101:
	.ascii	"STC_GetMaxAppPositiveMecSpeedUnit\000"
.LASF90:
	.ascii	"MecSpeedRefUnitDefault\000"
.LASF47:
	.ascii	"hLowerOutputLimit\000"
.LASF106:
	.ascii	"hMeasuredSpeed\000"
.LASF68:
	.ascii	"hMecAccelUnitP\000"
.LASF113:
	.ascii	"wAux\000"
.LASF94:
	.ascii	"pHandle\000"
.LASF115:
	.ascii	"hCurrentReference\000"
.LASF71:
	.ascii	"hMaxReliableMecAccelUnitP\000"
.LASF55:
	.ascii	"hKdDivisorPOW2\000"
.LASF112:
	.ascii	"allowedRange\000"
.LASF126:
	.ascii	"PID_SetIntegralTerm\000"
.LASF27:
	.ascii	"float\000"
.LASF103:
	.ascii	"STC_CalcTorqueReference\000"
.LASF70:
	.ascii	"hMinReliableMecSpeedUnit\000"
.LASF41:
	.ascii	"hKpGain\000"
.LASF99:
	.ascii	"_Bool\000"
.LASF17:
	.ascii	"int32_t\000"
.LASF37:
	.ascii	"MCM_MODE_NUM\000"
.LASF32:
	.ascii	"MCM_SPEED_MODE\000"
.LASF4:
	.ascii	"short int\000"
.LASF54:
	.ascii	"hKdDivisor\000"
.LASF28:
	.ascii	"qd_t\000"
.LASF117:
	.ascii	"STC_SetControlMode\000"
.LASF35:
	.ascii	"MCM_SHORTED_MODE\000"
.LASF81:
	.ascii	"IncDecAmount\000"
.LASF107:
	.ascii	"hTargetSpeed\000"
.LASF111:
	.ascii	"hDurationms\000"
.LASF92:
	.ascii	"IdrefDefault\000"
.LASF108:
	.ascii	"hError\000"
.LASF19:
	.ascii	"long double\000"
.LASF93:
	.ascii	"SpeednTorqCtrl_Handle_t\000"
.LASF40:
	.ascii	"hDefKiGain\000"
.LASF5:
	.ascii	"__uint16_t\000"
.LASF38:
	.ascii	"MC_ControlMode_t\000"
.LASF7:
	.ascii	"__int32_t\000"
.LASF88:
	.ascii	"MinNegativeTorque\000"
.LASF21:
	.ascii	"SHIFT_TAB_OCxx\000"
.LASF26:
	.ascii	"CHANNEL_OFFSET_TAB\000"
.LASF46:
	.ascii	"hUpperOutputLimit\000"
.LASF65:
	.ascii	"hAvrMecSpeedUnit\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF105:
	.ascii	"wCurrentReference\000"
.LASF24:
	.ascii	"SHIFT_TAB_OISx\000"
.LASF118:
	.ascii	"bMode\000"
.LASF44:
	.ascii	"wUpperIntegralLimit\000"
.LASF76:
	.ascii	"TargetFinal\000"
.LASF100:
	.ascii	"STC_GetMinAppNegativeMecSpeedUnit\000"
.LASF29:
	.ascii	"MCM_OBSERVING_MODE\000"
.LASF110:
	.ascii	"hTargetFinal\000"
.LASF61:
	.ascii	"bMaximumSpeedErrorsNumber\000"
.LASF14:
	.ascii	"uint8_t\000"
.LASF66:
	.ascii	"hElSpeedDpp\000"
.LASF63:
	.ascii	"hMecAngle\000"
.LASF3:
	.ascii	"__int16_t\000"
.LASF62:
	.ascii	"hElAngle\000"
.LASF91:
	.ascii	"TorqueRefDefault\000"
.LASF74:
	.ascii	"SpeednPosFdbk_Handle_t\000"
.LASF18:
	.ascii	"uint32_t\000"
.LASF84:
	.ascii	"MinAppPositiveMecSpeedUnit\000"
	.ident	"GCC: (GNU Arm Embedded Toolchain 10-2020-q4-major) 10.2.1 20201103 (release)"
