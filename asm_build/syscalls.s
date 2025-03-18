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
	.file	"syscalls.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.initialise_monitor_handles,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	initialise_monitor_handles
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	initialise_monitor_handles, %function
initialise_monitor_handles:
.LFB25:
	.file 1 "Src/syscalls.c"
	.loc 1 45 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 46 1 view .LVU1
	bx	lr
	.cfi_endproc
.LFE25:
	.size	initialise_monitor_handles, .-initialise_monitor_handles
	.section	.text._getpid,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	_getpid
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	_getpid, %function
_getpid:
.LFB26:
	.loc 1 49 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 50 3 view .LVU3
	.loc 1 51 1 is_stmt 0 view .LVU4
	movs	r0, #1
	bx	lr
	.cfi_endproc
.LFE26:
	.size	_getpid, .-_getpid
	.section	.text._kill,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	_kill
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	_kill, %function
_kill:
.LVL0:
.LFB27:
	.loc 1 54 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 55 3 view .LVU6
	.loc 1 56 3 view .LVU7
	.loc 1 57 3 view .LVU8
	.loc 1 54 1 is_stmt 0 view .LVU9
	push	{r3, lr}
.LCFI0:
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 1 57 3 view .LVU10
	bl	__errno
.LVL1:
	.loc 1 57 9 view .LVU11
	movs	r3, #22
	str	r3, [r0]
	.loc 1 58 3 is_stmt 1 view .LVU12
	.loc 1 59 1 is_stmt 0 view .LVU13
	mov	r0, #-1
	pop	{r3, pc}
	.cfi_endproc
.LFE27:
	.size	_kill, .-_kill
	.section	.text._exit,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	_exit
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	_exit, %function
_exit:
.LVL2:
.LFB28:
	.loc 1 62 1 is_stmt 1 view -0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 63 3 view .LVU15
.LBB4:
.LBI4:
	.loc 1 53 5 view .LVU16
.LBB5:
	.loc 1 55 3 view .LVU17
	.loc 1 56 3 view .LVU18
	.loc 1 57 3 view .LVU19
.LBE5:
.LBE4:
	.loc 1 62 1 is_stmt 0 view .LVU20
	push	{r3, lr}
.LCFI1:
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
.LBB7:
.LBB6:
	.loc 1 57 3 view .LVU21
	bl	__errno
.LVL3:
	.loc 1 57 9 view .LVU22
	movs	r3, #22
	str	r3, [r0]
	.loc 1 58 3 is_stmt 1 view .LVU23
.LVL4:
.L7:
	.loc 1 58 3 is_stmt 0 view .LVU24
.LBE6:
.LBE7:
	.loc 1 64 3 is_stmt 1 discriminator 1 view .LVU25
	.loc 1 64 14 discriminator 1 view .LVU26
	.loc 1 64 9 discriminator 1 view .LVU27
	.loc 1 64 3 discriminator 1 view .LVU28
	.loc 1 64 14 discriminator 1 view .LVU29
	.loc 1 64 9 discriminator 1 view .LVU30
	b	.L7
	.cfi_endproc
.LFE28:
	.size	_exit, .-_exit
	.section	.text._read,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	_read
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	_read, %function
_read:
.LVL5:
.LFB29:
	.loc 1 68 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 69 3 view .LVU32
	.loc 1 70 3 view .LVU33
	.loc 1 72 3 view .LVU34
	.loc 1 72 21 view .LVU35
	.loc 1 68 1 is_stmt 0 view .LVU36
	push	{r4, r5, r6, lr}
.LCFI2:
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 72 3 view .LVU37
	subs	r6, r2, #0
	ble	.L10
	mov	r4, r1
	adds	r5, r1, r6
.LVL6:
.L11:
	.loc 1 74 5 is_stmt 1 discriminator 3 view .LVU38
	.loc 1 74 14 is_stmt 0 discriminator 3 view .LVU39
	bl	__io_getchar
.LVL7:
	.loc 1 74 12 discriminator 3 view .LVU40
	strb	r0, [r4], #1
.LVL8:
	.loc 1 72 36 is_stmt 1 discriminator 3 view .LVU41
	.loc 1 72 21 discriminator 3 view .LVU42
	.loc 1 72 3 is_stmt 0 discriminator 3 view .LVU43
	cmp	r5, r4
	bne	.L11
.LVL9:
.L10:
	.loc 1 77 3 is_stmt 1 view .LVU44
	.loc 1 78 1 is_stmt 0 view .LVU45
	mov	r0, r6
	pop	{r4, r5, r6, pc}
	.loc 1 78 1 view .LVU46
	.cfi_endproc
.LFE29:
	.size	_read, .-_read
	.section	.text._write,"ax",%progbits
	.align	1
	.p2align 2,,3
	.weak	_write
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	_write, %function
_write:
.LVL10:
.LFB30:
	.loc 1 81 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 82 3 view .LVU48
	.loc 1 83 3 view .LVU49
	.loc 1 85 3 view .LVU50
	.loc 1 85 21 view .LVU51
	.loc 1 81 1 is_stmt 0 view .LVU52
	push	{r4, r5, r6, lr}
.LCFI3:
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 85 3 view .LVU53
	subs	r6, r2, #0
	ble	.L15
	mov	r4, r1
	adds	r5, r1, r6
.LVL11:
.L16:
	.loc 1 87 5 is_stmt 1 discriminator 3 view .LVU54
	.loc 1 87 5 is_stmt 0 discriminator 3 view .LVU55
	ldrb	r0, [r4], #1	@ zero_extendqisi2
.LVL12:
	.loc 1 87 5 discriminator 3 view .LVU56
	bl	__io_putchar
.LVL13:
	.loc 1 85 36 is_stmt 1 discriminator 3 view .LVU57
	.loc 1 85 21 discriminator 3 view .LVU58
	.loc 1 85 3 is_stmt 0 discriminator 3 view .LVU59
	cmp	r4, r5
	bne	.L16
.LVL14:
.L15:
	.loc 1 89 3 is_stmt 1 view .LVU60
	.loc 1 90 1 is_stmt 0 view .LVU61
	mov	r0, r6
	pop	{r4, r5, r6, pc}
	.loc 1 90 1 view .LVU62
	.cfi_endproc
.LFE30:
	.size	_write, .-_write
	.section	.text._close,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	_close
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	_close, %function
_close:
.LVL15:
.LFB31:
	.loc 1 93 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 94 3 view .LVU64
	.loc 1 95 3 view .LVU65
	.loc 1 96 1 is_stmt 0 view .LVU66
	mov	r0, #-1
.LVL16:
	.loc 1 96 1 view .LVU67
	bx	lr
	.cfi_endproc
.LFE31:
	.size	_close, .-_close
	.section	.text._fstat,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	_fstat
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	_fstat, %function
_fstat:
.LVL17:
.LFB32:
	.loc 1 100 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 101 3 view .LVU69
	.loc 1 102 3 view .LVU70
	.loc 1 102 15 is_stmt 0 view .LVU71
	mov	r3, #8192
	str	r3, [r1, #4]
	.loc 1 103 3 is_stmt 1 view .LVU72
	.loc 1 104 1 is_stmt 0 view .LVU73
	movs	r0, #0
.LVL18:
	.loc 1 104 1 view .LVU74
	bx	lr
	.cfi_endproc
.LFE32:
	.size	_fstat, .-_fstat
	.section	.text._isatty,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	_isatty
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	_isatty, %function
_isatty:
.LVL19:
.LFB33:
	.loc 1 107 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 108 3 view .LVU76
	.loc 1 109 3 view .LVU77
	.loc 1 110 1 is_stmt 0 view .LVU78
	movs	r0, #1
.LVL20:
	.loc 1 110 1 view .LVU79
	bx	lr
	.cfi_endproc
.LFE33:
	.size	_isatty, .-_isatty
	.section	.text._lseek,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	_lseek
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	_lseek, %function
_lseek:
.LVL21:
.LFB34:
	.loc 1 113 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 114 3 view .LVU81
	.loc 1 115 3 view .LVU82
	.loc 1 116 3 view .LVU83
	.loc 1 117 3 view .LVU84
	.loc 1 118 1 is_stmt 0 view .LVU85
	movs	r0, #0
.LVL22:
	.loc 1 118 1 view .LVU86
	bx	lr
	.cfi_endproc
.LFE34:
	.size	_lseek, .-_lseek
	.section	.text._open,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	_open
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	_open, %function
_open:
.LVL23:
.LFB35:
	.loc 1 121 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 4, pretend = 12, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 1
	@ link register save eliminated.
	.loc 1 122 3 view .LVU88
	.loc 1 123 3 view .LVU89
	.loc 1 125 3 view .LVU90
	.loc 1 121 1 is_stmt 0 view .LVU91
	push	{r1, r2, r3}
.LCFI4:
	.cfi_def_cfa_offset 12
	.cfi_offset 1, -12
	.cfi_offset 2, -8
	.cfi_offset 3, -4
	.loc 1 126 1 view .LVU92
	mov	r0, #-1
.LVL24:
	.loc 1 126 1 view .LVU93
	add	sp, sp, #12
.LCFI5:
	.cfi_restore 3
	.cfi_restore 2
	.cfi_restore 1
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE35:
	.size	_open, .-_open
	.section	.text._wait,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	_wait
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	_wait, %function
_wait:
.LVL25:
.LFB36:
	.loc 1 129 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 130 3 view .LVU95
	.loc 1 131 3 view .LVU96
	.loc 1 129 1 is_stmt 0 view .LVU97
	push	{r3, lr}
.LCFI6:
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 1 131 3 view .LVU98
	bl	__errno
.LVL26:
	.loc 1 131 9 view .LVU99
	movs	r3, #10
	str	r3, [r0]
	.loc 1 132 3 is_stmt 1 view .LVU100
	.loc 1 133 1 is_stmt 0 view .LVU101
	mov	r0, #-1
	pop	{r3, pc}
	.cfi_endproc
.LFE36:
	.size	_wait, .-_wait
	.section	.text._unlink,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	_unlink
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	_unlink, %function
_unlink:
.LVL27:
.LFB37:
	.loc 1 136 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 137 3 view .LVU103
	.loc 1 138 3 view .LVU104
	.loc 1 136 1 is_stmt 0 view .LVU105
	push	{r3, lr}
.LCFI7:
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 1 138 3 view .LVU106
	bl	__errno
.LVL28:
	.loc 1 138 9 view .LVU107
	movs	r3, #2
	str	r3, [r0]
	.loc 1 139 3 is_stmt 1 view .LVU108
	.loc 1 140 1 is_stmt 0 view .LVU109
	mov	r0, #-1
	pop	{r3, pc}
	.cfi_endproc
.LFE37:
	.size	_unlink, .-_unlink
	.section	.text._times,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	_times
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	_times, %function
_times:
.LVL29:
.LFB38:
	.loc 1 143 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 144 3 view .LVU111
	.loc 1 145 3 view .LVU112
	.loc 1 146 1 is_stmt 0 view .LVU113
	mov	r0, #-1
.LVL30:
	.loc 1 146 1 view .LVU114
	bx	lr
	.cfi_endproc
.LFE38:
	.size	_times, .-_times
	.section	.text._stat,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	_stat
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	_stat, %function
_stat:
.LVL31:
.LFB39:
	.loc 1 149 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 150 3 view .LVU116
	.loc 1 151 3 view .LVU117
	.loc 1 151 15 is_stmt 0 view .LVU118
	mov	r3, #8192
	str	r3, [r1, #4]
	.loc 1 152 3 is_stmt 1 view .LVU119
	.loc 1 153 1 is_stmt 0 view .LVU120
	movs	r0, #0
.LVL32:
	.loc 1 153 1 view .LVU121
	bx	lr
	.cfi_endproc
.LFE39:
	.size	_stat, .-_stat
	.section	.text._link,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	_link
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	_link, %function
_link:
.LVL33:
.LFB40:
	.loc 1 156 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 157 3 view .LVU123
	.loc 1 158 3 view .LVU124
	.loc 1 159 3 view .LVU125
	.loc 1 156 1 is_stmt 0 view .LVU126
	push	{r3, lr}
.LCFI8:
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 1 159 3 view .LVU127
	bl	__errno
.LVL34:
	.loc 1 159 9 view .LVU128
	movs	r3, #31
	str	r3, [r0]
	.loc 1 160 3 is_stmt 1 view .LVU129
	.loc 1 161 1 is_stmt 0 view .LVU130
	mov	r0, #-1
	pop	{r3, pc}
	.cfi_endproc
.LFE40:
	.size	_link, .-_link
	.section	.text._fork,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	_fork
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	_fork, %function
_fork:
.LFB41:
	.loc 1 164 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 165 3 view .LVU132
	.loc 1 164 1 is_stmt 0 view .LVU133
	push	{r3, lr}
.LCFI9:
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 1 165 3 view .LVU134
	bl	__errno
.LVL35:
	.loc 1 165 9 view .LVU135
	movs	r3, #11
	str	r3, [r0]
	.loc 1 166 3 is_stmt 1 view .LVU136
	.loc 1 167 1 is_stmt 0 view .LVU137
	mov	r0, #-1
	pop	{r3, pc}
	.cfi_endproc
.LFE41:
	.size	_fork, .-_fork
	.section	.text._execve,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	_execve
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	_execve, %function
_execve:
.LVL36:
.LFB42:
	.loc 1 170 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 171 3 view .LVU139
	.loc 1 172 3 view .LVU140
	.loc 1 173 3 view .LVU141
	.loc 1 174 3 view .LVU142
	.loc 1 170 1 is_stmt 0 view .LVU143
	push	{r3, lr}
.LCFI10:
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 1 174 3 view .LVU144
	bl	__errno
.LVL37:
	.loc 1 174 9 view .LVU145
	movs	r3, #12
	str	r3, [r0]
	.loc 1 175 3 is_stmt 1 view .LVU146
	.loc 1 176 1 is_stmt 0 view .LVU147
	mov	r0, #-1
	pop	{r3, pc}
	.cfi_endproc
.LFE42:
	.size	_execve, .-_execve
	.global	environ
	.global	__env
	.section	.bss.__env,"aw",%nobits
	.align	2
	.type	__env, %object
	.size	__env, 4
__env:
	.space	4
	.section	.data.environ,"aw"
	.align	2
	.type	environ, %object
	.size	environ, 4
environ:
	.word	__env
	.weak	__io_putchar
	.weak	__io_getchar
	.text
.Letext0:
	.file 2 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/sys/_types.h"
	.file 4 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/sys/_timeval.h"
	.file 5 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/sys/_timespec.h"
	.file 6 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/sys/types.h"
	.file 7 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/sys/stat.h"
	.file 8 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/sys/times.h"
	.file 9 "/usr/share/gcc-arm-none-eabi-10-2020-q4-major/arm-none-eabi/include/sys/errno.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x856
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF83
	.byte	0xc
	.4byte	.LASF84
	.4byte	.LASF85
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
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x2
	.byte	0x4f
	.byte	0x19
	.4byte	0x58
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x2
	.byte	0xc8
	.byte	0x1e
	.4byte	0x5f
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x1e
	.byte	0xe
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x22
	.byte	0xe
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x2e
	.byte	0xe
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x38
	.byte	0xf
	.4byte	0x37
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x3
	.byte	0x3c
	.byte	0x18
	.4byte	0x3e
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x3
	.byte	0x3f
	.byte	0x18
	.4byte	0x3e
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x3
	.byte	0x4b
	.byte	0x18
	.4byte	0x3e
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x3
	.byte	0x5a
	.byte	0x14
	.4byte	0x4c
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x3
	.byte	0x66
	.byte	0x10
	.4byte	0xa6
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x3
	.byte	0xd1
	.byte	0x18
	.4byte	0x3e
	.uleb128 0x5
	.byte	0x4
	.4byte	0x10c
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF22
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x4
	.byte	0x2a
	.byte	0x12
	.4byte	0x6d
	.uleb128 0x6
	.4byte	.LASF36
	.byte	0x10
	.byte	0x5
	.byte	0x2f
	.byte	0x8
	.4byte	0x14b
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x5
	.byte	0x30
	.byte	0x9
	.4byte	0x113
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.4byte	.LASF25
	.byte	0x5
	.byte	0x31
	.byte	0x7
	.4byte	0x45
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x6
	.byte	0x61
	.byte	0x14
	.4byte	0x8e
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x6
	.byte	0x66
	.byte	0x15
	.4byte	0x9a
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x6
	.byte	0x6b
	.byte	0x13
	.4byte	0x58
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x6
	.byte	0x8b
	.byte	0x12
	.4byte	0xd6
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x6
	.byte	0x9d
	.byte	0x12
	.4byte	0xee
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x6
	.byte	0xa1
	.byte	0x12
	.4byte	0xb2
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x6
	.byte	0xa5
	.byte	0x12
	.4byte	0xbe
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x6
	.byte	0xa9
	.byte	0x12
	.4byte	0xca
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0x6
	.byte	0xbd
	.byte	0x12
	.4byte	0xe2
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0x6
	.byte	0xc2
	.byte	0x13
	.4byte	0xfa
	.uleb128 0x6
	.4byte	.LASF37
	.byte	0x58
	.byte	0x7
	.byte	0x1b
	.byte	0x8
	.4byte	0x2a3
	.uleb128 0x7
	.4byte	.LASF38
	.byte	0x7
	.byte	0x1d
	.byte	0xa
	.4byte	0x187
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.4byte	.LASF39
	.byte	0x7
	.byte	0x1e
	.byte	0xa
	.4byte	0x16f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x7
	.4byte	.LASF40
	.byte	0x7
	.byte	0x1f
	.byte	0xa
	.4byte	0x1ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.4byte	.LASF41
	.byte	0x7
	.byte	0x20
	.byte	0xb
	.4byte	0x1b7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.4byte	.LASF42
	.byte	0x7
	.byte	0x21
	.byte	0xa
	.4byte	0x193
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x7
	.4byte	.LASF43
	.byte	0x7
	.byte	0x22
	.byte	0xa
	.4byte	0x19f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.4byte	.LASF44
	.byte	0x7
	.byte	0x23
	.byte	0xa
	.4byte	0x187
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x7
	.4byte	.LASF45
	.byte	0x7
	.byte	0x24
	.byte	0xa
	.4byte	0x17b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.4byte	.LASF46
	.byte	0x7
	.byte	0x2a
	.byte	0x13
	.4byte	0x11f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.4byte	.LASF47
	.byte	0x7
	.byte	0x2b
	.byte	0x13
	.4byte	0x11f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.4byte	.LASF48
	.byte	0x7
	.byte	0x2c
	.byte	0x13
	.4byte	0x11f
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x7
	.4byte	.LASF49
	.byte	0x7
	.byte	0x2d
	.byte	0x11
	.4byte	0x157
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x7
	.4byte	.LASF50
	.byte	0x7
	.byte	0x2e
	.byte	0xc
	.4byte	0x14b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x7
	.4byte	.LASF51
	.byte	0x7
	.byte	0x30
	.byte	0x9
	.4byte	0x2a3
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.byte	0
	.uleb128 0x8
	.4byte	0x45
	.4byte	0x2b3
	.uleb128 0x9
	.4byte	0x80
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.ascii	"tms\000"
	.byte	0x10
	.byte	0x8
	.byte	0x11
	.byte	0x8
	.4byte	0x2fd
	.uleb128 0x7
	.4byte	.LASF52
	.byte	0x8
	.byte	0x12
	.byte	0xa
	.4byte	0x163
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.4byte	.LASF53
	.byte	0x8
	.byte	0x13
	.byte	0xa
	.4byte	0x163
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.4byte	.LASF54
	.byte	0x8
	.byte	0x14
	.byte	0xa
	.4byte	0x163
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.4byte	.LASF55
	.byte	0x8
	.byte	0x15
	.byte	0xa
	.4byte	0x163
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x8
	.4byte	0x106
	.4byte	0x30d
	.uleb128 0x9
	.4byte	0x80
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0x1
	.byte	0x27
	.byte	0x7
	.4byte	0x2fd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	__env
	.uleb128 0xb
	.4byte	.LASF57
	.byte	0x1
	.byte	0x28
	.byte	0x8
	.4byte	0x333
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	environ
	.uleb128 0x5
	.byte	0x4
	.4byte	0x106
	.uleb128 0xc
	.byte	0x1
	.4byte	.LASF60
	.byte	0x1
	.byte	0xa9
	.byte	0x5
	.byte	0x1
	.4byte	0x79
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LLST31
	.byte	0x1
	.4byte	0x39e
	.uleb128 0xd
	.4byte	.LASF58
	.byte	0x1
	.byte	0xa9
	.byte	0x13
	.4byte	0x106
	.4byte	.LLST32
	.4byte	.LVUS32
	.uleb128 0xd
	.4byte	.LASF59
	.byte	0x1
	.byte	0xa9
	.byte	0x20
	.4byte	0x333
	.4byte	.LLST33
	.4byte	.LVUS33
	.uleb128 0xe
	.ascii	"env\000"
	.byte	0x1
	.byte	0xa9
	.byte	0x2d
	.4byte	0x333
	.4byte	.LLST34
	.4byte	.LVUS34
	.uleb128 0xf
	.4byte	.LVL37
	.4byte	0x82f
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.4byte	.LASF61
	.byte	0x1
	.byte	0xa3
	.byte	0x5
	.byte	0x1
	.4byte	0x79
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LLST30
	.byte	0x1
	.4byte	0x3c7
	.uleb128 0xf
	.4byte	.LVL35
	.4byte	0x82f
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.4byte	.LASF62
	.byte	0x1
	.byte	0x9b
	.byte	0x5
	.byte	0x1
	.4byte	0x79
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LLST27
	.byte	0x1
	.4byte	0x418
	.uleb128 0xe
	.ascii	"old\000"
	.byte	0x1
	.byte	0x9b
	.byte	0x11
	.4byte	0x106
	.4byte	.LLST28
	.4byte	.LVUS28
	.uleb128 0xe
	.ascii	"new\000"
	.byte	0x1
	.byte	0x9b
	.byte	0x1c
	.4byte	0x106
	.4byte	.LLST29
	.4byte	.LVUS29
	.uleb128 0xf
	.4byte	.LVL34
	.4byte	0x82f
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF63
	.byte	0x1
	.byte	0x94
	.byte	0x5
	.byte	0x1
	.4byte	0x79
	.4byte	.LFB39
	.4byte	.LFE39
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x458
	.uleb128 0xd
	.4byte	.LASF64
	.byte	0x1
	.byte	0x94
	.byte	0x11
	.4byte	0x106
	.4byte	.LLST26
	.4byte	.LVUS26
	.uleb128 0x11
	.ascii	"st\000"
	.byte	0x1
	.byte	0x94
	.byte	0x24
	.4byte	0x458
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1c3
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF65
	.byte	0x1
	.byte	0x8e
	.byte	0x5
	.byte	0x1
	.4byte	0x79
	.4byte	.LFB38
	.4byte	.LFE38
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x491
	.uleb128 0xe
	.ascii	"buf\000"
	.byte	0x1
	.byte	0x8e
	.byte	0x18
	.4byte	0x491
	.4byte	.LLST25
	.4byte	.LVUS25
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2b3
	.uleb128 0xc
	.byte	0x1
	.4byte	.LASF66
	.byte	0x1
	.byte	0x87
	.byte	0x5
	.byte	0x1
	.4byte	0x79
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LLST23
	.byte	0x1
	.4byte	0x4d4
	.uleb128 0xd
	.4byte	.LASF58
	.byte	0x1
	.byte	0x87
	.byte	0x13
	.4byte	0x106
	.4byte	.LLST24
	.4byte	.LVUS24
	.uleb128 0xf
	.4byte	.LVL28
	.4byte	0x82f
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.4byte	.LASF67
	.byte	0x1
	.byte	0x80
	.byte	0x5
	.byte	0x1
	.4byte	0x79
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LLST21
	.byte	0x1
	.4byte	0x511
	.uleb128 0xd
	.4byte	.LASF68
	.byte	0x1
	.byte	0x80
	.byte	0x10
	.4byte	0x511
	.4byte	.LLST22
	.4byte	.LVUS22
	.uleb128 0xf
	.4byte	.LVL26
	.4byte	0x82f
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x79
	.uleb128 0xc
	.byte	0x1
	.4byte	.LASF69
	.byte	0x1
	.byte	0x78
	.byte	0x5
	.byte	0x1
	.4byte	0x79
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LLST19
	.byte	0x1
	.4byte	0x55b
	.uleb128 0xd
	.4byte	.LASF70
	.byte	0x1
	.byte	0x78
	.byte	0x11
	.4byte	0x106
	.4byte	.LLST20
	.4byte	.LVUS20
	.uleb128 0x12
	.4byte	.LASF71
	.byte	0x1
	.byte	0x78
	.byte	0x1b
	.4byte	0x79
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x13
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF72
	.byte	0x1
	.byte	0x70
	.byte	0x5
	.byte	0x1
	.4byte	0x79
	.4byte	.LFB34
	.4byte	.LFE34
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x5aa
	.uleb128 0xd
	.4byte	.LASF64
	.byte	0x1
	.byte	0x70
	.byte	0x10
	.4byte	0x79
	.4byte	.LLST18
	.4byte	.LVUS18
	.uleb128 0x11
	.ascii	"ptr\000"
	.byte	0x1
	.byte	0x70
	.byte	0x1a
	.4byte	0x79
	.byte	0x1
	.byte	0x51
	.uleb128 0x11
	.ascii	"dir\000"
	.byte	0x1
	.byte	0x70
	.byte	0x23
	.4byte	0x79
	.byte	0x1
	.byte	0x52
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF73
	.byte	0x1
	.byte	0x6a
	.byte	0x5
	.byte	0x1
	.4byte	0x79
	.4byte	.LFB33
	.4byte	.LFE33
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x5dd
	.uleb128 0xd
	.4byte	.LASF64
	.byte	0x1
	.byte	0x6a
	.byte	0x11
	.4byte	0x79
	.4byte	.LLST17
	.4byte	.LVUS17
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF74
	.byte	0x1
	.byte	0x63
	.byte	0x5
	.byte	0x1
	.4byte	0x79
	.4byte	.LFB32
	.4byte	.LFE32
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x61d
	.uleb128 0xd
	.4byte	.LASF64
	.byte	0x1
	.byte	0x63
	.byte	0x10
	.4byte	0x79
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0x11
	.ascii	"st\000"
	.byte	0x1
	.byte	0x63
	.byte	0x23
	.4byte	0x458
	.byte	0x1
	.byte	0x51
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.4byte	.LASF75
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x1
	.4byte	0x79
	.4byte	.LFB31
	.4byte	.LFE31
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.4byte	0x650
	.uleb128 0xd
	.4byte	.LASF64
	.byte	0x1
	.byte	0x5c
	.byte	0x10
	.4byte	0x79
	.4byte	.LLST15
	.4byte	.LVUS15
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.4byte	.LASF76
	.byte	0x1
	.byte	0x50
	.byte	0x1b
	.byte	0x1
	.4byte	0x79
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LLST11
	.byte	0x1
	.4byte	0x6c2
	.uleb128 0xd
	.4byte	.LASF64
	.byte	0x1
	.byte	0x50
	.byte	0x26
	.4byte	0x79
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0xe
	.ascii	"ptr\000"
	.byte	0x1
	.byte	0x50
	.byte	0x32
	.4byte	0x106
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0xe
	.ascii	"len\000"
	.byte	0x1
	.byte	0x50
	.byte	0x3b
	.4byte	0x79
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x14
	.4byte	.LASF78
	.byte	0x1
	.byte	0x53
	.byte	0x7
	.4byte	0x79
	.byte	0
	.uleb128 0xf
	.4byte	.LVL13
	.4byte	0x83d
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.4byte	.LASF77
	.byte	0x1
	.byte	0x43
	.byte	0x1b
	.byte	0x1
	.4byte	0x79
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LLST7
	.byte	0x1
	.4byte	0x734
	.uleb128 0xd
	.4byte	.LASF64
	.byte	0x1
	.byte	0x43
	.byte	0x25
	.4byte	0x79
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0xe
	.ascii	"ptr\000"
	.byte	0x1
	.byte	0x43
	.byte	0x31
	.4byte	0x106
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0xe
	.ascii	"len\000"
	.byte	0x1
	.byte	0x43
	.byte	0x3a
	.4byte	0x79
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x14
	.4byte	.LASF78
	.byte	0x1
	.byte	0x46
	.byte	0x7
	.4byte	0x79
	.byte	0
	.uleb128 0xf
	.4byte	.LVL7
	.4byte	0x84b
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.4byte	.LASF79
	.byte	0x1
	.byte	0x3d
	.byte	0x6
	.byte	0x1
	.byte	0x1
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LLST3
	.byte	0x1
	.4byte	0x79a
	.uleb128 0xd
	.4byte	.LASF68
	.byte	0x1
	.byte	0x3d
	.byte	0x11
	.4byte	0x79
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x16
	.4byte	0x79a
	.4byte	.LBI4
	.byte	.LVU16
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x3f
	.byte	0x3
	.uleb128 0x17
	.4byte	0x7b9
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x17
	.4byte	0x7ad
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0xf
	.4byte	.LVL3
	.4byte	0x82f
	.byte	0
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF86
	.byte	0x1
	.byte	0x35
	.byte	0x5
	.byte	0x1
	.4byte	0x79
	.byte	0x1
	.4byte	0x7c6
	.uleb128 0x19
	.ascii	"pid\000"
	.byte	0x1
	.byte	0x35
	.byte	0xf
	.4byte	0x79
	.uleb128 0x19
	.ascii	"sig\000"
	.byte	0x1
	.byte	0x35
	.byte	0x18
	.4byte	0x79
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF87
	.byte	0x1
	.byte	0x30
	.byte	0x5
	.byte	0x1
	.4byte	0x79
	.4byte	.LFB26
	.4byte	.LFE26
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x1b
	.byte	0x1
	.4byte	.LASF88
	.byte	0x1
	.byte	0x2c
	.byte	0x6
	.4byte	.LFB25
	.4byte	.LFE25
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0x1
	.uleb128 0x1c
	.4byte	0x79a
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x82f
	.uleb128 0x17
	.4byte	0x7ad
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x17
	.4byte	0x7b9
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0xf
	.4byte	.LVL1
	.4byte	0x82f
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.byte	0x1
	.4byte	.LASF80
	.4byte	.LASF80
	.byte	0x9
	.byte	0xf
	.byte	0xd
	.uleb128 0x1d
	.byte	0x1
	.byte	0x1
	.4byte	.LASF81
	.4byte	.LASF81
	.byte	0x1
	.byte	0x23
	.byte	0xc
	.uleb128 0x1d
	.byte	0x1
	.byte	0x1
	.4byte	.LASF82
	.4byte	.LASF82
	.byte	0x1
	.byte	0x24
	.byte	0xc
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x11
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
	.uleb128 0xa
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x18
	.byte	0
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x87
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
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
	.uleb128 0x1d
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
.LLST31:
	.4byte	.LFB42
	.4byte	.LCFI10
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI10
	.4byte	.LFE42
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LVUS32:
	.uleb128 0
	.uleb128 .LVU145
	.uleb128 .LVU145
	.uleb128 0
.LLST32:
	.4byte	.LVL36
	.4byte	.LVL37-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL37-1
	.4byte	.LFE42
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS33:
	.uleb128 0
	.uleb128 .LVU145
	.uleb128 .LVU145
	.uleb128 0
.LLST33:
	.4byte	.LVL36
	.4byte	.LVL37-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL37-1
	.4byte	.LFE42
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS34:
	.uleb128 0
	.uleb128 .LVU145
	.uleb128 .LVU145
	.uleb128 0
.LLST34:
	.4byte	.LVL36
	.4byte	.LVL37-1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL37-1
	.4byte	.LFE42
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LFB41
	.4byte	.LCFI9
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI9
	.4byte	.LFE41
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LFB40
	.4byte	.LCFI8
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI8
	.4byte	.LFE40
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LVUS28:
	.uleb128 0
	.uleb128 .LVU128
	.uleb128 .LVU128
	.uleb128 0
.LLST28:
	.4byte	.LVL33
	.4byte	.LVL34-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL34-1
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS29:
	.uleb128 0
	.uleb128 .LVU128
	.uleb128 .LVU128
	.uleb128 0
.LLST29:
	.4byte	.LVL33
	.4byte	.LVL34-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL34-1
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS26:
	.uleb128 0
	.uleb128 .LVU121
	.uleb128 .LVU121
	.uleb128 0
.LLST26:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL32
	.4byte	.LFE39
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS25:
	.uleb128 0
	.uleb128 .LVU114
	.uleb128 .LVU114
	.uleb128 0
.LLST25:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL30
	.4byte	.LFE38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LFB37
	.4byte	.LCFI7
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI7
	.4byte	.LFE37
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LVUS24:
	.uleb128 0
	.uleb128 .LVU107
	.uleb128 .LVU107
	.uleb128 0
.LLST24:
	.4byte	.LVL27
	.4byte	.LVL28-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL28-1
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LFB36
	.4byte	.LCFI6
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI6
	.4byte	.LFE36
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LVUS22:
	.uleb128 0
	.uleb128 .LVU99
	.uleb128 .LVU99
	.uleb128 0
.LLST22:
	.4byte	.LVL25
	.4byte	.LVL26-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL26-1
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LFB35
	.4byte	.LCFI4
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI4
	.4byte	.LCFI5
	.2byte	0x2
	.byte	0x7d
	.sleb128 12
	.4byte	.LCFI5
	.4byte	.LFE35
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS20:
	.uleb128 0
	.uleb128 .LVU93
	.uleb128 .LVU93
	.uleb128 0
.LLST20:
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL24
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS18:
	.uleb128 0
	.uleb128 .LVU86
	.uleb128 .LVU86
	.uleb128 0
.LLST18:
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL22
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS17:
	.uleb128 0
	.uleb128 .LVU79
	.uleb128 .LVU79
	.uleb128 0
.LLST17:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL20
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS16:
	.uleb128 0
	.uleb128 .LVU74
	.uleb128 .LVU74
	.uleb128 0
.LLST16:
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL18
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS15:
	.uleb128 0
	.uleb128 .LVU67
	.uleb128 .LVU67
	.uleb128 0
.LLST15:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL16
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LFB30
	.4byte	.LCFI3
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI3
	.4byte	.LFE30
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0
	.4byte	0
.LVUS12:
	.uleb128 0
	.uleb128 .LVU54
	.uleb128 .LVU54
	.uleb128 0
.LLST12:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL11
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS13:
	.uleb128 0
	.uleb128 .LVU54
	.uleb128 .LVU54
	.uleb128 .LVU55
	.uleb128 .LVU55
	.uleb128 .LVU56
	.uleb128 .LVU56
	.uleb128 .LVU60
.LLST13:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL11
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS14:
	.uleb128 0
	.uleb128 .LVU54
	.uleb128 .LVU54
	.uleb128 0
.LLST14:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL11
	.4byte	.LFE30
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LFB29
	.4byte	.LCFI2
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI2
	.4byte	.LFE29
	.2byte	0x2
	.byte	0x7d
	.sleb128 16
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 0
	.uleb128 .LVU38
	.uleb128 .LVU38
	.uleb128 0
.LLST8:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL6
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 0
	.uleb128 .LVU38
	.uleb128 .LVU38
	.uleb128 .LVU40
	.uleb128 .LVU40
	.uleb128 .LVU41
	.uleb128 .LVU41
	.uleb128 .LVU44
.LLST9:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 0
	.uleb128 .LVU38
	.uleb128 .LVU38
	.uleb128 0
.LLST10:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LFB28
	.4byte	.LCFI1
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI1
	.4byte	.LFE28
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 0
	.uleb128 .LVU22
	.uleb128 .LVU22
	.uleb128 0
.LLST4:
	.4byte	.LVL2
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL3-1
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 .LVU16
	.uleb128 .LVU24
.LLST5:
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 .LVU16
	.uleb128 .LVU22
	.uleb128 .LVU22
	.uleb128 .LVU24
.LLST6:
	.4byte	.LVL2
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL3-1
	.4byte	.LVL4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LFB27
	.4byte	.LCFI0
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LCFI0
	.4byte	.LFE27
	.2byte	0x2
	.byte	0x7d
	.sleb128 8
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU11
	.uleb128 .LVU11
	.uleb128 0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL1-1
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU11
	.uleb128 .LVU11
	.uleb128 0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL1-1
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0xa4
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	0
	.4byte	0
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF44:
	.ascii	"st_rdev\000"
.LASF28:
	.ascii	"clock_t\000"
.LASF57:
	.ascii	"environ\000"
.LASF32:
	.ascii	"uid_t\000"
.LASF72:
	.ascii	"_lseek\000"
.LASF14:
	.ascii	"_off_t\000"
.LASF54:
	.ascii	"tms_cutime\000"
.LASF60:
	.ascii	"_execve\000"
.LASF24:
	.ascii	"tv_sec\000"
.LASF27:
	.ascii	"blksize_t\000"
.LASF63:
	.ascii	"_stat\000"
.LASF48:
	.ascii	"st_ctim\000"
.LASF56:
	.ascii	"__env\000"
.LASF79:
	.ascii	"_exit\000"
.LASF76:
	.ascii	"_write\000"
.LASF38:
	.ascii	"st_dev\000"
.LASF74:
	.ascii	"_fstat\000"
.LASF64:
	.ascii	"file\000"
.LASF86:
	.ascii	"_kill\000"
.LASF23:
	.ascii	"time_t\000"
.LASF83:
	.ascii	"GNU C17 10.2.1 20201103 (release) -mcpu=cortex-m4 -"
	.ascii	"mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=hard -march=ar"
	.ascii	"mv7e-m+fp -g -gdwarf-2 -O3 -fdata-sections -ffuncti"
	.ascii	"on-sections\000"
.LASF2:
	.ascii	"short int\000"
.LASF9:
	.ascii	"__int_least64_t\000"
.LASF49:
	.ascii	"st_blksize\000"
.LASF88:
	.ascii	"initialise_monitor_handles\000"
.LASF6:
	.ascii	"long long int\000"
.LASF43:
	.ascii	"st_gid\000"
.LASF19:
	.ascii	"__mode_t\000"
.LASF29:
	.ascii	"ino_t\000"
.LASF55:
	.ascii	"tms_cstime\000"
.LASF65:
	.ascii	"_times\000"
.LASF21:
	.ascii	"__nlink_t\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF58:
	.ascii	"name\000"
.LASF31:
	.ascii	"dev_t\000"
.LASF67:
	.ascii	"_wait\000"
.LASF11:
	.ascii	"long double\000"
.LASF39:
	.ascii	"st_ino\000"
.LASF77:
	.ascii	"_read\000"
.LASF82:
	.ascii	"__io_getchar\000"
.LASF51:
	.ascii	"st_spare4\000"
.LASF25:
	.ascii	"tv_nsec\000"
.LASF0:
	.ascii	"signed char\000"
.LASF71:
	.ascii	"flags\000"
.LASF7:
	.ascii	"long long unsigned int\000"
.LASF34:
	.ascii	"mode_t\000"
.LASF10:
	.ascii	"unsigned int\000"
.LASF41:
	.ascii	"st_nlink\000"
.LASF69:
	.ascii	"_open\000"
.LASF59:
	.ascii	"argv\000"
.LASF84:
	.ascii	"Src/syscalls.c\000"
.LASF13:
	.ascii	"__blksize_t\000"
.LASF46:
	.ascii	"st_atim\000"
.LASF62:
	.ascii	"_link\000"
.LASF68:
	.ascii	"status\000"
.LASF33:
	.ascii	"gid_t\000"
.LASF75:
	.ascii	"_close\000"
.LASF22:
	.ascii	"char\000"
.LASF4:
	.ascii	"long int\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF35:
	.ascii	"nlink_t\000"
.LASF50:
	.ascii	"st_blocks\000"
.LASF73:
	.ascii	"_isatty\000"
.LASF47:
	.ascii	"st_mtim\000"
.LASF18:
	.ascii	"__ino_t\000"
.LASF53:
	.ascii	"tms_stime\000"
.LASF42:
	.ascii	"st_uid\000"
.LASF45:
	.ascii	"st_size\000"
.LASF5:
	.ascii	"long unsigned int\000"
.LASF85:
	.ascii	"/home/joel/share/EVSPIN32G4_Shinano\000"
.LASF81:
	.ascii	"__io_putchar\000"
.LASF78:
	.ascii	"DataIdx\000"
.LASF8:
	.ascii	"__uint32_t\000"
.LASF61:
	.ascii	"_fork\000"
.LASF30:
	.ascii	"off_t\000"
.LASF87:
	.ascii	"_getpid\000"
.LASF15:
	.ascii	"__dev_t\000"
.LASF20:
	.ascii	"__off_t\000"
.LASF26:
	.ascii	"blkcnt_t\000"
.LASF70:
	.ascii	"path\000"
.LASF36:
	.ascii	"timespec\000"
.LASF16:
	.ascii	"__uid_t\000"
.LASF37:
	.ascii	"stat\000"
.LASF40:
	.ascii	"st_mode\000"
.LASF52:
	.ascii	"tms_utime\000"
.LASF66:
	.ascii	"_unlink\000"
.LASF12:
	.ascii	"__blkcnt_t\000"
.LASF80:
	.ascii	"__errno\000"
.LASF17:
	.ascii	"__gid_t\000"
	.ident	"GCC: (GNU Arm Embedded Toolchain 10-2020-q4-major) 10.2.1 20201103 (release)"
