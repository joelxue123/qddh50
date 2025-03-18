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
	.file	"stm32g4xx_ll_exti.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.LL_EXTI_DeInit,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	LL_EXTI_DeInit
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	LL_EXTI_DeInit, %function
LL_EXTI_DeInit:
.LFB164:
	.file 1 "Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_ll_exti.c"
	.loc 1 80 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 82 3 view .LVU1
	ldr	r3, .L4
	.loc 1 92 3 is_stmt 0 view .LVU2
	ldr	r2, .L4+4
	.loc 1 80 1 view .LVU3
	push	{r4}
.LCFI0:
	.cfi_def_cfa_offset 4
	.cfi_offset 4, -4
	.loc 1 84 3 view .LVU4
	movs	r0, #0
	.loc 1 82 3 view .LVU5
	ldr	r4, .L4+8
	str	r4, [r3]
	.loc 1 84 3 is_stmt 1 view .LVU6
	.loc 1 98 3 is_stmt 0 view .LVU7
	movs	r1, #52
	.loc 1 84 3 view .LVU8
	str	r0, [r3, #4]
	.loc 1 86 3 is_stmt 1 view .LVU9
	str	r0, [r3, #8]
	.loc 1 88 3 view .LVU10
	str	r0, [r3, #12]
	.loc 1 90 3 view .LVU11
	str	r0, [r3, #16]
	.loc 1 92 3 view .LVU12
	str	r2, [r3, #20]
	.loc 1 98 3 view .LVU13
	.loc 1 109 3 is_stmt 0 view .LVU14
	movs	r2, #120
	.loc 1 98 3 view .LVU15
	str	r1, [r3, #32]
	.loc 1 101 3 is_stmt 1 view .LVU16
	.loc 1 112 1 is_stmt 0 view .LVU17
	ldr	r4, [sp], #4
.LCFI1:
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 101 3 view .LVU18
	str	r0, [r3, #36]
	.loc 1 103 3 is_stmt 1 view .LVU19
	str	r0, [r3, #40]
	.loc 1 105 3 view .LVU20
	str	r0, [r3, #44]
	.loc 1 107 3 view .LVU21
	str	r0, [r3, #48]
	.loc 1 109 3 view .LVU22
	str	r2, [r3, #52]
	.loc 1 111 3 view .LVU23
	.loc 1 112 1 is_stmt 0 view .LVU24
	bx	lr
.L5:
	.align	2
.L4:
	.word	1073808384
	.word	8257535
	.word	528744448
	.cfi_endproc
.LFE164:
	.size	LL_EXTI_DeInit, .-LL_EXTI_DeInit
	.section	.text.LL_EXTI_Init,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	LL_EXTI_Init
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	LL_EXTI_Init, %function
LL_EXTI_Init:
.LVL0:
.LFB165:
	.loc 1 122 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 123 3 view .LVU26
	.loc 1 126 3 view .LVU27
	.loc 1 127 3 view .LVU28
	.loc 1 128 3 view .LVU29
	.loc 1 129 3 view .LVU30
	.loc 1 132 3 view .LVU31
	.loc 1 122 1 is_stmt 0 view .LVU32
	push	{r4, r5}
.LCFI2:
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 5, -4
	.loc 1 132 6 view .LVU33
	ldrb	r2, [r0, #8]	@ zero_extendqisi2
	cbz	r2, .L7
	.loc 1 134 5 is_stmt 1 view .LVU34
	.loc 1 137 5 view .LVU35
	.loc 1 137 24 is_stmt 0 view .LVU36
	ldr	r2, [r0]
	.loc 1 137 8 view .LVU37
	cbz	r2, .L8
	.loc 1 139 7 is_stmt 1 view .LVU38
	.loc 1 139 30 is_stmt 0 view .LVU39
	ldrb	r3, [r0, #9]	@ zero_extendqisi2
	.loc 1 139 7 view .LVU40
	cmp	r3, #1
	beq	.L9
	cmp	r3, #2
	beq	.L10
	cmp	r3, #0
	beq	.L37
	movs	r4, #3
	movs	r3, #1
.L11:
.LVL1:
	.loc 1 163 7 is_stmt 1 view .LVU41
	.loc 1 163 26 is_stmt 0 view .LVU42
	ldrb	r1, [r0, #10]	@ zero_extendqisi2
	.loc 1 163 10 view .LVU43
	cmp	r1, #0
	beq	.L36
	.loc 1 165 9 is_stmt 1 view .LVU44
	cmp	r1, #2
	beq	.L12
	cmp	r1, #3
	beq	.L13
	cmp	r1, #1
	beq	.L38
	mov	r2, r4
.LVL2:
.L8:
	.loc 1 192 5 view .LVU45
	.loc 1 192 24 is_stmt 0 view .LVU46
	ldr	r3, [r0, #4]
	.loc 1 192 8 view .LVU47
	cbz	r3, .L6
.L41:
	.loc 1 194 7 is_stmt 1 view .LVU48
	.loc 1 194 30 is_stmt 0 view .LVU49
	ldrb	r1, [r0, #9]	@ zero_extendqisi2
	.loc 1 194 7 view .LVU50
	cmp	r1, #1
	beq	.L15
	cmp	r1, #2
	beq	.L16
	cbz	r1, .L39
	.loc 1 215 11 is_stmt 1 view .LVU51
	.loc 1 215 18 is_stmt 0 view .LVU52
	orr	r2, r2, #4
.LVL3:
	.loc 1 216 11 is_stmt 1 view .LVU53
.L18:
	.loc 1 218 7 view .LVU54
	.loc 1 218 26 is_stmt 0 view .LVU55
	ldrb	r1, [r0, #10]	@ zero_extendqisi2
	.loc 1 218 10 view .LVU56
	cbz	r1, .L6
	.loc 1 220 9 is_stmt 1 view .LVU57
	cmp	r1, #2
	beq	.L19
	cmp	r1, #3
	beq	.L20
	cmp	r1, #1
	beq	.L40
	.loc 1 241 13 view .LVU58
	.loc 1 241 20 is_stmt 0 view .LVU59
	orr	r2, r2, #5
.LVL4:
	.loc 1 242 13 is_stmt 1 view .LVU60
.L6:
	.loc 1 261 1 is_stmt 0 view .LVU61
	mov	r0, r2
	pop	{r4, r5}
.LCFI3:
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	bx	lr
.LVL5:
.L7:
.LCFI4:
	.cfi_restore_state
	.loc 1 251 5 is_stmt 1 view .LVU62
.LBB58:
.LBI58:
	.file 2 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_ll_exti.h"
	.loc 2 387 22 view .LVU63
.LBB59:
	.loc 2 389 3 view .LVU64
	ldr	r3, .L42
	ldr	r5, [r0]
	ldr	r4, [r3]
	bic	r4, r4, r5
	str	r4, [r3]
.LVL6:
	.loc 2 389 3 is_stmt 0 view .LVU65
.LBE59:
.LBE58:
	.loc 1 253 5 is_stmt 1 view .LVU66
.LBB60:
.LBI60:
	.loc 2 615 22 view .LVU67
.LBB61:
	.loc 2 617 3 view .LVU68
	ldr	r1, [r3, #4]
	bic	r1, r1, r5
	str	r1, [r3, #4]
.LVL7:
	.loc 2 617 3 is_stmt 0 view .LVU69
.LBE61:
.LBE60:
	.loc 1 255 5 is_stmt 1 view .LVU70
.LBB62:
.LBI62:
	.loc 2 414 22 view .LVU71
.LBB63:
	.loc 2 416 3 view .LVU72
	ldr	r0, [r0, #4]
.LVL8:
	.loc 2 416 3 is_stmt 0 view .LVU73
	ldr	r4, [r3, #32]
	bic	r4, r4, r0
	str	r4, [r3, #32]
.LVL9:
	.loc 2 416 3 view .LVU74
.LBE63:
.LBE62:
	.loc 1 257 5 is_stmt 1 view .LVU75
.LBB64:
.LBI64:
	.loc 2 639 22 view .LVU76
.LBB65:
	.loc 2 641 3 view .LVU77
	.loc 2 641 3 is_stmt 0 view .LVU78
.LBE65:
.LBE64:
	.loc 1 260 3 is_stmt 1 view .LVU79
.LBB68:
.LBB66:
	.loc 2 641 3 is_stmt 0 view .LVU80
	ldr	r1, [r3, #36]
	bic	r1, r1, r0
.LBE66:
.LBE68:
	.loc 1 261 1 view .LVU81
	pop	{r4, r5}
.LCFI5:
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	mov	r0, r2
.LBB69:
.LBB67:
	.loc 2 641 3 view .LVU82
	str	r1, [r3, #36]
.LBE67:
.LBE69:
	.loc 1 261 1 view .LVU83
	bx	lr
.LVL10:
.L39:
.LCFI6:
	.cfi_restore_state
	.loc 1 198 11 is_stmt 1 view .LVU84
.LBB70:
.LBI70:
	.loc 2 639 22 view .LVU85
.LBB71:
	.loc 2 641 3 view .LVU86
	add	r1, r1, #1073741824
	add	r1, r1, #66560
	ldr	r4, [r1, #36]
	bic	r4, r4, r3
	str	r4, [r1, #36]
.LVL11:
	.loc 2 641 3 is_stmt 0 view .LVU87
.LBE71:
.LBE70:
	.loc 1 200 11 is_stmt 1 view .LVU88
.LBB72:
.LBI72:
	.loc 2 338 22 view .LVU89
.LBB73:
	.loc 2 340 3 view .LVU90
	ldr	r4, [r1, #32]
	orrs	r4, r4, r3
	str	r4, [r1, #32]
	.loc 2 341 1 is_stmt 0 view .LVU91
	b	.L18
.LVL12:
.L16:
	.loc 2 341 1 view .LVU92
.LBE73:
.LBE72:
	.loc 1 210 11 is_stmt 1 view .LVU93
.LBB74:
.LBI74:
	.loc 2 338 22 view .LVU94
.LBB75:
	.loc 2 340 3 view .LVU95
	ldr	r1, .L42
	ldr	r4, [r1, #32]
	orrs	r4, r4, r3
	str	r4, [r1, #32]
.LVL13:
	.loc 2 340 3 is_stmt 0 view .LVU96
.LBE75:
.LBE74:
	.loc 1 212 11 is_stmt 1 view .LVU97
.LBB76:
.LBI76:
	.loc 2 569 22 view .LVU98
.LBB77:
	.loc 2 571 3 view .LVU99
	ldr	r4, [r1, #36]
	orrs	r4, r4, r3
	str	r4, [r1, #36]
	.loc 2 572 1 is_stmt 0 view .LVU100
	b	.L18
.LVL14:
.L10:
	.loc 2 572 1 view .LVU101
.LBE77:
.LBE76:
	.loc 1 155 11 is_stmt 1 view .LVU102
.LBB78:
.LBI78:
	.loc 2 312 22 view .LVU103
.LBB79:
	.loc 2 314 3 view .LVU104
	ldr	r1, .L42
.LBE79:
.LBE78:
.LBB81:
.LBB82:
	.loc 2 548 1 is_stmt 0 view .LVU105
	mov	r4, r3
.LBE82:
.LBE81:
.LBB85:
.LBB80:
	.loc 2 314 3 view .LVU106
	ldr	r3, [r1]
	orrs	r3, r3, r2
	str	r3, [r1]
.LVL15:
	.loc 2 314 3 view .LVU107
.LBE80:
.LBE85:
	.loc 1 157 11 is_stmt 1 view .LVU108
.LBB86:
.LBI81:
	.loc 2 544 22 view .LVU109
.LBB83:
	.loc 2 546 3 view .LVU110
	ldr	r3, [r1, #4]
	orrs	r3, r3, r2
	str	r3, [r1, #4]
.LBE83:
.LBE86:
	.loc 1 123 12 is_stmt 0 view .LVU111
	movs	r3, #0
.LBB87:
.LBB84:
	.loc 2 548 1 view .LVU112
	b	.L11
.LVL16:
.L37:
	.loc 2 548 1 view .LVU113
.LBE84:
.LBE87:
	.loc 1 143 11 is_stmt 1 view .LVU114
.LBB88:
.LBI88:
	.loc 2 615 22 view .LVU115
.LBB89:
	.loc 2 617 3 view .LVU116
	ldr	r1, .L42
	ldr	r4, [r1, #4]
	bic	r4, r4, r2
	str	r4, [r1, #4]
.LVL17:
	.loc 2 617 3 is_stmt 0 view .LVU117
.LBE89:
.LBE88:
	.loc 1 145 11 is_stmt 1 view .LVU118
.LBB90:
.LBI90:
	.loc 2 312 22 view .LVU119
.LBB91:
	.loc 2 314 3 view .LVU120
	ldr	r4, [r1]
	orrs	r4, r4, r2
	str	r4, [r1]
	.loc 2 315 1 is_stmt 0 view .LVU121
	movs	r4, #2
	b	.L11
.LVL18:
.L15:
	.loc 2 315 1 view .LVU122
.LBE91:
.LBE90:
	.loc 1 204 11 is_stmt 1 view .LVU123
.LBB92:
.LBI92:
	.loc 2 414 22 view .LVU124
.LBB93:
	.loc 2 416 3 view .LVU125
	ldr	r1, .L42
	ldr	r4, [r1, #32]
	bic	r4, r4, r3
	str	r4, [r1, #32]
.LVL19:
	.loc 2 416 3 is_stmt 0 view .LVU126
.LBE93:
.LBE92:
	.loc 1 206 11 is_stmt 1 view .LVU127
.LBB94:
.LBI94:
	.loc 2 569 22 view .LVU128
.LBB95:
	.loc 2 571 3 view .LVU129
	ldr	r4, [r1, #36]
	orrs	r4, r4, r3
	str	r4, [r1, #36]
	.loc 2 572 1 is_stmt 0 view .LVU130
	b	.L18
.LVL20:
.L9:
	.loc 2 572 1 view .LVU131
.LBE95:
.LBE94:
	.loc 1 149 11 is_stmt 1 view .LVU132
.LBB96:
.LBI96:
	.loc 2 387 22 view .LVU133
.LBB97:
	.loc 2 389 3 view .LVU134
	ldr	r3, .L42
	ldr	r1, [r3]
	bic	r1, r1, r2
	str	r1, [r3]
.LVL21:
	.loc 2 389 3 is_stmt 0 view .LVU135
.LBE97:
.LBE96:
	.loc 1 151 11 is_stmt 1 view .LVU136
.LBB98:
.LBI98:
	.loc 2 544 22 view .LVU137
.LBB99:
	.loc 2 546 3 view .LVU138
	ldr	r1, [r3, #4]
	orrs	r1, r1, r2
	str	r1, [r3, #4]
	.loc 2 548 1 is_stmt 0 view .LVU139
	movs	r4, #2
.LBE99:
.LBE98:
	.loc 1 123 12 view .LVU140
	movs	r3, #0
.LBB101:
.LBB100:
	.loc 2 548 1 view .LVU141
	b	.L11
.LVL22:
.L12:
	.loc 2 548 1 view .LVU142
.LBE100:
.LBE101:
	.loc 1 175 13 is_stmt 1 view .LVU143
.LBB102:
.LBI102:
	.loc 2 833 22 view .LVU144
.LBB103:
	.loc 2 835 3 view .LVU145
	ldr	r1, .L42
	ldr	r4, [r1, #8]
	bic	r4, r4, r2
.LVL23:
.L35:
	.loc 2 835 3 is_stmt 0 view .LVU146
.LBE103:
.LBE102:
.LBB104:
.LBB105:
	.loc 2 765 3 view .LVU147
	str	r4, [r1, #8]
.LBE105:
.LBE104:
	.loc 1 183 13 is_stmt 1 view .LVU148
.LVL24:
.LBB107:
.LBI107:
	.loc 2 968 22 view .LVU149
.LBB108:
	.loc 2 970 3 view .LVU150
	ldr	r4, [r1, #12]
	orrs	r2, r2, r4
.LVL25:
	.loc 2 970 3 is_stmt 0 view .LVU151
	str	r2, [r1, #12]
.L36:
	.loc 2 971 1 view .LVU152
	mov	r2, r3
.LVL26:
	.loc 2 971 1 view .LVU153
.LBE108:
.LBE107:
	.loc 1 192 5 is_stmt 1 view .LVU154
	.loc 1 192 24 is_stmt 0 view .LVU155
	ldr	r3, [r0, #4]
	.loc 1 192 8 view .LVU156
	cmp	r3, #0
	beq	.L6
	.loc 1 192 8 view .LVU157
	b	.L41
.L40:
	.loc 1 224 13 is_stmt 1 view .LVU158
.LVL27:
.LBB109:
.LBI109:
	.loc 2 1061 22 view .LVU159
.LBB110:
	.loc 2 1063 3 view .LVU160
	ldr	r1, .L42
	ldr	r0, [r1, #44]
.LVL28:
	.loc 2 1063 3 is_stmt 0 view .LVU161
	bic	r0, r0, r3
	str	r0, [r1, #44]
.LVL29:
	.loc 2 1063 3 view .LVU162
.LBE110:
.LBE109:
	.loc 1 226 13 is_stmt 1 view .LVU163
.LBB111:
.LBI111:
	.loc 2 788 22 view .LVU164
.LBB112:
	.loc 2 790 3 view .LVU165
	ldr	r0, [r1, #40]
	orrs	r3, r3, r0
.LVL30:
	.loc 2 790 3 is_stmt 0 view .LVU166
	str	r3, [r1, #40]
	.loc 2 791 1 view .LVU167
	b	.L6
.LVL31:
.L20:
	.loc 2 791 1 view .LVU168
.LBE112:
.LBE111:
	.loc 1 236 13 is_stmt 1 view .LVU169
.LBB113:
.LBI113:
	.loc 2 788 22 view .LVU170
.LBB114:
	.loc 2 790 3 view .LVU171
	ldr	r1, .L42
	ldr	r0, [r1, #40]
.LVL32:
	.loc 2 790 3 is_stmt 0 view .LVU172
	orrs	r0, r0, r3
	str	r0, [r1, #40]
.LVL33:
	.loc 2 790 3 view .LVU173
.LBE114:
.LBE113:
	.loc 1 238 13 is_stmt 1 view .LVU174
.LBB115:
.LBI115:
	.loc 2 993 22 view .LVU175
.LBB116:
	.loc 2 995 3 view .LVU176
	ldr	r0, [r1, #44]
	orrs	r3, r3, r0
.LVL34:
	.loc 2 995 3 is_stmt 0 view .LVU177
	str	r3, [r1, #44]
	.loc 2 996 1 view .LVU178
	b	.L6
.LVL35:
.L19:
	.loc 2 996 1 view .LVU179
.LBE116:
.LBE115:
	.loc 1 230 13 is_stmt 1 view .LVU180
.LBB117:
.LBI117:
	.loc 2 859 22 view .LVU181
.LBB118:
	.loc 2 861 3 view .LVU182
	ldr	r1, .L42
	ldr	r0, [r1, #40]
.LVL36:
	.loc 2 861 3 is_stmt 0 view .LVU183
	bic	r0, r0, r3
	str	r0, [r1, #40]
.LVL37:
	.loc 2 861 3 view .LVU184
.LBE118:
.LBE117:
	.loc 1 232 13 is_stmt 1 view .LVU185
.LBB119:
.LBI119:
	.loc 2 993 22 view .LVU186
.LBB120:
	.loc 2 995 3 view .LVU187
	ldr	r0, [r1, #44]
	orrs	r3, r3, r0
.LVL38:
	.loc 2 995 3 is_stmt 0 view .LVU188
	str	r3, [r1, #44]
	.loc 2 996 1 view .LVU189
	b	.L6
.LVL39:
.L38:
	.loc 2 996 1 view .LVU190
.LBE120:
.LBE119:
	.loc 1 169 13 is_stmt 1 view .LVU191
.LBB121:
.LBI121:
	.loc 2 1037 22 view .LVU192
.LBB122:
	.loc 2 1039 3 view .LVU193
	ldr	r1, .L42
	ldr	r4, [r1, #12]
	bic	r4, r4, r2
	str	r4, [r1, #12]
.LVL40:
	.loc 2 1039 3 is_stmt 0 view .LVU194
.LBE122:
.LBE121:
	.loc 1 171 13 is_stmt 1 view .LVU195
.LBB123:
.LBI123:
	.loc 2 763 22 view .LVU196
.LBB124:
	.loc 2 765 3 view .LVU197
	ldr	r4, [r1, #8]
	orrs	r2, r2, r4
.LVL41:
	.loc 2 765 3 is_stmt 0 view .LVU198
	str	r2, [r1, #8]
	.loc 2 767 1 view .LVU199
	mov	r2, r3
	b	.L8
.L13:
	.loc 2 767 1 view .LVU200
.LBE124:
.LBE123:
	.loc 1 181 13 is_stmt 1 view .LVU201
.LVL42:
.LBB125:
.LBI104:
	.loc 2 763 22 view .LVU202
.LBB106:
	.loc 2 765 3 view .LVU203
	ldr	r1, .L42
	ldr	r4, [r1, #8]
	orrs	r4, r4, r2
	b	.L35
.L43:
	.align	2
.L42:
	.word	1073808384
.LBE106:
.LBE125:
	.cfi_endproc
.LFE165:
	.size	LL_EXTI_Init, .-LL_EXTI_Init
	.section	.text.LL_EXTI_StructInit,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	LL_EXTI_StructInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	LL_EXTI_StructInit, %function
LL_EXTI_StructInit:
.LVL43:
.LFB166:
	.loc 1 269 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 270 3 view .LVU205
	.loc 1 270 35 is_stmt 0 view .LVU206
	movs	r3, #0
	.loc 1 274 35 view .LVU207
	movs	r2, #2
	.loc 1 271 35 view .LVU208
	strd	r3, r3, [r0]
	.loc 1 272 3 is_stmt 1 view .LVU209
	.loc 1 273 3 view .LVU210
	.loc 1 272 35 is_stmt 0 view .LVU211
	strh	r3, [r0, #8]	@ movhi
	.loc 1 274 3 is_stmt 1 view .LVU212
	.loc 1 274 35 is_stmt 0 view .LVU213
	strb	r2, [r0, #10]
	.loc 1 275 1 view .LVU214
	bx	lr
	.cfi_endproc
.LFE166:
	.size	LL_EXTI_StructInit, .-LL_EXTI_StructInit
	.text
.Letext0:
	.file 3 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/machine/_default_types.h"
	.file 4 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/sys/_stdint.h"
	.file 5 "Drivers/CMSIS/Device/ST/STM32G4xx/Include/stm32g431xx.h"
	.file 6 "Drivers/CMSIS/Device/ST/STM32G4xx/Include/stm32g4xx.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x886
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0xc
	.4byte	.LASF53
	.4byte	.LASF54
	.4byte	.Ldebug_ranges0+0x88
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
	.byte	0x38
	.byte	0x5
	.2byte	0x193
	.byte	0x9
	.4byte	0x18f
	.uleb128 0x7
	.4byte	.LASF13
	.byte	0x5
	.2byte	0x195
	.byte	0x11
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x5
	.2byte	0x196
	.byte	0x11
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x5
	.2byte	0x197
	.byte	0x11
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x5
	.2byte	0x198
	.byte	0x11
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x5
	.2byte	0x199
	.byte	0x11
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.ascii	"PR1\000"
	.byte	0x5
	.2byte	0x19a
	.byte	0x11
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x5
	.2byte	0x19b
	.byte	0x11
	.4byte	0x93
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x5
	.2byte	0x19c
	.byte	0x11
	.4byte	0x93
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x5
	.2byte	0x19d
	.byte	0x11
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x5
	.2byte	0x19e
	.byte	0x11
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0x5
	.2byte	0x19f
	.byte	0x11
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0x5
	.2byte	0x1a0
	.byte	0x11
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x5
	.2byte	0x1a1
	.byte	0x11
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x8
	.ascii	"PR2\000"
	.byte	0x5
	.2byte	0x1a2
	.byte	0x11
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x5
	.2byte	0x1a3
	.byte	0x3
	.4byte	0xa4
	.uleb128 0xa
	.byte	0x7
	.byte	0x1
	.4byte	0x3c
	.byte	0x6
	.byte	0x90
	.byte	0x1
	.4byte	0x1b7
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
	.4byte	0x19c
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF29
	.uleb128 0xc
	.byte	0xc
	.byte	0x2
	.byte	0x39
	.byte	0x9
	.4byte	0x21f
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x2
	.byte	0x3c
	.byte	0xc
	.4byte	0x93
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0x2
	.byte	0x3f
	.byte	0xc
	.4byte	0x93
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.4byte	.LASF32
	.byte	0x2
	.byte	0x42
	.byte	0x13
	.4byte	0x1b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.4byte	.LASF33
	.byte	0x2
	.byte	0x45
	.byte	0xb
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0x2
	.byte	0x48
	.byte	0xb
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0x2
	.byte	0x4a
	.byte	0x3
	.4byte	0x1ca
	.uleb128 0xe
	.byte	0x1
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x10c
	.byte	0x6
	.byte	0x1
	.4byte	.LFB166
	.4byte	.LFE166
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x256
	.uleb128 0xf
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x10c
	.byte	0x2e
	.4byte	0x256
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x21f
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF57
	.byte	0x1
	.byte	0x79
	.byte	0xa
	.byte	0x1
	.4byte	0x93
	.4byte	.LFB165
	.4byte	.LFE165
	.4byte	.LLST1
	.byte	0x1
	.4byte	0x6a2
	.uleb128 0x12
	.4byte	.LASF56
	.byte	0x1
	.byte	0x79
	.byte	0x2c
	.4byte	0x256
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x13
	.4byte	.LASF58
	.byte	0x1
	.byte	0x7b
	.byte	0xc
	.4byte	0x93
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x14
	.4byte	0x836
	.4byte	.LBI58
	.byte	.LVU63
	.4byte	.LBB58
	.4byte	.LBE58
	.byte	0x1
	.byte	0xfb
	.byte	0x5
	.4byte	0x2ca
	.uleb128 0x15
	.4byte	0x845
	.4byte	.LLST4
	.4byte	.LVUS4
	.byte	0
	.uleb128 0x14
	.4byte	0x7c2
	.4byte	.LBI60
	.byte	.LVU67
	.4byte	.LBB60
	.4byte	.LBE60
	.byte	0x1
	.byte	0xfd
	.byte	0x5
	.4byte	0x2f1
	.uleb128 0x15
	.4byte	0x7d1
	.4byte	.LLST5
	.4byte	.LVUS5
	.byte	0
	.uleb128 0x14
	.4byte	0x819
	.4byte	.LBI62
	.byte	.LVU71
	.4byte	.LBB62
	.4byte	.LBE62
	.byte	0x1
	.byte	0xff
	.byte	0x5
	.4byte	0x318
	.uleb128 0x15
	.4byte	0x828
	.4byte	.LLST6
	.4byte	.LVUS6
	.byte	0
	.uleb128 0x16
	.4byte	0x7a5
	.4byte	.LBI64
	.byte	.LVU76
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.2byte	0x101
	.byte	0x5
	.4byte	0x334
	.uleb128 0x17
	.4byte	0x7b4
	.byte	0
	.uleb128 0x14
	.4byte	0x7a5
	.4byte	.LBI70
	.byte	.LVU85
	.4byte	.LBB70
	.4byte	.LBE70
	.byte	0x1
	.byte	0xc6
	.byte	0xb
	.4byte	0x35b
	.uleb128 0x15
	.4byte	0x7b4
	.4byte	.LLST7
	.4byte	.LVUS7
	.byte	0
	.uleb128 0x14
	.4byte	0x853
	.4byte	.LBI72
	.byte	.LVU89
	.4byte	.LBB72
	.4byte	.LBE72
	.byte	0x1
	.byte	0xc8
	.byte	0xb
	.4byte	0x382
	.uleb128 0x15
	.4byte	0x862
	.4byte	.LLST8
	.4byte	.LVUS8
	.byte	0
	.uleb128 0x14
	.4byte	0x853
	.4byte	.LBI74
	.byte	.LVU94
	.4byte	.LBB74
	.4byte	.LBE74
	.byte	0x1
	.byte	0xd2
	.byte	0xb
	.4byte	0x3a9
	.uleb128 0x15
	.4byte	0x862
	.4byte	.LLST9
	.4byte	.LVUS9
	.byte	0
	.uleb128 0x14
	.4byte	0x7df
	.4byte	.LBI76
	.byte	.LVU98
	.4byte	.LBB76
	.4byte	.LBE76
	.byte	0x1
	.byte	0xd4
	.byte	0xb
	.4byte	0x3d0
	.uleb128 0x15
	.4byte	0x7ee
	.4byte	.LLST10
	.4byte	.LVUS10
	.byte	0
	.uleb128 0x18
	.4byte	0x870
	.4byte	.LBI78
	.byte	.LVU103
	.4byte	.Ldebug_ranges0+0x20
	.byte	0x1
	.byte	0x9b
	.byte	0xb
	.4byte	0x3f3
	.uleb128 0x15
	.4byte	0x87b
	.4byte	.LLST11
	.4byte	.LVUS11
	.byte	0
	.uleb128 0x18
	.4byte	0x7fc
	.4byte	.LBI81
	.byte	.LVU109
	.4byte	.Ldebug_ranges0+0x38
	.byte	0x1
	.byte	0x9d
	.byte	0xb
	.4byte	0x416
	.uleb128 0x15
	.4byte	0x80b
	.4byte	.LLST12
	.4byte	.LVUS12
	.byte	0
	.uleb128 0x14
	.4byte	0x7c2
	.4byte	.LBI88
	.byte	.LVU115
	.4byte	.LBB88
	.4byte	.LBE88
	.byte	0x1
	.byte	0x8f
	.byte	0xb
	.4byte	0x43d
	.uleb128 0x15
	.4byte	0x7d1
	.4byte	.LLST13
	.4byte	.LVUS13
	.byte	0
	.uleb128 0x14
	.4byte	0x870
	.4byte	.LBI90
	.byte	.LVU119
	.4byte	.LBB90
	.4byte	.LBE90
	.byte	0x1
	.byte	0x91
	.byte	0xb
	.4byte	0x464
	.uleb128 0x15
	.4byte	0x87b
	.4byte	.LLST14
	.4byte	.LVUS14
	.byte	0
	.uleb128 0x14
	.4byte	0x819
	.4byte	.LBI92
	.byte	.LVU124
	.4byte	.LBB92
	.4byte	.LBE92
	.byte	0x1
	.byte	0xcc
	.byte	0xb
	.4byte	0x48b
	.uleb128 0x15
	.4byte	0x828
	.4byte	.LLST15
	.4byte	.LVUS15
	.byte	0
	.uleb128 0x14
	.4byte	0x7df
	.4byte	.LBI94
	.byte	.LVU128
	.4byte	.LBB94
	.4byte	.LBE94
	.byte	0x1
	.byte	0xce
	.byte	0xb
	.4byte	0x4b2
	.uleb128 0x15
	.4byte	0x7ee
	.4byte	.LLST16
	.4byte	.LVUS16
	.byte	0
	.uleb128 0x14
	.4byte	0x836
	.4byte	.LBI96
	.byte	.LVU133
	.4byte	.LBB96
	.4byte	.LBE96
	.byte	0x1
	.byte	0x95
	.byte	0xb
	.4byte	0x4d9
	.uleb128 0x15
	.4byte	0x845
	.4byte	.LLST17
	.4byte	.LVUS17
	.byte	0
	.uleb128 0x18
	.4byte	0x7fc
	.4byte	.LBI98
	.byte	.LVU137
	.4byte	.Ldebug_ranges0+0x58
	.byte	0x1
	.byte	0x97
	.byte	0xb
	.4byte	0x4fc
	.uleb128 0x15
	.4byte	0x80b
	.4byte	.LLST18
	.4byte	.LVUS18
	.byte	0
	.uleb128 0x14
	.4byte	0x74e
	.4byte	.LBI102
	.byte	.LVU144
	.4byte	.LBB102
	.4byte	.LBE102
	.byte	0x1
	.byte	0xaf
	.byte	0xd
	.4byte	0x523
	.uleb128 0x15
	.4byte	0x75d
	.4byte	.LLST19
	.4byte	.LVUS19
	.byte	0
	.uleb128 0x18
	.4byte	0x788
	.4byte	.LBI104
	.byte	.LVU202
	.4byte	.Ldebug_ranges0+0x70
	.byte	0x1
	.byte	0xb5
	.byte	0xd
	.4byte	0x546
	.uleb128 0x15
	.4byte	0x797
	.4byte	.LLST20
	.4byte	.LVUS20
	.byte	0
	.uleb128 0x14
	.4byte	0x714
	.4byte	.LBI107
	.byte	.LVU149
	.4byte	.LBB107
	.4byte	.LBE107
	.byte	0x1
	.byte	0xb7
	.byte	0xd
	.4byte	0x56d
	.uleb128 0x15
	.4byte	0x723
	.4byte	.LLST21
	.4byte	.LVUS21
	.byte	0
	.uleb128 0x14
	.4byte	0x6bd
	.4byte	.LBI109
	.byte	.LVU159
	.4byte	.LBB109
	.4byte	.LBE109
	.byte	0x1
	.byte	0xe0
	.byte	0xd
	.4byte	0x594
	.uleb128 0x15
	.4byte	0x6cc
	.4byte	.LLST22
	.4byte	.LVUS22
	.byte	0
	.uleb128 0x14
	.4byte	0x76b
	.4byte	.LBI111
	.byte	.LVU164
	.4byte	.LBB111
	.4byte	.LBE111
	.byte	0x1
	.byte	0xe2
	.byte	0xd
	.4byte	0x5bb
	.uleb128 0x15
	.4byte	0x77a
	.4byte	.LLST23
	.4byte	.LVUS23
	.byte	0
	.uleb128 0x14
	.4byte	0x76b
	.4byte	.LBI113
	.byte	.LVU170
	.4byte	.LBB113
	.4byte	.LBE113
	.byte	0x1
	.byte	0xec
	.byte	0xd
	.4byte	0x5e2
	.uleb128 0x15
	.4byte	0x77a
	.4byte	.LLST24
	.4byte	.LVUS24
	.byte	0
	.uleb128 0x14
	.4byte	0x6f7
	.4byte	.LBI115
	.byte	.LVU175
	.4byte	.LBB115
	.4byte	.LBE115
	.byte	0x1
	.byte	0xee
	.byte	0xd
	.4byte	0x609
	.uleb128 0x15
	.4byte	0x706
	.4byte	.LLST25
	.4byte	.LVUS25
	.byte	0
	.uleb128 0x14
	.4byte	0x731
	.4byte	.LBI117
	.byte	.LVU181
	.4byte	.LBB117
	.4byte	.LBE117
	.byte	0x1
	.byte	0xe6
	.byte	0xd
	.4byte	0x630
	.uleb128 0x15
	.4byte	0x740
	.4byte	.LLST26
	.4byte	.LVUS26
	.byte	0
	.uleb128 0x14
	.4byte	0x6f7
	.4byte	.LBI119
	.byte	.LVU186
	.4byte	.LBB119
	.4byte	.LBE119
	.byte	0x1
	.byte	0xe8
	.byte	0xd
	.4byte	0x657
	.uleb128 0x15
	.4byte	0x706
	.4byte	.LLST27
	.4byte	.LVUS27
	.byte	0
	.uleb128 0x14
	.4byte	0x6da
	.4byte	.LBI121
	.byte	.LVU192
	.4byte	.LBB121
	.4byte	.LBE121
	.byte	0x1
	.byte	0xa9
	.byte	0xd
	.4byte	0x67e
	.uleb128 0x15
	.4byte	0x6e9
	.4byte	.LLST28
	.4byte	.LVUS28
	.byte	0
	.uleb128 0x19
	.4byte	0x788
	.4byte	.LBI123
	.byte	.LVU196
	.4byte	.LBB123
	.4byte	.LBE123
	.byte	0x1
	.byte	0xab
	.byte	0xd
	.uleb128 0x15
	.4byte	0x797
	.4byte	.LLST29
	.4byte	.LVUS29
	.byte	0
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF59
	.byte	0x1
	.byte	0x4f
	.byte	0xa
	.byte	0x1
	.4byte	0x93
	.4byte	.LFB164
	.4byte	.LFE164
	.4byte	.LLST0
	.byte	0x1
	.uleb128 0x1b
	.4byte	.LASF36
	.byte	0x2
	.2byte	0x425
	.byte	0x16
	.byte	0x1
	.byte	0x3
	.4byte	0x6da
	.uleb128 0x1c
	.4byte	.LASF38
	.byte	0x2
	.2byte	0x425
	.byte	0x40
	.4byte	0x93
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF37
	.byte	0x2
	.2byte	0x40d
	.byte	0x16
	.byte	0x1
	.byte	0x3
	.4byte	0x6f7
	.uleb128 0x1c
	.4byte	.LASF38
	.byte	0x2
	.2byte	0x40d
	.byte	0x3f
	.4byte	0x93
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF39
	.byte	0x2
	.2byte	0x3e1
	.byte	0x16
	.byte	0x1
	.byte	0x3
	.4byte	0x714
	.uleb128 0x1c
	.4byte	.LASF38
	.byte	0x2
	.2byte	0x3e1
	.byte	0x3f
	.4byte	0x93
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF40
	.byte	0x2
	.2byte	0x3c8
	.byte	0x16
	.byte	0x1
	.byte	0x3
	.4byte	0x731
	.uleb128 0x1c
	.4byte	.LASF38
	.byte	0x2
	.2byte	0x3c8
	.byte	0x3e
	.4byte	0x93
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF41
	.byte	0x2
	.2byte	0x35b
	.byte	0x16
	.byte	0x1
	.byte	0x3
	.4byte	0x74e
	.uleb128 0x1c
	.4byte	.LASF38
	.byte	0x2
	.2byte	0x35b
	.byte	0x3f
	.4byte	0x93
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF42
	.byte	0x2
	.2byte	0x341
	.byte	0x16
	.byte	0x1
	.byte	0x3
	.4byte	0x76b
	.uleb128 0x1c
	.4byte	.LASF38
	.byte	0x2
	.2byte	0x341
	.byte	0x3e
	.4byte	0x93
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF43
	.byte	0x2
	.2byte	0x314
	.byte	0x16
	.byte	0x1
	.byte	0x3
	.4byte	0x788
	.uleb128 0x1c
	.4byte	.LASF38
	.byte	0x2
	.2byte	0x314
	.byte	0x3e
	.4byte	0x93
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF44
	.byte	0x2
	.2byte	0x2fb
	.byte	0x16
	.byte	0x1
	.byte	0x3
	.4byte	0x7a5
	.uleb128 0x1c
	.4byte	.LASF38
	.byte	0x2
	.2byte	0x2fb
	.byte	0x3d
	.4byte	0x93
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF45
	.byte	0x2
	.2byte	0x27f
	.byte	0x16
	.byte	0x1
	.byte	0x3
	.4byte	0x7c2
	.uleb128 0x1c
	.4byte	.LASF38
	.byte	0x2
	.2byte	0x27f
	.byte	0x3a
	.4byte	0x93
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF46
	.byte	0x2
	.2byte	0x267
	.byte	0x16
	.byte	0x1
	.byte	0x3
	.4byte	0x7df
	.uleb128 0x1c
	.4byte	.LASF38
	.byte	0x2
	.2byte	0x267
	.byte	0x39
	.4byte	0x93
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF47
	.byte	0x2
	.2byte	0x239
	.byte	0x16
	.byte	0x1
	.byte	0x3
	.4byte	0x7fc
	.uleb128 0x1c
	.4byte	.LASF38
	.byte	0x2
	.2byte	0x239
	.byte	0x39
	.4byte	0x93
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF48
	.byte	0x2
	.2byte	0x220
	.byte	0x16
	.byte	0x1
	.byte	0x3
	.4byte	0x819
	.uleb128 0x1c
	.4byte	.LASF38
	.byte	0x2
	.2byte	0x220
	.byte	0x38
	.4byte	0x93
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF49
	.byte	0x2
	.2byte	0x19e
	.byte	0x16
	.byte	0x1
	.byte	0x3
	.4byte	0x836
	.uleb128 0x1c
	.4byte	.LASF38
	.byte	0x2
	.2byte	0x19e
	.byte	0x37
	.4byte	0x93
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF50
	.byte	0x2
	.2byte	0x183
	.byte	0x16
	.byte	0x1
	.byte	0x3
	.4byte	0x853
	.uleb128 0x1c
	.4byte	.LASF38
	.byte	0x2
	.2byte	0x183
	.byte	0x36
	.4byte	0x93
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF51
	.byte	0x2
	.2byte	0x152
	.byte	0x16
	.byte	0x1
	.byte	0x3
	.4byte	0x870
	.uleb128 0x1c
	.4byte	.LASF38
	.byte	0x2
	.2byte	0x152
	.byte	0x36
	.4byte	0x93
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF60
	.byte	0x2
	.2byte	0x138
	.byte	0x16
	.byte	0x1
	.byte	0x3
	.uleb128 0x1c
	.4byte	.LASF38
	.byte	0x2
	.2byte	0x138
	.byte	0x35
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
.LLST1:
	.4byte	.LFB165
	.4byte	.LCFI2
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI2
	.4byte	.LCFI3
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI3
	.4byte	.LCFI4
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI4
	.4byte	.LCFI5
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI5
	.4byte	.LCFI6
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI6
	.4byte	.LFE165
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU61
	.uleb128 .LVU61
	.uleb128 .LVU62
	.uleb128 .LVU62
	.uleb128 .LVU73
	.uleb128 .LVU73
	.uleb128 .LVU84
	.uleb128 .LVU84
	.uleb128 .LVU161
	.uleb128 .LVU161
	.uleb128 .LVU168
	.uleb128 .LVU168
	.uleb128 .LVU172
	.uleb128 .LVU172
	.uleb128 .LVU179
	.uleb128 .LVU179
	.uleb128 .LVU183
	.uleb128 .LVU183
	.uleb128 .LVU190
	.uleb128 .LVU190
	.uleb128 0
.LLST2:
	.4byte	.LVL0
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
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL28
	.4byte	.LVL31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL32
	.4byte	.LVL35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL36
	.4byte	.LVL39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LFE165
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 .LVU27
	.uleb128 .LVU41
	.uleb128 .LVU41
	.uleb128 .LVU45
	.uleb128 .LVU45
	.uleb128 .LVU62
	.uleb128 .LVU62
	.uleb128 .LVU78
	.uleb128 .LVU84
	.uleb128 .LVU101
	.uleb128 .LVU101
	.uleb128 .LVU122
	.uleb128 .LVU122
	.uleb128 .LVU131
	.uleb128 .LVU131
	.uleb128 .LVU142
	.uleb128 .LVU142
	.uleb128 .LVU153
	.uleb128 .LVU153
	.uleb128 .LVU190
	.uleb128 .LVU190
	.uleb128 0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL2
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14
	.4byte	.LVL18
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL26
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL39
	.4byte	.LFE165
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU63
	.uleb128 .LVU65
.LLST4:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x2
	.byte	0x70
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 .LVU67
	.uleb128 .LVU69
.LLST5:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 .LVU71
	.uleb128 .LVU73
	.uleb128 .LVU73
	.uleb128 .LVU74
.LLST6:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x2
	.byte	0x70
	.sleb128 4
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 .LVU85
	.uleb128 .LVU87
.LLST7:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 .LVU89
	.uleb128 .LVU92
.LLST8:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 .LVU94
	.uleb128 .LVU96
.LLST9:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 .LVU98
	.uleb128 .LVU101
.LLST10:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 .LVU103
	.uleb128 .LVU107
.LLST11:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS12:
	.uleb128 .LVU109
	.uleb128 .LVU113
.LLST12:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS13:
	.uleb128 .LVU115
	.uleb128 .LVU117
.LLST13:
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS14:
	.uleb128 .LVU119
	.uleb128 .LVU122
.LLST14:
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS15:
	.uleb128 .LVU124
	.uleb128 .LVU126
.LLST15:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS16:
	.uleb128 .LVU128
	.uleb128 .LVU131
.LLST16:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS17:
	.uleb128 .LVU133
	.uleb128 .LVU135
.LLST17:
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS18:
	.uleb128 .LVU137
	.uleb128 .LVU142
.LLST18:
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS19:
	.uleb128 .LVU144
	.uleb128 .LVU146
.LLST19:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS20:
	.uleb128 .LVU202
	.uleb128 0
.LLST20:
	.4byte	.LVL42
	.4byte	.LFE165
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS21:
	.uleb128 .LVU149
	.uleb128 .LVU151
.LLST21:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS22:
	.uleb128 .LVU159
	.uleb128 .LVU162
.LLST22:
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS23:
	.uleb128 .LVU164
	.uleb128 .LVU166
.LLST23:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS24:
	.uleb128 .LVU170
	.uleb128 .LVU173
.LLST24:
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS25:
	.uleb128 .LVU175
	.uleb128 .LVU177
.LLST25:
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS26:
	.uleb128 .LVU181
	.uleb128 .LVU184
.LLST26:
	.4byte	.LVL35
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS27:
	.uleb128 .LVU186
	.uleb128 .LVU188
.LLST27:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS28:
	.uleb128 .LVU192
	.uleb128 .LVU194
.LLST28:
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS29:
	.uleb128 .LVU196
	.uleb128 .LVU198
.LLST29:
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LFB164
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
	.4byte	.LFE164
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
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
	.4byte	.LFB164
	.4byte	.LFE164-.LFB164
	.4byte	.LFB165
	.4byte	.LFE165-.LFB165
	.4byte	.LFB166
	.4byte	.LFE166-.LFB166
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB64
	.4byte	.LBE64
	.4byte	.LBB68
	.4byte	.LBE68
	.4byte	.LBB69
	.4byte	.LBE69
	.4byte	0
	.4byte	0
	.4byte	.LBB78
	.4byte	.LBE78
	.4byte	.LBB85
	.4byte	.LBE85
	.4byte	0
	.4byte	0
	.4byte	.LBB81
	.4byte	.LBE81
	.4byte	.LBB86
	.4byte	.LBE86
	.4byte	.LBB87
	.4byte	.LBE87
	.4byte	0
	.4byte	0
	.4byte	.LBB98
	.4byte	.LBE98
	.4byte	.LBB101
	.4byte	.LBE101
	.4byte	0
	.4byte	0
	.4byte	.LBB104
	.4byte	.LBE104
	.4byte	.LBB125
	.4byte	.LBE125
	.4byte	0
	.4byte	0
	.4byte	.LFB164
	.4byte	.LFE164
	.4byte	.LFB165
	.4byte	.LFE165
	.4byte	.LFB166
	.4byte	.LFE166
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF30:
	.ascii	"Line_0_31\000"
.LASF57:
	.ascii	"LL_EXTI_Init\000"
.LASF59:
	.ascii	"LL_EXTI_DeInit\000"
.LASF47:
	.ascii	"LL_EXTI_EnableEvent_32_63\000"
.LASF15:
	.ascii	"RTSR1\000"
.LASF22:
	.ascii	"RTSR2\000"
.LASF2:
	.ascii	"short int\000"
.LASF56:
	.ascii	"EXTI_InitStruct\000"
.LASF40:
	.ascii	"LL_EXTI_EnableFallingTrig_0_31\000"
.LASF6:
	.ascii	"__uint32_t\000"
.LASF11:
	.ascii	"uint8_t\000"
.LASF52:
	.ascii	"GNU C17 10.2.1 20201103 (release) -mcpu=cortex-m4 -"
	.ascii	"mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=hard -march=ar"
	.ascii	"mv7e-m+fp -g -gdwarf-2 -O3 -fdata-sections -ffuncti"
	.ascii	"on-sections\000"
.LASF50:
	.ascii	"LL_EXTI_DisableIT_0_31\000"
.LASF55:
	.ascii	"LL_EXTI_StructInit\000"
.LASF17:
	.ascii	"SWIER1\000"
.LASF24:
	.ascii	"SWIER2\000"
.LASF26:
	.ascii	"DISABLE\000"
.LASF29:
	.ascii	"long double\000"
.LASF34:
	.ascii	"Trigger\000"
.LASF60:
	.ascii	"LL_EXTI_EnableIT_0_31\000"
.LASF8:
	.ascii	"long long int\000"
.LASF42:
	.ascii	"LL_EXTI_DisableRisingTrig_0_31\000"
.LASF49:
	.ascii	"LL_EXTI_DisableIT_32_63\000"
.LASF25:
	.ascii	"EXTI_TypeDef\000"
.LASF4:
	.ascii	"long int\000"
.LASF41:
	.ascii	"LL_EXTI_DisableRisingTrig_32_63\000"
.LASF5:
	.ascii	"__uint8_t\000"
.LASF39:
	.ascii	"LL_EXTI_EnableFallingTrig_32_63\000"
.LASF31:
	.ascii	"Line_32_63\000"
.LASF36:
	.ascii	"LL_EXTI_DisableFallingTrig_32_63\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF37:
	.ascii	"LL_EXTI_DisableFallingTrig_0_31\000"
.LASF0:
	.ascii	"signed char\000"
.LASF9:
	.ascii	"long long unsigned int\000"
.LASF12:
	.ascii	"uint32_t\000"
.LASF53:
	.ascii	"Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_ll_exti."
	.ascii	"c\000"
.LASF10:
	.ascii	"unsigned int\000"
.LASF54:
	.ascii	"/home/joel/share/EVSPIN32G4_Shinano\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF58:
	.ascii	"status\000"
.LASF51:
	.ascii	"LL_EXTI_EnableIT_32_63\000"
.LASF35:
	.ascii	"LL_EXTI_InitTypeDef\000"
.LASF14:
	.ascii	"EMR1\000"
.LASF21:
	.ascii	"EMR2\000"
.LASF18:
	.ascii	"RESERVED1\000"
.LASF19:
	.ascii	"RESERVED2\000"
.LASF32:
	.ascii	"LineCommand\000"
.LASF7:
	.ascii	"long unsigned int\000"
.LASF13:
	.ascii	"IMR1\000"
.LASF20:
	.ascii	"IMR2\000"
.LASF28:
	.ascii	"FunctionalState\000"
.LASF45:
	.ascii	"LL_EXTI_DisableEvent_32_63\000"
.LASF44:
	.ascii	"LL_EXTI_EnableRisingTrig_0_31\000"
.LASF38:
	.ascii	"ExtiLine\000"
.LASF16:
	.ascii	"FTSR1\000"
.LASF23:
	.ascii	"FTSR2\000"
.LASF33:
	.ascii	"Mode\000"
.LASF46:
	.ascii	"LL_EXTI_DisableEvent_0_31\000"
.LASF48:
	.ascii	"LL_EXTI_EnableEvent_0_31\000"
.LASF27:
	.ascii	"ENABLE\000"
.LASF43:
	.ascii	"LL_EXTI_EnableRisingTrig_32_63\000"
	.ident	"GCC: (GNU Arm Embedded Toolchain 10-2020-q4-major) 10.2.1 20201103 (release)"
