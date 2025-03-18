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
	.file	"stm32g4xx_hal.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.HAL_MspInit,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	HAL_MspInit
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_MspInit, %function
HAL_MspInit:
.LFB134:
	.file 1 "Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal.c"
	.loc 1 222 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 226 1 view .LVU1
	bx	lr
	.cfi_endproc
.LFE134:
	.size	HAL_MspInit, .-HAL_MspInit
	.section	.text.HAL_MspDeInit,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	HAL_MspDeInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_MspDeInit, %function
HAL_MspDeInit:
.LFB172:
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.cfi_endproc
.LFE172:
	.size	HAL_MspDeInit, .-HAL_MspDeInit
	.section	.text.HAL_DeInit,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_DeInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_DeInit, %function
HAL_DeInit:
.LFB133:
	.loc 1 193 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 195 3 view .LVU3
	.loc 1 193 1 is_stmt 0 view .LVU4
	push	{r4, lr}
.LCFI0:
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 195 3 view .LVU5
	ldr	r3, .L6
	.loc 1 196 3 view .LVU6
	movs	r4, #0
	.loc 1 195 3 view .LVU7
	mov	r2, #-1
	str	r2, [r3, #56]
	.loc 1 196 3 is_stmt 1 view .LVU8
	str	r4, [r3, #56]
	.loc 1 198 3 view .LVU9
	str	r2, [r3, #64]
	.loc 1 199 3 view .LVU10
	str	r4, [r3, #64]
	.loc 1 201 3 view .LVU11
	str	r2, [r3, #40]
	.loc 1 202 3 view .LVU12
	str	r4, [r3, #40]
	.loc 1 204 3 view .LVU13
	str	r2, [r3, #44]
	.loc 1 205 3 view .LVU14
	str	r4, [r3, #44]
	.loc 1 207 3 view .LVU15
	str	r2, [r3, #48]
	.loc 1 208 3 view .LVU16
	str	r4, [r3, #48]
	.loc 1 211 3 view .LVU17
	bl	HAL_MspDeInit
.LVL0:
	.loc 1 214 3 view .LVU18
	.loc 1 215 1 is_stmt 0 view .LVU19
	mov	r0, r4
	pop	{r4, pc}
.L7:
	.align	2
.L6:
	.word	1073876992
	.cfi_endproc
.LFE133:
	.size	HAL_DeInit, .-HAL_DeInit
	.section	.text.HAL_InitTick,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	HAL_InitTick
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_InitTick, %function
HAL_InitTick:
.LVL1:
.LFB136:
	.loc 1 256 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 257 3 view .LVU21
	.loc 1 259 3 view .LVU22
	.loc 1 256 1 is_stmt 0 view .LVU23
	push	{r3, r4, r5, lr}
.LCFI1:
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	.loc 1 259 18 view .LVU24
	ldr	r3, .L13
	ldr	r3, [r3]
	.loc 1 259 6 view .LVU25
	cbnz	r3, .L9
.LVL2:
.L11:
	.loc 1 282 12 view .LVU26
	movs	r0, #1
.LVL3:
	.loc 1 286 3 is_stmt 1 view .LVU27
	.loc 1 287 1 is_stmt 0 view .LVU28
	pop	{r3, r4, r5, pc}
.LVL4:
.L9:
	.loc 1 262 5 is_stmt 1 view .LVU29
	.loc 1 262 9 is_stmt 0 view .LVU30
	ldr	r1, .L13+4
	.loc 1 262 53 view .LVU31
	mov	r2, #1000
	mov	r5, r0
	udiv	r3, r2, r3
	.loc 1 262 9 view .LVU32
	ldr	r0, [r1]
.LVL5:
	.loc 1 262 9 view .LVU33
	udiv	r0, r0, r3
	bl	HAL_SYSTICK_Config
.LVL6:
	.loc 1 262 8 view .LVU34
	mov	r4, r0
	cmp	r0, #0
	bne	.L11
	.loc 1 265 7 is_stmt 1 view .LVU35
	.loc 1 265 10 is_stmt 0 view .LVU36
	cmp	r5, #15
	bhi	.L11
.LVL7:
.LBB4:
.LBI4:
	.loc 1 255 26 is_stmt 1 view .LVU37
.LBB5:
	.loc 1 267 9 view .LVU38
	mov	r2, r0
	mov	r1, r5
	mov	r0, #-1
	bl	HAL_NVIC_SetPriority
.LVL8:
	.loc 1 268 9 view .LVU39
	.loc 1 268 20 is_stmt 0 view .LVU40
	ldr	r3, .L13+8
	mov	r0, r4
	str	r5, [r3]
.LVL9:
	.loc 1 286 3 is_stmt 1 view .LVU41
	.loc 1 286 3 is_stmt 0 view .LVU42
.LBE5:
.LBE4:
	.loc 1 286 3 is_stmt 1 view .LVU43
	.loc 1 287 1 is_stmt 0 view .LVU44
	pop	{r3, r4, r5, pc}
.LVL10:
.L14:
	.loc 1 287 1 view .LVU45
	.align	2
.L13:
	.word	.LANCHOR0
	.word	SystemCoreClock
	.word	.LANCHOR1
	.cfi_endproc
.LFE136:
	.size	HAL_InitTick, .-HAL_InitTick
	.section	.text.HAL_Init,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_Init
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_Init, %function
HAL_Init:
.LFB132:
	.loc 1 149 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 150 3 view .LVU47
.LVL11:
	.loc 1 165 3 view .LVU48
	ldr	r2, .L20
	ldr	r3, [r2]
	orr	r3, r3, #256
	.loc 1 149 1 is_stmt 0 view .LVU49
	push	{r4, lr}
.LCFI2:
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 169 3 view .LVU50
	movs	r0, #3
	.loc 1 165 3 view .LVU51
	str	r3, [r2]
	.loc 1 169 3 is_stmt 1 view .LVU52
	bl	HAL_NVIC_SetPriorityGrouping
.LVL12:
	.loc 1 172 3 view .LVU53
	.loc 1 172 7 is_stmt 0 view .LVU54
	movs	r0, #0
	bl	HAL_InitTick
.LVL13:
	.loc 1 172 6 view .LVU55
	cbz	r0, .L19
	.loc 1 174 12 view .LVU56
	movs	r4, #1
.LVL14:
	.loc 1 183 3 is_stmt 1 view .LVU57
	.loc 1 185 1 is_stmt 0 view .LVU58
	mov	r0, r4
	pop	{r4, pc}
.LVL15:
.L19:
	.loc 1 185 1 view .LVU59
	mov	r4, r0
	.loc 1 179 5 is_stmt 1 view .LVU60
	bl	HAL_MspInit
.LVL16:
	.loc 1 183 3 view .LVU61
	.loc 1 185 1 is_stmt 0 view .LVU62
	mov	r0, r4
	pop	{r4, pc}
.LVL17:
.L21:
	.loc 1 185 1 view .LVU63
	.align	2
.L20:
	.word	1073881088
	.cfi_endproc
.LFE132:
	.size	HAL_Init, .-HAL_Init
	.section	.text.HAL_IncTick,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	HAL_IncTick
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_IncTick, %function
HAL_IncTick:
.LFB137:
	.loc 1 323 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 324 3 view .LVU65
	.loc 1 324 10 is_stmt 0 view .LVU66
	ldr	r2, .L23
	ldr	r1, .L23+4
	ldr	r3, [r2]
	ldr	r1, [r1]
	add	r3, r3, r1
	str	r3, [r2]
	.loc 1 325 1 view .LVU67
	bx	lr
.L24:
	.align	2
.L23:
	.word	.LANCHOR2
	.word	.LANCHOR0
	.cfi_endproc
.LFE137:
	.size	HAL_IncTick, .-HAL_IncTick
	.section	.text.HAL_GetTick,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	HAL_GetTick
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_GetTick, %function
HAL_GetTick:
.LFB138:
	.loc 1 334 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 335 3 view .LVU69
	.loc 1 335 10 is_stmt 0 view .LVU70
	ldr	r3, .L26
	ldr	r0, [r3]
	.loc 1 336 1 view .LVU71
	bx	lr
.L27:
	.align	2
.L26:
	.word	.LANCHOR2
	.cfi_endproc
.LFE138:
	.size	HAL_GetTick, .-HAL_GetTick
	.section	.text.HAL_GetTickPrio,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_GetTickPrio
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_GetTickPrio, %function
HAL_GetTickPrio:
.LFB139:
	.loc 1 343 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 344 3 view .LVU73
	.loc 1 344 10 is_stmt 0 view .LVU74
	ldr	r3, .L29
	.loc 1 345 1 view .LVU75
	ldr	r0, [r3]
	bx	lr
.L30:
	.align	2
.L29:
	.word	.LANCHOR1
	.cfi_endproc
.LFE139:
	.size	HAL_GetTickPrio, .-HAL_GetTickPrio
	.section	.text.HAL_SetTickFreq,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_SetTickFreq
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_SetTickFreq, %function
HAL_SetTickFreq:
.LVL18:
.LFB140:
	.loc 1 352 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 353 3 view .LVU77
	.loc 1 354 3 view .LVU78
	.loc 1 356 3 view .LVU79
	.loc 1 358 3 view .LVU80
	.loc 1 352 1 is_stmt 0 view .LVU81
	push	{r3, r4, r5, lr}
.LCFI3:
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	.loc 1 358 18 view .LVU82
	ldr	r4, .L39
	ldr	r5, [r4]
	.loc 1 358 6 view .LVU83
	cmp	r5, r0
	bne	.L38
	.loc 1 353 21 view .LVU84
	movs	r0, #0
.LVL19:
.L32:
	.loc 1 376 3 is_stmt 1 view .LVU85
	.loc 1 377 1 is_stmt 0 view .LVU86
	pop	{r3, r4, r5, pc}
.LVL20:
.L38:
	.loc 1 361 5 is_stmt 1 view .LVU87
	.loc 1 364 5 view .LVU88
	.loc 1 367 14 is_stmt 0 view .LVU89
	ldr	r3, .L39+4
	.loc 1 364 16 view .LVU90
	str	r0, [r4]
	.loc 1 367 5 is_stmt 1 view .LVU91
	.loc 1 367 14 is_stmt 0 view .LVU92
	ldr	r0, [r3]
.LVL21:
	.loc 1 367 14 view .LVU93
	bl	HAL_InitTick
.LVL22:
	.loc 1 369 5 is_stmt 1 view .LVU94
	.loc 1 369 8 is_stmt 0 view .LVU95
	cmp	r0, #0
	beq	.L32
	.loc 1 372 7 is_stmt 1 view .LVU96
	.loc 1 372 18 is_stmt 0 view .LVU97
	str	r5, [r4]
	.loc 1 376 3 is_stmt 1 view .LVU98
	.loc 1 377 1 is_stmt 0 view .LVU99
	pop	{r3, r4, r5, pc}
.LVL23:
.L40:
	.loc 1 377 1 view .LVU100
	.align	2
.L39:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.cfi_endproc
.LFE140:
	.size	HAL_SetTickFreq, .-HAL_SetTickFreq
	.section	.text.HAL_GetTickFreq,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_GetTickFreq
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_GetTickFreq, %function
HAL_GetTickFreq:
.LFB141:
	.loc 1 385 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 386 3 view .LVU102
	.loc 1 386 10 is_stmt 0 view .LVU103
	ldr	r3, .L42
	.loc 1 387 1 view .LVU104
	ldr	r0, [r3]
	bx	lr
.L43:
	.align	2
.L42:
	.word	.LANCHOR0
	.cfi_endproc
.LFE141:
	.size	HAL_GetTickFreq, .-HAL_GetTickFreq
	.section	.text.HAL_Delay,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	HAL_Delay
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_Delay, %function
HAL_Delay:
.LVL24:
.LFB142:
	.loc 1 401 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 402 3 view .LVU106
	.loc 1 401 1 is_stmt 0 view .LVU107
	push	{r3, r4, r5, lr}
.LCFI4:
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	.loc 1 401 1 view .LVU108
	mov	r4, r0
	.loc 1 402 24 view .LVU109
	bl	HAL_GetTick
.LVL25:
	.loc 1 406 6 view .LVU110
	adds	r3, r4, #1
	.loc 1 402 24 view .LVU111
	mov	r5, r0
.LVL26:
	.loc 1 403 3 is_stmt 1 view .LVU112
	.loc 1 406 3 view .LVU113
	.loc 1 406 6 is_stmt 0 view .LVU114
	beq	.L46
	.loc 1 408 5 is_stmt 1 view .LVU115
	.loc 1 408 13 is_stmt 0 view .LVU116
	ldr	r3, .L52
	.loc 1 408 10 view .LVU117
	ldr	r3, [r3]
	add	r4, r4, r3
.LVL27:
.L46:
	.loc 1 413 3 is_stmt 1 discriminator 1 view .LVU118
	.loc 1 411 9 discriminator 1 view .LVU119
	.loc 1 411 11 is_stmt 0 discriminator 1 view .LVU120
	bl	HAL_GetTick
.LVL28:
	.loc 1 411 25 discriminator 1 view .LVU121
	subs	r3, r0, r5
	.loc 1 411 9 discriminator 1 view .LVU122
	cmp	r3, r4
	bcc	.L46
	.loc 1 414 1 view .LVU123
	pop	{r3, r4, r5, pc}
.LVL29:
.L53:
	.loc 1 414 1 view .LVU124
	.align	2
.L52:
	.word	.LANCHOR0
	.cfi_endproc
.LFE142:
	.size	HAL_Delay, .-HAL_Delay
	.section	.text.HAL_SuspendTick,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	HAL_SuspendTick
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_SuspendTick, %function
HAL_SuspendTick:
.LFB143:
	.loc 1 427 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 429 3 view .LVU126
	mov	r2, #-536813568
	ldr	r3, [r2, #16]
	bic	r3, r3, #2
	str	r3, [r2, #16]
	.loc 1 430 1 is_stmt 0 view .LVU127
	bx	lr
	.cfi_endproc
.LFE143:
	.size	HAL_SuspendTick, .-HAL_SuspendTick
	.section	.text.HAL_ResumeTick,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	HAL_ResumeTick
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_ResumeTick, %function
HAL_ResumeTick:
.LFB144:
	.loc 1 443 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 445 3 view .LVU129
	mov	r2, #-536813568
	ldr	r3, [r2, #16]
	orr	r3, r3, #2
	str	r3, [r2, #16]
	.loc 1 446 1 is_stmt 0 view .LVU130
	bx	lr
	.cfi_endproc
.LFE144:
	.size	HAL_ResumeTick, .-HAL_ResumeTick
	.section	.text.HAL_GetHalVersion,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_GetHalVersion
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_GetHalVersion, %function
HAL_GetHalVersion:
.LFB145:
	.loc 1 453 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 454 3 view .LVU132
	.loc 1 455 1 is_stmt 0 view .LVU133
	ldr	r0, .L57
	bx	lr
.L58:
	.align	2
.L57:
	.word	16909056
	.cfi_endproc
.LFE145:
	.size	HAL_GetHalVersion, .-HAL_GetHalVersion
	.section	.text.HAL_GetREVID,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_GetREVID
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_GetREVID, %function
HAL_GetREVID:
.LFB146:
	.loc 1 462 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 463 3 view .LVU135
	.loc 1 463 18 is_stmt 0 view .LVU136
	ldr	r3, .L60
	ldr	r0, [r3]
	.loc 1 464 1 view .LVU137
	lsrs	r0, r0, #16
	bx	lr
.L61:
	.align	2
.L60:
	.word	-536600576
	.cfi_endproc
.LFE146:
	.size	HAL_GetREVID, .-HAL_GetREVID
	.section	.text.HAL_GetDEVID,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_GetDEVID
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_GetDEVID, %function
HAL_GetDEVID:
.LFB147:
	.loc 1 471 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 472 3 view .LVU139
	.loc 1 472 17 is_stmt 0 view .LVU140
	ldr	r3, .L63
	ldr	r0, [r3]
	.loc 1 473 1 view .LVU141
	ubfx	r0, r0, #0, #12
	bx	lr
.L64:
	.align	2
.L63:
	.word	-536600576
	.cfi_endproc
.LFE147:
	.size	HAL_GetDEVID, .-HAL_GetDEVID
	.section	.text.HAL_GetUIDw0,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_GetUIDw0
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_GetUIDw0, %function
HAL_GetUIDw0:
.LFB148:
	.loc 1 480 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 481 3 view .LVU143
	.loc 1 481 11 is_stmt 0 view .LVU144
	ldr	r3, .L66
	.loc 1 482 1 view .LVU145
	ldr	r0, [r3, #1424]
	bx	lr
.L67:
	.align	2
.L66:
	.word	536834048
	.cfi_endproc
.LFE148:
	.size	HAL_GetUIDw0, .-HAL_GetUIDw0
	.section	.text.HAL_GetUIDw1,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_GetUIDw1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_GetUIDw1, %function
HAL_GetUIDw1:
.LFB149:
	.loc 1 489 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 490 3 view .LVU147
	.loc 1 490 11 is_stmt 0 view .LVU148
	ldr	r3, .L69
	.loc 1 491 1 view .LVU149
	ldr	r0, [r3, #1428]
	bx	lr
.L70:
	.align	2
.L69:
	.word	536834048
	.cfi_endproc
.LFE149:
	.size	HAL_GetUIDw1, .-HAL_GetUIDw1
	.section	.text.HAL_GetUIDw2,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_GetUIDw2
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_GetUIDw2, %function
HAL_GetUIDw2:
.LFB150:
	.loc 1 498 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 499 3 view .LVU151
	.loc 1 499 11 is_stmt 0 view .LVU152
	ldr	r3, .L72
	.loc 1 500 1 view .LVU153
	ldr	r0, [r3, #1432]
	bx	lr
.L73:
	.align	2
.L72:
	.word	536834048
	.cfi_endproc
.LFE150:
	.size	HAL_GetUIDw2, .-HAL_GetUIDw2
	.section	.text.HAL_DBGMCU_EnableDBGSleepMode,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_DBGMCU_EnableDBGSleepMode
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_DBGMCU_EnableDBGSleepMode, %function
HAL_DBGMCU_EnableDBGSleepMode:
.LFB151:
	.loc 1 527 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 528 3 view .LVU155
	ldr	r2, .L75
	ldr	r3, [r2, #4]
	orr	r3, r3, #1
	str	r3, [r2, #4]
	.loc 1 529 1 is_stmt 0 view .LVU156
	bx	lr
.L76:
	.align	2
.L75:
	.word	-536600576
	.cfi_endproc
.LFE151:
	.size	HAL_DBGMCU_EnableDBGSleepMode, .-HAL_DBGMCU_EnableDBGSleepMode
	.section	.text.HAL_DBGMCU_DisableDBGSleepMode,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_DBGMCU_DisableDBGSleepMode
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_DBGMCU_DisableDBGSleepMode, %function
HAL_DBGMCU_DisableDBGSleepMode:
.LFB152:
	.loc 1 536 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 537 3 view .LVU158
	ldr	r2, .L78
	ldr	r3, [r2, #4]
	bic	r3, r3, #1
	str	r3, [r2, #4]
	.loc 1 538 1 is_stmt 0 view .LVU159
	bx	lr
.L79:
	.align	2
.L78:
	.word	-536600576
	.cfi_endproc
.LFE152:
	.size	HAL_DBGMCU_DisableDBGSleepMode, .-HAL_DBGMCU_DisableDBGSleepMode
	.section	.text.HAL_DBGMCU_EnableDBGStopMode,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_DBGMCU_EnableDBGStopMode
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_DBGMCU_EnableDBGStopMode, %function
HAL_DBGMCU_EnableDBGStopMode:
.LFB153:
	.loc 1 545 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 546 3 view .LVU161
	ldr	r2, .L81
	ldr	r3, [r2, #4]
	orr	r3, r3, #2
	str	r3, [r2, #4]
	.loc 1 547 1 is_stmt 0 view .LVU162
	bx	lr
.L82:
	.align	2
.L81:
	.word	-536600576
	.cfi_endproc
.LFE153:
	.size	HAL_DBGMCU_EnableDBGStopMode, .-HAL_DBGMCU_EnableDBGStopMode
	.section	.text.HAL_DBGMCU_DisableDBGStopMode,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_DBGMCU_DisableDBGStopMode
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_DBGMCU_DisableDBGStopMode, %function
HAL_DBGMCU_DisableDBGStopMode:
.LFB154:
	.loc 1 554 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 555 3 view .LVU164
	ldr	r2, .L84
	ldr	r3, [r2, #4]
	bic	r3, r3, #2
	str	r3, [r2, #4]
	.loc 1 556 1 is_stmt 0 view .LVU165
	bx	lr
.L85:
	.align	2
.L84:
	.word	-536600576
	.cfi_endproc
.LFE154:
	.size	HAL_DBGMCU_DisableDBGStopMode, .-HAL_DBGMCU_DisableDBGStopMode
	.section	.text.HAL_DBGMCU_EnableDBGStandbyMode,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_DBGMCU_EnableDBGStandbyMode
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_DBGMCU_EnableDBGStandbyMode, %function
HAL_DBGMCU_EnableDBGStandbyMode:
.LFB155:
	.loc 1 563 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 564 3 view .LVU167
	ldr	r2, .L87
	ldr	r3, [r2, #4]
	orr	r3, r3, #4
	str	r3, [r2, #4]
	.loc 1 565 1 is_stmt 0 view .LVU168
	bx	lr
.L88:
	.align	2
.L87:
	.word	-536600576
	.cfi_endproc
.LFE155:
	.size	HAL_DBGMCU_EnableDBGStandbyMode, .-HAL_DBGMCU_EnableDBGStandbyMode
	.section	.text.HAL_DBGMCU_DisableDBGStandbyMode,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_DBGMCU_DisableDBGStandbyMode
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_DBGMCU_DisableDBGStandbyMode, %function
HAL_DBGMCU_DisableDBGStandbyMode:
.LFB156:
	.loc 1 572 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 573 3 view .LVU170
	ldr	r2, .L90
	ldr	r3, [r2, #4]
	bic	r3, r3, #4
	str	r3, [r2, #4]
	.loc 1 574 1 is_stmt 0 view .LVU171
	bx	lr
.L91:
	.align	2
.L90:
	.word	-536600576
	.cfi_endproc
.LFE156:
	.size	HAL_DBGMCU_DisableDBGStandbyMode, .-HAL_DBGMCU_DisableDBGStandbyMode
	.section	.text.HAL_SYSCFG_CCMSRAMErase,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_SYSCFG_CCMSRAMErase
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_SYSCFG_CCMSRAMErase, %function
HAL_SYSCFG_CCMSRAMErase:
.LFB157:
	.loc 1 605 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 607 3 view .LVU173
	.loc 1 607 15 is_stmt 0 view .LVU174
	ldr	r3, .L93
	.loc 1 608 15 view .LVU175
	movs	r2, #83
	.loc 1 607 15 view .LVU176
	movs	r1, #202
	str	r1, [r3, #36]
	.loc 1 608 3 is_stmt 1 view .LVU177
	.loc 1 608 15 is_stmt 0 view .LVU178
	str	r2, [r3, #36]
	.loc 1 610 3 is_stmt 1 view .LVU179
	ldr	r2, [r3, #24]
	orr	r2, r2, #1
	str	r2, [r3, #24]
	.loc 1 611 1 is_stmt 0 view .LVU180
	bx	lr
.L94:
	.align	2
.L93:
	.word	1073807360
	.cfi_endproc
.LFE157:
	.size	HAL_SYSCFG_CCMSRAMErase, .-HAL_SYSCFG_CCMSRAMErase
	.section	.text.HAL_SYSCFG_EnableMemorySwappingBank,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_SYSCFG_EnableMemorySwappingBank
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_SYSCFG_EnableMemorySwappingBank, %function
HAL_SYSCFG_EnableMemorySwappingBank:
.LFB158:
	.loc 1 624 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 625 3 view .LVU182
	ldr	r2, .L96
	ldr	r3, [r2]
	orr	r3, r3, #256
	str	r3, [r2]
	.loc 1 626 1 is_stmt 0 view .LVU183
	bx	lr
.L97:
	.align	2
.L96:
	.word	1073807360
	.cfi_endproc
.LFE158:
	.size	HAL_SYSCFG_EnableMemorySwappingBank, .-HAL_SYSCFG_EnableMemorySwappingBank
	.section	.text.HAL_SYSCFG_DisableMemorySwappingBank,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_SYSCFG_DisableMemorySwappingBank
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_SYSCFG_DisableMemorySwappingBank, %function
HAL_SYSCFG_DisableMemorySwappingBank:
.LFB159:
	.loc 1 639 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 640 3 view .LVU185
	ldr	r2, .L99
	ldr	r3, [r2]
	bic	r3, r3, #256
	str	r3, [r2]
	.loc 1 641 1 is_stmt 0 view .LVU186
	bx	lr
.L100:
	.align	2
.L99:
	.word	1073807360
	.cfi_endproc
.LFE159:
	.size	HAL_SYSCFG_DisableMemorySwappingBank, .-HAL_SYSCFG_DisableMemorySwappingBank
	.section	.text.HAL_SYSCFG_VREFBUF_VoltageScalingConfig,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_SYSCFG_VREFBUF_VoltageScalingConfig
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_SYSCFG_VREFBUF_VoltageScalingConfig, %function
HAL_SYSCFG_VREFBUF_VoltageScalingConfig:
.LVL30:
.LFB160:
	.loc 1 657 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 659 3 view .LVU188
	.loc 1 661 3 view .LVU189
	ldr	r2, .L102
	ldr	r3, [r2, #48]
	bic	r3, r3, #48
	orrs	r0, r0, r3
.LVL31:
	.loc 1 661 3 is_stmt 0 view .LVU190
	str	r0, [r2, #48]
	.loc 1 662 1 view .LVU191
	bx	lr
.L103:
	.align	2
.L102:
	.word	1073807360
	.cfi_endproc
.LFE160:
	.size	HAL_SYSCFG_VREFBUF_VoltageScalingConfig, .-HAL_SYSCFG_VREFBUF_VoltageScalingConfig
	.section	.text.HAL_SYSCFG_VREFBUF_HighImpedanceConfig,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_SYSCFG_VREFBUF_HighImpedanceConfig
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_SYSCFG_VREFBUF_HighImpedanceConfig, %function
HAL_SYSCFG_VREFBUF_HighImpedanceConfig:
.LVL32:
.LFB161:
	.loc 1 673 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 675 3 view .LVU193
	.loc 1 677 3 view .LVU194
	ldr	r2, .L105
	ldr	r3, [r2, #48]
	bic	r3, r3, #2
	orrs	r0, r0, r3
.LVL33:
	.loc 1 677 3 is_stmt 0 view .LVU195
	str	r0, [r2, #48]
	.loc 1 678 1 view .LVU196
	bx	lr
.L106:
	.align	2
.L105:
	.word	1073807360
	.cfi_endproc
.LFE161:
	.size	HAL_SYSCFG_VREFBUF_HighImpedanceConfig, .-HAL_SYSCFG_VREFBUF_HighImpedanceConfig
	.section	.text.HAL_SYSCFG_VREFBUF_TrimmingConfig,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_SYSCFG_VREFBUF_TrimmingConfig
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_SYSCFG_VREFBUF_TrimmingConfig, %function
HAL_SYSCFG_VREFBUF_TrimmingConfig:
.LVL34:
.LFB162:
	.loc 1 687 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 689 3 view .LVU198
	.loc 1 691 3 view .LVU199
	ldr	r2, .L108
	ldr	r3, [r2, #52]
	bic	r3, r3, #63
	orrs	r0, r0, r3
.LVL35:
	.loc 1 691 3 is_stmt 0 view .LVU200
	str	r0, [r2, #52]
	.loc 1 692 1 view .LVU201
	bx	lr
.L109:
	.align	2
.L108:
	.word	1073807360
	.cfi_endproc
.LFE162:
	.size	HAL_SYSCFG_VREFBUF_TrimmingConfig, .-HAL_SYSCFG_VREFBUF_TrimmingConfig
	.section	.text.HAL_SYSCFG_EnableVREFBUF,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_SYSCFG_EnableVREFBUF
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_SYSCFG_EnableVREFBUF, %function
HAL_SYSCFG_EnableVREFBUF:
.LFB163:
	.loc 1 699 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 700 3 view .LVU203
	.loc 1 702 3 view .LVU204
	.loc 1 699 1 is_stmt 0 view .LVU205
	push	{r3, r4, r5, lr}
.LCFI5:
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	.loc 1 702 3 view .LVU206
	ldr	r4, .L116
	ldr	r3, [r4, #48]
	orr	r3, r3, #1
	str	r3, [r4, #48]
	.loc 1 705 3 is_stmt 1 view .LVU207
	.loc 1 705 15 is_stmt 0 view .LVU208
	bl	HAL_GetTick
.LVL36:
	mov	r5, r0
.LVL37:
	.loc 1 708 3 is_stmt 1 view .LVU209
	.loc 1 708 9 is_stmt 0 view .LVU210
	b	.L111
.LVL38:
.L113:
	.loc 1 710 10 view .LVU211
	bl	HAL_GetTick
.LVL39:
	.loc 1 710 24 view .LVU212
	subs	r0, r0, r5
	.loc 1 710 8 view .LVU213
	cmp	r0, #10
	bhi	.L114
.L111:
	.loc 1 710 5 is_stmt 1 view .LVU214
	.loc 1 708 9 view .LVU215
	.loc 1 708 10 is_stmt 0 view .LVU216
	ldr	r3, [r4, #48]
	.loc 1 708 9 view .LVU217
	lsls	r3, r3, #28
	bpl	.L113
	.loc 1 716 10 view .LVU218
	movs	r0, #0
	.loc 1 717 1 view .LVU219
	pop	{r3, r4, r5, pc}
.LVL40:
.L114:
	.loc 1 712 14 view .LVU220
	movs	r0, #3
	.loc 1 717 1 view .LVU221
	pop	{r3, r4, r5, pc}
.LVL41:
.L117:
	.loc 1 717 1 view .LVU222
	.align	2
.L116:
	.word	1073807360
	.cfi_endproc
.LFE163:
	.size	HAL_SYSCFG_EnableVREFBUF, .-HAL_SYSCFG_EnableVREFBUF
	.section	.text.HAL_SYSCFG_DisableVREFBUF,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_SYSCFG_DisableVREFBUF
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_SYSCFG_DisableVREFBUF, %function
HAL_SYSCFG_DisableVREFBUF:
.LFB164:
	.loc 1 725 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 726 3 view .LVU224
	ldr	r2, .L119
	ldr	r3, [r2, #48]
	bic	r3, r3, #1
	str	r3, [r2, #48]
	.loc 1 727 1 is_stmt 0 view .LVU225
	bx	lr
.L120:
	.align	2
.L119:
	.word	1073807360
	.cfi_endproc
.LFE164:
	.size	HAL_SYSCFG_DisableVREFBUF, .-HAL_SYSCFG_DisableVREFBUF
	.section	.text.HAL_SYSCFG_EnableIOSwitchBooster,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_SYSCFG_EnableIOSwitchBooster
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_SYSCFG_EnableIOSwitchBooster, %function
HAL_SYSCFG_EnableIOSwitchBooster:
.LFB165:
	.loc 1 736 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 737 3 view .LVU227
	ldr	r2, .L122
	ldr	r3, [r2, #4]
	orr	r3, r3, #256
	str	r3, [r2, #4]
	.loc 1 738 1 is_stmt 0 view .LVU228
	bx	lr
.L123:
	.align	2
.L122:
	.word	1073807360
	.cfi_endproc
.LFE165:
	.size	HAL_SYSCFG_EnableIOSwitchBooster, .-HAL_SYSCFG_EnableIOSwitchBooster
	.section	.text.HAL_SYSCFG_DisableIOSwitchBooster,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_SYSCFG_DisableIOSwitchBooster
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_SYSCFG_DisableIOSwitchBooster, %function
HAL_SYSCFG_DisableIOSwitchBooster:
.LFB166:
	.loc 1 746 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 747 3 view .LVU230
	ldr	r2, .L125
	ldr	r3, [r2, #4]
	bic	r3, r3, #256
	str	r3, [r2, #4]
	.loc 1 748 1 is_stmt 0 view .LVU231
	bx	lr
.L126:
	.align	2
.L125:
	.word	1073807360
	.cfi_endproc
.LFE166:
	.size	HAL_SYSCFG_DisableIOSwitchBooster, .-HAL_SYSCFG_DisableIOSwitchBooster
	.section	.text.HAL_SYSCFG_EnableIOSwitchVDD,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_SYSCFG_EnableIOSwitchVDD
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_SYSCFG_EnableIOSwitchVDD, %function
HAL_SYSCFG_EnableIOSwitchVDD:
.LFB167:
	.loc 1 756 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 757 3 view .LVU233
	ldr	r2, .L128
	ldr	r3, [r2, #4]
	orr	r3, r3, #512
	str	r3, [r2, #4]
	.loc 1 758 1 is_stmt 0 view .LVU234
	bx	lr
.L129:
	.align	2
.L128:
	.word	1073807360
	.cfi_endproc
.LFE167:
	.size	HAL_SYSCFG_EnableIOSwitchVDD, .-HAL_SYSCFG_EnableIOSwitchVDD
	.section	.text.HAL_SYSCFG_DisableIOSwitchVDD,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_SYSCFG_DisableIOSwitchVDD
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_SYSCFG_DisableIOSwitchVDD, %function
HAL_SYSCFG_DisableIOSwitchVDD:
.LFB168:
	.loc 1 766 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 767 3 view .LVU236
	ldr	r2, .L131
	ldr	r3, [r2, #4]
	bic	r3, r3, #512
	str	r3, [r2, #4]
	.loc 1 768 1 is_stmt 0 view .LVU237
	bx	lr
.L132:
	.align	2
.L131:
	.word	1073807360
	.cfi_endproc
.LFE168:
	.size	HAL_SYSCFG_DisableIOSwitchVDD, .-HAL_SYSCFG_DisableIOSwitchVDD
	.section	.text.HAL_SYSCFG_CCMSRAM_WriteProtectionEnable,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_SYSCFG_CCMSRAM_WriteProtectionEnable
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_SYSCFG_CCMSRAM_WriteProtectionEnable, %function
HAL_SYSCFG_CCMSRAM_WriteProtectionEnable:
.LVL42:
.LFB169:
	.loc 1 777 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 778 3 view .LVU239
	.loc 1 780 3 view .LVU240
	ldr	r2, .L134
	ldr	r3, [r2, #32]
	orrs	r0, r0, r3
.LVL43:
	.loc 1 780 3 is_stmt 0 view .LVU241
	str	r0, [r2, #32]
	.loc 1 781 1 view .LVU242
	bx	lr
.L135:
	.align	2
.L134:
	.word	1073807360
	.cfi_endproc
.LFE169:
	.size	HAL_SYSCFG_CCMSRAM_WriteProtectionEnable, .-HAL_SYSCFG_CCMSRAM_WriteProtectionEnable
	.global	uwTickFreq
	.global	uwTickPrio
	.global	uwTick
	.section	.bss.uwTick,"aw",%nobits
	.align	2
	.set	.LANCHOR2,. + 0
	.type	uwTick, %object
	.size	uwTick, 4
uwTick:
	.space	4
	.section	.data.uwTickFreq,"aw"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	uwTickFreq, %object
	.size	uwTickFreq, 4
uwTickFreq:
	.word	1
	.section	.data.uwTickPrio,"aw"
	.align	2
	.set	.LANCHOR1,. + 0
	.type	uwTickPrio, %object
	.size	uwTickPrio, 4
uwTickPrio:
	.word	16
	.text
.Letext0:
	.file 2 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "Drivers/CMSIS/Include/core_cm4.h"
	.file 5 "Drivers/CMSIS/Device/ST/STM32G4xx/Include/stm32g431xx.h"
	.file 6 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_hal_def.h"
	.file 7 "Drivers/CMSIS/Device/ST/STM32G4xx/Include/system_stm32g4xx.h"
	.file 8 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_hal.h"
	.file 9 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_hal_cortex.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xe52
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF215
	.byte	0xc
	.4byte	.LASF216
	.4byte	.LASF217
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x5
	.byte	0x1
	.4byte	0x212
	.byte	0x5
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
	.4byte	.LASF88
	.byte	0x2
	.byte	0x4f
	.byte	0x19
	.4byte	0x241
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF84
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.4byte	.LASF85
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.4byte	.LASF86
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF87
	.uleb128 0x6
	.4byte	.LASF89
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x235
	.uleb128 0x8
	.4byte	0x264
	.uleb128 0x9
	.4byte	0x270
	.uleb128 0xa
	.byte	0x10
	.byte	0x4
	.2byte	0x2f7
	.byte	0x9
	.4byte	0x2c5
	.uleb128 0xb
	.4byte	.LASF90
	.byte	0x4
	.2byte	0x2f9
	.byte	0x12
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF91
	.byte	0x4
	.2byte	0x2fa
	.byte	0x12
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.ascii	"VAL\000"
	.byte	0x4
	.2byte	0x2fb
	.byte	0x12
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF92
	.byte	0x4
	.2byte	0x2fc
	.byte	0x12
	.4byte	0x275
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0xd
	.4byte	.LASF93
	.byte	0x4
	.2byte	0x2fd
	.byte	0x3
	.4byte	0x27a
	.uleb128 0xe
	.4byte	0x264
	.4byte	0x2e2
	.uleb128 0xf
	.4byte	0x25d
	.byte	0xe
	.byte	0
	.uleb128 0x10
	.4byte	.LASF163
	.byte	0x7
	.byte	0x39
	.byte	0x11
	.4byte	0x264
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.byte	0x14
	.byte	0x5
	.2byte	0x15a
	.byte	0x9
	.4byte	0x34a
	.uleb128 0xb
	.4byte	.LASF94
	.byte	0x5
	.2byte	0x15c
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.ascii	"CR\000"
	.byte	0x5
	.2byte	0x15d
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF95
	.byte	0x5
	.2byte	0x15e
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF96
	.byte	0x5
	.2byte	0x15f
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF97
	.byte	0x5
	.2byte	0x160
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0xd
	.4byte	.LASF98
	.byte	0x5
	.2byte	0x161
	.byte	0x3
	.4byte	0x2f0
	.uleb128 0xa
	.byte	0x74
	.byte	0x5
	.2byte	0x1a9
	.byte	0x9
	.4byte	0x450
	.uleb128 0xc
	.ascii	"ACR\000"
	.byte	0x5
	.2byte	0x1ab
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF99
	.byte	0x5
	.2byte	0x1ac
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF100
	.byte	0x5
	.2byte	0x1ad
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF101
	.byte	0x5
	.2byte	0x1ae
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.ascii	"SR\000"
	.byte	0x5
	.2byte	0x1af
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.ascii	"CR\000"
	.byte	0x5
	.2byte	0x1b0
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.4byte	.LASF102
	.byte	0x5
	.2byte	0x1b1
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.4byte	.LASF103
	.byte	0x5
	.2byte	0x1b2
	.byte	0x11
	.4byte	0x264
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.4byte	.LASF104
	.byte	0x5
	.2byte	0x1b3
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.4byte	.LASF105
	.byte	0x5
	.2byte	0x1b4
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.4byte	.LASF106
	.byte	0x5
	.2byte	0x1b5
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.4byte	.LASF107
	.byte	0x5
	.2byte	0x1b6
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.4byte	.LASF108
	.byte	0x5
	.2byte	0x1b7
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.4byte	.LASF109
	.byte	0x5
	.2byte	0x1b8
	.byte	0x11
	.4byte	0x2d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.4byte	.LASF110
	.byte	0x5
	.2byte	0x1b9
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.byte	0
	.uleb128 0xd
	.4byte	.LASF111
	.byte	0x5
	.2byte	0x1ba
	.byte	0x3
	.4byte	0x357
	.uleb128 0xa
	.byte	0xa0
	.byte	0x5
	.2byte	0x23f
	.byte	0x9
	.4byte	0x6ef
	.uleb128 0xc
	.ascii	"CR\000"
	.byte	0x5
	.2byte	0x241
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF112
	.byte	0x5
	.2byte	0x242
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF113
	.byte	0x5
	.2byte	0x243
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF114
	.byte	0x5
	.2byte	0x244
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF115
	.byte	0x5
	.2byte	0x245
	.byte	0x11
	.4byte	0x264
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.4byte	.LASF103
	.byte	0x5
	.2byte	0x246
	.byte	0x11
	.4byte	0x264
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.4byte	.LASF116
	.byte	0x5
	.2byte	0x247
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.4byte	.LASF117
	.byte	0x5
	.2byte	0x248
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.4byte	.LASF118
	.byte	0x5
	.2byte	0x249
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.4byte	.LASF109
	.byte	0x5
	.2byte	0x24a
	.byte	0x11
	.4byte	0x264
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.4byte	.LASF119
	.byte	0x5
	.2byte	0x24b
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.4byte	.LASF120
	.byte	0x5
	.2byte	0x24c
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.4byte	.LASF121
	.byte	0x5
	.2byte	0x24d
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.4byte	.LASF122
	.byte	0x5
	.2byte	0x24e
	.byte	0x11
	.4byte	0x264
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.4byte	.LASF123
	.byte	0x5
	.2byte	0x24f
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xb
	.4byte	.LASF124
	.byte	0x5
	.2byte	0x250
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xb
	.4byte	.LASF125
	.byte	0x5
	.2byte	0x251
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xb
	.4byte	.LASF126
	.byte	0x5
	.2byte	0x252
	.byte	0x11
	.4byte	0x264
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xb
	.4byte	.LASF127
	.byte	0x5
	.2byte	0x253
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xb
	.4byte	.LASF128
	.byte	0x5
	.2byte	0x254
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xb
	.4byte	.LASF129
	.byte	0x5
	.2byte	0x255
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xb
	.4byte	.LASF130
	.byte	0x5
	.2byte	0x256
	.byte	0x11
	.4byte	0x264
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xb
	.4byte	.LASF131
	.byte	0x5
	.2byte	0x257
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xb
	.4byte	.LASF132
	.byte	0x5
	.2byte	0x258
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0xb
	.4byte	.LASF133
	.byte	0x5
	.2byte	0x259
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xb
	.4byte	.LASF134
	.byte	0x5
	.2byte	0x25a
	.byte	0x11
	.4byte	0x264
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xb
	.4byte	.LASF135
	.byte	0x5
	.2byte	0x25b
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xb
	.4byte	.LASF136
	.byte	0x5
	.2byte	0x25c
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0xb
	.4byte	.LASF137
	.byte	0x5
	.2byte	0x25d
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xb
	.4byte	.LASF138
	.byte	0x5
	.2byte	0x25e
	.byte	0x11
	.4byte	0x264
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xb
	.4byte	.LASF139
	.byte	0x5
	.2byte	0x25f
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xb
	.4byte	.LASF140
	.byte	0x5
	.2byte	0x260
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xb
	.4byte	.LASF141
	.byte	0x5
	.2byte	0x261
	.byte	0x11
	.4byte	0x270
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xb
	.4byte	.LASF142
	.byte	0x5
	.2byte	0x262
	.byte	0x11
	.4byte	0x264
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0xb
	.4byte	.LASF143
	.byte	0x5
	.2byte	0x263
	.byte	0x11
	.4byte	0x270
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xb
	.4byte	.LASF144
	.byte	0x5
	.2byte	0x264
	.byte	0x11
	.4byte	0x264
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xb
	.4byte	.LASF145
	.byte	0x5
	.2byte	0x265
	.byte	0x11
	.4byte	0x270
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xc
	.ascii	"CSR\000"
	.byte	0x5
	.2byte	0x266
	.byte	0x11
	.4byte	0x270
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xb
	.4byte	.LASF146
	.byte	0x5
	.2byte	0x267
	.byte	0x11
	.4byte	0x270
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xb
	.4byte	.LASF147
	.byte	0x5
	.2byte	0x268
	.byte	0x11
	.4byte	0x270
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.byte	0
	.uleb128 0xd
	.4byte	.LASF148
	.byte	0x5
	.2byte	0x269
	.byte	0x3
	.4byte	0x45d
	.uleb128 0xa
	.byte	0x28
	.byte	0x5
	.2byte	0x2e4
	.byte	0x9
	.4byte	0x777
	.uleb128 0xb
	.4byte	.LASF149
	.byte	0x5
	.2byte	0x2e6
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF150
	.byte	0x5
	.2byte	0x2e7
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF151
	.byte	0x5
	.2byte	0x2e8
	.byte	0x11
	.4byte	0x787
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF152
	.byte	0x5
	.2byte	0x2e9
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.4byte	.LASF153
	.byte	0x5
	.2byte	0x2ea
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.4byte	.LASF154
	.byte	0x5
	.2byte	0x2eb
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xc
	.ascii	"SKR\000"
	.byte	0x5
	.2byte	0x2ec
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0
	.uleb128 0xe
	.4byte	0x270
	.4byte	0x787
	.uleb128 0xf
	.4byte	0x25d
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.4byte	0x777
	.uleb128 0xd
	.4byte	.LASF155
	.byte	0x5
	.2byte	0x2ed
	.byte	0x3
	.4byte	0x6fc
	.uleb128 0xa
	.byte	0x8
	.byte	0x5
	.2byte	0x352
	.byte	0x9
	.4byte	0x7c4
	.uleb128 0xc
	.ascii	"CSR\000"
	.byte	0x5
	.2byte	0x354
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.ascii	"CCR\000"
	.byte	0x5
	.2byte	0x355
	.byte	0x11
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xd
	.4byte	.LASF156
	.byte	0x5
	.2byte	0x356
	.byte	0x3
	.4byte	0x799
	.uleb128 0x5
	.byte	0x8
	.byte	0x4
	.4byte	.LASF157
	.uleb128 0x2
	.byte	0x7
	.byte	0x1
	.4byte	0x219
	.byte	0x6
	.byte	0x27
	.byte	0x1
	.4byte	0x7ff
	.uleb128 0x4
	.4byte	.LASF158
	.byte	0
	.uleb128 0x4
	.4byte	.LASF159
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF160
	.byte	0x2
	.uleb128 0x4
	.4byte	.LASF161
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.4byte	.LASF162
	.byte	0x6
	.byte	0x2c
	.byte	0x3
	.4byte	0x7d8
	.uleb128 0x11
	.4byte	.LASF164
	.byte	0x8
	.2byte	0x23f
	.byte	0x16
	.4byte	0x270
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF165
	.byte	0x8
	.2byte	0x240
	.byte	0x11
	.4byte	0x264
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF166
	.byte	0x8
	.2byte	0x241
	.byte	0x11
	.4byte	0x264
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.4byte	0x80b
	.byte	0x1
	.byte	0x55
	.byte	0xf
	.byte	0x5
	.byte	0x3
	.4byte	uwTick
	.uleb128 0x12
	.4byte	0x81a
	.byte	0x1
	.byte	0x56
	.byte	0xa
	.byte	0x5
	.byte	0x3
	.4byte	uwTickPrio
	.uleb128 0x12
	.4byte	0x829
	.byte	0x1
	.byte	0x57
	.byte	0xa
	.byte	0x5
	.byte	0x3
	.4byte	uwTickFreq
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x308
	.byte	0x6
	.byte	0x1
	.4byte	.LFB169
	.4byte	.LFE169
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x893
	.uleb128 0x14
	.4byte	.LASF175
	.byte	0x1
	.2byte	0x308
	.byte	0x38
	.4byte	0x264
	.4byte	.LLST21
	.4byte	.LVUS21
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF167
	.byte	0x1
	.2byte	0x2fd
	.byte	0x6
	.byte	0x1
	.4byte	.LFB168
	.4byte	.LFE168
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF168
	.byte	0x1
	.2byte	0x2f3
	.byte	0x6
	.byte	0x1
	.4byte	.LFB167
	.4byte	.LFE167
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x2e9
	.byte	0x6
	.byte	0x1
	.4byte	.LFB166
	.4byte	.LFE166
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF170
	.byte	0x1
	.2byte	0x2df
	.byte	0x6
	.byte	0x1
	.4byte	.LFB165
	.4byte	.LFE165
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF171
	.byte	0x1
	.2byte	0x2d4
	.byte	0x6
	.byte	0x1
	.4byte	.LFB164
	.4byte	.LFE164
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x16
	.byte	0x1
	.4byte	.LASF202
	.byte	0x1
	.2byte	0x2ba
	.byte	0x13
	.byte	0x1
	.4byte	0x7ff
	.4byte	.LFB163
	.4byte	.LFE163
	.4byte	.LLST19
	.byte	0x1
	.4byte	0x94e
	.uleb128 0x17
	.4byte	.LASF172
	.byte	0x1
	.2byte	0x2bc
	.byte	0xc
	.4byte	0x264
	.4byte	.LLST20
	.4byte	.LVUS20
	.uleb128 0x18
	.4byte	.LVL36
	.4byte	0xc8d
	.uleb128 0x18
	.4byte	.LVL39
	.4byte	0xc8d
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF174
	.byte	0x1
	.2byte	0x2ae
	.byte	0x6
	.byte	0x1
	.4byte	.LFB162
	.4byte	.LFE162
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x97f
	.uleb128 0x14
	.4byte	.LASF176
	.byte	0x1
	.2byte	0x2ae
	.byte	0x31
	.4byte	0x264
	.4byte	.LLST18
	.4byte	.LVUS18
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF177
	.byte	0x1
	.2byte	0x2a0
	.byte	0x6
	.byte	0x1
	.4byte	.LFB161
	.4byte	.LFE161
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x9b0
	.uleb128 0x14
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x2a0
	.byte	0x36
	.4byte	0x264
	.4byte	.LLST17
	.4byte	.LVUS17
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF179
	.byte	0x1
	.2byte	0x290
	.byte	0x6
	.byte	0x1
	.4byte	.LFB160
	.4byte	.LFE160
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x9e1
	.uleb128 0x14
	.4byte	.LASF180
	.byte	0x1
	.2byte	0x290
	.byte	0x37
	.4byte	0x264
	.4byte	.LLST16
	.4byte	.LVUS16
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF181
	.byte	0x1
	.2byte	0x27e
	.byte	0x6
	.byte	0x1
	.4byte	.LFB159
	.4byte	.LFE159
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF182
	.byte	0x1
	.2byte	0x26f
	.byte	0x6
	.byte	0x1
	.4byte	.LFB158
	.4byte	.LFE158
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF183
	.byte	0x1
	.2byte	0x25c
	.byte	0x6
	.byte	0x1
	.4byte	.LFB157
	.4byte	.LFE157
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF184
	.byte	0x1
	.2byte	0x23b
	.byte	0x6
	.byte	0x1
	.4byte	.LFB156
	.4byte	.LFE156
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF185
	.byte	0x1
	.2byte	0x232
	.byte	0x6
	.byte	0x1
	.4byte	.LFB155
	.4byte	.LFE155
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF186
	.byte	0x1
	.2byte	0x229
	.byte	0x6
	.byte	0x1
	.4byte	.LFB154
	.4byte	.LFE154
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF187
	.byte	0x1
	.2byte	0x220
	.byte	0x6
	.byte	0x1
	.4byte	.LFB153
	.4byte	.LFE153
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF188
	.byte	0x1
	.2byte	0x217
	.byte	0x6
	.byte	0x1
	.4byte	.LFB152
	.4byte	.LFE152
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF189
	.byte	0x1
	.2byte	0x20e
	.byte	0x6
	.byte	0x1
	.4byte	.LFB151
	.4byte	.LFE151
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF190
	.byte	0x1
	.2byte	0x1f1
	.byte	0xa
	.byte	0x1
	.4byte	0x264
	.4byte	.LFB150
	.4byte	.LFE150
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF191
	.byte	0x1
	.2byte	0x1e8
	.byte	0xa
	.byte	0x1
	.4byte	0x264
	.4byte	.LFB149
	.4byte	.LFE149
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF192
	.byte	0x1
	.2byte	0x1df
	.byte	0xa
	.byte	0x1
	.4byte	0x264
	.4byte	.LFB148
	.4byte	.LFE148
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF193
	.byte	0x1
	.2byte	0x1d6
	.byte	0xa
	.byte	0x1
	.4byte	0x264
	.4byte	.LFB147
	.4byte	.LFE147
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF194
	.byte	0x1
	.2byte	0x1cd
	.byte	0xa
	.byte	0x1
	.4byte	0x264
	.4byte	.LFB146
	.4byte	.LFE146
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF195
	.byte	0x1
	.2byte	0x1c4
	.byte	0xa
	.byte	0x1
	.4byte	0x264
	.4byte	.LFB145
	.4byte	.LFE145
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF196
	.byte	0x1
	.2byte	0x1ba
	.byte	0xd
	.byte	0x1
	.4byte	.LFB144
	.4byte	.LFE144
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF197
	.byte	0x1
	.2byte	0x1aa
	.byte	0xd
	.byte	0x1
	.4byte	.LFB143
	.4byte	.LFE143
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF198
	.byte	0x1
	.2byte	0x190
	.byte	0xd
	.byte	0x1
	.4byte	.LFB142
	.4byte	.LFE142
	.4byte	.LLST12
	.byte	0x1
	.4byte	0xbee
	.uleb128 0x14
	.4byte	.LASF199
	.byte	0x1
	.2byte	0x190
	.byte	0x20
	.4byte	0x264
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x17
	.4byte	.LASF172
	.byte	0x1
	.2byte	0x192
	.byte	0xc
	.4byte	0x264
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x17
	.4byte	.LASF200
	.byte	0x1
	.2byte	0x193
	.byte	0xc
	.4byte	0x264
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0x18
	.4byte	.LVL25
	.4byte	0xc8d
	.uleb128 0x18
	.4byte	.LVL28
	.4byte	0xc8d
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF201
	.byte	0x1
	.2byte	0x180
	.byte	0xa
	.byte	0x1
	.4byte	0x264
	.4byte	.LFB141
	.4byte	.LFE141
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x16
	.byte	0x1
	.4byte	.LASF203
	.byte	0x1
	.2byte	0x15f
	.byte	0x13
	.byte	0x1
	.4byte	0x7ff
	.4byte	.LFB140
	.4byte	.LFE140
	.4byte	.LLST8
	.byte	0x1
	.4byte	0xc72
	.uleb128 0x14
	.4byte	.LASF204
	.byte	0x1
	.2byte	0x15f
	.byte	0x2c
	.4byte	0x264
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x17
	.4byte	.LASF205
	.byte	0x1
	.2byte	0x161
	.byte	0x15
	.4byte	0x7ff
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x17
	.4byte	.LASF206
	.byte	0x1
	.2byte	0x162
	.byte	0xc
	.4byte	0x264
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x18
	.4byte	.LVL22
	.4byte	0xcbf
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF207
	.byte	0x1
	.2byte	0x156
	.byte	0xa
	.byte	0x1
	.4byte	0x264
	.4byte	.LFB139
	.4byte	.LFE139
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF208
	.byte	0x1
	.2byte	0x14d
	.byte	0x11
	.byte	0x1
	.4byte	0x264
	.4byte	.LFB138
	.4byte	.LFE138
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF209
	.byte	0x1
	.2byte	0x142
	.byte	0xd
	.byte	0x1
	.4byte	.LFB137
	.4byte	.LFE137
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF218
	.byte	0x1
	.byte	0xff
	.byte	0x1a
	.byte	0x1
	.4byte	0x7ff
	.byte	0x1
	.4byte	0xcec
	.uleb128 0x1c
	.4byte	.LASF219
	.byte	0x1
	.byte	0xff
	.byte	0x30
	.4byte	0x264
	.uleb128 0x1d
	.4byte	.LASF205
	.byte	0x1
	.2byte	0x101
	.byte	0x16
	.4byte	0x7ff
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF220
	.byte	0x1
	.byte	0xe8
	.byte	0xd
	.byte	0x1
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF221
	.byte	0x1
	.byte	0xdd
	.byte	0xd
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.byte	0x1
	.4byte	.LASF210
	.byte	0x1
	.byte	0xc0
	.byte	0x13
	.byte	0x1
	.4byte	0x7ff
	.4byte	.LFB133
	.4byte	.LFE133
	.4byte	.LLST0
	.byte	0x1
	.4byte	0xd2a
	.uleb128 0x18
	.4byte	.LVL0
	.4byte	0xcec
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.4byte	.LASF211
	.byte	0x1
	.byte	0x94
	.byte	0x13
	.byte	0x1
	.4byte	0x7ff
	.4byte	.LFB132
	.4byte	.LFE132
	.4byte	.LLST6
	.byte	0x1
	.4byte	0xd8d
	.uleb128 0x21
	.4byte	.LASF205
	.byte	0x1
	.byte	0x96
	.byte	0x16
	.4byte	0x7ff
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x22
	.4byte	.LVL12
	.4byte	0xe28
	.4byte	0xd70
	.uleb128 0x23
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0x22
	.4byte	.LVL13
	.4byte	0xcbf
	.4byte	0xd83
	.uleb128 0x23
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x18
	.4byte	.LVL16
	.4byte	0xcf6
	.byte	0
	.uleb128 0x24
	.4byte	0xcf6
	.4byte	.LFB134
	.4byte	.LFE134
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x25
	.4byte	0xcbf
	.4byte	.LFB136
	.4byte	.LFE136
	.4byte	.LLST1
	.byte	0x1
	.4byte	0xe28
	.uleb128 0x26
	.4byte	0xcd2
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x27
	.4byte	0xcde
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x28
	.4byte	0xcbf
	.4byte	.LBI4
	.byte	.LVU37
	.4byte	.LBB4
	.4byte	.LBE4
	.byte	0x1
	.byte	0xff
	.byte	0x1a
	.4byte	0xe1e
	.uleb128 0x26
	.4byte	0xcd2
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x27
	.4byte	0xcde
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x29
	.4byte	.LVL8
	.4byte	0xe37
	.uleb128 0x23
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x23
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x23
	.byte	0x1
	.byte	0x52
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LVL6
	.4byte	0xe46
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.byte	0x1
	.4byte	.LASF212
	.4byte	.LASF212
	.byte	0x9
	.2byte	0x10d
	.byte	0x6
	.uleb128 0x2a
	.byte	0x1
	.byte	0x1
	.4byte	.LASF213
	.4byte	.LASF213
	.byte	0x9
	.2byte	0x10e
	.byte	0x6
	.uleb128 0x2a
	.byte	0x1
	.byte	0x1
	.4byte	.LASF214
	.4byte	.LASF214
	.byte	0x9
	.2byte	0x112
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
	.uleb128 0x35
	.byte	0
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0xa
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
	.uleb128 0x6
	.uleb128 0x2137
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x18
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x25
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.uleb128 0x2137
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
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
.LVUS21:
	.uleb128 0
	.uleb128 .LVU241
	.uleb128 .LVU241
	.uleb128 0
.LLST21:
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL43
	.4byte	.LFE169
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LFB163
	.4byte	.LCFI5
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI5
	.4byte	.LFE163
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0
	.4byte	0
.LVUS20:
	.uleb128 .LVU209
	.uleb128 .LVU211
	.uleb128 .LVU211
	.uleb128 .LVU222
.LLST20:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL38
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS18:
	.uleb128 0
	.uleb128 .LVU200
	.uleb128 .LVU200
	.uleb128 0
.LLST18:
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL35
	.4byte	.LFE162
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS17:
	.uleb128 0
	.uleb128 .LVU195
	.uleb128 .LVU195
	.uleb128 0
.LLST17:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL33
	.4byte	.LFE161
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS16:
	.uleb128 0
	.uleb128 .LVU190
	.uleb128 .LVU190
	.uleb128 0
.LLST16:
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL31
	.4byte	.LFE160
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LFB142
	.4byte	.LCFI4
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI4
	.4byte	.LFE142
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0
	.4byte	0
.LVUS13:
	.uleb128 0
	.uleb128 .LVU110
	.uleb128 .LVU110
	.uleb128 .LVU118
	.uleb128 .LVU118
	.uleb128 0
.LLST13:
	.4byte	.LVL24
	.4byte	.LVL25-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL25-1
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL27
	.4byte	.LFE142
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS14:
	.uleb128 .LVU112
	.uleb128 .LVU118
	.uleb128 .LVU118
	.uleb128 .LVU124
.LLST14:
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS15:
	.uleb128 .LVU113
	.uleb128 .LVU124
.LLST15:
	.4byte	.LVL26
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LFB140
	.4byte	.LCFI3
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI3
	.4byte	.LFE140
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 0
	.uleb128 .LVU85
	.uleb128 .LVU85
	.uleb128 .LVU87
	.uleb128 .LVU87
	.uleb128 .LVU93
	.uleb128 .LVU93
	.uleb128 .LVU94
	.uleb128 .LVU94
	.uleb128 0
.LLST9:
	.4byte	.LVL18
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
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL21
	.4byte	.LVL22-1
	.2byte	0x5
	.byte	0x3
	.4byte	uwTickFreq
	.4byte	.LVL22-1
	.4byte	.LFE140
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 .LVU78
	.uleb128 .LVU85
	.uleb128 .LVU85
	.uleb128 .LVU87
	.uleb128 .LVU87
	.uleb128 .LVU94
	.uleb128 .LVU94
	.uleb128 0
.LLST10:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LFE140
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 .LVU88
	.uleb128 .LVU100
	.uleb128 .LVU100
	.uleb128 0
.LLST11:
	.4byte	.LVL20
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL23
	.4byte	.LFE140
	.2byte	0x5
	.byte	0x3
	.4byte	uwTickFreq
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LFB133
	.4byte	.LCFI0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI0
	.4byte	.LFE133
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LFB132
	.4byte	.LCFI2
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI2
	.4byte	.LFE132
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 .LVU48
	.uleb128 .LVU57
	.uleb128 .LVU57
	.uleb128 .LVU59
	.uleb128 .LVU59
	.uleb128 .LVU61
	.uleb128 .LVU61
	.uleb128 .LVU63
.LLST7:
	.4byte	.LVL11
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LFB136
	.4byte	.LCFI1
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI1
	.4byte	.LFE136
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU26
	.uleb128 .LVU26
	.uleb128 .LVU29
	.uleb128 .LVU29
	.uleb128 .LVU33
	.uleb128 .LVU33
	.uleb128 .LVU45
	.uleb128 .LVU45
	.uleb128 0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL5
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL10
	.4byte	.LFE136
	.2byte	0x5
	.byte	0x3
	.4byte	uwTickPrio
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 .LVU22
	.uleb128 .LVU27
	.uleb128 .LVU27
	.uleb128 .LVU29
	.uleb128 .LVU29
	.uleb128 .LVU42
	.uleb128 .LVU42
	.uleb128 0
.LLST3:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL4
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LFE136
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU37
	.uleb128 .LVU42
.LLST4:
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 .LVU41
	.uleb128 .LVU42
.LLST5:
	.4byte	.LVL9
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x13c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB134
	.4byte	.LFE134-.LFB134
	.4byte	.LFB133
	.4byte	.LFE133-.LFB133
	.4byte	.LFB136
	.4byte	.LFE136-.LFB136
	.4byte	.LFB132
	.4byte	.LFE132-.LFB132
	.4byte	.LFB137
	.4byte	.LFE137-.LFB137
	.4byte	.LFB138
	.4byte	.LFE138-.LFB138
	.4byte	.LFB139
	.4byte	.LFE139-.LFB139
	.4byte	.LFB140
	.4byte	.LFE140-.LFB140
	.4byte	.LFB141
	.4byte	.LFE141-.LFB141
	.4byte	.LFB142
	.4byte	.LFE142-.LFB142
	.4byte	.LFB143
	.4byte	.LFE143-.LFB143
	.4byte	.LFB144
	.4byte	.LFE144-.LFB144
	.4byte	.LFB145
	.4byte	.LFE145-.LFB145
	.4byte	.LFB146
	.4byte	.LFE146-.LFB146
	.4byte	.LFB147
	.4byte	.LFE147-.LFB147
	.4byte	.LFB148
	.4byte	.LFE148-.LFB148
	.4byte	.LFB149
	.4byte	.LFE149-.LFB149
	.4byte	.LFB150
	.4byte	.LFE150-.LFB150
	.4byte	.LFB151
	.4byte	.LFE151-.LFB151
	.4byte	.LFB152
	.4byte	.LFE152-.LFB152
	.4byte	.LFB153
	.4byte	.LFE153-.LFB153
	.4byte	.LFB154
	.4byte	.LFE154-.LFB154
	.4byte	.LFB155
	.4byte	.LFE155-.LFB155
	.4byte	.LFB156
	.4byte	.LFE156-.LFB156
	.4byte	.LFB157
	.4byte	.LFE157-.LFB157
	.4byte	.LFB158
	.4byte	.LFE158-.LFB158
	.4byte	.LFB159
	.4byte	.LFE159-.LFB159
	.4byte	.LFB160
	.4byte	.LFE160-.LFB160
	.4byte	.LFB161
	.4byte	.LFE161-.LFB161
	.4byte	.LFB162
	.4byte	.LFE162-.LFB162
	.4byte	.LFB163
	.4byte	.LFE163-.LFB163
	.4byte	.LFB164
	.4byte	.LFE164-.LFB164
	.4byte	.LFB165
	.4byte	.LFE165-.LFB165
	.4byte	.LFB166
	.4byte	.LFE166-.LFB166
	.4byte	.LFB167
	.4byte	.LFE167-.LFB167
	.4byte	.LFB168
	.4byte	.LFE168-.LFB168
	.4byte	.LFB169
	.4byte	.LFE169-.LFB169
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB134
	.4byte	.LFE134
	.4byte	.LFB133
	.4byte	.LFE133
	.4byte	.LFB136
	.4byte	.LFE136
	.4byte	.LFB132
	.4byte	.LFE132
	.4byte	.LFB137
	.4byte	.LFE137
	.4byte	.LFB138
	.4byte	.LFE138
	.4byte	.LFB139
	.4byte	.LFE139
	.4byte	.LFB140
	.4byte	.LFE140
	.4byte	.LFB141
	.4byte	.LFE141
	.4byte	.LFB142
	.4byte	.LFE142
	.4byte	.LFB143
	.4byte	.LFE143
	.4byte	.LFB144
	.4byte	.LFE144
	.4byte	.LFB145
	.4byte	.LFE145
	.4byte	.LFB146
	.4byte	.LFE146
	.4byte	.LFB147
	.4byte	.LFE147
	.4byte	.LFB148
	.4byte	.LFE148
	.4byte	.LFB149
	.4byte	.LFE149
	.4byte	.LFB150
	.4byte	.LFE150
	.4byte	.LFB151
	.4byte	.LFE151
	.4byte	.LFB152
	.4byte	.LFE152
	.4byte	.LFB153
	.4byte	.LFE153
	.4byte	.LFB154
	.4byte	.LFE154
	.4byte	.LFB155
	.4byte	.LFE155
	.4byte	.LFB156
	.4byte	.LFE156
	.4byte	.LFB157
	.4byte	.LFE157
	.4byte	.LFB158
	.4byte	.LFE158
	.4byte	.LFB159
	.4byte	.LFE159
	.4byte	.LFB160
	.4byte	.LFE160
	.4byte	.LFB161
	.4byte	.LFE161
	.4byte	.LFB162
	.4byte	.LFE162
	.4byte	.LFB163
	.4byte	.LFE163
	.4byte	.LFB164
	.4byte	.LFE164
	.4byte	.LFB165
	.4byte	.LFE165
	.4byte	.LFB166
	.4byte	.LFE166
	.4byte	.LFB167
	.4byte	.LFE167
	.4byte	.LFB168
	.4byte	.LFE168
	.4byte	.LFB169
	.4byte	.LFE169
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF91:
	.ascii	"LOAD\000"
.LASF195:
	.ascii	"HAL_GetHalVersion\000"
.LASF34:
	.ascii	"TIM1_TRG_COM_TIM17_IRQn\000"
.LASF67:
	.ascii	"COMP4_IRQn\000"
.LASF31:
	.ascii	"EXTI9_5_IRQn\000"
.LASF219:
	.ascii	"TickPriority\000"
.LASF74:
	.ascii	"I2C3_ER_IRQn\000"
.LASF39:
	.ascii	"I2C1_EV_IRQn\000"
.LASF214:
	.ascii	"HAL_SYSTICK_Config\000"
.LASF160:
	.ascii	"HAL_BUSY\000"
.LASF203:
	.ascii	"HAL_SetTickFreq\000"
.LASF149:
	.ascii	"MEMRMP\000"
.LASF117:
	.ascii	"CIFR\000"
.LASF86:
	.ascii	"long long unsigned int\000"
.LASF60:
	.ascii	"DMA2_Channel1_IRQn\000"
.LASF147:
	.ascii	"CCIPR2\000"
.LASF49:
	.ascii	"RTC_Alarm_IRQn\000"
.LASF42:
	.ascii	"I2C2_ER_IRQn\000"
.LASF38:
	.ascii	"TIM4_IRQn\000"
.LASF12:
	.ascii	"RTC_WKUP_IRQn\000"
.LASF177:
	.ascii	"HAL_SYSCFG_VREFBUF_HighImpedanceConfig\000"
.LASF9:
	.ascii	"WWDG_IRQn\000"
.LASF116:
	.ascii	"CIER\000"
.LASF54:
	.ascii	"TIM8_CC_IRQn\000"
.LASF85:
	.ascii	"long long int\000"
.LASF79:
	.ascii	"signed char\000"
.LASF205:
	.ascii	"status\000"
.LASF119:
	.ascii	"AHB1RSTR\000"
.LASF185:
	.ascii	"HAL_DBGMCU_EnableDBGStandbyMode\000"
.LASF135:
	.ascii	"AHB1SMENR\000"
.LASF141:
	.ascii	"APB2SMENR\000"
.LASF29:
	.ascii	"FDCAN1_IT0_IRQn\000"
.LASF200:
	.ascii	"wait\000"
.LASF64:
	.ascii	"DMA2_Channel5_IRQn\000"
.LASF83:
	.ascii	"long int\000"
.LASF125:
	.ascii	"APB2RSTR\000"
.LASF123:
	.ascii	"APB1RSTR1\000"
.LASF124:
	.ascii	"APB1RSTR2\000"
.LASF207:
	.ascii	"HAL_GetTickPrio\000"
.LASF87:
	.ascii	"unsigned int\000"
.LASF101:
	.ascii	"OPTKEYR\000"
.LASF202:
	.ascii	"HAL_SYSCFG_EnableVREFBUF\000"
.LASF77:
	.ascii	"CORDIC_IRQn\000"
.LASF171:
	.ascii	"HAL_SYSCFG_DisableVREFBUF\000"
.LASF210:
	.ascii	"HAL_DeInit\000"
.LASF26:
	.ascii	"ADC1_2_IRQn\000"
.LASF58:
	.ascii	"TIM6_DAC_IRQn\000"
.LASF114:
	.ascii	"PLLCFGR\000"
.LASF57:
	.ascii	"UART4_IRQn\000"
.LASF7:
	.ascii	"PendSV_IRQn\000"
.LASF174:
	.ascii	"HAL_SYSCFG_VREFBUF_TrimmingConfig\000"
.LASF220:
	.ascii	"HAL_MspDeInit\000"
.LASF170:
	.ascii	"HAL_SYSCFG_EnableIOSwitchBooster\000"
.LASF99:
	.ascii	"PDKEYR\000"
.LASF188:
	.ascii	"HAL_DBGMCU_DisableDBGSleepMode\000"
.LASF88:
	.ascii	"__uint32_t\000"
.LASF3:
	.ascii	"BusFault_IRQn\000"
.LASF136:
	.ascii	"AHB2SMENR\000"
.LASF27:
	.ascii	"USB_HP_IRQn\000"
.LASF154:
	.ascii	"SWPR\000"
.LASF100:
	.ascii	"KEYR\000"
.LASF118:
	.ascii	"CICR\000"
.LASF96:
	.ascii	"APB1FZR2\000"
.LASF152:
	.ascii	"SCSR\000"
.LASF30:
	.ascii	"FDCAN1_IT1_IRQn\000"
.LASF76:
	.ascii	"DMA2_Channel6_IRQn\000"
.LASF161:
	.ascii	"HAL_TIMEOUT\000"
.LASF127:
	.ascii	"AHB1ENR\000"
.LASF55:
	.ascii	"LPTIM1_IRQn\000"
.LASF186:
	.ascii	"HAL_DBGMCU_DisableDBGStopMode\000"
.LASF10:
	.ascii	"PVD_PVM_IRQn\000"
.LASF163:
	.ascii	"SystemCoreClock\000"
.LASF166:
	.ascii	"uwTickFreq\000"
.LASF164:
	.ascii	"uwTick\000"
.LASF73:
	.ascii	"I2C3_EV_IRQn\000"
.LASF84:
	.ascii	"long unsigned int\000"
.LASF69:
	.ascii	"SAI1_IRQn\000"
.LASF106:
	.ascii	"PCROP1ER\000"
.LASF148:
	.ascii	"RCC_TypeDef\000"
.LASF158:
	.ascii	"HAL_OK\000"
.LASF24:
	.ascii	"DMA1_Channel5_IRQn\000"
.LASF92:
	.ascii	"CALIB\000"
.LASF176:
	.ascii	"TrimmingValue\000"
.LASF187:
	.ascii	"HAL_DBGMCU_EnableDBGStopMode\000"
.LASF105:
	.ascii	"PCROP1SR\000"
.LASF137:
	.ascii	"AHB3SMENR\000"
.LASF121:
	.ascii	"AHB3RSTR\000"
.LASF48:
	.ascii	"EXTI15_10_IRQn\000"
.LASF221:
	.ascii	"HAL_MspInit\000"
.LASF97:
	.ascii	"APB2FZ\000"
.LASF43:
	.ascii	"SPI1_IRQn\000"
.LASF93:
	.ascii	"SysTick_Type\000"
.LASF162:
	.ascii	"HAL_StatusTypeDef\000"
.LASF107:
	.ascii	"WRP1AR\000"
.LASF81:
	.ascii	"short int\000"
.LASF192:
	.ascii	"HAL_GetUIDw0\000"
.LASF191:
	.ascii	"HAL_GetUIDw1\000"
.LASF190:
	.ascii	"HAL_GetUIDw2\000"
.LASF23:
	.ascii	"DMA1_Channel4_IRQn\000"
.LASF8:
	.ascii	"SysTick_IRQn\000"
.LASF35:
	.ascii	"TIM1_CC_IRQn\000"
.LASF94:
	.ascii	"IDCODE\000"
.LASF211:
	.ascii	"HAL_Init\000"
.LASF21:
	.ascii	"DMA1_Channel2_IRQn\000"
.LASF51:
	.ascii	"TIM8_BRK_IRQn\000"
.LASF110:
	.ascii	"SEC1R\000"
.LASF208:
	.ascii	"HAL_GetTick\000"
.LASF5:
	.ascii	"SVCall_IRQn\000"
.LASF167:
	.ascii	"HAL_SYSCFG_DisableIOSwitchVDD\000"
.LASF61:
	.ascii	"DMA2_Channel2_IRQn\000"
.LASF156:
	.ascii	"VREFBUF_TypeDef\000"
.LASF129:
	.ascii	"AHB3ENR\000"
.LASF199:
	.ascii	"Delay\000"
.LASF44:
	.ascii	"SPI2_IRQn\000"
.LASF1:
	.ascii	"HardFault_IRQn\000"
.LASF216:
	.ascii	"Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal.c\000"
.LASF213:
	.ascii	"HAL_NVIC_SetPriority\000"
.LASF179:
	.ascii	"HAL_SYSCFG_VREFBUF_VoltageScalingConfig\000"
.LASF108:
	.ascii	"WRP1BR\000"
.LASF131:
	.ascii	"APB1ENR1\000"
.LASF132:
	.ascii	"APB1ENR2\000"
.LASF217:
	.ascii	"/home/joel/share/EVSPIN32G4_Shinano\000"
.LASF196:
	.ascii	"HAL_ResumeTick\000"
.LASF20:
	.ascii	"DMA1_Channel1_IRQn\000"
.LASF2:
	.ascii	"MemoryManagement_IRQn\000"
.LASF182:
	.ascii	"HAL_SYSCFG_EnableMemorySwappingBank\000"
.LASF218:
	.ascii	"HAL_InitTick\000"
.LASF115:
	.ascii	"RESERVED0\000"
.LASF103:
	.ascii	"RESERVED1\000"
.LASF109:
	.ascii	"RESERVED2\000"
.LASF122:
	.ascii	"RESERVED3\000"
.LASF126:
	.ascii	"RESERVED4\000"
.LASF130:
	.ascii	"RESERVED5\000"
.LASF134:
	.ascii	"RESERVED6\000"
.LASF138:
	.ascii	"RESERVED7\000"
.LASF142:
	.ascii	"RESERVED8\000"
.LASF144:
	.ascii	"RESERVED9\000"
.LASF68:
	.ascii	"CRS_IRQn\000"
.LASF62:
	.ascii	"DMA2_Channel3_IRQn\000"
.LASF155:
	.ascii	"SYSCFG_TypeDef\000"
.LASF80:
	.ascii	"unsigned char\000"
.LASF168:
	.ascii	"HAL_SYSCFG_EnableIOSwitchVDD\000"
.LASF19:
	.ascii	"EXTI4_IRQn\000"
.LASF143:
	.ascii	"CCIPR\000"
.LASF71:
	.ascii	"RNG_IRQn\000"
.LASF204:
	.ascii	"Freq\000"
.LASF184:
	.ascii	"HAL_DBGMCU_DisableDBGStandbyMode\000"
.LASF146:
	.ascii	"CRRCR\000"
.LASF172:
	.ascii	"tickstart\000"
.LASF72:
	.ascii	"LPUART1_IRQn\000"
.LASF22:
	.ascii	"DMA1_Channel3_IRQn\000"
.LASF66:
	.ascii	"COMP1_2_3_IRQn\000"
.LASF212:
	.ascii	"HAL_NVIC_SetPriorityGrouping\000"
.LASF17:
	.ascii	"EXTI2_IRQn\000"
.LASF133:
	.ascii	"APB2ENR\000"
.LASF197:
	.ascii	"HAL_SuspendTick\000"
.LASF189:
	.ascii	"HAL_DBGMCU_EnableDBGSleepMode\000"
.LASF13:
	.ascii	"FLASH_IRQn\000"
.LASF33:
	.ascii	"TIM1_UP_TIM16_IRQn\000"
.LASF98:
	.ascii	"DBGMCU_TypeDef\000"
.LASF194:
	.ascii	"HAL_GetREVID\000"
.LASF102:
	.ascii	"ECCR\000"
.LASF46:
	.ascii	"USART2_IRQn\000"
.LASF4:
	.ascii	"UsageFault_IRQn\000"
.LASF159:
	.ascii	"HAL_ERROR\000"
.LASF181:
	.ascii	"HAL_SYSCFG_DisableMemorySwappingBank\000"
.LASF157:
	.ascii	"long double\000"
.LASF165:
	.ascii	"uwTickPrio\000"
.LASF63:
	.ascii	"DMA2_Channel4_IRQn\000"
.LASF198:
	.ascii	"HAL_Delay\000"
.LASF178:
	.ascii	"Mode\000"
.LASF11:
	.ascii	"RTC_TAMP_LSECSS_IRQn\000"
.LASF120:
	.ascii	"AHB2RSTR\000"
.LASF59:
	.ascii	"TIM7_IRQn\000"
.LASF201:
	.ascii	"HAL_GetTickFreq\000"
.LASF215:
	.ascii	"GNU C17 10.2.1 20201103 (release) -mcpu=cortex-m4 -"
	.ascii	"mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=hard -march=ar"
	.ascii	"mv7e-m+fp -g -gdwarf-2 -O3 -fdata-sections -ffuncti"
	.ascii	"on-sections\000"
.LASF0:
	.ascii	"NonMaskableInt_IRQn\000"
.LASF173:
	.ascii	"HAL_SYSCFG_CCMSRAM_WriteProtectionEnable\000"
.LASF25:
	.ascii	"DMA1_Channel6_IRQn\000"
.LASF206:
	.ascii	"prevTickFreq\000"
.LASF28:
	.ascii	"USB_LP_IRQn\000"
.LASF53:
	.ascii	"TIM8_TRG_COM_IRQn\000"
.LASF128:
	.ascii	"AHB2ENR\000"
.LASF82:
	.ascii	"short unsigned int\000"
.LASF104:
	.ascii	"OPTR\000"
.LASF50:
	.ascii	"USBWakeUp_IRQn\000"
.LASF6:
	.ascii	"DebugMonitor_IRQn\000"
.LASF90:
	.ascii	"CTRL\000"
.LASF209:
	.ascii	"HAL_IncTick\000"
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
.LASF169:
	.ascii	"HAL_SYSCFG_DisableIOSwitchBooster\000"
.LASF45:
	.ascii	"USART1_IRQn\000"
.LASF175:
	.ascii	"Page\000"
.LASF145:
	.ascii	"BDCR\000"
.LASF18:
	.ascii	"EXTI3_IRQn\000"
.LASF95:
	.ascii	"APB1FZR1\000"
.LASF150:
	.ascii	"CFGR1\000"
.LASF153:
	.ascii	"CFGR2\000"
.LASF14:
	.ascii	"RCC_IRQn\000"
.LASF32:
	.ascii	"TIM1_BRK_TIM15_IRQn\000"
.LASF112:
	.ascii	"ICSCR\000"
.LASF139:
	.ascii	"APB1SMENR1\000"
.LASF16:
	.ascii	"EXTI1_IRQn\000"
.LASF193:
	.ascii	"HAL_GetDEVID\000"
.LASF70:
	.ascii	"FPU_IRQn\000"
.LASF113:
	.ascii	"CFGR\000"
.LASF183:
	.ascii	"HAL_SYSCFG_CCMSRAMErase\000"
.LASF65:
	.ascii	"UCPD1_IRQn\000"
.LASF40:
	.ascii	"I2C1_ER_IRQn\000"
.LASF111:
	.ascii	"FLASH_TypeDef\000"
.LASF56:
	.ascii	"SPI3_IRQn\000"
.LASF78:
	.ascii	"FMAC_IRQn\000"
.LASF89:
	.ascii	"uint32_t\000"
.LASF37:
	.ascii	"TIM3_IRQn\000"
.LASF151:
	.ascii	"EXTICR\000"
.LASF180:
	.ascii	"VoltageScaling\000"
.LASF140:
	.ascii	"APB1SMENR2\000"
	.ident	"GCC: (GNU Arm Embedded Toolchain 10-2020-q4-major) 10.2.1 20201103 (release)"
