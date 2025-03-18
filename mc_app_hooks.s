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
	.file	"mc_app_hooks.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.MC_APP_BootHook,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	MC_APP_BootHook
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	MC_APP_BootHook, %function
MC_APP_BootHook:
.LFB1435:
	.file 1 "Src/mc_app_hooks.c"
	.loc 1 50 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 59 1 view .LVU1
	bx	lr
	.cfi_endproc
.LFE1435:
	.size	MC_APP_BootHook, .-MC_APP_BootHook
	.section	.text.MC_APP_PostMediumFrequencyHook_M1,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	MC_APP_PostMediumFrequencyHook_M1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	MC_APP_PostMediumFrequencyHook_M1, %function
MC_APP_PostMediumFrequencyHook_M1:
.LFB1438:
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.cfi_endproc
.LFE1438:
	.size	MC_APP_PostMediumFrequencyHook_M1, .-MC_APP_PostMediumFrequencyHook_M1
	.text
.Letext0:
	.file 2 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_ll_tim.h"
	.file 5 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_ll_usart.h"
	.file 6 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_ll_dma.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x1dc
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF22
	.byte	0xc
	.4byte	.LASF23
	.4byte	.LASF24
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
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x58
	.uleb128 0x5
	.4byte	0x98
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF13
	.uleb128 0x6
	.4byte	0x93
	.4byte	0xc0
	.uleb128 0x7
	.4byte	0x80
	.byte	0x9
	.byte	0
	.uleb128 0x5
	.4byte	0xb0
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x4
	.byte	0x2d
	.byte	0x16
	.4byte	0xc0
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
	.4byte	.LASF15
	.byte	0x4
	.byte	0x3c
	.byte	0x16
	.4byte	0xc0
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
	.4byte	.LASF16
	.byte	0x4
	.byte	0x4a
	.byte	0x16
	.4byte	0xc0
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
	.4byte	.LASF17
	.byte	0x4
	.byte	0x58
	.byte	0x16
	.4byte	0xc0
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
	.4byte	.LASF18
	.byte	0x4
	.byte	0x66
	.byte	0x16
	.4byte	0xc0
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
	.4byte	0xa4
	.4byte	0x148
	.uleb128 0x7
	.4byte	0x80
	.byte	0xb
	.byte	0
	.uleb128 0x5
	.4byte	0x138
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x5
	.byte	0x2e
	.byte	0x17
	.4byte	0x148
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
	.4byte	0x93
	.4byte	0x19a
	.uleb128 0x7
	.4byte	0x80
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.4byte	0x18a
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x6
	.byte	0x2f
	.byte	0x16
	.4byte	0x19a
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
	.4byte	.LASF21
	.uleb128 0x9
	.byte	0x1
	.4byte	.LASF25
	.byte	0x1
	.byte	0x43
	.byte	0xd
	.byte	0x1
	.uleb128 0xa
	.byte	0x1
	.4byte	.LASF26
	.byte	0x1
	.byte	0x31
	.byte	0xd
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.4byte	0x1c3
	.4byte	.LFB1435
	.4byte	.LFE1435
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
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB1435
	.4byte	.LFE1435-.LFB1435
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB1435
	.4byte	.LFE1435
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF8:
	.ascii	"long long int\000"
.LASF10:
	.ascii	"unsigned int\000"
.LASF16:
	.ascii	"SHIFT_TAB_ICxx\000"
.LASF6:
	.ascii	"__uint32_t\000"
.LASF19:
	.ascii	"USART_PRESCALER_TAB\000"
.LASF24:
	.ascii	"/home/joel/share/EVSPIN32G4_Shinano\000"
.LASF7:
	.ascii	"long unsigned int\000"
.LASF9:
	.ascii	"long long unsigned int\000"
.LASF5:
	.ascii	"__uint8_t\000"
.LASF14:
	.ascii	"OFFSET_TAB_CCMRx\000"
.LASF23:
	.ascii	"Src/mc_app_hooks.c\000"
.LASF22:
	.ascii	"GNU C17 10.2.1 20201103 (release) -mcpu=cortex-m4 -"
	.ascii	"mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=hard -march=ar"
	.ascii	"mv7e-m+fp -g -gdwarf-2 -O3 -fdata-sections -ffuncti"
	.ascii	"on-sections\000"
.LASF11:
	.ascii	"uint8_t\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF26:
	.ascii	"MC_APP_BootHook\000"
.LASF12:
	.ascii	"uint32_t\000"
.LASF4:
	.ascii	"long int\000"
.LASF17:
	.ascii	"SHIFT_TAB_CCxP\000"
.LASF25:
	.ascii	"MC_APP_PostMediumFrequencyHook_M1\000"
.LASF18:
	.ascii	"SHIFT_TAB_OISx\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF0:
	.ascii	"signed char\000"
.LASF13:
	.ascii	"long double\000"
.LASF15:
	.ascii	"SHIFT_TAB_OCxx\000"
.LASF21:
	.ascii	"float\000"
.LASF20:
	.ascii	"CHANNEL_OFFSET_TAB\000"
.LASF2:
	.ascii	"short int\000"
	.ident	"GCC: (GNU Arm Embedded Toolchain 10-2020-q4-major) 10.2.1 20201103 (release)"
