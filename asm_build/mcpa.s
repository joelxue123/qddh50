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
	.file	"mcpa.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.MCPA_dataLog,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	MCPA_dataLog
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	MCPA_dataLog, %function
MCPA_dataLog:
.LVL0:
.LFB1548:
	.file 1 "MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Src/mcpa.c"
	.loc 1 45 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 54 5 view .LVU1
	.loc 1 55 5 view .LVU2
	.loc 1 56 5 view .LVU3
	.loc 1 58 5 view .LVU4
	.loc 1 45 1 is_stmt 0 view .LVU5
	push	{r3, r4, r5, r6, r7, lr}
.LCFI0:
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	.loc 1 58 16 view .LVU6
	ldrb	r3, [r0, #31]	@ zero_extendqisi2
	.loc 1 58 8 view .LVU7
	ldrb	r2, [r0, #34]	@ zero_extendqisi2
	cmp	r2, r3
	.loc 1 45 1 view .LVU8
	mov	r4, r0
	.loc 1 58 8 view .LVU9
	beq	.L38
	.loc 1 203 7 is_stmt 1 view .LVU10
	.loc 1 203 23 is_stmt 0 view .LVU11
	adds	r3, r3, #1
	strb	r3, [r0, #31]
.LVL1:
.L1:
	.loc 1 208 1 view .LVU12
	pop	{r3, r4, r5, r6, r7, pc}
.LVL2:
.L38:
	.loc 1 60 7 is_stmt 1 view .LVU13
	.loc 1 61 24 is_stmt 0 view .LVU14
	ldrh	r5, [r0, #24]
	.loc 1 60 24 view .LVU15
	movs	r3, #0
	strb	r3, [r0, #31]
	.loc 1 61 7 is_stmt 1 view .LVU16
	.loc 1 61 10 is_stmt 0 view .LVU17
	cbz	r5, .L31
.LVL3:
.L34:
	.loc 1 61 10 view .LVU18
	ldr	r1, [r4, #20]
.L5:
	.loc 1 108 75 discriminator 1 view .LVU19
	ldrh	r2, [r4, #28]
	.loc 1 108 40 discriminator 1 view .LVU20
	cmp	r2, r5
	bcs	.L32
	ldrb	r3, [r4, #38]	@ zero_extendqisi2
.L7:
	.loc 1 174 9 is_stmt 1 view .LVU21
	.loc 1 174 12 is_stmt 0 view .LVU22
	cmp	r3, #254
	beq	.L39
.L18:
	.loc 1 186 9 is_stmt 1 view .LVU23
	.loc 1 188 9 view .LVU24
.LVL4:
	.loc 1 189 9 view .LVU25
	.loc 1 189 30 is_stmt 0 view .LVU26
	ldrb	r3, [r4, #42]	@ zero_extendqisi2
	strh	r3, [r1, r5]	@ movhi
	.loc 1 191 9 is_stmt 1 view .LVU27
	ldrh	r2, [r4, #24]
	.loc 1 191 16 is_stmt 0 view .LVU28
	ldr	r0, [r4]
	.loc 1 191 9 view .LVU29
	adds	r2, r2, #2
	movs	r3, #9
	ldr	r5, [r0, #4]
.LVL5:
	.loc 1 191 9 view .LVU30
	uxth	r2, r2
	blx	r5
.LVL6:
	.loc 1 193 9 is_stmt 1 view .LVU31
	.loc 1 193 30 is_stmt 0 view .LVU32
	movs	r3, #0
	strh	r3, [r4, #24]	@ movhi
	.loc 1 208 1 view .LVU33
	pop	{r3, r4, r5, r6, r7, pc}
.LVL7:
.L31:
	.loc 1 64 9 is_stmt 1 view .LVU34
	.loc 1 64 26 is_stmt 0 view .LVU35
	mov	r1, r0
	.loc 1 64 19 view .LVU36
	movs	r2, #9
	.loc 1 64 26 view .LVU37
	ldr	r0, [r1], #20
.LVL8:
	.loc 1 64 19 view .LVU38
	ldr	r3, [r0]
	blx	r3
.LVL9:
	.loc 1 64 12 view .LVU39
	cbz	r0, .L4
	.loc 1 75 11 is_stmt 1 view .LVU40
.LVL10:
	.loc 1 76 11 view .LVU41
	.loc 1 76 21 is_stmt 0 view .LVU42
	ldr	r3, .L42
	ldr	r1, [r4, #20]
	ldr	r3, [r3]
	str	r3, [r1]
	.loc 1 77 11 is_stmt 1 view .LVU43
	.loc 1 80 22 is_stmt 0 view .LVU44
	ldrb	r2, [r4, #41]	@ zero_extendqisi2
	.loc 1 80 14 view .LVU45
	ldrb	r0, [r4, #42]	@ zero_extendqisi2
	.loc 1 78 28 view .LVU46
	strb	r5, [r4, #32]
	.loc 1 77 32 view .LVU47
	movs	r3, #4
	.loc 1 80 14 view .LVU48
	cmp	r0, r2
	.loc 1 77 32 view .LVU49
	strh	r3, [r4, #24]	@ movhi
	.loc 1 78 11 is_stmt 1 view .LVU50
	.loc 1 80 11 view .LVU51
	.loc 1 80 14 is_stmt 0 view .LVU52
	bne	.L40
	mov	r5, r3
	.loc 1 105 7 is_stmt 1 view .LVU53
	.loc 1 108 7 view .LVU54
	b	.L5
.L40:
	.loc 1 86 13 view .LVU55
	.loc 1 87 51 is_stmt 0 view .LVU56
	ldrb	r3, [r4, #35]	@ zero_extendqisi2
	.loc 1 88 51 view .LVU57
	ldrb	r1, [r4, #39]	@ zero_extendqisi2
	.loc 1 89 42 view .LVU58
	ldrb	r0, [r4, #33]	@ zero_extendqisi2
	.loc 1 86 42 view .LVU59
	strb	r2, [r4, #42]
	.loc 1 87 13 is_stmt 1 view .LVU60
	.loc 1 87 42 is_stmt 0 view .LVU61
	strb	r3, [r4, #36]
	.loc 1 88 13 is_stmt 1 view .LVU62
	.loc 1 95 52 is_stmt 0 view .LVU63
	adds	r2, r3, r1
	.loc 1 88 42 view .LVU64
	strb	r1, [r4, #40]
	.loc 1 89 13 is_stmt 1 view .LVU65
	.loc 1 91 42 is_stmt 0 view .LVU66
	ldrh	r3, [r4, #26]
	.loc 1 90 42 view .LVU67
	ldrb	r1, [r4, #37]	@ zero_extendqisi2
	.loc 1 89 42 view .LVU68
	strb	r0, [r4, #34]
	.loc 1 90 13 is_stmt 1 view .LVU69
	.loc 1 94 19 is_stmt 0 view .LVU70
	lsls	r2, r2, #2
	.loc 1 90 42 view .LVU71
	strb	r1, [r4, #38]
	.loc 1 91 13 is_stmt 1 view .LVU72
	.loc 1 91 42 is_stmt 0 view .LVU73
	strh	r3, [r4, #28]	@ movhi
	.loc 1 94 13 is_stmt 1 view .LVU74
	.loc 1 94 19 is_stmt 0 view .LVU75
	ldrd	r1, r0, [r4, #4]
	bl	memcpy
.LVL11:
	.loc 1 97 13 is_stmt 1 view .LVU76
	.loc 1 98 26 is_stmt 0 view .LVU77
	ldrb	r2, [r4, #35]	@ zero_extendqisi2
	.loc 1 98 53 view .LVU78
	ldrb	r3, [r4, #39]	@ zero_extendqisi2
	.loc 1 97 19 view .LVU79
	ldrd	r1, r0, [r4, #12]
	add	r2, r2, r3
	bl	memcpy
.LVL12:
.L4:
	.loc 1 105 7 is_stmt 1 view .LVU80
	.loc 1 108 7 view .LVU81
	.loc 1 108 19 is_stmt 0 view .LVU82
	ldrh	r5, [r4, #24]
	.loc 1 108 10 view .LVU83
	cmp	r5, #0
	bne	.L34
	.loc 1 208 1 view .LVU84
	pop	{r3, r4, r5, r6, r7, pc}
.LVL13:
.L32:
	.loc 1 110 9 is_stmt 1 view .LVU85
	.loc 1 111 33 is_stmt 0 view .LVU86
	ldrb	r6, [r4, #36]	@ zero_extendqisi2
	.loc 1 110 20 view .LVU87
	adds	r3, r1, r5
.LVL14:
	.loc 1 111 9 is_stmt 1 view .LVU88
	.loc 1 111 22 view .LVU89
	.loc 1 111 9 is_stmt 0 view .LVU90
	cbz	r6, .L8
	ldr	r2, [r4, #8]
	add	ip, r3, r6, lsl #1
	subs	r2, r2, #4
.LVL15:
.L9:
	.loc 1 113 11 is_stmt 1 discriminator 3 view .LVU91
	.loc 1 113 25 is_stmt 0 discriminator 3 view .LVU92
	ldr	r0, [r2, #4]!
.LVL16:
	.loc 1 113 25 discriminator 3 view .LVU93
	ldrh	r0, [r0]
	.loc 1 113 23 discriminator 3 view .LVU94
	strh	r0, [r3], #2	@ movhi
.LVL17:
	.loc 1 114 11 is_stmt 1 discriminator 3 view .LVU95
	.loc 1 115 11 discriminator 3 view .LVU96
	.loc 1 115 55 is_stmt 0 discriminator 3 view .LVU97
	ldrh	r5, [r4, #24]
	adds	r5, r5, #2
	uxth	r5, r5
	.loc 1 111 9 discriminator 3 view .LVU98
	cmp	r3, ip
	.loc 1 115 32 discriminator 3 view .LVU99
	strh	r5, [r4, #24]	@ movhi
	.loc 1 111 46 is_stmt 1 discriminator 3 view .LVU100
.LVL18:
	.loc 1 111 22 discriminator 3 view .LVU101
	.loc 1 111 9 is_stmt 0 discriminator 3 view .LVU102
	bne	.L9
	.loc 1 119 20 view .LVU103
	ldrb	r3, [r4, #38]	@ zero_extendqisi2
.LVL19:
	.loc 1 172 41 view .LVU104
	ldrh	r2, [r4, #28]
.LVL20:
	.loc 1 119 9 is_stmt 1 view .LVU105
	.loc 1 119 12 is_stmt 0 view .LVU106
	cmp	r3, #253
	.loc 1 119 20 view .LVU107
	mov	r0, r3
	.loc 1 119 12 view .LVU108
	bls	.L20
	.loc 1 171 7 is_stmt 1 view .LVU109
	.loc 1 172 7 view .LVU110
	.loc 1 172 10 is_stmt 0 view .LVU111
	cmp	r5, r2
	bhi	.L7
	.loc 1 208 1 view .LVU112
	pop	{r3, r4, r5, r6, r7, pc}
.LVL21:
.L39:
	.loc 1 176 11 is_stmt 1 view .LVU113
	.loc 1 176 18 is_stmt 0 view .LVU114
	ldrb	r3, [r4, #36]	@ zero_extendqisi2
.LVL22:
	.loc 1 176 40 is_stmt 1 view .LVU115
	.loc 1 176 52 is_stmt 0 view .LVU116
	ldrb	r0, [r4, #40]	@ zero_extendqisi2
	.loc 1 176 64 view .LVU117
	add	r0, r0, r3
	.loc 1 176 11 view .LVU118
	cmp	r0, r3
	ble	.L18
	.loc 1 179 46 view .LVU119
	ldr	r7, [r4, #8]
	.loc 1 180 66 view .LVU120
	ldr	r6, [r4, #16]
.L19:
	.loc 1 178 13 is_stmt 1 discriminator 3 view .LVU121
.LVL23:
	.loc 1 179 13 discriminator 3 view .LVU122
	.loc 1 179 25 is_stmt 0 discriminator 3 view .LVU123
	ldr	r2, [r7, r3, lsl #2]
	ldr	r2, [r2]
	.loc 1 179 23 discriminator 3 view .LVU124
	str	r2, [r1, r5]
	.loc 1 180 13 is_stmt 1 discriminator 3 view .LVU125
	.loc 1 176 88 is_stmt 0 discriminator 3 view .LVU126
	adds	r2, r3, #1
	.loc 1 180 85 discriminator 3 view .LVU127
	ldrb	r3, [r6, r3]	@ zero_extendqisi2
.LVL24:
	.loc 1 180 57 discriminator 3 view .LVU128
	add	r5, r5, r3
.LVL25:
	.loc 1 176 88 discriminator 3 view .LVU129
	uxtb	r3, r2
	.loc 1 180 57 discriminator 3 view .LVU130
	uxth	r5, r5
	.loc 1 176 11 discriminator 3 view .LVU131
	cmp	r3, r0
	.loc 1 180 34 discriminator 3 view .LVU132
	strh	r5, [r4, #24]	@ movhi
	.loc 1 176 87 is_stmt 1 discriminator 3 view .LVU133
.LVL26:
	.loc 1 176 40 discriminator 3 view .LVU134
	.loc 1 176 11 is_stmt 0 discriminator 3 view .LVU135
	blt	.L19
	b	.L18
.LVL27:
.L8:
	.loc 1 119 9 is_stmt 1 view .LVU136
	.loc 1 119 20 is_stmt 0 view .LVU137
	ldrb	r0, [r4, #38]	@ zero_extendqisi2
	.loc 1 119 12 view .LVU138
	cmp	r0, #253
	bhi	.L1
.LVL28:
.L20:
	.loc 1 121 11 is_stmt 1 view .LVU139
	.loc 1 121 22 is_stmt 0 view .LVU140
	ldrb	r3, [r4, #32]	@ zero_extendqisi2
	.loc 1 121 14 view .LVU141
	cmp	r3, r0
	beq	.L41
	.loc 1 160 13 is_stmt 1 view .LVU142
	.loc 1 160 30 is_stmt 0 view .LVU143
	adds	r3, r3, #1
	.loc 1 172 18 view .LVU144
	ldrh	r5, [r4, #24]
	.loc 1 160 30 view .LVU145
	strb	r3, [r4, #32]
.L14:
	.loc 1 171 7 is_stmt 1 view .LVU146
	.loc 1 172 7 view .LVU147
	.loc 1 172 10 is_stmt 0 view .LVU148
	cmp	r2, r5
	bcc	.L18
	.loc 1 208 1 view .LVU149
	pop	{r3, r4, r5, r6, r7, pc}
.LVL29:
.L41:
	.loc 1 123 13 is_stmt 1 view .LVU150
	.loc 1 124 54 is_stmt 0 view .LVU151
	ldrb	r7, [r4, #40]	@ zero_extendqisi2
	.loc 1 124 66 view .LVU152
	add	r7, r7, r6
	.loc 1 123 30 view .LVU153
	movs	r3, #0
	.loc 1 124 13 view .LVU154
	cmp	r7, r6
	.loc 1 123 30 view .LVU155
	strb	r3, [r4, #32]
	.loc 1 124 13 is_stmt 1 view .LVU156
.LVL30:
	.loc 1 124 42 view .LVU157
	.loc 1 124 13 is_stmt 0 view .LVU158
	ble	.L12
	.loc 1 128 48 view .LVU159
	ldr	lr, [r4, #8]
	.loc 1 155 66 view .LVU160
	ldr	ip, [r4, #16]
	.loc 1 127 69 view .LVU161
	ldrh	r5, [r4, #24]
.L13:
	.loc 1 127 15 is_stmt 1 discriminator 3 view .LVU162
.LVL31:
	.loc 1 128 15 discriminator 3 view .LVU163
	.loc 1 128 27 is_stmt 0 discriminator 3 view .LVU164
	ldr	r3, [lr, r6, lsl #2]
	ldr	r3, [r3]
	.loc 1 128 25 discriminator 3 view .LVU165
	str	r3, [r1, r5]
	.loc 1 155 15 is_stmt 1 discriminator 3 view .LVU166
	.loc 1 155 85 is_stmt 0 discriminator 3 view .LVU167
	ldrb	r3, [ip, r6]	@ zero_extendqisi2
	.loc 1 124 90 discriminator 3 view .LVU168
	adds	r0, r6, #1
	.loc 1 155 58 discriminator 3 view .LVU169
	add	r5, r5, r3
.LVL32:
	.loc 1 124 90 discriminator 3 view .LVU170
	uxtb	r6, r0
.LVL33:
	.loc 1 155 58 discriminator 3 view .LVU171
	uxth	r5, r5
	.loc 1 124 13 discriminator 3 view .LVU172
	cmp	r6, r7
	.loc 1 155 36 discriminator 3 view .LVU173
	strh	r5, [r4, #24]	@ movhi
	.loc 1 124 89 is_stmt 1 discriminator 3 view .LVU174
.LVL34:
	.loc 1 124 42 discriminator 3 view .LVU175
	.loc 1 124 13 is_stmt 0 discriminator 3 view .LVU176
	blt	.L13
	b	.L14
.L12:
	.loc 1 172 18 view .LVU177
	ldrh	r5, [r4, #24]
	b	.L14
.L43:
	.align	2
.L42:
	.word	.LANCHOR0
	.cfi_endproc
.LFE1548:
	.size	MCPA_dataLog, .-MCPA_dataLog
	.section	.text.MCPA_flushDataLog,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	MCPA_flushDataLog
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	MCPA_flushDataLog, %function
MCPA_flushDataLog:
.LVL35:
.LFB1549:
	.loc 1 216 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 225 5 view .LVU179
	.loc 1 226 5 view .LVU180
	.loc 1 227 5 view .LVU181
	.loc 1 229 5 view .LVU182
	.loc 1 229 16 is_stmt 0 view .LVU183
	ldrh	r3, [r0, #24]
	.loc 1 229 8 view .LVU184
	cbz	r3, .L55
	.loc 1 216 1 view .LVU185
	push	{r4, r5, r6, lr}
.LCFI1:
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 231 10 view .LVU186
	ldrb	r2, [r0, #38]	@ zero_extendqisi2
	cmp	r2, #254
	mov	r4, r0
	.loc 1 231 7 is_stmt 1 view .LVU187
	.loc 1 231 10 is_stmt 0 view .LVU188
	beq	.L58
	.loc 1 236 41 view .LVU189
	ldr	r1, [r0, #20]
.LVL36:
.L48:
	.loc 1 244 7 is_stmt 1 view .LVU190
	.loc 1 245 7 view .LVU191
	.loc 1 246 7 view .LVU192
	.loc 1 246 28 is_stmt 0 view .LVU193
	ldrb	r2, [r4, #42]	@ zero_extendqisi2
	strh	r2, [r1, r3]	@ movhi
	.loc 1 248 7 is_stmt 1 view .LVU194
	ldrh	r2, [r4, #24]
	.loc 1 248 14 is_stmt 0 view .LVU195
	ldr	r0, [r4]
	.loc 1 248 7 view .LVU196
	adds	r2, r2, #2
	movs	r3, #9
.LVL37:
	.loc 1 248 7 view .LVU197
	ldr	r5, [r0, #4]
	uxth	r2, r2
	blx	r5
.LVL38:
	.loc 1 250 7 is_stmt 1 view .LVU198
	.loc 1 250 28 is_stmt 0 view .LVU199
	movs	r3, #0
	strh	r3, [r4, #24]	@ movhi
	.loc 1 255 5 is_stmt 1 view .LVU200
	.loc 1 259 1 is_stmt 0 view .LVU201
	pop	{r4, r5, r6, pc}
.LVL39:
.L55:
.LCFI2:
	.cfi_def_cfa_offset 0
	.cfi_restore 4
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 14
	.loc 1 259 1 view .LVU202
	bx	lr
.L58:
.LCFI3:
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 234 9 is_stmt 1 view .LVU203
	.loc 1 234 16 is_stmt 0 view .LVU204
	ldrb	r2, [r0, #36]	@ zero_extendqisi2
.LVL40:
	.loc 1 234 38 is_stmt 1 view .LVU205
	.loc 1 234 50 is_stmt 0 view .LVU206
	ldrb	ip, [r0, #40]	@ zero_extendqisi2
	.loc 1 236 41 view .LVU207
	ldr	r1, [r0, #20]
	.loc 1 234 62 view .LVU208
	add	ip, ip, r2
	.loc 1 234 9 view .LVU209
	cmp	r2, ip
	bge	.L48
	.loc 1 237 43 view .LVU210
	ldr	r6, [r0, #8]
	.loc 1 238 61 view .LVU211
	ldr	r5, [r0, #16]
.LVL41:
.L49:
	.loc 1 236 10 is_stmt 1 discriminator 3 view .LVU212
	.loc 1 237 10 discriminator 3 view .LVU213
	.loc 1 237 22 is_stmt 0 discriminator 3 view .LVU214
	ldr	r0, [r6, r2, lsl #2]
	ldr	r0, [r0]
	.loc 1 237 20 discriminator 3 view .LVU215
	str	r0, [r1, r3]
	.loc 1 238 10 is_stmt 1 discriminator 3 view .LVU216
	.loc 1 238 80 is_stmt 0 discriminator 3 view .LVU217
	ldrb	r0, [r5, r2]	@ zero_extendqisi2
	.loc 1 234 86 discriminator 3 view .LVU218
	adds	r2, r2, #1
.LVL42:
	.loc 1 238 53 discriminator 3 view .LVU219
	add	r3, r3, r0
.LVL43:
	.loc 1 234 86 discriminator 3 view .LVU220
	uxtb	r2, r2
	.loc 1 238 53 discriminator 3 view .LVU221
	uxth	r3, r3
	.loc 1 234 9 discriminator 3 view .LVU222
	cmp	r2, ip
	.loc 1 238 31 discriminator 3 view .LVU223
	strh	r3, [r4, #24]	@ movhi
	.loc 1 234 85 is_stmt 1 discriminator 3 view .LVU224
.LVL44:
	.loc 1 234 38 discriminator 3 view .LVU225
	.loc 1 234 9 is_stmt 0 discriminator 3 view .LVU226
	blt	.L49
	b	.L48
	.cfi_endproc
.LFE1549:
	.size	MCPA_flushDataLog, .-MCPA_flushDataLog
	.section	.text.MCPA_cfgLog,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	MCPA_cfgLog
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	MCPA_cfgLog, %function
MCPA_cfgLog:
.LVL45:
.LFB1551:
	.loc 1 296 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 297 3 view .LVU228
	.loc 1 307 5 view .LVU229
	.loc 1 308 5 view .LVU230
	.loc 1 309 5 view .LVU231
	.loc 1 310 5 view .LVU232
	.loc 1 312 5 view .LVU233
	.loc 1 296 1 is_stmt 0 view .LVU234
	push	{r3, r4, r5, r6, r7, r8, r9, lr}
.LCFI4:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.cfi_offset 4, -28
	.cfi_offset 5, -24
	.cfi_offset 6, -20
	.cfi_offset 7, -16
	.cfi_offset 8, -12
	.cfi_offset 9, -8
	.cfi_offset 14, -4
	.loc 1 312 14 view .LVU235
	ldrh	r7, [r1]
.LVL46:
	.loc 1 314 5 is_stmt 1 view .LVU236
	.loc 1 296 1 is_stmt 0 view .LVU237
	mov	r4, r0
	.loc 1 314 8 view .LVU238
	cmp	r7, #0
	beq	.L80
	.loc 1 319 10 is_stmt 1 view .LVU239
	.loc 1 319 49 is_stmt 0 view .LVU240
	ldr	r3, [r0]
	.loc 1 319 13 view .LVU241
	ldrh	r3, [r3, #14]
	cmp	r3, r7
	bcc	.L68
	.loc 1 325 7 is_stmt 1 view .LVU242
	.loc 1 325 23 is_stmt 0 view .LVU243
	ldrb	r3, [r1, #2]	@ zero_extendqisi2
	strb	r3, [r0, #33]
	.loc 1 326 7 is_stmt 1 view .LVU244
	.loc 1 326 23 is_stmt 0 view .LVU245
	ldrb	r2, [r1, #3]	@ zero_extendqisi2
	strb	r2, [r0, #35]
	.loc 1 327 7 is_stmt 1 view .LVU246
	.loc 1 327 23 is_stmt 0 view .LVU247
	ldrb	r3, [r1, #4]	@ zero_extendqisi2
	strb	r3, [r0, #37]
	.loc 1 328 7 is_stmt 1 view .LVU248
	.loc 1 328 23 is_stmt 0 view .LVU249
	ldrb	r6, [r1, #5]	@ zero_extendqisi2
	.loc 1 331 55 view .LVU250
	ldrb	r3, [r0, #30]	@ zero_extendqisi2
	.loc 1 328 23 view .LVU251
	strb	r6, [r0, #39]
	.loc 1 329 7 is_stmt 1 view .LVU252
.LVL47:
	.loc 1 331 7 view .LVU253
	.loc 1 331 27 is_stmt 0 view .LVU254
	add	r6, r6, r2
	.loc 1 331 10 view .LVU255
	cmp	r6, r3
	bgt	.L70
	.loc 1 329 16 view .LVU256
	adds	r1, r1, #6
.LVL48:
	.loc 1 333 21 is_stmt 1 view .LVU257
	.loc 1 333 9 is_stmt 0 view .LVU258
	cmp	r6, #0
	beq	.L71
	.loc 1 308 14 view .LVU259
	movs	r6, #0
	mov	r8, r1
	.loc 1 333 16 view .LVU260
	mov	r5, r6
	b	.L67
.LVL49:
.L66:
	.loc 1 338 37 discriminator 4 view .LVU261
	ldr	r3, [r4, #12]
	strb	r0, [r3, r5]
	.loc 1 339 11 is_stmt 1 discriminator 4 view .LVU262
.LVL50:
	.loc 1 340 11 discriminator 4 view .LVU263
	.loc 1 341 51 is_stmt 0 discriminator 4 view .LVU264
	ldr	r2, [r4, #12]
	.loc 1 333 33 discriminator 4 view .LVU265
	ldrb	r3, [r4, #35]	@ zero_extendqisi2
	.loc 1 333 50 discriminator 4 view .LVU266
	ldrb	r0, [r4, #39]	@ zero_extendqisi2
	.loc 1 341 51 discriminator 4 view .LVU267
	ldrb	r2, [r2, r5]	@ zero_extendqisi2
	.loc 1 333 61 discriminator 4 view .LVU268
	add	ip, r5, #1
	uxtb	r5, ip
.LVL51:
	.loc 1 333 41 discriminator 4 view .LVU269
	add	r3, r3, r0
	.loc 1 341 19 discriminator 4 view .LVU270
	add	r2, r2, r6
	.loc 1 333 9 discriminator 4 view .LVU271
	cmp	r5, r3
	.loc 1 340 19 discriminator 4 view .LVU272
	mov	r1, r8
.LVL52:
	.loc 1 341 11 is_stmt 1 discriminator 4 view .LVU273
	.loc 1 341 19 is_stmt 0 discriminator 4 view .LVU274
	uxth	r6, r2
.LVL53:
	.loc 1 333 60 is_stmt 1 discriminator 4 view .LVU275
	.loc 1 333 21 discriminator 4 view .LVU276
	.loc 1 333 9 is_stmt 0 discriminator 4 view .LVU277
	bge	.L81
.LVL54:
.L67:
	.loc 1 335 11 is_stmt 1 view .LVU278
	.loc 1 335 17 is_stmt 0 view .LVU279
	ldrh	r9, [r8], #2
.LVL55:
	.loc 1 336 11 is_stmt 1 view .LVU280
	.loc 1 336 17 is_stmt 0 view .LVU281
	ldr	r1, [r4, #4]
	mov	r0, r9
	add	r1, r1, r5, lsl #2
	bl	RI_GetPtrReg
.LVL56:
	.loc 1 338 11 is_stmt 1 view .LVU282
	.loc 1 338 37 is_stmt 0 view .LVU283
	ldrb	r3, [r4, #35]	@ zero_extendqisi2
	cmp	r3, r5
	mov	r0, #2
	bhi	.L66
	.loc 1 338 68 discriminator 1 view .LVU284
	mov	r0, r9
	bl	RI_GetIDSize
.LVL57:
	b	.L66
.LVL58:
.L81:
	.loc 1 345 38 view .LVU285
	adds	r3, r6, #6
.LVL59:
.L65:
	.loc 1 345 9 is_stmt 1 view .LVU286
	.loc 1 345 12 is_stmt 0 view .LVU287
	cmp	r7, r3
	bcs	.L82
.L68:
	.loc 1 321 14 view .LVU288
	movs	r0, #9
.LVL60:
	.loc 1 372 3 is_stmt 1 view .LVU289
	.loc 1 373 1 is_stmt 0 view .LVU290
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
.LVL61:
.L80:
	.loc 1 317 7 is_stmt 1 view .LVU291
.LBB6:
.LBI6:
	.loc 1 266 6 view .LVU292
.LBB7:
	.loc 1 268 3 view .LVU293
	.loc 1 270 3 view .LVU294
	.loc 1 271 14 is_stmt 0 view .LVU295
	ldrh	r3, [r0, #24]
	.loc 1 270 17 view .LVU296
	strb	r7, [r0, #41]
	.loc 1 271 3 is_stmt 1 view .LVU297
	.loc 1 271 6 is_stmt 0 view .LVU298
	cbz	r3, .L62
.LVL62:
.L79:
	.loc 1 273 5 is_stmt 1 view .LVU299
	.loc 1 273 38 is_stmt 0 view .LVU300
	ldr	r1, [r4, #20]
.LVL63:
	.loc 1 274 5 is_stmt 1 view .LVU301
	.loc 1 274 26 is_stmt 0 view .LVU302
	ldrb	r2, [r4, #42]	@ zero_extendqisi2
	strh	r2, [r1, r3]	@ movhi
	.loc 1 276 5 is_stmt 1 view .LVU303
	ldrh	r2, [r4, #24]
	.loc 1 276 12 is_stmt 0 view .LVU304
	ldr	r0, [r4]
	.loc 1 276 5 view .LVU305
	adds	r2, r2, #2
	ldr	r5, [r0, #4]
	uxth	r2, r2
	movs	r3, #9
.LVL64:
	.loc 1 276 5 view .LVU306
	blx	r5
.LVL65:
.L62:
	.loc 1 282 3 is_stmt 1 view .LVU307
	.loc 1 283 3 view .LVU308
	.loc 1 283 24 is_stmt 0 view .LVU309
	movs	r0, #0
	.loc 1 284 24 view .LVU310
	strb	r0, [r4, #42]
	.loc 1 285 24 view .LVU311
	strb	r0, [r4, #31]
	.loc 1 286 24 view .LVU312
	strb	r0, [r4, #34]
	.loc 1 283 24 view .LVU313
	strh	r0, [r4, #24]	@ movhi
	.loc 1 284 3 is_stmt 1 view .LVU314
	.loc 1 285 3 view .LVU315
	.loc 1 286 3 view .LVU316
.LVL66:
	.loc 1 286 3 is_stmt 0 view .LVU317
.LBE7:
.LBE6:
	.loc 1 372 3 is_stmt 1 view .LVU318
	.loc 1 373 1 is_stmt 0 view .LVU319
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
.LVL67:
.L82:
	.loc 1 351 11 is_stmt 1 view .LVU320
	.loc 1 351 55 is_stmt 0 view .LVU321
	subs	r2, r7, #2
	subs	r2, r2, r6
	.loc 1 351 36 view .LVU322
	strh	r2, [r4, #26]	@ movhi
	.loc 1 353 11 is_stmt 1 view .LVU323
	.loc 1 353 27 is_stmt 0 view .LVU324
	ldrb	r3, [r1]	@ zero_extendqisi2
	.loc 1 353 25 view .LVU325
	strb	r3, [r4, #41]
	.loc 1 354 11 is_stmt 1 view .LVU326
	.loc 1 354 14 is_stmt 0 view .LVU327
	cbz	r3, .L83
	.loc 1 297 11 view .LVU328
	movs	r0, #0
.LVL68:
	.loc 1 372 3 is_stmt 1 view .LVU329
	.loc 1 373 1 is_stmt 0 view .LVU330
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
.LVL69:
.L70:
	.loc 1 366 16 view .LVU331
	movs	r0, #10
.LVL70:
	.loc 1 372 3 is_stmt 1 view .LVU332
	.loc 1 373 1 is_stmt 0 view .LVU333
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
.LVL71:
.L83:
	.loc 1 356 13 is_stmt 1 view .LVU334
.LBB8:
.LBI8:
	.loc 1 266 6 view .LVU335
.LBB9:
	.loc 1 268 3 view .LVU336
	.loc 1 270 3 view .LVU337
	.loc 1 271 3 view .LVU338
	.loc 1 271 14 is_stmt 0 view .LVU339
	ldrh	r3, [r4, #24]
	.loc 1 271 6 view .LVU340
	cmp	r3, #0
	beq	.L62
	b	.L79
.LVL72:
.L71:
	.loc 1 271 6 view .LVU341
.LBE9:
.LBE8:
	.loc 1 333 9 view .LVU342
	movs	r3, #6
	b	.L65
	.cfi_endproc
.LFE1551:
	.size	MCPA_cfgLog, .-MCPA_cfgLog
	.global	GLOBAL_TIMESTAMP
	.section	.bss.GLOBAL_TIMESTAMP,"aw",%nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	GLOBAL_TIMESTAMP, %object
	.size	GLOBAL_TIMESTAMP, 4
GLOBAL_TIMESTAMP:
	.space	4
	.text
.Letext0:
	.file 2 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_ll_tim.h"
	.file 5 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_ll_usart.h"
	.file 6 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_ll_dma.h"
	.file 7 "MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Inc/mcptl.h"
	.file 8 "MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Inc/mcpa.h"
	.file 9 "Inc/register_interface.h"
	.file 10 "<built-in>"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x747
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF74
	.byte	0xc
	.4byte	.LASF75
	.4byte	.LASF76
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x2
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
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x39
	.byte	0x19
	.4byte	0x56
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x4f
	.byte	0x19
	.4byte	0x70
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x30
	.uleb128 0x5
	.4byte	0x93
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x24
	.byte	0x14
	.4byte	0x4a
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x64
	.uleb128 0x5
	.4byte	0xb0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF15
	.uleb128 0x6
	.byte	0x4
	.uleb128 0x7
	.4byte	0x9f
	.4byte	0xda
	.uleb128 0x8
	.4byte	0x8c
	.byte	0x9
	.byte	0
	.uleb128 0x5
	.4byte	0xca
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x4
	.byte	0x2d
	.byte	0x16
	.4byte	0xda
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
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x4
	.byte	0x3c
	.byte	0x16
	.4byte	0xda
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
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x4
	.byte	0x4a
	.byte	0x16
	.4byte	0xda
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
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x4
	.byte	0x58
	.byte	0x16
	.4byte	0xda
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
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x4
	.byte	0x66
	.byte	0x16
	.4byte	0xda
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
	.uleb128 0x7
	.4byte	0xbc
	.4byte	0x162
	.uleb128 0x8
	.4byte	0x8c
	.byte	0xb
	.byte	0
	.uleb128 0x5
	.4byte	0x152
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x5
	.byte	0x2e
	.byte	0x17
	.4byte	0x162
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
	.uleb128 0x7
	.4byte	0x9f
	.4byte	0x1b4
	.uleb128 0x8
	.4byte	0x8c
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.4byte	0x1a4
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x6
	.byte	0x2f
	.byte	0x16
	.4byte	0x1b4
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
	.4byte	.LASF23
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF24
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x7
	.byte	0x22
	.byte	0x1c
	.4byte	0x1e6
	.uleb128 0xa
	.4byte	.LASF77
	.byte	0x14
	.byte	0x7
	.byte	0x3d
	.byte	0x8
	.4byte	0x24e
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x7
	.byte	0x3f
	.byte	0xf
	.4byte	0x24e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x7
	.byte	0x40
	.byte	0x13
	.4byte	0x28d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x7
	.byte	0x41
	.byte	0x18
	.4byte	0x2be
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x7
	.byte	0x42
	.byte	0xc
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x7
	.byte	0x43
	.byte	0xc
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x7
	.byte	0x44
	.byte	0x8
	.4byte	0x27a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x7
	.byte	0x23
	.byte	0x11
	.4byte	0x25a
	.uleb128 0xc
	.byte	0x4
	.4byte	0x260
	.uleb128 0xd
	.byte	0x1
	.4byte	0x27a
	.4byte	0x27a
	.uleb128 0xe
	.4byte	0x281
	.uleb128 0xe
	.4byte	0x287
	.uleb128 0xe
	.4byte	0x93
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF33
	.uleb128 0xc
	.byte	0x4
	.4byte	0x1da
	.uleb128 0xc
	.byte	0x4
	.4byte	0xc8
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0x7
	.byte	0x24
	.byte	0x14
	.4byte	0x299
	.uleb128 0xc
	.byte	0x4
	.4byte	0x29f
	.uleb128 0xd
	.byte	0x1
	.4byte	0x93
	.4byte	0x2be
	.uleb128 0xe
	.4byte	0x281
	.uleb128 0xe
	.4byte	0xc8
	.uleb128 0xe
	.4byte	0xa4
	.uleb128 0xe
	.4byte	0x93
	.byte	0
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0x7
	.byte	0x25
	.byte	0x15
	.4byte	0x2ca
	.uleb128 0xc
	.byte	0x4
	.4byte	0x2d0
	.uleb128 0xd
	.byte	0x1
	.4byte	0x2e5
	.4byte	0x2e5
	.uleb128 0xe
	.4byte	0x281
	.uleb128 0xe
	.4byte	0x2eb
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x93
	.uleb128 0xc
	.byte	0x4
	.4byte	0xa4
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF36
	.uleb128 0xf
	.4byte	.LASF62
	.byte	0x8
	.byte	0x1c
	.byte	0x11
	.4byte	0xb0
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.byte	0x2c
	.byte	0x8
	.byte	0x2d
	.byte	0x9
	.4byte	0x45a
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x8
	.byte	0x2f
	.byte	0x12
	.4byte	0x281
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x8
	.byte	0x30
	.byte	0xb
	.4byte	0x287
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x8
	.byte	0x31
	.byte	0xb
	.4byte	0x287
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x8
	.byte	0x32
	.byte	0xc
	.4byte	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x8
	.byte	0x33
	.byte	0xc
	.4byte	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x8
	.byte	0x34
	.byte	0xc
	.4byte	0x2e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x8
	.byte	0x35
	.byte	0xc
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0x8
	.byte	0x36
	.byte	0xc
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0x8
	.byte	0x37
	.byte	0xc
	.4byte	0xa4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.4byte	.LASF46
	.byte	0x8
	.byte	0x3b
	.byte	0xb
	.4byte	0x93
	.byte	0x2
	.byte	0x23
	.uleb128 0x1e
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0x8
	.byte	0x3c
	.byte	0xb
	.4byte	0x93
	.byte	0x2
	.byte	0x23
	.uleb128 0x1f
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0x8
	.byte	0x3d
	.byte	0xb
	.4byte	0x93
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x8
	.byte	0x3e
	.byte	0xb
	.4byte	0x93
	.byte	0x2
	.byte	0x23
	.uleb128 0x21
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x8
	.byte	0x3f
	.byte	0xb
	.4byte	0x93
	.byte	0x2
	.byte	0x23
	.uleb128 0x22
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x8
	.byte	0x40
	.byte	0xb
	.4byte	0x93
	.byte	0x2
	.byte	0x23
	.uleb128 0x23
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x8
	.byte	0x41
	.byte	0xb
	.4byte	0x93
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x8
	.byte	0x42
	.byte	0xb
	.4byte	0x93
	.byte	0x2
	.byte	0x23
	.uleb128 0x25
	.uleb128 0xb
	.4byte	.LASF54
	.byte	0x8
	.byte	0x43
	.byte	0xb
	.4byte	0x93
	.byte	0x2
	.byte	0x23
	.uleb128 0x26
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0x8
	.byte	0x44
	.byte	0xb
	.4byte	0x93
	.byte	0x2
	.byte	0x23
	.uleb128 0x27
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0x8
	.byte	0x45
	.byte	0xb
	.4byte	0x93
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.4byte	.LASF57
	.byte	0x8
	.byte	0x46
	.byte	0xb
	.4byte	0x93
	.byte	0x2
	.byte	0x23
	.uleb128 0x29
	.uleb128 0xb
	.4byte	.LASF58
	.byte	0x8
	.byte	0x47
	.byte	0xb
	.4byte	0x93
	.byte	0x2
	.byte	0x23
	.uleb128 0x2a
	.byte	0
	.uleb128 0x3
	.4byte	.LASF59
	.byte	0x8
	.byte	0x48
	.byte	0x3
	.4byte	0x306
	.uleb128 0x11
	.4byte	0x2f8
	.byte	0x1
	.byte	0xa
	.byte	0x5
	.byte	0x3
	.4byte	GLOBAL_TIMESTAMP
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x127
	.byte	0x9
	.byte	0x1
	.4byte	0x93
	.4byte	.LFB1551
	.4byte	.LFE1551
	.4byte	.LLST10
	.byte	0x1
	.4byte	0x5ce
	.uleb128 0x13
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x127
	.byte	0x24
	.4byte	0x5ce
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x13
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x127
	.byte	0x36
	.4byte	0x2e5
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x129
	.byte	0xb
	.4byte	0x93
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x15
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x133
	.byte	0xd
	.4byte	0x93
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x14
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x134
	.byte	0xe
	.4byte	0xa4
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0x14
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x135
	.byte	0xe
	.4byte	0xa4
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0x14
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x135
	.byte	0x15
	.4byte	0xa4
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0x14
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x136
	.byte	0xe
	.4byte	0x2e5
	.4byte	.LLST18
	.4byte	.LVUS18
	.uleb128 0x16
	.4byte	0x5d4
	.4byte	.LBI6
	.byte	.LVU292
	.4byte	.LBB6
	.4byte	.LBE6
	.byte	0x1
	.2byte	0x13d
	.byte	0x7
	.4byte	0x57c
	.uleb128 0x17
	.4byte	0x5e3
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0x18
	.4byte	0x5f0
	.4byte	.LLST20
	.4byte	.LVUS20
	.uleb128 0x19
	.4byte	.LVL65
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x53
	.byte	0x1
	.byte	0x39
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	0x5d4
	.4byte	.LBI8
	.byte	.LVU335
	.4byte	.LBB8
	.4byte	.LBE8
	.byte	0x1
	.2byte	0x164
	.byte	0xd
	.4byte	0x5a9
	.uleb128 0x17
	.4byte	0x5e3
	.4byte	.LLST21
	.4byte	.LVUS21
	.uleb128 0x1b
	.4byte	0x5f0
	.byte	0
	.uleb128 0x1c
	.4byte	.LVL56
	.4byte	0x71f
	.4byte	0x5bd
	.uleb128 0x1a
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.4byte	.LVL57
	.4byte	0x72e
	.uleb128 0x1a
	.byte	0x1
	.byte	0x50
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x45a
	.uleb128 0x1e
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x10a
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.4byte	0x5fe
	.uleb128 0x1f
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x10a
	.byte	0x26
	.4byte	0x5ce
	.uleb128 0x20
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x10c
	.byte	0xd
	.4byte	0x2eb
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.4byte	.LASF70
	.byte	0x1
	.byte	0xd7
	.byte	0x6
	.byte	0x1
	.4byte	.LFB1549
	.4byte	.LFE1549
	.4byte	.LLST5
	.byte	0x1
	.4byte	0x676
	.uleb128 0x22
	.4byte	.LASF60
	.byte	0x1
	.byte	0xd7
	.byte	0x28
	.4byte	0x5ce
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x23
	.4byte	.LASF68
	.byte	0x1
	.byte	0xe1
	.byte	0xf
	.4byte	0x676
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x23
	.4byte	.LASF69
	.byte	0x1
	.byte	0xe2
	.byte	0xf
	.4byte	0x2eb
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x24
	.ascii	"i\000"
	.byte	0x1
	.byte	0xe3
	.byte	0xd
	.4byte	0x93
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x19
	.4byte	.LVL38
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1a
	.byte	0x1
	.byte	0x53
	.byte	0x1
	.byte	0x39
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0xb0
	.uleb128 0x21
	.byte	0x1
	.4byte	.LASF71
	.byte	0x1
	.byte	0x2c
	.byte	0x6
	.byte	0x1
	.4byte	.LFB1548
	.4byte	.LFE1548
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x71f
	.uleb128 0x22
	.4byte	.LASF60
	.byte	0x1
	.byte	0x2c
	.byte	0x22
	.4byte	0x5ce
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x23
	.4byte	.LASF68
	.byte	0x1
	.byte	0x36
	.byte	0xf
	.4byte	0x676
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x23
	.4byte	.LASF69
	.byte	0x1
	.byte	0x37
	.byte	0xf
	.4byte	0x2eb
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x24
	.ascii	"i\000"
	.byte	0x1
	.byte	0x38
	.byte	0xd
	.4byte	0x93
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x25
	.4byte	.LVL6
	.byte	0x2
	.byte	0x75
	.sleb128 0
	.4byte	0x6f7
	.uleb128 0x1a
	.byte	0x1
	.byte	0x53
	.byte	0x1
	.byte	0x39
	.byte	0
	.uleb128 0x26
	.4byte	.LVL9
	.4byte	0x70c
	.uleb128 0x1a
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.uleb128 0x1a
	.byte	0x1
	.byte	0x52
	.byte	0x1
	.byte	0x39
	.byte	0
	.uleb128 0x27
	.4byte	.LVL11
	.4byte	0x73d
	.uleb128 0x27
	.4byte	.LVL12
	.4byte	0x73d
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.byte	0x1
	.4byte	.LASF72
	.4byte	.LASF72
	.byte	0x9
	.2byte	0x105
	.byte	0x9
	.uleb128 0x28
	.byte	0x1
	.byte	0x1
	.4byte	.LASF73
	.4byte	.LASF73
	.byte	0x9
	.2byte	0x106
	.byte	0x9
	.uleb128 0x29
	.byte	0x1
	.byte	0x1
	.4byte	.LASF80
	.4byte	.LASF81
	.byte	0xa
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x2
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
	.uleb128 0x6
	.uleb128 0x2137
	.uleb128 0x6
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST10:
	.4byte	.LFB1551
	.4byte	.LCFI4
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI4
	.4byte	.LFE1551
	.2byte	0x2
	.byte	0x7d
	.sleb128 32
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 0
	.uleb128 .LVU261
	.uleb128 .LVU261
	.uleb128 .LVU291
	.uleb128 .LVU291
	.uleb128 .LVU299
	.uleb128 .LVU299
	.uleb128 .LVU331
	.uleb128 .LVU331
	.uleb128 .LVU332
	.uleb128 .LVU332
	.uleb128 .LVU341
	.uleb128 .LVU341
	.uleb128 0
.LLST11:
	.4byte	.LVL45
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL49
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL62
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL70
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL72
	.4byte	.LFE1551
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS12:
	.uleb128 0
	.uleb128 .LVU257
	.uleb128 .LVU257
	.uleb128 .LVU261
	.uleb128 .LVU261
	.uleb128 .LVU291
	.uleb128 .LVU291
	.uleb128 .LVU299
	.uleb128 .LVU299
	.uleb128 .LVU331
	.uleb128 .LVU331
	.uleb128 .LVU334
	.uleb128 .LVU334
	.uleb128 0
.LLST12:
	.4byte	.LVL45
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x3
	.byte	0x71
	.sleb128 -6
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL61
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL62
	.4byte	.LVL69
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL69
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL71
	.4byte	.LFE1551
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS13:
	.uleb128 .LVU229
	.uleb128 .LVU289
	.uleb128 .LVU289
	.uleb128 .LVU291
	.uleb128 .LVU291
	.uleb128 .LVU317
	.uleb128 .LVU317
	.uleb128 .LVU320
	.uleb128 .LVU320
	.uleb128 .LVU329
	.uleb128 .LVU329
	.uleb128 .LVU331
	.uleb128 .LVU331
	.uleb128 .LVU332
	.uleb128 .LVU332
	.uleb128 .LVU334
	.uleb128 .LVU334
	.uleb128 0
.LLST13:
	.4byte	.LVL45
	.4byte	.LVL60
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL61
	.4byte	.LVL66
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL71
	.4byte	.LFE1551
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS14:
	.uleb128 .LVU257
	.uleb128 .LVU261
	.uleb128 .LVU261
	.uleb128 .LVU269
	.uleb128 .LVU276
	.uleb128 .LVU286
	.uleb128 .LVU341
	.uleb128 0
.LLST14:
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL53
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL72
	.4byte	.LFE1551
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS15:
	.uleb128 .LVU231
	.uleb128 .LVU261
	.uleb128 .LVU261
	.uleb128 .LVU286
	.uleb128 .LVU291
	.uleb128 .LVU299
	.uleb128 .LVU331
	.uleb128 .LVU334
	.uleb128 .LVU341
	.uleb128 0
.LLST15:
	.4byte	.LVL45
	.4byte	.LVL49
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL69
	.4byte	.LVL71
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LFE1551
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS16:
	.uleb128 .LVU261
	.uleb128 .LVU278
	.uleb128 .LVU280
	.uleb128 .LVU286
.LLST16:
	.4byte	.LVL49
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL55
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LVUS17:
	.uleb128 .LVU236
	.uleb128 0
.LLST17:
	.4byte	.LVL46
	.4byte	.LFE1551
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS18:
	.uleb128 .LVU233
	.uleb128 .LVU253
	.uleb128 .LVU253
	.uleb128 .LVU257
	.uleb128 .LVU257
	.uleb128 .LVU261
	.uleb128 .LVU261
	.uleb128 .LVU263
	.uleb128 .LVU263
	.uleb128 .LVU273
	.uleb128 .LVU273
	.uleb128 .LVU278
	.uleb128 .LVU278
	.uleb128 .LVU280
	.uleb128 .LVU280
	.uleb128 .LVU285
	.uleb128 .LVU285
	.uleb128 .LVU286
	.uleb128 .LVU291
	.uleb128 .LVU299
	.uleb128 .LVU331
	.uleb128 .LVU334
	.uleb128 .LVU341
	.uleb128 0
.LLST18:
	.4byte	.LVL45
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x3
	.byte	0x71
	.sleb128 6
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x3
	.byte	0x78
	.sleb128 -2
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL52
	.2byte	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL55
	.4byte	.LVL58
	.2byte	0x3
	.byte	0x78
	.sleb128 -2
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL69
	.4byte	.LVL71
	.2byte	0x3
	.byte	0x71
	.sleb128 6
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LFE1551
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LVUS19:
	.uleb128 .LVU292
	.uleb128 .LVU299
.LLST19:
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS20:
	.uleb128 .LVU301
	.uleb128 .LVU306
.LLST20:
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0xa
	.byte	0x73
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS21:
	.uleb128 .LVU335
	.uleb128 .LVU341
.LLST21:
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LFB1549
	.4byte	.LCFI1
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI1
	.4byte	.LCFI2
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	.LCFI2
	.4byte	.LCFI3
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI3
	.4byte	.LFE1549
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 0
	.uleb128 .LVU190
	.uleb128 .LVU190
	.uleb128 .LVU202
	.uleb128 .LVU202
	.uleb128 .LVU212
	.uleb128 .LVU212
	.uleb128 0
.LLST6:
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL36
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL39
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL41
	.4byte	.LFE1549
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 .LVU213
	.uleb128 .LVU220
.LLST7:
	.4byte	.LVL41
	.4byte	.LVL43
	.2byte	0xa
	.byte	0x73
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 .LVU192
	.uleb128 .LVU197
.LLST8:
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0xa
	.byte	0x73
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 .LVU205
	.uleb128 .LVU219
	.uleb128 .LVU225
	.uleb128 0
.LLST9:
	.4byte	.LVL40
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL44
	.4byte	.LFE1549
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LFB1548
	.4byte	.LCFI0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI0
	.4byte	.LFE1548
	.2byte	0x2
	.byte	0x7d
	.sleb128 24
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU12
	.uleb128 .LVU12
	.uleb128 .LVU13
	.uleb128 .LVU13
	.uleb128 .LVU18
	.uleb128 .LVU18
	.uleb128 .LVU34
	.uleb128 .LVU34
	.uleb128 .LVU38
	.uleb128 .LVU38
	.uleb128 0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL3
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL8
	.4byte	.LFE1548
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 .LVU41
	.uleb128 .LVU76
	.uleb128 .LVU122
	.uleb128 .LVU129
	.uleb128 .LVU163
	.uleb128 .LVU170
.LLST2:
	.4byte	.LVL10
	.4byte	.LVL11-1
	.2byte	0x2
	.byte	0x74
	.sleb128 20
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0xa
	.byte	0x75
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0xa
	.byte	0x75
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 .LVU25
	.uleb128 .LVU30
	.uleb128 .LVU88
	.uleb128 .LVU95
	.uleb128 .LVU95
	.uleb128 .LVU96
	.uleb128 .LVU96
	.uleb128 .LVU104
	.uleb128 .LVU136
	.uleb128 .LVU139
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0xa
	.byte	0x75
	.sleb128 0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL17
	.4byte	.LVL17
	.2byte	0x3
	.byte	0x73
	.sleb128 -2
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU89
	.uleb128 .LVU91
	.uleb128 .LVU91
	.uleb128 .LVU93
	.uleb128 .LVU93
	.uleb128 .LVU101
	.uleb128 .LVU101
	.uleb128 .LVU105
	.uleb128 .LVU115
	.uleb128 .LVU128
	.uleb128 .LVU134
	.uleb128 .LVU136
	.uleb128 .LVU136
	.uleb128 .LVU139
	.uleb128 .LVU157
	.uleb128 .LVU171
	.uleb128 .LVU175
	.uleb128 0
.LLST4:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0xb
	.byte	0x72
	.sleb128 0
	.byte	0x74
	.sleb128 8
	.byte	0x6
	.byte	0x1c
	.byte	0x23
	.uleb128 0x4
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x9
	.byte	0x72
	.sleb128 0
	.byte	0x74
	.sleb128 8
	.byte	0x6
	.byte	0x1c
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0xb
	.byte	0x72
	.sleb128 0
	.byte	0x74
	.sleb128 8
	.byte	0x6
	.byte	0x1c
	.byte	0x32
	.byte	0x25
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL34
	.4byte	.LFE1548
	.2byte	0x1
	.byte	0x56
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
	.4byte	.LFB1548
	.4byte	.LFE1548-.LFB1548
	.4byte	.LFB1549
	.4byte	.LFE1549-.LFB1549
	.4byte	.LFB1551
	.4byte	.LFE1551-.LFB1551
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB1548
	.4byte	.LFE1548
	.4byte	.LFB1549
	.4byte	.LFE1549
	.4byte	.LFB1551
	.4byte	.LFE1551
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF63:
	.ascii	"result\000"
.LASF81:
	.ascii	"__builtin_memcpy\000"
.LASF38:
	.ascii	"dataPtrTable\000"
.LASF46:
	.ascii	"nbrOfDataLog\000"
.LASF51:
	.ascii	"HFNum\000"
.LASF73:
	.ascii	"RI_GetIDSize\000"
.LASF59:
	.ascii	"MCPA_Handle_t\000"
.LASF25:
	.ascii	"MCTL_Handle_t\000"
.LASF28:
	.ascii	"fRXPacketProcess\000"
.LASF41:
	.ascii	"dataSizeTableBuff\000"
.LASF80:
	.ascii	"memcpy\000"
.LASF4:
	.ascii	"__uint16_t\000"
.LASF61:
	.ascii	"cfgdata\000"
.LASF34:
	.ascii	"MCTL_SendPacket\000"
.LASF67:
	.ascii	"pCfgData\000"
.LASF8:
	.ascii	"long unsigned int\000"
.LASF58:
	.ascii	"MarkBuff\000"
.LASF66:
	.ascii	"buffSize\000"
.LASF12:
	.ascii	"uint8_t\000"
.LASF68:
	.ascii	"logValue\000"
.LASF74:
	.ascii	"GNU C17 10.2.1 20201103 (release) -mcpu=cortex-m4 -"
	.ascii	"mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=hard -march=ar"
	.ascii	"mv7e-m+fp -g -gdwarf-2 -O3 -fdata-sections -ffuncti"
	.ascii	"on-sections\000"
.LASF49:
	.ascii	"HFRate\000"
.LASF32:
	.ascii	"MCTL_GetBuf\000"
.LASF69:
	.ascii	"logValue16\000"
.LASF2:
	.ascii	"short int\000"
.LASF29:
	.ascii	"txSyncMaxPayload\000"
.LASF23:
	.ascii	"float\000"
.LASF79:
	.ascii	"MCPA_stopDataLog\000"
.LASF45:
	.ascii	"bufferTxTriggerBuff\000"
.LASF75:
	.ascii	"MCSDK_v6.3.2-Full/MotorControl/MCSDK/MCLib/Any/Src/"
	.ascii	"mcpa.c\000"
.LASF9:
	.ascii	"long long int\000"
.LASF10:
	.ascii	"long long unsigned int\000"
.LASF17:
	.ascii	"SHIFT_TAB_OCxx\000"
.LASF6:
	.ascii	"long int\000"
.LASF56:
	.ascii	"MFNumBuff\000"
.LASF78:
	.ascii	"MCPA_cfgLog\000"
.LASF3:
	.ascii	"__uint8_t\000"
.LASF7:
	.ascii	"__uint32_t\000"
.LASF77:
	.ascii	"MCTL_Handle\000"
.LASF72:
	.ascii	"RI_GetPtrReg\000"
.LASF40:
	.ascii	"dataSizeTable\000"
.LASF15:
	.ascii	"long double\000"
.LASF35:
	.ascii	"MCTL_RXpacketProcess\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF19:
	.ascii	"SHIFT_TAB_CCxP\000"
.LASF0:
	.ascii	"signed char\000"
.LASF70:
	.ascii	"MCPA_flushDataLog\000"
.LASF44:
	.ascii	"bufferTxTrigger\000"
.LASF14:
	.ascii	"uint32_t\000"
.LASF26:
	.ascii	"fGetBuffer\000"
.LASF13:
	.ascii	"uint16_t\000"
.LASF47:
	.ascii	"HFIndex\000"
.LASF39:
	.ascii	"dataPtrTableBuff\000"
.LASF30:
	.ascii	"txAsyncMaxPayload\000"
.LASF5:
	.ascii	"short unsigned int\000"
.LASF24:
	.ascii	"char\000"
.LASF62:
	.ascii	"GLOBAL_TIMESTAMP\000"
.LASF22:
	.ascii	"CHANNEL_OFFSET_TAB\000"
.LASF33:
	.ascii	"_Bool\000"
.LASF52:
	.ascii	"HFNumBuff\000"
.LASF31:
	.ascii	"MCP_PacketAvailable\000"
.LASF53:
	.ascii	"MFRate\000"
.LASF16:
	.ascii	"OFFSET_TAB_CCMRx\000"
.LASF76:
	.ascii	"/home/joel/share/EVSPIN32G4_Shinano\000"
.LASF36:
	.ascii	"double\000"
.LASF20:
	.ascii	"SHIFT_TAB_OISx\000"
.LASF65:
	.ascii	"newID\000"
.LASF48:
	.ascii	"MFIndex\000"
.LASF18:
	.ascii	"SHIFT_TAB_ICxx\000"
.LASF64:
	.ascii	"logSize\000"
.LASF50:
	.ascii	"HFRateBuff\000"
.LASF42:
	.ascii	"currentBuffer\000"
.LASF54:
	.ascii	"MFRateBuff\000"
.LASF55:
	.ascii	"MFNum\000"
.LASF37:
	.ascii	"pTransportLayer\000"
.LASF43:
	.ascii	"bufferIndex\000"
.LASF57:
	.ascii	"Mark\000"
.LASF71:
	.ascii	"MCPA_dataLog\000"
.LASF11:
	.ascii	"unsigned int\000"
.LASF60:
	.ascii	"pHandle\000"
.LASF21:
	.ascii	"USART_PRESCALER_TAB\000"
.LASF27:
	.ascii	"fSendPacket\000"
	.ident	"GCC: (GNU Arm Embedded Toolchain 10-2020-q4-major) 10.2.1 20201103 (release)"
