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
	.file	"stm32g4xx_ll_dac.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.LL_DAC_DeInit,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	LL_DAC_DeInit
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	LL_DAC_DeInit, %function
LL_DAC_DeInit:
.LVL0:
.LFB254:
	.file 1 "Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_ll_dac.c"
	.loc 1 217 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 219 3 view .LVU1
	.loc 1 222 3 view .LVU2
	.loc 1 222 6 is_stmt 0 view .LVU3
	ldr	r3, .L7
	cmp	r0, r3
	beq	.L5
	.loc 1 242 3 is_stmt 1 view .LVU4
	.loc 1 242 6 is_stmt 0 view .LVU5
	ldr	r3, .L7+4
	cmp	r0, r3
	beq	.L6
	.loc 1 262 3 is_stmt 1 view .LVU6
	.loc 1 263 1 is_stmt 0 view .LVU7
	movs	r0, #0
.LVL1:
	.loc 1 263 1 view .LVU8
	bx	lr
.LVL2:
.L6:
	.loc 1 245 5 is_stmt 1 view .LVU9
.LBB12:
.LBI12:
	.file 2 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_ll_bus.h"
	.loc 2 581 22 view .LVU10
.LBB13:
	.loc 2 583 3 view .LVU11
	add	r3, r3, #-268435456
	add	r3, r3, #131072
.LBE13:
.LBE12:
	.loc 1 263 1 is_stmt 0 view .LVU12
	movs	r0, #0
.LVL3:
.LBB15:
.LBB14:
	.loc 2 583 3 view .LVU13
	ldr	r2, [r3, #44]
	orr	r2, r2, #262144
	str	r2, [r3, #44]
.LVL4:
	.loc 2 583 3 view .LVU14
.LBE14:
.LBE15:
	.loc 1 248 5 is_stmt 1 view .LVU15
.LBB16:
.LBI16:
	.loc 2 623 22 view .LVU16
.LBB17:
	.loc 2 625 3 view .LVU17
	ldr	r2, [r3, #44]
	bic	r2, r2, #262144
	str	r2, [r3, #44]
.LVL5:
	.loc 2 625 3 is_stmt 0 view .LVU18
.LBE17:
.LBE16:
	.loc 1 262 3 is_stmt 1 view .LVU19
	.loc 1 263 1 is_stmt 0 view .LVU20
	bx	lr
.LVL6:
.L5:
	.loc 1 225 5 is_stmt 1 view .LVU21
.LBB18:
.LBI18:
	.loc 2 581 22 view .LVU22
.LBB19:
	.loc 2 583 3 view .LVU23
	add	r3, r3, #-268435456
	add	r3, r3, #133120
.LBE19:
.LBE18:
	.loc 1 263 1 is_stmt 0 view .LVU24
	movs	r0, #0
.LVL7:
.LBB21:
.LBB20:
	.loc 2 583 3 view .LVU25
	ldr	r2, [r3, #44]
	orr	r2, r2, #65536
	str	r2, [r3, #44]
.LVL8:
	.loc 2 583 3 view .LVU26
.LBE20:
.LBE21:
	.loc 1 228 5 is_stmt 1 view .LVU27
.LBB22:
.LBI22:
	.loc 2 623 22 view .LVU28
.LBB23:
	.loc 2 625 3 view .LVU29
	ldr	r2, [r3, #44]
	bic	r2, r2, #65536
	str	r2, [r3, #44]
.LVL9:
	.loc 2 625 3 is_stmt 0 view .LVU30
.LBE23:
.LBE22:
	.loc 1 242 3 is_stmt 1 view .LVU31
	.loc 1 262 3 view .LVU32
	.loc 1 263 1 is_stmt 0 view .LVU33
	bx	lr
.L8:
	.align	2
.L7:
	.word	1342179328
	.word	1342181376
	.cfi_endproc
.LFE254:
	.size	LL_DAC_DeInit, .-LL_DAC_DeInit
	.section	.text.LL_DAC_Init,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	LL_DAC_Init
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	LL_DAC_Init, %function
LL_DAC_Init:
.LVL10:
.LFB255:
	.loc 1 294 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 295 3 view .LVU35
	.loc 1 298 3 view .LVU36
	.loc 1 299 3 view .LVU37
	.loc 1 300 3 view .LVU38
	.loc 1 301 3 view .LVU39
	.loc 1 302 3 view .LVU40
	.loc 1 303 3 view .LVU41
	.loc 1 304 3 view .LVU42
	.loc 1 305 3 view .LVU43
	.loc 1 307 5 view .LVU44
	.loc 1 313 3 view .LVU45
.LBB24:
.LBI24:
	.file 3 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_ll_dac.h"
	.loc 3 2091 26 view .LVU46
.LBB25:
	.loc 3 2093 3 view .LVU47
.LBE25:
.LBE24:
	.loc 1 294 1 is_stmt 0 view .LVU48
	push	{r4, lr}
.LCFI0:
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
.LBB27:
.LBB26:
	.loc 3 2093 12 view .LVU49
	and	ip, r1, #16
	ldr	r4, [r0]
	movs	r3, #1
	lsl	lr, r3, ip
	.loc 3 2095 80 view .LVU50
	bics	r4, lr, r4
	beq	.L14
.LBE26:
.LBE27:
	.loc 1 305 21 view .LVU51
	ldr	r3, [r2, #8]
.LVL11:
	.loc 1 321 5 is_stmt 1 view .LVU52
	.loc 1 321 8 is_stmt 0 view .LVU53
	cbz	r3, .L11
	.loc 1 323 7 is_stmt 1 view .LVU54
	.loc 1 323 10 is_stmt 0 view .LVU55
	cmp	r3, #192
	beq	.L16
	.loc 1 347 9 is_stmt 1 view .LVU56
	ldr	r4, [r2]
	ldr	r1, [r0]
.LVL12:
	.loc 1 347 9 is_stmt 0 view .LVU57
	orrs	r3, r3, r4
	ldr	r4, [r2, #12]
	orrs	r3, r3, r4
	movw	r4, #4092
	lsl	r4, r4, ip
	lsl	r3, r3, ip
	bic	r1, r1, r4
	orrs	r3, r3, r1
	str	r3, [r0]
	b	.L13
.LVL13:
.L11:
	.loc 1 362 7 is_stmt 1 view .LVU58
	ldr	r3, [r0]
	movs	r1, #252
.LVL14:
	.loc 1 362 7 is_stmt 0 view .LVU59
	lsl	r1, r1, ip
	bic	r3, r3, r1
	ldr	r1, [r2]
	lsl	r1, r1, ip
	orrs	r3, r3, r1
	str	r3, [r0]
.L13:
	.loc 1 372 5 is_stmt 1 view .LVU60
	ldrd	r3, r4, [r2, #16]
	ldr	r1, [r2, #24]
	ldr	r2, [r0, #60]
.LVL15:
	.loc 1 372 5 is_stmt 0 view .LVU61
	orrs	r3, r3, r4
	orrs	r3, r3, r1
	movs	r1, #7
	lsl	r1, r1, ip
	lsl	r3, r3, ip
	bic	r2, r2, r1
	orrs	r3, r3, r2
	str	r3, [r0, #60]
	.loc 1 295 15 view .LVU62
	movs	r0, #0
.LVL16:
	.loc 1 389 3 is_stmt 1 view .LVU63
	.loc 1 390 1 is_stmt 0 view .LVU64
	pop	{r4, pc}
.LVL17:
.L14:
	.loc 1 387 12 view .LVU65
	mov	r0, r3
.LVL18:
	.loc 1 389 3 is_stmt 1 view .LVU66
	.loc 1 390 1 is_stmt 0 view .LVU67
	pop	{r4, pc}
.LVL19:
.L16:
	.loc 1 325 9 is_stmt 1 view .LVU68
	.loc 1 327 9 view .LVU69
	ldr	r4, [r0]
	lsl	r3, r3, ip
	orrs	r3, r3, r4
	str	r3, [r0]
	.loc 1 332 9 view .LVU70
	ldr	r3, [r2, #4]
	ldr	r4, [r0, #96]
	lsr	lr, r3, #2
	ldr	r3, [r2]
	lsrs	r3, r3, #2
	orr	r3, r3, lr, lsl #8
	movw	lr, #3855
	.loc 1 340 9 is_stmt 0 view .LVU71
	lsrs	r1, r1, #5
.LVL20:
	.loc 1 332 9 view .LVU72
	lsl	lr, lr, ip
	.loc 1 340 9 view .LVU73
	and	r1, r1, #4
	.loc 1 332 9 view .LVU74
	lsl	r3, r3, ip
	bic	r4, r4, lr
	orrs	r3, r3, r4
	.loc 1 340 9 view .LVU75
	add	r1, r1, r0
	.loc 1 332 9 view .LVU76
	str	r3, [r0, #96]
	.loc 1 340 9 is_stmt 1 view .LVU77
	ldr	r3, [r2, #12]
	str	r3, [r1, #88]
	b	.L13
	.cfi_endproc
.LFE255:
	.size	LL_DAC_Init, .-LL_DAC_Init
	.section	.text.LL_DAC_StructInit,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	LL_DAC_StructInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	LL_DAC_StructInit, %function
LL_DAC_StructInit:
.LVL21:
.LFB256:
	.loc 1 399 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 401 3 view .LVU79
	.loc 1 401 44 is_stmt 0 view .LVU80
	movs	r3, #0
	.loc 1 402 44 view .LVU81
	strd	r3, r3, [r0]
	.loc 1 403 3 is_stmt 1 view .LVU82
	.loc 1 406 44 is_stmt 0 view .LVU83
	strd	r3, r3, [r0, #8]
	.loc 1 407 3 is_stmt 1 view .LVU84
	.loc 1 408 44 is_stmt 0 view .LVU85
	strd	r3, r3, [r0, #16]
	.loc 1 409 3 is_stmt 1 view .LVU86
	.loc 1 409 44 is_stmt 0 view .LVU87
	str	r3, [r0, #24]
	.loc 1 410 1 view .LVU88
	bx	lr
	.cfi_endproc
.LFE256:
	.size	LL_DAC_StructInit, .-LL_DAC_StructInit
	.text
.Letext0:
	.file 4 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/machine/_default_types.h"
	.file 5 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/sys/_stdint.h"
	.file 6 "Drivers/CMSIS/Device/ST/STM32G4xx/Include/stm32g431xx.h"
	.file 7 "Drivers/CMSIS/Device/ST/STM32G4xx/Include/stm32g4xx.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x796
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF92
	.byte	0xc
	.4byte	.LASF93
	.4byte	.LASF94
	.4byte	.Ldebug_ranges0+0x48
	.4byte	0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
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
	.4byte	.LASF9
	.byte	0x4
	.byte	0x4f
	.byte	0x19
	.4byte	0x58
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x5
	.byte	0x30
	.byte	0x14
	.4byte	0x4c
	.uleb128 0x5
	.4byte	0x7b
	.uleb128 0x6
	.byte	0x64
	.byte	0x6
	.2byte	0x13a
	.byte	0x9
	.4byte	0x215
	.uleb128 0x7
	.ascii	"CR\000"
	.byte	0x6
	.2byte	0x13c
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.4byte	.LASF11
	.byte	0x6
	.2byte	0x13d
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.4byte	.LASF12
	.byte	0x6
	.2byte	0x13e
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.4byte	.LASF13
	.byte	0x6
	.2byte	0x13f
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x6
	.2byte	0x140
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x6
	.2byte	0x141
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x6
	.2byte	0x142
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x6
	.2byte	0x143
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x6
	.2byte	0x144
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x6
	.2byte	0x145
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x6
	.2byte	0x146
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x6
	.2byte	0x147
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x6
	.2byte	0x148
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.ascii	"SR\000"
	.byte	0x6
	.2byte	0x149
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.ascii	"CCR\000"
	.byte	0x6
	.2byte	0x14a
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x7
	.ascii	"MCR\000"
	.byte	0x6
	.2byte	0x14b
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x6
	.2byte	0x14c
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x6
	.2byte	0x14d
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x6
	.2byte	0x14e
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x6
	.2byte	0x14f
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0x6
	.2byte	0x150
	.byte	0x11
	.4byte	0x225
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x8
	.4byte	.LASF28
	.byte	0x6
	.2byte	0x151
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x8
	.4byte	.LASF29
	.byte	0x6
	.2byte	0x152
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x8
	.4byte	.LASF30
	.byte	0x6
	.2byte	0x153
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.byte	0
	.uleb128 0x9
	.4byte	0x87
	.4byte	0x225
	.uleb128 0xa
	.4byte	0x74
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	0x215
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x6
	.2byte	0x154
	.byte	0x3
	.4byte	0x8c
	.uleb128 0xc
	.4byte	0x22a
	.uleb128 0x6
	.byte	0xa0
	.byte	0x6
	.2byte	0x23f
	.byte	0x9
	.4byte	0x4ce
	.uleb128 0x7
	.ascii	"CR\000"
	.byte	0x6
	.2byte	0x241
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.4byte	.LASF32
	.byte	0x6
	.2byte	0x242
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.4byte	.LASF33
	.byte	0x6
	.2byte	0x243
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.4byte	.LASF34
	.byte	0x6
	.2byte	0x244
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.4byte	.LASF35
	.byte	0x6
	.2byte	0x245
	.byte	0x11
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.4byte	.LASF36
	.byte	0x6
	.2byte	0x246
	.byte	0x11
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.4byte	.LASF37
	.byte	0x6
	.2byte	0x247
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.4byte	.LASF38
	.byte	0x6
	.2byte	0x248
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.4byte	.LASF39
	.byte	0x6
	.2byte	0x249
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.4byte	.LASF40
	.byte	0x6
	.2byte	0x24a
	.byte	0x11
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x8
	.4byte	.LASF41
	.byte	0x6
	.2byte	0x24b
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.4byte	.LASF42
	.byte	0x6
	.2byte	0x24c
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x8
	.4byte	.LASF43
	.byte	0x6
	.2byte	0x24d
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x8
	.4byte	.LASF44
	.byte	0x6
	.2byte	0x24e
	.byte	0x11
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x8
	.4byte	.LASF45
	.byte	0x6
	.2byte	0x24f
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x8
	.4byte	.LASF46
	.byte	0x6
	.2byte	0x250
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x8
	.4byte	.LASF47
	.byte	0x6
	.2byte	0x251
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x8
	.4byte	.LASF48
	.byte	0x6
	.2byte	0x252
	.byte	0x11
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x8
	.4byte	.LASF49
	.byte	0x6
	.2byte	0x253
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x8
	.4byte	.LASF50
	.byte	0x6
	.2byte	0x254
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x8
	.4byte	.LASF51
	.byte	0x6
	.2byte	0x255
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x8
	.4byte	.LASF52
	.byte	0x6
	.2byte	0x256
	.byte	0x11
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x8
	.4byte	.LASF53
	.byte	0x6
	.2byte	0x257
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x8
	.4byte	.LASF54
	.byte	0x6
	.2byte	0x258
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x8
	.4byte	.LASF55
	.byte	0x6
	.2byte	0x259
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x8
	.4byte	.LASF56
	.byte	0x6
	.2byte	0x25a
	.byte	0x11
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x8
	.4byte	.LASF57
	.byte	0x6
	.2byte	0x25b
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x8
	.4byte	.LASF58
	.byte	0x6
	.2byte	0x25c
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x8
	.4byte	.LASF59
	.byte	0x6
	.2byte	0x25d
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x8
	.4byte	.LASF60
	.byte	0x6
	.2byte	0x25e
	.byte	0x11
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x8
	.4byte	.LASF61
	.byte	0x6
	.2byte	0x25f
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x8
	.4byte	.LASF62
	.byte	0x6
	.2byte	0x260
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x8
	.4byte	.LASF63
	.byte	0x6
	.2byte	0x261
	.byte	0x11
	.4byte	0x87
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x8
	.4byte	.LASF64
	.byte	0x6
	.2byte	0x262
	.byte	0x11
	.4byte	0x7b
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x8
	.4byte	.LASF65
	.byte	0x6
	.2byte	0x263
	.byte	0x11
	.4byte	0x87
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x8
	.4byte	.LASF66
	.byte	0x6
	.2byte	0x264
	.byte	0x11
	.4byte	0x7b
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x8
	.4byte	.LASF67
	.byte	0x6
	.2byte	0x265
	.byte	0x11
	.4byte	0x87
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x7
	.ascii	"CSR\000"
	.byte	0x6
	.2byte	0x266
	.byte	0x11
	.4byte	0x87
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x8
	.4byte	.LASF68
	.byte	0x6
	.2byte	0x267
	.byte	0x11
	.4byte	0x87
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x8
	.4byte	.LASF69
	.byte	0x6
	.2byte	0x268
	.byte	0x11
	.4byte	0x87
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF70
	.byte	0x6
	.2byte	0x269
	.byte	0x3
	.4byte	0x23c
	.uleb128 0xd
	.byte	0x7
	.byte	0x1
	.4byte	0x30
	.byte	0x7
	.byte	0x97
	.byte	0x1
	.4byte	0x4f6
	.uleb128 0xe
	.4byte	.LASF71
	.byte	0
	.uleb128 0xe
	.4byte	.LASF72
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF73
	.byte	0x7
	.byte	0x9a
	.byte	0x3
	.4byte	0x4db
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF74
	.uleb128 0xf
	.byte	0x1c
	.byte	0x3
	.byte	0xb3
	.byte	0x9
	.4byte	0x57c
	.uleb128 0x10
	.4byte	.LASF75
	.byte	0x3
	.byte	0xb5
	.byte	0xc
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.4byte	.LASF76
	.byte	0x3
	.byte	0xbf
	.byte	0xc
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.4byte	.LASF77
	.byte	0x3
	.byte	0xc9
	.byte	0xc
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.4byte	.LASF78
	.byte	0x3
	.byte	0xcf
	.byte	0xc
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x10
	.4byte	.LASF79
	.byte	0x3
	.byte	0xe2
	.byte	0xc
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x10
	.4byte	.LASF80
	.byte	0x3
	.byte	0xe8
	.byte	0xc
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x10
	.4byte	.LASF81
	.byte	0x3
	.byte	0xee
	.byte	0xc
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x3
	.4byte	.LASF82
	.byte	0x3
	.byte	0xf3
	.byte	0x3
	.4byte	0x509
	.uleb128 0xc
	.4byte	0x57c
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x18e
	.byte	0x6
	.byte	0x1
	.4byte	.LFB256
	.4byte	.LFE256
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x5b8
	.uleb128 0x12
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x18e
	.byte	0x2c
	.4byte	0x5b8
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.4byte	0x57c
	.uleb128 0x14
	.byte	0x1
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x125
	.byte	0xd
	.byte	0x1
	.4byte	0x4f6
	.4byte	.LFB255
	.4byte	.LFE255
	.4byte	.LLST5
	.byte	0x1
	.4byte	0x660
	.uleb128 0x15
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x125
	.byte	0x26
	.4byte	0x660
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x15
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x125
	.byte	0x35
	.4byte	0x7b
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x15
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x125
	.byte	0x5c
	.4byte	0x666
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x16
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x127
	.byte	0xf
	.4byte	0x4f6
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x17
	.4byte	0x76f
	.4byte	.LBI24
	.byte	.LVU46
	.4byte	.Ldebug_ranges0+0x30
	.byte	0x1
	.2byte	0x139
	.byte	0x7
	.uleb128 0x18
	.4byte	0x78b
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x18
	.4byte	0x77e
	.4byte	.LLST11
	.4byte	.LVUS11
	.byte	0
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.4byte	0x22a
	.uleb128 0x13
	.byte	0x4
	.4byte	0x588
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF87
	.byte	0x1
	.byte	0xd8
	.byte	0xd
	.byte	0x1
	.4byte	0x4f6
	.4byte	.LFB254
	.4byte	.LFE254
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x72f
	.uleb128 0x1a
	.4byte	.LASF83
	.byte	0x1
	.byte	0xd8
	.byte	0x2e
	.4byte	0x72f
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x1b
	.4byte	0x752
	.4byte	.LBI12
	.byte	.LVU10
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xf5
	.byte	0x5
	.4byte	0x6c1
	.uleb128 0x18
	.4byte	0x761
	.4byte	.LLST1
	.4byte	.LVUS1
	.byte	0
	.uleb128 0x1c
	.4byte	0x735
	.4byte	.LBI16
	.byte	.LVU16
	.4byte	.LBB16
	.4byte	.LBE16
	.byte	0x1
	.byte	0xf8
	.byte	0x5
	.4byte	0x6e8
	.uleb128 0x18
	.4byte	0x744
	.4byte	.LLST2
	.4byte	.LVUS2
	.byte	0
	.uleb128 0x1b
	.4byte	0x752
	.4byte	.LBI18
	.byte	.LVU22
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0xe1
	.byte	0x5
	.4byte	0x70b
	.uleb128 0x18
	.4byte	0x761
	.4byte	.LLST3
	.4byte	.LVUS3
	.byte	0
	.uleb128 0x1d
	.4byte	0x735
	.4byte	.LBI22
	.byte	.LVU28
	.4byte	.LBB22
	.4byte	.LBE22
	.byte	0x1
	.byte	0xe4
	.byte	0x5
	.uleb128 0x18
	.4byte	0x744
	.4byte	.LLST4
	.4byte	.LVUS4
	.byte	0
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.4byte	0x237
	.uleb128 0x1e
	.4byte	.LASF88
	.byte	0x2
	.2byte	0x26f
	.byte	0x16
	.byte	0x1
	.byte	0x3
	.4byte	0x752
	.uleb128 0x1f
	.4byte	.LASF90
	.byte	0x2
	.2byte	0x26f
	.byte	0x39
	.4byte	0x7b
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF89
	.byte	0x2
	.2byte	0x245
	.byte	0x16
	.byte	0x1
	.byte	0x3
	.4byte	0x76f
	.uleb128 0x1f
	.4byte	.LASF90
	.byte	0x2
	.2byte	0x245
	.byte	0x37
	.4byte	0x7b
	.byte	0
	.uleb128 0x20
	.4byte	.LASF91
	.byte	0x3
	.2byte	0x82b
	.byte	0x1a
	.byte	0x1
	.4byte	0x7b
	.byte	0x3
	.uleb128 0x1f
	.4byte	.LASF83
	.byte	0x3
	.2byte	0x82b
	.byte	0x3e
	.4byte	0x72f
	.uleb128 0x1f
	.4byte	.LASF84
	.byte	0x3
	.2byte	0x82b
	.byte	0x4d
	.4byte	0x7b
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
	.uleb128 0x7
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST5:
	.4byte	.LFB255
	.4byte	.LCFI0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI0
	.4byte	.LFE255
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 0
	.uleb128 .LVU63
	.uleb128 .LVU63
	.uleb128 .LVU65
	.uleb128 .LVU65
	.uleb128 .LVU66
	.uleb128 .LVU66
	.uleb128 .LVU68
	.uleb128 .LVU68
	.uleb128 0
.LLST6:
	.4byte	.LVL10
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
	.4byte	.LFE255
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 0
	.uleb128 .LVU57
	.uleb128 .LVU57
	.uleb128 .LVU58
	.uleb128 .LVU58
	.uleb128 .LVU59
	.uleb128 .LVU59
	.uleb128 .LVU65
	.uleb128 .LVU65
	.uleb128 .LVU72
	.uleb128 .LVU72
	.uleb128 0
.LLST7:
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL14
	.4byte	.LVL17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL20
	.4byte	.LFE255
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 0
	.uleb128 .LVU61
	.uleb128 .LVU61
	.uleb128 .LVU65
	.uleb128 .LVU65
	.uleb128 0
.LLST8:
	.4byte	.LVL10
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LFE255
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 .LVU36
	.uleb128 .LVU63
	.uleb128 .LVU63
	.uleb128 .LVU65
	.uleb128 .LVU65
	.uleb128 .LVU66
	.uleb128 .LVU66
	.uleb128 .LVU68
	.uleb128 .LVU68
	.uleb128 0
.LLST9:
	.4byte	.LVL10
	.4byte	.LVL16
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL19
	.4byte	.LFE255
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 .LVU46
	.uleb128 .LVU52
	.uleb128 .LVU65
	.uleb128 .LVU66
.LLST10:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 .LVU46
	.uleb128 .LVU52
	.uleb128 .LVU65
	.uleb128 .LVU66
.LLST11:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU8
	.uleb128 .LVU8
	.uleb128 .LVU9
	.uleb128 .LVU9
	.uleb128 .LVU13
	.uleb128 .LVU13
	.uleb128 .LVU21
	.uleb128 .LVU21
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
	.4byte	.LVL6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL7
	.4byte	.LFE254
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 .LVU10
	.uleb128 .LVU14
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x4
	.byte	0x40
	.byte	0x3e
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 .LVU16
	.uleb128 .LVU18
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x4
	.byte	0x40
	.byte	0x3e
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 .LVU22
	.uleb128 .LVU26
.LLST3:
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x4
	.byte	0x40
	.byte	0x3c
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU28
	.uleb128 .LVU30
.LLST4:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x4
	.byte	0x40
	.byte	0x3c
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB254
	.4byte	.LFE254-.LFB254
	.4byte	.LFB255
	.4byte	.LFE255-.LFB255
	.4byte	.LFB256
	.4byte	.LFE256-.LFB256
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	.LBB15
	.4byte	.LBE15
	.4byte	0
	.4byte	0
	.4byte	.LBB18
	.4byte	.LBE18
	.4byte	.LBB21
	.4byte	.LBE21
	.4byte	0
	.4byte	0
	.4byte	.LBB24
	.4byte	.LBE24
	.4byte	.LBB27
	.4byte	.LBE27
	.4byte	0
	.4byte	0
	.4byte	.LFB254
	.4byte	.LFE254
	.4byte	.LFB255
	.4byte	.LFE255
	.4byte	.LFB256
	.4byte	.LFE256
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF93:
	.ascii	"Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_ll_dac.c"
	.ascii	"\000"
.LASF20:
	.ascii	"DHR8RD\000"
.LASF77:
	.ascii	"WaveAutoGeneration\000"
.LASF34:
	.ascii	"PLLCFGR\000"
.LASF45:
	.ascii	"APB1RSTR1\000"
.LASF46:
	.ascii	"APB1RSTR2\000"
.LASF50:
	.ascii	"AHB2ENR\000"
.LASF26:
	.ascii	"SHRR\000"
.LASF13:
	.ascii	"DHR12L1\000"
.LASF16:
	.ascii	"DHR12L2\000"
.LASF2:
	.ascii	"short int\000"
.LASF89:
	.ascii	"LL_AHB2_GRP1_ForceReset\000"
.LASF67:
	.ascii	"BDCR\000"
.LASF83:
	.ascii	"DACx\000"
.LASF65:
	.ascii	"CCIPR\000"
.LASF19:
	.ascii	"DHR12LD\000"
.LASF9:
	.ascii	"__uint32_t\000"
.LASF91:
	.ascii	"LL_DAC_IsEnabled\000"
.LASF78:
	.ascii	"WaveAutoGenerationConfig\000"
.LASF90:
	.ascii	"Periphs\000"
.LASF41:
	.ascii	"AHB1RSTR\000"
.LASF33:
	.ascii	"CFGR\000"
.LASF80:
	.ascii	"OutputConnection\000"
.LASF21:
	.ascii	"DOR1\000"
.LASF22:
	.ascii	"DOR2\000"
.LASF52:
	.ascii	"RESERVED5\000"
.LASF75:
	.ascii	"TriggerSource\000"
.LASF87:
	.ascii	"LL_DAC_DeInit\000"
.LASF23:
	.ascii	"SHSR1\000"
.LASF24:
	.ascii	"SHSR2\000"
.LASF74:
	.ascii	"long double\000"
.LASF51:
	.ascii	"AHB3ENR\000"
.LASF6:
	.ascii	"long long int\000"
.LASF82:
	.ascii	"LL_DAC_InitTypeDef\000"
.LASF4:
	.ascii	"long int\000"
.LASF73:
	.ascii	"ErrorStatus\000"
.LASF70:
	.ascii	"RCC_TypeDef\000"
.LASF81:
	.ascii	"OutputMode\000"
.LASF47:
	.ascii	"APB2RSTR\000"
.LASF86:
	.ascii	"LL_DAC_Init\000"
.LASF95:
	.ascii	"LL_DAC_StructInit\000"
.LASF76:
	.ascii	"TriggerSource2\000"
.LASF85:
	.ascii	"DAC_InitStruct\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF30:
	.ascii	"STMODR\000"
.LASF55:
	.ascii	"APB2ENR\000"
.LASF68:
	.ascii	"CRRCR\000"
.LASF0:
	.ascii	"signed char\000"
.LASF7:
	.ascii	"long long unsigned int\000"
.LASF92:
	.ascii	"GNU C17 10.2.1 20201103 (release) -mcpu=cortex-m4 -"
	.ascii	"mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=hard -march=ar"
	.ascii	"mv7e-m+fp -g -gdwarf-2 -O3 -fdata-sections -ffuncti"
	.ascii	"on-sections\000"
.LASF10:
	.ascii	"uint32_t\000"
.LASF28:
	.ascii	"STR1\000"
.LASF29:
	.ascii	"STR2\000"
.LASF8:
	.ascii	"unsigned int\000"
.LASF42:
	.ascii	"AHB2RSTR\000"
.LASF94:
	.ascii	"/home/joel/share/EVSPIN32G4_Shinano\000"
.LASF5:
	.ascii	"long unsigned int\000"
.LASF79:
	.ascii	"OutputBuffer\000"
.LASF53:
	.ascii	"APB1ENR1\000"
.LASF54:
	.ascii	"APB1ENR2\000"
.LASF11:
	.ascii	"SWTRIGR\000"
.LASF96:
	.ascii	"status\000"
.LASF69:
	.ascii	"CCIPR2\000"
.LASF32:
	.ascii	"ICSCR\000"
.LASF63:
	.ascii	"APB2SMENR\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF12:
	.ascii	"DHR12R1\000"
.LASF15:
	.ascii	"DHR12R2\000"
.LASF25:
	.ascii	"SHHR\000"
.LASF61:
	.ascii	"APB1SMENR1\000"
.LASF35:
	.ascii	"RESERVED0\000"
.LASF36:
	.ascii	"RESERVED1\000"
.LASF40:
	.ascii	"RESERVED2\000"
.LASF44:
	.ascii	"RESERVED3\000"
.LASF48:
	.ascii	"RESERVED4\000"
.LASF18:
	.ascii	"DHR12RD\000"
.LASF56:
	.ascii	"RESERVED6\000"
.LASF60:
	.ascii	"RESERVED7\000"
.LASF64:
	.ascii	"RESERVED8\000"
.LASF66:
	.ascii	"RESERVED9\000"
.LASF38:
	.ascii	"CIFR\000"
.LASF49:
	.ascii	"AHB1ENR\000"
.LASF88:
	.ascii	"LL_AHB2_GRP1_ReleaseReset\000"
.LASF71:
	.ascii	"SUCCESS\000"
.LASF72:
	.ascii	"ERROR\000"
.LASF59:
	.ascii	"AHB3SMENR\000"
.LASF57:
	.ascii	"AHB1SMENR\000"
.LASF43:
	.ascii	"AHB3RSTR\000"
.LASF27:
	.ascii	"RESERVED\000"
.LASF84:
	.ascii	"DAC_Channel\000"
.LASF39:
	.ascii	"CICR\000"
.LASF62:
	.ascii	"APB1SMENR2\000"
.LASF31:
	.ascii	"DAC_TypeDef\000"
.LASF58:
	.ascii	"AHB2SMENR\000"
.LASF14:
	.ascii	"DHR8R1\000"
.LASF17:
	.ascii	"DHR8R2\000"
.LASF37:
	.ascii	"CIER\000"
	.ident	"GCC: (GNU Arm Embedded Toolchain 10-2020-q4-major) 10.2.1 20201103 (release)"
