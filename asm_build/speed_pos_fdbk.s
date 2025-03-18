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
	.file	"speed_pos_fdbk.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.SPD_GetMecAngle,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	SPD_GetMecAngle
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	SPD_GetMecAngle, %function
SPD_GetMecAngle:
.LVL0:
.LFB1438:
	.file 1 "MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Src/speed_pos_fdbk.c"
	.loc 1 65 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 69 3 view .LVU1
	.loc 1 71 1 is_stmt 0 view .LVU2
	ldr	r0, [r0, #8]
.LVL1:
	.loc 1 71 1 view .LVU3
	bx	lr
	.cfi_endproc
.LFE1438:
	.size	SPD_GetMecAngle, .-SPD_GetMecAngle
	.section	.text.SPD_GetAvrgMecSpeedUnit,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	SPD_GetAvrgMecSpeedUnit
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	SPD_GetAvrgMecSpeedUnit, %function
SPD_GetAvrgMecSpeedUnit:
.LVL2:
.LFB1439:
	.loc 1 79 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 83 3 view .LVU5
	.loc 1 85 1 is_stmt 0 view .LVU6
	ldrsh	r0, [r0, #12]
.LVL3:
	.loc 1 85 1 view .LVU7
	bx	lr
	.cfi_endproc
.LFE1439:
	.size	SPD_GetAvrgMecSpeedUnit, .-SPD_GetAvrgMecSpeedUnit
	.section	.text.SPD_GetElSpeedDpp,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	SPD_GetElSpeedDpp
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	SPD_GetElSpeedDpp, %function
SPD_GetElSpeedDpp:
.LVL4:
.LFB1440:
	.loc 1 97 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 101 3 view .LVU9
	.loc 1 103 1 is_stmt 0 view .LVU10
	ldrsh	r0, [r0, #14]
.LVL5:
	.loc 1 103 1 view .LVU11
	bx	lr
	.cfi_endproc
.LFE1440:
	.size	SPD_GetElSpeedDpp, .-SPD_GetElSpeedDpp
	.section	.text.SPD_IsMecSpeedReliable,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	SPD_IsMecSpeedReliable
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	SPD_IsMecSpeedReliable, %function
SPD_IsMecSpeedReliable:
.LVL6:
.LFB1441:
	.loc 1 133 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 134 3 view .LVU13
	.loc 1 143 5 view .LVU14
	.loc 1 144 5 view .LVU15
	.loc 1 145 5 view .LVU16
	.loc 1 146 5 view .LVU17
	.loc 1 147 5 view .LVU18
	.loc 1 153 9 is_stmt 0 view .LVU19
	ldrsh	r3, [r1]
	.loc 1 163 35 view .LVU20
	ldrh	r1, [r0, #20]
.LVL7:
	.loc 1 133 1 view .LVU21
	push	{lr}
.LCFI0:
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	.loc 1 153 8 view .LVU22
	cmp	r3, #0
	.loc 1 155 12 view .LVU23
	it	lt
	rsblt	r3, r3, #0
	.loc 1 172 8 view .LVU24
	ldrh	lr, [r0, #22]
	.loc 1 147 13 view .LVU25
	ldrb	ip, [r0, #3]	@ zero_extendqisi2
.LVL8:
	.loc 1 148 5 is_stmt 1 view .LVU26
	.loc 1 150 5 view .LVU27
	.loc 1 150 23 is_stmt 0 view .LVU28
	ldrb	r2, [r0]	@ zero_extendqisi2
.LVL9:
	.loc 1 153 5 is_stmt 1 view .LVU29
	.loc 1 155 7 view .LVU30
	.loc 1 160 7 view .LVU31
	.loc 1 160 24 is_stmt 0 view .LVU32
	uxth	r3, r3
.LVL10:
	.loc 1 163 5 is_stmt 1 view .LVU33
	.loc 1 170 5 view .LVU34
	.loc 1 172 5 view .LVU35
	.loc 1 172 8 is_stmt 0 view .LVU36
	cmp	lr, r3
	bhi	.L14
	.loc 1 163 8 view .LVU37
	cmp	r1, r3
	ite	cs
	movcs	r3, #0
.LVL11:
	.loc 1 163 8 view .LVU38
	movcc	r3, #1
.L8:
.LVL12:
	.loc 1 179 5 is_stmt 1 view .LVU39
	.loc 1 182 5 view .LVU40
	.loc 1 182 16 is_stmt 0 view .LVU41
	ldrsh	r1, [r0, #18]
	.loc 1 192 8 view .LVU42
	ldrh	lr, [r0, #24]
	.loc 1 182 8 view .LVU43
	cmp	r1, #0
	.loc 1 184 7 is_stmt 1 view .LVU44
	.loc 1 184 12 is_stmt 0 view .LVU45
	it	lt
	rsblt	r1, r1, #0
	.loc 1 189 7 is_stmt 1 view .LVU46
	.loc 1 189 25 is_stmt 0 view .LVU47
	uxth	r1, r1
.LVL13:
	.loc 1 192 5 is_stmt 1 view .LVU48
	.loc 1 192 8 is_stmt 0 view .LVU49
	cmp	lr, r1
	bcc	.L11
	.loc 1 199 5 is_stmt 1 view .LVU50
	.loc 1 201 5 view .LVU51
	.loc 1 201 8 is_stmt 0 view .LVU52
	cbz	r3, .L12
.L11:
.LVL14:
	.loc 1 203 7 is_stmt 1 view .LVU53
	.loc 1 203 10 is_stmt 0 view .LVU54
	cmp	ip, r2
	bls	.L13
	.loc 1 205 9 is_stmt 1 view .LVU55
	.loc 1 205 26 is_stmt 0 view .LVU56
	adds	r2, r2, #1
.LVL15:
	.loc 1 205 26 view .LVU57
	uxtb	r2, r2
.LVL16:
.L13:
	.loc 1 221 7 is_stmt 1 view .LVU58
	.loc 1 224 5 view .LVU59
	.loc 1 231 5 view .LVU60
	.loc 1 233 5 view .LVU61
	.loc 1 233 32 is_stmt 0 view .LVU62
	strb	r2, [r0]
.LVL17:
	.loc 1 237 3 is_stmt 1 view .LVU63
	.loc 1 238 1 is_stmt 0 view .LVU64
	subs	r0, r2, ip
.LVL18:
	.loc 1 238 1 view .LVU65
	it	ne
	movne	r0, #1
	ldr	pc, [sp], #4
.LVL19:
.L14:
	.loc 1 174 18 view .LVU66
	movs	r3, #1
.LVL20:
	.loc 1 174 18 view .LVU67
	b	.L8
.LVL21:
.L12:
	.loc 1 214 7 is_stmt 1 view .LVU68
	.loc 1 216 27 is_stmt 0 view .LVU69
	cmp	ip, r2
	it	hi
	movhi	r2, #0
.LVL22:
	.loc 1 221 7 is_stmt 1 view .LVU70
	.loc 1 224 5 view .LVU71
	.loc 1 231 5 view .LVU72
	.loc 1 233 5 view .LVU73
	.loc 1 233 32 is_stmt 0 view .LVU74
	strb	r2, [r0]
.LVL23:
	.loc 1 237 3 is_stmt 1 view .LVU75
	.loc 1 238 1 is_stmt 0 view .LVU76
	subs	r0, r2, ip
.LVL24:
	.loc 1 238 1 view .LVU77
	it	ne
	movne	r0, #1
	ldr	pc, [sp], #4
	.cfi_endproc
.LFE1441:
	.size	SPD_IsMecSpeedReliable, .-SPD_IsMecSpeedReliable
	.section	.text.SPD_GetS16Speed,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	SPD_GetS16Speed
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	SPD_GetS16Speed, %function
SPD_GetS16Speed:
.LVL25:
.LFB1442:
	.loc 1 252 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 253 3 view .LVU79
	.loc 1 262 5 view .LVU80
	.loc 1 263 5 view .LVU81
	.loc 1 263 10 is_stmt 0 view .LVU82
	ldrsh	r3, [r0, #12]
.LVL26:
	.loc 1 264 13 view .LVU83
	ldrsh	r0, [r0, #20]
.LVL27:
	.loc 1 263 10 view .LVU84
	rsb	r3, r3, r3, lsl #15
.LVL28:
	.loc 1 264 5 is_stmt 1 view .LVU85
	.loc 1 265 5 view .LVU86
	.loc 1 269 3 view .LVU87
	.loc 1 264 10 is_stmt 0 view .LVU88
	sdiv	r0, r3, r0
	.loc 1 270 1 view .LVU89
	sxth	r0, r0
	bx	lr
	.cfi_endproc
.LFE1442:
	.size	SPD_GetS16Speed, .-SPD_GetS16Speed
	.section	.text.SPD_GetElToMecRatio,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	SPD_GetElToMecRatio
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	SPD_GetElToMecRatio, %function
SPD_GetElToMecRatio:
.LVL29:
.LFB1443:
	.loc 1 282 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 286 3 view .LVU91
	.loc 1 288 1 is_stmt 0 view .LVU92
	ldrb	r0, [r0, #1]	@ zero_extendqisi2
.LVL30:
	.loc 1 288 1 view .LVU93
	bx	lr
	.cfi_endproc
.LFE1443:
	.size	SPD_GetElToMecRatio, .-SPD_GetElToMecRatio
	.section	.text.SPD_SetElToMecRatio,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	SPD_SetElToMecRatio
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	SPD_SetElToMecRatio, %function
SPD_SetElToMecRatio:
.LVL31:
.LFB1444:
	.loc 1 300 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 309 5 view .LVU95
	.loc 1 309 28 is_stmt 0 view .LVU96
	strb	r1, [r0, #1]
	.loc 1 313 1 view .LVU97
	bx	lr
	.cfi_endproc
.LFE1444:
	.size	SPD_SetElToMecRatio, .-SPD_SetElToMecRatio
	.text
.Letext0:
	.file 2 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_ll_tim.h"
	.file 5 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_ll_usart.h"
	.file 6 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_ll_dma.h"
	.file 7 "MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Inc/speed_pos_fdbk.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x553
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0xc
	.4byte	.LASF62
	.4byte	.LASF63
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
	.uleb128 0x5
	.4byte	0xbc
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
	.4byte	0xe5
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF19
	.uleb128 0x6
	.4byte	0xb7
	.4byte	0x10d
	.uleb128 0x7
	.4byte	0xa4
	.byte	0x9
	.byte	0
	.uleb128 0x5
	.4byte	0xfd
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x4
	.byte	0x2d
	.byte	0x16
	.4byte	0x10d
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
	.4byte	0x10d
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
	.4byte	0x10d
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
	.4byte	0x10d
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
	.4byte	0x10d
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
	.4byte	0xf1
	.4byte	0x195
	.uleb128 0x7
	.4byte	0xa4
	.byte	0xb
	.byte	0
	.uleb128 0x5
	.4byte	0x185
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x5
	.byte	0x2e
	.byte	0x17
	.4byte	0x195
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
	.4byte	0x1e7
	.uleb128 0x7
	.4byte	0xa4
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.4byte	0x1d7
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x6
	.byte	0x2f
	.byte	0x16
	.4byte	0x1e7
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
	.byte	0x20
	.byte	0x7
	.byte	0x32
	.byte	0x9
	.4byte	0x300
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x7
	.byte	0x35
	.byte	0xb
	.4byte	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x7
	.byte	0x36
	.byte	0xb
	.4byte	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x7
	.byte	0x38
	.byte	0xb
	.4byte	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0x7
	.byte	0x3a
	.byte	0xb
	.4byte	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x7
	.byte	0x3b
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x7
	.byte	0x3d
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0x7
	.byte	0x3e
	.byte	0xb
	.4byte	0xd9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0x7
	.byte	0x3f
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0x7
	.byte	0x41
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0x7
	.byte	0x44
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0x7
	.byte	0x46
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0x7
	.byte	0x48
	.byte	0xc
	.4byte	0xcd
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x7
	.byte	0x4a
	.byte	0xc
	.4byte	0xcd
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0x7
	.byte	0x4c
	.byte	0xc
	.4byte	0xcd
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0x7
	.byte	0x4f
	.byte	0xc
	.4byte	0xcd
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0xa
	.4byte	.LASF43
	.byte	0x7
	.byte	0x51
	.byte	0xc
	.4byte	0xe5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0
	.uleb128 0x3
	.4byte	.LASF44
	.byte	0x7
	.byte	0x56
	.byte	0x3
	.4byte	0x206
	.uleb128 0x5
	.4byte	0x300
	.uleb128 0xb
	.byte	0x1
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x12b
	.byte	0xd
	.byte	0x1
	.4byte	.LFB1444
	.4byte	.LFE1444
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x34b
	.uleb128 0xc
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x12b
	.byte	0x39
	.4byte	0x34b
	.byte	0x1
	.byte	0x50
	.uleb128 0xd
	.ascii	"bPP\000"
	.byte	0x1
	.2byte	0x12b
	.byte	0x4a
	.4byte	0xab
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x300
	.uleb128 0xf
	.byte	0x1
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x119
	.byte	0x10
	.byte	0x1
	.4byte	0xab
	.4byte	.LFB1443
	.4byte	.LFE1443
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x386
	.uleb128 0x10
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x119
	.byte	0x42
	.4byte	0x386
	.4byte	.LLST15
	.4byte	.LVUS15
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x30c
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF47
	.byte	0x1
	.byte	0xfb
	.byte	0x10
	.byte	0x1
	.4byte	0xbc
	.4byte	.LFB1442
	.4byte	.LFE1442
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x3e8
	.uleb128 0x12
	.4byte	.LASF45
	.byte	0x1
	.byte	0xfb
	.byte	0x3e
	.4byte	0x386
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x13
	.4byte	.LASF48
	.byte	0x1
	.byte	0xfd
	.byte	0xb
	.4byte	0xbc
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x14
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x106
	.byte	0xd
	.4byte	0xd9
	.4byte	.LLST14
	.4byte	.LVUS14
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF50
	.byte	0x1
	.byte	0x84
	.byte	0xd
	.byte	0x1
	.4byte	0x4b4
	.4byte	.LFB1441
	.4byte	.LFE1441
	.4byte	.LLST3
	.byte	0x1
	.4byte	0x4b4
	.uleb128 0x12
	.4byte	.LASF45
	.byte	0x1
	.byte	0x84
	.byte	0x3c
	.4byte	0x34b
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x12
	.4byte	.LASF51
	.byte	0x1
	.byte	0x84
	.byte	0x54
	.4byte	0x4bb
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x13
	.4byte	.LASF52
	.byte	0x1
	.byte	0x86
	.byte	0x8
	.4byte	0x4b4
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x13
	.4byte	.LASF53
	.byte	0x1
	.byte	0x8f
	.byte	0xe
	.4byte	0xcd
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x13
	.4byte	.LASF54
	.byte	0x1
	.byte	0x90
	.byte	0xe
	.4byte	0xcd
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x16
	.4byte	.LASF64
	.byte	0x1
	.byte	0x91
	.byte	0xd
	.4byte	0xbc
	.uleb128 0x13
	.4byte	.LASF28
	.byte	0x1
	.byte	0x92
	.byte	0xd
	.4byte	0xab
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x13
	.4byte	.LASF31
	.byte	0x1
	.byte	0x93
	.byte	0xd
	.4byte	0xab
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x13
	.4byte	.LASF55
	.byte	0x1
	.byte	0x94
	.byte	0xa
	.4byte	0x4b4
	.4byte	.LLST11
	.4byte	.LVUS11
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF56
	.uleb128 0xe
	.byte	0x4
	.4byte	0xc8
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF57
	.byte	0x1
	.byte	0x60
	.byte	0x10
	.byte	0x1
	.4byte	0xbc
	.4byte	.LFB1440
	.4byte	.LFE1440
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x4f4
	.uleb128 0x12
	.4byte	.LASF45
	.byte	0x1
	.byte	0x60
	.byte	0x40
	.4byte	0x386
	.4byte	.LLST2
	.4byte	.LVUS2
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF58
	.byte	0x1
	.byte	0x4e
	.byte	0x10
	.byte	0x1
	.4byte	0xbc
	.4byte	.LFB1439
	.4byte	.LFE1439
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x527
	.uleb128 0x12
	.4byte	.LASF45
	.byte	0x1
	.byte	0x4e
	.byte	0x46
	.4byte	0x386
	.4byte	.LLST1
	.4byte	.LVUS1
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.4byte	.LASF60
	.byte	0x1
	.byte	0x40
	.byte	0x10
	.byte	0x1
	.4byte	0xd9
	.4byte	.LFB1438
	.4byte	.LFE1438
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x12
	.4byte	.LASF45
	.byte	0x1
	.byte	0x40
	.byte	0x3e
	.4byte	0x386
	.4byte	.LLST0
	.4byte	.LVUS0
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x5
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
	.uleb128 0x2
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
	.uleb128 0xa
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
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LVUS15:
	.uleb128 0
	.uleb128 .LVU93
	.uleb128 .LVU93
	.uleb128 0
.LLST15:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL30
	.4byte	.LFE1443
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS12:
	.uleb128 0
	.uleb128 .LVU84
	.uleb128 .LVU84
	.uleb128 0
.LLST12:
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL27
	.4byte	.LFE1442
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS13:
	.uleb128 .LVU87
	.uleb128 0
.LLST13:
	.4byte	.LVL28
	.4byte	.LFE1442
	.2byte	0xf
	.byte	0x73
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x23
	.uleb128 0x14
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS14:
	.uleb128 .LVU81
	.uleb128 .LVU83
	.uleb128 .LVU83
	.uleb128 .LVU86
	.uleb128 .LVU86
	.uleb128 0
.LLST14:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x9
	.byte	0x70
	.sleb128 12
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL28
	.4byte	.LFE1442
	.2byte	0xf
	.byte	0x73
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x23
	.uleb128 0x14
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LFB1441
	.4byte	.LCFI0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI0
	.4byte	.LFE1441
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 0
	.uleb128 .LVU65
	.uleb128 .LVU65
	.uleb128 .LVU66
	.uleb128 .LVU66
	.uleb128 .LVU77
	.uleb128 .LVU77
	.uleb128 0
.LLST4:
	.4byte	.LVL6
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
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL24
	.4byte	.LFE1441
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 0
	.uleb128 .LVU21
	.uleb128 .LVU21
	.uleb128 0
.LLST5:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL7
	.4byte	.LFE1441
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 .LVU14
	.uleb128 .LVU60
	.uleb128 .LVU60
	.uleb128 .LVU66
	.uleb128 .LVU66
	.uleb128 .LVU72
	.uleb128 .LVU72
	.uleb128 0
.LLST6:
	.4byte	.LVL6
	.4byte	.LVL16
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL19
	.2byte	0xa
	.byte	0x72
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x7c
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x2e
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL22
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LFE1441
	.2byte	0xa
	.byte	0x72
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x7c
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x2e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 .LVU33
	.uleb128 .LVU38
	.uleb128 .LVU38
	.uleb128 .LVU63
	.uleb128 .LVU66
	.uleb128 .LVU67
	.uleb128 .LVU67
	.uleb128 .LVU75
.LLST7:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL11
	.4byte	.LVL17
	.2byte	0x24
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1f
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x30
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL20
	.4byte	.LVL23
	.2byte	0x24
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1f
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x30
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 .LVU48
	.uleb128 .LVU66
	.uleb128 .LVU68
	.uleb128 0
.LLST8:
	.4byte	.LVL13
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL21
	.4byte	.LFE1441
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 .LVU29
	.uleb128 .LVU57
	.uleb128 .LVU57
	.uleb128 .LVU58
	.uleb128 .LVU58
	.uleb128 0
.LLST9:
	.4byte	.LVL9
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LFE1441
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 .LVU26
	.uleb128 0
.LLST10:
	.4byte	.LVL8
	.4byte	.LFE1441
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 .LVU27
	.uleb128 .LVU34
	.uleb128 .LVU34
	.uleb128 .LVU38
	.uleb128 .LVU38
	.uleb128 .LVU39
	.uleb128 .LVU39
	.uleb128 .LVU53
	.uleb128 .LVU66
	.uleb128 .LVU67
	.uleb128 .LVU67
	.uleb128 .LVU68
	.uleb128 .LVU68
	.uleb128 0
.LLST11:
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0xe
	.byte	0x71
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x73
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x2d
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x2f
	.byte	0x71
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1f
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x30
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x2d
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0xe
	.byte	0x71
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x73
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x2d
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x2f
	.byte	0x71
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1f
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x30
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x2d
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LFE1441
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU11
	.uleb128 .LVU11
	.uleb128 0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL5
	.4byte	.LFE1440
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU7
	.uleb128 .LVU7
	.uleb128 0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL3
	.4byte	.LFE1439
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU3
	.uleb128 .LVU3
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL1
	.4byte	.LFE1438
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x4c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF53:
	.ascii	"hAbsMecSpeedUnit\000"
.LASF33:
	.ascii	"hMecAngle\000"
.LASF55:
	.ascii	"SpeedError\000"
.LASF30:
	.ascii	"SpeedUnit\000"
.LASF23:
	.ascii	"SHIFT_TAB_CCxP\000"
.LASF50:
	.ascii	"SPD_IsMecSpeedReliable\000"
.LASF36:
	.ascii	"hElSpeedDpp\000"
.LASF59:
	.ascii	"SPD_SetElToMecRatio\000"
.LASF28:
	.ascii	"bSpeedErrorNumber\000"
.LASF5:
	.ascii	"__uint16_t\000"
.LASF57:
	.ascii	"SPD_GetElSpeedDpp\000"
.LASF41:
	.ascii	"hMaxReliableMecAccelUnitP\000"
.LASF49:
	.ascii	"wAux\000"
.LASF14:
	.ascii	"uint8_t\000"
.LASF60:
	.ascii	"SPD_GetMecAngle\000"
.LASF40:
	.ascii	"hMinReliableMecSpeedUnit\000"
.LASF42:
	.ascii	"hMeasurementFrequency\000"
.LASF4:
	.ascii	"short int\000"
.LASF27:
	.ascii	"float\000"
.LASF11:
	.ascii	"long long int\000"
.LASF21:
	.ascii	"SHIFT_TAB_OCxx\000"
.LASF35:
	.ascii	"hAvrMecSpeedUnit\000"
.LASF8:
	.ascii	"long int\000"
.LASF2:
	.ascii	"__uint8_t\000"
.LASF62:
	.ascii	"MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Src/"
	.ascii	"speed_pos_fdbk.c\000"
.LASF44:
	.ascii	"SpeednPosFdbk_Handle_t\000"
.LASF52:
	.ascii	"SpeedSensorReliability\000"
.LASF58:
	.ascii	"SPD_GetAvrgMecSpeedUnit\000"
.LASF19:
	.ascii	"long double\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF31:
	.ascii	"bMaximumSpeedErrorsNumber\000"
.LASF0:
	.ascii	"signed char\000"
.LASF51:
	.ascii	"pMecSpeedUnit\000"
.LASF12:
	.ascii	"long long unsigned int\000"
.LASF61:
	.ascii	"GNU C17 10.2.1 20201103 (release) -mcpu=cortex-m4 -"
	.ascii	"mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=hard -march=ar"
	.ascii	"mv7e-m+fp -g -gdwarf-2 -O3 -fdata-sections -ffuncti"
	.ascii	"on-sections\000"
.LASF18:
	.ascii	"uint32_t\000"
.LASF46:
	.ascii	"SPD_GetElToMecRatio\000"
.LASF16:
	.ascii	"uint16_t\000"
.LASF34:
	.ascii	"wMecAngle\000"
.LASF38:
	.ascii	"hMecAccelUnitP\000"
.LASF47:
	.ascii	"SPD_GetS16Speed\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF17:
	.ascii	"int32_t\000"
.LASF26:
	.ascii	"CHANNEL_OFFSET_TAB\000"
.LASF22:
	.ascii	"SHIFT_TAB_ICxx\000"
.LASF56:
	.ascii	"_Bool\000"
.LASF32:
	.ascii	"hElAngle\000"
.LASF10:
	.ascii	"long unsigned int\000"
.LASF63:
	.ascii	"/home/joel/share/EVSPIN32G4_Shinano\000"
.LASF37:
	.ascii	"InstantaneousElSpeedDpp\000"
.LASF24:
	.ascii	"SHIFT_TAB_OISx\000"
.LASF9:
	.ascii	"__uint32_t\000"
.LASF48:
	.ascii	"tempValue\000"
.LASF64:
	.ascii	"hAux\000"
.LASF7:
	.ascii	"__int32_t\000"
.LASF3:
	.ascii	"__int16_t\000"
.LASF43:
	.ascii	"DPPConvFactor\000"
.LASF15:
	.ascii	"int16_t\000"
.LASF13:
	.ascii	"unsigned int\000"
.LASF54:
	.ascii	"hAbsMecAccelUnitP\000"
.LASF45:
	.ascii	"pHandle\000"
.LASF25:
	.ascii	"USART_PRESCALER_TAB\000"
.LASF29:
	.ascii	"bElToMecRatio\000"
.LASF20:
	.ascii	"OFFSET_TAB_CCMRx\000"
.LASF39:
	.ascii	"hMaxReliableMecSpeedUnit\000"
	.ident	"GCC: (GNU Arm Embedded Toolchain 10-2020-q4-major) 10.2.1 20201103 (release)"
