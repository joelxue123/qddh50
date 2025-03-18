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
	.file	"stm32g4xx_hal_dma.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.HAL_DMA_Init,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_DMA_Init
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_DMA_Init, %function
HAL_DMA_Init:
.LVL0:
.LFB132:
	.file 1 "Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_dma.c"
	.loc 1 153 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 154 3 view .LVU1
	.loc 1 157 3 view .LVU2
	.loc 1 157 6 is_stmt 0 view .LVU3
	cmp	r0, #0
	beq	.L9
	.loc 1 163 3 is_stmt 1 view .LVU4
	.loc 1 164 3 view .LVU5
	.loc 1 165 3 view .LVU6
	.loc 1 166 3 view .LVU7
	.loc 1 167 3 view .LVU8
	.loc 1 168 3 view .LVU9
	.loc 1 169 3 view .LVU10
	.loc 1 170 3 view .LVU11
	.loc 1 172 3 view .LVU12
	.loc 1 175 3 view .LVU13
	.loc 1 153 1 is_stmt 0 view .LVU14
	push	{r4, r5, r6, lr}
.LCFI0:
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 175 6 view .LVU15
	ldr	r3, .L18
	.loc 1 175 22 view .LVU16
	ldr	r4, [r0]
	.loc 1 175 6 view .LVU17
	cmp	r4, r3
	bls	.L16
	.loc 1 184 5 is_stmt 1 view .LVU18
	.loc 1 184 53 is_stmt 0 view .LVU19
	ldr	r2, .L18+4
	.loc 1 184 80 view .LVU20
	ldr	r3, .L18+8
	.loc 1 185 26 view .LVU21
	ldr	r1, .L18+12
	.loc 1 184 53 view .LVU22
	add	r2, r2, r4
	.loc 1 184 80 view .LVU23
	umull	r3, r2, r3, r2
	lsrs	r2, r2, #4
	.loc 1 184 135 view .LVU24
	lsls	r2, r2, #2
	.loc 1 185 5 is_stmt 1 view .LVU25
.L4:
	.loc 1 189 15 is_stmt 0 view .LVU26
	movs	r3, #2
	.loc 1 200 21 view .LVU27
	ldr	r5, [r0, #8]
	.loc 1 189 15 view .LVU28
	strb	r3, [r0, #37]
	.loc 1 200 39 view .LVU29
	ldr	r3, [r0, #12]
	.loc 1 202 72 view .LVU30
	ldr	r6, [r0, #28]
	strd	r1, r2, [r0, #64]
	.loc 1 189 3 is_stmt 1 view .LVU31
	.loc 1 192 3 view .LVU32
	.loc 1 201 42 is_stmt 0 view .LVU33
	ldr	r1, [r0, #16]
	.loc 1 200 39 view .LVU34
	orrs	r3, r3, r5
	.loc 1 201 42 view .LVU35
	orrs	r3, r3, r1
	.loc 1 201 72 view .LVU36
	ldr	r1, [r0, #20]
	orrs	r3, r3, r1
	.loc 1 202 42 view .LVU37
	ldr	r1, [r0, #24]
	orrs	r3, r3, r1
	.loc 1 202 72 view .LVU38
	orrs	r3, r3, r6
.LBB14:
.LBB15:
	.loc 1 1069 47 view .LVU39
	uxtb	ip, r4
	.loc 1 1069 18 view .LVU40
	ldr	r6, .L18+8
.LBE15:
.LBE14:
	.loc 1 192 7 view .LVU41
	ldr	r1, [r4]
.LVL1:
	.loc 1 195 3 is_stmt 1 view .LVU42
.LBB20:
.LBB16:
	.loc 1 1069 56 is_stmt 0 view .LVU43
	sub	ip, ip, #8
	.loc 1 1069 18 view .LVU44
	umull	r6, ip, r6, ip
.LBE16:
.LBE20:
	.loc 1 203 42 view .LVU45
	ldr	r6, [r0, #32]
	.loc 1 195 7 view .LVU46
	bic	r1, r1, #32640
.LVL2:
	.loc 1 195 7 view .LVU47
	bic	r1, r1, #112
.LVL3:
	.loc 1 200 3 is_stmt 1 view .LVU48
	.loc 1 203 42 is_stmt 0 view .LVU49
	orrs	r3, r3, r6
	.loc 1 200 7 view .LVU50
	orrs	r3, r3, r1
.LVL4:
	.loc 1 206 3 is_stmt 1 view .LVU51
	.loc 1 206 23 is_stmt 0 view .LVU52
	str	r3, [r4]
	.loc 1 211 3 is_stmt 1 view .LVU53
.LVL5:
.LBB21:
.LBI14:
	.loc 1 1045 13 view .LVU54
.LBB17:
	.loc 1 1047 3 view .LVU55
	.loc 1 1048 3 view .LVU56
	.loc 1 1049 3 view .LVU57
	.loc 1 1052 3 view .LVU58
	.loc 1 1052 6 is_stmt 0 view .LVU59
	ldr	r6, .L18+16
	ldr	r3, .L18
.LVL6:
	.loc 1 1052 6 view .LVU60
	ldr	r1, .L18+20
	.loc 1 1072 58 view .LVU61
	ubfx	ip, ip, #4, #5
	.loc 1 1052 6 view .LVU62
	cmp	r4, r3
	it	ls
	movls	r1, r6
	.loc 1 1068 3 is_stmt 1 view .LVU63
	.loc 1 1069 3 view .LVU64
.LVL7:
	.loc 1 1070 3 view .LVU65
	.loc 1 1072 39 is_stmt 0 view .LVU66
	mov	lr, #1
	.loc 1 1071 29 view .LVU67
	ldr	r4, .L18+24
.LVL8:
	.loc 1 1071 29 view .LVU68
	str	r4, [r0, #76]
	.loc 1 1072 39 view .LVU69
	lsl	r3, lr, ip
	.loc 1 1070 51 view .LVU70
	adds	r4, r2, r1
.LBE17:
.LBE21:
	.loc 1 213 6 view .LVU71
	cmp	r5, #16384
.LBB22:
.LBB18:
	.loc 1 1072 33 view .LVU72
	str	r3, [r0, #80]
	.loc 1 1070 23 view .LVU73
	str	r4, [r0, #72]
	.loc 1 1071 3 is_stmt 1 view .LVU74
	.loc 1 1072 3 view .LVU75
.LVL9:
	.loc 1 1072 3 is_stmt 0 view .LVU76
.LBE18:
.LBE22:
	.loc 1 213 3 is_stmt 1 view .LVU77
.LBB23:
.LBB19:
	.loc 1 1070 102 is_stmt 0 view .LVU78
	lsr	r2, r2, #2
.LBE19:
.LBE23:
	.loc 1 213 6 view .LVU79
	beq	.L17
	.loc 1 220 3 is_stmt 1 view .LVU80
	.loc 1 220 41 is_stmt 0 view .LVU81
	ldr	r5, [r0, #4]
	.loc 1 220 50 view .LVU82
	uxtb	r4, r5
	.loc 1 225 35 view .LVU83
	subs	r5, r5, #1
	.loc 1 225 6 view .LVU84
	cmp	r5, #3
	.loc 1 220 28 view .LVU85
	str	r4, [r1, r2, lsl #2]
.LVL10:
	.loc 1 223 3 is_stmt 1 view .LVU86
	.loc 1 223 34 is_stmt 0 view .LVU87
	str	r3, [r6, #132]
	.loc 1 225 3 is_stmt 1 view .LVU88
	.loc 1 225 6 is_stmt 0 view .LVU89
	bhi	.L7
	.loc 1 230 5 is_stmt 1 view .LVU90
.LVL11:
.LBB24:
.LBI24:
	.loc 1 1082 13 view .LVU91
.LBB25:
	.loc 1 1084 3 view .LVU92
	.loc 1 1087 3 view .LVU93
	.loc 1 1087 58 is_stmt 0 view .LVU94
	ldr	r3, .L18+28
	.loc 1 1089 32 view .LVU95
	ldr	r1, .L18+32
	.loc 1 1087 58 view .LVU96
	add	r3, r3, r4
	.loc 1 1091 55 view .LVU97
	subs	r4, r4, #1
.LVL12:
	.loc 1 1087 58 view .LVU98
	lsls	r3, r3, #2
	.loc 1 1091 61 view .LVU99
	and	r4, r4, #31
.LVL13:
	.loc 1 1091 42 view .LVU100
	lsl	r4, lr, r4
.LBE25:
.LBE24:
	.loc 1 233 34 view .LVU101
	movs	r2, #0
.LBB27:
.LBB26:
	.loc 1 1089 32 view .LVU102
	strd	r3, r1, [r0, #84]
	.loc 1 1091 3 is_stmt 1 view .LVU103
	.loc 1 1091 36 is_stmt 0 view .LVU104
	str	r4, [r0, #92]
.LVL14:
	.loc 1 1091 36 view .LVU105
.LBE26:
.LBE27:
	.loc 1 233 5 is_stmt 1 view .LVU106
	.loc 1 233 34 is_stmt 0 view .LVU107
	str	r2, [r3]
	.loc 1 236 5 is_stmt 1 view .LVU108
	.loc 1 236 41 is_stmt 0 view .LVU109
	ldr	r3, .L18+36
	str	r4, [r3, #68]
.L8:
	.loc 1 246 3 is_stmt 1 view .LVU110
	.loc 1 246 19 is_stmt 0 view .LVU111
	movs	r3, #0
	.loc 1 249 16 view .LVU112
	movs	r2, #1
	.loc 1 246 19 view .LVU113
	str	r3, [r0, #60]
	.loc 1 249 3 is_stmt 1 view .LVU114
	.loc 1 252 14 is_stmt 0 view .LVU115
	strb	r3, [r0, #36]
	.loc 1 249 16 view .LVU116
	strb	r2, [r0, #37]
	.loc 1 252 3 is_stmt 1 view .LVU117
	.loc 1 254 3 view .LVU118
	.loc 1 254 10 is_stmt 0 view .LVU119
	mov	r0, r3
.LVL15:
	.loc 1 255 1 view .LVU120
	pop	{r4, r5, r6, pc}
.LVL16:
.L16:
	.loc 1 178 5 is_stmt 1 view .LVU121
	.loc 1 178 53 is_stmt 0 view .LVU122
	ldr	r2, .L18+40
	.loc 1 178 80 view .LVU123
	ldr	r3, .L18+8
	.loc 1 179 26 view .LVU124
	ldr	r1, .L18+44
	.loc 1 178 53 view .LVU125
	add	r2, r2, r4
	.loc 1 178 80 view .LVU126
	umull	r3, r2, r3, r2
	lsrs	r2, r2, #4
	.loc 1 178 135 view .LVU127
	lsls	r2, r2, #2
	.loc 1 179 5 is_stmt 1 view .LVU128
	b	.L4
.LVL17:
.L17:
	.loc 1 216 5 view .LVU129
	.loc 1 216 24 is_stmt 0 view .LVU130
	movs	r4, #0
	str	r4, [r0, #4]
	.loc 1 220 3 is_stmt 1 view .LVU131
	.loc 1 220 28 is_stmt 0 view .LVU132
	str	r4, [r1, r2, lsl #2]
.LVL18:
	.loc 1 223 3 is_stmt 1 view .LVU133
	.loc 1 223 34 is_stmt 0 view .LVU134
	str	r3, [r6, #132]
	.loc 1 225 3 is_stmt 1 view .LVU135
.L7:
	.loc 1 240 5 view .LVU136
	.loc 1 240 28 is_stmt 0 view .LVU137
	movs	r3, #0
	.loc 1 241 34 view .LVU138
	strd	r3, r3, [r0, #84]
	.loc 1 242 5 is_stmt 1 view .LVU139
	.loc 1 242 38 is_stmt 0 view .LVU140
	str	r3, [r0, #92]
	b	.L8
.L9:
.LCFI1:
	.cfi_def_cfa_offset 0
	.cfi_restore 4
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 14
	.loc 1 159 12 view .LVU141
	movs	r0, #1
.LVL19:
	.loc 1 255 1 view .LVU142
	bx	lr
.L19:
	.align	2
.L18:
	.word	1073873927
	.word	-1073873928
	.word	-858993459
	.word	1073873920
	.word	1073874944
	.word	1073874976
	.word	1073875072
	.word	268468799
	.word	1073875264
	.word	1073875200
	.word	-1073872904
	.word	1073872896
	.cfi_endproc
.LFE132:
	.size	HAL_DMA_Init, .-HAL_DMA_Init
	.section	.text.HAL_DMA_DeInit,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_DMA_DeInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_DMA_DeInit, %function
HAL_DMA_DeInit:
.LVL20:
.LFB133:
	.loc 1 264 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 267 3 view .LVU144
	.loc 1 267 6 is_stmt 0 view .LVU145
	cmp	r0, #0
	beq	.L25
	.loc 1 273 3 is_stmt 1 view .LVU146
	.loc 1 276 3 view .LVU147
	ldr	r3, [r0]
	.loc 1 279 6 is_stmt 0 view .LVU148
	ldr	r1, .L31
	.loc 1 276 3 view .LVU149
	ldr	r2, [r3]
	.loc 1 279 6 view .LVU150
	cmp	r3, r1
	.loc 1 276 3 view .LVU151
	bic	r2, r2, #1
	.loc 1 264 1 view .LVU152
	push	{r4, r5}
.LCFI2:
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 5, -4
	.loc 1 276 3 view .LVU153
	str	r2, [r3]
	.loc 1 279 3 is_stmt 1 view .LVU154
	.loc 1 279 6 is_stmt 0 view .LVU155
	bls	.L30
	.loc 1 288 5 is_stmt 1 view .LVU156
	.loc 1 288 53 is_stmt 0 view .LVU157
	ldr	r2, .L31+4
	.loc 1 288 80 view .LVU158
	ldr	r1, .L31+8
	.loc 1 289 26 view .LVU159
	ldr	r4, .L31+12
	.loc 1 288 53 view .LVU160
	add	r2, r2, r3
	.loc 1 288 80 view .LVU161
	umull	r1, r2, r1, r2
	lsrs	r2, r2, #4
	.loc 1 288 135 view .LVU162
	lsls	r2, r2, #2
	.loc 1 293 24 view .LVU163
	movs	r1, #0
	.loc 1 289 26 view .LVU164
	strd	r4, r2, [r0, #64]
	.loc 1 293 3 is_stmt 1 view .LVU165
	.loc 1 296 69 is_stmt 0 view .LVU166
	and	r5, r2, #31
	.loc 1 293 24 view .LVU167
	str	r1, [r3]
	.loc 1 296 3 is_stmt 1 view .LVU168
	.loc 1 296 46 is_stmt 0 view .LVU169
	movs	r1, #1
	lsls	r1, r1, r5
	.loc 1 296 30 view .LVU170
	str	r1, [r4, #4]
	.loc 1 301 3 is_stmt 1 view .LVU171
.LVL21:
.LBB28:
.LBI28:
	.loc 1 1045 13 view .LVU172
.LBB29:
	.loc 1 1047 3 view .LVU173
	.loc 1 1048 3 view .LVU174
	.loc 1 1049 3 view .LVU175
	.loc 1 1052 3 view .LVU176
.LBE29:
.LBE28:
	.loc 1 296 30 is_stmt 0 view .LVU177
	ldr	r1, .L31+16
.L23:
.LVL22:
.LBB34:
.LBB30:
	.loc 1 1068 3 is_stmt 1 view .LVU178
	.loc 1 1069 3 view .LVU179
	.loc 1 1070 3 view .LVU180
.LBE30:
.LBE34:
	.loc 1 307 34 is_stmt 0 view .LVU181
	ldr	r5, .L31+20
.LBB35:
.LBB31:
	.loc 1 1070 102 view .LVU182
	lsr	ip, r2, #2
	.loc 1 1070 51 view .LVU183
	add	r2, r2, r1
	.loc 1 1070 23 view .LVU184
	str	r2, [r0, #72]
	.loc 1 1071 3 is_stmt 1 view .LVU185
	.loc 1 1071 29 is_stmt 0 view .LVU186
	ldr	r2, .L31+24
	str	r2, [r0, #76]
	.loc 1 1072 3 is_stmt 1 view .LVU187
	.loc 1 1069 47 is_stmt 0 view .LVU188
	uxtb	r3, r3
.LVL23:
	.loc 1 1069 18 view .LVU189
	ldr	r2, .L31+8
	.loc 1 1069 56 view .LVU190
	subs	r3, r3, #8
	.loc 1 1069 18 view .LVU191
	umull	r2, r3, r2, r3
	.loc 1 1072 58 view .LVU192
	ubfx	r3, r3, #4, #5
	.loc 1 1072 39 view .LVU193
	movs	r2, #1
	lsl	r3, r2, r3
.LBE31:
.LBE35:
	.loc 1 304 28 view .LVU194
	movs	r4, #0
.LBB36:
.LBB32:
	.loc 1 1072 33 view .LVU195
	str	r3, [r0, #80]
.LVL24:
	.loc 1 1072 33 view .LVU196
.LBE32:
.LBE36:
	.loc 1 304 3 is_stmt 1 view .LVU197
	.loc 1 304 28 is_stmt 0 view .LVU198
	str	r4, [r1, ip, lsl #2]
	.loc 1 307 3 is_stmt 1 view .LVU199
	.loc 1 307 34 is_stmt 0 view .LVU200
	str	r3, [r5, #132]
	.loc 1 310 3 is_stmt 1 view .LVU201
	.loc 1 310 19 is_stmt 0 view .LVU202
	ldr	r1, [r0, #4]
	.loc 1 310 35 view .LVU203
	subs	r3, r1, #1
	.loc 1 310 6 view .LVU204
	cmp	r3, #3
	bhi	.L24
	.loc 1 315 5 is_stmt 1 view .LVU205
.LVL25:
.LBB37:
.LBI37:
	.loc 1 1082 13 view .LVU206
.LBB38:
	.loc 1 1084 3 view .LVU207
	.loc 1 1087 3 view .LVU208
	.loc 1 1091 42 is_stmt 0 view .LVU209
	lsls	r2, r2, r3
	.loc 1 1087 58 view .LVU210
	ldr	r3, .L31+28
	add	r3, r3, r1
	lsls	r3, r3, #2
	.loc 1 1089 3 is_stmt 1 view .LVU211
	.loc 1 1091 3 view .LVU212
.LVL26:
	.loc 1 1091 3 is_stmt 0 view .LVU213
.LBE38:
.LBE37:
	.loc 1 318 5 is_stmt 1 view .LVU214
	.loc 1 318 34 is_stmt 0 view .LVU215
	str	r4, [r3]
	.loc 1 321 5 is_stmt 1 view .LVU216
	.loc 1 321 41 is_stmt 0 view .LVU217
	str	r2, [r5, #324]
.L24:
	.loc 1 324 3 is_stmt 1 view .LVU218
	.loc 1 324 26 is_stmt 0 view .LVU219
	movs	r3, #0
	.loc 1 335 19 view .LVU220
	str	r3, [r0, #60]
	.loc 1 341 3 view .LVU221
	strb	r3, [r0, #36]
	.loc 1 338 15 view .LVU222
	strb	r3, [r0, #37]
	.loc 1 325 32 view .LVU223
	strd	r3, r3, [r0, #84]
	.loc 1 326 3 is_stmt 1 view .LVU224
	.loc 1 330 30 is_stmt 0 view .LVU225
	strd	r3, r3, [r0, #44]
	.loc 1 332 27 view .LVU226
	strd	r3, r3, [r0, #52]
	.loc 1 326 36 view .LVU227
	str	r3, [r0, #92]
	.loc 1 329 3 is_stmt 1 view .LVU228
	.loc 1 331 3 view .LVU229
	.loc 1 335 3 view .LVU230
	.loc 1 338 3 view .LVU231
	.loc 1 341 3 view .LVU232
	.loc 1 341 3 view .LVU233
	.loc 1 341 3 view .LVU234
	.loc 1 343 3 view .LVU235
	.loc 1 344 1 is_stmt 0 view .LVU236
	pop	{r4, r5}
.LCFI3:
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 343 10 view .LVU237
	mov	r0, r3
.LVL27:
	.loc 1 344 1 view .LVU238
	bx	lr
.LVL28:
.L30:
.LCFI4:
	.cfi_restore_state
	.loc 1 282 5 is_stmt 1 view .LVU239
	.loc 1 282 53 is_stmt 0 view .LVU240
	ldr	r2, .L31+32
	.loc 1 282 80 view .LVU241
	ldr	r1, .L31+8
	.loc 1 283 26 view .LVU242
	ldr	r4, .L31+36
	.loc 1 282 53 view .LVU243
	add	r2, r2, r3
	.loc 1 282 80 view .LVU244
	umull	r1, r2, r1, r2
	lsrs	r2, r2, #4
	.loc 1 282 135 view .LVU245
	lsls	r2, r2, #2
	.loc 1 293 24 view .LVU246
	movs	r1, #0
	.loc 1 283 26 view .LVU247
	strd	r4, r2, [r0, #64]
	.loc 1 293 3 is_stmt 1 view .LVU248
	.loc 1 296 69 is_stmt 0 view .LVU249
	and	r5, r2, #31
	.loc 1 293 24 view .LVU250
	str	r1, [r3]
	.loc 1 296 3 is_stmt 1 view .LVU251
	.loc 1 296 46 is_stmt 0 view .LVU252
	movs	r1, #1
	lsls	r1, r1, r5
	.loc 1 296 30 view .LVU253
	str	r1, [r4, #4]
	.loc 1 301 3 is_stmt 1 view .LVU254
.LVL29:
.LBB39:
	.loc 1 1045 13 view .LVU255
.LBB33:
	.loc 1 1047 3 view .LVU256
	.loc 1 1048 3 view .LVU257
	.loc 1 1049 3 view .LVU258
	.loc 1 1052 3 view .LVU259
.LBE33:
.LBE39:
	.loc 1 296 30 is_stmt 0 view .LVU260
	ldr	r1, .L31+20
	b	.L23
.LVL30:
.L25:
.LCFI5:
	.cfi_def_cfa_offset 0
	.cfi_restore 4
	.cfi_restore 5
	.loc 1 269 12 view .LVU261
	movs	r0, #1
.LVL31:
	.loc 1 344 1 view .LVU262
	bx	lr
.L32:
	.align	2
.L31:
	.word	1073873927
	.word	-1073873928
	.word	-858993459
	.word	1073873920
	.word	1073874976
	.word	1073874944
	.word	1073875072
	.word	268468799
	.word	-1073872904
	.word	1073872896
	.cfi_endproc
.LFE133:
	.size	HAL_DMA_DeInit, .-HAL_DMA_DeInit
	.section	.text.HAL_DMA_Start,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_DMA_Start
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_DMA_Start, %function
HAL_DMA_Start:
.LVL32:
.LFB134:
	.loc 1 379 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 380 3 view .LVU264
	.loc 1 383 3 view .LVU265
	.loc 1 386 3 view .LVU266
	.loc 1 386 3 view .LVU267
	.loc 1 379 1 is_stmt 0 view .LVU268
	push	{r4, r5, r6, r7}
.LCFI6:
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 7, -4
	.loc 1 386 3 view .LVU269
	ldrb	r4, [r0, #36]	@ zero_extendqisi2
	cmp	r4, #1
	beq	.L39
	.loc 1 386 3 is_stmt 1 discriminator 2 view .LVU270
	movs	r4, #1
	strb	r4, [r0, #36]
	.loc 1 386 3 discriminator 2 view .LVU271
	.loc 1 388 3 discriminator 2 view .LVU272
	.loc 1 388 34 is_stmt 0 discriminator 2 view .LVU273
	ldrb	r4, [r0, #37]	@ zero_extendqisi2
	.loc 1 388 6 discriminator 2 view .LVU274
	cmp	r4, #1
	beq	.L44
	.loc 1 406 5 is_stmt 1 view .LVU275
	.loc 1 406 5 view .LVU276
	movs	r3, #0
.LVL33:
	.loc 1 406 5 is_stmt 0 view .LVU277
	strb	r3, [r0, #36]
	.loc 1 406 5 is_stmt 1 view .LVU278
	.loc 1 407 5 view .LVU279
.LVL34:
	.loc 1 410 1 is_stmt 0 view .LVU280
	pop	{r4, r5, r6, r7}
.LCFI7:
	.cfi_remember_state
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 407 12 view .LVU281
	movs	r0, #2
.LVL35:
	.loc 1 410 1 view .LVU282
	bx	lr
.LVL36:
.L44:
.LCFI8:
	.cfi_restore_state
	.loc 1 391 5 is_stmt 1 view .LVU283
	.loc 1 391 17 is_stmt 0 view .LVU284
	movs	r4, #2
	strb	r4, [r0, #37]
	.loc 1 392 5 is_stmt 1 view .LVU285
	.loc 1 392 21 is_stmt 0 view .LVU286
	movs	r4, #0
	str	r4, [r0, #60]
	.loc 1 395 5 is_stmt 1 view .LVU287
	ldr	r4, [r0]
.LBB40:
.LBB41:
	.loc 1 1005 7 is_stmt 0 view .LVU288
	ldr	r6, [r0, #76]
.LBE41:
.LBE40:
	.loc 1 395 5 view .LVU289
	ldr	r5, [r4]
	bic	r5, r5, #1
	str	r5, [r4]
	.loc 1 398 5 is_stmt 1 view .LVU290
.LVL37:
.LBB43:
.LBI40:
	.loc 1 1002 13 view .LVU291
.LBB42:
	.loc 1 1005 3 view .LVU292
	.loc 1 1005 34 is_stmt 0 view .LVU293
	ldrd	r7, r5, [r0, #80]
	str	r7, [r6, #4]
	.loc 1 1007 3 is_stmt 1 view .LVU294
	.loc 1 1007 6 is_stmt 0 view .LVU295
	cbz	r5, .L36
	.loc 1 1010 5 is_stmt 1 view .LVU296
	.loc 1 1010 47 is_stmt 0 view .LVU297
	ldrd	r5, r6, [r0, #88]
	.loc 1 1010 41 view .LVU298
	str	r6, [r5, #4]
.L36:
	.loc 1 1014 3 is_stmt 1 view .LVU299
	.loc 1 1014 69 is_stmt 0 view .LVU300
	ldr	r5, [r0, #68]
	.loc 1 1014 7 view .LVU301
	ldr	r6, [r0, #64]
	.loc 1 1014 69 view .LVU302
	and	ip, r5, #31
	.loc 1 1020 6 view .LVU303
	ldr	r5, [r0, #8]
	.loc 1 1014 46 view .LVU304
	movs	r0, #1
.LVL38:
	.loc 1 1020 6 view .LVU305
	cmp	r5, #16
	.loc 1 1014 46 view .LVU306
	lsl	r0, r0, ip
	.loc 1 1014 30 view .LVU307
	str	r0, [r6, #4]
	.loc 1 1017 3 is_stmt 1 view .LVU308
	.loc 1 1017 25 is_stmt 0 view .LVU309
	str	r3, [r4, #4]
	.loc 1 1020 3 is_stmt 1 view .LVU310
	.loc 1 1023 5 view .LVU311
	.loc 1 1023 26 is_stmt 0 view .LVU312
	itete	eq
	streq	r2, [r4, #8]
	.loc 1 1026 5 is_stmt 1 view .LVU313
	.loc 1 1032 26 is_stmt 0 view .LVU314
	strne	r1, [r4, #8]
	.loc 1 1026 26 view .LVU315
	streq	r1, [r4, #12]
	.loc 1 1032 5 is_stmt 1 view .LVU316
	.loc 1 1035 5 view .LVU317
	.loc 1 1035 26 is_stmt 0 view .LVU318
	strne	r2, [r4, #12]
.LVL39:
	.loc 1 1035 26 view .LVU319
.LBE42:
.LBE43:
	.loc 1 401 5 is_stmt 1 view .LVU320
	ldr	r3, [r4]
.LVL40:
	.loc 1 401 5 is_stmt 0 view .LVU321
	orr	r3, r3, #1
	.loc 1 380 21 view .LVU322
	movs	r0, #0
	.loc 1 401 5 view .LVU323
	str	r3, [r4]
.LVL41:
	.loc 1 410 1 view .LVU324
	pop	{r4, r5, r6, r7}
.LCFI9:
	.cfi_remember_state
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	bx	lr
.LVL42:
.L39:
.LCFI10:
	.cfi_restore_state
	.loc 1 386 3 view .LVU325
	movs	r0, #2
.LVL43:
	.loc 1 410 1 view .LVU326
	pop	{r4, r5, r6, r7}
.LCFI11:
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE134:
	.size	HAL_DMA_Start, .-HAL_DMA_Start
	.section	.text.HAL_DMA_Start_IT,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_DMA_Start_IT
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_DMA_Start_IT, %function
HAL_DMA_Start_IT:
.LVL44:
.LFB135:
	.loc 1 423 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 424 3 view .LVU328
	.loc 1 427 3 view .LVU329
	.loc 1 430 3 view .LVU330
	.loc 1 430 3 view .LVU331
	.loc 1 423 1 is_stmt 0 view .LVU332
	push	{r4, r5, r6, r7}
.LCFI12:
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 7, -4
	.loc 1 430 3 view .LVU333
	ldrb	r4, [r0, #36]	@ zero_extendqisi2
	cmp	r4, #1
	beq	.L55
	.loc 1 430 3 is_stmt 1 discriminator 2 view .LVU334
	movs	r4, #1
	strb	r4, [r0, #36]
	.loc 1 430 3 discriminator 2 view .LVU335
	.loc 1 432 3 discriminator 2 view .LVU336
	.loc 1 432 34 is_stmt 0 discriminator 2 view .LVU337
	ldrb	r4, [r0, #37]	@ zero_extendqisi2
	.loc 1 432 6 discriminator 2 view .LVU338
	cmp	r4, #1
	beq	.L66
	.loc 1 477 5 is_stmt 1 view .LVU339
	.loc 1 477 5 view .LVU340
	movs	r3, #0
.LVL45:
	.loc 1 477 5 is_stmt 0 view .LVU341
	strb	r3, [r0, #36]
	.loc 1 477 5 is_stmt 1 view .LVU342
	.loc 1 480 5 view .LVU343
.LVL46:
	.loc 1 483 1 is_stmt 0 view .LVU344
	pop	{r4, r5, r6, r7}
.LCFI13:
	.cfi_remember_state
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 480 12 view .LVU345
	movs	r0, #2
.LVL47:
	.loc 1 483 1 view .LVU346
	bx	lr
.LVL48:
.L66:
.LCFI14:
	.cfi_restore_state
	.loc 1 435 5 is_stmt 1 view .LVU347
	.loc 1 435 17 is_stmt 0 view .LVU348
	movs	r4, #2
	strb	r4, [r0, #37]
	.loc 1 436 5 is_stmt 1 view .LVU349
	.loc 1 436 21 is_stmt 0 view .LVU350
	movs	r4, #0
	str	r4, [r0, #60]
	.loc 1 439 5 is_stmt 1 view .LVU351
	ldr	r4, [r0]
.LBB44:
.LBB45:
	.loc 1 1005 7 is_stmt 0 view .LVU352
	ldr	r6, [r0, #76]
.LBE45:
.LBE44:
	.loc 1 439 5 view .LVU353
	ldr	r5, [r4]
	bic	r5, r5, #1
	str	r5, [r4]
	.loc 1 442 5 is_stmt 1 view .LVU354
.LVL49:
.LBB49:
.LBI44:
	.loc 1 1002 13 view .LVU355
.LBB46:
	.loc 1 1005 3 view .LVU356
	.loc 1 1005 34 is_stmt 0 view .LVU357
	ldrd	r7, r5, [r0, #80]
	str	r7, [r6, #4]
	.loc 1 1007 3 is_stmt 1 view .LVU358
	.loc 1 1007 6 is_stmt 0 view .LVU359
	cbz	r5, .L48
	.loc 1 1010 5 is_stmt 1 view .LVU360
	.loc 1 1010 41 is_stmt 0 view .LVU361
	ldrd	r6, r7, [r0, #88]
	str	r7, [r6, #4]
.L48:
	.loc 1 1014 3 is_stmt 1 view .LVU362
	.loc 1 1014 69 is_stmt 0 view .LVU363
	ldr	r6, [r0, #68]
	.loc 1 1014 30 view .LVU364
	ldr	r7, [r0, #64]
	.loc 1 1014 69 view .LVU365
	and	ip, r6, #31
	.loc 1 1014 46 view .LVU366
	movs	r6, #1
	lsl	r6, r6, ip
	.loc 1 1014 30 view .LVU367
	str	r6, [r7, #4]
	.loc 1 1017 3 is_stmt 1 view .LVU368
	.loc 1 1017 25 is_stmt 0 view .LVU369
	str	r3, [r4, #4]
	.loc 1 1020 3 is_stmt 1 view .LVU370
	.loc 1 1020 6 is_stmt 0 view .LVU371
	ldr	r3, [r0, #8]
.LVL50:
	.loc 1 1020 6 view .LVU372
	cmp	r3, #16
	.loc 1 1023 5 is_stmt 1 view .LVU373
.LBE46:
.LBE49:
	.loc 1 446 8 is_stmt 0 view .LVU374
	ldr	r3, [r0, #48]
.LBB50:
.LBB47:
	.loc 1 1023 26 view .LVU375
	itete	eq
	streq	r2, [r4, #8]
	.loc 1 1026 5 is_stmt 1 view .LVU376
	.loc 1 1032 26 is_stmt 0 view .LVU377
	strne	r1, [r4, #8]
	.loc 1 1026 26 view .LVU378
	streq	r1, [r4, #12]
	.loc 1 1032 5 is_stmt 1 view .LVU379
	.loc 1 1035 5 view .LVU380
.LVL51:
	.loc 1 1035 5 is_stmt 0 view .LVU381
.LBE47:
.LBE50:
	.loc 1 446 5 is_stmt 1 view .LVU382
.LBB51:
.LBB48:
	.loc 1 1035 26 is_stmt 0 view .LVU383
	strne	r2, [r4, #12]
.LBE48:
.LBE51:
	.loc 1 446 8 view .LVU384
	cbz	r3, .L51
	.loc 1 449 7 is_stmt 1 view .LVU385
	ldr	r3, [r4]
	orr	r3, r3, #14
	str	r3, [r4]
.LVL52:
.L52:
	.loc 1 458 5 view .LVU386
	.loc 1 458 14 is_stmt 0 view .LVU387
	ldr	r3, [r0, #72]
	.loc 1 458 29 view .LVU388
	ldr	r2, [r3]
.LVL53:
	.loc 1 458 8 view .LVU389
	lsls	r2, r2, #15
	bpl	.L53
	.loc 1 461 7 is_stmt 1 view .LVU390
	.loc 1 461 32 is_stmt 0 view .LVU391
	ldr	r2, [r3]
	orr	r2, r2, #256
	str	r2, [r3]
.L53:
	.loc 1 464 5 is_stmt 1 view .LVU392
	.loc 1 464 8 is_stmt 0 view .LVU393
	cbz	r5, .L54
	.loc 1 468 7 is_stmt 1 view .LVU394
	.loc 1 468 36 is_stmt 0 view .LVU395
	ldr	r3, [r5]
	orr	r3, r3, #256
	str	r3, [r5]
.L54:
	.loc 1 472 5 is_stmt 1 view .LVU396
	ldr	r3, [r4]
	orr	r3, r3, #1
	.loc 1 424 21 is_stmt 0 view .LVU397
	movs	r0, #0
.LVL54:
	.loc 1 472 5 view .LVU398
	str	r3, [r4]
.LVL55:
	.loc 1 483 1 view .LVU399
	pop	{r4, r5, r6, r7}
.LCFI15:
	.cfi_remember_state
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	bx	lr
.LVL56:
.L51:
.LCFI16:
	.cfi_restore_state
	.loc 1 453 7 is_stmt 1 view .LVU400
	ldr	r3, [r4]
	bic	r3, r3, #4
	str	r3, [r4]
.LVL57:
	.loc 1 454 7 view .LVU401
	ldr	r3, [r4]
	orr	r3, r3, #10
	str	r3, [r4]
	b	.L52
.LVL58:
.L55:
	.loc 1 430 3 is_stmt 0 view .LVU402
	movs	r0, #2
.LVL59:
	.loc 1 483 1 view .LVU403
	pop	{r4, r5, r6, r7}
.LCFI17:
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE135:
	.size	HAL_DMA_Start_IT, .-HAL_DMA_Start_IT
	.section	.text.HAL_DMA_Abort,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_DMA_Abort
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_DMA_Abort, %function
HAL_DMA_Abort:
.LVL60:
.LFB136:
	.loc 1 492 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 493 3 view .LVU405
	.loc 1 495 3 view .LVU406
	.loc 1 495 10 is_stmt 0 view .LVU407
	ldrb	r2, [r0, #37]	@ zero_extendqisi2
	.loc 1 495 5 view .LVU408
	cmp	r2, #2
	.loc 1 492 1 view .LVU409
	mov	r3, r0
	.loc 1 495 5 view .LVU410
	beq	.L68
	.loc 1 498 5 is_stmt 1 view .LVU411
	.loc 1 498 21 is_stmt 0 view .LVU412
	movs	r2, #4
	str	r2, [r0, #60]
	.loc 1 500 5 is_stmt 1 view .LVU413
.LVL61:
	.loc 1 530 15 is_stmt 0 view .LVU414
	movs	r1, #1
	.loc 1 533 3 view .LVU415
	movs	r2, #0
	.loc 1 500 12 view .LVU416
	movs	r0, #1
.LVL62:
	.loc 1 530 3 is_stmt 1 view .LVU417
	.loc 1 530 15 is_stmt 0 view .LVU418
	strb	r1, [r3, #37]
	.loc 1 533 3 is_stmt 1 view .LVU419
	.loc 1 533 3 view .LVU420
	strb	r2, [r3, #36]
	.loc 1 533 3 view .LVU421
	.loc 1 535 3 view .LVU422
	.loc 1 536 1 is_stmt 0 view .LVU423
	bx	lr
.LVL63:
.L68:
	.loc 1 505 6 is_stmt 1 view .LVU424
	ldr	r2, [r0]
	.loc 1 514 72 is_stmt 0 view .LVU425
	ldr	r1, [r3, #68]
	.loc 1 492 1 view .LVU426
	push	{r4, r5}
.LCFI18:
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 5, -4
	.loc 1 508 10 view .LVU427
	ldr	r4, [r0, #72]
	.loc 1 505 6 view .LVU428
	ldr	r0, [r2]
.LVL64:
	.loc 1 514 10 view .LVU429
	ldr	r5, [r3, #64]
	.loc 1 505 6 view .LVU430
	bic	r0, r0, #14
	str	r0, [r2]
	.loc 1 508 6 is_stmt 1 view .LVU431
	.loc 1 508 31 is_stmt 0 view .LVU432
	ldr	r0, [r4]
	bic	r0, r0, #256
	str	r0, [r4]
	.loc 1 511 6 is_stmt 1 view .LVU433
	ldr	r0, [r2]
	.loc 1 517 10 is_stmt 0 view .LVU434
	ldr	r4, [r3, #76]
	.loc 1 511 6 view .LVU435
	bic	r0, r0, #1
	str	r0, [r2]
	.loc 1 514 6 is_stmt 1 view .LVU436
	.loc 1 514 72 is_stmt 0 view .LVU437
	and	r1, r1, #31
	.loc 1 514 49 view .LVU438
	movs	r2, #1
	lsls	r2, r2, r1
	.loc 1 517 43 view .LVU439
	ldrd	r1, r0, [r3, #80]
	.loc 1 514 33 view .LVU440
	str	r2, [r5, #4]
	.loc 1 517 6 is_stmt 1 view .LVU441
	.loc 1 517 37 is_stmt 0 view .LVU442
	str	r1, [r4, #4]
	.loc 1 519 6 is_stmt 1 view .LVU443
	.loc 1 519 9 is_stmt 0 view .LVU444
	cbz	r0, .L69
	.loc 1 523 8 is_stmt 1 view .LVU445
	.loc 1 523 37 is_stmt 0 view .LVU446
	ldr	r2, [r0]
	.loc 1 526 50 view .LVU447
	ldrd	r1, r4, [r3, #88]
	.loc 1 523 37 view .LVU448
	bic	r2, r2, #256
	str	r2, [r0]
	.loc 1 526 8 is_stmt 1 view .LVU449
	.loc 1 526 44 is_stmt 0 view .LVU450
	str	r4, [r1, #4]
	.loc 1 493 21 view .LVU451
	movs	r0, #0
.L69:
.LVL65:
	.loc 1 530 3 is_stmt 1 view .LVU452
	.loc 1 530 15 is_stmt 0 view .LVU453
	movs	r1, #1
	.loc 1 533 3 view .LVU454
	movs	r2, #0
	.loc 1 530 15 view .LVU455
	strb	r1, [r3, #37]
	.loc 1 533 3 is_stmt 1 view .LVU456
	.loc 1 533 3 view .LVU457
	strb	r2, [r3, #36]
	.loc 1 533 3 view .LVU458
	.loc 1 535 3 view .LVU459
	.loc 1 536 1 is_stmt 0 view .LVU460
	pop	{r4, r5}
.LCFI19:
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE136:
	.size	HAL_DMA_Abort, .-HAL_DMA_Abort
	.section	.text.HAL_DMA_Abort_IT,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_DMA_Abort_IT
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_DMA_Abort_IT, %function
HAL_DMA_Abort_IT:
.LVL66:
.LFB137:
	.loc 1 545 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 546 3 view .LVU462
	.loc 1 548 3 view .LVU463
	.loc 1 545 1 is_stmt 0 view .LVU464
	push	{r3, r4, r5, lr}
.LCFI20:
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	.loc 1 548 33 view .LVU465
	ldrb	r3, [r0, #37]	@ zero_extendqisi2
	.loc 1 548 6 view .LVU466
	cmp	r3, #2
	beq	.L75
	.loc 1 551 5 is_stmt 1 view .LVU467
	.loc 1 554 17 is_stmt 0 view .LVU468
	movs	r3, #1
	.loc 1 551 21 view .LVU469
	movs	r1, #4
	.loc 1 557 5 view .LVU470
	movs	r2, #0
	.loc 1 551 21 view .LVU471
	str	r1, [r0, #60]
	.loc 1 554 5 is_stmt 1 view .LVU472
	.loc 1 557 5 is_stmt 0 view .LVU473
	strb	r2, [r0, #36]
	.loc 1 554 17 view .LVU474
	strb	r3, [r0, #37]
	.loc 1 557 5 is_stmt 1 view .LVU475
	.loc 1 557 5 view .LVU476
	.loc 1 557 5 view .LVU477
	.loc 1 559 5 view .LVU478
.LVL67:
	.loc 1 559 12 is_stmt 0 view .LVU479
	mov	r0, r3
.LVL68:
	.loc 1 600 3 is_stmt 1 view .LVU480
	.loc 1 601 1 is_stmt 0 view .LVU481
	pop	{r3, r4, r5, pc}
.LVL69:
.L75:
	.loc 1 564 5 is_stmt 1 view .LVU482
	ldr	r3, [r0]
	.loc 1 570 9 is_stmt 0 view .LVU483
	ldr	r4, [r0, #72]
	.loc 1 564 5 view .LVU484
	ldr	r1, [r3]
	.loc 1 573 71 view .LVU485
	ldr	r2, [r0, #68]
	.loc 1 573 9 view .LVU486
	ldr	r5, [r0, #64]
	.loc 1 564 5 view .LVU487
	bic	r1, r1, #14
	str	r1, [r3]
	.loc 1 567 5 is_stmt 1 view .LVU488
	ldr	r1, [r3]
	bic	r1, r1, #1
	str	r1, [r3]
	.loc 1 570 5 view .LVU489
	.loc 1 570 30 is_stmt 0 view .LVU490
	ldr	r3, [r4]
	.loc 1 576 9 view .LVU491
	ldr	r1, [r0, #76]
	.loc 1 570 30 view .LVU492
	bic	r3, r3, #256
	str	r3, [r4]
	.loc 1 573 5 is_stmt 1 view .LVU493
	.loc 1 573 71 is_stmt 0 view .LVU494
	and	r2, r2, #31
	.loc 1 573 48 view .LVU495
	movs	r3, #1
	lsls	r3, r3, r2
	.loc 1 576 42 view .LVU496
	ldrd	r4, r2, [r0, #80]
	.loc 1 573 32 view .LVU497
	str	r3, [r5, #4]
	.loc 1 576 5 is_stmt 1 view .LVU498
	.loc 1 576 36 is_stmt 0 view .LVU499
	str	r4, [r1, #4]
	.loc 1 578 5 is_stmt 1 view .LVU500
	.loc 1 578 8 is_stmt 0 view .LVU501
	cbz	r2, .L77
	.loc 1 582 7 is_stmt 1 view .LVU502
	.loc 1 582 36 is_stmt 0 view .LVU503
	ldr	r3, [r2]
	.loc 1 585 49 view .LVU504
	ldrd	r1, r4, [r0, #88]
	.loc 1 582 36 view .LVU505
	bic	r3, r3, #256
	str	r3, [r2]
	.loc 1 585 7 is_stmt 1 view .LVU506
	.loc 1 585 43 is_stmt 0 view .LVU507
	str	r4, [r1, #4]
.L77:
	.loc 1 589 5 is_stmt 1 view .LVU508
	.loc 1 595 13 is_stmt 0 view .LVU509
	ldr	r3, [r0, #56]
	.loc 1 589 17 view .LVU510
	movs	r2, #1
	.loc 1 592 5 view .LVU511
	movs	r4, #0
	.loc 1 589 17 view .LVU512
	strb	r2, [r0, #37]
	.loc 1 592 5 is_stmt 1 view .LVU513
	.loc 1 592 5 view .LVU514
	strb	r4, [r0, #36]
	.loc 1 592 5 view .LVU515
	.loc 1 595 5 view .LVU516
	.loc 1 595 8 is_stmt 0 view .LVU517
	cbz	r3, .L78
	.loc 1 597 7 is_stmt 1 view .LVU518
	blx	r3
.LVL70:
	.loc 1 546 21 is_stmt 0 view .LVU519
	mov	r0, r4
.LVL71:
	.loc 1 600 3 is_stmt 1 view .LVU520
	.loc 1 601 1 is_stmt 0 view .LVU521
	pop	{r3, r4, r5, pc}
.LVL72:
.L78:
	.loc 1 546 21 view .LVU522
	mov	r0, r3
.LVL73:
	.loc 1 600 3 is_stmt 1 view .LVU523
	.loc 1 601 1 is_stmt 0 view .LVU524
	pop	{r3, r4, r5, pc}
	.cfi_endproc
.LFE137:
	.size	HAL_DMA_Abort_IT, .-HAL_DMA_Abort_IT
	.section	.text.HAL_DMA_PollForTransfer,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_DMA_PollForTransfer
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_DMA_PollForTransfer, %function
HAL_DMA_PollForTransfer:
.LVL74:
.LFB138:
	.loc 1 613 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 614 3 view .LVU526
	.loc 1 615 3 view .LVU527
	.loc 1 617 3 view .LVU528
	.loc 1 613 1 is_stmt 0 view .LVU529
	push	{r3, r4, r5, r6, r7, r8, r9, lr}
.LCFI21:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.cfi_offset 4, -28
	.cfi_offset 5, -24
	.cfi_offset 6, -20
	.cfi_offset 7, -16
	.cfi_offset 8, -12
	.cfi_offset 9, -8
	.cfi_offset 14, -4
	.loc 1 617 33 view .LVU530
	ldrb	r3, [r0, #37]	@ zero_extendqisi2
	.loc 1 617 6 view .LVU531
	cmp	r3, #2
	.loc 1 613 1 view .LVU532
	mov	r4, r0
	.loc 1 617 6 view .LVU533
	beq	.L84
	.loc 1 620 5 is_stmt 1 view .LVU534
	.loc 1 620 21 is_stmt 0 view .LVU535
	movs	r2, #4
.LVL75:
	.loc 1 621 5 view .LVU536
	movs	r3, #0
	.loc 1 620 21 view .LVU537
	str	r2, [r0, #60]
	.loc 1 621 5 is_stmt 1 view .LVU538
	.loc 1 621 5 view .LVU539
	strb	r3, [r0, #36]
	.loc 1 621 5 view .LVU540
	.loc 1 622 5 view .LVU541
	.loc 1 622 12 is_stmt 0 view .LVU542
	movs	r0, #1
.LVL76:
.L85:
	.loc 1 733 1 view .LVU543
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
.LVL77:
.L84:
	.loc 1 626 3 is_stmt 1 view .LVU544
	uxtb	r5, r3
	.loc 1 626 18 is_stmt 0 view .LVU545
	ldr	r3, [r0]
	.loc 1 626 28 view .LVU546
	ldr	r3, [r3]
	.loc 1 626 6 view .LVU547
	lsls	r0, r3, #26
.LVL78:
	.loc 1 626 6 view .LVU548
	bmi	.L113
	.loc 1 633 3 is_stmt 1 view .LVU549
	.loc 1 637 58 is_stmt 0 view .LVU550
	ldr	r3, [r4, #68]
	mov	r6, r1
	mov	r7, r2
	.loc 1 633 6 view .LVU551
	cmp	r1, #0
	bne	.L87
.L112:
	.loc 1 642 58 view .LVU552
	and	r3, r3, #31
	.loc 1 642 10 view .LVU553
	lsls	r5, r5, r3
.LVL79:
	.loc 1 646 3 is_stmt 1 view .LVU554
	.loc 1 646 15 is_stmt 0 view .LVU555
	bl	HAL_GetTick
.LVL80:
	.loc 1 650 69 view .LVU556
	mov	r9, #8
	.loc 1 646 15 view .LVU557
	mov	r8, r0
.LVL81:
	.loc 1 648 3 is_stmt 1 view .LVU558
.L89:
	.loc 1 648 21 is_stmt 0 view .LVU559
	ldrd	r3, r2, [r4, #64]
	.loc 1 650 92 view .LVU560
	and	ip, r2, #31
	adds	r2, r7, #1
	bne	.L92
	.loc 1 650 69 view .LVU561
	movs	r0, #8
	lsl	r0, r0, ip
	b	.L95
.L114:
	.loc 1 650 37 view .LVU562
	ldr	r2, [r3]
	.loc 1 650 8 view .LVU563
	tst	r2, r0
	bne	.L94
.L95:
	.loc 1 648 9 is_stmt 1 view .LVU564
	.loc 1 650 5 view .LVU565
	.loc 1 648 37 is_stmt 0 view .LVU566
	ldr	r2, [r3]
	.loc 1 648 9 view .LVU567
	tst	r2, r5
	beq	.L114
.L93:
	.loc 1 688 3 is_stmt 1 view .LVU568
	.loc 1 688 11 is_stmt 0 view .LVU569
	ldr	r2, [r4, #84]
	.loc 1 688 6 view .LVU570
	cbz	r2, .L97
	.loc 1 691 5 is_stmt 1 view .LVU571
	.loc 1 691 51 is_stmt 0 view .LVU572
	ldrd	r1, r0, [r4, #88]
	.loc 1 691 38 view .LVU573
	ldr	r5, [r1]
.LVL82:
	.loc 1 691 8 view .LVU574
	tst	r5, r0
	beq	.L97
	.loc 1 694 7 is_stmt 1 view .LVU575
	.loc 1 694 36 is_stmt 0 view .LVU576
	ldr	r5, [r2]
	orr	r5, r5, #256
	str	r5, [r2]
	.loc 1 697 7 is_stmt 1 view .LVU577
	.loc 1 697 43 is_stmt 0 view .LVU578
	str	r0, [r1, #4]
	.loc 1 700 7 is_stmt 1 view .LVU579
	.loc 1 700 23 is_stmt 0 view .LVU580
	ldr	r2, [r4, #60]
	orr	r2, r2, #1024
	str	r2, [r4, #60]
.L97:
	.loc 1 705 3 is_stmt 1 view .LVU581
	.loc 1 705 45 is_stmt 0 view .LVU582
	ldrd	r2, r1, [r4, #76]
	.loc 1 705 33 view .LVU583
	ldr	r0, [r2]
	.loc 1 705 6 view .LVU584
	tst	r0, r1
	beq	.L98
	.loc 1 708 5 is_stmt 1 view .LVU585
	.loc 1 708 36 is_stmt 0 view .LVU586
	str	r1, [r2, #4]
	.loc 1 711 5 is_stmt 1 view .LVU587
	.loc 1 711 21 is_stmt 0 view .LVU588
	ldr	r2, [r4, #60]
	orr	r2, r2, #512
	str	r2, [r4, #60]
.L98:
	.loc 1 714 3 is_stmt 1 view .LVU589
	.loc 1 714 6 is_stmt 0 view .LVU590
	cmp	r6, #0
	bne	.L99
	.loc 1 717 5 is_stmt 1 view .LVU591
	.loc 1 717 58 is_stmt 0 view .LVU592
	movs	r2, #2
	lsl	r2, r2, ip
	.loc 1 721 17 view .LVU593
	movs	r1, #1
	.loc 1 717 32 view .LVU594
	str	r2, [r3, #4]
	.loc 1 721 5 is_stmt 1 view .LVU595
	.loc 1 721 17 is_stmt 0 view .LVU596
	strb	r1, [r4, #37]
.L100:
	.loc 1 730 3 is_stmt 1 view .LVU597
	.loc 1 730 3 view .LVU598
	movs	r0, #0
	strb	r0, [r4, #36]
	.loc 1 730 3 view .LVU599
	.loc 1 732 3 view .LVU600
	.loc 1 733 1 is_stmt 0 view .LVU601
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
.LVL83:
.L113:
	.loc 1 628 5 is_stmt 1 view .LVU602
	.loc 1 628 21 is_stmt 0 view .LVU603
	mov	r3, #256
	str	r3, [r4, #60]
	.loc 1 629 5 is_stmt 1 view .LVU604
	.loc 1 629 12 is_stmt 0 view .LVU605
	movs	r0, #1
	.loc 1 733 1 view .LVU606
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
.LVL84:
.L87:
	.loc 1 642 5 is_stmt 1 view .LVU607
	.loc 1 642 10 is_stmt 0 view .LVU608
	movs	r5, #4
	b	.L112
.LVL85:
.L92:
	.loc 1 650 5 is_stmt 1 view .LVU609
	.loc 1 669 5 view .LVU610
	.loc 1 671 7 view .LVU611
	.loc 1 648 9 view .LVU612
	.loc 1 648 37 is_stmt 0 view .LVU613
	ldr	r2, [r3]
	.loc 1 648 9 view .LVU614
	tst	r2, r5
	bne	.L93
	.loc 1 650 37 view .LVU615
	ldr	r2, [r3]
	.loc 1 650 69 view .LVU616
	lsl	r1, r9, ip
	.loc 1 650 8 view .LVU617
	tst	r1, r2
	bne	.L94
	.loc 1 671 13 view .LVU618
	bl	HAL_GetTick
.LVL86:
	.loc 1 671 27 view .LVU619
	sub	r0, r0, r8
	.loc 1 671 10 view .LVU620
	cmp	r0, r7
	bhi	.L91
	.loc 1 671 51 discriminator 1 view .LVU621
	cmp	r7, #0
	bne	.L89
.L91:
	.loc 1 674 9 is_stmt 1 view .LVU622
	.loc 1 677 21 is_stmt 0 view .LVU623
	movs	r0, #1
	.loc 1 674 25 view .LVU624
	movs	r2, #32
	.loc 1 680 9 view .LVU625
	movs	r3, #0
	.loc 1 674 25 view .LVU626
	str	r2, [r4, #60]
	.loc 1 677 9 is_stmt 1 view .LVU627
	.loc 1 680 9 is_stmt 0 view .LVU628
	strb	r3, [r4, #36]
	.loc 1 677 21 view .LVU629
	strb	r0, [r4, #37]
	.loc 1 680 9 is_stmt 1 view .LVU630
	.loc 1 680 9 view .LVU631
	.loc 1 680 9 view .LVU632
	.loc 1 682 9 view .LVU633
	.loc 1 682 16 is_stmt 0 view .LVU634
	b	.L85
.L94:
	.loc 1 655 7 is_stmt 1 view .LVU635
	.loc 1 655 60 is_stmt 0 view .LVU636
	movs	r2, #1
	lsl	r0, r2, ip
	.loc 1 664 7 view .LVU637
	movs	r1, #0
	.loc 1 655 34 view .LVU638
	str	r0, [r3, #4]
	.loc 1 658 7 is_stmt 1 view .LVU639
	.loc 1 658 23 is_stmt 0 view .LVU640
	str	r2, [r4, #60]
	.loc 1 661 7 is_stmt 1 view .LVU641
	.loc 1 664 7 is_stmt 0 view .LVU642
	strb	r1, [r4, #36]
	.loc 1 661 19 view .LVU643
	strb	r2, [r4, #37]
	.loc 1 664 7 is_stmt 1 view .LVU644
	.loc 1 664 7 view .LVU645
	.loc 1 664 7 view .LVU646
	.loc 1 666 7 view .LVU647
	.loc 1 666 14 is_stmt 0 view .LVU648
	mov	r0, r2
	.loc 1 733 1 view .LVU649
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
.LVL87:
.L99:
	.loc 1 726 5 is_stmt 1 view .LVU650
	.loc 1 726 58 is_stmt 0 view .LVU651
	movs	r2, #4
	lsl	r2, r2, ip
	.loc 1 726 32 view .LVU652
	str	r2, [r3, #4]
	b	.L100
	.cfi_endproc
.LFE138:
	.size	HAL_DMA_PollForTransfer, .-HAL_DMA_PollForTransfer
	.section	.text.HAL_DMA_IRQHandler,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_DMA_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_DMA_IRQHandler, %function
HAL_DMA_IRQHandler:
.LVL88:
.LFB139:
	.loc 1 742 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 743 3 view .LVU654
	.loc 1 742 1 is_stmt 0 view .LVU655
	push	{r4, r5, r6}
.LCFI22:
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 6, -4
	.loc 1 747 72 view .LVU656
	ldr	r3, [r0, #68]
	.loc 1 743 26 view .LVU657
	ldr	r6, [r0, #64]
	.loc 1 744 28 view .LVU658
	ldr	r5, [r0]
	.loc 1 743 12 view .LVU659
	ldr	r1, [r6]
.LVL89:
	.loc 1 744 3 is_stmt 1 view .LVU660
	.loc 1 744 12 is_stmt 0 view .LVU661
	ldr	r4, [r5]
.LVL90:
	.loc 1 747 3 is_stmt 1 view .LVU662
	.loc 1 747 72 is_stmt 0 view .LVU663
	and	r3, r3, #31
	.loc 1 747 49 view .LVU664
	movs	r2, #4
	lsls	r2, r2, r3
	.loc 1 747 6 view .LVU665
	tst	r2, r1
	beq	.L116
	.loc 1 747 84 discriminator 1 view .LVU666
	tst	r4, #4
	beq	.L116
	.loc 1 750 5 is_stmt 1 view .LVU667
	.loc 1 750 24 is_stmt 0 view .LVU668
	ldr	r3, [r5]
	.loc 1 750 8 view .LVU669
	lsls	r3, r3, #26
	bmi	.L117
	.loc 1 753 7 is_stmt 1 view .LVU670
	ldr	r3, [r5]
	bic	r3, r3, #4
	str	r3, [r5]
.L117:
	.loc 1 756 5 view .LVU671
	.loc 1 761 13 is_stmt 0 view .LVU672
	ldr	r3, [r0, #48]
	.loc 1 756 32 view .LVU673
	str	r2, [r6, #4]
	.loc 1 761 5 is_stmt 1 view .LVU674
	.loc 1 761 8 is_stmt 0 view .LVU675
	cbz	r3, .L115
.LVL91:
.L148:
	.loc 1 788 7 is_stmt 1 view .LVU676
	.loc 1 823 1 is_stmt 0 view .LVU677
	pop	{r4, r5, r6}
.LCFI23:
	.cfi_remember_state
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL92:
	.loc 1 788 7 view .LVU678
	bx	r3	@ indirect register sibling call
.LVL93:
.L116:
.LCFI24:
	.cfi_restore_state
	.loc 1 768 8 is_stmt 1 view .LVU679
	.loc 1 768 54 is_stmt 0 view .LVU680
	movs	r2, #2
	lsls	r2, r2, r3
	.loc 1 768 11 view .LVU681
	tst	r2, r1
	beq	.L120
	.loc 1 769 12 view .LVU682
	tst	r4, #2
	beq	.L120
	.loc 1 771 5 is_stmt 1 view .LVU683
	.loc 1 771 24 is_stmt 0 view .LVU684
	ldr	r3, [r5]
	.loc 1 771 8 view .LVU685
	lsls	r1, r3, #26
.LVL94:
	.loc 1 771 8 view .LVU686
	bmi	.L121
	.loc 1 774 7 is_stmt 1 view .LVU687
	ldr	r3, [r5]
	bic	r3, r3, #10
	str	r3, [r5]
	.loc 1 777 7 view .LVU688
	.loc 1 777 19 is_stmt 0 view .LVU689
	movs	r3, #1
	strb	r3, [r0, #37]
.L121:
	.loc 1 780 5 is_stmt 1 view .LVU690
	.loc 1 785 13 is_stmt 0 view .LVU691
	ldr	r3, [r0, #44]
	.loc 1 780 32 view .LVU692
	str	r2, [r6, #4]
	.loc 1 783 5 is_stmt 1 view .LVU693
	.loc 1 783 5 view .LVU694
	movs	r1, #0
	strb	r1, [r0, #36]
	.loc 1 783 5 view .LVU695
	.loc 1 785 5 view .LVU696
	.loc 1 785 8 is_stmt 0 view .LVU697
	cmp	r3, #0
	bne	.L148
.LVL95:
.L115:
	.loc 1 823 1 view .LVU698
	pop	{r4, r5, r6}
.LCFI25:
	.cfi_remember_state
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	bx	lr
.LVL96:
.L120:
.LCFI26:
	.cfi_restore_state
	.loc 1 792 8 is_stmt 1 view .LVU699
	.loc 1 792 54 is_stmt 0 view .LVU700
	movs	r2, #8
	lsls	r2, r2, r3
	.loc 1 792 11 view .LVU701
	tst	r2, r1
	beq	.L115
	.loc 1 793 12 view .LVU702
	lsls	r2, r4, #28
	bpl	.L115
	.loc 1 798 5 is_stmt 1 view .LVU703
	ldr	r2, [r5]
	.loc 1 812 13 is_stmt 0 view .LVU704
	ldr	r1, [r0, #52]
.LVL97:
	.loc 1 798 5 view .LVU705
	bic	r2, r2, #14
	str	r2, [r5]
	.loc 1 801 5 is_stmt 1 view .LVU706
	.loc 1 801 58 is_stmt 0 view .LVU707
	movs	r2, #1
	lsl	r3, r2, r3
	.loc 1 810 5 view .LVU708
	movs	r4, #0
.LVL98:
	.loc 1 801 32 view .LVU709
	str	r3, [r6, #4]
	.loc 1 804 5 is_stmt 1 view .LVU710
	.loc 1 804 21 is_stmt 0 view .LVU711
	str	r2, [r0, #60]
	.loc 1 807 5 is_stmt 1 view .LVU712
	.loc 1 810 5 is_stmt 0 view .LVU713
	strb	r4, [r0, #36]
	.loc 1 807 17 view .LVU714
	strb	r2, [r0, #37]
	.loc 1 810 5 is_stmt 1 view .LVU715
	.loc 1 810 5 view .LVU716
	.loc 1 810 5 view .LVU717
	.loc 1 812 5 view .LVU718
	.loc 1 812 8 is_stmt 0 view .LVU719
	cmp	r1, #0
	beq	.L115
	.loc 1 815 7 is_stmt 1 view .LVU720
	.loc 1 823 1 is_stmt 0 view .LVU721
	pop	{r4, r5, r6}
.LCFI27:
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 815 7 view .LVU722
	bx	r1	@ indirect register sibling call
.LVL99:
	.loc 1 815 7 view .LVU723
	.cfi_endproc
.LFE139:
	.size	HAL_DMA_IRQHandler, .-HAL_DMA_IRQHandler
	.section	.text.HAL_DMA_RegisterCallback,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_DMA_RegisterCallback
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_DMA_RegisterCallback, %function
HAL_DMA_RegisterCallback:
.LVL100:
.LFB140:
	.loc 1 836 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 837 3 view .LVU725
	.loc 1 840 3 view .LVU726
	.loc 1 840 3 view .LVU727
	ldrb	r3, [r0, #36]	@ zero_extendqisi2
	cmp	r3, #1
	beq	.L157
	.loc 1 840 3 discriminator 2 view .LVU728
	.loc 1 840 3 discriminator 2 view .LVU729
	.loc 1 842 3 discriminator 2 view .LVU730
	.loc 1 842 34 is_stmt 0 discriminator 2 view .LVU731
	ldrb	ip, [r0, #37]	@ zero_extendqisi2
	.loc 1 842 6 discriminator 2 view .LVU732
	cmp	ip, #1
	.loc 1 842 34 discriminator 2 view .LVU733
	uxtb	r3, ip
	.loc 1 842 6 discriminator 2 view .LVU734
	beq	.L159
	.loc 1 869 12 view .LVU735
	movs	r3, #1
.L151:
.LVL101:
	.loc 1 873 3 is_stmt 1 view .LVU736
	.loc 1 873 3 view .LVU737
	movs	r2, #0
.LVL102:
	.loc 1 873 3 is_stmt 0 view .LVU738
	strb	r2, [r0, #36]
	.loc 1 873 3 is_stmt 1 view .LVU739
	.loc 1 875 3 view .LVU740
	.loc 1 876 1 is_stmt 0 view .LVU741
	mov	r0, r3
.LVL103:
	.loc 1 876 1 view .LVU742
	bx	lr
.LVL104:
.L159:
	.loc 1 844 5 is_stmt 1 view .LVU743
	cmp	r1, #3
	bhi	.L151
	tbb	[pc, r1]
.L153:
	.byte	(.L156-.L153)/2
	.byte	(.L155-.L153)/2
	.byte	(.L154-.L153)/2
	.byte	(.L152-.L153)/2
	.p2align 1
.L152:
	.loc 1 859 9 view .LVU744
	.loc 1 859 33 is_stmt 0 view .LVU745
	str	r2, [r0, #56]
	.loc 1 860 9 is_stmt 1 view .LVU746
	.loc 1 837 21 is_stmt 0 view .LVU747
	movs	r3, #0
	.loc 1 860 9 view .LVU748
	b	.L151
.L154:
	.loc 1 855 9 is_stmt 1 view .LVU749
	.loc 1 855 33 is_stmt 0 view .LVU750
	str	r2, [r0, #52]
	.loc 1 856 9 is_stmt 1 view .LVU751
	.loc 1 837 21 is_stmt 0 view .LVU752
	movs	r3, #0
	.loc 1 856 9 view .LVU753
	b	.L151
.L155:
	.loc 1 851 9 is_stmt 1 view .LVU754
	.loc 1 851 36 is_stmt 0 view .LVU755
	str	r2, [r0, #48]
	.loc 1 852 9 is_stmt 1 view .LVU756
	.loc 1 837 21 is_stmt 0 view .LVU757
	movs	r3, #0
	.loc 1 852 9 view .LVU758
	b	.L151
.L156:
	.loc 1 847 9 is_stmt 1 view .LVU759
	.loc 1 847 32 is_stmt 0 view .LVU760
	str	r2, [r0, #44]
	.loc 1 848 9 is_stmt 1 view .LVU761
	.loc 1 837 21 is_stmt 0 view .LVU762
	mov	r3, r1
	.loc 1 848 9 view .LVU763
	b	.L151
.L157:
	.loc 1 840 3 view .LVU764
	movs	r3, #2
	.loc 1 876 1 view .LVU765
	mov	r0, r3
.LVL105:
	.loc 1 876 1 view .LVU766
	bx	lr
	.cfi_endproc
.LFE140:
	.size	HAL_DMA_RegisterCallback, .-HAL_DMA_RegisterCallback
	.section	.text.HAL_DMA_UnRegisterCallback,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_DMA_UnRegisterCallback
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_DMA_UnRegisterCallback, %function
HAL_DMA_UnRegisterCallback:
.LVL106:
.LFB141:
	.loc 1 887 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 888 3 view .LVU768
	.loc 1 891 3 view .LVU769
	.loc 1 891 3 view .LVU770
	ldrb	r3, [r0, #36]	@ zero_extendqisi2
	cmp	r3, #1
	beq	.L169
	.loc 1 891 3 discriminator 2 view .LVU771
	.loc 1 893 34 is_stmt 0 discriminator 2 view .LVU772
	ldrb	r2, [r0, #37]	@ zero_extendqisi2
	.loc 1 891 3 discriminator 2 view .LVU773
	mov	ip, #1
	.loc 1 893 6 discriminator 2 view .LVU774
	cmp	r2, ip
	.loc 1 891 3 discriminator 2 view .LVU775
	strb	ip, [r0, #36]
	.loc 1 891 3 is_stmt 1 discriminator 2 view .LVU776
	.loc 1 893 3 discriminator 2 view .LVU777
	.loc 1 893 34 is_stmt 0 discriminator 2 view .LVU778
	uxtb	r3, r2
	.loc 1 893 6 discriminator 2 view .LVU779
	beq	.L171
	.loc 1 927 12 view .LVU780
	mov	r3, ip
.L162:
.LVL107:
	.loc 1 931 3 is_stmt 1 view .LVU781
	.loc 1 931 3 view .LVU782
	movs	r2, #0
	strb	r2, [r0, #36]
	.loc 1 931 3 view .LVU783
	.loc 1 933 3 view .LVU784
	.loc 1 934 1 is_stmt 0 view .LVU785
	mov	r0, r3
.LVL108:
	.loc 1 934 1 view .LVU786
	bx	lr
.LVL109:
.L171:
	.loc 1 895 5 is_stmt 1 view .LVU787
	cmp	r1, #4
	bhi	.L162
	tbb	[pc, r1]
.L164:
	.byte	(.L168-.L164)/2
	.byte	(.L167-.L164)/2
	.byte	(.L166-.L164)/2
	.byte	(.L165-.L164)/2
	.byte	(.L163-.L164)/2
	.p2align 1
.L169:
	.loc 1 891 3 is_stmt 0 view .LVU788
	movs	r3, #2
	.loc 1 934 1 view .LVU789
	mov	r0, r3
.LVL110:
	.loc 1 934 1 view .LVU790
	bx	lr
.LVL111:
.L163:
	.loc 1 914 9 is_stmt 1 view .LVU791
	.loc 1 914 32 is_stmt 0 view .LVU792
	movs	r3, #0
	.loc 1 915 36 view .LVU793
	strd	r3, r3, [r0, #44]
	.loc 1 916 9 is_stmt 1 view .LVU794
	.loc 1 917 33 is_stmt 0 view .LVU795
	strd	r3, r3, [r0, #52]
	.loc 1 918 9 is_stmt 1 view .LVU796
	b	.L162
.L168:
	.loc 1 898 9 view .LVU797
	.loc 1 898 32 is_stmt 0 view .LVU798
	movs	r3, #0
	str	r3, [r0, #44]
	.loc 1 899 9 is_stmt 1 view .LVU799
	.loc 1 888 21 is_stmt 0 view .LVU800
	mov	r3, r1
	.loc 1 899 9 view .LVU801
	b	.L162
.L167:
	.loc 1 902 9 is_stmt 1 view .LVU802
	.loc 1 902 36 is_stmt 0 view .LVU803
	movs	r3, #0
	str	r3, [r0, #48]
	.loc 1 903 9 is_stmt 1 view .LVU804
	b	.L162
.L166:
	.loc 1 906 9 view .LVU805
	.loc 1 906 33 is_stmt 0 view .LVU806
	movs	r3, #0
	str	r3, [r0, #52]
	.loc 1 907 9 is_stmt 1 view .LVU807
	b	.L162
.L165:
	.loc 1 910 9 view .LVU808
	.loc 1 910 33 is_stmt 0 view .LVU809
	movs	r3, #0
	str	r3, [r0, #56]
	.loc 1 911 9 is_stmt 1 view .LVU810
	b	.L162
	.cfi_endproc
.LFE141:
	.size	HAL_DMA_UnRegisterCallback, .-HAL_DMA_UnRegisterCallback
	.section	.text.HAL_DMA_GetState,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_DMA_GetState
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_DMA_GetState, %function
HAL_DMA_GetState:
.LVL112:
.LFB142:
	.loc 1 965 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 967 3 view .LVU812
	.loc 1 967 14 is_stmt 0 view .LVU813
	ldrb	r0, [r0, #37]	@ zero_extendqisi2
.LVL113:
	.loc 1 968 1 view .LVU814
	bx	lr
	.cfi_endproc
.LFE142:
	.size	HAL_DMA_GetState, .-HAL_DMA_GetState
	.section	.text.HAL_DMA_GetError,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_DMA_GetError
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_DMA_GetError, %function
HAL_DMA_GetError:
.LVL114:
.LFB143:
	.loc 1 977 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 978 3 view .LVU816
	.loc 1 978 14 is_stmt 0 view .LVU817
	ldr	r0, [r0, #60]
.LVL115:
	.loc 1 979 1 view .LVU818
	bx	lr
	.cfi_endproc
.LFE143:
	.size	HAL_DMA_GetError, .-HAL_DMA_GetError
	.text
.Letext0:
	.file 2 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "Drivers/CMSIS/Device/ST/STM32G4xx/Include/stm32g431xx.h"
	.file 5 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_hal_def.h"
	.file 6 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_hal_dma.h"
	.file 7 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_hal.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xb6a
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF106
	.byte	0xc
	.4byte	.LASF107
	.4byte	.LASF108
	.4byte	.Ldebug_ranges0+0xb8
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
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x2
	.byte	0x4f
	.byte	0x19
	.4byte	0x5f
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x53
	.uleb128 0x5
	.4byte	0x7b
	.uleb128 0x6
	.byte	0x10
	.byte	0x4
	.2byte	0x167
	.byte	0x9
	.4byte	0xd7
	.uleb128 0x7
	.ascii	"CCR\000"
	.byte	0x4
	.2byte	0x169
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.4byte	.LASF11
	.byte	0x4
	.2byte	0x16a
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.4byte	.LASF12
	.byte	0x4
	.2byte	0x16b
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.4byte	.LASF13
	.byte	0x4
	.2byte	0x16c
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x9
	.4byte	.LASF14
	.byte	0x4
	.2byte	0x16d
	.byte	0x3
	.4byte	0x8c
	.uleb128 0x6
	.byte	0x8
	.byte	0x4
	.2byte	0x16f
	.byte	0x9
	.4byte	0x10f
	.uleb128 0x7
	.ascii	"ISR\000"
	.byte	0x4
	.2byte	0x171
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x4
	.2byte	0x172
	.byte	0x11
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x4
	.2byte	0x173
	.byte	0x3
	.4byte	0xe4
	.uleb128 0x6
	.byte	0x4
	.byte	0x4
	.2byte	0x179
	.byte	0x9
	.4byte	0x137
	.uleb128 0x7
	.ascii	"CCR\000"
	.byte	0x4
	.2byte	0x17b
	.byte	0x13
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x4
	.2byte	0x17c
	.byte	0x2
	.4byte	0x11c
	.uleb128 0x6
	.byte	0x8
	.byte	0x4
	.2byte	0x17e
	.byte	0x9
	.4byte	0x16f
	.uleb128 0x7
	.ascii	"CSR\000"
	.byte	0x4
	.2byte	0x180
	.byte	0x13
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.ascii	"CFR\000"
	.byte	0x4
	.2byte	0x181
	.byte	0x13
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x4
	.2byte	0x182
	.byte	0x2
	.4byte	0x144
	.uleb128 0x6
	.byte	0x4
	.byte	0x4
	.2byte	0x184
	.byte	0x9
	.4byte	0x197
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x4
	.2byte	0x186
	.byte	0x13
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x4
	.2byte	0x187
	.byte	0x2
	.4byte	0x17c
	.uleb128 0x6
	.byte	0x8
	.byte	0x4
	.2byte	0x189
	.byte	0x9
	.4byte	0x1cf
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x4
	.2byte	0x18b
	.byte	0x13
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x4
	.2byte	0x18c
	.byte	0x13
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x4
	.2byte	0x18d
	.byte	0x2
	.4byte	0x1a4
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF24
	.uleb128 0xa
	.byte	0x7
	.byte	0x1
	.4byte	0x37
	.byte	0x5
	.byte	0x27
	.byte	0x1
	.4byte	0x20a
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x5
	.byte	0x2c
	.byte	0x3
	.4byte	0x1e3
	.uleb128 0xa
	.byte	0x7
	.byte	0x1
	.4byte	0x37
	.byte	0x5
	.byte	0x32
	.byte	0x1
	.4byte	0x231
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x5
	.byte	0x35
	.byte	0x3
	.4byte	0x216
	.uleb128 0xc
	.byte	0x20
	.byte	0x6
	.byte	0x2e
	.byte	0x9
	.4byte	0x2bf
	.uleb128 0xd
	.4byte	.LASF33
	.byte	0x6
	.byte	0x30
	.byte	0xc
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0x6
	.byte	0x33
	.byte	0xc
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.4byte	.LASF35
	.byte	0x6
	.byte	0x37
	.byte	0xc
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.4byte	.LASF36
	.byte	0x6
	.byte	0x3a
	.byte	0xc
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.4byte	.LASF37
	.byte	0x6
	.byte	0x3d
	.byte	0xc
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.4byte	.LASF38
	.byte	0x6
	.byte	0x40
	.byte	0xc
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.4byte	.LASF39
	.byte	0x6
	.byte	0x43
	.byte	0xc
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.4byte	.LASF40
	.byte	0x6
	.byte	0x48
	.byte	0xc
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0x6
	.byte	0x4a
	.byte	0x3
	.4byte	0x23d
	.uleb128 0xa
	.byte	0x7
	.byte	0x1
	.4byte	0x37
	.byte	0x6
	.byte	0x50
	.byte	0x1
	.4byte	0x2f2
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF46
	.byte	0x6
	.byte	0x55
	.byte	0x3
	.4byte	0x2cb
	.uleb128 0x5
	.4byte	0x2f2
	.uleb128 0xa
	.byte	0x7
	.byte	0x1
	.4byte	0x37
	.byte	0x6
	.byte	0x5b
	.byte	0x1
	.4byte	0x31e
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF49
	.byte	0x6
	.byte	0x5e
	.byte	0x3
	.4byte	0x303
	.uleb128 0xa
	.byte	0x7
	.byte	0x1
	.4byte	0x37
	.byte	0x6
	.byte	0x65
	.byte	0x1
	.4byte	0x357
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x2
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x3
	.uleb128 0xb
	.4byte	.LASF54
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF55
	.byte	0x6
	.byte	0x6c
	.byte	0x3
	.4byte	0x32a
	.uleb128 0xe
	.4byte	.LASF109
	.byte	0x60
	.byte	0x6
	.byte	0x71
	.byte	0x10
	.4byte	0x47f
	.uleb128 0xd
	.4byte	.LASF56
	.byte	0x6
	.byte	0x73
	.byte	0x1b
	.4byte	0x47f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.4byte	.LASF57
	.byte	0x6
	.byte	0x75
	.byte	0x19
	.4byte	0x2bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.4byte	.LASF58
	.byte	0x6
	.byte	0x77
	.byte	0x19
	.4byte	0x231
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.4byte	.LASF59
	.byte	0x6
	.byte	0x79
	.byte	0x1e
	.4byte	0x2fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x25
	.uleb128 0xd
	.4byte	.LASF60
	.byte	0x6
	.byte	0x7b
	.byte	0x1a
	.4byte	0x485
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xd
	.4byte	.LASF61
	.byte	0x6
	.byte	0x7d
	.byte	0xb
	.4byte	0x499
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xd
	.4byte	.LASF62
	.byte	0x6
	.byte	0x7f
	.byte	0xb
	.4byte	0x499
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xd
	.4byte	.LASF63
	.byte	0x6
	.byte	0x81
	.byte	0xb
	.4byte	0x499
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xd
	.4byte	.LASF64
	.byte	0x6
	.byte	0x83
	.byte	0xb
	.4byte	0x499
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xd
	.4byte	.LASF65
	.byte	0x6
	.byte	0x85
	.byte	0x1a
	.4byte	0x87
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xd
	.4byte	.LASF66
	.byte	0x6
	.byte	0x87
	.byte	0x1b
	.4byte	0x49f
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xd
	.4byte	.LASF67
	.byte	0x6
	.byte	0x89
	.byte	0x1a
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.4byte	.LASF68
	.byte	0x6
	.byte	0x8b
	.byte	0x25
	.4byte	0x4a5
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xd
	.4byte	.LASF69
	.byte	0x6
	.byte	0x8d
	.byte	0x25
	.4byte	0x4ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xd
	.4byte	.LASF70
	.byte	0x6
	.byte	0x8f
	.byte	0x24
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xd
	.4byte	.LASF71
	.byte	0x6
	.byte	0x91
	.byte	0x25
	.4byte	0x4b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xd
	.4byte	.LASF72
	.byte	0x6
	.byte	0x93
	.byte	0x25
	.4byte	0x4b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0xd
	.4byte	.LASF73
	.byte	0x6
	.byte	0x95
	.byte	0x24
	.4byte	0x7b
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xd7
	.uleb128 0x10
	.byte	0x4
	.uleb128 0x11
	.byte	0x1
	.4byte	0x493
	.uleb128 0x12
	.4byte	0x493
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x363
	.uleb128 0xf
	.byte	0x4
	.4byte	0x487
	.uleb128 0xf
	.byte	0x4
	.4byte	0x10f
	.uleb128 0xf
	.byte	0x4
	.4byte	0x137
	.uleb128 0xf
	.byte	0x4
	.4byte	0x16f
	.uleb128 0xf
	.byte	0x4
	.4byte	0x197
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1cf
	.uleb128 0x3
	.4byte	.LASF74
	.byte	0x6
	.byte	0x97
	.byte	0x3
	.4byte	0x363
	.uleb128 0xf
	.byte	0x4
	.4byte	0x4bd
	.uleb128 0x13
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x43a
	.byte	0xd
	.byte	0x1
	.byte	0x1
	.4byte	0x4f9
	.uleb128 0x14
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x43a
	.byte	0x44
	.4byte	0x4c9
	.uleb128 0x15
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x43c
	.byte	0xc
	.4byte	0x7b
	.byte	0
	.uleb128 0x13
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x415
	.byte	0xd
	.byte	0x1
	.byte	0x1
	.4byte	0x53d
	.uleb128 0x14
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x415
	.byte	0x41
	.4byte	0x4c9
	.uleb128 0x15
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x417
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x15
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x418
	.byte	0xc
	.4byte	0x7b
	.uleb128 0x15
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x419
	.byte	0x1b
	.4byte	0x4a5
	.byte	0
	.uleb128 0x13
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x3ea
	.byte	0xd
	.byte	0x1
	.byte	0x1
	.4byte	0x581
	.uleb128 0x14
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x3ea
	.byte	0x2e
	.4byte	0x4c9
	.uleb128 0x14
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x3ea
	.byte	0x3d
	.4byte	0x7b
	.uleb128 0x14
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x3ea
	.byte	0x52
	.4byte	0x7b
	.uleb128 0x14
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x3ea
	.byte	0x67
	.4byte	0x7b
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x3d0
	.byte	0xa
	.byte	0x1
	.4byte	0x7b
	.4byte	.LFB143
	.4byte	.LFE143
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x5b6
	.uleb128 0x17
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x3d0
	.byte	0x2e
	.4byte	0x4c9
	.4byte	.LLST52
	.4byte	.LVUS52
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x3c4
	.byte	0x16
	.byte	0x1
	.4byte	0x2f2
	.4byte	.LFB142
	.4byte	.LFE142
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x5eb
	.uleb128 0x17
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x3c4
	.byte	0x3a
	.4byte	0x4c9
	.4byte	.LLST51
	.4byte	.LVUS51
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x376
	.byte	0x13
	.byte	0x1
	.4byte	0x20a
	.4byte	.LFB141
	.4byte	.LFE141
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x644
	.uleb128 0x17
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x376
	.byte	0x41
	.4byte	0x4c9
	.4byte	.LLST49
	.4byte	.LVUS49
	.uleb128 0x18
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x376
	.byte	0x61
	.4byte	0x357
	.byte	0x1
	.byte	0x51
	.uleb128 0x19
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x378
	.byte	0x15
	.4byte	0x20a
	.4byte	.LLST50
	.4byte	.LVUS50
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x343
	.byte	0x13
	.byte	0x1
	.4byte	0x20a
	.4byte	.LFB140
	.4byte	.LFE140
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x6b2
	.uleb128 0x17
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x343
	.byte	0x3f
	.4byte	0x4c9
	.4byte	.LLST46
	.4byte	.LVUS46
	.uleb128 0x18
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x343
	.byte	0x5f
	.4byte	0x357
	.byte	0x1
	.byte	0x51
	.uleb128 0x17
	.4byte	.LASF91
	.byte	0x1
	.2byte	0x343
	.byte	0x73
	.4byte	0x6be
	.4byte	.LLST47
	.4byte	.LVUS47
	.uleb128 0x19
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x345
	.byte	0x15
	.4byte	0x20a
	.4byte	.LLST48
	.4byte	.LVUS48
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.4byte	0x6be
	.uleb128 0x12
	.4byte	0x4c9
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x6b2
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x2e5
	.byte	0x6
	.byte	0x1
	.4byte	.LFB139
	.4byte	.LFE139
	.4byte	.LLST42
	.4byte	0x72d
	.uleb128 0x17
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x2e5
	.byte	0x2c
	.4byte	0x4c9
	.4byte	.LLST43
	.4byte	.LVUS43
	.uleb128 0x19
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x2e7
	.byte	0xc
	.4byte	0x7b
	.4byte	.LLST44
	.4byte	.LVUS44
	.uleb128 0x19
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x2e8
	.byte	0xc
	.4byte	0x7b
	.4byte	.LLST45
	.4byte	.LVUS45
	.uleb128 0x1b
	.4byte	.LVL99
	.byte	0x1
	.uleb128 0x1c
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x263
	.byte	0x13
	.byte	0x1
	.4byte	0x20a
	.4byte	.LFB138
	.4byte	.LFE138
	.4byte	.LLST36
	.byte	0x1
	.4byte	0x7c9
	.uleb128 0x17
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x263
	.byte	0x3e
	.4byte	0x4c9
	.4byte	.LLST37
	.4byte	.LVUS37
	.uleb128 0x17
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x263
	.byte	0x61
	.4byte	0x31e
	.4byte	.LLST38
	.4byte	.LVUS38
	.uleb128 0x17
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x264
	.byte	0x34
	.4byte	0x7b
	.4byte	.LLST39
	.4byte	.LVUS39
	.uleb128 0x19
	.4byte	.LASF98
	.byte	0x1
	.2byte	0x266
	.byte	0xc
	.4byte	0x7b
	.4byte	.LLST40
	.4byte	.LVUS40
	.uleb128 0x19
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x267
	.byte	0xc
	.4byte	0x7b
	.4byte	.LLST41
	.4byte	.LVUS41
	.uleb128 0x1e
	.4byte	.LVL80
	.4byte	0xb5e
	.uleb128 0x1e
	.4byte	.LVL86
	.4byte	0xb5e
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF100
	.byte	0x1
	.2byte	0x220
	.byte	0x13
	.byte	0x1
	.4byte	0x20a
	.4byte	.LFB137
	.4byte	.LFE137
	.4byte	.LLST33
	.byte	0x1
	.4byte	0x821
	.uleb128 0x17
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x220
	.byte	0x37
	.4byte	0x4c9
	.4byte	.LLST34
	.4byte	.LVUS34
	.uleb128 0x19
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x222
	.byte	0x15
	.4byte	0x20a
	.4byte	.LLST35
	.4byte	.LVUS35
	.uleb128 0x1f
	.4byte	.LVL70
	.uleb128 0x1c
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x1eb
	.byte	0x13
	.byte	0x1
	.4byte	0x20a
	.4byte	.LFB136
	.4byte	.LFE136
	.4byte	.LLST30
	.byte	0x1
	.4byte	0x86c
	.uleb128 0x17
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x1eb
	.byte	0x34
	.4byte	0x4c9
	.4byte	.LLST31
	.4byte	.LVUS31
	.uleb128 0x19
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x1ed
	.byte	0x15
	.4byte	0x20a
	.4byte	.LLST32
	.4byte	.LVUS32
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x1a5
	.byte	0x13
	.byte	0x1
	.4byte	0x20a
	.4byte	.LFB135
	.4byte	.LFE135
	.4byte	.LLST21
	.byte	0x1
	.4byte	0x937
	.uleb128 0x17
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x1a5
	.byte	0x37
	.4byte	0x4c9
	.4byte	.LLST22
	.4byte	.LVUS22
	.uleb128 0x18
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x1a5
	.byte	0x46
	.4byte	0x7b
	.byte	0x1
	.byte	0x51
	.uleb128 0x17
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x1a5
	.byte	0x5b
	.4byte	0x7b
	.4byte	.LLST23
	.4byte	.LVUS23
	.uleb128 0x17
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x1a6
	.byte	0x2d
	.4byte	0x7b
	.4byte	.LLST24
	.4byte	.LVUS24
	.uleb128 0x19
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x1a8
	.byte	0x15
	.4byte	0x20a
	.4byte	.LLST25
	.4byte	.LVUS25
	.uleb128 0x20
	.4byte	0x53d
	.4byte	.LBI44
	.byte	.LVU355
	.4byte	.Ldebug_ranges0+0x90
	.byte	0x1
	.2byte	0x1ba
	.byte	0x5
	.uleb128 0x21
	.4byte	0x573
	.4byte	.LLST26
	.4byte	.LVUS26
	.uleb128 0x21
	.4byte	0x566
	.4byte	.LLST27
	.4byte	.LVUS27
	.uleb128 0x21
	.4byte	0x559
	.4byte	.LLST28
	.4byte	.LVUS28
	.uleb128 0x21
	.4byte	0x54c
	.4byte	.LLST29
	.4byte	.LVUS29
	.byte	0
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x17a
	.byte	0x13
	.byte	0x1
	.4byte	0x20a
	.4byte	.LFB134
	.4byte	.LFE134
	.4byte	.LLST13
	.byte	0x1
	.4byte	0x9fc
	.uleb128 0x17
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x17a
	.byte	0x34
	.4byte	0x4c9
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x18
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x17a
	.byte	0x43
	.4byte	0x7b
	.byte	0x1
	.byte	0x51
	.uleb128 0x18
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x17a
	.byte	0x58
	.4byte	0x7b
	.byte	0x1
	.byte	0x52
	.uleb128 0x17
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x17a
	.byte	0x6d
	.4byte	0x7b
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0x19
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x17c
	.byte	0x15
	.4byte	0x20a
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0x20
	.4byte	0x53d
	.4byte	.LBI40
	.byte	.LVU291
	.4byte	.Ldebug_ranges0+0x78
	.byte	0x1
	.2byte	0x18e
	.byte	0x5
	.uleb128 0x21
	.4byte	0x573
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0x21
	.4byte	0x566
	.4byte	.LLST18
	.4byte	.LVUS18
	.uleb128 0x21
	.4byte	0x559
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0x21
	.4byte	0x54c
	.4byte	.LLST20
	.4byte	.LVUS20
	.byte	0
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x107
	.byte	0x13
	.byte	0x1
	.4byte	0x20a
	.4byte	.LFB133
	.4byte	.LFE133
	.4byte	.LLST7
	.byte	0x1
	.4byte	0xaa4
	.uleb128 0x17
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x107
	.byte	0x35
	.4byte	0x4c9
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x22
	.4byte	0x4f9
	.4byte	.LBI28
	.byte	.LVU172
	.4byte	.Ldebug_ranges0+0x48
	.byte	0x1
	.2byte	0x12d
	.byte	0x3
	.4byte	0xa72
	.uleb128 0x21
	.4byte	0x508
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0x48
	.uleb128 0x24
	.4byte	0x515
	.uleb128 0x25
	.4byte	0x522
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x24
	.4byte	0x52f
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	0x4cf
	.4byte	.LBI37
	.byte	.LVU206
	.4byte	.LBB37
	.4byte	.LBE37
	.byte	0x1
	.2byte	0x13b
	.byte	0x5
	.uleb128 0x21
	.4byte	0x4de
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x25
	.4byte	0x4eb
	.4byte	.LLST12
	.4byte	.LVUS12
	.byte	0
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF105
	.byte	0x1
	.byte	0x98
	.byte	0x13
	.byte	0x1
	.4byte	0x20a
	.4byte	.LFB132
	.4byte	.LFE132
	.4byte	.LLST0
	.byte	0x1
	.4byte	0xb5e
	.uleb128 0x28
	.4byte	.LASF77
	.byte	0x1
	.byte	0x98
	.byte	0x33
	.4byte	0x4c9
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x29
	.ascii	"tmp\000"
	.byte	0x1
	.byte	0x9a
	.byte	0xc
	.4byte	0x7b
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x2a
	.4byte	0x4f9
	.4byte	.LBI14
	.byte	.LVU54
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xd3
	.byte	0x3
	.4byte	0xb2b
	.uleb128 0x21
	.4byte	0x508
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x24
	.4byte	0x515
	.uleb128 0x25
	.4byte	0x522
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x24
	.4byte	0x52f
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	0x4cf
	.4byte	.LBI24
	.byte	.LVU91
	.4byte	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0xe6
	.byte	0x5
	.uleb128 0x21
	.4byte	0x4de
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x23
	.4byte	.Ldebug_ranges0+0x30
	.uleb128 0x25
	.4byte	0x4eb
	.4byte	.LLST6
	.4byte	.LVUS6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.byte	0x1
	.4byte	.LASF111
	.4byte	.LASF111
	.byte	0x7
	.2byte	0x21a
	.byte	0xa
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
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.byte	0
	.byte	0
	.uleb128 0x2c
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
.LVUS52:
	.uleb128 0
	.uleb128 .LVU818
	.uleb128 .LVU818
	.uleb128 0
.LLST52:
	.4byte	.LVL114
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL115
	.4byte	.LFE143
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS51:
	.uleb128 0
	.uleb128 .LVU814
	.uleb128 .LVU814
	.uleb128 0
.LLST51:
	.4byte	.LVL112
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL113
	.4byte	.LFE142
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS49:
	.uleb128 0
	.uleb128 .LVU786
	.uleb128 .LVU786
	.uleb128 .LVU787
	.uleb128 .LVU787
	.uleb128 .LVU790
	.uleb128 .LVU790
	.uleb128 .LVU791
	.uleb128 .LVU791
	.uleb128 0
.LLST49:
	.4byte	.LVL106
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL108
	.4byte	.LVL109
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL110
	.4byte	.LVL111
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL111
	.4byte	.LFE141
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS50:
	.uleb128 .LVU769
	.uleb128 .LVU781
	.uleb128 .LVU781
	.uleb128 .LVU787
	.uleb128 .LVU787
	.uleb128 0
.LLST50:
	.4byte	.LVL106
	.4byte	.LVL107
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL107
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL109
	.4byte	.LFE141
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS46:
	.uleb128 0
	.uleb128 .LVU742
	.uleb128 .LVU742
	.uleb128 .LVU743
	.uleb128 .LVU743
	.uleb128 .LVU766
	.uleb128 .LVU766
	.uleb128 0
.LLST46:
	.4byte	.LVL100
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL103
	.4byte	.LVL104
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL104
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL105
	.4byte	.LFE140
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS47:
	.uleb128 0
	.uleb128 .LVU738
	.uleb128 .LVU738
	.uleb128 .LVU743
	.uleb128 .LVU743
	.uleb128 0
.LLST47:
	.4byte	.LVL100
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL102
	.4byte	.LVL104
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL104
	.4byte	.LFE140
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS48:
	.uleb128 .LVU726
	.uleb128 .LVU736
	.uleb128 .LVU736
	.uleb128 .LVU743
	.uleb128 .LVU743
	.uleb128 0
.LLST48:
	.4byte	.LVL100
	.4byte	.LVL101
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL101
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL104
	.4byte	.LFE140
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LFB139
	.4byte	.LCFI22
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI22
	.4byte	.LCFI23
	.2byte	0x2
	.byte	0x7d
	.sleb128 12
	.4byte	.LCFI23
	.4byte	.LCFI24
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI24
	.4byte	.LCFI25
	.2byte	0x2
	.byte	0x7d
	.sleb128 12
	.4byte	.LCFI25
	.4byte	.LCFI26
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI26
	.4byte	.LCFI27
	.2byte	0x2
	.byte	0x7d
	.sleb128 12
	.4byte	.LCFI27
	.4byte	.LFE139
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS43:
	.uleb128 0
	.uleb128 .LVU679
	.uleb128 .LVU679
	.uleb128 .LVU679
	.uleb128 .LVU679
	.uleb128 .LVU723
	.uleb128 .LVU723
	.uleb128 0
.LLST43:
	.4byte	.LVL88
	.4byte	.LVL93-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL93-1
	.4byte	.LVL93
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL93
	.4byte	.LVL99-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL99-1
	.4byte	.LFE139
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS44:
	.uleb128 .LVU660
	.uleb128 .LVU676
	.uleb128 .LVU679
	.uleb128 .LVU686
	.uleb128 .LVU699
	.uleb128 .LVU705
.LLST44:
	.4byte	.LVL89
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LVUS45:
	.uleb128 .LVU662
	.uleb128 .LVU678
	.uleb128 .LVU679
	.uleb128 .LVU698
	.uleb128 .LVU699
	.uleb128 .LVU709
.LLST45:
	.4byte	.LVL90
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL93
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL96
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LFB138
	.4byte	.LCFI21
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI21
	.4byte	.LFE138
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	0
	.4byte	0
.LVUS37:
	.uleb128 0
	.uleb128 .LVU543
	.uleb128 .LVU543
	.uleb128 .LVU544
	.uleb128 .LVU544
	.uleb128 .LVU548
	.uleb128 .LVU548
	.uleb128 0
.LLST37:
	.4byte	.LVL74
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL78
	.4byte	.LFE138
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS38:
	.uleb128 0
	.uleb128 .LVU543
	.uleb128 .LVU543
	.uleb128 .LVU544
	.uleb128 .LVU544
	.uleb128 .LVU556
	.uleb128 .LVU556
	.uleb128 .LVU602
	.uleb128 .LVU602
	.uleb128 .LVU609
	.uleb128 .LVU609
	.uleb128 0
.LLST38:
	.4byte	.LVL74
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LVL80-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL80-1
	.4byte	.LVL83
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL83
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL85
	.4byte	.LFE138
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS39:
	.uleb128 0
	.uleb128 .LVU536
	.uleb128 .LVU536
	.uleb128 .LVU544
	.uleb128 .LVU544
	.uleb128 .LVU556
	.uleb128 .LVU556
	.uleb128 .LVU602
	.uleb128 .LVU602
	.uleb128 .LVU609
	.uleb128 .LVU609
	.uleb128 0
.LLST39:
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL75
	.4byte	.LVL77
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LVL80-1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL80-1
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL83
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL85
	.4byte	.LFE138
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS40:
	.uleb128 .LVU554
	.uleb128 .LVU574
	.uleb128 .LVU609
	.uleb128 .LVU650
.LLST40:
	.4byte	.LVL79
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL85
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS41:
	.uleb128 .LVU558
	.uleb128 .LVU559
	.uleb128 .LVU559
	.uleb128 .LVU602
	.uleb128 .LVU609
	.uleb128 0
.LLST41:
	.4byte	.LVL81
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL81
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL85
	.4byte	.LFE138
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LFB137
	.4byte	.LCFI20
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI20
	.4byte	.LFE137
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0
	.4byte	0
.LVUS34:
	.uleb128 0
	.uleb128 .LVU480
	.uleb128 .LVU480
	.uleb128 .LVU482
	.uleb128 .LVU482
	.uleb128 .LVU519
	.uleb128 .LVU519
	.uleb128 .LVU522
	.uleb128 .LVU522
	.uleb128 .LVU523
	.uleb128 .LVU523
	.uleb128 0
.LLST34:
	.4byte	.LVL66
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL69
	.4byte	.LVL70-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL70-1
	.4byte	.LVL72
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL73
	.4byte	.LFE137
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS35:
	.uleb128 .LVU463
	.uleb128 .LVU479
	.uleb128 .LVU479
	.uleb128 .LVU480
	.uleb128 .LVU480
	.uleb128 .LVU482
	.uleb128 .LVU482
	.uleb128 .LVU520
	.uleb128 .LVU520
	.uleb128 .LVU522
	.uleb128 .LVU522
	.uleb128 .LVU523
	.uleb128 .LVU523
	.uleb128 0
.LLST35:
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL69
	.4byte	.LVL71
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LFE137
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LFB136
	.4byte	.LCFI18
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI18
	.4byte	.LCFI19
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI19
	.4byte	.LFE136
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS31:
	.uleb128 0
	.uleb128 .LVU417
	.uleb128 .LVU417
	.uleb128 .LVU424
	.uleb128 .LVU424
	.uleb128 .LVU429
	.uleb128 .LVU429
	.uleb128 0
.LLST31:
	.4byte	.LVL60
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL64
	.4byte	.LFE136
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS32:
	.uleb128 .LVU406
	.uleb128 .LVU414
	.uleb128 .LVU414
	.uleb128 .LVU417
	.uleb128 .LVU417
	.uleb128 .LVU424
	.uleb128 .LVU424
	.uleb128 .LVU452
	.uleb128 .LVU452
	.uleb128 0
.LLST32:
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL63
	.4byte	.LVL65
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL65
	.4byte	.LFE136
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LFB135
	.4byte	.LCFI12
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI12
	.4byte	.LCFI13
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI13
	.4byte	.LCFI14
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI14
	.4byte	.LCFI15
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI15
	.4byte	.LCFI16
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI16
	.4byte	.LCFI17
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI17
	.4byte	.LFE135
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS22:
	.uleb128 0
	.uleb128 .LVU346
	.uleb128 .LVU346
	.uleb128 .LVU347
	.uleb128 .LVU347
	.uleb128 .LVU398
	.uleb128 .LVU398
	.uleb128 .LVU400
	.uleb128 .LVU400
	.uleb128 .LVU403
	.uleb128 .LVU403
	.uleb128 0
.LLST22:
	.4byte	.LVL44
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL54
	.4byte	.LVL56
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL59
	.4byte	.LFE135
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS23:
	.uleb128 0
	.uleb128 .LVU389
	.uleb128 .LVU389
	.uleb128 .LVU400
	.uleb128 .LVU400
	.uleb128 0
.LLST23:
	.4byte	.LVL44
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL53
	.4byte	.LVL56
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LFE135
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS24:
	.uleb128 0
	.uleb128 .LVU341
	.uleb128 .LVU341
	.uleb128 .LVU347
	.uleb128 .LVU347
	.uleb128 .LVU372
	.uleb128 .LVU372
	.uleb128 .LVU386
	.uleb128 .LVU386
	.uleb128 .LVU400
	.uleb128 .LVU400
	.uleb128 .LVU401
	.uleb128 .LVU401
	.uleb128 .LVU402
	.uleb128 .LVU402
	.uleb128 0
.LLST24:
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL45
	.4byte	.LVL48
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL50
	.4byte	.LVL52
	.2byte	0x2
	.byte	0x74
	.sleb128 4
	.4byte	.LVL52
	.4byte	.LVL56
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x2
	.byte	0x74
	.sleb128 4
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LFE135
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS25:
	.uleb128 .LVU329
	.uleb128 .LVU344
	.uleb128 .LVU344
	.uleb128 .LVU346
	.uleb128 .LVU347
	.uleb128 .LVU399
	.uleb128 .LVU400
	.uleb128 .LVU403
.LLST25:
	.4byte	.LVL44
	.4byte	.LVL46
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL55
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LVL59
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS26:
	.uleb128 .LVU355
	.uleb128 .LVU372
	.uleb128 .LVU372
	.uleb128 .LVU381
.LLST26:
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x2
	.byte	0x74
	.sleb128 4
	.4byte	0
	.4byte	0
.LVUS27:
	.uleb128 .LVU355
	.uleb128 .LVU381
.LLST27:
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS28:
	.uleb128 .LVU355
	.uleb128 .LVU381
.LLST28:
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LVUS29:
	.uleb128 .LVU355
	.uleb128 .LVU381
.LLST29:
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LFB134
	.4byte	.LCFI6
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI6
	.4byte	.LCFI7
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI7
	.4byte	.LCFI8
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI8
	.4byte	.LCFI9
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI9
	.4byte	.LCFI10
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI10
	.4byte	.LCFI11
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI11
	.4byte	.LFE134
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS14:
	.uleb128 0
	.uleb128 .LVU282
	.uleb128 .LVU282
	.uleb128 .LVU283
	.uleb128 .LVU283
	.uleb128 .LVU305
	.uleb128 .LVU305
	.uleb128 .LVU325
	.uleb128 .LVU325
	.uleb128 .LVU326
	.uleb128 .LVU326
	.uleb128 0
.LLST14:
	.4byte	.LVL32
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL38
	.4byte	.LVL42
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL43
	.4byte	.LFE134
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS15:
	.uleb128 0
	.uleb128 .LVU277
	.uleb128 .LVU277
	.uleb128 .LVU283
	.uleb128 .LVU283
	.uleb128 .LVU321
	.uleb128 .LVU321
	.uleb128 .LVU324
	.uleb128 .LVU324
	.uleb128 .LVU325
	.uleb128 .LVU325
	.uleb128 0
.LLST15:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL33
	.4byte	.LVL36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x2
	.byte	0x74
	.sleb128 4
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LFE134
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS16:
	.uleb128 .LVU265
	.uleb128 .LVU280
	.uleb128 .LVU280
	.uleb128 .LVU282
	.uleb128 .LVU283
	.uleb128 .LVU324
	.uleb128 .LVU325
	.uleb128 .LVU326
.LLST16:
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL41
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS17:
	.uleb128 .LVU291
	.uleb128 .LVU319
.LLST17:
	.4byte	.LVL37
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS18:
	.uleb128 .LVU291
	.uleb128 .LVU319
.LLST18:
	.4byte	.LVL37
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS19:
	.uleb128 .LVU291
	.uleb128 .LVU319
.LLST19:
	.4byte	.LVL37
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LVUS20:
	.uleb128 .LVU291
	.uleb128 .LVU305
	.uleb128 .LVU305
	.uleb128 .LVU319
.LLST20:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LFB133
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
	.4byte	.LFE133
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 0
	.uleb128 .LVU238
	.uleb128 .LVU238
	.uleb128 .LVU239
	.uleb128 .LVU239
	.uleb128 .LVU262
	.uleb128 .LVU262
	.uleb128 0
.LLST8:
	.4byte	.LVL20
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
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL31
	.4byte	.LFE133
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 .LVU172
	.uleb128 .LVU178
	.uleb128 .LVU255
	.uleb128 .LVU261
.LLST9:
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 .LVU180
	.uleb128 .LVU189
	.uleb128 .LVU189
	.uleb128 .LVU196
.LLST10:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x10
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x1c
	.byte	0xf7
	.uleb128 0x29
	.byte	0x44
	.byte	0xf7
	.uleb128 0x29
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x11
	.byte	0x70
	.sleb128 0
	.byte	0x6
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x1c
	.byte	0xf7
	.uleb128 0x29
	.byte	0x44
	.byte	0xf7
	.uleb128 0x29
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 .LVU206
	.uleb128 .LVU213
.LLST11:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS12:
	.uleb128 .LVU208
	.uleb128 .LVU213
.LLST12:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x51
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
	.sleb128 16
	.4byte	.LCFI1
	.4byte	.LFE132
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU120
	.uleb128 .LVU120
	.uleb128 .LVU121
	.uleb128 .LVU121
	.uleb128 .LVU142
	.uleb128 .LVU142
	.uleb128 0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL19
	.4byte	.LFE132
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 .LVU42
	.uleb128 .LVU47
	.uleb128 .LVU48
	.uleb128 .LVU51
	.uleb128 .LVU51
	.uleb128 .LVU60
	.uleb128 .LVU60
	.uleb128 .LVU68
	.uleb128 .LVU68
	.uleb128 .LVU86
	.uleb128 .LVU129
	.uleb128 .LVU133
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x2
	.byte	0x74
	.sleb128 0
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x3
	.byte	0x70
	.sleb128 0
	.byte	0x6
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x3
	.byte	0x70
	.sleb128 0
	.byte	0x6
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 .LVU54
	.uleb128 .LVU76
.LLST3:
	.4byte	.LVL5
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU65
	.uleb128 .LVU68
	.uleb128 .LVU68
	.uleb128 .LVU76
.LLST4:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x10
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x1c
	.byte	0xf7
	.uleb128 0x29
	.byte	0x44
	.byte	0xf7
	.uleb128 0x29
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x11
	.byte	0x70
	.sleb128 0
	.byte	0x6
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x1c
	.byte	0xf7
	.uleb128 0x29
	.byte	0x44
	.byte	0xf7
	.uleb128 0x29
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 .LVU91
	.uleb128 .LVU105
.LLST5:
	.4byte	.LVL11
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 .LVU93
	.uleb128 .LVU98
	.uleb128 .LVU98
	.uleb128 .LVU100
	.uleb128 .LVU100
	.uleb128 .LVU105
.LLST6:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x6
	.byte	0x75
	.sleb128 1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x74
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
	.4byte	.LFB137
	.4byte	.LFE137-.LFB137
	.4byte	.LFB138
	.4byte	.LFE138-.LFB138
	.4byte	.LFB139
	.4byte	.LFE139-.LFB139
	.4byte	.LFB140
	.4byte	.LFE140-.LFB140
	.4byte	.LFB141
	.4byte	.LFE141-.LFB141
	.4byte	.LFB142
	.4byte	.LFE142-.LFB142
	.4byte	.LFB143
	.4byte	.LFE143-.LFB143
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB14
	.4byte	.LBE14
	.4byte	.LBB20
	.4byte	.LBE20
	.4byte	.LBB21
	.4byte	.LBE21
	.4byte	.LBB22
	.4byte	.LBE22
	.4byte	.LBB23
	.4byte	.LBE23
	.4byte	0
	.4byte	0
	.4byte	.LBB24
	.4byte	.LBE24
	.4byte	.LBB27
	.4byte	.LBE27
	.4byte	0
	.4byte	0
	.4byte	.LBB28
	.4byte	.LBE28
	.4byte	.LBB34
	.4byte	.LBE34
	.4byte	.LBB35
	.4byte	.LBE35
	.4byte	.LBB36
	.4byte	.LBE36
	.4byte	.LBB39
	.4byte	.LBE39
	.4byte	0
	.4byte	0
	.4byte	.LBB40
	.4byte	.LBE40
	.4byte	.LBB43
	.4byte	.LBE43
	.4byte	0
	.4byte	0
	.4byte	.LBB44
	.4byte	.LBE44
	.4byte	.LBB49
	.4byte	.LBE49
	.4byte	.LBB50
	.4byte	.LBE50
	.4byte	.LBB51
	.4byte	.LBE51
	.4byte	0
	.4byte	0
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
	.4byte	.LFB137
	.4byte	.LFE137
	.4byte	.LFB138
	.4byte	.LFE138
	.4byte	.LFB139
	.4byte	.LFE139
	.4byte	.LFB140
	.4byte	.LFE140
	.4byte	.LFB141
	.4byte	.LFE141
	.4byte	.LFB142
	.4byte	.LFE142
	.4byte	.LFB143
	.4byte	.LFE143
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF53:
	.ascii	"HAL_DMA_XFER_ABORT_CB_ID\000"
.LASF34:
	.ascii	"Direction\000"
.LASF102:
	.ascii	"HAL_DMA_Start_IT\000"
.LASF30:
	.ascii	"HAL_UNLOCKED\000"
.LASF28:
	.ascii	"HAL_TIMEOUT\000"
.LASF69:
	.ascii	"DMAmuxChannelStatus\000"
.LASF60:
	.ascii	"Parent\000"
.LASF21:
	.ascii	"RGSR\000"
.LASF40:
	.ascii	"Priority\000"
.LASF64:
	.ascii	"XferAbortCallback\000"
.LASF14:
	.ascii	"DMA_Channel_TypeDef\000"
.LASF3:
	.ascii	"short int\000"
.LASF105:
	.ascii	"HAL_DMA_Init\000"
.LASF93:
	.ascii	"flag_it\000"
.LASF89:
	.ascii	"HAL_DMA_RegisterCallback\000"
.LASF42:
	.ascii	"HAL_DMA_STATE_RESET\000"
.LASF74:
	.ascii	"DMA_HandleTypeDef\000"
.LASF9:
	.ascii	"__uint32_t\000"
.LASF111:
	.ascii	"HAL_GetTick\000"
.LASF66:
	.ascii	"DmaBaseAddress\000"
.LASF16:
	.ascii	"DMA_TypeDef\000"
.LASF80:
	.ascii	"channel_number\000"
.LASF68:
	.ascii	"DMAmuxChannel\000"
.LASF25:
	.ascii	"HAL_OK\000"
.LASF46:
	.ascii	"HAL_DMA_StateTypeDef\000"
.LASF44:
	.ascii	"HAL_DMA_STATE_BUSY\000"
.LASF109:
	.ascii	"__DMA_HandleTypeDef\000"
.LASF33:
	.ascii	"Request\000"
.LASF106:
	.ascii	"GNU C17 10.2.1 20201103 (release) -mcpu=cortex-m4 -"
	.ascii	"mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=hard -march=ar"
	.ascii	"mv7e-m+fp -g -gdwarf-2 -O3 -fdata-sections -ffuncti"
	.ascii	"on-sections\000"
.LASF27:
	.ascii	"HAL_BUSY\000"
.LASF103:
	.ascii	"HAL_DMA_Start\000"
.LASF18:
	.ascii	"DMAMUX_ChannelStatus_TypeDef\000"
.LASF107:
	.ascii	"Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_dma."
	.ascii	"c\000"
.LASF24:
	.ascii	"long double\000"
.LASF98:
	.ascii	"temp\000"
.LASF7:
	.ascii	"long long int\000"
.LASF8:
	.ascii	"long long unsigned int\000"
.LASF59:
	.ascii	"State\000"
.LASF57:
	.ascii	"Init\000"
.LASF5:
	.ascii	"long int\000"
.LASF35:
	.ascii	"PeriphInc\000"
.LASF58:
	.ascii	"Lock\000"
.LASF86:
	.ascii	"HAL_DMA_GetError\000"
.LASF99:
	.ascii	"tickstart\000"
.LASF29:
	.ascii	"HAL_StatusTypeDef\000"
.LASF45:
	.ascii	"HAL_DMA_STATE_TIMEOUT\000"
.LASF72:
	.ascii	"DMAmuxRequestGenStatus\000"
.LASF12:
	.ascii	"CPAR\000"
.LASF100:
	.ascii	"HAL_DMA_Abort_IT\000"
.LASF41:
	.ascii	"DMA_InitTypeDef\000"
.LASF73:
	.ascii	"DMAmuxRequestGenStatusMask\000"
.LASF26:
	.ascii	"HAL_ERROR\000"
.LASF2:
	.ascii	"unsigned char\000"
.LASF104:
	.ascii	"HAL_DMA_DeInit\000"
.LASF70:
	.ascii	"DMAmuxChannelStatusMask\000"
.LASF20:
	.ascii	"DMAMUX_RequestGen_TypeDef\000"
.LASF1:
	.ascii	"signed char\000"
.LASF52:
	.ascii	"HAL_DMA_XFER_ERROR_CB_ID\000"
.LASF77:
	.ascii	"hdma\000"
.LASF10:
	.ascii	"uint32_t\000"
.LASF48:
	.ascii	"HAL_DMA_HALF_TRANSFER\000"
.LASF82:
	.ascii	"DMA_SetConfig\000"
.LASF108:
	.ascii	"/home/joel/share/EVSPIN32G4_Shinano\000"
.LASF56:
	.ascii	"Instance\000"
.LASF61:
	.ascii	"XferCpltCallback\000"
.LASF31:
	.ascii	"HAL_LOCKED\000"
.LASF78:
	.ascii	"request\000"
.LASF49:
	.ascii	"HAL_DMA_LevelCompleteTypeDef\000"
.LASF47:
	.ascii	"HAL_DMA_FULL_TRANSFER\000"
.LASF92:
	.ascii	"status\000"
.LASF4:
	.ascii	"short unsigned int\000"
.LASF17:
	.ascii	"DMAMUX_Channel_TypeDef\000"
.LASF97:
	.ascii	"Timeout\000"
.LASF63:
	.ascii	"XferErrorCallback\000"
.LASF11:
	.ascii	"CNDTR\000"
.LASF55:
	.ascii	"HAL_DMA_CallbackIDTypeDef\000"
.LASF96:
	.ascii	"CompleteLevel\000"
.LASF87:
	.ascii	"HAL_DMA_GetState\000"
.LASF101:
	.ascii	"HAL_DMA_Abort\000"
.LASF79:
	.ascii	"dmamux_base_addr\000"
.LASF15:
	.ascii	"IFCR\000"
.LASF84:
	.ascii	"DstAddress\000"
.LASF90:
	.ascii	"CallbackID\000"
.LASF88:
	.ascii	"HAL_DMA_UnRegisterCallback\000"
.LASF23:
	.ascii	"DMAMUX_RequestGenStatus_TypeDef\000"
.LASF6:
	.ascii	"long unsigned int\000"
.LASF36:
	.ascii	"MemInc\000"
.LASF54:
	.ascii	"HAL_DMA_XFER_ALL_CB_ID\000"
.LASF51:
	.ascii	"HAL_DMA_XFER_HALFCPLT_CB_ID\000"
.LASF67:
	.ascii	"ChannelIndex\000"
.LASF13:
	.ascii	"CMAR\000"
.LASF76:
	.ascii	"DMA_CalcDMAMUXChannelBaseAndMask\000"
.LASF38:
	.ascii	"MemDataAlignment\000"
.LASF50:
	.ascii	"HAL_DMA_XFER_CPLT_CB_ID\000"
.LASF75:
	.ascii	"DMA_CalcDMAMUXRequestGenBaseAndMask\000"
.LASF110:
	.ascii	"HAL_DMA_IRQHandler\000"
.LASF83:
	.ascii	"SrcAddress\000"
.LASF37:
	.ascii	"PeriphDataAlignment\000"
.LASF39:
	.ascii	"Mode\000"
.LASF81:
	.ascii	"DMAMUX1_ChannelBase\000"
.LASF85:
	.ascii	"DataLength\000"
.LASF22:
	.ascii	"RGCFR\000"
.LASF19:
	.ascii	"RGCR\000"
.LASF0:
	.ascii	"unsigned int\000"
.LASF91:
	.ascii	"pCallback\000"
.LASF62:
	.ascii	"XferHalfCpltCallback\000"
.LASF71:
	.ascii	"DMAmuxRequestGen\000"
.LASF32:
	.ascii	"HAL_LockTypeDef\000"
.LASF65:
	.ascii	"ErrorCode\000"
.LASF43:
	.ascii	"HAL_DMA_STATE_READY\000"
.LASF94:
	.ascii	"source_it\000"
.LASF95:
	.ascii	"HAL_DMA_PollForTransfer\000"
	.ident	"GCC: (GNU Arm Embedded Toolchain 10-2020-q4-major) 10.2.1 20201103 (release)"
