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
	.file	"feed_forward_ctrl.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.FF_Init,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	FF_Init
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	FF_Init, %function
FF_Init:
.LVL0:
.LFB1447:
	.file 1 "MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Src/feed_forward_ctrl.c"
	.loc 1 96 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 105 5 view .LVU1
	.loc 1 96 1 is_stmt 0 view .LVU2
	push	{r4}
.LCFI0:
	.cfi_def_cfa_offset 4
	.cfi_offset 4, -4
	.loc 1 105 27 view .LVU3
	ldr	r4, [r0, #40]
	str	r4, [r0, #12]
	.loc 1 106 5 is_stmt 1 view .LVU4
	.loc 1 106 27 is_stmt 0 view .LVU5
	ldr	r4, [r0, #44]
	str	r4, [r0, #16]
	.loc 1 107 5 is_stmt 1 view .LVU6
	.loc 1 107 27 is_stmt 0 view .LVU7
	ldr	r4, [r0, #48]
	.loc 1 113 21 view .LVU8
	strd	r3, r2, [r0, #28]
	.loc 1 109 26 view .LVU9
	strd	r4, r1, [r0, #20]
	.loc 1 111 5 is_stmt 1 view .LVU10
	.loc 1 117 1 is_stmt 0 view .LVU11
	ldr	r4, [sp], #4
.LCFI1:
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE1447:
	.size	FF_Init, .-FF_Init
	.section	.text.FF_Clear,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	FF_Clear
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	FF_Clear, %function
FF_Clear:
.LVL1:
.LFB1448:
	.loc 1 125 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 134 5 view .LVU13
	.loc 1 135 5 view .LVU14
	.loc 1 134 22 is_stmt 0 view .LVU15
	movs	r3, #0
	str	r3, [r0]
	.loc 1 139 1 view .LVU16
	bx	lr
	.cfi_endproc
.LFE1448:
	.size	FF_Clear, .-FF_Clear
	.section	.text.FF_VqdffComputation,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	FF_VqdffComputation
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	FF_VqdffComputation, %function
FF_VqdffComputation:
.LVL2:
.LFB1449:
	.loc 1 151 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 160 5 view .LVU18
	.loc 1 161 5 view .LVU19
	.loc 1 162 5 view .LVU20
	.loc 1 163 5 view .LVU21
	.loc 1 165 5 view .LVU22
.LBB6:
.LBI6:
	.file 2 "MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Inc/speed_torq_ctrl.h"
	.loc 2 240 39 view .LVU23
.LBB7:
	.loc 2 245 3 view .LVU24
	.loc 2 245 3 is_stmt 0 view .LVU25
.LBE7:
.LBE6:
	.loc 1 166 5 is_stmt 1 view .LVU26
	.loc 1 151 1 is_stmt 0 view .LVU27
	push	{r4, lr}
.LCFI2:
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	mov	r4, r0
	sub	sp, sp, #8
.LCFI3:
	.cfi_def_cfa_offset 16
	.loc 1 166 18 view .LVU28
	ldr	r0, [r2, #20]
.LVL3:
	.loc 1 151 1 view .LVU29
	str	r1, [sp, #4]
	.loc 1 166 18 view .LVU30
	bl	SPD_GetElSpeedDpp
.LVL4:
.LBB8:
.LBB9:
	.file 3 "MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Inc/bus_voltage_sensor.h"
	.loc 3 92 18 view .LVU31
	ldr	r2, [r4, #24]
.LVL5:
	.loc 3 92 18 view .LVU32
.LBE9:
.LBE8:
	.loc 1 167 5 is_stmt 1 view .LVU33
.LBB11:
.LBI8:
	.loc 3 77 24 view .LVU34
.LBB10:
	.loc 3 92 3 view .LVU35
	.loc 3 92 18 is_stmt 0 view .LVU36
	ldrh	r2, [r2, #6]
.LVL6:
	.loc 3 92 18 view .LVU37
.LBE10:
.LBE11:
	.loc 1 169 5 is_stmt 1 view .LVU38
	.loc 1 169 8 is_stmt 0 view .LVU39
	cmp	r2, #1
	bls	.L9
	.loc 1 172 7 is_stmt 1 view .LVU40
.LVL7:
	.loc 1 173 7 view .LVU41
	.loc 1 172 40 is_stmt 0 view .LVU42
	ldrh	r1, [sp, #6]
	.loc 1 176 39 view .LVU43
	ldr	r3, [r4, #20]
	.loc 1 172 40 view .LVU44
	smulbb	r1, r1, r0
	.loc 1 172 14 view .LVU45
	cmp	r1, #0
	it	lt
	addlt	r1, r1, #32640
	.loc 1 173 51 view .LVU46
	lsr	lr, r2, #1
	.loc 1 172 14 view .LVU47
	it	lt
	addlt	r1, r1, #127
	.loc 1 173 24 view .LVU48
	ldr	r2, [r4, #12]
.LVL8:
	.loc 1 172 14 view .LVU49
	asrs	r1, r1, #15
	.loc 1 173 24 view .LVU50
	mul	r1, r2, r1
	.loc 1 173 14 view .LVU51
	sdiv	r2, r1, lr
.LVL9:
	.loc 1 174 7 is_stmt 1 view .LVU52
	.loc 1 176 7 view .LVU53
	.loc 1 178 7 view .LVU54
	.loc 1 180 7 view .LVU55
	.loc 1 176 39 is_stmt 0 view .LVU56
	mul	r1, r3, r0
	ldr	r3, .L11
.LVL10:
	.loc 1 176 53 view .LVU57
	sdiv	r1, r1, lr
	.loc 1 176 14 view .LVU58
	lsls	r1, r1, #4
	.loc 1 178 14 view .LVU59
	add	r1, r1, r2, lsl #1
	cmp	r1, r3
	it	lt
	movlt	r1, r3
.LVL11:
	.loc 1 180 7 is_stmt 1 view .LVU60
	.loc 1 182 7 view .LVU61
	.loc 1 182 26 is_stmt 0 view .LVU62
	movw	r2, #32767
	cmp	r1, r2
	it	ge
	movge	r1, r2
.LVL12:
	.loc 1 182 26 view .LVU63
	sxth	ip, r1
	.loc 1 185 7 is_stmt 1 view .LVU64
.LVL13:
	.loc 1 186 7 view .LVU65
	.loc 1 185 40 is_stmt 0 view .LVU66
	ldrh	r1, [sp, #4]
	strh	ip, [r4]	@ movhi
	smulbb	r3, r1, r0
.LVL14:
	.loc 1 185 14 view .LVU67
	cmp	r3, #0
	.loc 1 186 24 view .LVU68
	ldr	r1, [r4, #16]
	.loc 1 185 14 view .LVU69
	it	lt
	addlt	r3, r3, r2
	asrs	r2, r3, #15
	.loc 1 186 24 view .LVU70
	mul	r2, r1, r2
	ldr	r1, .L11
.LVL15:
	.loc 1 186 14 view .LVU71
	sdiv	r2, r2, lr
.LVL16:
	.loc 1 187 7 is_stmt 1 view .LVU72
	.loc 1 189 7 view .LVU73
	.loc 1 187 14 is_stmt 0 view .LVU74
	rsb	r2, r2, r2, lsl #31
.LVL17:
	.loc 1 187 14 view .LVU75
	lsls	r3, r2, #1
.LVL18:
	.loc 1 187 14 view .LVU76
	cmp	r3, r1
.LVL19:
	.loc 1 187 14 view .LVU77
	it	lt
	movlt	r3, r1
.LVL20:
	.loc 1 189 7 is_stmt 1 view .LVU78
	.loc 1 191 7 view .LVU79
	.loc 1 191 26 is_stmt 0 view .LVU80
	movw	r2, #32767
	cmp	r3, r2
	it	ge
	movge	r3, r2
.LVL21:
	.loc 1 191 26 view .LVU81
	sxth	r3, r3
	strh	r3, [r4, #2]	@ movhi
	.loc 1 201 1 view .LVU82
	add	sp, sp, #8
.LCFI4:
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	@ sp needed
	pop	{r4, pc}
.LVL22:
.L9:
.LCFI5:
	.cfi_restore_state
	.loc 1 196 24 view .LVU83
	movs	r3, #0
	.loc 1 195 24 view .LVU84
	mov	ip, r3
	strh	r3, [r4, #2]	@ movhi
	strh	ip, [r4]	@ movhi
	.loc 1 201 1 view .LVU85
	add	sp, sp, #8
.LCFI6:
	.cfi_def_cfa_offset 8
	@ sp needed
	pop	{r4, pc}
.LVL23:
.L12:
	.loc 1 201 1 view .LVU86
	.align	2
.L11:
	.word	-32767
	.cfi_endproc
.LFE1449:
	.size	FF_VqdffComputation, .-FF_VqdffComputation
	.section	.text.FF_VqdConditioning,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	FF_VqdConditioning
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	FF_VqdConditioning, %function
FF_VqdConditioning:
.LVL24:
.LFB1450:
	.loc 1 220 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 221 3 view .LVU88
	.loc 1 231 5 view .LVU89
	.loc 1 233 5 view .LVU90
	.loc 1 220 1 is_stmt 0 view .LVU91
	push	{r4, lr}
.LCFI7:
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 241 46 view .LVU92
	ldrsh	r2, [r0, #2]
	.loc 1 235 46 view .LVU93
	ldrsh	lr, [r0]
	ldr	r4, .L15
	.loc 1 233 23 view .LVU94
	str	r1, [r0, #4]
	.loc 1 235 5 is_stmt 1 view .LVU95
	.loc 1 241 11 is_stmt 0 view .LVU96
	add	r3, r2, r1, asr #16
	.loc 1 235 11 view .LVU97
	sxtah	r1, lr, r1
	cmp	r1, r4
	.loc 1 239 14 view .LVU98
	movw	r2, #32767
	it	lt
	movlt	r1, r4
	cmp	r3, r4
	it	lt
	movlt	r3, r4
	cmp	r1, r2
	it	ge
	movge	r1, r2
	.loc 1 245 14 view .LVU99
	cmp	r3, r2
	it	ge
	movge	r3, r2
	.loc 1 249 10 view .LVU100
	uxth	r1, r1
	movs	r0, #0
.LVL25:
	.loc 1 249 10 view .LVU101
	bfi	r0, r1, #0, #16
	uxth	r3, r3
	.loc 1 220 1 view .LVU102
	sub	sp, sp, #16
.LCFI8:
	.cfi_def_cfa_offset 24
	.loc 1 237 5 is_stmt 1 view .LVU103
	.loc 1 237 5 view .LVU104
	.loc 1 239 5 view .LVU105
	.loc 1 241 5 view .LVU106
.LVL26:
	.loc 1 243 5 view .LVU107
	.loc 1 243 5 view .LVU108
	.loc 1 245 5 view .LVU109
	.loc 1 249 3 view .LVU110
	.loc 1 249 10 is_stmt 0 view .LVU111
	bfi	r0, r3, #16, #16
	.loc 1 250 1 view .LVU112
	add	sp, sp, #16
.LCFI9:
	.cfi_def_cfa_offset 8
	@ sp needed
	pop	{r4, pc}
.L16:
	.align	2
.L15:
	.word	-32767
	.cfi_endproc
.LFE1450:
	.size	FF_VqdConditioning, .-FF_VqdConditioning
	.section	.text.FF_DataProcess,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	FF_DataProcess
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	FF_DataProcess, %function
FF_DataProcess:
.LVL27:
.LFB1451:
	.loc 1 265 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 274 5 view .LVU114
	.loc 1 275 5 view .LVU115
	.loc 1 275 31 is_stmt 0 view .LVU116
	ldrh	r3, [r0, #36]
	.loc 1 281 30 view .LVU117
	ldrsh	r2, [r0, #4]
	.loc 1 283 54 view .LVU118
	ldrh	ip, [r0, #52]
	.loc 1 265 1 view .LVU119
	push	{r4, lr}
.LCFI10:
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 275 13 view .LVU120
	subs	r1, r3, #1
.LVL28:
	.loc 1 280 5 is_stmt 1 view .LVU121
	.loc 1 280 12 is_stmt 0 view .LVU122
	ldrsh	r4, [r0, #8]
.LVL29:
	.loc 1 281 5 is_stmt 1 view .LVU123
	.loc 1 283 5 view .LVU124
	.loc 1 285 12 is_stmt 0 view .LVU125
	ldrsh	lr, [r0, #10]
	.loc 1 286 30 view .LVU126
	ldrsh	r3, [r0, #6]
	.loc 1 281 10 view .LVU127
	mla	r2, r1, r4, r2
	.loc 1 286 10 view .LVU128
	mla	r3, r1, lr, r3
	.loc 1 283 44 view .LVU129
	asr	r2, r2, ip
	.loc 1 288 44 view .LVU130
	asr	r3, r3, ip
	.loc 1 283 29 view .LVU131
	strh	r2, [r0, #8]	@ movhi
	.loc 1 285 5 is_stmt 1 view .LVU132
.LVL30:
	.loc 1 286 5 view .LVU133
	.loc 1 288 5 view .LVU134
	.loc 1 288 29 is_stmt 0 view .LVU135
	strh	r3, [r0, #10]	@ movhi
	.loc 1 306 1 view .LVU136
	pop	{r4, pc}
	.cfi_endproc
.LFE1451:
	.size	FF_DataProcess, .-FF_DataProcess
	.section	.text.FF_InitFOCAdditionalMethods,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	FF_InitFOCAdditionalMethods
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	FF_InitFOCAdditionalMethods, %function
FF_InitFOCAdditionalMethods:
.LVL31:
.LFB1452:
	.loc 1 313 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 322 5 view .LVU138
	.loc 1 323 5 view .LVU139
	.loc 1 313 1 is_stmt 0 view .LVU140
	push	{r4, lr}
.LCFI11:
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 313 1 view .LVU141
	mov	r4, r0
	.loc 1 322 27 view .LVU142
	movs	r1, #0
	.loc 1 324 5 view .LVU143
	ldr	r0, [r0, #28]
.LVL32:
	.loc 1 322 27 view .LVU144
	str	r1, [r4, #8]
	.loc 1 324 5 is_stmt 1 view .LVU145
	bl	PID_SetIntegralTerm
.LVL33:
	.loc 1 325 5 view .LVU146
	ldr	r0, [r4, #32]
	movs	r1, #0
	.loc 1 329 1 is_stmt 0 view .LVU147
	pop	{r4, lr}
.LCFI12:
	.cfi_restore 14
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL34:
	.loc 1 325 5 view .LVU148
	b	PID_SetIntegralTerm
.LVL35:
	.cfi_endproc
.LFE1452:
	.size	FF_InitFOCAdditionalMethods, .-FF_InitFOCAdditionalMethods
	.section	.text.FF_SetFFConstants,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	FF_SetFFConstants
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	FF_SetFFConstants, %function
FF_SetFFConstants:
.LVL36:
.LFB1453:
	.loc 1 339 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 348 5 view .LVU150
	.loc 1 349 5 view .LVU151
	.loc 1 350 5 view .LVU152
	.loc 1 339 1 is_stmt 0 view .LVU153
	sub	sp, sp, #16
.LCFI13:
	.cfi_def_cfa_offset 16
	.loc 1 339 1 view .LVU154
	add	ip, sp, #16
	stmdb	ip, {r1, r2, r3}
	.loc 1 348 27 view .LVU155
	strd	r1, r2, [r0, #12]
	str	r3, [r0, #20]
	.loc 1 354 1 view .LVU156
	add	sp, sp, #16
.LCFI14:
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE1453:
	.size	FF_SetFFConstants, .-FF_SetFFConstants
	.section	.text.FF_GetFFConstants,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	FF_GetFFConstants
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	FF_GetFFConstants, %function
FF_GetFFConstants:
.LVL37:
.LFB1454:
	.loc 1 368 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 369 3 view .LVU158
	.loc 1 380 5 view .LVU159
	.loc 1 381 5 view .LVU160
	.loc 1 382 5 view .LVU161
	ldr	r2, [r1, #16]
	.loc 1 386 10 is_stmt 0 view .LVU162
	str	r2, [r0, #4]
	.loc 1 380 39 view .LVU163
	ldr	r2, [r1, #20]
.LVL38:
	.loc 1 386 3 is_stmt 1 view .LVU164
	.loc 1 386 10 is_stmt 0 view .LVU165
	ldr	r1, [r1, #12]
.LVL39:
	.loc 1 386 10 view .LVU166
	str	r1, [r0]
	str	r2, [r0, #8]
.LVL40:
	.loc 1 387 1 view .LVU167
	bx	lr
	.cfi_endproc
.LFE1454:
	.size	FF_GetFFConstants, .-FF_GetFFConstants
	.section	.text.FF_GetVqdff,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	FF_GetVqdff
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	FF_GetVqdff, %function
FF_GetVqdff:
.LVL41:
.LFB1455:
	.loc 1 397 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 411 3 view .LVU169
	.loc 1 411 18 is_stmt 0 view .LVU170
	ldr	r3, [r0]
	movs	r2, #0
	uxth	r1, r3
	bfi	r2, r1, #0, #16
	lsrs	r3, r3, #16
	bfi	r2, r3, #16, #16
	.loc 1 397 1 view .LVU171
	sub	sp, sp, #8
.LCFI15:
	.cfi_def_cfa_offset 8
	.loc 1 413 1 view .LVU172
	mov	r0, r2
.LVL42:
	.loc 1 413 1 view .LVU173
	add	sp, sp, #8
.LCFI16:
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE1455:
	.size	FF_GetVqdff, .-FF_GetVqdff
	.section	.text.FF_GetVqdAvPIout,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	FF_GetVqdAvPIout
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	FF_GetVqdAvPIout, %function
FF_GetVqdAvPIout:
.LVL43:
.LFB1456:
	.loc 1 422 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 436 3 view .LVU175
	.loc 1 436 18 is_stmt 0 view .LVU176
	ldr	r3, [r0, #8]
	movs	r2, #0
	uxth	r1, r3
	bfi	r2, r1, #0, #16
	lsrs	r3, r3, #16
	bfi	r2, r3, #16, #16
	.loc 1 422 1 view .LVU177
	sub	sp, sp, #8
.LCFI17:
	.cfi_def_cfa_offset 8
	.loc 1 438 1 view .LVU178
	mov	r0, r2
.LVL44:
	.loc 1 438 1 view .LVU179
	add	sp, sp, #8
.LCFI18:
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE1456:
	.size	FF_GetVqdAvPIout, .-FF_GetVqdAvPIout
	.text
.Letext0:
	.file 4 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/machine/_default_types.h"
	.file 5 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/sys/_stdint.h"
	.file 6 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_ll_tim.h"
	.file 7 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_ll_usart.h"
	.file 8 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_ll_dma.h"
	.file 9 "Inc/mc_type.h"
	.file 10 "MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Inc/speed_pos_fdbk.h"
	.file 11 "MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Inc/pid_regulator.h"
	.file 12 "MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Inc/feed_forward_ctrl.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xba3
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF154
	.byte	0xc
	.4byte	.LASF155
	.4byte	.LASF156
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x4
	.byte	0x2b
	.byte	0x18
	.4byte	0x3c
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x4
	.byte	0x37
	.byte	0x18
	.4byte	0x4f
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x4
	.byte	0x39
	.byte	0x19
	.4byte	0x62
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x4
	.byte	0x4d
	.byte	0x18
	.4byte	0x75
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x4
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
	.byte	0x5
	.byte	0x18
	.byte	0x13
	.4byte	0x30
	.uleb128 0x5
	.4byte	0xab
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x5
	.byte	0x20
	.byte	0x13
	.4byte	0x43
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x5
	.byte	0x24
	.byte	0x14
	.4byte	0x56
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x5
	.byte	0x2c
	.byte	0x13
	.4byte	0x69
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x5
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x6
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
	.byte	0x7
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
	.byte	0x8
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
	.byte	0x9
	.byte	0x7e
	.byte	0x9
	.4byte	0x225
	.uleb128 0xa
	.ascii	"q\000"
	.byte	0x9
	.byte	0x80
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.ascii	"d\000"
	.byte	0x9
	.byte	0x81
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x9
	.byte	0x82
	.byte	0x3
	.4byte	0x201
	.uleb128 0xb
	.byte	0x7
	.byte	0x1
	.4byte	0x3c
	.byte	0x9
	.byte	0xbf
	.byte	0x1
	.4byte	0x24c
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x9
	.byte	0xc1
	.byte	0x3
	.4byte	0x231
	.uleb128 0xb
	.byte	0x7
	.byte	0x1
	.4byte	0x3c
	.byte	0x9
	.byte	0xd9
	.byte	0x1
	.4byte	0x29d
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x2
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x3
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x6
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0x7
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0x9
	.byte	0xed
	.byte	0x3
	.4byte	0x258
	.uleb128 0x9
	.byte	0xc
	.byte	0x9
	.byte	0xf2
	.byte	0x9
	.4byte	0x2e0
	.uleb128 0xd
	.4byte	.LASF42
	.byte	0x9
	.byte	0xf4
	.byte	0xb
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.4byte	.LASF43
	.byte	0x9
	.byte	0xf5
	.byte	0xb
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.4byte	.LASF44
	.byte	0x9
	.byte	0xf6
	.byte	0xb
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF45
	.byte	0x9
	.byte	0xf7
	.byte	0x3
	.4byte	0x2a9
	.uleb128 0x9
	.byte	0xa
	.byte	0x3
	.byte	0x2c
	.byte	0x9
	.4byte	0x341
	.uleb128 0xd
	.4byte	.LASF46
	.byte	0x3
	.byte	0x2e
	.byte	0x10
	.4byte	0x24c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.4byte	.LASF47
	.byte	0x3
	.byte	0x32
	.byte	0xc
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xd
	.4byte	.LASF48
	.byte	0x3
	.byte	0x3b
	.byte	0xc
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.4byte	.LASF49
	.byte	0x3
	.byte	0x3d
	.byte	0xc
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xd
	.4byte	.LASF50
	.byte	0x3
	.byte	0x3f
	.byte	0xc
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF51
	.byte	0x3
	.byte	0x41
	.byte	0x3
	.4byte	0x2ec
	.uleb128 0x5
	.4byte	0x341
	.uleb128 0x9
	.byte	0x20
	.byte	0xa
	.byte	0x32
	.byte	0x9
	.4byte	0x44c
	.uleb128 0xd
	.4byte	.LASF52
	.byte	0xa
	.byte	0x35
	.byte	0xb
	.4byte	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.4byte	.LASF53
	.byte	0xa
	.byte	0x36
	.byte	0xb
	.4byte	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xd
	.4byte	.LASF54
	.byte	0xa
	.byte	0x38
	.byte	0xb
	.4byte	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xd
	.4byte	.LASF55
	.byte	0xa
	.byte	0x3a
	.byte	0xb
	.4byte	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xd
	.4byte	.LASF56
	.byte	0xa
	.byte	0x3b
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.4byte	.LASF57
	.byte	0xa
	.byte	0x3d
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xd
	.4byte	.LASF58
	.byte	0xa
	.byte	0x3e
	.byte	0xb
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.4byte	.LASF59
	.byte	0xa
	.byte	0x3f
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.4byte	.LASF60
	.byte	0xa
	.byte	0x41
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xd
	.4byte	.LASF61
	.byte	0xa
	.byte	0x44
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.4byte	.LASF62
	.byte	0xa
	.byte	0x46
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0xd
	.4byte	.LASF63
	.byte	0xa
	.byte	0x48
	.byte	0xc
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.4byte	.LASF64
	.byte	0xa
	.byte	0x4a
	.byte	0xc
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0xd
	.4byte	.LASF65
	.byte	0xa
	.byte	0x4c
	.byte	0xc
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.4byte	.LASF66
	.byte	0xa
	.byte	0x4f
	.byte	0xc
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0xd
	.4byte	.LASF67
	.byte	0xa
	.byte	0x51
	.byte	0xc
	.4byte	0xe0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0
	.uleb128 0x3
	.4byte	.LASF68
	.byte	0xa
	.byte	0x56
	.byte	0x3
	.4byte	0x352
	.uleb128 0x9
	.byte	0x2c
	.byte	0xb
	.byte	0x36
	.byte	0x9
	.4byte	0x570
	.uleb128 0xd
	.4byte	.LASF69
	.byte	0xb
	.byte	0x38
	.byte	0xd
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.4byte	.LASF70
	.byte	0xb
	.byte	0x3d
	.byte	0xd
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xd
	.4byte	.LASF71
	.byte	0xb
	.byte	0x42
	.byte	0xd
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.4byte	.LASF72
	.byte	0xb
	.byte	0x43
	.byte	0xd
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xd
	.4byte	.LASF73
	.byte	0xb
	.byte	0x44
	.byte	0xd
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.4byte	.LASF74
	.byte	0xb
	.byte	0x51
	.byte	0xd
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.4byte	.LASF75
	.byte	0xb
	.byte	0x55
	.byte	0xd
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.4byte	.LASF76
	.byte	0xb
	.byte	0x59
	.byte	0xd
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.4byte	.LASF77
	.byte	0xb
	.byte	0x5e
	.byte	0xd
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0xd
	.4byte	.LASF78
	.byte	0xb
	.byte	0x63
	.byte	0xd
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.4byte	.LASF79
	.byte	0xb
	.byte	0x6c
	.byte	0xd
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0xd
	.4byte	.LASF80
	.byte	0xb
	.byte	0x75
	.byte	0xd
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.4byte	.LASF81
	.byte	0xb
	.byte	0x7a
	.byte	0xd
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1e
	.uleb128 0xd
	.4byte	.LASF82
	.byte	0xb
	.byte	0x7f
	.byte	0xd
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.4byte	.LASF83
	.byte	0xb
	.byte	0x84
	.byte	0xd
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x22
	.uleb128 0xd
	.4byte	.LASF84
	.byte	0xb
	.byte	0x85
	.byte	0xd
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.4byte	.LASF85
	.byte	0xb
	.byte	0x8e
	.byte	0xd
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x26
	.uleb128 0xd
	.4byte	.LASF86
	.byte	0xb
	.byte	0x93
	.byte	0xd
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.4byte	.LASF87
	.byte	0xb
	.byte	0x9a
	.byte	0x3
	.4byte	0x458
	.uleb128 0x9
	.byte	0x34
	.byte	0x2
	.byte	0x34
	.byte	0x9
	.4byte	0x6a3
	.uleb128 0xd
	.4byte	.LASF88
	.byte	0x2
	.byte	0x36
	.byte	0x14
	.4byte	0x29d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.4byte	.LASF89
	.byte	0x2
	.byte	0x39
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xd
	.4byte	.LASF90
	.byte	0x2
	.byte	0x3a
	.byte	0xb
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.4byte	.LASF91
	.byte	0x2
	.byte	0x3c
	.byte	0xb
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.4byte	.LASF92
	.byte	0x2
	.byte	0x3e
	.byte	0xc
	.4byte	0xe0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.4byte	.LASF93
	.byte	0x2
	.byte	0x3f
	.byte	0x11
	.4byte	0x6a3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.ascii	"SPD\000"
	.byte	0x2
	.byte	0x40
	.byte	0x1b
	.4byte	0x6a9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.4byte	.LASF94
	.byte	0x2
	.byte	0x41
	.byte	0xb
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.4byte	.LASF95
	.byte	0x2
	.byte	0x43
	.byte	0xc
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.4byte	.LASF96
	.byte	0x2
	.byte	0x45
	.byte	0xc
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1e
	.uleb128 0xd
	.4byte	.LASF97
	.byte	0x2
	.byte	0x47
	.byte	0xc
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.4byte	.LASF98
	.byte	0x2
	.byte	0x49
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x22
	.uleb128 0xd
	.4byte	.LASF99
	.byte	0x2
	.byte	0x4b
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.4byte	.LASF100
	.byte	0x2
	.byte	0x4d
	.byte	0xc
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x26
	.uleb128 0xd
	.4byte	.LASF101
	.byte	0x2
	.byte	0x4f
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.4byte	.LASF102
	.byte	0x2
	.byte	0x51
	.byte	0x14
	.4byte	0x29d
	.byte	0x2
	.byte	0x23
	.uleb128 0x2a
	.uleb128 0xd
	.4byte	.LASF103
	.byte	0x2
	.byte	0x52
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.4byte	.LASF104
	.byte	0x2
	.byte	0x54
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x2e
	.uleb128 0xd
	.4byte	.LASF105
	.byte	0x2
	.byte	0x56
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x570
	.uleb128 0xe
	.byte	0x4
	.4byte	0x44c
	.uleb128 0x3
	.4byte	.LASF106
	.byte	0x2
	.byte	0x57
	.byte	0x3
	.4byte	0x57c
	.uleb128 0x9
	.byte	0x38
	.byte	0xc
	.byte	0x30
	.byte	0x9
	.4byte	0x797
	.uleb128 0xd
	.4byte	.LASF107
	.byte	0xc
	.byte	0x32
	.byte	0xa
	.4byte	0x225
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.4byte	.LASF108
	.byte	0xc
	.byte	0x33
	.byte	0xa
	.4byte	0x225
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.4byte	.LASF109
	.byte	0xc
	.byte	0x34
	.byte	0xa
	.4byte	0x225
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.4byte	.LASF110
	.byte	0xc
	.byte	0x35
	.byte	0xc
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.4byte	.LASF111
	.byte	0xc
	.byte	0x36
	.byte	0xc
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.4byte	.LASF112
	.byte	0xc
	.byte	0x37
	.byte	0xc
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.4byte	.LASF113
	.byte	0xc
	.byte	0x38
	.byte	0x1e
	.4byte	0x797
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.4byte	.LASF114
	.byte	0xc
	.byte	0x39
	.byte	0x11
	.4byte	0x6a3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.4byte	.LASF115
	.byte	0xc
	.byte	0x3a
	.byte	0x11
	.4byte	0x6a3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.4byte	.LASF116
	.byte	0xc
	.byte	0x3b
	.byte	0xc
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.4byte	.LASF117
	.byte	0xc
	.byte	0x44
	.byte	0xc
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.4byte	.LASF118
	.byte	0xc
	.byte	0x45
	.byte	0xc
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.4byte	.LASF119
	.byte	0xc
	.byte	0x46
	.byte	0xc
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.4byte	.LASF120
	.byte	0xc
	.byte	0x48
	.byte	0xc
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x341
	.uleb128 0x3
	.4byte	.LASF121
	.byte	0xc
	.byte	0x4c
	.byte	0x3
	.4byte	0x6bb
	.uleb128 0x5
	.4byte	0x79d
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF122
	.uleb128 0xf
	.byte	0x1
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x1a5
	.byte	0xd
	.byte	0x1
	.4byte	0x225
	.4byte	.LFB1456
	.4byte	.LFE1456
	.4byte	.LLST23
	.byte	0x1
	.4byte	0x7eb
	.uleb128 0x10
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x1a5
	.byte	0x31
	.4byte	0x7eb
	.4byte	.LLST24
	.4byte	.LVUS24
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x7a9
	.uleb128 0xf
	.byte	0x1
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x18c
	.byte	0xd
	.byte	0x1
	.4byte	0x225
	.4byte	.LFB1455
	.4byte	.LFE1455
	.4byte	.LLST21
	.byte	0x1
	.4byte	0x827
	.uleb128 0x10
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x18c
	.byte	0x2c
	.4byte	0x7eb
	.4byte	.LLST22
	.4byte	.LVUS22
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF126
	.byte	0x1
	.2byte	0x16f
	.byte	0x1a
	.byte	0x1
	.4byte	0x2e0
	.4byte	.LFB1454
	.4byte	.LFE1454
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x871
	.uleb128 0x10
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x16f
	.byte	0x39
	.4byte	0x871
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0x12
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x171
	.byte	0x15
	.4byte	0x2e0
	.4byte	.LLST20
	.4byte	.LVUS20
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x79d
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF128
	.byte	0x1
	.2byte	0x152
	.byte	0xd
	.byte	0x1
	.4byte	.LFB1453
	.4byte	.LFE1453
	.4byte	.LLST18
	.byte	0x1
	.4byte	0x8b3
	.uleb128 0x14
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x152
	.byte	0x2c
	.4byte	0x871
	.byte	0x1
	.byte	0x50
	.uleb128 0x14
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x152
	.byte	0x47
	.4byte	0x2e0
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x138
	.byte	0xd
	.byte	0x1
	.4byte	.LFB1452
	.4byte	.LFE1452
	.4byte	.LLST16
	.byte	0x1
	.4byte	0x908
	.uleb128 0x10
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x138
	.byte	0x36
	.4byte	0x871
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0x15
	.4byte	.LVL33
	.4byte	0xb8a
	.4byte	0x8f7
	.uleb128 0x16
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x17
	.4byte	.LVL35
	.byte	0x1
	.4byte	0xb8a
	.uleb128 0x16
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF130
	.byte	0x1
	.2byte	0x108
	.byte	0xd
	.byte	0x1
	.4byte	.LFB1451
	.4byte	.LFE1451
	.4byte	.LLST13
	.byte	0x1
	.4byte	0x95e
	.uleb128 0x14
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x108
	.byte	0x29
	.4byte	0x871
	.byte	0x1
	.byte	0x50
	.uleb128 0x12
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x112
	.byte	0xd
	.4byte	0xd4
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x12
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x113
	.byte	0xd
	.4byte	0xd4
	.4byte	.LLST15
	.4byte	.LVUS15
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF134
	.byte	0x1
	.byte	0xdb
	.byte	0xd
	.byte	0x1
	.4byte	0x225
	.4byte	.LFB1450
	.4byte	.LFE1450
	.4byte	.LLST11
	.byte	0x1
	.4byte	0x9b9
	.uleb128 0x19
	.4byte	.LASF125
	.byte	0x1
	.byte	0xdb
	.byte	0x2d
	.4byte	0x871
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x1a
	.ascii	"Vqd\000"
	.byte	0x1
	.byte	0xdb
	.byte	0x3b
	.4byte	0x225
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1b
	.4byte	.LASF135
	.byte	0x1
	.byte	0xdd
	.byte	0x8
	.4byte	0x225
	.uleb128 0x1b
	.4byte	.LASF136
	.byte	0x1
	.byte	0xe7
	.byte	0xd
	.4byte	0xd4
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF137
	.byte	0x1
	.byte	0x96
	.byte	0xd
	.byte	0x1
	.4byte	.LFB1449
	.4byte	.LFE1449
	.4byte	.LLST1
	.byte	0x1
	.4byte	0xac3
	.uleb128 0x19
	.4byte	.LASF125
	.byte	0x1
	.byte	0x96
	.byte	0x2e
	.4byte	0x871
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x1d
	.4byte	.LASF138
	.byte	0x1
	.byte	0x96
	.byte	0x3c
	.4byte	0x225
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x19
	.4byte	.LASF139
	.byte	0x1
	.byte	0x96
	.byte	0x5d
	.4byte	0xac3
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x1e
	.4byte	.LASF140
	.byte	0x1
	.byte	0xa0
	.byte	0xd
	.4byte	0xd4
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x1e
	.4byte	.LASF141
	.byte	0x1
	.byte	0xa0
	.byte	0x15
	.4byte	0xd4
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x1e
	.4byte	.LASF142
	.byte	0x1
	.byte	0xa1
	.byte	0xd
	.4byte	0xbc
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x1e
	.4byte	.LASF143
	.byte	0x1
	.byte	0xa2
	.byte	0xe
	.4byte	0xc8
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x1e
	.4byte	.LASF144
	.byte	0x1
	.byte	0xa3
	.byte	0x1d
	.4byte	0x6a9
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x1f
	.4byte	0xb46
	.4byte	.LBI6
	.byte	.LVU23
	.4byte	.LBB6
	.4byte	.LBE6
	.byte	0x1
	.byte	0xa5
	.byte	0x13
	.4byte	0xa96
	.uleb128 0x20
	.4byte	0xb58
	.4byte	.LLST9
	.4byte	.LVUS9
	.byte	0
	.uleb128 0x21
	.4byte	0xb65
	.4byte	.LBI8
	.byte	.LVU34
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xa7
	.byte	0x17
	.4byte	0xab9
	.uleb128 0x20
	.4byte	0xb77
	.4byte	.LLST10
	.4byte	.LVUS10
	.byte	0
	.uleb128 0x22
	.4byte	.LVL4
	.4byte	0xb98
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x6af
	.uleb128 0x23
	.byte	0x1
	.4byte	.LASF145
	.byte	0x1
	.byte	0x7c
	.byte	0xd
	.byte	0x1
	.4byte	.LFB1448
	.4byte	.LFE1448
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0xaf2
	.uleb128 0x1d
	.4byte	.LASF125
	.byte	0x1
	.byte	0x7c
	.byte	0x23
	.4byte	0x871
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF146
	.byte	0x1
	.byte	0x5e
	.byte	0xd
	.byte	0x1
	.4byte	.LFB1447
	.4byte	.LFE1447
	.4byte	.LLST0
	.byte	0x1
	.4byte	0xb46
	.uleb128 0x1d
	.4byte	.LASF125
	.byte	0x1
	.byte	0x5e
	.byte	0x22
	.4byte	0x871
	.byte	0x1
	.byte	0x50
	.uleb128 0x1d
	.4byte	.LASF147
	.byte	0x1
	.byte	0x5e
	.byte	0x46
	.4byte	0x797
	.byte	0x1
	.byte	0x51
	.uleb128 0x1d
	.4byte	.LASF148
	.byte	0x1
	.byte	0x5e
	.byte	0x60
	.4byte	0x6a3
	.byte	0x1
	.byte	0x52
	.uleb128 0x1d
	.4byte	.LASF149
	.byte	0x1
	.byte	0x5f
	.byte	0x23
	.4byte	0x6a3
	.byte	0x1
	.byte	0x53
	.byte	0
	.uleb128 0x24
	.4byte	.LASF150
	.byte	0x2
	.byte	0xf0
	.byte	0x27
	.byte	0x1
	.4byte	0x6a9
	.byte	0x3
	.4byte	0xb65
	.uleb128 0x25
	.4byte	.LASF125
	.byte	0x2
	.byte	0xf0
	.byte	0x53
	.4byte	0xac3
	.byte	0
	.uleb128 0x24
	.4byte	.LASF151
	.byte	0x3
	.byte	0x4d
	.byte	0x18
	.byte	0x1
	.4byte	0xc8
	.byte	0x3
	.4byte	0xb84
	.uleb128 0x25
	.4byte	.LASF125
	.byte	0x3
	.byte	0x4d
	.byte	0x4f
	.4byte	0xb84
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x34d
	.uleb128 0x26
	.byte	0x1
	.byte	0x1
	.4byte	.LASF152
	.4byte	.LASF152
	.byte	0xb
	.byte	0xb2
	.byte	0x6
	.uleb128 0x26
	.byte	0x1
	.byte	0x1
	.4byte	.LASF153
	.4byte	.LASF153
	.byte	0xa
	.byte	0x67
	.byte	0x9
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
	.uleb128 0x12
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x1a
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
.LLST23:
	.4byte	.LFB1456
	.4byte	.LCFI17
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI17
	.4byte	.LCFI18
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI18
	.4byte	.LFE1456
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS24:
	.uleb128 0
	.uleb128 .LVU179
	.uleb128 .LVU179
	.uleb128 0
.LLST24:
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL44
	.4byte	.LFE1456
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LFB1455
	.4byte	.LCFI15
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI15
	.4byte	.LCFI16
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI16
	.4byte	.LFE1455
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS22:
	.uleb128 0
	.uleb128 .LVU173
	.uleb128 .LVU173
	.uleb128 0
.LLST22:
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL42
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
	.uleb128 .LVU166
	.uleb128 .LVU166
	.uleb128 0
.LLST19:
	.4byte	.LVL37
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL39
	.4byte	.LFE1454
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS20:
	.uleb128 .LVU160
	.uleb128 .LVU161
	.uleb128 .LVU161
	.uleb128 .LVU164
	.uleb128 .LVU164
	.uleb128 .LVU166
	.uleb128 .LVU166
	.uleb128 .LVU167
.LLST20:
	.4byte	.LVL37
	.4byte	.LVL37
	.2byte	0x6
	.byte	0x71
	.sleb128 12
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0xa
	.byte	0x71
	.sleb128 12
	.byte	0x93
	.uleb128 0x4
	.byte	0x71
	.sleb128 16
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0xb
	.byte	0x71
	.sleb128 12
	.byte	0x93
	.uleb128 0x4
	.byte	0x71
	.sleb128 16
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0xa
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.byte	0x70
	.sleb128 4
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LFB1453
	.4byte	.LCFI13
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI13
	.4byte	.LCFI14
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI14
	.4byte	.LFE1453
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LFB1452
	.4byte	.LCFI11
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI11
	.4byte	.LCFI12
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI12
	.4byte	.LFE1452
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS17:
	.uleb128 0
	.uleb128 .LVU144
	.uleb128 .LVU144
	.uleb128 .LVU148
	.uleb128 .LVU148
	.uleb128 0
.LLST17:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL34
	.4byte	.LFE1452
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LFB1451
	.4byte	.LCFI10
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI10
	.4byte	.LFE1451
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LVUS14:
	.uleb128 .LVU123
	.uleb128 .LVU124
	.uleb128 .LVU124
	.uleb128 .LVU133
	.uleb128 .LVU133
	.uleb128 .LVU134
	.uleb128 .LVU134
	.uleb128 0
.LLST14:
	.4byte	.LVL29
	.4byte	.LVL29
	.2byte	0x6
	.byte	0x71
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0xf
	.byte	0x71
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1e
	.byte	0x70
	.sleb128 4
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL30
	.2byte	0x6
	.byte	0x71
	.sleb128 0
	.byte	0x7e
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LFE1451
	.2byte	0xf
	.byte	0x71
	.sleb128 0
	.byte	0x7e
	.sleb128 0
	.byte	0x1e
	.byte	0x70
	.sleb128 6
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS15:
	.uleb128 .LVU121
	.uleb128 0
.LLST15:
	.4byte	.LVL28
	.4byte	.LFE1451
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LFB1450
	.4byte	.LCFI7
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI7
	.4byte	.LCFI8
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI8
	.4byte	.LCFI9
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	.LCFI9
	.4byte	.LFE1450
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LVUS12:
	.uleb128 0
	.uleb128 .LVU101
	.uleb128 .LVU101
	.uleb128 0
.LLST12:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL25
	.4byte	.LFE1450
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LFB1449
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
	.4byte	.LCFI4
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI4
	.4byte	.LCFI5
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI5
	.4byte	.LCFI6
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI6
	.4byte	.LFE1449
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU29
	.uleb128 .LVU29
	.uleb128 .LVU86
	.uleb128 .LVU86
	.uleb128 0
.LLST2:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL3
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL23
	.4byte	.LFE1449
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU31
	.uleb128 .LVU31
	.uleb128 0
.LLST3:
	.4byte	.LVL2
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4-1
	.4byte	.LFE1449
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU41
	.uleb128 .LVU54
	.uleb128 .LVU54
	.uleb128 .LVU65
	.uleb128 .LVU65
	.uleb128 .LVU83
.LLST4:
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x14
	.byte	0x91
	.sleb128 -10
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1e
	.byte	0xa
	.2byte	0x8000
	.byte	0x1b
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL13
	.2byte	0x10
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x74
	.sleb128 20
	.byte	0x6
	.byte	0x1e
	.byte	0x7e
	.sleb128 0
	.byte	0x1b
	.byte	0x34
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL22
	.2byte	0x14
	.byte	0x91
	.sleb128 -12
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1e
	.byte	0xa
	.2byte	0x8000
	.byte	0x1b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 .LVU52
	.uleb128 .LVU53
	.uleb128 .LVU53
	.uleb128 .LVU55
	.uleb128 .LVU55
	.uleb128 .LVU57
	.uleb128 .LVU57
	.uleb128 .LVU60
	.uleb128 .LVU60
	.uleb128 .LVU63
	.uleb128 .LVU63
	.uleb128 .LVU67
	.uleb128 .LVU67
	.uleb128 .LVU71
	.uleb128 .LVU71
	.uleb128 .LVU72
	.uleb128 .LVU72
	.uleb128 .LVU73
	.uleb128 .LVU73
	.uleb128 .LVU75
	.uleb128 .LVU75
	.uleb128 .LVU76
	.uleb128 .LVU77
	.uleb128 .LVU78
	.uleb128 .LVU78
	.uleb128 .LVU81
	.uleb128 .LVU81
	.uleb128 .LVU83
.LLST5:
	.4byte	.LVL9
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL9
	.4byte	.LVL9
	.2byte	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x14
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x73
	.sleb128 0
	.byte	0x1e
	.byte	0x7e
	.sleb128 0
	.byte	0x1b
	.byte	0x34
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x15
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x74
	.sleb128 20
	.byte	0x6
	.byte	0x1e
	.byte	0x7e
	.sleb128 0
	.byte	0x1b
	.byte	0x34
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0xf
	.byte	0x71
	.sleb128 0
	.byte	0x12
	.byte	0xa
	.2byte	0x7fff
	.byte	0x16
	.byte	0x14
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x155
	.byte	0x73
	.sleb128 0
	.byte	0x91
	.sleb128 -10
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1e
	.byte	0x23
	.uleb128 0x7f80
	.byte	0x91
	.sleb128 -10
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1e
	.byte	0x91
	.sleb128 -10
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1e
	.byte	0x30
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x23
	.uleb128 0x7f
	.byte	0x91
	.sleb128 -10
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1e
	.byte	0x23
	.uleb128 0x7f80
	.byte	0x91
	.sleb128 -10
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1e
	.byte	0x91
	.sleb128 -10
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1e
	.byte	0x30
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x91
	.sleb128 -10
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1e
	.byte	0x30
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x3f
	.byte	0x26
	.byte	0x74
	.sleb128 12
	.byte	0x6
	.byte	0x1e
	.byte	0x7e
	.sleb128 0
	.byte	0x1b
	.byte	0x31
	.byte	0x24
	.byte	0x74
	.sleb128 20
	.byte	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x1e
	.byte	0x7e
	.sleb128 0
	.byte	0x1b
	.byte	0x34
	.byte	0x24
	.byte	0x22
	.byte	0x91
	.sleb128 -10
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1e
	.byte	0x23
	.uleb128 0x7f80
	.byte	0x91
	.sleb128 -10
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1e
	.byte	0x91
	.sleb128 -10
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1e
	.byte	0x30
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x23
	.uleb128 0x7f
	.byte	0x91
	.sleb128 -10
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1e
	.byte	0x23
	.uleb128 0x7f80
	.byte	0x91
	.sleb128 -10
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1e
	.byte	0x91
	.sleb128 -10
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1e
	.byte	0x30
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x91
	.sleb128 -10
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1e
	.byte	0x30
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x3f
	.byte	0x26
	.byte	0x74
	.sleb128 12
	.byte	0x6
	.byte	0x1e
	.byte	0x7e
	.sleb128 0
	.byte	0x1b
	.byte	0x31
	.byte	0x24
	.byte	0x74
	.sleb128 20
	.byte	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x1e
	.byte	0x7e
	.sleb128 0
	.byte	0x1b
	.byte	0x34
	.byte	0x24
	.byte	0x22
	.byte	0x73
	.sleb128 0
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x12
	.byte	0xa
	.2byte	0x7fff
	.byte	0x16
	.byte	0x14
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x157
	.byte	0xb
	.2byte	0x8001
	.byte	0x91
	.sleb128 -10
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1e
	.byte	0x23
	.uleb128 0x7f80
	.byte	0x91
	.sleb128 -10
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1e
	.byte	0x91
	.sleb128 -10
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1e
	.byte	0x30
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x23
	.uleb128 0x7f
	.byte	0x91
	.sleb128 -10
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1e
	.byte	0x23
	.uleb128 0x7f80
	.byte	0x91
	.sleb128 -10
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1e
	.byte	0x91
	.sleb128 -10
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1e
	.byte	0x30
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x91
	.sleb128 -10
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1e
	.byte	0x30
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x3f
	.byte	0x26
	.byte	0x74
	.sleb128 12
	.byte	0x6
	.byte	0x1e
	.byte	0x7e
	.sleb128 0
	.byte	0x1b
	.byte	0x31
	.byte	0x24
	.byte	0x74
	.sleb128 20
	.byte	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x1e
	.byte	0x7e
	.sleb128 0
	.byte	0x1b
	.byte	0x34
	.byte	0x24
	.byte	0x22
	.byte	0x91
	.sleb128 -10
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1e
	.byte	0x23
	.uleb128 0x7f80
	.byte	0x91
	.sleb128 -10
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1e
	.byte	0x91
	.sleb128 -10
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1e
	.byte	0x30
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x23
	.uleb128 0x7f
	.byte	0x91
	.sleb128 -10
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1e
	.byte	0x23
	.uleb128 0x7f80
	.byte	0x91
	.sleb128 -10
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1e
	.byte	0x91
	.sleb128 -10
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1e
	.byte	0x30
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x91
	.sleb128 -10
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1e
	.byte	0x30
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x3f
	.byte	0x26
	.byte	0x74
	.sleb128 12
	.byte	0x6
	.byte	0x1e
	.byte	0x7e
	.sleb128 0
	.byte	0x1b
	.byte	0x31
	.byte	0x24
	.byte	0x74
	.sleb128 20
	.byte	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x1e
	.byte	0x7e
	.sleb128 0
	.byte	0x1b
	.byte	0x34
	.byte	0x24
	.byte	0x22
	.byte	0xb
	.2byte	0x8001
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x12
	.byte	0xa
	.2byte	0x7fff
	.byte	0x16
	.byte	0x14
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x155
	.byte	0x71
	.sleb128 0
	.byte	0x91
	.sleb128 -10
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1e
	.byte	0x23
	.uleb128 0x7f80
	.byte	0x91
	.sleb128 -10
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1e
	.byte	0x91
	.sleb128 -10
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1e
	.byte	0x30
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x23
	.uleb128 0x7f
	.byte	0x91
	.sleb128 -10
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1e
	.byte	0x23
	.uleb128 0x7f80
	.byte	0x91
	.sleb128 -10
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1e
	.byte	0x91
	.sleb128 -10
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1e
	.byte	0x30
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x91
	.sleb128 -10
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1e
	.byte	0x30
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x3f
	.byte	0x26
	.byte	0x74
	.sleb128 12
	.byte	0x6
	.byte	0x1e
	.byte	0x7e
	.sleb128 0
	.byte	0x1b
	.byte	0x31
	.byte	0x24
	.byte	0x74
	.sleb128 20
	.byte	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x1e
	.byte	0x7e
	.sleb128 0
	.byte	0x1b
	.byte	0x34
	.byte	0x24
	.byte	0x22
	.byte	0x91
	.sleb128 -10
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1e
	.byte	0x23
	.uleb128 0x7f80
	.byte	0x91
	.sleb128 -10
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1e
	.byte	0x91
	.sleb128 -10
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1e
	.byte	0x30
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x23
	.uleb128 0x7f
	.byte	0x91
	.sleb128 -10
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1e
	.byte	0x23
	.uleb128 0x7f80
	.byte	0x91
	.sleb128 -10
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1e
	.byte	0x91
	.sleb128 -10
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1e
	.byte	0x30
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x91
	.sleb128 -10
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1e
	.byte	0x30
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x3f
	.byte	0x26
	.byte	0x74
	.sleb128 12
	.byte	0x6
	.byte	0x1e
	.byte	0x7e
	.sleb128 0
	.byte	0x1b
	.byte	0x31
	.byte	0x24
	.byte	0x74
	.sleb128 20
	.byte	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x1e
	.byte	0x7e
	.sleb128 0
	.byte	0x1b
	.byte	0x34
	.byte	0x24
	.byte	0x22
	.byte	0x71
	.sleb128 0
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x12
	.byte	0xa
	.2byte	0x7fff
	.byte	0x16
	.byte	0x14
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x9
	.byte	0xfe
	.byte	0x1e
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0xf
	.byte	0x73
	.sleb128 0
	.byte	0x3f
	.byte	0x26
	.byte	0x74
	.sleb128 16
	.byte	0x6
	.byte	0x1e
	.byte	0x7e
	.sleb128 0
	.byte	0x1b
	.byte	0x9
	.byte	0xfe
	.byte	0x1e
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x45
	.byte	0x91
	.sleb128 -12
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1e
	.byte	0x23
	.uleb128 0x7fff
	.byte	0x91
	.sleb128 -12
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1e
	.byte	0x91
	.sleb128 -12
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1e
	.byte	0x30
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x3f
	.byte	0x26
	.byte	0x74
	.sleb128 16
	.byte	0x6
	.byte	0x1e
	.byte	0x7e
	.sleb128 0
	.byte	0x1b
	.byte	0x9
	.byte	0xfe
	.byte	0x1e
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0xf
	.byte	0x73
	.sleb128 0
	.byte	0x12
	.byte	0xa
	.2byte	0x7fff
	.byte	0x16
	.byte	0x14
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0xa7
	.byte	0x71
	.sleb128 0
	.byte	0x91
	.sleb128 -12
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1e
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x91
	.sleb128 -12
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1e
	.byte	0x91
	.sleb128 -12
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1e
	.byte	0x30
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x3f
	.byte	0x26
	.byte	0x74
	.sleb128 16
	.byte	0x6
	.byte	0x1e
	.byte	0x7e
	.sleb128 0
	.byte	0x1b
	.byte	0xc
	.4byte	0x7fffffff
	.byte	0x1e
	.byte	0x31
	.byte	0x24
	.byte	0x91
	.sleb128 -12
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1e
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x91
	.sleb128 -12
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1e
	.byte	0x91
	.sleb128 -12
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1e
	.byte	0x30
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x3f
	.byte	0x26
	.byte	0x74
	.sleb128 16
	.byte	0x6
	.byte	0x1e
	.byte	0x7e
	.sleb128 0
	.byte	0x1b
	.byte	0xc
	.4byte	0x7fffffff
	.byte	0x1e
	.byte	0x31
	.byte	0x24
	.byte	0x71
	.sleb128 0
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x12
	.byte	0xa
	.2byte	0x7fff
	.byte	0x16
	.byte	0x14
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 .LVU32
	.uleb128 0
.LLST6:
	.4byte	.LVL5
	.4byte	.LFE1449
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 .LVU37
	.uleb128 .LVU49
	.uleb128 .LVU49
	.uleb128 .LVU83
	.uleb128 .LVU83
	.uleb128 0
.LLST7:
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x31
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL22
	.2byte	0xa
	.byte	0x74
	.sleb128 24
	.byte	0x6
	.byte	0x23
	.uleb128 0x6
	.byte	0x94
	.byte	0x2
	.byte	0x31
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LFE1449
	.2byte	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x31
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 .LVU25
	.uleb128 .LVU31
.LLST8:
	.4byte	.LVL2
	.4byte	.LVL4-1
	.2byte	0x2
	.byte	0x72
	.sleb128 20
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 .LVU23
	.uleb128 .LVU25
.LLST9:
	.4byte	.LVL2
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 .LVU34
	.uleb128 .LVU37
.LLST10:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LFB1447
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
	.4byte	.LFE1447
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x64
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB1447
	.4byte	.LFE1447-.LFB1447
	.4byte	.LFB1448
	.4byte	.LFE1448-.LFB1448
	.4byte	.LFB1449
	.4byte	.LFE1449-.LFB1449
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	.LBB11
	.4byte	.LBE11
	.4byte	0
	.4byte	0
	.4byte	.LFB1447
	.4byte	.LFE1447
	.4byte	.LFB1448
	.4byte	.LFE1448
	.4byte	.LFB1449
	.4byte	.LFE1449
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF47:
	.ascii	"ConversionFactor\000"
.LASF108:
	.ascii	"VqdPIout\000"
.LASF123:
	.ascii	"FF_GetVqdAvPIout\000"
.LASF100:
	.ascii	"MaxPositiveTorque\000"
.LASF33:
	.ascii	"MCM_OPEN_LOOP_VOLTAGE_MODE\000"
.LASF2:
	.ascii	"__uint8_t\000"
.LASF49:
	.ascii	"AvBusVoltage_d\000"
.LASF126:
	.ascii	"FF_GetFFConstants\000"
.LASF80:
	.ascii	"hKpDivisorPOW2\000"
.LASF34:
	.ascii	"MCM_OPEN_LOOP_CURRENT_MODE\000"
.LASF146:
	.ascii	"FF_Init\000"
.LASF51:
	.ascii	"BusVoltageSensor_Handle_t\000"
.LASF148:
	.ascii	"pPIDId\000"
.LASF54:
	.ascii	"SpeedUnit\000"
.LASF136:
	.ascii	"wtemp\000"
.LASF83:
	.ascii	"hKdGain\000"
.LASF12:
	.ascii	"long long unsigned int\000"
.LASF149:
	.ascii	"pPIDIq\000"
.LASF135:
	.ascii	"lVqd\000"
.LASF81:
	.ascii	"hKiDivisorPOW2\000"
.LASF96:
	.ascii	"MaxAppPositiveMecSpeedUnit\000"
.LASF23:
	.ascii	"SHIFT_TAB_CCxP\000"
.LASF15:
	.ascii	"int16_t\000"
.LASF11:
	.ascii	"long long int\000"
.LASF0:
	.ascii	"signed char\000"
.LASF114:
	.ascii	"pPID_q\000"
.LASF86:
	.ascii	"wPrevProcessVarError\000"
.LASF90:
	.ascii	"SpeedRefUnitExt\000"
.LASF134:
	.ascii	"FF_VqdConditioning\000"
.LASF69:
	.ascii	"hDefKpGain\000"
.LASF20:
	.ascii	"OFFSET_TAB_CCMRx\000"
.LASF79:
	.ascii	"hKiDivisor\000"
.LASF66:
	.ascii	"hMeasurementFrequency\000"
.LASF8:
	.ascii	"long int\000"
.LASF36:
	.ascii	"MCM_TORQUE_MODE\000"
.LASF53:
	.ascii	"bElToMecRatio\000"
.LASF44:
	.ascii	"wConst_2\000"
.LASF68:
	.ascii	"SpeednPosFdbk_Handle_t\000"
.LASF99:
	.ascii	"MinAppNegativeMecSpeedUnit\000"
.LASF72:
	.ascii	"hKiGain\000"
.LASF16:
	.ascii	"uint16_t\000"
.LASF124:
	.ascii	"FF_GetVqdff\000"
.LASF58:
	.ascii	"wMecAngle\000"
.LASF154:
	.ascii	"GNU C17 10.2.1 20201103 (release) -mcpu=cortex-m4 -"
	.ascii	"mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=hard -march=ar"
	.ascii	"mv7e-m+fp -g -gdwarf-2 -O3 -fdata-sections -ffuncti"
	.ascii	"on-sections\000"
.LASF130:
	.ascii	"FF_DataProcess\000"
.LASF115:
	.ascii	"pPID_d\000"
.LASF88:
	.ascii	"Mode\000"
.LASF9:
	.ascii	"__uint32_t\000"
.LASF73:
	.ascii	"wIntegralTerm\000"
.LASF127:
	.ascii	"sNewConstants\000"
.LASF82:
	.ascii	"hDefKdGain\000"
.LASF3:
	.ascii	"__int16_t\000"
.LASF144:
	.ascii	"SpeedSensor\000"
.LASF45:
	.ascii	"FF_TuningStruct_t\000"
.LASF46:
	.ascii	"SensorType\000"
.LASF50:
	.ascii	"FaultState\000"
.LASF63:
	.ascii	"hMaxReliableMecSpeedUnit\000"
.LASF39:
	.ascii	"MCM_POSITION_MODE\000"
.LASF117:
	.ascii	"wDefConstant_1D\000"
.LASF92:
	.ascii	"RampRemainingStep\000"
.LASF139:
	.ascii	"pSTC\000"
.LASF91:
	.ascii	"TorqueRef\000"
.LASF13:
	.ascii	"unsigned int\000"
.LASF25:
	.ascii	"USART_PRESCALER_TAB\000"
.LASF118:
	.ascii	"wDefConstant_1Q\000"
.LASF78:
	.ascii	"hKpDivisor\000"
.LASF102:
	.ascii	"ModeDefault\000"
.LASF10:
	.ascii	"long unsigned int\000"
.LASF31:
	.ascii	"SensorType_t\000"
.LASF116:
	.ascii	"hVqdLowPassFilterBW\000"
.LASF98:
	.ascii	"MaxAppNegativeMecSpeedUnit\000"
.LASF143:
	.ascii	"hAvBusVoltage_d\000"
.LASF67:
	.ascii	"DPPConvFactor\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF156:
	.ascii	"/home/joel/share/EVSPIN32G4_Shinano\000"
.LASF131:
	.ascii	"LocalConstants\000"
.LASF93:
	.ascii	"PISpeed\000"
.LASF87:
	.ascii	"PID_Handle_t\000"
.LASF30:
	.ascii	"VIRTUAL_SENSOR\000"
.LASF37:
	.ascii	"MCM_PROFILING_MODE\000"
.LASF119:
	.ascii	"wDefConstant_2\000"
.LASF48:
	.ascii	"LatestConv\000"
.LASF22:
	.ascii	"SHIFT_TAB_ICxx\000"
.LASF61:
	.ascii	"InstantaneousElSpeedDpp\000"
.LASF52:
	.ascii	"bSpeedErrorNumber\000"
.LASF103:
	.ascii	"MecSpeedRefUnitDefault\000"
.LASF77:
	.ascii	"hLowerOutputLimit\000"
.LASF113:
	.ascii	"pBus_Sensor\000"
.LASF151:
	.ascii	"VBS_GetAvBusVoltage_d\000"
.LASF137:
	.ascii	"FF_VqdffComputation\000"
.LASF38:
	.ascii	"MCM_SHORTED_MODE\000"
.LASF62:
	.ascii	"hMecAccelUnitP\000"
.LASF132:
	.ascii	"wAux\000"
.LASF125:
	.ascii	"pHandle\000"
.LASF75:
	.ascii	"wLowerIntegralLimit\000"
.LASF112:
	.ascii	"wConstant_2\000"
.LASF120:
	.ascii	"hVqdLowPassFilterBWLOG\000"
.LASF65:
	.ascii	"hMaxReliableMecAccelUnitP\000"
.LASF85:
	.ascii	"hKdDivisorPOW2\000"
.LASF152:
	.ascii	"PID_SetIntegralTerm\000"
.LASF27:
	.ascii	"float\000"
.LASF110:
	.ascii	"wConstant_1D\000"
.LASF107:
	.ascii	"Vqdff\000"
.LASF64:
	.ascii	"hMinReliableMecSpeedUnit\000"
.LASF128:
	.ascii	"FF_SetFFConstants\000"
.LASF111:
	.ascii	"wConstant_1Q\000"
.LASF71:
	.ascii	"hKpGain\000"
.LASF122:
	.ascii	"_Bool\000"
.LASF17:
	.ascii	"int32_t\000"
.LASF40:
	.ascii	"MCM_MODE_NUM\000"
.LASF133:
	.ascii	"lowPassFilterBW\000"
.LASF35:
	.ascii	"MCM_SPEED_MODE\000"
.LASF4:
	.ascii	"short int\000"
.LASF84:
	.ascii	"hKdDivisor\000"
.LASF28:
	.ascii	"qd_t\000"
.LASF140:
	.ascii	"wtemp1\000"
.LASF141:
	.ascii	"wtemp2\000"
.LASF94:
	.ascii	"IncDecAmount\000"
.LASF155:
	.ascii	"MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Src/"
	.ascii	"feed_forward_ctrl.c\000"
.LASF121:
	.ascii	"FF_Handle_t\000"
.LASF105:
	.ascii	"IdrefDefault\000"
.LASF19:
	.ascii	"long double\000"
.LASF145:
	.ascii	"FF_Clear\000"
.LASF29:
	.ascii	"REAL_SENSOR\000"
.LASF106:
	.ascii	"SpeednTorqCtrl_Handle_t\000"
.LASF70:
	.ascii	"hDefKiGain\000"
.LASF5:
	.ascii	"__uint16_t\000"
.LASF41:
	.ascii	"MC_ControlMode_t\000"
.LASF150:
	.ascii	"STC_GetSpeedSensor\000"
.LASF7:
	.ascii	"__int32_t\000"
.LASF101:
	.ascii	"MinNegativeTorque\000"
.LASF21:
	.ascii	"SHIFT_TAB_OCxx\000"
.LASF26:
	.ascii	"CHANNEL_OFFSET_TAB\000"
.LASF76:
	.ascii	"hUpperOutputLimit\000"
.LASF59:
	.ascii	"hAvrMecSpeedUnit\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF153:
	.ascii	"SPD_GetElSpeedDpp\000"
.LASF138:
	.ascii	"Iqdref\000"
.LASF24:
	.ascii	"SHIFT_TAB_OISx\000"
.LASF74:
	.ascii	"wUpperIntegralLimit\000"
.LASF89:
	.ascii	"TargetFinal\000"
.LASF32:
	.ascii	"MCM_OBSERVING_MODE\000"
.LASF55:
	.ascii	"bMaximumSpeedErrorsNumber\000"
.LASF14:
	.ascii	"uint8_t\000"
.LASF60:
	.ascii	"hElSpeedDpp\000"
.LASF57:
	.ascii	"hMecAngle\000"
.LASF56:
	.ascii	"hElAngle\000"
.LASF95:
	.ascii	"STCFrequencyHz\000"
.LASF147:
	.ascii	"pBusSensor\000"
.LASF104:
	.ascii	"TorqueRefDefault\000"
.LASF142:
	.ascii	"hSpeed_dpp\000"
.LASF42:
	.ascii	"wConst_1D\000"
.LASF109:
	.ascii	"VqdAvPIout\000"
.LASF18:
	.ascii	"uint32_t\000"
.LASF97:
	.ascii	"MinAppPositiveMecSpeedUnit\000"
.LASF43:
	.ascii	"wConst_1Q\000"
.LASF129:
	.ascii	"FF_InitFOCAdditionalMethods\000"
	.ident	"GCC: (GNU Arm Embedded Toolchain 10-2020-q4-major) 10.2.1 20201103 (release)"
