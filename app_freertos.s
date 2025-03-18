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
	.file	"app_freertos.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
.Letext0:
	.file 1 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/machine/_default_types.h"
	.file 2 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/sys/_stdint.h"
	.file 3 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_ll_tim.h"
	.file 4 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_ll_usart.h"
	.file 5 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_ll_dma.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x1bf
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0xc
	.4byte	.LASF26
	.4byte	.LASF27
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF2
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x1
	.byte	0x2b
	.byte	0x18
	.4byte	0x4c
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x1
	.byte	0x4f
	.byte	0x19
	.4byte	0x74
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x2
	.byte	0x18
	.byte	0x13
	.4byte	0x40
	.uleb128 0x5
	.4byte	0x82
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x2
	.byte	0x30
	.byte	0x14
	.4byte	0x68
	.uleb128 0x5
	.4byte	0x93
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x6
	.4byte	0x8e
	.4byte	0xbb
	.uleb128 0x7
	.4byte	0x24
	.byte	0x9
	.byte	0
	.uleb128 0x5
	.4byte	0xab
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x3
	.byte	0x2d
	.byte	0x16
	.4byte	0xbb
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
	.4byte	.LASF16
	.byte	0x3
	.byte	0x3c
	.byte	0x16
	.4byte	0xbb
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
	.4byte	.LASF17
	.byte	0x3
	.byte	0x4a
	.byte	0x16
	.4byte	0xbb
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
	.4byte	.LASF18
	.byte	0x3
	.byte	0x58
	.byte	0x16
	.4byte	0xbb
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
	.4byte	.LASF19
	.byte	0x3
	.byte	0x66
	.byte	0x16
	.4byte	0xbb
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
	.4byte	0x9f
	.4byte	0x143
	.uleb128 0x7
	.4byte	0x24
	.byte	0xb
	.byte	0
	.uleb128 0x5
	.4byte	0x133
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x4
	.byte	0x2e
	.byte	0x17
	.4byte	0x143
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
	.4byte	0x8e
	.4byte	0x195
	.uleb128 0x7
	.4byte	0x24
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.4byte	0x185
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x5
	.byte	0x2f
	.byte	0x16
	.4byte	0x195
	.byte	0x6
	.byte	0x8
	.byte	0x1c
	.byte	0x30
	.byte	0x44
	.byte	0x58
	.byte	0x6c
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.4byte	.LASF22
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF23
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF24
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
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x3
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
	.uleb128 0x4
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
	.byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x14
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF1:
	.ascii	"long long int\000"
.LASF18:
	.ascii	"SHIFT_TAB_CCxP\000"
.LASF17:
	.ascii	"SHIFT_TAB_ICxx\000"
.LASF9:
	.ascii	"__uint32_t\000"
.LASF20:
	.ascii	"USART_PRESCALER_TAB\000"
.LASF27:
	.ascii	"/home/joel/share/EVSPIN32G4_Shinano\000"
.LASF10:
	.ascii	"long unsigned int\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF15:
	.ascii	"OFFSET_TAB_CCMRx\000"
.LASF12:
	.ascii	"uint8_t\000"
.LASF4:
	.ascii	"unsigned char\000"
.LASF8:
	.ascii	"__uint8_t\000"
.LASF14:
	.ascii	"char\000"
.LASF13:
	.ascii	"uint32_t\000"
.LASF26:
	.ascii	"Src/app_freertos.c\000"
.LASF24:
	.ascii	"double\000"
.LASF23:
	.ascii	"_Bool\000"
.LASF7:
	.ascii	"long int\000"
.LASF19:
	.ascii	"SHIFT_TAB_OISx\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF25:
	.ascii	"GNU C17 10.2.1 20201103 (release) -mcpu=cortex-m4 -"
	.ascii	"mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=hard -march=ar"
	.ascii	"mv7e-m+fp -g -gdwarf-2 -O3 -fdata-sections -ffuncti"
	.ascii	"on-sections\000"
.LASF2:
	.ascii	"long double\000"
.LASF16:
	.ascii	"SHIFT_TAB_OCxx\000"
.LASF22:
	.ascii	"float\000"
.LASF21:
	.ascii	"CHANNEL_OFFSET_TAB\000"
.LASF5:
	.ascii	"short int\000"
.LASF0:
	.ascii	"unsigned int\000"
.LASF3:
	.ascii	"signed char\000"
	.ident	"GCC: (GNU Arm Embedded Toolchain 10-2020-q4-major) 10.2.1 20201103 (release)"
