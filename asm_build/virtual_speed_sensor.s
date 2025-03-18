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
	.file	"virtual_speed_sensor.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.VSS_Clear,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	VSS_Clear
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	VSS_Clear, %function
VSS_Clear:
.LVL0:
.LFB1441:
	.file 1 "MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Src/virtual_speed_sensor.c"
	.loc 1 69 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 78 5 view .LVU1
	.loc 1 78 39 is_stmt 0 view .LVU2
	movs	r3, #0
	.loc 1 93 40 view .LVU3
	ldrh	r2, [r0, #54]
	.loc 1 78 39 view .LVU4
	strb	r3, [r0]
	.loc 1 79 5 is_stmt 1 view .LVU5
	.loc 1 80 5 view .LVU6
	.loc 1 87 28 is_stmt 0 view .LVU7
	strd	r3, r3, [r0, #32]
	.loc 1 79 30 view .LVU8
	str	r3, [r0, #4]
	.loc 1 81 5 is_stmt 1 view .LVU9
	.loc 1 82 5 view .LVU10
	.loc 1 81 38 is_stmt 0 view .LVU11
	str	r3, [r0, #12]
	.loc 1 83 5 is_stmt 1 view .LVU12
	.loc 1 83 36 is_stmt 0 view .LVU13
	strh	r3, [r0, #18]	@ movhi
	.loc 1 84 5 is_stmt 1 view .LVU14
	.loc 1 86 5 view .LVU15
	.loc 1 88 5 view .LVU16
	.loc 1 88 29 is_stmt 0 view .LVU17
	strh	r3, [r0, #40]	@ movhi
	.loc 1 89 5 is_stmt 1 view .LVU18
	.loc 1 91 5 view .LVU19
	.loc 1 92 5 view .LVU20
	.loc 1 91 33 is_stmt 0 view .LVU21
	strh	r3, [r0, #44]	@ movhi
	.loc 1 93 5 is_stmt 1 view .LVU22
	.loc 1 93 40 is_stmt 0 view .LVU23
	strh	r2, [r0, #46]	@ movhi
	.loc 1 94 5 is_stmt 1 view .LVU24
	.loc 1 96 5 view .LVU25
	.loc 1 89 27 is_stmt 0 view .LVU26
	str	r3, [r0, #48]
	.loc 1 100 1 view .LVU27
	bx	lr
	.cfi_endproc
.LFE1441:
	.size	VSS_Clear, .-VSS_Clear
	.section	.text.VSS_Init,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	VSS_Init
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	VSS_Init, %function
VSS_Init:
.LVL1:
.LFB1440:
	.loc 1 58 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 59 3 view .LVU29
	.loc 1 58 1 is_stmt 0 view .LVU30
	push	{r3, lr}
.LCFI0:
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 1 59 3 view .LVU31
	bl	VSS_Clear
.LVL2:
	.loc 1 60 1 view .LVU32
	pop	{r3, pc}
	.cfi_endproc
.LFE1440:
	.size	VSS_Init, .-VSS_Init
	.section	.text.VSS_CalcElAngle,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	VSS_CalcElAngle
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	VSS_CalcElAngle, %function
VSS_CalcElAngle:
.LVL3:
.LFB1442:
	.loc 1 119 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 120 3 view .LVU34
	.loc 1 129 5 view .LVU35
	.loc 1 130 5 view .LVU36
	.loc 1 131 5 view .LVU37
	.loc 1 132 5 view .LVU38
	.loc 1 134 5 view .LVU39
	.loc 1 134 8 is_stmt 0 view .LVU40
	ldrb	r3, [r0, #51]	@ zero_extendqisi2
	cbz	r3, .L6
	.loc 1 136 7 is_stmt 1 view .LVU41
	.loc 1 136 17 is_stmt 0 view .LVU42
	ldrsh	r3, [r1]
.LVL4:
	.loc 1 193 5 is_stmt 1 view .LVU43
	.loc 1 193 30 is_stmt 0 view .LVU44
	strh	r3, [r0, #4]	@ movhi
	.loc 1 197 3 is_stmt 1 view .LVU45
	.loc 1 198 1 is_stmt 0 view .LVU46
	mov	r0, r3
.LVL5:
	.loc 1 198 1 view .LVU47
	bx	lr
.LVL6:
.L6:
	.loc 1 140 7 is_stmt 1 view .LVU48
	.loc 1 119 1 is_stmt 0 view .LVU49
	push	{r4, r5, lr}
.LCFI1:
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	.loc 1 140 47 view .LVU50
	ldrsh	ip, [r0, #14]
	.loc 1 140 29 view .LVU51
	ldrh	r3, [r0, #48]
	.loc 1 141 33 view .LVU52
	ldrh	r5, [r0, #6]
	.loc 1 143 10 view .LVU53
	ldrb	r4, [r0, #44]	@ zero_extendqisi2
	.loc 1 141 67 view .LVU54
	ldrb	r2, [r0, #1]	@ zero_extendqisi2
	.loc 1 141 65 view .LVU55
	sdiv	r2, ip, r2
	.loc 1 140 29 view .LVU56
	add	r3, r3, ip
	uxth	lr, r3
	.loc 1 141 33 view .LVU57
	add	r2, r2, r5
	.loc 1 140 29 view .LVU58
	sxth	r3, r3
	strh	r3, [r0, #48]	@ movhi
	.loc 1 141 7 is_stmt 1 view .LVU59
	.loc 1 141 33 is_stmt 0 view .LVU60
	strh	r2, [r0, #6]	@ movhi
	.loc 1 143 7 is_stmt 1 view .LVU61
	.loc 1 143 10 is_stmt 0 view .LVU62
	cbz	r4, .L7
	.loc 1 145 9 is_stmt 1 view .LVU63
	.loc 1 145 25 is_stmt 0 view .LVU64
	ldrsh	r2, [r0, #46]
	.loc 1 145 12 view .LVU65
	cbz	r2, .L21
	.loc 1 153 11 is_stmt 1 view .LVU66
	.loc 1 153 45 is_stmt 0 view .LVU67
	subs	r2, r2, #1
	sxth	r2, r2
	strh	r2, [r0, #46]	@ movhi
	.loc 1 155 11 is_stmt 1 view .LVU68
	.loc 1 155 14 is_stmt 0 view .LVU69
	cmp	ip, #0
	.loc 1 157 26 view .LVU70
	ldrh	r1, [r1]
.LVL7:
	.loc 1 155 14 view .LVU71
	blt	.L9
	.loc 1 157 13 is_stmt 1 view .LVU72
	.loc 1 157 53 is_stmt 0 view .LVU73
	sub	lr, r1, lr
	.loc 1 157 24 view .LVU74
	sxth	lr, lr
.LVL8:
	.loc 1 157 24 view .LVU75
	movs	r5, #1
.LVL9:
.L10:
	.loc 1 165 11 is_stmt 1 view .LVU76
	.loc 1 166 11 view .LVU77
	.loc 1 167 11 view .LVU78
	.loc 1 166 48 is_stmt 0 view .LVU79
	ldrsh	r4, [r0, #54]
	.loc 1 165 16 view .LVU80
	mul	r2, lr, r2
.LVL10:
	.loc 1 169 14 view .LVU81
	cmp	lr, #0
	.loc 1 166 39 view .LVU82
	sdiv	r2, r2, r4
	.loc 1 167 22 view .LVU83
	smulbb	r2, r2, r5
	uxth	r2, r2
.LVL11:
	.loc 1 169 11 is_stmt 1 view .LVU84
	.loc 1 169 14 is_stmt 0 view .LVU85
	blt	.L11
	.loc 1 171 13 is_stmt 1 view .LVU86
	.loc 1 171 40 is_stmt 0 view .LVU87
	movs	r3, #1
	.loc 1 172 52 view .LVU88
	subs	r2, r1, r2
.LVL12:
	.loc 1 171 40 view .LVU89
	strb	r3, [r0, #50]
	.loc 1 172 13 is_stmt 1 view .LVU90
	.loc 1 172 23 is_stmt 0 view .LVU91
	sxth	r3, r2
.LVL13:
.L7:
	.loc 1 193 5 is_stmt 1 view .LVU92
	.loc 1 193 30 is_stmt 0 view .LVU93
	strh	r3, [r0, #4]	@ movhi
	.loc 1 197 3 is_stmt 1 view .LVU94
	.loc 1 198 1 is_stmt 0 view .LVU95
	mov	r0, r3
.LVL14:
	.loc 1 198 1 view .LVU96
	pop	{r4, r5, pc}
.LVL15:
.L21:
	.loc 1 147 11 is_stmt 1 view .LVU97
	.loc 1 147 21 is_stmt 0 view .LVU98
	ldrsh	r3, [r1]
.LVL16:
	.loc 1 148 11 is_stmt 1 view .LVU99
	.loc 1 149 45 is_stmt 0 view .LVU100
	strb	r2, [r0]
	.loc 1 148 37 view .LVU101
	movs	r4, #1
	strb	r4, [r0, #45]
	.loc 1 149 11 is_stmt 1 view .LVU102
	.loc 1 193 5 view .LVU103
	.loc 1 193 30 is_stmt 0 view .LVU104
	strh	r3, [r0, #4]	@ movhi
	.loc 1 197 3 is_stmt 1 view .LVU105
	.loc 1 198 1 is_stmt 0 view .LVU106
	mov	r0, r3
.LVL17:
	.loc 1 198 1 view .LVU107
	pop	{r4, r5, pc}
.LVL18:
.L11:
	.loc 1 176 13 is_stmt 1 view .LVU108
	.loc 1 176 16 is_stmt 0 view .LVU109
	ldrb	r4, [r0, #50]	@ zero_extendqisi2
	cmp	r4, #0
	beq	.L7
	.loc 1 182 15 is_stmt 1 view .LVU110
	.loc 1 182 54 is_stmt 0 view .LVU111
	add	r2, r2, r1
.LVL19:
	.loc 1 182 25 view .LVU112
	sxth	r3, r2
.LVL20:
	.loc 1 182 25 view .LVU113
	b	.L7
.LVL21:
.L9:
	.loc 1 161 13 is_stmt 1 view .LVU114
	.loc 1 161 48 is_stmt 0 view .LVU115
	sub	lr, lr, r1
	.loc 1 161 24 view .LVU116
	sxth	lr, lr
.LVL22:
	.loc 1 162 13 is_stmt 1 view .LVU117
	.loc 1 161 24 is_stmt 0 view .LVU118
	movw	r5, #65535
	b	.L10
	.cfi_endproc
.LFE1442:
	.size	VSS_CalcElAngle, .-VSS_CalcElAngle
	.section	.text.VSS_CalcAvrgMecSpeedUnit,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	VSS_CalcAvrgMecSpeedUnit
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	VSS_CalcAvrgMecSpeedUnit, %function
VSS_CalcAvrgMecSpeedUnit:
.LVL23:
.LFB1443:
	.loc 1 217 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 218 3 view .LVU120
	.loc 1 227 5 view .LVU121
	.loc 1 227 16 is_stmt 0 view .LVU122
	ldrh	r3, [r0, #40]
	.loc 1 227 8 view .LVU123
	cmp	r3, #1
	bls	.L36
	.loc 1 229 7 is_stmt 1 view .LVU124
	.loc 1 217 1 is_stmt 0 view .LVU125
	push	{r4}
.LCFI2:
	.cfi_def_cfa_offset 4
	.cfi_offset 4, -4
	.loc 1 229 30 view .LVU126
	ldr	r2, [r0, #36]
	ldr	r4, [r0, #32]
	.loc 1 239 35 view .LVU127
	ldrh	r3, [r0, #26]
	.loc 1 229 30 view .LVU128
	add	r2, r2, r4
	.loc 1 232 70 view .LVU129
	asr	ip, r2, #16
	.loc 1 240 76 view .LVU130
	ldr	r4, [r0, #28]
	.loc 1 229 30 view .LVU131
	str	r2, [r0, #36]
	.loc 1 232 7 is_stmt 1 view .LVU132
	.loc 1 239 32 is_stmt 0 view .LVU133
	mul	r3, ip, r3
	.loc 1 240 79 view .LVU134
	ldrb	r2, [r0, #1]	@ zero_extendqisi2
	.loc 1 232 37 view .LVU135
	strh	ip, [r0, #14]	@ movhi
	.loc 1 238 7 is_stmt 1 view .LVU136
	.loc 1 239 84 is_stmt 0 view .LVU137
	add	r3, r3, r3, lsl #2
	.loc 1 240 76 view .LVU138
	mul	r2, r4, r2
	.loc 1 239 84 view .LVU139
	lsls	r3, r3, #1
	.loc 1 240 32 view .LVU140
	sdiv	r3, r3, r2
	.loc 1 238 24 view .LVU141
	sxth	r3, r3
	.loc 1 238 22 view .LVU142
	strh	r3, [r1]	@ movhi
	.loc 1 241 7 is_stmt 1 view .LVU143
	.loc 1 242 30 is_stmt 0 view .LVU144
	ldrh	r2, [r0, #40]
	.loc 1 241 40 view .LVU145
	strh	r3, [r0, #12]	@ movhi
	.loc 1 242 7 is_stmt 1 view .LVU146
	.loc 1 258 5 view .LVU147
	.loc 1 242 30 is_stmt 0 view .LVU148
	subs	r3, r2, #1
	strh	r3, [r0, #40]	@ movhi
	.loc 1 258 25 view .LVU149
	ldrb	r3, [r0, #45]	@ zero_extendqisi2
	.loc 1 258 8 view .LVU150
	cbnz	r3, .L37
	.loc 1 260 7 is_stmt 1 view .LVU151
	.loc 1 260 41 is_stmt 0 view .LVU152
	ldrb	r2, [r0, #3]	@ zero_extendqisi2
	strb	r2, [r0]
	.loc 1 261 7 is_stmt 1 view .LVU153
.LVL24:
	.loc 1 270 3 view .LVU154
	.loc 1 271 1 is_stmt 0 view .LVU155
	ldr	r4, [sp], #4
.LCFI3:
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	mov	r0, r3
.LVL25:
	.loc 1 271 1 view .LVU156
	bx	lr
.LVL26:
.L36:
	.loc 1 244 10 is_stmt 1 view .LVU157
	.loc 1 244 13 is_stmt 0 view .LVU158
	beq	.L38
	.loc 1 255 7 is_stmt 1 view .LVU159
	.loc 1 255 39 is_stmt 0 view .LVU160
	ldrsh	r3, [r0, #12]
	.loc 1 255 22 view .LVU161
	strh	r3, [r1]	@ movhi
	.loc 1 258 5 is_stmt 1 view .LVU162
	.loc 1 258 25 is_stmt 0 view .LVU163
	ldrb	r3, [r0, #45]	@ zero_extendqisi2
	.loc 1 258 8 view .LVU164
	cbnz	r3, .L39
.L32:
	.loc 1 260 7 is_stmt 1 view .LVU165
	.loc 1 260 41 is_stmt 0 view .LVU166
	ldrb	r2, [r0, #3]	@ zero_extendqisi2
	strb	r2, [r0]
	.loc 1 261 7 is_stmt 1 view .LVU167
.LVL27:
	.loc 1 270 3 view .LVU168
	.loc 1 271 1 is_stmt 0 view .LVU169
	mov	r0, r3
.LVL28:
	.loc 1 271 1 view .LVU170
	bx	lr
.LVL29:
.L37:
.LCFI4:
	.cfi_def_cfa_offset 4
	.cfi_offset 4, -4
	.loc 1 265 7 is_stmt 1 view .LVU171
	.loc 1 271 1 is_stmt 0 view .LVU172
	ldr	r4, [sp], #4
.LCFI5:
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 265 32 view .LVU173
	b	SPD_IsMecSpeedReliable
.LVL30:
.L38:
	.loc 1 246 7 is_stmt 1 view .LVU174
	.loc 1 246 31 is_stmt 0 view .LVU175
	ldrsh	ip, [r0, #42]
	.loc 1 246 22 view .LVU176
	strh	ip, [r1]	@ movhi
	.loc 1 247 7 is_stmt 1 view .LVU177
	.loc 1 249 71 is_stmt 0 view .LVU178
	ldrh	r3, [r0, #26]
	.loc 1 248 74 view .LVU179
	ldr	r2, [r0, #28]
	.loc 1 247 40 view .LVU180
	strh	ip, [r0, #12]	@ movhi
	.loc 1 248 7 is_stmt 1 view .LVU181
	.loc 1 250 7 view .LVU182
	.loc 1 249 68 is_stmt 0 view .LVU183
	add	r3, r3, r3, lsl #2
	.loc 1 248 74 view .LVU184
	mul	r2, r2, ip
	.loc 1 249 68 view .LVU185
	lsls	r3, r3, #1
	.loc 1 249 43 view .LVU186
	sdiv	r3, r2, r3
	.loc 1 250 35 view .LVU187
	ldrb	r2, [r0, #1]	@ zero_extendqisi2
	smulbb	r3, r2, r3
	strh	r3, [r0, #14]	@ movhi
	.loc 1 251 7 is_stmt 1 view .LVU188
	.loc 1 258 25 is_stmt 0 view .LVU189
	ldrb	r3, [r0, #45]	@ zero_extendqisi2
	.loc 1 251 31 view .LVU190
	movs	r2, #0
	strh	r2, [r0, #40]	@ movhi
	.loc 1 258 5 is_stmt 1 view .LVU191
	.loc 1 258 8 is_stmt 0 view .LVU192
	cmp	r3, #0
	beq	.L32
.L39:
	.loc 1 265 7 is_stmt 1 view .LVU193
	.loc 1 265 32 is_stmt 0 view .LVU194
	b	SPD_IsMecSpeedReliable
.LVL31:
	.loc 1 265 32 view .LVU195
	.cfi_endproc
.LFE1443:
	.size	VSS_CalcAvrgMecSpeedUnit, .-VSS_CalcAvrgMecSpeedUnit
	.section	.text.VSS_SetMecAcceleration,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	VSS_SetMecAcceleration
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	VSS_SetMecAcceleration, %function
VSS_SetMecAcceleration:
.LVL32:
.LFB1444:
	.loc 1 290 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 299 5 view .LVU197
	.loc 1 300 5 view .LVU198
	.loc 1 301 5 view .LVU199
	.loc 1 302 5 view .LVU200
	.loc 1 304 5 view .LVU201
	.loc 1 304 8 is_stmt 0 view .LVU202
	ldrb	r3, [r0, #44]	@ zero_extendqisi2
	cbnz	r3, .L48
	.loc 1 306 7 is_stmt 1 view .LVU203
	.loc 1 290 1 is_stmt 0 view .LVU204
	push	{r4, lr}
.LCFI6:
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 306 10 view .LVU205
	cbnz	r2, .L42
	.loc 1 308 9 is_stmt 1 view .LVU206
	.loc 1 313 51 is_stmt 0 view .LVU207
	ldrh	r3, [r0, #26]
	.loc 1 311 48 view .LVU208
	ldr	r4, [r0, #28]
	.loc 1 308 42 view .LVU209
	strh	r1, [r0, #12]	@ movhi
	.loc 1 310 9 is_stmt 1 view .LVU210
	.loc 1 315 9 view .LVU211
	.loc 1 313 48 is_stmt 0 view .LVU212
	add	r3, r3, r3, lsl #2
	.loc 1 311 48 view .LVU213
	mul	ip, r4, r1
	.loc 1 313 48 view .LVU214
	lsls	r3, r3, #1
	.loc 1 312 47 view .LVU215
	sdiv	r3, ip, r3
	.loc 1 315 37 view .LVU216
	ldrb	ip, [r0, #1]	@ zero_extendqisi2
	.loc 1 317 33 view .LVU217
	strh	r2, [r0, #40]	@ movhi
	.loc 1 315 37 view .LVU218
	smulbb	r3, ip, r3
	strh	r3, [r0, #14]	@ movhi
	.loc 1 317 9 is_stmt 1 view .LVU219
	.loc 1 319 9 view .LVU220
	.loc 1 319 37 is_stmt 0 view .LVU221
	strh	r1, [r0, #42]	@ movhi
	.loc 1 354 1 view .LVU222
	pop	{r4, pc}
.L48:
.LCFI7:
	.cfi_def_cfa_offset 0
	.cfi_restore 4
	.cfi_restore 14
	.loc 1 354 1 view .LVU223
	bx	lr
.L42:
.LCFI8:
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 323 9 is_stmt 1 view .LVU224
	.loc 1 323 59 is_stmt 0 view .LVU225
	ldrh	r3, [r0, #52]
	.loc 1 323 101 view .LVU226
	ldr	r4, .L53
	.loc 1 326 46 view .LVU227
	ldrsh	ip, [r0, #14]
	.loc 1 323 56 view .LVU228
	mul	r2, r3, r2
.LVL33:
	.loc 1 323 101 view .LVU229
	umull	r2, r3, r4, r2
	.loc 1 323 18 view .LVU230
	ubfx	r3, r3, #6, #16
.LVL34:
	.loc 1 324 9 is_stmt 1 view .LVU231
	.loc 1 324 17 is_stmt 0 view .LVU232
	adds	r3, r3, #1
.LVL35:
	.loc 1 324 17 view .LVU233
	uxth	r3, r3
.LVL36:
	.loc 1 325 9 is_stmt 1 view .LVU234
	.loc 1 325 33 is_stmt 0 view .LVU235
	strh	r3, [r0, #40]	@ movhi
	.loc 1 326 9 is_stmt 1 view .LVU236
.LVL37:
	.loc 1 327 9 view .LVU237
	.loc 1 330 9 view .LVU238
	.loc 1 330 12 is_stmt 0 view .LVU239
	cbnz	r3, .L51
	.loc 1 342 9 is_stmt 1 view .LVU240
	.loc 1 344 73 is_stmt 0 view .LVU241
	lsl	r3, ip, #16
.LVL38:
	.loc 1 342 37 view .LVU242
	strh	r1, [r0, #42]	@ movhi
	.loc 1 344 9 is_stmt 1 view .LVU243
	.loc 1 344 32 is_stmt 0 view .LVU244
	str	r3, [r0, #36]
	.loc 1 350 5 is_stmt 1 view .LVU245
.L52:
	.loc 1 354 1 is_stmt 0 view .LVU246
	pop	{r4, pc}
.LVL39:
.L51:
	.loc 1 328 66 view .LVU247
	ldrh	r2, [r0, #26]
	.loc 1 326 62 view .LVU248
	ldrb	r4, [r0, #1]	@ zero_extendqisi2
	.loc 1 336 11 is_stmt 1 view .LVU249
.LVL40:
	.loc 1 339 11 view .LVU250
	.loc 1 342 37 is_stmt 0 view .LVU251
	strh	r1, [r0, #42]	@ movhi
	.loc 1 328 63 view .LVU252
	add	r2, r2, r2, lsl #2
.LVL41:
	.loc 1 328 63 view .LVU253
	lsl	lr, r2, #1
	.loc 1 327 71 view .LVU254
	ldr	r2, [r0, #28]
	mul	r2, r1, r2
	.loc 1 328 37 view .LVU255
	sdiv	r2, r2, lr
	.loc 1 326 59 view .LVU256
	sdiv	lr, ip, r4
	.loc 1 336 58 view .LVU257
	sub	r2, r2, lr
	.loc 1 337 26 view .LVU258
	lsls	r2, r2, #16
	.loc 1 336 25 view .LVU259
	sdiv	r3, r2, r3
.LVL42:
	.loc 1 339 49 view .LVU260
	mul	r3, r4, r3
	.loc 1 339 33 view .LVU261
	str	r3, [r0, #32]
	.loc 1 342 9 is_stmt 1 view .LVU262
	.loc 1 344 9 view .LVU263
	.loc 1 344 73 is_stmt 0 view .LVU264
	lsl	r3, ip, #16
	.loc 1 344 32 view .LVU265
	str	r3, [r0, #36]
	.loc 1 350 5 is_stmt 1 view .LVU266
	b	.L52
.L54:
	.align	2
.L53:
	.word	274877907
	.cfi_endproc
.LFE1444:
	.size	VSS_SetMecAcceleration, .-VSS_SetMecAcceleration
	.section	.text.VSS_RampCompleted,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	VSS_RampCompleted
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	VSS_RampCompleted, %function
VSS_RampCompleted:
.LVL43:
.LFB1445:
	.loc 1 366 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 367 3 view .LVU268
	.loc 1 376 5 view .LVU269
	.loc 1 383 5 view .LVU270
	.loc 1 387 3 view .LVU271
	.loc 1 376 8 is_stmt 0 view .LVU272
	ldrh	r0, [r0, #40]
.LVL44:
	.loc 1 388 1 view .LVU273
	clz	r0, r0
.LVL45:
	.loc 1 388 1 view .LVU274
	lsrs	r0, r0, #5
	bx	lr
	.cfi_endproc
.LFE1445:
	.size	VSS_RampCompleted, .-VSS_RampCompleted
	.section	.text.VSS_GetLastRampFinalSpeed,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	VSS_GetLastRampFinalSpeed
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	VSS_GetLastRampFinalSpeed, %function
VSS_GetLastRampFinalSpeed:
.LVL46:
.LFB1446:
	.loc 1 399 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 403 3 view .LVU276
	.loc 1 405 1 is_stmt 0 view .LVU277
	ldrsh	r0, [r0, #42]
.LVL47:
	.loc 1 405 1 view .LVU278
	bx	lr
	.cfi_endproc
.LFE1446:
	.size	VSS_GetLastRampFinalSpeed, .-VSS_GetLastRampFinalSpeed
	.section	.text.VSS_SetStartTransition,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	VSS_SetStartTransition
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	VSS_SetStartTransition, %function
VSS_SetStartTransition:
.LVL48:
.LFB1447:
	.loc 1 421 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 422 3 view .LVU280
	.loc 1 431 5 view .LVU281
	.loc 1 431 8 is_stmt 0 view .LVU282
	cbz	r1, .L60
	.loc 1 433 7 is_stmt 1 view .LVU283
	.loc 1 435 10 is_stmt 0 view .LVU284
	ldrsh	r3, [r0, #54]
	.loc 1 433 35 view .LVU285
	movs	r2, #1
	strb	r2, [r0, #44]
	.loc 1 435 7 is_stmt 1 view .LVU286
	.loc 1 435 10 is_stmt 0 view .LVU287
	cbnz	r3, .L60
	.loc 1 437 9 is_stmt 1 view .LVU288
	.loc 1 437 35 is_stmt 0 view .LVU289
	strb	r2, [r0, #45]
	.loc 1 438 9 is_stmt 1 view .LVU290
	.loc 1 438 43 is_stmt 0 view .LVU291
	strb	r3, [r0]
	.loc 1 439 9 is_stmt 1 view .LVU292
.LVL49:
	.loc 1 439 14 is_stmt 0 view .LVU293
	mov	r0, r3
.LVL50:
	.loc 1 449 5 is_stmt 1 view .LVU294
	.loc 1 453 3 view .LVU295
	.loc 1 454 1 is_stmt 0 view .LVU296
	bx	lr
.LVL51:
.L60:
	.loc 1 422 8 view .LVU297
	movs	r0, #1
.LVL52:
	.loc 1 422 8 view .LVU298
	bx	lr
	.cfi_endproc
.LFE1447:
	.size	VSS_SetStartTransition, .-VSS_SetStartTransition
	.section	.text.VSS_IsTransitionOngoing,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	VSS_IsTransitionOngoing
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	VSS_IsTransitionOngoing, %function
VSS_IsTransitionOngoing:
.LVL53:
.LFB1448:
	.loc 1 467 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 468 3 view .LVU300
	.loc 1 477 5 view .LVU301
	.loc 1 478 5 view .LVU302
	.loc 1 479 5 view .LVU303
	.loc 1 481 5 view .LVU304
	.loc 1 481 8 is_stmt 0 view .LVU305
	ldrb	r3, [r0, #44]	@ zero_extendqisi2
	.loc 1 489 8 view .LVU306
	ldrb	r0, [r0, #45]	@ zero_extendqisi2
.LVL54:
	.loc 1 481 8 view .LVU307
	cbnz	r3, .L62
	.loc 1 488 5 is_stmt 1 view .LVU308
	.loc 1 489 5 view .LVU309
	.loc 1 468 8 is_stmt 0 view .LVU310
	cmp	r0, #0
	it	ne
	movne	r0, #1
	bx	lr
.L62:
	.loc 1 483 7 is_stmt 1 view .LVU311
.LVL55:
	.loc 1 488 5 view .LVU312
	.loc 1 489 5 view .LVU313
	.loc 1 468 8 is_stmt 0 view .LVU314
	clz	r0, r0
	lsrs	r0, r0, #5
	.loc 1 510 1 view .LVU315
	bx	lr
	.cfi_endproc
.LFE1448:
	.size	VSS_IsTransitionOngoing, .-VSS_IsTransitionOngoing
	.section	.text.VSS_TransitionEnded,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	VSS_TransitionEnded
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	VSS_TransitionEnded, %function
VSS_TransitionEnded:
.LVL56:
.LFB1449:
	.loc 1 521 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 525 3 view .LVU317
	.loc 1 527 1 is_stmt 0 view .LVU318
	ldrb	r0, [r0, #45]	@ zero_extendqisi2
.LVL57:
	.loc 1 527 1 view .LVU319
	bx	lr
	.cfi_endproc
.LFE1449:
	.size	VSS_TransitionEnded, .-VSS_TransitionEnded
	.section	.text.VSS_SetElAngle,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	VSS_SetElAngle
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	VSS_SetElAngle, %function
VSS_SetElAngle:
.LVL58:
.LFB1450:
	.loc 1 538 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 547 5 view .LVU321
	.loc 1 547 27 is_stmt 0 view .LVU322
	strh	r1, [r0, #48]	@ movhi
	.loc 1 548 5 is_stmt 1 view .LVU323
	.loc 1 548 30 is_stmt 0 view .LVU324
	strh	r1, [r0, #4]	@ movhi
	.loc 1 552 1 view .LVU325
	bx	lr
	.cfi_endproc
.LFE1450:
	.size	VSS_SetElAngle, .-VSS_SetElAngle
	.text
.Letext0:
	.file 2 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_ll_tim.h"
	.file 5 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_ll_usart.h"
	.file 6 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_ll_dma.h"
	.file 7 "MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Inc/speed_pos_fdbk.h"
	.file 8 "MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Inc/virtual_speed_sensor.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x7da
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF89
	.byte	0xc
	.4byte	.LASF90
	.4byte	.LASF91
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x2
	.byte	0x2b
	.byte	0x18
	.4byte	0x3c
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x2
	.byte	0x37
	.byte	0x18
	.4byte	0x4f
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x39
	.byte	0x19
	.4byte	0x62
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x4d
	.byte	0x18
	.4byte	0x75
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x2
	.byte	0x4f
	.byte	0x19
	.4byte	0x88
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x30
	.uleb128 0x5
	.4byte	0xab
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x20
	.byte	0x13
	.4byte	0x43
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x3
	.byte	0x24
	.byte	0x14
	.4byte	0x56
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x3
	.byte	0x2c
	.byte	0x13
	.4byte	0x69
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x7c
	.uleb128 0x5
	.4byte	0xe0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF19
	.uleb128 0x6
	.4byte	0xb7
	.4byte	0x108
	.uleb128 0x7
	.4byte	0xa4
	.byte	0x9
	.byte	0
	.uleb128 0x5
	.4byte	0xf8
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x4
	.byte	0x2d
	.byte	0x16
	.4byte	0x108
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
	.4byte	.LASF21
	.byte	0x4
	.byte	0x3c
	.byte	0x16
	.4byte	0x108
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
	.4byte	.LASF22
	.byte	0x4
	.byte	0x4a
	.byte	0x16
	.4byte	0x108
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
	.4byte	.LASF23
	.byte	0x4
	.byte	0x58
	.byte	0x16
	.4byte	0x108
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
	.4byte	.LASF24
	.byte	0x4
	.byte	0x66
	.byte	0x16
	.4byte	0x108
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
	.4byte	0xec
	.4byte	0x190
	.uleb128 0x7
	.4byte	0xa4
	.byte	0xb
	.byte	0
	.uleb128 0x5
	.4byte	0x180
	.uleb128 0x8
	.4byte	.LASF25
	.byte	0x5
	.byte	0x2e
	.byte	0x17
	.4byte	0x190
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
	.4byte	0xb7
	.4byte	0x1e2
	.uleb128 0x7
	.4byte	0xa4
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.4byte	0x1d2
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0x6
	.byte	0x2f
	.byte	0x16
	.4byte	0x1e2
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
	.4byte	.LASF27
	.uleb128 0x9
	.byte	0x20
	.byte	0x7
	.byte	0x32
	.byte	0x9
	.4byte	0x2fb
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x7
	.byte	0x35
	.byte	0xb
	.4byte	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x7
	.byte	0x36
	.byte	0xb
	.4byte	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x7
	.byte	0x38
	.byte	0xb
	.4byte	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0x7
	.byte	0x3a
	.byte	0xb
	.4byte	0xab
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x7
	.byte	0x3b
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x7
	.byte	0x3d
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0x7
	.byte	0x3e
	.byte	0xb
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0x7
	.byte	0x3f
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0x7
	.byte	0x41
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0x7
	.byte	0x44
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0x7
	.byte	0x46
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0x7
	.byte	0x48
	.byte	0xc
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x7
	.byte	0x4a
	.byte	0xc
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0x7
	.byte	0x4c
	.byte	0xc
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0x7
	.byte	0x4f
	.byte	0xc
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0xa
	.4byte	.LASF43
	.byte	0x7
	.byte	0x51
	.byte	0xc
	.4byte	0xe0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0
	.uleb128 0x3
	.4byte	.LASF44
	.byte	0x7
	.byte	0x56
	.byte	0x3
	.4byte	0x201
	.uleb128 0x9
	.byte	0x38
	.byte	0x8
	.byte	0x32
	.byte	0x9
	.4byte	0x3d4
	.uleb128 0xa
	.4byte	.LASF45
	.byte	0x8
	.byte	0x34
	.byte	0x1a
	.4byte	0x2fb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF46
	.byte	0x8
	.byte	0x35
	.byte	0xb
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF47
	.byte	0x8
	.byte	0x39
	.byte	0xb
	.4byte	0xd4
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.4byte	.LASF48
	.byte	0x8
	.byte	0x3b
	.byte	0xc
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.4byte	.LASF49
	.byte	0x8
	.byte	0x3d
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x2a
	.uleb128 0xa
	.4byte	.LASF50
	.byte	0x8
	.byte	0x3f
	.byte	0x8
	.4byte	0x3d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xa
	.4byte	.LASF51
	.byte	0x8
	.byte	0x40
	.byte	0x8
	.4byte	0x3d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2d
	.uleb128 0xa
	.4byte	.LASF52
	.byte	0x8
	.byte	0x41
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x2e
	.uleb128 0xa
	.4byte	.LASF53
	.byte	0x8
	.byte	0x43
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.4byte	.LASF54
	.byte	0x8
	.byte	0x44
	.byte	0x8
	.4byte	0x3d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.uleb128 0xa
	.4byte	.LASF55
	.byte	0x8
	.byte	0x45
	.byte	0x8
	.4byte	0x3d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x33
	.uleb128 0xa
	.4byte	.LASF56
	.byte	0x8
	.byte	0x47
	.byte	0xc
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xa
	.4byte	.LASF57
	.byte	0x8
	.byte	0x4b
	.byte	0xb
	.4byte	0xbc
	.byte	0x2
	.byte	0x23
	.uleb128 0x36
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF58
	.uleb128 0x3
	.4byte	.LASF59
	.byte	0x8
	.byte	0x4f
	.byte	0x3
	.4byte	0x307
	.uleb128 0xb
	.byte	0x1
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x219
	.byte	0xd
	.byte	0x1
	.4byte	.LFB1450
	.4byte	.LFE1450
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x421
	.uleb128 0xc
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x219
	.byte	0x39
	.4byte	0x421
	.byte	0x1
	.byte	0x50
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x219
	.byte	0x4a
	.4byte	0xbc
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x3db
	.uleb128 0xe
	.byte	0x1
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x208
	.byte	0xd
	.byte	0x1
	.4byte	0x3d4
	.4byte	.LFB1449
	.4byte	.LFE1449
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x45c
	.uleb128 0xf
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x208
	.byte	0x3e
	.4byte	0x421
	.4byte	.LLST26
	.4byte	.LVUS26
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x1d2
	.byte	0xd
	.byte	0x1
	.4byte	0x3d4
	.4byte	.LFB1448
	.4byte	.LFE1448
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x4cf
	.uleb128 0xf
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x1d2
	.byte	0x42
	.4byte	0x421
	.4byte	.LLST24
	.4byte	.LVUS24
	.uleb128 0x10
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x1d4
	.byte	0x8
	.4byte	0x3d4
	.byte	0
	.uleb128 0x11
	.ascii	"hTS\000"
	.byte	0x1
	.2byte	0x1dd
	.byte	0xe
	.4byte	0xc8
	.4byte	.LLST25
	.4byte	.LVUS25
	.uleb128 0x12
	.ascii	"hTE\000"
	.byte	0x1
	.2byte	0x1de
	.byte	0xe
	.4byte	0xc8
	.byte	0
	.uleb128 0x13
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x1df
	.byte	0xe
	.4byte	0xc8
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x1a4
	.byte	0xd
	.byte	0x1
	.4byte	0x3d4
	.4byte	.LFB1447
	.4byte	.LFE1447
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x528
	.uleb128 0xf
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x1a4
	.byte	0x41
	.4byte	0x421
	.4byte	.LLST22
	.4byte	.LVUS22
	.uleb128 0xc
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x1a4
	.byte	0x4f
	.4byte	0x3d4
	.byte	0x1
	.byte	0x51
	.uleb128 0x14
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x1a6
	.byte	0x8
	.4byte	0x3d4
	.4byte	.LLST23
	.4byte	.LVUS23
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x18e
	.byte	0x11
	.byte	0x1
	.4byte	0xbc
	.4byte	.LFB1446
	.4byte	.LFE1446
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x55d
	.uleb128 0xf
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x18e
	.byte	0x48
	.4byte	0x421
	.4byte	.LLST21
	.4byte	.LVUS21
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x16d
	.byte	0xd
	.byte	0x1
	.4byte	0x3d4
	.4byte	.LFB1445
	.4byte	.LFE1445
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x5a7
	.uleb128 0xf
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x16d
	.byte	0x3c
	.4byte	0x421
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x16f
	.byte	0x8
	.4byte	0x3d4
	.4byte	.LLST20
	.4byte	.LVUS20
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x120
	.byte	0xe
	.byte	0x1
	.4byte	.LFB1444
	.4byte	.LFE1444
	.4byte	.LLST13
	.byte	0x1
	.4byte	0x64b
	.uleb128 0xc
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x120
	.byte	0x42
	.4byte	0x421
	.byte	0x1
	.byte	0x50
	.uleb128 0xc
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x120
	.byte	0x53
	.4byte	0xbc
	.byte	0x1
	.byte	0x51
	.uleb128 0xf
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x121
	.byte	0x2e
	.4byte	0xc8
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x14
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x12b
	.byte	0xd
	.4byte	0xd4
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0x14
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x12c
	.byte	0xe
	.4byte	0xc8
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0x14
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x12d
	.byte	0xd
	.4byte	0xbc
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0x14
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x12e
	.byte	0xd
	.4byte	0xbc
	.4byte	.LLST18
	.4byte	.LVUS18
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.4byte	.LASF76
	.byte	0x1
	.byte	0xd8
	.byte	0xd
	.byte	0x1
	.4byte	0x3d4
	.4byte	.LFB1443
	.4byte	.LFE1443
	.4byte	.LLST10
	.byte	0x1
	.4byte	0x6b3
	.uleb128 0x17
	.4byte	.LASF60
	.byte	0x1
	.byte	0xd8
	.byte	0x43
	.4byte	0x421
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x17
	.4byte	.LASF77
	.byte	0x1
	.byte	0xd8
	.byte	0x55
	.4byte	0x6b3
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x18
	.4byte	.LASF79
	.byte	0x1
	.byte	0xda
	.byte	0x8
	.4byte	0x3d4
	.uleb128 0x19
	.4byte	.LVL30
	.byte	0x1
	.4byte	0x7cf
	.uleb128 0x19
	.4byte	.LVL31
	.byte	0x1
	.4byte	0x7cf
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0xbc
	.uleb128 0x16
	.byte	0x1
	.4byte	.LASF80
	.byte	0x1
	.byte	0x76
	.byte	0x10
	.byte	0x1
	.4byte	0xbc
	.4byte	.LFB1442
	.4byte	.LFE1442
	.4byte	.LLST2
	.byte	0x1
	.4byte	0x765
	.uleb128 0x17
	.4byte	.LASF60
	.byte	0x1
	.byte	0x76
	.byte	0x3d
	.4byte	0x421
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x17
	.4byte	.LASF81
	.byte	0x1
	.byte	0x76
	.byte	0x4f
	.4byte	0x6b3
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x1a
	.4byte	.LASF82
	.byte	0x1
	.byte	0x78
	.byte	0xb
	.4byte	0xbc
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x1a
	.4byte	.LASF83
	.byte	0x1
	.byte	0x81
	.byte	0xd
	.4byte	0xbc
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x1a
	.4byte	.LASF84
	.byte	0x1
	.byte	0x82
	.byte	0xd
	.4byte	0xd4
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x1a
	.4byte	.LASF85
	.byte	0x1
	.byte	0x83
	.byte	0xd
	.4byte	0xbc
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x1a
	.4byte	.LASF86
	.byte	0x1
	.byte	0x84
	.byte	0xd
	.4byte	0xbc
	.4byte	.LLST9
	.4byte	.LVUS9
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF87
	.byte	0x1
	.byte	0x44
	.byte	0xd
	.byte	0x1
	.4byte	.LFB1441
	.4byte	.LFE1441
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x78e
	.uleb128 0x1c
	.4byte	.LASF60
	.byte	0x1
	.byte	0x44
	.byte	0x34
	.4byte	0x421
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF88
	.byte	0x1
	.byte	0x39
	.byte	0xd
	.byte	0x1
	.4byte	.LFB1440
	.4byte	.LFE1440
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x7cf
	.uleb128 0x17
	.4byte	.LASF60
	.byte	0x1
	.byte	0x39
	.byte	0x33
	.4byte	0x421
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x1e
	.4byte	.LVL2
	.4byte	0x765
	.uleb128 0x1f
	.byte	0x1
	.byte	0x50
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.byte	0x1
	.4byte	.LASF92
	.4byte	.LASF92
	.byte	0x7
	.byte	0x69
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
	.uleb128 0xc
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
	.uleb128 0x6
	.uleb128 0x2137
	.uleb128 0x6
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1e
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x20
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
.LVUS26:
	.uleb128 0
	.uleb128 .LVU319
	.uleb128 .LVU319
	.uleb128 0
.LLST26:
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL57
	.4byte	.LFE1449
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS24:
	.uleb128 0
	.uleb128 .LVU307
	.uleb128 .LVU307
	.uleb128 0
.LLST24:
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL54
	.4byte	.LFE1448
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS25:
	.uleb128 .LVU302
	.uleb128 .LVU312
	.uleb128 .LVU312
	.uleb128 0
.LLST25:
	.4byte	.LVL53
	.4byte	.LVL55
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LFE1448
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS22:
	.uleb128 0
	.uleb128 .LVU294
	.uleb128 .LVU294
	.uleb128 .LVU297
	.uleb128 .LVU297
	.uleb128 .LVU298
	.uleb128 .LVU298
	.uleb128 0
.LLST22:
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL52
	.4byte	.LFE1447
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS23:
	.uleb128 .LVU281
	.uleb128 .LVU293
	.uleb128 .LVU293
	.uleb128 .LVU294
	.uleb128 .LVU294
	.uleb128 .LVU297
	.uleb128 .LVU297
	.uleb128 0
.LLST23:
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL51
	.4byte	.LFE1447
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS21:
	.uleb128 0
	.uleb128 .LVU278
	.uleb128 .LVU278
	.uleb128 0
.LLST21:
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL47
	.4byte	.LFE1446
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS19:
	.uleb128 0
	.uleb128 .LVU273
	.uleb128 .LVU273
	.uleb128 0
.LLST19:
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL44
	.4byte	.LFE1445
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS20:
	.uleb128 .LVU269
	.uleb128 .LVU270
	.uleb128 .LVU270
	.uleb128 .LVU273
	.uleb128 .LVU273
	.uleb128 .LVU274
	.uleb128 .LVU274
	.uleb128 0
.LLST20:
	.4byte	.LVL43
	.4byte	.LVL43
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x7
	.byte	0x70
	.sleb128 40
	.byte	0x94
	.byte	0x2
	.byte	0x30
	.byte	0x29
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x7
	.byte	0x70
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x30
	.byte	0x29
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LFE1445
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x23
	.uleb128 0x28
	.byte	0x94
	.byte	0x2
	.byte	0x30
	.byte	0x29
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LFB1444
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
	.4byte	.LCFI8
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI8
	.4byte	.LFE1444
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LVUS14:
	.uleb128 0
	.uleb128 .LVU229
	.uleb128 .LVU229
	.uleb128 0
.LLST14:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL33
	.4byte	.LFE1444
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS15:
	.uleb128 .LVU250
	.uleb128 .LVU253
	.uleb128 .LVU253
	.uleb128 .LVU260
	.uleb128 .LVU260
	.uleb128 0
.LLST15:
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x23
	.byte	0x71
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x70
	.sleb128 28
	.byte	0x6
	.byte	0x1e
	.byte	0x72
	.sleb128 0
	.byte	0x3a
	.byte	0x1e
	.byte	0x1b
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x7c
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1b
	.byte	0x1c
	.byte	0x40
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x1b
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x29
	.byte	0x71
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x70
	.sleb128 28
	.byte	0x6
	.byte	0x1e
	.byte	0x70
	.sleb128 26
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x3a
	.byte	0x1e
	.byte	0x1b
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x7c
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1b
	.byte	0x1c
	.byte	0x40
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x1b
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LFE1444
	.2byte	0x2b
	.byte	0x71
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x70
	.sleb128 28
	.byte	0x6
	.byte	0x1e
	.byte	0x70
	.sleb128 26
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x3a
	.byte	0x1e
	.byte	0x1b
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x7c
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1b
	.byte	0x1c
	.byte	0x40
	.byte	0x24
	.byte	0x70
	.sleb128 40
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x1b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS16:
	.uleb128 .LVU231
	.uleb128 .LVU233
	.uleb128 .LVU233
	.uleb128 .LVU234
	.uleb128 .LVU234
	.uleb128 .LVU242
	.uleb128 .LVU242
	.uleb128 .LVU247
	.uleb128 .LVU247
	.uleb128 .LVU260
	.uleb128 .LVU260
	.uleb128 0
.LLST16:
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x2
	.byte	0x70
	.sleb128 40
	.4byte	.LVL39
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL42
	.4byte	.LFE1444
	.2byte	0x2
	.byte	0x70
	.sleb128 40
	.4byte	0
	.4byte	0
.LVUS17:
	.uleb128 .LVU237
	.uleb128 0
.LLST17:
	.4byte	.LVL37
	.4byte	.LFE1444
	.2byte	0xb
	.byte	0x7c
	.sleb128 0
	.byte	0x70
	.sleb128 1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x1b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS18:
	.uleb128 .LVU238
	.uleb128 0
.LLST18:
	.4byte	.LVL37
	.4byte	.LFE1444
	.2byte	0x16
	.byte	0x71
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x70
	.sleb128 28
	.byte	0x6
	.byte	0x1e
	.byte	0x70
	.sleb128 26
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x3a
	.byte	0x1e
	.byte	0x1b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LFB1443
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
	.4byte	.LFE1443
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 0
	.uleb128 .LVU156
	.uleb128 .LVU156
	.uleb128 .LVU157
	.uleb128 .LVU157
	.uleb128 .LVU170
	.uleb128 .LVU170
	.uleb128 .LVU171
	.uleb128 .LVU171
	.uleb128 .LVU174
	.uleb128 .LVU174
	.uleb128 .LVU174
	.uleb128 .LVU174
	.uleb128 .LVU195
	.uleb128 .LVU195
	.uleb128 0
.LLST11:
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
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL30-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL30-1
	.4byte	.LVL30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL31-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL31-1
	.4byte	.LFE1443
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS12:
	.uleb128 0
	.uleb128 .LVU174
	.uleb128 .LVU174
	.uleb128 .LVU174
	.uleb128 .LVU174
	.uleb128 .LVU195
	.uleb128 .LVU195
	.uleb128 0
.LLST12:
	.4byte	.LVL23
	.4byte	.LVL30-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL30-1
	.4byte	.LVL30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL31-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL31-1
	.4byte	.LFE1443
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LFB1442
	.4byte	.LCFI1
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI1
	.4byte	.LFE1442
	.2byte	0x2
	.byte	0x7d
	.sleb128 12
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU47
	.uleb128 .LVU47
	.uleb128 .LVU48
	.uleb128 .LVU48
	.uleb128 .LVU96
	.uleb128 .LVU96
	.uleb128 .LVU97
	.uleb128 .LVU97
	.uleb128 .LVU107
	.uleb128 .LVU107
	.uleb128 .LVU108
	.uleb128 .LVU108
	.uleb128 0
.LLST3:
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL6
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
	.4byte	.LFE1442
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 0
	.uleb128 .LVU71
	.uleb128 .LVU71
	.uleb128 .LVU97
	.uleb128 .LVU97
	.uleb128 .LVU108
	.uleb128 .LVU108
	.uleb128 0
.LLST4:
	.4byte	.LVL3
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL7
	.4byte	.LVL15
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL18
	.4byte	.LFE1442
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 .LVU43
	.uleb128 .LVU48
	.uleb128 .LVU92
	.uleb128 .LVU97
	.uleb128 .LVU99
	.uleb128 .LVU108
	.uleb128 .LVU113
	.uleb128 .LVU114
.LLST5:
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 .LVU75
	.uleb128 .LVU92
	.uleb128 .LVU108
	.uleb128 .LVU114
	.uleb128 .LVU117
	.uleb128 0
.LLST6:
	.4byte	.LVL8
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL18
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL22
	.4byte	.LFE1442
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 .LVU77
	.uleb128 .LVU81
	.uleb128 .LVU81
	.uleb128 .LVU92
	.uleb128 .LVU108
	.uleb128 .LVU114
.LLST7:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0xe
	.byte	0x7e
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x72
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1e
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL13
	.2byte	0x10
	.byte	0x7e
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x70
	.sleb128 46
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1e
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL21
	.2byte	0x10
	.byte	0x7e
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x70
	.sleb128 46
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 .LVU78
	.uleb128 .LVU81
	.uleb128 .LVU81
	.uleb128 .LVU84
	.uleb128 .LVU84
	.uleb128 .LVU89
	.uleb128 .LVU108
	.uleb128 .LVU112
.LLST8:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x17
	.byte	0x7e
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x72
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1e
	.byte	0x70
	.sleb128 54
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1b
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x19
	.byte	0x7e
	.sleb128 0
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x70
	.sleb128 46
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1e
	.byte	0x70
	.sleb128 54
	.byte	0x94
	.byte	0x2
	.byte	0x40
	.byte	0x24
	.byte	0x40
	.byte	0x26
	.byte	0x1b
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 .LVU39
	.uleb128 .LVU76
	.uleb128 .LVU97
	.uleb128 .LVU108
	.uleb128 .LVU114
	.uleb128 .LVU118
	.uleb128 .LVU118
	.uleb128 0
.LLST9:
	.4byte	.LVL3
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL18
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LFE1442
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LFB1440
	.4byte	.LCFI0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI0
	.4byte	.LFE1440
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU32
	.uleb128 .LVU32
	.uleb128 0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL2-1
	.4byte	.LFE1440
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x6c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB1441
	.4byte	.LFE1441-.LFB1441
	.4byte	.LFB1440
	.4byte	.LFE1440-.LFB1440
	.4byte	.LFB1442
	.4byte	.LFE1442-.LFB1442
	.4byte	.LFB1443
	.4byte	.LFE1443-.LFB1443
	.4byte	.LFB1444
	.4byte	.LFE1444-.LFB1444
	.4byte	.LFB1445
	.4byte	.LFE1445-.LFB1445
	.4byte	.LFB1446
	.4byte	.LFE1446-.LFB1446
	.4byte	.LFB1447
	.4byte	.LFE1447-.LFB1447
	.4byte	.LFB1448
	.4byte	.LFE1448-.LFB1448
	.4byte	.LFB1449
	.4byte	.LFE1449-.LFB1449
	.4byte	.LFB1450
	.4byte	.LFE1450-.LFB1450
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB1441
	.4byte	.LFE1441
	.4byte	.LFB1440
	.4byte	.LFE1440
	.4byte	.LFB1442
	.4byte	.LFE1442
	.4byte	.LFB1443
	.4byte	.LFE1443
	.4byte	.LFB1444
	.4byte	.LFE1444
	.4byte	.LFB1445
	.4byte	.LFE1445
	.4byte	.LFB1446
	.4byte	.LFE1446
	.4byte	.LFB1447
	.4byte	.LFE1447
	.4byte	.LFB1448
	.4byte	.LFE1448
	.4byte	.LFB1449
	.4byte	.LFE1449
	.4byte	.LFB1450
	.4byte	.LFE1450
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF57:
	.ascii	"hTransitionSteps\000"
.LASF33:
	.ascii	"hMecAngle\000"
.LASF30:
	.ascii	"SpeedUnit\000"
.LASF23:
	.ascii	"SHIFT_TAB_CCxP\000"
.LASF92:
	.ascii	"SPD_IsMecSpeedReliable\000"
.LASF36:
	.ascii	"hElSpeedDpp\000"
.LASF85:
	.ascii	"hAngleCorr\000"
.LASF48:
	.ascii	"hRemainingStep\000"
.LASF82:
	.ascii	"hRetAngle\000"
.LASF28:
	.ascii	"bSpeedErrorNumber\000"
.LASF51:
	.ascii	"bTransitionEnded\000"
.LASF47:
	.ascii	"wElSpeedDpp32\000"
.LASF5:
	.ascii	"__uint16_t\000"
.LASF41:
	.ascii	"hMaxReliableMecAccelUnitP\000"
.LASF84:
	.ascii	"wAux\000"
.LASF14:
	.ascii	"uint8_t\000"
.LASF37:
	.ascii	"InstantaneousElSpeedDpp\000"
.LASF66:
	.ascii	"bAux\000"
.LASF87:
	.ascii	"VSS_Clear\000"
.LASF89:
	.ascii	"GNU C17 10.2.1 20201103 (release) -mcpu=cortex-m4 -"
	.ascii	"mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=hard -march=ar"
	.ascii	"mv7e-m+fp -g -gdwarf-2 -O3 -fdata-sections -ffuncti"
	.ascii	"on-sections\000"
.LASF40:
	.ascii	"hMinReliableMecSpeedUnit\000"
.LASF65:
	.ascii	"bCommand\000"
.LASF42:
	.ascii	"hMeasurementFrequency\000"
.LASF4:
	.ascii	"short int\000"
.LASF27:
	.ascii	"float\000"
.LASF59:
	.ascii	"VirtualSpeedSensor_Handle_t\000"
.LASF11:
	.ascii	"long long int\000"
.LASF50:
	.ascii	"bTransitionStarted\000"
.LASF81:
	.ascii	"pInputVars_str\000"
.LASF21:
	.ascii	"SHIFT_TAB_OCxx\000"
.LASF67:
	.ascii	"VSS_GetLastRampFinalSpeed\000"
.LASF35:
	.ascii	"hAvrMecSpeedUnit\000"
.LASF8:
	.ascii	"long int\000"
.LASF2:
	.ascii	"__uint8_t\000"
.LASF56:
	.ascii	"hSpeedSamplingFreqHz\000"
.LASF44:
	.ascii	"SpeednPosFdbk_Handle_t\000"
.LASF79:
	.ascii	"SpeedSensorReliability\000"
.LASF55:
	.ascii	"bCopyObserver\000"
.LASF19:
	.ascii	"long double\000"
.LASF77:
	.ascii	"hMecSpeedUnit\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF62:
	.ascii	"VSS_IsTransitionOngoing\000"
.LASF31:
	.ascii	"bMaximumSpeedErrorsNumber\000"
.LASF46:
	.ascii	"wElAccDppP32\000"
.LASF0:
	.ascii	"signed char\000"
.LASF12:
	.ascii	"long long unsigned int\000"
.LASF69:
	.ascii	"VSS_SetElAngle\000"
.LASF18:
	.ascii	"uint32_t\000"
.LASF13:
	.ascii	"unsigned int\000"
.LASF45:
	.ascii	"_Super\000"
.LASF16:
	.ascii	"uint16_t\000"
.LASF34:
	.ascii	"wMecAngle\000"
.LASF38:
	.ascii	"hMecAccelUnitP\000"
.LASF61:
	.ascii	"VSS_TransitionEnded\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF86:
	.ascii	"hSignCorr\000"
.LASF76:
	.ascii	"VSS_CalcAvrgMecSpeedUnit\000"
.LASF74:
	.ascii	"hCurrentMecSpeedDpp\000"
.LASF17:
	.ascii	"int32_t\000"
.LASF7:
	.ascii	"__int32_t\000"
.LASF26:
	.ascii	"CHANNEL_OFFSET_TAB\000"
.LASF22:
	.ascii	"SHIFT_TAB_ICxx\000"
.LASF58:
	.ascii	"_Bool\000"
.LASF88:
	.ascii	"VSS_Init\000"
.LASF90:
	.ascii	"MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Src/"
	.ascii	"virtual_speed_sensor.c\000"
.LASF80:
	.ascii	"VSS_CalcElAngle\000"
.LASF32:
	.ascii	"hElAngle\000"
.LASF10:
	.ascii	"long unsigned int\000"
.LASF91:
	.ascii	"/home/joel/share/EVSPIN32G4_Shinano\000"
.LASF70:
	.ascii	"VSS_SetMecAcceleration\000"
.LASF52:
	.ascii	"hTransitionRemainingSteps\000"
.LASF24:
	.ascii	"SHIFT_TAB_OISx\000"
.LASF53:
	.ascii	"hElAngleAccu\000"
.LASF68:
	.ascii	"VSS_RampCompleted\000"
.LASF9:
	.ascii	"__uint32_t\000"
.LASF78:
	.ascii	"hAux\000"
.LASF54:
	.ascii	"bTransitionLocked\000"
.LASF83:
	.ascii	"hAngleDiff\000"
.LASF3:
	.ascii	"__int16_t\000"
.LASF63:
	.ascii	"retVal\000"
.LASF15:
	.ascii	"int16_t\000"
.LASF73:
	.ascii	"hNbrStep\000"
.LASF75:
	.ascii	"hFinalMecSpeedDpp\000"
.LASF71:
	.ascii	"hDurationms\000"
.LASF43:
	.ascii	"DPPConvFactor\000"
.LASF64:
	.ascii	"VSS_SetStartTransition\000"
.LASF49:
	.ascii	"hFinalMecSpeedUnit\000"
.LASF60:
	.ascii	"pHandle\000"
.LASF25:
	.ascii	"USART_PRESCALER_TAB\000"
.LASF29:
	.ascii	"bElToMecRatio\000"
.LASF20:
	.ascii	"OFFSET_TAB_CCMRx\000"
.LASF39:
	.ascii	"hMaxReliableMecSpeedUnit\000"
.LASF72:
	.ascii	"wMecAccDppP32\000"
	.ident	"GCC: (GNU Arm Embedded Toolchain 10-2020-q4-major) 10.2.1 20201103 (release)"
