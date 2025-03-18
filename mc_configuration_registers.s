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
	.file	"mc_configuration_registers.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.global	ApplicationConfig_reg
	.global	MotorConfig_reg
	.global	FOCConfig_reg
	.global	PWR_BOARD_NAME
	.global	globalConfig_reg
	.global	FIRMWARE_NAME
	.global	CTL_BOARD
	.section	.data.ApplicationConfig_reg,"aw"
	.align	2
	.type	ApplicationConfig_reg, %object
	.size	ApplicationConfig_reg, 4
ApplicationConfig_reg:
	.word	M1_ApplicationConfig_reg
	.section	.data.FOCConfig_reg,"aw"
	.align	2
	.type	FOCConfig_reg, %object
	.size	FOCConfig_reg, 4
FOCConfig_reg:
	.word	M1_FOCConfig_reg
	.section	.data.MotorConfig_reg,"aw"
	.align	2
	.type	MotorConfig_reg, %object
	.size	MotorConfig_reg, 4
MotorConfig_reg:
	.word	M1_MotorConfig_reg
	.section	.data.PWR_BOARD_NAME,"aw"
	.align	2
	.type	PWR_BOARD_NAME, %object
	.size	PWR_BOARD_NAME, 4
PWR_BOARD_NAME:
	.word	M1_PWR_BOARD
	.section	.rodata.CTL_BOARD,"a"
	.align	2
	.type	CTL_BOARD, %object
	.size	CTL_BOARD, 11
CTL_BOARD:
	.ascii	"EVSPIN32G4\000"
	.section	.rodata.FIRMWARE_NAME,"a"
	.align	2
	.type	FIRMWARE_NAME, %object
	.size	FIRMWARE_NAME, 20
FIRMWARE_NAME:
	.ascii	"ST MC SDK\011Ver.6.3.2\000"
	.section	.rodata.M1_ApplicationConfig_reg,"a"
	.align	2
	.type	M1_ApplicationConfig_reg, %object
	.size	M1_ApplicationConfig_reg, 16
M1_ApplicationConfig_reg:
	.word	4000
	.word	1111265865
	.word	1070386381
	.short	24
	.byte	0
	.space	1
	.section	.rodata.M1_FOCConfig_reg,"a"
	.align	2
	.type	M1_FOCConfig_reg, %object
	.size	M1_FOCConfig_reg, 14
M1_FOCConfig_reg:
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.word	20000
	.short	1000
	.short	1538
	.short	24577
	.section	.rodata.M1_MotorConfig_reg,"a"
	.align	2
	.type	M1_MotorConfig_reg, %object
	.size	M1_MotorConfig_reg, 60
M1_MotorConfig_reg:
	.word	1073741824
	.word	1082130432
	.word	1051931443
	.space	4
	.word	974997842
	.word	974997842
	.word	1070386381
	.space	8
	.ascii	"Shinano LA052-080E3NL1\000"
	.space	1
	.section	.rodata.M1_PWR_BOARD,"a"
	.align	2
	.type	M1_PWR_BOARD, %object
	.size	M1_PWR_BOARD, 11
M1_PWR_BOARD:
	.ascii	"EVSPIN32G4\000"
	.section	.rodata.globalConfig_reg,"a"
	.align	2
	.type	globalConfig_reg, %object
	.size	globalConfig_reg, 10
globalConfig_reg:
	.word	100860416
	.byte	1
	.byte	2
	.byte	10
	.byte	0
	.byte	0
	.space	1
	.text
.Letext0:
	.file 1 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/machine/_default_types.h"
	.file 2 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/sys/_stdint.h"
	.file 3 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_ll_tim.h"
	.file 4 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_ll_usart.h"
	.file 5 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_ll_dma.h"
	.file 6 "Inc/mc_type.h"
	.file 7 "Inc/mc_configuration_registers.h"
	.file 8 "Src/mc_configuration_registers.c"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x5fc
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF74
	.byte	0xc
	.4byte	.LASF75
	.4byte	.LASF76
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF0
	.byte	0x1
	.byte	0x29
	.byte	0x17
	.4byte	0x29
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x2
	.4byte	.LASF1
	.byte	0x1
	.byte	0x2b
	.byte	0x18
	.4byte	0x3c
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x2
	.4byte	.LASF5
	.byte	0x1
	.byte	0x39
	.byte	0x19
	.4byte	0x56
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x1
	.byte	0x4f
	.byte	0x19
	.4byte	0x70
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x2
	.4byte	.LASF13
	.byte	0x2
	.byte	0x14
	.byte	0x12
	.4byte	0x1d
	.uleb128 0x2
	.4byte	.LASF14
	.byte	0x2
	.byte	0x18
	.byte	0x13
	.4byte	0x30
	.uleb128 0x5
	.4byte	0x9f
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x2
	.byte	0x24
	.byte	0x14
	.4byte	0x4a
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x2
	.byte	0x30
	.byte	0x14
	.4byte	0x64
	.uleb128 0x5
	.4byte	0xbc
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF17
	.uleb128 0x6
	.4byte	0xab
	.4byte	0xe4
	.uleb128 0x7
	.4byte	0x8c
	.byte	0x9
	.byte	0
	.uleb128 0x5
	.4byte	0xd4
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x3
	.byte	0x2d
	.byte	0x16
	.4byte	0xe4
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
	.4byte	.LASF19
	.byte	0x3
	.byte	0x3c
	.byte	0x16
	.4byte	0xe4
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
	.4byte	.LASF20
	.byte	0x3
	.byte	0x4a
	.byte	0x16
	.4byte	0xe4
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
	.4byte	.LASF21
	.byte	0x3
	.byte	0x58
	.byte	0x16
	.4byte	0xe4
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
	.4byte	.LASF22
	.byte	0x3
	.byte	0x66
	.byte	0x16
	.4byte	0xe4
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
	.4byte	0xc8
	.4byte	0x16c
	.uleb128 0x7
	.4byte	0x8c
	.byte	0xb
	.byte	0
	.uleb128 0x5
	.4byte	0x15c
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x4
	.byte	0x2e
	.byte	0x17
	.4byte	0x16c
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
	.4byte	0xab
	.4byte	0x1be
	.uleb128 0x7
	.4byte	0x8c
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.4byte	0x1ae
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x5
	.byte	0x2f
	.byte	0x16
	.4byte	0x1be
	.byte	0x6
	.byte	0x8
	.byte	0x1c
	.byte	0x30
	.byte	0x44
	.byte	0x58
	.byte	0x6c
	.uleb128 0x2
	.4byte	.LASF25
	.byte	0x6
	.byte	0x2d
	.byte	0x19
	.4byte	0x93
	.uleb128 0x5
	.4byte	0x1d6
	.uleb128 0x2
	.4byte	.LASF26
	.byte	0x6
	.byte	0x30
	.byte	0x19
	.4byte	0x1f3
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.4byte	.LASF27
	.uleb128 0x9
	.byte	0xa
	.byte	0x7
	.byte	0x1c
	.byte	0x9
	.4byte	0x26d
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x7
	.byte	0x1e
	.byte	0xc
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x7
	.byte	0x1f
	.byte	0xb
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x7
	.byte	0x20
	.byte	0xb
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0x7
	.byte	0x21
	.byte	0xb
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x7
	.byte	0x22
	.byte	0xb
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x7
	.byte	0x23
	.byte	0xb
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0x7
	.byte	0x24
	.byte	0xb
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.byte	0
	.uleb128 0x2
	.4byte	.LASF35
	.byte	0x7
	.byte	0x25
	.byte	0x1c
	.4byte	0x1fa
	.uleb128 0x5
	.4byte	0x26d
	.uleb128 0x9
	.byte	0x3c
	.byte	0x7
	.byte	0x27
	.byte	0x9
	.4byte	0x31b
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0x7
	.byte	0x29
	.byte	0xd
	.4byte	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0x7
	.byte	0x2a
	.byte	0xd
	.4byte	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.ascii	"rs\000"
	.byte	0x7
	.byte	0x2b
	.byte	0xd
	.4byte	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0x7
	.byte	0x2c
	.byte	0xd
	.4byte	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.ascii	"ls\000"
	.byte	0x7
	.byte	0x2d
	.byte	0xd
	.4byte	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.ascii	"ld\000"
	.byte	0x7
	.byte	0x2e
	.byte	0xd
	.4byte	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0x7
	.byte	0x2f
	.byte	0xd
	.4byte	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x7
	.byte	0x30
	.byte	0xd
	.4byte	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0x7
	.byte	0x31
	.byte	0xd
	.4byte	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0x7
	.byte	0x32
	.byte	0xc
	.4byte	0x31b
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0
	.uleb128 0x6
	.4byte	0x1d6
	.4byte	0x32b
	.uleb128 0x7
	.4byte	0x8c
	.byte	0x17
	.byte	0
	.uleb128 0x2
	.4byte	.LASF43
	.byte	0x7
	.byte	0x33
	.byte	0x1c
	.4byte	0x27e
	.uleb128 0x5
	.4byte	0x32b
	.uleb128 0x9
	.byte	0x10
	.byte	0x7
	.byte	0x35
	.byte	0xa
	.4byte	0x3a0
	.uleb128 0xa
	.4byte	.LASF44
	.byte	0x7
	.byte	0x37
	.byte	0xc
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF45
	.byte	0x7
	.byte	0x38
	.byte	0xb
	.4byte	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF46
	.byte	0x7
	.byte	0x39
	.byte	0xb
	.4byte	0x1e7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF47
	.byte	0x7
	.byte	0x3a
	.byte	0xc
	.4byte	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF48
	.byte	0x7
	.byte	0x3b
	.byte	0xb
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xa
	.4byte	.LASF49
	.byte	0x7
	.byte	0x3c
	.byte	0xb
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.byte	0
	.uleb128 0x2
	.4byte	.LASF50
	.byte	0x7
	.byte	0x3d
	.byte	0x1c
	.4byte	0x33c
	.uleb128 0x5
	.4byte	0x3a0
	.uleb128 0x9
	.byte	0xe
	.byte	0x7
	.byte	0x3f
	.byte	0x9
	.4byte	0x433
	.uleb128 0xa
	.4byte	.LASF51
	.byte	0x7
	.byte	0x41
	.byte	0xb
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF52
	.byte	0x7
	.byte	0x42
	.byte	0xb
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.4byte	.LASF53
	.byte	0x7
	.byte	0x43
	.byte	0xb
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.4byte	.LASF54
	.byte	0x7
	.byte	0x44
	.byte	0xb
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xa
	.4byte	.LASF55
	.byte	0x7
	.byte	0x45
	.byte	0xc
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF56
	.byte	0x7
	.byte	0x46
	.byte	0xc
	.4byte	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF57
	.byte	0x7
	.byte	0x47
	.byte	0xc
	.4byte	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xa
	.4byte	.LASF58
	.byte	0x7
	.byte	0x48
	.byte	0xc
	.4byte	0xb0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x2
	.4byte	.LASF59
	.byte	0x7
	.byte	0x49
	.byte	0x1c
	.4byte	0x3b1
	.uleb128 0x5
	.4byte	0x433
	.uleb128 0x6
	.4byte	0x1e2
	.4byte	0x44f
	.uleb128 0xc
	.byte	0
	.uleb128 0x5
	.4byte	0x444
	.uleb128 0xd
	.4byte	.LASF60
	.byte	0x7
	.byte	0x83
	.byte	0x15
	.4byte	0x44f
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.4byte	.LASF61
	.byte	0x7
	.byte	0x84
	.byte	0x15
	.4byte	0x44f
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.4byte	0x480
	.4byte	0x480
	.uleb128 0x7
	.4byte	0x8c
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1e2
	.uleb128 0xd
	.4byte	.LASF62
	.byte	0x7
	.byte	0x85
	.byte	0x16
	.4byte	0x470
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.4byte	.LASF63
	.byte	0x7
	.byte	0x87
	.byte	0x21
	.4byte	0x279
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.4byte	0x4b2
	.4byte	0x4b2
	.uleb128 0x7
	.4byte	0x8c
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x43f
	.uleb128 0xd
	.4byte	.LASF64
	.byte	0x7
	.byte	0x88
	.byte	0x21
	.4byte	0x4a2
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.4byte	0x4d6
	.4byte	0x4d6
	.uleb128 0x7
	.4byte	0x8c
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x337
	.uleb128 0xd
	.4byte	.LASF65
	.byte	0x7
	.byte	0x89
	.byte	0x21
	.4byte	0x4c6
	.byte	0x1
	.byte	0x1
	.uleb128 0x6
	.4byte	0x4fa
	.4byte	0x4fa
	.uleb128 0x7
	.4byte	0x8c
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x3ac
	.uleb128 0xd
	.4byte	.LASF66
	.byte	0x7
	.byte	0x8a
	.byte	0x27
	.4byte	0x4ea
	.byte	0x1
	.byte	0x1
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF67
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF68
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF69
	.uleb128 0x6
	.4byte	0x1e2
	.4byte	0x533
	.uleb128 0x7
	.4byte	0x8c
	.byte	0xa
	.byte	0
	.uleb128 0x5
	.4byte	0x523
	.uleb128 0xf
	.4byte	0x462
	.byte	0x8
	.byte	0x1d
	.byte	0xe
	.4byte	0x533
	.byte	0x5
	.byte	0x3
	.4byte	CTL_BOARD
	.uleb128 0x10
	.4byte	.LASF70
	.byte	0x8
	.byte	0x1e
	.byte	0x15
	.4byte	0x533
	.byte	0x5
	.byte	0x3
	.4byte	M1_PWR_BOARD
	.uleb128 0x6
	.4byte	0x1e2
	.4byte	0x56c
	.uleb128 0x7
	.4byte	0x8c
	.byte	0x13
	.byte	0
	.uleb128 0x5
	.4byte	0x55c
	.uleb128 0xf
	.4byte	0x454
	.byte	0x8
	.byte	0x1f
	.byte	0xe
	.4byte	0x56c
	.byte	0x5
	.byte	0x3
	.4byte	FIRMWARE_NAME
	.uleb128 0x11
	.4byte	0x494
	.byte	0x8
	.byte	0x21
	.byte	0x1a
	.byte	0x5
	.byte	0x3
	.4byte	globalConfig_reg
	.uleb128 0x10
	.4byte	.LASF71
	.byte	0x8
	.byte	0x2b
	.byte	0x26
	.4byte	0x3ac
	.byte	0x5
	.byte	0x3
	.4byte	M1_ApplicationConfig_reg
	.uleb128 0x10
	.4byte	.LASF72
	.byte	0x8
	.byte	0x35
	.byte	0x20
	.4byte	0x337
	.byte	0x5
	.byte	0x3
	.4byte	M1_MotorConfig_reg
	.uleb128 0x10
	.4byte	.LASF73
	.byte	0x8
	.byte	0x40
	.byte	0x20
	.4byte	0x43f
	.byte	0x5
	.byte	0x3
	.4byte	M1_FOCConfig_reg
	.uleb128 0x11
	.4byte	0x486
	.byte	0x8
	.byte	0x4c
	.byte	0x10
	.byte	0x5
	.byte	0x3
	.4byte	PWR_BOARD_NAME
	.uleb128 0x11
	.4byte	0x4b8
	.byte	0x8
	.byte	0x4d
	.byte	0x1a
	.byte	0x5
	.byte	0x3
	.4byte	FOCConfig_reg
	.uleb128 0x11
	.4byte	0x4dc
	.byte	0x8
	.byte	0x4e
	.byte	0x1a
	.byte	0x5
	.byte	0x3
	.4byte	MotorConfig_reg
	.uleb128 0x11
	.4byte	0x500
	.byte	0x8
	.byte	0x4f
	.byte	0x20
	.byte	0x5
	.byte	0x3
	.4byte	ApplicationConfig_reg
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
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x11
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
.LASF32:
	.ascii	"MCPA_UARTB_LOG\000"
.LASF63:
	.ascii	"globalConfig_reg\000"
.LASF47:
	.ascii	"nominalVoltage\000"
.LASF13:
	.ascii	"int8_t\000"
.LASF26:
	.ascii	"float_t\000"
.LASF21:
	.ascii	"SHIFT_TAB_CCxP\000"
.LASF4:
	.ascii	"short int\000"
.LASF43:
	.ascii	"MotorConfig_reg_t\000"
.LASF60:
	.ascii	"FIRMWARE_NAME\000"
.LASF8:
	.ascii	"__uint32_t\000"
.LASF5:
	.ascii	"__uint16_t\000"
.LASF30:
	.ascii	"MCP_Flag\000"
.LASF37:
	.ascii	"ratedFlux\000"
.LASF65:
	.ascii	"MotorConfig_reg\000"
.LASF40:
	.ascii	"mass_copper_kg\000"
.LASF66:
	.ascii	"ApplicationConfig_reg\000"
.LASF61:
	.ascii	"CTL_BOARD\000"
.LASF74:
	.ascii	"GNU C17 10.2.1 20201103 (release) -mcpu=cortex-m4 -"
	.ascii	"mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=hard -march=ar"
	.ascii	"mv7e-m+fp -g -gdwarf-2 -O3 -fdata-sections -ffuncti"
	.ascii	"on-sections\000"
.LASF46:
	.ascii	"nominalCurrent\000"
.LASF52:
	.ascii	"auxiliarySensor\000"
.LASF27:
	.ascii	"float\000"
.LASF10:
	.ascii	"long long int\000"
.LASF62:
	.ascii	"PWR_BOARD_NAME\000"
.LASF54:
	.ascii	"FOCRate\000"
.LASF56:
	.ascii	"MediumFrequency\000"
.LASF34:
	.ascii	"Padding\000"
.LASF7:
	.ascii	"long int\000"
.LASF25:
	.ascii	"char_t\000"
.LASF72:
	.ascii	"M1_MotorConfig_reg\000"
.LASF1:
	.ascii	"__uint8_t\000"
.LASF41:
	.ascii	"cooling_tau_s\000"
.LASF33:
	.ascii	"MCPA_STLNK_LOG\000"
.LASF42:
	.ascii	"name\000"
.LASF17:
	.ascii	"long double\000"
.LASF35:
	.ascii	"GlobalConfig_reg_t\000"
.LASF3:
	.ascii	"unsigned char\000"
.LASF57:
	.ascii	"configurationFlag1\000"
.LASF58:
	.ascii	"configurationFlag2\000"
.LASF2:
	.ascii	"signed char\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF16:
	.ascii	"uint32_t\000"
.LASF19:
	.ascii	"SHIFT_TAB_OCxx\000"
.LASF48:
	.ascii	"driveType\000"
.LASF12:
	.ascii	"unsigned int\000"
.LASF15:
	.ascii	"uint16_t\000"
.LASF9:
	.ascii	"long unsigned int\000"
.LASF53:
	.ascii	"topology\000"
.LASF50:
	.ascii	"ApplicationConfig_reg_t\000"
.LASF44:
	.ascii	"maxMechanicalSpeed\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF0:
	.ascii	"__int8_t\000"
.LASF36:
	.ascii	"polePairs\000"
.LASF68:
	.ascii	"char\000"
.LASF55:
	.ascii	"PWMFrequency\000"
.LASF31:
	.ascii	"MCPA_UARTA_LOG\000"
.LASF67:
	.ascii	"_Bool\000"
.LASF45:
	.ascii	"maxReadableCurrent\000"
.LASF49:
	.ascii	"padding\000"
.LASF70:
	.ascii	"M1_PWR_BOARD\000"
.LASF59:
	.ascii	"FOCFwConfig_reg_t\000"
.LASF18:
	.ascii	"OFFSET_TAB_CCMRx\000"
.LASF76:
	.ascii	"/home/joel/share/EVSPIN32G4_Shinano\000"
.LASF29:
	.ascii	"MotorNumber\000"
.LASF22:
	.ascii	"SHIFT_TAB_OISx\000"
.LASF51:
	.ascii	"primarySensor\000"
.LASF20:
	.ascii	"SHIFT_TAB_ICxx\000"
.LASF71:
	.ascii	"M1_ApplicationConfig_reg\000"
.LASF14:
	.ascii	"uint8_t\000"
.LASF73:
	.ascii	"M1_FOCConfig_reg\000"
.LASF75:
	.ascii	"Src/mc_configuration_registers.c\000"
.LASF38:
	.ascii	"rsSkinFactor\000"
.LASF69:
	.ascii	"double\000"
.LASF64:
	.ascii	"FOCConfig_reg\000"
.LASF39:
	.ascii	"maxCurrent\000"
.LASF28:
	.ascii	"SDKVersion\000"
.LASF23:
	.ascii	"USART_PRESCALER_TAB\000"
.LASF24:
	.ascii	"CHANNEL_OFFSET_TAB\000"
	.ident	"GCC: (GNU Arm Embedded Toolchain 10-2020-q4-major) 10.2.1 20201103 (release)"
