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
	.file	"list.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.vListInitialise,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	vListInitialise
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	vListInitialise, %function
vListInitialise:
.LVL0:
.LFB5:
	.file 1 "Middlewares/Third_Party/FreeRTOS/Source/list.c"
	.loc 1 38 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 42 2 view .LVU1
	.loc 1 42 37 is_stmt 0 view .LVU2
	add	r3, r0, #8
	.loc 1 46 30 view .LVU3
	mov	r1, #-1
	.loc 1 53 26 view .LVU4
	movs	r2, #0
	.loc 1 46 30 view .LVU5
	strd	r3, r1, [r0, #4]
	.loc 1 50 2 is_stmt 1 view .LVU6
	.loc 1 51 30 is_stmt 0 view .LVU7
	strd	r3, r3, [r0, #12]
	.loc 1 53 2 is_stmt 1 view .LVU8
	.loc 1 53 26 is_stmt 0 view .LVU9
	str	r2, [r0]
	.loc 1 57 48 is_stmt 1 view .LVU10
	.loc 1 58 48 view .LVU11
	.loc 1 59 1 is_stmt 0 view .LVU12
	bx	lr
	.cfi_endproc
.LFE5:
	.size	vListInitialise, .-vListInitialise
	.section	.text.vListInitialiseItem,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	vListInitialiseItem
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	vListInitialiseItem, %function
vListInitialiseItem:
.LVL1:
.LFB6:
	.loc 1 63 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 65 2 view .LVU14
	.loc 1 65 22 is_stmt 0 view .LVU15
	movs	r3, #0
	str	r3, [r0, #16]
	.loc 1 69 57 is_stmt 1 view .LVU16
	.loc 1 70 58 view .LVU17
	.loc 1 71 1 is_stmt 0 view .LVU18
	bx	lr
	.cfi_endproc
.LFE6:
	.size	vListInitialiseItem, .-vListInitialiseItem
	.section	.text.vListInsertEnd,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	vListInsertEnd
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	vListInsertEnd, %function
vListInsertEnd:
.LVL2:
.LFB7:
	.loc 1 75 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 76 1 view .LVU20
	.loc 1 76 20 is_stmt 0 view .LVU21
	ldr	r3, [r0, #4]
.LVL3:
	.loc 1 81 35 is_stmt 1 view .LVU22
	.loc 1 82 47 view .LVU23
	.loc 1 87 2 view .LVU24
	.loc 1 88 37 is_stmt 0 view .LVU25
	ldr	r2, [r3, #8]
	.loc 1 88 28 view .LVU26
	str	r2, [r1, #8]
	.loc 1 99 10 view .LVU27
	ldr	r2, [r0]
	.loc 1 75 1 view .LVU28
	push	{r4}
.LCFI0:
	.cfi_def_cfa_offset 4
	.cfi_offset 4, -4
	.loc 1 93 30 view .LVU29
	ldr	r4, [r3, #8]
	.loc 1 87 24 view .LVU30
	str	r3, [r1, #4]
	.loc 1 88 2 is_stmt 1 view .LVU31
	.loc 1 91 25 view .LVU32
	.loc 1 93 2 view .LVU33
	.loc 1 99 29 is_stmt 0 view .LVU34
	adds	r2, r2, #1
	.loc 1 93 30 view .LVU35
	str	r1, [r4, #4]
	.loc 1 94 2 is_stmt 1 view .LVU36
	.loc 1 94 22 is_stmt 0 view .LVU37
	str	r1, [r3, #8]
	.loc 1 97 2 is_stmt 1 view .LVU38
	.loc 1 100 1 is_stmt 0 view .LVU39
	ldr	r4, [sp], #4
.LCFI1:
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 97 29 view .LVU40
	str	r0, [r1, #16]
	.loc 1 99 2 is_stmt 1 view .LVU41
	.loc 1 99 29 is_stmt 0 view .LVU42
	str	r2, [r0]
	.loc 1 100 1 view .LVU43
	bx	lr
	.cfi_endproc
.LFE7:
	.size	vListInsertEnd, .-vListInsertEnd
	.section	.text.vListInsert,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	vListInsert
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	vListInsert, %function
vListInsert:
.LVL4:
.LFB8:
	.loc 1 104 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 105 1 view .LVU45
	.loc 1 106 1 view .LVU46
	.loc 1 104 1 is_stmt 0 view .LVU47
	push	{r4, r5}
.LCFI2:
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 5, -4
	.loc 1 106 18 view .LVU48
	ldr	r5, [r1]
.LVL5:
	.loc 1 111 35 is_stmt 1 view .LVU49
	.loc 1 112 47 view .LVU50
	.loc 1 122 2 view .LVU51
	.loc 1 122 4 is_stmt 0 view .LVU52
	adds	r3, r5, #1
	beq	.L12
	.loc 1 150 3 is_stmt 1 view .LVU53
	.loc 1 150 19 is_stmt 0 view .LVU54
	add	r3, r0, #8
.LVL6:
.L9:
	.loc 1 150 61 is_stmt 1 discriminator 1 view .LVU55
	mov	r4, r3
	.loc 1 150 71 is_stmt 0 discriminator 1 view .LVU56
	ldr	r3, [r3, #4]
.LVL7:
	.loc 1 150 3 discriminator 1 view .LVU57
	ldr	r2, [r3]
	cmp	r2, r5
	bls	.L9
.L8:
	.loc 1 157 2 is_stmt 1 view .LVU58
	.loc 1 166 10 is_stmt 0 view .LVU59
	ldr	r2, [r0]
	.loc 1 157 24 view .LVU60
	str	r3, [r1, #4]
	.loc 1 158 2 is_stmt 1 view .LVU61
	.loc 1 166 29 is_stmt 0 view .LVU62
	adds	r2, r2, #1
	.loc 1 158 36 view .LVU63
	str	r1, [r3, #8]
	.loc 1 159 2 is_stmt 1 view .LVU64
	.loc 1 159 28 is_stmt 0 view .LVU65
	str	r4, [r1, #8]
	.loc 1 160 2 is_stmt 1 view .LVU66
	.loc 1 160 21 is_stmt 0 view .LVU67
	str	r1, [r4, #4]
	.loc 1 164 2 is_stmt 1 view .LVU68
	.loc 1 164 29 is_stmt 0 view .LVU69
	str	r0, [r1, #16]
	.loc 1 166 2 is_stmt 1 view .LVU70
	.loc 1 167 1 is_stmt 0 view .LVU71
	pop	{r4, r5}
.LCFI3:
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL8:
	.loc 1 166 29 view .LVU72
	str	r2, [r0]
	.loc 1 167 1 view .LVU73
	bx	lr
.LVL9:
.L12:
.LCFI4:
	.cfi_restore_state
	.loc 1 124 3 is_stmt 1 view .LVU74
	.loc 1 124 14 is_stmt 0 view .LVU75
	ldr	r4, [r0, #16]
.LVL10:
	.loc 1 157 36 view .LVU76
	ldr	r3, [r4, #4]
	b	.L8
	.cfi_endproc
.LFE8:
	.size	vListInsert, .-vListInsert
	.section	.text.uxListRemove,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	uxListRemove
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	uxListRemove, %function
uxListRemove:
.LVL11:
.LFB9:
	.loc 1 171 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 174 1 view .LVU78
	.loc 1 174 16 is_stmt 0 view .LVU79
	ldr	r3, [r0, #16]
.LVL12:
	.loc 1 176 2 is_stmt 1 view .LVU80
	.loc 1 171 1 is_stmt 0 view .LVU81
	push	{r4}
.LCFI5:
	.cfi_def_cfa_offset 4
	.cfi_offset 4, -4
	.loc 1 176 53 view .LVU82
	ldrd	r1, r2, [r0, #4]
	.loc 1 183 4 view .LVU83
	ldr	r4, [r3, #4]
	.loc 1 176 37 view .LVU84
	str	r2, [r1, #8]
	.loc 1 177 2 is_stmt 1 view .LVU85
	.loc 1 183 4 is_stmt 0 view .LVU86
	cmp	r4, r0
	.loc 1 177 37 view .LVU87
	str	r1, [r2, #4]
	.loc 1 180 25 is_stmt 1 view .LVU88
	.loc 1 183 2 view .LVU89
	.loc 1 185 3 view .LVU90
	.loc 1 185 19 is_stmt 0 view .LVU91
	it	eq
	streq	r2, [r3, #4]
	.loc 1 189 27 is_stmt 1 view .LVU92
	.loc 1 192 2 view .LVU93
	.loc 1 193 10 is_stmt 0 view .LVU94
	ldr	r2, [r3]
	.loc 1 196 1 view .LVU95
	ldr	r4, [sp], #4
.LCFI6:
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 192 30 view .LVU96
	movs	r1, #0
	.loc 1 193 29 view .LVU97
	subs	r2, r2, #1
	.loc 1 192 30 view .LVU98
	str	r1, [r0, #16]
	.loc 1 193 2 is_stmt 1 view .LVU99
	.loc 1 193 29 is_stmt 0 view .LVU100
	str	r2, [r3]
	.loc 1 195 2 is_stmt 1 view .LVU101
	.loc 1 195 15 is_stmt 0 view .LVU102
	ldr	r0, [r3]
.LVL13:
	.loc 1 196 1 view .LVU103
	bx	lr
	.cfi_endproc
.LFE9:
	.size	uxListRemove, .-uxListRemove
	.text
.Letext0:
	.file 2 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F/portmacro.h"
	.file 5 "Middlewares/Third_Party/FreeRTOS/Source/include/list.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x30d
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF37
	.byte	0xc
	.4byte	.LASF38
	.4byte	.LASF39
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x2
	.byte	0x4f
	.byte	0x19
	.4byte	0x74
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x68
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x4
	.byte	0x39
	.byte	0x17
	.4byte	0x74
	.uleb128 0x6
	.4byte	0x97
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x4
	.byte	0x3f
	.byte	0x13
	.4byte	0x8b
	.uleb128 0x7
	.4byte	0xa8
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x14
	.byte	0x5
	.byte	0x8c
	.byte	0x8
	.4byte	0x112
	.uleb128 0x9
	.4byte	.LASF15
	.byte	0x5
	.byte	0x8f
	.byte	0x21
	.4byte	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x5
	.byte	0x90
	.byte	0x2a
	.4byte	0x112
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x5
	.byte	0x91
	.byte	0x2a
	.4byte	0x112
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x5
	.byte	0x92
	.byte	0x9
	.4byte	0x82
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x5
	.byte	0x93
	.byte	0x25
	.4byte	0x153
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0xb9
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x14
	.byte	0x5
	.byte	0xa4
	.byte	0x10
	.4byte	0x153
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x5
	.byte	0xa7
	.byte	0x17
	.4byte	0xa3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x5
	.byte	0xa8
	.byte	0x23
	.4byte	0x1ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF24
	.byte	0x5
	.byte	0xa9
	.byte	0x11
	.4byte	0x1a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x118
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0x5
	.byte	0x96
	.byte	0x1b
	.4byte	0xb9
	.uleb128 0x8
	.4byte	.LASF26
	.byte	0xc
	.byte	0x5
	.byte	0x98
	.byte	0x8
	.4byte	0x1a0
	.uleb128 0x9
	.4byte	.LASF15
	.byte	0x5
	.byte	0x9b
	.byte	0x21
	.4byte	0xa8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x5
	.byte	0x9c
	.byte	0x2a
	.4byte	0x112
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x5
	.byte	0x9d
	.byte	0x2a
	.4byte	0x112
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF27
	.byte	0x5
	.byte	0x9f
	.byte	0x20
	.4byte	0x165
	.uleb128 0xa
	.byte	0x4
	.4byte	0x159
	.uleb128 0x7
	.4byte	0x1ac
	.uleb128 0x4
	.4byte	.LASF28
	.byte	0x5
	.byte	0xab
	.byte	0x3
	.4byte	0x118
	.uleb128 0xb
	.byte	0x1
	.4byte	.LASF40
	.byte	0x1
	.byte	0xaa
	.byte	0xd
	.byte	0x1
	.4byte	0x97
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LLST5
	.byte	0x1
	.4byte	0x20b
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x1
	.byte	0xaa
	.byte	0x2e
	.4byte	0x1b2
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0xd
	.4byte	.LASF29
	.byte	0x1
	.byte	0xae
	.byte	0x10
	.4byte	0x211
	.4byte	.LLST7
	.4byte	.LVUS7
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x1b7
	.uleb128 0x7
	.4byte	0x20b
	.uleb128 0xe
	.byte	0x1
	.4byte	.LASF33
	.byte	0x1
	.byte	0x67
	.byte	0x6
	.byte	0x1
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LLST2
	.byte	0x1
	.4byte	0x276
	.uleb128 0xf
	.4byte	.LASF29
	.byte	0x1
	.byte	0x67
	.byte	0x22
	.4byte	0x211
	.byte	0x1
	.byte	0x50
	.uleb128 0xf
	.4byte	.LASF30
	.byte	0x1
	.byte	0x67
	.byte	0x3d
	.4byte	0x1b2
	.byte	0x1
	.byte	0x51
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0x1
	.byte	0x69
	.byte	0xd
	.4byte	0x1ac
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0xd
	.4byte	.LASF32
	.byte	0x1
	.byte	0x6a
	.byte	0x12
	.4byte	0xb4
	.4byte	.LLST4
	.4byte	.LVUS4
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.4byte	.LASF34
	.byte	0x1
	.byte	0x4a
	.byte	0x6
	.byte	0x1
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x2c2
	.uleb128 0xf
	.4byte	.LASF29
	.byte	0x1
	.byte	0x4a
	.byte	0x25
	.4byte	0x211
	.byte	0x1
	.byte	0x50
	.uleb128 0xf
	.4byte	.LASF30
	.byte	0x1
	.byte	0x4a
	.byte	0x40
	.4byte	0x1b2
	.byte	0x1
	.byte	0x51
	.uleb128 0xd
	.4byte	.LASF23
	.byte	0x1
	.byte	0x4c
	.byte	0x14
	.4byte	0x1b2
	.4byte	.LLST1
	.4byte	.LVUS1
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF35
	.byte	0x1
	.byte	0x3e
	.byte	0x6
	.byte	0x1
	.4byte	.LFB6
	.4byte	.LFE6
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x2eb
	.uleb128 0xf
	.4byte	.LASF36
	.byte	0x1
	.byte	0x3e
	.byte	0x2e
	.4byte	0x1b2
	.byte	0x1
	.byte	0x50
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF42
	.byte	0x1
	.byte	0x25
	.byte	0x6
	.byte	0x1
	.4byte	.LFB5
	.4byte	.LFE5
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF29
	.byte	0x1
	.byte	0x25
	.byte	0x26
	.4byte	0x211
	.byte	0x1
	.byte	0x50
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xc
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
	.uleb128 0x2
	.uleb128 0x6
	.uleb128 0x2137
	.uleb128 0x6
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
	.uleb128 0xf
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
	.uleb128 0x10
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
.LLST5:
	.4byte	.LFB9
	.4byte	.LCFI5
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI5
	.4byte	.LCFI6
	.2byte	0x2
	.byte	0x7d
	.sleb128 4
	.4byte	.LCFI6
	.4byte	.LFE9
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 0
	.uleb128 .LVU103
	.uleb128 .LVU103
	.uleb128 0
.LLST6:
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL13
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 .LVU80
	.uleb128 0
.LLST7:
	.4byte	.LVL12
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LFB8
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
	.4byte	.LFE8
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 .LVU55
	.uleb128 .LVU57
	.uleb128 .LVU57
	.uleb128 .LVU72
	.uleb128 .LVU72
	.uleb128 .LVU74
	.uleb128 .LVU76
	.uleb128 0
.LLST3:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x71
	.sleb128 8
	.4byte	.LVL10
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU49
	.uleb128 .LVU72
	.uleb128 .LVU72
	.uleb128 .LVU74
	.uleb128 .LVU74
	.uleb128 0
.LLST4:
	.4byte	.LVL5
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LVL9
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LFB7
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
	.4byte	.LFE7
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 .LVU22
	.uleb128 0
.LLST1:
	.4byte	.LVL3
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x53
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
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF14:
	.ascii	"TickType_t\000"
.LASF25:
	.ascii	"ListItem_t\000"
.LASF38:
	.ascii	"Middlewares/Third_Party/FreeRTOS/Source/list.c\000"
.LASF27:
	.ascii	"MiniListItem_t\000"
.LASF15:
	.ascii	"xItemValue\000"
.LASF24:
	.ascii	"xListEnd\000"
.LASF18:
	.ascii	"pvOwner\000"
.LASF20:
	.ascii	"xLIST_ITEM\000"
.LASF19:
	.ascii	"pvContainer\000"
.LASF4:
	.ascii	"unsigned char\000"
.LASF8:
	.ascii	"long unsigned int\000"
.LASF41:
	.ascii	"pxItemToRemove\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF35:
	.ascii	"vListInitialiseItem\000"
.LASF28:
	.ascii	"List_t\000"
.LASF11:
	.ascii	"__uint32_t\000"
.LASF22:
	.ascii	"uxNumberOfItems\000"
.LASF34:
	.ascii	"vListInsertEnd\000"
.LASF16:
	.ascii	"pxNext\000"
.LASF0:
	.ascii	"unsigned int\000"
.LASF42:
	.ascii	"vListInitialise\000"
.LASF32:
	.ascii	"xValueOfInsertion\000"
.LASF9:
	.ascii	"long long unsigned int\000"
.LASF36:
	.ascii	"pxItem\000"
.LASF13:
	.ascii	"UBaseType_t\000"
.LASF37:
	.ascii	"GNU C17 10.2.1 20201103 (release) -mcpu=cortex-m4 -"
	.ascii	"mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=hard -march=ar"
	.ascii	"mv7e-m+fp -g -gdwarf-2 -O3 -fdata-sections -ffuncti"
	.ascii	"on-sections\000"
.LASF1:
	.ascii	"long long int\000"
.LASF10:
	.ascii	"char\000"
.LASF31:
	.ascii	"pxIterator\000"
.LASF5:
	.ascii	"short int\000"
.LASF23:
	.ascii	"pxIndex\000"
.LASF17:
	.ascii	"pxPrevious\000"
.LASF12:
	.ascii	"uint32_t\000"
.LASF7:
	.ascii	"long int\000"
.LASF2:
	.ascii	"long double\000"
.LASF26:
	.ascii	"xMINI_LIST_ITEM\000"
.LASF3:
	.ascii	"signed char\000"
.LASF29:
	.ascii	"pxList\000"
.LASF21:
	.ascii	"xLIST\000"
.LASF40:
	.ascii	"uxListRemove\000"
.LASF30:
	.ascii	"pxNewListItem\000"
.LASF33:
	.ascii	"vListInsert\000"
.LASF39:
	.ascii	"/home/joel/share/EVSPIN32G4_Shinano\000"
	.ident	"GCC: (GNU Arm Embedded Toolchain 10-2020-q4-major) 10.2.1 20201103 (release)"
