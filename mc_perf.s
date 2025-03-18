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
	.file	"mc_perf.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.MC_Perf_Measure_Init,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	MC_Perf_Measure_Init
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	MC_Perf_Measure_Init, %function
MC_Perf_Measure_Init:
.LVL0:
.LFB1438:
	.file 1 "Src/mc_perf.c"
	.loc 1 24 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 33 3 view .LVU1
	.loc 1 34 3 view .LVU2
	.loc 1 37 3 view .LVU3
	.loc 1 37 20 is_stmt 0 view .LVU4
	ldr	r1, .L7
	.loc 1 39 10 view .LVU5
	ldr	r2, .L7+4
	.loc 1 37 20 view .LVU6
	ldr	r3, [r1, #252]
	orr	r3, r3, #16777216
	str	r3, [r1, #252]
	.loc 1 39 3 is_stmt 1 view .LVU7
	.loc 1 39 10 is_stmt 0 view .LVU8
	ldr	r3, [r2]
	.loc 1 39 6 view .LVU9
	cbz	r3, .L2
	.loc 1 41 5 is_stmt 1 view .LVU10
	.loc 1 41 18 is_stmt 0 view .LVU11
	movs	r3, #0
	str	r3, [r2, #4]
	.loc 1 42 5 is_stmt 1 view .LVU12
	.loc 1 42 17 is_stmt 0 view .LVU13
	ldr	r3, [r2]
	orr	r3, r3, #1
	str	r3, [r2]
.L2:
.LVL1:
	.loc 1 49 18 is_stmt 1 discriminator 1 view .LVU14
	.loc 1 51 7 discriminator 1 view .LVU15
	.loc 1 52 7 discriminator 1 view .LVU16
	.loc 1 52 26 is_stmt 0 discriminator 1 view .LVU17
	movs	r3, #0
	.loc 1 54 17 discriminator 1 view .LVU18
	mov	r2, #-1
	.loc 1 53 30 discriminator 1 view .LVU19
	strd	r3, r3, [r0, #8]
	.loc 1 54 7 is_stmt 1 discriminator 1 view .LVU20
	.loc 1 55 17 is_stmt 0 discriminator 1 view .LVU21
	strd	r2, r3, [r0, #16]
	.loc 1 49 41 is_stmt 1 discriminator 1 view .LVU22
.LVL2:
	.loc 1 49 18 discriminator 1 view .LVU23
	.loc 1 51 7 discriminator 1 view .LVU24
	.loc 1 52 7 discriminator 1 view .LVU25
	.loc 1 53 30 is_stmt 0 discriminator 1 view .LVU26
	strd	r3, r3, [r0, #24]
	.loc 1 54 7 is_stmt 1 discriminator 1 view .LVU27
	.loc 1 55 17 is_stmt 0 discriminator 1 view .LVU28
	strd	r2, r3, [r0, #32]
	.loc 1 49 41 is_stmt 1 discriminator 1 view .LVU29
.LVL3:
	.loc 1 49 18 discriminator 1 view .LVU30
	.loc 1 57 5 discriminator 1 view .LVU31
	.loc 1 57 30 is_stmt 0 discriminator 1 view .LVU32
	strb	r3, [r0]
	.loc 1 58 5 is_stmt 1 discriminator 1 view .LVU33
	.loc 1 58 34 is_stmt 0 discriminator 1 view .LVU34
	str	r3, [r0, #4]
	.loc 1 62 1 discriminator 1 view .LVU35
	bx	lr
.L8:
	.align	2
.L7:
	.word	-536810240
	.word	-536866816
	.cfi_endproc
.LFE1438:
	.size	MC_Perf_Measure_Init, .-MC_Perf_Measure_Init
	.section	.text.MC_Perf_Clear,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	MC_Perf_Clear
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	MC_Perf_Clear, %function
MC_Perf_Clear:
.LVL4:
.LFB1439:
	.loc 1 65 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 74 5 view .LVU37
	.loc 1 75 5 view .LVU38
	.loc 1 77 5 view .LVU39
	.loc 1 77 18 view .LVU40
	.loc 1 79 7 view .LVU41
	.loc 1 80 7 view .LVU42
	.loc 1 80 30 is_stmt 0 view .LVU43
	add	r3, r0, r1, lsl #5
	.loc 1 81 17 view .LVU44
	movs	r2, #0
	mov	r1, #-1
.LVL5:
	.loc 1 81 17 view .LVU45
	strd	r2, r1, [r3, #12]
	.loc 1 82 7 is_stmt 1 view .LVU46
	.loc 1 82 17 is_stmt 0 view .LVU47
	strd	r1, r2, [r3, #32]
	str	r2, [r3, #20]
	.loc 1 77 25 is_stmt 1 view .LVU48
.LVL6:
	.loc 1 77 18 view .LVU49
	.loc 1 79 7 view .LVU50
	.loc 1 80 7 view .LVU51
	.loc 1 80 30 is_stmt 0 view .LVU52
	str	r2, [r3, #28]
	.loc 1 81 7 is_stmt 1 view .LVU53
	.loc 1 77 25 view .LVU54
.LVL7:
	.loc 1 77 18 view .LVU55
	.loc 1 87 1 is_stmt 0 view .LVU56
	bx	lr
	.cfi_endproc
.LFE1439:
	.size	MC_Perf_Clear, .-MC_Perf_Clear
	.section	.text.MC_BG_Perf_Measure_Start,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	MC_BG_Perf_Measure_Start
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	MC_BG_Perf_Measure_Start, %function
MC_BG_Perf_Measure_Start:
.LVL8:
.LFB1440:
	.loc 1 95 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 104 5 view .LVU58
	.loc 1 105 34 is_stmt 0 view .LVU59
	movs	r2, #0
	.loc 1 106 14 view .LVU60
	ldr	r3, .L11
	.loc 1 105 34 view .LVU61
	str	r2, [r0, #4]
	.loc 1 107 57 view .LVU62
	add	r1, r0, r1, lsl #4
.LVL9:
	.loc 1 106 14 view .LVU63
	ldr	r3, [r3, #4]
	.loc 1 104 30 view .LVU64
	movs	r2, #1
	strb	r2, [r0]
	.loc 1 105 5 is_stmt 1 view .LVU65
	.loc 1 106 5 view .LVU66
.LVL10:
	.loc 1 107 5 view .LVU67
	.loc 1 107 57 is_stmt 0 view .LVU68
	str	r3, [r1, #8]
	.loc 1 111 1 view .LVU69
	bx	lr
.L12:
	.align	2
.L11:
	.word	-536866816
	.cfi_endproc
.LFE1440:
	.size	MC_BG_Perf_Measure_Start, .-MC_BG_Perf_Measure_Start
	.section	.text.MC_Perf_Measure_Stop,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	MC_Perf_Measure_Stop
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	MC_Perf_Measure_Stop, %function
MC_Perf_Measure_Stop:
.LVL11:
.LFB1441:
	.loc 1 119 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 128 5 view .LVU71
	.loc 1 129 5 view .LVU72
	.loc 1 131 5 view .LVU73
	.loc 1 131 17 is_stmt 0 view .LVU74
	ldr	r2, .L23
	.loc 1 135 27 view .LVU75
	add	r3, r0, r1, lsl #4
	.loc 1 119 1 view .LVU76
	push	{r4}
.LCFI0:
	.cfi_def_cfa_offset 4
	.cfi_offset 4, -4
	.loc 1 135 27 view .LVU77
	ldr	r3, [r3, #8]
	.loc 1 131 17 view .LVU78
	ldr	r4, [r2, #4]
.LVL12:
	.loc 1 132 5 is_stmt 1 view .LVU79
	.loc 1 135 5 view .LVU80
	.loc 1 135 8 is_stmt 0 view .LVU81
	cmp	r3, r4
	.loc 1 137 7 is_stmt 1 view .LVU82
	.loc 1 137 66 is_stmt 0 view .LVU83
	it	hi
	addhi	r4, r4, #-1
.LVL13:
	.loc 1 141 7 is_stmt 1 view .LVU84
	.loc 1 135 27 is_stmt 0 view .LVU85
	lsls	r2, r1, #4
	.loc 1 141 44 view .LVU86
	subs	r3, r4, r3
	add	r2, r2, r0
.LVL14:
	.loc 1 144 7 view .LVU87
	ldrb	r4, [r0]	@ zero_extendqisi2
	str	r3, [r2, #12]
	.loc 1 144 5 is_stmt 1 view .LVU88
	.loc 1 144 7 is_stmt 0 view .LVU89
	cbz	r4, .L16
	.loc 1 146 7 is_stmt 1 view .LVU90
	.loc 1 146 36 is_stmt 0 view .LVU91
	ldr	r2, [r0, #4]
.LVL15:
	.loc 1 146 36 view .LVU92
	add	r2, r2, r3
	str	r2, [r0, #4]
.L16:
	.loc 1 151 5 is_stmt 1 view .LVU93
	.loc 1 153 5 view .LVU94
	add	r0, r0, r1, lsl #4
.LVL16:
	.loc 1 173 1 is_stmt 0 view .LVU95
	ldr	r4, [sp], #4
.LCFI1:
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 153 8 view .LVU96
	ldr	r2, [r0, #20]
	cmp	r2, r3
	.loc 1 155 7 is_stmt 1 view .LVU97
	.loc 1 162 8 is_stmt 0 view .LVU98
	ldr	r2, [r0, #16]
	.loc 1 155 17 view .LVU99
	it	cc
	strcc	r3, [r0, #20]
	.loc 1 160 5 is_stmt 1 view .LVU100
	.loc 1 162 5 view .LVU101
	.loc 1 162 8 is_stmt 0 view .LVU102
	cmp	r2, r3
	.loc 1 164 7 is_stmt 1 view .LVU103
	.loc 1 164 17 is_stmt 0 view .LVU104
	it	hi
	strhi	r3, [r0, #16]
	.loc 1 169 5 is_stmt 1 view .LVU105
	.loc 1 173 1 is_stmt 0 view .LVU106
	bx	lr
.L24:
	.align	2
.L23:
	.word	-536866816
	.cfi_endproc
.LFE1441:
	.size	MC_Perf_Measure_Stop, .-MC_Perf_Measure_Stop
	.section	.text.MC_BG_Perf_Measure_Stop,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	MC_BG_Perf_Measure_Stop
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	MC_BG_Perf_Measure_Stop, %function
MC_BG_Perf_Measure_Stop:
.LVL17:
.LFB1442:
	.loc 1 181 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 190 5 view .LVU108
	.loc 1 191 5 view .LVU109
	.loc 1 191 14 is_stmt 0 view .LVU110
	ldr	r2, .L32
	.loc 1 197 27 view .LVU111
	add	r3, r0, r1, lsl #4
	.loc 1 181 1 view .LVU112
	push	{r4}
.LCFI2:
	.cfi_def_cfa_offset 4
	.cfi_offset 4, -4
	.loc 1 197 27 view .LVU113
	ldr	r3, [r3, #8]
	.loc 1 191 14 view .LVU114
	ldr	r4, [r2, #4]
.LVL18:
	.loc 1 192 5 is_stmt 1 view .LVU115
	.loc 1 192 30 is_stmt 0 view .LVU116
	movs	r2, #0
	strb	r2, [r0]
	.loc 1 194 5 is_stmt 1 view .LVU117
.LVL19:
	.loc 1 197 5 view .LVU118
	.loc 1 197 8 is_stmt 0 view .LVU119
	cmp	r3, r4
	.loc 1 199 7 is_stmt 1 view .LVU120
	.loc 1 197 27 is_stmt 0 view .LVU121
	lsl	r2, r1, #4
	add	r2, r2, r0
.LVL20:
	.loc 1 199 66 view .LVU122
	it	hi
	addhi	r4, r4, #-1
.LVL21:
	.loc 1 203 7 is_stmt 1 view .LVU123
	.loc 1 203 44 is_stmt 0 view .LVU124
	subs	r3, r4, r3
	str	r3, [r2, #12]
	.loc 1 206 5 is_stmt 1 view .LVU125
	.loc 1 206 41 is_stmt 0 view .LVU126
	ldr	r4, [r0, #4]
	.loc 1 206 8 view .LVU127
	cmp	r4, r3
	.loc 1 208 7 is_stmt 1 view .LVU128
	.loc 1 213 5 view .LVU129
	.loc 1 214 5 view .LVU130
	.loc 1 208 30 is_stmt 0 view .LVU131
	it	cc
	subcc	r3, r3, r4
	add	r0, r0, r1, lsl #4
.LVL22:
	.loc 1 208 30 view .LVU132
	it	cc
	strcc	r3, [r2, #12]
	.loc 1 214 8 view .LVU133
	ldr	r2, [r0, #20]
.LVL23:
	.loc 1 234 1 view .LVU134
	ldr	r4, [sp], #4
.LCFI3:
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 214 8 view .LVU135
	cmp	r3, r2
	.loc 1 216 7 is_stmt 1 view .LVU136
	.loc 1 223 8 is_stmt 0 view .LVU137
	ldr	r2, [r0, #16]
	.loc 1 216 17 view .LVU138
	it	hi
	strhi	r3, [r0, #20]
	.loc 1 221 5 is_stmt 1 view .LVU139
	.loc 1 223 5 view .LVU140
	.loc 1 223 8 is_stmt 0 view .LVU141
	cmp	r3, r2
	.loc 1 225 7 is_stmt 1 view .LVU142
	.loc 1 225 17 is_stmt 0 view .LVU143
	it	cc
	strcc	r3, [r0, #16]
	.loc 1 230 5 is_stmt 1 view .LVU144
	.loc 1 234 1 is_stmt 0 view .LVU145
	bx	lr
.L33:
	.align	2
.L32:
	.word	-536866816
	.cfi_endproc
.LFE1442:
	.size	MC_BG_Perf_Measure_Stop, .-MC_BG_Perf_Measure_Stop
	.section	.text.MC_Perf_GetCPU_Load,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	MC_Perf_GetCPU_Load
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	MC_Perf_GetCPU_Load, %function
MC_Perf_GetCPU_Load:
.LVL24:
.LFB1443:
	.loc 1 242 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 243 3 view .LVU147
	.loc 1 252 5 view .LVU148
	.loc 1 253 5 view .LVU149
	.loc 1 255 5 view .LVU150
	.loc 1 257 5 view .LVU151
	.loc 1 260 5 view .LVU152
	.loc 1 257 24 is_stmt 0 view .LVU153
	vldr.32	s14, [r0, #12]	@ int
	.loc 1 256 20 view .LVU154
	vldr.32	s13, .L37
	.loc 1 255 24 view .LVU155
	vldr.32	s15, [r0, #28]	@ int
	.loc 1 257 24 view .LVU156
	vcvt.f32.u32	s14, s14
	.loc 1 255 24 view .LVU157
	vcvt.f32.u32	s15, s15
	.loc 1 258 20 view .LVU158
	vdiv.f32	s0, s14, s13
	.loc 1 256 20 view .LVU159
	vdiv.f32	s12, s15, s13
	.loc 1 257 20 view .LVU160
	vldr.32	s13, .L37+4
	.loc 1 260 13 view .LVU161
	vldr.32	s14, .L37+8
	.loc 1 257 20 view .LVU162
	vmul.f32	s0, s0, s13
	.loc 1 262 39 view .LVU163
	vmov.f32	s15, #1.0e+0
	.loc 1 260 13 view .LVU164
	vfma.f32	s0, s12, s14
.LVL25:
	.loc 1 262 5 is_stmt 1 view .LVU165
	.loc 1 262 39 is_stmt 0 view .LVU166
	vcmpe.f32	s0, s15
	vmrs	APSR_nzcv, FPSCR
	.loc 1 263 13 view .LVU167
	itte	le
	vldrle.32	s15, .L37+12
	vmulle.f32	s0, s0, s15
.LVL26:
	.loc 1 263 13 view .LVU168
	vldrgt.32	s0, .L37+12
.LVL27:
	.loc 1 263 5 is_stmt 1 view .LVU169
	.loc 1 267 3 view .LVU170
	.loc 1 268 1 is_stmt 0 view .LVU171
	bx	lr
.L38:
	.align	2
.L37:
	.word	1294082024
	.word	1184645120
	.word	1148846080
	.word	1120403456
	.cfi_endproc
.LFE1443:
	.size	MC_Perf_GetCPU_Load, .-MC_Perf_GetCPU_Load
	.section	.text.MC_Perf_GetMaxCPU_Load,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	MC_Perf_GetMaxCPU_Load
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	MC_Perf_GetMaxCPU_Load, %function
MC_Perf_GetMaxCPU_Load:
.LVL28:
.LFB1444:
	.loc 1 276 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 277 3 view .LVU173
	.loc 1 286 5 view .LVU174
	.loc 1 286 18 is_stmt 0 view .LVU175
	vldr.32	s14, [r0, #36]	@ int
	.loc 1 286 92 view .LVU176
	vldr.32	s13, .L42
	.loc 1 288 18 view .LVU177
	vldr.32	s15, [r0, #20]	@ int
	.loc 1 286 13 view .LVU178
	vldr.32	s0, .L42+4
	.loc 1 286 18 view .LVU179
	vcvt.f32.u32	s14, s14
	.loc 1 288 18 view .LVU180
	vcvt.f32.u32	s15, s15
	.loc 1 286 92 view .LVU181
	vdiv.f32	s11, s14, s13
	.loc 1 288 90 view .LVU182
	vdiv.f32	s12, s15, s13
	.loc 1 286 13 view .LVU183
	vldr.32	s13, .L42+8
	.loc 1 288 13 view .LVU184
	vldr.32	s14, .L42+12
	.loc 1 286 13 view .LVU185
	vfma.f32	s0, s11, s13
.LVL29:
	.loc 1 288 5 is_stmt 1 view .LVU186
	.loc 1 291 39 is_stmt 0 view .LVU187
	vmov.f32	s15, #1.0e+0
	.loc 1 288 13 view .LVU188
	vfma.f32	s0, s12, s14
.LVL30:
	.loc 1 291 5 is_stmt 1 view .LVU189
	.loc 1 291 39 is_stmt 0 view .LVU190
	vcmpe.f32	s0, s15
	vmrs	APSR_nzcv, FPSCR
	.loc 1 292 13 view .LVU191
	itte	le
	vldrle.32	s15, .L42+16
	vmulle.f32	s0, s0, s15
.LVL31:
	.loc 1 292 13 view .LVU192
	vldrgt.32	s0, .L42+16
.LVL32:
	.loc 1 292 5 is_stmt 1 view .LVU193
	.loc 1 296 3 view .LVU194
	.loc 1 297 1 is_stmt 0 view .LVU195
	bx	lr
.L43:
	.align	2
.L42:
	.word	1294082024
	.word	0
	.word	1148846080
	.word	1184645120
	.word	1120403456
	.cfi_endproc
.LFE1444:
	.size	MC_Perf_GetMaxCPU_Load, .-MC_Perf_GetMaxCPU_Load
	.section	.text.MC_Perf_GetMinCPU_Load,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	MC_Perf_GetMinCPU_Load
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	MC_Perf_GetMinCPU_Load, %function
MC_Perf_GetMinCPU_Load:
.LVL33:
.LFB1445:
	.loc 1 305 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 306 3 view .LVU197
	.loc 1 315 5 view .LVU198
	.loc 1 315 69 is_stmt 0 view .LVU199
	ldr	r3, [r0, #32]
	.loc 1 315 8 view .LVU200
	adds	r2, r3, #1
	beq	.L45
	.loc 1 317 7 is_stmt 1 view .LVU201
	.loc 1 317 25 is_stmt 0 view .LVU202
	vmov	s15, r3	@ int
	.loc 1 317 99 view .LVU203
	vldr.32	s12, .L54
	.loc 1 320 67 view .LVU204
	ldr	r3, [r0, #16]
	.loc 1 317 20 view .LVU205
	vldr.32	s14, .L54+4
	vldr.32	s0, .L54+8
	.loc 1 317 25 view .LVU206
	vcvt.f32.u32	s15, s15
	.loc 1 320 8 view .LVU207
	adds	r1, r3, #1
	.loc 1 317 99 view .LVU208
	vdiv.f32	s13, s15, s12
	.loc 1 317 20 view .LVU209
	vfma.f32	s0, s13, s14
.LVL34:
	.loc 1 320 5 is_stmt 1 view .LVU210
	.loc 1 320 8 is_stmt 0 view .LVU211
	beq	.L46
.LVL35:
.L48:
	.loc 1 322 7 is_stmt 1 view .LVU212
	.loc 1 322 25 is_stmt 0 view .LVU213
	vmov	s15, r3	@ int
	.loc 1 322 97 view .LVU214
	vldr.32	s12, .L54
	.loc 1 322 20 view .LVU215
	vldr.32	s14, .L54+12
	.loc 1 322 25 view .LVU216
	vcvt.f32.u32	s15, s15
	.loc 1 322 97 view .LVU217
	vdiv.f32	s13, s15, s12
	.loc 1 322 20 view .LVU218
	vfma.f32	s0, s13, s14
.LVL36:
.L46:
	.loc 1 325 5 is_stmt 1 view .LVU219
	.loc 1 325 49 is_stmt 0 view .LVU220
	vmov.f32	s15, #1.0e+0
	vcmpe.f32	s0, s15
	vmrs	APSR_nzcv, FPSCR
	.loc 1 326 18 view .LVU221
	itte	le
	vldrle.32	s15, .L54+16
	vmulle.f32	s0, s0, s15
.LVL37:
	.loc 1 326 18 view .LVU222
	vldrgt.32	s0, .L54+16
	.loc 1 326 5 is_stmt 1 view .LVU223
	.loc 1 330 3 view .LVU224
	.loc 1 330 10 is_stmt 0 view .LVU225
	bx	lr
.LVL38:
.L45:
	.loc 1 320 5 is_stmt 1 view .LVU226
	.loc 1 320 67 is_stmt 0 view .LVU227
	ldr	r3, [r0, #16]
	.loc 1 306 11 view .LVU228
	vldr.32	s0, .L54+8
	.loc 1 320 8 view .LVU229
	adds	r2, r3, #1
	bne	.L48
	.loc 1 331 1 view .LVU230
	bx	lr
.L55:
	.align	2
.L54:
	.word	1294082024
	.word	1148846080
	.word	0
	.word	1184645120
	.word	1120403456
	.cfi_endproc
.LFE1445:
	.size	MC_Perf_GetMinCPU_Load, .-MC_Perf_GetMinCPU_Load
	.text
.Letext0:
	.file 2 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "Drivers/CMSIS/Include/core_cm4.h"
	.file 5 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_ll_tim.h"
	.file 6 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_ll_usart.h"
	.file 7 "Drivers/STM32G4xx_HAL_Driver/Inc/stm32g4xx_ll_dma.h"
	.file 8 "Inc/mc_type.h"
	.file 9 "Inc/mc_perf.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x76e
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF80
	.byte	0xc
	.4byte	.LASF81
	.4byte	.LASF82
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x2b
	.byte	0x18
	.4byte	0x4a
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x39
	.byte	0x19
	.4byte	0x64
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x2
	.byte	0x4f
	.byte	0x19
	.4byte	0x7e
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
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x3e
	.uleb128 0x5
	.4byte	0x9a
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x24
	.byte	0x14
	.4byte	0x58
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x72
	.uleb128 0x6
	.4byte	0xb7
	.uleb128 0x5
	.4byte	0xc3
	.uleb128 0x5
	.4byte	0xb7
	.uleb128 0x7
	.4byte	0xb7
	.4byte	0xe2
	.uleb128 0x8
	.4byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x5c
	.byte	0x4
	.2byte	0x383
	.byte	0x9
	.4byte	0x25d
	.uleb128 0xa
	.4byte	.LASF16
	.byte	0x4
	.2byte	0x385
	.byte	0x12
	.4byte	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF17
	.byte	0x4
	.2byte	0x386
	.byte	0x12
	.4byte	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0x4
	.2byte	0x387
	.byte	0x12
	.4byte	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x4
	.2byte	0x388
	.byte	0x12
	.4byte	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x4
	.2byte	0x389
	.byte	0x12
	.4byte	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x4
	.2byte	0x38a
	.byte	0x12
	.4byte	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x4
	.2byte	0x38b
	.byte	0x12
	.4byte	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x4
	.2byte	0x38c
	.byte	0x12
	.4byte	0xc8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x4
	.2byte	0x38d
	.byte	0x12
	.4byte	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x4
	.2byte	0x38e
	.byte	0x12
	.4byte	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x4
	.2byte	0x38f
	.byte	0x12
	.4byte	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x4
	.2byte	0x390
	.byte	0x12
	.4byte	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x4
	.2byte	0x391
	.byte	0x12
	.4byte	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x4
	.2byte	0x392
	.byte	0x12
	.4byte	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x4
	.2byte	0x393
	.byte	0x12
	.4byte	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0x4
	.2byte	0x394
	.byte	0x12
	.4byte	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x4
	.2byte	0x395
	.byte	0x12
	.4byte	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x4
	.2byte	0x396
	.byte	0x12
	.4byte	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0x4
	.2byte	0x397
	.byte	0x12
	.4byte	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0x4
	.2byte	0x398
	.byte	0x12
	.4byte	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0x4
	.2byte	0x399
	.byte	0x12
	.4byte	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0x4
	.2byte	0x39a
	.byte	0x12
	.4byte	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0x4
	.2byte	0x39b
	.byte	0x12
	.4byte	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.byte	0
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x4
	.2byte	0x39c
	.byte	0x3
	.4byte	0xe2
	.uleb128 0x9
	.byte	0x10
	.byte	0x4
	.2byte	0x588
	.byte	0x9
	.4byte	0x2b5
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x4
	.2byte	0x58a
	.byte	0x12
	.4byte	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0x4
	.2byte	0x58b
	.byte	0x12
	.4byte	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0x4
	.2byte	0x58c
	.byte	0x12
	.4byte	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.4byte	.LASF43
	.byte	0x4
	.2byte	0x58d
	.byte	0x12
	.4byte	0xc3
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0x4
	.2byte	0x58e
	.byte	0x3
	.4byte	0x26a
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF45
	.uleb128 0x7
	.4byte	0xa6
	.4byte	0x2d9
	.uleb128 0x8
	.4byte	0x30
	.byte	0x9
	.byte	0
	.uleb128 0x5
	.4byte	0x2c9
	.uleb128 0xc
	.4byte	.LASF46
	.byte	0x5
	.byte	0x2d
	.byte	0x16
	.4byte	0x2d9
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
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0x5
	.byte	0x3c
	.byte	0x16
	.4byte	0x2d9
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
	.uleb128 0xc
	.4byte	.LASF48
	.byte	0x5
	.byte	0x4a
	.byte	0x16
	.4byte	0x2d9
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
	.uleb128 0xc
	.4byte	.LASF49
	.byte	0x5
	.byte	0x58
	.byte	0x16
	.4byte	0x2d9
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
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0x5
	.byte	0x66
	.byte	0x16
	.4byte	0x2d9
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
	.4byte	0xcd
	.4byte	0x361
	.uleb128 0x8
	.4byte	0x30
	.byte	0xb
	.byte	0
	.uleb128 0x5
	.4byte	0x351
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0x6
	.byte	0x2e
	.byte	0x17
	.4byte	0x361
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
	.4byte	0xa6
	.4byte	0x3b3
	.uleb128 0x8
	.4byte	0x30
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.4byte	0x3a3
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x7
	.byte	0x2f
	.byte	0x16
	.4byte	0x3b3
	.byte	0x6
	.byte	0x8
	.byte	0x1c
	.byte	0x30
	.byte	0x44
	.byte	0x58
	.byte	0x6c
	.uleb128 0x3
	.4byte	.LASF53
	.byte	0x8
	.byte	0x30
	.byte	0x19
	.4byte	0x29
	.uleb128 0xd
	.byte	0x7
	.byte	0x1
	.4byte	0x4a
	.byte	0x9
	.byte	0x17
	.byte	0x1
	.4byte	0x3f2
	.uleb128 0xe
	.4byte	.LASF54
	.byte	0
	.uleb128 0xe
	.4byte	.LASF55
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.byte	0x10
	.byte	0x9
	.byte	0x23
	.byte	0x9
	.4byte	0x438
	.uleb128 0x10
	.4byte	.LASF56
	.byte	0x9
	.byte	0x25
	.byte	0xf
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.4byte	.LASF57
	.byte	0x9
	.byte	0x26
	.byte	0xf
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.ascii	"min\000"
	.byte	0x9
	.byte	0x27
	.byte	0xf
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.ascii	"max\000"
	.byte	0x9
	.byte	0x28
	.byte	0xf
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x3
	.4byte	.LASF58
	.byte	0x9
	.byte	0x29
	.byte	0x3
	.4byte	0x3f2
	.uleb128 0xf
	.byte	0x28
	.byte	0x9
	.byte	0x2b
	.byte	0x9
	.4byte	0x47b
	.uleb128 0x10
	.4byte	.LASF59
	.byte	0x9
	.byte	0x2d
	.byte	0xc
	.4byte	0x47b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.4byte	.LASF60
	.byte	0x9
	.byte	0x2e
	.byte	0xf
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.4byte	.LASF61
	.byte	0x9
	.byte	0x2f
	.byte	0x13
	.4byte	0x482
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF62
	.uleb128 0x7
	.4byte	0x438
	.4byte	0x492
	.uleb128 0x8
	.4byte	0x30
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF63
	.byte	0x9
	.byte	0x30
	.byte	0x3
	.4byte	0x444
	.uleb128 0x5
	.4byte	0x492
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x130
	.byte	0x9
	.byte	0x1
	.4byte	0x3cb
	.4byte	.LFB1445
	.4byte	.LFE1445
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x4e7
	.uleb128 0x13
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x130
	.byte	0x38
	.4byte	0x4e7
	.byte	0x1
	.byte	0x50
	.uleb128 0x14
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x132
	.byte	0xb
	.4byte	0x3cb
	.4byte	.LLST19
	.4byte	.LVUS19
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.4byte	0x49e
	.uleb128 0x12
	.byte	0x1
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x113
	.byte	0x9
	.byte	0x1
	.4byte	0x3cb
	.4byte	.LFB1444
	.4byte	.LFE1444
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x531
	.uleb128 0x13
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x113
	.byte	0x38
	.4byte	0x4e7
	.byte	0x1
	.byte	0x50
	.uleb128 0x14
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x115
	.byte	0xb
	.4byte	0x3cb
	.4byte	.LLST18
	.4byte	.LVUS18
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.4byte	.LASF69
	.byte	0x1
	.byte	0xf1
	.byte	0x9
	.byte	0x1
	.4byte	0x3cb
	.4byte	.LFB1443
	.4byte	.LFE1443
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x59a
	.uleb128 0x17
	.4byte	.LASF66
	.byte	0x1
	.byte	0xf1
	.byte	0x35
	.4byte	0x4e7
	.byte	0x1
	.byte	0x50
	.uleb128 0x18
	.4byte	.LASF68
	.byte	0x1
	.byte	0xf3
	.byte	0xb
	.4byte	0x3cb
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0x18
	.4byte	.LASF70
	.byte	0x1
	.byte	0xfc
	.byte	0xd
	.4byte	0x3cb
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0x18
	.4byte	.LASF71
	.byte	0x1
	.byte	0xfd
	.byte	0xd
	.4byte	0x3cb
	.4byte	.LLST17
	.4byte	.LVUS17
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF75
	.byte	0x1
	.byte	0xb4
	.byte	0x6
	.byte	0x1
	.4byte	.LFB1442
	.4byte	.LFE1442
	.4byte	.LLST11
	.byte	0x1
	.4byte	0x600
	.uleb128 0x1a
	.4byte	.LASF66
	.byte	0x1
	.byte	0xb4
	.byte	0x30
	.4byte	0x600
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x17
	.4byte	.LASF72
	.byte	0x1
	.byte	0xb4
	.byte	0x41
	.4byte	0x9a
	.byte	0x1
	.byte	0x51
	.uleb128 0x18
	.4byte	.LASF73
	.byte	0x1
	.byte	0xbe
	.byte	0x14
	.4byte	0x606
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x18
	.4byte	.LASF74
	.byte	0x1
	.byte	0xbf
	.byte	0xe
	.4byte	0xb7
	.4byte	.LLST14
	.4byte	.LVUS14
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.4byte	0x492
	.uleb128 0x15
	.byte	0x4
	.4byte	0x438
	.uleb128 0x19
	.byte	0x1
	.4byte	.LASF76
	.byte	0x1
	.byte	0x76
	.byte	0x6
	.byte	0x1
	.4byte	.LFB1441
	.4byte	.LFE1441
	.4byte	.LLST7
	.byte	0x1
	.4byte	0x672
	.uleb128 0x1a
	.4byte	.LASF66
	.byte	0x1
	.byte	0x76
	.byte	0x2d
	.4byte	0x600
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x17
	.4byte	.LASF72
	.byte	0x1
	.byte	0x76
	.byte	0x3f
	.4byte	0x9a
	.byte	0x1
	.byte	0x51
	.uleb128 0x18
	.4byte	.LASF74
	.byte	0x1
	.byte	0x80
	.byte	0xe
	.4byte	0xb7
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x18
	.4byte	.LASF73
	.byte	0x1
	.byte	0x81
	.byte	0x14
	.4byte	0x606
	.4byte	.LLST10
	.4byte	.LVUS10
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF77
	.byte	0x1
	.byte	0x5e
	.byte	0x6
	.byte	0x1
	.4byte	.LFB1440
	.4byte	.LFE1440
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x6c3
	.uleb128 0x17
	.4byte	.LASF66
	.byte	0x1
	.byte	0x5e
	.byte	0x31
	.4byte	0x600
	.byte	0x1
	.byte	0x50
	.uleb128 0x1a
	.4byte	.LASF72
	.byte	0x1
	.byte	0x5e
	.byte	0x43
	.4byte	0x9a
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x18
	.4byte	.LASF56
	.byte	0x1
	.byte	0x6a
	.byte	0xe
	.4byte	0xb7
	.4byte	.LLST6
	.4byte	.LVUS6
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF78
	.byte	0x1
	.byte	0x40
	.byte	0x6
	.byte	0x1
	.4byte	.LFB1439
	.4byte	.LFE1439
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x726
	.uleb128 0x17
	.4byte	.LASF66
	.byte	0x1
	.byte	0x40
	.byte	0x26
	.4byte	0x600
	.byte	0x1
	.byte	0x50
	.uleb128 0x1a
	.4byte	.LASF79
	.byte	0x1
	.byte	0x40
	.byte	0x36
	.4byte	0x9a
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x1c
	.ascii	"i\000"
	.byte	0x1
	.byte	0x4a
	.byte	0xe
	.4byte	0x9a
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x18
	.4byte	.LASF73
	.byte	0x1
	.byte	0x4b
	.byte	0x15
	.4byte	0x606
	.4byte	.LLST4
	.4byte	.LVUS4
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF83
	.byte	0x1
	.byte	0x17
	.byte	0x6
	.byte	0x1
	.4byte	.LFB1438
	.4byte	.LFE1438
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x17
	.4byte	.LASF66
	.byte	0x1
	.byte	0x17
	.byte	0x2d
	.4byte	0x600
	.byte	0x1
	.byte	0x50
	.uleb128 0x1c
	.ascii	"i\000"
	.byte	0x1
	.byte	0x21
	.byte	0xc
	.4byte	0x9a
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x18
	.4byte	.LASF73
	.byte	0x1
	.byte	0x22
	.byte	0x13
	.4byte	0x606
	.4byte	.LLST1
	.4byte	.LVUS1
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
	.uleb128 0xa
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xa
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
	.uleb128 0x2
	.uleb128 0x6
	.uleb128 0x2137
	.uleb128 0x6
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
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LVUS19:
	.uleb128 .LVU198
	.uleb128 .LVU210
	.uleb128 .LVU210
	.uleb128 .LVU212
	.uleb128 .LVU219
	.uleb128 .LVU222
	.uleb128 .LVU226
	.uleb128 0
.LLST19:
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x2
	.byte	0x90
	.uleb128 0x40
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x2
	.byte	0x90
	.uleb128 0x40
	.4byte	.LVL38
	.4byte	.LFE1445
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	0
	.4byte	0
.LVUS18:
	.uleb128 .LVU174
	.uleb128 .LVU186
	.uleb128 .LVU186
	.uleb128 .LVU192
.LLST18:
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x2
	.byte	0x90
	.uleb128 0x40
	.4byte	0
	.4byte	0
.LVUS15:
	.uleb128 .LVU148
	.uleb128 .LVU165
	.uleb128 .LVU165
	.uleb128 .LVU168
.LLST15:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x2
	.byte	0x90
	.uleb128 0x40
	.4byte	0
	.4byte	0
.LVUS16:
	.uleb128 .LVU151
	.uleb128 0
.LLST16:
	.4byte	.LVL24
	.4byte	.LFE1443
	.2byte	0x18
	.byte	0x70
	.sleb128 28
	.byte	0x6
	.byte	0xf7
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x4d221fe8
	.byte	0x1b
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x447a0000
	.byte	0x1e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS17:
	.uleb128 .LVU152
	.uleb128 0
.LLST17:
	.4byte	.LVL24
	.4byte	.LFE1443
	.2byte	0x18
	.byte	0x70
	.sleb128 12
	.byte	0x6
	.byte	0xf7
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x4d221fe8
	.byte	0x1b
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x469c4000
	.byte	0x1e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LFB1442
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
	.4byte	.LFE1442
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS12:
	.uleb128 0
	.uleb128 .LVU132
	.uleb128 .LVU132
	.uleb128 0
.LLST12:
	.4byte	.LVL17
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL22
	.4byte	.LFE1442
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS13:
	.uleb128 .LVU118
	.uleb128 .LVU122
	.uleb128 .LVU122
	.uleb128 .LVU134
	.uleb128 .LVU134
	.uleb128 0
.LLST13:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0xa
	.byte	0x71
	.sleb128 0
	.byte	0x34
	.byte	0x24
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x8
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL23
	.2byte	0x3
	.byte	0x72
	.sleb128 8
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LFE1442
	.2byte	0x3
	.byte	0x70
	.sleb128 8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS14:
	.uleb128 .LVU115
	.uleb128 .LVU123
.LLST14:
	.4byte	.LVL18
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LFB1441
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
	.4byte	.LFE1441
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 0
	.uleb128 .LVU95
	.uleb128 .LVU95
	.uleb128 0
.LLST8:
	.4byte	.LVL11
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL16
	.4byte	.LFE1441
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 .LVU79
	.uleb128 .LVU84
.LLST9:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 .LVU80
	.uleb128 .LVU87
	.uleb128 .LVU87
	.uleb128 .LVU92
	.uleb128 .LVU92
	.uleb128 .LVU95
	.uleb128 .LVU95
	.uleb128 0
.LLST10:
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0xa
	.byte	0x71
	.sleb128 0
	.byte	0x34
	.byte	0x24
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x8
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x3
	.byte	0x72
	.sleb128 8
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0xa
	.byte	0x71
	.sleb128 0
	.byte	0x34
	.byte	0x24
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x8
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LFE1441
	.2byte	0xb
	.byte	0x71
	.sleb128 0
	.byte	0x34
	.byte	0x24
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x22
	.byte	0x23
	.uleb128 0x8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 0
	.uleb128 .LVU63
	.uleb128 .LVU63
	.uleb128 0
.LLST5:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL9
	.4byte	.LFE1440
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 .LVU67
	.uleb128 0
.LLST6:
	.4byte	.LVL10
	.4byte	.LFE1440
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU45
	.uleb128 .LVU45
	.uleb128 0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL5
	.4byte	.LFE1439
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 .LVU40
	.uleb128 .LVU49
	.uleb128 .LVU49
	.uleb128 .LVU55
	.uleb128 .LVU55
	.uleb128 0
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LFE1439
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU42
	.uleb128 .LVU45
.LLST4:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0xc
	.byte	0x71
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x34
	.byte	0x24
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 .LVU14
	.uleb128 .LVU23
	.uleb128 .LVU23
	.uleb128 .LVU30
	.uleb128 .LVU30
	.uleb128 0
.LLST0:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LFE1438
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 .LVU16
	.uleb128 .LVU25
	.uleb128 .LVU25
	.uleb128 0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x3
	.byte	0x70
	.sleb128 8
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LFE1438
	.2byte	0x3
	.byte	0x70
	.sleb128 24
	.byte	0x9f
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
	.4byte	.LFB1438
	.4byte	.LFE1438-.LFB1438
	.4byte	.LFB1439
	.4byte	.LFE1439-.LFB1439
	.4byte	.LFB1440
	.4byte	.LFE1440-.LFB1440
	.4byte	.LFB1441
	.4byte	.LFE1441-.LFB1441
	.4byte	.LFB1442
	.4byte	.LFE1442-.LFB1442
	.4byte	.LFB1443
	.4byte	.LFE1443-.LFB1443
	.4byte	.LFB1444
	.4byte	.LFE1444-.LFB1444
	.4byte	.LFB1445
	.4byte	.LFE1445-.LFB1445
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB1438
	.4byte	.LFE1438
	.4byte	.LFB1439
	.4byte	.LFE1439
	.4byte	.LFB1440
	.4byte	.LFE1440
	.4byte	.LFB1441
	.4byte	.LFE1441
	.4byte	.LFB1442
	.4byte	.LFE1442
	.4byte	.LFB1443
	.4byte	.LFE1443
	.4byte	.LFB1444
	.4byte	.LFE1444
	.4byte	.LFB1445
	.4byte	.LFE1445
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF0:
	.ascii	"float\000"
.LASF43:
	.ascii	"DEMCR\000"
.LASF49:
	.ascii	"SHIFT_TAB_CCxP\000"
.LASF79:
	.ascii	"bMotor\000"
.LASF53:
	.ascii	"float_t\000"
.LASF72:
	.ascii	"CodeSection\000"
.LASF4:
	.ascii	"short int\000"
.LASF23:
	.ascii	"PCSR\000"
.LASF81:
	.ascii	"Src/mc_perf.c\000"
.LASF61:
	.ascii	"MC_Perf_TraceLog\000"
.LASF69:
	.ascii	"MC_Perf_GetCPU_Load\000"
.LASF9:
	.ascii	"__uint32_t\000"
.LASF76:
	.ascii	"MC_Perf_Measure_Stop\000"
.LASF6:
	.ascii	"__uint16_t\000"
.LASF59:
	.ascii	"BG_Task_OnGoing\000"
.LASF18:
	.ascii	"CPICNT\000"
.LASF13:
	.ascii	"uint8_t\000"
.LASF42:
	.ascii	"DCRDR\000"
.LASF41:
	.ascii	"DCRSR\000"
.LASF63:
	.ascii	"MC_Perf_Handle_t\000"
.LASF15:
	.ascii	"uint32_t\000"
.LASF40:
	.ascii	"DHCSR\000"
.LASF65:
	.ascii	"MC_Perf_GetMaxCPU_Load\000"
.LASF70:
	.ascii	"MFT_cpu_loadM1\000"
.LASF29:
	.ascii	"MASK1\000"
.LASF11:
	.ascii	"long long int\000"
.LASF17:
	.ascii	"CYCCNT\000"
.LASF47:
	.ascii	"SHIFT_TAB_OCxx\000"
.LASF44:
	.ascii	"CoreDebug_Type\000"
.LASF8:
	.ascii	"long int\000"
.LASF5:
	.ascii	"__uint8_t\000"
.LASF26:
	.ascii	"FUNCTION0\000"
.LASF30:
	.ascii	"FUNCTION1\000"
.LASF34:
	.ascii	"FUNCTION2\000"
.LASF38:
	.ascii	"FUNCTION3\000"
.LASF45:
	.ascii	"long double\000"
.LASF75:
	.ascii	"MC_BG_Perf_Measure_Stop\000"
.LASF73:
	.ascii	"pHdl\000"
.LASF3:
	.ascii	"unsigned char\000"
.LASF60:
	.ascii	"AccHighFreqTasksCnt\000"
.LASF25:
	.ascii	"MASK0\000"
.LASF16:
	.ascii	"CTRL\000"
.LASF33:
	.ascii	"MASK2\000"
.LASF37:
	.ascii	"MASK3\000"
.LASF2:
	.ascii	"signed char\000"
.LASF12:
	.ascii	"long long unsigned int\000"
.LASF80:
	.ascii	"GNU C17 10.2.1 20201103 (release) -mcpu=cortex-m4 -"
	.ascii	"mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=hard -march=ar"
	.ascii	"mv7e-m+fp -g -gdwarf-2 -O3 -fdata-sections -ffuncti"
	.ascii	"on-sections\000"
.LASF71:
	.ascii	"HFT_cpu_loadM1\000"
.LASF1:
	.ascii	"unsigned int\000"
.LASF39:
	.ascii	"DWT_Type\000"
.LASF14:
	.ascii	"uint16_t\000"
.LASF64:
	.ascii	"MC_Perf_GetMinCPU_Load\000"
.LASF78:
	.ascii	"MC_Perf_Clear\000"
.LASF7:
	.ascii	"short unsigned int\000"
.LASF58:
	.ascii	"Perf_Handle_t\000"
.LASF68:
	.ascii	"cpuLoad\000"
.LASF24:
	.ascii	"COMP0\000"
.LASF28:
	.ascii	"COMP1\000"
.LASF32:
	.ascii	"COMP2\000"
.LASF36:
	.ascii	"COMP3\000"
.LASF57:
	.ascii	"DeltaTimeInCycle\000"
.LASF83:
	.ascii	"MC_Perf_Measure_Init\000"
.LASF62:
	.ascii	"_Bool\000"
.LASF55:
	.ascii	"MEASURE_TSK_MediumFrequencyTaskM1\000"
.LASF56:
	.ascii	"StartMeasure\000"
.LASF67:
	.ascii	"cpu_load_acc\000"
.LASF27:
	.ascii	"RESERVED0\000"
.LASF31:
	.ascii	"RESERVED1\000"
.LASF35:
	.ascii	"RESERVED2\000"
.LASF10:
	.ascii	"long unsigned int\000"
.LASF82:
	.ascii	"/home/joel/share/EVSPIN32G4_Shinano\000"
.LASF50:
	.ascii	"SHIFT_TAB_OISx\000"
.LASF48:
	.ascii	"SHIFT_TAB_ICxx\000"
.LASF20:
	.ascii	"SLEEPCNT\000"
.LASF21:
	.ascii	"LSUCNT\000"
.LASF74:
	.ascii	"StopMeasure\000"
.LASF77:
	.ascii	"MC_BG_Perf_Measure_Start\000"
.LASF19:
	.ascii	"EXCCNT\000"
.LASF66:
	.ascii	"pHandle\000"
.LASF51:
	.ascii	"USART_PRESCALER_TAB\000"
.LASF54:
	.ascii	"MEASURE_TSK_HighFrequencyTaskM1\000"
.LASF46:
	.ascii	"OFFSET_TAB_CCMRx\000"
.LASF22:
	.ascii	"FOLDCNT\000"
.LASF52:
	.ascii	"CHANNEL_OFFSET_TAB\000"
	.ident	"GCC: (GNU Arm Embedded Toolchain 10-2020-q4-major) 10.2.1 20201103 (release)"
