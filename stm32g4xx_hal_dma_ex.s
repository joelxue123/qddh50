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
	.file	"stm32g4xx_hal_dma_ex.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.HAL_DMAEx_ConfigMuxSync,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_DMAEx_ConfigMuxSync
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_DMAEx_ConfigMuxSync, %function
HAL_DMAEx_ConfigMuxSync:
.LVL0:
.LFB132:
	.file 1 "Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_dma_ex.c"
	.loc 1 96 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 98 3 view .LVU1
	.loc 1 100 3 view .LVU2
	.loc 1 102 3 view .LVU3
	.loc 1 103 3 view .LVU4
	.loc 1 104 3 view .LVU5
	.loc 1 105 3 view .LVU6
	.loc 1 108 3 view .LVU7
	.loc 1 108 11 is_stmt 0 view .LVU8
	ldrb	r2, [r0, #37]	@ zero_extendqisi2
	.loc 1 108 6 view .LVU9
	cmp	r2, #1
	bne	.L3
	.loc 1 111 5 view .LVU10
	ldrb	r2, [r0, #36]	@ zero_extendqisi2
	cmp	r2, #1
	mov	r3, r0
	.loc 1 111 5 is_stmt 1 view .LVU11
	.loc 1 111 5 view .LVU12
	beq	.L4
	.loc 1 111 5 discriminator 2 view .LVU13
	.loc 1 111 5 discriminator 2 view .LVU14
	.loc 1 114 5 discriminator 2 view .LVU15
	.loc 1 96 1 is_stmt 0 discriminator 2 view .LVU16
	push	{r4, r5}
.LCFI0:
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 5, -4
	.loc 1 114 5 discriminator 2 view .LVU17
	ldr	r2, [r1, #4]
	ldr	r5, [r1]
	ldr	r0, [r1, #12]
.LVL1:
	.loc 1 114 5 discriminator 2 view .LVU18
	ldr	r4, [r3, #72]
	orr	r2, r2, r5, lsl #24
	subs	r0, r0, #1
	orr	r2, r2, r0, lsl #19
	ldrb	r0, [r1, #8]	@ zero_extendqisi2
	ldrb	r1, [r1, #9]	@ zero_extendqisi2
.LVL2:
	.loc 1 114 5 discriminator 2 view .LVU19
	orr	r2, r2, r0, lsl #16
	orr	r2, r2, r1, lsl #9
	ldr	r1, [r4]
	uxtb	r1, r1
	.loc 1 121 5 discriminator 2 view .LVU20
	mov	ip, #0
	.loc 1 114 5 discriminator 2 view .LVU21
	orrs	r2, r2, r1
	str	r2, [r4]
	.loc 1 121 5 is_stmt 1 discriminator 2 view .LVU22
	.loc 1 121 5 discriminator 2 view .LVU23
	strb	ip, [r3, #36]
	.loc 1 121 5 discriminator 2 view .LVU24
	.loc 1 123 5 discriminator 2 view .LVU25
	.loc 1 123 12 is_stmt 0 discriminator 2 view .LVU26
	mov	r0, ip
	.loc 1 130 1 discriminator 2 view .LVU27
	pop	{r4, r5}
.LCFI1:
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	bx	lr
.LVL3:
.L3:
	.loc 1 128 12 view .LVU28
	movs	r0, #1
.LVL4:
	.loc 1 128 12 view .LVU29
	bx	lr
.LVL5:
.L4:
	.loc 1 111 5 view .LVU30
	movs	r0, #2
.LVL6:
	.loc 1 130 1 view .LVU31
	bx	lr
	.cfi_endproc
.LFE132:
	.size	HAL_DMAEx_ConfigMuxSync, .-HAL_DMAEx_ConfigMuxSync
	.section	.text.HAL_DMAEx_ConfigMuxRequestGenerator,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_DMAEx_ConfigMuxRequestGenerator
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_DMAEx_ConfigMuxRequestGenerator, %function
HAL_DMAEx_ConfigMuxRequestGenerator:
.LVL7:
.LFB133:
	.loc 1 143 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 145 3 view .LVU33
	.loc 1 147 3 view .LVU34
	.loc 1 149 3 view .LVU35
	.loc 1 150 3 view .LVU36
	.loc 1 155 3 view .LVU37
	.loc 1 155 12 is_stmt 0 view .LVU38
	ldrb	r3, [r0, #37]	@ zero_extendqisi2
	.loc 1 155 6 view .LVU39
	cmp	r3, #1
	bne	.L13
	.loc 1 143 1 discriminator 1 view .LVU40
	push	{r4}
.LCFI2:
	.cfi_def_cfa_offset 4
	.cfi_offset 4, -4
	.loc 1 155 52 discriminator 1 view .LVU41
	ldr	r4, [r0, #84]
	uxtb	r2, r3
	.loc 1 155 44 discriminator 1 view .LVU42
	cbz	r4, .L11
	.loc 1 158 5 is_stmt 1 view .LVU43
	.loc 1 158 5 view .LVU44
	ldrb	r3, [r0, #36]	@ zero_extendqisi2
	cmp	r3, #1
	beq	.L14
	.loc 1 158 5 discriminator 2 view .LVU45
	.loc 1 158 5 discriminator 2 view .LVU46
	.loc 1 161 5 discriminator 2 view .LVU47
	.loc 1 162 77 is_stmt 0 discriminator 2 view .LVU48
	ldr	r3, [r1, #8]
	.loc 1 161 59 discriminator 2 view .LVU49
	ldr	r2, [r1]
	.loc 1 162 77 discriminator 2 view .LVU50
	add	ip, r3, #-1
.LVL8:
.LBB6:
.LBI6:
	.file 2 "Drivers/CMSIS/Include/cmsis_gcc.h"
	.loc 2 1048 31 is_stmt 1 discriminator 2 view .LVU51
.LBB7:
	.loc 2 1050 3 discriminator 2 view .LVU52
	.loc 2 1055 4 discriminator 2 view .LVU53
	mov	r3, #16252928
	.syntax unified
@ 1055 "Drivers/CMSIS/Include/cmsis_gcc.h" 1
	rbit r3, r3
@ 0 "" 2
.LVL9:
	.loc 2 1068 3 discriminator 2 view .LVU54
	.loc 2 1068 3 is_stmt 0 discriminator 2 view .LVU55
	.thumb
	.syntax unified
.LBE7:
.LBE6:
.LBB8:
.LBI8:
	.loc 2 1078 30 is_stmt 1 discriminator 2 view .LVU56
.LBB9:
	.loc 2 1089 3 discriminator 2 view .LVU57
	.loc 2 1089 6 is_stmt 0 discriminator 2 view .LVU58
	cbz	r3, .L12
	.loc 2 1093 3 is_stmt 1 view .LVU59
	.loc 2 1093 10 is_stmt 0 view .LVU60
	clz	r3, r3
.LVL10:
	.loc 2 1093 10 view .LVU61
.LBE9:
.LBE8:
	.loc 1 162 83 view .LVU62
	lsl	ip, ip, r3
.L12:
	.loc 1 162 131 view .LVU63
	ldr	r3, [r1, #4]
	orrs	r3, r3, r2
	.loc 1 165 5 view .LVU64
	movs	r1, #0
.LVL11:
	.loc 1 162 131 view .LVU65
	orr	r3, r3, ip
	.loc 1 161 34 view .LVU66
	str	r3, [r4]
	.loc 1 165 5 is_stmt 1 view .LVU67
	.loc 1 165 5 view .LVU68
	.loc 1 167 12 is_stmt 0 view .LVU69
	mov	r2, r1
	.loc 1 165 5 view .LVU70
	strb	r1, [r0, #36]
	.loc 1 165 5 is_stmt 1 view .LVU71
	.loc 1 167 5 view .LVU72
.L11:
	.loc 1 173 1 is_stmt 0 view .LVU73
	mov	r0, r2
.LVL12:
	.loc 1 173 1 view .LVU74
	ldr	r4, [sp], #4
.LCFI3:
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	bx	lr
.LVL13:
.L13:
	.loc 1 171 12 view .LVU75
	movs	r2, #1
	.loc 1 173 1 view .LVU76
	mov	r0, r2
.LVL14:
	.loc 1 173 1 view .LVU77
	bx	lr
.LVL15:
.L14:
.LCFI4:
	.cfi_def_cfa_offset 4
	.cfi_offset 4, -4
	.loc 1 158 5 view .LVU78
	movs	r2, #2
	b	.L11
	.cfi_endproc
.LFE133:
	.size	HAL_DMAEx_ConfigMuxRequestGenerator, .-HAL_DMAEx_ConfigMuxRequestGenerator
	.section	.text.HAL_DMAEx_EnableMuxRequestGenerator,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_DMAEx_EnableMuxRequestGenerator
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_DMAEx_EnableMuxRequestGenerator, %function
HAL_DMAEx_EnableMuxRequestGenerator:
.LVL16:
.LFB134:
	.loc 1 182 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 184 3 view .LVU80
	.loc 1 189 3 view .LVU81
	.loc 1 189 12 is_stmt 0 view .LVU82
	ldrb	r3, [r0, #37]	@ zero_extendqisi2
	.loc 1 189 6 view .LVU83
	cbz	r3, .L28
	.loc 1 189 52 discriminator 1 view .LVU84
	ldr	r3, [r0, #84]
	.loc 1 189 44 discriminator 1 view .LVU85
	cbz	r3, .L28
	.loc 1 193 5 is_stmt 1 view .LVU86
	.loc 1 193 34 is_stmt 0 view .LVU87
	ldr	r2, [r3]
	orr	r2, r2, #65536
	.loc 1 195 12 view .LVU88
	movs	r0, #0
.LVL17:
	.loc 1 193 34 view .LVU89
	str	r2, [r3]
	.loc 1 195 5 is_stmt 1 view .LVU90
	.loc 1 195 12 is_stmt 0 view .LVU91
	bx	lr
.LVL18:
.L28:
	.loc 1 199 12 view .LVU92
	movs	r0, #1
.LVL19:
	.loc 1 201 1 view .LVU93
	bx	lr
	.cfi_endproc
.LFE134:
	.size	HAL_DMAEx_EnableMuxRequestGenerator, .-HAL_DMAEx_EnableMuxRequestGenerator
	.section	.text.HAL_DMAEx_DisableMuxRequestGenerator,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_DMAEx_DisableMuxRequestGenerator
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_DMAEx_DisableMuxRequestGenerator, %function
HAL_DMAEx_DisableMuxRequestGenerator:
.LVL20:
.LFB135:
	.loc 1 210 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 212 3 view .LVU95
	.loc 1 217 3 view .LVU96
	.loc 1 217 12 is_stmt 0 view .LVU97
	ldrb	r3, [r0, #37]	@ zero_extendqisi2
	.loc 1 217 6 view .LVU98
	cbz	r3, .L32
	.loc 1 217 52 discriminator 1 view .LVU99
	ldr	r3, [r0, #84]
	.loc 1 217 44 discriminator 1 view .LVU100
	cbz	r3, .L32
	.loc 1 221 5 is_stmt 1 view .LVU101
	.loc 1 221 34 is_stmt 0 view .LVU102
	ldr	r2, [r3]
	bic	r2, r2, #65536
	.loc 1 223 12 view .LVU103
	movs	r0, #0
.LVL21:
	.loc 1 221 34 view .LVU104
	str	r2, [r3]
	.loc 1 223 5 is_stmt 1 view .LVU105
	.loc 1 223 12 is_stmt 0 view .LVU106
	bx	lr
.LVL22:
.L32:
	.loc 1 227 12 view .LVU107
	movs	r0, #1
.LVL23:
	.loc 1 229 1 view .LVU108
	bx	lr
	.cfi_endproc
.LFE135:
	.size	HAL_DMAEx_DisableMuxRequestGenerator, .-HAL_DMAEx_DisableMuxRequestGenerator
	.section	.text.HAL_DMAEx_MUX_IRQHandler,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_DMAEx_MUX_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_DMAEx_MUX_IRQHandler, %function
HAL_DMAEx_MUX_IRQHandler:
.LVL24:
.LFB136:
	.loc 1 238 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 240 3 view .LVU110
	.loc 1 240 45 is_stmt 0 view .LVU111
	ldrd	r3, r2, [r0, #76]
	.loc 1 240 33 view .LVU112
	ldr	r1, [r3]
	.loc 1 240 6 view .LVU113
	tst	r1, r2
	.loc 1 238 1 view .LVU114
	push	{r4, r5, r6, lr}
.LCFI5:
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 238 1 view .LVU115
	mov	r4, r0
	.loc 1 240 6 view .LVU116
	beq	.L35
	.loc 1 243 5 is_stmt 1 view .LVU117
	.loc 1 243 9 is_stmt 0 view .LVU118
	ldr	r5, [r0, #72]
	.loc 1 251 13 view .LVU119
	ldr	r6, [r0, #52]
	.loc 1 243 30 view .LVU120
	ldr	r1, [r5]
	bic	r1, r1, #256
	str	r1, [r5]
	.loc 1 246 5 is_stmt 1 view .LVU121
	.loc 1 246 36 is_stmt 0 view .LVU122
	str	r2, [r3, #4]
	.loc 1 249 5 is_stmt 1 view .LVU123
	.loc 1 249 21 is_stmt 0 view .LVU124
	ldr	r3, [r0, #60]
	orr	r3, r3, #512
	str	r3, [r0, #60]
	.loc 1 251 5 is_stmt 1 view .LVU125
	.loc 1 251 8 is_stmt 0 view .LVU126
	cbz	r6, .L35
	.loc 1 254 7 is_stmt 1 view .LVU127
	blx	r6
.LVL25:
.L35:
	.loc 1 258 3 view .LVU128
	.loc 1 258 11 is_stmt 0 view .LVU129
	ldr	r3, [r4, #84]
	.loc 1 258 6 view .LVU130
	cbz	r3, .L33
	.loc 1 261 5 is_stmt 1 view .LVU131
	.loc 1 261 51 is_stmt 0 view .LVU132
	ldrd	r2, r1, [r4, #88]
	.loc 1 261 38 view .LVU133
	ldr	r0, [r2]
	.loc 1 261 8 view .LVU134
	tst	r0, r1
	beq	.L33
	.loc 1 264 7 is_stmt 1 view .LVU135
	.loc 1 264 36 is_stmt 0 view .LVU136
	ldr	r0, [r3]
	bic	r0, r0, #256
	str	r0, [r3]
	.loc 1 267 7 is_stmt 1 view .LVU137
	.loc 1 267 43 is_stmt 0 view .LVU138
	str	r1, [r2, #4]
	.loc 1 270 7 is_stmt 1 view .LVU139
	.loc 1 270 23 is_stmt 0 view .LVU140
	ldr	r3, [r4, #60]
	.loc 1 272 15 view .LVU141
	ldr	r2, [r4, #52]
	.loc 1 270 23 view .LVU142
	orr	r3, r3, #1024
	str	r3, [r4, #60]
	.loc 1 272 7 is_stmt 1 view .LVU143
	.loc 1 272 10 is_stmt 0 view .LVU144
	cbz	r2, .L33
	.loc 1 275 9 is_stmt 1 view .LVU145
	mov	r0, r4
	.loc 1 279 1 is_stmt 0 view .LVU146
	pop	{r4, r5, r6, lr}
.LCFI6:
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL26:
	.loc 1 275 9 view .LVU147
	bx	r2	@ indirect register sibling call
.LVL27:
.L33:
.LCFI7:
	.cfi_restore_state
	.loc 1 279 1 view .LVU148
	pop	{r4, r5, r6, pc}
	.loc 1 279 1 view .LVU149
	.cfi_endproc
.LFE136:
	.size	HAL_DMAEx_MUX_IRQHandler, .-HAL_DMAEx_MUX_IRQHandler
	.text
.Letext0:
	.file 3 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/machine/_default_types.h"
	.file 4 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/sys/_stdint.h"
	.file 5 "Drivers/CMSIS/Device/ST/STM32G4xx/Include/stm32g431xx.h"
	.file 6 "Drivers/CMSIS/Device/ST/STM32G4xx/Include/stm32g4xx.h"
	.file 7 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_hal_def.h"
	.file 8 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_hal_dma.h"
	.file 9 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_hal_dma_ex.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x744
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF88
	.byte	0xc
	.4byte	.LASF89
	.4byte	.LASF90
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
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x4
	.byte	0x30
	.byte	0x14
	.4byte	0x58
	.uleb128 0x5
	.4byte	0x93
	.uleb128 0x6
	.byte	0x10
	.byte	0x5
	.2byte	0x167
	.byte	0x9
	.4byte	0xef
	.uleb128 0x7
	.ascii	"CCR\000"
	.byte	0x5
	.2byte	0x169
	.byte	0x11
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.4byte	.LASF13
	.byte	0x5
	.2byte	0x16a
	.byte	0x11
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x5
	.2byte	0x16b
	.byte	0x11
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x5
	.2byte	0x16c
	.byte	0x11
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x5
	.2byte	0x16d
	.byte	0x3
	.4byte	0xa4
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.2byte	0x16f
	.byte	0x9
	.4byte	0x127
	.uleb128 0x7
	.ascii	"ISR\000"
	.byte	0x5
	.2byte	0x171
	.byte	0x11
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x5
	.2byte	0x172
	.byte	0x11
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x5
	.2byte	0x173
	.byte	0x3
	.4byte	0xfc
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.2byte	0x179
	.byte	0x9
	.4byte	0x14f
	.uleb128 0x7
	.ascii	"CCR\000"
	.byte	0x5
	.2byte	0x17b
	.byte	0x13
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x5
	.2byte	0x17c
	.byte	0x2
	.4byte	0x134
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.2byte	0x17e
	.byte	0x9
	.4byte	0x187
	.uleb128 0x7
	.ascii	"CSR\000"
	.byte	0x5
	.2byte	0x180
	.byte	0x13
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.ascii	"CFR\000"
	.byte	0x5
	.2byte	0x181
	.byte	0x13
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x5
	.2byte	0x182
	.byte	0x2
	.4byte	0x15c
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.2byte	0x184
	.byte	0x9
	.4byte	0x1af
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x5
	.2byte	0x186
	.byte	0x13
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x5
	.2byte	0x187
	.byte	0x2
	.4byte	0x194
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.2byte	0x189
	.byte	0x9
	.4byte	0x1e7
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x5
	.2byte	0x18b
	.byte	0x13
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x5
	.2byte	0x18c
	.byte	0x13
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x5
	.2byte	0x18d
	.byte	0x2
	.4byte	0x1bc
	.uleb128 0xa
	.byte	0x7
	.byte	0x1
	.4byte	0x3c
	.byte	0x6
	.byte	0x90
	.byte	0x1
	.4byte	0x20f
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x6
	.byte	0x93
	.byte	0x3
	.4byte	0x1f4
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF29
	.uleb128 0xa
	.byte	0x7
	.byte	0x1
	.4byte	0x3c
	.byte	0x7
	.byte	0x27
	.byte	0x1
	.4byte	0x249
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0x7
	.byte	0x2c
	.byte	0x3
	.4byte	0x222
	.uleb128 0xa
	.byte	0x7
	.byte	0x1
	.4byte	0x3c
	.byte	0x7
	.byte	0x32
	.byte	0x1
	.4byte	0x270
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0x7
	.byte	0x35
	.byte	0x3
	.4byte	0x255
	.uleb128 0xc
	.byte	0x20
	.byte	0x8
	.byte	0x2e
	.byte	0x9
	.4byte	0x2fe
	.uleb128 0xd
	.4byte	.LASF38
	.byte	0x8
	.byte	0x30
	.byte	0xc
	.4byte	0x93
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.4byte	.LASF39
	.byte	0x8
	.byte	0x33
	.byte	0xc
	.4byte	0x93
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.4byte	.LASF40
	.byte	0x8
	.byte	0x37
	.byte	0xc
	.4byte	0x93
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.4byte	.LASF41
	.byte	0x8
	.byte	0x3a
	.byte	0xc
	.4byte	0x93
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.4byte	.LASF42
	.byte	0x8
	.byte	0x3d
	.byte	0xc
	.4byte	0x93
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.4byte	.LASF43
	.byte	0x8
	.byte	0x40
	.byte	0xc
	.4byte	0x93
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.4byte	.LASF44
	.byte	0x8
	.byte	0x43
	.byte	0xc
	.4byte	0x93
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.4byte	.LASF45
	.byte	0x8
	.byte	0x48
	.byte	0xc
	.4byte	0x93
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0
	.uleb128 0x3
	.4byte	.LASF46
	.byte	0x8
	.byte	0x4a
	.byte	0x3
	.4byte	0x27c
	.uleb128 0xa
	.byte	0x7
	.byte	0x1
	.4byte	0x3c
	.byte	0x8
	.byte	0x50
	.byte	0x1
	.4byte	0x331
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF51
	.byte	0x8
	.byte	0x55
	.byte	0x3
	.4byte	0x30a
	.uleb128 0x5
	.4byte	0x331
	.uleb128 0xe
	.4byte	.LASF91
	.byte	0x60
	.byte	0x8
	.byte	0x71
	.byte	0x10
	.4byte	0x45e
	.uleb128 0xd
	.4byte	.LASF52
	.byte	0x8
	.byte	0x73
	.byte	0x1b
	.4byte	0x45e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.4byte	.LASF53
	.byte	0x8
	.byte	0x75
	.byte	0x19
	.4byte	0x2fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.4byte	.LASF54
	.byte	0x8
	.byte	0x77
	.byte	0x19
	.4byte	0x270
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.4byte	.LASF55
	.byte	0x8
	.byte	0x79
	.byte	0x1e
	.4byte	0x33d
	.byte	0x2
	.byte	0x23
	.uleb128 0x25
	.uleb128 0xd
	.4byte	.LASF56
	.byte	0x8
	.byte	0x7b
	.byte	0x1a
	.4byte	0x464
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.4byte	.LASF57
	.byte	0x8
	.byte	0x7d
	.byte	0xb
	.4byte	0x478
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.4byte	.LASF58
	.byte	0x8
	.byte	0x7f
	.byte	0xb
	.4byte	0x478
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.4byte	.LASF59
	.byte	0x8
	.byte	0x81
	.byte	0xb
	.4byte	0x478
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.4byte	.LASF60
	.byte	0x8
	.byte	0x83
	.byte	0xb
	.4byte	0x478
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.4byte	.LASF61
	.byte	0x8
	.byte	0x85
	.byte	0x1a
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.4byte	.LASF62
	.byte	0x8
	.byte	0x87
	.byte	0x1b
	.4byte	0x47e
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.4byte	.LASF63
	.byte	0x8
	.byte	0x89
	.byte	0x1a
	.4byte	0x93
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.4byte	.LASF64
	.byte	0x8
	.byte	0x8b
	.byte	0x25
	.4byte	0x484
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.4byte	.LASF65
	.byte	0x8
	.byte	0x8d
	.byte	0x25
	.4byte	0x48a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.4byte	.LASF66
	.byte	0x8
	.byte	0x8f
	.byte	0x24
	.4byte	0x93
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.4byte	.LASF67
	.byte	0x8
	.byte	0x91
	.byte	0x25
	.4byte	0x490
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.4byte	.LASF68
	.byte	0x8
	.byte	0x93
	.byte	0x25
	.4byte	0x496
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.4byte	.LASF69
	.byte	0x8
	.byte	0x95
	.byte	0x24
	.4byte	0x93
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xef
	.uleb128 0x10
	.byte	0x4
	.uleb128 0x11
	.byte	0x1
	.4byte	0x472
	.uleb128 0x12
	.4byte	0x472
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x342
	.uleb128 0xf
	.byte	0x4
	.4byte	0x466
	.uleb128 0xf
	.byte	0x4
	.4byte	0x127
	.uleb128 0xf
	.byte	0x4
	.4byte	0x14f
	.uleb128 0xf
	.byte	0x4
	.4byte	0x187
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1af
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1e7
	.uleb128 0x3
	.4byte	.LASF70
	.byte	0x8
	.byte	0x97
	.byte	0x3
	.4byte	0x342
	.uleb128 0xc
	.byte	0x10
	.byte	0x9
	.byte	0x33
	.byte	0x9
	.4byte	0x4fd
	.uleb128 0xd
	.4byte	.LASF71
	.byte	0x9
	.byte	0x35
	.byte	0xc
	.4byte	0x93
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.4byte	.LASF72
	.byte	0x9
	.byte	0x38
	.byte	0xc
	.4byte	0x93
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.4byte	.LASF73
	.byte	0x9
	.byte	0x3b
	.byte	0x13
	.4byte	0x20f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.4byte	.LASF74
	.byte	0x9
	.byte	0x3f
	.byte	0x13
	.4byte	0x20f
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xd
	.4byte	.LASF75
	.byte	0x9
	.byte	0x42
	.byte	0xc
	.4byte	0x93
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF76
	.byte	0x9
	.byte	0x46
	.byte	0x3
	.4byte	0x4a8
	.uleb128 0xc
	.byte	0xc
	.byte	0x9
	.byte	0x4c
	.byte	0x9
	.4byte	0x540
	.uleb128 0xd
	.4byte	.LASF77
	.byte	0x9
	.byte	0x4e
	.byte	0xc
	.4byte	0x93
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.4byte	.LASF78
	.byte	0x9
	.byte	0x51
	.byte	0xc
	.4byte	0x93
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.4byte	.LASF75
	.byte	0x9
	.byte	0x54
	.byte	0xc
	.4byte	0x93
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF79
	.byte	0x9
	.byte	0x57
	.byte	0x3
	.4byte	0x509
	.uleb128 0xf
	.byte	0x4
	.4byte	0x49c
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF92
	.byte	0x1
	.byte	0xed
	.byte	0x6
	.byte	0x1
	.4byte	.LFB136
	.4byte	.LFE136
	.4byte	.LLST11
	.byte	0x1
	.4byte	0x5a3
	.uleb128 0x14
	.4byte	.LASF80
	.byte	0x1
	.byte	0xed
	.byte	0x32
	.4byte	0x54c
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x15
	.4byte	.LVL25
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.4byte	0x594
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.4byte	.LVL27
	.byte	0x1
	.uleb128 0x16
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF81
	.byte	0x1
	.byte	0xd1
	.byte	0x13
	.byte	0x1
	.4byte	0x249
	.4byte	.LFB135
	.4byte	.LFE135
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x5d6
	.uleb128 0x14
	.4byte	.LASF80
	.byte	0x1
	.byte	0xd1
	.byte	0x4b
	.4byte	0x54c
	.4byte	.LLST10
	.4byte	.LVUS10
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF82
	.byte	0x1
	.byte	0xb5
	.byte	0x13
	.byte	0x1
	.4byte	0x249
	.4byte	.LFB134
	.4byte	.LFE134
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x609
	.uleb128 0x14
	.4byte	.LASF80
	.byte	0x1
	.byte	0xb5
	.byte	0x4a
	.4byte	0x54c
	.4byte	.LLST9
	.4byte	.LVUS9
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF83
	.byte	0x1
	.byte	0x8d
	.byte	0x13
	.byte	0x1
	.4byte	0x249
	.4byte	.LFB133
	.4byte	.LFE133
	.4byte	.LLST3
	.byte	0x1
	.4byte	0x6a8
	.uleb128 0x14
	.4byte	.LASF80
	.byte	0x1
	.byte	0x8d
	.byte	0x4a
	.4byte	0x54c
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x14
	.4byte	.LASF84
	.byte	0x1
	.byte	0x8e
	.byte	0x61
	.4byte	0x6a8
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x1a
	.4byte	0x71d
	.4byte	.LBI6
	.byte	.LVU51
	.4byte	.LBB6
	.4byte	.LBE6
	.byte	0x1
	.byte	0xa2
	.byte	0x57
	.4byte	0x684
	.uleb128 0x1b
	.4byte	0x72c
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x1c
	.4byte	0x739
	.4byte	.LLST7
	.4byte	.LVUS7
	.byte	0
	.uleb128 0x1d
	.4byte	0x6fc
	.4byte	.LBI8
	.byte	.LVU56
	.4byte	.LBB8
	.4byte	.LBE8
	.byte	0x1
	.byte	0xa2
	.byte	0x57
	.uleb128 0x1b
	.4byte	0x70f
	.4byte	.LLST8
	.4byte	.LVUS8
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x540
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF85
	.byte	0x1
	.byte	0x5f
	.byte	0x13
	.byte	0x1
	.4byte	0x249
	.4byte	.LFB132
	.4byte	.LFE132
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x6f6
	.uleb128 0x14
	.4byte	.LASF80
	.byte	0x1
	.byte	0x5f
	.byte	0x3e
	.4byte	0x54c
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x14
	.4byte	.LASF86
	.byte	0x1
	.byte	0x5f
	.byte	0x62
	.4byte	0x6f6
	.4byte	.LLST2
	.4byte	.LVUS2
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x4fd
	.uleb128 0x1e
	.4byte	.LASF93
	.byte	0x2
	.2byte	0x436
	.byte	0x1e
	.byte	0x1
	.4byte	0x87
	.byte	0x3
	.4byte	0x71d
	.uleb128 0x1f
	.4byte	.LASF87
	.byte	0x2
	.2byte	0x436
	.byte	0x2d
	.4byte	0x93
	.byte	0
	.uleb128 0x20
	.4byte	.LASF94
	.byte	0x2
	.2byte	0x418
	.byte	0x1f
	.byte	0x1
	.4byte	0x93
	.byte	0x3
	.uleb128 0x1f
	.4byte	.LASF87
	.byte	0x2
	.2byte	0x418
	.byte	0x2f
	.4byte	0x93
	.uleb128 0x21
	.4byte	.LASF95
	.byte	0x2
	.2byte	0x41a
	.byte	0xc
	.4byte	0x93
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x15
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.uleb128 0x2137
	.uleb128 0x6
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x21
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST11:
	.4byte	.LFB136
	.4byte	.LCFI5
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI5
	.4byte	.LCFI6
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI6
	.4byte	.LCFI7
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI7
	.4byte	.LFE136
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0
	.4byte	0
.LVUS12:
	.uleb128 0
	.uleb128 .LVU128
	.uleb128 .LVU128
	.uleb128 .LVU147
	.uleb128 .LVU147
	.uleb128 .LVU148
	.uleb128 .LVU148
	.uleb128 .LVU148
	.uleb128 .LVU148
	.uleb128 0
.LLST12:
	.4byte	.LVL24
	.4byte	.LVL25-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL25-1
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL26
	.4byte	.LVL27-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL27-1
	.4byte	.LVL27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LFE136
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 0
	.uleb128 .LVU104
	.uleb128 .LVU104
	.uleb128 .LVU107
	.uleb128 .LVU107
	.uleb128 .LVU108
	.uleb128 .LVU108
	.uleb128 0
.LLST10:
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL23
	.4byte	.LFE135
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 0
	.uleb128 .LVU89
	.uleb128 .LVU89
	.uleb128 .LVU92
	.uleb128 .LVU92
	.uleb128 .LVU93
	.uleb128 .LVU93
	.uleb128 0
.LLST9:
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL19
	.4byte	.LFE134
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LFB133
	.4byte	.LCFI2
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI2
	.4byte	.LCFI3
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI3
	.4byte	.LCFI4
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI4
	.4byte	.LFE133
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 0
	.uleb128 .LVU74
	.uleb128 .LVU74
	.uleb128 .LVU75
	.uleb128 .LVU75
	.uleb128 .LVU77
	.uleb128 .LVU77
	.uleb128 .LVU78
	.uleb128 .LVU78
	.uleb128 0
.LLST4:
	.4byte	.LVL7
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LFE133
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 0
	.uleb128 .LVU65
	.uleb128 .LVU65
	.uleb128 .LVU75
	.uleb128 .LVU75
	.uleb128 0
.LLST5:
	.4byte	.LVL7
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LFE133
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 .LVU51
	.uleb128 .LVU55
.LLST6:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x4
	.byte	0x4f
	.byte	0x43
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 .LVU54
	.uleb128 .LVU55
.LLST7:
	.4byte	.LVL9
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 .LVU55
	.uleb128 .LVU61
.LLST8:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LFB132
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
	.4byte	.LFE132
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU18
	.uleb128 .LVU18
	.uleb128 .LVU28
	.uleb128 .LVU28
	.uleb128 .LVU29
	.uleb128 .LVU29
	.uleb128 .LVU30
	.uleb128 .LVU30
	.uleb128 .LVU31
	.uleb128 .LVU31
	.uleb128 0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL6
	.4byte	.LFE132
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU19
	.uleb128 .LVU19
	.uleb128 .LVU28
	.uleb128 .LVU28
	.uleb128 0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LFE132
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x3c
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
	.4byte	.LFB134
	.4byte	.LFE134-.LFB134
	.4byte	.LFB135
	.4byte	.LFE135-.LFB135
	.4byte	.LFB136
	.4byte	.LFE136-.LFB136
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB132
	.4byte	.LFE132
	.4byte	.LFB133
	.4byte	.LFE133
	.4byte	.LFB134
	.4byte	.LFE134
	.4byte	.LFB135
	.4byte	.LFE135
	.4byte	.LFB136
	.4byte	.LFE136
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF39:
	.ascii	"Direction\000"
.LASF35:
	.ascii	"HAL_UNLOCKED\000"
.LASF95:
	.ascii	"result\000"
.LASF33:
	.ascii	"HAL_TIMEOUT\000"
.LASF65:
	.ascii	"DMAmuxChannelStatus\000"
.LASF56:
	.ascii	"Parent\000"
.LASF45:
	.ascii	"Priority\000"
.LASF60:
	.ascii	"XferAbortCallback\000"
.LASF16:
	.ascii	"DMA_Channel_TypeDef\000"
.LASF2:
	.ascii	"short int\000"
.LASF89:
	.ascii	"Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_dma_"
	.ascii	"ex.c\000"
.LASF47:
	.ascii	"HAL_DMA_STATE_RESET\000"
.LASF70:
	.ascii	"DMA_HandleTypeDef\000"
.LASF6:
	.ascii	"__uint32_t\000"
.LASF62:
	.ascii	"DmaBaseAddress\000"
.LASF18:
	.ascii	"DMA_TypeDef\000"
.LASF23:
	.ascii	"RGSR\000"
.LASF64:
	.ascii	"DMAmuxChannel\000"
.LASF87:
	.ascii	"value\000"
.LASF30:
	.ascii	"HAL_OK\000"
.LASF49:
	.ascii	"HAL_DMA_STATE_BUSY\000"
.LASF91:
	.ascii	"__DMA_HandleTypeDef\000"
.LASF38:
	.ascii	"Request\000"
.LASF11:
	.ascii	"uint8_t\000"
.LASF81:
	.ascii	"HAL_DMAEx_DisableMuxRequestGenerator\000"
.LASF88:
	.ascii	"GNU C17 10.2.1 20201103 (release) -mcpu=cortex-m4 -"
	.ascii	"mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=hard -march=ar"
	.ascii	"mv7e-m+fp -g -gdwarf-2 -O3 -fdata-sections -ffuncti"
	.ascii	"on-sections\000"
.LASF32:
	.ascii	"HAL_BUSY\000"
.LASF26:
	.ascii	"DISABLE\000"
.LASF20:
	.ascii	"DMAMUX_ChannelStatus_TypeDef\000"
.LASF29:
	.ascii	"long double\000"
.LASF8:
	.ascii	"long long int\000"
.LASF9:
	.ascii	"long long unsigned int\000"
.LASF55:
	.ascii	"State\000"
.LASF53:
	.ascii	"Init\000"
.LASF4:
	.ascii	"long int\000"
.LASF40:
	.ascii	"PeriphInc\000"
.LASF54:
	.ascii	"Lock\000"
.LASF5:
	.ascii	"__uint8_t\000"
.LASF94:
	.ascii	"__RBIT\000"
.LASF34:
	.ascii	"HAL_StatusTypeDef\000"
.LASF50:
	.ascii	"HAL_DMA_STATE_TIMEOUT\000"
.LASF68:
	.ascii	"DMAmuxRequestGenStatus\000"
.LASF14:
	.ascii	"CPAR\000"
.LASF24:
	.ascii	"RGCFR\000"
.LASF46:
	.ascii	"DMA_InitTypeDef\000"
.LASF69:
	.ascii	"DMAmuxRequestGenStatusMask\000"
.LASF31:
	.ascii	"HAL_ERROR\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF66:
	.ascii	"DMAmuxChannelStatusMask\000"
.LASF78:
	.ascii	"Polarity\000"
.LASF22:
	.ascii	"DMAMUX_RequestGen_TypeDef\000"
.LASF72:
	.ascii	"SyncPolarity\000"
.LASF0:
	.ascii	"signed char\000"
.LASF80:
	.ascii	"hdma\000"
.LASF12:
	.ascii	"uint32_t\000"
.LASF10:
	.ascii	"unsigned int\000"
.LASF90:
	.ascii	"/home/joel/share/EVSPIN32G4_Shinano\000"
.LASF76:
	.ascii	"HAL_DMA_MuxSyncConfigTypeDef\000"
.LASF52:
	.ascii	"Instance\000"
.LASF57:
	.ascii	"XferCpltCallback\000"
.LASF36:
	.ascii	"HAL_LOCKED\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF19:
	.ascii	"DMAMUX_Channel_TypeDef\000"
.LASF67:
	.ascii	"DMAmuxRequestGen\000"
.LASF59:
	.ascii	"XferErrorCallback\000"
.LASF13:
	.ascii	"CNDTR\000"
.LASF86:
	.ascii	"pSyncConfig\000"
.LASF73:
	.ascii	"SyncEnable\000"
.LASF82:
	.ascii	"HAL_DMAEx_EnableMuxRequestGenerator\000"
.LASF17:
	.ascii	"IFCR\000"
.LASF92:
	.ascii	"HAL_DMAEx_MUX_IRQHandler\000"
.LASF79:
	.ascii	"HAL_DMA_MuxRequestGeneratorConfigTypeDef\000"
.LASF84:
	.ascii	"pRequestGeneratorConfig\000"
.LASF25:
	.ascii	"DMAMUX_RequestGenStatus_TypeDef\000"
.LASF7:
	.ascii	"long unsigned int\000"
.LASF41:
	.ascii	"MemInc\000"
.LASF28:
	.ascii	"FunctionalState\000"
.LASF85:
	.ascii	"HAL_DMAEx_ConfigMuxSync\000"
.LASF63:
	.ascii	"ChannelIndex\000"
.LASF15:
	.ascii	"CMAR\000"
.LASF43:
	.ascii	"MemDataAlignment\000"
.LASF93:
	.ascii	"__CLZ\000"
.LASF42:
	.ascii	"PeriphDataAlignment\000"
.LASF83:
	.ascii	"HAL_DMAEx_ConfigMuxRequestGenerator\000"
.LASF44:
	.ascii	"Mode\000"
.LASF75:
	.ascii	"RequestNumber\000"
.LASF21:
	.ascii	"RGCR\000"
.LASF77:
	.ascii	"SignalID\000"
.LASF71:
	.ascii	"SyncSignalID\000"
.LASF58:
	.ascii	"XferHalfCpltCallback\000"
.LASF37:
	.ascii	"HAL_LockTypeDef\000"
.LASF61:
	.ascii	"ErrorCode\000"
.LASF48:
	.ascii	"HAL_DMA_STATE_READY\000"
.LASF27:
	.ascii	"ENABLE\000"
.LASF51:
	.ascii	"HAL_DMA_StateTypeDef\000"
.LASF74:
	.ascii	"EventEnable\000"
	.ident	"GCC: (GNU Arm Embedded Toolchain 10-2020-q4-major) 10.2.1 20201103 (release)"
