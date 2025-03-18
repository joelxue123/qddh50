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
	.file	"port.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.prvPortStartFirstTask,"ax",%progbits
	.align	1
	.p2align 2,,3
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	prvPortStartFirstTask, %function
prvPortStartFirstTask:
.LFB8:
	.file 1 "Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F/port.c"
	.loc 1 262 1 view -0
	.cfi_startproc
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 267 2 view .LVU1
	.syntax unified
@ 267 "Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F/port.c" 1
	 ldr r0, =0xE000ED08 	
 ldr r0, [r0] 			
 ldr r0, [r0] 			
 msr msp, r0			
 mov r0, #0			
 msr control, r0		
 cpsie i				
 cpsie f				
 dsb					
 isb					
 svc 0					
 nop					

@ 0 "" 2
	.loc 1 281 1 is_stmt 0 view .LVU2
	.thumb
	.syntax unified
	.cfi_endproc
.LFE8:
	.size	prvPortStartFirstTask, .-prvPortStartFirstTask
	.section	.text.vPortEnableVFP,"ax",%progbits
	.align	1
	.p2align 2,,3
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	vPortEnableVFP, %function
vPortEnableVFP:
.LFB16:
	.loc 1 702 1 is_stmt 1 view -0
	.cfi_startproc
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 703 2 view .LVU4
	.syntax unified
@ 703 "Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F/port.c" 1
		ldr.w r0, =0xE000ED88		
	ldr r1, [r0]				
								
	orr r1, r1, #( 0xf << 20 )	
	str r1, [r0]				
	bx r14						
@ 0 "" 2
	.loc 1 712 1 is_stmt 0 view .LVU5
	.thumb
	.syntax unified
	.cfi_endproc
.LFE16:
	.size	vPortEnableVFP, .-vPortEnableVFP
	.section	.text.prvTaskExitError,"ax",%progbits
	.align	1
	.p2align 2,,3
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	prvTaskExitError, %function
prvTaskExitError:
.LFB6:
	.loc 1 218 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 219 1 view .LVU7
	.loc 1 227 2 is_stmt 0 view .LVU8
	ldr	r3, .L11
	ldr	r3, [r3]
	.loc 1 218 1 view .LVU9
	sub	sp, sp, #8
.LCFI0:
	.cfi_def_cfa_offset 8
	.loc 1 219 19 view .LVU10
	movs	r2, #0
	.loc 1 227 2 view .LVU11
	adds	r3, r3, #1
	.loc 1 219 19 view .LVU12
	str	r2, [sp, #4]
	.loc 1 227 2 is_stmt 1 view .LVU13
	beq	.L5
.LBB45:
.LBI45:
	.loc 1 217 13 view .LVU14
.LBB46:
	.loc 1 227 2 view .LVU15
.LBB47:
.LBI47:
	.file 2 "Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F/portmacro.h"
	.loc 2 191 30 view .LVU16
.LBB48:
	.loc 2 193 1 view .LVU17
	.loc 2 195 2 view .LVU18
	.syntax unified
@ 195 "Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F/portmacro.h" 1
		mov r3, #80												
	msr basepri, r3											
	isb														
	dsb														

@ 0 "" 2
.LVL0:
	.thumb
	.syntax unified
.L6:
	.loc 2 195 2 is_stmt 0 view .LVU19
.LBE48:
.LBE47:
	.loc 1 227 2 is_stmt 1 view .LVU20
	.loc 1 227 2 view .LVU21
	.loc 1 227 2 view .LVU22
	.loc 1 227 2 view .LVU23
	.loc 1 227 2 view .LVU24
	.loc 1 227 2 view .LVU25
	b	.L6
.L5:
.LBE46:
.LBE45:
	.loc 1 227 43 view .LVU26
	.loc 1 228 2 view .LVU27
.LBB49:
.LBI49:
	.loc 2 191 30 view .LVU28
.LBB50:
	.loc 2 193 1 view .LVU29
	.loc 2 195 2 view .LVU30
	.syntax unified
@ 195 "Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F/portmacro.h" 1
		mov r3, #80												
	msr basepri, r3											
	isb														
	dsb														

@ 0 "" 2
.LVL1:
	.thumb
	.syntax unified
.L7:
	.loc 2 195 2 is_stmt 0 view .LVU31
.LBE50:
.LBE49:
	.loc 1 238 2 is_stmt 1 discriminator 1 view .LVU32
	.loc 1 229 7 discriminator 1 view .LVU33
	.loc 1 229 17 is_stmt 0 discriminator 1 view .LVU34
	ldr	r3, [sp, #4]
	.loc 1 229 7 discriminator 1 view .LVU35
	cmp	r3, #0
	beq	.L7
	.loc 1 239 1 view .LVU36
	add	sp, sp, #8
.LCFI1:
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
.L12:
	.align	2
.L11:
	.word	.LANCHOR0
	.cfi_endproc
.LFE6:
	.size	prvTaskExitError, .-prvTaskExitError
	.section	.text.pxPortInitialiseStack,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	pxPortInitialiseStack
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	pxPortInitialiseStack, %function
pxPortInitialiseStack:
.LVL2:
.LFB5:
	.loc 1 188 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 194 2 view .LVU38
	.loc 1 196 2 view .LVU39
	.loc 1 188 1 is_stmt 0 view .LVU40
	push	{r4}
.LCFI2:
	.cfi_def_cfa_offset 4
	.cfi_offset 4, -4
	.loc 1 196 16 view .LVU41
	mov	r3, #16777216
	.loc 1 200 16 view .LVU42
	ldr	r4, .L15
	.loc 1 196 16 view .LVU43
	str	r3, [r0, #-4]
	.loc 1 197 2 is_stmt 1 view .LVU44
.LVL3:
	.loc 1 198 2 view .LVU45
	.loc 1 198 45 is_stmt 0 view .LVU46
	bic	r1, r1, #1
.LVL4:
	.loc 1 209 16 view .LVU47
	mvn	r3, #2
	.loc 1 200 16 view .LVU48
	strd	r4, r1, [r0, #-12]
	.loc 1 203 2 is_stmt 1 view .LVU49
.LVL5:
	.loc 1 204 2 view .LVU50
	.loc 1 209 16 is_stmt 0 view .LVU51
	strd	r3, r2, [r0, #-36]
	.loc 1 211 2 is_stmt 1 view .LVU52
.LVL6:
	.loc 1 213 2 view .LVU53
	.loc 1 214 1 is_stmt 0 view .LVU54
	ldr	r4, [sp], #4
.LCFI3:
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	subs	r0, r0, #68
.LVL7:
	.loc 1 214 1 view .LVU55
	bx	lr
.L16:
	.align	2
.L15:
	.word	prvTaskExitError
	.cfi_endproc
.LFE5:
	.size	pxPortInitialiseStack, .-pxPortInitialiseStack
	.section	.text.SVC_Handler,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	SVC_Handler
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	SVC_Handler, %function
SVC_Handler:
.LFB7:
	.loc 1 243 1 is_stmt 1 view -0
	.cfi_startproc
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 244 2 view .LVU57
	.syntax unified
@ 244 "Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F/port.c" 1
		ldr	r3, pxCurrentTCBConst2		
	ldr r1, [r3]					
	ldr r0, [r1]					
	ldmia r0!, {r4-r11, r14}		
	msr psp, r0						
	isb								
	mov r0, #0 						
	msr	basepri, r0					
	bx r14							
									
	.align 4						
pxCurrentTCBConst2: .word pxCurrentTCB				

@ 0 "" 2
	.loc 1 258 1 is_stmt 0 view .LVU58
	.thumb
	.syntax unified
	.cfi_endproc
.LFE7:
	.size	SVC_Handler, .-SVC_Handler
	.section	.text.vPortEndScheduler,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	vPortEndScheduler
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	vPortEndScheduler, %function
vPortEndScheduler:
.LFB10:
	.loc 1 396 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 399 2 view .LVU60
	ldr	r3, .L21
	ldr	r3, [r3]
	cmp	r3, #1000
	beq	.L18
	.loc 1 399 2 view .LVU61
.LBB51:
.LBI51:
	.loc 2 191 30 view .LVU62
.LBB52:
	.loc 2 193 1 view .LVU63
	.loc 2 195 2 view .LVU64
	.syntax unified
@ 195 "Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F/portmacro.h" 1
		mov r3, #80												
	msr basepri, r3											
	isb														
	dsb														

@ 0 "" 2
.LVL8:
	.thumb
	.syntax unified
.L20:
	.loc 2 195 2 is_stmt 0 view .LVU65
.LBE52:
.LBE51:
	.loc 1 399 2 is_stmt 1 discriminator 1 view .LVU66
	.loc 1 399 2 discriminator 1 view .LVU67
	.loc 1 399 2 discriminator 1 view .LVU68
	.loc 1 399 2 discriminator 1 view .LVU69
	.loc 1 399 2 discriminator 1 view .LVU70
	.loc 1 399 2 discriminator 1 view .LVU71
	b	.L20
.L18:
	.loc 1 400 1 is_stmt 0 view .LVU72
	bx	lr
.L22:
	.align	2
.L21:
	.word	.LANCHOR0
	.cfi_endproc
.LFE10:
	.size	vPortEndScheduler, .-vPortEndScheduler
	.section	.text.vPortEnterCritical,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	vPortEnterCritical
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	vPortEnterCritical, %function
vPortEnterCritical:
.LFB11:
	.loc 1 404 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 405 2 view .LVU74
.LBB53:
.LBI53:
	.loc 2 191 30 view .LVU75
.LBB54:
	.loc 2 193 1 view .LVU76
	.loc 2 195 2 view .LVU77
	.syntax unified
@ 195 "Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F/portmacro.h" 1
		mov r3, #80												
	msr basepri, r3											
	isb														
	dsb														

@ 0 "" 2
	.thumb
	.syntax unified
.LBE54:
.LBE53:
	.loc 1 406 2 view .LVU78
	.loc 1 406 19 is_stmt 0 view .LVU79
	ldr	r2, .L30
	ldr	r3, [r2]
	adds	r3, r3, #1
	.loc 1 413 4 view .LVU80
	cmp	r3, #1
	.loc 1 406 19 view .LVU81
	str	r3, [r2]
	.loc 1 413 2 is_stmt 1 view .LVU82
	.loc 1 413 4 is_stmt 0 view .LVU83
	beq	.L29
.L23:
	.loc 1 417 1 view .LVU84
	bx	lr
.L29:
	.loc 1 415 3 is_stmt 1 view .LVU85
	mov	r3, #-536813568
	ldr	r3, [r3, #3332]
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L23
	.loc 1 415 3 view .LVU86
.LBB55:
.LBI55:
	.loc 2 191 30 view .LVU87
.LBB56:
	.loc 2 193 1 view .LVU88
	.loc 2 195 2 view .LVU89
	.syntax unified
@ 195 "Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F/portmacro.h" 1
		mov r3, #80												
	msr basepri, r3											
	isb														
	dsb														

@ 0 "" 2
.LVL9:
	.thumb
	.syntax unified
.L25:
	.loc 2 195 2 is_stmt 0 view .LVU90
.LBE56:
.LBE55:
	.loc 1 415 3 is_stmt 1 discriminator 1 view .LVU91
	.loc 1 415 3 discriminator 1 view .LVU92
	.loc 1 415 3 discriminator 1 view .LVU93
	.loc 1 415 3 discriminator 1 view .LVU94
	.loc 1 415 3 discriminator 1 view .LVU95
	.loc 1 415 3 discriminator 1 view .LVU96
	b	.L25
.L31:
	.align	2
.L30:
	.word	.LANCHOR0
	.cfi_endproc
.LFE11:
	.size	vPortEnterCritical, .-vPortEnterCritical
	.section	.text.vPortExitCritical,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	vPortExitCritical
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	vPortExitCritical, %function
vPortExitCritical:
.LFB12:
	.loc 1 421 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 422 2 view .LVU98
	ldr	r2, .L36
	ldr	r3, [r2]
	cbnz	r3, .L33
	.loc 1 422 2 view .LVU99
.LBB57:
.LBI57:
	.loc 2 191 30 view .LVU100
.LBB58:
	.loc 2 193 1 view .LVU101
	.loc 2 195 2 view .LVU102
	.syntax unified
@ 195 "Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F/portmacro.h" 1
		mov r3, #80												
	msr basepri, r3											
	isb														
	dsb														

@ 0 "" 2
.LVL10:
	.thumb
	.syntax unified
.L34:
	.loc 2 195 2 is_stmt 0 view .LVU103
.LBE58:
.LBE57:
	.loc 1 422 2 is_stmt 1 discriminator 1 view .LVU104
	.loc 1 422 2 discriminator 1 view .LVU105
	.loc 1 422 2 discriminator 1 view .LVU106
	.loc 1 422 2 discriminator 1 view .LVU107
	.loc 1 422 2 discriminator 1 view .LVU108
	.loc 1 422 2 discriminator 1 view .LVU109
	b	.L34
.L33:
	.loc 1 422 35 discriminator 2 view .LVU110
	.loc 1 423 2 discriminator 2 view .LVU111
	.loc 1 423 19 is_stmt 0 discriminator 2 view .LVU112
	subs	r3, r3, #1
	str	r3, [r2]
	.loc 1 424 2 is_stmt 1 discriminator 2 view .LVU113
	.loc 1 424 4 is_stmt 0 discriminator 2 view .LVU114
	cbnz	r3, .L32
	.loc 1 426 3 is_stmt 1 view .LVU115
.LVL11:
.LBB59:
.LBI59:
	.loc 2 227 30 view .LVU116
.LBB60:
	.loc 2 229 2 view .LVU117
	.syntax unified
@ 229 "Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F/portmacro.h" 1
		msr basepri, r3	
@ 0 "" 2
.LVL12:
	.thumb
	.syntax unified
.L32:
	.loc 2 229 2 is_stmt 0 view .LVU118
.LBE60:
.LBE59:
	.loc 1 428 1 view .LVU119
	bx	lr
.L37:
	.align	2
.L36:
	.word	.LANCHOR0
	.cfi_endproc
.LFE12:
	.size	vPortExitCritical, .-vPortExitCritical
	.section	.text.PendSV_Handler,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	PendSV_Handler
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	PendSV_Handler, %function
PendSV_Handler:
.LFB13:
	.loc 1 432 1 is_stmt 1 view -0
	.cfi_startproc
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 435 2 view .LVU121
	.syntax unified
@ 435 "Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F/port.c" 1
		mrs r0, psp							
	isb									
										
	ldr	r3, pxCurrentTCBConst			
	ldr	r2, [r3]						
										
	tst r14, #0x10						
	it eq								
	vstmdbeq r0!, {s16-s31}				
										
	stmdb r0!, {r4-r11, r14}			
	str r0, [r2]						
										
	stmdb sp!, {r0, r3}					
	mov r0, #80 							
	msr basepri, r0						
	dsb									
	isb									
	bl vTaskSwitchContext				
	mov r0, #0							
	msr basepri, r0						
	ldmia sp!, {r0, r3}					
										
	ldr r1, [r3]						
	ldr r0, [r1]						
										
	ldmia r0!, {r4-r11, r14}			
										
	tst r14, #0x10						
	it eq								
	vldmiaeq r0!, {s16-s31}				
										
	msr psp, r0							
	isb									
										
										
	bx r14								
										
	.align 4							
pxCurrentTCBConst: .word pxCurrentTCB	

@ 0 "" 2
	.loc 1 485 1 is_stmt 0 view .LVU122
	.thumb
	.syntax unified
	.cfi_endproc
.LFE13:
	.size	PendSV_Handler, .-PendSV_Handler
	.section	.text.SysTick_Handler,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	SysTick_Handler
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	SysTick_Handler, %function
SysTick_Handler:
.LFB14:
	.loc 1 489 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 494 2 view .LVU124
.LBB61:
.LBI61:
	.loc 2 191 30 view .LVU125
.LBB62:
	.loc 2 193 1 view .LVU126
	.loc 2 195 2 view .LVU127
.LBE62:
.LBE61:
	.loc 1 489 1 is_stmt 0 view .LVU128
	push	{r3, lr}
.LCFI4:
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
.LBB64:
.LBB63:
	.loc 2 195 2 view .LVU129
	.syntax unified
@ 195 "Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F/portmacro.h" 1
		mov r3, #80												
	msr basepri, r3											
	isb														
	dsb														

@ 0 "" 2
	.thumb
	.syntax unified
.LBE63:
.LBE64:
	.loc 1 497 3 is_stmt 1 view .LVU130
	.loc 1 497 7 is_stmt 0 view .LVU131
	bl	xTaskIncrementTick
.LVL13:
	.loc 1 497 5 view .LVU132
	cbz	r0, .L40
	.loc 1 501 4 is_stmt 1 view .LVU133
	.loc 1 501 26 is_stmt 0 view .LVU134
	mov	r3, #-536813568
	mov	r2, #268435456
	str	r2, [r3, #3332]
.L40:
	.loc 1 504 2 is_stmt 1 view .LVU135
.LVL14:
.LBB65:
.LBI65:
	.loc 2 227 30 view .LVU136
.LBB66:
	.loc 2 229 2 view .LVU137
	movs	r3, #0
	.syntax unified
@ 229 "Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F/portmacro.h" 1
		msr basepri, r3	
@ 0 "" 2
.LVL15:
	.loc 2 229 2 is_stmt 0 view .LVU138
	.thumb
	.syntax unified
.LBE66:
.LBE65:
	.loc 1 505 1 view .LVU139
	pop	{r3, pc}
	.cfi_endproc
.LFE14:
	.size	SysTick_Handler, .-SysTick_Handler
	.section	.text.vPortSetupTimerInterrupt,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	vPortSetupTimerInterrupt
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	vPortSetupTimerInterrupt, %function
vPortSetupTimerInterrupt:
.LFB15:
	.loc 1 680 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 691 2 view .LVU141
	.loc 1 691 28 is_stmt 0 view .LVU142
	mov	r2, #-536813568
	movs	r3, #0
	.loc 1 695 55 view .LVU143
	ldr	r1, .L46
	.loc 1 691 28 view .LVU144
	str	r3, [r2, #16]
	.loc 1 692 2 is_stmt 1 view .LVU145
	.loc 1 692 37 is_stmt 0 view .LVU146
	str	r3, [r2, #24]
	.loc 1 695 2 is_stmt 1 view .LVU147
	.loc 1 695 55 is_stmt 0 view .LVU148
	ldr	r3, [r1]
	ldr	r0, .L46+4
	umull	r0, r3, r0, r3
	lsrs	r3, r3, #6
	.loc 1 696 28 view .LVU149
	movs	r1, #7
	.loc 1 695 78 view .LVU150
	subs	r3, r3, #1
	.loc 1 695 28 view .LVU151
	str	r3, [r2, #20]
	.loc 1 696 2 is_stmt 1 view .LVU152
	.loc 1 696 28 is_stmt 0 view .LVU153
	str	r1, [r2, #16]
	.loc 1 697 1 view .LVU154
	bx	lr
.L47:
	.align	2
.L46:
	.word	SystemCoreClock
	.word	274877907
	.cfi_endproc
.LFE15:
	.size	vPortSetupTimerInterrupt, .-vPortSetupTimerInterrupt
	.section	.text.xPortStartScheduler,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	xPortStartScheduler
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	xPortStartScheduler, %function
xPortStartScheduler:
.LFB9:
	.loc 1 288 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 291 2 view .LVU156
	.loc 1 291 54 view .LVU157
	.loc 1 296 2 view .LVU158
	mov	r3, #-536813568
	ldr	r2, .L68
	ldr	r1, [r3, #3328]
	cmp	r1, r2
	beq	.L66
	.loc 1 296 52 discriminator 2 view .LVU159
	.loc 1 297 2 discriminator 2 view .LVU160
	ldr	r2, [r3, #3328]
	ldr	r3, .L68+4
	cmp	r2, r3
	beq	.L67
	.loc 1 297 52 discriminator 2 view .LVU161
.LBB84:
	.loc 1 301 3 discriminator 2 view .LVU162
	.loc 1 302 3 discriminator 2 view .LVU163
.LVL16:
	.loc 1 303 3 discriminator 2 view .LVU164
	.loc 1 311 3 discriminator 2 view .LVU165
.LBE84:
	.loc 1 288 1 is_stmt 0 discriminator 2 view .LVU166
	push	{r4, r5, r6, lr}
.LCFI5:
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
.LBB87:
	.loc 1 311 24 discriminator 2 view .LVU167
	ldr	r3, .L68+8
	.loc 1 321 24 discriminator 2 view .LVU168
	ldr	r4, .L68+12
	.loc 1 311 24 discriminator 2 view .LVU169
	ldrb	r2, [r3]	@ zero_extendqisi2
	.loc 1 325 22 discriminator 2 view .LVU170
	ldr	r0, .L68+16
.LBE87:
	.loc 1 288 1 discriminator 2 view .LVU171
	sub	sp, sp, #16
.LCFI6:
	.cfi_def_cfa_offset 32
.LBB88:
	.loc 1 315 33 discriminator 2 view .LVU172
	movs	r1, #255
	.loc 1 311 24 discriminator 2 view .LVU173
	uxtb	r2, r2
	.loc 1 311 22 discriminator 2 view .LVU174
	str	r2, [sp, #8]
	.loc 1 315 3 is_stmt 1 discriminator 2 view .LVU175
	.loc 1 315 33 is_stmt 0 discriminator 2 view .LVU176
	strb	r1, [r3]
	.loc 1 318 3 is_stmt 1 discriminator 2 view .LVU177
	.loc 1 318 24 is_stmt 0 discriminator 2 view .LVU178
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxtb	r3, r3
	.loc 1 318 22 discriminator 2 view .LVU179
	strb	r3, [sp, #7]
	.loc 1 321 3 is_stmt 1 discriminator 2 view .LVU180
	.loc 1 321 63 is_stmt 0 discriminator 2 view .LVU181
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	.loc 1 326 31 discriminator 2 view .LVU182
	ldrb	r2, [sp, #7]	@ zero_extendqisi2
	.loc 1 321 63 discriminator 2 view .LVU183
	and	r3, r3, #80
	.loc 1 325 22 discriminator 2 view .LVU184
	movs	r1, #7
	.loc 1 326 8 discriminator 2 view .LVU185
	lsls	r2, r2, #24
	.loc 1 321 24 discriminator 2 view .LVU186
	strb	r3, [r4]
	.loc 1 325 3 is_stmt 1 discriminator 2 view .LVU187
	.loc 1 325 22 is_stmt 0 discriminator 2 view .LVU188
	str	r1, [r0]
	.loc 1 326 3 is_stmt 1 discriminator 2 view .LVU189
	.loc 1 326 8 discriminator 2 view .LVU190
	it	mi
	movmi	r2, #6
	bpl	.L56
.L53:
	.loc 1 328 4 view .LVU191
	.loc 1 329 4 view .LVU192
	.loc 1 329 23 is_stmt 0 view .LVU193
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	lsls	r3, r3, #1
	uxtb	r3, r3
	strb	r3, [sp, #7]
	.loc 1 326 8 is_stmt 1 view .LVU194
	.loc 1 326 31 is_stmt 0 view .LVU195
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	.loc 1 326 8 view .LVU196
	lsls	r3, r3, #24
	mov	r1, r2
	add	r2, r2, #-1
	bmi	.L53
	.loc 1 346 4 is_stmt 1 view .LVU197
	cmp	r1, #3
	beq	.L55
	str	r1, [r0]
.L56:
	.loc 1 346 4 view .LVU198
.LBB85:
.LBI85:
	.loc 2 191 30 view .LVU199
.LBB86:
	.loc 2 193 1 view .LVU200
	.loc 2 195 2 view .LVU201
	.syntax unified
@ 195 "Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F/portmacro.h" 1
		mov r3, #80												
	msr basepri, r3											
	isb														
	dsb														

@ 0 "" 2
.LVL17:
	.thumb
	.syntax unified
.L54:
	.loc 2 195 2 is_stmt 0 view .LVU202
.LBE86:
.LBE85:
	.loc 1 346 4 is_stmt 1 discriminator 4 view .LVU203
	.loc 1 346 4 discriminator 4 view .LVU204
	.loc 1 346 4 discriminator 4 view .LVU205
	.loc 1 346 4 discriminator 4 view .LVU206
	.loc 1 346 4 discriminator 4 view .LVU207
	.loc 1 346 4 discriminator 4 view .LVU208
	b	.L54
.LVL18:
.L67:
.LCFI7:
	.cfi_def_cfa_offset 0
	.cfi_restore 4
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 14
	.loc 1 346 4 is_stmt 0 discriminator 4 view .LVU209
.LBE88:
	.loc 1 297 2 is_stmt 1 view .LVU210
.LBB89:
.LBI89:
	.loc 2 191 30 view .LVU211
.LBB90:
	.loc 2 193 1 view .LVU212
	.loc 2 195 2 view .LVU213
	.syntax unified
@ 195 "Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F/portmacro.h" 1
		mov r3, #80												
	msr basepri, r3											
	isb														
	dsb														

@ 0 "" 2
.LVL19:
	.thumb
	.syntax unified
.L52:
	.loc 2 195 2 is_stmt 0 view .LVU214
.LBE90:
.LBE89:
	.loc 1 297 2 is_stmt 1 discriminator 3 view .LVU215
	.loc 1 297 2 discriminator 3 view .LVU216
	.loc 1 297 2 discriminator 3 view .LVU217
	.loc 1 297 2 discriminator 3 view .LVU218
	.loc 1 297 2 discriminator 3 view .LVU219
	.loc 1 297 2 discriminator 3 view .LVU220
	b	.L52
.L66:
	.loc 1 296 2 view .LVU221
.LBB91:
.LBI91:
	.loc 2 191 30 view .LVU222
.LBB92:
	.loc 2 193 1 view .LVU223
	.loc 2 195 2 view .LVU224
	.syntax unified
@ 195 "Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F/portmacro.h" 1
		mov r3, #80												
	msr basepri, r3											
	isb														
	dsb														

@ 0 "" 2
.LVL20:
	.thumb
	.syntax unified
.L50:
	.loc 2 195 2 is_stmt 0 view .LVU225
.LBE92:
.LBE91:
	.loc 1 296 2 is_stmt 1 discriminator 2 view .LVU226
	.loc 1 296 2 discriminator 2 view .LVU227
	.loc 1 296 2 discriminator 2 view .LVU228
	.loc 1 296 2 discriminator 2 view .LVU229
	.loc 1 296 2 discriminator 2 view .LVU230
	.loc 1 296 2 discriminator 2 view .LVU231
	b	.L50
.LVL21:
.L55:
.LCFI8:
	.cfi_def_cfa_offset 32
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
.LBB93:
	.loc 1 346 85 discriminator 2 view .LVU232
	.loc 1 352 3 discriminator 2 view .LVU233
	.loc 1 353 3 discriminator 2 view .LVU234
	.loc 1 357 33 is_stmt 0 discriminator 2 view .LVU235
	ldr	r3, [sp, #8]
	ldr	r2, .L68+8
.LBE93:
	.loc 1 370 20 discriminator 2 view .LVU236
	ldr	r5, .L68+20
	.loc 1 362 23 discriminator 2 view .LVU237
	mov	r4, #-536813568
.LBB94:
	.loc 1 353 22 discriminator 2 view .LVU238
	mov	r1, #768
	.loc 1 357 33 discriminator 2 view .LVU239
	uxtb	r3, r3
	.loc 1 353 22 discriminator 2 view .LVU240
	str	r1, [r0]
	.loc 1 357 3 is_stmt 1 discriminator 2 view .LVU241
	.loc 1 357 33 is_stmt 0 discriminator 2 view .LVU242
	strb	r3, [r2]
.LBE94:
	.loc 1 362 2 is_stmt 1 discriminator 2 view .LVU243
	.loc 1 362 23 is_stmt 0 discriminator 2 view .LVU244
	ldr	r3, [r4, #3360]
	orr	r3, r3, #15728640
	str	r3, [r4, #3360]
	.loc 1 363 2 is_stmt 1 discriminator 2 view .LVU245
	.loc 1 363 23 is_stmt 0 discriminator 2 view .LVU246
	ldr	r3, [r4, #3360]
	orr	r3, r3, #-268435456
	str	r3, [r4, #3360]
	.loc 1 367 2 is_stmt 1 discriminator 2 view .LVU247
	.loc 1 370 20 is_stmt 0 discriminator 2 view .LVU248
	movs	r6, #0
	.loc 1 367 2 discriminator 2 view .LVU249
	bl	vPortSetupTimerInterrupt
.LVL22:
	.loc 1 370 2 is_stmt 1 discriminator 2 view .LVU250
	.loc 1 370 20 is_stmt 0 discriminator 2 view .LVU251
	str	r6, [r5]
	.loc 1 373 2 is_stmt 1 discriminator 2 view .LVU252
	bl	vPortEnableVFP
.LVL23:
	.loc 1 376 2 discriminator 2 view .LVU253
	.loc 1 376 17 is_stmt 0 discriminator 2 view .LVU254
	ldr	r3, [r4, #3892]
	orr	r3, r3, #-1073741824
	str	r3, [r4, #3892]
	.loc 1 379 2 is_stmt 1 discriminator 2 view .LVU255
	bl	prvPortStartFirstTask
.LVL24:
	.loc 1 387 2 discriminator 2 view .LVU256
	bl	vTaskSwitchContext
.LVL25:
	.loc 1 388 2 discriminator 2 view .LVU257
.LBB95:
.LBI95:
	.loc 1 217 13 discriminator 2 view .LVU258
.LBB96:
	.loc 1 219 1 discriminator 2 view .LVU259
	.loc 1 227 2 is_stmt 0 discriminator 2 view .LVU260
	ldr	r3, [r5]
	.loc 1 219 19 discriminator 2 view .LVU261
	str	r6, [sp, #12]
	.loc 1 227 2 is_stmt 1 discriminator 2 view .LVU262
	adds	r3, r3, #1
	beq	.L57
.LBB97:
.LBI97:
	.loc 1 217 13 view .LVU263
.LBB98:
	.loc 1 227 2 view .LVU264
.LBB99:
.LBI99:
	.loc 2 191 30 view .LVU265
.LBB100:
	.loc 2 193 1 view .LVU266
	.loc 2 195 2 view .LVU267
	.syntax unified
@ 195 "Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F/portmacro.h" 1
		mov r3, #80												
	msr basepri, r3											
	isb														
	dsb														

@ 0 "" 2
.LVL26:
	.thumb
	.syntax unified
.L58:
	.loc 2 195 2 is_stmt 0 view .LVU268
.LBE100:
.LBE99:
	.loc 1 227 2 is_stmt 1 view .LVU269
	.loc 1 227 2 view .LVU270
	.loc 1 227 2 view .LVU271
	.loc 1 227 2 view .LVU272
	.loc 1 227 2 view .LVU273
	.loc 1 227 2 view .LVU274
	b	.L58
.L57:
.LBE98:
.LBE97:
	.loc 1 227 43 view .LVU275
	.loc 1 228 2 view .LVU276
.LBB101:
.LBI101:
	.loc 2 191 30 view .LVU277
.LBB102:
	.loc 2 193 1 view .LVU278
	.loc 2 195 2 view .LVU279
	.syntax unified
@ 195 "Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F/portmacro.h" 1
		mov r3, #80												
	msr basepri, r3											
	isb														
	dsb														

@ 0 "" 2
.LVL27:
	.thumb
	.syntax unified
.L59:
	.loc 2 195 2 is_stmt 0 view .LVU280
.LBE102:
.LBE101:
	.loc 1 238 2 is_stmt 1 view .LVU281
	.loc 1 229 7 view .LVU282
	.loc 1 229 17 is_stmt 0 view .LVU283
	ldr	r3, [sp, #12]
	.loc 1 229 7 view .LVU284
	cmp	r3, #0
	beq	.L59
.LBE96:
.LBE95:
	.loc 1 391 2 is_stmt 1 discriminator 2 view .LVU285
	.loc 1 392 1 is_stmt 0 discriminator 2 view .LVU286
	movs	r0, #0
	add	sp, sp, #16
.LCFI9:
	.cfi_def_cfa_offset 16
	@ sp needed
	pop	{r4, r5, r6, pc}
.L69:
	.align	2
.L68:
	.word	1091551857
	.word	1091551856
	.word	-536812544
	.word	.LANCHOR1
	.word	.LANCHOR2
	.word	.LANCHOR0
	.cfi_endproc
.LFE9:
	.size	xPortStartScheduler, .-xPortStartScheduler
	.section	.text.vPortValidateInterruptPriority,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	vPortValidateInterruptPriority
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	vPortValidateInterruptPriority, %function
vPortValidateInterruptPriority:
.LFB17:
	.loc 1 718 2 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 719 2 view .LVU288
	.loc 1 720 2 view .LVU289
	.loc 1 723 3 view .LVU290
	.syntax unified
@ 723 "Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F/port.c" 1
	mrs r3, ipsr
@ 0 "" 2
.LVL28:
	.loc 1 726 3 view .LVU291
	.loc 1 726 5 is_stmt 0 view .LVU292
	.thumb
	.syntax unified
	cmp	r3, #15
	bls	.L71
	.loc 1 729 4 is_stmt 1 view .LVU293
	.loc 1 729 52 is_stmt 0 view .LVU294
	ldr	r1, .L75
	.loc 1 754 4 view .LVU295
	ldr	r2, .L75+4
	.loc 1 729 22 view .LVU296
	ldrb	r3, [r3, r1]	@ zero_extendqisi2
.LVL29:
	.loc 1 754 4 is_stmt 1 view .LVU297
	ldrb	r2, [r2]	@ zero_extendqisi2
	cmp	r2, r3
	bls	.L71
	.loc 1 754 4 view .LVU298
.LBB103:
.LBI103:
	.loc 2 191 30 view .LVU299
.LBB104:
	.loc 2 193 1 view .LVU300
	.loc 2 195 2 view .LVU301
	.syntax unified
@ 195 "Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F/portmacro.h" 1
		mov r3, #80												
	msr basepri, r3											
	isb														
	dsb														

@ 0 "" 2
.LVL30:
	.thumb
	.syntax unified
.L72:
	.loc 2 195 2 is_stmt 0 view .LVU302
.LBE104:
.LBE103:
	.loc 1 754 4 is_stmt 1 discriminator 1 view .LVU303
	.loc 1 754 4 discriminator 1 view .LVU304
	.loc 1 754 4 discriminator 1 view .LVU305
	.loc 1 754 4 discriminator 1 view .LVU306
	.loc 1 754 4 discriminator 1 view .LVU307
	.loc 1 754 4 discriminator 1 view .LVU308
	b	.L72
.L71:
	.loc 1 754 61 discriminator 2 view .LVU309
	.loc 1 770 3 discriminator 2 view .LVU310
	mov	r3, #-536813568
	ldr	r2, .L75+8
	ldr	r3, [r3, #3340]
	ldr	r2, [r2]
	and	r3, r3, #1792
	cmp	r3, r2
	bls	.L70
	.loc 1 770 3 view .LVU311
.LBB105:
.LBI105:
	.loc 2 191 30 view .LVU312
.LBB106:
	.loc 2 193 1 view .LVU313
	.loc 2 195 2 view .LVU314
	.syntax unified
@ 195 "Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F/portmacro.h" 1
		mov r3, #80												
	msr basepri, r3											
	isb														
	dsb														

@ 0 "" 2
.LVL31:
	.thumb
	.syntax unified
.L74:
	.loc 2 195 2 is_stmt 0 view .LVU315
.LBE106:
.LBE105:
	.loc 1 770 3 is_stmt 1 discriminator 2 view .LVU316
	.loc 1 770 3 discriminator 2 view .LVU317
	.loc 1 770 3 discriminator 2 view .LVU318
	.loc 1 770 3 discriminator 2 view .LVU319
	.loc 1 770 3 discriminator 2 view .LVU320
	.loc 1 770 3 discriminator 2 view .LVU321
	b	.L74
.L70:
	.loc 1 771 2 is_stmt 0 view .LVU322
	bx	lr
.L76:
	.align	2
.L75:
	.word	-536812560
	.word	.LANCHOR1
	.word	.LANCHOR2
	.cfi_endproc
.LFE17:
	.size	vPortValidateInterruptPriority, .-vPortValidateInterruptPriority
	.section	.bss.ucMaxSysCallPriority,"aw",%nobits
	.set	.LANCHOR1,. + 0
	.type	ucMaxSysCallPriority, %object
	.size	ucMaxSysCallPriority, 1
ucMaxSysCallPriority:
	.space	1
	.section	.bss.ulMaxPRIGROUPValue,"aw",%nobits
	.align	2
	.set	.LANCHOR2,. + 0
	.type	ulMaxPRIGROUPValue, %object
	.size	ulMaxPRIGROUPValue, 4
ulMaxPRIGROUPValue:
	.space	4
	.section	.data.uxCriticalNesting,"aw"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	uxCriticalNesting, %object
	.size	uxCriticalNesting, 4
uxCriticalNesting:
	.word	-1431655766
	.text
.Letext0:
	.file 3 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/machine/_default_types.h"
	.file 4 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/sys/_stdint.h"
	.file 5 "Middlewares/Third_Party/FreeRTOS/Source/include/projdefs.h"
	.file 6 "Inc/FreeRTOSConfig.h"
	.file 7 "Middlewares/Third_Party/FreeRTOS/Source/include/task.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x661
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0xc
	.4byte	.LASF52
	.4byte	.LASF53
	.4byte	.Ldebug_ranges0+0x48
	.4byte	0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF2
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x3
	.byte	0x2b
	.byte	0x18
	.4byte	0x58
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x3
	.byte	0x4f
	.byte	0x19
	.4byte	0x80
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x4
	.byte	0x18
	.byte	0x13
	.4byte	0x4c
	.uleb128 0x5
	.4byte	0x8e
	.uleb128 0x6
	.4byte	0x9a
	.uleb128 0x6
	.4byte	0x8e
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x4
	.byte	0x30
	.byte	0x14
	.4byte	0x74
	.uleb128 0x6
	.4byte	0xa9
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x6
	.byte	0x35
	.byte	0x13
	.4byte	0xa9
	.byte	0x1
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x5
	.byte	0x23
	.byte	0x10
	.4byte	0xd4
	.uleb128 0x8
	.byte	0x4
	.4byte	0xda
	.uleb128 0x9
	.byte	0x1
	.4byte	0xe6
	.uleb128 0xa
	.4byte	0xe6
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x2
	.byte	0x37
	.byte	0x18
	.4byte	0xa9
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x2
	.byte	0x38
	.byte	0xe
	.4byte	0x6d
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x2
	.byte	0x39
	.byte	0x17
	.4byte	0x80
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x2
	.byte	0x3f
	.byte	0x13
	.4byte	0xa9
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF19
	.uleb128 0x8
	.byte	0x4
	.4byte	0xe8
	.uleb128 0xc
	.4byte	.LASF20
	.byte	0x1
	.byte	0x92
	.byte	0x14
	.4byte	0x100
	.byte	0x5
	.byte	0x3
	.4byte	uxCriticalNesting
	.uleb128 0xc
	.4byte	.LASF21
	.byte	0x1
	.byte	0xb1
	.byte	0x12
	.4byte	0x8e
	.byte	0x5
	.byte	0x3
	.4byte	ucMaxSysCallPriority
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0x1
	.byte	0xb2
	.byte	0x13
	.4byte	0xa9
	.byte	0x5
	.byte	0x3
	.4byte	ulMaxPRIGROUPValue
	.uleb128 0xd
	.4byte	.LASF23
	.byte	0x1
	.byte	0xb3
	.byte	0x29
	.4byte	0x171
	.4byte	0xe000e3f0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x9f
	.uleb128 0x5
	.4byte	0x16b
	.uleb128 0xe
	.byte	0x1
	.4byte	.LASF27
	.byte	0x1
	.2byte	0x2cd
	.byte	0x7
	.byte	0x1
	.4byte	.LFB17
	.4byte	.LFE17
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x1f8
	.uleb128 0xf
	.4byte	.LASF25
	.byte	0x1
	.2byte	0x2cf
	.byte	0xb
	.4byte	0xa9
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0xf
	.4byte	.LASF26
	.byte	0x1
	.2byte	0x2d0
	.byte	0xa
	.4byte	0x8e
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x10
	.4byte	0x5b7
	.4byte	.LBI103
	.byte	.LVU299
	.4byte	.LBB103
	.4byte	.LBE103
	.byte	0x1
	.2byte	0x2f2
	.byte	0x4
	.4byte	0x1db
	.uleb128 0x11
	.4byte	0x5c5
	.byte	0
	.uleb128 0x12
	.4byte	0x5b7
	.4byte	.LBI105
	.byte	.LVU312
	.4byte	.LBB105
	.4byte	.LBE105
	.byte	0x1
	.2byte	0x302
	.byte	0x3
	.uleb128 0x11
	.4byte	0x5c5
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x2bd
	.byte	0xd
	.byte	0x1
	.4byte	.LFB16
	.4byte	.LFE16
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x14
	.byte	0x1
	.4byte	.LASF29
	.byte	0x1
	.2byte	0x2a7
	.byte	0x1e
	.byte	0x1
	.4byte	.LFB15
	.4byte	.LFE15
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF28
	.byte	0x1
	.2byte	0x1e8
	.byte	0x6
	.byte	0x1
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LLST5
	.byte	0x1
	.4byte	0x295
	.uleb128 0x16
	.4byte	0x5b7
	.4byte	.LBI61
	.byte	.LVU125
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.2byte	0x1ee
	.byte	0x2
	.4byte	0x263
	.uleb128 0x17
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x11
	.4byte	0x5c5
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	0x59c
	.4byte	.LBI65
	.byte	.LVU136
	.4byte	.LBB65
	.4byte	.LBE65
	.byte	0x1
	.2byte	0x1f8
	.byte	0x2
	.4byte	0x28b
	.uleb128 0x18
	.4byte	0x5aa
	.4byte	.LLST6
	.4byte	.LVUS6
	.byte	0
	.uleb128 0x19
	.4byte	.LVL13
	.4byte	0x646
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x1af
	.byte	0x6
	.byte	0x1
	.4byte	.LFB13
	.4byte	.LFE13
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x1a4
	.byte	0x6
	.byte	0x1
	.4byte	.LFB12
	.4byte	.LFE12
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x30c
	.uleb128 0x10
	.4byte	0x5b7
	.4byte	.LBI57
	.byte	.LVU100
	.4byte	.LBB57
	.4byte	.LBE57
	.byte	0x1
	.2byte	0x1a6
	.byte	0x2
	.4byte	0x2e7
	.uleb128 0x11
	.4byte	0x5c5
	.byte	0
	.uleb128 0x12
	.4byte	0x59c
	.4byte	.LBI59
	.byte	.LVU116
	.4byte	.LBB59
	.4byte	.LBE59
	.byte	0x1
	.2byte	0x1aa
	.byte	0x3
	.uleb128 0x18
	.4byte	0x5aa
	.4byte	.LLST4
	.4byte	.LVUS4
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x193
	.byte	0x6
	.byte	0x1
	.4byte	.LFB11
	.4byte	.LFE11
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x364
	.uleb128 0x10
	.4byte	0x5b7
	.4byte	.LBI53
	.byte	.LVU75
	.4byte	.LBB53
	.4byte	.LBE53
	.byte	0x1
	.2byte	0x195
	.byte	0x2
	.4byte	0x347
	.uleb128 0x11
	.4byte	0x5c5
	.byte	0
	.uleb128 0x12
	.4byte	0x5b7
	.4byte	.LBI55
	.byte	.LVU87
	.4byte	.LBB55
	.4byte	.LBE55
	.byte	0x1
	.2byte	0x19f
	.byte	0x3
	.uleb128 0x11
	.4byte	0x5c5
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x18b
	.byte	0x6
	.byte	0x1
	.4byte	.LFB10
	.4byte	.LFE10
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x39c
	.uleb128 0x12
	.4byte	0x5b7
	.4byte	.LBI51
	.byte	.LVU62
	.4byte	.LBB51
	.4byte	.LBE51
	.byte	0x1
	.2byte	0x18f
	.byte	0x2
	.uleb128 0x11
	.4byte	0x5c5
	.byte	0
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x11f
	.byte	0xc
	.byte	0x1
	.4byte	0xf4
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LLST7
	.byte	0x1
	.4byte	0x4f4
	.uleb128 0x1b
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0x417
	.uleb128 0x1c
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x12d
	.byte	0x15
	.4byte	0xb5
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xf
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x12e
	.byte	0x1c
	.4byte	0x4fa
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x1c
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x12f
	.byte	0x14
	.4byte	0xa4
	.byte	0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x12
	.4byte	0x5b7
	.4byte	.LBI85
	.byte	.LVU199
	.4byte	.LBB85
	.4byte	.LBE85
	.byte	0x1
	.2byte	0x15a
	.byte	0x4
	.uleb128 0x11
	.4byte	0x5c5
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	0x5b7
	.4byte	.LBI89
	.byte	.LVU211
	.4byte	.LBB89
	.4byte	.LBE89
	.byte	0x1
	.2byte	0x129
	.byte	0x2
	.4byte	0x437
	.uleb128 0x11
	.4byte	0x5c5
	.byte	0
	.uleb128 0x10
	.4byte	0x5b7
	.4byte	.LBI91
	.byte	.LVU222
	.4byte	.LBB91
	.4byte	.LBE91
	.byte	0x1
	.2byte	0x128
	.byte	0x2
	.4byte	0x457
	.uleb128 0x11
	.4byte	0x5c5
	.byte	0
	.uleb128 0x10
	.4byte	0x52b
	.4byte	.LBI95
	.byte	.LVU258
	.4byte	.LBB95
	.4byte	.LBE95
	.byte	0x1
	.2byte	0x184
	.byte	0x2
	.4byte	0x4cf
	.uleb128 0x1d
	.4byte	0x539
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1e
	.4byte	0x52b
	.4byte	.LBI97
	.byte	.LVU263
	.4byte	.LBB97
	.4byte	.LBE97
	.byte	0x1
	.byte	0xd9
	.byte	0xd
	.4byte	0x4b3
	.uleb128 0x11
	.4byte	0x539
	.uleb128 0x1f
	.4byte	0x5b7
	.4byte	.LBI99
	.byte	.LVU265
	.4byte	.LBB99
	.4byte	.LBE99
	.byte	0x1
	.byte	0xe3
	.byte	0x2
	.uleb128 0x11
	.4byte	0x5c5
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	0x5b7
	.4byte	.LBI101
	.byte	.LVU277
	.4byte	.LBB101
	.4byte	.LBE101
	.byte	0x1
	.byte	0xe4
	.byte	0x2
	.uleb128 0x11
	.4byte	0x5c5
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LVL22
	.4byte	0x20e
	.uleb128 0x19
	.4byte	.LVL23
	.4byte	0x1f8
	.uleb128 0x19
	.4byte	.LVL24
	.4byte	0x4ff
	.uleb128 0x19
	.4byte	.LVL25
	.4byte	0x655
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xa4
	.uleb128 0x5
	.4byte	0x4f4
	.uleb128 0x13
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x105
	.byte	0xd
	.byte	0x1
	.4byte	.LFB8
	.4byte	.LFE8
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x20
	.byte	0x1
	.4byte	.LASF39
	.byte	0x1
	.byte	0xf2
	.byte	0x6
	.byte	0x1
	.4byte	.LFB7
	.4byte	.LFE7
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x21
	.4byte	.LASF44
	.byte	0x1
	.byte	0xd9
	.byte	0xd
	.byte	0x1
	.byte	0x1
	.4byte	0x546
	.uleb128 0x22
	.4byte	.LASF47
	.byte	0x1
	.byte	0xdb
	.byte	0x13
	.4byte	0xb5
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.4byte	.LASF41
	.byte	0x1
	.byte	0xbb
	.byte	0xe
	.byte	0x1
	.4byte	0x11f
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LLST1
	.byte	0x1
	.4byte	0x59c
	.uleb128 0x24
	.4byte	.LASF42
	.byte	0x1
	.byte	0xbb
	.byte	0x32
	.4byte	0x11f
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x24
	.4byte	.LASF43
	.byte	0x1
	.byte	0xbb
	.byte	0x4f
	.4byte	0xc8
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x25
	.4byte	.LASF54
	.byte	0x1
	.byte	0xbb
	.byte	0x5d
	.4byte	0xe6
	.byte	0x1
	.byte	0x52
	.byte	0
	.uleb128 0x21
	.4byte	.LASF45
	.byte	0x2
	.byte	0xe3
	.byte	0x1e
	.byte	0x1
	.byte	0x3
	.4byte	0x5b7
	.uleb128 0x26
	.4byte	.LASF55
	.byte	0x2
	.byte	0xe3
	.byte	0x38
	.4byte	0xa9
	.byte	0
	.uleb128 0x21
	.4byte	.LASF46
	.byte	0x2
	.byte	0xbf
	.byte	0x1e
	.byte	0x1
	.byte	0x3
	.4byte	0x5d2
	.uleb128 0x22
	.4byte	.LASF48
	.byte	0x2
	.byte	0xc1
	.byte	0xa
	.4byte	0xa9
	.byte	0
	.uleb128 0x27
	.4byte	0x52b
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x646
	.uleb128 0x1d
	.4byte	0x539
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x1e
	.4byte	0x52b
	.4byte	.LBI45
	.byte	.LVU14
	.4byte	.LBB45
	.4byte	.LBE45
	.byte	0x1
	.byte	0xd9
	.byte	0xd
	.4byte	0x62a
	.uleb128 0x11
	.4byte	0x539
	.uleb128 0x1f
	.4byte	0x5b7
	.4byte	.LBI47
	.byte	.LVU16
	.4byte	.LBB47
	.4byte	.LBE47
	.byte	0x1
	.byte	0xe3
	.byte	0x2
	.uleb128 0x11
	.4byte	0x5c5
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	0x5b7
	.4byte	.LBI49
	.byte	.LVU28
	.4byte	.LBB49
	.4byte	.LBE49
	.byte	0x1
	.byte	0xe4
	.byte	0x2
	.uleb128 0x11
	.4byte	0x5c5
	.byte	0
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.byte	0x1
	.4byte	.LASF49
	.4byte	.LASF49
	.byte	0x7
	.2byte	0x927
	.byte	0xc
	.uleb128 0x28
	.byte	0x1
	.byte	0x1
	.4byte	.LASF50
	.4byte	.LASF50
	.byte	0x7
	.2byte	0x97b
	.byte	0x17
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
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xa
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
	.uleb128 0x1c
	.uleb128 0x6
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
	.uleb128 0x10
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x24
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
.LVUS9:
	.uleb128 .LVU291
	.uleb128 .LVU297
.LLST9:
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 .LVU297
	.uleb128 .LVU302
.LLST10:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LFB14
	.4byte	.LCFI4
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI4
	.4byte	.LFE14
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 .LVU136
	.uleb128 .LVU138
.LLST6:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU116
	.uleb128 .LVU118
.LLST4:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LFB9
	.4byte	.LCFI5
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI5
	.4byte	.LCFI6
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI6
	.4byte	.LCFI7
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	.LCFI7
	.4byte	.LCFI8
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI8
	.4byte	.LCFI9
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	.LCFI9
	.4byte	.LFE9
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 .LVU164
	.uleb128 .LVU209
	.uleb128 .LVU232
	.uleb128 0
.LLST8:
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0xe000e400
	.4byte	.LVL21
	.4byte	.LFE9
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0xe000e400
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LFB5
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
	.4byte	.LFE5
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU39
	.uleb128 .LVU39
	.uleb128 .LVU45
	.uleb128 .LVU45
	.uleb128 .LVU50
	.uleb128 .LVU50
	.uleb128 .LVU53
	.uleb128 .LVU53
	.uleb128 .LVU55
	.uleb128 .LVU55
	.uleb128 0
.LLST2:
	.4byte	.LVL2
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x3
	.byte	0x70
	.sleb128 -4
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x3
	.byte	0x70
	.sleb128 -8
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x3
	.byte	0x70
	.sleb128 -32
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x4
	.byte	0x70
	.sleb128 -68
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU47
	.uleb128 .LVU47
	.uleb128 0
.LLST3:
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL4
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LFB6
	.4byte	.LCFI0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI0
	.4byte	.LCFI1
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI1
	.4byte	.LFE6
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
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
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB61
	.4byte	.LBE61
	.4byte	.LBB64
	.4byte	.LBE64
	.4byte	0
	.4byte	0
	.4byte	.LBB84
	.4byte	.LBE84
	.4byte	.LBB87
	.4byte	.LBE87
	.4byte	.LBB88
	.4byte	.LBE88
	.4byte	.LBB93
	.4byte	.LBE93
	.4byte	.LBB94
	.4byte	.LBE94
	.4byte	0
	.4byte	0
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF8:
	.ascii	"__uint8_t\000"
.LASF32:
	.ascii	"vPortEnterCritical\000"
.LASF43:
	.ascii	"pxCode\000"
.LASF33:
	.ascii	"vPortEndScheduler\000"
.LASF18:
	.ascii	"TickType_t\000"
.LASF50:
	.ascii	"vTaskSwitchContext\000"
.LASF28:
	.ascii	"SysTick_Handler\000"
.LASF7:
	.ascii	"long int\000"
.LASF37:
	.ascii	"vPortEnableVFP\000"
.LASF12:
	.ascii	"uint8_t\000"
.LASF5:
	.ascii	"short int\000"
.LASF34:
	.ascii	"ulOriginalPriority\000"
.LASF44:
	.ascii	"prvTaskExitError\000"
.LASF14:
	.ascii	"TaskFunction_t\000"
.LASF26:
	.ascii	"ucCurrentPriority\000"
.LASF47:
	.ascii	"ulDummy\000"
.LASF22:
	.ascii	"ulMaxPRIGROUPValue\000"
.LASF35:
	.ascii	"pucFirstUserPriorityRegister\000"
.LASF10:
	.ascii	"long unsigned int\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF24:
	.ascii	"SystemCoreClock\000"
.LASF9:
	.ascii	"__uint32_t\000"
.LASF4:
	.ascii	"unsigned char\000"
.LASF52:
	.ascii	"Middlewares/Third_Party/FreeRTOS/Source/portable/GC"
	.ascii	"C/ARM_CM4F/port.c\000"
.LASF48:
	.ascii	"ulNewBASEPRI\000"
.LASF41:
	.ascii	"pxPortInitialiseStack\000"
.LASF49:
	.ascii	"xTaskIncrementTick\000"
.LASF36:
	.ascii	"ucMaxPriorityValue\000"
.LASF45:
	.ascii	"vPortSetBASEPRI\000"
.LASF15:
	.ascii	"StackType_t\000"
.LASF0:
	.ascii	"unsigned int\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF46:
	.ascii	"vPortRaiseBASEPRI\000"
.LASF20:
	.ascii	"uxCriticalNesting\000"
.LASF51:
	.ascii	"GNU C17 10.2.1 20201103 (release) -mcpu=cortex-m4 -"
	.ascii	"mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=hard -march=ar"
	.ascii	"mv7e-m+fp -g -gdwarf-2 -O3 -fdata-sections -ffuncti"
	.ascii	"on-sections\000"
.LASF29:
	.ascii	"vPortSetupTimerInterrupt\000"
.LASF1:
	.ascii	"long long int\000"
.LASF23:
	.ascii	"pcInterruptPriorityRegisters\000"
.LASF39:
	.ascii	"SVC_Handler\000"
.LASF54:
	.ascii	"pvParameters\000"
.LASF25:
	.ascii	"ulCurrentInterrupt\000"
.LASF53:
	.ascii	"/home/joel/share/EVSPIN32G4_Shinano\000"
.LASF42:
	.ascii	"pxTopOfStack\000"
.LASF21:
	.ascii	"ucMaxSysCallPriority\000"
.LASF30:
	.ascii	"PendSV_Handler\000"
.LASF31:
	.ascii	"vPortExitCritical\000"
.LASF13:
	.ascii	"uint32_t\000"
.LASF55:
	.ascii	"ulNewMaskValue\000"
.LASF19:
	.ascii	"char\000"
.LASF38:
	.ascii	"prvPortStartFirstTask\000"
.LASF2:
	.ascii	"long double\000"
.LASF3:
	.ascii	"signed char\000"
.LASF40:
	.ascii	"xPortStartScheduler\000"
.LASF27:
	.ascii	"vPortValidateInterruptPriority\000"
.LASF17:
	.ascii	"UBaseType_t\000"
.LASF16:
	.ascii	"BaseType_t\000"
	.ident	"GCC: (GNU Arm Embedded Toolchain 10-2020-q4-major) 10.2.1 20201103 (release)"
