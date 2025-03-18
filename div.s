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
	.file	"div.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.global	__aeabi_ldivmod
	.section	.text.test_div64,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	test_div64
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	test_div64, %function
test_div64:
.LVL0:
.LFB0:
	.file 1 "Src/div.c"
	.loc 1 3 42 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 4 5 view .LVU1
	.loc 1 3 42 is_stmt 0 view .LVU2
	push	{r3, lr}
.LCFI0:
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 1 4 14 view .LVU3
	bl	__aeabi_ldivmod
.LVL1:
	.loc 1 5 1 view .LVU4
	pop	{r3, pc}
	.cfi_endproc
.LFE0:
	.size	test_div64, .-test_div64
	.global	__aeabi_uldivmod
	.section	.text.test_udiv64,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	test_udiv64
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	test_udiv64, %function
test_udiv64:
.LVL2:
.LFB1:
	.loc 1 7 46 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 8 5 view .LVU6
	.loc 1 7 46 is_stmt 0 view .LVU7
	push	{r3, lr}
.LCFI1:
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 1 8 14 view .LVU8
	bl	__aeabi_uldivmod
.LVL3:
	.loc 1 9 1 view .LVU9
	pop	{r3, pc}
	.cfi_endproc
.LFE1:
	.size	test_udiv64, .-test_udiv64
	.text
.Letext0:
	.file 2 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/sys/_stdint.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x14c
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF17
	.byte	0xc
	.4byte	.LASF18
	.4byte	.LASF19
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x2
	.byte	0x67
	.byte	0x18
	.4byte	0x66
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x2
	.byte	0x69
	.byte	0x19
	.4byte	0x29
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
	.byte	0x38
	.byte	0x13
	.4byte	0x5a
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x3c
	.byte	0x14
	.4byte	0x6d
	.uleb128 0x5
	.byte	0x1
	.4byte	.LASF13
	.byte	0x1
	.byte	0x7
	.byte	0xa
	.byte	0x1
	.4byte	0x93
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LLST3
	.byte	0x1
	.4byte	0xec
	.uleb128 0x6
	.ascii	"a\000"
	.byte	0x1
	.byte	0x7
	.byte	0x1f
	.4byte	0x93
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x6
	.ascii	"b\000"
	.byte	0x1
	.byte	0x7
	.byte	0x2b
	.4byte	0x93
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x7
	.4byte	.LVL3
	.4byte	0x139
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.4byte	.LASF14
	.byte	0x1
	.byte	0x3
	.byte	0x9
	.byte	0x1
	.4byte	0x87
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x139
	.uleb128 0x6
	.ascii	"a\000"
	.byte	0x1
	.byte	0x3
	.byte	0x1c
	.4byte	0x87
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x6
	.ascii	"b\000"
	.byte	0x1
	.byte	0x3
	.byte	0x27
	.4byte	0x87
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x7
	.4byte	.LVL1
	.4byte	0x144
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.byte	0x1
	.4byte	.LASF15
	.4byte	.LASF15
	.uleb128 0x8
	.byte	0x1
	.byte	0x1
	.4byte	.LASF16
	.4byte	.LASF16
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
	.uleb128 0x6
	.uleb128 0x5
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
	.uleb128 0x7
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST3:
	.4byte	.LFB1
	.4byte	.LCFI1
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI1
	.4byte	.LFE1
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 0
	.uleb128 .LVU9
	.uleb128 .LVU9
	.uleb128 0
.LLST4:
	.4byte	.LVL2
	.4byte	.LVL3-1
	.2byte	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL3-1
	.4byte	.LFE1
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0
	.uleb128 0x29
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 0
	.uleb128 .LVU9
	.uleb128 .LVU9
	.uleb128 0
.LLST5:
	.4byte	.LVL2
	.4byte	.LVL3-1
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL3-1
	.4byte	.LFE1
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x29
	.byte	0x9f
	.4byte	0
	.4byte	0
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
	.uleb128 .LVU4
	.uleb128 .LVU4
	.uleb128 0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL1-1
	.4byte	.LFE0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0
	.uleb128 0x29
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU4
	.uleb128 .LVU4
	.uleb128 0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.4byte	.LVL1-1
	.4byte	.LFE0
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x2
	.uleb128 0x29
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF7:
	.ascii	"long long int\000"
.LASF11:
	.ascii	"int64_t\000"
.LASF15:
	.ascii	"__aeabi_uldivmod\000"
.LASF12:
	.ascii	"uint64_t\000"
.LASF2:
	.ascii	"unsigned char\000"
.LASF6:
	.ascii	"long unsigned int\000"
.LASF4:
	.ascii	"short unsigned int\000"
.LASF8:
	.ascii	"__int64_t\000"
.LASF14:
	.ascii	"test_div64\000"
.LASF16:
	.ascii	"__aeabi_ldivmod\000"
.LASF10:
	.ascii	"unsigned int\000"
.LASF0:
	.ascii	"long long unsigned int\000"
.LASF17:
	.ascii	"GNU C17 10.2.1 20201103 (release) -mcpu=cortex-m4 -"
	.ascii	"mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=hard -march=ar"
	.ascii	"mv7e-m+fp -g -gdwarf-2 -O3 -fdata-sections -ffuncti"
	.ascii	"on-sections\000"
.LASF18:
	.ascii	"Src/div.c\000"
.LASF19:
	.ascii	"/home/joel/share/EVSPIN32G4_Shinano\000"
.LASF3:
	.ascii	"short int\000"
.LASF9:
	.ascii	"__uint64_t\000"
.LASF5:
	.ascii	"long int\000"
.LASF1:
	.ascii	"signed char\000"
.LASF13:
	.ascii	"test_udiv64\000"
	.ident	"GCC: (GNU Arm Embedded Toolchain 10-2020-q4-major) 10.2.1 20201103 (release)"
