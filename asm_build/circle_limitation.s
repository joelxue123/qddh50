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
	.file	"circle_limitation.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.Circle_Limitation,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	Circle_Limitation
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	Circle_Limitation, %function
Circle_Limitation:
.LVL0:
.LFB1437:
	.file 1 "MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Src/circle_limitation.c"
	.loc 1 64 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 64 1 is_stmt 0 view .LVU1
	push	{r4, r5, r6, lr}
.LCFI0:
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 85 15 view .LVU2
	ldrh	r3, [r0]
	asrs	r5, r1, #16
	.loc 1 64 1 view .LVU3
	sub	sp, sp, #16
.LCFI1:
	.cfi_def_cfa_offset 32
	sxth	r4, r1
.LVL1:
	.loc 1 65 3 is_stmt 1 view .LVU4
	.loc 1 75 5 view .LVU5
	.loc 1 76 5 view .LVU6
	.loc 1 77 5 view .LVU7
	.loc 1 78 5 view .LVU8
	.loc 1 79 5 view .LVU9
	.loc 1 80 5 view .LVU10
	.loc 1 81 5 view .LVU11
	.loc 1 82 5 view .LVU12
	.loc 1 83 5 view .LVU13
	.loc 1 85 5 view .LVU14
	.loc 1 87 5 view .LVU15
	.loc 1 88 5 view .LVU16
	.loc 1 88 14 is_stmt 0 view .LVU17
	mul	r2, r5, r5
.LVL2:
	.loc 1 89 5 is_stmt 1 view .LVU18
	.loc 1 89 18 is_stmt 0 view .LVU19
	mul	r3, r3, r3
.LVL3:
	.loc 1 90 5 is_stmt 1 view .LVU20
	.loc 1 91 5 view .LVU21
	.loc 1 93 5 view .LVU22
	.loc 1 64 1 is_stmt 0 view .LVU23
	str	r1, [sp, #4]
.LVL4:
	.loc 1 91 16 view .LVU24
	mla	r1, r4, r4, r2
	.loc 1 93 8 view .LVU25
	cmp	r3, r1
	bge	.L2
	.loc 1 90 24 view .LVU26
	ldrh	r6, [r0, #2]
	.loc 1 90 21 view .LVU27
	mul	r0, r6, r6
.LVL5:
	.loc 1 95 7 is_stmt 1 view .LVU28
	.loc 1 95 10 is_stmt 0 view .LVU29
	cmp	r2, r0
	ble	.L10
	.loc 1 116 9 is_stmt 1 view .LVU30
.LVL6:
	.loc 1 117 9 view .LVU31
	.loc 1 117 12 is_stmt 0 view .LVU32
	cmp	r5, #0
	.loc 1 119 11 is_stmt 1 view .LVU33
	.loc 1 130 17 is_stmt 0 view .LVU34
	sub	r0, r3, r0
	.loc 1 119 17 view .LVU35
	it	lt
	rsblt	r6, r6, #0
.LVL7:
	.loc 1 124 9 is_stmt 1 view .LVU36
	.loc 1 129 9 view .LVU37
	.loc 1 130 9 view .LVU38
	.loc 1 130 17 is_stmt 0 view .LVU39
	bl	MCM_Sqrt
.LVL8:
	.loc 1 132 9 is_stmt 1 view .LVU40
	.loc 1 132 12 is_stmt 0 view .LVU41
	cmp	r4, #0
	.loc 1 134 11 is_stmt 1 view .LVU42
	.loc 1 134 17 is_stmt 0 view .LVU43
	it	lt
	rsblt	r0, r0, #0
.LVL9:
	.loc 1 142 21 view .LVU44
	sxth	r5, r6
.LVL10:
.L4:
	.loc 1 139 9 is_stmt 1 view .LVU45
	.loc 1 141 7 view .LVU46
	.loc 1 141 21 is_stmt 0 view .LVU47
	sxth	r4, r0
.LVL11:
	.loc 1 142 7 is_stmt 1 view .LVU48
.L2:
	.loc 1 147 3 view .LVU49
	.loc 1 147 10 is_stmt 0 view .LVU50
	uxth	r4, r4
	movs	r0, #0
	bfi	r0, r4, #0, #16
	uxth	r5, r5
	bfi	r0, r5, #16, #16
	.loc 1 148 1 view .LVU51
	add	sp, sp, #16
.LCFI2:
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	@ sp needed
	pop	{r4, r5, r6, pc}
.LVL12:
.L10:
.LCFI3:
	.cfi_restore_state
	.loc 1 101 9 is_stmt 1 view .LVU52
	.loc 1 102 9 view .LVU53
	.loc 1 102 17 is_stmt 0 view .LVU54
	subs	r0, r3, r2
.LVL13:
	.loc 1 102 17 view .LVU55
	bl	MCM_Sqrt
.LVL14:
	.loc 1 104 9 is_stmt 1 view .LVU56
	.loc 1 104 12 is_stmt 0 view .LVU57
	cmp	r4, #0
	bge	.L4
	.loc 1 106 11 is_stmt 1 view .LVU58
	.loc 1 106 17 is_stmt 0 view .LVU59
	rsbs	r0, r0, #0
.LVL15:
	.loc 1 106 17 view .LVU60
	b	.L4
	.cfi_endproc
.LFE1437:
	.size	Circle_Limitation, .-Circle_Limitation
	.text
.Letext0:
	.file 2 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_ll_tim.h"
	.file 5 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_ll_usart.h"
	.file 6 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_ll_dma.h"
	.file 7 "Inc/mc_type.h"
	.file 8 "MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Inc/circle_limitation.h"
	.file 9 "Inc/mc_math.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x39d
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0xc
	.4byte	.LASF44
	.4byte	.LASF45
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
	.byte	0x4
	.byte	0x7
	.byte	0x7e
	.byte	0x9
	.4byte	0x225
	.uleb128 0xa
	.ascii	"q\000"
	.byte	0x7
	.byte	0x80
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.ascii	"d\000"
	.byte	0x7
	.byte	0x81
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x7
	.byte	0x82
	.byte	0x3
	.4byte	0x201
	.uleb128 0x9
	.byte	0x4
	.byte	0x8
	.byte	0x2c
	.byte	0x9
	.4byte	0x259
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x8
	.byte	0x2e
	.byte	0xc
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x8
	.byte	0x2f
	.byte	0xc
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x8
	.byte	0x30
	.byte	0x3
	.4byte	0x231
	.uleb128 0x5
	.4byte	0x259
	.uleb128 0xc
	.byte	0x1
	.4byte	.LASF46
	.byte	0x1
	.byte	0x3f
	.byte	0xd
	.byte	0x1
	.4byte	0x225
	.4byte	.LFB1437
	.4byte	.LFE1437
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x38c
	.uleb128 0xd
	.4byte	.LASF32
	.byte	0x1
	.byte	0x3f
	.byte	0x40
	.4byte	0x38c
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0xe
	.ascii	"Vqd\000"
	.byte	0x1
	.byte	0x3f
	.byte	0x4e
	.4byte	0x225
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0xf
	.4byte	.LASF33
	.byte	0x1
	.byte	0x41
	.byte	0x8
	.4byte	0x225
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0xf
	.4byte	.LASF34
	.byte	0x1
	.byte	0x4b
	.byte	0xd
	.4byte	0xd4
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0xf
	.4byte	.LASF35
	.byte	0x1
	.byte	0x4c
	.byte	0xd
	.4byte	0xd4
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0xf
	.4byte	.LASF36
	.byte	0x1
	.byte	0x4d
	.byte	0xd
	.4byte	0xd4
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0xf
	.4byte	.LASF37
	.byte	0x1
	.byte	0x4e
	.byte	0xd
	.4byte	0xd4
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0xf
	.4byte	.LASF38
	.byte	0x1
	.byte	0x4f
	.byte	0xd
	.4byte	0xd4
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0xf
	.4byte	.LASF39
	.byte	0x1
	.byte	0x50
	.byte	0xd
	.4byte	0xd4
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0xf
	.4byte	.LASF40
	.byte	0x1
	.byte	0x51
	.byte	0xd
	.4byte	0xd4
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0xf
	.4byte	.LASF41
	.byte	0x1
	.byte	0x52
	.byte	0xd
	.4byte	0xd4
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0xf
	.4byte	.LASF42
	.byte	0x1
	.byte	0x53
	.byte	0xd
	.4byte	0xd4
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x10
	.4byte	.LVL8
	.4byte	0x392
	.uleb128 0x10
	.4byte	.LVL14
	.4byte	0x392
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x265
	.uleb128 0x12
	.byte	0x1
	.byte	0x1
	.4byte	.LASF47
	.4byte	.LASF47
	.byte	0x9
	.byte	0x8c
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
.LLST0:
	.4byte	.LFB1437
	.4byte	.LCFI0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI0
	.4byte	.LCFI1
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI1
	.4byte	.LCFI2
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	.LCFI2
	.4byte	.LCFI3
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI3
	.4byte	.LFE1437
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU28
	.uleb128 .LVU28
	.uleb128 0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL5
	.4byte	.LFE1437
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 .LVU4
	.uleb128 .LVU45
	.uleb128 .LVU45
	.uleb128 .LVU48
	.uleb128 .LVU52
	.uleb128 0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL10
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x2
	.byte	0x55
	.byte	0x93
	.uleb128 0x2
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x5
	.byte	0x54
	.byte	0x93
	.uleb128 0x2
	.byte	0x93
	.uleb128 0x2
	.4byte	.LVL12
	.4byte	.LFE1437
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x2
	.byte	0x55
	.byte	0x93
	.uleb128 0x2
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 .LVU5
	.uleb128 .LVU45
	.uleb128 .LVU45
	.uleb128 .LVU48
	.uleb128 .LVU48
	.uleb128 .LVU49
	.uleb128 .LVU49
	.uleb128 .LVU50
	.uleb128 .LVU52
	.uleb128 0
.LLST3:
	.4byte	.LVL1
	.4byte	.LVL10
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x2
	.byte	0x55
	.byte	0x93
	.uleb128 0x2
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x5
	.byte	0x54
	.byte	0x93
	.uleb128 0x2
	.byte	0x93
	.uleb128 0x2
	.4byte	.LVL11
	.4byte	.LVL11
	.2byte	0x5
	.byte	0x54
	.byte	0x93
	.uleb128 0x2
	.byte	0x93
	.uleb128 0x2
	.4byte	.LVL11
	.4byte	.LVL11
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x2
	.byte	0x55
	.byte	0x93
	.uleb128 0x2
	.4byte	.LVL12
	.4byte	.LFE1437
	.2byte	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x2
	.byte	0x55
	.byte	0x93
	.uleb128 0x2
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU15
	.uleb128 .LVU20
	.uleb128 .LVU20
	.uleb128 .LVU24
.LLST4:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x9
	.byte	0x70
	.sleb128 0
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 .LVU16
	.uleb128 .LVU48
	.uleb128 .LVU52
	.uleb128 0
.LLST5:
	.4byte	.LVL1
	.4byte	.LVL11
	.2byte	0xe
	.byte	0x74
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x74
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1e
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LFE1437
	.2byte	0xe
	.byte	0x74
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x74
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 .LVU53
	.uleb128 .LVU55
	.uleb128 .LVU55
	.uleb128 .LVU56
.LLST6:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14-1
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 .LVU18
	.uleb128 .LVU40
	.uleb128 .LVU40
	.uleb128 .LVU45
	.uleb128 .LVU52
	.uleb128 .LVU56
	.uleb128 .LVU56
	.uleb128 0
.LLST7:
	.4byte	.LVL2
	.4byte	.LVL8-1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8-1
	.4byte	.LVL10
	.2byte	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL14-1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14-1
	.4byte	.LFE1437
	.2byte	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 .LVU22
	.uleb128 .LVU40
	.uleb128 .LVU40
	.uleb128 .LVU45
	.uleb128 .LVU52
	.uleb128 .LVU56
	.uleb128 .LVU56
	.uleb128 0
.LLST8:
	.4byte	.LVL3
	.4byte	.LVL8-1
	.2byte	0x11
	.byte	0x74
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x74
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1e
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL8-1
	.4byte	.LVL10
	.2byte	0x14
	.byte	0x74
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x74
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1e
	.byte	0x75
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1e
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL14-1
	.2byte	0x11
	.byte	0x74
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x74
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1e
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL14-1
	.4byte	.LFE1437
	.2byte	0x14
	.byte	0x74
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x74
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1e
	.byte	0x75
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1e
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 .LVU20
	.uleb128 .LVU40
	.uleb128 .LVU52
	.uleb128 .LVU56
.LLST9:
	.4byte	.LVL3
	.4byte	.LVL8-1
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL12
	.4byte	.LVL14-1
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 .LVU21
	.uleb128 .LVU24
.LLST10:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x12
	.byte	0x70
	.sleb128 2
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x70
	.sleb128 2
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x1e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 .LVU40
	.uleb128 .LVU49
	.uleb128 .LVU56
	.uleb128 0
.LLST11:
	.4byte	.LVL8
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL14
	.4byte	.LFE1437
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS12:
	.uleb128 .LVU36
	.uleb128 .LVU45
.LLST12:
	.4byte	.LVL7
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB1437
	.4byte	.LFE1437-.LFB1437
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB1437
	.4byte	.LFE1437
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF20:
	.ascii	"OFFSET_TAB_CCMRx\000"
.LASF30:
	.ascii	"MaxVd\000"
.LASF31:
	.ascii	"CircleLimitation_Handle_t\000"
.LASF2:
	.ascii	"__uint8_t\000"
.LASF22:
	.ascii	"SHIFT_TAB_ICxx\000"
.LASF3:
	.ascii	"__int16_t\000"
.LASF7:
	.ascii	"__int32_t\000"
.LASF25:
	.ascii	"USART_PRESCALER_TAB\000"
.LASF28:
	.ascii	"qd_t\000"
.LASF34:
	.ascii	"maxModule\000"
.LASF24:
	.ascii	"SHIFT_TAB_OISx\000"
.LASF27:
	.ascii	"float\000"
.LASF12:
	.ascii	"long long unsigned int\000"
.LASF47:
	.ascii	"MCM_Sqrt\000"
.LASF42:
	.ascii	"new_d\000"
.LASF21:
	.ascii	"SHIFT_TAB_OCxx\000"
.LASF36:
	.ascii	"square_temp\000"
.LASF10:
	.ascii	"long unsigned int\000"
.LASF32:
	.ascii	"pHandle\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF41:
	.ascii	"new_q\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF5:
	.ascii	"__uint16_t\000"
.LASF23:
	.ascii	"SHIFT_TAB_CCxP\000"
.LASF9:
	.ascii	"__uint32_t\000"
.LASF37:
	.ascii	"square_d\000"
.LASF13:
	.ascii	"unsigned int\000"
.LASF43:
	.ascii	"GNU C17 10.2.1 20201103 (release) -mcpu=cortex-m4 -"
	.ascii	"mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=hard -march=ar"
	.ascii	"mv7e-m+fp -g -gdwarf-2 -O3 -fdata-sections -ffuncti"
	.ascii	"on-sections\000"
.LASF40:
	.ascii	"vd_square_limit\000"
.LASF35:
	.ascii	"square_q\000"
.LASF14:
	.ascii	"uint8_t\000"
.LASF26:
	.ascii	"CHANNEL_OFFSET_TAB\000"
.LASF15:
	.ascii	"int16_t\000"
.LASF17:
	.ascii	"int32_t\000"
.LASF11:
	.ascii	"long long int\000"
.LASF45:
	.ascii	"/home/joel/share/EVSPIN32G4_Shinano\000"
.LASF16:
	.ascii	"uint16_t\000"
.LASF44:
	.ascii	"MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Src/"
	.ascii	"circle_limitation.c\000"
.LASF29:
	.ascii	"MaxModule\000"
.LASF4:
	.ascii	"short int\000"
.LASF18:
	.ascii	"uint32_t\000"
.LASF8:
	.ascii	"long int\000"
.LASF39:
	.ascii	"square_limit\000"
.LASF33:
	.ascii	"local_vqd\000"
.LASF19:
	.ascii	"long double\000"
.LASF0:
	.ascii	"signed char\000"
.LASF46:
	.ascii	"Circle_Limitation\000"
.LASF38:
	.ascii	"square_sum\000"
	.ident	"GCC: (GNU Arm Embedded Toolchain 10-2020-q4-major) 10.2.1 20201103 (release)"
