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
	.file	"open_loop.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.OL_Init,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	OL_Init
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	OL_Init, %function
OL_Init:
.LVL0:
.LFB1442:
	.file 1 "MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Src/open_loop.c"
	.loc 1 51 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 60 5 view .LVU1
	.loc 1 60 23 is_stmt 0 view .LVU2
	ldrh	r3, [r0]
	strh	r3, [r0, #8]	@ movhi
	.loc 1 61 5 is_stmt 1 view .LVU3
	.loc 1 61 19 is_stmt 0 view .LVU4
	str	r1, [r0, #12]
	.loc 1 65 1 view .LVU5
	bx	lr
	.cfi_endproc
.LFE1442:
	.size	OL_Init, .-OL_Init
	.section	.text.OL_VqdConditioning,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	OL_VqdConditioning
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	OL_VqdConditioning, %function
OL_VqdConditioning:
.LVL1:
.LFB1443:
	.loc 1 74 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 75 3 view .LVU7
	.loc 1 76 3 view .LVU8
	.loc 1 80 3 view .LVU9
	.loc 1 82 3 view .LVU10
	.loc 1 83 1 is_stmt 0 view .LVU11
	ldrh	r0, [r0, #8]
.LVL2:
	.loc 1 74 1 view .LVU12
	sub	sp, sp, #8
.LCFI0:
	.cfi_def_cfa_offset 8
	.loc 1 83 1 view .LVU13
	add	sp, sp, #8
.LCFI1:
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE1443:
	.size	OL_VqdConditioning, .-OL_VqdConditioning
	.section	.text.OL_Calc,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	OL_Calc
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	OL_Calc, %function
OL_Calc:
.LVL3:
.LFB1444:
	.loc 1 91 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 100 5 view .LVU15
	.loc 1 100 8 is_stmt 0 view .LVU16
	ldrb	r3, [r0, #2]	@ zero_extendqisi2
	cbz	r3, .L5
	.loc 1 103 7 is_stmt 1 view .LVU17
	.loc 1 103 32 is_stmt 0 view .LVU18
	ldr	r3, [r0, #12]
	.loc 1 105 69 view .LVU19
	ldrsh	r1, [r0, #6]
	.loc 1 103 32 view .LVU20
	ldrsh	r3, [r3, #12]
	.loc 1 105 48 view .LVU21
	ldrh	r2, [r0, #4]
	.loc 1 103 10 view .LVU22
	cmp	r3, #0
	blt	.L7
	.loc 1 105 9 is_stmt 1 view .LVU23
	.loc 1 105 48 is_stmt 0 view .LVU24
	mla	r3, r1, r3, r2
	.loc 1 105 27 view .LVU25
	strh	r3, [r0, #8]	@ movhi
	bx	lr
.L7:
	.loc 1 109 9 is_stmt 1 view .LVU26
	.loc 1 109 48 is_stmt 0 view .LVU27
	mls	r3, r1, r3, r2
	.loc 1 109 27 view .LVU28
	strh	r3, [r0, #8]	@ movhi
	.loc 1 115 5 is_stmt 1 view .LVU29
.L5:
	.loc 1 119 1 is_stmt 0 view .LVU30
	bx	lr
	.cfi_endproc
.LFE1444:
	.size	OL_Calc, .-OL_Calc
	.section	.text.OL_VF,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	OL_VF
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	OL_VF, %function
OL_VF:
.LVL4:
.LFB1445:
	.loc 1 127 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 136 5 view .LVU32
	.loc 1 136 21 is_stmt 0 view .LVU33
	strb	r1, [r0, #2]
	.loc 1 140 1 view .LVU34
	bx	lr
	.cfi_endproc
.LFE1445:
	.size	OL_VF, .-OL_VF
	.text
.Letext0:
	.file 2 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_ll_tim.h"
	.file 5 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_ll_usart.h"
	.file 6 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_ll_dma.h"
	.file 7 "Inc/mc_type.h"
	.file 8 "MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Inc/speed_pos_fdbk.h"
	.file 9 "MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Inc/virtual_speed_sensor.h"
	.file 10 "MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Inc/open_loop.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x576
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF72
	.byte	0xc
	.4byte	.LASF73
	.4byte	.LASF74
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
	.byte	0x20
	.byte	0x8
	.byte	0x32
	.byte	0x9
	.4byte	0x32b
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x8
	.byte	0x35
	.byte	0xb
	.4byte	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x8
	.byte	0x36
	.byte	0xb
	.4byte	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x8
	.byte	0x38
	.byte	0xb
	.4byte	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.4byte	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x8
	.byte	0x3b
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x8
	.byte	0x3d
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x8
	.byte	0x3e
	.byte	0xb
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x8
	.byte	0x3f
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x8
	.byte	0x41
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x8
	.byte	0x44
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x8
	.byte	0x46
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x8
	.byte	0x48
	.byte	0xc
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x8
	.byte	0x4a
	.byte	0xc
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x8
	.byte	0x4c
	.byte	0xc
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x8
	.byte	0x4f
	.byte	0xc
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0x8
	.byte	0x51
	.byte	0xc
	.4byte	0xe0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0
	.uleb128 0x3
	.4byte	.LASF45
	.byte	0x8
	.byte	0x56
	.byte	0x3
	.4byte	0x231
	.uleb128 0x9
	.byte	0x38
	.byte	0x9
	.byte	0x32
	.byte	0x9
	.4byte	0x404
	.uleb128 0xb
	.4byte	.LASF46
	.byte	0x9
	.byte	0x34
	.byte	0x1a
	.4byte	0x32b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0x9
	.byte	0x35
	.byte	0xb
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0x9
	.byte	0x39
	.byte	0xb
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x9
	.byte	0x3b
	.byte	0xc
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x9
	.byte	0x3d
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x2a
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x9
	.byte	0x3f
	.byte	0x8
	.4byte	0x404
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x9
	.byte	0x40
	.byte	0x8
	.4byte	0x404
	.byte	0x2
	.byte	0x23
	.uleb128 0x2d
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x9
	.byte	0x41
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x2e
	.uleb128 0xb
	.4byte	.LASF54
	.byte	0x9
	.byte	0x43
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0x9
	.byte	0x44
	.byte	0x8
	.4byte	0x404
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0x9
	.byte	0x45
	.byte	0x8
	.4byte	0x404
	.byte	0x2
	.byte	0x23
	.uleb128 0x33
	.uleb128 0xb
	.4byte	.LASF57
	.byte	0x9
	.byte	0x47
	.byte	0xc
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xb
	.4byte	.LASF58
	.byte	0x9
	.byte	0x4b
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x36
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF59
	.uleb128 0x3
	.4byte	.LASF60
	.byte	0x9
	.byte	0x4f
	.byte	0x3
	.4byte	0x337
	.uleb128 0x9
	.byte	0x10
	.byte	0xa
	.byte	0x2d
	.byte	0x9
	.4byte	0x47b
	.uleb128 0xb
	.4byte	.LASF61
	.byte	0xa
	.byte	0x2f
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF62
	.byte	0xa
	.byte	0x31
	.byte	0x8
	.4byte	0x404
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xb
	.4byte	.LASF63
	.byte	0xa
	.byte	0x33
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF64
	.byte	0xa
	.byte	0x35
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xb
	.4byte	.LASF65
	.byte	0xa
	.byte	0x37
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF66
	.byte	0xa
	.byte	0x39
	.byte	0x20
	.4byte	0x47b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x40b
	.uleb128 0x3
	.4byte	.LASF67
	.byte	0xa
	.byte	0x3b
	.byte	0x3
	.4byte	0x417
	.uleb128 0x5
	.4byte	0x481
	.uleb128 0xd
	.byte	0x1
	.4byte	.LASF70
	.byte	0x1
	.byte	0x7e
	.byte	0xd
	.byte	0x1
	.4byte	.LFB1445
	.4byte	.LFE1445
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x4c9
	.uleb128 0xe
	.4byte	.LASF68
	.byte	0x1
	.byte	0x7e
	.byte	0x26
	.4byte	0x4c9
	.byte	0x1
	.byte	0x50
	.uleb128 0xe
	.4byte	.LASF69
	.byte	0x1
	.byte	0x7e
	.byte	0x34
	.4byte	0x404
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x481
	.uleb128 0xd
	.byte	0x1
	.4byte	.LASF71
	.byte	0x1
	.byte	0x5a
	.byte	0xd
	.byte	0x1
	.4byte	.LFB1444
	.4byte	.LFE1444
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x4f8
	.uleb128 0xe
	.4byte	.LASF68
	.byte	0x1
	.byte	0x5a
	.byte	0x28
	.4byte	0x4c9
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.4byte	.LASF75
	.byte	0x1
	.byte	0x49
	.byte	0xd
	.byte	0x1
	.4byte	0x225
	.4byte	.LFB1443
	.4byte	.LFE1443
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x540
	.uleb128 0x10
	.4byte	.LASF68
	.byte	0x1
	.byte	0x49
	.byte	0x39
	.4byte	0x540
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x11
	.ascii	"Vqd\000"
	.byte	0x1
	.byte	0x4b
	.byte	0x8
	.4byte	0x225
	.4byte	.LLST2
	.4byte	.LVUS2
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x48d
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF76
	.byte	0x1
	.byte	0x32
	.byte	0xd
	.byte	0x1
	.4byte	.LFB1442
	.4byte	.LFE1442
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF68
	.byte	0x1
	.byte	0x32
	.byte	0x28
	.4byte	0x4c9
	.byte	0x1
	.byte	0x50
	.uleb128 0xe
	.4byte	.LASF66
	.byte	0x1
	.byte	0x32
	.byte	0x4e
	.4byte	0x47b
	.byte	0x1
	.byte	0x51
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB1443
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
	.4byte	.LFE1443
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU12
	.uleb128 .LVU12
	.uleb128 0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL2
	.4byte	.LFE1443
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 .LVU9
	.uleb128 .LVU10
	.uleb128 .LVU10
	.uleb128 .LVU11
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL1
	.2byte	0x6
	.byte	0x93
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x2
	.4byte	.LVL1
	.4byte	.LVL1
	.2byte	0x8
	.byte	0x70
	.sleb128 8
	.byte	0x93
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x2
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
	.4byte	.LFB1442
	.4byte	.LFE1442-.LFB1442
	.4byte	.LFB1443
	.4byte	.LFE1443-.LFB1443
	.4byte	.LFB1444
	.4byte	.LFE1444-.LFB1444
	.4byte	.LFB1445
	.4byte	.LFE1445-.LFB1445
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB1442
	.4byte	.LFE1442
	.4byte	.LFB1443
	.4byte	.LFE1443
	.4byte	.LFB1444
	.4byte	.LFE1444
	.4byte	.LFB1445
	.4byte	.LFE1445
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF58:
	.ascii	"hTransitionSteps\000"
.LASF34:
	.ascii	"hMecAngle\000"
.LASF31:
	.ascii	"SpeedUnit\000"
.LASF23:
	.ascii	"SHIFT_TAB_CCxP\000"
.LASF37:
	.ascii	"hElSpeedDpp\000"
.LASF69:
	.ascii	"VFEnabling\000"
.LASF49:
	.ascii	"hRemainingStep\000"
.LASF29:
	.ascii	"bSpeedErrorNumber\000"
.LASF52:
	.ascii	"bTransitionEnded\000"
.LASF48:
	.ascii	"wElSpeedDpp32\000"
.LASF5:
	.ascii	"__uint16_t\000"
.LASF42:
	.ascii	"hMaxReliableMecAccelUnitP\000"
.LASF4:
	.ascii	"short int\000"
.LASF28:
	.ascii	"qd_t\000"
.LASF61:
	.ascii	"hDefaultVoltage\000"
.LASF66:
	.ascii	"pVSS\000"
.LASF14:
	.ascii	"uint8_t\000"
.LASF72:
	.ascii	"GNU C17 10.2.1 20201103 (release) -mcpu=cortex-m4 -"
	.ascii	"mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=hard -march=ar"
	.ascii	"mv7e-m+fp -g -gdwarf-2 -O3 -fdata-sections -ffuncti"
	.ascii	"on-sections\000"
.LASF41:
	.ascii	"hMinReliableMecSpeedUnit\000"
.LASF43:
	.ascii	"hMeasurementFrequency\000"
.LASF27:
	.ascii	"float\000"
.LASF60:
	.ascii	"VirtualSpeedSensor_Handle_t\000"
.LASF11:
	.ascii	"long long int\000"
.LASF51:
	.ascii	"bTransitionStarted\000"
.LASF21:
	.ascii	"SHIFT_TAB_OCxx\000"
.LASF73:
	.ascii	"MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Src/"
	.ascii	"open_loop.c\000"
.LASF36:
	.ascii	"hAvrMecSpeedUnit\000"
.LASF8:
	.ascii	"long int\000"
.LASF2:
	.ascii	"__uint8_t\000"
.LASF57:
	.ascii	"hSpeedSamplingFreqHz\000"
.LASF65:
	.ascii	"hVoltage\000"
.LASF45:
	.ascii	"SpeednPosFdbk_Handle_t\000"
.LASF56:
	.ascii	"bCopyObserver\000"
.LASF19:
	.ascii	"long double\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF62:
	.ascii	"VFMode\000"
.LASF32:
	.ascii	"bMaximumSpeedErrorsNumber\000"
.LASF47:
	.ascii	"wElAccDppP32\000"
.LASF0:
	.ascii	"signed char\000"
.LASF12:
	.ascii	"long long unsigned int\000"
.LASF18:
	.ascii	"uint32_t\000"
.LASF71:
	.ascii	"OL_Calc\000"
.LASF13:
	.ascii	"unsigned int\000"
.LASF46:
	.ascii	"_Super\000"
.LASF35:
	.ascii	"wMecAngle\000"
.LASF39:
	.ascii	"hMecAccelUnitP\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF75:
	.ascii	"OL_VqdConditioning\000"
.LASF16:
	.ascii	"uint16_t\000"
.LASF64:
	.ascii	"hVFSlope\000"
.LASF17:
	.ascii	"int32_t\000"
.LASF63:
	.ascii	"hVFOffset\000"
.LASF26:
	.ascii	"CHANNEL_OFFSET_TAB\000"
.LASF22:
	.ascii	"SHIFT_TAB_ICxx\000"
.LASF59:
	.ascii	"_Bool\000"
.LASF70:
	.ascii	"OL_VF\000"
.LASF33:
	.ascii	"hElAngle\000"
.LASF10:
	.ascii	"long unsigned int\000"
.LASF74:
	.ascii	"/home/joel/share/EVSPIN32G4_Shinano\000"
.LASF38:
	.ascii	"InstantaneousElSpeedDpp\000"
.LASF53:
	.ascii	"hTransitionRemainingSteps\000"
.LASF24:
	.ascii	"SHIFT_TAB_OISx\000"
.LASF54:
	.ascii	"hElAngleAccu\000"
.LASF9:
	.ascii	"__uint32_t\000"
.LASF55:
	.ascii	"bTransitionLocked\000"
.LASF7:
	.ascii	"__int32_t\000"
.LASF3:
	.ascii	"__int16_t\000"
.LASF76:
	.ascii	"OL_Init\000"
.LASF44:
	.ascii	"DPPConvFactor\000"
.LASF15:
	.ascii	"int16_t\000"
.LASF50:
	.ascii	"hFinalMecSpeedUnit\000"
.LASF68:
	.ascii	"pHandle\000"
.LASF25:
	.ascii	"USART_PRESCALER_TAB\000"
.LASF30:
	.ascii	"bElToMecRatio\000"
.LASF20:
	.ascii	"OFFSET_TAB_CCMRx\000"
.LASF40:
	.ascii	"hMaxReliableMecSpeedUnit\000"
.LASF67:
	.ascii	"OpenLoop_Handle_t\000"
	.ident	"GCC: (GNU Arm Embedded Toolchain 10-2020-q4-major) 10.2.1 20201103 (release)"
