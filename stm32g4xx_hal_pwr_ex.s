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
	.file	"stm32g4xx_hal_pwr_ex.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.HAL_PWREx_GetVoltageRange,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_PWREx_GetVoltageRange
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_PWREx_GetVoltageRange, %function
HAL_PWREx_GetVoltageRange:
.LFB132:
	.file 1 "Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_pwr_ex.c"
	.loc 1 110 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 111 3 view .LVU1
	.loc 1 111 7 is_stmt 0 view .LVU2
	ldr	r3, .L8
	ldr	r0, [r3]
	and	r0, r0, #1536
	.loc 1 111 6 view .LVU3
	cmp	r0, #1024
	beq	.L1
	.loc 1 115 8 is_stmt 1 view .LVU4
	.loc 1 115 12 is_stmt 0 view .LVU5
	ldr	r0, [r3, #128]
	.loc 1 118 12 view .LVU6
	ands	r0, r0, #256
	it	ne
	movne	r0, #512
.L1:
	.loc 1 124 1 view .LVU7
	bx	lr
.L9:
	.align	2
.L8:
	.word	1073770496
	.cfi_endproc
.LFE132:
	.size	HAL_PWREx_GetVoltageRange, .-HAL_PWREx_GetVoltageRange
	.section	.text.HAL_PWREx_ControlVoltageScaling,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_PWREx_ControlVoltageScaling
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_PWREx_ControlVoltageScaling, %function
HAL_PWREx_ControlVoltageScaling:
.LVL0:
.LFB133:
	.loc 1 154 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 155 3 view .LVU9
	.loc 1 157 3 view .LVU10
	.loc 1 159 3 view .LVU11
	.loc 1 154 1 is_stmt 0 view .LVU12
	push	{r4}
.LCFI0:
	.cfi_def_cfa_offset 4
	.cfi_offset 4, -4
	.loc 1 162 9 view .LVU13
	ldr	r2, .L42
	.loc 1 159 6 view .LVU14
	cbnz	r0, .L11
	.loc 1 162 5 is_stmt 1 view .LVU15
	.loc 1 162 9 is_stmt 0 view .LVU16
	ldr	r3, [r2]
	and	r3, r3, #1536
	.loc 1 162 8 view .LVU17
	cmp	r3, #1024
	.loc 1 165 7 view .LVU18
	ldr	r3, [r2, #128]
	.loc 1 162 8 view .LVU19
	beq	.L37
	.loc 1 185 7 is_stmt 1 view .LVU20
	bic	r3, r3, #256
	.loc 1 226 1 is_stmt 0 view .LVU21
	ldr	r4, [sp], #4
.LCFI1:
	.cfi_remember_state
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 185 7 view .LVU22
	str	r3, [r2, #128]
	.loc 1 226 1 view .LVU23
	bx	lr
.L11:
.LCFI2:
	.cfi_restore_state
	.loc 1 188 8 is_stmt 1 view .LVU24
	.loc 1 188 11 is_stmt 0 view .LVU25
	cmp	r0, #512
	beq	.L38
	.loc 1 220 5 is_stmt 1 view .LVU26
	ldr	r3, [r2]
	.loc 1 226 1 is_stmt 0 view .LVU27
	ldr	r4, [sp], #4
.LCFI3:
	.cfi_remember_state
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 220 5 view .LVU28
	bic	r3, r3, #1536
	orr	r3, r3, #1024
	.loc 1 225 10 view .LVU29
	movs	r0, #0
.LVL1:
	.loc 1 220 5 view .LVU30
	str	r3, [r2]
	.loc 1 226 1 view .LVU31
	bx	lr
.LVL2:
.L38:
.LCFI4:
	.cfi_restore_state
	.loc 1 191 5 is_stmt 1 view .LVU32
	.loc 1 191 9 is_stmt 0 view .LVU33
	ldr	r3, [r2]
	and	r3, r3, #1536
	.loc 1 191 8 view .LVU34
	cmp	r3, #1024
	.loc 1 194 7 view .LVU35
	ldr	r3, [r2, #128]
	.loc 1 191 8 view .LVU36
	beq	.L39
	.loc 1 214 7 is_stmt 1 view .LVU37
	orr	r3, r3, #256
	.loc 1 225 10 is_stmt 0 view .LVU38
	movs	r0, #0
.LVL3:
	.loc 1 226 1 view .LVU39
	ldr	r4, [sp], #4
.LCFI5:
	.cfi_remember_state
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 214 7 view .LVU40
	str	r3, [r2, #128]
	.loc 1 226 1 view .LVU41
	bx	lr
.LVL4:
.L37:
.LCFI6:
	.cfi_restore_state
	.loc 1 165 7 is_stmt 1 view .LVU42
	bic	r3, r3, #256
	str	r3, [r2, #128]
	.loc 1 168 7 view .LVU43
	ldr	r1, [r2]
	.loc 1 171 53 is_stmt 0 view .LVU44
	ldr	r4, .L42+4
	.loc 1 171 72 view .LVU45
	ldr	r0, .L42+8
.LVL5:
	.loc 1 168 7 view .LVU46
	bic	r1, r1, #1536
	orr	r1, r1, #512
	str	r1, [r2]
	.loc 1 171 7 is_stmt 1 view .LVU47
	.loc 1 171 53 is_stmt 0 view .LVU48
	ldr	r3, [r4]
	movs	r1, #50
	mul	r3, r1, r3
	.loc 1 172 15 view .LVU49
	ldr	r1, [r2, #20]
	.loc 1 171 72 view .LVU50
	umull	r0, r3, r0, r3
	lsrs	r3, r3, #18
	.loc 1 172 13 view .LVU51
	lsls	r0, r1, #21
	.loc 1 171 23 view .LVU52
	add	r3, r3, #1
.LVL6:
	.loc 1 172 7 is_stmt 1 view .LVU53
	.loc 1 172 13 view .LVU54
	bpl	.L13
	b	.L14
.L40:
	.loc 1 172 55 is_stmt 0 discriminator 1 view .LVU55
	cbz	r3, .L13
.L14:
	.loc 1 174 9 is_stmt 1 view .LVU56
	.loc 1 172 15 is_stmt 0 view .LVU57
	ldr	r1, [r2, #20]
	.loc 1 172 13 view .LVU58
	lsls	r1, r1, #21
	.loc 1 174 24 view .LVU59
	add	r3, r3, #-1
.LVL7:
	.loc 1 172 13 is_stmt 1 view .LVU60
	bmi	.L40
.L13:
	.loc 1 176 7 view .LVU61
	.loc 1 176 11 is_stmt 0 view .LVU62
	ldr	r3, .L42
.LVL8:
	.loc 1 176 11 view .LVU63
	ldr	r3, [r3, #20]
	.loc 1 176 10 view .LVU64
	lsls	r4, r3, #21
	.loc 1 225 10 view .LVU65
	ite	pl
	movpl	r0, #0
	.loc 1 178 9 is_stmt 1 view .LVU66
	.loc 1 178 16 is_stmt 0 view .LVU67
	movmi	r0, #3
	.loc 1 226 1 view .LVU68
	ldr	r4, [sp], #4
.LCFI7:
	.cfi_remember_state
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	bx	lr
.LVL9:
.L39:
.LCFI8:
	.cfi_restore_state
	.loc 1 194 7 is_stmt 1 view .LVU69
	orr	r3, r3, #256
	str	r3, [r2, #128]
	.loc 1 197 7 view .LVU70
	ldr	r1, [r2]
	.loc 1 200 53 is_stmt 0 view .LVU71
	ldr	r4, .L42+4
	.loc 1 200 72 view .LVU72
	ldr	r0, .L42+8
.LVL10:
	.loc 1 197 7 view .LVU73
	bic	r1, r1, #1536
	orr	r1, r1, #512
	str	r1, [r2]
	.loc 1 200 7 is_stmt 1 view .LVU74
	.loc 1 200 53 is_stmt 0 view .LVU75
	ldr	r3, [r4]
	movs	r1, #50
	mul	r3, r1, r3
	.loc 1 201 15 view .LVU76
	ldr	r1, [r2, #20]
	.loc 1 200 72 view .LVU77
	umull	r0, r3, r0, r3
	lsrs	r3, r3, #18
	.loc 1 201 13 view .LVU78
	lsls	r0, r1, #21
	.loc 1 200 23 view .LVU79
	add	r3, r3, #1
.LVL11:
	.loc 1 201 7 is_stmt 1 view .LVU80
	.loc 1 201 13 view .LVU81
	bpl	.L13
	b	.L20
.L41:
	.loc 1 201 55 is_stmt 0 discriminator 1 view .LVU82
	cmp	r3, #0
	beq	.L13
.L20:
	.loc 1 203 9 is_stmt 1 view .LVU83
	.loc 1 201 15 is_stmt 0 view .LVU84
	ldr	r1, [r2, #20]
	.loc 1 201 13 view .LVU85
	lsls	r1, r1, #21
	.loc 1 203 24 view .LVU86
	add	r3, r3, #-1
.LVL12:
	.loc 1 201 13 is_stmt 1 view .LVU87
	bpl	.L13
	b	.L41
.L43:
	.align	2
.L42:
	.word	1073770496
	.word	SystemCoreClock
	.word	1125899907
	.cfi_endproc
.LFE133:
	.size	HAL_PWREx_ControlVoltageScaling, .-HAL_PWREx_ControlVoltageScaling
	.section	.text.HAL_PWREx_EnableBatteryCharging,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_PWREx_EnableBatteryCharging
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_PWREx_EnableBatteryCharging, %function
HAL_PWREx_EnableBatteryCharging:
.LVL13:
.LFB134:
	.loc 1 239 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 240 3 view .LVU89
	.loc 1 243 3 view .LVU90
	ldr	r2, .L45
	ldr	r3, [r2, #12]
	bic	r3, r3, #512
	orrs	r0, r0, r3
.LVL14:
	.loc 1 243 3 is_stmt 0 view .LVU91
	str	r0, [r2, #12]
	.loc 1 246 3 is_stmt 1 view .LVU92
	ldr	r3, [r2, #12]
	orr	r3, r3, #256
	str	r3, [r2, #12]
	.loc 1 247 1 is_stmt 0 view .LVU93
	bx	lr
.L46:
	.align	2
.L45:
	.word	1073770496
	.cfi_endproc
.LFE134:
	.size	HAL_PWREx_EnableBatteryCharging, .-HAL_PWREx_EnableBatteryCharging
	.section	.text.HAL_PWREx_DisableBatteryCharging,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_PWREx_DisableBatteryCharging
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_PWREx_DisableBatteryCharging, %function
HAL_PWREx_DisableBatteryCharging:
.LFB135:
	.loc 1 255 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 256 3 view .LVU95
	ldr	r2, .L48
	ldr	r3, [r2, #12]
	bic	r3, r3, #256
	str	r3, [r2, #12]
	.loc 1 257 1 is_stmt 0 view .LVU96
	bx	lr
.L49:
	.align	2
.L48:
	.word	1073770496
	.cfi_endproc
.LFE135:
	.size	HAL_PWREx_DisableBatteryCharging, .-HAL_PWREx_DisableBatteryCharging
	.section	.text.HAL_PWREx_EnableInternalWakeUpLine,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_PWREx_EnableInternalWakeUpLine
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_PWREx_EnableInternalWakeUpLine, %function
HAL_PWREx_EnableInternalWakeUpLine:
.LFB136:
	.loc 1 265 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 266 3 view .LVU98
	ldr	r2, .L51
	ldr	r3, [r2, #8]
	orr	r3, r3, #32768
	str	r3, [r2, #8]
	.loc 1 267 1 is_stmt 0 view .LVU99
	bx	lr
.L52:
	.align	2
.L51:
	.word	1073770496
	.cfi_endproc
.LFE136:
	.size	HAL_PWREx_EnableInternalWakeUpLine, .-HAL_PWREx_EnableInternalWakeUpLine
	.section	.text.HAL_PWREx_DisableInternalWakeUpLine,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_PWREx_DisableInternalWakeUpLine
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_PWREx_DisableInternalWakeUpLine, %function
HAL_PWREx_DisableInternalWakeUpLine:
.LFB137:
	.loc 1 275 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 276 3 view .LVU101
	ldr	r2, .L54
	ldr	r3, [r2, #8]
	bic	r3, r3, #32768
	str	r3, [r2, #8]
	.loc 1 277 1 is_stmt 0 view .LVU102
	bx	lr
.L55:
	.align	2
.L54:
	.word	1073770496
	.cfi_endproc
.LFE137:
	.size	HAL_PWREx_DisableInternalWakeUpLine, .-HAL_PWREx_DisableInternalWakeUpLine
	.section	.text.HAL_PWREx_EnableGPIOPullUp,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_PWREx_EnableGPIOPullUp
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_PWREx_EnableGPIOPullUp, %function
HAL_PWREx_EnableGPIOPullUp:
.LVL15:
.LFB138:
	.loc 1 303 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 304 3 view .LVU104
	.loc 1 306 3 view .LVU105
	.loc 1 307 3 view .LVU106
	.loc 1 309 3 view .LVU107
	cmp	r0, #6
	bhi	.L66
	tbb	[pc, r0]
.L59:
	.byte	(.L65-.L59)/2
	.byte	(.L64-.L59)/2
	.byte	(.L63-.L59)/2
	.byte	(.L62-.L59)/2
	.byte	(.L61-.L59)/2
	.byte	(.L60-.L59)/2
	.byte	(.L58-.L59)/2
	.p2align 1
.L58:
	.loc 1 336 8 view .LVU108
	ldr	r3, .L67
	ldr	r2, [r3, #80]
	and	r1, r1, #1024
.LVL16:
	.loc 1 336 8 is_stmt 0 view .LVU109
	orrs	r1, r1, r2
	str	r1, [r3, #80]
	.loc 1 337 8 is_stmt 1 view .LVU110
	ldr	r2, [r3, #84]
	str	r2, [r3, #84]
	.loc 1 338 8 view .LVU111
	.loc 1 304 21 is_stmt 0 view .LVU112
	movs	r0, #0
.LVL17:
	.loc 1 338 8 view .LVU113
	bx	lr
.LVL18:
.L65:
	.loc 1 312 8 is_stmt 1 view .LVU114
	ldr	r3, .L67
	ldr	r0, [r3, #32]
.LVL19:
	.loc 1 312 8 is_stmt 0 view .LVU115
	bic	r2, r1, #16384
	orrs	r2, r2, r0
	str	r2, [r3, #32]
	.loc 1 313 8 is_stmt 1 view .LVU116
	ldr	r2, [r3, #36]
	bic	r1, r1, #40960
.LVL20:
	.loc 1 313 8 is_stmt 0 view .LVU117
	bic	r1, r2, r1
	.loc 1 304 21 view .LVU118
	movs	r0, #0
	.loc 1 313 8 view .LVU119
	str	r1, [r3, #36]
	.loc 1 314 8 is_stmt 1 view .LVU120
	bx	lr
.LVL21:
.L64:
	.loc 1 316 8 view .LVU121
	ldr	r3, .L67
	ldr	r2, [r3, #40]
	.loc 1 317 8 is_stmt 0 view .LVU122
	bic	ip, r1, #16
	.loc 1 316 8 view .LVU123
	orrs	r1, r1, r2
.LVL22:
	.loc 1 316 8 view .LVU124
	str	r1, [r3, #40]
	.loc 1 317 8 is_stmt 1 view .LVU125
	ldr	r2, [r3, #44]
	bic	r2, r2, ip
	.loc 1 304 21 is_stmt 0 view .LVU126
	movs	r0, #0
.LVL23:
	.loc 1 317 8 view .LVU127
	str	r2, [r3, #44]
	.loc 1 318 8 is_stmt 1 view .LVU128
	bx	lr
.LVL24:
.L63:
	.loc 1 320 8 view .LVU129
	ldr	r3, .L67
	ldr	r2, [r3, #48]
	orrs	r2, r2, r1
	str	r2, [r3, #48]
	.loc 1 321 8 view .LVU130
	ldr	r2, [r3, #52]
	bic	r1, r2, r1
.LVL25:
	.loc 1 304 21 is_stmt 0 view .LVU131
	movs	r0, #0
.LVL26:
	.loc 1 321 8 view .LVU132
	str	r1, [r3, #52]
	.loc 1 322 8 is_stmt 1 view .LVU133
	bx	lr
.LVL27:
.L62:
	.loc 1 324 8 view .LVU134
	ldr	r3, .L67
	ldr	r2, [r3, #56]
	orrs	r2, r2, r1
	str	r2, [r3, #56]
	.loc 1 325 8 view .LVU135
	ldr	r2, [r3, #60]
	bic	r1, r2, r1
.LVL28:
	.loc 1 304 21 is_stmt 0 view .LVU136
	movs	r0, #0
.LVL29:
	.loc 1 325 8 view .LVU137
	str	r1, [r3, #60]
	.loc 1 326 8 is_stmt 1 view .LVU138
	bx	lr
.LVL30:
.L61:
	.loc 1 328 8 view .LVU139
	ldr	r3, .L67
	ldr	r2, [r3, #64]
	orrs	r2, r2, r1
	str	r2, [r3, #64]
	.loc 1 329 8 view .LVU140
	ldr	r2, [r3, #68]
	bic	r1, r2, r1
.LVL31:
	.loc 1 304 21 is_stmt 0 view .LVU141
	movs	r0, #0
.LVL32:
	.loc 1 329 8 view .LVU142
	str	r1, [r3, #68]
	.loc 1 330 8 is_stmt 1 view .LVU143
	bx	lr
.LVL33:
.L60:
	.loc 1 332 8 view .LVU144
	ldr	r3, .L67
	movw	r2, #1543
	ldr	r0, [r3, #72]
.LVL34:
	.loc 1 332 8 is_stmt 0 view .LVU145
	ands	r1, r1, r2
.LVL35:
	.loc 1 332 8 view .LVU146
	orrs	r0, r0, r1
	str	r0, [r3, #72]
	.loc 1 333 8 is_stmt 1 view .LVU147
	ldr	r2, [r3, #76]
	bic	r1, r2, r1
	.loc 1 304 21 is_stmt 0 view .LVU148
	movs	r0, #0
	.loc 1 333 8 view .LVU149
	str	r1, [r3, #76]
	.loc 1 334 8 is_stmt 1 view .LVU150
	bx	lr
.LVL36:
.L66:
	.loc 1 304 21 is_stmt 0 view .LVU151
	movs	r0, #1
.LVL37:
	.loc 1 344 3 is_stmt 1 view .LVU152
	.loc 1 345 1 is_stmt 0 view .LVU153
	bx	lr
.L68:
	.align	2
.L67:
	.word	1073770496
	.cfi_endproc
.LFE138:
	.size	HAL_PWREx_EnableGPIOPullUp, .-HAL_PWREx_EnableGPIOPullUp
	.section	.text.HAL_PWREx_DisableGPIOPullUp,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_PWREx_DisableGPIOPullUp
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_PWREx_DisableGPIOPullUp, %function
HAL_PWREx_DisableGPIOPullUp:
.LVL38:
.LFB139:
	.loc 1 364 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 365 3 view .LVU155
	.loc 1 367 3 view .LVU156
	.loc 1 368 3 view .LVU157
	.loc 1 370 3 view .LVU158
	cmp	r0, #6
	bhi	.L79
	tbb	[pc, r0]
.L72:
	.byte	(.L78-.L72)/2
	.byte	(.L77-.L72)/2
	.byte	(.L76-.L72)/2
	.byte	(.L75-.L72)/2
	.byte	(.L74-.L72)/2
	.byte	(.L73-.L72)/2
	.byte	(.L71-.L72)/2
	.p2align 1
.L71:
	.loc 1 391 8 view .LVU159
	ldr	r2, .L80
	ldr	r3, [r2, #80]
	and	r1, r1, #1024
.LVL39:
	.loc 1 391 8 is_stmt 0 view .LVU160
	bic	r1, r3, r1
	.loc 1 365 21 view .LVU161
	movs	r0, #0
.LVL40:
	.loc 1 391 8 view .LVU162
	str	r1, [r2, #80]
	.loc 1 392 8 is_stmt 1 view .LVU163
	bx	lr
.LVL41:
.L78:
	.loc 1 373 8 view .LVU164
	ldr	r2, .L80
	ldr	r3, [r2, #32]
	bic	r1, r1, #16384
.LVL42:
	.loc 1 373 8 is_stmt 0 view .LVU165
	bic	r1, r3, r1
	.loc 1 365 21 view .LVU166
	movs	r0, #0
.LVL43:
	.loc 1 373 8 view .LVU167
	str	r1, [r2, #32]
	.loc 1 374 8 is_stmt 1 view .LVU168
	bx	lr
.LVL44:
.L77:
	.loc 1 376 8 view .LVU169
	ldr	r2, .L80
	ldr	r3, [r2, #40]
	bic	r1, r3, r1
.LVL45:
	.loc 1 365 21 is_stmt 0 view .LVU170
	movs	r0, #0
.LVL46:
	.loc 1 376 8 view .LVU171
	str	r1, [r2, #40]
	.loc 1 377 8 is_stmt 1 view .LVU172
	bx	lr
.LVL47:
.L76:
	.loc 1 379 8 view .LVU173
	ldr	r2, .L80
	ldr	r3, [r2, #48]
	bic	r1, r3, r1
.LVL48:
	.loc 1 365 21 is_stmt 0 view .LVU174
	movs	r0, #0
.LVL49:
	.loc 1 379 8 view .LVU175
	str	r1, [r2, #48]
	.loc 1 380 8 is_stmt 1 view .LVU176
	bx	lr
.LVL50:
.L75:
	.loc 1 382 8 view .LVU177
	ldr	r2, .L80
	ldr	r3, [r2, #56]
	bic	r1, r3, r1
.LVL51:
	.loc 1 365 21 is_stmt 0 view .LVU178
	movs	r0, #0
.LVL52:
	.loc 1 382 8 view .LVU179
	str	r1, [r2, #56]
	.loc 1 383 8 is_stmt 1 view .LVU180
	bx	lr
.LVL53:
.L74:
	.loc 1 385 8 view .LVU181
	ldr	r2, .L80
	ldr	r3, [r2, #64]
	bic	r1, r3, r1
.LVL54:
	.loc 1 365 21 is_stmt 0 view .LVU182
	movs	r0, #0
.LVL55:
	.loc 1 385 8 view .LVU183
	str	r1, [r2, #64]
	.loc 1 386 8 is_stmt 1 view .LVU184
	bx	lr
.LVL56:
.L73:
	.loc 1 388 8 view .LVU185
	ldr	r0, .L80
.LVL57:
	.loc 1 388 8 is_stmt 0 view .LVU186
	movw	r2, #1543
	ldr	r3, [r0, #72]
	ands	r1, r1, r2
.LVL58:
	.loc 1 388 8 view .LVU187
	bic	r1, r3, r1
	str	r1, [r0, #72]
	.loc 1 389 8 is_stmt 1 view .LVU188
	.loc 1 365 21 is_stmt 0 view .LVU189
	movs	r0, #0
	.loc 1 389 8 view .LVU190
	bx	lr
.LVL59:
.L79:
	.loc 1 365 21 view .LVU191
	movs	r0, #1
.LVL60:
	.loc 1 398 3 is_stmt 1 view .LVU192
	.loc 1 399 1 is_stmt 0 view .LVU193
	bx	lr
.L81:
	.align	2
.L80:
	.word	1073770496
	.cfi_endproc
.LFE139:
	.size	HAL_PWREx_DisableGPIOPullUp, .-HAL_PWREx_DisableGPIOPullUp
	.section	.text.HAL_PWREx_EnableGPIOPullDown,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_PWREx_EnableGPIOPullDown
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_PWREx_EnableGPIOPullDown, %function
HAL_PWREx_EnableGPIOPullDown:
.LVL61:
.LFB140:
	.loc 1 425 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 426 3 view .LVU195
	.loc 1 428 3 view .LVU196
	.loc 1 429 3 view .LVU197
	.loc 1 431 3 view .LVU198
	cmp	r0, #6
	bhi	.L92
	tbb	[pc, r0]
.L85:
	.byte	(.L91-.L85)/2
	.byte	(.L90-.L85)/2
	.byte	(.L89-.L85)/2
	.byte	(.L88-.L85)/2
	.byte	(.L87-.L85)/2
	.byte	(.L86-.L85)/2
	.byte	(.L84-.L85)/2
	.p2align 1
.L84:
	.loc 1 458 8 view .LVU199
	ldr	r3, .L96
	ldr	r2, [r3, #84]
	str	r2, [r3, #84]
	.loc 1 459 8 view .LVU200
	ldr	r2, [r3, #80]
	and	r1, r1, #1024
.LVL62:
	.loc 1 459 8 is_stmt 0 view .LVU201
	bic	r1, r2, r1
	.loc 1 426 21 view .LVU202
	movs	r0, #0
.LVL63:
	.loc 1 459 8 view .LVU203
	str	r1, [r3, #80]
	.loc 1 460 8 is_stmt 1 view .LVU204
	bx	lr
.LVL64:
.L91:
	.loc 1 434 8 view .LVU205
	ldr	r3, .L96
	ldr	r0, [r3, #36]
.LVL65:
	.loc 1 434 8 is_stmt 0 view .LVU206
	bic	r2, r1, #40960
	orrs	r2, r2, r0
	str	r2, [r3, #36]
	.loc 1 435 8 is_stmt 1 view .LVU207
	ldr	r2, [r3, #32]
	bic	r1, r1, #16384
.LVL66:
	.loc 1 435 8 is_stmt 0 view .LVU208
	bic	r1, r2, r1
	.loc 1 426 21 view .LVU209
	movs	r0, #0
	.loc 1 435 8 view .LVU210
	str	r1, [r3, #32]
	.loc 1 436 8 is_stmt 1 view .LVU211
	bx	lr
.LVL67:
.L90:
	.loc 1 438 8 view .LVU212
	ldr	r3, .L96
	.loc 1 425 1 is_stmt 0 view .LVU213
	push	{r4}
.LCFI9:
	.cfi_def_cfa_offset 4
	.cfi_offset 4, -4
	.loc 1 438 8 view .LVU214
	ldr	r4, [r3, #44]
	bic	r2, r1, #16
	orrs	r2, r2, r4
	str	r2, [r3, #44]
	.loc 1 439 8 is_stmt 1 view .LVU215
	ldr	r2, [r3, #40]
	.loc 1 467 1 is_stmt 0 view .LVU216
	ldr	r4, [sp], #4
.LCFI10:
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 439 8 view .LVU217
	bic	r1, r2, r1
.LVL68:
	.loc 1 426 21 view .LVU218
	movs	r0, #0
.LVL69:
	.loc 1 439 8 view .LVU219
	str	r1, [r3, #40]
	.loc 1 440 8 is_stmt 1 view .LVU220
.LVL70:
	.loc 1 466 3 view .LVU221
	.loc 1 467 1 is_stmt 0 view .LVU222
	bx	lr
.LVL71:
.L89:
	.loc 1 442 8 is_stmt 1 view .LVU223
	ldr	r3, .L96
	ldr	r2, [r3, #52]
	orrs	r2, r2, r1
	str	r2, [r3, #52]
	.loc 1 443 8 view .LVU224
	ldr	r2, [r3, #48]
	bic	r1, r2, r1
.LVL72:
	.loc 1 426 21 is_stmt 0 view .LVU225
	movs	r0, #0
.LVL73:
	.loc 1 443 8 view .LVU226
	str	r1, [r3, #48]
	.loc 1 444 8 is_stmt 1 view .LVU227
	bx	lr
.LVL74:
.L88:
	.loc 1 446 8 view .LVU228
	ldr	r3, .L96
	ldr	r2, [r3, #60]
	orrs	r2, r2, r1
	str	r2, [r3, #60]
	.loc 1 447 8 view .LVU229
	ldr	r2, [r3, #56]
	bic	r1, r2, r1
.LVL75:
	.loc 1 426 21 is_stmt 0 view .LVU230
	movs	r0, #0
.LVL76:
	.loc 1 447 8 view .LVU231
	str	r1, [r3, #56]
	.loc 1 448 8 is_stmt 1 view .LVU232
	bx	lr
.LVL77:
.L87:
	.loc 1 450 8 view .LVU233
	ldr	r3, .L96
	ldr	r2, [r3, #68]
	orrs	r2, r2, r1
	str	r2, [r3, #68]
	.loc 1 451 8 view .LVU234
	ldr	r2, [r3, #64]
	bic	r1, r2, r1
.LVL78:
	.loc 1 426 21 is_stmt 0 view .LVU235
	movs	r0, #0
.LVL79:
	.loc 1 451 8 view .LVU236
	str	r1, [r3, #64]
	.loc 1 452 8 is_stmt 1 view .LVU237
	bx	lr
.LVL80:
.L86:
	.loc 1 454 8 view .LVU238
	ldr	r3, .L96
	movw	r2, #1543
	ldr	r0, [r3, #76]
.LVL81:
	.loc 1 454 8 is_stmt 0 view .LVU239
	ands	r1, r1, r2
.LVL82:
	.loc 1 454 8 view .LVU240
	orrs	r0, r0, r1
	str	r0, [r3, #76]
	.loc 1 455 8 is_stmt 1 view .LVU241
	ldr	r2, [r3, #72]
	bic	r1, r2, r1
	.loc 1 426 21 is_stmt 0 view .LVU242
	movs	r0, #0
	.loc 1 455 8 view .LVU243
	str	r1, [r3, #72]
	.loc 1 456 8 is_stmt 1 view .LVU244
	bx	lr
.LVL83:
.L92:
	.loc 1 426 21 is_stmt 0 view .LVU245
	movs	r0, #1
.LVL84:
	.loc 1 466 3 is_stmt 1 view .LVU246
	.loc 1 467 1 is_stmt 0 view .LVU247
	bx	lr
.L97:
	.align	2
.L96:
	.word	1073770496
	.cfi_endproc
.LFE140:
	.size	HAL_PWREx_EnableGPIOPullDown, .-HAL_PWREx_EnableGPIOPullDown
	.section	.text.HAL_PWREx_DisableGPIOPullDown,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_PWREx_DisableGPIOPullDown
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_PWREx_DisableGPIOPullDown, %function
HAL_PWREx_DisableGPIOPullDown:
.LVL85:
.LFB141:
	.loc 1 486 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 487 3 view .LVU249
	.loc 1 489 3 view .LVU250
	.loc 1 490 3 view .LVU251
	.loc 1 492 3 view .LVU252
	cmp	r0, #6
	bhi	.L108
	tbb	[pc, r0]
.L101:
	.byte	(.L107-.L101)/2
	.byte	(.L106-.L101)/2
	.byte	(.L105-.L101)/2
	.byte	(.L104-.L101)/2
	.byte	(.L103-.L101)/2
	.byte	(.L102-.L101)/2
	.byte	(.L100-.L101)/2
	.p2align 1
.L100:
	.loc 1 513 8 view .LVU253
	ldr	r3, .L109
	ldr	r2, [r3, #84]
	str	r2, [r3, #84]
	.loc 1 514 8 view .LVU254
	.loc 1 487 21 is_stmt 0 view .LVU255
	movs	r0, #0
.LVL86:
	.loc 1 514 8 view .LVU256
	bx	lr
.LVL87:
.L107:
	.loc 1 495 8 is_stmt 1 view .LVU257
	ldr	r2, .L109
	ldr	r3, [r2, #36]
	bic	r1, r1, #40960
.LVL88:
	.loc 1 495 8 is_stmt 0 view .LVU258
	bic	r1, r3, r1
	.loc 1 487 21 view .LVU259
	movs	r0, #0
.LVL89:
	.loc 1 495 8 view .LVU260
	str	r1, [r2, #36]
	.loc 1 496 8 is_stmt 1 view .LVU261
	bx	lr
.LVL90:
.L106:
	.loc 1 498 8 view .LVU262
	ldr	r2, .L109
	ldr	r3, [r2, #44]
	bic	r1, r1, #16
.LVL91:
	.loc 1 498 8 is_stmt 0 view .LVU263
	bic	r1, r3, r1
	.loc 1 487 21 view .LVU264
	movs	r0, #0
.LVL92:
	.loc 1 498 8 view .LVU265
	str	r1, [r2, #44]
	.loc 1 499 8 is_stmt 1 view .LVU266
	bx	lr
.LVL93:
.L105:
	.loc 1 501 8 view .LVU267
	ldr	r2, .L109
	ldr	r3, [r2, #52]
	bic	r1, r3, r1
.LVL94:
	.loc 1 487 21 is_stmt 0 view .LVU268
	movs	r0, #0
.LVL95:
	.loc 1 501 8 view .LVU269
	str	r1, [r2, #52]
	.loc 1 502 8 is_stmt 1 view .LVU270
	bx	lr
.LVL96:
.L104:
	.loc 1 504 8 view .LVU271
	ldr	r2, .L109
	ldr	r3, [r2, #60]
	bic	r1, r3, r1
.LVL97:
	.loc 1 487 21 is_stmt 0 view .LVU272
	movs	r0, #0
.LVL98:
	.loc 1 504 8 view .LVU273
	str	r1, [r2, #60]
	.loc 1 505 8 is_stmt 1 view .LVU274
	bx	lr
.LVL99:
.L103:
	.loc 1 507 8 view .LVU275
	ldr	r2, .L109
	ldr	r3, [r2, #68]
	bic	r1, r3, r1
.LVL100:
	.loc 1 487 21 is_stmt 0 view .LVU276
	movs	r0, #0
.LVL101:
	.loc 1 507 8 view .LVU277
	str	r1, [r2, #68]
	.loc 1 508 8 is_stmt 1 view .LVU278
	bx	lr
.LVL102:
.L102:
	.loc 1 510 8 view .LVU279
	ldr	r2, .L109
	movw	r0, #1543
.LVL103:
	.loc 1 510 8 is_stmt 0 view .LVU280
	ldr	r3, [r2, #76]
	ands	r1, r1, r0
.LVL104:
	.loc 1 510 8 view .LVU281
	bic	r1, r3, r1
	str	r1, [r2, #76]
	.loc 1 511 8 is_stmt 1 view .LVU282
	.loc 1 487 21 is_stmt 0 view .LVU283
	movs	r0, #0
	.loc 1 511 8 view .LVU284
	bx	lr
.LVL105:
.L108:
	.loc 1 487 21 view .LVU285
	movs	r0, #1
.LVL106:
	.loc 1 520 3 is_stmt 1 view .LVU286
	.loc 1 521 1 is_stmt 0 view .LVU287
	bx	lr
.L110:
	.align	2
.L109:
	.word	1073770496
	.cfi_endproc
.LFE141:
	.size	HAL_PWREx_DisableGPIOPullDown, .-HAL_PWREx_DisableGPIOPullDown
	.section	.text.HAL_PWREx_EnablePullUpPullDownConfig,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_PWREx_EnablePullUpPullDownConfig
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_PWREx_EnablePullUpPullDownConfig, %function
HAL_PWREx_EnablePullUpPullDownConfig:
.LFB142:
	.loc 1 536 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 537 3 view .LVU289
	ldr	r2, .L112
	ldr	r3, [r2, #8]
	orr	r3, r3, #1024
	str	r3, [r2, #8]
	.loc 1 538 1 is_stmt 0 view .LVU290
	bx	lr
.L113:
	.align	2
.L112:
	.word	1073770496
	.cfi_endproc
.LFE142:
	.size	HAL_PWREx_EnablePullUpPullDownConfig, .-HAL_PWREx_EnablePullUpPullDownConfig
	.section	.text.HAL_PWREx_DisablePullUpPullDownConfig,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_PWREx_DisablePullUpPullDownConfig
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_PWREx_DisablePullUpPullDownConfig, %function
HAL_PWREx_DisablePullUpPullDownConfig:
.LFB143:
	.loc 1 548 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 549 3 view .LVU292
	ldr	r2, .L115
	ldr	r3, [r2, #8]
	bic	r3, r3, #1024
	str	r3, [r2, #8]
	.loc 1 550 1 is_stmt 0 view .LVU293
	bx	lr
.L116:
	.align	2
.L115:
	.word	1073770496
	.cfi_endproc
.LFE143:
	.size	HAL_PWREx_DisablePullUpPullDownConfig, .-HAL_PWREx_DisablePullUpPullDownConfig
	.section	.text.HAL_PWREx_EnableSRAM2ContentRetention,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_PWREx_EnableSRAM2ContentRetention
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_PWREx_EnableSRAM2ContentRetention, %function
HAL_PWREx_EnableSRAM2ContentRetention:
.LFB144:
	.loc 1 561 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 562 3 view .LVU295
	ldr	r2, .L118
	ldr	r3, [r2, #8]
	orr	r3, r3, #256
	str	r3, [r2, #8]
	.loc 1 563 1 is_stmt 0 view .LVU296
	bx	lr
.L119:
	.align	2
.L118:
	.word	1073770496
	.cfi_endproc
.LFE144:
	.size	HAL_PWREx_EnableSRAM2ContentRetention, .-HAL_PWREx_EnableSRAM2ContentRetention
	.section	.text.HAL_PWREx_DisableSRAM2ContentRetention,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_PWREx_DisableSRAM2ContentRetention
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_PWREx_DisableSRAM2ContentRetention, %function
HAL_PWREx_DisableSRAM2ContentRetention:
.LFB145:
	.loc 1 573 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 574 3 view .LVU298
	ldr	r2, .L121
	ldr	r3, [r2, #8]
	bic	r3, r3, #256
	str	r3, [r2, #8]
	.loc 1 575 1 is_stmt 0 view .LVU299
	bx	lr
.L122:
	.align	2
.L121:
	.word	1073770496
	.cfi_endproc
.LFE145:
	.size	HAL_PWREx_DisableSRAM2ContentRetention, .-HAL_PWREx_DisableSRAM2ContentRetention
	.section	.text.HAL_PWREx_EnablePVM1,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_PWREx_EnablePVM1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_PWREx_EnablePVM1, %function
HAL_PWREx_EnablePVM1:
.LFB146:
	.loc 1 586 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 587 3 view .LVU301
	ldr	r2, .L124
	ldr	r3, [r2, #4]
	orr	r3, r3, #16
	str	r3, [r2, #4]
	.loc 1 588 1 is_stmt 0 view .LVU302
	bx	lr
.L125:
	.align	2
.L124:
	.word	1073770496
	.cfi_endproc
.LFE146:
	.size	HAL_PWREx_EnablePVM1, .-HAL_PWREx_EnablePVM1
	.section	.text.HAL_PWREx_DisablePVM1,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_PWREx_DisablePVM1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_PWREx_DisablePVM1, %function
HAL_PWREx_DisablePVM1:
.LFB147:
	.loc 1 595 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 596 3 view .LVU304
	ldr	r2, .L127
	ldr	r3, [r2, #4]
	bic	r3, r3, #16
	str	r3, [r2, #4]
	.loc 1 597 1 is_stmt 0 view .LVU305
	bx	lr
.L128:
	.align	2
.L127:
	.word	1073770496
	.cfi_endproc
.LFE147:
	.size	HAL_PWREx_DisablePVM1, .-HAL_PWREx_DisablePVM1
	.section	.text.HAL_PWREx_EnablePVM2,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_PWREx_EnablePVM2
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_PWREx_EnablePVM2, %function
HAL_PWREx_EnablePVM2:
.LFB148:
	.loc 1 607 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 608 3 view .LVU307
	ldr	r2, .L130
	ldr	r3, [r2, #4]
	orr	r3, r3, #32
	str	r3, [r2, #4]
	.loc 1 609 1 is_stmt 0 view .LVU308
	bx	lr
.L131:
	.align	2
.L130:
	.word	1073770496
	.cfi_endproc
.LFE148:
	.size	HAL_PWREx_EnablePVM2, .-HAL_PWREx_EnablePVM2
	.section	.text.HAL_PWREx_DisablePVM2,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_PWREx_DisablePVM2
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_PWREx_DisablePVM2, %function
HAL_PWREx_DisablePVM2:
.LFB149:
	.loc 1 616 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 617 3 view .LVU310
	ldr	r2, .L133
	ldr	r3, [r2, #4]
	bic	r3, r3, #32
	str	r3, [r2, #4]
	.loc 1 618 1 is_stmt 0 view .LVU311
	bx	lr
.L134:
	.align	2
.L133:
	.word	1073770496
	.cfi_endproc
.LFE149:
	.size	HAL_PWREx_DisablePVM2, .-HAL_PWREx_DisablePVM2
	.section	.text.HAL_PWREx_EnablePVM3,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_PWREx_EnablePVM3
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_PWREx_EnablePVM3, %function
HAL_PWREx_EnablePVM3:
.LFB150:
	.loc 1 627 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 628 3 view .LVU313
	ldr	r2, .L136
	ldr	r3, [r2, #4]
	orr	r3, r3, #64
	str	r3, [r2, #4]
	.loc 1 629 1 is_stmt 0 view .LVU314
	bx	lr
.L137:
	.align	2
.L136:
	.word	1073770496
	.cfi_endproc
.LFE150:
	.size	HAL_PWREx_EnablePVM3, .-HAL_PWREx_EnablePVM3
	.section	.text.HAL_PWREx_DisablePVM3,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_PWREx_DisablePVM3
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_PWREx_DisablePVM3, %function
HAL_PWREx_DisablePVM3:
.LFB151:
	.loc 1 636 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 637 3 view .LVU316
	ldr	r2, .L139
	ldr	r3, [r2, #4]
	bic	r3, r3, #64
	str	r3, [r2, #4]
	.loc 1 638 1 is_stmt 0 view .LVU317
	bx	lr
.L140:
	.align	2
.L139:
	.word	1073770496
	.cfi_endproc
.LFE151:
	.size	HAL_PWREx_DisablePVM3, .-HAL_PWREx_DisablePVM3
	.section	.text.HAL_PWREx_EnablePVM4,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_PWREx_EnablePVM4
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_PWREx_EnablePVM4, %function
HAL_PWREx_EnablePVM4:
.LFB152:
	.loc 1 646 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 647 3 view .LVU319
	ldr	r2, .L142
	ldr	r3, [r2, #4]
	orr	r3, r3, #128
	str	r3, [r2, #4]
	.loc 1 648 1 is_stmt 0 view .LVU320
	bx	lr
.L143:
	.align	2
.L142:
	.word	1073770496
	.cfi_endproc
.LFE152:
	.size	HAL_PWREx_EnablePVM4, .-HAL_PWREx_EnablePVM4
	.section	.text.HAL_PWREx_DisablePVM4,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_PWREx_DisablePVM4
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_PWREx_DisablePVM4, %function
HAL_PWREx_DisablePVM4:
.LFB153:
	.loc 1 655 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 656 3 view .LVU322
	ldr	r2, .L145
	ldr	r3, [r2, #4]
	bic	r3, r3, #128
	str	r3, [r2, #4]
	.loc 1 657 1 is_stmt 0 view .LVU323
	bx	lr
.L146:
	.align	2
.L145:
	.word	1073770496
	.cfi_endproc
.LFE153:
	.size	HAL_PWREx_DisablePVM4, .-HAL_PWREx_DisablePVM4
	.section	.text.HAL_PWREx_ConfigPVM,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_PWREx_ConfigPVM
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_PWREx_ConfigPVM, %function
HAL_PWREx_ConfigPVM:
.LVL107:
.LFB154:
	.loc 1 675 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 676 3 view .LVU325
	.loc 1 679 3 view .LVU326
	.loc 1 680 3 view .LVU327
	.loc 1 686 3 view .LVU328
	.loc 1 686 21 is_stmt 0 view .LVU329
	ldr	r3, [r0]
	.loc 1 686 3 view .LVU330
	cmp	r3, #64
	beq	.L148
	bhi	.L149
	cmp	r3, #16
	beq	.L150
	cmp	r3, #32
	bne	.L213
	.loc 1 724 7 is_stmt 1 view .LVU331
	ldr	r3, .L218
	ldr	r2, [r3, #36]
	bic	r2, r2, #16
	str	r2, [r3, #36]
	.loc 1 725 7 view .LVU332
	ldr	r2, [r3, #32]
	bic	r2, r2, #16
	str	r2, [r3, #32]
	.loc 1 726 7 view .LVU333
	ldr	r2, [r3, #44]
	bic	r2, r2, #16
	str	r2, [r3, #44]
	.loc 1 727 7 view .LVU334
	ldr	r2, [r3, #40]
	bic	r2, r2, #16
	str	r2, [r3, #40]
	.loc 1 730 7 view .LVU335
	.loc 1 730 21 is_stmt 0 view .LVU336
	ldr	r2, [r0, #4]
	.loc 1 730 9 view .LVU337
	lsls	r1, r2, #15
	bpl	.L158
	.loc 1 732 9 is_stmt 1 view .LVU338
	ldr	r1, [r3, #32]
	orr	r1, r1, #16
	str	r1, [r3, #32]
.L158:
	.loc 1 736 7 view .LVU339
	.loc 1 736 9 is_stmt 0 view .LVU340
	lsls	r0, r2, #14
.LVL108:
	.loc 1 736 9 view .LVU341
	bpl	.L159
	.loc 1 738 9 is_stmt 1 view .LVU342
	ldr	r1, .L218
	ldr	r3, [r1, #36]
	orr	r3, r3, #16
	str	r3, [r1, #36]
.L159:
	.loc 1 742 7 view .LVU343
	.loc 1 742 9 is_stmt 0 view .LVU344
	lsls	r1, r2, #31
	bpl	.L160
	.loc 1 744 9 is_stmt 1 view .LVU345
	ldr	r1, .L218
	ldr	r3, [r1, #40]
	orr	r3, r3, #16
	str	r3, [r1, #40]
.L160:
	.loc 1 747 7 view .LVU346
	.loc 1 747 9 is_stmt 0 view .LVU347
	lsls	r3, r2, #30
	bpl	.L161
	.loc 1 749 9 is_stmt 1 view .LVU348
	ldr	r2, .L218
	ldr	r3, [r2, #44]
	orr	r3, r3, #16
	.loc 1 676 21 is_stmt 0 view .LVU349
	movs	r0, #0
	.loc 1 749 9 view .LVU350
	str	r3, [r2, #44]
	bx	lr
.LVL109:
.L149:
	.loc 1 686 3 view .LVU351
	cmp	r3, #128
	bne	.L213
	.loc 1 787 7 is_stmt 1 view .LVU352
	ldr	r3, .L218
	ldr	r2, [r3, #36]
	bic	r2, r2, #64
	str	r2, [r3, #36]
	.loc 1 788 7 view .LVU353
	ldr	r2, [r3, #32]
	bic	r2, r2, #64
	str	r2, [r3, #32]
	.loc 1 789 7 view .LVU354
	ldr	r2, [r3, #44]
	bic	r2, r2, #64
	str	r2, [r3, #44]
	.loc 1 790 7 view .LVU355
	ldr	r2, [r3, #40]
	bic	r2, r2, #64
	str	r2, [r3, #40]
	.loc 1 793 7 view .LVU356
	.loc 1 793 21 is_stmt 0 view .LVU357
	ldr	r2, [r0, #4]
	.loc 1 793 9 view .LVU358
	lsls	r1, r2, #15
	bpl	.L165
	.loc 1 795 9 is_stmt 1 view .LVU359
	ldr	r1, [r3, #32]
	orr	r1, r1, #64
	str	r1, [r3, #32]
.L165:
	.loc 1 799 7 view .LVU360
	.loc 1 799 9 is_stmt 0 view .LVU361
	lsls	r0, r2, #14
.LVL110:
	.loc 1 799 9 view .LVU362
	bpl	.L166
	.loc 1 801 9 is_stmt 1 view .LVU363
	ldr	r1, .L218
	ldr	r3, [r1, #36]
	orr	r3, r3, #64
	str	r3, [r1, #36]
.L166:
	.loc 1 805 7 view .LVU364
	.loc 1 805 9 is_stmt 0 view .LVU365
	lsls	r1, r2, #31
	bpl	.L167
	.loc 1 807 9 is_stmt 1 view .LVU366
	ldr	r1, .L218
	ldr	r3, [r1, #40]
	orr	r3, r3, #64
	str	r3, [r1, #40]
.L167:
	.loc 1 810 7 view .LVU367
	.loc 1 810 9 is_stmt 0 view .LVU368
	lsls	r3, r2, #30
	bpl	.L161
	.loc 1 812 9 is_stmt 1 view .LVU369
	ldr	r2, .L218
	ldr	r3, [r2, #44]
	orr	r3, r3, #64
	.loc 1 676 21 is_stmt 0 view .LVU370
	movs	r0, #0
	.loc 1 812 9 view .LVU371
	str	r3, [r2, #44]
.LVL111:
	.loc 1 821 3 is_stmt 1 view .LVU372
	.loc 1 822 1 is_stmt 0 view .LVU373
	bx	lr
.LVL112:
.L148:
	.loc 1 756 7 is_stmt 1 view .LVU374
	ldr	r3, .L218
	ldr	r2, [r3, #36]
	bic	r2, r2, #32
	str	r2, [r3, #36]
	.loc 1 757 7 view .LVU375
	ldr	r2, [r3, #32]
	bic	r2, r2, #32
	str	r2, [r3, #32]
	.loc 1 758 7 view .LVU376
	ldr	r2, [r3, #44]
	bic	r2, r2, #32
	str	r2, [r3, #44]
	.loc 1 759 7 view .LVU377
	ldr	r2, [r3, #40]
	bic	r2, r2, #32
	str	r2, [r3, #40]
	.loc 1 762 7 view .LVU378
	.loc 1 762 21 is_stmt 0 view .LVU379
	ldr	r2, [r0, #4]
	.loc 1 762 9 view .LVU380
	lsls	r0, r2, #15
.LVL113:
	.loc 1 762 9 view .LVU381
	bmi	.L214
	.loc 1 768 7 is_stmt 1 view .LVU382
	.loc 1 768 9 is_stmt 0 view .LVU383
	lsls	r1, r2, #14
	bmi	.L215
.L163:
	.loc 1 774 7 is_stmt 1 view .LVU384
	.loc 1 774 9 is_stmt 0 view .LVU385
	lsls	r3, r2, #31
	bmi	.L216
.L164:
	.loc 1 779 7 is_stmt 1 view .LVU386
	.loc 1 779 9 is_stmt 0 view .LVU387
	lsls	r0, r2, #30
	bmi	.L217
.L161:
	.loc 1 676 21 view .LVU388
	movs	r0, #0
	bx	lr
.LVL114:
.L213:
	.loc 1 686 3 view .LVU389
	movs	r0, #1
.LVL115:
	.loc 1 686 3 view .LVU390
	bx	lr
.LVL116:
.L150:
	.loc 1 691 7 is_stmt 1 view .LVU391
	ldr	r3, .L218
	ldr	r2, [r3, #36]
	bic	r2, r2, #8
	str	r2, [r3, #36]
	.loc 1 692 7 view .LVU392
	ldr	r2, [r3, #32]
	bic	r2, r2, #8
	str	r2, [r3, #32]
	.loc 1 693 7 view .LVU393
	ldr	r2, [r3, #44]
	bic	r2, r2, #8
	str	r2, [r3, #44]
	.loc 1 694 7 view .LVU394
	ldr	r2, [r3, #40]
	bic	r2, r2, #8
	str	r2, [r3, #40]
	.loc 1 697 7 view .LVU395
	.loc 1 697 21 is_stmt 0 view .LVU396
	ldr	r2, [r0, #4]
	.loc 1 697 9 view .LVU397
	lsls	r0, r2, #15
.LVL117:
	.loc 1 697 9 view .LVU398
	bpl	.L154
	.loc 1 699 9 is_stmt 1 view .LVU399
	ldr	r1, [r3, #32]
	orr	r1, r1, #8
	str	r1, [r3, #32]
.L154:
	.loc 1 703 7 view .LVU400
	.loc 1 703 9 is_stmt 0 view .LVU401
	lsls	r1, r2, #14
	bpl	.L155
	.loc 1 705 9 is_stmt 1 view .LVU402
	ldr	r1, .L218
	ldr	r3, [r1, #36]
	orr	r3, r3, #8
	str	r3, [r1, #36]
.L155:
	.loc 1 709 7 view .LVU403
	.loc 1 709 9 is_stmt 0 view .LVU404
	lsls	r3, r2, #31
	bpl	.L156
	.loc 1 711 9 is_stmt 1 view .LVU405
	ldr	r1, .L218
	ldr	r3, [r1, #40]
	orr	r3, r3, #8
	str	r3, [r1, #40]
.L156:
	.loc 1 714 7 view .LVU406
	.loc 1 714 9 is_stmt 0 view .LVU407
	lsls	r0, r2, #30
	bpl	.L161
	.loc 1 716 9 is_stmt 1 view .LVU408
	ldr	r2, .L218
	ldr	r3, [r2, #44]
	orr	r3, r3, #8
	.loc 1 676 21 is_stmt 0 view .LVU409
	movs	r0, #0
	.loc 1 716 9 view .LVU410
	str	r3, [r2, #44]
	bx	lr
.L217:
	.loc 1 781 9 is_stmt 1 view .LVU411
	ldr	r2, .L218
	ldr	r3, [r2, #44]
	orr	r3, r3, #32
	.loc 1 676 21 is_stmt 0 view .LVU412
	movs	r0, #0
	.loc 1 781 9 view .LVU413
	str	r3, [r2, #44]
	bx	lr
.L216:
	.loc 1 776 9 is_stmt 1 view .LVU414
	ldr	r1, .L218
	ldr	r3, [r1, #40]
	.loc 1 779 9 is_stmt 0 view .LVU415
	lsls	r0, r2, #30
	.loc 1 776 9 view .LVU416
	orr	r3, r3, #32
	str	r3, [r1, #40]
	.loc 1 779 7 is_stmt 1 view .LVU417
	.loc 1 779 9 is_stmt 0 view .LVU418
	bpl	.L161
	b	.L217
.L215:
	.loc 1 770 9 is_stmt 1 view .LVU419
	ldr	r1, .L218
	ldr	r3, [r1, #36]
	orr	r3, r3, #32
	str	r3, [r1, #36]
	.loc 1 774 7 view .LVU420
	.loc 1 774 9 is_stmt 0 view .LVU421
	lsls	r3, r2, #31
	bpl	.L164
	b	.L216
.L214:
	.loc 1 764 9 is_stmt 1 view .LVU422
	ldr	r1, [r3, #32]
	orr	r1, r1, #32
	str	r1, [r3, #32]
	.loc 1 768 7 view .LVU423
	.loc 1 768 9 is_stmt 0 view .LVU424
	lsls	r1, r2, #14
	bpl	.L163
	b	.L215
.L219:
	.align	2
.L218:
	.word	1073808384
	.cfi_endproc
.LFE154:
	.size	HAL_PWREx_ConfigPVM, .-HAL_PWREx_ConfigPVM
	.section	.text.HAL_PWREx_EnableLowPowerRunMode,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_PWREx_EnableLowPowerRunMode
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_PWREx_EnableLowPowerRunMode, %function
HAL_PWREx_EnableLowPowerRunMode:
.LFB155:
	.loc 1 836 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 838 3 view .LVU426
	ldr	r2, .L221
	ldr	r3, [r2]
	orr	r3, r3, #16384
	str	r3, [r2]
	.loc 1 839 1 is_stmt 0 view .LVU427
	bx	lr
.L222:
	.align	2
.L221:
	.word	1073770496
	.cfi_endproc
.LFE155:
	.size	HAL_PWREx_EnableLowPowerRunMode, .-HAL_PWREx_EnableLowPowerRunMode
	.section	.text.HAL_PWREx_DisableLowPowerRunMode,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_PWREx_DisableLowPowerRunMode
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_PWREx_DisableLowPowerRunMode, %function
HAL_PWREx_DisableLowPowerRunMode:
.LFB156:
	.loc 1 851 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 852 3 view .LVU429
	.loc 1 855 3 view .LVU430
	ldr	r1, .L240
	.loc 1 858 67 is_stmt 0 view .LVU431
	ldr	r3, .L240+4
	.loc 1 855 3 view .LVU432
	ldr	r2, [r1]
	bic	r2, r2, #16384
	.loc 1 851 1 view .LVU433
	push	{r4}
.LCFI11:
	.cfi_def_cfa_offset 4
	.cfi_offset 4, -4
	.loc 1 855 3 view .LVU434
	str	r2, [r1]
	.loc 1 858 3 is_stmt 1 view .LVU435
	.loc 1 858 67 is_stmt 0 view .LVU436
	ldr	r4, .L240+8
	ldr	r3, [r3]
	.loc 1 859 11 view .LVU437
	ldr	r2, [r1, #20]
	.loc 1 858 67 view .LVU438
	umull	r4, r3, r4, r3
	.loc 1 858 19 view .LVU439
	movs	r0, #50
	.loc 1 858 67 view .LVU440
	lsrs	r3, r3, #18
	.loc 1 859 9 view .LVU441
	lsls	r4, r2, #22
	.loc 1 858 19 view .LVU442
	mul	r3, r0, r3
.LVL118:
	.loc 1 859 3 is_stmt 1 view .LVU443
	.loc 1 859 9 view .LVU444
	bpl	.L224
.L239:
	.loc 1 859 53 is_stmt 0 view .LVU445
	cbz	r3, .L224
	.loc 1 861 5 is_stmt 1 view .LVU446
	.loc 1 859 11 is_stmt 0 view .LVU447
	ldr	r2, [r1, #20]
	.loc 1 859 9 view .LVU448
	lsls	r2, r2, #22
	.loc 1 861 20 view .LVU449
	add	r3, r3, #-1
.LVL119:
	.loc 1 859 9 is_stmt 1 view .LVU450
	bmi	.L239
.L224:
	.loc 1 863 3 view .LVU451
	.loc 1 863 7 is_stmt 0 view .LVU452
	ldr	r3, .L240
.LVL120:
	.loc 1 869 1 view .LVU453
	ldr	r4, [sp], #4
.LCFI12:
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 863 7 view .LVU454
	ldr	r3, [r3, #20]
	.loc 1 865 12 view .LVU455
	tst	r3, #512
	.loc 1 869 1 view .LVU456
	ite	ne
	movne	r0, #3
	moveq	r0, #0
	bx	lr
.L241:
	.align	2
.L240:
	.word	1073770496
	.word	SystemCoreClock
	.word	1125899907
	.cfi_endproc
.LFE156:
	.size	HAL_PWREx_DisableLowPowerRunMode, .-HAL_PWREx_DisableLowPowerRunMode
	.section	.text.HAL_PWREx_EnterSTOP0Mode,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_PWREx_EnterSTOP0Mode
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_PWREx_EnterSTOP0Mode, %function
HAL_PWREx_EnterSTOP0Mode:
.LVL121:
.LFB157:
	.loc 1 895 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 897 3 view .LVU458
	.loc 1 900 3 view .LVU459
	ldr	r1, .L246
	.loc 1 903 3 is_stmt 0 view .LVU460
	ldr	r2, .L246+4
	.loc 1 900 3 view .LVU461
	ldr	r3, [r1]
	bic	r3, r3, #7
	str	r3, [r1]
	.loc 1 903 3 is_stmt 1 view .LVU462
	ldr	r3, [r2, #16]
	.loc 1 906 5 is_stmt 0 view .LVU463
	cmp	r0, #1
	.loc 1 903 3 view .LVU464
	orr	r3, r3, #4
	str	r3, [r2, #16]
	.loc 1 906 3 is_stmt 1 view .LVU465
	.loc 1 906 5 is_stmt 0 view .LVU466
	beq	.L245
	.loc 1 914 5 is_stmt 1 view .LVU467
	.syntax unified
@ 914 "Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_pwr_ex.c" 1
	sev
@ 0 "" 2
	.loc 1 915 5 view .LVU468
@ 915 "Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_pwr_ex.c" 1
	wfe
@ 0 "" 2
	.loc 1 916 5 view .LVU469
@ 916 "Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_pwr_ex.c" 1
	wfe
@ 0 "" 2
	.thumb
	.syntax unified
.L244:
	.loc 1 920 3 view .LVU470
	ldr	r2, .L246+4
	ldr	r3, [r2, #16]
	bic	r3, r3, #4
	str	r3, [r2, #16]
	.loc 1 921 1 is_stmt 0 view .LVU471
	bx	lr
.L245:
	.loc 1 909 5 is_stmt 1 view .LVU472
	.syntax unified
@ 909 "Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_pwr_ex.c" 1
	wfi
@ 0 "" 2
	.thumb
	.syntax unified
	b	.L244
.L247:
	.align	2
.L246:
	.word	1073770496
	.word	-536810240
	.cfi_endproc
.LFE157:
	.size	HAL_PWREx_EnterSTOP0Mode, .-HAL_PWREx_EnterSTOP0Mode
	.section	.text.HAL_PWREx_EnterSTOP1Mode,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_PWREx_EnterSTOP1Mode
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_PWREx_EnterSTOP1Mode, %function
HAL_PWREx_EnterSTOP1Mode:
.LVL122:
.LFB158:
	.loc 1 946 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 948 3 view .LVU474
	.loc 1 951 3 view .LVU475
	ldr	r1, .L252
	.loc 1 954 3 is_stmt 0 view .LVU476
	ldr	r2, .L252+4
	.loc 1 951 3 view .LVU477
	ldr	r3, [r1]
	bic	r3, r3, #7
	orr	r3, r3, #1
	str	r3, [r1]
	.loc 1 954 3 is_stmt 1 view .LVU478
	ldr	r3, [r2, #16]
	.loc 1 957 5 is_stmt 0 view .LVU479
	cmp	r0, #1
	.loc 1 954 3 view .LVU480
	orr	r3, r3, #4
	str	r3, [r2, #16]
	.loc 1 957 3 is_stmt 1 view .LVU481
	.loc 1 957 5 is_stmt 0 view .LVU482
	beq	.L251
	.loc 1 965 5 is_stmt 1 view .LVU483
	.syntax unified
@ 965 "Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_pwr_ex.c" 1
	sev
@ 0 "" 2
	.loc 1 966 5 view .LVU484
@ 966 "Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_pwr_ex.c" 1
	wfe
@ 0 "" 2
	.loc 1 967 5 view .LVU485
@ 967 "Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_pwr_ex.c" 1
	wfe
@ 0 "" 2
	.thumb
	.syntax unified
.L250:
	.loc 1 971 3 view .LVU486
	ldr	r2, .L252+4
	ldr	r3, [r2, #16]
	bic	r3, r3, #4
	str	r3, [r2, #16]
	.loc 1 972 1 is_stmt 0 view .LVU487
	bx	lr
.L251:
	.loc 1 960 5 is_stmt 1 view .LVU488
	.syntax unified
@ 960 "Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_pwr_ex.c" 1
	wfi
@ 0 "" 2
	.thumb
	.syntax unified
	b	.L250
.L253:
	.align	2
.L252:
	.word	1073770496
	.word	-536810240
	.cfi_endproc
.LFE158:
	.size	HAL_PWREx_EnterSTOP1Mode, .-HAL_PWREx_EnterSTOP1Mode
	.section	.text.HAL_PWREx_EnterSHUTDOWNMode,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_PWREx_EnterSHUTDOWNMode
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_PWREx_EnterSHUTDOWNMode, %function
HAL_PWREx_EnterSHUTDOWNMode:
.LFB159:
	.loc 1 987 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 990 3 view .LVU490
	ldr	r1, .L255
	.loc 1 993 3 is_stmt 0 view .LVU491
	ldr	r2, .L255+4
	.loc 1 990 3 view .LVU492
	ldr	r3, [r1]
	bic	r3, r3, #7
	orr	r3, r3, #4
	str	r3, [r1]
	.loc 1 993 3 is_stmt 1 view .LVU493
	ldr	r3, [r2, #16]
	orr	r3, r3, #4
	str	r3, [r2, #16]
	.loc 1 1000 3 view .LVU494
	.syntax unified
@ 1000 "Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_pwr_ex.c" 1
	wfi
@ 0 "" 2
	.loc 1 1001 1 is_stmt 0 view .LVU495
	.thumb
	.syntax unified
	bx	lr
.L256:
	.align	2
.L255:
	.word	1073770496
	.word	-536810240
	.cfi_endproc
.LFE159:
	.size	HAL_PWREx_EnterSHUTDOWNMode, .-HAL_PWREx_EnterSHUTDOWNMode
	.section	.text.HAL_PWREx_PVM1Callback,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	HAL_PWREx_PVM1Callback
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_PWREx_PVM1Callback, %function
HAL_PWREx_PVM1Callback:
.LFB161:
	.loc 1 1068 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 1072 1 view .LVU497
	bx	lr
	.cfi_endproc
.LFE161:
	.size	HAL_PWREx_PVM1Callback, .-HAL_PWREx_PVM1Callback
	.section	.text.HAL_PWREx_PVM2Callback,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	HAL_PWREx_PVM2Callback
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_PWREx_PVM2Callback, %function
HAL_PWREx_PVM2Callback:
.LFB170:
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.cfi_endproc
.LFE170:
	.size	HAL_PWREx_PVM2Callback, .-HAL_PWREx_PVM2Callback
	.section	.text.HAL_PWREx_PVM3Callback,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	HAL_PWREx_PVM3Callback
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_PWREx_PVM3Callback, %function
HAL_PWREx_PVM3Callback:
.LFB172:
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.cfi_endproc
.LFE172:
	.size	HAL_PWREx_PVM3Callback, .-HAL_PWREx_PVM3Callback
	.section	.text.HAL_PWREx_PVM4Callback,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	HAL_PWREx_PVM4Callback
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_PWREx_PVM4Callback, %function
HAL_PWREx_PVM4Callback:
.LFB174:
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.cfi_endproc
.LFE174:
	.size	HAL_PWREx_PVM4Callback, .-HAL_PWREx_PVM4Callback
	.section	.text.HAL_PWREx_PVD_PVM_IRQHandler,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_PWREx_PVD_PVM_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_PWREx_PVD_PVM_IRQHandler, %function
HAL_PWREx_PVD_PVM_IRQHandler:
.LFB160:
	.loc 1 1012 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 1014 3 view .LVU499
	.loc 1 1012 1 is_stmt 0 view .LVU500
	push	{r4, lr}
.LCFI13:
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 1014 6 view .LVU501
	ldr	r4, .L288
	ldr	r3, [r4, #20]
	.loc 1 1014 5 view .LVU502
	lsls	r3, r3, #15
	bmi	.L283
.L262:
	.loc 1 1024 3 is_stmt 1 view .LVU503
	.loc 1 1024 6 is_stmt 0 view .LVU504
	ldr	r4, .L288
	ldr	r3, [r4, #52]
	.loc 1 1024 5 view .LVU505
	lsls	r0, r3, #28
	bmi	.L284
.L263:
	.loc 1 1034 3 is_stmt 1 view .LVU506
	.loc 1 1034 6 is_stmt 0 view .LVU507
	ldr	r4, .L288
	ldr	r3, [r4, #52]
	.loc 1 1034 5 view .LVU508
	lsls	r1, r3, #27
	bmi	.L285
.L264:
	.loc 1 1043 3 is_stmt 1 view .LVU509
	.loc 1 1043 6 is_stmt 0 view .LVU510
	ldr	r4, .L288
	ldr	r3, [r4, #52]
	.loc 1 1043 5 view .LVU511
	lsls	r2, r3, #26
	bmi	.L286
.L265:
	.loc 1 1051 3 is_stmt 1 view .LVU512
	.loc 1 1051 6 is_stmt 0 view .LVU513
	ldr	r4, .L288
	ldr	r3, [r4, #52]
	.loc 1 1051 5 view .LVU514
	lsls	r3, r3, #25
	bmi	.L287
	.loc 1 1059 1 view .LVU515
	pop	{r4, pc}
.L287:
	.loc 1 1054 5 is_stmt 1 view .LVU516
	bl	HAL_PWREx_PVM4Callback
.LVL123:
	.loc 1 1057 5 view .LVU517
	movs	r3, #64
	str	r3, [r4, #52]
	.loc 1 1059 1 is_stmt 0 view .LVU518
	pop	{r4, pc}
.L286:
	.loc 1 1046 5 is_stmt 1 view .LVU519
	bl	HAL_PWREx_PVM3Callback
.LVL124:
	.loc 1 1049 5 view .LVU520
	movs	r3, #32
	str	r3, [r4, #52]
	b	.L265
.L285:
	.loc 1 1037 5 view .LVU521
	bl	HAL_PWREx_PVM2Callback
.LVL125:
	.loc 1 1040 5 view .LVU522
	movs	r3, #16
	str	r3, [r4, #52]
	b	.L264
.L284:
	.loc 1 1027 5 view .LVU523
	bl	HAL_PWREx_PVM1Callback
.LVL126:
	.loc 1 1030 5 view .LVU524
	movs	r3, #8
	str	r3, [r4, #52]
	b	.L263
.L283:
	.loc 1 1017 5 view .LVU525
	bl	HAL_PWR_PVDCallback
.LVL127:
	.loc 1 1020 5 view .LVU526
	mov	r3, #65536
	str	r3, [r4, #20]
	b	.L262
.L289:
	.align	2
.L288:
	.word	1073808384
	.cfi_endproc
.LFE160:
	.size	HAL_PWREx_PVD_PVM_IRQHandler, .-HAL_PWREx_PVD_PVM_IRQHandler
	.section	.text.HAL_PWREx_EnableUCPDStandbyMode,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_PWREx_EnableUCPDStandbyMode
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_PWREx_EnableUCPDStandbyMode, %function
HAL_PWREx_EnableUCPDStandbyMode:
.LFB165:
	.loc 1 1116 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 1118 3 view .LVU528
	ldr	r2, .L291
	ldr	r3, [r2, #8]
	orr	r3, r3, #8192
	str	r3, [r2, #8]
	.loc 1 1119 1 is_stmt 0 view .LVU529
	bx	lr
.L292:
	.align	2
.L291:
	.word	1073770496
	.cfi_endproc
.LFE165:
	.size	HAL_PWREx_EnableUCPDStandbyMode, .-HAL_PWREx_EnableUCPDStandbyMode
	.section	.text.HAL_PWREx_DisableUCPDStandbyMode,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_PWREx_DisableUCPDStandbyMode
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_PWREx_DisableUCPDStandbyMode, %function
HAL_PWREx_DisableUCPDStandbyMode:
.LFB166:
	.loc 1 1128 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 1131 3 view .LVU531
	ldr	r2, .L294
	ldr	r3, [r2, #8]
	bic	r3, r3, #8192
	str	r3, [r2, #8]
	.loc 1 1132 1 is_stmt 0 view .LVU532
	bx	lr
.L295:
	.align	2
.L294:
	.word	1073770496
	.cfi_endproc
.LFE166:
	.size	HAL_PWREx_DisableUCPDStandbyMode, .-HAL_PWREx_DisableUCPDStandbyMode
	.section	.text.HAL_PWREx_EnableUCPDDeadBattery,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_PWREx_EnableUCPDDeadBattery
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_PWREx_EnableUCPDDeadBattery, %function
HAL_PWREx_EnableUCPDDeadBattery:
.LFB167:
	.loc 1 1142 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 1144 3 view .LVU534
	ldr	r2, .L297
	ldr	r3, [r2, #8]
	bic	r3, r3, #16384
	str	r3, [r2, #8]
	.loc 1 1145 1 is_stmt 0 view .LVU535
	bx	lr
.L298:
	.align	2
.L297:
	.word	1073770496
	.cfi_endproc
.LFE167:
	.size	HAL_PWREx_EnableUCPDDeadBattery, .-HAL_PWREx_EnableUCPDDeadBattery
	.section	.text.HAL_PWREx_DisableUCPDDeadBattery,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_PWREx_DisableUCPDDeadBattery
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_PWREx_DisableUCPDDeadBattery, %function
HAL_PWREx_DisableUCPDDeadBattery:
.LFB168:
	.loc 1 1158 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 1160 3 view .LVU537
	ldr	r2, .L300
	ldr	r3, [r2, #8]
	orr	r3, r3, #16384
	str	r3, [r2, #8]
	.loc 1 1161 1 is_stmt 0 view .LVU538
	bx	lr
.L301:
	.align	2
.L300:
	.word	1073770496
	.cfi_endproc
.LFE168:
	.size	HAL_PWREx_DisableUCPDDeadBattery, .-HAL_PWREx_DisableUCPDDeadBattery
	.text
.Letext0:
	.file 2 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "Drivers/CMSIS/Include/core_cm4.h"
	.file 5 "Drivers/CMSIS/Device/ST/STM32G4xx/Include/stm32g431xx.h"
	.file 6 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_hal_def.h"
	.file 7 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_hal_pwr_ex.h"
	.file 8 "Drivers/CMSIS/Device/ST/STM32G4xx/Include/system_stm32g4xx.h"
	.file 9 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_hal_pwr.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xb07
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF111
	.byte	0xc
	.4byte	.LASF112
	.4byte	.LASF113
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
	.uleb128 0xd
	.4byte	.LASF79
	.byte	0x8
	.byte	0x39
	.byte	0x11
	.4byte	0x98
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.byte	0x38
	.byte	0x5
	.2byte	0x193
	.byte	0x9
	.4byte	0x383
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
	.4byte	0x298
	.uleb128 0x7
	.byte	0x84
	.byte	0x5
	.2byte	0x21e
	.byte	0x9
	.4byte	0x51c
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
	.4byte	0x51c
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
	.4byte	0x52c
	.uleb128 0xb
	.4byte	0x80
	.byte	0x9
	.byte	0
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0x5
	.2byte	0x238
	.byte	0x3
	.4byte	0x390
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF58
	.uleb128 0xe
	.byte	0x7
	.byte	0x1
	.4byte	0x3c
	.byte	0x6
	.byte	0x27
	.byte	0x1
	.4byte	0x567
	.uleb128 0xf
	.4byte	.LASF59
	.byte	0
	.uleb128 0xf
	.4byte	.LASF60
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF61
	.byte	0x2
	.uleb128 0xf
	.4byte	.LASF62
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF63
	.byte	0x6
	.byte	0x2c
	.byte	0x3
	.4byte	0x540
	.uleb128 0x10
	.byte	0x8
	.byte	0x7
	.byte	0x31
	.byte	0x9
	.4byte	0x59b
	.uleb128 0x11
	.4byte	.LASF64
	.byte	0x7
	.byte	0x33
	.byte	0xc
	.4byte	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.4byte	.LASF65
	.byte	0x7
	.byte	0x35
	.byte	0xc
	.4byte	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF66
	.byte	0x7
	.byte	0x37
	.byte	0x2
	.4byte	0x573
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x485
	.byte	0x6
	.byte	0x1
	.4byte	.LFB168
	.4byte	.LFE168
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x475
	.byte	0x6
	.byte	0x1
	.4byte	.LFB167
	.4byte	.LFE167
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x467
	.byte	0x6
	.byte	0x1
	.4byte	.LFB166
	.4byte	.LFE166
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x45b
	.byte	0x6
	.byte	0x1
	.4byte	.LFB165
	.4byte	.LFE165
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x44f
	.byte	0xd
	.byte	0x1
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x444
	.byte	0xd
	.byte	0x1
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x438
	.byte	0xd
	.byte	0x1
	.uleb128 0x14
	.byte	0x1
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x42b
	.byte	0xd
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x3f3
	.byte	0x6
	.byte	0x1
	.4byte	.LFB160
	.4byte	.LFE160
	.4byte	.LLST21
	.byte	0x1
	.4byte	0x67a
	.uleb128 0x16
	.4byte	.LVL123
	.4byte	0x603
	.uleb128 0x16
	.4byte	.LVL124
	.4byte	0x60e
	.uleb128 0x16
	.4byte	.LVL125
	.4byte	0x619
	.uleb128 0x16
	.4byte	.LVL126
	.4byte	0x624
	.uleb128 0x16
	.4byte	.LVL127
	.4byte	0xafb
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x3da
	.byte	0x6
	.byte	0x1
	.4byte	.LFB159
	.4byte	.LFE159
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x17
	.byte	0x1
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x3b1
	.byte	0x6
	.byte	0x1
	.4byte	.LFB158
	.4byte	.LFE158
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x6bc
	.uleb128 0x18
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x3b1
	.byte	0x27
	.4byte	0x87
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x37e
	.byte	0x6
	.byte	0x1
	.4byte	.LFB157
	.4byte	.LFE157
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x6e7
	.uleb128 0x18
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x37e
	.byte	0x27
	.4byte	0x87
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x352
	.byte	0x13
	.byte	0x1
	.4byte	0x567
	.4byte	.LFB156
	.4byte	.LFE156
	.4byte	.LLST19
	.byte	0x1
	.4byte	0x71d
	.uleb128 0x1a
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x354
	.byte	0xc
	.4byte	0x98
	.4byte	.LLST20
	.4byte	.LVUS20
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x343
	.byte	0x6
	.byte	0x1
	.4byte	.LFB155
	.4byte	.LFE155
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x2a2
	.byte	0x13
	.byte	0x1
	.4byte	0x567
	.4byte	.LFB154
	.4byte	.LFE154
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x77e
	.uleb128 0x1c
	.4byte	.LASF98
	.byte	0x1
	.2byte	0x2a2
	.byte	0x37
	.4byte	0x77e
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0x1a
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x2a4
	.byte	0x15
	.4byte	0x567
	.4byte	.LLST18
	.4byte	.LVUS18
	.byte	0
	.uleb128 0x1d
	.byte	0x4
	.4byte	0x59b
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x28e
	.byte	0x6
	.byte	0x1
	.4byte	.LFB153
	.4byte	.LFE153
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x285
	.byte	0x6
	.byte	0x1
	.4byte	.LFB152
	.4byte	.LFE152
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x27b
	.byte	0x6
	.byte	0x1
	.4byte	.LFB151
	.4byte	.LFE151
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x272
	.byte	0x6
	.byte	0x1
	.4byte	.LFB150
	.4byte	.LFE150
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x267
	.byte	0x6
	.byte	0x1
	.4byte	.LFB149
	.4byte	.LFE149
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x25e
	.byte	0x6
	.byte	0x1
	.4byte	.LFB148
	.4byte	.LFE148
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF91
	.byte	0x1
	.2byte	0x252
	.byte	0x6
	.byte	0x1
	.4byte	.LFB147
	.4byte	.LFE147
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x249
	.byte	0x6
	.byte	0x1
	.4byte	.LFB146
	.4byte	.LFE146
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x23c
	.byte	0x6
	.byte	0x1
	.4byte	.LFB145
	.4byte	.LFE145
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x230
	.byte	0x6
	.byte	0x1
	.4byte	.LFB144
	.4byte	.LFE144
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x223
	.byte	0x6
	.byte	0x1
	.4byte	.LFB143
	.4byte	.LFE143
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x217
	.byte	0x6
	.byte	0x1
	.4byte	.LFB142
	.4byte	.LFE142
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x1e5
	.byte	0x13
	.byte	0x1
	.4byte	0x567
	.4byte	.LFB141
	.4byte	.LFE141
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x8f7
	.uleb128 0x1c
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x1e5
	.byte	0x3a
	.4byte	0x98
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x1c
	.4byte	.LASF100
	.byte	0x1
	.2byte	0x1e5
	.byte	0x49
	.4byte	0x98
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0x1a
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x1e7
	.byte	0x15
	.4byte	0x567
	.4byte	.LLST16
	.4byte	.LVUS16
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x1a8
	.byte	0x13
	.byte	0x1
	.4byte	0x567
	.4byte	.LFB140
	.4byte	.LFE140
	.4byte	.LLST10
	.byte	0x1
	.4byte	0x957
	.uleb128 0x1c
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x1a8
	.byte	0x39
	.4byte	0x98
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x1c
	.4byte	.LASF100
	.byte	0x1
	.2byte	0x1a8
	.byte	0x48
	.4byte	0x98
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x1a
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x1aa
	.byte	0x15
	.4byte	0x567
	.4byte	.LLST13
	.4byte	.LVUS13
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x16b
	.byte	0x13
	.byte	0x1
	.4byte	0x567
	.4byte	.LFB139
	.4byte	.LFE139
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x9b6
	.uleb128 0x1c
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x16b
	.byte	0x38
	.4byte	0x98
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x1c
	.4byte	.LASF100
	.byte	0x1
	.2byte	0x16b
	.byte	0x47
	.4byte	0x98
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x1a
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x16d
	.byte	0x15
	.4byte	0x567
	.4byte	.LLST9
	.4byte	.LVUS9
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x12e
	.byte	0x13
	.byte	0x1
	.4byte	0x567
	.4byte	.LFB138
	.4byte	.LFE138
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0xa15
	.uleb128 0x1c
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x12e
	.byte	0x37
	.4byte	0x98
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x1c
	.4byte	.LASF100
	.byte	0x1
	.2byte	0x12e
	.byte	0x46
	.4byte	0x98
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x1a
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x130
	.byte	0x15
	.4byte	0x567
	.4byte	.LLST6
	.4byte	.LVUS6
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x112
	.byte	0x6
	.byte	0x1
	.4byte	.LFB137
	.4byte	.LFE137
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x108
	.byte	0x6
	.byte	0x1
	.4byte	.LFB136
	.4byte	.LFE136
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF106
	.byte	0x1
	.byte	0xfe
	.byte	0x6
	.byte	0x1
	.4byte	.LFB135
	.4byte	.LFE135
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x1f
	.byte	0x1
	.4byte	.LASF107
	.byte	0x1
	.byte	0xee
	.byte	0x6
	.byte	0x1
	.4byte	.LFB134
	.4byte	.LFE134
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0xa88
	.uleb128 0x20
	.4byte	.LASF108
	.byte	0x1
	.byte	0xee
	.byte	0x2f
	.4byte	0x98
	.4byte	.LLST3
	.4byte	.LVUS3
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.4byte	.LASF109
	.byte	0x1
	.byte	0x99
	.byte	0x13
	.byte	0x1
	.4byte	0x567
	.4byte	.LFB133
	.4byte	.LFE133
	.4byte	.LLST0
	.byte	0x1
	.4byte	0xad0
	.uleb128 0x20
	.4byte	.LASF110
	.byte	0x1
	.byte	0x99
	.byte	0x3c
	.4byte	0x98
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x22
	.4byte	.LASF80
	.byte	0x1
	.byte	0x9b
	.byte	0xc
	.4byte	0x98
	.4byte	.LLST2
	.4byte	.LVUS2
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.4byte	.LASF115
	.byte	0x1
	.byte	0x6d
	.byte	0xa
	.byte	0x1
	.4byte	0x98
	.4byte	.LFB132
	.4byte	.LFE132
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x24
	.4byte	0x624
	.4byte	.LFB161
	.4byte	.LFE161
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x25
	.byte	0x1
	.byte	0x1
	.4byte	.LASF116
	.4byte	.LASF116
	.byte	0x9
	.2byte	0x182
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
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
	.uleb128 0x13
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
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x1a
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
	.uleb128 0x2
	.uleb128 0x6
	.uleb128 0x2137
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x6
	.uleb128 0x2137
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
.LLST21:
	.4byte	.LFB160
	.4byte	.LCFI13
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI13
	.4byte	.LFE160
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LFB156
	.4byte	.LCFI11
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI11
	.4byte	.LCFI12
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI12
	.4byte	.LFE156
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS20:
	.uleb128 .LVU443
	.uleb128 .LVU453
.LLST20:
	.4byte	.LVL118
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS17:
	.uleb128 0
	.uleb128 .LVU341
	.uleb128 .LVU341
	.uleb128 .LVU351
	.uleb128 .LVU351
	.uleb128 .LVU362
	.uleb128 .LVU362
	.uleb128 .LVU374
	.uleb128 .LVU374
	.uleb128 .LVU381
	.uleb128 .LVU381
	.uleb128 .LVU389
	.uleb128 .LVU389
	.uleb128 .LVU390
	.uleb128 .LVU390
	.uleb128 .LVU391
	.uleb128 .LVU391
	.uleb128 .LVU398
	.uleb128 .LVU398
	.uleb128 0
.LLST17:
	.4byte	.LVL107
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL108
	.4byte	.LVL109
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL110
	.4byte	.LVL112
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL112
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL113
	.4byte	.LVL114
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL114
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL115
	.4byte	.LVL116
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL116
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL117
	.4byte	.LFE154
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS18:
	.uleb128 .LVU326
	.uleb128 .LVU372
	.uleb128 .LVU372
	.uleb128 .LVU374
	.uleb128 .LVU374
	.uleb128 0
.LLST18:
	.4byte	.LVL107
	.4byte	.LVL111
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL111
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL112
	.4byte	.LFE154
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS14:
	.uleb128 0
	.uleb128 .LVU256
	.uleb128 .LVU256
	.uleb128 .LVU257
	.uleb128 .LVU257
	.uleb128 .LVU260
	.uleb128 .LVU260
	.uleb128 .LVU262
	.uleb128 .LVU262
	.uleb128 .LVU265
	.uleb128 .LVU265
	.uleb128 .LVU267
	.uleb128 .LVU267
	.uleb128 .LVU269
	.uleb128 .LVU269
	.uleb128 .LVU271
	.uleb128 .LVU271
	.uleb128 .LVU273
	.uleb128 .LVU273
	.uleb128 .LVU275
	.uleb128 .LVU275
	.uleb128 .LVU277
	.uleb128 .LVU277
	.uleb128 .LVU279
	.uleb128 .LVU279
	.uleb128 .LVU280
	.uleb128 .LVU280
	.uleb128 .LVU285
	.uleb128 .LVU285
	.uleb128 .LVU286
	.uleb128 .LVU286
	.uleb128 0
.LLST14:
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL90
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL93
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL95
	.4byte	.LVL96
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL96
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL98
	.4byte	.LVL99
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL99
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL101
	.4byte	.LVL102
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL102
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL103
	.4byte	.LVL105
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL105
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL106
	.4byte	.LFE141
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS15:
	.uleb128 0
	.uleb128 .LVU258
	.uleb128 .LVU258
	.uleb128 .LVU262
	.uleb128 .LVU262
	.uleb128 .LVU263
	.uleb128 .LVU263
	.uleb128 .LVU267
	.uleb128 .LVU267
	.uleb128 .LVU268
	.uleb128 .LVU268
	.uleb128 .LVU271
	.uleb128 .LVU271
	.uleb128 .LVU272
	.uleb128 .LVU272
	.uleb128 .LVU275
	.uleb128 .LVU275
	.uleb128 .LVU276
	.uleb128 .LVU276
	.uleb128 .LVU279
	.uleb128 .LVU279
	.uleb128 .LVU281
	.uleb128 .LVU281
	.uleb128 .LVU285
	.uleb128 .LVU285
	.uleb128 0
.LLST15:
	.4byte	.LVL85
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL88
	.4byte	.LVL90
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL91
	.4byte	.LVL93
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL94
	.4byte	.LVL96
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL97
	.4byte	.LVL99
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL100
	.4byte	.LVL102
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL102
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL104
	.4byte	.LVL105
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL105
	.4byte	.LFE141
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LVUS16:
	.uleb128 .LVU250
	.uleb128 .LVU286
	.uleb128 .LVU286
	.uleb128 0
.LLST16:
	.4byte	.LVL85
	.4byte	.LVL106
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL106
	.4byte	.LFE141
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LFB140
	.4byte	.LCFI9
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI9
	.4byte	.LCFI10
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI10
	.4byte	.LFE140
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 0
	.uleb128 .LVU203
	.uleb128 .LVU203
	.uleb128 .LVU205
	.uleb128 .LVU205
	.uleb128 .LVU206
	.uleb128 .LVU206
	.uleb128 .LVU212
	.uleb128 .LVU212
	.uleb128 .LVU219
	.uleb128 .LVU219
	.uleb128 .LVU223
	.uleb128 .LVU223
	.uleb128 .LVU226
	.uleb128 .LVU226
	.uleb128 .LVU228
	.uleb128 .LVU228
	.uleb128 .LVU231
	.uleb128 .LVU231
	.uleb128 .LVU233
	.uleb128 .LVU233
	.uleb128 .LVU236
	.uleb128 .LVU236
	.uleb128 .LVU238
	.uleb128 .LVU238
	.uleb128 .LVU239
	.uleb128 .LVU239
	.uleb128 .LVU245
	.uleb128 .LVU245
	.uleb128 .LVU246
	.uleb128 .LVU246
	.uleb128 0
.LLST11:
	.4byte	.LVL61
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL65
	.4byte	.LVL67
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL69
	.4byte	.LVL71
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL74
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL81
	.4byte	.LVL83
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL83
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL84
	.4byte	.LFE140
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS12:
	.uleb128 0
	.uleb128 .LVU201
	.uleb128 .LVU201
	.uleb128 .LVU205
	.uleb128 .LVU205
	.uleb128 .LVU208
	.uleb128 .LVU208
	.uleb128 .LVU212
	.uleb128 .LVU212
	.uleb128 .LVU218
	.uleb128 .LVU218
	.uleb128 .LVU223
	.uleb128 .LVU223
	.uleb128 .LVU225
	.uleb128 .LVU225
	.uleb128 .LVU228
	.uleb128 .LVU228
	.uleb128 .LVU230
	.uleb128 .LVU230
	.uleb128 .LVU233
	.uleb128 .LVU233
	.uleb128 .LVU235
	.uleb128 .LVU235
	.uleb128 .LVU238
	.uleb128 .LVU238
	.uleb128 .LVU240
	.uleb128 .LVU240
	.uleb128 .LVU245
	.uleb128 .LVU245
	.uleb128 0
.LLST12:
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL62
	.4byte	.LVL64
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL68
	.4byte	.LVL71
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL72
	.4byte	.LVL74
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL75
	.4byte	.LVL77
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL78
	.4byte	.LVL80
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL83
	.4byte	.LFE140
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LVUS13:
	.uleb128 .LVU196
	.uleb128 .LVU221
	.uleb128 .LVU221
	.uleb128 .LVU223
	.uleb128 .LVU223
	.uleb128 .LVU246
	.uleb128 .LVU246
	.uleb128 0
.LLST13:
	.4byte	.LVL61
	.4byte	.LVL70
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL71
	.4byte	.LVL84
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL84
	.4byte	.LFE140
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 0
	.uleb128 .LVU162
	.uleb128 .LVU162
	.uleb128 .LVU164
	.uleb128 .LVU164
	.uleb128 .LVU167
	.uleb128 .LVU167
	.uleb128 .LVU169
	.uleb128 .LVU169
	.uleb128 .LVU171
	.uleb128 .LVU171
	.uleb128 .LVU173
	.uleb128 .LVU173
	.uleb128 .LVU175
	.uleb128 .LVU175
	.uleb128 .LVU177
	.uleb128 .LVU177
	.uleb128 .LVU179
	.uleb128 .LVU179
	.uleb128 .LVU181
	.uleb128 .LVU181
	.uleb128 .LVU183
	.uleb128 .LVU183
	.uleb128 .LVU185
	.uleb128 .LVU185
	.uleb128 .LVU186
	.uleb128 .LVU186
	.uleb128 .LVU191
	.uleb128 .LVU191
	.uleb128 .LVU192
	.uleb128 .LVU192
	.uleb128 0
.LLST7:
	.4byte	.LVL38
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL57
	.4byte	.LVL59
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL60
	.4byte	.LFE139
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 0
	.uleb128 .LVU160
	.uleb128 .LVU160
	.uleb128 .LVU164
	.uleb128 .LVU164
	.uleb128 .LVU165
	.uleb128 .LVU165
	.uleb128 .LVU169
	.uleb128 .LVU169
	.uleb128 .LVU170
	.uleb128 .LVU170
	.uleb128 .LVU173
	.uleb128 .LVU173
	.uleb128 .LVU174
	.uleb128 .LVU174
	.uleb128 .LVU177
	.uleb128 .LVU177
	.uleb128 .LVU178
	.uleb128 .LVU178
	.uleb128 .LVU181
	.uleb128 .LVU181
	.uleb128 .LVU182
	.uleb128 .LVU182
	.uleb128 .LVU185
	.uleb128 .LVU185
	.uleb128 .LVU187
	.uleb128 .LVU187
	.uleb128 .LVU191
	.uleb128 .LVU191
	.uleb128 0
.LLST8:
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL39
	.4byte	.LVL41
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL42
	.4byte	.LVL44
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL45
	.4byte	.LVL47
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL51
	.4byte	.LVL53
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL54
	.4byte	.LVL56
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL59
	.4byte	.LFE139
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 .LVU156
	.uleb128 .LVU192
	.uleb128 .LVU192
	.uleb128 0
.LLST9:
	.4byte	.LVL38
	.4byte	.LVL60
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LFE139
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 0
	.uleb128 .LVU113
	.uleb128 .LVU113
	.uleb128 .LVU114
	.uleb128 .LVU114
	.uleb128 .LVU115
	.uleb128 .LVU115
	.uleb128 .LVU121
	.uleb128 .LVU121
	.uleb128 .LVU127
	.uleb128 .LVU127
	.uleb128 .LVU129
	.uleb128 .LVU129
	.uleb128 .LVU132
	.uleb128 .LVU132
	.uleb128 .LVU134
	.uleb128 .LVU134
	.uleb128 .LVU137
	.uleb128 .LVU137
	.uleb128 .LVU139
	.uleb128 .LVU139
	.uleb128 .LVU142
	.uleb128 .LVU142
	.uleb128 .LVU144
	.uleb128 .LVU144
	.uleb128 .LVU145
	.uleb128 .LVU145
	.uleb128 .LVU151
	.uleb128 .LVU151
	.uleb128 .LVU152
	.uleb128 .LVU152
	.uleb128 0
.LLST4:
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL34
	.4byte	.LVL36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL37
	.4byte	.LFE138
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 0
	.uleb128 .LVU109
	.uleb128 .LVU109
	.uleb128 .LVU114
	.uleb128 .LVU114
	.uleb128 .LVU117
	.uleb128 .LVU117
	.uleb128 .LVU121
	.uleb128 .LVU121
	.uleb128 .LVU124
	.uleb128 .LVU124
	.uleb128 .LVU129
	.uleb128 .LVU129
	.uleb128 .LVU131
	.uleb128 .LVU131
	.uleb128 .LVU134
	.uleb128 .LVU134
	.uleb128 .LVU136
	.uleb128 .LVU136
	.uleb128 .LVU139
	.uleb128 .LVU139
	.uleb128 .LVU141
	.uleb128 .LVU141
	.uleb128 .LVU144
	.uleb128 .LVU144
	.uleb128 .LVU146
	.uleb128 .LVU146
	.uleb128 .LVU151
	.uleb128 .LVU151
	.uleb128 0
.LLST5:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LFE138
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 .LVU105
	.uleb128 .LVU152
	.uleb128 .LVU152
	.uleb128 0
.LLST6:
	.4byte	.LVL15
	.4byte	.LVL37
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LFE138
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU91
	.uleb128 .LVU91
	.uleb128 0
.LLST3:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL14
	.4byte	.LFE134
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LFB133
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
	.4byte	.LFE133
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU30
	.uleb128 .LVU30
	.uleb128 .LVU32
	.uleb128 .LVU32
	.uleb128 .LVU39
	.uleb128 .LVU39
	.uleb128 .LVU42
	.uleb128 .LVU42
	.uleb128 .LVU46
	.uleb128 .LVU46
	.uleb128 .LVU69
	.uleb128 .LVU69
	.uleb128 .LVU73
	.uleb128 .LVU73
	.uleb128 0
.LLST1:
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
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL10
	.4byte	.LFE133
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 .LVU53
	.uleb128 .LVU63
	.uleb128 .LVU80
	.uleb128 0
.LLST2:
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL11
	.4byte	.LFE133
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x124
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
	.4byte	.LFB161
	.4byte	.LFE161-.LFB161
	.4byte	.LFB160
	.4byte	.LFE160-.LFB160
	.4byte	.LFB165
	.4byte	.LFE165-.LFB165
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
	.4byte	.LFB161
	.4byte	.LFE161
	.4byte	.LFB160
	.4byte	.LFE160
	.4byte	.LFB165
	.4byte	.LFE165
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
.LASF100:
	.ascii	"GPIONumber\000"
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
.LASF61:
	.ascii	"HAL_BUSY\000"
.LASF32:
	.ascii	"FTSR1\000"
.LASF39:
	.ascii	"FTSR2\000"
.LASF105:
	.ascii	"HAL_PWREx_EnableInternalWakeUpLine\000"
.LASF81:
	.ascii	"HAL_PWREx_EnableLowPowerRunMode\000"
.LASF9:
	.ascii	"long long unsigned int\000"
.LASF101:
	.ascii	"HAL_PWREx_EnableGPIOPullDown\000"
.LASF91:
	.ascii	"HAL_PWREx_DisablePVM1\000"
.LASF87:
	.ascii	"HAL_PWREx_DisablePVM3\000"
.LASF85:
	.ascii	"HAL_PWREx_DisablePVM4\000"
.LASF13:
	.ascii	"CPUID\000"
.LASF114:
	.ascii	"HAL_PWREx_PVM1Callback\000"
.LASF33:
	.ascii	"SWIER1\000"
.LASF40:
	.ascii	"SWIER2\000"
.LASF104:
	.ascii	"HAL_PWREx_DisableInternalWakeUpLine\000"
.LASF25:
	.ascii	"ISAR\000"
.LASF8:
	.ascii	"long long int\000"
.LASF0:
	.ascii	"signed char\000"
.LASF102:
	.ascii	"HAL_PWREx_DisableGPIOPullUp\000"
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
.LASF95:
	.ascii	"HAL_PWREx_DisablePullUpPullDownConfig\000"
.LASF56:
	.ascii	"PDCRG\000"
.LASF111:
	.ascii	"GNU C17 10.2.1 20201103 (release) -mcpu=cortex-m4 -"
	.ascii	"mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=hard -march=ar"
	.ascii	"mv7e-m+fp -g -gdwarf-2 -O3 -fdata-sections -ffuncti"
	.ascii	"on-sections\000"
.LASF22:
	.ascii	"BFAR\000"
.LASF73:
	.ascii	"HAL_PWREx_PVM2Callback\000"
.LASF6:
	.ascii	"__uint32_t\000"
.LASF65:
	.ascii	"Mode\000"
.LASF112:
	.ascii	"Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_pwr_"
	.ascii	"ex.c\000"
.LASF28:
	.ascii	"SCB_Type\000"
.LASF94:
	.ascii	"HAL_PWREx_EnableSRAM2ContentRetention\000"
.LASF68:
	.ascii	"HAL_PWREx_EnableUCPDDeadBattery\000"
.LASF92:
	.ascii	"HAL_PWREx_EnablePVM1\000"
.LASF90:
	.ascii	"HAL_PWREx_EnablePVM2\000"
.LASF88:
	.ascii	"HAL_PWREx_EnablePVM3\000"
.LASF86:
	.ascii	"HAL_PWREx_EnablePVM4\000"
.LASF62:
	.ascii	"HAL_TIMEOUT\000"
.LASF79:
	.ascii	"SystemCoreClock\000"
.LASF7:
	.ascii	"long unsigned int\000"
.LASF64:
	.ascii	"PVMType\000"
.LASF107:
	.ascii	"HAL_PWREx_EnableBatteryCharging\000"
.LASF59:
	.ascii	"HAL_OK\000"
.LASF15:
	.ascii	"VTOR\000"
.LASF29:
	.ascii	"IMR1\000"
.LASF36:
	.ascii	"IMR2\000"
.LASF14:
	.ascii	"ICSR\000"
.LASF16:
	.ascii	"AIRCR\000"
.LASF20:
	.ascii	"DFSR\000"
.LASF72:
	.ascii	"HAL_PWREx_PVM3Callback\000"
.LASF21:
	.ascii	"MMFAR\000"
.LASF80:
	.ascii	"wait_loop_index\000"
.LASF63:
	.ascii	"HAL_StatusTypeDef\000"
.LASF74:
	.ascii	"HAL_PWREx_EnterSHUTDOWNMode\000"
.LASF24:
	.ascii	"MMFR\000"
.LASF116:
	.ascii	"HAL_PWR_PVDCallback\000"
.LASF18:
	.ascii	"CFSR\000"
.LASF76:
	.ascii	"HAL_PWREx_EnterSTOP1Mode\000"
.LASF70:
	.ascii	"HAL_PWREx_EnableUCPDStandbyMode\000"
.LASF67:
	.ascii	"HAL_PWREx_DisableUCPDDeadBattery\000"
.LASF71:
	.ascii	"HAL_PWREx_PVM4Callback\000"
.LASF113:
	.ascii	"/home/joel/share/EVSPIN32G4_Shinano\000"
.LASF109:
	.ascii	"HAL_PWREx_ControlVoltageScaling\000"
.LASF93:
	.ascii	"HAL_PWREx_DisableSRAM2ContentRetention\000"
.LASF97:
	.ascii	"HAL_PWREx_DisableGPIOPullDown\000"
.LASF26:
	.ascii	"RESERVED0\000"
.LASF34:
	.ascii	"RESERVED1\000"
.LASF35:
	.ascii	"RESERVED2\000"
.LASF31:
	.ascii	"RTSR1\000"
.LASF38:
	.ascii	"RTSR2\000"
.LASF82:
	.ascii	"HAL_PWREx_DisableLowPowerRunMode\000"
.LASF89:
	.ascii	"HAL_PWREx_DisablePVM2\000"
.LASF83:
	.ascii	"HAL_PWREx_ConfigPVM\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF17:
	.ascii	"SHCSR\000"
.LASF2:
	.ascii	"short int\000"
.LASF42:
	.ascii	"RESERVED\000"
.LASF12:
	.ascii	"uint32_t\000"
.LASF23:
	.ascii	"AFSR\000"
.LASF60:
	.ascii	"HAL_ERROR\000"
.LASF103:
	.ascii	"HAL_PWREx_EnableGPIOPullUp\000"
.LASF58:
	.ascii	"long double\000"
.LASF98:
	.ascii	"sConfigPVM\000"
.LASF10:
	.ascii	"unsigned int\000"
.LASF66:
	.ascii	"PWR_PVMTypeDef\000"
.LASF69:
	.ascii	"HAL_PWREx_DisableUCPDStandbyMode\000"
.LASF57:
	.ascii	"PWR_TypeDef\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF75:
	.ascii	"HAL_PWREx_PVD_PVM_IRQHandler\000"
.LASF30:
	.ascii	"EMR1\000"
.LASF37:
	.ascii	"EMR2\000"
.LASF84:
	.ascii	"status\000"
.LASF11:
	.ascii	"uint8_t\000"
.LASF78:
	.ascii	"STOPEntry\000"
.LASF77:
	.ascii	"HAL_PWREx_EnterSTOP0Mode\000"
.LASF106:
	.ascii	"HAL_PWREx_DisableBatteryCharging\000"
.LASF115:
	.ascii	"HAL_PWREx_GetVoltageRange\000"
.LASF108:
	.ascii	"ResistorSelection\000"
.LASF96:
	.ascii	"HAL_PWREx_EnablePullUpPullDownConfig\000"
.LASF99:
	.ascii	"GPIO\000"
.LASF41:
	.ascii	"EXTI_TypeDef\000"
.LASF27:
	.ascii	"CPACR\000"
.LASF19:
	.ascii	"HFSR\000"
.LASF110:
	.ascii	"VoltageScaling\000"
	.ident	"GCC: (GNU Arm Embedded Toolchain 10-2020-q4-major) 10.2.1 20201103 (release)"
