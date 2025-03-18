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
	.file	"ntc_temperature_sensor.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.NTC_SetFaultState,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	NTC_SetFaultState
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	NTC_SetFaultState, %function
NTC_SetFaultState:
.LVL0:
.LFB1435:
	.file 1 "MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Src/ntc_temperature_sensor.c"
	.loc 1 73 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 74 3 view .LVU1
	.loc 1 83 5 view .LVU2
	.loc 1 83 8 is_stmt 0 view .LVU3
	ldrsh	r3, [r0, #16]
	.loc 1 85 10 view .LVU4
	ldrh	r2, [r0, #12]
	.loc 1 83 8 view .LVU5
	cmp	r3, #0
	.loc 1 85 18 view .LVU6
	ldrh	r3, [r0, #2]
	.loc 1 83 8 view .LVU7
	ble	.L2
	.loc 1 85 7 is_stmt 1 view .LVU8
	.loc 1 85 10 is_stmt 0 view .LVU9
	cmp	r2, r3
	bcc	.L7
	.loc 1 89 12 is_stmt 1 view .LVU10
	.loc 1 89 15 is_stmt 0 view .LVU11
	ldrh	r2, [r0, #14]
	cmp	r2, r3
	bls	.L4
.L6:
	.loc 1 91 16 view .LVU12
	movs	r0, #0
.LVL1:
	.loc 1 91 16 view .LVU13
	bx	lr
.LVL2:
.L7:
	.loc 1 87 16 view .LVU14
	movs	r0, #8
.LVL3:
	.loc 1 116 3 is_stmt 1 view .LVU15
	.loc 1 117 1 is_stmt 0 view .LVU16
	bx	lr
.LVL4:
.L2:
.LBB6:
.LBI6:
	.loc 1 72 17 is_stmt 1 view .LVU17
.LBB7:
	.loc 1 100 7 view .LVU18
	.loc 1 100 10 is_stmt 0 view .LVU19
	cmp	r2, r3
	bhi	.L7
	.loc 1 104 12 is_stmt 1 view .LVU20
	.loc 1 104 15 is_stmt 0 view .LVU21
	ldrh	r2, [r0, #14]
	cmp	r2, r3
	bcc	.L6
.LVL5:
.L4:
	.loc 1 104 15 view .LVU22
.LBE7:
.LBE6:
	.loc 1 95 9 is_stmt 1 view .LVU23
	.loc 1 95 16 is_stmt 0 view .LVU24
	ldrh	r0, [r0, #8]
.LVL6:
	.loc 1 95 16 view .LVU25
	bx	lr
	.cfi_endproc
.LFE1435:
	.size	NTC_SetFaultState, .-NTC_SetFaultState
	.section	.text.NTC_Init,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	NTC_Init
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	NTC_Init, %function
NTC_Init:
.LVL7:
.LFB1436:
	.loc 1 128 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 137 5 view .LVU27
	.loc 1 137 8 is_stmt 0 view .LVU28
	ldrb	r3, [r0]	@ zero_extendqisi2
	cbnz	r3, .L10
	.loc 1 139 7 is_stmt 1 view .LVU29
.LVL8:
.LBB8:
.LBI8:
	.loc 1 156 20 view .LVU30
.LBB9:
	.loc 1 166 5 view .LVU31
	.loc 1 166 8 is_stmt 0 view .LVU32
	ldrsh	r2, [r0, #16]
	cmp	r2, #0
	ble	.L11
.LBE9:
.LBE8:
	.loc 1 144 7 is_stmt 1 view .LVU33
	.loc 1 144 26 is_stmt 0 view .LVU34
	strh	r3, [r0, #2]	@ movhi
.LVL9:
	.loc 1 149 1 view .LVU35
	bx	lr
.L10:
	.loc 1 143 7 is_stmt 1 view .LVU36
	.loc 1 144 26 is_stmt 0 view .LVU37
	ldrh	r3, [r0, #4]
	strh	r3, [r0, #2]	@ movhi
	.loc 1 143 28 view .LVU38
	movs	r2, #0
	strh	r2, [r0, #8]	@ movhi
	.loc 1 144 7 is_stmt 1 view .LVU39
	.loc 1 149 1 is_stmt 0 view .LVU40
	bx	lr
.LVL10:
.L11:
.LBB11:
.LBB10:
	.loc 1 172 7 is_stmt 1 view .LVU41
	.loc 1 172 26 is_stmt 0 view .LVU42
	movw	r3, #65535
	strh	r3, [r0, #2]	@ movhi
	bx	lr
.LBE10:
.LBE11:
	.cfi_endproc
.LFE1436:
	.size	NTC_Init, .-NTC_Init
	.section	.text.NTC_CalcAvTemp,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	NTC_CalcAvTemp
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	NTC_CalcAvTemp, %function
NTC_CalcAvTemp:
.LVL11:
.LFB1438:
	.loc 1 187 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 188 3 view .LVU44
	.loc 1 197 5 view .LVU45
	.loc 1 187 1 is_stmt 0 view .LVU46
	push	{r4, lr}
.LCFI0:
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 197 8 view .LVU47
	ldrb	r3, [r0]	@ zero_extendqisi2
	.loc 1 187 1 view .LVU48
	mov	r4, r0
	.loc 1 197 8 view .LVU49
	cbnz	r3, .L15
.LBB12:
	.loc 1 199 7 is_stmt 1 view .LVU50
	.loc 1 200 7 view .LVU51
.LVL12:
	.loc 1 202 7 view .LVU52
	.loc 1 202 10 is_stmt 0 view .LVU53
	movw	r3, #65535
	cmp	r1, r3
	beq	.L16
.LBB13:
	.loc 1 208 9 is_stmt 1 view .LVU54
	.loc 1 209 9 view .LVU55
	.loc 1 209 17 is_stmt 0 view .LVU56
	ldrh	r3, [r0, #10]
	.loc 1 210 19 view .LVU57
	ldrh	r2, [r0, #2]
	.loc 1 209 15 view .LVU58
	subs	r0, r3, #1
.LVL13:
	.loc 1 210 9 is_stmt 1 view .LVU59
	.loc 1 211 9 view .LVU60
	.loc 1 211 15 is_stmt 0 view .LVU61
	mla	r1, r0, r2, r1
.LVL14:
	.loc 1 212 9 is_stmt 1 view .LVU62
	.loc 1 214 9 view .LVU63
	.loc 1 212 15 is_stmt 0 view .LVU64
	udiv	r1, r1, r3
.LVL15:
	.loc 1 214 30 view .LVU65
	strh	r1, [r4, #2]	@ movhi
.LVL16:
.L16:
	.loc 1 214 30 view .LVU66
.LBE13:
	.loc 1 217 7 is_stmt 1 view .LVU67
	.loc 1 217 30 is_stmt 0 view .LVU68
	mov	r0, r4
	bl	NTC_SetFaultState
.LVL17:
	.loc 1 217 28 view .LVU69
	strh	r0, [r4, #8]	@ movhi
.LBE12:
	.loc 1 223 5 is_stmt 1 view .LVU70
.LVL18:
	.loc 1 227 3 view .LVU71
	.loc 1 228 1 is_stmt 0 view .LVU72
	pop	{r4, pc}
.LVL19:
.L15:
	.loc 1 221 7 is_stmt 1 view .LVU73
	.loc 1 221 28 is_stmt 0 view .LVU74
	movs	r0, #0
.LVL20:
	.loc 1 221 28 view .LVU75
	strh	r0, [r4, #8]	@ movhi
	.loc 1 223 5 is_stmt 1 view .LVU76
.LVL21:
	.loc 1 227 3 view .LVU77
	.loc 1 228 1 is_stmt 0 view .LVU78
	pop	{r4, pc}
	.loc 1 228 1 view .LVU79
	.cfi_endproc
.LFE1438:
	.size	NTC_CalcAvTemp, .-NTC_CalcAvTemp
	.section	.text.NTC_GetAvTemp_d,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	NTC_GetAvTemp_d
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	NTC_GetAvTemp_d, %function
NTC_GetAvTemp_d:
.LVL22:
.LFB1439:
	.loc 1 238 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 242 3 view .LVU81
	.loc 1 244 1 is_stmt 0 view .LVU82
	ldrh	r0, [r0, #2]
.LVL23:
	.loc 1 244 1 view .LVU83
	bx	lr
	.cfi_endproc
.LFE1439:
	.size	NTC_GetAvTemp_d, .-NTC_GetAvTemp_d
	.section	.text.NTC_GetAvTemp_C,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	NTC_GetAvTemp_C
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	NTC_GetAvTemp_C, %function
NTC_GetAvTemp_C:
.LVL24:
.LFB1440:
	.loc 1 254 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 255 3 view .LVU85
	.loc 1 264 5 view .LVU86
	.loc 1 266 5 view .LVU87
	.loc 1 266 8 is_stmt 0 view .LVU88
	ldrb	r3, [r0]	@ zero_extendqisi2
	cbnz	r3, .L21
	.loc 1 268 7 is_stmt 1 view .LVU89
	.loc 1 268 13 is_stmt 0 view .LVU90
	ldrh	r2, [r0, #2]
.LVL25:
	.loc 1 269 7 is_stmt 1 view .LVU91
	.loc 1 269 13 is_stmt 0 view .LVU92
	ldr	r1, [r0, #20]
	.loc 1 270 23 view .LVU93
	ldrsh	r3, [r0, #16]
	.loc 1 273 31 view .LVU94
	ldrh	r0, [r0, #24]
.LVL26:
	.loc 1 269 13 view .LVU95
	subs	r2, r2, r1
.LVL27:
	.loc 1 270 7 is_stmt 1 view .LVU96
	.loc 1 273 7 view .LVU97
	.loc 1 270 13 is_stmt 0 view .LVU98
	mul	r3, r2, r3
	.loc 1 273 13 view .LVU99
	add	r0, r0, r3, asr #16
.LVL28:
	.loc 1 282 5 is_stmt 1 view .LVU100
	.loc 1 286 3 view .LVU101
	.loc 1 287 1 is_stmt 0 view .LVU102
	sxth	r0, r0
.LVL29:
	.loc 1 287 1 view .LVU103
	bx	lr
.LVL30:
.L21:
	.loc 1 280 7 is_stmt 1 view .LVU104
	.loc 1 280 13 is_stmt 0 view .LVU105
	ldrh	r0, [r0, #6]
.LVL31:
	.loc 1 282 5 is_stmt 1 view .LVU106
	.loc 1 286 3 view .LVU107
	.loc 1 287 1 is_stmt 0 view .LVU108
	sxth	r0, r0
.LVL32:
	.loc 1 287 1 view .LVU109
	bx	lr
	.cfi_endproc
.LFE1440:
	.size	NTC_GetAvTemp_C, .-NTC_GetAvTemp_C
	.section	.text.NTC_CheckTemp,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	NTC_CheckTemp
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	NTC_CheckTemp, %function
NTC_CheckTemp:
.LVL33:
.LFB1441:
	.loc 1 300 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 304 3 view .LVU111
	.loc 1 307 1 is_stmt 0 view .LVU112
	ldrh	r0, [r0, #8]
.LVL34:
	.loc 1 307 1 view .LVU113
	bx	lr
	.cfi_endproc
.LFE1441:
	.size	NTC_CheckTemp, .-NTC_CheckTemp
	.text
.Letext0:
	.file 2 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_ll_tim.h"
	.file 5 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_ll_usart.h"
	.file 6 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_ll_dma.h"
	.file 7 "Inc/mc_type.h"
	.file 8 "MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Inc/ntc_temperature_sensor.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x553
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0xc
	.4byte	.LASF53
	.4byte	.LASF54
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x2
	.byte	0x2b
	.byte	0x18
	.4byte	0x43
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x37
	.byte	0x18
	.4byte	0x56
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x39
	.byte	0x19
	.4byte	0x69
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x2
	.byte	0x4d
	.byte	0x18
	.4byte	0x7c
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x2
	.byte	0x4f
	.byte	0x19
	.4byte	0x8f
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x37
	.uleb128 0x5
	.4byte	0xab
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x20
	.byte	0x13
	.4byte	0x4a
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x3
	.byte	0x24
	.byte	0x14
	.4byte	0x5d
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x3
	.byte	0x2c
	.byte	0x13
	.4byte	0x70
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x83
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
	.4byte	0x29
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
	.4byte	0x29
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
	.4byte	0x29
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
	.byte	0x7
	.byte	0x1
	.4byte	0x43
	.byte	0x7
	.byte	0xbf
	.byte	0x1
	.4byte	0x21c
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x7
	.byte	0xc1
	.byte	0x3
	.4byte	0x201
	.uleb128 0xb
	.byte	0x1c
	.byte	0x8
	.byte	0x2e
	.byte	0x9
	.4byte	0x2e6
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x8
	.byte	0x30
	.byte	0x10
	.4byte	0x21c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x8
	.byte	0x33
	.byte	0xc
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x8
	.byte	0x36
	.byte	0xc
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x8
	.byte	0x38
	.byte	0xc
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x8
	.byte	0x3b
	.byte	0xc
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x8
	.byte	0x3e
	.byte	0xc
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x8
	.byte	0x41
	.byte	0xc
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x8
	.byte	0x46
	.byte	0xc
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0x8
	.byte	0x4b
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.ascii	"wV0\000"
	.byte	0x8
	.byte	0x4d
	.byte	0xc
	.4byte	0xe0
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.ascii	"hT0\000"
	.byte	0x8
	.byte	0x50
	.byte	0xc
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x8
	.byte	0x52
	.byte	0xb
	.4byte	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.byte	0
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0x8
	.byte	0x54
	.byte	0x3
	.4byte	0x228
	.uleb128 0x5
	.4byte	0x2e6
	.uleb128 0xe
	.byte	0x1
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x12b
	.byte	0x11
	.byte	0x1
	.4byte	0xc8
	.4byte	.LFB1441
	.4byte	.LFE1441
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x32c
	.uleb128 0xf
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x12b
	.byte	0x33
	.4byte	0x32c
	.4byte	.LLST14
	.4byte	.LVUS14
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x2f2
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF43
	.byte	0x1
	.byte	0xfd
	.byte	0x10
	.byte	0x1
	.4byte	0xbc
	.4byte	.LFB1440
	.4byte	.LFE1440
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x38e
	.uleb128 0x12
	.4byte	.LASF44
	.byte	0x1
	.byte	0xfd
	.byte	0x2e
	.4byte	0x38e
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x13
	.4byte	.LASF45
	.byte	0x1
	.byte	0xff
	.byte	0xb
	.4byte	0xbc
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x14
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x108
	.byte	0xd
	.4byte	0xd4
	.4byte	.LLST13
	.4byte	.LVUS13
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x2e6
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF47
	.byte	0x1
	.byte	0xed
	.byte	0x11
	.byte	0x1
	.4byte	0xc8
	.4byte	.LFB1439
	.4byte	.LFE1439
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x3c7
	.uleb128 0x12
	.4byte	.LASF44
	.byte	0x1
	.byte	0xed
	.byte	0x35
	.4byte	0x32c
	.4byte	.LLST10
	.4byte	.LVUS10
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF48
	.byte	0x1
	.byte	0xba
	.byte	0x11
	.byte	0x1
	.4byte	0xc8
	.4byte	.LFB1438
	.4byte	.LFE1438
	.4byte	.LLST4
	.byte	0x1
	.4byte	0x473
	.uleb128 0x12
	.4byte	.LASF44
	.byte	0x1
	.byte	0xba
	.byte	0x2e
	.4byte	0x38e
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x12
	.4byte	.LASF49
	.byte	0x1
	.byte	0xba
	.byte	0x40
	.4byte	0xc8
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x13
	.4byte	.LASF45
	.byte	0x1
	.byte	0xbc
	.byte	0xc
	.4byte	0xc8
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x16
	.4byte	.LBB12
	.4byte	.LBE12
	.uleb128 0x13
	.4byte	.LASF50
	.byte	0x1
	.byte	0xc7
	.byte	0x10
	.4byte	0xc8
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x17
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	0x461
	.uleb128 0x13
	.4byte	.LASF51
	.byte	0x1
	.byte	0xd0
	.byte	0x12
	.4byte	0xe0
	.4byte	.LLST9
	.4byte	.LVUS9
	.byte	0
	.uleb128 0x18
	.4byte	.LVL17
	.4byte	0x4d6
	.uleb128 0x19
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF55
	.byte	0x1
	.byte	0x9c
	.byte	0x14
	.byte	0x1
	.byte	0x3
	.4byte	0x48e
	.uleb128 0x1b
	.4byte	.LASF44
	.byte	0x1
	.byte	0x9c
	.byte	0x2c
	.4byte	0x38e
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF56
	.byte	0x1
	.byte	0x7f
	.byte	0xd
	.byte	0x1
	.4byte	.LFB1436
	.4byte	.LFE1436
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x4d6
	.uleb128 0x1d
	.4byte	.LASF44
	.byte	0x1
	.byte	0x7f
	.byte	0x24
	.4byte	0x38e
	.byte	0x1
	.byte	0x50
	.uleb128 0x1e
	.4byte	0x473
	.4byte	.LBI8
	.byte	.LVU30
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x8b
	.byte	0x7
	.uleb128 0x1f
	.4byte	0x481
	.4byte	.LLST3
	.4byte	.LVUS3
	.byte	0
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.4byte	.LASF57
	.byte	0x1
	.byte	0x48
	.byte	0x11
	.byte	0x1
	.4byte	0xc8
	.byte	0x1
	.4byte	0x502
	.uleb128 0x1b
	.4byte	.LASF44
	.byte	0x1
	.byte	0x48
	.byte	0x31
	.4byte	0x38e
	.uleb128 0x21
	.4byte	.LASF58
	.byte	0x1
	.byte	0x4a
	.byte	0xc
	.4byte	0xc8
	.byte	0
	.uleb128 0x22
	.4byte	0x4d6
	.4byte	.LFB1435
	.4byte	.LFE1435
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x1f
	.4byte	0x4e9
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x23
	.4byte	0x4f5
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x24
	.4byte	0x4d6
	.4byte	.LBI6
	.byte	.LVU17
	.4byte	.LBB6
	.4byte	.LBE6
	.byte	0x1
	.byte	0x48
	.byte	0x11
	.uleb128 0x1f
	.4byte	0x4e9
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x25
	.4byte	0x4f5
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LVUS14:
	.uleb128 0
	.uleb128 .LVU113
	.uleb128 .LVU113
	.uleb128 0
.LLST14:
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL34
	.4byte	.LFE1441
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 0
	.uleb128 .LVU95
	.uleb128 .LVU95
	.uleb128 .LVU104
	.uleb128 .LVU104
	.uleb128 .LVU106
	.uleb128 .LVU106
	.uleb128 0
.LLST11:
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL26
	.4byte	.LVL30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL31
	.4byte	.LFE1440
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS12:
	.uleb128 .LVU101
	.uleb128 .LVU104
	.uleb128 .LVU107
	.uleb128 0
.LLST12:
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL31
	.4byte	.LFE1440
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS13:
	.uleb128 .LVU91
	.uleb128 .LVU97
	.uleb128 .LVU97
	.uleb128 .LVU100
	.uleb128 .LVU100
	.uleb128 .LVU103
	.uleb128 .LVU103
	.uleb128 .LVU104
	.uleb128 .LVU106
	.uleb128 .LVU109
	.uleb128 .LVU109
	.uleb128 0
.LLST13:
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0xf
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x23
	.uleb128 0x10
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x72
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x11
	.byte	0x73
	.sleb128 0
	.byte	0x40
	.byte	0x26
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x23
	.uleb128 0x18
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL32
	.4byte	.LFE1440
	.2byte	0xc
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x23
	.uleb128 0x6
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 0
	.uleb128 .LVU83
	.uleb128 .LVU83
	.uleb128 0
.LLST10:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL23
	.4byte	.LFE1439
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LFB1438
	.4byte	.LCFI0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI0
	.4byte	.LFE1438
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 0
	.uleb128 .LVU59
	.uleb128 .LVU59
	.uleb128 .LVU73
	.uleb128 .LVU73
	.uleb128 .LVU75
	.uleb128 .LVU75
	.uleb128 0
.LLST5:
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL13
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL20
	.4byte	.LFE1438
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 0
	.uleb128 .LVU62
	.uleb128 .LVU62
	.uleb128 .LVU73
	.uleb128 .LVU73
	.uleb128 0
.LLST6:
	.4byte	.LVL11
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL14
	.4byte	.LVL19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LFE1438
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 .LVU71
	.uleb128 .LVU73
	.uleb128 .LVU77
	.uleb128 0
.LLST7:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x2
	.byte	0x74
	.sleb128 8
	.4byte	.LVL21
	.4byte	.LFE1438
	.2byte	0x2
	.byte	0x74
	.sleb128 8
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 .LVU52
	.uleb128 .LVU62
	.uleb128 .LVU62
	.uleb128 .LVU73
.LLST8:
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL14
	.4byte	.LVL19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 .LVU59
	.uleb128 .LVU60
	.uleb128 .LVU60
	.uleb128 .LVU62
	.uleb128 .LVU62
	.uleb128 .LVU63
	.uleb128 .LVU63
	.uleb128 .LVU65
	.uleb128 .LVU65
	.uleb128 .LVU66
.LLST9:
	.4byte	.LVL13
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0xc
	.byte	0x71
	.sleb128 0
	.byte	0xf7
	.uleb128 0x29
	.byte	0x73
	.sleb128 0
	.byte	0xf7
	.uleb128 0x29
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 .LVU30
	.uleb128 .LVU35
	.uleb128 .LVU41
	.uleb128 0
.LLST3:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL10
	.4byte	.LFE1436
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU13
	.uleb128 .LVU13
	.uleb128 .LVU14
	.uleb128 .LVU14
	.uleb128 .LVU15
	.uleb128 .LVU15
	.uleb128 .LVU17
	.uleb128 .LVU17
	.uleb128 .LVU25
	.uleb128 .LVU25
	.uleb128 0
.LLST0:
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
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL6
	.4byte	.LFE1435
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 .LVU15
	.uleb128 .LVU17
	.uleb128 .LVU25
	.uleb128 0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL6
	.4byte	.LFE1435
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 .LVU17
	.uleb128 .LVU22
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x44
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF20:
	.ascii	"OFFSET_TAB_CCMRx\000"
.LASF46:
	.ascii	"wTemp\000"
.LASF3:
	.ascii	"__uint8_t\000"
.LASF22:
	.ascii	"SHIFT_TAB_ICxx\000"
.LASF30:
	.ascii	"SensorType_t\000"
.LASF8:
	.ascii	"__int32_t\000"
.LASF7:
	.ascii	"short unsigned int\000"
.LASF43:
	.ascii	"NTC_GetAvTemp_C\000"
.LASF29:
	.ascii	"VIRTUAL_SENSOR\000"
.LASF58:
	.ascii	"hFault\000"
.LASF32:
	.ascii	"hAvTemp_d\000"
.LASF27:
	.ascii	"float\000"
.LASF37:
	.ascii	"hOverTempThreshold\000"
.LASF2:
	.ascii	"unsigned char\000"
.LASF45:
	.ascii	"returnValue\000"
.LASF28:
	.ascii	"REAL_SENSOR\000"
.LASF21:
	.ascii	"SHIFT_TAB_OCxx\000"
.LASF11:
	.ascii	"long unsigned int\000"
.LASF48:
	.ascii	"NTC_CalcAvTemp\000"
.LASF44:
	.ascii	"pHandle\000"
.LASF41:
	.ascii	"NTC_Handle_t\000"
.LASF33:
	.ascii	"hExpectedTemp_d\000"
.LASF47:
	.ascii	"NTC_GetAvTemp_d\000"
.LASF57:
	.ascii	"NTC_SetFaultState\000"
.LASF53:
	.ascii	"MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Src/"
	.ascii	"ntc_temperature_sensor.c\000"
.LASF23:
	.ascii	"SHIFT_TAB_CCxP\000"
.LASF24:
	.ascii	"SHIFT_TAB_OISx\000"
.LASF10:
	.ascii	"__uint32_t\000"
.LASF40:
	.ascii	"convHandle\000"
.LASF4:
	.ascii	"__int16_t\000"
.LASF56:
	.ascii	"NTC_Init\000"
.LASF55:
	.ascii	"NTC_Clear\000"
.LASF0:
	.ascii	"unsigned int\000"
.LASF34:
	.ascii	"hExpectedTemp_C\000"
.LASF52:
	.ascii	"GNU C17 10.2.1 20201103 (release) -mcpu=cortex-m4 -"
	.ascii	"mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=hard -march=ar"
	.ascii	"mv7e-m+fp -g -gdwarf-2 -O3 -fdata-sections -ffuncti"
	.ascii	"on-sections\000"
.LASF13:
	.ascii	"long long unsigned int\000"
.LASF14:
	.ascii	"uint8_t\000"
.LASF39:
	.ascii	"hSensitivity\000"
.LASF26:
	.ascii	"CHANNEL_OFFSET_TAB\000"
.LASF42:
	.ascii	"NTC_CheckTemp\000"
.LASF15:
	.ascii	"int16_t\000"
.LASF25:
	.ascii	"USART_PRESCALER_TAB\000"
.LASF17:
	.ascii	"int32_t\000"
.LASF35:
	.ascii	"hFaultState\000"
.LASF12:
	.ascii	"long long int\000"
.LASF49:
	.ascii	"rawValue\000"
.LASF50:
	.ascii	"hAux\000"
.LASF54:
	.ascii	"/home/joel/share/EVSPIN32G4_Shinano\000"
.LASF16:
	.ascii	"uint16_t\000"
.LASF5:
	.ascii	"short int\000"
.LASF6:
	.ascii	"__uint16_t\000"
.LASF51:
	.ascii	"wtemp\000"
.LASF31:
	.ascii	"bSensorType\000"
.LASF18:
	.ascii	"uint32_t\000"
.LASF9:
	.ascii	"long int\000"
.LASF19:
	.ascii	"long double\000"
.LASF1:
	.ascii	"signed char\000"
.LASF38:
	.ascii	"hOverTempDeactThreshold\000"
.LASF36:
	.ascii	"hLowPassFilterBW\000"
	.ident	"GCC: (GNU Arm Embedded Toolchain 10-2020-q4-major) 10.2.1 20201103 (release)"
