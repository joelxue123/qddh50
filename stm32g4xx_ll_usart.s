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
	.file	"stm32g4xx_ll_usart.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.LL_USART_DeInit,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	LL_USART_DeInit
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	LL_USART_DeInit, %function
LL_USART_DeInit:
.LVL0:
.LFB563:
	.file 1 "Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_ll_usart.c"
	.loc 1 140 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 141 3 view .LVU1
	.loc 1 144 3 view .LVU2
	.loc 1 146 3 view .LVU3
	.loc 1 146 6 is_stmt 0 view .LVU4
	ldr	r3, .L12
	cmp	r0, r3
	beq	.L8
	.loc 1 154 8 is_stmt 1 view .LVU5
	.loc 1 154 11 is_stmt 0 view .LVU6
	ldr	r3, .L12+4
	cmp	r0, r3
	beq	.L9
	.loc 1 162 8 is_stmt 1 view .LVU7
	.loc 1 162 11 is_stmt 0 view .LVU8
	ldr	r3, .L12+8
	cmp	r0, r3
	beq	.L10
	.loc 1 171 8 is_stmt 1 view .LVU9
	.loc 1 171 11 is_stmt 0 view .LVU10
	ldr	r3, .L12+12
	cmp	r0, r3
	beq	.L11
	.loc 1 192 12 view .LVU11
	movs	r0, #1
.LVL1:
	.loc 1 195 3 is_stmt 1 view .LVU12
	.loc 1 196 1 is_stmt 0 view .LVU13
	bx	lr
.LVL2:
.L9:
	.loc 1 157 5 is_stmt 1 view .LVU14
.LBB28:
.LBI28:
	.file 2 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_ll_bus.h"
	.loc 2 1139 22 view .LVU15
.LBB29:
	.loc 2 1141 3 view .LVU16
	add	r3, r3, #117760
.LBE29:
.LBE28:
	.loc 1 141 15 is_stmt 0 view .LVU17
	movs	r0, #0
.LVL3:
.LBB31:
.LBB30:
	.loc 2 1141 3 view .LVU18
	ldr	r2, [r3, #56]
	orr	r2, r2, #131072
	str	r2, [r3, #56]
.LVL4:
	.loc 2 1141 3 view .LVU19
.LBE30:
.LBE31:
	.loc 1 160 5 is_stmt 1 view .LVU20
.LBB32:
.LBI32:
	.loc 2 1209 22 view .LVU21
.LBB33:
	.loc 2 1211 3 view .LVU22
	ldr	r2, [r3, #56]
	bic	r2, r2, #131072
	str	r2, [r3, #56]
	.loc 2 1212 1 is_stmt 0 view .LVU23
	bx	lr
.LVL5:
.L8:
	.loc 2 1212 1 view .LVU24
.LBE33:
.LBE32:
	.loc 1 149 5 is_stmt 1 view .LVU25
.LBB34:
.LBI34:
	.loc 2 1539 22 view .LVU26
.LBB35:
	.loc 2 1541 3 view .LVU27
	add	r3, r3, #55296
.LBE35:
.LBE34:
	.loc 1 141 15 is_stmt 0 view .LVU28
	movs	r0, #0
.LVL6:
.LBB37:
.LBB36:
	.loc 2 1541 3 view .LVU29
	ldr	r2, [r3, #64]
	orr	r2, r2, #16384
	str	r2, [r3, #64]
.LVL7:
	.loc 2 1541 3 view .LVU30
.LBE36:
.LBE37:
	.loc 1 152 5 is_stmt 1 view .LVU31
.LBB38:
.LBI38:
	.loc 2 1575 22 view .LVU32
.LBB39:
	.loc 2 1577 3 view .LVU33
	ldr	r2, [r3, #64]
	bic	r2, r2, #16384
	str	r2, [r3, #64]
	.loc 2 1578 1 is_stmt 0 view .LVU34
	bx	lr
.LVL8:
.L10:
	.loc 2 1578 1 view .LVU35
.LBE39:
.LBE38:
	.loc 1 165 5 is_stmt 1 view .LVU36
.LBB40:
.LBI40:
	.loc 2 1139 22 view .LVU37
.LBB41:
	.loc 2 1141 3 view .LVU38
	add	r3, r3, #116736
.LBE41:
.LBE40:
	.loc 1 141 15 is_stmt 0 view .LVU39
	movs	r0, #0
.LVL9:
.LBB43:
.LBB42:
	.loc 2 1141 3 view .LVU40
	ldr	r2, [r3, #56]
	orr	r2, r2, #262144
	str	r2, [r3, #56]
.LVL10:
	.loc 2 1141 3 view .LVU41
.LBE42:
.LBE43:
	.loc 1 168 5 is_stmt 1 view .LVU42
.LBB44:
.LBI44:
	.loc 2 1209 22 view .LVU43
.LBB45:
	.loc 2 1211 3 view .LVU44
	ldr	r2, [r3, #56]
	bic	r2, r2, #262144
	str	r2, [r3, #56]
	.loc 2 1212 1 is_stmt 0 view .LVU45
	bx	lr
.LVL11:
.L11:
	.loc 2 1212 1 view .LVU46
.LBE45:
.LBE44:
	.loc 1 174 5 is_stmt 1 view .LVU47
.LBB46:
.LBI46:
	.loc 2 1139 22 view .LVU48
.LBB47:
	.loc 2 1141 3 view .LVU49
	add	r3, r3, #115712
.LBE47:
.LBE46:
	.loc 1 141 15 is_stmt 0 view .LVU50
	movs	r0, #0
.LVL12:
.LBB49:
.LBB48:
	.loc 2 1141 3 view .LVU51
	ldr	r2, [r3, #56]
	orr	r2, r2, #524288
	str	r2, [r3, #56]
.LVL13:
	.loc 2 1141 3 view .LVU52
.LBE48:
.LBE49:
	.loc 1 177 5 is_stmt 1 view .LVU53
.LBB50:
.LBI50:
	.loc 2 1209 22 view .LVU54
.LBB51:
	.loc 2 1211 3 view .LVU55
	ldr	r2, [r3, #56]
	bic	r2, r2, #524288
	str	r2, [r3, #56]
	.loc 2 1212 1 is_stmt 0 view .LVU56
	bx	lr
.L13:
	.align	2
.L12:
	.word	1073821696
	.word	1073759232
	.word	1073760256
	.word	1073761280
.LBE51:
.LBE50:
	.cfi_endproc
.LFE563:
	.size	LL_USART_DeInit, .-LL_USART_DeInit
	.section	.text.LL_USART_Init,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	LL_USART_Init
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	LL_USART_Init, %function
LL_USART_Init:
.LVL14:
.LFB564:
	.loc 1 213 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 214 3 view .LVU58
	.loc 1 215 3 view .LVU59
	.loc 1 218 3 view .LVU60
	.loc 1 219 3 view .LVU61
	.loc 1 220 3 view .LVU62
	.loc 1 221 3 view .LVU63
	.loc 1 222 3 view .LVU64
	.loc 1 223 3 view .LVU65
	.loc 1 224 3 view .LVU66
	.loc 1 225 3 view .LVU67
	.loc 1 226 3 view .LVU68
	.loc 1 230 3 view .LVU69
.LBB62:
.LBI62:
	.file 3 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_ll_usart.h"
	.loc 3 659 26 view .LVU70
.LBB63:
	.loc 3 661 3 view .LVU71
.LBE63:
.LBE62:
	.loc 1 213 1 is_stmt 0 view .LVU72
	push	{r3, r4, r5, lr}
.LCFI0:
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
.LBB65:
.LBB64:
	.loc 3 661 12 view .LVU73
	ldr	r3, [r0]
.LVL15:
	.loc 3 661 12 view .LVU74
.LBE64:
.LBE65:
	.loc 1 230 6 view .LVU75
	lsls	r3, r3, #31
	bmi	.L25
	.loc 1 239 5 is_stmt 1 view .LVU76
	mov	r4, r0
	ldrd	r0, r2, [r1, #16]
.LVL16:
	.loc 1 239 5 is_stmt 0 view .LVU77
	ldr	r3, [r1, #8]
	mov	r5, r1
	orrs	r3, r3, r0
	orrs	r3, r3, r2
	ldr	r2, [r5, #28]
	ldr	r1, [r4]
.LVL17:
	.loc 1 239 5 view .LVU78
	orrs	r3, r3, r2
	ldr	r2, .L35
	ands	r2, r2, r1
	orrs	r3, r3, r2
	str	r3, [r4]
	.loc 1 250 5 is_stmt 1 view .LVU79
.LVL18:
.LBB66:
.LBI66:
	.loc 3 1305 22 view .LVU80
.LBB67:
	.loc 3 1307 3 view .LVU81
	ldr	r3, [r4, #4]
	ldr	r2, [r5, #12]
.LBE67:
.LBE66:
.LBB69:
.LBB70:
	.loc 3 1732 3 is_stmt 0 view .LVU82
	ldr	r1, [r5, #24]
.LBE70:
.LBE69:
.LBB74:
.LBB68:
	.loc 3 1307 3 view .LVU83
	bic	r3, r3, #12288
	orrs	r3, r3, r2
	str	r3, [r4, #4]
.LVL19:
	.loc 3 1307 3 view .LVU84
.LBE68:
.LBE74:
	.loc 1 257 5 is_stmt 1 view .LVU85
.LBB75:
.LBI69:
	.loc 3 1730 22 view .LVU86
.LBB71:
	.loc 3 1732 3 view .LVU87
	ldr	r3, [r4, #8]
.LBE71:
.LBE75:
	.loc 1 262 8 is_stmt 0 view .LVU88
	ldr	r2, .L35+4
.LBB76:
.LBB72:
	.loc 3 1732 3 view .LVU89
	bic	r3, r3, #768
	orrs	r3, r3, r1
.LBE72:
.LBE76:
	.loc 1 262 8 view .LVU90
	cmp	r4, r2
.LBB77:
.LBB73:
	.loc 3 1732 3 view .LVU91
	str	r3, [r4, #8]
.LVL20:
	.loc 3 1732 3 view .LVU92
.LBE73:
.LBE77:
	.loc 1 262 5 is_stmt 1 view .LVU93
	.loc 1 262 8 is_stmt 0 view .LVU94
	beq	.L31
	.loc 1 266 10 is_stmt 1 view .LVU95
	.loc 1 266 13 is_stmt 0 view .LVU96
	ldr	r3, .L35+8
	cmp	r4, r3
	beq	.L32
	.loc 1 270 10 is_stmt 1 view .LVU97
	.loc 1 270 13 is_stmt 0 view .LVU98
	ldr	r3, .L35+12
	cmp	r4, r3
	beq	.L33
	.loc 1 275 10 is_stmt 1 view .LVU99
	.loc 1 275 13 is_stmt 0 view .LVU100
	ldr	r3, .L35+16
	cmp	r4, r3
	beq	.L20
.LVL21:
.L23:
	.loc 1 314 5 view .LVU101
	ldr	r2, [r5]
	.loc 1 214 15 view .LVU102
	movs	r0, #1
.LVL22:
.L21:
	.loc 1 307 7 is_stmt 1 view .LVU103
	.loc 1 314 5 view .LVU104
.LBB78:
.LBI78:
	.loc 3 1225 22 view .LVU105
.LBB79:
	.loc 3 1227 3 view .LVU106
	ldr	r3, [r4, #44]
	uxth	r2, r2
	bic	r3, r3, #15
	orrs	r3, r3, r2
	str	r3, [r4, #44]
.LVL23:
	.loc 3 1227 3 is_stmt 0 view .LVU107
.LBE79:
.LBE78:
	.loc 1 318 3 is_stmt 1 view .LVU108
	.loc 1 319 1 is_stmt 0 view .LVU109
	pop	{r3, r4, r5, pc}
.LVL24:
.L25:
	.loc 1 214 15 view .LVU110
	movs	r0, #1
.LVL25:
	.loc 1 318 3 is_stmt 1 view .LVU111
	.loc 1 319 1 is_stmt 0 view .LVU112
	pop	{r3, r4, r5, pc}
.LVL26:
.L31:
	.loc 1 264 7 is_stmt 1 view .LVU113
	.loc 1 264 19 is_stmt 0 view .LVU114
	movs	r0, #3
	bl	LL_RCC_GetUSARTClockFreq
.LVL27:
.L17:
	.loc 1 289 5 is_stmt 1 view .LVU115
	.loc 1 296 5 view .LVU116
	.loc 1 296 8 is_stmt 0 view .LVU117
	cmp	r0, #0
	beq	.L23
	.loc 1 297 29 view .LVU118
	ldr	r1, [r5, #4]
	.loc 1 297 9 view .LVU119
	cmp	r1, #0
	beq	.L23
	.loc 1 299 7 is_stmt 1 view .LVU120
.LVL28:
	.loc 1 300 7 view .LVU121
	ldr	r2, [r5]
.LVL29:
.LBB80:
.LBI80:
	.loc 3 1881 22 view .LVU122
.LBB81:
	.loc 3 1885 3 view .LVU123
	.loc 3 1886 3 view .LVU124
	.loc 3 1888 3 view .LVU125
	.loc 3 1888 6 is_stmt 0 view .LVU126
	cmp	r2, #11
	bhi	.L26
	.loc 3 1892 8 is_stmt 1 view .LVU127
	.loc 3 1896 8 view .LVU128
	.loc 3 1896 11 is_stmt 0 view .LVU129
	ldr	r3, [r5, #28]
	cmp	r3, #32768
	.loc 3 1898 27 view .LVU130
	ldr	r3, .L35+20
	ldr	r3, [r3, r2, lsl #2]
	.loc 3 1896 11 view .LVU131
	beq	.L34
	.loc 3 1905 5 is_stmt 1 view .LVU132
	.loc 3 1905 30 is_stmt 0 view .LVU133
	udiv	r3, r0, r3
	add	r3, r3, r1, lsr #1
	udiv	r3, r3, r1
	uxth	r3, r3
	.loc 3 1905 17 view .LVU134
	str	r3, [r4, #12]
.LVL30:
	.loc 3 1905 17 view .LVU135
.LBE81:
.LBE80:
	.loc 1 299 14 view .LVU136
	movs	r0, #0
.LVL31:
	.loc 1 299 14 view .LVU137
	b	.L21
.LVL32:
.L32:
	.loc 1 268 7 is_stmt 1 view .LVU138
	.loc 1 268 19 is_stmt 0 view .LVU139
	movs	r0, #12
	bl	LL_RCC_GetUSARTClockFreq
.LVL33:
	.loc 1 268 19 view .LVU140
	b	.L17
.LVL34:
.L33:
	.loc 1 272 7 is_stmt 1 view .LVU141
	.loc 1 272 19 is_stmt 0 view .LVU142
	movs	r0, #48
	bl	LL_RCC_GetUSARTClockFreq
.LVL35:
	.loc 1 272 19 view .LVU143
	b	.L17
.LVL36:
.L20:
	.loc 1 277 7 is_stmt 1 view .LVU144
	.loc 1 277 19 is_stmt 0 view .LVU145
	movs	r0, #192
	bl	LL_RCC_GetUARTClockFreq
.LVL37:
	.loc 1 277 19 view .LVU146
	b	.L17
.LVL38:
.L26:
	.loc 1 299 14 view .LVU147
	movs	r0, #0
.LVL39:
	.loc 1 299 14 view .LVU148
	b	.L21
.LVL40:
.L34:
.LBB84:
.LBB82:
	.loc 3 1898 5 is_stmt 1 view .LVU149
	.loc 3 1898 27 is_stmt 0 view .LVU150
	udiv	r0, r0, r3
.LVL41:
	.loc 3 1899 13 view .LVU151
	movw	r5, #65520
.LVL42:
	.loc 3 1898 27 view .LVU152
	lsrs	r3, r1, #1
	add	r0, r3, r0, lsl #1
	udiv	r3, r0, r1
.LVL43:
	.loc 3 1899 5 is_stmt 1 view .LVU153
	.loc 3 1899 13 is_stmt 0 view .LVU154
	and	r1, r3, r5
.LVL44:
	.loc 3 1900 5 is_stmt 1 view .LVU155
	.loc 3 1900 16 is_stmt 0 view .LVU156
	ubfx	r3, r3, #1, #3
.LVL45:
	.loc 3 1900 13 view .LVU157
	orrs	r3, r3, r1
.LVL46:
	.loc 3 1901 5 is_stmt 1 view .LVU158
	.loc 3 1901 17 is_stmt 0 view .LVU159
	str	r3, [r4, #12]
.LVL47:
	.loc 3 1901 17 view .LVU160
.LBE82:
.LBE84:
	.loc 1 299 14 view .LVU161
	movs	r0, #0
.LBB85:
.LBB83:
	.loc 1 299 14 view .LVU162
	b	.L21
.L36:
	.align	2
.L35:
	.word	-268473869
	.word	1073821696
	.word	1073759232
	.word	1073760256
	.word	1073761280
	.word	.LANCHOR0
.LBE83:
.LBE85:
	.cfi_endproc
.LFE564:
	.size	LL_USART_Init, .-LL_USART_Init
	.section	.text.LL_USART_StructInit,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	LL_USART_StructInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	LL_USART_StructInit, %function
LL_USART_StructInit:
.LVL48:
.LFB565:
	.loc 1 329 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 331 3 view .LVU164
	.loc 1 331 41 is_stmt 0 view .LVU165
	movs	r3, #0
	.loc 1 332 41 view .LVU166
	mov	r1, #9600
	.loc 1 336 41 view .LVU167
	movs	r2, #12
	.loc 1 332 41 view .LVU168
	strd	r3, r1, [r0]
	.loc 1 333 3 is_stmt 1 view .LVU169
	.loc 1 334 41 is_stmt 0 view .LVU170
	strd	r3, r3, [r0, #8]
	.loc 1 335 3 is_stmt 1 view .LVU171
	.loc 1 336 41 is_stmt 0 view .LVU172
	strd	r3, r2, [r0, #16]
	.loc 1 337 3 is_stmt 1 view .LVU173
	.loc 1 338 41 is_stmt 0 view .LVU174
	strd	r3, r3, [r0, #24]
	.loc 1 339 1 view .LVU175
	bx	lr
	.cfi_endproc
.LFE565:
	.size	LL_USART_StructInit, .-LL_USART_StructInit
	.section	.text.LL_USART_ClockInit,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	LL_USART_ClockInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	LL_USART_ClockInit, %function
LL_USART_ClockInit:
.LVL49:
.LFB566:
	.loc 1 356 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 357 3 view .LVU177
	.loc 1 360 3 view .LVU178
	.loc 1 361 3 view .LVU179
	.loc 1 365 3 view .LVU180
.LBB86:
.LBI86:
	.loc 3 659 26 view .LVU181
.LBB87:
	.loc 3 661 3 view .LVU182
	.loc 3 661 12 is_stmt 0 view .LVU183
	ldr	r3, [r0]
.LVL50:
	.loc 3 661 12 view .LVU184
.LBE87:
.LBE86:
	.loc 1 365 6 view .LVU185
	ands	r3, r3, #1
	bne	.L40
	.loc 1 356 1 view .LVU186
	push	{r4, r5, lr}
.LCFI1:
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	mov	r2, r0
	.loc 1 368 5 is_stmt 1 view .LVU187
	.loc 1 371 5 view .LVU188
	.loc 1 372 5 view .LVU189
	.loc 1 373 5 view .LVU190
	.loc 1 382 5 view .LVU191
	ldr	r5, [r1, #4]
	ldr	r0, [r1]
.LVL51:
	.loc 1 382 5 is_stmt 0 view .LVU192
	ldr	r4, [r2, #4]
	orr	ip, r0, r5
	.loc 1 357 15 view .LVU193
	mov	r0, r3
	.loc 1 382 5 view .LVU194
	ldr	r3, [r1, #8]
	ldr	r1, [r1, #12]
.LVL52:
	.loc 1 382 5 view .LVU195
	orr	r3, ip, r3
	bic	lr, r4, #3840
	orrs	r3, r3, r1
	orr	r3, r3, lr
	str	r3, [r2, #4]
.LVL53:
	.loc 1 393 3 is_stmt 1 view .LVU196
	.loc 1 394 1 is_stmt 0 view .LVU197
	pop	{r4, r5, pc}
.LVL54:
.L40:
.LCFI2:
	.cfi_def_cfa_offset 0
	.cfi_restore 4
	.cfi_restore 5
	.cfi_restore 14
	.loc 1 390 12 view .LVU198
	movs	r0, #1
.LVL55:
	.loc 1 393 3 is_stmt 1 view .LVU199
	.loc 1 394 1 is_stmt 0 view .LVU200
	bx	lr
	.cfi_endproc
.LFE566:
	.size	LL_USART_ClockInit, .-LL_USART_ClockInit
	.section	.text.LL_USART_ClockStructInit,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	LL_USART_ClockStructInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	LL_USART_ClockStructInit, %function
LL_USART_ClockStructInit:
.LVL56:
.LFB567:
	.loc 1 403 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 405 3 view .LVU202
	.loc 1 405 44 is_stmt 0 view .LVU203
	movs	r3, #0
	.loc 1 406 44 view .LVU204
	strd	r3, r3, [r0]
	.loc 1 408 3 is_stmt 1 view .LVU205
	.loc 1 410 44 is_stmt 0 view .LVU206
	strd	r3, r3, [r0, #8]
	.loc 1 412 1 view .LVU207
	bx	lr
	.cfi_endproc
.LFE567:
	.size	LL_USART_ClockStructInit, .-LL_USART_ClockStructInit
	.section	.rodata.USART_PRESCALER_TAB,"a"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	USART_PRESCALER_TAB, %object
	.size	USART_PRESCALER_TAB, 48
USART_PRESCALER_TAB:
	.word	1
	.word	2
	.word	4
	.word	6
	.word	8
	.word	10
	.word	12
	.word	16
	.word	32
	.word	64
	.word	128
	.word	256
	.text
.Letext0:
	.file 4 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/machine/_default_types.h"
	.file 5 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/sys/_stdint.h"
	.file 6 "Drivers/CMSIS/Device/ST/STM32G4xx/Include/stm32g431xx.h"
	.file 7 "Drivers/CMSIS/Device/ST/STM32G4xx/Include/stm32g4xx.h"
	.file 8 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_ll_rcc.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xb65
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF100
	.byte	0xc
	.4byte	.LASF101
	.4byte	.LASF102
	.4byte	.Ldebug_ranges0+0xd8
	.4byte	0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x4
	.byte	0x2b
	.byte	0x18
	.4byte	0x43
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x4
	.byte	0x39
	.byte	0x19
	.4byte	0x5d
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x4
	.byte	0x4f
	.byte	0x19
	.4byte	0x77
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x5
	.byte	0x18
	.byte	0x13
	.4byte	0x37
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x5
	.byte	0x24
	.byte	0x14
	.4byte	0x51
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x5
	.byte	0x30
	.byte	0x14
	.4byte	0x6b
	.uleb128 0x5
	.4byte	0xab
	.uleb128 0x6
	.4byte	0xab
	.uleb128 0x7
	.byte	0xa0
	.byte	0x6
	.2byte	0x23f
	.byte	0x9
	.4byte	0x353
	.uleb128 0x8
	.ascii	"CR\000"
	.byte	0x6
	.2byte	0x241
	.byte	0x11
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF15
	.byte	0x6
	.2byte	0x242
	.byte	0x11
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x6
	.2byte	0x243
	.byte	0x11
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x6
	.2byte	0x244
	.byte	0x11
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x6
	.2byte	0x245
	.byte	0x11
	.4byte	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x6
	.2byte	0x246
	.byte	0x11
	.4byte	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x6
	.2byte	0x247
	.byte	0x11
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x6
	.2byte	0x248
	.byte	0x11
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x6
	.2byte	0x249
	.byte	0x11
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x6
	.2byte	0x24a
	.byte	0x11
	.4byte	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x6
	.2byte	0x24b
	.byte	0x11
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x6
	.2byte	0x24c
	.byte	0x11
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x6
	.2byte	0x24d
	.byte	0x11
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x6
	.2byte	0x24e
	.byte	0x11
	.4byte	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x6
	.2byte	0x24f
	.byte	0x11
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x6
	.2byte	0x250
	.byte	0x11
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x6
	.2byte	0x251
	.byte	0x11
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x6
	.2byte	0x252
	.byte	0x11
	.4byte	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x6
	.2byte	0x253
	.byte	0x11
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x6
	.2byte	0x254
	.byte	0x11
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x6
	.2byte	0x255
	.byte	0x11
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x6
	.2byte	0x256
	.byte	0x11
	.4byte	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x6
	.2byte	0x257
	.byte	0x11
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x6
	.2byte	0x258
	.byte	0x11
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x6
	.2byte	0x259
	.byte	0x11
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0x6
	.2byte	0x25a
	.byte	0x11
	.4byte	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0x6
	.2byte	0x25b
	.byte	0x11
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x6
	.2byte	0x25c
	.byte	0x11
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x6
	.2byte	0x25d
	.byte	0x11
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x6
	.2byte	0x25e
	.byte	0x11
	.4byte	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0x6
	.2byte	0x25f
	.byte	0x11
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x6
	.2byte	0x260
	.byte	0x11
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x6
	.2byte	0x261
	.byte	0x11
	.4byte	0xb7
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x9
	.4byte	.LASF47
	.byte	0x6
	.2byte	0x262
	.byte	0x11
	.4byte	0xab
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x9
	.4byte	.LASF48
	.byte	0x6
	.2byte	0x263
	.byte	0x11
	.4byte	0xb7
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x9
	.4byte	.LASF49
	.byte	0x6
	.2byte	0x264
	.byte	0x11
	.4byte	0xab
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0x6
	.2byte	0x265
	.byte	0x11
	.4byte	0xb7
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x8
	.ascii	"CSR\000"
	.byte	0x6
	.2byte	0x266
	.byte	0x11
	.4byte	0xb7
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0x6
	.2byte	0x267
	.byte	0x11
	.4byte	0xb7
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x9
	.4byte	.LASF52
	.byte	0x6
	.2byte	0x268
	.byte	0x11
	.4byte	0xb7
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.byte	0
	.uleb128 0xa
	.4byte	.LASF53
	.byte	0x6
	.2byte	0x269
	.byte	0x3
	.4byte	0xc1
	.uleb128 0x7
	.byte	0x30
	.byte	0x6
	.2byte	0x318
	.byte	0x9
	.4byte	0x42b
	.uleb128 0x8
	.ascii	"CR1\000"
	.byte	0x6
	.2byte	0x31a
	.byte	0x11
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.ascii	"CR2\000"
	.byte	0x6
	.2byte	0x31b
	.byte	0x11
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.ascii	"CR3\000"
	.byte	0x6
	.2byte	0x31c
	.byte	0x11
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.ascii	"BRR\000"
	.byte	0x6
	.2byte	0x31d
	.byte	0x11
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF54
	.byte	0x6
	.2byte	0x31e
	.byte	0x11
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0x6
	.2byte	0x31f
	.byte	0x11
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.ascii	"RQR\000"
	.byte	0x6
	.2byte	0x320
	.byte	0x11
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.ascii	"ISR\000"
	.byte	0x6
	.2byte	0x321
	.byte	0x11
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.ascii	"ICR\000"
	.byte	0x6
	.2byte	0x322
	.byte	0x11
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.ascii	"RDR\000"
	.byte	0x6
	.2byte	0x323
	.byte	0x11
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x8
	.ascii	"TDR\000"
	.byte	0x6
	.2byte	0x324
	.byte	0x11
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0x6
	.2byte	0x325
	.byte	0x11
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.byte	0
	.uleb128 0xa
	.4byte	.LASF57
	.byte	0x6
	.2byte	0x326
	.byte	0x3
	.4byte	0x360
	.uleb128 0x6
	.4byte	0x42b
	.uleb128 0xb
	.byte	0x7
	.byte	0x1
	.4byte	0x43
	.byte	0x7
	.byte	0x97
	.byte	0x1
	.4byte	0x458
	.uleb128 0xc
	.4byte	.LASF58
	.byte	0
	.uleb128 0xc
	.4byte	.LASF59
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF60
	.byte	0x7
	.byte	0x9a
	.byte	0x3
	.4byte	0x43d
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF61
	.uleb128 0xd
	.4byte	0xbc
	.4byte	0x47b
	.uleb128 0xe
	.4byte	0x29
	.byte	0xb
	.byte	0
	.uleb128 0x6
	.4byte	0x46b
	.uleb128 0xf
	.4byte	.LASF103
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x47b
	.byte	0x5
	.byte	0x3
	.4byte	USART_PRESCALER_TAB
	.uleb128 0x10
	.byte	0x20
	.byte	0x3
	.byte	0x5b
	.byte	0x9
	.4byte	0x514
	.uleb128 0x11
	.4byte	.LASF62
	.byte	0x3
	.byte	0x5d
	.byte	0xc
	.4byte	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.4byte	.LASF63
	.byte	0x3
	.byte	0x63
	.byte	0xc
	.4byte	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.4byte	.LASF64
	.byte	0x3
	.byte	0x68
	.byte	0xc
	.4byte	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.4byte	.LASF65
	.byte	0x3
	.byte	0x6e
	.byte	0xc
	.4byte	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x11
	.4byte	.LASF66
	.byte	0x3
	.byte	0x74
	.byte	0xc
	.4byte	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x11
	.4byte	.LASF67
	.byte	0x3
	.byte	0x7a
	.byte	0xc
	.4byte	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x11
	.4byte	.LASF68
	.byte	0x3
	.byte	0x80
	.byte	0xc
	.4byte	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x11
	.4byte	.LASF69
	.byte	0x3
	.byte	0x86
	.byte	0xc
	.4byte	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0
	.uleb128 0x3
	.4byte	.LASF70
	.byte	0x3
	.byte	0x8c
	.byte	0x3
	.4byte	0x492
	.uleb128 0x6
	.4byte	0x514
	.uleb128 0x10
	.byte	0x10
	.byte	0x3
	.byte	0x91
	.byte	0x9
	.4byte	0x56b
	.uleb128 0x11
	.4byte	.LASF71
	.byte	0x3
	.byte	0x93
	.byte	0xc
	.4byte	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.4byte	.LASF72
	.byte	0x3
	.byte	0x9a
	.byte	0xc
	.4byte	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.4byte	.LASF73
	.byte	0x3
	.byte	0xa1
	.byte	0xc
	.4byte	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.4byte	.LASF74
	.byte	0x3
	.byte	0xa8
	.byte	0xc
	.4byte	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF75
	.byte	0x3
	.byte	0xb0
	.byte	0x3
	.4byte	0x525
	.uleb128 0x6
	.4byte	0x56b
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x192
	.byte	0x6
	.byte	0x1
	.4byte	.LFB567
	.4byte	.LFE567
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x5a7
	.uleb128 0x13
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x192
	.byte	0x3a
	.4byte	0x5a7
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.4byte	0x56b
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x163
	.byte	0xd
	.byte	0x1
	.4byte	0x458
	.4byte	.LFB566
	.4byte	.LFE566
	.4byte	.LLST28
	.byte	0x1
	.4byte	0x631
	.uleb128 0x16
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x163
	.byte	0x2f
	.4byte	0x631
	.4byte	.LLST29
	.4byte	.LVUS29
	.uleb128 0x16
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x163
	.byte	0x58
	.4byte	0x637
	.4byte	.LLST30
	.4byte	.LVUS30
	.uleb128 0x17
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x165
	.byte	0xf
	.4byte	0x458
	.4byte	.LLST31
	.4byte	.LVUS31
	.uleb128 0x18
	.4byte	0xb29
	.4byte	.LBI86
	.byte	.LVU181
	.4byte	.LBB86
	.4byte	.LBE86
	.byte	0x1
	.2byte	0x16d
	.byte	0x7
	.uleb128 0x19
	.4byte	0xb3c
	.4byte	.LLST32
	.4byte	.LVUS32
	.byte	0
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.4byte	0x42b
	.uleb128 0x14
	.byte	0x4
	.4byte	0x577
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x148
	.byte	0x6
	.byte	0x1
	.4byte	.LFB565
	.4byte	.LFE565
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x668
	.uleb128 0x13
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x148
	.byte	0x30
	.4byte	0x668
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.4byte	0x514
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF82
	.byte	0x1
	.byte	0xd4
	.byte	0xd
	.byte	0x1
	.4byte	0x458
	.4byte	.LFB564
	.4byte	.LFE564
	.4byte	.LLST9
	.byte	0x1
	.4byte	0x859
	.uleb128 0x1b
	.4byte	.LASF76
	.byte	0x1
	.byte	0xd4
	.byte	0x2a
	.4byte	0x631
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x1b
	.4byte	.LASF80
	.byte	0x1
	.byte	0xd4
	.byte	0x4e
	.4byte	0x859
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x1c
	.4byte	.LASF83
	.byte	0x1
	.byte	0xd6
	.byte	0xf
	.4byte	0x458
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x1c
	.4byte	.LASF84
	.byte	0x1
	.byte	0xd7
	.byte	0xc
	.4byte	0xab
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x1d
	.4byte	0xb29
	.4byte	.LBI62
	.byte	.LVU70
	.4byte	.Ldebug_ranges0+0x60
	.byte	0x1
	.byte	0xe6
	.byte	0x7
	.4byte	0x700
	.uleb128 0x19
	.4byte	0xb3c
	.4byte	.LLST14
	.4byte	.LVUS14
	.byte	0
	.uleb128 0x1d
	.4byte	0xad5
	.4byte	.LBI66
	.byte	.LVU80
	.4byte	.Ldebug_ranges0+0x78
	.byte	0x1
	.byte	0xfa
	.byte	0x5
	.4byte	0x730
	.uleb128 0x19
	.4byte	0xaf1
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0x19
	.4byte	0xae4
	.4byte	.LLST16
	.4byte	.LVUS16
	.byte	0
	.uleb128 0x1e
	.4byte	0xaab
	.4byte	.LBI69
	.byte	.LVU86
	.4byte	.Ldebug_ranges0+0x90
	.byte	0x1
	.2byte	0x101
	.byte	0x5
	.4byte	0x761
	.uleb128 0x19
	.4byte	0xac7
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0x19
	.4byte	0xaba
	.4byte	.LLST18
	.4byte	.LVUS18
	.byte	0
	.uleb128 0x1f
	.4byte	0xaff
	.4byte	.LBI78
	.byte	.LVU105
	.4byte	.LBB78
	.4byte	.LBE78
	.byte	0x1
	.2byte	0x13a
	.byte	0x5
	.4byte	0x796
	.uleb128 0x19
	.4byte	0xb1b
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0x19
	.4byte	0xb0e
	.4byte	.LLST20
	.4byte	.LVUS20
	.byte	0
	.uleb128 0x1e
	.4byte	0xa40
	.4byte	.LBI80
	.byte	.LVU122
	.4byte	.Ldebug_ranges0+0xb8
	.byte	0x1
	.2byte	0x12c
	.byte	0x7
	.4byte	0x80e
	.uleb128 0x19
	.4byte	0xa83
	.4byte	.LLST21
	.4byte	.LVUS21
	.uleb128 0x19
	.4byte	0xa76
	.4byte	.LLST22
	.4byte	.LVUS22
	.uleb128 0x19
	.4byte	0xa69
	.4byte	.LLST23
	.4byte	.LVUS23
	.uleb128 0x19
	.4byte	0xa5c
	.4byte	.LLST24
	.4byte	.LVUS24
	.uleb128 0x19
	.4byte	0xa4f
	.4byte	.LLST25
	.4byte	.LVUS25
	.uleb128 0x20
	.4byte	.Ldebug_ranges0+0xb8
	.uleb128 0x21
	.4byte	0xa90
	.4byte	.LLST26
	.4byte	.LVUS26
	.uleb128 0x21
	.4byte	0xa9d
	.4byte	.LLST27
	.4byte	.LVUS27
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LVL27
	.4byte	0xb4a
	.4byte	0x821
	.uleb128 0x23
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0x22
	.4byte	.LVL33
	.4byte	0xb4a
	.4byte	0x834
	.uleb128 0x23
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x22
	.4byte	.LVL35
	.4byte	0xb4a
	.4byte	0x848
	.uleb128 0x23
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.uleb128 0x24
	.4byte	.LVL37
	.4byte	0xb59
	.uleb128 0x23
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x8
	.byte	0xc0
	.byte	0
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.4byte	0x520
	.uleb128 0x25
	.byte	0x1
	.4byte	.LASF85
	.byte	0x1
	.byte	0x8b
	.byte	0xd
	.byte	0x1
	.4byte	0x458
	.4byte	.LFB563
	.4byte	.LFE563
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x9c6
	.uleb128 0x1b
	.4byte	.LASF76
	.byte	0x1
	.byte	0x8b
	.byte	0x32
	.4byte	0x9c6
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x1c
	.4byte	.LASF83
	.byte	0x1
	.byte	0x8d
	.byte	0xf
	.4byte	0x458
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x1d
	.4byte	0xa23
	.4byte	.LBI28
	.byte	.LVU15
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x9d
	.byte	0x5
	.4byte	0x8c8
	.uleb128 0x19
	.4byte	0xa32
	.4byte	.LLST2
	.4byte	.LVUS2
	.byte	0
	.uleb128 0x26
	.4byte	0xa06
	.4byte	.LBI32
	.byte	.LVU21
	.4byte	.LBB32
	.4byte	.LBE32
	.byte	0x1
	.byte	0xa0
	.byte	0x5
	.4byte	0x8ef
	.uleb128 0x19
	.4byte	0xa15
	.4byte	.LLST3
	.4byte	.LVUS3
	.byte	0
	.uleb128 0x1d
	.4byte	0x9e9
	.4byte	.LBI34
	.byte	.LVU26
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x95
	.byte	0x5
	.4byte	0x912
	.uleb128 0x19
	.4byte	0x9f8
	.4byte	.LLST4
	.4byte	.LVUS4
	.byte	0
	.uleb128 0x26
	.4byte	0x9cc
	.4byte	.LBI38
	.byte	.LVU32
	.4byte	.LBB38
	.4byte	.LBE38
	.byte	0x1
	.byte	0x98
	.byte	0x5
	.4byte	0x939
	.uleb128 0x19
	.4byte	0x9db
	.4byte	.LLST5
	.4byte	.LVUS5
	.byte	0
	.uleb128 0x1d
	.4byte	0xa23
	.4byte	.LBI40
	.byte	.LVU37
	.4byte	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0xa5
	.byte	0x5
	.4byte	0x95c
	.uleb128 0x19
	.4byte	0xa32
	.4byte	.LLST6
	.4byte	.LVUS6
	.byte	0
	.uleb128 0x26
	.4byte	0xa06
	.4byte	.LBI44
	.byte	.LVU43
	.4byte	.LBB44
	.4byte	.LBE44
	.byte	0x1
	.byte	0xa8
	.byte	0x5
	.4byte	0x983
	.uleb128 0x19
	.4byte	0xa15
	.4byte	.LLST7
	.4byte	.LVUS7
	.byte	0
	.uleb128 0x1d
	.4byte	0xa23
	.4byte	.LBI46
	.byte	.LVU48
	.4byte	.Ldebug_ranges0+0x48
	.byte	0x1
	.byte	0xae
	.byte	0x5
	.4byte	0x9a6
	.uleb128 0x19
	.4byte	0xa32
	.4byte	.LLST8
	.4byte	.LVUS8
	.byte	0
	.uleb128 0x27
	.4byte	0xa06
	.4byte	.LBI50
	.byte	.LVU54
	.4byte	.LBB50
	.4byte	.LBE50
	.byte	0x1
	.byte	0xb1
	.byte	0x5
	.uleb128 0x28
	.4byte	0xa15
	.4byte	0x80000
	.byte	0
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.4byte	0x438
	.uleb128 0x29
	.4byte	.LASF86
	.byte	0x2
	.2byte	0x627
	.byte	0x16
	.byte	0x1
	.byte	0x3
	.4byte	0x9e9
	.uleb128 0x2a
	.4byte	.LASF88
	.byte	0x2
	.2byte	0x627
	.byte	0x39
	.4byte	0xab
	.byte	0
	.uleb128 0x29
	.4byte	.LASF87
	.byte	0x2
	.2byte	0x603
	.byte	0x16
	.byte	0x1
	.byte	0x3
	.4byte	0xa06
	.uleb128 0x2a
	.4byte	.LASF88
	.byte	0x2
	.2byte	0x603
	.byte	0x37
	.4byte	0xab
	.byte	0
	.uleb128 0x29
	.4byte	.LASF89
	.byte	0x2
	.2byte	0x4b9
	.byte	0x16
	.byte	0x1
	.byte	0x3
	.4byte	0xa23
	.uleb128 0x2a
	.4byte	.LASF88
	.byte	0x2
	.2byte	0x4b9
	.byte	0x39
	.4byte	0xab
	.byte	0
	.uleb128 0x29
	.4byte	.LASF90
	.byte	0x2
	.2byte	0x473
	.byte	0x16
	.byte	0x1
	.byte	0x3
	.4byte	0xa40
	.uleb128 0x2a
	.4byte	.LASF88
	.byte	0x2
	.2byte	0x473
	.byte	0x37
	.4byte	0xab
	.byte	0
	.uleb128 0x29
	.4byte	.LASF91
	.byte	0x3
	.2byte	0x759
	.byte	0x16
	.byte	0x1
	.byte	0x3
	.4byte	0xaab
	.uleb128 0x2a
	.4byte	.LASF76
	.byte	0x3
	.2byte	0x759
	.byte	0x3a
	.4byte	0x631
	.uleb128 0x2a
	.4byte	.LASF92
	.byte	0x3
	.2byte	0x759
	.byte	0x4b
	.4byte	0xab
	.uleb128 0x2a
	.4byte	.LASF62
	.byte	0x3
	.2byte	0x759
	.byte	0x5f
	.4byte	0xab
	.uleb128 0x2a
	.4byte	.LASF69
	.byte	0x3
	.2byte	0x75a
	.byte	0x34
	.4byte	0xab
	.uleb128 0x2a
	.4byte	.LASF63
	.byte	0x3
	.2byte	0x75b
	.byte	0x34
	.4byte	0xab
	.uleb128 0x2b
	.4byte	.LASF93
	.byte	0x3
	.2byte	0x75d
	.byte	0xc
	.4byte	0xab
	.uleb128 0x2b
	.4byte	.LASF94
	.byte	0x3
	.2byte	0x75e
	.byte	0xc
	.4byte	0xab
	.byte	0
	.uleb128 0x29
	.4byte	.LASF95
	.byte	0x3
	.2byte	0x6c2
	.byte	0x16
	.byte	0x1
	.byte	0x3
	.4byte	0xad5
	.uleb128 0x2a
	.4byte	.LASF76
	.byte	0x3
	.2byte	0x6c2
	.byte	0x3c
	.4byte	0x631
	.uleb128 0x2a
	.4byte	.LASF68
	.byte	0x3
	.2byte	0x6c2
	.byte	0x4d
	.4byte	0xab
	.byte	0
	.uleb128 0x29
	.4byte	.LASF96
	.byte	0x3
	.2byte	0x519
	.byte	0x16
	.byte	0x1
	.byte	0x3
	.4byte	0xaff
	.uleb128 0x2a
	.4byte	.LASF76
	.byte	0x3
	.2byte	0x519
	.byte	0x40
	.4byte	0x631
	.uleb128 0x2a
	.4byte	.LASF65
	.byte	0x3
	.2byte	0x519
	.byte	0x51
	.4byte	0xab
	.byte	0
	.uleb128 0x29
	.4byte	.LASF97
	.byte	0x3
	.2byte	0x4c9
	.byte	0x16
	.byte	0x1
	.byte	0x3
	.4byte	0xb29
	.uleb128 0x2a
	.4byte	.LASF76
	.byte	0x3
	.2byte	0x4c9
	.byte	0x3b
	.4byte	0x631
	.uleb128 0x2a
	.4byte	.LASF62
	.byte	0x3
	.2byte	0x4c9
	.byte	0x4c
	.4byte	0xab
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF104
	.byte	0x3
	.2byte	0x293
	.byte	0x1a
	.byte	0x1
	.4byte	0xab
	.byte	0x3
	.4byte	0xb4a
	.uleb128 0x2a
	.4byte	.LASF76
	.byte	0x3
	.2byte	0x293
	.byte	0x42
	.4byte	0x9c6
	.byte	0
	.uleb128 0x2d
	.byte	0x1
	.byte	0x1
	.4byte	.LASF98
	.4byte	.LASF98
	.byte	0x8
	.2byte	0xb8e
	.byte	0xd
	.uleb128 0x2d
	.byte	0x1
	.byte	0x1
	.4byte	.LASF99
	.4byte	.LASF99
	.byte	0x8
	.2byte	0xb90
	.byte	0xd
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
	.uleb128 0x9
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
	.uleb128 0xc
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x2
	.uleb128 0x6
	.uleb128 0x2137
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST28:
	.4byte	.LFB566
	.4byte	.LCFI1
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI1
	.4byte	.LCFI2
	.2byte	0x2
	.byte	0x7d
	.sleb128 12
	.4byte	.LCFI2
	.4byte	.LFE566
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS29:
	.uleb128 0
	.uleb128 .LVU192
	.uleb128 .LVU192
	.uleb128 .LVU198
	.uleb128 .LVU198
	.uleb128 .LVU199
	.uleb128 .LVU199
	.uleb128 0
.LLST29:
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL51
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL55
	.4byte	.LFE566
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS30:
	.uleb128 0
	.uleb128 .LVU195
	.uleb128 .LVU195
	.uleb128 .LVU198
	.uleb128 .LVU198
	.uleb128 0
.LLST30:
	.4byte	.LVL49
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL52
	.4byte	.LVL54
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LFE566
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LVUS31:
	.uleb128 .LVU178
	.uleb128 .LVU196
	.uleb128 .LVU196
	.uleb128 .LVU198
	.uleb128 .LVU198
	.uleb128 .LVU199
	.uleb128 .LVU199
	.uleb128 0
.LLST31:
	.4byte	.LVL49
	.4byte	.LVL53
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LFE566
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS32:
	.uleb128 .LVU181
	.uleb128 .LVU184
.LLST32:
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LFB564
	.4byte	.LCFI0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI0
	.4byte	.LFE564
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 0
	.uleb128 .LVU77
	.uleb128 .LVU77
	.uleb128 .LVU110
	.uleb128 .LVU110
	.uleb128 .LVU111
	.uleb128 .LVU111
	.uleb128 .LVU113
	.uleb128 .LVU113
	.uleb128 0
.LLST10:
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL16
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LFE564
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 0
	.uleb128 .LVU78
	.uleb128 .LVU78
	.uleb128 .LVU103
	.uleb128 .LVU103
	.uleb128 .LVU110
	.uleb128 .LVU110
	.uleb128 .LVU113
	.uleb128 .LVU113
	.uleb128 .LVU152
	.uleb128 .LVU152
	.uleb128 0
.LLST11:
	.4byte	.LVL14
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL17
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL26
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL42
	.4byte	.LFE564
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS12:
	.uleb128 .LVU59
	.uleb128 .LVU103
	.uleb128 .LVU103
	.uleb128 .LVU110
	.uleb128 .LVU110
	.uleb128 .LVU111
	.uleb128 .LVU111
	.uleb128 .LVU113
	.uleb128 .LVU113
	.uleb128 .LVU121
	.uleb128 .LVU121
	.uleb128 .LVU138
	.uleb128 .LVU138
	.uleb128 .LVU147
	.uleb128 .LVU147
	.uleb128 0
.LLST12:
	.4byte	.LVL14
	.4byte	.LVL22
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL32
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL38
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LFE564
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS13:
	.uleb128 .LVU60
	.uleb128 .LVU101
	.uleb128 .LVU110
	.uleb128 .LVU115
	.uleb128 .LVU115
	.uleb128 .LVU137
	.uleb128 .LVU138
	.uleb128 .LVU140
	.uleb128 .LVU140
	.uleb128 .LVU141
	.uleb128 .LVU141
	.uleb128 .LVU143
	.uleb128 .LVU143
	.uleb128 .LVU144
	.uleb128 .LVU144
	.uleb128 .LVU146
	.uleb128 .LVU146
	.uleb128 .LVU148
	.uleb128 .LVU149
	.uleb128 .LVU151
.LLST13:
	.4byte	.LVL14
	.4byte	.LVL21
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL27
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS14:
	.uleb128 .LVU70
	.uleb128 .LVU74
.LLST14:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS15:
	.uleb128 .LVU80
	.uleb128 .LVU84
.LLST15:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x2
	.byte	0x75
	.sleb128 12
	.4byte	0
	.4byte	0
.LVUS16:
	.uleb128 .LVU80
	.uleb128 .LVU84
.LLST16:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS17:
	.uleb128 .LVU86
	.uleb128 .LVU92
.LLST17:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x2
	.byte	0x75
	.sleb128 24
	.4byte	0
	.4byte	0
.LVUS18:
	.uleb128 .LVU86
	.uleb128 .LVU92
.LLST18:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS19:
	.uleb128 .LVU105
	.uleb128 .LVU107
.LLST19:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LVUS20:
	.uleb128 .LVU105
	.uleb128 .LVU107
.LLST20:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS21:
	.uleb128 .LVU122
	.uleb128 .LVU138
	.uleb128 .LVU147
	.uleb128 .LVU155
	.uleb128 .LVU155
	.uleb128 .LVU160
.LLST21:
	.4byte	.LVL29
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL38
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL44
	.4byte	.LVL47
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x23
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LVUS22:
	.uleb128 .LVU122
	.uleb128 .LVU135
	.uleb128 .LVU147
	.uleb128 .LVU152
	.uleb128 .LVU152
	.uleb128 .LVU160
.LLST22:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x2
	.byte	0x75
	.sleb128 28
	.4byte	.LVL38
	.4byte	.LVL42
	.2byte	0x2
	.byte	0x75
	.sleb128 28
	.4byte	.LVL42
	.4byte	.LVL47
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x23
	.uleb128 0x1c
	.4byte	0
	.4byte	0
.LVUS23:
	.uleb128 .LVU122
	.uleb128 .LVU138
	.uleb128 .LVU147
	.uleb128 0
.LLST23:
	.4byte	.LVL29
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL38
	.4byte	.LFE564
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS24:
	.uleb128 .LVU122
	.uleb128 .LVU137
	.uleb128 .LVU147
	.uleb128 .LVU148
	.uleb128 .LVU149
	.uleb128 .LVU151
.LLST24:
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS25:
	.uleb128 .LVU122
	.uleb128 .LVU138
	.uleb128 .LVU147
	.uleb128 0
.LLST25:
	.4byte	.LVL29
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL38
	.4byte	.LFE564
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS26:
	.uleb128 .LVU153
	.uleb128 .LVU157
	.uleb128 .LVU157
	.uleb128 .LVU160
.LLST26:
	.4byte	.LVL43
	.4byte	.LVL45
	.2byte	0x7
	.byte	0x73
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL47
	.2byte	0x14
	.byte	0x70
	.sleb128 0
	.byte	0xf7
	.uleb128 0x29
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x23
	.uleb128 0x4
	.byte	0x6
	.byte	0xf7
	.uleb128 0x29
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS27:
	.uleb128 .LVU155
	.uleb128 .LVU158
	.uleb128 .LVU158
	.uleb128 0
.LLST27:
	.4byte	.LVL44
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL46
	.4byte	.LFE564
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU12
	.uleb128 .LVU12
	.uleb128 .LVU14
	.uleb128 .LVU14
	.uleb128 .LVU18
	.uleb128 .LVU18
	.uleb128 .LVU24
	.uleb128 .LVU24
	.uleb128 .LVU29
	.uleb128 .LVU29
	.uleb128 .LVU35
	.uleb128 .LVU35
	.uleb128 .LVU40
	.uleb128 .LVU40
	.uleb128 .LVU46
	.uleb128 .LVU46
	.uleb128 .LVU51
	.uleb128 .LVU51
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
	.4byte	.LVL8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL12
	.4byte	.LFE563
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 .LVU2
	.uleb128 .LVU12
	.uleb128 .LVU12
	.uleb128 .LVU14
	.uleb128 .LVU14
	.uleb128 0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL2
	.4byte	.LFE563
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 .LVU15
	.uleb128 .LVU19
.LLST2:
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x4
	.byte	0x40
	.byte	0x3d
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 .LVU21
	.uleb128 .LVU24
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x4
	.byte	0x40
	.byte	0x3d
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU26
	.uleb128 .LVU30
.LLST4:
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xa
	.2byte	0x4000
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 .LVU32
	.uleb128 .LVU35
.LLST5:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x4
	.byte	0xa
	.2byte	0x4000
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 .LVU37
	.uleb128 .LVU41
.LLST6:
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x4
	.byte	0x40
	.byte	0x3e
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 .LVU43
	.uleb128 .LVU46
.LLST7:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x4
	.byte	0x40
	.byte	0x3e
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 .LVU48
	.uleb128 .LVU52
.LLST8:
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x4
	.byte	0x40
	.byte	0x3f
	.byte	0x24
	.byte	0x9f
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
	.4byte	.LFB563
	.4byte	.LFE563-.LFB563
	.4byte	.LFB564
	.4byte	.LFE564-.LFB564
	.4byte	.LFB565
	.4byte	.LFE565-.LFB565
	.4byte	.LFB566
	.4byte	.LFE566-.LFB566
	.4byte	.LFB567
	.4byte	.LFE567-.LFB567
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB28
	.4byte	.LBE28
	.4byte	.LBB31
	.4byte	.LBE31
	.4byte	0
	.4byte	0
	.4byte	.LBB34
	.4byte	.LBE34
	.4byte	.LBB37
	.4byte	.LBE37
	.4byte	0
	.4byte	0
	.4byte	.LBB40
	.4byte	.LBE40
	.4byte	.LBB43
	.4byte	.LBE43
	.4byte	0
	.4byte	0
	.4byte	.LBB46
	.4byte	.LBE46
	.4byte	.LBB49
	.4byte	.LBE49
	.4byte	0
	.4byte	0
	.4byte	.LBB62
	.4byte	.LBE62
	.4byte	.LBB65
	.4byte	.LBE65
	.4byte	0
	.4byte	0
	.4byte	.LBB66
	.4byte	.LBE66
	.4byte	.LBB74
	.4byte	.LBE74
	.4byte	0
	.4byte	0
	.4byte	.LBB69
	.4byte	.LBE69
	.4byte	.LBB75
	.4byte	.LBE75
	.4byte	.LBB76
	.4byte	.LBE76
	.4byte	.LBB77
	.4byte	.LBE77
	.4byte	0
	.4byte	0
	.4byte	.LBB80
	.4byte	.LBE80
	.4byte	.LBB84
	.4byte	.LBE84
	.4byte	.LBB85
	.4byte	.LBE85
	.4byte	0
	.4byte	0
	.4byte	.LFB563
	.4byte	.LFE563
	.4byte	.LFB564
	.4byte	.LFE564
	.4byte	.LFB565
	.4byte	.LFE565
	.4byte	.LFB566
	.4byte	.LFE566
	.4byte	.LFB567
	.4byte	.LFE567
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF86:
	.ascii	"LL_APB2_GRP1_ReleaseReset\000"
.LASF84:
	.ascii	"periphclk\000"
.LASF65:
	.ascii	"StopBits\000"
.LASF54:
	.ascii	"GTPR\000"
.LASF75:
	.ascii	"LL_USART_ClockInitTypeDef\000"
.LASF17:
	.ascii	"PLLCFGR\000"
.LASF28:
	.ascii	"APB1RSTR1\000"
.LASF29:
	.ascii	"APB1RSTR2\000"
.LASF33:
	.ascii	"AHB2ENR\000"
.LASF3:
	.ascii	"short int\000"
.LASF68:
	.ascii	"HardwareFlowControl\000"
.LASF78:
	.ascii	"LL_USART_ClockStructInit\000"
.LASF50:
	.ascii	"BDCR\000"
.LASF74:
	.ascii	"LastBitClockPulse\000"
.LASF48:
	.ascii	"CCIPR\000"
.LASF63:
	.ascii	"BaudRate\000"
.LASF21:
	.ascii	"CIFR\000"
.LASF8:
	.ascii	"__uint32_t\000"
.LASF102:
	.ascii	"/home/joel/share/EVSPIN32G4_Shinano\000"
.LASF22:
	.ascii	"CICR\000"
.LASF5:
	.ascii	"__uint16_t\000"
.LASF57:
	.ascii	"USART_TypeDef\000"
.LASF70:
	.ascii	"LL_USART_InitTypeDef\000"
.LASF64:
	.ascii	"DataWidth\000"
.LASF24:
	.ascii	"AHB1RSTR\000"
.LASF16:
	.ascii	"CFGR\000"
.LASF12:
	.ascii	"uint8_t\000"
.LASF20:
	.ascii	"CIER\000"
.LASF76:
	.ascii	"USARTx\000"
.LASF95:
	.ascii	"LL_USART_SetHWFlowCtrl\000"
.LASF1:
	.ascii	"signed char\000"
.LASF94:
	.ascii	"brrtemp\000"
.LASF61:
	.ascii	"long double\000"
.LASF34:
	.ascii	"AHB3ENR\000"
.LASF46:
	.ascii	"APB2SMENR\000"
.LASF10:
	.ascii	"long long int\000"
.LASF88:
	.ascii	"Periphs\000"
.LASF44:
	.ascii	"APB1SMENR1\000"
.LASF45:
	.ascii	"APB1SMENR2\000"
.LASF7:
	.ascii	"long int\000"
.LASF60:
	.ascii	"ErrorStatus\000"
.LASF53:
	.ascii	"RCC_TypeDef\000"
.LASF41:
	.ascii	"AHB2SMENR\000"
.LASF71:
	.ascii	"ClockOutput\000"
.LASF30:
	.ascii	"APB2RSTR\000"
.LASF4:
	.ascii	"__uint8_t\000"
.LASF77:
	.ascii	"USART_ClockInitStruct\000"
.LASF59:
	.ascii	"ERROR\000"
.LASF90:
	.ascii	"LL_APB1_GRP1_ForceReset\000"
.LASF81:
	.ascii	"LL_USART_ClockInit\000"
.LASF97:
	.ascii	"LL_USART_SetPrescaler\000"
.LASF87:
	.ascii	"LL_APB2_GRP1_ForceReset\000"
.LASF2:
	.ascii	"unsigned char\000"
.LASF38:
	.ascii	"APB2ENR\000"
.LASF51:
	.ascii	"CRRCR\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF100:
	.ascii	"GNU C17 10.2.1 20201103 (release) -mcpu=cortex-m4 -"
	.ascii	"mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=hard -march=ar"
	.ascii	"mv7e-m+fp -g -gdwarf-2 -O3 -fdata-sections -ffuncti"
	.ascii	"on-sections\000"
.LASF14:
	.ascii	"uint32_t\000"
.LASF69:
	.ascii	"OverSampling\000"
.LASF25:
	.ascii	"AHB2RSTR\000"
.LASF82:
	.ascii	"LL_USART_Init\000"
.LASF92:
	.ascii	"PeriphClk\000"
.LASF9:
	.ascii	"long unsigned int\000"
.LASF93:
	.ascii	"usartdiv\000"
.LASF36:
	.ascii	"APB1ENR1\000"
.LASF37:
	.ascii	"APB1ENR2\000"
.LASF83:
	.ascii	"status\000"
.LASF52:
	.ascii	"CCIPR2\000"
.LASF55:
	.ascii	"RTOR\000"
.LASF15:
	.ascii	"ICSCR\000"
.LASF66:
	.ascii	"Parity\000"
.LASF13:
	.ascii	"uint16_t\000"
.LASF62:
	.ascii	"PrescalerValue\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF73:
	.ascii	"ClockPhase\000"
.LASF99:
	.ascii	"LL_RCC_GetUARTClockFreq\000"
.LASF18:
	.ascii	"RESERVED0\000"
.LASF19:
	.ascii	"RESERVED1\000"
.LASF23:
	.ascii	"RESERVED2\000"
.LASF27:
	.ascii	"RESERVED3\000"
.LASF31:
	.ascii	"RESERVED4\000"
.LASF35:
	.ascii	"RESERVED5\000"
.LASF39:
	.ascii	"RESERVED6\000"
.LASF43:
	.ascii	"RESERVED7\000"
.LASF47:
	.ascii	"RESERVED8\000"
.LASF49:
	.ascii	"RESERVED9\000"
.LASF72:
	.ascii	"ClockPolarity\000"
.LASF56:
	.ascii	"PRESC\000"
.LASF32:
	.ascii	"AHB1ENR\000"
.LASF104:
	.ascii	"LL_USART_IsEnabled\000"
.LASF80:
	.ascii	"USART_InitStruct\000"
.LASF79:
	.ascii	"LL_USART_StructInit\000"
.LASF58:
	.ascii	"SUCCESS\000"
.LASF42:
	.ascii	"AHB3SMENR\000"
.LASF89:
	.ascii	"LL_APB1_GRP1_ReleaseReset\000"
.LASF67:
	.ascii	"TransferDirection\000"
.LASF40:
	.ascii	"AHB1SMENR\000"
.LASF26:
	.ascii	"AHB3RSTR\000"
.LASF91:
	.ascii	"LL_USART_SetBaudRate\000"
.LASF85:
	.ascii	"LL_USART_DeInit\000"
.LASF0:
	.ascii	"unsigned int\000"
.LASF98:
	.ascii	"LL_RCC_GetUSARTClockFreq\000"
.LASF96:
	.ascii	"LL_USART_SetStopBitsLength\000"
.LASF103:
	.ascii	"USART_PRESCALER_TAB\000"
.LASF101:
	.ascii	"Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_ll_usart"
	.ascii	".c\000"
	.ident	"GCC: (GNU Arm Embedded Toolchain 10-2020-q4-major) 10.2.1 20201103 (release)"
