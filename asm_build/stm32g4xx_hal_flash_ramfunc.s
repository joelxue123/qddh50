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
	.file	"stm32g4xx_hal_flash_ramfunc.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.RamFunc,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_FLASHEx_EnableRunPowerDown
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_FLASHEx_EnableRunPowerDown, %function
HAL_FLASHEx_EnableRunPowerDown:
.LFB132:
	.file 1 "Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_flash_ramfunc.c"
	.loc 1 93 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 95 3 view .LVU1
	.loc 1 95 3 view .LVU2
	ldr	r3, .L3
	ldr	r1, .L3+4
	ldr	r2, .L3+8
	str	r1, [r3, #4]
	.loc 1 95 3 view .LVU3
	str	r2, [r3, #4]
	.loc 1 95 3 view .LVU4
	ldr	r2, [r3]
	orr	r2, r2, #8192
	.loc 1 99 1 is_stmt 0 view .LVU5
	movs	r0, #0
	.loc 1 95 3 view .LVU6
	str	r2, [r3]
	.loc 1 95 3 is_stmt 1 view .LVU7
	.loc 1 97 3 view .LVU8
	.loc 1 99 1 is_stmt 0 view .LVU9
	bx	lr
.L4:
	.align	2
.L3:
	.word	1073881088
	.word	68494903
	.word	-84148995
	.cfi_endproc
.LFE132:
	.size	HAL_FLASHEx_EnableRunPowerDown, .-HAL_FLASHEx_EnableRunPowerDown
	.align	1
	.p2align 2,,3
	.global	HAL_FLASHEx_DisableRunPowerDown
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_FLASHEx_DisableRunPowerDown, %function
HAL_FLASHEx_DisableRunPowerDown:
.LFB133:
	.loc 1 107 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 109 3 view .LVU11
	.loc 1 109 3 view .LVU12
	ldr	r3, .L6
	ldr	r1, .L6+4
	ldr	r2, .L6+8
	str	r1, [r3, #4]
	.loc 1 109 3 view .LVU13
	str	r2, [r3, #4]
	.loc 1 109 3 view .LVU14
	ldr	r2, [r3]
	bic	r2, r2, #8192
	.loc 1 112 1 is_stmt 0 view .LVU15
	movs	r0, #0
	.loc 1 109 3 view .LVU16
	str	r2, [r3]
	.loc 1 109 3 is_stmt 1 view .LVU17
	.loc 1 111 3 view .LVU18
	.loc 1 112 1 is_stmt 0 view .LVU19
	bx	lr
.L7:
	.align	2
.L6:
	.word	1073881088
	.word	68494903
	.word	-84148995
	.cfi_endproc
.LFE133:
	.size	HAL_FLASHEx_DisableRunPowerDown, .-HAL_FLASHEx_DisableRunPowerDown
	.text
.Letext0:
	.file 2 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "Drivers/CMSIS/Device/ST/STM32G4xx/Include/stm32g431xx.h"
	.file 5 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_hal_def.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x20d
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0xc
	.4byte	.LASF33
	.4byte	.LASF34
	.4byte	.Ldebug_ranges0+0
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
	.byte	0x2
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
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x4c
	.uleb128 0x5
	.4byte	0x7b
	.uleb128 0x6
	.4byte	0x7b
	.4byte	0x9c
	.uleb128 0x7
	.4byte	0x74
	.byte	0xe
	.byte	0
	.uleb128 0x8
	.byte	0x74
	.byte	0x4
	.2byte	0x1a9
	.byte	0x9
	.4byte	0x195
	.uleb128 0x9
	.ascii	"ACR\000"
	.byte	0x4
	.2byte	0x1ab
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF11
	.byte	0x4
	.2byte	0x1ac
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF12
	.byte	0x4
	.2byte	0x1ad
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF13
	.byte	0x4
	.2byte	0x1ae
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.ascii	"SR\000"
	.byte	0x4
	.2byte	0x1af
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.ascii	"CR\000"
	.byte	0x4
	.2byte	0x1b0
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.4byte	.LASF14
	.byte	0x4
	.2byte	0x1b1
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.4byte	.LASF15
	.byte	0x4
	.2byte	0x1b2
	.byte	0x11
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.4byte	.LASF16
	.byte	0x4
	.2byte	0x1b3
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF17
	.byte	0x4
	.2byte	0x1b4
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0x4
	.2byte	0x1b5
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x4
	.2byte	0x1b6
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x4
	.2byte	0x1b7
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x4
	.2byte	0x1b8
	.byte	0x11
	.4byte	0x8c
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x4
	.2byte	0x1b9
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.byte	0
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x4
	.2byte	0x1ba
	.byte	0x3
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF24
	.uleb128 0xc
	.byte	0x7
	.byte	0x1
	.4byte	0x30
	.byte	0x5
	.byte	0x27
	.byte	0x1
	.4byte	0x1d0
	.uleb128 0xd
	.4byte	.LASF25
	.byte	0
	.uleb128 0xd
	.4byte	.LASF26
	.byte	0x1
	.uleb128 0xd
	.4byte	.LASF27
	.byte	0x2
	.uleb128 0xd
	.4byte	.LASF28
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x5
	.byte	0x2c
	.byte	0x3
	.4byte	0x1a9
	.uleb128 0xe
	.byte	0x1
	.4byte	.LASF30
	.byte	0x1
	.byte	0x6a
	.byte	0x1e
	.byte	0x1
	.4byte	0x1d0
	.4byte	.LFB133
	.4byte	.LFE133
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.4byte	.LASF31
	.byte	0x1
	.byte	0x5c
	.byte	0x1e
	.byte	0x1
	.4byte	0x1d0
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
	.uleb128 0xd
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.byte	0
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
.LASF12:
	.ascii	"KEYR\000"
.LASF23:
	.ascii	"FLASH_TypeDef\000"
.LASF20:
	.ascii	"WRP1BR\000"
.LASF26:
	.ascii	"HAL_ERROR\000"
.LASF19:
	.ascii	"WRP1AR\000"
.LASF25:
	.ascii	"HAL_OK\000"
.LASF15:
	.ascii	"RESERVED1\000"
.LASF21:
	.ascii	"RESERVED2\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF14:
	.ascii	"ECCR\000"
.LASF5:
	.ascii	"long unsigned int\000"
.LASF30:
	.ascii	"HAL_FLASHEx_DisableRunPowerDown\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF13:
	.ascii	"OPTKEYR\000"
.LASF33:
	.ascii	"Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_flas"
	.ascii	"h_ramfunc.c\000"
.LASF11:
	.ascii	"PDKEYR\000"
.LASF9:
	.ascii	"__uint32_t\000"
.LASF22:
	.ascii	"SEC1R\000"
.LASF27:
	.ascii	"HAL_BUSY\000"
.LASF8:
	.ascii	"unsigned int\000"
.LASF18:
	.ascii	"PCROP1ER\000"
.LASF7:
	.ascii	"long long unsigned int\000"
.LASF32:
	.ascii	"GNU C17 10.2.1 20201103 (release) -mcpu=cortex-m4 -"
	.ascii	"mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=hard -march=ar"
	.ascii	"mv7e-m+fp -g -gdwarf-2 -O3 -fdata-sections -ffuncti"
	.ascii	"on-sections\000"
.LASF29:
	.ascii	"HAL_StatusTypeDef\000"
.LASF6:
	.ascii	"long long int\000"
.LASF34:
	.ascii	"/home/joel/share/EVSPIN32G4_Shinano\000"
.LASF2:
	.ascii	"short int\000"
.LASF31:
	.ascii	"HAL_FLASHEx_EnableRunPowerDown\000"
.LASF10:
	.ascii	"uint32_t\000"
.LASF4:
	.ascii	"long int\000"
.LASF28:
	.ascii	"HAL_TIMEOUT\000"
.LASF24:
	.ascii	"long double\000"
.LASF0:
	.ascii	"signed char\000"
.LASF16:
	.ascii	"OPTR\000"
.LASF17:
	.ascii	"PCROP1SR\000"
	.ident	"GCC: (GNU Arm Embedded Toolchain 10-2020-q4-major) 10.2.1 20201103 (release)"
