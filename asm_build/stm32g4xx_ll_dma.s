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
	.file	"stm32g4xx_ll_dma.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.LL_DMA_DeInit,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	LL_DMA_DeInit
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	LL_DMA_DeInit, %function
LL_DMA_DeInit:
.LVL0:
.LFB323:
	.file 1 "Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_ll_dma.c"
	.loc 1 146 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 147 3 view .LVU1
	.loc 1 148 3 view .LVU2
	.loc 1 151 3 view .LVU3
	.loc 1 153 3 view .LVU4
	.loc 1 153 6 is_stmt 0 view .LVU5
	cmn	r1, #65536
	beq	.L31
	.loc 1 178 5 is_stmt 1 view .LVU6
	.loc 1 178 11 is_stmt 0 view .LVU7
	ldr	r3, .L47
	cmp	r0, r3
	.loc 1 146 1 view .LVU8
	push	{r4}
.LCFI0:
	.cfi_def_cfa_offset 4
	.cfi_offset 4, -4
	.loc 1 178 11 view .LVU9
	beq	.L32
	.loc 1 178 35 discriminator 3 view .LVU10
	ldr	r3, .L47+4
	cmp	r0, r3
	beq	.L33
	.loc 1 178 35 view .LVU11
	ldr	r2, .L47+8
.L8:
.LVL1:
	.loc 1 181 5 is_stmt 1 discriminator 66 view .LVU12
.LBB34:
.LBB35:
	.file 2 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_ll_dma.h"
	.loc 2 1408 68 is_stmt 0 discriminator 66 view .LVU13
	ldr	r3, .L47+12
.LBE35:
.LBE34:
	.loc 1 181 5 discriminator 66 view .LVU14
	ldr	r4, [r2]
.LBB40:
.LBB36:
	.loc 2 1408 68 discriminator 66 view .LVU15
	eor	r3, r3, r0, lsr #10
	.loc 2 1409 3 discriminator 66 view .LVU16
	add	r3, r1, r3, lsl #3
	lsls	r3, r3, #2
.LBE36:
.LBE40:
	.loc 1 181 5 discriminator 66 view .LVU17
	bic	r4, r4, #1
.LBB41:
.LBB37:
	.loc 2 1409 3 discriminator 66 view .LVU18
	add	r3, r3, #1073741824
.LBE37:
.LBE41:
	.loc 1 181 5 discriminator 66 view .LVU19
	str	r4, [r2]
	.loc 1 184 5 is_stmt 1 discriminator 66 view .LVU20
.LBB42:
.LBB38:
	.loc 2 1409 3 is_stmt 0 discriminator 66 view .LVU21
	add	r3, r3, #133120
.LBE38:
.LBE42:
	.loc 1 184 5 discriminator 66 view .LVU22
	movs	r4, #0
	str	r4, [r2]
	.loc 1 187 5 is_stmt 1 discriminator 66 view .LVU23
	str	r4, [r2, #4]
	.loc 1 190 5 discriminator 66 view .LVU24
	str	r4, [r2, #8]
	.loc 1 193 5 discriminator 66 view .LVU25
	str	r4, [r2, #12]
	.loc 1 196 5 discriminator 66 view .LVU26
.LVL2:
.LBB43:
.LBI34:
	.loc 2 1406 22 discriminator 66 view .LVU27
.LBB39:
	.loc 2 1408 3 discriminator 66 view .LVU28
	.loc 2 1409 3 discriminator 66 view .LVU29
	ldr	r2, [r3]
.LVL3:
	.loc 2 1409 3 is_stmt 0 discriminator 66 view .LVU30
	bic	r2, r2, #255
	str	r2, [r3]
.LVL4:
	.loc 2 1409 3 discriminator 66 view .LVU31
.LBE39:
.LBE43:
	.loc 1 198 5 is_stmt 1 discriminator 66 view .LVU32
	.loc 1 198 8 is_stmt 0 discriminator 66 view .LVU33
	cbnz	r1, .L17
	.loc 1 201 7 is_stmt 1 view .LVU34
.LVL5:
.LBB44:
.LBI44:
	.loc 2 1943 22 view .LVU35
.LBB45:
	.loc 2 1945 3 view .LVU36
	movs	r3, #1
	str	r3, [r0, #4]
	.loc 2 1946 1 is_stmt 0 view .LVU37
	mov	r0, r1
.LVL6:
.L1:
	.loc 2 1946 1 view .LVU38
.LBE45:
.LBE44:
	.loc 1 250 1 view .LVU39
	ldr	r4, [sp], #4
.LCFI1:
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	bx	lr
.LVL7:
.L31:
	.loc 1 155 5 is_stmt 1 view .LVU40
	.loc 1 155 8 is_stmt 0 view .LVU41
	ldr	r3, .L47
	cmp	r0, r3
	beq	.L34
	.loc 1 163 10 is_stmt 1 view .LVU42
	.loc 1 163 13 is_stmt 0 view .LVU43
	ldr	r3, .L47+4
	cmp	r0, r3
	beq	.L5
.LBB46:
.LBB47:
	.loc 2 2021 1 view .LVU44
	movs	r0, #1
.LVL8:
	.loc 2 2021 1 view .LVU45
.LBE47:
.LBE46:
	.loc 1 250 1 view .LVU46
	bx	lr
.LVL9:
.L17:
.LCFI2:
	.cfi_def_cfa_offset 4
	.cfi_offset 4, -4
	.loc 1 203 10 is_stmt 1 view .LVU47
	.loc 1 203 13 is_stmt 0 view .LVU48
	cmp	r1, #1
	beq	.L35
	.loc 1 208 10 is_stmt 1 view .LVU49
	.loc 1 208 13 is_stmt 0 view .LVU50
	cmp	r1, #2
	beq	.L36
	.loc 1 213 10 is_stmt 1 view .LVU51
	.loc 1 213 13 is_stmt 0 view .LVU52
	cmp	r1, #3
	beq	.L37
	.loc 1 218 10 is_stmt 1 view .LVU53
	.loc 1 218 13 is_stmt 0 view .LVU54
	cmp	r1, #4
	beq	.L38
	.loc 1 224 10 is_stmt 1 view .LVU55
	.loc 1 224 13 is_stmt 0 view .LVU56
	cmp	r1, #5
	beq	.L39
.LBB50:
.LBB48:
	.loc 2 2021 1 view .LVU57
	movs	r0, #1
.LVL10:
	.loc 2 2021 1 view .LVU58
.LBE48:
.LBE50:
	.loc 1 250 1 view .LVU59
	ldr	r4, [sp], #4
.LCFI3:
	.cfi_remember_state
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	bx	lr
.LVL11:
.L32:
.LCFI4:
	.cfi_restore_state
	.loc 1 178 35 discriminator 2 view .LVU60
	cbnz	r1, .L7
	.loc 1 178 11 view .LVU61
	ldr	r2, .L47+16
	b	.L8
.L36:
	.loc 1 211 7 is_stmt 1 view .LVU62
.LVL12:
.LBB51:
.LBI51:
	.loc 2 1973 22 view .LVU63
.LBB52:
	.loc 2 1975 3 view .LVU64
	mov	r3, #256
	str	r3, [r0, #4]
	.loc 2 1976 1 is_stmt 0 view .LVU65
	mov	r0, r4
.LVL13:
	.loc 2 1976 1 view .LVU66
	b	.L1
.LVL14:
.L5:
.LCFI5:
	.cfi_def_cfa_offset 0
	.cfi_restore 4
	.loc 2 1976 1 view .LVU67
.LBE52:
.LBE51:
	.loc 1 166 7 is_stmt 1 view .LVU68
.LBB53:
.LBI53:
	.file 3 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_ll_bus.h"
	.loc 3 320 22 view .LVU69
.LBB54:
	.loc 3 322 3 view .LVU70
	ldr	r3, .L47+20
	ldr	r2, [r3, #40]
	orr	r2, r2, #2
	str	r2, [r3, #40]
.LVL15:
	.loc 3 322 3 is_stmt 0 view .LVU71
.LBE54:
.LBE53:
	.loc 1 169 7 is_stmt 1 view .LVU72
.LBB55:
.LBI55:
	.loc 3 345 22 view .LVU73
.LBB56:
	.loc 3 347 3 view .LVU74
	ldr	r2, [r3, #40]
	bic	r2, r2, #2
	.loc 3 348 1 is_stmt 0 view .LVU75
	movs	r0, #0
.LVL16:
	.loc 3 347 3 view .LVU76
	str	r2, [r3, #40]
	.loc 3 348 1 view .LVU77
	bx	lr
.LVL17:
.L33:
.LCFI6:
	.cfi_def_cfa_offset 4
	.cfi_offset 4, -4
	.loc 3 348 1 view .LVU78
.LBE56:
.LBE55:
	.loc 1 178 35 discriminator 6 view .LVU79
	cbnz	r1, .L9
	.loc 1 178 35 view .LVU80
	ldr	r2, .L47+24
	b	.L8
.L7:
	.loc 1 178 35 discriminator 10 view .LVU81
	cmp	r1, #1
	beq	.L40
	.loc 1 178 35 discriminator 18 view .LVU82
	cmp	r1, #2
	beq	.L41
	.loc 1 178 35 discriminator 26 view .LVU83
	cmp	r1, #3
	beq	.L42
	.loc 1 178 35 discriminator 34 view .LVU84
	cmp	r1, #4
	beq	.L43
	.loc 1 178 35 discriminator 41 view .LVU85
	ldr	r2, .L47+28
	ldr	r3, .L47+8
	cmp	r1, #5
	it	ne
	movne	r2, r3
	b	.L8
.L9:
	.loc 1 178 35 discriminator 14 view .LVU86
	cmp	r1, #1
	beq	.L44
	.loc 1 178 35 discriminator 22 view .LVU87
	cmp	r1, #2
	beq	.L45
	.loc 1 178 35 discriminator 30 view .LVU88
	cmp	r1, #3
	beq	.L46
	.loc 1 178 35 discriminator 38 view .LVU89
	ldr	r2, .L47+8
	ldr	r3, .L47+32
	cmp	r1, #4
	it	eq
	moveq	r2, r3
	b	.L8
.L35:
	.loc 1 206 7 is_stmt 1 view .LVU90
.LVL18:
.LBB57:
.LBI57:
	.loc 2 1958 22 view .LVU91
.LBB58:
	.loc 2 1960 3 view .LVU92
	movs	r3, #16
	str	r3, [r0, #4]
	.loc 2 1961 1 is_stmt 0 view .LVU93
	mov	r0, r4
.LVL19:
	.loc 2 1961 1 view .LVU94
.LBE58:
.LBE57:
	.loc 1 250 1 view .LVU95
	ldr	r4, [sp], #4
.LCFI7:
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	bx	lr
.LVL20:
.L34:
	.loc 1 158 7 is_stmt 1 view .LVU96
.LBB59:
.LBI59:
	.loc 3 320 22 view .LVU97
.LBB60:
	.loc 3 322 3 view .LVU98
	add	r3, r3, #4096
.LBE60:
.LBE59:
.LBB62:
.LBB63:
	.loc 3 348 1 is_stmt 0 view .LVU99
	movs	r0, #0
.LVL21:
	.loc 3 348 1 view .LVU100
.LBE63:
.LBE62:
.LBB65:
.LBB61:
	.loc 3 322 3 view .LVU101
	ldr	r2, [r3, #40]
	orr	r2, r2, #1
	str	r2, [r3, #40]
.LVL22:
	.loc 3 322 3 view .LVU102
.LBE61:
.LBE65:
	.loc 1 161 7 is_stmt 1 view .LVU103
.LBB66:
.LBI62:
	.loc 3 345 22 view .LVU104
.LBB64:
	.loc 3 347 3 view .LVU105
	ldr	r2, [r3, #40]
	bic	r2, r2, #1
	str	r2, [r3, #40]
	.loc 3 348 1 is_stmt 0 view .LVU106
	bx	lr
.LVL23:
.L43:
.LCFI8:
	.cfi_def_cfa_offset 4
	.cfi_offset 4, -4
	.loc 3 348 1 view .LVU107
.LBE64:
.LBE66:
	.loc 1 178 35 view .LVU108
	ldr	r2, .L47+36
	b	.L8
.L39:
	.loc 1 227 7 is_stmt 1 view .LVU109
.LVL24:
.LBB67:
.LBI46:
	.loc 2 2018 22 view .LVU110
.LBB49:
	.loc 2 2020 3 view .LVU111
	mov	r3, #1048576
	str	r3, [r0, #4]
	.loc 2 2021 1 is_stmt 0 view .LVU112
	mov	r0, r4
.LVL25:
	.loc 2 2021 1 view .LVU113
.LBE49:
.LBE67:
	.loc 1 249 3 is_stmt 1 view .LVU114
	.loc 1 249 10 is_stmt 0 view .LVU115
	b	.L1
.LVL26:
.L37:
	.loc 1 216 7 is_stmt 1 view .LVU116
.LBB68:
.LBI68:
	.loc 2 1988 22 view .LVU117
.LBB69:
	.loc 2 1990 3 view .LVU118
	mov	r3, #4096
	str	r3, [r0, #4]
	.loc 2 1991 1 is_stmt 0 view .LVU119
	mov	r0, r4
.LVL27:
	.loc 2 1991 1 view .LVU120
	b	.L1
.LVL28:
.L40:
	.loc 2 1991 1 view .LVU121
.LBE69:
.LBE68:
	.loc 1 178 35 view .LVU122
	ldr	r2, .L47+40
	b	.L8
.L44:
	.loc 1 178 35 view .LVU123
	ldr	r2, .L47+44
	b	.L8
.L41:
	.loc 1 178 35 view .LVU124
	ldr	r2, .L47+48
	b	.L8
.L45:
	.loc 1 178 35 view .LVU125
	ldr	r2, .L47+52
	b	.L8
.L38:
	.loc 1 221 7 is_stmt 1 view .LVU126
.LVL29:
.LBB70:
.LBI70:
	.loc 2 2003 22 view .LVU127
.LBB71:
	.loc 2 2005 3 view .LVU128
	mov	r3, #65536
	str	r3, [r0, #4]
	.loc 2 2006 1 is_stmt 0 view .LVU129
	mov	r0, r4
.LVL30:
	.loc 2 2006 1 view .LVU130
	b	.L1
.LVL31:
.L42:
	.loc 2 2006 1 view .LVU131
.LBE71:
.LBE70:
	.loc 1 178 35 view .LVU132
	ldr	r2, .L47+56
	b	.L8
.L46:
	.loc 1 178 35 view .LVU133
	ldr	r2, .L47+60
	b	.L8
.L48:
	.align	2
.L47:
	.word	1073872896
	.word	1073873920
	.word	1073874028
	.word	1048704
	.word	1073872904
	.word	1073876992
	.word	1073873928
	.word	1073873004
	.word	1073874008
	.word	1073872984
	.word	1073872924
	.word	1073873948
	.word	1073872944
	.word	1073873968
	.word	1073872964
	.word	1073873988
	.cfi_endproc
.LFE323:
	.size	LL_DMA_DeInit, .-LL_DMA_DeInit
	.section	.text.LL_DMA_Init,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	LL_DMA_Init
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	LL_DMA_Init, %function
LL_DMA_Init:
.LVL32:
.LFB324:
	.loc 1 274 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 274 1 is_stmt 0 view .LVU135
	push	{r4, r5, lr}
.LCFI9:
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
.LBB72:
.LBB73:
	.loc 2 602 3 view .LVU136
	ldr	r4, .L51
.LBE73:
.LBE72:
	.loc 1 276 3 is_stmt 1 view .LVU137
	.loc 1 279 3 view .LVU138
	.loc 1 280 3 view .LVU139
	.loc 1 281 3 view .LVU140
	.loc 1 282 3 view .LVU141
	.loc 1 283 3 view .LVU142
	.loc 1 284 3 view .LVU143
	.loc 1 285 3 view .LVU144
	.loc 1 286 3 view .LVU145
	.loc 1 287 3 view .LVU146
	.loc 1 301 3 view .LVU147
.LVL33:
.LBB79:
.LBI72:
	.loc 2 599 22 view .LVU148
.LBB74:
	.loc 2 601 3 view .LVU149
	.loc 2 602 3 view .LVU150
.LBE74:
.LBE79:
	.loc 1 305 64 is_stmt 0 view .LVU151
	ldr	r5, [r2, #28]
.LBB80:
.LBB75:
	.loc 2 602 3 view .LVU152
	ldrb	lr, [r4, r1]	@ zero_extendqisi2
.LBE75:
.LBE80:
	.loc 1 301 79 view .LVU153
	ldrd	r3, r4, [r2, #8]
	orrs	r3, r3, r4
	.loc 1 302 64 view .LVU154
	ldr	r4, [r2, #16]
	orrs	r3, r3, r4
.LVL34:
	.loc 1 303 64 view .LVU155
	ldr	r4, [r2, #20]
	orrs	r3, r3, r4
.LVL35:
	.loc 1 304 64 view .LVU156
	ldr	r4, [r2, #24]
	orrs	r3, r3, r4
.LBB81:
.LBB76:
	.loc 2 602 3 view .LVU157
	ldr	r4, [lr, r0]
.LBE76:
.LBE81:
	.loc 1 305 64 view .LVU158
	orrs	r3, r3, r5
	.loc 1 301 3 view .LVU159
	ldr	r5, [r2, #40]
.LBB82:
.LBB77:
	.loc 2 602 3 view .LVU160
	bic	r4, r4, #32640
	bic	r4, r4, #112
.LBE77:
.LBE82:
	.loc 1 301 3 view .LVU161
	orrs	r3, r3, r5
.LBB83:
.LBB78:
	.loc 2 602 3 view .LVU162
	add	ip, lr, r0
	orrs	r3, r3, r4
	str	r3, [lr, r0]
.LVL36:
	.loc 2 602 3 view .LVU163
.LBE78:
.LBE83:
	.loc 1 313 3 is_stmt 1 view .LVU164
	ldr	r3, [r2, #4]
.LVL37:
.LBB84:
.LBI84:
	.loc 2 1092 22 view .LVU165
.LBB85:
	.loc 2 1094 3 view .LVU166
	.loc 2 1095 3 view .LVU167
	str	r3, [ip, #12]
.LVL38:
	.loc 2 1095 3 is_stmt 0 view .LVU168
.LBE85:
.LBE84:
	.loc 1 319 3 is_stmt 1 view .LVU169
	ldr	r3, [r2]
.LVL39:
.LBB86:
.LBI86:
	.loc 2 1117 22 view .LVU170
.LBB87:
	.loc 2 1119 3 view .LVU171
	.loc 2 1120 3 view .LVU172
	str	r3, [ip, #8]
.LVL40:
	.loc 2 1120 3 is_stmt 0 view .LVU173
.LBE87:
.LBE86:
	.loc 1 325 3 is_stmt 1 view .LVU174
.LBB88:
.LBI88:
	.loc 2 997 22 view .LVU175
.LBB89:
	.loc 2 999 3 view .LVU176
	.loc 2 1000 3 view .LVU177
.LBE89:
.LBE88:
.LBB94:
.LBB95:
	.loc 2 1408 68 is_stmt 0 view .LVU178
	ldr	r3, .L51+4
.LBE95:
.LBE94:
.LBB101:
.LBB90:
	.loc 2 1000 3 view .LVU179
	ldr	r4, [ip, #4]
.LBE90:
.LBE101:
.LBB102:
.LBB96:
	.loc 2 1408 68 view .LVU180
	eor	r3, r3, r0, lsr #10
	.loc 2 1409 3 view .LVU181
	add	r3, r1, r3, lsl #3
	ldrd	r0, r1, [r2, #32]
.LVL41:
	.loc 2 1409 3 view .LVU182
.LBE96:
.LBE102:
.LBB103:
.LBB91:
	.loc 2 1000 3 view .LVU183
	lsr	lr, r4, #16
.LBE91:
.LBE103:
.LBB104:
.LBB97:
	.loc 2 1409 3 view .LVU184
	lsls	r3, r3, #2
.LBE97:
.LBE104:
.LBB105:
.LBB92:
	.loc 2 1000 3 view .LVU185
	lsl	lr, lr, #16
.LBE92:
.LBE105:
.LBB106:
.LBB98:
	.loc 2 1409 3 view .LVU186
	add	r3, r3, #1073741824
	add	r3, r3, #133120
.LBE98:
.LBE106:
.LBB107:
.LBB93:
	.loc 2 1000 3 view .LVU187
	orr	r0, lr, r0
	str	r0, [ip, #4]
.LVL42:
	.loc 2 1000 3 view .LVU188
.LBE93:
.LBE107:
	.loc 1 331 3 is_stmt 1 view .LVU189
.LBB108:
.LBI94:
	.loc 2 1406 22 view .LVU190
.LBB99:
	.loc 2 1408 3 view .LVU191
	.loc 2 1409 3 view .LVU192
	ldr	r2, [r3]
.LVL43:
	.loc 2 1409 3 is_stmt 0 view .LVU193
	bic	r2, r2, #255
	orrs	r2, r2, r1
.LBE99:
.LBE108:
	.loc 1 334 1 view .LVU194
	movs	r0, #0
.LBB109:
.LBB100:
	.loc 2 1409 3 view .LVU195
	str	r2, [r3]
.LVL44:
	.loc 2 1409 3 view .LVU196
.LBE100:
.LBE109:
	.loc 1 333 3 is_stmt 1 view .LVU197
	.loc 1 334 1 is_stmt 0 view .LVU198
	pop	{r4, r5, pc}
.L52:
	.align	2
.L51:
	.word	.LANCHOR0
	.word	1048704
	.cfi_endproc
.LFE324:
	.size	LL_DMA_Init, .-LL_DMA_Init
	.section	.text.LL_DMA_StructInit,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	LL_DMA_StructInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	LL_DMA_StructInit, %function
LL_DMA_StructInit:
.LVL45:
.LFB325:
	.loc 1 342 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 344 3 view .LVU200
	.loc 1 344 42 is_stmt 0 view .LVU201
	movs	r3, #0
	.loc 1 345 42 view .LVU202
	strd	r3, r3, [r0]
	.loc 1 346 3 is_stmt 1 view .LVU203
	.loc 1 347 42 is_stmt 0 view .LVU204
	strd	r3, r3, [r0, #8]
	.loc 1 348 3 is_stmt 1 view .LVU205
	.loc 1 349 42 is_stmt 0 view .LVU206
	strd	r3, r3, [r0, #16]
	.loc 1 350 3 is_stmt 1 view .LVU207
	.loc 1 351 42 is_stmt 0 view .LVU208
	strd	r3, r3, [r0, #24]
	.loc 1 352 3 is_stmt 1 view .LVU209
	.loc 1 353 42 is_stmt 0 view .LVU210
	strd	r3, r3, [r0, #32]
	.loc 1 354 3 is_stmt 1 view .LVU211
	.loc 1 354 42 is_stmt 0 view .LVU212
	str	r3, [r0, #40]
	.loc 1 355 1 view .LVU213
	bx	lr
	.cfi_endproc
.LFE325:
	.size	LL_DMA_StructInit, .-LL_DMA_StructInit
	.section	.rodata.CHANNEL_OFFSET_TAB,"a"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	CHANNEL_OFFSET_TAB, %object
	.size	CHANNEL_OFFSET_TAB, 6
CHANNEL_OFFSET_TAB:
	.ascii	"\010\0340DXl"
	.text
.Letext0:
	.file 4 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/machine/_default_types.h"
	.file 5 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/sys/_stdint.h"
	.file 6 "Drivers/CMSIS/Device/ST/STM32G4xx/Include/stm32g431xx.h"
	.file 7 "Drivers/CMSIS/Device/ST/STM32G4xx/Include/stm32g4xx.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xb97
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF99
	.byte	0xc
	.4byte	.LASF100
	.4byte	.LASF101
	.4byte	.Ldebug_ranges0+0x120
	.4byte	0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x4
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
	.byte	0x4
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
	.byte	0x5
	.byte	0x18
	.byte	0x13
	.4byte	0x30
	.uleb128 0x5
	.4byte	0x87
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x5
	.byte	0x30
	.byte	0x14
	.4byte	0x58
	.uleb128 0x6
	.4byte	0x98
	.uleb128 0x7
	.byte	0x10
	.byte	0x6
	.2byte	0x167
	.byte	0x9
	.4byte	0xf4
	.uleb128 0x8
	.ascii	"CCR\000"
	.byte	0x6
	.2byte	0x169
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF13
	.byte	0x6
	.2byte	0x16a
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF14
	.byte	0x6
	.2byte	0x16b
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF15
	.byte	0x6
	.2byte	0x16c
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0xa
	.4byte	.LASF16
	.byte	0x6
	.2byte	0x16d
	.byte	0x3
	.4byte	0xa9
	.uleb128 0x7
	.byte	0x8
	.byte	0x6
	.2byte	0x16f
	.byte	0x9
	.4byte	0x12c
	.uleb128 0x8
	.ascii	"ISR\000"
	.byte	0x6
	.2byte	0x171
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x6
	.2byte	0x172
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0x6
	.2byte	0x173
	.byte	0x3
	.4byte	0x101
	.uleb128 0x7
	.byte	0x4
	.byte	0x6
	.2byte	0x179
	.byte	0x9
	.4byte	0x154
	.uleb128 0x8
	.ascii	"CCR\000"
	.byte	0x6
	.2byte	0x17b
	.byte	0x13
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x6
	.2byte	0x17c
	.byte	0x2
	.4byte	0x139
	.uleb128 0x7
	.byte	0xa0
	.byte	0x6
	.2byte	0x23f
	.byte	0x9
	.4byte	0x3f3
	.uleb128 0x8
	.ascii	"CR\000"
	.byte	0x6
	.2byte	0x241
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x6
	.2byte	0x242
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x6
	.2byte	0x243
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x6
	.2byte	0x244
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x6
	.2byte	0x245
	.byte	0x11
	.4byte	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x6
	.2byte	0x246
	.byte	0x11
	.4byte	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x6
	.2byte	0x247
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x6
	.2byte	0x248
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x6
	.2byte	0x249
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x6
	.2byte	0x24a
	.byte	0x11
	.4byte	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x6
	.2byte	0x24b
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x6
	.2byte	0x24c
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x6
	.2byte	0x24d
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.4byte	.LASF32
	.byte	0x6
	.2byte	0x24e
	.byte	0x11
	.4byte	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x6
	.2byte	0x24f
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x6
	.2byte	0x250
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x6
	.2byte	0x251
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x6
	.2byte	0x252
	.byte	0x11
	.4byte	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x6
	.2byte	0x253
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x6
	.2byte	0x254
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0x6
	.2byte	0x255
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0x6
	.2byte	0x256
	.byte	0x11
	.4byte	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x6
	.2byte	0x257
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x6
	.2byte	0x258
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x6
	.2byte	0x259
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0x6
	.2byte	0x25a
	.byte	0x11
	.4byte	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x6
	.2byte	0x25b
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x6
	.2byte	0x25c
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x9
	.4byte	.LASF47
	.byte	0x6
	.2byte	0x25d
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x9
	.4byte	.LASF48
	.byte	0x6
	.2byte	0x25e
	.byte	0x11
	.4byte	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x9
	.4byte	.LASF49
	.byte	0x6
	.2byte	0x25f
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0x6
	.2byte	0x260
	.byte	0x11
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0x6
	.2byte	0x261
	.byte	0x11
	.4byte	0xa4
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x9
	.4byte	.LASF52
	.byte	0x6
	.2byte	0x262
	.byte	0x11
	.4byte	0x98
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x9
	.4byte	.LASF53
	.byte	0x6
	.2byte	0x263
	.byte	0x11
	.4byte	0xa4
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x9
	.4byte	.LASF54
	.byte	0x6
	.2byte	0x264
	.byte	0x11
	.4byte	0x98
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0x6
	.2byte	0x265
	.byte	0x11
	.4byte	0xa4
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x8
	.ascii	"CSR\000"
	.byte	0x6
	.2byte	0x266
	.byte	0x11
	.4byte	0xa4
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0x6
	.2byte	0x267
	.byte	0x11
	.4byte	0xa4
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x9
	.4byte	.LASF57
	.byte	0x6
	.2byte	0x268
	.byte	0x11
	.4byte	0xa4
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.byte	0
	.uleb128 0xa
	.4byte	.LASF58
	.byte	0x6
	.2byte	0x269
	.byte	0x3
	.4byte	0x161
	.uleb128 0xb
	.byte	0x7
	.byte	0x1
	.4byte	0x3c
	.byte	0x7
	.byte	0x97
	.byte	0x1
	.4byte	0x41b
	.uleb128 0xc
	.4byte	.LASF59
	.byte	0
	.uleb128 0xc
	.4byte	.LASF60
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF61
	.byte	0x7
	.byte	0x9a
	.byte	0x3
	.4byte	0x400
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF62
	.uleb128 0xd
	.byte	0x4
	.4byte	0xf4
	.uleb128 0xd
	.byte	0x4
	.4byte	0x12c
	.uleb128 0xe
	.4byte	0x93
	.4byte	0x44a
	.uleb128 0xf
	.4byte	0x80
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.4byte	0x43a
	.uleb128 0x10
	.4byte	.LASF102
	.byte	0x2
	.byte	0x2f
	.byte	0x16
	.4byte	0x44a
	.byte	0x5
	.byte	0x3
	.4byte	CHANNEL_OFFSET_TAB
	.uleb128 0x11
	.byte	0x2c
	.byte	0x2
	.byte	0x60
	.byte	0x9
	.4byte	0x510
	.uleb128 0x12
	.4byte	.LASF63
	.byte	0x2
	.byte	0x62
	.byte	0xc
	.4byte	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.4byte	.LASF64
	.byte	0x2
	.byte	0x67
	.byte	0xc
	.4byte	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.4byte	.LASF65
	.byte	0x2
	.byte	0x6c
	.byte	0xc
	.4byte	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.4byte	.LASF66
	.byte	0x2
	.byte	0x72
	.byte	0xc
	.4byte	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x12
	.4byte	.LASF67
	.byte	0x2
	.byte	0x79
	.byte	0xc
	.4byte	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.4byte	.LASF68
	.byte	0x2
	.byte	0x7f
	.byte	0xc
	.4byte	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x12
	.4byte	.LASF69
	.byte	0x2
	.byte	0x85
	.byte	0xc
	.4byte	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x12
	.4byte	.LASF70
	.byte	0x2
	.byte	0x8b
	.byte	0xc
	.4byte	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x12
	.4byte	.LASF71
	.byte	0x2
	.byte	0x91
	.byte	0xc
	.4byte	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x12
	.4byte	.LASF72
	.byte	0x2
	.byte	0x98
	.byte	0xc
	.4byte	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x12
	.4byte	.LASF73
	.byte	0x2
	.byte	0x9d
	.byte	0xc
	.4byte	0x98
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.4byte	.LASF74
	.byte	0x2
	.byte	0xa2
	.byte	0x3
	.4byte	0x461
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x155
	.byte	0x6
	.byte	0x1
	.4byte	.LFB325
	.4byte	.LFE325
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x547
	.uleb128 0x14
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x155
	.byte	0x2c
	.4byte	0x547
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x510
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x111
	.byte	0xa
	.byte	0x1
	.4byte	0x98
	.4byte	.LFB324
	.4byte	.LFE324
	.4byte	.LLST18
	.byte	0x1
	.4byte	0x732
	.uleb128 0x16
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x111
	.byte	0x23
	.4byte	0x434
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0x16
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x111
	.byte	0x32
	.4byte	0x98
	.4byte	.LLST20
	.4byte	.LVUS20
	.uleb128 0x16
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x111
	.byte	0x4f
	.4byte	0x547
	.4byte	.LLST21
	.4byte	.LVUS21
	.uleb128 0x17
	.4byte	0xb5a
	.4byte	.LBI72
	.byte	.LVU148
	.4byte	.Ldebug_ranges0+0x80
	.byte	0x1
	.2byte	0x12d
	.byte	0x3
	.4byte	0x5fd
	.uleb128 0x18
	.4byte	0xb7f
	.4byte	.LLST22
	.4byte	.LVUS22
	.uleb128 0x18
	.4byte	0xb72
	.4byte	.LLST23
	.4byte	.LVUS23
	.uleb128 0x18
	.4byte	0xb65
	.4byte	.LLST24
	.4byte	.LVUS24
	.uleb128 0x19
	.4byte	.Ldebug_ranges0+0x80
	.uleb128 0x1a
	.4byte	0xb8c
	.4byte	.LLST25
	.4byte	.LVUS25
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	0xad2
	.4byte	.LBI84
	.byte	.LVU165
	.4byte	.LBB84
	.4byte	.LBE84
	.byte	0x1
	.2byte	0x139
	.byte	0x3
	.4byte	0x64c
	.uleb128 0x18
	.4byte	0xafb
	.4byte	.LLST26
	.4byte	.LVUS26
	.uleb128 0x18
	.4byte	0xaee
	.4byte	.LLST27
	.4byte	.LVUS27
	.uleb128 0x18
	.4byte	0xae1
	.4byte	.LLST28
	.4byte	.LVUS28
	.uleb128 0x1a
	.4byte	0xb08
	.4byte	.LLST29
	.4byte	.LVUS29
	.byte	0
	.uleb128 0x1b
	.4byte	0xa8e
	.4byte	.LBI86
	.byte	.LVU170
	.4byte	.LBB86
	.4byte	.LBE86
	.byte	0x1
	.2byte	0x13f
	.byte	0x3
	.4byte	0x69b
	.uleb128 0x18
	.4byte	0xab7
	.4byte	.LLST30
	.4byte	.LVUS30
	.uleb128 0x18
	.4byte	0xaaa
	.4byte	.LLST31
	.4byte	.LVUS31
	.uleb128 0x18
	.4byte	0xa9d
	.4byte	.LLST32
	.4byte	.LVUS32
	.uleb128 0x1a
	.4byte	0xac4
	.4byte	.LLST33
	.4byte	.LVUS33
	.byte	0
	.uleb128 0x17
	.4byte	0xb16
	.4byte	.LBI88
	.byte	.LVU175
	.4byte	.Ldebug_ranges0+0xb8
	.byte	0x1
	.2byte	0x145
	.byte	0x3
	.4byte	0x6ec
	.uleb128 0x18
	.4byte	0xb3f
	.4byte	.LLST34
	.4byte	.LVUS34
	.uleb128 0x18
	.4byte	0xb32
	.4byte	.LLST35
	.4byte	.LVUS35
	.uleb128 0x18
	.4byte	0xb25
	.4byte	.LLST36
	.4byte	.LVUS36
	.uleb128 0x19
	.4byte	.Ldebug_ranges0+0xb8
	.uleb128 0x1a
	.4byte	0xb4c
	.4byte	.LLST37
	.4byte	.LVUS37
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	0xa4a
	.4byte	.LBI94
	.byte	.LVU190
	.4byte	.Ldebug_ranges0+0xe8
	.byte	0x1
	.2byte	0x14b
	.byte	0x3
	.uleb128 0x1d
	.4byte	0xa73
	.uleb128 0x18
	.4byte	0xa66
	.4byte	.LLST38
	.4byte	.LVUS38
	.uleb128 0x18
	.4byte	0xa59
	.4byte	.LLST39
	.4byte	.LVUS39
	.uleb128 0x19
	.4byte	.Ldebug_ranges0+0xe8
	.uleb128 0x1a
	.4byte	0xa80
	.4byte	.LLST40
	.4byte	.LVUS40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.4byte	.LASF79
	.byte	0x1
	.byte	0x91
	.byte	0xa
	.byte	0x1
	.4byte	0x98
	.4byte	.LFB323
	.4byte	.LFE323
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x962
	.uleb128 0x1f
	.4byte	.LASF75
	.byte	0x1
	.byte	0x91
	.byte	0x25
	.4byte	0x434
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x20
	.4byte	.LASF76
	.byte	0x1
	.byte	0x91
	.byte	0x34
	.4byte	0x98
	.byte	0x1
	.byte	0x51
	.uleb128 0x21
	.ascii	"tmp\000"
	.byte	0x1
	.byte	0x93
	.byte	0x18
	.4byte	0x42e
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x22
	.4byte	.LASF80
	.byte	0x1
	.byte	0x94
	.byte	0xf
	.4byte	0x41b
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x23
	.4byte	0xa4a
	.4byte	.LBI34
	.byte	.LVU27
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xc4
	.byte	0x5
	.4byte	0x7eb
	.uleb128 0x18
	.4byte	0xa73
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x18
	.4byte	0xa66
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x18
	.4byte	0xa59
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x19
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x1a
	.4byte	0xa80
	.4byte	.LLST7
	.4byte	.LVUS7
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	0xa2d
	.4byte	.LBI44
	.byte	.LVU35
	.4byte	.LBB44
	.4byte	.LBE44
	.byte	0x1
	.byte	0xc9
	.byte	0x7
	.4byte	0x812
	.uleb128 0x18
	.4byte	0xa3c
	.4byte	.LLST8
	.4byte	.LVUS8
	.byte	0
	.uleb128 0x23
	.4byte	0x99c
	.4byte	.LBI46
	.byte	.LVU110
	.4byte	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0xe3
	.byte	0x7
	.4byte	0x835
	.uleb128 0x18
	.4byte	0x9ab
	.4byte	.LLST9
	.4byte	.LVUS9
	.byte	0
	.uleb128 0x24
	.4byte	0x9f3
	.4byte	.LBI51
	.byte	.LVU63
	.4byte	.LBB51
	.4byte	.LBE51
	.byte	0x1
	.byte	0xd3
	.byte	0x7
	.4byte	0x85c
	.uleb128 0x18
	.4byte	0xa02
	.4byte	.LLST10
	.4byte	.LVUS10
	.byte	0
	.uleb128 0x24
	.4byte	0x97f
	.4byte	.LBI53
	.byte	.LVU69
	.4byte	.LBB53
	.4byte	.LBE53
	.byte	0x1
	.byte	0xa6
	.byte	0x7
	.4byte	0x883
	.uleb128 0x18
	.4byte	0x98e
	.4byte	.LLST11
	.4byte	.LVUS11
	.byte	0
	.uleb128 0x24
	.4byte	0x962
	.4byte	.LBI55
	.byte	.LVU73
	.4byte	.LBB55
	.4byte	.LBE55
	.byte	0x1
	.byte	0xa9
	.byte	0x7
	.4byte	0x8aa
	.uleb128 0x18
	.4byte	0x971
	.4byte	.LLST12
	.4byte	.LVUS12
	.byte	0
	.uleb128 0x24
	.4byte	0xa10
	.4byte	.LBI57
	.byte	.LVU91
	.4byte	.LBB57
	.4byte	.LBE57
	.byte	0x1
	.byte	0xce
	.byte	0x7
	.4byte	0x8d1
	.uleb128 0x18
	.4byte	0xa1f
	.4byte	.LLST13
	.4byte	.LVUS13
	.byte	0
	.uleb128 0x23
	.4byte	0x97f
	.4byte	.LBI59
	.byte	.LVU97
	.4byte	.Ldebug_ranges0+0x50
	.byte	0x1
	.byte	0x9e
	.byte	0x7
	.4byte	0x8f4
	.uleb128 0x18
	.4byte	0x98e
	.4byte	.LLST14
	.4byte	.LVUS14
	.byte	0
	.uleb128 0x23
	.4byte	0x962
	.4byte	.LBI62
	.byte	.LVU104
	.4byte	.Ldebug_ranges0+0x68
	.byte	0x1
	.byte	0xa1
	.byte	0x7
	.4byte	0x917
	.uleb128 0x18
	.4byte	0x971
	.4byte	.LLST15
	.4byte	.LVUS15
	.byte	0
	.uleb128 0x24
	.4byte	0x9d6
	.4byte	.LBI68
	.byte	.LVU117
	.4byte	.LBB68
	.4byte	.LBE68
	.byte	0x1
	.byte	0xd8
	.byte	0x7
	.4byte	0x93e
	.uleb128 0x18
	.4byte	0x9e5
	.4byte	.LLST16
	.4byte	.LVUS16
	.byte	0
	.uleb128 0x25
	.4byte	0x9b9
	.4byte	.LBI70
	.byte	.LVU127
	.4byte	.LBB70
	.4byte	.LBE70
	.byte	0x1
	.byte	0xdd
	.byte	0x7
	.uleb128 0x18
	.4byte	0x9c8
	.4byte	.LLST17
	.4byte	.LVUS17
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF81
	.byte	0x3
	.2byte	0x159
	.byte	0x16
	.byte	0x1
	.byte	0x3
	.4byte	0x97f
	.uleb128 0x27
	.4byte	.LASF83
	.byte	0x3
	.2byte	0x159
	.byte	0x39
	.4byte	0x98
	.byte	0
	.uleb128 0x26
	.4byte	.LASF82
	.byte	0x3
	.2byte	0x140
	.byte	0x16
	.byte	0x1
	.byte	0x3
	.4byte	0x99c
	.uleb128 0x27
	.4byte	.LASF83
	.byte	0x3
	.2byte	0x140
	.byte	0x37
	.4byte	0x98
	.byte	0
	.uleb128 0x26
	.4byte	.LASF84
	.byte	0x2
	.2byte	0x7e2
	.byte	0x16
	.byte	0x1
	.byte	0x3
	.4byte	0x9b9
	.uleb128 0x27
	.4byte	.LASF75
	.byte	0x2
	.2byte	0x7e2
	.byte	0x38
	.4byte	0x434
	.byte	0
	.uleb128 0x26
	.4byte	.LASF85
	.byte	0x2
	.2byte	0x7d3
	.byte	0x16
	.byte	0x1
	.byte	0x3
	.4byte	0x9d6
	.uleb128 0x27
	.4byte	.LASF75
	.byte	0x2
	.2byte	0x7d3
	.byte	0x38
	.4byte	0x434
	.byte	0
	.uleb128 0x26
	.4byte	.LASF86
	.byte	0x2
	.2byte	0x7c4
	.byte	0x16
	.byte	0x1
	.byte	0x3
	.4byte	0x9f3
	.uleb128 0x27
	.4byte	.LASF75
	.byte	0x2
	.2byte	0x7c4
	.byte	0x38
	.4byte	0x434
	.byte	0
	.uleb128 0x26
	.4byte	.LASF87
	.byte	0x2
	.2byte	0x7b5
	.byte	0x16
	.byte	0x1
	.byte	0x3
	.4byte	0xa10
	.uleb128 0x27
	.4byte	.LASF75
	.byte	0x2
	.2byte	0x7b5
	.byte	0x38
	.4byte	0x434
	.byte	0
	.uleb128 0x26
	.4byte	.LASF88
	.byte	0x2
	.2byte	0x7a6
	.byte	0x16
	.byte	0x1
	.byte	0x3
	.4byte	0xa2d
	.uleb128 0x27
	.4byte	.LASF75
	.byte	0x2
	.2byte	0x7a6
	.byte	0x38
	.4byte	0x434
	.byte	0
	.uleb128 0x26
	.4byte	.LASF89
	.byte	0x2
	.2byte	0x797
	.byte	0x16
	.byte	0x1
	.byte	0x3
	.4byte	0xa4a
	.uleb128 0x27
	.4byte	.LASF75
	.byte	0x2
	.2byte	0x797
	.byte	0x38
	.4byte	0x434
	.byte	0
	.uleb128 0x26
	.4byte	.LASF90
	.byte	0x2
	.2byte	0x57e
	.byte	0x16
	.byte	0x1
	.byte	0x3
	.4byte	0xa8e
	.uleb128 0x27
	.4byte	.LASF75
	.byte	0x2
	.2byte	0x57e
	.byte	0x3b
	.4byte	0x434
	.uleb128 0x27
	.4byte	.LASF76
	.byte	0x2
	.2byte	0x57e
	.byte	0x4a
	.4byte	0x98
	.uleb128 0x27
	.4byte	.LASF72
	.byte	0x2
	.2byte	0x57e
	.byte	0x5c
	.4byte	0x98
	.uleb128 0x28
	.4byte	.LASF93
	.byte	0x2
	.2byte	0x580
	.byte	0xc
	.4byte	0x98
	.byte	0
	.uleb128 0x26
	.4byte	.LASF91
	.byte	0x2
	.2byte	0x45d
	.byte	0x16
	.byte	0x1
	.byte	0x3
	.4byte	0xad2
	.uleb128 0x27
	.4byte	.LASF75
	.byte	0x2
	.2byte	0x45d
	.byte	0x3b
	.4byte	0x434
	.uleb128 0x27
	.4byte	.LASF76
	.byte	0x2
	.2byte	0x45d
	.byte	0x4a
	.4byte	0x98
	.uleb128 0x27
	.4byte	.LASF92
	.byte	0x2
	.2byte	0x45d
	.byte	0x5c
	.4byte	0x98
	.uleb128 0x28
	.4byte	.LASF94
	.byte	0x2
	.2byte	0x45f
	.byte	0xc
	.4byte	0x98
	.byte	0
	.uleb128 0x26
	.4byte	.LASF95
	.byte	0x2
	.2byte	0x444
	.byte	0x16
	.byte	0x1
	.byte	0x3
	.4byte	0xb16
	.uleb128 0x27
	.4byte	.LASF75
	.byte	0x2
	.2byte	0x444
	.byte	0x3b
	.4byte	0x434
	.uleb128 0x27
	.4byte	.LASF76
	.byte	0x2
	.2byte	0x444
	.byte	0x4a
	.4byte	0x98
	.uleb128 0x27
	.4byte	.LASF96
	.byte	0x2
	.2byte	0x444
	.byte	0x5c
	.4byte	0x98
	.uleb128 0x28
	.4byte	.LASF94
	.byte	0x2
	.2byte	0x446
	.byte	0xc
	.4byte	0x98
	.byte	0
	.uleb128 0x26
	.4byte	.LASF97
	.byte	0x2
	.2byte	0x3e5
	.byte	0x16
	.byte	0x1
	.byte	0x3
	.4byte	0xb5a
	.uleb128 0x27
	.4byte	.LASF75
	.byte	0x2
	.2byte	0x3e5
	.byte	0x38
	.4byte	0x434
	.uleb128 0x27
	.4byte	.LASF76
	.byte	0x2
	.2byte	0x3e5
	.byte	0x47
	.4byte	0x98
	.uleb128 0x27
	.4byte	.LASF71
	.byte	0x2
	.2byte	0x3e5
	.byte	0x59
	.4byte	0x98
	.uleb128 0x28
	.4byte	.LASF94
	.byte	0x2
	.2byte	0x3e7
	.byte	0xc
	.4byte	0x98
	.byte	0
	.uleb128 0x29
	.4byte	.LASF104
	.byte	0x2
	.2byte	0x257
	.byte	0x16
	.byte	0x1
	.byte	0x3
	.uleb128 0x27
	.4byte	.LASF75
	.byte	0x2
	.2byte	0x257
	.byte	0x39
	.4byte	0x434
	.uleb128 0x27
	.4byte	.LASF76
	.byte	0x2
	.2byte	0x257
	.byte	0x48
	.4byte	0x98
	.uleb128 0x27
	.4byte	.LASF98
	.byte	0x2
	.2byte	0x257
	.byte	0x5a
	.4byte	0x98
	.uleb128 0x28
	.4byte	.LASF94
	.byte	0x2
	.2byte	0x259
	.byte	0xc
	.4byte	0x98
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x12
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
	.uleb128 0x14
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST18:
	.4byte	.LFB324
	.4byte	.LCFI9
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI9
	.4byte	.LFE324
	.2byte	0x2
	.byte	0x7d
	.sleb128 12
	.4byte	0
	.4byte	0
.LVUS19:
	.uleb128 0
	.uleb128 .LVU182
	.uleb128 .LVU182
	.uleb128 0
.LLST19:
	.4byte	.LVL32
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL41
	.4byte	.LFE324
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS20:
	.uleb128 0
	.uleb128 .LVU182
	.uleb128 .LVU182
	.uleb128 0
.LLST20:
	.4byte	.LVL32
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL41
	.4byte	.LFE324
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS21:
	.uleb128 0
	.uleb128 .LVU193
	.uleb128 .LVU193
	.uleb128 0
.LLST21:
	.4byte	.LVL32
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL43
	.4byte	.LFE324
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS22:
	.uleb128 .LVU148
	.uleb128 .LVU155
	.uleb128 .LVU155
	.uleb128 .LVU156
	.uleb128 .LVU156
	.uleb128 .LVU163
.LLST22:
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1c
	.byte	0x72
	.sleb128 8
	.byte	0x6
	.byte	0x72
	.sleb128 12
	.byte	0x6
	.byte	0x21
	.byte	0x72
	.sleb128 16
	.byte	0x6
	.byte	0x21
	.byte	0x72
	.sleb128 20
	.byte	0x6
	.byte	0x21
	.byte	0x72
	.sleb128 24
	.byte	0x6
	.byte	0x21
	.byte	0x72
	.sleb128 28
	.byte	0x6
	.byte	0x21
	.byte	0x72
	.sleb128 40
	.byte	0x6
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x13
	.byte	0x73
	.sleb128 0
	.byte	0x72
	.sleb128 20
	.byte	0x6
	.byte	0x21
	.byte	0x72
	.sleb128 24
	.byte	0x6
	.byte	0x21
	.byte	0x72
	.sleb128 28
	.byte	0x6
	.byte	0x21
	.byte	0x72
	.sleb128 40
	.byte	0x6
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1c
	.byte	0x72
	.sleb128 8
	.byte	0x6
	.byte	0x72
	.sleb128 12
	.byte	0x6
	.byte	0x21
	.byte	0x72
	.sleb128 16
	.byte	0x6
	.byte	0x21
	.byte	0x72
	.sleb128 20
	.byte	0x6
	.byte	0x21
	.byte	0x72
	.sleb128 24
	.byte	0x6
	.byte	0x21
	.byte	0x72
	.sleb128 28
	.byte	0x6
	.byte	0x21
	.byte	0x72
	.sleb128 40
	.byte	0x6
	.byte	0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS23:
	.uleb128 .LVU148
	.uleb128 .LVU163
.LLST23:
	.4byte	.LVL33
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LVUS24:
	.uleb128 .LVU148
	.uleb128 .LVU163
.LLST24:
	.4byte	.LVL33
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS25:
	.uleb128 .LVU150
	.uleb128 .LVU163
.LLST25:
	.4byte	.LVL33
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS26:
	.uleb128 .LVU165
	.uleb128 .LVU168
.LLST26:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS27:
	.uleb128 .LVU165
	.uleb128 .LVU168
.LLST27:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LVUS28:
	.uleb128 .LVU165
	.uleb128 .LVU168
.LLST28:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS29:
	.uleb128 .LVU167
	.uleb128 .LVU168
.LLST29:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS30:
	.uleb128 .LVU170
	.uleb128 .LVU173
.LLST30:
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS31:
	.uleb128 .LVU170
	.uleb128 .LVU173
.LLST31:
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LVUS32:
	.uleb128 .LVU170
	.uleb128 .LVU173
.LLST32:
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS33:
	.uleb128 .LVU172
	.uleb128 .LVU173
.LLST33:
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS34:
	.uleb128 .LVU175
	.uleb128 .LVU188
.LLST34:
	.4byte	.LVL40
	.4byte	.LVL42
	.2byte	0x2
	.byte	0x72
	.sleb128 32
	.4byte	0
	.4byte	0
.LVUS35:
	.uleb128 .LVU175
	.uleb128 .LVU182
	.uleb128 .LVU182
	.uleb128 .LVU188
.LLST35:
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS36:
	.uleb128 .LVU175
	.uleb128 .LVU182
	.uleb128 .LVU182
	.uleb128 .LVU188
.LLST36:
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS37:
	.uleb128 .LVU177
	.uleb128 .LVU182
	.uleb128 .LVU182
	.uleb128 .LVU188
.LLST37:
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS38:
	.uleb128 .LVU190
	.uleb128 .LVU196
.LLST38:
	.4byte	.LVL42
	.4byte	.LVL44
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS39:
	.uleb128 .LVU190
	.uleb128 .LVU196
.LLST39:
	.4byte	.LVL42
	.4byte	.LVL44
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS40:
	.uleb128 .LVU192
	.uleb128 .LVU196
.LLST40:
	.4byte	.LVL42
	.4byte	.LVL44
	.2byte	0xe
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x3a
	.byte	0x25
	.byte	0xc
	.4byte	0x100080
	.byte	0x27
	.byte	0x33
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LFB323
	.4byte	.LCFI0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI0
	.4byte	.LCFI1
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI1
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
	.4byte	.LCFI5
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI5
	.4byte	.LCFI6
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI6
	.4byte	.LCFI7
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI7
	.4byte	.LCFI8
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI8
	.4byte	.LFE323
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU38
	.uleb128 .LVU38
	.uleb128 .LVU40
	.uleb128 .LVU40
	.uleb128 .LVU45
	.uleb128 .LVU45
	.uleb128 .LVU47
	.uleb128 .LVU47
	.uleb128 .LVU58
	.uleb128 .LVU58
	.uleb128 .LVU60
	.uleb128 .LVU60
	.uleb128 .LVU66
	.uleb128 .LVU66
	.uleb128 .LVU67
	.uleb128 .LVU67
	.uleb128 .LVU76
	.uleb128 .LVU76
	.uleb128 .LVU78
	.uleb128 .LVU78
	.uleb128 .LVU94
	.uleb128 .LVU94
	.uleb128 .LVU96
	.uleb128 .LVU96
	.uleb128 .LVU100
	.uleb128 .LVU100
	.uleb128 .LVU107
	.uleb128 .LVU107
	.uleb128 .LVU113
	.uleb128 .LVU113
	.uleb128 .LVU116
	.uleb128 .LVU116
	.uleb128 .LVU120
	.uleb128 .LVU120
	.uleb128 .LVU121
	.uleb128 .LVU121
	.uleb128 .LVU130
	.uleb128 .LVU130
	.uleb128 .LVU131
	.uleb128 .LVU131
	.uleb128 0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL14
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
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL23
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
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LFE323
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 .LVU12
	.uleb128 .LVU30
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 .LVU3
	.uleb128 .LVU38
	.uleb128 .LVU40
	.uleb128 .LVU113
	.uleb128 .LVU116
	.uleb128 0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL6
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL25
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LFE323
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU27
	.uleb128 .LVU31
.LLST4:
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 .LVU27
	.uleb128 .LVU31
.LLST5:
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 .LVU27
	.uleb128 .LVU31
.LLST6:
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 .LVU29
	.uleb128 .LVU31
.LLST7:
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0xd
	.byte	0x70
	.sleb128 0
	.byte	0x3a
	.byte	0x25
	.byte	0xc
	.4byte	0x100080
	.byte	0x27
	.byte	0x33
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 .LVU35
	.uleb128 .LVU38
.LLST8:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 .LVU110
	.uleb128 .LVU113
.LLST9:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 .LVU63
	.uleb128 .LVU66
	.uleb128 .LVU66
	.uleb128 .LVU67
.LLST10:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 .LVU69
	.uleb128 .LVU71
.LLST11:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS12:
	.uleb128 .LVU73
	.uleb128 .LVU78
.LLST12:
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS13:
	.uleb128 .LVU91
	.uleb128 .LVU94
	.uleb128 .LVU94
	.uleb128 .LVU96
.LLST13:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS14:
	.uleb128 .LVU97
	.uleb128 .LVU102
.LLST14:
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS15:
	.uleb128 .LVU104
	.uleb128 .LVU107
.LLST15:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS16:
	.uleb128 .LVU117
	.uleb128 .LVU120
	.uleb128 .LVU120
	.uleb128 .LVU121
.LLST16:
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS17:
	.uleb128 .LVU127
	.uleb128 .LVU130
	.uleb128 .LVU130
	.uleb128 .LVU131
.LLST17:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
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
	.4byte	.LFB323
	.4byte	.LFE323-.LFB323
	.4byte	.LFB324
	.4byte	.LFE324-.LFB324
	.4byte	.LFB325
	.4byte	.LFE325-.LFB325
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB34
	.4byte	.LBE34
	.4byte	.LBB40
	.4byte	.LBE40
	.4byte	.LBB41
	.4byte	.LBE41
	.4byte	.LBB42
	.4byte	.LBE42
	.4byte	.LBB43
	.4byte	.LBE43
	.4byte	0
	.4byte	0
	.4byte	.LBB46
	.4byte	.LBE46
	.4byte	.LBB50
	.4byte	.LBE50
	.4byte	.LBB67
	.4byte	.LBE67
	.4byte	0
	.4byte	0
	.4byte	.LBB59
	.4byte	.LBE59
	.4byte	.LBB65
	.4byte	.LBE65
	.4byte	0
	.4byte	0
	.4byte	.LBB62
	.4byte	.LBE62
	.4byte	.LBB66
	.4byte	.LBE66
	.4byte	0
	.4byte	0
	.4byte	.LBB72
	.4byte	.LBE72
	.4byte	.LBB79
	.4byte	.LBE79
	.4byte	.LBB80
	.4byte	.LBE80
	.4byte	.LBB81
	.4byte	.LBE81
	.4byte	.LBB82
	.4byte	.LBE82
	.4byte	.LBB83
	.4byte	.LBE83
	.4byte	0
	.4byte	0
	.4byte	.LBB88
	.4byte	.LBE88
	.4byte	.LBB101
	.4byte	.LBE101
	.4byte	.LBB103
	.4byte	.LBE103
	.4byte	.LBB105
	.4byte	.LBE105
	.4byte	.LBB107
	.4byte	.LBE107
	.4byte	0
	.4byte	0
	.4byte	.LBB94
	.4byte	.LBE94
	.4byte	.LBB102
	.4byte	.LBE102
	.4byte	.LBB104
	.4byte	.LBE104
	.4byte	.LBB106
	.4byte	.LBE106
	.4byte	.LBB108
	.4byte	.LBE108
	.4byte	.LBB109
	.4byte	.LBE109
	.4byte	0
	.4byte	0
	.4byte	.LFB323
	.4byte	.LFE323
	.4byte	.LFB324
	.4byte	.LFE324
	.4byte	.LFB325
	.4byte	.LFE325
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF65:
	.ascii	"Direction\000"
.LASF89:
	.ascii	"LL_DMA_ClearFlag_GI1\000"
.LASF64:
	.ascii	"MemoryOrM2MDstAddress\000"
.LASF87:
	.ascii	"LL_DMA_ClearFlag_GI3\000"
.LASF92:
	.ascii	"PeriphAddress\000"
.LASF22:
	.ascii	"PLLCFGR\000"
.LASF33:
	.ascii	"APB1RSTR1\000"
.LASF82:
	.ascii	"LL_AHB1_GRP1_ForceReset\000"
.LASF38:
	.ascii	"AHB2ENR\000"
.LASF73:
	.ascii	"Priority\000"
.LASF74:
	.ascii	"LL_DMA_InitTypeDef\000"
.LASF2:
	.ascii	"short int\000"
.LASF55:
	.ascii	"BDCR\000"
.LASF53:
	.ascii	"CCIPR\000"
.LASF69:
	.ascii	"PeriphOrM2MSrcDataSize\000"
.LASF6:
	.ascii	"__uint32_t\000"
.LASF27:
	.ascii	"CICR\000"
.LASF18:
	.ascii	"DMA_TypeDef\000"
.LASF29:
	.ascii	"AHB1RSTR\000"
.LASF75:
	.ascii	"DMAx\000"
.LASF24:
	.ascii	"RESERVED1\000"
.LASF11:
	.ascii	"uint8_t\000"
.LASF25:
	.ascii	"CIER\000"
.LASF68:
	.ascii	"MemoryOrM2MDstIncMode\000"
.LASF95:
	.ascii	"LL_DMA_SetMemoryAddress\000"
.LASF99:
	.ascii	"GNU C17 10.2.1 20201103 (release) -mcpu=cortex-m4 -"
	.ascii	"mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=hard -march=ar"
	.ascii	"mv7e-m+fp -g -gdwarf-2 -O3 -fdata-sections -ffuncti"
	.ascii	"on-sections\000"
.LASF63:
	.ascii	"PeriphOrM2MSrcAddress\000"
.LASF100:
	.ascii	"Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_ll_dma.c"
	.ascii	"\000"
.LASF39:
	.ascii	"AHB3ENR\000"
.LASF8:
	.ascii	"long long int\000"
.LASF9:
	.ascii	"long long unsigned int\000"
.LASF76:
	.ascii	"Channel\000"
.LASF83:
	.ascii	"Periphs\000"
.LASF16:
	.ascii	"DMA_Channel_TypeDef\000"
.LASF49:
	.ascii	"APB1SMENR1\000"
.LASF50:
	.ascii	"APB1SMENR2\000"
.LASF4:
	.ascii	"long int\000"
.LASF61:
	.ascii	"ErrorStatus\000"
.LASF58:
	.ascii	"RCC_TypeDef\000"
.LASF46:
	.ascii	"AHB2SMENR\000"
.LASF67:
	.ascii	"PeriphOrM2MSrcIncMode\000"
.LASF71:
	.ascii	"NbData\000"
.LASF60:
	.ascii	"ERROR\000"
.LASF97:
	.ascii	"LL_DMA_SetDataLength\000"
.LASF93:
	.ascii	"dmamux_ccr_offset\000"
.LASF88:
	.ascii	"LL_DMA_ClearFlag_GI2\000"
.LASF14:
	.ascii	"CPAR\000"
.LASF86:
	.ascii	"LL_DMA_ClearFlag_GI4\000"
.LASF85:
	.ascii	"LL_DMA_ClearFlag_GI5\000"
.LASF62:
	.ascii	"long double\000"
.LASF70:
	.ascii	"MemoryOrM2MDstDataSize\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF43:
	.ascii	"APB2ENR\000"
.LASF56:
	.ascii	"CRRCR\000"
.LASF0:
	.ascii	"signed char\000"
.LASF98:
	.ascii	"Configuration\000"
.LASF103:
	.ascii	"LL_DMA_StructInit\000"
.LASF12:
	.ascii	"uint32_t\000"
.LASF96:
	.ascii	"MemoryAddress\000"
.LASF10:
	.ascii	"unsigned int\000"
.LASF30:
	.ascii	"AHB2RSTR\000"
.LASF101:
	.ascii	"/home/joel/share/EVSPIN32G4_Shinano\000"
.LASF7:
	.ascii	"long unsigned int\000"
.LASF21:
	.ascii	"CFGR\000"
.LASF72:
	.ascii	"PeriphRequest\000"
.LASF41:
	.ascii	"APB1ENR1\000"
.LASF42:
	.ascii	"APB1ENR2\000"
.LASF80:
	.ascii	"status\000"
.LASF57:
	.ascii	"CCIPR2\000"
.LASF19:
	.ascii	"DMAMUX_Channel_TypeDef\000"
.LASF20:
	.ascii	"ICSCR\000"
.LASF13:
	.ascii	"CNDTR\000"
.LASF51:
	.ascii	"APB2SMENR\000"
.LASF84:
	.ascii	"LL_DMA_ClearFlag_GI6\000"
.LASF91:
	.ascii	"LL_DMA_SetPeriphAddress\000"
.LASF102:
	.ascii	"CHANNEL_OFFSET_TAB\000"
.LASF17:
	.ascii	"IFCR\000"
.LASF35:
	.ascii	"APB2RSTR\000"
.LASF23:
	.ascii	"RESERVED0\000"
.LASF81:
	.ascii	"LL_AHB1_GRP1_ReleaseReset\000"
.LASF28:
	.ascii	"RESERVED2\000"
.LASF32:
	.ascii	"RESERVED3\000"
.LASF36:
	.ascii	"RESERVED4\000"
.LASF40:
	.ascii	"RESERVED5\000"
.LASF44:
	.ascii	"RESERVED6\000"
.LASF48:
	.ascii	"RESERVED7\000"
.LASF52:
	.ascii	"RESERVED8\000"
.LASF54:
	.ascii	"RESERVED9\000"
.LASF26:
	.ascii	"CIFR\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF37:
	.ascii	"AHB1ENR\000"
.LASF15:
	.ascii	"CMAR\000"
.LASF90:
	.ascii	"LL_DMA_SetPeriphRequest\000"
.LASF66:
	.ascii	"Mode\000"
.LASF59:
	.ascii	"SUCCESS\000"
.LASF47:
	.ascii	"AHB3SMENR\000"
.LASF45:
	.ascii	"AHB1SMENR\000"
.LASF34:
	.ascii	"APB1RSTR2\000"
.LASF104:
	.ascii	"LL_DMA_ConfigTransfer\000"
.LASF94:
	.ascii	"dma_base_addr\000"
.LASF78:
	.ascii	"LL_DMA_Init\000"
.LASF79:
	.ascii	"LL_DMA_DeInit\000"
.LASF77:
	.ascii	"DMA_InitStruct\000"
.LASF5:
	.ascii	"__uint8_t\000"
.LASF31:
	.ascii	"AHB3RSTR\000"
	.ident	"GCC: (GNU Arm Embedded Toolchain 10-2020-q4-major) 10.2.1 20201103 (release)"
