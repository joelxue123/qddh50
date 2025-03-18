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
	.file	"r_divider_bus_voltage_sensor.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.RVBS_Clear,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	RVBS_Clear
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	RVBS_Clear, %function
RVBS_Clear:
.LVL0:
.LFB1438:
	.file 1 "MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Src/r_divider_bus_voltage_sensor.c"
	.loc 1 73 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 82 5 view .LVU1
	.loc 1 83 5 view .LVU2
	.loc 1 85 5 view .LVU3
	.loc 1 85 19 is_stmt 0 view .LVU4
	ldrh	ip, [r0, #12]
	.loc 1 85 51 view .LVU5
	ldrh	r2, [r0, #18]
	.loc 1 86 5 view .LVU6
	ldrh	r3, [r0, #10]
	.loc 1 85 42 view .LVU7
	add	ip, ip, r2
	.loc 1 73 1 view .LVU8
	push	{r4}
.LCFI0:
	.cfi_def_cfa_offset 4
	.cfi_offset 4, -4
	.loc 1 85 9 view .LVU9
	lsr	ip, ip, #1
.LVL1:
	.loc 1 86 5 is_stmt 1 view .LVU10
	.loc 1 86 22 view .LVU11
	.loc 1 86 5 is_stmt 0 view .LVU12
	cbz	r3, .L2
	.loc 1 88 14 view .LVU13
	ldr	r4, [r0, #20]
	movs	r3, #0
.LVL2:
.L3:
	.loc 1 88 7 is_stmt 1 discriminator 3 view .LVU14
	.loc 1 88 23 is_stmt 0 discriminator 3 view .LVU15
	uxth	r2, r3
	.loc 1 86 5 discriminator 3 view .LVU16
	adds	r3, r3, #1
.LVL3:
	.loc 1 88 31 discriminator 3 view .LVU17
	strh	ip, [r4, r2, lsl #1]	@ movhi
	.loc 1 86 56 is_stmt 1 discriminator 3 view .LVU18
.LVL4:
	.loc 1 86 22 discriminator 3 view .LVU19
	.loc 1 86 5 is_stmt 0 discriminator 3 view .LVU20
	ldrh	r1, [r0, #10]
	uxth	r2, r3
	cmp	r1, r2
	bhi	.L3
.L2:
	.loc 1 90 5 is_stmt 1 view .LVU21
	.loc 1 91 5 view .LVU22
	.loc 1 90 32 is_stmt 0 view .LVU23
	movs	r3, #0
	bfi	r3, ip, #0, #16
.LVL5:
	.loc 1 90 32 view .LVU24
	bfi	r3, ip, #16, #16
	.loc 1 92 20 view .LVU25
	movs	r2, #0
	.loc 1 96 1 view .LVU26
	ldr	r4, [sp], #4
.LCFI1:
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 90 32 view .LVU27
	str	r3, [r0, #4]
	.loc 1 92 5 is_stmt 1 view .LVU28
	.loc 1 92 20 is_stmt 0 view .LVU29
	strb	r2, [r0, #25]
	.loc 1 96 1 view .LVU30
	bx	lr
	.cfi_endproc
.LFE1438:
	.size	RVBS_Clear, .-RVBS_Clear
	.section	.text.RVBS_Init,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	RVBS_Init
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	RVBS_Init, %function
RVBS_Init:
.LVL6:
.LFB1437:
	.loc 1 50 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 60 5 view .LVU32
	.loc 1 50 1 is_stmt 0 view .LVU33
	push	{r3, lr}
.LCFI2:
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 1 60 5 view .LVU34
	bl	RVBS_Clear
.LVL7:
	.loc 1 64 1 view .LVU35
	pop	{r3, pc}
	.cfi_endproc
.LFE1437:
	.size	RVBS_Init, .-RVBS_Init
	.section	.text.RVBS_CheckFaultState,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	RVBS_CheckFaultState
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	RVBS_CheckFaultState, %function
RVBS_CheckFaultState:
.LVL8:
.LFB1440:
	.loc 1 164 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 165 3 view .LVU37
	.loc 1 175 2 view .LVU38
	.loc 1 175 13 is_stmt 0 view .LVU39
	ldrh	r2, [r0, #12]
	.loc 1 175 46 view .LVU40
	ldrh	r1, [r0, #14]
	.loc 1 175 5 view .LVU41
	cmp	r2, r1
	beq	.L21
	.loc 1 193 7 is_stmt 1 view .LVU42
	.loc 1 193 26 is_stmt 0 view .LVU43
	ldrh	ip, [r0, #6]
	.loc 1 193 10 view .LVU44
	ldrh	r3, [r0, #18]
	cmp	r3, ip
	bhi	.L18
	.loc 1 197 12 is_stmt 1 view .LVU45
	.loc 1 197 15 is_stmt 0 view .LVU46
	ldrb	r3, [r0, #16]	@ zero_extendqisi2
	cbnz	r3, .L15
	.loc 1 199 9 is_stmt 1 view .LVU47
	.loc 1 199 12 is_stmt 0 view .LVU48
	cmp	r1, ip
	bls	.L19
	.loc 1 201 11 is_stmt 1 view .LVU49
	.loc 1 201 47 is_stmt 0 view .LVU50
	movs	r2, #1
	strb	r2, [r0, #16]
	.loc 1 202 11 is_stmt 1 view .LVU51
.LVL9:
	.loc 1 202 17 is_stmt 0 view .LVU52
	mov	r0, r3
.LVL10:
	.loc 1 202 17 view .LVU53
	bx	lr
.LVL11:
.L18:
	.loc 1 183 15 view .LVU54
	movs	r0, #4
.LVL12:
	.loc 1 183 15 view .LVU55
	bx	lr
.LVL13:
.L21:
	.loc 1 177 7 is_stmt 1 view .LVU56
	.loc 1 177 26 is_stmt 0 view .LVU57
	ldrh	r3, [r0, #6]
	.loc 1 177 10 view .LVU58
	cmp	r2, r3
	bcc	.L19
	.loc 1 181 12 is_stmt 1 view .LVU59
	.loc 1 181 15 is_stmt 0 view .LVU60
	ldrh	r0, [r0, #18]
.LVL14:
	.loc 1 183 15 view .LVU61
	cmp	r0, r3
	ite	hi
	movhi	r0, #4
	movls	r0, #0
	bx	lr
.LVL15:
.L15:
	.loc 1 210 9 is_stmt 1 view .LVU62
	.loc 1 210 12 is_stmt 0 view .LVU63
	cmp	r2, ip
	bcc	.L22
	.loc 1 187 15 view .LVU64
	movs	r0, #0
.LVL16:
	.loc 1 223 3 is_stmt 1 view .LVU65
	.loc 1 224 1 is_stmt 0 view .LVU66
	bx	lr
.LVL17:
.L19:
	.loc 1 179 15 view .LVU67
	movs	r0, #2
.LVL18:
	.loc 1 179 15 view .LVU68
	bx	lr
.LVL19:
.L22:
	.loc 1 212 11 is_stmt 1 view .LVU69
	.loc 1 212 47 is_stmt 0 view .LVU70
	movs	r3, #0
	strb	r3, [r0, #16]
	.loc 1 213 11 is_stmt 1 view .LVU71
.LVL20:
	.loc 1 213 17 is_stmt 0 view .LVU72
	movs	r0, #2
.LVL21:
	.loc 1 213 17 view .LVU73
	bx	lr
	.cfi_endproc
.LFE1440:
	.size	RVBS_CheckFaultState, .-RVBS_CheckFaultState
	.section	.text.RVBS_CalcAvVbus,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	RVBS_CalcAvVbus
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	RVBS_CalcAvVbus, %function
RVBS_CalcAvVbus:
.LVL22:
.LFB1439:
	.loc 1 105 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 106 3 view .LVU75
	.loc 1 115 5 view .LVU76
	.loc 1 116 5 view .LVU77
	.loc 1 117 5 view .LVU78
	.loc 1 119 5 view .LVU79
	.loc 1 121 5 view .LVU80
	.loc 1 105 1 is_stmt 0 view .LVU81
	push	{r3, r4, r5, lr}
.LCFI3:
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	.loc 1 121 8 view .LVU82
	movw	r3, #65535
	cmp	r1, r3
	.loc 1 105 1 view .LVU83
	mov	r4, r0
	.loc 1 121 8 view .LVU84
	beq	.L24
	.loc 1 128 7 is_stmt 1 view .LVU85
	.loc 1 128 14 is_stmt 0 view .LVU86
	ldr	r3, [r0, #20]
	.loc 1 128 31 view .LVU87
	ldrb	r5, [r0, #25]	@ zero_extendqisi2
	.loc 1 128 40 view .LVU88
	strh	r1, [r3, r5, lsl #1]	@ movhi
	.loc 1 129 7 is_stmt 1 view .LVU89
.LVL23:
	.loc 1 130 7 view .LVU90
	.loc 1 130 20 view .LVU91
	.loc 1 130 40 is_stmt 0 view .LVU92
	ldrh	lr, [r0, #10]
	.loc 1 130 7 view .LVU93
	ands	r2, lr, #255
	beq	.L27
	subs	r2, r2, #1
	uxtb	r2, r2
	add	r0, r3, r2, lsl #1
.LVL24:
	.loc 1 130 7 view .LVU94
	subs	r3, r3, #2
	.loc 1 129 13 view .LVU95
	movs	r2, #0
.LVL25:
.L26:
	.loc 1 132 9 is_stmt 1 discriminator 3 view .LVU96
	.loc 1 132 34 is_stmt 0 discriminator 3 view .LVU97
	ldrh	ip, [r3, #2]!
.LVL26:
	.loc 1 130 7 discriminator 3 view .LVU98
	cmp	r0, r3
	.loc 1 132 15 discriminator 3 view .LVU99
	add	r2, r2, ip
.LVL27:
	.loc 1 130 59 is_stmt 1 discriminator 3 view .LVU100
	.loc 1 130 20 discriminator 3 view .LVU101
	.loc 1 130 7 is_stmt 0 discriminator 3 view .LVU102
	bne	.L26
	.loc 1 134 13 view .LVU103
	udiv	r2, r2, lr
.LVL28:
	.loc 1 136 40 view .LVU104
	uxth	r2, r2
.LVL29:
.L27:
	.loc 1 134 7 is_stmt 1 view .LVU105
	.loc 1 136 7 view .LVU106
	.loc 1 139 64 is_stmt 0 view .LVU107
	add	lr, lr, #-1
	.loc 1 139 10 view .LVU108
	cmp	r5, lr
	.loc 1 141 23 view .LVU109
	ite	cc
	addcc	r5, r5, #1
	.loc 1 145 24 view .LVU110
	movcs	r3, #0
	.loc 1 136 38 view .LVU111
	strh	r2, [r4, #6]	@ movhi
	.loc 1 137 7 is_stmt 1 view .LVU112
	.loc 1 137 34 is_stmt 0 view .LVU113
	strh	r1, [r4, #4]	@ movhi
	.loc 1 139 7 is_stmt 1 view .LVU114
	.loc 1 141 9 view .LVU115
	.loc 1 141 23 is_stmt 0 view .LVU116
	ite	cc
	strbcc	r5, [r4, #25]
	.loc 1 145 9 is_stmt 1 view .LVU117
	.loc 1 145 24 is_stmt 0 view .LVU118
	strbcs	r3, [r4, #25]
.L24:
	.loc 1 149 5 is_stmt 1 view .LVU119
	.loc 1 149 34 is_stmt 0 view .LVU120
	mov	r0, r4
	bl	RVBS_CheckFaultState
.LVL30:
	.loc 1 149 32 view .LVU121
	strh	r0, [r4, #8]	@ movhi
	.loc 1 150 5 is_stmt 1 view .LVU122
.LVL31:
	.loc 1 154 3 view .LVU123
	.loc 1 155 1 is_stmt 0 view .LVU124
	pop	{r3, r4, r5, pc}
	.loc 1 155 1 view .LVU125
	.cfi_endproc
.LFE1439:
	.size	RVBS_CalcAvVbus, .-RVBS_CalcAvVbus
	.text
.Letext0:
	.file 2 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_ll_tim.h"
	.file 5 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_ll_usart.h"
	.file 6 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_ll_dma.h"
	.file 7 "Inc/mc_type.h"
	.file 8 "MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Inc/bus_voltage_sensor.h"
	.file 9 "MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Inc/r_divider_bus_voltage_sensor.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x491
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0xc
	.4byte	.LASF54
	.4byte	.LASF55
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF3
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
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
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
	.byte	0x24
	.byte	0x14
	.4byte	0x4a
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
	.byte	0x7
	.byte	0x1
	.4byte	0x3c
	.byte	0x7
	.byte	0xbf
	.byte	0x1
	.4byte	0x1ec
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x7
	.byte	0xc1
	.byte	0x3
	.4byte	0x1d1
	.uleb128 0xb
	.byte	0xa
	.byte	0x8
	.byte	0x2c
	.byte	0x9
	.4byte	0x24d
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x8
	.byte	0x2e
	.byte	0x10
	.4byte	0x1ec
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x8
	.byte	0x32
	.byte	0xc
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x8
	.byte	0x3b
	.byte	0xc
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x8
	.byte	0x3d
	.byte	0xc
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x8
	.byte	0x3f
	.byte	0xc
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x8
	.byte	0x41
	.byte	0x3
	.4byte	0x1f8
	.uleb128 0xb
	.byte	0x1c
	.byte	0x9
	.byte	0x32
	.byte	0x9
	.4byte	0x2f9
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x9
	.byte	0x34
	.byte	0x1d
	.4byte	0x24d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x9
	.byte	0x35
	.byte	0x12
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x9
	.byte	0x39
	.byte	0x12
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x9
	.byte	0x3f
	.byte	0x12
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x9
	.byte	0x46
	.byte	0x12
	.4byte	0x2f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x9
	.byte	0x47
	.byte	0x12
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0x9
	.byte	0x4d
	.byte	0x13
	.4byte	0x300
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x9
	.byte	0x4e
	.byte	0x12
	.4byte	0x93
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x9
	.byte	0x4f
	.byte	0x12
	.4byte	0x93
	.byte	0x2
	.byte	0x23
	.uleb128 0x19
	.uleb128 0xc
	.4byte	.LASF42
	.byte	0x9
	.byte	0x50
	.byte	0x12
	.4byte	0x93
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF43
	.uleb128 0xd
	.byte	0x4
	.4byte	0xa4
	.uleb128 0x3
	.4byte	.LASF44
	.byte	0x9
	.byte	0x52
	.byte	0x3
	.4byte	0x259
	.uleb128 0xe
	.byte	0x1
	.4byte	.LASF45
	.byte	0x1
	.byte	0xa3
	.byte	0x11
	.byte	0x1
	.4byte	0xa4
	.4byte	.LFB1440
	.4byte	.LFE1440
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x359
	.uleb128 0xf
	.4byte	.LASF47
	.byte	0x1
	.byte	0xa3
	.byte	0x39
	.4byte	0x359
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x10
	.4byte	.LASF49
	.byte	0x1
	.byte	0xa5
	.byte	0xc
	.4byte	0xa4
	.4byte	.LLST6
	.4byte	.LVUS6
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x306
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF46
	.byte	0x1
	.byte	0x68
	.byte	0x11
	.byte	0x1
	.4byte	0xa4
	.4byte	.LFB1439
	.4byte	.LFE1439
	.4byte	.LLST7
	.byte	0x1
	.4byte	0x405
	.uleb128 0xf
	.4byte	.LASF47
	.byte	0x1
	.byte	0x68
	.byte	0x34
	.4byte	0x359
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0xf
	.4byte	.LASF48
	.byte	0x1
	.byte	0x68
	.byte	0x46
	.4byte	0xa4
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x10
	.4byte	.LASF50
	.byte	0x1
	.byte	0x6a
	.byte	0xc
	.4byte	0xa4
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x10
	.4byte	.LASF51
	.byte	0x1
	.byte	0x73
	.byte	0xe
	.4byte	0xb0
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x10
	.4byte	.LASF52
	.byte	0x1
	.byte	0x74
	.byte	0xe
	.4byte	0xa4
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x12
	.ascii	"i\000"
	.byte	0x1
	.byte	0x75
	.byte	0xd
	.4byte	0x93
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x13
	.4byte	.LVL30
	.4byte	0x312
	.uleb128 0x14
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF56
	.byte	0x1
	.byte	0x48
	.byte	0xd
	.byte	0x1
	.4byte	.LFB1438
	.4byte	.LFE1438
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x457
	.uleb128 0x16
	.4byte	.LASF47
	.byte	0x1
	.byte	0x48
	.byte	0x2b
	.4byte	0x359
	.byte	0x1
	.byte	0x50
	.uleb128 0x12
	.ascii	"aux\000"
	.byte	0x1
	.byte	0x52
	.byte	0xe
	.4byte	0xa4
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x10
	.4byte	.LASF41
	.byte	0x1
	.byte	0x53
	.byte	0xe
	.4byte	0xa4
	.4byte	.LLST2
	.4byte	.LVUS2
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.4byte	.LASF57
	.byte	0x1
	.byte	0x31
	.byte	0xd
	.byte	0x1
	.4byte	.LFB1437
	.4byte	.LFE1437
	.4byte	.LLST3
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF47
	.byte	0x1
	.byte	0x31
	.byte	0x2a
	.4byte	0x359
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x13
	.4byte	.LVL7
	.4byte	0x405
	.uleb128 0x14
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0
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
	.uleb128 0xa
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xf
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
	.uleb128 0x12
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
	.uleb128 0x2
	.uleb128 0x6
	.uleb128 0x2137
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
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
	.uleb128 0xa
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
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LVUS5:
	.uleb128 0
	.uleb128 .LVU53
	.uleb128 .LVU53
	.uleb128 .LVU54
	.uleb128 .LVU54
	.uleb128 .LVU55
	.uleb128 .LVU55
	.uleb128 .LVU56
	.uleb128 .LVU56
	.uleb128 .LVU61
	.uleb128 .LVU61
	.uleb128 .LVU62
	.uleb128 .LVU62
	.uleb128 .LVU65
	.uleb128 .LVU65
	.uleb128 .LVU67
	.uleb128 .LVU67
	.uleb128 .LVU68
	.uleb128 .LVU68
	.uleb128 .LVU69
	.uleb128 .LVU69
	.uleb128 .LVU73
	.uleb128 .LVU73
	.uleb128 0
.LLST5:
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
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL21
	.4byte	.LFE1440
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 .LVU52
	.uleb128 .LVU54
	.uleb128 .LVU65
	.uleb128 .LVU67
	.uleb128 .LVU72
	.uleb128 0
.LLST6:
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL20
	.4byte	.LFE1440
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LFB1439
	.4byte	.LCFI3
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI3
	.4byte	.LFE1439
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 0
	.uleb128 .LVU94
	.uleb128 .LVU94
	.uleb128 0
.LLST8:
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL24
	.4byte	.LFE1439
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 0
	.uleb128 .LVU121
	.uleb128 .LVU121
	.uleb128 0
.LLST9:
	.4byte	.LVL22
	.4byte	.LVL30-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL30-1
	.4byte	.LFE1439
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 .LVU123
	.uleb128 0
.LLST10:
	.4byte	.LVL31
	.4byte	.LFE1439
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 .LVU90
	.uleb128 .LVU96
	.uleb128 .LVU96
	.uleb128 .LVU104
.LLST11:
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS12:
	.uleb128 .LVU80
	.uleb128 .LVU121
	.uleb128 .LVU121
	.uleb128 0
.LLST12:
	.4byte	.LVL22
	.4byte	.LVL30-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL30-1
	.4byte	.LFE1439
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS13:
	.uleb128 .LVU91
	.uleb128 .LVU96
	.uleb128 .LVU96
	.uleb128 .LVU98
	.uleb128 .LVU98
	.uleb128 .LVU101
	.uleb128 .LVU101
	.uleb128 .LVU105
.LLST13:
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0xb
	.byte	0x73
	.sleb128 0
	.byte	0x74
	.sleb128 20
	.byte	0x6
	.byte	0x1c
	.byte	0x23
	.uleb128 0x2
	.byte	0x31
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x74
	.sleb128 20
	.byte	0x6
	.byte	0x1c
	.byte	0x31
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0xb
	.byte	0x73
	.sleb128 0
	.byte	0x74
	.sleb128 20
	.byte	0x6
	.byte	0x1c
	.byte	0x31
	.byte	0x25
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LFB1438
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
	.4byte	.LFE1438
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 .LVU10
	.uleb128 .LVU24
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 .LVU11
	.uleb128 .LVU14
	.uleb128 .LVU14
	.uleb128 .LVU17
	.uleb128 .LVU17
	.uleb128 .LVU19
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LFB1437
	.4byte	.LCFI2
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI2
	.4byte	.LFE1437
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 0
	.uleb128 .LVU35
	.uleb128 .LVU35
	.uleb128 0
.LLST4:
	.4byte	.LVL6
	.4byte	.LVL7-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL7-1
	.4byte	.LFE1437
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x34
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB1438
	.4byte	.LFE1438-.LFB1438
	.4byte	.LFB1437
	.4byte	.LFE1437-.LFB1437
	.4byte	.LFB1440
	.4byte	.LFE1440-.LFB1440
	.4byte	.LFB1439
	.4byte	.LFE1439-.LFB1439
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB1438
	.4byte	.LFE1438
	.4byte	.LFB1437
	.4byte	.LFE1437
	.4byte	.LFB1440
	.4byte	.LFE1440
	.4byte	.LFB1439
	.4byte	.LFE1439
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF3:
	.ascii	"__uint8_t\000"
.LASF30:
	.ascii	"AvBusVoltage_d\000"
.LASF18:
	.ascii	"SHIFT_TAB_ICxx\000"
.LASF26:
	.ascii	"SensorType_t\000"
.LASF34:
	.ascii	"LowPassFilterBW\000"
.LASF29:
	.ascii	"LatestConv\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF45:
	.ascii	"RVBS_CheckFaultState\000"
.LASF25:
	.ascii	"VIRTUAL_SENSOR\000"
.LASF46:
	.ascii	"RVBS_CalcAvVbus\000"
.LASF20:
	.ascii	"SHIFT_TAB_OISx\000"
.LASF32:
	.ascii	"BusVoltageSensor_Handle_t\000"
.LASF54:
	.ascii	"MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Src/"
	.ascii	"r_divider_bus_voltage_sensor.c\000"
.LASF33:
	.ascii	"_Super\000"
.LASF23:
	.ascii	"float\000"
.LASF10:
	.ascii	"long long unsigned int\000"
.LASF50:
	.ascii	"tempValue\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF24:
	.ascii	"REAL_SENSOR\000"
.LASF17:
	.ascii	"SHIFT_TAB_OCxx\000"
.LASF39:
	.ascii	"aBuffer\000"
.LASF47:
	.ascii	"pHandle\000"
.LASF16:
	.ascii	"OFFSET_TAB_CCMRx\000"
.LASF28:
	.ascii	"ConversionFactor\000"
.LASF4:
	.ascii	"__uint16_t\000"
.LASF8:
	.ascii	"long unsigned int\000"
.LASF19:
	.ascii	"SHIFT_TAB_CCxP\000"
.LASF40:
	.ascii	"elem\000"
.LASF7:
	.ascii	"__uint32_t\000"
.LASF42:
	.ascii	"convHandle\000"
.LASF57:
	.ascii	"RVBS_Init\000"
.LASF38:
	.ascii	"UnderVoltageThreshold\000"
.LASF44:
	.ascii	"RDivider_Handle_t\000"
.LASF11:
	.ascii	"unsigned int\000"
.LASF53:
	.ascii	"GNU C17 10.2.1 20201103 (release) -mcpu=cortex-m4 -"
	.ascii	"mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=hard -march=ar"
	.ascii	"mv7e-m+fp -g -gdwarf-2 -O3 -fdata-sections -ffuncti"
	.ascii	"on-sections\000"
.LASF52:
	.ascii	"hAux\000"
.LASF12:
	.ascii	"uint8_t\000"
.LASF22:
	.ascii	"CHANNEL_OFFSET_TAB\000"
.LASF37:
	.ascii	"OverVoltageHysteresisUpDir\000"
.LASF56:
	.ascii	"RVBS_Clear\000"
.LASF21:
	.ascii	"USART_PRESCALER_TAB\000"
.LASF9:
	.ascii	"long long int\000"
.LASF48:
	.ascii	"rawValue\000"
.LASF41:
	.ascii	"index\000"
.LASF55:
	.ascii	"/home/joel/share/EVSPIN32G4_Shinano\000"
.LASF13:
	.ascii	"uint16_t\000"
.LASF2:
	.ascii	"short int\000"
.LASF49:
	.ascii	"fault\000"
.LASF51:
	.ascii	"wtemp\000"
.LASF14:
	.ascii	"uint32_t\000"
.LASF6:
	.ascii	"long int\000"
.LASF15:
	.ascii	"long double\000"
.LASF0:
	.ascii	"signed char\000"
.LASF35:
	.ascii	"OverVoltageThreshold\000"
.LASF31:
	.ascii	"FaultState\000"
.LASF43:
	.ascii	"_Bool\000"
.LASF27:
	.ascii	"SensorType\000"
.LASF36:
	.ascii	"OverVoltageThresholdLow\000"
	.ident	"GCC: (GNU Arm Embedded Toolchain 10-2020-q4-major) 10.2.1 20201103 (release)"
