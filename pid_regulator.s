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
	.file	"pid_regulator.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.PID_HandleInit,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	PID_HandleInit
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	PID_HandleInit, %function
PID_HandleInit:
.LVL0:
.LFB1437:
	.file 1 "MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Src/pid_regulator.c"
	.loc 1 101 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 110 5 view .LVU1
	.loc 1 111 5 view .LVU2
	.loc 1 113 28 is_stmt 0 view .LVU3
	movs	r3, #0
	.loc 1 110 22 view .LVU4
	ldr	r1, [r0]
	.loc 1 112 22 view .LVU5
	ldrh	r2, [r0, #32]
	.loc 1 110 22 view .LVU6
	str	r1, [r0, #4]
	.loc 1 112 5 is_stmt 1 view .LVU7
	.loc 1 112 22 is_stmt 0 view .LVU8
	strh	r2, [r0, #34]	@ movhi
	.loc 1 113 5 is_stmt 1 view .LVU9
	.loc 1 113 28 is_stmt 0 view .LVU10
	str	r3, [r0, #8]
	.loc 1 114 5 is_stmt 1 view .LVU11
	.loc 1 114 35 is_stmt 0 view .LVU12
	str	r3, [r0, #40]
	.loc 1 118 1 view .LVU13
	bx	lr
	.cfi_endproc
.LFE1437:
	.size	PID_HandleInit, .-PID_HandleInit
	.section	.text.PID_SetKP,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	PID_SetKP
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	PID_SetKP, %function
PID_SetKP:
.LVL1:
.LFB1438:
	.loc 1 126 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 135 5 view .LVU15
	.loc 1 135 22 is_stmt 0 view .LVU16
	strh	r1, [r0, #4]	@ movhi
	.loc 1 139 1 view .LVU17
	bx	lr
	.cfi_endproc
.LFE1438:
	.size	PID_SetKP, .-PID_SetKP
	.section	.text.PID_SetKI,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	PID_SetKI
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	PID_SetKI, %function
PID_SetKI:
.LVL2:
.LFB1439:
	.loc 1 147 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 156 5 view .LVU19
	.loc 1 156 22 is_stmt 0 view .LVU20
	strh	r1, [r0, #6]	@ movhi
	.loc 1 160 1 view .LVU21
	bx	lr
	.cfi_endproc
.LFE1439:
	.size	PID_SetKI, .-PID_SetKI
	.section	.text.PID_GetKP,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	PID_GetKP
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	PID_GetKP, %function
PID_GetKP:
.LVL3:
.LFB1440:
	.loc 1 167 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 171 3 view .LVU23
	.loc 1 173 1 is_stmt 0 view .LVU24
	ldrsh	r0, [r0, #4]
.LVL4:
	.loc 1 173 1 view .LVU25
	bx	lr
	.cfi_endproc
.LFE1440:
	.size	PID_GetKP, .-PID_GetKP
	.section	.text.PID_GetKI,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	PID_GetKI
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	PID_GetKI, %function
PID_GetKI:
.LVL5:
.LFB1441:
	.loc 1 180 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 184 3 view .LVU27
	.loc 1 186 1 is_stmt 0 view .LVU28
	ldrsh	r0, [r0, #6]
.LVL6:
	.loc 1 186 1 view .LVU29
	bx	lr
	.cfi_endproc
.LFE1441:
	.size	PID_GetKI, .-PID_GetKI
	.section	.text.PID_GetDefaultKP,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	PID_GetDefaultKP
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	PID_GetDefaultKP, %function
PID_GetDefaultKP:
.LVL7:
.LFB1442:
	.loc 1 200 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 204 3 view .LVU31
	.loc 1 206 1 is_stmt 0 view .LVU32
	ldrsh	r0, [r0]
.LVL8:
	.loc 1 206 1 view .LVU33
	bx	lr
	.cfi_endproc
.LFE1442:
	.size	PID_GetDefaultKP, .-PID_GetDefaultKP
	.section	.text.PID_GetDefaultKI,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	PID_GetDefaultKI
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	PID_GetDefaultKI, %function
PID_GetDefaultKI:
.LVL9:
.LFB1443:
	.loc 1 219 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 223 3 view .LVU35
	.loc 1 225 1 is_stmt 0 view .LVU36
	ldrsh	r0, [r0, #2]
.LVL10:
	.loc 1 225 1 view .LVU37
	bx	lr
	.cfi_endproc
.LFE1443:
	.size	PID_GetDefaultKI, .-PID_GetDefaultKI
	.section	.text.PID_SetIntegralTerm,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	PID_SetIntegralTerm
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	PID_SetIntegralTerm, %function
PID_SetIntegralTerm:
.LVL11:
.LFB1444:
	.loc 1 247 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 256 5 view .LVU39
	.loc 1 256 28 is_stmt 0 view .LVU40
	str	r1, [r0, #8]
	.loc 1 260 3 is_stmt 1 view .LVU41
	.loc 1 261 1 is_stmt 0 view .LVU42
	bx	lr
	.cfi_endproc
.LFE1444:
	.size	PID_SetIntegralTerm, .-PID_SetIntegralTerm
	.section	.text.PID_GetKPDivisor,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	PID_GetKPDivisor
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	PID_GetKPDivisor, %function
PID_GetKPDivisor:
.LVL12:
.LFB1445:
	.loc 1 273 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 277 3 view .LVU44
	.loc 1 279 1 is_stmt 0 view .LVU45
	ldrh	r0, [r0, #24]
.LVL13:
	.loc 1 279 1 view .LVU46
	bx	lr
	.cfi_endproc
.LFE1445:
	.size	PID_GetKPDivisor, .-PID_GetKPDivisor
	.section	.text.PID_GetKPDivisorPOW2,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	PID_GetKPDivisorPOW2
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	PID_GetKPDivisorPOW2, %function
PID_GetKPDivisorPOW2:
.LVL14:
.LFB1446:
	.loc 1 292 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 296 3 view .LVU48
	.loc 1 298 1 is_stmt 0 view .LVU49
	ldrh	r0, [r0, #28]
.LVL15:
	.loc 1 298 1 view .LVU50
	bx	lr
	.cfi_endproc
.LFE1446:
	.size	PID_GetKPDivisorPOW2, .-PID_GetKPDivisorPOW2
	.section	.text.PID_SetKPDivisorPOW2,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	PID_SetKPDivisorPOW2
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	PID_SetKPDivisorPOW2, %function
PID_SetKPDivisorPOW2:
.LVL16:
.LFB1447:
	.loc 1 312 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 321 5 view .LVU52
	.loc 1 322 42 is_stmt 0 view .LVU53
	movs	r3, #1
	lsls	r3, r3, r1
	.loc 1 321 29 view .LVU54
	strh	r1, [r0, #28]	@ movhi
	.loc 1 322 5 is_stmt 1 view .LVU55
	.loc 1 322 25 is_stmt 0 view .LVU56
	strh	r3, [r0, #24]	@ movhi
	.loc 1 326 1 view .LVU57
	bx	lr
	.cfi_endproc
.LFE1447:
	.size	PID_SetKPDivisorPOW2, .-PID_SetKPDivisorPOW2
	.section	.text.PID_GetKIDivisor,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	PID_GetKIDivisor
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	PID_GetKIDivisor, %function
PID_GetKIDivisor:
.LVL17:
.LFB1448:
	.loc 1 338 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 342 3 view .LVU59
	.loc 1 344 1 is_stmt 0 view .LVU60
	ldrh	r0, [r0, #26]
.LVL18:
	.loc 1 344 1 view .LVU61
	bx	lr
	.cfi_endproc
.LFE1448:
	.size	PID_GetKIDivisor, .-PID_GetKIDivisor
	.section	.text.PID_GetKIDivisorPOW2,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	PID_GetKIDivisorPOW2
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	PID_GetKIDivisorPOW2, %function
PID_GetKIDivisorPOW2:
.LVL19:
.LFB1449:
	.loc 1 357 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 361 3 view .LVU63
	.loc 1 363 1 is_stmt 0 view .LVU64
	ldrh	r0, [r0, #30]
.LVL20:
	.loc 1 363 1 view .LVU65
	bx	lr
	.cfi_endproc
.LFE1449:
	.size	PID_GetKIDivisorPOW2, .-PID_GetKIDivisorPOW2
	.section	.text.PID_SetLowerIntegralTermLimit,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	PID_SetLowerIntegralTermLimit
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	PID_SetLowerIntegralTermLimit, %function
PID_SetLowerIntegralTermLimit:
.LVL21:
.LFB1451:
	.loc 1 420 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 429 5 view .LVU67
	.loc 1 429 34 is_stmt 0 view .LVU68
	str	r1, [r0, #16]
	.loc 1 433 1 view .LVU69
	bx	lr
	.cfi_endproc
.LFE1451:
	.size	PID_SetLowerIntegralTermLimit, .-PID_SetLowerIntegralTermLimit
	.section	.text.PID_SetUpperIntegralTermLimit,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	PID_SetUpperIntegralTermLimit
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	PID_SetUpperIntegralTermLimit, %function
PID_SetUpperIntegralTermLimit:
.LVL22:
.LFB1452:
	.loc 1 454 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 463 5 view .LVU71
	.loc 1 463 34 is_stmt 0 view .LVU72
	str	r1, [r0, #12]
	.loc 1 467 1 view .LVU73
	bx	lr
	.cfi_endproc
.LFE1452:
	.size	PID_SetUpperIntegralTermLimit, .-PID_SetUpperIntegralTermLimit
	.section	.text.PID_SetKIDivisorPOW2,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	PID_SetKIDivisorPOW2
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	PID_SetKIDivisorPOW2, %function
PID_SetKIDivisorPOW2:
.LVL23:
.LFB1450:
	.loc 1 382 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 391 5 view .LVU75
	.loc 1 382 1 is_stmt 0 view .LVU76
	push	{r3, r4, r5, lr}
.LCFI0:
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	.loc 1 391 14 view .LVU77
	movs	r3, #1
	.loc 1 382 1 view .LVU78
	mov	r4, r1
.LVL24:
	.loc 1 392 5 is_stmt 1 view .LVU79
	.loc 1 391 14 is_stmt 0 view .LVU80
	lsls	r3, r3, r1
.LVL25:
	.loc 1 394 5 view .LVU81
	movw	r1, #32767
.LVL26:
	.loc 1 394 5 view .LVU82
	lsls	r1, r1, r4
	.loc 1 392 29 view .LVU83
	strh	r4, [r0, #30]	@ movhi
	.loc 1 393 5 is_stmt 1 view .LVU84
	.loc 1 393 27 is_stmt 0 view .LVU85
	strh	r3, [r0, #26]	@ movhi
	.loc 1 394 5 is_stmt 1 view .LVU86
	.loc 1 382 1 is_stmt 0 view .LVU87
	mov	r5, r0
	.loc 1 394 5 view .LVU88
	bl	PID_SetUpperIntegralTermLimit
.LVL27:
	.loc 1 395 5 is_stmt 1 view .LVU89
	ldr	r1, .L19
	mov	r0, r5
	lsls	r1, r1, r4
	bl	PID_SetLowerIntegralTermLimit
.LVL28:
	.loc 1 399 1 is_stmt 0 view .LVU90
	pop	{r3, r4, r5, pc}
.LVL29:
.L20:
	.loc 1 399 1 view .LVU91
	.align	2
.L19:
	.word	-32767
	.cfi_endproc
.LFE1450:
	.size	PID_SetKIDivisorPOW2, .-PID_SetKIDivisorPOW2
	.section	.text.PID_SetPrevError,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	PID_SetPrevError
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	PID_SetPrevError, %function
PID_SetPrevError:
.LVL30:
.LFB1453:
	.loc 1 476 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 485 5 view .LVU93
	.loc 1 485 35 is_stmt 0 view .LVU94
	str	r1, [r0, #40]
	.loc 1 489 3 is_stmt 1 view .LVU95
	.loc 1 490 1 is_stmt 0 view .LVU96
	bx	lr
	.cfi_endproc
.LFE1453:
	.size	PID_SetPrevError, .-PID_SetPrevError
	.section	.text.PID_SetKD,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	PID_SetKD
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	PID_SetKD, %function
PID_SetKD:
.LVL31:
.LFB1454:
	.loc 1 498 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 507 5 view .LVU98
	.loc 1 507 22 is_stmt 0 view .LVU99
	strh	r1, [r0, #34]	@ movhi
	.loc 1 511 1 view .LVU100
	bx	lr
	.cfi_endproc
.LFE1454:
	.size	PID_SetKD, .-PID_SetKD
	.section	.text.PID_GetKD,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	PID_GetKD
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	PID_GetKD, %function
PID_GetKD:
.LVL32:
.LFB1455:
	.loc 1 518 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 522 3 view .LVU102
	.loc 1 524 1 is_stmt 0 view .LVU103
	ldrsh	r0, [r0, #34]
.LVL33:
	.loc 1 524 1 view .LVU104
	bx	lr
	.cfi_endproc
.LFE1455:
	.size	PID_GetKD, .-PID_GetKD
	.section	.text.PID_GetKDDivisor,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	PID_GetKDDivisor
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	PID_GetKDDivisor, %function
PID_GetKDDivisor:
.LVL34:
.LFB1456:
	.loc 1 536 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 540 3 view .LVU106
	.loc 1 542 1 is_stmt 0 view .LVU107
	ldrh	r0, [r0, #36]
.LVL35:
	.loc 1 542 1 view .LVU108
	bx	lr
	.cfi_endproc
.LFE1456:
	.size	PID_GetKDDivisor, .-PID_GetKDDivisor
	.section	.text.PID_GetKDDivisorPOW2,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	PID_GetKDDivisorPOW2
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	PID_GetKDDivisorPOW2, %function
PID_GetKDDivisorPOW2:
.LVL36:
.LFB1457:
	.loc 1 555 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 559 3 view .LVU110
	.loc 1 561 1 is_stmt 0 view .LVU111
	ldrh	r0, [r0, #38]
.LVL37:
	.loc 1 561 1 view .LVU112
	bx	lr
	.cfi_endproc
.LFE1457:
	.size	PID_GetKDDivisorPOW2, .-PID_GetKDDivisorPOW2
	.section	.text.PID_SetKDDivisorPOW2,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	PID_SetKDDivisorPOW2
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	PID_SetKDDivisorPOW2, %function
PID_SetKDDivisorPOW2:
.LVL38:
.LFB1458:
	.loc 1 575 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 584 5 view .LVU114
	.loc 1 585 42 is_stmt 0 view .LVU115
	movs	r3, #1
	lsls	r3, r3, r1
	.loc 1 584 29 view .LVU116
	strh	r1, [r0, #38]	@ movhi
	.loc 1 585 5 is_stmt 1 view .LVU117
	.loc 1 585 25 is_stmt 0 view .LVU118
	strh	r3, [r0, #36]	@ movhi
	.loc 1 589 1 view .LVU119
	bx	lr
	.cfi_endproc
.LFE1458:
	.size	PID_SetKDDivisorPOW2, .-PID_SetKDDivisorPOW2
	.section	.text.PI_Controller,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	PI_Controller
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	PI_Controller, %function
PI_Controller:
.LVL39:
.LFB1459:
	.loc 1 615 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 616 3 view .LVU121
	.loc 1 625 5 view .LVU122
	.loc 1 626 5 view .LVU123
	.loc 1 627 5 view .LVU124
	.loc 1 628 5 view .LVU125
	.loc 1 629 5 view .LVU126
	.loc 1 630 5 view .LVU127
	.loc 1 634 33 is_stmt 0 view .LVU128
	ldrsh	r3, [r0, #4]
	.loc 1 637 21 view .LVU129
	ldrsh	r2, [r0, #6]
	.loc 1 630 13 view .LVU130
	ldrsh	ip, [r0, #20]
.LVL40:
	.loc 1 631 5 is_stmt 1 view .LVU131
	.loc 1 615 1 is_stmt 0 view .LVU132
	push	{r4, lr}
.LCFI1:
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 634 24 view .LVU133
	mul	r3, r1, r3
	.loc 1 631 13 view .LVU134
	ldrsh	lr, [r0, #22]
.LVL41:
	.loc 1 634 5 is_stmt 1 view .LVU135
	.loc 1 637 5 view .LVU136
	.loc 1 637 8 is_stmt 0 view .LVU137
	cbz	r2, .L28
	.loc 1 643 7 is_stmt 1 view .LVU138
	.loc 1 643 22 is_stmt 0 view .LVU139
	mul	r2, r1, r2
.LVL42:
	.loc 1 644 7 is_stmt 1 view .LVU140
	.loc 1 644 35 is_stmt 0 view .LVU141
	ldr	r1, [r0, #8]
.LVL43:
	.loc 1 646 7 is_stmt 1 view .LVU142
	.loc 1 646 10 is_stmt 0 view .LVU143
	adds	r4, r1, r2
.LVL44:
	.loc 1 646 10 view .LVU144
	bmi	.L41
	.loc 1 666 9 is_stmt 1 view .LVU145
	.loc 1 666 12 is_stmt 0 view .LVU146
	cmp	r1, #0
	blt	.L42
.LVL45:
.L30:
	.loc 1 680 9 is_stmt 1 view .LVU147
	.loc 1 683 7 view .LVU148
	.loc 1 683 39 is_stmt 0 view .LVU149
	ldr	r2, [r0, #12]
.LVL46:
	.loc 1 683 10 view .LVU150
	cmp	r2, r4
	blt	.L28
	.loc 1 687 12 is_stmt 1 view .LVU151
	.loc 1 687 44 is_stmt 0 view .LVU152
	ldr	r2, [r0, #16]
	.loc 1 687 15 view .LVU153
	cmp	r2, r4
	ble	.L37
.LVL47:
.L28:
	.loc 1 703 5 is_stmt 1 view .LVU154
	.loc 1 703 48 is_stmt 0 view .LVU155
	ldrh	r1, [r0, #28]
	.loc 1 703 38 view .LVU156
	asrs	r3, r3, r1
.LVL48:
	.loc 1 703 102 view .LVU157
	ldrh	r1, [r0, #30]
	.loc 1 703 92 view .LVU158
	asr	r1, r2, r1
	.loc 1 703 16 view .LVU159
	add	r3, r3, r1
.LVL49:
	.loc 1 709 5 is_stmt 1 view .LVU160
	.loc 1 709 8 is_stmt 0 view .LVU161
	cmp	ip, r3
	bge	.L33
	.loc 1 711 7 is_stmt 1 view .LVU162
.LVL50:
	.loc 1 712 7 view .LVU163
	.loc 1 711 18 is_stmt 0 view .LVU164
	sub	r3, ip, r3
.LVL51:
	.loc 1 724 28 view .LVU165
	add	r2, r2, r3
.LVL52:
	.loc 1 722 5 is_stmt 1 view .LVU166
	.loc 1 724 5 view .LVU167
	.loc 1 724 28 is_stmt 0 view .LVU168
	str	r2, [r0, #8]
	.loc 1 725 5 is_stmt 1 view .LVU169
	.loc 1 729 3 view .LVU170
	.loc 1 730 1 is_stmt 0 view .LVU171
	mov	r0, ip
.LVL53:
	.loc 1 730 1 view .LVU172
	pop	{r4, pc}
.LVL54:
.L33:
	.loc 1 714 10 is_stmt 1 view .LVU173
	.loc 1 714 13 is_stmt 0 view .LVU174
	cmp	lr, r3
	.loc 1 716 18 view .LVU175
	itett	gt
	subgt	r3, lr, r3
.LVL55:
	.loc 1 725 17 view .LVU176
	sxthle	ip, r3
.LVL56:
	.loc 1 716 7 is_stmt 1 view .LVU177
	.loc 1 717 7 view .LVU178
	.loc 1 724 28 is_stmt 0 view .LVU179
	addgt	r2, r2, r3
	movgt	ip, lr
.LVL57:
	.loc 1 722 5 is_stmt 1 view .LVU180
	.loc 1 724 5 view .LVU181
	.loc 1 724 28 is_stmt 0 view .LVU182
	str	r2, [r0, #8]
	.loc 1 725 5 is_stmt 1 view .LVU183
	.loc 1 729 3 view .LVU184
	.loc 1 730 1 is_stmt 0 view .LVU185
	mov	r0, ip
.LVL58:
	.loc 1 730 1 view .LVU186
	pop	{r4, pc}
.LVL59:
.L41:
	.loc 1 648 9 is_stmt 1 view .LVU187
	.loc 1 648 12 is_stmt 0 view .LVU188
	cmp	r1, #0
	ble	.L30
	.loc 1 650 11 is_stmt 1 view .LVU189
	.loc 1 650 14 is_stmt 0 view .LVU190
	cmp	r2, #0
	ble	.L30
	.loc 1 652 13 is_stmt 1 view .LVU191
.LVL60:
	.loc 1 680 9 view .LVU192
	.loc 1 683 7 view .LVU193
	.loc 1 683 39 is_stmt 0 view .LVU194
	ldr	r2, [r0, #12]
.LVL61:
	.loc 1 683 10 view .LVU195
	mvn	r1, #-2147483648
	cmp	r2, r1
	bne	.L28
	.loc 1 652 32 view .LVU196
	mov	r4, r2
.LVL62:
.L37:
	.loc 1 693 9 is_stmt 1 view .LVU197
	.loc 1 652 32 is_stmt 0 view .LVU198
	mov	r2, r4
	b	.L28
.LVL63:
.L42:
	.loc 1 668 11 is_stmt 1 view .LVU199
	.loc 1 670 32 is_stmt 0 view .LVU200
	ldr	r1, .L43
	bics	r4, r4, r2, asr #32
	it	cs
	movcs	r4, r1
.LVL64:
	.loc 1 670 32 view .LVU201
	b	.L30
.L44:
	.align	2
.L43:
	.word	-2147483647
	.cfi_endproc
.LFE1459:
	.size	PI_Controller, .-PI_Controller
	.section	.text.PID_Controller,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	PID_Controller
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	PID_Controller, %function
PID_Controller:
.LVL65:
.LFB1460:
	.loc 1 757 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 758 3 view .LVU203
	.loc 1 767 5 view .LVU204
	.loc 1 768 5 view .LVU205
	.loc 1 769 5 view .LVU206
	.loc 1 771 5 view .LVU207
	.loc 1 771 21 is_stmt 0 view .LVU208
	ldrsh	r2, [r0, #34]
	.loc 1 757 1 view .LVU209
	push	{r3, r4, r5, lr}
.LCFI2:
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	.loc 1 771 8 view .LVU210
	cbnz	r2, .L46
	.loc 1 773 7 is_stmt 1 view .LVU211
	.loc 1 773 22 is_stmt 0 view .LVU212
	bl	PI_Controller
.LVL66:
	.loc 1 773 22 view .LVU213
	mov	r2, r0
.LVL67:
.L47:
	.loc 1 806 7 is_stmt 1 view .LVU214
	.loc 1 808 5 view .LVU215
	.loc 1 812 3 view .LVU216
	.loc 1 813 1 is_stmt 0 view .LVU217
	mov	r0, r2
	pop	{r3, r4, r5, pc}
.LVL68:
.L46:
	.loc 1 777 7 is_stmt 1 view .LVU218
	.loc 1 778 7 view .LVU219
	.loc 1 777 19 is_stmt 0 view .LVU220
	ldr	r4, [r0, #40]
	.loc 1 786 37 view .LVU221
	ldrh	r3, [r0, #38]
	.loc 1 791 37 view .LVU222
	str	r1, [r0, #40]
.LVL69:
	.loc 1 777 19 view .LVU223
	subs	r4, r1, r4
.LVL70:
	.loc 1 778 26 view .LVU224
	mul	r4, r2, r4
.LVL71:
	.loc 1 786 7 is_stmt 1 view .LVU225
	mov	r5, r0
	.loc 1 786 26 is_stmt 0 view .LVU226
	asrs	r4, r4, r3
.LVL72:
	.loc 1 791 7 is_stmt 1 view .LVU227
	.loc 1 793 7 view .LVU228
	.loc 1 793 22 is_stmt 0 view .LVU229
	bl	PI_Controller
.LVL73:
	.loc 1 795 33 view .LVU230
	ldrsh	r2, [r5, #20]
	.loc 1 793 20 view .LVU231
	add	r4, r4, r0
.LVL74:
	.loc 1 795 7 is_stmt 1 view .LVU232
	.loc 1 795 10 is_stmt 0 view .LVU233
	cmp	r2, r4
	blt	.L47
	.loc 1 799 12 is_stmt 1 view .LVU234
	.loc 1 799 38 is_stmt 0 view .LVU235
	ldrsh	r2, [r5, #22]
	.loc 1 808 17 view .LVU236
	cmp	r4, r2
	it	lt
	movlt	r4, r2
.LVL75:
	.loc 1 808 17 view .LVU237
	sxth	r2, r4
	.loc 1 806 7 is_stmt 1 view .LVU238
	.loc 1 808 5 view .LVU239
	.loc 1 812 3 view .LVU240
	.loc 1 813 1 is_stmt 0 view .LVU241
	mov	r0, r2
	pop	{r3, r4, r5, pc}
	.loc 1 813 1 view .LVU242
	.cfi_endproc
.LFE1460:
	.size	PID_Controller, .-PID_Controller
	.text
.Letext0:
	.file 2 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_ll_tim.h"
	.file 5 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_ll_usart.h"
	.file 6 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_ll_dma.h"
	.file 7 "MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Inc/pid_regulator.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x9d6
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF85
	.byte	0xc
	.4byte	.LASF86
	.4byte	.LASF87
	.4byte	.Ldebug_ranges0+0
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
	.byte	0x2c
	.byte	0x7
	.byte	0x36
	.byte	0x9
	.4byte	0x319
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x7
	.byte	0x38
	.byte	0xd
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x7
	.byte	0x3d
	.byte	0xd
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x7
	.byte	0x42
	.byte	0xd
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0x7
	.byte	0x43
	.byte	0xd
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x7
	.byte	0x44
	.byte	0xd
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x7
	.byte	0x51
	.byte	0xd
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0x7
	.byte	0x55
	.byte	0xd
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0x7
	.byte	0x59
	.byte	0xd
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0x7
	.byte	0x5e
	.byte	0xd
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0x7
	.byte	0x63
	.byte	0xd
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0x7
	.byte	0x6c
	.byte	0xd
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0x7
	.byte	0x75
	.byte	0xd
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x7
	.byte	0x7a
	.byte	0xd
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1e
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0x7
	.byte	0x7f
	.byte	0xd
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0x7
	.byte	0x84
	.byte	0xd
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x22
	.uleb128 0xa
	.4byte	.LASF43
	.byte	0x7
	.byte	0x85
	.byte	0xd
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.4byte	.LASF44
	.byte	0x7
	.byte	0x8e
	.byte	0xd
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x26
	.uleb128 0xa
	.4byte	.LASF45
	.byte	0x7
	.byte	0x93
	.byte	0xd
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.4byte	.LASF46
	.byte	0x7
	.byte	0x9a
	.byte	0x3
	.4byte	0x201
	.uleb128 0xb
	.byte	0x1
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x2f4
	.byte	0x10
	.byte	0x1
	.4byte	0xbc
	.4byte	.LFB1460
	.4byte	.LFE1460
	.4byte	.LLST25
	.byte	0x1
	.4byte	0x3ef
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x2f4
	.byte	0x2d
	.4byte	0x3ef
	.4byte	.LLST26
	.4byte	.LVUS26
	.uleb128 0xc
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x2f4
	.byte	0x3e
	.4byte	0xd4
	.4byte	.LLST27
	.4byte	.LVUS27
	.uleb128 0xd
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x2f6
	.byte	0xb
	.4byte	0xbc
	.uleb128 0xe
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x2ff
	.byte	0xd
	.4byte	0xd4
	.4byte	.LLST28
	.4byte	.LVUS28
	.uleb128 0xe
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x300
	.byte	0xd
	.4byte	0xd4
	.4byte	.LLST29
	.4byte	.LVUS29
	.uleb128 0xe
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x301
	.byte	0xd
	.4byte	0xd4
	.4byte	.LLST30
	.4byte	.LVUS30
	.uleb128 0xf
	.4byte	.LVL66
	.4byte	0x3f5
	.4byte	0x3d7
	.uleb128 0x10
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x10
	.byte	0x1
	.byte	0x51
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x11
	.4byte	.LVL73
	.4byte	0x3f5
	.uleb128 0x10
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x10
	.byte	0x1
	.byte	0x51
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x4
	.4byte	0x319
	.uleb128 0xb
	.byte	0x1
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x266
	.byte	0x10
	.byte	0x1
	.4byte	0xbc
	.4byte	.LFB1459
	.4byte	.LFE1459
	.4byte	.LLST15
	.byte	0x1
	.4byte	0x4e0
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x266
	.byte	0x2c
	.4byte	0x3ef
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0xc
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x266
	.byte	0x3d
	.4byte	0xd4
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0xd
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x268
	.byte	0xb
	.4byte	0xbc
	.uleb128 0xe
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x271
	.byte	0xd
	.4byte	0xd4
	.4byte	.LLST18
	.4byte	.LVUS18
	.uleb128 0xe
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x272
	.byte	0xd
	.4byte	0xd4
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0xe
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x273
	.byte	0xd
	.4byte	0xd4
	.4byte	.LLST20
	.4byte	.LVUS20
	.uleb128 0xe
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x274
	.byte	0xd
	.4byte	0xd4
	.4byte	.LLST21
	.4byte	.LVUS21
	.uleb128 0xe
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x275
	.byte	0xd
	.4byte	0xd4
	.4byte	.LLST22
	.4byte	.LVUS22
	.uleb128 0xe
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x276
	.byte	0xd
	.4byte	0xbc
	.4byte	.LLST23
	.4byte	.LVUS23
	.uleb128 0xe
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x277
	.byte	0xd
	.4byte	0xbc
	.4byte	.LLST24
	.4byte	.LVUS24
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x23e
	.byte	0xd
	.byte	0x1
	.4byte	.LFB1458
	.4byte	.LFE1458
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x51a
	.uleb128 0x14
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x23e
	.byte	0x30
	.4byte	0x3ef
	.byte	0x1
	.byte	0x50
	.uleb128 0x14
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x23e
	.byte	0x42
	.4byte	0xc8
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x22a
	.byte	0x11
	.byte	0x1
	.4byte	0xc8
	.4byte	.LFB1457
	.4byte	.LFE1457
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x54f
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x22a
	.byte	0x34
	.4byte	0x3ef
	.4byte	.LLST14
	.4byte	.LVUS14
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x217
	.byte	0x11
	.byte	0x1
	.4byte	0xc8
	.4byte	.LFB1456
	.4byte	.LFE1456
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x584
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x217
	.byte	0x30
	.4byte	0x3ef
	.4byte	.LLST13
	.4byte	.LVUS13
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x205
	.byte	0x10
	.byte	0x1
	.4byte	0xbc
	.4byte	.LFB1455
	.4byte	.LFE1455
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x5b9
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x205
	.byte	0x28
	.4byte	0x3ef
	.4byte	.LLST12
	.4byte	.LVUS12
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x1f1
	.byte	0xd
	.byte	0x1
	.4byte	.LFB1454
	.4byte	.LFE1454
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x5f3
	.uleb128 0x14
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x1f1
	.byte	0x25
	.4byte	0x3ef
	.byte	0x1
	.byte	0x50
	.uleb128 0x14
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x1f1
	.byte	0x36
	.4byte	0xbc
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x1db
	.byte	0xd
	.byte	0x1
	.4byte	.LFB1453
	.4byte	.LFE1453
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x62d
	.uleb128 0x14
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x1db
	.byte	0x2c
	.4byte	0x3ef
	.byte	0x1
	.byte	0x50
	.uleb128 0x14
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x1db
	.byte	0x3d
	.4byte	0xd4
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x1c5
	.byte	0xd
	.byte	0x1
	.4byte	.LFB1452
	.4byte	.LFE1452
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x667
	.uleb128 0x14
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x1c5
	.byte	0x39
	.4byte	0x3ef
	.byte	0x1
	.byte	0x50
	.uleb128 0x14
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x1c5
	.byte	0x4a
	.4byte	0xd4
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x1a3
	.byte	0xd
	.byte	0x1
	.4byte	.LFB1451
	.4byte	.LFE1451
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x6a1
	.uleb128 0x14
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x1a3
	.byte	0x39
	.4byte	0x3ef
	.byte	0x1
	.byte	0x50
	.uleb128 0x14
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x1a3
	.byte	0x4a
	.4byte	0xd4
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x17d
	.byte	0xd
	.byte	0x1
	.4byte	.LFB1450
	.4byte	.LFE1450
	.4byte	.LLST8
	.byte	0x1
	.4byte	0x735
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x17d
	.byte	0x30
	.4byte	0x3ef
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x17d
	.byte	0x42
	.4byte	0xc8
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0xe
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x187
	.byte	0xe
	.4byte	0xe0
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0xf
	.4byte	.LVL27
	.4byte	0x62d
	.4byte	0x71a
	.uleb128 0x10
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x10
	.byte	0x1
	.byte	0x51
	.byte	0x6
	.byte	0xa
	.2byte	0x7fff
	.byte	0x74
	.sleb128 0
	.byte	0x24
	.byte	0
	.uleb128 0x11
	.4byte	.LVL28
	.4byte	0x667
	.uleb128 0x10
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x10
	.byte	0x1
	.byte	0x51
	.byte	0x6
	.byte	0xb
	.2byte	0x8001
	.byte	0x74
	.sleb128 0
	.byte	0x24
	.byte	0
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x164
	.byte	0x11
	.byte	0x1
	.4byte	0xc8
	.4byte	.LFB1449
	.4byte	.LFE1449
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x76a
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x164
	.byte	0x34
	.4byte	0x3ef
	.4byte	.LLST7
	.4byte	.LVUS7
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x151
	.byte	0x11
	.byte	0x1
	.4byte	0xc8
	.4byte	.LFB1448
	.4byte	.LFE1448
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x79f
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x151
	.byte	0x30
	.4byte	0x3ef
	.4byte	.LLST6
	.4byte	.LVUS6
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x137
	.byte	0xd
	.byte	0x1
	.4byte	.LFB1447
	.4byte	.LFE1447
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x7d9
	.uleb128 0x14
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x137
	.byte	0x30
	.4byte	0x3ef
	.byte	0x1
	.byte	0x50
	.uleb128 0x14
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x137
	.byte	0x42
	.4byte	0xc8
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x123
	.byte	0x11
	.byte	0x1
	.4byte	0xc8
	.4byte	.LFB1446
	.4byte	.LFE1446
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x80e
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x123
	.byte	0x34
	.4byte	0x3ef
	.4byte	.LLST5
	.4byte	.LVUS5
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x110
	.byte	0x11
	.byte	0x1
	.4byte	0xc8
	.4byte	.LFB1445
	.4byte	.LFE1445
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x843
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x110
	.byte	0x30
	.4byte	0x3ef
	.4byte	.LLST4
	.4byte	.LVUS4
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.4byte	.LASF77
	.byte	0x1
	.byte	0xf6
	.byte	0xd
	.byte	0x1
	.4byte	.LFB1444
	.4byte	.LFE1444
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x87a
	.uleb128 0x18
	.4byte	.LASF47
	.byte	0x1
	.byte	0xf6
	.byte	0x2f
	.4byte	0x3ef
	.byte	0x1
	.byte	0x50
	.uleb128 0x18
	.4byte	.LASF78
	.byte	0x1
	.byte	0xf6
	.byte	0x40
	.4byte	0xd4
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF79
	.byte	0x1
	.byte	0xda
	.byte	0x10
	.byte	0x1
	.4byte	0xbc
	.4byte	.LFB1443
	.4byte	.LFE1443
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x8ad
	.uleb128 0x1a
	.4byte	.LASF47
	.byte	0x1
	.byte	0xda
	.byte	0x2f
	.4byte	0x3ef
	.4byte	.LLST3
	.4byte	.LVUS3
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF80
	.byte	0x1
	.byte	0xc7
	.byte	0x10
	.byte	0x1
	.4byte	0xbc
	.4byte	.LFB1442
	.4byte	.LFE1442
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x8e0
	.uleb128 0x1a
	.4byte	.LASF47
	.byte	0x1
	.byte	0xc7
	.byte	0x2f
	.4byte	0x3ef
	.4byte	.LLST2
	.4byte	.LVUS2
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF81
	.byte	0x1
	.byte	0xb3
	.byte	0x10
	.byte	0x1
	.4byte	0xbc
	.4byte	.LFB1441
	.4byte	.LFE1441
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x913
	.uleb128 0x1a
	.4byte	.LASF47
	.byte	0x1
	.byte	0xb3
	.byte	0x28
	.4byte	0x3ef
	.4byte	.LLST1
	.4byte	.LVUS1
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF82
	.byte	0x1
	.byte	0xa6
	.byte	0x10
	.byte	0x1
	.4byte	0xbc
	.4byte	.LFB1440
	.4byte	.LFE1440
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x946
	.uleb128 0x1a
	.4byte	.LASF47
	.byte	0x1
	.byte	0xa6
	.byte	0x28
	.4byte	0x3ef
	.4byte	.LLST0
	.4byte	.LVUS0
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.4byte	.LASF83
	.byte	0x1
	.byte	0x92
	.byte	0xd
	.byte	0x1
	.4byte	.LFB1439
	.4byte	.LFE1439
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x97d
	.uleb128 0x18
	.4byte	.LASF47
	.byte	0x1
	.byte	0x92
	.byte	0x25
	.4byte	0x3ef
	.byte	0x1
	.byte	0x50
	.uleb128 0x18
	.4byte	.LASF31
	.byte	0x1
	.byte	0x92
	.byte	0x36
	.4byte	0xbc
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.4byte	.LASF84
	.byte	0x1
	.byte	0x7d
	.byte	0xd
	.byte	0x1
	.4byte	.LFB1438
	.4byte	.LFE1438
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x9b4
	.uleb128 0x18
	.4byte	.LASF47
	.byte	0x1
	.byte	0x7d
	.byte	0x25
	.4byte	0x3ef
	.byte	0x1
	.byte	0x50
	.uleb128 0x18
	.4byte	.LASF30
	.byte	0x1
	.byte	0x7d
	.byte	0x36
	.4byte	0xbc
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF88
	.byte	0x1
	.byte	0x64
	.byte	0xd
	.byte	0x1
	.4byte	.LFB1437
	.4byte	.LFE1437
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x18
	.4byte	.LASF47
	.byte	0x1
	.byte	0x64
	.byte	0x2a
	.4byte	0x3ef
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0x10
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0xa
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST25:
	.4byte	.LFB1460
	.4byte	.LCFI2
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI2
	.4byte	.LFE1460
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0
	.4byte	0
.LVUS26:
	.uleb128 0
	.uleb128 .LVU213
	.uleb128 .LVU213
	.uleb128 .LVU218
	.uleb128 .LVU218
	.uleb128 .LVU230
	.uleb128 .LVU230
	.uleb128 0
.LLST26:
	.4byte	.LVL65
	.4byte	.LVL66-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL66-1
	.4byte	.LVL68
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL68
	.4byte	.LVL73-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL73-1
	.4byte	.LFE1460
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS27:
	.uleb128 0
	.uleb128 .LVU213
	.uleb128 .LVU213
	.uleb128 .LVU218
	.uleb128 .LVU218
	.uleb128 .LVU230
	.uleb128 .LVU230
	.uleb128 0
.LLST27:
	.4byte	.LVL65
	.4byte	.LVL66-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL66-1
	.4byte	.LVL68
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL68
	.4byte	.LVL73-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL73-1
	.4byte	.LFE1460
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS28:
	.uleb128 .LVU225
	.uleb128 .LVU232
.LLST28:
	.4byte	.LVL71
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS29:
	.uleb128 .LVU219
	.uleb128 .LVU223
	.uleb128 .LVU223
	.uleb128 .LVU224
	.uleb128 .LVU224
	.uleb128 .LVU225
.LLST29:
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x7
	.byte	0x71
	.sleb128 0
	.byte	0x70
	.sleb128 40
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x6
	.byte	0x71
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS30:
	.uleb128 .LVU232
	.uleb128 .LVU237
.LLST30:
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LFB1459
	.4byte	.LCFI1
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI1
	.4byte	.LFE1459
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LVUS16:
	.uleb128 0
	.uleb128 .LVU172
	.uleb128 .LVU172
	.uleb128 .LVU173
	.uleb128 .LVU173
	.uleb128 .LVU186
	.uleb128 .LVU186
	.uleb128 .LVU187
	.uleb128 .LVU187
	.uleb128 0
.LLST16:
	.4byte	.LVL39
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL59
	.4byte	.LFE1459
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS17:
	.uleb128 0
	.uleb128 .LVU142
	.uleb128 .LVU142
	.uleb128 0
.LLST17:
	.4byte	.LVL39
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL43
	.4byte	.LFE1459
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS18:
	.uleb128 .LVU136
	.uleb128 .LVU157
	.uleb128 .LVU157
	.uleb128 .LVU172
	.uleb128 .LVU172
	.uleb128 .LVU173
	.uleb128 .LVU173
	.uleb128 .LVU186
	.uleb128 .LVU186
	.uleb128 .LVU187
	.uleb128 .LVU187
	.uleb128 0
.LLST18:
	.4byte	.LVL41
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL48
	.4byte	.LVL53
	.2byte	0xd
	.byte	0x70
	.sleb128 4
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x1e
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x10
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x23
	.uleb128 0x4
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x1e
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LVL58
	.2byte	0xd
	.byte	0x70
	.sleb128 4
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x1e
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x10
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x23
	.uleb128 0x4
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x1e
	.byte	0x9f
	.4byte	.LVL59
	.4byte	.LFE1459
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS19:
	.uleb128 .LVU140
	.uleb128 .LVU150
	.uleb128 .LVU150
	.uleb128 .LVU154
	.uleb128 .LVU187
	.uleb128 .LVU195
	.uleb128 .LVU195
	.uleb128 .LVU199
	.uleb128 .LVU199
	.uleb128 0
.LLST19:
	.4byte	.LVL42
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0xd
	.byte	0x70
	.sleb128 6
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x1e
	.byte	0x9f
	.4byte	.LVL59
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL61
	.4byte	.LVL63
	.2byte	0xd
	.byte	0x70
	.sleb128 6
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x1e
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LFE1459
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS20:
	.uleb128 .LVU160
	.uleb128 .LVU164
	.uleb128 .LVU164
	.uleb128 .LVU166
	.uleb128 .LVU173
	.uleb128 .LVU176
	.uleb128 .LVU176
	.uleb128 .LVU179
	.uleb128 .LVU179
	.uleb128 .LVU180
.LLST20:
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL50
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x19
	.byte	0x70
	.sleb128 4
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x1e
	.byte	0x70
	.sleb128 28
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x26
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LVUS21:
	.uleb128 .LVU142
	.uleb128 .LVU144
	.uleb128 .LVU144
	.uleb128 .LVU154
	.uleb128 .LVU187
	.uleb128 .LVU192
	.uleb128 .LVU192
	.uleb128 .LVU197
	.uleb128 .LVU199
	.uleb128 .LVU201
	.uleb128 .LVU201
	.uleb128 0
.LLST21:
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x6
	.byte	0x71
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL60
	.4byte	.LVL62
	.2byte	0x6
	.byte	0xc
	.4byte	0x7fffffff
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL64
	.4byte	.LFE1459
	.2byte	0x7
	.byte	0x70
	.sleb128 8
	.byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS22:
	.uleb128 .LVU127
	.uleb128 .LVU163
	.uleb128 .LVU163
	.uleb128 .LVU165
	.uleb128 .LVU165
	.uleb128 .LVU166
	.uleb128 .LVU173
	.uleb128 .LVU178
	.uleb128 .LVU187
	.uleb128 0
.LLST22:
	.4byte	.LVL39
	.4byte	.LVL50
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x6
	.byte	0x7c
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL54
	.4byte	.LVL56
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL59
	.4byte	.LFE1459
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS23:
	.uleb128 .LVU131
	.uleb128 .LVU177
	.uleb128 .LVU177
	.uleb128 .LVU186
	.uleb128 .LVU186
	.uleb128 .LVU187
	.uleb128 .LVU187
	.uleb128 0
.LLST23:
	.4byte	.LVL40
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL56
	.4byte	.LVL58
	.2byte	0x2
	.byte	0x70
	.sleb128 20
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x23
	.uleb128 0x14
	.4byte	.LVL59
	.4byte	.LFE1459
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LVUS24:
	.uleb128 .LVU135
	.uleb128 0
.LLST24:
	.4byte	.LVL41
	.4byte	.LFE1459
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LVUS14:
	.uleb128 0
	.uleb128 .LVU112
	.uleb128 .LVU112
	.uleb128 0
.LLST14:
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL37
	.4byte	.LFE1457
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS13:
	.uleb128 0
	.uleb128 .LVU108
	.uleb128 .LVU108
	.uleb128 0
.LLST13:
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL35
	.4byte	.LFE1456
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS12:
	.uleb128 0
	.uleb128 .LVU104
	.uleb128 .LVU104
	.uleb128 0
.LLST12:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL33
	.4byte	.LFE1455
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LFB1450
	.4byte	.LCFI0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI0
	.4byte	.LFE1450
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 0
	.uleb128 .LVU89
	.uleb128 .LVU89
	.uleb128 .LVU91
	.uleb128 .LVU91
	.uleb128 0
.LLST9:
	.4byte	.LVL23
	.4byte	.LVL27-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL27-1
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL29
	.4byte	.LFE1450
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 0
	.uleb128 .LVU82
	.uleb128 .LVU82
	.uleb128 0
.LLST10:
	.4byte	.LVL23
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL26
	.4byte	.LFE1450
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 .LVU79
	.uleb128 .LVU81
	.uleb128 .LVU81
	.uleb128 .LVU89
	.uleb128 .LVU89
	.uleb128 .LVU91
.LLST11:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x5
	.byte	0x31
	.byte	0x71
	.sleb128 0
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL27-1
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL27-1
	.4byte	.LVL29
	.2byte	0x5
	.byte	0x31
	.byte	0x74
	.sleb128 0
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 0
	.uleb128 .LVU65
	.uleb128 .LVU65
	.uleb128 0
.LLST7:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL20
	.4byte	.LFE1449
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 0
	.uleb128 .LVU61
	.uleb128 .LVU61
	.uleb128 0
.LLST6:
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL18
	.4byte	.LFE1448
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 0
	.uleb128 .LVU50
	.uleb128 .LVU50
	.uleb128 0
.LLST5:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL15
	.4byte	.LFE1446
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 0
	.uleb128 .LVU46
	.uleb128 .LVU46
	.uleb128 0
.LLST4:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL13
	.4byte	.LFE1445
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU37
	.uleb128 .LVU37
	.uleb128 0
.LLST3:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL10
	.4byte	.LFE1443
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU33
	.uleb128 .LVU33
	.uleb128 0
.LLST2:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL8
	.4byte	.LFE1442
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU29
	.uleb128 .LVU29
	.uleb128 0
.LLST1:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL6
	.4byte	.LFE1441
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU25
	.uleb128 .LVU25
	.uleb128 0
.LLST0:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL4
	.4byte	.LFE1440
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0xd4
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB1437
	.4byte	.LFE1437-.LFB1437
	.4byte	.LFB1438
	.4byte	.LFE1438-.LFB1438
	.4byte	.LFB1439
	.4byte	.LFE1439-.LFB1439
	.4byte	.LFB1440
	.4byte	.LFE1440-.LFB1440
	.4byte	.LFB1441
	.4byte	.LFE1441-.LFB1441
	.4byte	.LFB1442
	.4byte	.LFE1442-.LFB1442
	.4byte	.LFB1443
	.4byte	.LFE1443-.LFB1443
	.4byte	.LFB1444
	.4byte	.LFE1444-.LFB1444
	.4byte	.LFB1445
	.4byte	.LFE1445-.LFB1445
	.4byte	.LFB1446
	.4byte	.LFE1446-.LFB1446
	.4byte	.LFB1447
	.4byte	.LFE1447-.LFB1447
	.4byte	.LFB1448
	.4byte	.LFE1448-.LFB1448
	.4byte	.LFB1449
	.4byte	.LFE1449-.LFB1449
	.4byte	.LFB1451
	.4byte	.LFE1451-.LFB1451
	.4byte	.LFB1452
	.4byte	.LFE1452-.LFB1452
	.4byte	.LFB1450
	.4byte	.LFE1450-.LFB1450
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
	.4byte	.LFB1459
	.4byte	.LFE1459-.LFB1459
	.4byte	.LFB1460
	.4byte	.LFE1460-.LFB1460
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB1437
	.4byte	.LFE1437
	.4byte	.LFB1438
	.4byte	.LFE1438
	.4byte	.LFB1439
	.4byte	.LFE1439
	.4byte	.LFB1440
	.4byte	.LFE1440
	.4byte	.LFB1441
	.4byte	.LFE1441
	.4byte	.LFB1442
	.4byte	.LFE1442
	.4byte	.LFB1443
	.4byte	.LFE1443
	.4byte	.LFB1444
	.4byte	.LFE1444
	.4byte	.LFB1445
	.4byte	.LFE1445
	.4byte	.LFB1446
	.4byte	.LFE1446
	.4byte	.LFB1447
	.4byte	.LFE1447
	.4byte	.LFB1448
	.4byte	.LFE1448
	.4byte	.LFB1449
	.4byte	.LFE1449
	.4byte	.LFB1451
	.4byte	.LFE1451
	.4byte	.LFB1452
	.4byte	.LFE1452
	.4byte	.LFB1450
	.4byte	.LFE1450
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
	.4byte	.LFB1459
	.4byte	.LFE1459
	.4byte	.LFB1460
	.4byte	.LFE1460
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF33:
	.ascii	"wUpperIntegralLimit\000"
.LASF46:
	.ascii	"PID_Handle_t\000"
.LASF84:
	.ascii	"PID_SetKP\000"
.LASF3:
	.ascii	"__int16_t\000"
.LASF34:
	.ascii	"wLowerIntegralLimit\000"
.LASF23:
	.ascii	"SHIFT_TAB_CCxP\000"
.LASF59:
	.ascii	"wDischarge\000"
.LASF58:
	.ascii	"wIntegral_sum_temp\000"
.LASF43:
	.ascii	"hKdDivisor\000"
.LASF50:
	.ascii	"wDeltaError\000"
.LASF80:
	.ascii	"PID_GetDefaultKP\000"
.LASF42:
	.ascii	"hKdGain\000"
.LASF11:
	.ascii	"long long int\000"
.LASF9:
	.ascii	"__uint32_t\000"
.LASF5:
	.ascii	"__uint16_t\000"
.LASF35:
	.ascii	"hUpperOutputLimit\000"
.LASF4:
	.ascii	"short int\000"
.LASF75:
	.ascii	"PID_GetKPDivisorPOW2\000"
.LASF73:
	.ascii	"PID_GetKIDivisor\000"
.LASF48:
	.ascii	"wProcessVarError\000"
.LASF14:
	.ascii	"uint8_t\000"
.LASF61:
	.ascii	"PID_GetKDDivisor\000"
.LASF85:
	.ascii	"GNU C17 10.2.1 20201103 (release) -mcpu=cortex-m4 -"
	.ascii	"mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=hard -march=ar"
	.ascii	"mv7e-m+fp -g -gdwarf-2 -O3 -fdata-sections -ffuncti"
	.ascii	"on-sections\000"
.LASF62:
	.ascii	"PID_GetKD\000"
.LASF52:
	.ascii	"PID_Controller\000"
.LASF81:
	.ascii	"PID_GetKI\000"
.LASF60:
	.ascii	"PID_GetKDDivisorPOW2\000"
.LASF27:
	.ascii	"float\000"
.LASF82:
	.ascii	"PID_GetKP\000"
.LASF69:
	.ascii	"wLowerLimit\000"
.LASF66:
	.ascii	"PID_SetUpperIntegralTermLimit\000"
.LASF54:
	.ascii	"returnValue\000"
.LASF30:
	.ascii	"hKpGain\000"
.LASF41:
	.ascii	"hDefKdGain\000"
.LASF8:
	.ascii	"long int\000"
.LASF2:
	.ascii	"__uint8_t\000"
.LASF28:
	.ascii	"hDefKpGain\000"
.LASF88:
	.ascii	"PID_HandleInit\000"
.LASF45:
	.ascii	"wPrevProcessVarError\000"
.LASF78:
	.ascii	"wIntegralTermValue\000"
.LASF64:
	.ascii	"PID_SetKD\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF83:
	.ascii	"PID_SetKI\000"
.LASF53:
	.ascii	"PI_Controller\000"
.LASF0:
	.ascii	"signed char\000"
.LASF12:
	.ascii	"long long unsigned int\000"
.LASF55:
	.ascii	"wProportional_Term\000"
.LASF18:
	.ascii	"uint32_t\000"
.LASF21:
	.ascii	"SHIFT_TAB_OCxx\000"
.LASF70:
	.ascii	"PID_SetKIDivisorPOW2\000"
.LASF13:
	.ascii	"unsigned int\000"
.LASF16:
	.ascii	"uint16_t\000"
.LASF67:
	.ascii	"wUpperLimit\000"
.LASF49:
	.ascii	"wDifferential_Term\000"
.LASF40:
	.ascii	"hKiDivisorPOW2\000"
.LASF57:
	.ascii	"wOutput_32\000"
.LASF17:
	.ascii	"int32_t\000"
.LASF71:
	.ascii	"wKiDiv\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF26:
	.ascii	"CHANNEL_OFFSET_TAB\000"
.LASF74:
	.ascii	"PID_SetKPDivisorPOW2\000"
.LASF65:
	.ascii	"PID_SetPrevError\000"
.LASF37:
	.ascii	"hKpDivisor\000"
.LASF10:
	.ascii	"long unsigned int\000"
.LASF87:
	.ascii	"/home/joel/share/EVSPIN32G4_Shinano\000"
.LASF24:
	.ascii	"SHIFT_TAB_OISx\000"
.LASF22:
	.ascii	"SHIFT_TAB_ICxx\000"
.LASF36:
	.ascii	"hLowerOutputLimit\000"
.LASF7:
	.ascii	"__int32_t\000"
.LASF38:
	.ascii	"hKiDivisor\000"
.LASF39:
	.ascii	"hKpDivisorPOW2\000"
.LASF19:
	.ascii	"long double\000"
.LASF51:
	.ascii	"wTemp_output\000"
.LASF76:
	.ascii	"PID_GetKPDivisor\000"
.LASF79:
	.ascii	"PID_GetDefaultKI\000"
.LASF63:
	.ascii	"PID_SetKDDivisorPOW2\000"
.LASF32:
	.ascii	"wIntegralTerm\000"
.LASF31:
	.ascii	"hKiGain\000"
.LASF15:
	.ascii	"int16_t\000"
.LASF86:
	.ascii	"MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Src/"
	.ascii	"pid_regulator.c\000"
.LASF56:
	.ascii	"wIntegral_Term\000"
.LASF68:
	.ascii	"PID_SetLowerIntegralTermLimit\000"
.LASF44:
	.ascii	"hKdDivisorPOW2\000"
.LASF77:
	.ascii	"PID_SetIntegralTerm\000"
.LASF29:
	.ascii	"hDefKiGain\000"
.LASF47:
	.ascii	"pHandle\000"
.LASF72:
	.ascii	"PID_GetKIDivisorPOW2\000"
.LASF25:
	.ascii	"USART_PRESCALER_TAB\000"
.LASF20:
	.ascii	"OFFSET_TAB_CCMRx\000"
	.ident	"GCC: (GNU Arm Embedded Toolchain 10-2020-q4-major) 10.2.1 20201103 (release)"
