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
	.file	"sysmem.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text._sbrk,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	_sbrk
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	_sbrk, %function
_sbrk:
.LVL0:
.LFB0:
	.file 1 "Src/sysmem.c"
	.loc 1 54 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 55 3 view .LVU1
	.loc 1 56 3 view .LVU2
	.loc 1 57 3 view .LVU3
	.loc 1 58 3 view .LVU4
	.loc 1 59 3 view .LVU5
	.loc 1 54 1 is_stmt 0 view .LVU6
	push	{r4, lr}
.LCFI0:
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 63 12 view .LVU7
	ldr	r4, .L9
	.loc 1 58 18 view .LVU8
	ldr	r3, .L9+4
	ldr	r1, .L9+8
	.loc 1 63 12 view .LVU9
	ldr	r2, [r4]
	.loc 1 58 18 view .LVU10
	subs	r1, r3, r1
.LVL1:
	.loc 1 60 3 is_stmt 1 view .LVU11
	.loc 1 63 3 view .LVU12
	.loc 1 63 6 is_stmt 0 view .LVU13
	cbz	r2, .L7
	.loc 1 69 3 is_stmt 1 view .LVU14
	.loc 1 69 23 is_stmt 0 view .LVU15
	add	r0, r0, r2
.LVL2:
	.loc 1 69 6 view .LVU16
	cmp	r0, r1
	bhi	.L8
.L3:
	.loc 1 75 3 is_stmt 1 view .LVU17
.LVL3:
	.loc 1 76 3 view .LVU18
	.loc 1 76 19 is_stmt 0 view .LVU19
	str	r0, [r4]
.LVL4:
	.loc 1 78 3 is_stmt 1 view .LVU20
	.loc 1 79 1 is_stmt 0 view .LVU21
	mov	r0, r2
	pop	{r4, pc}
.LVL5:
.L7:
	.loc 1 65 5 is_stmt 1 view .LVU22
	.loc 1 65 21 is_stmt 0 view .LVU23
	ldr	r2, .L9+12
	str	r2, [r4]
	.loc 1 69 3 is_stmt 1 view .LVU24
	.loc 1 69 23 is_stmt 0 view .LVU25
	add	r0, r0, r2
.LVL6:
	.loc 1 69 6 view .LVU26
	cmp	r0, r1
	bls	.L3
.L8:
	.loc 1 71 5 is_stmt 1 view .LVU27
	bl	__errno
.LVL7:
	.loc 1 71 11 is_stmt 0 view .LVU28
	movs	r3, #12
	.loc 1 72 12 view .LVU29
	mov	r2, #-1
	.loc 1 71 11 view .LVU30
	str	r3, [r0]
	.loc 1 72 5 is_stmt 1 view .LVU31
	.loc 1 79 1 is_stmt 0 view .LVU32
	mov	r0, r2
	pop	{r4, pc}
.L10:
	.align	2
.L9:
	.word	.LANCHOR0
	.word	_estack
	.word	_Min_Stack_Size
	.word	_end
	.cfi_endproc
.LFE0:
	.size	_sbrk, .-_sbrk
	.section	.bss.__sbrk_heap_end,"aw",%nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	__sbrk_heap_end, %object
	.size	__sbrk_heap_end, 4
__sbrk_heap_end:
	.space	4
	.text
.Letext0:
	.file 2 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/lib/gcc/arm-none-eabi/10.2.1/include/stddef.h"
	.file 3 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/machine/_default_types.h"
	.file 4 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/sys/_stdint.h"
	.file 5 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/sys/errno.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x191
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF22
	.byte	0xc
	.4byte	.LASF23
	.4byte	.LASF24
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x8f
	.byte	0x1a
	.4byte	0x29
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF1
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.4byte	.LASF2
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x3
	.byte	0x2b
	.byte	0x18
	.4byte	0x64
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x4f
	.byte	0x19
	.4byte	0x8c
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x18
	.byte	0x13
	.4byte	0x58
	.uleb128 0x6
	.4byte	0xa3
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x30
	.byte	0x14
	.4byte	0x80
	.uleb128 0x6
	.4byte	0xb4
	.uleb128 0x7
	.4byte	.LASF25
	.byte	0x1
	.byte	0x1e
	.byte	0x11
	.4byte	0xd7
	.byte	0x5
	.byte	0x3
	.4byte	__sbrk_heap_end
	.uleb128 0x8
	.byte	0x4
	.4byte	0xa3
	.uleb128 0x9
	.byte	0x1
	.4byte	.LASF26
	.byte	0x1
	.byte	0x35
	.byte	0x7
	.byte	0x1
	.4byte	0x9a
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x180
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x1
	.byte	0x35
	.byte	0x17
	.4byte	0x30
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0xb
	.4byte	.LASF16
	.byte	0x1
	.byte	0x37
	.byte	0x12
	.4byte	0xa3
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF17
	.byte	0x1
	.byte	0x38
	.byte	0x12
	.4byte	0xa3
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.4byte	.LASF18
	.byte	0x1
	.byte	0x39
	.byte	0x13
	.4byte	0xb4
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.4byte	.LASF19
	.byte	0x1
	.byte	0x3a
	.byte	0x12
	.4byte	0xc0
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0xc
	.4byte	.LASF20
	.byte	0x1
	.byte	0x3b
	.byte	0x12
	.4byte	0x180
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0xc
	.4byte	.LASF21
	.byte	0x1
	.byte	0x3c
	.byte	0xc
	.4byte	0xd7
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0xd
	.4byte	.LVL7
	.4byte	0x186
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xaf
	.uleb128 0xe
	.byte	0x1
	.byte	0x1
	.4byte	.LASF28
	.4byte	.LASF28
	.byte	0x5
	.byte	0xf
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
	.uleb128 0x8
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
	.uleb128 0xe
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0x2
	.uleb128 0x6
	.uleb128 0x2137
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
.LLST0:
	.4byte	.LFB0
	.4byte	.LCFI0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI0
	.4byte	.LFE0
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU16
	.uleb128 .LVU16
	.uleb128 .LVU22
	.uleb128 .LVU22
	.uleb128 .LVU26
	.uleb128 .LVU26
	.uleb128 0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL2
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
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 .LVU11
	.uleb128 .LVU28
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL7-1
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU18
	.uleb128 .LVU20
.LLST4:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x5
	.byte	0x3
	.4byte	__sbrk_heap_end
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF1:
	.ascii	"long long int\000"
.LASF8:
	.ascii	"short unsigned int\000"
.LASF17:
	.ascii	"_estack\000"
.LASF0:
	.ascii	"unsigned int\000"
.LASF21:
	.ascii	"prev_heap_end\000"
.LASF20:
	.ascii	"max_heap\000"
.LASF10:
	.ascii	"__uint32_t\000"
.LASF4:
	.ascii	"ptrdiff_t\000"
.LASF24:
	.ascii	"/home/joel/share/EVSPIN32G4_Shinano\000"
.LASF11:
	.ascii	"long unsigned int\000"
.LASF12:
	.ascii	"long long unsigned int\000"
.LASF5:
	.ascii	"__uint8_t\000"
.LASF18:
	.ascii	"_Min_Stack_Size\000"
.LASF22:
	.ascii	"GNU C17 10.2.1 20201103 (release) -mcpu=cortex-m4 -"
	.ascii	"mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=hard -march=ar"
	.ascii	"mv7e-m+fp -g -gdwarf-2 -O3 -fdata-sections -ffuncti"
	.ascii	"on-sections\000"
.LASF14:
	.ascii	"uint8_t\000"
.LASF6:
	.ascii	"unsigned char\000"
.LASF27:
	.ascii	"incr\000"
.LASF13:
	.ascii	"char\000"
.LASF25:
	.ascii	"__sbrk_heap_end\000"
.LASF15:
	.ascii	"uint32_t\000"
.LASF9:
	.ascii	"long int\000"
.LASF16:
	.ascii	"_end\000"
.LASF28:
	.ascii	"__errno\000"
.LASF3:
	.ascii	"signed char\000"
.LASF26:
	.ascii	"_sbrk\000"
.LASF2:
	.ascii	"long double\000"
.LASF19:
	.ascii	"stack_limit\000"
.LASF7:
	.ascii	"short int\000"
.LASF23:
	.ascii	"Src/sysmem.c\000"
	.ident	"GCC: (GNU Arm Embedded Toolchain 10-2020-q4-major) 10.2.1 20201103 (release)"
