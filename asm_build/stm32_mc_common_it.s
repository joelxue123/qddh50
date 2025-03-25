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
	.file	"stm32_mc_common_it.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.HardFault_Handler,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HardFault_Handler
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HardFault_Handler, %function
HardFault_Handler:
.LFB1745:
	.file 1 "Src/stm32_mc_common_it.c"
	.loc 1 150 1 view -0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 155 3 view .LVU1
	.loc 1 150 1 is_stmt 0 view .LVU2
	push	{r3, lr}
.LCFI0:
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 1 155 3 view .LVU3
	bl	TSK_HardwareFaultTask
.LVL0:
.L2:
	.loc 1 158 3 is_stmt 1 discriminator 1 view .LVU4
	.loc 1 161 3 discriminator 1 view .LVU5
	.loc 1 158 9 discriminator 1 view .LVU6
	.loc 1 158 3 discriminator 1 view .LVU7
	.loc 1 161 3 discriminator 1 view .LVU8
	.loc 1 158 9 discriminator 1 view .LVU9
	b	.L2
	.cfi_endproc
.LFE1745:
	.size	HardFault_Handler, .-HardFault_Handler
	.section	.text.EXTI15_10_IRQHandler,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	EXTI15_10_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	EXTI15_10_IRQHandler, %function
EXTI15_10_IRQHandler:
.LFB1746:
	.loc 1 173 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 175 3 view .LVU11
.LVL1:
.LBB6:
.LBI6:
	.file 2 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_ll_exti.h"
	.loc 2 1299 26 view .LVU12
.LBB7:
	.loc 2 1301 3 view .LVU13
	.loc 2 1301 21 is_stmt 0 view .LVU14
	ldr	r3, .L8
	ldr	r2, [r3, #20]
.LVL2:
	.loc 2 1301 21 view .LVU15
.LBE7:
.LBE6:
	.loc 1 175 6 view .LVU16
	lsls	r2, r2, #18
	bmi	.L7
	.loc 1 185 1 view .LVU17
	bx	lr
.L7:
	.loc 1 177 5 is_stmt 1 view .LVU18
.LVL3:
.LBB8:
.LBI8:
	.loc 2 1359 22 view .LVU19
.LBB9:
	.loc 2 1361 3 view .LVU20
	mov	r2, #8192
	str	r2, [r3, #20]
.LVL4:
	.loc 2 1361 3 is_stmt 0 view .LVU21
.LBE9:
.LBE8:
	.loc 1 178 5 is_stmt 1 view .LVU22
	b	UI_HandleStartStopButton_cb
.LVL5:
.L9:
	.align	2
.L8:
	.word	1073808384
	.cfi_endproc
.LFE1746:
	.size	EXTI15_10_IRQHandler, .-EXTI15_10_IRQHandler
	.global	bdmaActivTc
	.section	.bss.bdmaActivTc,"aw",%nobits
	.type	bdmaActivTc, %object
	.size	bdmaActivTc, 1
bdmaActivTc:
	.space	1
	.text
.Letext0:
	.file 3 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/machine/_default_types.h"
	.file 4 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/sys/_stdint.h"
	.file 5 "Drivers/CMSIS/Device/ST/STM32G4xx/Include/stm32g431xx.h"
	.file 6 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_ll_tim.h"
	.file 7 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_ll_usart.h"
	.file 8 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_ll_dma.h"
	.file 9 "Inc/mc_tasks.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x3cd
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
	.4byte	.LASF5
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x4
	.byte	0x18
	.byte	0x13
	.4byte	0x30
	.uleb128 0x5
	.4byte	0x87
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x4
	.byte	0x30
	.byte	0x14
	.4byte	0x58
	.uleb128 0x6
	.4byte	0x98
	.uleb128 0x5
	.4byte	0x98
	.uleb128 0x7
	.byte	0x38
	.byte	0x5
	.2byte	0x193
	.byte	0x9
	.4byte	0x199
	.uleb128 0x8
	.4byte	.LASF13
	.byte	0x5
	.2byte	0x195
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x5
	.2byte	0x196
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x5
	.2byte	0x197
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x5
	.2byte	0x198
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x5
	.2byte	0x199
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.ascii	"PR1\000"
	.byte	0x5
	.2byte	0x19a
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x5
	.2byte	0x19b
	.byte	0x11
	.4byte	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x5
	.2byte	0x19c
	.byte	0x11
	.4byte	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x5
	.2byte	0x19d
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x5
	.2byte	0x19e
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x5
	.2byte	0x19f
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x5
	.2byte	0x1a0
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x5
	.2byte	0x1a1
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.ascii	"PR2\000"
	.byte	0x5
	.2byte	0x1a2
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x5
	.2byte	0x1a3
	.byte	0x3
	.4byte	0xae
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF26
	.uleb128 0xb
	.4byte	0x93
	.4byte	0x1bd
	.uleb128 0xc
	.4byte	0x80
	.byte	0x9
	.byte	0
	.uleb128 0x5
	.4byte	0x1ad
	.uleb128 0xd
	.4byte	.LASF27
	.byte	0x6
	.byte	0x2d
	.byte	0x16
	.4byte	0x1bd
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
	.uleb128 0xd
	.4byte	.LASF28
	.byte	0x6
	.byte	0x3c
	.byte	0x16
	.4byte	0x1bd
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
	.uleb128 0xd
	.4byte	.LASF29
	.byte	0x6
	.byte	0x4a
	.byte	0x16
	.4byte	0x1bd
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
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x6
	.byte	0x58
	.byte	0x16
	.4byte	0x1bd
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
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0x6
	.byte	0x66
	.byte	0x16
	.4byte	0x1bd
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
	.uleb128 0xb
	.4byte	0xa9
	.4byte	0x245
	.uleb128 0xc
	.4byte	0x80
	.byte	0xb
	.byte	0
	.uleb128 0x5
	.4byte	0x235
	.uleb128 0xd
	.4byte	.LASF32
	.byte	0x7
	.byte	0x2e
	.byte	0x17
	.4byte	0x245
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
	.uleb128 0xb
	.4byte	0x93
	.4byte	0x297
	.uleb128 0xc
	.4byte	0x80
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.4byte	0x287
	.uleb128 0xd
	.4byte	.LASF33
	.byte	0x8
	.byte	0x2f
	.byte	0x16
	.4byte	0x297
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
	.4byte	.LASF34
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF35
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF36
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF37
	.uleb128 0xe
	.4byte	.LASF46
	.byte	0x1
	.byte	0x37
	.byte	0x6
	.4byte	0x2b6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	bdmaActivTc
	.uleb128 0xf
	.byte	0x1
	.4byte	.LASF38
	.byte	0x1
	.byte	0xac
	.byte	0x6
	.byte	0x1
	.4byte	.LFB1746
	.4byte	.LFE1746
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x351
	.uleb128 0x10
	.4byte	0x393
	.4byte	.LBI6
	.byte	.LVU12
	.4byte	.LBB6
	.4byte	.LBE6
	.byte	0x1
	.byte	0xaf
	.byte	0x7
	.4byte	0x31f
	.uleb128 0x11
	.4byte	0x3a6
	.4byte	.LLST1
	.4byte	.LVUS1
	.byte	0
	.uleb128 0x10
	.4byte	0x376
	.4byte	.LBI8
	.byte	.LVU19
	.4byte	.LBB8
	.4byte	.LBE8
	.byte	0x1
	.byte	0xb1
	.byte	0x5
	.4byte	0x346
	.uleb128 0x11
	.4byte	0x385
	.4byte	.LLST2
	.4byte	.LVUS2
	.byte	0
	.uleb128 0x12
	.4byte	.LVL5
	.byte	0x1
	.4byte	0x3b4
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF39
	.byte	0x1
	.byte	0x95
	.byte	0x6
	.byte	0x1
	.4byte	.LFB1745
	.4byte	.LFE1745
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x376
	.uleb128 0x14
	.4byte	.LVL0
	.4byte	0x3c2
	.byte	0
	.uleb128 0x15
	.4byte	.LASF47
	.byte	0x2
	.2byte	0x54f
	.byte	0x16
	.byte	0x1
	.byte	0x3
	.4byte	0x393
	.uleb128 0x16
	.4byte	.LASF40
	.byte	0x2
	.2byte	0x54f
	.byte	0x36
	.4byte	0x98
	.byte	0
	.uleb128 0x17
	.4byte	.LASF48
	.byte	0x2
	.2byte	0x513
	.byte	0x1a
	.byte	0x1
	.4byte	0x98
	.byte	0x3
	.4byte	0x3b4
	.uleb128 0x16
	.4byte	.LASF40
	.byte	0x2
	.2byte	0x513
	.byte	0x39
	.4byte	0x98
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.byte	0x1
	.4byte	.LASF41
	.4byte	.LASF41
	.byte	0x9
	.byte	0x64
	.byte	0x6
	.uleb128 0x18
	.byte	0x1
	.byte	0x1
	.4byte	.LASF42
	.4byte	.LASF42
	.byte	0x9
	.byte	0x6a
	.byte	0x6
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
	.uleb128 0x35
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
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
.LVUS1:
	.uleb128 .LVU12
	.uleb128 .LVU15
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x4
	.byte	0xa
	.2byte	0x2000
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 .LVU19
	.uleb128 .LVU21
.LLST2:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x4
	.byte	0xa
	.2byte	0x2000
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LFB1745
	.4byte	.LCFI0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI0
	.4byte	.LFE1745
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
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
	.4byte	.LFB1745
	.4byte	.LFE1745-.LFB1745
	.4byte	.LFB1746
	.4byte	.LFE1746-.LFB1746
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB1745
	.4byte	.LFE1745
	.4byte	.LFB1746
	.4byte	.LFE1746
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF5:
	.ascii	"__uint8_t\000"
.LASF42:
	.ascii	"TSK_HardwareFaultTask\000"
.LASF29:
	.ascii	"SHIFT_TAB_ICxx\000"
.LASF24:
	.ascii	"SWIER2\000"
.LASF32:
	.ascii	"USART_PRESCALER_TAB\000"
.LASF22:
	.ascii	"RTSR2\000"
.LASF16:
	.ascii	"FTSR1\000"
.LASF23:
	.ascii	"FTSR2\000"
.LASF48:
	.ascii	"LL_EXTI_ReadFlag_0_31\000"
.LASF38:
	.ascii	"EXTI15_10_IRQHandler\000"
.LASF34:
	.ascii	"float\000"
.LASF9:
	.ascii	"long long unsigned int\000"
.LASF13:
	.ascii	"IMR1\000"
.LASF20:
	.ascii	"IMR2\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF28:
	.ascii	"SHIFT_TAB_OCxx\000"
.LASF7:
	.ascii	"long unsigned int\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF25:
	.ascii	"EXTI_TypeDef\000"
.LASF41:
	.ascii	"UI_HandleStartStopButton_cb\000"
.LASF18:
	.ascii	"RESERVED1\000"
.LASF14:
	.ascii	"EMR1\000"
.LASF21:
	.ascii	"EMR2\000"
.LASF37:
	.ascii	"double\000"
.LASF26:
	.ascii	"long double\000"
.LASF6:
	.ascii	"__uint32_t\000"
.LASF30:
	.ascii	"SHIFT_TAB_CCxP\000"
.LASF10:
	.ascii	"unsigned int\000"
.LASF40:
	.ascii	"ExtiLine\000"
.LASF47:
	.ascii	"LL_EXTI_ClearFlag_0_31\000"
.LASF11:
	.ascii	"uint8_t\000"
.LASF33:
	.ascii	"CHANNEL_OFFSET_TAB\000"
.LASF43:
	.ascii	"GNU C17 10.2.1 20201103 (release) -mcpu=cortex-m4 -"
	.ascii	"mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=hard -march=ar"
	.ascii	"mv7e-m+fp -g -gdwarf-2 -O3 -fdata-sections -ffuncti"
	.ascii	"on-sections\000"
.LASF17:
	.ascii	"SWIER1\000"
.LASF46:
	.ascii	"bdmaActivTc\000"
.LASF44:
	.ascii	"Src/stm32_mc_common_it.c\000"
.LASF8:
	.ascii	"long long int\000"
.LASF39:
	.ascii	"HardFault_Handler\000"
.LASF36:
	.ascii	"char\000"
.LASF27:
	.ascii	"OFFSET_TAB_CCMRx\000"
.LASF2:
	.ascii	"short int\000"
.LASF12:
	.ascii	"uint32_t\000"
.LASF4:
	.ascii	"long int\000"
.LASF31:
	.ascii	"SHIFT_TAB_OISx\000"
.LASF0:
	.ascii	"signed char\000"
.LASF35:
	.ascii	"_Bool\000"
.LASF19:
	.ascii	"RESERVED2\000"
.LASF45:
	.ascii	"/home/joel/share/EVSPIN32G4_Shinano\000"
.LASF15:
	.ascii	"RTSR1\000"
	.ident	"GCC: (GNU Arm Embedded Toolchain 10-2020-q4-major) 10.2.1 20201103 (release)"
