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
	.file	"pwm_common.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.startTimers,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	startTimers
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	startTimers, %function
startTimers:
.LFB1435:
	.file 1 "Src/pwm_common.c"
	.loc 1 47 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 48 3 view .LVU1
	.loc 1 49 3 view .LVU2
	.loc 1 52 3 view .LVU3
.LVL0:
.LBB26:
.LBI26:
	.file 2 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_ll_tim.h"
	.loc 2 4087 22 view .LVU4
.LBB27:
	.loc 2 4089 3 view .LVU5
	ldr	r1, .L7
.LBE27:
.LBE26:
.LBB30:
.LBB31:
	.file 3 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_ll_bus.h"
	.loc 3 997 12 is_stmt 0 view .LVU6
	ldr	r2, .L7+4
.LBE31:
.LBE30:
.LBB34:
.LBB28:
	.loc 2 4089 3 view .LVU7
	ldr	r3, [r1, #8]
	bic	r3, r3, #3145728
	bic	r3, r3, #112
	orr	r3, r3, #16
.LBE28:
.LBE34:
	.loc 1 47 1 view .LVU8
	push	{r4, r5}
.LCFI0:
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 5, -4
.LBB35:
.LBB29:
	.loc 2 4089 3 view .LVU9
	str	r3, [r1, #8]
.LVL1:
	.loc 2 4089 3 view .LVU10
.LBE29:
.LBE35:
	.loc 1 53 3 is_stmt 1 view .LVU11
.LBB36:
.LBI36:
	.loc 2 4057 22 view .LVU12
.LBB37:
	.loc 2 4059 3 view .LVU13
	ldr	r3, [r1, #8]
	bic	r3, r3, #65536
	bic	r3, r3, #7
	orr	r3, r3, #6
	str	r3, [r1, #8]
.LVL2:
	.loc 2 4059 3 is_stmt 0 view .LVU14
.LBE37:
.LBE36:
	.loc 1 55 3 is_stmt 1 view .LVU15
.LBB38:
.LBI30:
	.loc 3 995 26 view .LVU16
.LBB32:
	.loc 3 997 3 view .LVU17
	.loc 3 997 12 is_stmt 0 view .LVU18
	ldr	r3, [r2, #88]
	.loc 3 997 63 view .LVU19
	lsls	r3, r3, #31
.LBE32:
.LBE38:
	.loc 1 47 1 view .LVU20
	sub	sp, sp, #8
.LCFI1:
	.cfi_def_cfa_offset 16
.LBB39:
.LBB33:
	.loc 3 997 63 view .LVU21
	bmi	.L6
.LVL3:
	.loc 3 997 63 view .LVU22
.LBE33:
.LBE39:
	.loc 1 56 3 is_stmt 1 view .LVU23
	.loc 1 59 5 view .LVU24
.LBB40:
.LBI40:
	.loc 3 913 22 view .LVU25
.LBB41:
	.loc 3 915 3 view .LVU26
	.loc 3 916 3 view .LVU27
	ldr	r3, [r2, #88]
	orr	r3, r3, #1
	str	r3, [r2, #88]
	.loc 3 918 3 view .LVU28
	.loc 3 918 12 is_stmt 0 view .LVU29
	ldr	r3, [r2, #88]
.LBE41:
.LBE40:
.LBB43:
.LBB44:
	.loc 2 6588 3 view .LVU30
	mov	r1, #1073741824
.LBE44:
.LBE43:
.LBB46:
.LBB42:
	.loc 3 918 12 view .LVU31
	and	r3, r3, #1
	.loc 3 918 10 view .LVU32
	str	r3, [sp, #4]
	.loc 3 919 3 is_stmt 1 view .LVU33
	ldr	r3, [sp, #4]
.LVL4:
	.loc 3 919 3 is_stmt 0 view .LVU34
.LBE42:
.LBE46:
	.loc 1 60 5 is_stmt 1 view .LVU35
.LBB47:
.LBI43:
	.loc 2 6586 22 view .LVU36
.LBB45:
	.loc 2 6588 3 view .LVU37
	ldr	r3, [r1, #20]
	orr	r3, r3, #1
	str	r3, [r1, #20]
.LVL5:
	.loc 2 6588 3 is_stmt 0 view .LVU38
.LBE45:
.LBE47:
	.loc 1 61 5 is_stmt 1 view .LVU39
.LBB48:
.LBI48:
	.loc 3 1069 22 view .LVU40
.LBB49:
	.loc 3 1071 3 view .LVU41
	ldr	r3, [r2, #88]
	bic	r3, r3, #1
	str	r3, [r2, #88]
.LVL6:
	.loc 3 1071 3 is_stmt 0 view .LVU42
.LBE49:
.LBE48:
	.loc 1 70 1 view .LVU43
	add	sp, sp, #8
.LCFI2:
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	@ sp needed
	pop	{r4, r5}
.LCFI3:
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	bx	lr
.LVL7:
.L6:
.LCFI4:
	.cfi_restore_state
	.loc 1 56 3 is_stmt 1 view .LVU44
	.loc 1 65 5 view .LVU45
	.loc 1 65 15 is_stmt 0 view .LVU46
	mov	r3, #1073741824
.LBB50:
.LBB51:
	.loc 2 4009 3 view .LVU47
	ldr	r4, .L7+8
.LBE51:
.LBE50:
	.loc 1 65 15 view .LVU48
	ldr	r2, [r3, #4]
.LVL8:
	.loc 1 66 5 is_stmt 1 view .LVU49
.LBB54:
.LBI50:
	.loc 2 4007 22 view .LVU50
.LBB52:
	.loc 2 4009 3 view .LVU51
	ldr	r1, [r3, #4]
.LBE52:
.LBE54:
	.loc 1 65 13 is_stmt 0 view .LVU52
	ldr	r5, .L7+12
.LBB55:
.LBB53:
	.loc 2 4009 3 view .LVU53
	ands	r1, r1, r4
	orr	r1, r1, #32
	str	r1, [r3, #4]
.LVL9:
	.loc 2 4009 3 view .LVU54
.LBE53:
.LBE55:
	.loc 1 67 5 is_stmt 1 view .LVU55
.LBB56:
.LBI56:
	.loc 2 6586 22 view .LVU56
.LBB57:
	.loc 2 6588 3 view .LVU57
	ldr	r0, [r3, #20]
	orr	r0, r0, #1
	str	r0, [r3, #20]
.LVL10:
	.loc 2 6588 3 is_stmt 0 view .LVU58
.LBE57:
.LBE56:
	.loc 1 68 5 is_stmt 1 view .LVU59
.LBB58:
.LBI58:
	.loc 2 4007 22 view .LVU60
.LBB59:
	.loc 2 4009 3 view .LVU61
	ldr	r1, [r3, #4]
.LBE59:
.LBE58:
	.loc 1 65 13 is_stmt 0 view .LVU62
	ands	r2, r2, r5
.LVL11:
.LBB61:
.LBB60:
	.loc 2 4009 3 view .LVU63
	ands	r1, r1, r4
	orrs	r2, r2, r1
.LVL12:
	.loc 2 4009 3 view .LVU64
	str	r2, [r3, #4]
.LBE60:
.LBE61:
	.loc 1 70 1 view .LVU65
	add	sp, sp, #8
.LCFI5:
	.cfi_def_cfa_offset 8
	@ sp needed
	pop	{r4, r5}
.LCFI6:
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	bx	lr
.L8:
	.align	2
.L7:
	.word	1073818624
	.word	1073876992
	.word	-33554545
	.word	33554544
	.cfi_endproc
.LFE1435:
	.size	startTimers, .-startTimers
	.section	.text.waitForPolarizationEnd,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	waitForPolarizationEnd
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	waitForPolarizationEnd, %function
waitForPolarizationEnd:
.LVL13:
.LFB1436:
	.loc 1 85 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 94 5 view .LVU67
	.loc 1 95 5 view .LVU68
	.loc 1 97 5 view .LVU69
	.loc 1 97 77 is_stmt 0 view .LVU70
	adds	r2, r2, #1
.LVL14:
	.loc 1 85 1 view .LVU71
	push	{r4, r5, r6, lr}
.LCFI7:
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 97 83 view .LVU72
	lsrs	r2, r2, #1
.LBB62:
.LBB63:
	.loc 2 5479 3 view .LVU73
	mvn	r6, #2
.LBE63:
.LBE62:
	.loc 1 97 23 view .LVU74
	lsls	r5, r2, #5
.LVL15:
	.loc 1 100 5 is_stmt 1 view .LVU75
.LBB65:
.LBI62:
	.loc 2 5477 22 view .LVU76
.LBB64:
	.loc 2 5479 3 view .LVU77
	str	r6, [r0, #16]
.LVL16:
	.loc 2 5479 3 is_stmt 0 view .LVU78
.LBE64:
.LBE65:
	.loc 1 101 5 is_stmt 1 view .LVU79
	.loc 1 102 5 view .LVU80
	.loc 1 101 31 is_stmt 0 view .LVU81
	movs	r2, #0
.LVL17:
.L11:
	.loc 1 104 7 is_stmt 1 view .LVU82
.LBB66:
.LBI66:
	.loc 2 5488 26 view .LVU83
.LBB67:
	.loc 2 5490 3 view .LVU84
	.loc 2 5490 3 is_stmt 0 view .LVU85
.LBE67:
.LBE66:
	.loc 1 106 9 is_stmt 1 view .LVU86
.LBB69:
.LBI69:
	.loc 2 5477 22 view .LVU87
.LBB70:
	.loc 2 5479 3 view .LVU88
.LBE70:
.LBE69:
	.loc 1 128 7 view .LVU89
	.loc 1 102 11 view .LVU90
	.loc 1 102 12 is_stmt 0 view .LVU91
	ldrb	ip, [r3]	@ zero_extendqisi2
	.loc 1 102 11 view .LVU92
	cmp	ip, #15
	.loc 1 107 34 view .LVU93
	add	lr, r2, #1
	.loc 1 102 11 view .LVU94
	bhi	.L9
.LBB72:
.LBB68:
	.loc 2 5490 12 view .LVU95
	ldr	r4, [r0, #16]
	.loc 2 5490 70 view .LVU96
	lsls	r4, r4, #30
	bpl	.L11
.LBE68:
.LBE72:
	.loc 1 110 11 is_stmt 1 view .LVU97
	.loc 1 107 34 is_stmt 0 view .LVU98
	uxth	r2, lr
	.loc 1 108 12 view .LVU99
	cmp	r5, r2
.LBB73:
.LBB71:
	.loc 2 5479 3 view .LVU100
	str	r6, [r0, #16]
.LVL18:
	.loc 2 5479 3 view .LVU101
.LBE71:
.LBE73:
	.loc 1 107 9 is_stmt 1 view .LVU102
	.loc 1 108 9 view .LVU103
	.loc 1 108 12 is_stmt 0 view .LVU104
	bhi	.L11
	.loc 1 110 15 view .LVU105
	ldrb	r4, [r3]	@ zero_extendqisi2
	.loc 1 110 14 view .LVU106
	cmp	r4, #15
	bhi	.L11
	.loc 1 112 13 is_stmt 1 view .LVU107
	.loc 1 112 22 is_stmt 0 view .LVU108
	movs	r3, #1
.LVL19:
	.loc 1 112 22 view .LVU109
	strh	r3, [r1]	@ movhi
	.loc 1 113 13 is_stmt 1 view .LVU110
.LVL20:
.L9:
	.loc 1 133 3 is_stmt 0 view .LVU111
	pop	{r4, r5, r6, pc}
	.loc 1 133 3 view .LVU112
	.cfi_endproc
.LFE1436:
	.size	waitForPolarizationEnd, .-waitForPolarizationEnd
	.text
.Letext0:
	.file 4 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/machine/_default_types.h"
	.file 5 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/sys/_stdint.h"
	.file 6 "Drivers/CMSIS/Device/ST/STM32G4xx/Include/stm32g431xx.h"
	.file 7 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_ll_usart.h"
	.file 8 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_ll_dma.h"
	.file 9 "Drivers/CMSIS/Device/ST/STM32G4xx/Include/stm32g4xx.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xaa7
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF103
	.byte	0xc
	.4byte	.LASF104
	.4byte	.LASF105
	.4byte	.Ldebug_ranges0+0xf0
	.4byte	0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x4
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
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x4
	.byte	0x39
	.byte	0x19
	.4byte	0x56
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x4
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
	.byte	0x5
	.byte	0x18
	.byte	0x13
	.4byte	0x30
	.uleb128 0x5
	.4byte	0x93
	.uleb128 0x6
	.4byte	0x93
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x5
	.byte	0x24
	.byte	0x14
	.4byte	0x4a
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x5
	.byte	0x30
	.byte	0x14
	.4byte	0x64
	.uleb128 0x5
	.4byte	0xb5
	.uleb128 0x6
	.4byte	0xb5
	.uleb128 0x7
	.byte	0xa0
	.byte	0x6
	.2byte	0x23f
	.byte	0x9
	.4byte	0x35d
	.uleb128 0x8
	.ascii	"CR\000"
	.byte	0x6
	.2byte	0x241
	.byte	0x11
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF15
	.byte	0x6
	.2byte	0x242
	.byte	0x11
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x6
	.2byte	0x243
	.byte	0x11
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x6
	.2byte	0x244
	.byte	0x11
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x6
	.2byte	0x245
	.byte	0x11
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x6
	.2byte	0x246
	.byte	0x11
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x6
	.2byte	0x247
	.byte	0x11
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x6
	.2byte	0x248
	.byte	0x11
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x6
	.2byte	0x249
	.byte	0x11
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x6
	.2byte	0x24a
	.byte	0x11
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x6
	.2byte	0x24b
	.byte	0x11
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x6
	.2byte	0x24c
	.byte	0x11
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x6
	.2byte	0x24d
	.byte	0x11
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x6
	.2byte	0x24e
	.byte	0x11
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x6
	.2byte	0x24f
	.byte	0x11
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x6
	.2byte	0x250
	.byte	0x11
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x6
	.2byte	0x251
	.byte	0x11
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x6
	.2byte	0x252
	.byte	0x11
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x6
	.2byte	0x253
	.byte	0x11
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x6
	.2byte	0x254
	.byte	0x11
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x6
	.2byte	0x255
	.byte	0x11
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x6
	.2byte	0x256
	.byte	0x11
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x6
	.2byte	0x257
	.byte	0x11
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x6
	.2byte	0x258
	.byte	0x11
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x6
	.2byte	0x259
	.byte	0x11
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0x6
	.2byte	0x25a
	.byte	0x11
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0x6
	.2byte	0x25b
	.byte	0x11
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x6
	.2byte	0x25c
	.byte	0x11
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x6
	.2byte	0x25d
	.byte	0x11
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x6
	.2byte	0x25e
	.byte	0x11
	.4byte	0xb5
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0x6
	.2byte	0x25f
	.byte	0x11
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x6
	.2byte	0x260
	.byte	0x11
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x6
	.2byte	0x261
	.byte	0x11
	.4byte	0xc1
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x9
	.4byte	.LASF47
	.byte	0x6
	.2byte	0x262
	.byte	0x11
	.4byte	0xb5
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x9
	.4byte	.LASF48
	.byte	0x6
	.2byte	0x263
	.byte	0x11
	.4byte	0xc1
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x9
	.4byte	.LASF49
	.byte	0x6
	.2byte	0x264
	.byte	0x11
	.4byte	0xb5
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0x6
	.2byte	0x265
	.byte	0x11
	.4byte	0xc1
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x8
	.ascii	"CSR\000"
	.byte	0x6
	.2byte	0x266
	.byte	0x11
	.4byte	0xc1
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0x6
	.2byte	0x267
	.byte	0x11
	.4byte	0xc1
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x9
	.4byte	.LASF52
	.byte	0x6
	.2byte	0x268
	.byte	0x11
	.4byte	0xc1
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.byte	0
	.uleb128 0xa
	.4byte	.LASF53
	.byte	0x6
	.2byte	0x269
	.byte	0x3
	.4byte	0xcb
	.uleb128 0xb
	.2byte	0x3e4
	.byte	0x6
	.2byte	0x2f3
	.byte	0x9
	.4byte	0x556
	.uleb128 0x8
	.ascii	"CR1\000"
	.byte	0x6
	.2byte	0x2f5
	.byte	0x11
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.ascii	"CR2\000"
	.byte	0x6
	.2byte	0x2f6
	.byte	0x11
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF54
	.byte	0x6
	.2byte	0x2f7
	.byte	0x11
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0x6
	.2byte	0x2f8
	.byte	0x11
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.ascii	"SR\000"
	.byte	0x6
	.2byte	0x2f9
	.byte	0x11
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.ascii	"EGR\000"
	.byte	0x6
	.2byte	0x2fa
	.byte	0x11
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0x6
	.2byte	0x2fb
	.byte	0x11
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.4byte	.LASF57
	.byte	0x6
	.2byte	0x2fc
	.byte	0x11
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.4byte	.LASF58
	.byte	0x6
	.2byte	0x2fd
	.byte	0x11
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.ascii	"CNT\000"
	.byte	0x6
	.2byte	0x2fe
	.byte	0x11
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x8
	.ascii	"PSC\000"
	.byte	0x6
	.2byte	0x2ff
	.byte	0x11
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.ascii	"ARR\000"
	.byte	0x6
	.2byte	0x300
	.byte	0x11
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x8
	.ascii	"RCR\000"
	.byte	0x6
	.2byte	0x301
	.byte	0x11
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.4byte	.LASF59
	.byte	0x6
	.2byte	0x302
	.byte	0x11
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.4byte	.LASF60
	.byte	0x6
	.2byte	0x303
	.byte	0x11
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.4byte	.LASF61
	.byte	0x6
	.2byte	0x304
	.byte	0x11
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x9
	.4byte	.LASF62
	.byte	0x6
	.2byte	0x305
	.byte	0x11
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.4byte	.LASF63
	.byte	0x6
	.2byte	0x306
	.byte	0x11
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x9
	.4byte	.LASF64
	.byte	0x6
	.2byte	0x307
	.byte	0x11
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.4byte	.LASF65
	.byte	0x6
	.2byte	0x308
	.byte	0x11
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x9
	.4byte	.LASF66
	.byte	0x6
	.2byte	0x309
	.byte	0x11
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x9
	.4byte	.LASF67
	.byte	0x6
	.2byte	0x30a
	.byte	0x11
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x8
	.ascii	"ECR\000"
	.byte	0x6
	.2byte	0x30b
	.byte	0x11
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.4byte	.LASF68
	.byte	0x6
	.2byte	0x30c
	.byte	0x11
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x8
	.ascii	"AF1\000"
	.byte	0x6
	.2byte	0x30d
	.byte	0x11
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x8
	.ascii	"AF2\000"
	.byte	0x6
	.2byte	0x30e
	.byte	0x11
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x8
	.ascii	"OR\000"
	.byte	0x6
	.2byte	0x30f
	.byte	0x11
	.4byte	0xc1
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x6
	.2byte	0x310
	.byte	0x11
	.4byte	0x556
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x8
	.ascii	"DCR\000"
	.byte	0x6
	.2byte	0x311
	.byte	0x11
	.4byte	0xc1
	.byte	0x3
	.byte	0x23
	.uleb128 0x3dc
	.uleb128 0x9
	.4byte	.LASF69
	.byte	0x6
	.2byte	0x312
	.byte	0x11
	.4byte	0xc1
	.byte	0x3
	.byte	0x23
	.uleb128 0x3e0
	.byte	0
	.uleb128 0xc
	.4byte	0xb5
	.4byte	0x566
	.uleb128 0xd
	.4byte	0x8c
	.byte	0xdb
	.byte	0
	.uleb128 0xa
	.4byte	.LASF70
	.byte	0x6
	.2byte	0x313
	.byte	0x3
	.4byte	0x36a
	.uleb128 0x6
	.4byte	0x566
	.uleb128 0xe
	.byte	0x7
	.byte	0x1
	.4byte	0x3c
	.byte	0x9
	.byte	0x97
	.byte	0x1
	.4byte	0x593
	.uleb128 0xf
	.4byte	.LASF71
	.byte	0
	.uleb128 0xf
	.4byte	.LASF72
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF73
	.uleb128 0x10
	.byte	0x4
	.4byte	0x566
	.uleb128 0xc
	.4byte	0xa4
	.4byte	0x5b0
	.uleb128 0xd
	.4byte	0x8c
	.byte	0x9
	.byte	0
	.uleb128 0x6
	.4byte	0x5a0
	.uleb128 0x11
	.4byte	.LASF74
	.byte	0x2
	.byte	0x2d
	.byte	0x16
	.4byte	0x5b0
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
	.uleb128 0x11
	.4byte	.LASF75
	.byte	0x2
	.byte	0x3c
	.byte	0x16
	.4byte	0x5b0
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
	.uleb128 0x11
	.4byte	.LASF76
	.byte	0x2
	.byte	0x4a
	.byte	0x16
	.4byte	0x5b0
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
	.uleb128 0x11
	.4byte	.LASF77
	.byte	0x2
	.byte	0x58
	.byte	0x16
	.4byte	0x5b0
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
	.uleb128 0x11
	.4byte	.LASF78
	.byte	0x2
	.byte	0x66
	.byte	0x16
	.4byte	0x5b0
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
	.uleb128 0xc
	.4byte	0xc6
	.4byte	0x638
	.uleb128 0xd
	.4byte	0x8c
	.byte	0xb
	.byte	0
	.uleb128 0x6
	.4byte	0x628
	.uleb128 0x11
	.4byte	.LASF79
	.byte	0x7
	.byte	0x2e
	.byte	0x17
	.4byte	0x638
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
	.uleb128 0xc
	.4byte	0xa4
	.4byte	0x68a
	.uleb128 0xd
	.4byte	0x8c
	.byte	0x5
	.byte	0
	.uleb128 0x6
	.4byte	0x67a
	.uleb128 0x11
	.4byte	.LASF80
	.byte	0x8
	.byte	0x2f
	.byte	0x16
	.4byte	0x68a
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
	.4byte	.LASF81
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF87
	.byte	0x1
	.byte	0x54
	.byte	0xd
	.byte	0x1
	.4byte	.LFB1436
	.4byte	.LFE1436
	.4byte	.LLST15
	.byte	0x1
	.4byte	0x796
	.uleb128 0x13
	.4byte	.LASF82
	.byte	0x1
	.byte	0x54
	.byte	0x31
	.4byte	0x59a
	.byte	0x1
	.byte	0x50
	.uleb128 0x13
	.4byte	.LASF83
	.byte	0x1
	.byte	0x54
	.byte	0x42
	.4byte	0x796
	.byte	0x1
	.byte	0x51
	.uleb128 0x14
	.4byte	.LASF84
	.byte	0x1
	.byte	0x54
	.byte	0x53
	.4byte	0x93
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0x15
	.ascii	"cnt\000"
	.byte	0x1
	.byte	0x54
	.byte	0x6d
	.4byte	0x79c
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0x16
	.4byte	.LASF85
	.byte	0x1
	.byte	0x5e
	.byte	0xe
	.4byte	0xa9
	.4byte	.LLST18
	.4byte	.LVUS18
	.uleb128 0x16
	.4byte	.LASF86
	.byte	0x1
	.byte	0x5f
	.byte	0xe
	.4byte	0xa9
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0x17
	.4byte	0x9ab
	.4byte	.LBI62
	.byte	.LVU76
	.4byte	.Ldebug_ranges0+0xa8
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.4byte	0x753
	.uleb128 0x18
	.4byte	0x9ba
	.4byte	.LLST20
	.4byte	.LVUS20
	.byte	0
	.uleb128 0x17
	.4byte	0x984
	.4byte	.LBI66
	.byte	.LVU83
	.4byte	.Ldebug_ranges0+0xc0
	.byte	0x1
	.byte	0x68
	.byte	0x1e
	.4byte	0x776
	.uleb128 0x18
	.4byte	0x997
	.4byte	.LLST21
	.4byte	.LVUS21
	.byte	0
	.uleb128 0x19
	.4byte	0x9ab
	.4byte	.LBI69
	.byte	.LVU87
	.4byte	.Ldebug_ranges0+0xd8
	.byte	0x1
	.byte	0x6a
	.byte	0x9
	.uleb128 0x18
	.4byte	0x9ba
	.4byte	.LLST22
	.4byte	.LVUS22
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0xa9
	.uleb128 0x10
	.byte	0x4
	.4byte	0x9f
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF88
	.byte	0x1
	.byte	0x2e
	.byte	0xd
	.byte	0x1
	.4byte	.LFB1435
	.4byte	.LFE1435
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x967
	.uleb128 0x16
	.4byte	.LASF89
	.byte	0x1
	.byte	0x30
	.byte	0xc
	.4byte	0xb5
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x16
	.4byte	.LASF90
	.byte	0x1
	.byte	0x31
	.byte	0xc
	.4byte	0xb5
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x17
	.4byte	0x9c8
	.4byte	.LBI26
	.byte	.LVU4
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x34
	.byte	0x3
	.4byte	0x815
	.uleb128 0x18
	.4byte	0x9e4
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x18
	.4byte	0x9d7
	.4byte	.LLST4
	.4byte	.LVUS4
	.byte	0
	.uleb128 0x17
	.4byte	0xa63
	.4byte	.LBI30
	.byte	.LVU16
	.4byte	.Ldebug_ranges0+0x20
	.byte	0x1
	.byte	0x37
	.byte	0x13
	.4byte	0x838
	.uleb128 0x18
	.4byte	0xa76
	.4byte	.LLST5
	.4byte	.LVUS5
	.byte	0
	.uleb128 0x1a
	.4byte	0x9f2
	.4byte	.LBI36
	.byte	.LVU12
	.4byte	.LBB36
	.4byte	.LBE36
	.byte	0x1
	.byte	0x35
	.byte	0x3
	.4byte	0x86c
	.uleb128 0x18
	.4byte	0xa0e
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x18
	.4byte	0xa01
	.4byte	.LLST7
	.4byte	.LVUS7
	.byte	0
	.uleb128 0x17
	.4byte	0xa84
	.4byte	.LBI40
	.byte	.LVU25
	.4byte	.Ldebug_ranges0+0x40
	.byte	0x1
	.byte	0x3b
	.byte	0x5
	.4byte	0x89d
	.uleb128 0x18
	.4byte	0xa8f
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x1b
	.4byte	.Ldebug_ranges0+0x40
	.uleb128 0x1c
	.4byte	0xa9c
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	0x967
	.4byte	.LBI43
	.byte	.LVU36
	.4byte	.Ldebug_ranges0+0x58
	.byte	0x1
	.byte	0x3c
	.byte	0x5
	.4byte	0x8c0
	.uleb128 0x18
	.4byte	0x976
	.4byte	.LLST9
	.4byte	.LVUS9
	.byte	0
	.uleb128 0x1a
	.4byte	0xa46
	.4byte	.LBI48
	.byte	.LVU40
	.4byte	.LBB48
	.4byte	.LBE48
	.byte	0x1
	.byte	0x3d
	.byte	0x5
	.4byte	0x8e7
	.uleb128 0x18
	.4byte	0xa55
	.4byte	.LLST10
	.4byte	.LVUS10
	.byte	0
	.uleb128 0x17
	.4byte	0xa1c
	.4byte	.LBI50
	.byte	.LVU50
	.4byte	.Ldebug_ranges0+0x70
	.byte	0x1
	.byte	0x42
	.byte	0x5
	.4byte	0x917
	.uleb128 0x18
	.4byte	0xa38
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x18
	.4byte	0xa2b
	.4byte	.LLST12
	.4byte	.LVUS12
	.byte	0
	.uleb128 0x1a
	.4byte	0x967
	.4byte	.LBI56
	.byte	.LVU56
	.4byte	.LBB56
	.4byte	.LBE56
	.byte	0x1
	.byte	0x43
	.byte	0x5
	.4byte	0x93e
	.uleb128 0x18
	.4byte	0x976
	.4byte	.LLST13
	.4byte	.LVUS13
	.byte	0
	.uleb128 0x19
	.4byte	0xa1c
	.4byte	.LBI58
	.byte	.LVU60
	.4byte	.Ldebug_ranges0+0x90
	.byte	0x1
	.byte	0x44
	.byte	0x5
	.uleb128 0x18
	.4byte	0xa38
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x1d
	.4byte	0xa2b
	.4byte	0x40000000
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF91
	.byte	0x2
	.2byte	0x19ba
	.byte	0x16
	.byte	0x1
	.byte	0x3
	.4byte	0x984
	.uleb128 0x1f
	.4byte	.LASF82
	.byte	0x2
	.2byte	0x19ba
	.byte	0x3f
	.4byte	0x59a
	.byte	0
	.uleb128 0x20
	.4byte	.LASF101
	.byte	0x2
	.2byte	0x1570
	.byte	0x1a
	.byte	0x1
	.4byte	0xb5
	.byte	0x3
	.4byte	0x9a5
	.uleb128 0x1f
	.4byte	.LASF82
	.byte	0x2
	.2byte	0x1570
	.byte	0x45
	.4byte	0x9a5
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x573
	.uleb128 0x1e
	.4byte	.LASF92
	.byte	0x2
	.2byte	0x1565
	.byte	0x16
	.byte	0x1
	.byte	0x3
	.4byte	0x9c8
	.uleb128 0x1f
	.4byte	.LASF82
	.byte	0x2
	.2byte	0x1565
	.byte	0x38
	.4byte	0x59a
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF93
	.byte	0x2
	.2byte	0xff7
	.byte	0x16
	.byte	0x1
	.byte	0x3
	.4byte	0x9f2
	.uleb128 0x1f
	.4byte	.LASF82
	.byte	0x2
	.2byte	0xff7
	.byte	0x3a
	.4byte	0x59a
	.uleb128 0x1f
	.4byte	.LASF94
	.byte	0x2
	.2byte	0xff7
	.byte	0x49
	.4byte	0xb5
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF95
	.byte	0x2
	.2byte	0xfd9
	.byte	0x16
	.byte	0x1
	.byte	0x3
	.4byte	0xa1c
	.uleb128 0x1f
	.4byte	.LASF82
	.byte	0x2
	.2byte	0xfd9
	.byte	0x37
	.4byte	0x59a
	.uleb128 0x1f
	.4byte	.LASF96
	.byte	0x2
	.2byte	0xfd9
	.byte	0x46
	.4byte	0xb5
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF97
	.byte	0x2
	.2byte	0xfa7
	.byte	0x16
	.byte	0x1
	.byte	0x3
	.4byte	0xa46
	.uleb128 0x1f
	.4byte	.LASF82
	.byte	0x2
	.2byte	0xfa7
	.byte	0x3b
	.4byte	0x59a
	.uleb128 0x1f
	.4byte	.LASF98
	.byte	0x2
	.2byte	0xfa7
	.byte	0x4a
	.4byte	0xb5
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF99
	.byte	0x3
	.2byte	0x42d
	.byte	0x16
	.byte	0x1
	.byte	0x3
	.4byte	0xa63
	.uleb128 0x1f
	.4byte	.LASF100
	.byte	0x3
	.2byte	0x42d
	.byte	0x39
	.4byte	0xb5
	.byte	0
	.uleb128 0x20
	.4byte	.LASF102
	.byte	0x3
	.2byte	0x3e3
	.byte	0x1a
	.byte	0x1
	.4byte	0xb5
	.byte	0x3
	.4byte	0xa84
	.uleb128 0x1f
	.4byte	.LASF100
	.byte	0x3
	.2byte	0x3e3
	.byte	0x3f
	.4byte	0xb5
	.byte	0
	.uleb128 0x21
	.4byte	.LASF106
	.byte	0x3
	.2byte	0x391
	.byte	0x16
	.byte	0x1
	.byte	0x3
	.uleb128 0x1f
	.4byte	.LASF100
	.byte	0x3
	.2byte	0x391
	.byte	0x38
	.4byte	0xb5
	.uleb128 0x22
	.4byte	.LASF107
	.byte	0x3
	.2byte	0x393
	.byte	0x11
	.4byte	0xc1
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
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
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
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
	.uleb128 0xa
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST15:
	.4byte	.LFB1436
	.4byte	.LCFI7
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI7
	.4byte	.LFE1436
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0
	.4byte	0
.LVUS16:
	.uleb128 0
	.uleb128 .LVU71
	.uleb128 .LVU71
	.uleb128 0
.LLST16:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LFE1436
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS17:
	.uleb128 0
	.uleb128 .LVU109
	.uleb128 .LVU109
	.uleb128 0
.LLST17:
	.4byte	.LVL13
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL19
	.4byte	.LFE1436
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS18:
	.uleb128 .LVU80
	.uleb128 .LVU82
	.uleb128 .LVU103
	.uleb128 .LVU111
.LLST18:
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS19:
	.uleb128 .LVU75
	.uleb128 0
.LLST19:
	.4byte	.LVL15
	.4byte	.LFE1436
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS20:
	.uleb128 .LVU76
	.uleb128 .LVU78
.LLST20:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS21:
	.uleb128 .LVU83
	.uleb128 .LVU85
.LLST21:
	.4byte	.LVL17
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS22:
	.uleb128 .LVU87
	.uleb128 .LVU101
.LLST22:
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LFB1435
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
	.4byte	.LCFI2
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI2
	.4byte	.LCFI3
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI3
	.4byte	.LCFI4
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI4
	.4byte	.LCFI5
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI5
	.4byte	.LCFI6
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI6
	.4byte	.LFE1435
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 .LVU22
	.uleb128 .LVU44
	.uleb128 .LVU44
	.uleb128 0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL7
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LFE1435
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 .LVU49
	.uleb128 .LVU63
	.uleb128 .LVU63
	.uleb128 .LVU64
.LLST2:
	.4byte	.LVL8
	.4byte	.LVL11
	.2byte	0x9
	.byte	0x72
	.sleb128 0
	.byte	0xc
	.4byte	0x2000070
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 .LVU4
	.uleb128 .LVU10
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x2
	.byte	0x40
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU4
	.uleb128 .LVU10
.LLST4:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x6
	.byte	0xc
	.4byte	0x40012c00
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 .LVU16
	.uleb128 .LVU22
.LLST5:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 .LVU12
	.uleb128 .LVU14
.LLST6:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x36
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 .LVU12
	.uleb128 .LVU14
.LLST7:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x6
	.byte	0xc
	.4byte	0x40012c00
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 .LVU25
	.uleb128 .LVU34
.LLST8:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 .LVU36
	.uleb128 .LVU38
.LLST9:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x4
	.byte	0x40
	.byte	0x4a
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 .LVU40
	.uleb128 .LVU42
.LLST10:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 .LVU50
	.uleb128 .LVU54
.LLST11:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS12:
	.uleb128 .LVU50
	.uleb128 .LVU54
.LLST12:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x4
	.byte	0x40
	.byte	0x4a
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS13:
	.uleb128 .LVU56
	.uleb128 .LVU58
.LLST13:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x4
	.byte	0x40
	.byte	0x4a
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS14:
	.uleb128 .LVU60
	.uleb128 .LVU63
.LLST14:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x9
	.byte	0x72
	.sleb128 0
	.byte	0xc
	.4byte	0x2000070
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x24
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB26
	.4byte	.LBE26
	.4byte	.LBB34
	.4byte	.LBE34
	.4byte	.LBB35
	.4byte	.LBE35
	.4byte	0
	.4byte	0
	.4byte	.LBB30
	.4byte	.LBE30
	.4byte	.LBB38
	.4byte	.LBE38
	.4byte	.LBB39
	.4byte	.LBE39
	.4byte	0
	.4byte	0
	.4byte	.LBB40
	.4byte	.LBE40
	.4byte	.LBB46
	.4byte	.LBE46
	.4byte	0
	.4byte	0
	.4byte	.LBB43
	.4byte	.LBE43
	.4byte	.LBB47
	.4byte	.LBE47
	.4byte	0
	.4byte	0
	.4byte	.LBB50
	.4byte	.LBE50
	.4byte	.LBB54
	.4byte	.LBE54
	.4byte	.LBB55
	.4byte	.LBE55
	.4byte	0
	.4byte	0
	.4byte	.LBB58
	.4byte	.LBE58
	.4byte	.LBB61
	.4byte	.LBE61
	.4byte	0
	.4byte	0
	.4byte	.LBB62
	.4byte	.LBE62
	.4byte	.LBB65
	.4byte	.LBE65
	.4byte	0
	.4byte	0
	.4byte	.LBB66
	.4byte	.LBE66
	.4byte	.LBB72
	.4byte	.LBE72
	.4byte	0
	.4byte	0
	.4byte	.LBB69
	.4byte	.LBE69
	.4byte	.LBB73
	.4byte	.LBE73
	.4byte	0
	.4byte	0
	.4byte	.LFB1435
	.4byte	.LFE1435
	.4byte	.LFB1436
	.4byte	.LFE1436
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF82:
	.ascii	"TIMx\000"
.LASF58:
	.ascii	"CCER\000"
.LASF53:
	.ascii	"RCC_TypeDef\000"
.LASF17:
	.ascii	"PLLCFGR\000"
.LASF28:
	.ascii	"APB1RSTR1\000"
.LASF29:
	.ascii	"APB1RSTR2\000"
.LASF33:
	.ascii	"AHB2ENR\000"
.LASF69:
	.ascii	"DMAR\000"
.LASF91:
	.ascii	"LL_TIM_GenerateEvent_UPDATE\000"
.LASF89:
	.ascii	"isTIM2ClockOn\000"
.LASF57:
	.ascii	"CCMR2\000"
.LASF106:
	.ascii	"LL_APB1_GRP1_EnableClock\000"
.LASF2:
	.ascii	"short int\000"
.LASF95:
	.ascii	"LL_TIM_SetSlaveMode\000"
.LASF48:
	.ascii	"CCIPR\000"
.LASF20:
	.ascii	"CIER\000"
.LASF93:
	.ascii	"LL_TIM_SetTriggerInput\000"
.LASF73:
	.ascii	"long double\000"
.LASF7:
	.ascii	"__uint32_t\000"
.LASF4:
	.ascii	"__uint16_t\000"
.LASF99:
	.ascii	"LL_APB1_GRP1_DisableClock\000"
.LASF24:
	.ascii	"AHB1RSTR\000"
.LASF92:
	.ascii	"LL_TIM_ClearFlag_CC1\000"
.LASF12:
	.ascii	"uint8_t\000"
.LASF104:
	.ascii	"Src/pwm_common.c\000"
.LASF84:
	.ascii	"repCnt\000"
.LASF103:
	.ascii	"GNU C17 10.2.1 20201103 (release) -mcpu=cortex-m4 -"
	.ascii	"mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=hard -march=ar"
	.ascii	"mv7e-m+fp -g -gdwarf-2 -O3 -fdata-sections -ffuncti"
	.ascii	"on-sections\000"
.LASF14:
	.ascii	"uint32_t\000"
.LASF81:
	.ascii	"float\000"
.LASF34:
	.ascii	"AHB3ENR\000"
.LASF9:
	.ascii	"long long int\000"
.LASF51:
	.ascii	"CRRCR\000"
.LASF100:
	.ascii	"Periphs\000"
.LASF42:
	.ascii	"AHB3SMENR\000"
.LASF59:
	.ascii	"CCR1\000"
.LASF60:
	.ascii	"CCR2\000"
.LASF61:
	.ascii	"CCR3\000"
.LASF62:
	.ascii	"CCR4\000"
.LASF64:
	.ascii	"CCR5\000"
.LASF65:
	.ascii	"CCR6\000"
.LASF41:
	.ascii	"AHB2SMENR\000"
.LASF30:
	.ascii	"APB2RSTR\000"
.LASF3:
	.ascii	"__uint8_t\000"
.LASF56:
	.ascii	"CCMR1\000"
.LASF88:
	.ascii	"startTimers\000"
.LASF66:
	.ascii	"CCMR3\000"
.LASF107:
	.ascii	"tmpreg\000"
.LASF70:
	.ascii	"TIM_TypeDef\000"
.LASF54:
	.ascii	"SMCR\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF101:
	.ascii	"LL_TIM_IsActiveFlag_CC1\000"
.LASF38:
	.ascii	"APB2ENR\000"
.LASF77:
	.ascii	"SHIFT_TAB_CCxP\000"
.LASF102:
	.ascii	"LL_APB1_GRP1_IsEnabledClock\000"
.LASF0:
	.ascii	"signed char\000"
.LASF10:
	.ascii	"long long unsigned int\000"
.LASF68:
	.ascii	"TISEL\000"
.LASF75:
	.ascii	"SHIFT_TAB_OCxx\000"
.LASF22:
	.ascii	"CICR\000"
.LASF11:
	.ascii	"unsigned int\000"
.LASF25:
	.ascii	"AHB2RSTR\000"
.LASF13:
	.ascii	"uint16_t\000"
.LASF105:
	.ascii	"/home/joel/share/EVSPIN32G4_Shinano\000"
.LASF8:
	.ascii	"long unsigned int\000"
.LASF16:
	.ascii	"CFGR\000"
.LASF55:
	.ascii	"DIER\000"
.LASF36:
	.ascii	"APB1ENR1\000"
.LASF37:
	.ascii	"APB1ENR2\000"
.LASF52:
	.ascii	"CCIPR2\000"
.LASF85:
	.ascii	"hCalibrationPeriodCounter\000"
.LASF15:
	.ascii	"ICSCR\000"
.LASF46:
	.ascii	"APB2SMENR\000"
.LASF6:
	.ascii	"long int\000"
.LASF63:
	.ascii	"BDTR\000"
.LASF67:
	.ascii	"DTR2\000"
.LASF96:
	.ascii	"SlaveMode\000"
.LASF80:
	.ascii	"CHANNEL_OFFSET_TAB\000"
.LASF97:
	.ascii	"LL_TIM_SetTriggerOutput\000"
.LASF44:
	.ascii	"APB1SMENR1\000"
.LASF18:
	.ascii	"RESERVED0\000"
.LASF19:
	.ascii	"RESERVED1\000"
.LASF23:
	.ascii	"RESERVED2\000"
.LASF27:
	.ascii	"RESERVED3\000"
.LASF31:
	.ascii	"RESERVED4\000"
.LASF35:
	.ascii	"RESERVED5\000"
.LASF39:
	.ascii	"RESERVED6\000"
.LASF43:
	.ascii	"RESERVED7\000"
.LASF47:
	.ascii	"RESERVED8\000"
.LASF49:
	.ascii	"RESERVED9\000"
.LASF78:
	.ascii	"SHIFT_TAB_OISx\000"
.LASF98:
	.ascii	"TimerSynchronization\000"
.LASF94:
	.ascii	"TriggerInput\000"
.LASF76:
	.ascii	"SHIFT_TAB_ICxx\000"
.LASF32:
	.ascii	"AHB1ENR\000"
.LASF83:
	.ascii	"SWerror\000"
.LASF50:
	.ascii	"BDCR\000"
.LASF90:
	.ascii	"trigOut\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF71:
	.ascii	"SUCCESS\000"
.LASF72:
	.ascii	"ERROR\000"
.LASF87:
	.ascii	"waitForPolarizationEnd\000"
.LASF40:
	.ascii	"AHB1SMENR\000"
.LASF26:
	.ascii	"AHB3RSTR\000"
.LASF45:
	.ascii	"APB1SMENR2\000"
.LASF86:
	.ascii	"hMaxPeriodsNumber\000"
.LASF21:
	.ascii	"CIFR\000"
.LASF79:
	.ascii	"USART_PRESCALER_TAB\000"
.LASF74:
	.ascii	"OFFSET_TAB_CCMRx\000"
	.ident	"GCC: (GNU Arm Embedded Toolchain 10-2020-q4-major) 10.2.1 20201103 (release)"
