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
	.file	"stm32g4xx_hal_pwr.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.HAL_PWR_DeInit,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_PWR_DeInit
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_PWR_DeInit, %function
HAL_PWR_DeInit:
.LFB132:
	.file 1 "Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_pwr.c"
	.loc 1 87 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 88 3 view .LVU1
	ldr	r3, .L3
	ldr	r2, [r3, #56]
	orr	r2, r2, #268435456
	str	r2, [r3, #56]
	.loc 1 89 3 view .LVU2
	ldr	r2, [r3, #56]
	bic	r2, r2, #268435456
	str	r2, [r3, #56]
	.loc 1 90 1 is_stmt 0 view .LVU3
	bx	lr
.L4:
	.align	2
.L3:
	.word	1073876992
	.cfi_endproc
.LFE132:
	.size	HAL_PWR_DeInit, .-HAL_PWR_DeInit
	.section	.text.HAL_PWR_EnableBkUpAccess,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_PWR_EnableBkUpAccess
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_PWR_EnableBkUpAccess, %function
HAL_PWR_EnableBkUpAccess:
.LFB133:
	.loc 1 105 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 106 3 view .LVU5
	ldr	r2, .L6
	ldr	r3, [r2]
	orr	r3, r3, #256
	str	r3, [r2]
	.loc 1 107 1 is_stmt 0 view .LVU6
	bx	lr
.L7:
	.align	2
.L6:
	.word	1073770496
	.cfi_endproc
.LFE133:
	.size	HAL_PWR_EnableBkUpAccess, .-HAL_PWR_EnableBkUpAccess
	.section	.text.HAL_PWR_DisableBkUpAccess,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_PWR_DisableBkUpAccess
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_PWR_DisableBkUpAccess, %function
HAL_PWR_DisableBkUpAccess:
.LFB134:
	.loc 1 115 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 116 3 view .LVU8
	ldr	r2, .L9
	ldr	r3, [r2]
	bic	r3, r3, #256
	str	r3, [r2]
	.loc 1 117 1 is_stmt 0 view .LVU9
	bx	lr
.L10:
	.align	2
.L9:
	.word	1073770496
	.cfi_endproc
.LFE134:
	.size	HAL_PWR_DisableBkUpAccess, .-HAL_PWR_DisableBkUpAccess
	.section	.text.HAL_PWR_ConfigPVD,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_PWR_ConfigPVD
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_PWR_ConfigPVD, %function
HAL_PWR_ConfigPVD:
.LVL0:
.LFB135:
	.loc 1 309 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 311 3 view .LVU11
	.loc 1 312 3 view .LVU12
	.loc 1 315 3 view .LVU13
	ldr	r1, .L29
	.loc 1 318 3 is_stmt 0 view .LVU14
	ldr	r3, .L29+4
	.loc 1 315 3 view .LVU15
	ldr	r2, [r1, #4]
	.loc 1 309 1 view .LVU16
	push	{r4}
.LCFI0:
	.cfi_def_cfa_offset 4
	.cfi_offset 4, -4
	.loc 1 315 3 view .LVU17
	ldr	r4, [r0]
	bic	r2, r2, #14
	orrs	r2, r2, r4
	str	r2, [r1, #4]
	.loc 1 318 3 is_stmt 1 view .LVU18
	ldr	r2, [r3, #4]
	bic	r2, r2, #65536
	str	r2, [r3, #4]
	.loc 1 319 3 view .LVU19
	ldr	r2, [r3]
	bic	r2, r2, #65536
	str	r2, [r3]
	.loc 1 320 3 view .LVU20
	ldr	r2, [r3, #12]
	bic	r2, r2, #65536
	str	r2, [r3, #12]
	.loc 1 321 3 view .LVU21
	ldr	r2, [r3, #8]
	bic	r2, r2, #65536
	str	r2, [r3, #8]
	.loc 1 324 3 view .LVU22
	.loc 1 324 17 is_stmt 0 view .LVU23
	ldr	r2, [r0, #4]
	.loc 1 324 5 view .LVU24
	lsls	r4, r2, #15
	bpl	.L12
	.loc 1 326 5 is_stmt 1 view .LVU25
	ldr	r1, [r3]
	orr	r1, r1, #65536
	str	r1, [r3]
.L12:
	.loc 1 330 3 view .LVU26
	.loc 1 330 5 is_stmt 0 view .LVU27
	lsls	r0, r2, #14
.LVL1:
	.loc 1 330 5 view .LVU28
	bpl	.L13
	.loc 1 332 5 is_stmt 1 view .LVU29
	ldr	r1, .L29+4
	ldr	r3, [r1, #4]
	orr	r3, r3, #65536
	str	r3, [r1, #4]
.L13:
	.loc 1 336 3 view .LVU30
	.loc 1 336 5 is_stmt 0 view .LVU31
	lsls	r1, r2, #31
	bpl	.L14
	.loc 1 338 5 is_stmt 1 view .LVU32
	ldr	r1, .L29+4
	ldr	r3, [r1, #8]
	orr	r3, r3, #65536
	str	r3, [r1, #8]
.L14:
	.loc 1 341 3 view .LVU33
	.loc 1 341 5 is_stmt 0 view .LVU34
	lsls	r3, r2, #30
	bpl	.L15
	.loc 1 343 5 is_stmt 1 view .LVU35
	ldr	r2, .L29+4
	ldr	r3, [r2, #12]
	orr	r3, r3, #65536
	str	r3, [r2, #12]
.L15:
	.loc 1 346 3 view .LVU36
	.loc 1 347 1 is_stmt 0 view .LVU37
	movs	r0, #0
	ldr	r4, [sp], #4
.LCFI1:
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	bx	lr
.L30:
	.align	2
.L29:
	.word	1073770496
	.word	1073808384
	.cfi_endproc
.LFE135:
	.size	HAL_PWR_ConfigPVD, .-HAL_PWR_ConfigPVD
	.section	.text.HAL_PWR_EnablePVD,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_PWR_EnablePVD
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_PWR_EnablePVD, %function
HAL_PWR_EnablePVD:
.LFB136:
	.loc 1 355 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 356 3 view .LVU39
	ldr	r2, .L32
	ldr	r3, [r2, #4]
	orr	r3, r3, #1
	str	r3, [r2, #4]
	.loc 1 357 1 is_stmt 0 view .LVU40
	bx	lr
.L33:
	.align	2
.L32:
	.word	1073770496
	.cfi_endproc
.LFE136:
	.size	HAL_PWR_EnablePVD, .-HAL_PWR_EnablePVD
	.section	.text.HAL_PWR_DisablePVD,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_PWR_DisablePVD
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_PWR_DisablePVD, %function
HAL_PWR_DisablePVD:
.LFB137:
	.loc 1 364 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 365 3 view .LVU42
	ldr	r2, .L35
	ldr	r3, [r2, #4]
	bic	r3, r3, #1
	str	r3, [r2, #4]
	.loc 1 366 1 is_stmt 0 view .LVU43
	bx	lr
.L36:
	.align	2
.L35:
	.word	1073770496
	.cfi_endproc
.LFE137:
	.size	HAL_PWR_DisablePVD, .-HAL_PWR_DisablePVD
	.section	.text.HAL_PWR_EnableWakeUpPin,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_PWR_EnableWakeUpPin
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_PWR_EnableWakeUpPin, %function
HAL_PWR_EnableWakeUpPin:
.LVL2:
.LFB138:
	.loc 1 389 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 390 3 view .LVU45
	.loc 1 394 3 view .LVU46
	ldr	r1, .L38
	ldr	r2, [r1, #12]
	and	ip, r0, #31
	bic	r2, r2, ip
	orr	r2, r2, r0, lsr #5
	str	r2, [r1, #12]
	.loc 1 397 3 view .LVU47
	ldr	r3, [r1, #8]
	orr	r3, ip, r3
	str	r3, [r1, #8]
	.loc 1 400 1 is_stmt 0 view .LVU48
	bx	lr
.L39:
	.align	2
.L38:
	.word	1073770496
	.cfi_endproc
.LFE138:
	.size	HAL_PWR_EnableWakeUpPin, .-HAL_PWR_EnableWakeUpPin
	.section	.text.HAL_PWR_DisableWakeUpPin,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_PWR_DisableWakeUpPin
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_PWR_DisableWakeUpPin, %function
HAL_PWR_DisableWakeUpPin:
.LVL3:
.LFB139:
	.loc 1 410 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 411 3 view .LVU50
	.loc 1 413 3 view .LVU51
	ldr	r2, .L41
	ldr	r3, [r2, #8]
	and	r0, r0, #31
.LVL4:
	.loc 1 413 3 is_stmt 0 view .LVU52
	bic	r3, r3, r0
	str	r3, [r2, #8]
	.loc 1 414 1 view .LVU53
	bx	lr
.L42:
	.align	2
.L41:
	.word	1073770496
	.cfi_endproc
.LFE139:
	.size	HAL_PWR_DisableWakeUpPin, .-HAL_PWR_DisableWakeUpPin
	.section	.text.HAL_PWR_EnterSLEEPMode,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_PWR_EnterSLEEPMode
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_PWR_EnterSLEEPMode, %function
HAL_PWR_EnterSLEEPMode:
.LVL5:
.LFB140:
	.loc 1 442 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 444 3 view .LVU55
	.loc 1 445 3 view .LVU56
	.loc 1 448 3 view .LVU57
	.loc 1 451 9 is_stmt 0 view .LVU58
	ldr	r3, .L54
	.loc 1 442 1 view .LVU59
	push	{r4, lr}
.LCFI2:
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 451 9 view .LVU60
	ldr	r3, [r3, #20]
	.loc 1 442 1 view .LVU61
	mov	r4, r1
	.loc 1 448 6 view .LVU62
	cbnz	r0, .L44
	.loc 1 451 5 is_stmt 1 view .LVU63
	.loc 1 451 8 is_stmt 0 view .LVU64
	lsls	r2, r3, #22
	bmi	.L52
.LVL6:
.L45:
	.loc 1 468 3 is_stmt 1 view .LVU65
	ldr	r2, .L54+4
	ldr	r3, [r2, #16]
	.loc 1 471 5 is_stmt 0 view .LVU66
	cmp	r4, #1
	.loc 1 468 3 view .LVU67
	bic	r3, r3, #4
	str	r3, [r2, #16]
	.loc 1 471 3 is_stmt 1 view .LVU68
	.loc 1 471 5 is_stmt 0 view .LVU69
	beq	.L53
	.loc 1 479 5 is_stmt 1 view .LVU70
	.syntax unified
@ 479 "Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_pwr.c" 1
	sev
@ 0 "" 2
	.loc 1 480 5 view .LVU71
@ 480 "Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_pwr.c" 1
	wfe
@ 0 "" 2
	.loc 1 481 5 view .LVU72
@ 481 "Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_pwr.c" 1
	wfe
@ 0 "" 2
	.loc 1 484 1 is_stmt 0 view .LVU73
	.thumb
	.syntax unified
	pop	{r4, pc}
.LVL7:
.L44:
	.loc 1 461 5 is_stmt 1 view .LVU74
	.loc 1 461 8 is_stmt 0 view .LVU75
	lsls	r3, r3, #22
	bmi	.L45
	.loc 1 463 7 is_stmt 1 view .LVU76
	bl	HAL_PWREx_EnableLowPowerRunMode
.LVL8:
	.loc 1 463 7 is_stmt 0 view .LVU77
	b	.L45
.L53:
	.loc 1 474 5 is_stmt 1 view .LVU78
	.syntax unified
@ 474 "Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_pwr.c" 1
	wfi
@ 0 "" 2
	.loc 1 484 1 is_stmt 0 view .LVU79
	.thumb
	.syntax unified
	pop	{r4, pc}
.LVL9:
.L52:
	.loc 1 453 7 is_stmt 1 view .LVU80
	.loc 1 453 13 is_stmt 0 view .LVU81
	bl	HAL_PWREx_DisableLowPowerRunMode
.LVL10:
	.loc 1 453 13 view .LVU82
	b	.L45
.L55:
	.align	2
.L54:
	.word	1073770496
	.word	-536810240
	.cfi_endproc
.LFE140:
	.size	HAL_PWR_EnterSLEEPMode, .-HAL_PWR_EnterSLEEPMode
	.section	.text.HAL_PWR_EnterSTOPMode,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_PWR_EnterSTOPMode
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_PWR_EnterSTOPMode, %function
HAL_PWR_EnterSTOPMode:
.LVL11:
.LFB141:
	.loc 1 517 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 519 3 view .LVU84
	.loc 1 521 3 view .LVU85
	.loc 1 521 5 is_stmt 0 view .LVU86
	cmp	r0, #16384
	.loc 1 523 5 view .LVU87
	mov	r0, r1
.LVL12:
	.loc 1 521 5 view .LVU88
	beq	.L58
	.loc 1 527 5 is_stmt 1 view .LVU89
	b	HAL_PWREx_EnterSTOP0Mode
.LVL13:
.L58:
	.loc 1 523 5 view .LVU90
	b	HAL_PWREx_EnterSTOP1Mode
.LVL14:
	.loc 1 523 5 is_stmt 0 view .LVU91
	.cfi_endproc
.LFE141:
	.size	HAL_PWR_EnterSTOPMode, .-HAL_PWR_EnterSTOPMode
	.section	.text.HAL_PWR_EnterSTANDBYMode,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_PWR_EnterSTANDBYMode
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_PWR_EnterSTANDBYMode, %function
HAL_PWR_EnterSTANDBYMode:
.LFB142:
	.loc 1 550 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 552 3 view .LVU93
	ldr	r1, .L60
	.loc 1 555 3 is_stmt 0 view .LVU94
	ldr	r2, .L60+4
	.loc 1 552 3 view .LVU95
	ldr	r3, [r1]
	bic	r3, r3, #7
	orr	r3, r3, #3
	str	r3, [r1]
	.loc 1 555 3 is_stmt 1 view .LVU96
	ldr	r3, [r2, #16]
	orr	r3, r3, #4
	str	r3, [r2, #16]
	.loc 1 562 3 view .LVU97
	.syntax unified
@ 562 "Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_pwr.c" 1
	wfi
@ 0 "" 2
	.loc 1 563 1 is_stmt 0 view .LVU98
	.thumb
	.syntax unified
	bx	lr
.L61:
	.align	2
.L60:
	.word	1073770496
	.word	-536810240
	.cfi_endproc
.LFE142:
	.size	HAL_PWR_EnterSTANDBYMode, .-HAL_PWR_EnterSTANDBYMode
	.section	.text.HAL_PWR_EnableSleepOnExit,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_PWR_EnableSleepOnExit
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_PWR_EnableSleepOnExit, %function
HAL_PWR_EnableSleepOnExit:
.LFB143:
	.loc 1 576 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 578 3 view .LVU100
	ldr	r2, .L63
	ldr	r3, [r2, #16]
	orr	r3, r3, #2
	str	r3, [r2, #16]
	.loc 1 579 1 is_stmt 0 view .LVU101
	bx	lr
.L64:
	.align	2
.L63:
	.word	-536810240
	.cfi_endproc
.LFE143:
	.size	HAL_PWR_EnableSleepOnExit, .-HAL_PWR_EnableSleepOnExit
	.section	.text.HAL_PWR_DisableSleepOnExit,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_PWR_DisableSleepOnExit
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_PWR_DisableSleepOnExit, %function
HAL_PWR_DisableSleepOnExit:
.LFB144:
	.loc 1 589 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 591 3 view .LVU103
	ldr	r2, .L66
	ldr	r3, [r2, #16]
	bic	r3, r3, #2
	str	r3, [r2, #16]
	.loc 1 592 1 is_stmt 0 view .LVU104
	bx	lr
.L67:
	.align	2
.L66:
	.word	-536810240
	.cfi_endproc
.LFE144:
	.size	HAL_PWR_DisableSleepOnExit, .-HAL_PWR_DisableSleepOnExit
	.section	.text.HAL_PWR_EnableSEVOnPend,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_PWR_EnableSEVOnPend
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_PWR_EnableSEVOnPend, %function
HAL_PWR_EnableSEVOnPend:
.LFB145:
	.loc 1 603 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 605 3 view .LVU106
	ldr	r2, .L69
	ldr	r3, [r2, #16]
	orr	r3, r3, #16
	str	r3, [r2, #16]
	.loc 1 606 1 is_stmt 0 view .LVU107
	bx	lr
.L70:
	.align	2
.L69:
	.word	-536810240
	.cfi_endproc
.LFE145:
	.size	HAL_PWR_EnableSEVOnPend, .-HAL_PWR_EnableSEVOnPend
	.section	.text.HAL_PWR_DisableSEVOnPend,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_PWR_DisableSEVOnPend
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_PWR_DisableSEVOnPend, %function
HAL_PWR_DisableSEVOnPend:
.LFB146:
	.loc 1 616 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 618 3 view .LVU109
	ldr	r2, .L72
	ldr	r3, [r2, #16]
	bic	r3, r3, #16
	str	r3, [r2, #16]
	.loc 1 619 1 is_stmt 0 view .LVU110
	bx	lr
.L73:
	.align	2
.L72:
	.word	-536810240
	.cfi_endproc
.LFE146:
	.size	HAL_PWR_DisableSEVOnPend, .-HAL_PWR_DisableSEVOnPend
	.section	.text.HAL_PWR_PVDCallback,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	HAL_PWR_PVDCallback
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_PWR_PVDCallback, %function
HAL_PWR_PVDCallback:
.LFB147:
	.loc 1 630 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 634 1 view .LVU112
	bx	lr
	.cfi_endproc
.LFE147:
	.size	HAL_PWR_PVDCallback, .-HAL_PWR_PVDCallback
	.text
.Letext0:
	.file 2 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "Drivers/CMSIS/Include/core_cm4.h"
	.file 5 "Drivers/CMSIS/Device/ST/STM32G4xx/Include/stm32g431xx.h"
	.file 6 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_hal_def.h"
	.file 7 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_hal_pwr.h"
	.file 8 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_hal_pwr_ex.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xab6
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF127
	.byte	0xc
	.4byte	.LASF128
	.4byte	.LASF129
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF5
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x4f
	.byte	0x19
	.4byte	0x64
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x30
	.uleb128 0x5
	.4byte	0x87
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x58
	.uleb128 0x5
	.4byte	0x98
	.uleb128 0x6
	.4byte	0xa4
	.uleb128 0x7
	.byte	0x8c
	.byte	0x4
	.2byte	0x1b8
	.byte	0x9
	.4byte	0x20a
	.uleb128 0x8
	.4byte	.LASF13
	.byte	0x4
	.2byte	0x1ba
	.byte	0x12
	.4byte	0xa9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x4
	.2byte	0x1bb
	.byte	0x12
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x4
	.2byte	0x1bc
	.byte	0x12
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x4
	.2byte	0x1bd
	.byte	0x12
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.ascii	"SCR\000"
	.byte	0x4
	.2byte	0x1be
	.byte	0x12
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.ascii	"CCR\000"
	.byte	0x4
	.2byte	0x1bf
	.byte	0x12
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.ascii	"SHP\000"
	.byte	0x4
	.2byte	0x1c0
	.byte	0x12
	.4byte	0x21a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x4
	.2byte	0x1c1
	.byte	0x12
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x4
	.2byte	0x1c2
	.byte	0x12
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x4
	.2byte	0x1c3
	.byte	0x12
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x4
	.2byte	0x1c4
	.byte	0x12
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x4
	.2byte	0x1c5
	.byte	0x12
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x4
	.2byte	0x1c6
	.byte	0x12
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x4
	.2byte	0x1c7
	.byte	0x12
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x9
	.ascii	"PFR\000"
	.byte	0x4
	.2byte	0x1c8
	.byte	0x12
	.4byte	0x234
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.ascii	"DFR\000"
	.byte	0x4
	.2byte	0x1c9
	.byte	0x12
	.4byte	0xa9
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.ascii	"ADR\000"
	.byte	0x4
	.2byte	0x1ca
	.byte	0x12
	.4byte	0xa9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x4
	.2byte	0x1cb
	.byte	0x12
	.4byte	0x24e
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x4
	.2byte	0x1cc
	.byte	0x12
	.4byte	0x268
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x4
	.2byte	0x1cd
	.byte	0x12
	.4byte	0x26d
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0x4
	.2byte	0x1ce
	.byte	0x12
	.4byte	0xa4
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.byte	0
	.uleb128 0xa
	.4byte	0x93
	.4byte	0x21a
	.uleb128 0xb
	.4byte	0x80
	.byte	0xb
	.byte	0
	.uleb128 0x5
	.4byte	0x20a
	.uleb128 0xa
	.4byte	0xa9
	.4byte	0x22f
	.uleb128 0xb
	.4byte	0x80
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	0x21f
	.uleb128 0x5
	.4byte	0x22f
	.uleb128 0xa
	.4byte	0xa9
	.4byte	0x249
	.uleb128 0xb
	.4byte	0x80
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.4byte	0x239
	.uleb128 0x5
	.4byte	0x249
	.uleb128 0xa
	.4byte	0xa9
	.4byte	0x263
	.uleb128 0xb
	.4byte	0x80
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.4byte	0x253
	.uleb128 0x5
	.4byte	0x263
	.uleb128 0xa
	.4byte	0x98
	.4byte	0x27d
	.uleb128 0xb
	.4byte	0x80
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x4
	.2byte	0x1cf
	.byte	0x3
	.4byte	0xae
	.uleb128 0x7
	.byte	0x38
	.byte	0x5
	.2byte	0x193
	.byte	0x9
	.4byte	0x375
	.uleb128 0x8
	.4byte	.LASF29
	.byte	0x5
	.2byte	0x195
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.4byte	.LASF30
	.byte	0x5
	.2byte	0x196
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.4byte	.LASF31
	.byte	0x5
	.2byte	0x197
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.4byte	.LASF32
	.byte	0x5
	.2byte	0x198
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.4byte	.LASF33
	.byte	0x5
	.2byte	0x199
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.ascii	"PR1\000"
	.byte	0x5
	.2byte	0x19a
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.4byte	.LASF34
	.byte	0x5
	.2byte	0x19b
	.byte	0x11
	.4byte	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.4byte	.LASF35
	.byte	0x5
	.2byte	0x19c
	.byte	0x11
	.4byte	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.4byte	.LASF36
	.byte	0x5
	.2byte	0x19d
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.4byte	.LASF37
	.byte	0x5
	.2byte	0x19e
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x8
	.4byte	.LASF38
	.byte	0x5
	.2byte	0x19f
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.4byte	.LASF39
	.byte	0x5
	.2byte	0x1a0
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x8
	.4byte	.LASF40
	.byte	0x5
	.2byte	0x1a1
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.ascii	"PR2\000"
	.byte	0x5
	.2byte	0x1a2
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x5
	.2byte	0x1a3
	.byte	0x3
	.4byte	0x28a
	.uleb128 0x7
	.byte	0x84
	.byte	0x5
	.2byte	0x21e
	.byte	0x9
	.4byte	0x50e
	.uleb128 0x9
	.ascii	"CR1\000"
	.byte	0x5
	.2byte	0x220
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.ascii	"CR2\000"
	.byte	0x5
	.2byte	0x221
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.ascii	"CR3\000"
	.byte	0x5
	.2byte	0x222
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.ascii	"CR4\000"
	.byte	0x5
	.2byte	0x223
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.ascii	"SR1\000"
	.byte	0x5
	.2byte	0x224
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.ascii	"SR2\000"
	.byte	0x5
	.2byte	0x225
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.ascii	"SCR\000"
	.byte	0x5
	.2byte	0x226
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.4byte	.LASF42
	.byte	0x5
	.2byte	0x227
	.byte	0xc
	.4byte	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.4byte	.LASF43
	.byte	0x5
	.2byte	0x228
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.4byte	.LASF44
	.byte	0x5
	.2byte	0x229
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x8
	.4byte	.LASF45
	.byte	0x5
	.2byte	0x22a
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.4byte	.LASF46
	.byte	0x5
	.2byte	0x22b
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x8
	.4byte	.LASF47
	.byte	0x5
	.2byte	0x22c
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x8
	.4byte	.LASF48
	.byte	0x5
	.2byte	0x22d
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x8
	.4byte	.LASF49
	.byte	0x5
	.2byte	0x22e
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x8
	.4byte	.LASF50
	.byte	0x5
	.2byte	0x22f
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x8
	.4byte	.LASF51
	.byte	0x5
	.2byte	0x230
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x8
	.4byte	.LASF52
	.byte	0x5
	.2byte	0x231
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x8
	.4byte	.LASF53
	.byte	0x5
	.2byte	0x232
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x8
	.4byte	.LASF54
	.byte	0x5
	.2byte	0x233
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x8
	.4byte	.LASF55
	.byte	0x5
	.2byte	0x234
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x8
	.4byte	.LASF56
	.byte	0x5
	.2byte	0x235
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x8
	.4byte	.LASF34
	.byte	0x5
	.2byte	0x236
	.byte	0xc
	.4byte	0x50e
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.ascii	"CR5\000"
	.byte	0x5
	.2byte	0x237
	.byte	0x11
	.4byte	0xa4
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.byte	0
	.uleb128 0xa
	.4byte	0x98
	.4byte	0x51e
	.uleb128 0xb
	.4byte	0x80
	.byte	0x9
	.byte	0
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0x5
	.2byte	0x238
	.byte	0x3
	.4byte	0x382
	.uleb128 0x7
	.byte	0xa0
	.byte	0x5
	.2byte	0x23f
	.byte	0x9
	.4byte	0x7bd
	.uleb128 0x9
	.ascii	"CR\000"
	.byte	0x5
	.2byte	0x241
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.4byte	.LASF58
	.byte	0x5
	.2byte	0x242
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.4byte	.LASF59
	.byte	0x5
	.2byte	0x243
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.4byte	.LASF60
	.byte	0x5
	.2byte	0x244
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x5
	.2byte	0x245
	.byte	0x11
	.4byte	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.4byte	.LASF34
	.byte	0x5
	.2byte	0x246
	.byte	0x11
	.4byte	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.4byte	.LASF61
	.byte	0x5
	.2byte	0x247
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.4byte	.LASF62
	.byte	0x5
	.2byte	0x248
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.4byte	.LASF63
	.byte	0x5
	.2byte	0x249
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.4byte	.LASF35
	.byte	0x5
	.2byte	0x24a
	.byte	0x11
	.4byte	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x8
	.4byte	.LASF64
	.byte	0x5
	.2byte	0x24b
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.4byte	.LASF65
	.byte	0x5
	.2byte	0x24c
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x8
	.4byte	.LASF66
	.byte	0x5
	.2byte	0x24d
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x8
	.4byte	.LASF67
	.byte	0x5
	.2byte	0x24e
	.byte	0x11
	.4byte	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x8
	.4byte	.LASF68
	.byte	0x5
	.2byte	0x24f
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x8
	.4byte	.LASF69
	.byte	0x5
	.2byte	0x250
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x8
	.4byte	.LASF70
	.byte	0x5
	.2byte	0x251
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x8
	.4byte	.LASF71
	.byte	0x5
	.2byte	0x252
	.byte	0x11
	.4byte	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x8
	.4byte	.LASF72
	.byte	0x5
	.2byte	0x253
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x8
	.4byte	.LASF73
	.byte	0x5
	.2byte	0x254
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x8
	.4byte	.LASF74
	.byte	0x5
	.2byte	0x255
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x8
	.4byte	.LASF75
	.byte	0x5
	.2byte	0x256
	.byte	0x11
	.4byte	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x8
	.4byte	.LASF76
	.byte	0x5
	.2byte	0x257
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x8
	.4byte	.LASF77
	.byte	0x5
	.2byte	0x258
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x8
	.4byte	.LASF78
	.byte	0x5
	.2byte	0x259
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x8
	.4byte	.LASF79
	.byte	0x5
	.2byte	0x25a
	.byte	0x11
	.4byte	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x8
	.4byte	.LASF80
	.byte	0x5
	.2byte	0x25b
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x8
	.4byte	.LASF81
	.byte	0x5
	.2byte	0x25c
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x8
	.4byte	.LASF82
	.byte	0x5
	.2byte	0x25d
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x8
	.4byte	.LASF83
	.byte	0x5
	.2byte	0x25e
	.byte	0x11
	.4byte	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x8
	.4byte	.LASF84
	.byte	0x5
	.2byte	0x25f
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x8
	.4byte	.LASF85
	.byte	0x5
	.2byte	0x260
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x8
	.4byte	.LASF86
	.byte	0x5
	.2byte	0x261
	.byte	0x11
	.4byte	0xa4
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x8
	.4byte	.LASF87
	.byte	0x5
	.2byte	0x262
	.byte	0x11
	.4byte	0x98
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x8
	.4byte	.LASF88
	.byte	0x5
	.2byte	0x263
	.byte	0x11
	.4byte	0xa4
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x8
	.4byte	.LASF89
	.byte	0x5
	.2byte	0x264
	.byte	0x11
	.4byte	0x98
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x8
	.4byte	.LASF90
	.byte	0x5
	.2byte	0x265
	.byte	0x11
	.4byte	0xa4
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x9
	.ascii	"CSR\000"
	.byte	0x5
	.2byte	0x266
	.byte	0x11
	.4byte	0xa4
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x8
	.4byte	.LASF91
	.byte	0x5
	.2byte	0x267
	.byte	0x11
	.4byte	0xa4
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x8
	.4byte	.LASF92
	.byte	0x5
	.2byte	0x268
	.byte	0x11
	.4byte	0xa4
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.byte	0
	.uleb128 0xc
	.4byte	.LASF93
	.byte	0x5
	.2byte	0x269
	.byte	0x3
	.4byte	0x52b
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF94
	.uleb128 0xd
	.byte	0x7
	.byte	0x1
	.4byte	0x3c
	.byte	0x6
	.byte	0x27
	.byte	0x1
	.4byte	0x7f8
	.uleb128 0xe
	.4byte	.LASF95
	.byte	0
	.uleb128 0xe
	.4byte	.LASF96
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF97
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF98
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF99
	.byte	0x6
	.byte	0x2c
	.byte	0x3
	.4byte	0x7d1
	.uleb128 0xf
	.byte	0x8
	.byte	0x7
	.byte	0x2f
	.byte	0x9
	.4byte	0x82c
	.uleb128 0x10
	.4byte	.LASF100
	.byte	0x7
	.byte	0x31
	.byte	0xc
	.4byte	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.4byte	.LASF101
	.byte	0x7
	.byte	0x34
	.byte	0xc
	.4byte	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF102
	.byte	0x7
	.byte	0x36
	.byte	0x2
	.4byte	0x804
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x275
	.byte	0xd
	.byte	0x1
	.4byte	.LFB147
	.4byte	.LFE147
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x267
	.byte	0x6
	.byte	0x1
	.4byte	.LFB146
	.4byte	.LFE146
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x25a
	.byte	0x6
	.byte	0x1
	.4byte	.LFB145
	.4byte	.LFE145
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x24c
	.byte	0x6
	.byte	0x1
	.4byte	.LFB144
	.4byte	.LFE144
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x23f
	.byte	0x6
	.byte	0x1
	.4byte	.LFB143
	.4byte	.LFE143
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x225
	.byte	0x6
	.byte	0x1
	.4byte	.LFB142
	.4byte	.LFE142
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF111
	.byte	0x1
	.2byte	0x204
	.byte	0x6
	.byte	0x1
	.4byte	.LFB141
	.4byte	.LFE141
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x91c
	.uleb128 0x13
	.4byte	.LASF109
	.byte	0x1
	.2byte	0x204
	.byte	0x25
	.4byte	0x98
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x13
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x204
	.byte	0x38
	.4byte	0x87
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x14
	.4byte	.LVL13
	.byte	0x1
	.4byte	0xa7d
	.uleb128 0x14
	.4byte	.LVL14
	.byte	0x1
	.4byte	0xa8c
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF112
	.byte	0x1
	.2byte	0x1b9
	.byte	0x6
	.byte	0x1
	.4byte	.LFB140
	.4byte	.LFE140
	.4byte	.LLST3
	.byte	0x1
	.4byte	0x975
	.uleb128 0x13
	.4byte	.LASF109
	.byte	0x1
	.2byte	0x1b9
	.byte	0x26
	.4byte	0x98
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x13
	.4byte	.LASF113
	.byte	0x1
	.2byte	0x1b9
	.byte	0x39
	.4byte	0x87
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x16
	.4byte	.LVL8
	.4byte	0xa9b
	.uleb128 0x16
	.4byte	.LVL10
	.4byte	0xaaa
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x199
	.byte	0x6
	.byte	0x1
	.4byte	.LFB139
	.4byte	.LFE139
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x9a6
	.uleb128 0x13
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x199
	.byte	0x28
	.4byte	0x98
	.4byte	.LLST2
	.4byte	.LVUS2
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x184
	.byte	0x6
	.byte	0x1
	.4byte	.LFB138
	.4byte	.LFE138
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x9d1
	.uleb128 0x17
	.4byte	.LASF130
	.byte	0x1
	.2byte	0x184
	.byte	0x27
	.4byte	0x98
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x16b
	.byte	0x6
	.byte	0x1
	.4byte	.LFB137
	.4byte	.LFE137
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x162
	.byte	0x6
	.byte	0x1
	.4byte	.LFB136
	.4byte	.LFE136
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x134
	.byte	0x13
	.byte	0x1
	.4byte	0x7f8
	.4byte	.LFB135
	.4byte	.LFE135
	.4byte	.LLST0
	.byte	0x1
	.4byte	0xa35
	.uleb128 0x13
	.4byte	.LASF119
	.byte	0x1
	.2byte	0x134
	.byte	0x35
	.4byte	0xa35
	.4byte	.LLST1
	.4byte	.LVUS1
	.byte	0
	.uleb128 0x19
	.byte	0x4
	.4byte	0x82c
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF120
	.byte	0x1
	.byte	0x72
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
	.4byte	.LASF121
	.byte	0x1
	.byte	0x68
	.byte	0x6
	.byte	0x1
	.4byte	.LFB133
	.4byte	.LFE133
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF122
	.byte	0x1
	.byte	0x56
	.byte	0x6
	.byte	0x1
	.4byte	.LFB132
	.4byte	.LFE132
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x1b
	.byte	0x1
	.byte	0x1
	.4byte	.LASF123
	.4byte	.LASF123
	.byte	0x8
	.2byte	0x304
	.byte	0x6
	.uleb128 0x1b
	.byte	0x1
	.byte	0x1
	.4byte	.LASF124
	.4byte	.LASF124
	.byte	0x8
	.2byte	0x305
	.byte	0x6
	.uleb128 0x1b
	.byte	0x1
	.byte	0x1
	.4byte	.LASF125
	.4byte	.LASF125
	.byte	0x8
	.2byte	0x302
	.byte	0x6
	.uleb128 0x1b
	.byte	0x1
	.byte	0x1
	.4byte	.LASF126
	.4byte	.LASF126
	.byte	0x8
	.2byte	0x303
	.byte	0x13
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xe
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x6
	.uleb128 0x2137
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x16
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x19
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
.LVUS6:
	.uleb128 0
	.uleb128 .LVU88
	.uleb128 .LVU88
	.uleb128 0
.LLST6:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL12
	.4byte	.LFE141
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 0
	.uleb128 .LVU90
	.uleb128 .LVU90
	.uleb128 .LVU90
	.uleb128 .LVU90
	.uleb128 .LVU91
	.uleb128 .LVU91
	.uleb128 0
.LLST7:
	.4byte	.LVL11
	.4byte	.LVL13-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL13-1
	.4byte	.LVL13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL14-1
	.4byte	.LFE141
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LFB140
	.4byte	.LCFI2
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI2
	.4byte	.LFE140
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 0
	.uleb128 .LVU65
	.uleb128 .LVU65
	.uleb128 .LVU74
	.uleb128 .LVU74
	.uleb128 .LVU77
	.uleb128 .LVU77
	.uleb128 .LVU80
	.uleb128 .LVU80
	.uleb128 .LVU82
	.uleb128 .LVU82
	.uleb128 0
.LLST4:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL8-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL8-1
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL10-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL10-1
	.4byte	.LFE140
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 0
	.uleb128 .LVU65
	.uleb128 .LVU65
	.uleb128 .LVU74
	.uleb128 .LVU74
	.uleb128 .LVU77
	.uleb128 .LVU77
	.uleb128 .LVU80
	.uleb128 .LVU80
	.uleb128 .LVU82
	.uleb128 .LVU82
	.uleb128 0
.LLST5:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL8-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL8-1
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL10-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL10-1
	.4byte	.LFE140
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU52
	.uleb128 .LVU52
	.uleb128 0
.LLST2:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL4
	.4byte	.LFE139
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LFB135
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
	.4byte	.LFE135
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU28
	.uleb128 .LVU28
	.uleb128 0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL1
	.4byte	.LFE135
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x94
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
	.4byte	.LFB135
	.4byte	.LFE135-.LFB135
	.4byte	.LFB136
	.4byte	.LFE136-.LFB136
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB132
	.4byte	.LFE132
	.4byte	.LFB133
	.4byte	.LFE133
	.4byte	.LFB134
	.4byte	.LFE134
	.4byte	.LFB135
	.4byte	.LFE135
	.4byte	.LFB136
	.4byte	.LFE136
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF44:
	.ascii	"PDCRA\000"
.LASF46:
	.ascii	"PDCRB\000"
.LASF48:
	.ascii	"PDCRC\000"
.LASF50:
	.ascii	"PDCRD\000"
.LASF52:
	.ascii	"PDCRE\000"
.LASF54:
	.ascii	"PDCRF\000"
.LASF5:
	.ascii	"__uint8_t\000"
.LASF97:
	.ascii	"HAL_BUSY\000"
.LASF32:
	.ascii	"FTSR1\000"
.LASF39:
	.ascii	"FTSR2\000"
.LASF125:
	.ascii	"HAL_PWREx_EnableLowPowerRunMode\000"
.LASF115:
	.ascii	"WakeUpPinx\000"
.LASF9:
	.ascii	"long long unsigned int\000"
.LASF92:
	.ascii	"CCIPR2\000"
.LASF56:
	.ascii	"PDCRG\000"
.LASF13:
	.ascii	"CPUID\000"
.LASF100:
	.ascii	"PVDLevel\000"
.LASF33:
	.ascii	"SWIER1\000"
.LASF104:
	.ascii	"HAL_PWR_DisableSEVOnPend\000"
.LASF112:
	.ascii	"HAL_PWR_EnterSLEEPMode\000"
.LASF61:
	.ascii	"CIER\000"
.LASF25:
	.ascii	"ISAR\000"
.LASF8:
	.ascii	"long long int\000"
.LASF0:
	.ascii	"signed char\000"
.LASF64:
	.ascii	"AHB1RSTR\000"
.LASF126:
	.ascii	"HAL_PWREx_DisableLowPowerRunMode\000"
.LASF80:
	.ascii	"AHB1SMENR\000"
.LASF86:
	.ascii	"APB2SMENR\000"
.LASF43:
	.ascii	"PUCRA\000"
.LASF45:
	.ascii	"PUCRB\000"
.LASF47:
	.ascii	"PUCRC\000"
.LASF49:
	.ascii	"PUCRD\000"
.LASF51:
	.ascii	"PUCRE\000"
.LASF53:
	.ascii	"PUCRF\000"
.LASF55:
	.ascii	"PUCRG\000"
.LASF4:
	.ascii	"long int\000"
.LASF70:
	.ascii	"APB2RSTR\000"
.LASF68:
	.ascii	"APB1RSTR1\000"
.LASF69:
	.ascii	"APB1RSTR2\000"
.LASF108:
	.ascii	"HAL_PWR_EnterSTANDBYMode\000"
.LASF127:
	.ascii	"GNU C17 10.2.1 20201103 (release) -mcpu=cortex-m4 -"
	.ascii	"mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=hard -march=ar"
	.ascii	"mv7e-m+fp -g -gdwarf-2 -O3 -fdata-sections -ffuncti"
	.ascii	"on-sections\000"
.LASF120:
	.ascii	"HAL_PWR_DisableBkUpAccess\000"
.LASF60:
	.ascii	"PLLCFGR\000"
.LASF22:
	.ascii	"BFAR\000"
.LASF62:
	.ascii	"CIFR\000"
.LASF23:
	.ascii	"AFSR\000"
.LASF6:
	.ascii	"__uint32_t\000"
.LASF81:
	.ascii	"AHB2SMENR\000"
.LASF114:
	.ascii	"HAL_PWR_DisableWakeUpPin\000"
.LASF28:
	.ascii	"SCB_Type\000"
.LASF113:
	.ascii	"SLEEPEntry\000"
.LASF98:
	.ascii	"HAL_TIMEOUT\000"
.LASF10:
	.ascii	"unsigned int\000"
.LASF117:
	.ascii	"HAL_PWR_DisablePVD\000"
.LASF7:
	.ascii	"long unsigned int\000"
.LASF93:
	.ascii	"RCC_TypeDef\000"
.LASF95:
	.ascii	"HAL_OK\000"
.LASF15:
	.ascii	"VTOR\000"
.LASF29:
	.ascii	"IMR1\000"
.LASF36:
	.ascii	"IMR2\000"
.LASF14:
	.ascii	"ICSR\000"
.LASF82:
	.ascii	"AHB3SMENR\000"
.LASF16:
	.ascii	"AIRCR\000"
.LASF20:
	.ascii	"DFSR\000"
.LASF21:
	.ascii	"MMFAR\000"
.LASF31:
	.ascii	"RTSR1\000"
.LASF38:
	.ascii	"RTSR2\000"
.LASF99:
	.ascii	"HAL_StatusTypeDef\000"
.LASF24:
	.ascii	"MMFR\000"
.LASF103:
	.ascii	"HAL_PWR_PVDCallback\000"
.LASF118:
	.ascii	"HAL_PWR_EnablePVD\000"
.LASF18:
	.ascii	"CFSR\000"
.LASF124:
	.ascii	"HAL_PWREx_EnterSTOP1Mode\000"
.LASF76:
	.ascii	"APB1ENR1\000"
.LASF77:
	.ascii	"APB1ENR2\000"
.LASF129:
	.ascii	"/home/joel/share/EVSPIN32G4_Shinano\000"
.LASF111:
	.ascii	"HAL_PWR_EnterSTOPMode\000"
.LASF130:
	.ascii	"WakeUpPinPolarity\000"
.LASF26:
	.ascii	"RESERVED0\000"
.LASF34:
	.ascii	"RESERVED1\000"
.LASF35:
	.ascii	"RESERVED2\000"
.LASF67:
	.ascii	"RESERVED3\000"
.LASF71:
	.ascii	"RESERVED4\000"
.LASF75:
	.ascii	"RESERVED5\000"
.LASF79:
	.ascii	"RESERVED6\000"
.LASF83:
	.ascii	"RESERVED7\000"
.LASF87:
	.ascii	"RESERVED8\000"
.LASF89:
	.ascii	"RESERVED9\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF17:
	.ascii	"SHCSR\000"
.LASF88:
	.ascii	"CCIPR\000"
.LASF2:
	.ascii	"short int\000"
.LASF91:
	.ascii	"CRRCR\000"
.LASF42:
	.ascii	"RESERVED\000"
.LASF78:
	.ascii	"APB2ENR\000"
.LASF66:
	.ascii	"AHB3RSTR\000"
.LASF74:
	.ascii	"AHB3ENR\000"
.LASF107:
	.ascii	"HAL_PWR_EnableSleepOnExit\000"
.LASF12:
	.ascii	"uint32_t\000"
.LASF119:
	.ascii	"sConfigPVD\000"
.LASF96:
	.ascii	"HAL_ERROR\000"
.LASF102:
	.ascii	"PWR_PVDTypeDef\000"
.LASF94:
	.ascii	"long double\000"
.LASF105:
	.ascii	"HAL_PWR_EnableSEVOnPend\000"
.LASF101:
	.ascii	"Mode\000"
.LASF65:
	.ascii	"AHB2RSTR\000"
.LASF121:
	.ascii	"HAL_PWR_EnableBkUpAccess\000"
.LASF57:
	.ascii	"PWR_TypeDef\000"
.LASF73:
	.ascii	"AHB2ENR\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF122:
	.ascii	"HAL_PWR_DeInit\000"
.LASF30:
	.ascii	"EMR1\000"
.LASF37:
	.ascii	"EMR2\000"
.LASF106:
	.ascii	"HAL_PWR_DisableSleepOnExit\000"
.LASF109:
	.ascii	"Regulator\000"
.LASF131:
	.ascii	"HAL_PWR_ConfigPVD\000"
.LASF63:
	.ascii	"CICR\000"
.LASF90:
	.ascii	"BDCR\000"
.LASF11:
	.ascii	"uint8_t\000"
.LASF110:
	.ascii	"STOPEntry\000"
.LASF123:
	.ascii	"HAL_PWREx_EnterSTOP0Mode\000"
.LASF58:
	.ascii	"ICSCR\000"
.LASF128:
	.ascii	"Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_pwr."
	.ascii	"c\000"
.LASF116:
	.ascii	"HAL_PWR_EnableWakeUpPin\000"
.LASF72:
	.ascii	"AHB1ENR\000"
.LASF59:
	.ascii	"CFGR\000"
.LASF41:
	.ascii	"EXTI_TypeDef\000"
.LASF27:
	.ascii	"CPACR\000"
.LASF19:
	.ascii	"HFSR\000"
.LASF40:
	.ascii	"SWIER2\000"
.LASF84:
	.ascii	"APB1SMENR1\000"
.LASF85:
	.ascii	"APB1SMENR2\000"
	.ident	"GCC: (GNU Arm Embedded Toolchain 10-2020-q4-major) 10.2.1 20201103 (release)"
