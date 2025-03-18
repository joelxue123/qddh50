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
	.file	"system_stm32g4xx.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.SystemInit,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	SystemInit
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	SystemInit, %function
SystemInit:
.LFB132:
	.file 1 "Src/system_stm32g4xx.c"
	.loc 1 180 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 183 5 view .LVU1
	.loc 1 183 16 is_stmt 0 view .LVU2
	ldr	r2, .L3
	ldr	r3, [r2, #136]
	orr	r3, r3, #15728640
	str	r3, [r2, #136]
	.loc 1 190 1 view .LVU3
	bx	lr
.L4:
	.align	2
.L3:
	.word	-536810240
	.cfi_endproc
.LFE132:
	.size	SystemInit, .-SystemInit
	.section	.text.SystemCoreClockUpdate,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	SystemCoreClockUpdate
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	SystemCoreClockUpdate, %function
SystemCoreClockUpdate:
.LFB133:
	.loc 1 229 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 230 3 view .LVU5
	.loc 1 233 3 view .LVU6
	.loc 1 233 14 is_stmt 0 view .LVU7
	ldr	r2, .L12
	ldr	r3, [r2, #8]
	.loc 1 233 21 view .LVU8
	and	r3, r3, #12
	.loc 1 233 3 view .LVU9
	cmp	r3, #8
	beq	.L10
	cmp	r3, #12
	beq	.L7
	cmp	r3, #4
	beq	.L11
	.loc 1 269 19 view .LVU10
	ldr	r1, .L12+4
	ldr	r3, [r1]
.L6:
	.loc 1 267 3 is_stmt 1 view .LVU11
	.loc 1 267 28 is_stmt 0 view .LVU12
	ldr	r2, .L12
	.loc 1 267 22 view .LVU13
	ldr	r0, .L12+8
	.loc 1 267 28 view .LVU14
	ldr	r2, [r2, #8]
.LVL0:
	.loc 1 269 3 is_stmt 1 view .LVU15
	.loc 1 267 52 is_stmt 0 view .LVU16
	ubfx	r2, r2, #4, #4
.LVL1:
	.loc 1 267 7 view .LVU17
	ldrb	r2, [r0, r2]	@ zero_extendqisi2
	.loc 1 269 19 view .LVU18
	lsrs	r3, r3, r2
	str	r3, [r1]
	.loc 1 270 1 view .LVU19
	bx	lr
.L11:
	.loc 1 233 3 view .LVU20
	ldr	r3, .L12+12
	ldr	r1, .L12+4
	b	.L6
.L7:
	.loc 1 247 7 is_stmt 1 view .LVU21
	.loc 1 247 23 is_stmt 0 view .LVU22
	ldr	r1, [r2, #12]
.LVL2:
	.loc 1 248 7 is_stmt 1 view .LVU23
	.loc 1 248 19 is_stmt 0 view .LVU24
	ldr	r3, [r2, #12]
	.loc 1 247 17 view .LVU25
	and	r2, r1, #3
.LVL3:
	.loc 1 249 10 view .LVU26
	cmp	r2, #2
	.loc 1 257 30 view .LVU27
	ldr	r2, .L12
.LVL4:
	.loc 1 251 16 view .LVU28
	ite	eq
	ldreq	r0, .L12+12
	.loc 1 255 16 view .LVU29
	ldrne	r0, .L12+16
	ldr	r1, .L12+4
.LVL5:
	.loc 1 248 49 view .LVU30
	ubfx	r3, r3, #4, #4
	.loc 1 248 12 view .LVU31
	adds	r3, r3, #1
.LVL6:
	.loc 1 249 7 is_stmt 1 view .LVU32
	.loc 1 251 9 view .LVU33
	.loc 1 255 9 view .LVU34
	.loc 1 255 16 is_stmt 0 view .LVU35
	udiv	r0, r0, r3
.LVL7:
	.loc 1 257 7 is_stmt 1 view .LVU36
	.loc 1 257 30 is_stmt 0 view .LVU37
	ldr	r3, [r2, #12]
.LVL8:
	.loc 1 258 7 is_stmt 1 view .LVU38
	.loc 1 258 20 is_stmt 0 view .LVU39
	ldr	r2, [r2, #12]
.LVL9:
	.loc 1 259 7 is_stmt 1 view .LVU40
	.loc 1 258 50 is_stmt 0 view .LVU41
	ubfx	r2, r2, #25, #2
.LVL10:
	.loc 1 257 60 view .LVU42
	ubfx	r3, r3, #8, #7
.LVL11:
	.loc 1 258 57 view .LVU43
	adds	r2, r2, #1
	.loc 1 257 14 view .LVU44
	mul	r3, r0, r3
	.loc 1 258 12 view .LVU45
	lsls	r2, r2, #1
	.loc 1 259 31 view .LVU46
	udiv	r3, r3, r2
	.loc 1 260 7 is_stmt 1 view .LVU47
	b	.L6
.L10:
	.loc 1 233 3 is_stmt 0 view .LVU48
	ldr	r3, .L12+16
	ldr	r1, .L12+4
	b	.L6
.L13:
	.align	2
.L12:
	.word	1073876992
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	16000000
	.word	8000000
	.cfi_endproc
.LFE133:
	.size	SystemCoreClockUpdate, .-SystemCoreClockUpdate
	.global	APBPrescTable
	.global	AHBPrescTable
	.global	SystemCoreClock
	.section	.data.SystemCoreClock,"aw"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	SystemCoreClock, %object
	.size	SystemCoreClock, 4
SystemCoreClock:
	.word	16000000
	.section	.rodata.AHBPrescTable,"a"
	.align	2
	.set	.LANCHOR1,. + 0
	.type	AHBPrescTable, %object
	.size	AHBPrescTable, 16
AHBPrescTable:
	.ascii	"\000\000\000\000\000\000\000\000\001\002\003\004\006"
	.ascii	"\007\010\011"
	.section	.rodata.APBPrescTable,"a"
	.align	2
	.type	APBPrescTable, %object
	.size	APBPrescTable, 8
APBPrescTable:
	.ascii	"\000\000\000\000\001\002\003\004"
	.text
.Letext0:
	.file 2 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "Drivers/CMSIS/Include/core_cm4.h"
	.file 5 "Drivers/CMSIS/Device/ST/STM32G4xx/Include/system_stm32g4xx.h"
	.file 6 "Drivers/CMSIS/Device/ST/STM32G4xx/Include/stm32g431xx.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x645
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF75
	.byte	0xc
	.4byte	.LASF76
	.4byte	.LASF77
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
	.uleb128 0x6
	.4byte	0x87
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x58
	.uleb128 0x5
	.4byte	0x9d
	.uleb128 0x6
	.4byte	0xa9
	.uleb128 0x7
	.byte	0x8c
	.byte	0x4
	.2byte	0x1b8
	.byte	0x9
	.4byte	0x20f
	.uleb128 0x8
	.4byte	.LASF13
	.byte	0x4
	.2byte	0x1ba
	.byte	0x12
	.4byte	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x4
	.2byte	0x1bb
	.byte	0x12
	.4byte	0xa9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x4
	.2byte	0x1bc
	.byte	0x12
	.4byte	0xa9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x4
	.2byte	0x1bd
	.byte	0x12
	.4byte	0xa9
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.ascii	"SCR\000"
	.byte	0x4
	.2byte	0x1be
	.byte	0x12
	.4byte	0xa9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.ascii	"CCR\000"
	.byte	0x4
	.2byte	0x1bf
	.byte	0x12
	.4byte	0xa9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.ascii	"SHP\000"
	.byte	0x4
	.2byte	0x1c0
	.byte	0x12
	.4byte	0x21f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x4
	.2byte	0x1c1
	.byte	0x12
	.4byte	0xa9
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x4
	.2byte	0x1c2
	.byte	0x12
	.4byte	0xa9
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x4
	.2byte	0x1c3
	.byte	0x12
	.4byte	0xa9
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x4
	.2byte	0x1c4
	.byte	0x12
	.4byte	0xa9
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x4
	.2byte	0x1c5
	.byte	0x12
	.4byte	0xa9
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x4
	.2byte	0x1c6
	.byte	0x12
	.4byte	0xa9
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x4
	.2byte	0x1c7
	.byte	0x12
	.4byte	0xa9
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x9
	.ascii	"PFR\000"
	.byte	0x4
	.2byte	0x1c8
	.byte	0x12
	.4byte	0x239
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.ascii	"DFR\000"
	.byte	0x4
	.2byte	0x1c9
	.byte	0x12
	.4byte	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.ascii	"ADR\000"
	.byte	0x4
	.2byte	0x1ca
	.byte	0x12
	.4byte	0xae
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x4
	.2byte	0x1cb
	.byte	0x12
	.4byte	0x253
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x4
	.2byte	0x1cc
	.byte	0x12
	.4byte	0x26d
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x4
	.2byte	0x1cd
	.byte	0x12
	.4byte	0x272
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0x4
	.2byte	0x1ce
	.byte	0x12
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.byte	0
	.uleb128 0xa
	.4byte	0x93
	.4byte	0x21f
	.uleb128 0xb
	.4byte	0x80
	.byte	0xb
	.byte	0
	.uleb128 0x5
	.4byte	0x20f
	.uleb128 0xa
	.4byte	0xae
	.4byte	0x234
	.uleb128 0xb
	.4byte	0x80
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	0x224
	.uleb128 0x5
	.4byte	0x234
	.uleb128 0xa
	.4byte	0xae
	.4byte	0x24e
	.uleb128 0xb
	.4byte	0x80
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.4byte	0x23e
	.uleb128 0x5
	.4byte	0x24e
	.uleb128 0xa
	.4byte	0xae
	.4byte	0x268
	.uleb128 0xb
	.4byte	0x80
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.4byte	0x258
	.uleb128 0x5
	.4byte	0x268
	.uleb128 0xa
	.4byte	0x9d
	.4byte	0x282
	.uleb128 0xb
	.4byte	0x80
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x4
	.2byte	0x1cf
	.byte	0x3
	.4byte	0xb3
	.uleb128 0xd
	.4byte	.LASF29
	.byte	0x5
	.byte	0x39
	.byte	0x11
	.4byte	0x9d
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.4byte	0x98
	.4byte	0x2ad
	.uleb128 0xb
	.4byte	0x80
	.byte	0xf
	.byte	0
	.uleb128 0x6
	.4byte	0x29d
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x5
	.byte	0x3b
	.byte	0x17
	.4byte	0x2ad
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.4byte	0x98
	.4byte	0x2d0
	.uleb128 0xb
	.4byte	0x80
	.byte	0x7
	.byte	0
	.uleb128 0x6
	.4byte	0x2c0
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0x5
	.byte	0x3c
	.byte	0x17
	.4byte	0x2d0
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.byte	0xa0
	.byte	0x6
	.2byte	0x23f
	.byte	0x9
	.4byte	0x575
	.uleb128 0x9
	.ascii	"CR\000"
	.byte	0x6
	.2byte	0x241
	.byte	0x11
	.4byte	0xa9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.4byte	.LASF32
	.byte	0x6
	.2byte	0x242
	.byte	0x11
	.4byte	0xa9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.4byte	.LASF33
	.byte	0x6
	.2byte	0x243
	.byte	0x11
	.4byte	0xa9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.4byte	.LASF34
	.byte	0x6
	.2byte	0x244
	.byte	0x11
	.4byte	0xa9
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x6
	.2byte	0x245
	.byte	0x11
	.4byte	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.4byte	.LASF35
	.byte	0x6
	.2byte	0x246
	.byte	0x11
	.4byte	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.4byte	.LASF36
	.byte	0x6
	.2byte	0x247
	.byte	0x11
	.4byte	0xa9
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.4byte	.LASF37
	.byte	0x6
	.2byte	0x248
	.byte	0x11
	.4byte	0xa9
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.4byte	.LASF38
	.byte	0x6
	.2byte	0x249
	.byte	0x11
	.4byte	0xa9
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.4byte	.LASF39
	.byte	0x6
	.2byte	0x24a
	.byte	0x11
	.4byte	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x8
	.4byte	.LASF40
	.byte	0x6
	.2byte	0x24b
	.byte	0x11
	.4byte	0xa9
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.4byte	.LASF41
	.byte	0x6
	.2byte	0x24c
	.byte	0x11
	.4byte	0xa9
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x8
	.4byte	.LASF42
	.byte	0x6
	.2byte	0x24d
	.byte	0x11
	.4byte	0xa9
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x8
	.4byte	.LASF43
	.byte	0x6
	.2byte	0x24e
	.byte	0x11
	.4byte	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x8
	.4byte	.LASF44
	.byte	0x6
	.2byte	0x24f
	.byte	0x11
	.4byte	0xa9
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x8
	.4byte	.LASF45
	.byte	0x6
	.2byte	0x250
	.byte	0x11
	.4byte	0xa9
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x8
	.4byte	.LASF46
	.byte	0x6
	.2byte	0x251
	.byte	0x11
	.4byte	0xa9
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x8
	.4byte	.LASF47
	.byte	0x6
	.2byte	0x252
	.byte	0x11
	.4byte	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x8
	.4byte	.LASF48
	.byte	0x6
	.2byte	0x253
	.byte	0x11
	.4byte	0xa9
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x8
	.4byte	.LASF49
	.byte	0x6
	.2byte	0x254
	.byte	0x11
	.4byte	0xa9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x8
	.4byte	.LASF50
	.byte	0x6
	.2byte	0x255
	.byte	0x11
	.4byte	0xa9
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x8
	.4byte	.LASF51
	.byte	0x6
	.2byte	0x256
	.byte	0x11
	.4byte	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x8
	.4byte	.LASF52
	.byte	0x6
	.2byte	0x257
	.byte	0x11
	.4byte	0xa9
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x8
	.4byte	.LASF53
	.byte	0x6
	.2byte	0x258
	.byte	0x11
	.4byte	0xa9
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x8
	.4byte	.LASF54
	.byte	0x6
	.2byte	0x259
	.byte	0x11
	.4byte	0xa9
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x8
	.4byte	.LASF55
	.byte	0x6
	.2byte	0x25a
	.byte	0x11
	.4byte	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x8
	.4byte	.LASF56
	.byte	0x6
	.2byte	0x25b
	.byte	0x11
	.4byte	0xa9
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x8
	.4byte	.LASF57
	.byte	0x6
	.2byte	0x25c
	.byte	0x11
	.4byte	0xa9
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x8
	.4byte	.LASF58
	.byte	0x6
	.2byte	0x25d
	.byte	0x11
	.4byte	0xa9
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x8
	.4byte	.LASF59
	.byte	0x6
	.2byte	0x25e
	.byte	0x11
	.4byte	0x9d
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x8
	.4byte	.LASF60
	.byte	0x6
	.2byte	0x25f
	.byte	0x11
	.4byte	0xa9
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x8
	.4byte	.LASF61
	.byte	0x6
	.2byte	0x260
	.byte	0x11
	.4byte	0xa9
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x8
	.4byte	.LASF62
	.byte	0x6
	.2byte	0x261
	.byte	0x11
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x8
	.4byte	.LASF63
	.byte	0x6
	.2byte	0x262
	.byte	0x11
	.4byte	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x8
	.4byte	.LASF64
	.byte	0x6
	.2byte	0x263
	.byte	0x11
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x8
	.4byte	.LASF65
	.byte	0x6
	.2byte	0x264
	.byte	0x11
	.4byte	0x9d
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x8
	.4byte	.LASF66
	.byte	0x6
	.2byte	0x265
	.byte	0x11
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x9
	.ascii	"CSR\000"
	.byte	0x6
	.2byte	0x266
	.byte	0x11
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x8
	.4byte	.LASF67
	.byte	0x6
	.2byte	0x267
	.byte	0x11
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x8
	.4byte	.LASF68
	.byte	0x6
	.2byte	0x268
	.byte	0x11
	.4byte	0xa9
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.byte	0
	.uleb128 0xc
	.4byte	.LASF69
	.byte	0x6
	.2byte	0x269
	.byte	0x3
	.4byte	0x2e3
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF70
	.uleb128 0xe
	.4byte	0x28f
	.byte	0x1
	.byte	0x98
	.byte	0xc
	.byte	0x5
	.byte	0x3
	.4byte	SystemCoreClock
	.uleb128 0xe
	.4byte	0x2b2
	.byte	0x1
	.byte	0x9a
	.byte	0x11
	.byte	0x5
	.byte	0x3
	.4byte	AHBPrescTable
	.uleb128 0xe
	.4byte	0x2d5
	.byte	0x1
	.byte	0x9b
	.byte	0x11
	.byte	0x5
	.byte	0x3
	.4byte	APBPrescTable
	.uleb128 0xf
	.byte	0x1
	.4byte	.LASF78
	.byte	0x1
	.byte	0xe4
	.byte	0x6
	.byte	0x1
	.4byte	.LFB133
	.4byte	.LFE133
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x632
	.uleb128 0x10
	.ascii	"tmp\000"
	.byte	0x1
	.byte	0xe6
	.byte	0xc
	.4byte	0x9d
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x11
	.4byte	.LASF71
	.byte	0x1
	.byte	0xe6
	.byte	0x11
	.4byte	0x9d
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x11
	.4byte	.LASF72
	.byte	0x1
	.byte	0xe6
	.byte	0x19
	.4byte	0x9d
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x11
	.4byte	.LASF73
	.byte	0x1
	.byte	0xe6
	.byte	0x1f
	.4byte	0x9d
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x11
	.4byte	.LASF74
	.byte	0x1
	.byte	0xe6
	.byte	0x2a
	.4byte	0x9d
	.4byte	.LLST4
	.4byte	.LVUS4
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF79
	.byte	0x1
	.byte	0xb3
	.byte	0x6
	.byte	0x1
	.4byte	.LFB132
	.4byte	.LFE132
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
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
	.uleb128 0x2
	.uleb128 0x6
	.uleb128 0x2137
	.uleb128 0x6
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
.LVUS0:
	.uleb128 .LVU15
	.uleb128 .LVU17
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x12
	.byte	0x72
	.sleb128 0
	.byte	0x34
	.byte	0x25
	.byte	0x3f
	.byte	0x1a
	.byte	0x3
	.4byte	AHBPrescTable
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 .LVU36
	.uleb128 .LVU38
	.uleb128 .LVU38
	.uleb128 .LVU43
.LLST1:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL8
	.4byte	.LVL11
	.2byte	0xb
	.byte	0x73
	.sleb128 0
	.byte	0x38
	.byte	0x25
	.byte	0x8
	.byte	0x7f
	.byte	0x1a
	.byte	0x70
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 .LVU40
	.uleb128 .LVU42
.LLST2:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0xb
	.byte	0x72
	.sleb128 0
	.byte	0x49
	.byte	0x25
	.byte	0x33
	.byte	0x1a
	.byte	0x23
	.uleb128 0x1
	.byte	0x31
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 .LVU23
	.uleb128 .LVU26
	.uleb128 .LVU26
	.uleb128 .LVU28
	.uleb128 .LVU28
	.uleb128 .LVU30
.LLST3:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x5
	.byte	0x71
	.sleb128 0
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x5
	.byte	0x71
	.sleb128 0
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU32
	.uleb128 .LVU38
.LLST4:
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x53
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
	.4byte	.LFB132
	.4byte	.LFE132-.LFB132
	.4byte	.LFB133
	.4byte	.LFE133-.LFB133
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB132
	.4byte	.LFE132
	.4byte	.LFB133
	.4byte	.LFE133
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF34:
	.ascii	"PLLCFGR\000"
.LASF44:
	.ascii	"APB1RSTR1\000"
.LASF45:
	.ascii	"APB1RSTR2\000"
.LASF49:
	.ascii	"AHB2ENR\000"
.LASF2:
	.ascii	"short int\000"
.LASF66:
	.ascii	"BDCR\000"
.LASF64:
	.ascii	"CCIPR\000"
.LASF6:
	.ascii	"__uint32_t\000"
.LASF38:
	.ascii	"CICR\000"
.LASF13:
	.ascii	"CPUID\000"
.LASF40:
	.ascii	"AHB1RSTR\000"
.LASF33:
	.ascii	"CFGR\000"
.LASF79:
	.ascii	"SystemInit\000"
.LASF11:
	.ascii	"uint8_t\000"
.LASF36:
	.ascii	"CIER\000"
.LASF28:
	.ascii	"SCB_Type\000"
.LASF30:
	.ascii	"AHBPrescTable\000"
.LASF75:
	.ascii	"GNU C17 10.2.1 20201103 (release) -mcpu=cortex-m4 -"
	.ascii	"mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=hard -march=ar"
	.ascii	"mv7e-m+fp -g -gdwarf-2 -O3 -fdata-sections -ffuncti"
	.ascii	"on-sections\000"
.LASF12:
	.ascii	"uint32_t\000"
.LASF14:
	.ascii	"ICSR\000"
.LASF62:
	.ascii	"APB2SMENR\000"
.LASF8:
	.ascii	"long long int\000"
.LASF67:
	.ascii	"CRRCR\000"
.LASF22:
	.ascii	"BFAR\000"
.LASF60:
	.ascii	"APB1SMENR1\000"
.LASF61:
	.ascii	"APB1SMENR2\000"
.LASF4:
	.ascii	"long int\000"
.LASF69:
	.ascii	"RCC_TypeDef\000"
.LASF57:
	.ascii	"AHB2SMENR\000"
.LASF46:
	.ascii	"APB2RSTR\000"
.LASF5:
	.ascii	"__uint8_t\000"
.LASF18:
	.ascii	"CFSR\000"
.LASF31:
	.ascii	"APBPrescTable\000"
.LASF41:
	.ascii	"AHB2RSTR\000"
.LASF73:
	.ascii	"pllsource\000"
.LASF50:
	.ascii	"AHB3ENR\000"
.LASF74:
	.ascii	"pllm\000"
.LASF70:
	.ascii	"long double\000"
.LASF72:
	.ascii	"pllr\000"
.LASF16:
	.ascii	"AIRCR\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF54:
	.ascii	"APB2ENR\000"
.LASF0:
	.ascii	"signed char\000"
.LASF9:
	.ascii	"long long unsigned int\000"
.LASF17:
	.ascii	"SHCSR\000"
.LASF10:
	.ascii	"unsigned int\000"
.LASF77:
	.ascii	"/home/joel/share/EVSPIN32G4_Shinano\000"
.LASF7:
	.ascii	"long unsigned int\000"
.LASF21:
	.ascii	"MMFAR\000"
.LASF52:
	.ascii	"APB1ENR1\000"
.LASF53:
	.ascii	"APB1ENR2\000"
.LASF68:
	.ascii	"CCIPR2\000"
.LASF32:
	.ascii	"ICSCR\000"
.LASF71:
	.ascii	"pllvco\000"
.LASF56:
	.ascii	"AHB1SMENR\000"
.LASF15:
	.ascii	"VTOR\000"
.LASF78:
	.ascii	"SystemCoreClockUpdate\000"
.LASF25:
	.ascii	"ISAR\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF20:
	.ascii	"DFSR\000"
.LASF29:
	.ascii	"SystemCoreClock\000"
.LASF19:
	.ascii	"HFSR\000"
.LASF76:
	.ascii	"Src/system_stm32g4xx.c\000"
.LASF24:
	.ascii	"MMFR\000"
.LASF26:
	.ascii	"RESERVED0\000"
.LASF35:
	.ascii	"RESERVED1\000"
.LASF39:
	.ascii	"RESERVED2\000"
.LASF43:
	.ascii	"RESERVED3\000"
.LASF47:
	.ascii	"RESERVED4\000"
.LASF51:
	.ascii	"RESERVED5\000"
.LASF55:
	.ascii	"RESERVED6\000"
.LASF59:
	.ascii	"RESERVED7\000"
.LASF63:
	.ascii	"RESERVED8\000"
.LASF65:
	.ascii	"RESERVED9\000"
.LASF37:
	.ascii	"CIFR\000"
.LASF48:
	.ascii	"AHB1ENR\000"
.LASF58:
	.ascii	"AHB3SMENR\000"
.LASF23:
	.ascii	"AFSR\000"
.LASF42:
	.ascii	"AHB3RSTR\000"
.LASF27:
	.ascii	"CPACR\000"
	.ident	"GCC: (GNU Arm Embedded Toolchain 10-2020-q4-major) 10.2.1 20201103 (release)"
