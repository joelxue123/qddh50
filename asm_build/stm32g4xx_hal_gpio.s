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
	.file	"stm32g4xx_hal_gpio.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.HAL_GPIO_Init,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_GPIO_Init
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_GPIO_Init, %function
HAL_GPIO_Init:
.LVL0:
.LFB132:
	.file 1 "Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_gpio.c"
	.loc 1 163 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 164 3 view .LVU1
	.loc 1 165 3 view .LVU2
	.loc 1 166 3 view .LVU3
	.loc 1 169 3 view .LVU4
	.loc 1 170 3 view .LVU5
	.loc 1 171 3 view .LVU6
	.loc 1 174 3 view .LVU7
	.loc 1 174 9 view .LVU8
	.loc 1 163 1 is_stmt 0 view .LVU9
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
.LCFI0:
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 1 174 21 view .LVU10
	ldr	r4, [r1]
	.loc 1 163 1 view .LVU11
	sub	sp, sp, #20
.LCFI1:
	.cfi_def_cfa_offset 56
	.loc 1 174 9 view .LVU12
	cmp	r4, #0
	beq	.L1
	mov	ip, #0
.LBB2:
	.loc 1 238 9 view .LVU13
	ldr	r10, .L42+24
.LBE2:
	.loc 1 164 12 view .LVU14
	mov	r3, ip
	.loc 1 177 41 view .LVU15
	mov	fp, #1
	.loc 1 241 26 view .LVU16
	mov	r9, r1
.LVL1:
.L2:
	.loc 1 177 5 is_stmt 1 view .LVU17
	.loc 1 177 41 is_stmt 0 view .LVU18
	lsl	r5, fp, r3
.LVL2:
	.loc 1 179 5 is_stmt 1 view .LVU19
	.loc 1 179 8 is_stmt 0 view .LVU20
	ands	r8, r5, r4
.LVL3:
	.loc 1 179 8 view .LVU21
	beq	.L4
	.loc 1 183 7 is_stmt 1 view .LVU22
	.loc 1 183 21 is_stmt 0 view .LVU23
	ldr	r7, [r9, #4]
	.loc 1 183 28 view .LVU24
	and	r2, r7, #3
	.loc 1 183 57 view .LVU25
	subs	r1, r2, #1
	.loc 1 183 9 view .LVU26
	cmp	r1, #1
	bls	.L37
	.loc 1 201 7 is_stmt 1 view .LVU27
	.loc 1 201 10 is_stmt 0 view .LVU28
	cmp	r2, #3
	bne	.L7
	.loc 1 190 40 view .LVU29
	lsl	r2, r2, ip
	.loc 1 190 17 view .LVU30
	mvns	r1, r2
.L8:
	.loc 1 228 7 is_stmt 1 view .LVU31
	.loc 1 228 12 is_stmt 0 view .LVU32
	ldr	r5, [r0]
.LVL4:
	.loc 1 229 7 is_stmt 1 view .LVU33
	.loc 1 229 12 is_stmt 0 view .LVU34
	ands	r1, r1, r5
.LVL5:
	.loc 1 230 7 is_stmt 1 view .LVU35
	.loc 1 230 12 is_stmt 0 view .LVU36
	orrs	r2, r2, r1
.LVL6:
	.loc 1 231 7 is_stmt 1 view .LVU37
	.loc 1 235 10 is_stmt 0 view .LVU38
	tst	r7, #196608
	.loc 1 231 20 view .LVU39
	str	r2, [r0]
	.loc 1 235 7 is_stmt 1 view .LVU40
	.loc 1 235 10 is_stmt 0 view .LVU41
	beq	.L4
	.loc 1 238 9 is_stmt 1 view .LVU42
.LBB3:
	.loc 1 238 9 view .LVU43
	.loc 1 238 9 view .LVU44
	ldr	r2, [r10, #96]
.LVL7:
	.loc 1 238 9 is_stmt 0 view .LVU45
	orr	r2, r2, #1
	str	r2, [r10, #96]
.LVL8:
	.loc 1 238 9 is_stmt 1 view .LVU46
	ldr	r2, [r10, #96]
	and	r2, r2, #1
	str	r2, [sp, #12]
	.loc 1 238 9 view .LVU47
	ldr	r2, [sp, #12]
.LBE3:
	.loc 1 238 9 view .LVU48
	.loc 1 240 9 view .LVU49
	bic	r2, r3, #3
	add	r2, r2, #1073741824
	add	r2, r2, #65536
	.loc 1 241 45 is_stmt 0 view .LVU50
	and	r5, r3, #3
	.loc 1 240 14 view .LVU51
	ldr	r1, [r2, #8]
.LVL9:
	.loc 1 241 9 is_stmt 1 view .LVU52
	.loc 1 241 33 is_stmt 0 view .LVU53
	lsls	r5, r5, #2
	.loc 1 241 26 view .LVU54
	movs	r6, #15
	lsl	lr, r6, r5
	.loc 1 242 18 view .LVU55
	cmp	r0, #1207959552
	.loc 1 241 14 view .LVU56
	bic	r1, r1, lr
.LVL10:
	.loc 1 242 9 is_stmt 1 view .LVU57
	.loc 1 242 18 is_stmt 0 view .LVU58
	beq	.L10
	.loc 1 242 18 discriminator 1 view .LVU59
	ldr	r6, .L42
	cmp	r0, r6
	beq	.L38
	.loc 1 242 18 discriminator 3 view .LVU60
	ldr	r6, .L42+4
	cmp	r0, r6
	beq	.L39
	.loc 1 242 18 discriminator 5 view .LVU61
	ldr	r6, .L42+8
	cmp	r0, r6
	beq	.L40
	.loc 1 242 18 discriminator 7 view .LVU62
	ldr	r6, .L42+12
	cmp	r0, r6
	beq	.L41
	.loc 1 242 18 discriminator 9 view .LVU63
	ldr	r6, .L42+16
	cmp	r0, r6
	.loc 1 242 40 discriminator 9 view .LVU64
	ite	eq
	moveq	lr, #5
	movne	lr, #6
	lsl	r5, lr, r5
	.loc 1 242 14 discriminator 9 view .LVU65
	orrs	r1, r1, r5
.LVL11:
.L10:
	.loc 1 243 9 is_stmt 1 discriminator 24 view .LVU66
	.loc 1 243 40 is_stmt 0 discriminator 24 view .LVU67
	str	r1, [r2, #8]
	.loc 1 246 9 is_stmt 1 discriminator 24 view .LVU68
	.loc 1 246 14 is_stmt 0 discriminator 24 view .LVU69
	ldr	r2, .L42+20
	.loc 1 252 21 discriminator 24 view .LVU70
	ldr	r1, .L42+20
	.loc 1 246 14 discriminator 24 view .LVU71
	ldr	r2, [r2, #8]
.LVL12:
	.loc 1 247 9 is_stmt 1 discriminator 24 view .LVU72
	.loc 1 247 17 is_stmt 0 discriminator 24 view .LVU73
	mvn	r5, r8
.LVL13:
	.loc 1 248 9 is_stmt 1 discriminator 24 view .LVU74
	.loc 1 248 12 is_stmt 0 discriminator 24 view .LVU75
	lsls	r6, r7, #11
	.loc 1 247 14 discriminator 24 view .LVU76
	ite	pl
	andpl	r2, r2, r5
.LVL14:
	.loc 1 250 11 is_stmt 1 discriminator 24 view .LVU77
	.loc 1 250 16 is_stmt 0 discriminator 24 view .LVU78
	orrmi	r2, r8, r2
.LVL15:
	.loc 1 252 9 is_stmt 1 discriminator 24 view .LVU79
	.loc 1 252 21 is_stmt 0 discriminator 24 view .LVU80
	str	r2, [r1, #8]
	.loc 1 254 9 is_stmt 1 discriminator 24 view .LVU81
	.loc 1 254 14 is_stmt 0 discriminator 24 view .LVU82
	ldr	r2, [r1, #12]
.LVL16:
	.loc 1 255 9 is_stmt 1 discriminator 24 view .LVU83
	.loc 1 256 9 discriminator 24 view .LVU84
	.loc 1 256 12 is_stmt 0 discriminator 24 view .LVU85
	lsls	r1, r7, #10
	.loc 1 260 21 discriminator 24 view .LVU86
	ldr	r1, .L42+20
	.loc 1 255 14 discriminator 24 view .LVU87
	ite	pl
	andpl	r2, r2, r5
.LVL17:
	.loc 1 258 11 is_stmt 1 discriminator 24 view .LVU88
	.loc 1 258 16 is_stmt 0 discriminator 24 view .LVU89
	orrmi	r2, r8, r2
.LVL18:
	.loc 1 260 9 is_stmt 1 discriminator 24 view .LVU90
	.loc 1 260 21 is_stmt 0 discriminator 24 view .LVU91
	str	r2, [r1, #12]
	.loc 1 262 9 is_stmt 1 discriminator 24 view .LVU92
	.loc 1 262 14 is_stmt 0 discriminator 24 view .LVU93
	ldr	r1, [r1, #4]
.LVL19:
	.loc 1 263 9 is_stmt 1 discriminator 24 view .LVU94
	.loc 1 264 9 discriminator 24 view .LVU95
	.loc 1 268 20 is_stmt 0 discriminator 24 view .LVU96
	ldr	r2, .L42+20
	.loc 1 264 12 discriminator 24 view .LVU97
	lsls	r6, r7, #14
	.loc 1 263 14 discriminator 24 view .LVU98
	ite	pl
	andpl	r1, r1, r5
.LVL20:
	.loc 1 266 11 is_stmt 1 discriminator 24 view .LVU99
	.loc 1 266 16 is_stmt 0 discriminator 24 view .LVU100
	orrmi	r1, r8, r1
.LVL21:
	.loc 1 268 9 is_stmt 1 discriminator 24 view .LVU101
	.loc 1 268 20 is_stmt 0 discriminator 24 view .LVU102
	str	r1, [r2, #4]
	.loc 1 271 9 is_stmt 1 discriminator 24 view .LVU103
	.loc 1 271 14 is_stmt 0 discriminator 24 view .LVU104
	ldr	r2, [r2]
.LVL22:
	.loc 1 272 9 is_stmt 1 discriminator 24 view .LVU105
	.loc 1 273 9 discriminator 24 view .LVU106
	.loc 1 273 12 is_stmt 0 discriminator 24 view .LVU107
	lsls	r1, r7, #15
	.loc 1 277 20 discriminator 24 view .LVU108
	ldr	r1, .L42+20
	.loc 1 272 14 discriminator 24 view .LVU109
	ite	pl
	andpl	r2, r2, r5
.LVL23:
	.loc 1 275 11 is_stmt 1 discriminator 24 view .LVU110
	.loc 1 275 16 is_stmt 0 discriminator 24 view .LVU111
	orrmi	r2, r8, r2
.LVL24:
	.loc 1 277 9 is_stmt 1 discriminator 24 view .LVU112
	.loc 1 277 20 is_stmt 0 discriminator 24 view .LVU113
	str	r2, [r1]
.LVL25:
.L4:
	.loc 1 281 5 is_stmt 1 view .LVU114
	.loc 1 281 13 is_stmt 0 view .LVU115
	adds	r3, r3, #1
.LVL26:
	.loc 1 174 9 is_stmt 1 view .LVU116
	lsrs	r2, r4, r3
	add	ip, ip, #2
	bne	.L2
.LVL27:
.L1:
	.loc 1 283 1 is_stmt 0 view .LVU117
	add	sp, sp, #20
.LCFI2:
	.cfi_remember_state
	.cfi_def_cfa_offset 36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL28:
.L37:
.LCFI3:
	.cfi_restore_state
	.loc 1 187 9 is_stmt 1 view .LVU118
	.loc 1 189 9 view .LVU119
	.loc 1 189 14 is_stmt 0 view .LVU120
	ldr	r1, [r0, #8]
.LVL29:
	.loc 1 190 9 is_stmt 1 view .LVU121
	.loc 1 191 35 is_stmt 0 view .LVU122
	ldr	r6, [r9, #12]
	.loc 1 190 40 view .LVU123
	mov	lr, #3
	lsl	lr, lr, ip
	.loc 1 190 14 view .LVU124
	bic	r1, r1, lr
.LVL30:
	.loc 1 191 9 is_stmt 1 view .LVU125
	.loc 1 191 35 is_stmt 0 view .LVU126
	lsl	r6, r6, ip
	.loc 1 191 14 view .LVU127
	orrs	r1, r1, r6
.LVL31:
	.loc 1 192 9 is_stmt 1 view .LVU128
	.loc 1 192 24 is_stmt 0 view .LVU129
	str	r1, [r0, #8]
	.loc 1 195 9 is_stmt 1 view .LVU130
	.loc 1 190 17 is_stmt 0 view .LVU131
	mvn	r1, lr
.LVL32:
	.loc 1 195 14 view .LVU132
	ldr	lr, [r0, #4]
.LVL33:
	.loc 1 196 9 is_stmt 1 view .LVU133
	.loc 1 196 14 is_stmt 0 view .LVU134
	bic	lr, lr, r5
.LVL34:
	.loc 1 197 9 is_stmt 1 view .LVU135
	.loc 1 197 51 is_stmt 0 view .LVU136
	ubfx	r5, r7, #4, #1
	.loc 1 197 71 view .LVU137
	lsls	r5, r5, r3
	.loc 1 197 14 view .LVU138
	orr	r5, r5, lr
.LVL35:
	.loc 1 198 9 is_stmt 1 view .LVU139
	.loc 1 198 23 is_stmt 0 view .LVU140
	str	r5, [r0, #4]
	.loc 1 201 7 is_stmt 1 view .LVU141
.LVL36:
.L6:
	.loc 1 204 9 view .LVU142
	.loc 1 207 9 view .LVU143
	.loc 1 207 14 is_stmt 0 view .LVU144
	ldr	r5, [r0, #12]
.LVL37:
	.loc 1 208 9 is_stmt 1 view .LVU145
	.loc 1 208 14 is_stmt 0 view .LVU146
	and	lr, r5, r1
.LVL38:
	.loc 1 209 9 is_stmt 1 view .LVU147
	.loc 1 209 36 is_stmt 0 view .LVU148
	ldr	r5, [r9, #8]
	lsl	r5, r5, ip
	.loc 1 209 14 view .LVU149
	orr	r5, r5, lr
.LVL39:
	.loc 1 210 9 is_stmt 1 view .LVU150
	.loc 1 214 10 is_stmt 0 view .LVU151
	cmp	r2, #2
	.loc 1 210 22 view .LVU152
	str	r5, [r0, #12]
	.loc 1 214 7 is_stmt 1 view .LVU153
	lsl	r2, r2, ip
	.loc 1 214 10 is_stmt 0 view .LVU154
	bne	.L8
	.loc 1 217 9 is_stmt 1 view .LVU155
	.loc 1 218 9 view .LVU156
	.loc 1 221 9 view .LVU157
.LVL40:
	.loc 1 222 9 view .LVU158
	.loc 1 221 36 is_stmt 0 view .LVU159
	lsrs	r5, r3, #3
	add	r5, r0, r5, lsl #2
	.loc 1 221 14 view .LVU160
	str	r5, [sp, #4]
	ldr	r6, [r5, #32]
.LVL41:
	.loc 1 223 41 view .LVU161
	ldr	r5, [r9, #16]
	.loc 1 221 14 view .LVU162
	str	r6, [sp]
	.loc 1 222 38 view .LVU163
	and	lr, r3, #7
	.loc 1 222 47 view .LVU164
	lsl	lr, lr, #2
	.loc 1 222 24 view .LVU165
	movs	r6, #15
	.loc 1 223 41 view .LVU166
	lsl	r5, r5, lr
	.loc 1 222 24 view .LVU167
	lsl	lr, r6, lr
	.loc 1 222 14 view .LVU168
	ldr	r6, [sp]
	bic	lr, r6, lr
.LVL42:
	.loc 1 223 9 is_stmt 1 view .LVU169
	.loc 1 224 36 is_stmt 0 view .LVU170
	ldr	r6, [sp, #4]
	.loc 1 223 14 view .LVU171
	orr	r5, r5, lr
.LVL43:
	.loc 1 224 9 is_stmt 1 view .LVU172
	.loc 1 224 36 is_stmt 0 view .LVU173
	str	r5, [r6, #32]
	b	.L8
.LVL44:
.L7:
	.loc 1 190 40 view .LVU174
	movs	r1, #3
	lsl	r1, r1, ip
	.loc 1 190 17 view .LVU175
	mvns	r1, r1
	b	.L6
.LVL45:
.L40:
	.loc 1 242 40 view .LVU176
	mov	lr, #3
	lsl	r5, lr, r5
	.loc 1 242 14 view .LVU177
	orrs	r1, r1, r5
.LVL46:
	.loc 1 242 14 view .LVU178
	b	.L10
.LVL47:
.L38:
	.loc 1 242 40 view .LVU179
	lsl	r5, fp, r5
	.loc 1 242 14 view .LVU180
	orrs	r1, r1, r5
.LVL48:
	.loc 1 242 14 view .LVU181
	b	.L10
.LVL49:
.L39:
	.loc 1 242 40 view .LVU182
	mov	lr, #2
	lsl	r5, lr, r5
	.loc 1 242 14 view .LVU183
	orrs	r1, r1, r5
.LVL50:
	.loc 1 242 14 view .LVU184
	b	.L10
.LVL51:
.L41:
	.loc 1 242 40 view .LVU185
	mov	lr, #4
	lsl	r5, lr, r5
	.loc 1 242 14 view .LVU186
	orrs	r1, r1, r5
.LVL52:
	.loc 1 242 14 view .LVU187
	b	.L10
.L43:
	.align	2
.L42:
	.word	1207960576
	.word	1207961600
	.word	1207962624
	.word	1207963648
	.word	1207964672
	.word	1073808384
	.word	1073876992
	.cfi_endproc
.LFE132:
	.size	HAL_GPIO_Init, .-HAL_GPIO_Init
	.section	.text.HAL_GPIO_DeInit,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_GPIO_DeInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_GPIO_DeInit, %function
HAL_GPIO_DeInit:
.LVL53:
.LFB133:
	.loc 1 293 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 294 3 view .LVU189
	.loc 1 295 3 view .LVU190
	.loc 1 296 3 view .LVU191
	.loc 1 299 3 view .LVU192
	.loc 1 300 3 view .LVU193
	.loc 1 303 3 view .LVU194
	.loc 1 303 9 view .LVU195
	cmp	r1, #0
	beq	.L62
	.loc 1 293 1 is_stmt 0 view .LVU196
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
.LCFI4:
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	.loc 1 294 12 view .LVU197
	movs	r3, #0
	.loc 1 318 20 view .LVU198
	ldr	r6, .L71
	.loc 1 315 19 view .LVU199
	ldr	fp, .L71+20
	.loc 1 314 22 view .LVU200
	mov	r9, #15
	.loc 1 331 41 view .LVU201
	mov	r10, #3
	b	.L45
.LVL54:
.L70:
	.loc 1 315 19 discriminator 1 view .LVU202
	cmp	r0, fp
	beq	.L65
	.loc 1 315 19 discriminator 3 view .LVU203
	ldr	r7, .L71+4
	cmp	r0, r7
	beq	.L66
	.loc 1 315 19 discriminator 5 view .LVU204
	ldr	r7, .L71+8
	cmp	r0, r7
	beq	.L67
	.loc 1 315 19 discriminator 7 view .LVU205
	ldr	r7, .L71+12
	cmp	r0, r7
	beq	.L68
	.loc 1 315 19 discriminator 9 view .LVU206
	ldr	r7, .L71+16
	cmp	r0, r7
	.loc 1 315 41 discriminator 9 view .LVU207
	ite	ne
	movne	r7, #6
	moveq	r7, #5
	lsl	r4, r7, r4
.L47:
	.loc 1 315 10 discriminator 24 view .LVU208
	cmp	ip, r4
	bne	.L53
	.loc 1 318 9 is_stmt 1 view .LVU209
	.loc 1 318 20 is_stmt 0 view .LVU210
	ldr	r4, [r6]
	bic	r4, r4, lr
	str	r4, [r6]
	.loc 1 319 9 is_stmt 1 view .LVU211
	.loc 1 319 20 is_stmt 0 view .LVU212
	ldr	r4, [r6, #4]
	bic	r4, r4, lr
	str	r4, [r6, #4]
	.loc 1 322 9 is_stmt 1 view .LVU213
	.loc 1 322 21 is_stmt 0 view .LVU214
	ldr	r4, [r6, #12]
	bic	r4, r4, lr
	str	r4, [r6, #12]
	.loc 1 323 9 is_stmt 1 view .LVU215
	.loc 1 323 21 is_stmt 0 view .LVU216
	ldr	r4, [r6, #8]
	bic	r4, r4, lr
	str	r4, [r6, #8]
	.loc 1 325 9 is_stmt 1 view .LVU217
.LVL55:
	.loc 1 326 9 view .LVU218
	.loc 1 326 40 is_stmt 0 view .LVU219
	ldr	r4, [r5, #8]
	bic	r4, r4, r8
	str	r4, [r5, #8]
.LVL56:
.L53:
	.loc 1 331 7 is_stmt 1 view .LVU220
	.loc 1 331 20 is_stmt 0 view .LVU221
	ldr	r5, [r0]
	.loc 1 331 41 view .LVU222
	lsls	r4, r3, #1
	lsl	r4, r10, r4
	.loc 1 334 34 view .LVU223
	lsr	ip, r3, #3
	.loc 1 331 20 view .LVU224
	orrs	r5, r5, r4
	add	ip, r0, ip, lsl #2
	str	r5, [r0]
	.loc 1 334 7 is_stmt 1 view .LVU225
	.loc 1 334 58 is_stmt 0 view .LVU226
	and	r5, r3, #7
	.loc 1 334 34 view .LVU227
	ldr	lr, [ip, #32]
.LVL57:
	.loc 1 334 67 view .LVU228
	lsls	r5, r5, #2
	.loc 1 334 44 view .LVU229
	lsl	r5, r9, r5
	.loc 1 334 34 view .LVU230
	bic	r5, lr, r5
	str	r5, [ip, #32]
	.loc 1 337 7 is_stmt 1 view .LVU231
	.loc 1 337 20 is_stmt 0 view .LVU232
	ldr	r5, [r0, #12]
	bic	r5, r5, r4
	str	r5, [r0, #12]
	.loc 1 340 7 is_stmt 1 view .LVU233
	.loc 1 340 22 is_stmt 0 view .LVU234
	ldr	r5, [r0, #4]
	bic	r2, r5, r2
.LVL58:
	.loc 1 340 22 view .LVU235
	str	r2, [r0, #4]
	.loc 1 343 7 is_stmt 1 view .LVU236
	.loc 1 343 22 is_stmt 0 view .LVU237
	ldr	r2, [r0, #8]
	bic	r4, r2, r4
	str	r4, [r0, #8]
.L46:
	.loc 1 346 5 is_stmt 1 view .LVU238
	.loc 1 346 13 is_stmt 0 view .LVU239
	adds	r3, r3, #1
.LVL59:
	.loc 1 303 9 is_stmt 1 view .LVU240
	lsrs	r2, r1, r3
	beq	.L69
.LVL60:
.L45:
	.loc 1 306 5 view .LVU241
	.loc 1 306 35 is_stmt 0 view .LVU242
	movs	r2, #1
	lsls	r2, r2, r3
.LVL61:
	.loc 1 308 5 is_stmt 1 view .LVU243
	.loc 1 308 8 is_stmt 0 view .LVU244
	ands	lr, r2, r1
.LVL62:
	.loc 1 308 8 view .LVU245
	beq	.L46
	.loc 1 313 7 is_stmt 1 view .LVU246
	bic	r5, r3, #3
	add	r5, r5, #1073741824
	add	r5, r5, #65536
	.loc 1 314 41 is_stmt 0 view .LVU247
	and	r4, r3, #3
	.loc 1 313 11 view .LVU248
	ldr	ip, [r5, #8]
.LVL63:
	.loc 1 314 7 is_stmt 1 view .LVU249
	.loc 1 314 29 is_stmt 0 view .LVU250
	lsls	r4, r4, #2
	.loc 1 314 22 view .LVU251
	lsl	r8, r9, r4
	.loc 1 315 19 view .LVU252
	cmp	r0, #1207959552
	.loc 1 314 11 view .LVU253
	and	ip, r8, ip
.LVL64:
	.loc 1 315 7 is_stmt 1 view .LVU254
	.loc 1 315 19 is_stmt 0 view .LVU255
	bne	.L70
	movs	r4, #0
	b	.L47
.LVL65:
.L69:
	.loc 1 348 1 view .LVU256
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL66:
.L65:
	.loc 1 315 41 view .LVU257
	movs	r7, #1
	lsl	r4, r7, r4
	b	.L47
.L66:
	movs	r7, #2
	lsl	r4, r7, r4
	b	.L47
.L67:
	lsl	r4, r10, r4
	b	.L47
.L68:
	movs	r7, #4
	lsl	r4, r7, r4
	b	.L47
.LVL67:
.L62:
.LCFI5:
	.cfi_def_cfa_offset 0
	.cfi_restore 4
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	.cfi_restore 8
	.cfi_restore 9
	.cfi_restore 10
	.cfi_restore 11
	.cfi_restore 14
	.loc 1 315 41 view .LVU258
	bx	lr
.L72:
	.align	2
.L71:
	.word	1073808384
	.word	1207961600
	.word	1207962624
	.word	1207963648
	.word	1207964672
	.word	1207960576
	.cfi_endproc
.LFE133:
	.size	HAL_GPIO_DeInit, .-HAL_GPIO_DeInit
	.section	.text.HAL_GPIO_ReadPin,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_GPIO_ReadPin
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_GPIO_ReadPin, %function
HAL_GPIO_ReadPin:
.LVL68:
.LFB134:
	.loc 1 374 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 375 3 view .LVU260
	.loc 1 378 3 view .LVU261
	.loc 1 380 3 view .LVU262
	.loc 1 380 13 is_stmt 0 view .LVU263
	ldr	r3, [r0, #16]
.LVL69:
	.loc 1 388 3 is_stmt 1 view .LVU264
	.loc 1 380 6 is_stmt 0 view .LVU265
	tst	r1, r3
	.loc 1 389 1 view .LVU266
	ite	ne
	movne	r0, #1
.LVL70:
	.loc 1 389 1 view .LVU267
	moveq	r0, #0
	bx	lr
	.cfi_endproc
.LFE134:
	.size	HAL_GPIO_ReadPin, .-HAL_GPIO_ReadPin
	.section	.text.HAL_GPIO_WritePin,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_GPIO_WritePin
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_GPIO_WritePin, %function
HAL_GPIO_WritePin:
.LVL71:
.LFB135:
	.loc 1 408 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 410 3 view .LVU269
	.loc 1 411 3 view .LVU270
	.loc 1 413 3 view .LVU271
	.loc 1 413 6 is_stmt 0 view .LVU272
	cbz	r2, .L75
	.loc 1 415 5 is_stmt 1 view .LVU273
	.loc 1 415 17 is_stmt 0 view .LVU274
	str	r1, [r0, #24]
	bx	lr
.L75:
	.loc 1 419 5 is_stmt 1 view .LVU275
	.loc 1 419 16 is_stmt 0 view .LVU276
	str	r1, [r0, #40]
	.loc 1 421 1 view .LVU277
	bx	lr
	.cfi_endproc
.LFE135:
	.size	HAL_GPIO_WritePin, .-HAL_GPIO_WritePin
	.section	.text.HAL_GPIO_TogglePin,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_GPIO_TogglePin
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_GPIO_TogglePin, %function
HAL_GPIO_TogglePin:
.LVL72:
.LFB136:
	.loc 1 431 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 432 3 view .LVU279
	.loc 1 435 3 view .LVU280
	.loc 1 438 3 view .LVU281
	.loc 1 438 7 is_stmt 0 view .LVU282
	ldr	r3, [r0, #20]
.LVL73:
	.loc 1 441 3 is_stmt 1 view .LVU283
	.loc 1 441 23 is_stmt 0 view .LVU284
	and	r2, r1, r3
	.loc 1 441 59 view .LVU285
	bic	r1, r1, r3
.LVL74:
	.loc 1 441 51 view .LVU286
	orr	r1, r1, r2, lsl #16
	.loc 1 441 15 view .LVU287
	str	r1, [r0, #24]
	.loc 1 442 1 view .LVU288
	bx	lr
	.cfi_endproc
.LFE136:
	.size	HAL_GPIO_TogglePin, .-HAL_GPIO_TogglePin
	.section	.text.HAL_GPIO_LockPin,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_GPIO_LockPin
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_GPIO_LockPin, %function
HAL_GPIO_LockPin:
.LVL75:
.LFB137:
	.loc 1 456 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 457 3 view .LVU290
	.loc 1 456 1 is_stmt 0 view .LVU291
	sub	sp, sp, #8
.LCFI6:
	.cfi_def_cfa_offset 8
	.loc 1 457 17 view .LVU292
	mov	r3, #65536
	str	r3, [sp, #4]
	.loc 1 460 3 is_stmt 1 view .LVU293
	.loc 1 461 3 view .LVU294
	.loc 1 464 3 view .LVU295
	.loc 1 464 7 is_stmt 0 view .LVU296
	ldr	r3, [sp, #4]
	orrs	r3, r3, r1
	str	r3, [sp, #4]
	.loc 1 466 3 is_stmt 1 view .LVU297
	.loc 1 466 15 is_stmt 0 view .LVU298
	ldr	r3, [sp, #4]
	str	r3, [r0, #28]
	.loc 1 468 3 is_stmt 1 view .LVU299
	.loc 1 468 15 is_stmt 0 view .LVU300
	str	r1, [r0, #28]
	.loc 1 470 3 is_stmt 1 view .LVU301
	.loc 1 470 15 is_stmt 0 view .LVU302
	ldr	r3, [sp, #4]
	str	r3, [r0, #28]
	.loc 1 472 3 is_stmt 1 view .LVU303
	.loc 1 472 14 is_stmt 0 view .LVU304
	ldr	r3, [r0, #28]
	.loc 1 472 7 view .LVU305
	str	r3, [sp, #4]
	.loc 1 475 3 is_stmt 1 view .LVU306
	.loc 1 475 13 is_stmt 0 view .LVU307
	ldr	r0, [r0, #28]
.LVL76:
	.loc 1 475 6 view .LVU308
	eor	r0, r0, #65536
	.loc 1 483 1 view .LVU309
	ubfx	r0, r0, #16, #1
	add	sp, sp, #8
.LCFI7:
	.cfi_def_cfa_offset 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE137:
	.size	HAL_GPIO_LockPin, .-HAL_GPIO_LockPin
	.section	.text.HAL_GPIO_EXTI_Callback,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	HAL_GPIO_EXTI_Callback
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_GPIO_EXTI_Callback, %function
HAL_GPIO_EXTI_Callback:
.LVL77:
.LFB139:
	.loc 1 506 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 508 3 view .LVU311
	.loc 1 513 1 is_stmt 0 view .LVU312
	bx	lr
	.cfi_endproc
.LFE139:
	.size	HAL_GPIO_EXTI_Callback, .-HAL_GPIO_EXTI_Callback
	.section	.text.HAL_GPIO_EXTI_IRQHandler,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	HAL_GPIO_EXTI_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HAL_GPIO_EXTI_IRQHandler, %function
HAL_GPIO_EXTI_IRQHandler:
.LVL78:
.LFB138:
	.loc 1 491 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 493 3 view .LVU314
	.loc 1 493 7 is_stmt 0 view .LVU315
	ldr	r2, .L91
	ldr	r1, [r2, #20]
	.loc 1 493 6 view .LVU316
	tst	r1, r0
	bne	.L90
	bx	lr
.L90:
	.loc 1 495 5 is_stmt 1 view .LVU317
	.loc 1 491 1 is_stmt 0 view .LVU318
	push	{r3, lr}
.LCFI8:
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 1 495 5 view .LVU319
	str	r0, [r2, #20]
	.loc 1 496 5 is_stmt 1 view .LVU320
	bl	HAL_GPIO_EXTI_Callback
.LVL79:
	.loc 1 498 1 is_stmt 0 view .LVU321
	pop	{r3, pc}
.L92:
	.align	2
.L91:
	.word	1073808384
	.cfi_endproc
.LFE138:
	.size	HAL_GPIO_EXTI_IRQHandler, .-HAL_GPIO_EXTI_IRQHandler
	.text
.Letext0:
	.file 2 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "Drivers/CMSIS/Device/ST/STM32G4xx/Include/stm32g431xx.h"
	.file 5 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_hal_def.h"
	.file 6 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_hal_gpio.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x92b
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF108
	.byte	0xc
	.4byte	.LASF109
	.4byte	.LASF110
	.4byte	.Ldebug_ranges0+0x18
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
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x39
	.byte	0x19
	.4byte	0x4a
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
	.byte	0x24
	.byte	0x14
	.4byte	0x3e
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x58
	.uleb128 0x5
	.4byte	0x93
	.uleb128 0x6
	.4byte	0x9f
	.4byte	0xb4
	.uleb128 0x7
	.4byte	0x80
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	0xa4
	.uleb128 0x8
	.byte	0x38
	.byte	0x4
	.2byte	0x193
	.byte	0x9
	.4byte	0x1a4
	.uleb128 0x9
	.4byte	.LASF13
	.byte	0x4
	.2byte	0x195
	.byte	0x11
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF14
	.byte	0x4
	.2byte	0x196
	.byte	0x11
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF15
	.byte	0x4
	.2byte	0x197
	.byte	0x11
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x4
	.2byte	0x198
	.byte	0x11
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x4
	.2byte	0x199
	.byte	0x11
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.ascii	"PR1\000"
	.byte	0x4
	.2byte	0x19a
	.byte	0x11
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x4
	.2byte	0x19b
	.byte	0x11
	.4byte	0x93
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x4
	.2byte	0x19c
	.byte	0x11
	.4byte	0x93
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x4
	.2byte	0x19d
	.byte	0x11
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x4
	.2byte	0x19e
	.byte	0x11
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x4
	.2byte	0x19f
	.byte	0x11
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x4
	.2byte	0x1a0
	.byte	0x11
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x4
	.2byte	0x1a1
	.byte	0x11
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.ascii	"PR2\000"
	.byte	0x4
	.2byte	0x1a2
	.byte	0x11
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x4
	.2byte	0x1a3
	.byte	0x3
	.4byte	0xb9
	.uleb128 0x8
	.byte	0x2c
	.byte	0x4
	.2byte	0x1d0
	.byte	0x9
	.4byte	0x25c
	.uleb128 0x9
	.4byte	.LASF26
	.byte	0x4
	.2byte	0x1d2
	.byte	0x11
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF27
	.byte	0x4
	.2byte	0x1d3
	.byte	0x11
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF28
	.byte	0x4
	.2byte	0x1d4
	.byte	0x11
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF29
	.byte	0x4
	.2byte	0x1d5
	.byte	0x11
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.ascii	"IDR\000"
	.byte	0x4
	.2byte	0x1d6
	.byte	0x11
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.ascii	"ODR\000"
	.byte	0x4
	.2byte	0x1d7
	.byte	0x11
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.4byte	.LASF30
	.byte	0x4
	.2byte	0x1d8
	.byte	0x11
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.4byte	.LASF31
	.byte	0x4
	.2byte	0x1d9
	.byte	0x11
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.ascii	"AFR\000"
	.byte	0x4
	.2byte	0x1da
	.byte	0x11
	.4byte	0xb4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.ascii	"BRR\000"
	.byte	0x4
	.2byte	0x1db
	.byte	0x11
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x4
	.2byte	0x1dc
	.byte	0x3
	.4byte	0x1b1
	.uleb128 0x8
	.byte	0xa0
	.byte	0x4
	.2byte	0x23f
	.byte	0x9
	.4byte	0x4fb
	.uleb128 0xa
	.ascii	"CR\000"
	.byte	0x4
	.2byte	0x241
	.byte	0x11
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x4
	.2byte	0x242
	.byte	0x11
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x4
	.2byte	0x243
	.byte	0x11
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x4
	.2byte	0x244
	.byte	0x11
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF36
	.byte	0x4
	.2byte	0x245
	.byte	0x11
	.4byte	0x93
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x4
	.2byte	0x246
	.byte	0x11
	.4byte	0x93
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x9
	.4byte	.LASF37
	.byte	0x4
	.2byte	0x247
	.byte	0x11
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.4byte	.LASF38
	.byte	0x4
	.2byte	0x248
	.byte	0x11
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.4byte	.LASF39
	.byte	0x4
	.2byte	0x249
	.byte	0x11
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x4
	.2byte	0x24a
	.byte	0x11
	.4byte	0x93
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x9
	.4byte	.LASF40
	.byte	0x4
	.2byte	0x24b
	.byte	0x11
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.4byte	.LASF41
	.byte	0x4
	.2byte	0x24c
	.byte	0x11
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x9
	.4byte	.LASF42
	.byte	0x4
	.2byte	0x24d
	.byte	0x11
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.4byte	.LASF43
	.byte	0x4
	.2byte	0x24e
	.byte	0x11
	.4byte	0x93
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x9
	.4byte	.LASF44
	.byte	0x4
	.2byte	0x24f
	.byte	0x11
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.4byte	.LASF45
	.byte	0x4
	.2byte	0x250
	.byte	0x11
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x4
	.2byte	0x251
	.byte	0x11
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.4byte	.LASF47
	.byte	0x4
	.2byte	0x252
	.byte	0x11
	.4byte	0x93
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x9
	.4byte	.LASF48
	.byte	0x4
	.2byte	0x253
	.byte	0x11
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.4byte	.LASF49
	.byte	0x4
	.2byte	0x254
	.byte	0x11
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0x4
	.2byte	0x255
	.byte	0x11
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0x4
	.2byte	0x256
	.byte	0x11
	.4byte	0x93
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x9
	.4byte	.LASF52
	.byte	0x4
	.2byte	0x257
	.byte	0x11
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.4byte	.LASF53
	.byte	0x4
	.2byte	0x258
	.byte	0x11
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x9
	.4byte	.LASF54
	.byte	0x4
	.2byte	0x259
	.byte	0x11
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x9
	.4byte	.LASF55
	.byte	0x4
	.2byte	0x25a
	.byte	0x11
	.4byte	0x93
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x9
	.4byte	.LASF56
	.byte	0x4
	.2byte	0x25b
	.byte	0x11
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x9
	.4byte	.LASF57
	.byte	0x4
	.2byte	0x25c
	.byte	0x11
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x9
	.4byte	.LASF58
	.byte	0x4
	.2byte	0x25d
	.byte	0x11
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x9
	.4byte	.LASF59
	.byte	0x4
	.2byte	0x25e
	.byte	0x11
	.4byte	0x93
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x9
	.4byte	.LASF60
	.byte	0x4
	.2byte	0x25f
	.byte	0x11
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x9
	.4byte	.LASF61
	.byte	0x4
	.2byte	0x260
	.byte	0x11
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x9
	.4byte	.LASF62
	.byte	0x4
	.2byte	0x261
	.byte	0x11
	.4byte	0x9f
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x9
	.4byte	.LASF63
	.byte	0x4
	.2byte	0x262
	.byte	0x11
	.4byte	0x93
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x9
	.4byte	.LASF64
	.byte	0x4
	.2byte	0x263
	.byte	0x11
	.4byte	0x9f
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x9
	.4byte	.LASF65
	.byte	0x4
	.2byte	0x264
	.byte	0x11
	.4byte	0x93
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x9
	.4byte	.LASF66
	.byte	0x4
	.2byte	0x265
	.byte	0x11
	.4byte	0x9f
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xa
	.ascii	"CSR\000"
	.byte	0x4
	.2byte	0x266
	.byte	0x11
	.4byte	0x9f
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0x9
	.4byte	.LASF67
	.byte	0x4
	.2byte	0x267
	.byte	0x11
	.4byte	0x9f
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x9
	.4byte	.LASF68
	.byte	0x4
	.2byte	0x268
	.byte	0x11
	.4byte	0x9f
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF69
	.byte	0x4
	.2byte	0x269
	.byte	0x3
	.4byte	0x269
	.uleb128 0x8
	.byte	0x28
	.byte	0x4
	.2byte	0x2e4
	.byte	0x9
	.4byte	0x583
	.uleb128 0x9
	.4byte	.LASF70
	.byte	0x4
	.2byte	0x2e6
	.byte	0x11
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF71
	.byte	0x4
	.2byte	0x2e7
	.byte	0x11
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF72
	.byte	0x4
	.2byte	0x2e8
	.byte	0x11
	.4byte	0x593
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF73
	.byte	0x4
	.2byte	0x2e9
	.byte	0x11
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x9
	.4byte	.LASF74
	.byte	0x4
	.2byte	0x2ea
	.byte	0x11
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x9
	.4byte	.LASF75
	.byte	0x4
	.2byte	0x2eb
	.byte	0x11
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.ascii	"SKR\000"
	.byte	0x4
	.2byte	0x2ec
	.byte	0x11
	.4byte	0x9f
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0
	.uleb128 0x6
	.4byte	0x9f
	.4byte	0x593
	.uleb128 0x7
	.4byte	0x80
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.4byte	0x583
	.uleb128 0xb
	.4byte	.LASF76
	.byte	0x4
	.2byte	0x2ed
	.byte	0x3
	.4byte	0x508
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF77
	.uleb128 0xc
	.byte	0x7
	.byte	0x1
	.4byte	0x30
	.byte	0x5
	.byte	0x27
	.byte	0x1
	.4byte	0x5d3
	.uleb128 0xd
	.4byte	.LASF78
	.byte	0
	.uleb128 0xd
	.4byte	.LASF79
	.byte	0x1
	.uleb128 0xd
	.4byte	.LASF80
	.byte	0x2
	.uleb128 0xd
	.4byte	.LASF81
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF82
	.byte	0x5
	.byte	0x2c
	.byte	0x3
	.4byte	0x5ac
	.uleb128 0xe
	.byte	0x14
	.byte	0x6
	.byte	0x2f
	.byte	0x9
	.4byte	0x634
	.uleb128 0xf
	.ascii	"Pin\000"
	.byte	0x6
	.byte	0x31
	.byte	0xc
	.4byte	0x93
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.4byte	.LASF83
	.byte	0x6
	.byte	0x34
	.byte	0xc
	.4byte	0x93
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.4byte	.LASF84
	.byte	0x6
	.byte	0x37
	.byte	0xc
	.4byte	0x93
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.4byte	.LASF85
	.byte	0x6
	.byte	0x3a
	.byte	0xc
	.4byte	0x93
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x10
	.4byte	.LASF86
	.byte	0x6
	.byte	0x3d
	.byte	0xc
	.4byte	0x93
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x3
	.4byte	.LASF87
	.byte	0x6
	.byte	0x3f
	.byte	0x3
	.4byte	0x5df
	.uleb128 0xc
	.byte	0x7
	.byte	0x1
	.4byte	0x30
	.byte	0x6
	.byte	0x45
	.byte	0x1
	.4byte	0x65b
	.uleb128 0xd
	.4byte	.LASF88
	.byte	0
	.uleb128 0xd
	.4byte	.LASF89
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF90
	.byte	0x6
	.byte	0x48
	.byte	0x3
	.4byte	0x640
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF91
	.byte	0x1
	.2byte	0x1f9
	.byte	0xd
	.byte	0x1
	.4byte	.LFB139
	.4byte	.LFE139
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x692
	.uleb128 0x12
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x1f9
	.byte	0x2d
	.4byte	0x87
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x1ea
	.byte	0x6
	.byte	0x1
	.4byte	.LFB138
	.4byte	.LFE138
	.4byte	.LLST15
	.byte	0x1
	.4byte	0x6cd
	.uleb128 0x14
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x1ea
	.byte	0x28
	.4byte	0x87
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0x15
	.4byte	.LVL79
	.4byte	0x667
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.4byte	.LASF98
	.byte	0x1
	.2byte	0x1c7
	.byte	0x13
	.byte	0x1
	.4byte	0x5d3
	.4byte	.LFB137
	.4byte	.LFE137
	.4byte	.LLST13
	.byte	0x1
	.4byte	0x722
	.uleb128 0x14
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x1c7
	.byte	0x32
	.4byte	0x722
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x12
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x1c7
	.byte	0x42
	.4byte	0x87
	.byte	0x1
	.byte	0x51
	.uleb128 0x17
	.ascii	"tmp\000"
	.byte	0x1
	.2byte	0x1c9
	.byte	0x11
	.4byte	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.byte	0
	.uleb128 0x18
	.byte	0x4
	.4byte	0x25c
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x1ae
	.byte	0x6
	.byte	0x1
	.4byte	.LFB136
	.4byte	.LFE136
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x77d
	.uleb128 0x12
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x1ae
	.byte	0x27
	.4byte	0x722
	.byte	0x1
	.byte	0x50
	.uleb128 0x14
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x1ae
	.byte	0x37
	.4byte	0x87
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x19
	.ascii	"odr\000"
	.byte	0x1
	.2byte	0x1b0
	.byte	0xc
	.4byte	0x93
	.4byte	.LLST12
	.4byte	.LVUS12
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x197
	.byte	0x6
	.byte	0x1
	.4byte	.LFB135
	.4byte	.LFE135
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x7c6
	.uleb128 0x12
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x197
	.byte	0x26
	.4byte	0x722
	.byte	0x1
	.byte	0x50
	.uleb128 0x12
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x197
	.byte	0x36
	.4byte	0x87
	.byte	0x1
	.byte	0x51
	.uleb128 0x12
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x197
	.byte	0x4e
	.4byte	0x65b
	.byte	0x1
	.byte	0x52
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x175
	.byte	0xf
	.byte	0x1
	.4byte	0x65b
	.4byte	.LFB134
	.4byte	.LFE134
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x81f
	.uleb128 0x14
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x175
	.byte	0x2e
	.4byte	0x722
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x12
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x175
	.byte	0x3e
	.4byte	0x87
	.byte	0x1
	.byte	0x51
	.uleb128 0x1b
	.4byte	.LASF100
	.byte	0x1
	.2byte	0x177
	.byte	0x11
	.4byte	0x65b
	.4byte	.LLST10
	.4byte	.LVUS10
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x124
	.byte	0x6
	.byte	0x1
	.4byte	.LFB133
	.4byte	.LFE133
	.4byte	.LLST5
	.byte	0x1
	.4byte	0x899
	.uleb128 0x12
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x124
	.byte	0x25
	.4byte	0x722
	.byte	0x1
	.byte	0x50
	.uleb128 0x12
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x124
	.byte	0x35
	.4byte	0x93
	.byte	0x1
	.byte	0x51
	.uleb128 0x1b
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x126
	.byte	0xc
	.4byte	0x93
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x1b
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x127
	.byte	0xc
	.4byte	0x93
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x19
	.ascii	"tmp\000"
	.byte	0x1
	.2byte	0x128
	.byte	0xc
	.4byte	0x93
	.4byte	.LLST8
	.4byte	.LVUS8
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.4byte	.LASF104
	.byte	0x1
	.byte	0xa2
	.byte	0x6
	.byte	0x1
	.4byte	.LFB132
	.4byte	.LFE132
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x928
	.uleb128 0x1d
	.4byte	.LASF94
	.byte	0x1
	.byte	0xa2
	.byte	0x23
	.4byte	0x722
	.byte	0x1
	.byte	0x50
	.uleb128 0x1e
	.4byte	.LASF105
	.byte	0x1
	.byte	0xa2
	.byte	0x3c
	.4byte	0x928
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x1f
	.4byte	.LASF102
	.byte	0x1
	.byte	0xa4
	.byte	0xc
	.4byte	0x93
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x1f
	.4byte	.LASF103
	.byte	0x1
	.byte	0xa5
	.byte	0xc
	.4byte	0x93
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x1f
	.4byte	.LASF106
	.byte	0x1
	.byte	0xa6
	.byte	0xc
	.4byte	0x93
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x20
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x21
	.4byte	.LASF107
	.byte	0x1
	.byte	0xee
	.byte	0x9
	.4byte	0x9f
	.byte	0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.uleb128 0x18
	.byte	0x4
	.4byte	0x634
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x12
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
	.uleb128 0x15
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x34
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST15:
	.4byte	.LFB138
	.4byte	.LCFI8
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI8
	.4byte	.LFE138
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LVUS16:
	.uleb128 0
	.uleb128 .LVU321
	.uleb128 .LVU321
	.uleb128 0
.LLST16:
	.4byte	.LVL78
	.4byte	.LVL79-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL79-1
	.4byte	.LFE138
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LFB137
	.4byte	.LCFI6
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI6
	.4byte	.LCFI7
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	.LCFI7
	.4byte	.LFE137
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS14:
	.uleb128 0
	.uleb128 .LVU308
	.uleb128 .LVU308
	.uleb128 0
.LLST14:
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL76
	.4byte	.LFE137
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 0
	.uleb128 .LVU286
	.uleb128 .LVU286
	.uleb128 0
.LLST11:
	.4byte	.LVL72
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL74
	.4byte	.LFE136
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS12:
	.uleb128 .LVU283
	.uleb128 0
.LLST12:
	.4byte	.LVL73
	.4byte	.LFE136
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 0
	.uleb128 .LVU267
	.uleb128 .LVU267
	.uleb128 0
.LLST9:
	.4byte	.LVL68
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL70
	.4byte	.LFE134
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 .LVU264
	.uleb128 0
.LLST10:
	.4byte	.LVL69
	.4byte	.LFE134
	.2byte	0x8
	.byte	0x71
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1a
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LFB133
	.4byte	.LCFI4
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI4
	.4byte	.LCFI5
	.2byte	0x2
	.byte	0x7d
	.sleb128 36
	.4byte	.LCFI5
	.4byte	.LFE133
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 .LVU190
	.uleb128 .LVU202
	.uleb128 .LVU202
	.uleb128 .LVU258
	.uleb128 .LVU258
	.uleb128 0
.LLST6:
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL67
	.4byte	.LFE133
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 .LVU202
	.uleb128 .LVU228
	.uleb128 .LVU228
	.uleb128 .LVU235
	.uleb128 .LVU235
	.uleb128 .LVU240
	.uleb128 .LVU240
	.uleb128 .LVU241
	.uleb128 .LVU243
	.uleb128 .LVU245
	.uleb128 .LVU245
	.uleb128 .LVU256
	.uleb128 .LVU256
	.uleb128 .LVU257
	.uleb128 .LVU257
	.uleb128 .LVU258
.LLST7:
	.4byte	.LVL54
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x8
	.byte	0x31
	.byte	0x73
	.sleb128 0
	.byte	0x24
	.byte	0x71
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x8
	.byte	0x31
	.byte	0x73
	.sleb128 -1
	.byte	0x24
	.byte	0x71
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x8
	.byte	0x31
	.byte	0x73
	.sleb128 -1
	.byte	0x24
	.byte	0x71
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 .LVU202
	.uleb128 .LVU218
	.uleb128 .LVU218
	.uleb128 .LVU220
	.uleb128 .LVU249
	.uleb128 .LVU256
	.uleb128 .LVU257
	.uleb128 .LVU258
.LLST8:
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL63
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x5c
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
	.sleb128 36
	.4byte	.LCFI1
	.4byte	.LCFI2
	.2byte	0x2
	.byte	0x7d
	.sleb128 56
	.4byte	.LCFI2
	.4byte	.LCFI3
	.2byte	0x2
	.byte	0x7d
	.sleb128 36
	.4byte	.LCFI3
	.4byte	.LFE132
	.2byte	0x2
	.byte	0x7d
	.sleb128 56
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU17
	.uleb128 .LVU17
	.uleb128 .LVU117
	.uleb128 .LVU117
	.uleb128 .LVU118
	.uleb128 .LVU118
	.uleb128 0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL1
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LFE132
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 .LVU2
	.uleb128 .LVU17
	.uleb128 .LVU17
	.uleb128 .LVU117
	.uleb128 .LVU118
	.uleb128 0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL28
	.4byte	.LFE132
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 .LVU19
	.uleb128 .LVU21
	.uleb128 .LVU21
	.uleb128 .LVU117
	.uleb128 .LVU118
	.uleb128 0
.LLST3:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL28
	.4byte	.LFE132
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU33
	.uleb128 .LVU35
	.uleb128 .LVU35
	.uleb128 .LVU37
	.uleb128 .LVU37
	.uleb128 .LVU45
	.uleb128 .LVU45
	.uleb128 .LVU46
	.uleb128 .LVU52
	.uleb128 .LVU66
	.uleb128 .LVU72
	.uleb128 .LVU74
	.uleb128 .LVU74
	.uleb128 .LVU77
	.uleb128 .LVU79
	.uleb128 .LVU84
	.uleb128 .LVU84
	.uleb128 .LVU88
	.uleb128 .LVU90
	.uleb128 .LVU94
	.uleb128 .LVU94
	.uleb128 .LVU95
	.uleb128 .LVU95
	.uleb128 .LVU99
	.uleb128 .LVU101
	.uleb128 .LVU105
	.uleb128 .LVU105
	.uleb128 .LVU106
	.uleb128 .LVU106
	.uleb128 .LVU110
	.uleb128 .LVU112
	.uleb128 .LVU114
	.uleb128 .LVU121
	.uleb128 .LVU132
	.uleb128 .LVU132
	.uleb128 .LVU133
	.uleb128 .LVU133
	.uleb128 .LVU139
	.uleb128 .LVU139
	.uleb128 .LVU142
	.uleb128 .LVU145
	.uleb128 .LVU147
	.uleb128 .LVU147
	.uleb128 .LVU150
	.uleb128 .LVU150
	.uleb128 .LVU158
	.uleb128 .LVU158
	.uleb128 .LVU161
	.uleb128 .LVU169
	.uleb128 .LVU172
	.uleb128 .LVU172
	.uleb128 .LVU174
	.uleb128 .LVU176
	.uleb128 .LVU178
	.uleb128 .LVU179
	.uleb128 .LVU181
	.uleb128 .LVU182
	.uleb128 .LVU184
	.uleb128 .LVU185
	.uleb128 .LVU187
.LLST4:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x2
	.byte	0x70
	.sleb128 0
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL22
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL29
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x2
	.byte	0x70
	.sleb128 8
	.4byte	.LVL33
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x54
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
	.4byte	.LFB139
	.4byte	.LFE139-.LFB139
	.4byte	.LFB138
	.4byte	.LFE138-.LFB138
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	.LBB3
	.4byte	.LBE3
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
	.4byte	.LFB139
	.4byte	.LFE139
	.4byte	.LFB138
	.4byte	.LFE138
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF32:
	.ascii	"GPIO_TypeDef\000"
.LASF79:
	.ascii	"HAL_ERROR\000"
.LASF93:
	.ascii	"GPIO_Pin\000"
.LASF81:
	.ascii	"HAL_TIMEOUT\000"
.LASF104:
	.ascii	"HAL_GPIO_Init\000"
.LASF28:
	.ascii	"OSPEEDR\000"
.LASF35:
	.ascii	"PLLCFGR\000"
.LASF44:
	.ascii	"APB1RSTR1\000"
.LASF45:
	.ascii	"APB1RSTR2\000"
.LASF49:
	.ascii	"AHB2ENR\000"
.LASF98:
	.ascii	"HAL_GPIO_LockPin\000"
.LASF106:
	.ascii	"temp\000"
.LASF2:
	.ascii	"short int\000"
.LASF61:
	.ascii	"APB1SMENR2\000"
.LASF66:
	.ascii	"BDCR\000"
.LASF84:
	.ascii	"Pull\000"
.LASF64:
	.ascii	"CCIPR\000"
.LASF8:
	.ascii	"long long int\000"
.LASF6:
	.ascii	"__uint32_t\000"
.LASF39:
	.ascii	"CICR\000"
.LASF5:
	.ascii	"__uint16_t\000"
.LASF71:
	.ascii	"CFGR1\000"
.LASF41:
	.ascii	"AHB2RSTR\000"
.LASF40:
	.ascii	"AHB1RSTR\000"
.LASF36:
	.ascii	"RESERVED0\000"
.LASF78:
	.ascii	"HAL_OK\000"
.LASF105:
	.ascii	"GPIO_Init\000"
.LASF70:
	.ascii	"MEMRMP\000"
.LASF37:
	.ascii	"CIER\000"
.LASF72:
	.ascii	"EXTICR\000"
.LASF92:
	.ascii	"HAL_GPIO_EXTI_IRQHandler\000"
.LASF108:
	.ascii	"GNU C17 10.2.1 20201103 (release) -mcpu=cortex-m4 -"
	.ascii	"mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=hard -march=ar"
	.ascii	"mv7e-m+fp -g -gdwarf-2 -O3 -fdata-sections -ffuncti"
	.ascii	"on-sections\000"
.LASF80:
	.ascii	"HAL_BUSY\000"
.LASF63:
	.ascii	"RESERVED8\000"
.LASF17:
	.ascii	"SWIER1\000"
.LASF24:
	.ascii	"SWIER2\000"
.LASF27:
	.ascii	"OTYPER\000"
.LASF0:
	.ascii	"signed char\000"
.LASF97:
	.ascii	"PinState\000"
.LASF65:
	.ascii	"RESERVED9\000"
.LASF77:
	.ascii	"long double\000"
.LASF50:
	.ascii	"AHB3ENR\000"
.LASF89:
	.ascii	"GPIO_PIN_SET\000"
.LASF9:
	.ascii	"long long unsigned int\000"
.LASF29:
	.ascii	"PUPDR\000"
.LASF83:
	.ascii	"Mode\000"
.LASF60:
	.ascii	"APB1SMENR1\000"
.LASF25:
	.ascii	"EXTI_TypeDef\000"
.LASF4:
	.ascii	"long int\000"
.LASF69:
	.ascii	"RCC_TypeDef\000"
.LASF99:
	.ascii	"HAL_GPIO_ReadPin\000"
.LASF57:
	.ascii	"AHB2SMENR\000"
.LASF26:
	.ascii	"MODER\000"
.LASF46:
	.ascii	"APB2RSTR\000"
.LASF82:
	.ascii	"HAL_StatusTypeDef\000"
.LASF107:
	.ascii	"tmpreg\000"
.LASF100:
	.ascii	"bitstatus\000"
.LASF102:
	.ascii	"position\000"
.LASF88:
	.ascii	"GPIO_PIN_RESET\000"
.LASF96:
	.ascii	"HAL_GPIO_WritePin\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF54:
	.ascii	"APB2ENR\000"
.LASF67:
	.ascii	"CRRCR\000"
.LASF15:
	.ascii	"RTSR1\000"
.LASF91:
	.ascii	"HAL_GPIO_EXTI_Callback\000"
.LASF22:
	.ascii	"RTSR2\000"
.LASF12:
	.ascii	"uint32_t\000"
.LASF87:
	.ascii	"GPIO_InitTypeDef\000"
.LASF10:
	.ascii	"unsigned int\000"
.LASF74:
	.ascii	"CFGR2\000"
.LASF11:
	.ascii	"uint16_t\000"
.LASF110:
	.ascii	"/home/joel/share/EVSPIN32G4_Shinano\000"
.LASF7:
	.ascii	"long unsigned int\000"
.LASF34:
	.ascii	"CFGR\000"
.LASF52:
	.ascii	"APB1ENR1\000"
.LASF53:
	.ascii	"APB1ENR2\000"
.LASF109:
	.ascii	"Drivers/STM32G4xx_HAL_Driver/Src/stm32g4xx_hal_gpio"
	.ascii	".c\000"
.LASF68:
	.ascii	"CCIPR2\000"
.LASF33:
	.ascii	"ICSCR\000"
.LASF76:
	.ascii	"SYSCFG_TypeDef\000"
.LASF62:
	.ascii	"APB2SMENR\000"
.LASF95:
	.ascii	"HAL_GPIO_TogglePin\000"
.LASF94:
	.ascii	"GPIOx\000"
.LASF14:
	.ascii	"EMR1\000"
.LASF21:
	.ascii	"EMR2\000"
.LASF18:
	.ascii	"RESERVED1\000"
.LASF19:
	.ascii	"RESERVED2\000"
.LASF43:
	.ascii	"RESERVED3\000"
.LASF47:
	.ascii	"RESERVED4\000"
.LASF51:
	.ascii	"RESERVED5\000"
.LASF55:
	.ascii	"RESERVED6\000"
.LASF59:
	.ascii	"RESERVED7\000"
.LASF13:
	.ascii	"IMR1\000"
.LASF20:
	.ascii	"IMR2\000"
.LASF38:
	.ascii	"CIFR\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF75:
	.ascii	"SWPR\000"
.LASF48:
	.ascii	"AHB1ENR\000"
.LASF16:
	.ascii	"FTSR1\000"
.LASF85:
	.ascii	"Speed\000"
.LASF58:
	.ascii	"AHB3SMENR\000"
.LASF56:
	.ascii	"AHB1SMENR\000"
.LASF73:
	.ascii	"SCSR\000"
.LASF101:
	.ascii	"HAL_GPIO_DeInit\000"
.LASF86:
	.ascii	"Alternate\000"
.LASF90:
	.ascii	"GPIO_PinState\000"
.LASF31:
	.ascii	"LCKR\000"
.LASF23:
	.ascii	"FTSR2\000"
.LASF42:
	.ascii	"AHB3RSTR\000"
.LASF103:
	.ascii	"iocurrent\000"
.LASF30:
	.ascii	"BSRR\000"
	.ident	"GCC: (GNU Arm Embedded Toolchain 10-2020-q4-major) 10.2.1 20201103 (release)"
