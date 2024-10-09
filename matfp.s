	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 14, 4
	.file	1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types" "_uint8_t.h"
	.globl	_emulate_AMX_MATFP              ; -- Begin function emulate_AMX_MATFP
	.p2align	2
_emulate_AMX_MATFP:                     ; @emulate_AMX_MATFP
Lfunc_begin0:
	.file	2 "/Users/tarindujayatilaka/Documents/superopt/apple-amx" "matfp.c"
	.loc	2 13 0                          ; matfp.c:13:0
	.cfi_startproc
; %bb.0:
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- $x0
	;DEBUG_VALUE: emulate_AMX_MATFP:operand <- $x1
	;DEBUG_VALUE: emulate_AMX_MATFP:operand <- $x1
	sub	sp, sp, #400
	.cfi_def_cfa_offset 400
	stp	d9, d8, [sp, #288]              ; 16-byte Folded Spill
	stp	x28, x27, [sp, #304]            ; 16-byte Folded Spill
	stp	x26, x25, [sp, #320]            ; 16-byte Folded Spill
	stp	x24, x23, [sp, #336]            ; 16-byte Folded Spill
	stp	x22, x21, [sp, #352]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #368]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #384]            ; 16-byte Folded Spill
	add	x29, sp, #384
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	.cfi_offset b8, -104
	.cfi_offset b9, -112
	str	x0, [sp, #72]                   ; 8-byte Folded Spill
Ltmp0:
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
Lloh0:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh1:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh2:
	ldr	x8, [x8]
	stur	x8, [x29, #-112]
Ltmp1:
	.loc	2 14 25 prologue_end            ; matfp.c:14:25
	tst	x1, #0x1c0000000000000
Ltmp2:
	.loc	2 14 9 is_stmt 0                ; matfp.c:14:9
	b.eq	LBB0_3
Ltmp3:
LBB0_1:
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	.loc	2 0 9                           ; matfp.c:0:9
	ldur	x8, [x29, #-112]
Lloh3:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh4:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh5:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB0_153
Ltmp4:
; %bb.2:
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	.loc	2 123 1 is_stmt 1               ; matfp.c:123:1
	ldp	x29, x30, [sp, #384]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #368]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #352]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #336]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #320]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #304]            ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #288]              ; 16-byte Folded Reload
	add	sp, sp, #400
Ltmp5:
	ret
LBB0_3:
Ltmp6:
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:operand <- $x1
	.loc	2 0 1 is_stmt 0                 ; matfp.c:0:1
	mov	x22, x1
Ltmp7:
	;DEBUG_VALUE: emulate_AMX_MATFP:operand <- $x22
	;DEBUG_VALUE: emulate_AMX_MATFP:operand <- [DW_OP_constu 9223371899415822335, DW_OP_and, DW_OP_stack_value] $x22
	.loc	2 20 19 is_stmt 1               ; matfp.c:20:19
	ubfx	x8, x1, #47, #6
	tst	x1, #0x20000000000000
	csel	w9, w8, wzr, eq
Ltmp8:
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- $w9
	.loc	2 21 22                         ; matfp.c:21:22
	cmp	w9, #4
	b.hi	LBB0_1
Ltmp9:
; %bb.4:
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- $w9
	;DEBUG_VALUE: emulate_AMX_MATFP:operand <- [DW_OP_constu 9223371899415822335, DW_OP_and, DW_OP_stack_value] $x22
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	and	w8, w9, #0x3e
	cmp	w8, #2
	b.eq	LBB0_1
Ltmp10:
; %bb.5:
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- $w9
	;DEBUG_VALUE: emulate_AMX_MATFP:operand <- [DW_OP_constu 9223371899415822335, DW_OP_and, DW_OP_stack_value] $x22
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:bf16 <- 0
	.loc	2 0 22 is_stmt 0                ; matfp.c:0:22
	str	w9, [sp, #60]                   ; 4-byte Folded Spill
Ltmp11:
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	.loc	2 26 29 is_stmt 1               ; matfp.c:26:29
	ubfx	x8, x22, #42, #4
	.loc	2 26 5 is_stmt 0                ; matfp.c:26:5
	cmp	x8, #7
	b.hi	LBB0_9
Ltmp12:
; %bb.6:
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:bf16 <- 0
	;DEBUG_VALUE: emulate_AMX_MATFP:operand <- [DW_OP_constu 9223371899415822335, DW_OP_and, DW_OP_stack_value] $x22
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	.loc	2 0 5                           ; matfp.c:0:5
	mov	w13, #0
	mov	w12, #0
	mov	w26, #16
	mov	w9, #1
	str	w9, [sp, #64]                   ; 4-byte Folded Spill
Lloh6:
	adrp	x9, lJTI0_0@PAGE
Lloh7:
	add	x9, x9, lJTI0_0@PAGEOFF
	adr	x10, LBB0_7
	ldrb	w11, [x9, x8]
	add	x10, x10, x11, lsl #2
	mov	w9, #1
	mov	w11, #1
	br	x10
Ltmp13:
LBB0_7:
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:bf16 <- 0
	;DEBUG_VALUE: emulate_AMX_MATFP:operand <- [DW_OP_constu 9223371899415822335, DW_OP_and, DW_OP_stack_value] $x22
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:xybits <- 16
	mov	w9, #0
	mov	w12, #0
Ltmp14:
	.loc	2 27 31 is_stmt 1               ; matfp.c:27:31
Lloh8:
	adrp	x8, _AMX_VER@GOTPAGE
Lloh9:
	ldr	x8, [x8, _AMX_VER@GOTPAGEOFF]
Lloh10:
	ldr	w8, [x8]
	.loc	2 27 39 is_stmt 0               ; matfp.c:27:39
	cmp	w8, #2
	cset	w8, lo
	str	w8, [sp, #64]                   ; 4-byte Folded Spill
	mov	w26, #16
	b	LBB0_10
Ltmp15:
LBB0_8:
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:bf16 <- 0
	;DEBUG_VALUE: emulate_AMX_MATFP:operand <- [DW_OP_constu 9223371899415822335, DW_OP_and, DW_OP_stack_value] $x22
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:xybits <- 16
	.loc	2 0 39                          ; matfp.c:0:39
	mov	w12, #0
Ltmp16:
	.loc	2 28 31 is_stmt 1               ; matfp.c:28:31
Lloh11:
	adrp	x8, _AMX_VER@GOTPAGE
Lloh12:
	ldr	x8, [x8, _AMX_VER@GOTPAGEOFF]
Lloh13:
	ldr	w8, [x8]
	.loc	2 28 39 is_stmt 0               ; matfp.c:28:39
	cmp	w8, #1
	cset	w9, hi
	cmp	w8, #2
	cset	w8, lo
	mov	w26, #16
	mov	w11, #1
	str	w8, [sp, #64]                   ; 4-byte Folded Spill
	mov	x13, x8
	b	LBB0_13
Ltmp17:
LBB0_9:
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:bf16 <- 0
	;DEBUG_VALUE: emulate_AMX_MATFP:operand <- [DW_OP_constu 9223371899415822335, DW_OP_and, DW_OP_stack_value] $x22
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	.loc	2 0 39                          ; matfp.c:0:39
	mov	w9, #0
	mov	w12, #0
	mov	w26, #16
	mov	w8, #1
Ltmp18:
	;DEBUG_VALUE: emulate_AMX_MATFP:zbits <- 16
	;DEBUG_VALUE: emulate_AMX_MATFP:xybits <- 16
	str	w8, [sp, #64]                   ; 4-byte Folded Spill
Ltmp19:
LBB0_10:
	;DEBUG_VALUE: emulate_AMX_MATFP:xybits <- 16
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:bf16 <- 0
	;DEBUG_VALUE: emulate_AMX_MATFP:operand <- [DW_OP_constu 9223371899415822335, DW_OP_and, DW_OP_stack_value] $x22
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	mov	w13, #1
	mov	w11, #1
	b	LBB0_13
Ltmp20:
LBB0_11:
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:bf16 <- 0
	;DEBUG_VALUE: emulate_AMX_MATFP:operand <- [DW_OP_constu 9223371899415822335, DW_OP_and, DW_OP_stack_value] $x22
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	mov	w13, #0
	mov	w11, #0
	mov	w26, #32
	mov	w8, #1
Ltmp21:
	;DEBUG_VALUE: emulate_AMX_MATFP:zbits <- 32
	;DEBUG_VALUE: emulate_AMX_MATFP:xybits <- 32
	str	w8, [sp, #64]                   ; 4-byte Folded Spill
	mov	w9, #1
	mov	w12, #1
	b	LBB0_13
Ltmp22:
LBB0_12:
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:bf16 <- 0
	;DEBUG_VALUE: emulate_AMX_MATFP:operand <- [DW_OP_constu 9223371899415822335, DW_OP_and, DW_OP_stack_value] $x22
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	mov	w13, #0
	mov	w9, #0
	mov	w11, #0
	mov	w12, #0
	mov	w26, #64
	mov	w8, #1
Ltmp23:
	;DEBUG_VALUE: emulate_AMX_MATFP:zbits <- 64
	;DEBUG_VALUE: emulate_AMX_MATFP:xybits <- 64
	str	w8, [sp, #64]                   ; 4-byte Folded Spill
Ltmp24:
LBB0_13:
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:bf16 <- 0
	;DEBUG_VALUE: emulate_AMX_MATFP:operand <- [DW_OP_constu 9223371899415822335, DW_OP_and, DW_OP_stack_value] $x22
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:bf16 <- undef
	;DEBUG_VALUE: emulate_AMX_MATFP:xybits <- $w26
	;DEBUG_VALUE: emulate_AMX_MATFP:zbits <- undef
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- undef
	str	w11, [sp, #24]                  ; 4-byte Folded Spill
	str	w13, [sp, #40]                  ; 4-byte Folded Spill
	str	w9, [sp, #32]                   ; 4-byte Folded Spill
	str	w12, [sp, #16]                  ; 4-byte Folded Spill
	.loc	2 38 47 is_stmt 1               ; matfp.c:38:47
	ubfx	x8, x22, #10, #9
	mov	w19, #512
Ltmp25:
	;DEBUG_VALUE: load_xy_reg:src <- [DW_OP_plus_uconst 72] [$sp+0]
	;DEBUG_VALUE: load_xy_reg:dst <- [DW_OP_plus_uconst 144, DW_OP_stack_value] $sp
	;DEBUG_VALUE: load_xy_reg:offset <- $x8
	.file	3 "/Users/tarindujayatilaka/Documents/superopt/apple-amx" "./emulate.h"
	.loc	3 42 26                         ; ./emulate.h:42:26
	sub	x9, x19, x8
Ltmp26:
	;DEBUG_VALUE: load_xy_reg:avail <- $x9
	.loc	3 0 26 is_stmt 0                ; ./emulate.h:0:26
	ldr	x23, [sp, #72]                  ; 8-byte Folded Reload
	.loc	3 43 5 is_stmt 1                ; ./emulate.h:43:5
	add	x1, x23, x8
	.loc	3 44 5                          ; ./emulate.h:44:5
	sub	x10, x8, #448
	mov	w20, #64
	.loc	3 43 5                          ; ./emulate.h:43:5
	cmp	x8, #449
	csel	x2, x20, x9, lo
	add	x8, sp, #144
Ltmp27:
	.loc	3 44 5                          ; ./emulate.h:44:5
	add	x21, x8, x9
	csel	x24, xzr, x10, lo
	.loc	3 43 5                          ; ./emulate.h:43:5
	add	x0, sp, #144
	mov	w3, #64
	bl	___memcpy_chk
Ltmp28:
	.loc	3 44 5                          ; ./emulate.h:44:5
	mov	x0, x21
	mov	x1, x23
	mov	x2, x24
	bl	_memcpy
Ltmp29:
	.loc	2 39 28                         ; matfp.c:39:28
	add	x21, x23, #512
	.loc	2 39 39 is_stmt 0               ; matfp.c:39:39
	and	x8, x22, #0x1ff
Ltmp30:
	;DEBUG_VALUE: load_xy_reg:src <- $x21
	;DEBUG_VALUE: load_xy_reg:dst <- [DW_OP_plus_uconst 80, DW_OP_stack_value] $sp
	;DEBUG_VALUE: load_xy_reg:offset <- $x8
	.loc	3 42 26 is_stmt 1               ; ./emulate.h:42:26
	sub	x9, x19, x8
Ltmp31:
	;DEBUG_VALUE: load_xy_reg:avail <- $x9
	.loc	3 43 5                          ; ./emulate.h:43:5
	add	x1, x21, x8
	.loc	3 44 5                          ; ./emulate.h:44:5
	sub	x10, x8, #448
	.loc	3 43 5                          ; ./emulate.h:43:5
	cmp	x8, #449
	csel	x2, x20, x9, lo
	add	x8, sp, #80
Ltmp32:
	.loc	3 44 5                          ; ./emulate.h:44:5
	add	x24, x8, x9
	csel	x25, xzr, x10, lo
	.loc	3 43 5                          ; ./emulate.h:43:5
	add	x0, sp, #80
	mov	w3, #64
	bl	___memcpy_chk
Ltmp33:
	.loc	3 44 5                          ; ./emulate.h:44:5
	mov	x0, x24
	mov	x1, x21
	mov	x2, x25
	bl	_memcpy
Ltmp34:
	.loc	2 40 9                          ; matfp.c:40:9
	tbz	x22, #53, LBB0_18
Ltmp35:
; %bb.14:
	;DEBUG_VALUE: emulate_AMX_MATFP:xybits <- $w26
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:operand <- [DW_OP_constu 9223371899415822335, DW_OP_and, DW_OP_stack_value] $x22
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	.loc	2 41 28                         ; matfp.c:41:28
	ubfx	x8, x22, #49, #3
Ltmp36:
	;DEBUG_VALUE: src_reg <- [DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 32 7, DW_OP_constu 7, DW_OP_and, DW_OP_stack_value] undef
	.loc	2 42 26                         ; matfp.c:42:26
	tst	x22, #0x1000000000000
	mov	w9, #4
	mov	w10, #2
	csel	w2, w10, w9, eq
Ltmp37:
	;DEBUG_VALUE: ibits <- $w2
	.loc	2 43 13                         ; matfp.c:43:13
	tbnz	x22, #47, LBB0_16
Ltmp38:
; %bb.15:
	;DEBUG_VALUE: ibits <- $w2
	;DEBUG_VALUE: emulate_AMX_MATFP:xybits <- $w26
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:operand <- [DW_OP_constu 9223371899415822335, DW_OP_and, DW_OP_stack_value] $x22
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	.loc	2 0 13 is_stmt 0                ; matfp.c:0:13
	ldr	x9, [sp, #72]                   ; 8-byte Folded Reload
Ltmp39:
	.loc	2 46 39 is_stmt 1               ; matfp.c:46:39
	add	x1, x9, x8, lsl #6
	.loc	2 46 13 is_stmt 0               ; matfp.c:46:13
	add	x0, sp, #144
	b	LBB0_17
Ltmp40:
LBB0_16:
	;DEBUG_VALUE: ibits <- $w2
	;DEBUG_VALUE: emulate_AMX_MATFP:xybits <- $w26
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:operand <- [DW_OP_constu 9223371899415822335, DW_OP_and, DW_OP_stack_value] $x22
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	.loc	2 0 13                          ; matfp.c:0:13
	ldr	x9, [sp, #72]                   ; 8-byte Folded Reload
Ltmp41:
	.loc	2 44 39 is_stmt 1               ; matfp.c:44:39
	add	x8, x9, x8, lsl #6
	add	x1, x8, #512
	.loc	2 44 13 is_stmt 0               ; matfp.c:44:13
	add	x0, sp, #80
Ltmp42:
LBB0_17:
	;DEBUG_VALUE: ibits <- $w2
	;DEBUG_VALUE: emulate_AMX_MATFP:xybits <- $w26
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:operand <- [DW_OP_constu 9223371899415822335, DW_OP_and, DW_OP_stack_value] $x22
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	.loc	2 0 0                           ; matfp.c:0:0
	mov	x3, x26
	bl	_load_xy_reg_indexed
Ltmp43:
LBB0_18:
	;DEBUG_VALUE: emulate_AMX_MATFP:xybits <- $w26
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:operand <- [DW_OP_constu 9223371899415822335, DW_OP_and, DW_OP_stack_value] $x22
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	str	w26, [sp, #48]                  ; 4-byte Folded Spill
Ltmp44:
	;DEBUG_VALUE: emulate_AMX_MATFP:xybits <- [DW_OP_plus_uconst 48] [$sp+0]
	lsr	w21, w26, #3
Ltmp45:
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	.loc	2 49 22 is_stmt 1               ; matfp.c:49:22
	ubfx	w8, w22, #29, #2
	ldr	w20, [sp, #60]                  ; 4-byte Folded Reload
Ltmp46:
	;DEBUG_VALUE: xy_shuffle:ebytes <- $w21
	;DEBUG_VALUE: xy_shuffle:dst <- [DW_OP_plus_uconst 144, DW_OP_stack_value] $sp
	;DEBUG_VALUE: xy_shuffle:shuffle <- $w8
	.loc	3 50 9                          ; ./emulate.h:50:9
	cbz	w8, LBB0_21
Ltmp47:
; %bb.19:
	;DEBUG_VALUE: xy_shuffle:shuffle <- $w8
	;DEBUG_VALUE: xy_shuffle:dst <- [DW_OP_plus_uconst 144, DW_OP_stack_value] $sp
	;DEBUG_VALUE: xy_shuffle:ebytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:xybits <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:operand <- [DW_OP_constu 9223371899415822335, DW_OP_and, DW_OP_stack_value] $x22
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	.loc	3 0 9 is_stmt 0                 ; ./emulate.h:0:9
	mov	x19, #0
	mov	w24, #0
Ltmp48:
	.loc	3 52 9 is_stmt 1                ; ./emulate.h:52:9
	ldp	q0, q1, [sp, #144]
	stp	q0, q1, [x29, #-176]
	ldp	q0, q1, [sp, #176]
	stp	q0, q1, [x29, #-144]
	mov	w25, #64
	lsr	w26, w25, w8
Ltmp49:
	;DEBUG_VALUE: step <- $w26
	.loc	3 0 9 is_stmt 0                 ; ./emulate.h:0:9
	add	x28, sp, #144
	sub	x27, x29, #176
	;DEBUG_VALUE: soff <- 0
	;DEBUG_VALUE: doff <- 0
Ltmp50:
LBB0_20:                                ; =>This Inner Loop Header: Depth=1
	;DEBUG_VALUE: step <- $w26
	;DEBUG_VALUE: xy_shuffle:dst <- [DW_OP_plus_uconst 144, DW_OP_stack_value] $sp
	;DEBUG_VALUE: xy_shuffle:ebytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:xybits <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:operand <- [DW_OP_constu 9223371899415822335, DW_OP_and, DW_OP_stack_value] $x22
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	;DEBUG_VALUE: doff <- $x19
	;DEBUG_VALUE: soff <- $w24
	.loc	3 55 13 is_stmt 1               ; ./emulate.h:55:13
	add	x0, x28, x19
	add	x1, x27, w24, uxtw
	mov	x2, x21
	bl	_memcpy
Ltmp51:
	.loc	3 56 18                         ; ./emulate.h:56:18
	add	w8, w24, w26
Ltmp52:
	;DEBUG_VALUE: soff <- $w8
	.loc	3 57 17                         ; ./emulate.h:57:17
	cmp	w8, #64
	csel	w9, w25, w21, lo
Ltmp53:
	;DEBUG_VALUE: soff <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $w9, $w8
	add	w8, w9, w8
Ltmp54:
	.loc	3 60 18                         ; ./emulate.h:60:18
	and	w24, w8, #0x3f
Ltmp55:
	;DEBUG_VALUE: soff <- $w24
	.loc	3 54 59                         ; ./emulate.h:54:59
	add	x19, x19, x21
Ltmp56:
	;DEBUG_VALUE: doff <- $x19
	.loc	3 54 9 is_stmt 0                ; ./emulate.h:54:9
	cmp	x19, #64
	b.lo	LBB0_20
Ltmp57:
LBB0_21:
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:xybits <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:operand <- [DW_OP_constu 9223371899415822335, DW_OP_and, DW_OP_stack_value] $x22
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	.loc	2 0 0                           ; matfp.c:0:0
	and	x8, x22, #0x7fffffffffffffff
	and	x25, x8, #0xffffffdfffffffff
	;DEBUG_VALUE: xy_shuffle:ebytes <- $w21
	.loc	2 50 22 is_stmt 1               ; matfp.c:50:22
	ubfx	w8, w22, #27, #2
Ltmp58:
	;DEBUG_VALUE: xy_shuffle:ebytes <- $w21
	;DEBUG_VALUE: xy_shuffle:dst <- [DW_OP_plus_uconst 80, DW_OP_stack_value] $sp
	;DEBUG_VALUE: xy_shuffle:shuffle <- $w8
	.loc	3 50 9 is_stmt 0                ; ./emulate.h:50:9
	cbz	w8, LBB0_24
Ltmp59:
; %bb.22:
	;DEBUG_VALUE: xy_shuffle:shuffle <- $w8
	;DEBUG_VALUE: xy_shuffle:dst <- [DW_OP_plus_uconst 80, DW_OP_stack_value] $sp
	;DEBUG_VALUE: xy_shuffle:ebytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:xybits <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:operand <- [DW_OP_constu 9223371899415822335, DW_OP_and, DW_OP_stack_value] $x22
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	.loc	3 0 9                           ; ./emulate.h:0:9
	mov	x19, #0
	mov	w24, #0
Ltmp60:
	.loc	3 52 9 is_stmt 1                ; ./emulate.h:52:9
	ldp	q0, q1, [sp, #80]
	stp	q0, q1, [x29, #-176]
	ldp	q0, q1, [sp, #112]
	stp	q0, q1, [x29, #-144]
	mov	w26, #64
	lsr	w28, w26, w8
Ltmp61:
	;DEBUG_VALUE: step <- $w28
	.loc	3 0 9 is_stmt 0                 ; ./emulate.h:0:9
	add	x27, sp, #80
	sub	x23, x29, #176
	;DEBUG_VALUE: soff <- 0
	;DEBUG_VALUE: doff <- 0
Ltmp62:
LBB0_23:                                ; =>This Inner Loop Header: Depth=1
	;DEBUG_VALUE: step <- $w28
	;DEBUG_VALUE: xy_shuffle:dst <- [DW_OP_plus_uconst 80, DW_OP_stack_value] $sp
	;DEBUG_VALUE: xy_shuffle:ebytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:xybits <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:operand <- [DW_OP_constu 9223371899415822335, DW_OP_and, DW_OP_stack_value] $x22
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	;DEBUG_VALUE: doff <- $x19
	;DEBUG_VALUE: soff <- $w24
	.loc	3 55 13 is_stmt 1               ; ./emulate.h:55:13
	add	x0, x27, x19
	add	x1, x23, w24, uxtw
	mov	x2, x21
	bl	_memcpy
Ltmp63:
	.loc	3 56 18                         ; ./emulate.h:56:18
	add	w8, w24, w28
Ltmp64:
	;DEBUG_VALUE: soff <- $w8
	.loc	3 57 17                         ; ./emulate.h:57:17
	cmp	w8, #64
	csel	w9, w26, w21, lo
Ltmp65:
	;DEBUG_VALUE: soff <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $w9, $w8
	add	w8, w9, w8
Ltmp66:
	.loc	3 60 18                         ; ./emulate.h:60:18
	and	w24, w8, #0x3f
Ltmp67:
	;DEBUG_VALUE: soff <- $w24
	.loc	3 54 59                         ; ./emulate.h:54:59
	add	x19, x19, x21
Ltmp68:
	;DEBUG_VALUE: doff <- $x19
	.loc	3 54 9 is_stmt 0                ; ./emulate.h:54:9
	cmp	x19, #64
	b.lo	LBB0_23
Ltmp69:
LBB0_24:
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:xybits <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:operand <- [DW_OP_constu 9223371899415822335, DW_OP_and, DW_OP_stack_value] $x22
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	;DEBUG_VALUE: xy_shuffle:ebytes <- $w21
	;DEBUG_VALUE: xy_shuffle:ebytes <- $w21
	.loc	2 52 49 is_stmt 1               ; matfp.c:52:49
	lsr	x8, x25, #32
Ltmp70:
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: parse_writemask:g <- $w21
	;DEBUG_VALUE: parse_writemask:val <- $w8
	.loc	3 66 44                         ; ./emulate.h:66:44
	lsr	x9, x25, #38
	.loc	3 67 9                          ; ./emulate.h:67:9
	ands	w10, w9, #0x7
Ltmp71:
	;DEBUG_VALUE: parse_writemask:mode <- $w10
	csinc	w9, w21, wzr, ne
Ltmp72:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:val <- undef
	.loc	3 70 5                          ; ./emulate.h:70:5
	cmp	w10, #5
	b.hi	LBB0_30
Ltmp73:
; %bb.25:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w10
	;DEBUG_VALUE: parse_writemask:g <- $w21
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: xy_shuffle:ebytes <- $w21
	;DEBUG_VALUE: xy_shuffle:ebytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:xybits <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:operand <- [DW_OP_constu 9223371899415822335, DW_OP_and, DW_OP_stack_value] $x22
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	.loc	3 0 5 is_stmt 0                 ; ./emulate.h:0:5
	mul	w11, w9, w8
	and	w9, w11, #0x3f
Ltmp74:
	;DEBUG_VALUE: parse_writemask:val <- $w9
Lloh14:
	adrp	x12, lJTI0_1@PAGE
Lloh15:
	add	x12, x12, lJTI0_1@PAGEOFF
	adr	x13, LBB0_26
	ldrb	w14, [x12, x10]
	add	x13, x13, x14, lsl #2
	ldr	w17, [sp, #48]                  ; 4-byte Folded Reload
	br	x13
Ltmp75:
LBB0_26:
	;DEBUG_VALUE: parse_writemask:val <- $w9
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w10
	;DEBUG_VALUE: parse_writemask:g <- $w21
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:xybits <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:operand <- [DW_OP_constu 9223371899415822335, DW_OP_and, DW_OP_stack_value] $x22
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	.loc	3 72 22 is_stmt 1               ; ./emulate.h:72:22
	sub	w12, w9, #1
	mov	x10, #-1
Ltmp76:
	cmp	w12, #1
	b.hi	LBB0_29
Ltmp77:
; %bb.27:
	;DEBUG_VALUE: parse_writemask:val <- $w9
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:g <- $w21
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:xybits <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:operand <- [DW_OP_constu 9223371899415822335, DW_OP_and, DW_OP_stack_value] $x22
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	.loc	3 74 25                         ; ./emulate.h:74:25
	lsl	x10, x10, x21
	.loc	3 74 19 is_stmt 0               ; ./emulate.h:74:19
	mvn	x10, x10
	.loc	3 74 45                         ; ./emulate.h:74:45
	sbfx	w11, w11, #0, #1
	.loc	3 74 37                         ; ./emulate.h:74:37
	and	w11, w11, w21
	.loc	3 74 31                         ; ./emulate.h:74:31
	lsl	x10, x10, x11
Ltmp78:
	;DEBUG_VALUE: parse_writemask:all <- $x10
	;DEBUG_VALUE: parse_writemask:g <- $w21
	.loc	3 75 23 is_stmt 1               ; ./emulate.h:75:23
	lsr	w11, w17, #2
Ltmp79:
	;DEBUG_VALUE: parse_writemask:g <- $w11
LBB0_28:                                ; =>This Inner Loop Header: Depth=1
	;DEBUG_VALUE: parse_writemask:g <- $w11
	;DEBUG_VALUE: parse_writemask:all <- $x10
	;DEBUG_VALUE: parse_writemask:val <- $w9
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:xybits <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:operand <- [DW_OP_constu 9223371899415822335, DW_OP_and, DW_OP_stack_value] $x22
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	;DEBUG_VALUE: parse_writemask:all <- $x10
	.loc	3 76 28                         ; ./emulate.h:76:28
	lsl	x12, x10, x11
	.loc	3 76 21 is_stmt 0               ; ./emulate.h:76:21
	orr	x10, x12, x10
Ltmp80:
	;DEBUG_VALUE: parse_writemask:all <- $x10
	;DEBUG_VALUE: parse_writemask:g <- $w11
	.loc	3 75 23 is_stmt 1               ; ./emulate.h:75:23
	lsl	w12, w11, #1
Ltmp81:
	;DEBUG_VALUE: parse_writemask:g <- $w12
	.loc	3 75 13 is_stmt 0               ; ./emulate.h:75:13
	cmp	w11, #32
	mov	x11, x12
Ltmp82:
	;DEBUG_VALUE: parse_writemask:g <- $w11
	b.lo	LBB0_28
Ltmp83:
LBB0_29:
	;DEBUG_VALUE: parse_writemask:val <- $w9
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:xybits <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:operand <- [DW_OP_constu 9223371899415822335, DW_OP_and, DW_OP_stack_value] $x22
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	;DEBUG_VALUE: parse_writemask:all <- $x10
	.loc	3 83 16 is_stmt 1               ; ./emulate.h:83:16
	cmp	w9, #6
	csel	x24, x10, xzr, lo
	b	LBB0_37
Ltmp84:
LBB0_30:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w10
	;DEBUG_VALUE: parse_writemask:g <- $w21
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: xy_shuffle:ebytes <- $w21
	;DEBUG_VALUE: xy_shuffle:ebytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:xybits <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:operand <- [DW_OP_constu 9223371899415822335, DW_OP_and, DW_OP_stack_value] $x22
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	.loc	3 0 16 is_stmt 0                ; ./emulate.h:0:16
	mov	x24, #0
	ldr	w17, [sp, #48]                  ; 4-byte Folded Reload
	b	LBB0_37
Ltmp85:
LBB0_31:
	;DEBUG_VALUE: parse_writemask:val <- $w9
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w10
	;DEBUG_VALUE: parse_writemask:g <- $w21
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:xybits <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:operand <- [DW_OP_constu 9223371899415822335, DW_OP_and, DW_OP_stack_value] $x22
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	mov	x10, #-1
Ltmp86:
	.loc	3 86 23 is_stmt 1               ; ./emulate.h:86:23
	lsl	x10, x10, x21
	.loc	3 86 17 is_stmt 0               ; ./emulate.h:86:17
	mvn	x10, x10
	.loc	3 86 30                         ; ./emulate.h:86:30
	lsl	x24, x10, x9
	b	LBB0_37
Ltmp87:
LBB0_32:
	;DEBUG_VALUE: parse_writemask:val <- $w9
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w10
	;DEBUG_VALUE: parse_writemask:g <- $w21
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:xybits <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:operand <- [DW_OP_constu 9223371899415822335, DW_OP_and, DW_OP_stack_value] $x22
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	.loc	3 88 13 is_stmt 1               ; ./emulate.h:88:13
	cbz	w9, LBB0_152
Ltmp88:
LBB0_33:
	;DEBUG_VALUE: parse_writemask:val <- $w9
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w10
	;DEBUG_VALUE: parse_writemask:g <- $w21
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:xybits <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:operand <- [DW_OP_constu 9223371899415822335, DW_OP_and, DW_OP_stack_value] $x22
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	.loc	3 0 13 is_stmt 0                ; ./emulate.h:0:13
	mov	x10, #-1
Ltmp89:
	.loc	3 91 22 is_stmt 1               ; ./emulate.h:91:22
	lsl	x9, x10, x9
Ltmp90:
	.loc	3 0 22 is_stmt 0                ; ./emulate.h:0:22
	b	LBB0_36
Ltmp91:
LBB0_34:
	;DEBUG_VALUE: parse_writemask:val <- $w9
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w10
	;DEBUG_VALUE: parse_writemask:g <- $w21
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:xybits <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:operand <- [DW_OP_constu 9223371899415822335, DW_OP_and, DW_OP_stack_value] $x22
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	.loc	3 93 13 is_stmt 1               ; ./emulate.h:93:13
	cbz	w9, LBB0_152
Ltmp92:
LBB0_35:
	;DEBUG_VALUE: parse_writemask:val <- $w9
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w10
	;DEBUG_VALUE: parse_writemask:g <- $w21
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:xybits <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:operand <- [DW_OP_constu 9223371899415822335, DW_OP_and, DW_OP_stack_value] $x22
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	.loc	3 0 13 is_stmt 0                ; ./emulate.h:0:13
	mov	x10, #-1
Ltmp93:
	.loc	3 96 22 is_stmt 1               ; ./emulate.h:96:22
	lsr	x9, x10, x9
Ltmp94:
LBB0_36:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:g <- $w21
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:xybits <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:operand <- [DW_OP_constu 9223371899415822335, DW_OP_and, DW_OP_stack_value] $x22
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	.loc	3 0 0 is_stmt 0                 ; ./emulate.h:0:0
	mvn	x24, x9
Ltmp95:
LBB0_37:
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:xybits <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:operand <- [DW_OP_constu 9223371899415822335, DW_OP_and, DW_OP_stack_value] $x22
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	.loc	2 53 59 is_stmt 1               ; matfp.c:53:59
	ubfx	x10, x22, #23, #3
	.loc	2 53 81 is_stmt 0               ; matfp.c:53:81
	lsr	x9, x25, #58
	.loc	2 53 70                         ; matfp.c:53:70
	mov	x11, x9
	bfi	w11, w10, #6, #3
Ltmp96:
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: parse_writemask:g <- $w21
	;DEBUG_VALUE: parse_writemask:val <- $w11
	.loc	3 66 44 is_stmt 1               ; ./emulate.h:66:44
	ubfx	w12, w10, #0, #26
Ltmp97:
	;DEBUG_VALUE: parse_writemask:mode <- $w12
	.loc	3 67 9                          ; ./emulate.h:67:9
	cmp	w11, #64
	csinc	w13, w21, wzr, hs
Ltmp98:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:val <- undef
	.loc	3 70 5                          ; ./emulate.h:70:5
	cmp	w12, #5
	b.hi	LBB0_43
Ltmp99:
; %bb.38:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w12
	;DEBUG_VALUE: parse_writemask:g <- $w21
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:xybits <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:operand <- [DW_OP_constu 9223371899415822335, DW_OP_and, DW_OP_stack_value] $x22
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	.loc	3 0 5 is_stmt 0                 ; ./emulate.h:0:5
	mul	w13, w13, w11
	and	w11, w13, #0x3f
Ltmp100:
	;DEBUG_VALUE: parse_writemask:val <- $w11
Lloh16:
	adrp	x14, lJTI0_2@PAGE
Lloh17:
	add	x14, x14, lJTI0_2@PAGEOFF
	adr	x15, LBB0_39
	ldrb	w16, [x14, x12]
	add	x15, x15, x16, lsl #2
	br	x15
Ltmp101:
LBB0_39:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w12
	;DEBUG_VALUE: parse_writemask:val <- $w11
	;DEBUG_VALUE: parse_writemask:g <- $w21
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:xybits <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:operand <- [DW_OP_constu 9223371899415822335, DW_OP_and, DW_OP_stack_value] $x22
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	.loc	3 72 22 is_stmt 1               ; ./emulate.h:72:22
	sub	w14, w11, #1
	mov	x12, #-1
Ltmp102:
	cmp	w14, #1
	b.hi	LBB0_42
Ltmp103:
; %bb.40:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:val <- $w11
	;DEBUG_VALUE: parse_writemask:g <- $w21
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:xybits <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:operand <- [DW_OP_constu 9223371899415822335, DW_OP_and, DW_OP_stack_value] $x22
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	.loc	3 74 25                         ; ./emulate.h:74:25
	lsl	x12, x12, x21
	.loc	3 74 19 is_stmt 0               ; ./emulate.h:74:19
	mvn	x12, x12
	.loc	3 74 45                         ; ./emulate.h:74:45
	sbfx	w13, w13, #0, #1
	.loc	3 74 37                         ; ./emulate.h:74:37
	and	w13, w13, w21
	.loc	3 74 31                         ; ./emulate.h:74:31
	lsl	x12, x12, x13
Ltmp104:
	;DEBUG_VALUE: parse_writemask:all <- $x12
	;DEBUG_VALUE: parse_writemask:g <- $w21
	.loc	3 75 23 is_stmt 1               ; ./emulate.h:75:23
	lsr	w13, w17, #2
Ltmp105:
	;DEBUG_VALUE: parse_writemask:g <- $w13
LBB0_41:                                ; =>This Inner Loop Header: Depth=1
	;DEBUG_VALUE: parse_writemask:g <- $w13
	;DEBUG_VALUE: parse_writemask:all <- $x12
	;DEBUG_VALUE: parse_writemask:val <- $w11
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:xybits <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:operand <- [DW_OP_constu 9223371899415822335, DW_OP_and, DW_OP_stack_value] $x22
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	;DEBUG_VALUE: parse_writemask:all <- $x12
	.loc	3 76 28                         ; ./emulate.h:76:28
	lsl	x14, x12, x13
	.loc	3 76 21 is_stmt 0               ; ./emulate.h:76:21
	orr	x12, x14, x12
Ltmp106:
	;DEBUG_VALUE: parse_writemask:all <- $x12
	;DEBUG_VALUE: parse_writemask:g <- $w13
	.loc	3 75 23 is_stmt 1               ; ./emulate.h:75:23
	lsl	w14, w13, #1
Ltmp107:
	;DEBUG_VALUE: parse_writemask:g <- $w14
	.loc	3 75 13 is_stmt 0               ; ./emulate.h:75:13
	cmp	w13, #32
	mov	x13, x14
Ltmp108:
	;DEBUG_VALUE: parse_writemask:g <- $w13
	b.lo	LBB0_41
Ltmp109:
LBB0_42:
	;DEBUG_VALUE: parse_writemask:val <- $w11
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:xybits <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:operand <- [DW_OP_constu 9223371899415822335, DW_OP_and, DW_OP_stack_value] $x22
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	;DEBUG_VALUE: parse_writemask:all <- $x12
	.loc	3 83 16 is_stmt 1               ; ./emulate.h:83:16
	cmp	w11, #6
	csel	x11, x12, xzr, lo
Ltmp110:
	.loc	3 0 16 is_stmt 0                ; ./emulate.h:0:16
	b	LBB0_50
Ltmp111:
LBB0_43:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w12
	;DEBUG_VALUE: parse_writemask:g <- $w21
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:xybits <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:operand <- [DW_OP_constu 9223371899415822335, DW_OP_and, DW_OP_stack_value] $x22
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	str	xzr, [sp, #48]                  ; 8-byte Folded Spill
Ltmp112:
	;DEBUG_VALUE: emulate_AMX_MATFP:xybits <- undef
	b	LBB0_51
Ltmp113:
LBB0_44:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w12
	;DEBUG_VALUE: parse_writemask:val <- $w11
	;DEBUG_VALUE: parse_writemask:g <- $w21
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:xybits <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:operand <- [DW_OP_constu 9223371899415822335, DW_OP_and, DW_OP_stack_value] $x22
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	mov	x12, #-1
Ltmp114:
	.loc	3 86 23 is_stmt 1               ; ./emulate.h:86:23
	lsl	x12, x12, x21
	.loc	3 86 17 is_stmt 0               ; ./emulate.h:86:17
	mvn	x12, x12
	.loc	3 86 30                         ; ./emulate.h:86:30
	lsl	x11, x12, x11
Ltmp115:
	.loc	3 0 30                          ; ./emulate.h:0:30
	b	LBB0_50
Ltmp116:
LBB0_45:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w12
	;DEBUG_VALUE: parse_writemask:val <- $w11
	;DEBUG_VALUE: parse_writemask:g <- $w21
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:xybits <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:operand <- [DW_OP_constu 9223371899415822335, DW_OP_and, DW_OP_stack_value] $x22
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	.loc	3 88 13 is_stmt 1               ; ./emulate.h:88:13
	cbz	w11, LBB0_151
Ltmp117:
LBB0_46:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w12
	;DEBUG_VALUE: parse_writemask:val <- $w11
	;DEBUG_VALUE: parse_writemask:g <- $w21
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:xybits <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:operand <- [DW_OP_constu 9223371899415822335, DW_OP_and, DW_OP_stack_value] $x22
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	.loc	3 0 13 is_stmt 0                ; ./emulate.h:0:13
	mov	x12, #-1
Ltmp118:
	.loc	3 91 22 is_stmt 1               ; ./emulate.h:91:22
	lsl	x11, x12, x11
Ltmp119:
	.loc	3 0 22 is_stmt 0                ; ./emulate.h:0:22
	b	LBB0_49
Ltmp120:
LBB0_47:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w12
	;DEBUG_VALUE: parse_writemask:val <- $w11
	;DEBUG_VALUE: parse_writemask:g <- $w21
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:xybits <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:operand <- [DW_OP_constu 9223371899415822335, DW_OP_and, DW_OP_stack_value] $x22
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	.loc	3 93 13 is_stmt 1               ; ./emulate.h:93:13
	cbz	w11, LBB0_151
Ltmp121:
LBB0_48:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w12
	;DEBUG_VALUE: parse_writemask:val <- $w11
	;DEBUG_VALUE: parse_writemask:g <- $w21
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:xybits <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:operand <- [DW_OP_constu 9223371899415822335, DW_OP_and, DW_OP_stack_value] $x22
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	.loc	3 0 13 is_stmt 0                ; ./emulate.h:0:13
	mov	x12, #-1
Ltmp122:
	.loc	3 96 22 is_stmt 1               ; ./emulate.h:96:22
	lsr	x11, x12, x11
Ltmp123:
LBB0_49:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:g <- $w21
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:xybits <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:operand <- [DW_OP_constu 9223371899415822335, DW_OP_and, DW_OP_stack_value] $x22
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	.loc	3 0 0 is_stmt 0                 ; ./emulate.h:0:0
	mvn	x11, x11
Ltmp124:
LBB0_50:
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:xybits <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:operand <- [DW_OP_constu 9223371899415822335, DW_OP_and, DW_OP_stack_value] $x22
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	str	x11, [sp, #48]                  ; 8-byte Folded Spill
Ltmp125:
	;DEBUG_VALUE: emulate_AMX_MATFP:xybits <- undef
LBB0_51:
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:operand <- [DW_OP_constu 9223371899415822335, DW_OP_and, DW_OP_stack_value] $x22
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- -1
	.loc	2 55 35 is_stmt 1               ; matfp.c:55:35
	tst	x22, #0x1c000000000
	ldr	w12, [sp, #40]                  ; 4-byte Folded Reload
Ltmp126:
	.loc	2 55 9 is_stmt 0                ; matfp.c:55:9
	b.eq	LBB0_55
Ltmp127:
LBB0_52:
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- -1
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:operand <- [DW_OP_constu 9223371899415822335, DW_OP_and, DW_OP_stack_value] $x22
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	.loc	2 0 9                           ; matfp.c:0:9
	mov	w25, #-1
Ltmp128:
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	.loc	2 63 9 is_stmt 1                ; matfp.c:63:9
	cbnz	x10, LBB0_59
Ltmp129:
LBB0_53:
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:operand <- [DW_OP_constu 9223371899415822335, DW_OP_and, DW_OP_stack_value] $x22
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	;DEBUG_VALUE: val <- $w9
	.loc	2 65 13                         ; matfp.c:65:13
	cmp	w9, #3
	b.ne	LBB0_57
Ltmp130:
; %bb.54:
	;DEBUG_VALUE: val <- $w9
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:operand <- [DW_OP_constu 9223371899415822335, DW_OP_and, DW_OP_stack_value] $x22
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	.loc	2 0 13 is_stmt 0                ; matfp.c:0:13
	mov	w25, #0
Ltmp131:
	b	LBB0_59
Ltmp132:
LBB0_55:
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- -1
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:operand <- [DW_OP_constu 9223371899415822335, DW_OP_and, DW_OP_stack_value] $x22
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	.loc	2 56 24 is_stmt 1               ; matfp.c:56:24
	and	w11, w8, #0x1f
Ltmp133:
	;DEBUG_VALUE: val <- $w11
	.loc	2 57 13                         ; matfp.c:57:13
	cmp	w11, #3
	b.ne	LBB0_106
Ltmp134:
; %bb.56:
	;DEBUG_VALUE: val <- $w11
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- -1
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:operand <- [DW_OP_constu 9223371899415822335, DW_OP_and, DW_OP_stack_value] $x22
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	.loc	2 0 13 is_stmt 0                ; matfp.c:0:13
	mov	w25, #0
Ltmp135:
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	cbnz	x10, LBB0_59
	b	LBB0_53
Ltmp136:
LBB0_57:
	;DEBUG_VALUE: val <- $w9
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:operand <- [DW_OP_constu 9223371899415822335, DW_OP_and, DW_OP_stack_value] $x22
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	.loc	2 67 29 is_stmt 1               ; matfp.c:67:29
	and	w8, w9, #0x1e
	cmp	w8, #4
	b.ne	LBB0_59
Ltmp137:
; %bb.58:
	;DEBUG_VALUE: val <- $w9
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:operand <- [DW_OP_constu 9223371899415822335, DW_OP_and, DW_OP_stack_value] $x22
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	.loc	2 68 13                         ; matfp.c:68:13
	movi.2d	v0, #0000000000000000
	stp	q0, q0, [sp, #112]
	stp	q0, q0, [sp, #80]
Ltmp138:
LBB0_59:
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:operand <- [DW_OP_constu 9223371899415822335, DW_OP_and, DW_OP_stack_value] $x22
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	.loc	2 0 13 is_stmt 0                ; matfp.c:0:13
	ldr	w9, [sp, #32]                   ; 4-byte Folded Reload
Ltmp139:
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:z_row <- undef
	.loc	2 73 9 is_stmt 1                ; matfp.c:73:9
	cbz	w12, LBB0_71
Ltmp140:
; %bb.60:
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:operand <- [DW_OP_constu 9223371899415822335, DW_OP_and, DW_OP_stack_value] $x22
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	.loc	2 0 9 is_stmt 0                 ; matfp.c:0:9
	ubfx	x8, x22, #20, #1
	ldr	w9, [sp, #64]                   ; 4-byte Folded Reload
Ltmp141:
	.loc	2 74 13 is_stmt 1               ; matfp.c:74:13
	tbz	w9, #0, LBB0_85
Ltmp142:
; %bb.61:
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:operand <- [DW_OP_constu 9223371899415822335, DW_OP_and, DW_OP_stack_value] $x22
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	.loc	2 0 13 is_stmt 0                ; matfp.c:0:13
	mov	x19, #0
	lsl	x8, x8, #6
	str	x8, [sp, #64]                   ; 8-byte Folded Spill
	add	x23, sp, #144
	add	x26, sp, #80
	b	LBB0_63
Ltmp143:
LBB0_62:                                ;   in Loop: Header=BB0_63 Depth=1
	;DEBUG_VALUE: j <- $x19
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	.loc	2 84 44 is_stmt 1               ; matfp.c:84:44
	add	x19, x19, #1
Ltmp144:
	;DEBUG_VALUE: j <- $x19
	.loc	2 84 13 is_stmt 0               ; matfp.c:84:13
	cmp	x19, #32
	b.eq	LBB0_1
Ltmp145:
LBB0_63:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_68 Depth 2
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	;DEBUG_VALUE: j <- $x19
	.loc	2 85 38 is_stmt 1               ; matfp.c:85:38
	mul	x8, x19, x21
	ldr	x9, [sp, #48]                   ; 8-byte Folded Reload
Ltmp146:
	.loc	2 85 21 is_stmt 0               ; matfp.c:85:21
	lsr	x8, x9, x8
	tbz	w8, #0, LBB0_62
Ltmp147:
; %bb.64:                               ;   in Loop: Header=BB0_63 Depth=1
	;DEBUG_VALUE: j <- $x19
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	;DEBUG_VALUE: i <- 0
	.loc	2 0 21                          ; matfp.c:0:21
	mov	x27, #0
	mov	x28, #0
	ldp	x8, x9, [sp, #64]               ; 16-byte Folded Reload
	bfi	x8, x19, #7, #57
	add	x8, x9, x8
	add	x22, x8, #1024
	b	LBB0_68
Ltmp148:
LBB0_65:                                ;   in Loop: Header=BB0_68 Depth=2
	;DEBUG_VALUE: i <- [DW_OP_consts 2, DW_OP_div, DW_OP_stack_value] $x28
	;DEBUG_VALUE: j <- $x19
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	.loc	2 89 46 is_stmt 1               ; matfp.c:89:46
	ldr	h0, [x23, x28]
	.loc	2 89 56 is_stmt 0               ; matfp.c:89:56
	ldr	h1, [x26, x19, lsl #1]
	.loc	2 89 66                         ; matfp.c:89:66
	ldr	h2, [x22, x28]
	.loc	2 89 34                         ; matfp.c:89:34
	mov	x0, x20
	bl	_vecfp_alu16
Ltmp149:
LBB0_66:                                ;   in Loop: Header=BB0_68 Depth=2
	;DEBUG_VALUE: i <- [DW_OP_consts 2, DW_OP_div, DW_OP_stack_value] $x28
	;DEBUG_VALUE: j <- $x19
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	.loc	2 89 24                         ; matfp.c:89:24
	str	h0, [x22, x28]
Ltmp150:
LBB0_67:                                ;   in Loop: Header=BB0_68 Depth=2
	;DEBUG_VALUE: i <- [DW_OP_consts 2, DW_OP_div, DW_OP_stack_value] $x28
	;DEBUG_VALUE: j <- $x19
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	;DEBUG_VALUE: i <- [DW_OP_consts 2, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] $x28
	.loc	2 86 40 is_stmt 1               ; matfp.c:86:40
	add	x28, x28, #2
Ltmp151:
	add	x27, x27, x21
Ltmp152:
	.loc	2 86 17 is_stmt 0               ; matfp.c:86:17
	cmp	x28, #64
	b.eq	LBB0_62
Ltmp153:
LBB0_68:                                ;   Parent Loop BB0_63 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	;DEBUG_VALUE: j <- $x19
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	;DEBUG_VALUE: i <- [DW_OP_consts 2, DW_OP_div, DW_OP_stack_value] $x28
	.loc	2 87 25 is_stmt 1               ; matfp.c:87:25
	lsr	x8, x24, x27
	tbz	w8, #0, LBB0_67
Ltmp154:
; %bb.69:                               ;   in Loop: Header=BB0_68 Depth=2
	;DEBUG_VALUE: i <- [DW_OP_consts 2, DW_OP_div, DW_OP_stack_value] $x28
	;DEBUG_VALUE: j <- $x19
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	;DEBUG_VALUE: z <- [DW_OP_LLVM_arg 0, DW_OP_consts 2, DW_OP_div, DW_OP_consts 2, DW_OP_mul, DW_OP_consts 1024, DW_OP_consts 64, DW_OP_LLVM_arg 0, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg 0, DW_OP_plus, DW_OP_plus, DW_OP_stack_value] undef
	.loc	2 89 26                         ; matfp.c:89:26
	cbnz	w25, LBB0_65
Ltmp155:
; %bb.70:                               ;   in Loop: Header=BB0_68 Depth=2
	;DEBUG_VALUE: i <- [DW_OP_consts 2, DW_OP_div, DW_OP_stack_value] $x28
	;DEBUG_VALUE: j <- $x19
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	.loc	2 0 26 is_stmt 0                ; matfp.c:0:26
	movi	d0, #0000000000000000
	b	LBB0_66
Ltmp156:
LBB0_71:
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:operand <- [DW_OP_constu 9223371899415822335, DW_OP_and, DW_OP_stack_value] $x22
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:z_row <- undef
	ldr	w8, [sp, #24]                   ; 4-byte Folded Reload
Ltmp157:
	.loc	2 93 28 is_stmt 1               ; matfp.c:93:28
	and	w8, w9, w8
	cmp	w8, #1
	b.ne	LBB0_95
Ltmp158:
; %bb.72:
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:operand <- [DW_OP_constu 9223371899415822335, DW_OP_and, DW_OP_stack_value] $x22
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	;DEBUG_VALUE: j <- 0
	.loc	2 0 28 is_stmt 0                ; matfp.c:0:28
	mov	x22, #0
Ltmp159:
	b	LBB0_74
Ltmp160:
LBB0_73:                                ;   in Loop: Header=BB0_74 Depth=1
	;DEBUG_VALUE: j <- $x22
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	.loc	2 94 40 is_stmt 1               ; matfp.c:94:40
	add	x22, x22, #1
Ltmp161:
	;DEBUG_VALUE: j <- $x22
	.loc	2 94 9 is_stmt 0                ; matfp.c:94:9
	cmp	x22, #32
	b.eq	LBB0_1
Ltmp162:
LBB0_74:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_79 Depth 2
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	;DEBUG_VALUE: j <- $x22
	.loc	2 95 34 is_stmt 1               ; matfp.c:95:34
	mul	x8, x22, x21
	ldr	x9, [sp, #48]                   ; 8-byte Folded Reload
Ltmp163:
	.loc	2 95 17 is_stmt 0               ; matfp.c:95:17
	lsr	x8, x9, x8
	tbz	w8, #0, LBB0_73
Ltmp164:
; %bb.75:                               ;   in Loop: Header=BB0_74 Depth=1
	;DEBUG_VALUE: j <- $x22
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	;DEBUG_VALUE: i <- 0
	.loc	2 0 17                          ; matfp.c:0:17
	mov	x28, #0
	mov	x23, #0
	lsl	w19, w22, #1
	add	x26, sp, #144
	b	LBB0_79
Ltmp165:
LBB0_76:                                ;   in Loop: Header=BB0_79 Depth=2
	;DEBUG_VALUE: z <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 4, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $x20, $x27
	;DEBUG_VALUE: yf <- $s1
	;DEBUG_VALUE: i <- $x23
	;DEBUG_VALUE: j <- $x22
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	.loc	2 101 50 is_stmt 1              ; matfp.c:101:50
	ldr	s2, [x20, x27, lsl #2]
	.loc	2 101 30 is_stmt 0              ; matfp.c:101:30
	fmov	s0, s8
	ldr	w0, [sp, #60]                   ; 4-byte Folded Reload
	bl	_vecfp_alu32
Ltmp166:
LBB0_77:                                ;   in Loop: Header=BB0_79 Depth=2
	;DEBUG_VALUE: z <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 4, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $x20, $x27
	;DEBUG_VALUE: i <- $x23
	;DEBUG_VALUE: j <- $x22
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	.loc	2 101 20                        ; matfp.c:101:20
	str	s0, [x20, x27, lsl #2]
Ltmp167:
LBB0_78:                                ;   in Loop: Header=BB0_79 Depth=2
	;DEBUG_VALUE: i <- $x23
	;DEBUG_VALUE: j <- $x22
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	.loc	2 96 44 is_stmt 1               ; matfp.c:96:44
	add	x23, x23, #1
Ltmp168:
	;DEBUG_VALUE: i <- $x23
	.loc	2 96 36 is_stmt 0               ; matfp.c:96:36
	add	x26, x26, #2
	add	x28, x28, x21
Ltmp169:
	.loc	2 96 13                         ; matfp.c:96:13
	cmp	x23, #32
	b.eq	LBB0_73
Ltmp170:
LBB0_79:                                ;   Parent Loop BB0_74 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	;DEBUG_VALUE: j <- $x22
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	;DEBUG_VALUE: i <- $x23
	.loc	2 97 21 is_stmt 1               ; matfp.c:97:21
	lsr	x8, x24, x28
	tbz	w8, #0, LBB0_78
Ltmp171:
; %bb.80:                               ;   in Loop: Header=BB0_79 Depth=2
	;DEBUG_VALUE: i <- $x23
	;DEBUG_VALUE: j <- $x22
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	;DEBUG_VALUE: z <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_constu 4, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] undef
	.loc	2 0 21 is_stmt 0                ; matfp.c:0:21
	ldr	w8, [sp, #64]                   ; 4-byte Folded Reload
	.loc	2 99 28 is_stmt 1               ; matfp.c:99:28
	tbz	w8, #0, LBB0_82
Ltmp172:
; %bb.81:                               ;   in Loop: Header=BB0_79 Depth=2
	;DEBUG_VALUE: i <- $x23
	;DEBUG_VALUE: j <- $x22
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	.loc	2 99 59 is_stmt 0               ; matfp.c:99:59
	ldr	h0, [x26]
	fcvt	s8, h0
	.loc	2 100 59 is_stmt 1              ; matfp.c:100:59
	add	x8, sp, #80
	ldr	h0, [x8, x22, lsl #1]
	fcvt	s1, h0
	b	LBB0_83
Ltmp173:
LBB0_82:                                ;   in Loop: Header=BB0_79 Depth=2
	;DEBUG_VALUE: i <- $x23
	;DEBUG_VALUE: j <- $x22
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	.loc	2 99 47                         ; matfp.c:99:47
	ldrh	w0, [x26]
	.loc	2 99 35 is_stmt 0               ; matfp.c:99:35
	bl	_bf16_to_f32
Ltmp174:
	fmov	s8, s0
Ltmp175:
	;DEBUG_VALUE: xf <- $s8
	.loc	2 100 47 is_stmt 1              ; matfp.c:100:47
	add	x8, sp, #80
	ldrh	w0, [x8, x22, lsl #1]
	.loc	2 100 35 is_stmt 0              ; matfp.c:100:35
	bl	_bf16_to_f32
Ltmp176:
	fmov	s1, s0
Ltmp177:
LBB0_83:                                ;   in Loop: Header=BB0_79 Depth=2
	;DEBUG_VALUE: i <- $x23
	;DEBUG_VALUE: j <- $x22
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	.loc	2 0 0                           ; matfp.c:0:0
	and	x8, x23, #0x1
	orr	x8, x8, x19
	ldr	x9, [sp, #72]                   ; 8-byte Folded Reload
	add	x8, x9, x8, lsl #6
	add	x20, x8, #1024
Ltmp178:
	;DEBUG_VALUE: z <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_constu 4, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] undef
	ubfx	x27, x23, #1, #31
Ltmp179:
	;DEBUG_VALUE: yf <- $s1
	;DEBUG_VALUE: z <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 4, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $x20, $x27
	.loc	2 101 22 is_stmt 1              ; matfp.c:101:22
	cbnz	w25, LBB0_76
Ltmp180:
; %bb.84:                               ;   in Loop: Header=BB0_79 Depth=2
	;DEBUG_VALUE: z <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 4, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $x20, $x27
	;DEBUG_VALUE: yf <- $s1
	;DEBUG_VALUE: i <- $x23
	;DEBUG_VALUE: j <- $x22
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	.loc	2 0 22 is_stmt 0                ; matfp.c:0:22
	movi	d0, #0000000000000000
	b	LBB0_77
Ltmp181:
LBB0_85:
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:operand <- [DW_OP_constu 9223371899415822335, DW_OP_and, DW_OP_stack_value] $x22
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	mov	x19, #0
	lsl	x8, x8, #6
	str	x8, [sp, #64]                   ; 8-byte Folded Spill
	add	x23, sp, #144
	add	x26, sp, #80
	b	LBB0_87
Ltmp182:
LBB0_86:                                ;   in Loop: Header=BB0_87 Depth=1
	;DEBUG_VALUE: j <- $x19
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	.loc	2 75 44 is_stmt 1               ; matfp.c:75:44
	add	x19, x19, #1
Ltmp183:
	;DEBUG_VALUE: j <- $x19
	.loc	2 75 13 is_stmt 0               ; matfp.c:75:13
	cmp	x19, #32
	b.eq	LBB0_1
Ltmp184:
LBB0_87:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_92 Depth 2
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	;DEBUG_VALUE: j <- $x19
	.loc	2 76 38 is_stmt 1               ; matfp.c:76:38
	mul	x8, x19, x21
	ldr	x9, [sp, #48]                   ; 8-byte Folded Reload
Ltmp185:
	.loc	2 76 21 is_stmt 0               ; matfp.c:76:21
	lsr	x8, x9, x8
	tbz	w8, #0, LBB0_86
Ltmp186:
; %bb.88:                               ;   in Loop: Header=BB0_87 Depth=1
	;DEBUG_VALUE: j <- $x19
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	;DEBUG_VALUE: i <- 0
	.loc	2 0 21                          ; matfp.c:0:21
	mov	x27, #0
	mov	x28, #0
	ldp	x8, x9, [sp, #64]               ; 16-byte Folded Reload
	bfi	x8, x19, #7, #57
	add	x8, x9, x8
	add	x22, x8, #1024
	b	LBB0_92
Ltmp187:
LBB0_89:                                ;   in Loop: Header=BB0_92 Depth=2
	;DEBUG_VALUE: i <- [DW_OP_consts 2, DW_OP_div, DW_OP_stack_value] $x28
	;DEBUG_VALUE: j <- $x19
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	.loc	2 80 49 is_stmt 1               ; matfp.c:80:49
	ldrh	w0, [x23, x28]
	.loc	2 80 59 is_stmt 0               ; matfp.c:80:59
	ldrh	w1, [x26, x19, lsl #1]
	.loc	2 80 69                         ; matfp.c:80:69
	ldrh	w2, [x22, x28]
	.loc	2 80 34                         ; matfp.c:80:34
	mov	x3, x20
	bl	_vecfp_alu_bf16
Ltmp188:
LBB0_90:                                ;   in Loop: Header=BB0_92 Depth=2
	;DEBUG_VALUE: i <- [DW_OP_consts 2, DW_OP_div, DW_OP_stack_value] $x28
	;DEBUG_VALUE: j <- $x19
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	.loc	2 80 24                         ; matfp.c:80:24
	strh	w0, [x22, x28]
Ltmp189:
LBB0_91:                                ;   in Loop: Header=BB0_92 Depth=2
	;DEBUG_VALUE: i <- [DW_OP_consts 2, DW_OP_div, DW_OP_stack_value] $x28
	;DEBUG_VALUE: j <- $x19
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	;DEBUG_VALUE: i <- [DW_OP_consts 2, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] $x28
	.loc	2 77 40 is_stmt 1               ; matfp.c:77:40
	add	x28, x28, #2
Ltmp190:
	add	x27, x27, x21
Ltmp191:
	.loc	2 77 17 is_stmt 0               ; matfp.c:77:17
	cmp	x28, #64
	b.eq	LBB0_86
Ltmp192:
LBB0_92:                                ;   Parent Loop BB0_87 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	;DEBUG_VALUE: j <- $x19
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	;DEBUG_VALUE: i <- [DW_OP_consts 2, DW_OP_div, DW_OP_stack_value] $x28
	.loc	2 78 25 is_stmt 1               ; matfp.c:78:25
	lsr	x8, x24, x27
	tbz	w8, #0, LBB0_91
Ltmp193:
; %bb.93:                               ;   in Loop: Header=BB0_92 Depth=2
	;DEBUG_VALUE: i <- [DW_OP_consts 2, DW_OP_div, DW_OP_stack_value] $x28
	;DEBUG_VALUE: j <- $x19
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	;DEBUG_VALUE: z <- [DW_OP_LLVM_arg 0, DW_OP_consts 2, DW_OP_div, DW_OP_consts 2, DW_OP_mul, DW_OP_consts 1024, DW_OP_consts 64, DW_OP_LLVM_arg 0, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg 0, DW_OP_plus, DW_OP_plus, DW_OP_stack_value] undef
	.loc	2 80 26                         ; matfp.c:80:26
	cbnz	w25, LBB0_89
Ltmp194:
; %bb.94:                               ;   in Loop: Header=BB0_92 Depth=2
	;DEBUG_VALUE: i <- [DW_OP_consts 2, DW_OP_div, DW_OP_stack_value] $x28
	;DEBUG_VALUE: j <- $x19
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	.loc	2 0 26 is_stmt 0                ; matfp.c:0:26
	mov	w0, #0
	b	LBB0_90
Ltmp195:
LBB0_95:
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:operand <- [DW_OP_constu 9223371899415822335, DW_OP_and, DW_OP_stack_value] $x22
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:z_row <- undef
	ldr	w8, [sp, #16]                   ; 4-byte Folded Reload
Ltmp196:
	.loc	2 104 28 is_stmt 1              ; matfp.c:104:28
	and	w8, w9, w8
	tbz	w8, #0, LBB0_108
Ltmp197:
; %bb.96:
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:operand <- [DW_OP_constu 9223371899415822335, DW_OP_and, DW_OP_stack_value] $x22
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	;DEBUG_VALUE: j <- 0
	.loc	2 0 28 is_stmt 0                ; matfp.c:0:28
	mov	x19, #0
	ubfx	x8, x22, #20, #2
	lsl	x8, x8, #6
	str	x8, [sp, #64]                   ; 8-byte Folded Spill
	add	x23, sp, #144
	add	x26, sp, #80
	b	LBB0_98
Ltmp198:
LBB0_97:                                ;   in Loop: Header=BB0_98 Depth=1
	;DEBUG_VALUE: j <- $x19
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	.loc	2 105 40 is_stmt 1              ; matfp.c:105:40
	add	x19, x19, #1
Ltmp199:
	;DEBUG_VALUE: j <- $x19
	.loc	2 105 9 is_stmt 0               ; matfp.c:105:9
	cmp	x19, #16
	b.eq	LBB0_1
Ltmp200:
LBB0_98:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_103 Depth 2
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	;DEBUG_VALUE: j <- $x19
	.loc	2 106 34 is_stmt 1              ; matfp.c:106:34
	mul	x8, x19, x21
	ldr	x9, [sp, #48]                   ; 8-byte Folded Reload
Ltmp201:
	.loc	2 106 17 is_stmt 0              ; matfp.c:106:17
	lsr	x8, x9, x8
	tbz	w8, #0, LBB0_97
Ltmp202:
; %bb.99:                               ;   in Loop: Header=BB0_98 Depth=1
	;DEBUG_VALUE: j <- $x19
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	;DEBUG_VALUE: i <- 0
	.loc	2 0 17                          ; matfp.c:0:17
	mov	x27, #0
	mov	x28, #0
	ldp	x8, x9, [sp, #64]               ; 16-byte Folded Reload
	bfi	x8, x19, #8, #56
	add	x8, x9, x8
	add	x22, x8, #1024
	b	LBB0_103
Ltmp203:
LBB0_100:                               ;   in Loop: Header=BB0_103 Depth=2
	;DEBUG_VALUE: i <- [DW_OP_consts 4, DW_OP_div, DW_OP_stack_value] $x28
	;DEBUG_VALUE: j <- $x19
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	.loc	2 110 42 is_stmt 1              ; matfp.c:110:42
	ldr	s0, [x23, x28]
	.loc	2 110 52 is_stmt 0              ; matfp.c:110:52
	ldr	s1, [x26, x19, lsl #2]
	.loc	2 110 62                        ; matfp.c:110:62
	ldr	s2, [x22, x28]
	.loc	2 110 30                        ; matfp.c:110:30
	mov	x0, x20
	bl	_vecfp_alu32
Ltmp204:
LBB0_101:                               ;   in Loop: Header=BB0_103 Depth=2
	;DEBUG_VALUE: i <- [DW_OP_consts 4, DW_OP_div, DW_OP_stack_value] $x28
	;DEBUG_VALUE: j <- $x19
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	.loc	2 110 20                        ; matfp.c:110:20
	str	s0, [x22, x28]
Ltmp205:
LBB0_102:                               ;   in Loop: Header=BB0_103 Depth=2
	;DEBUG_VALUE: i <- [DW_OP_consts 4, DW_OP_div, DW_OP_stack_value] $x28
	;DEBUG_VALUE: j <- $x19
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	;DEBUG_VALUE: i <- [DW_OP_consts 4, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] $x28
	.loc	2 107 36 is_stmt 1              ; matfp.c:107:36
	add	x28, x28, #4
Ltmp206:
	add	x27, x27, x21
Ltmp207:
	.loc	2 107 13 is_stmt 0              ; matfp.c:107:13
	cmp	x28, #64
	b.eq	LBB0_97
Ltmp208:
LBB0_103:                               ;   Parent Loop BB0_98 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	;DEBUG_VALUE: j <- $x19
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	;DEBUG_VALUE: i <- [DW_OP_consts 4, DW_OP_div, DW_OP_stack_value] $x28
	.loc	2 108 21 is_stmt 1              ; matfp.c:108:21
	lsr	x8, x24, x27
	tbz	w8, #0, LBB0_102
Ltmp209:
; %bb.104:                              ;   in Loop: Header=BB0_103 Depth=2
	;DEBUG_VALUE: i <- [DW_OP_consts 4, DW_OP_div, DW_OP_stack_value] $x28
	;DEBUG_VALUE: j <- $x19
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	;DEBUG_VALUE: z <- [DW_OP_LLVM_arg 0, DW_OP_consts 4, DW_OP_div, DW_OP_consts 4, DW_OP_mul, DW_OP_consts 1024, DW_OP_consts 64, DW_OP_LLVM_arg 0, DW_OP_mul, DW_OP_plus, DW_OP_LLVM_arg 0, DW_OP_plus, DW_OP_plus, DW_OP_stack_value] undef
	.loc	2 110 22                        ; matfp.c:110:22
	cbnz	w25, LBB0_100
Ltmp210:
; %bb.105:                              ;   in Loop: Header=BB0_103 Depth=2
	;DEBUG_VALUE: i <- [DW_OP_consts 4, DW_OP_div, DW_OP_stack_value] $x28
	;DEBUG_VALUE: j <- $x19
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	.loc	2 0 22 is_stmt 0                ; matfp.c:0:22
	movi	d0, #0000000000000000
	b	LBB0_101
Ltmp211:
LBB0_106:
	;DEBUG_VALUE: val <- $w11
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- -1
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:operand <- [DW_OP_constu 9223371899415822335, DW_OP_and, DW_OP_stack_value] $x22
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	.loc	2 59 29 is_stmt 1               ; matfp.c:59:29
	and	w8, w8, #0x1e
	cmp	w8, #4
	b.ne	LBB0_52
Ltmp212:
; %bb.107:
	;DEBUG_VALUE: val <- $w11
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- -1
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:operand <- [DW_OP_constu 9223371899415822335, DW_OP_and, DW_OP_stack_value] $x22
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	.loc	2 60 13                         ; matfp.c:60:13
	movi.2d	v0, #0000000000000000
	stp	q0, q0, [sp, #176]
	stp	q0, q0, [sp, #144]
	b	LBB0_52
Ltmp213:
LBB0_108:
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:operand <- [DW_OP_constu 9223371899415822335, DW_OP_and, DW_OP_stack_value] $x22
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	.loc	2 0 13 is_stmt 0                ; matfp.c:0:13
	mov	x26, #0
	mov	x27, #0
	ubfx	x19, x22, #20, #3
	;DEBUG_VALUE: j <- 0
Ltmp214:
	;DEBUG_VALUE: emulate_AMX_MATFP:z_row <- $x19
	mov	w8, #1
	lsl	x9, x8, x21
	and	x23, x9, x24
	ubfiz	x9, x21, #1, #32
	lsl	x10, x8, x9
	and	x10, x10, x24
	str	x10, [sp, #64]                  ; 8-byte Folded Spill
	add	x9, x9, x21
	lsl	x10, x8, x9
	and	x10, x10, x24
	str	x10, [sp, #40]                  ; 8-byte Folded Spill
	ubfiz	x10, x21, #2, #32
	lsl	x11, x8, x10
	and	x11, x11, x24
	add	x10, x10, x21
	lsl	x10, x8, x10
	and	x10, x10, x24
	stp	x10, x11, [sp, #24]             ; 16-byte Folded Spill
	lsl	x9, x9, #1
	lsl	x9, x8, x9
	and	x9, x9, x24
	str	x9, [sp, #16]                   ; 8-byte Folded Spill
	ubfiz	x9, x21, #3, #32
	sub	x9, x9, x21
	lsl	x8, x8, x9
	and	x8, x8, x24
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	add	x22, sp, #80
Ltmp215:
	b	LBB0_112
Ltmp216:
LBB0_109:                               ;   in Loop: Header=BB0_112 Depth=1
	;DEBUG_VALUE: z <- [DW_OP_plus_uconst 56, DW_OP_stack_value] $x28
	;DEBUG_VALUE: i <- 7
	;DEBUG_VALUE: j <- [DW_OP_consts 8, DW_OP_div, DW_OP_stack_value] $x27
	;DEBUG_VALUE: emulate_AMX_MATFP:z_row <- $x19
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	.loc	2 119 42 is_stmt 1              ; matfp.c:119:42
	ldr	d0, [sp, #200]
	.loc	2 119 52 is_stmt 0              ; matfp.c:119:52
	ldr	d1, [x22, x27]
	.loc	2 119 62                        ; matfp.c:119:62
	ldr	d2, [x28, #56]
	.loc	2 119 30                        ; matfp.c:119:30
	mov	x0, x20
	bl	_vecfp_alu64
Ltmp217:
LBB0_110:                               ;   in Loop: Header=BB0_112 Depth=1
	;DEBUG_VALUE: z <- [DW_OP_plus_uconst 56, DW_OP_stack_value] $x28
	;DEBUG_VALUE: i <- 7
	;DEBUG_VALUE: j <- [DW_OP_consts 8, DW_OP_div, DW_OP_stack_value] $x27
	;DEBUG_VALUE: emulate_AMX_MATFP:z_row <- $x19
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	.loc	2 119 20                        ; matfp.c:119:20
	str	d0, [x28, #56]
Ltmp218:
LBB0_111:                               ;   in Loop: Header=BB0_112 Depth=1
	;DEBUG_VALUE: j <- [DW_OP_consts 8, DW_OP_div, DW_OP_stack_value] $x27
	;DEBUG_VALUE: emulate_AMX_MATFP:z_row <- $x19
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	;DEBUG_VALUE: j <- [DW_OP_consts 8, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] $x27
	.loc	2 114 32 is_stmt 1              ; matfp.c:114:32
	add	x27, x27, #8
Ltmp219:
	add	x26, x26, x21
Ltmp220:
	.loc	2 114 9 is_stmt 0               ; matfp.c:114:9
	cmp	x27, #64
	b.eq	LBB0_1
Ltmp221:
LBB0_112:                               ; =>This Inner Loop Header: Depth=1
	;DEBUG_VALUE: emulate_AMX_MATFP:z_row <- $x19
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	;DEBUG_VALUE: j <- [DW_OP_consts 8, DW_OP_div, DW_OP_stack_value] $x27
	.loc	2 0 9                           ; matfp.c:0:9
	ldr	x8, [sp, #48]                   ; 8-byte Folded Reload
Ltmp222:
	.loc	2 115 17 is_stmt 1              ; matfp.c:115:17
	lsr	x8, x8, x26
	tbz	w8, #0, LBB0_111
Ltmp223:
; %bb.113:                              ;   in Loop: Header=BB0_112 Depth=1
	;DEBUG_VALUE: j <- [DW_OP_consts 8, DW_OP_div, DW_OP_stack_value] $x27
	;DEBUG_VALUE: emulate_AMX_MATFP:z_row <- $x19
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	;DEBUG_VALUE: i <- 0
	.loc	2 0 17 is_stmt 0                ; matfp.c:0:17
	orr	x8, x19, x27
	ldr	x9, [sp, #72]                   ; 8-byte Folded Reload
	add	x8, x9, x8, lsl #6
	add	x28, x8, #1024
Ltmp224:
	.loc	2 117 21 is_stmt 1              ; matfp.c:117:21
	tbz	w24, #0, LBB0_118
Ltmp225:
; %bb.114:                              ;   in Loop: Header=BB0_112 Depth=1
	;DEBUG_VALUE: i <- 0
	;DEBUG_VALUE: j <- [DW_OP_consts 8, DW_OP_div, DW_OP_stack_value] $x27
	;DEBUG_VALUE: emulate_AMX_MATFP:z_row <- $x19
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	;DEBUG_VALUE: z <- $x28
	.loc	2 119 22                        ; matfp.c:119:22
	cbz	w25, LBB0_116
Ltmp226:
; %bb.115:                              ;   in Loop: Header=BB0_112 Depth=1
	;DEBUG_VALUE: z <- $x28
	;DEBUG_VALUE: i <- 0
	;DEBUG_VALUE: j <- [DW_OP_consts 8, DW_OP_div, DW_OP_stack_value] $x27
	;DEBUG_VALUE: emulate_AMX_MATFP:z_row <- $x19
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	.loc	2 119 42 is_stmt 0              ; matfp.c:119:42
	ldr	d0, [sp, #144]
	.loc	2 119 52                        ; matfp.c:119:52
	ldr	d1, [x22, x27]
	.loc	2 119 62                        ; matfp.c:119:62
	ldr	d2, [x28]
	.loc	2 119 30                        ; matfp.c:119:30
	mov	x0, x20
	bl	_vecfp_alu64
Ltmp227:
	.loc	2 0 30                          ; matfp.c:0:30
	b	LBB0_117
Ltmp228:
LBB0_116:                               ;   in Loop: Header=BB0_112 Depth=1
	;DEBUG_VALUE: z <- $x28
	;DEBUG_VALUE: i <- 0
	;DEBUG_VALUE: j <- [DW_OP_consts 8, DW_OP_div, DW_OP_stack_value] $x27
	;DEBUG_VALUE: emulate_AMX_MATFP:z_row <- $x19
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	movi	d0, #0000000000000000
Ltmp229:
LBB0_117:                               ;   in Loop: Header=BB0_112 Depth=1
	;DEBUG_VALUE: z <- $x28
	;DEBUG_VALUE: i <- 0
	;DEBUG_VALUE: j <- [DW_OP_consts 8, DW_OP_div, DW_OP_stack_value] $x27
	;DEBUG_VALUE: emulate_AMX_MATFP:z_row <- $x19
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	.loc	2 119 20                        ; matfp.c:119:20
	str	d0, [x28]
Ltmp230:
LBB0_118:                               ;   in Loop: Header=BB0_112 Depth=1
	;DEBUG_VALUE: i <- 0
	;DEBUG_VALUE: j <- [DW_OP_consts 8, DW_OP_div, DW_OP_stack_value] $x27
	;DEBUG_VALUE: emulate_AMX_MATFP:z_row <- $x19
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	;DEBUG_VALUE: i <- 1
	.loc	2 117 21 is_stmt 1              ; matfp.c:117:21
	cbz	x23, LBB0_123
Ltmp231:
; %bb.119:                              ;   in Loop: Header=BB0_112 Depth=1
	;DEBUG_VALUE: i <- 1
	;DEBUG_VALUE: j <- [DW_OP_consts 8, DW_OP_div, DW_OP_stack_value] $x27
	;DEBUG_VALUE: emulate_AMX_MATFP:z_row <- $x19
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	;DEBUG_VALUE: z <- [DW_OP_plus_uconst 8, DW_OP_stack_value] $x28
	.loc	2 119 22                        ; matfp.c:119:22
	cbz	w25, LBB0_121
Ltmp232:
; %bb.120:                              ;   in Loop: Header=BB0_112 Depth=1
	;DEBUG_VALUE: z <- [DW_OP_plus_uconst 8, DW_OP_stack_value] $x28
	;DEBUG_VALUE: i <- 1
	;DEBUG_VALUE: j <- [DW_OP_consts 8, DW_OP_div, DW_OP_stack_value] $x27
	;DEBUG_VALUE: emulate_AMX_MATFP:z_row <- $x19
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	.loc	2 119 42 is_stmt 0              ; matfp.c:119:42
	ldr	d0, [sp, #152]
	.loc	2 119 52                        ; matfp.c:119:52
	ldr	d1, [x22, x27]
	.loc	2 119 62                        ; matfp.c:119:62
	ldr	d2, [x28, #8]
	.loc	2 119 30                        ; matfp.c:119:30
	mov	x0, x20
	bl	_vecfp_alu64
Ltmp233:
	.loc	2 0 30                          ; matfp.c:0:30
	b	LBB0_122
Ltmp234:
LBB0_121:                               ;   in Loop: Header=BB0_112 Depth=1
	;DEBUG_VALUE: z <- [DW_OP_plus_uconst 8, DW_OP_stack_value] $x28
	;DEBUG_VALUE: i <- 1
	;DEBUG_VALUE: j <- [DW_OP_consts 8, DW_OP_div, DW_OP_stack_value] $x27
	;DEBUG_VALUE: emulate_AMX_MATFP:z_row <- $x19
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	movi	d0, #0000000000000000
Ltmp235:
LBB0_122:                               ;   in Loop: Header=BB0_112 Depth=1
	;DEBUG_VALUE: z <- [DW_OP_plus_uconst 8, DW_OP_stack_value] $x28
	;DEBUG_VALUE: i <- 1
	;DEBUG_VALUE: j <- [DW_OP_consts 8, DW_OP_div, DW_OP_stack_value] $x27
	;DEBUG_VALUE: emulate_AMX_MATFP:z_row <- $x19
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	.loc	2 119 20                        ; matfp.c:119:20
	str	d0, [x28, #8]
Ltmp236:
LBB0_123:                               ;   in Loop: Header=BB0_112 Depth=1
	;DEBUG_VALUE: i <- 1
	;DEBUG_VALUE: j <- [DW_OP_consts 8, DW_OP_div, DW_OP_stack_value] $x27
	;DEBUG_VALUE: emulate_AMX_MATFP:z_row <- $x19
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	;DEBUG_VALUE: i <- 2
	.loc	2 0 20                          ; matfp.c:0:20
	ldr	x8, [sp, #64]                   ; 8-byte Folded Reload
	.loc	2 117 21 is_stmt 1              ; matfp.c:117:21
	cbz	x8, LBB0_128
Ltmp237:
; %bb.124:                              ;   in Loop: Header=BB0_112 Depth=1
	;DEBUG_VALUE: i <- 2
	;DEBUG_VALUE: j <- [DW_OP_consts 8, DW_OP_div, DW_OP_stack_value] $x27
	;DEBUG_VALUE: emulate_AMX_MATFP:z_row <- $x19
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	;DEBUG_VALUE: z <- [DW_OP_plus_uconst 16, DW_OP_stack_value] $x28
	.loc	2 119 22                        ; matfp.c:119:22
	cbz	w25, LBB0_126
Ltmp238:
; %bb.125:                              ;   in Loop: Header=BB0_112 Depth=1
	;DEBUG_VALUE: z <- [DW_OP_plus_uconst 16, DW_OP_stack_value] $x28
	;DEBUG_VALUE: i <- 2
	;DEBUG_VALUE: j <- [DW_OP_consts 8, DW_OP_div, DW_OP_stack_value] $x27
	;DEBUG_VALUE: emulate_AMX_MATFP:z_row <- $x19
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	.loc	2 119 42 is_stmt 0              ; matfp.c:119:42
	ldr	d0, [sp, #160]
	.loc	2 119 52                        ; matfp.c:119:52
	ldr	d1, [x22, x27]
	.loc	2 119 62                        ; matfp.c:119:62
	ldr	d2, [x28, #16]
	.loc	2 119 30                        ; matfp.c:119:30
	mov	x0, x20
	bl	_vecfp_alu64
Ltmp239:
	.loc	2 0 30                          ; matfp.c:0:30
	b	LBB0_127
Ltmp240:
LBB0_126:                               ;   in Loop: Header=BB0_112 Depth=1
	;DEBUG_VALUE: z <- [DW_OP_plus_uconst 16, DW_OP_stack_value] $x28
	;DEBUG_VALUE: i <- 2
	;DEBUG_VALUE: j <- [DW_OP_consts 8, DW_OP_div, DW_OP_stack_value] $x27
	;DEBUG_VALUE: emulate_AMX_MATFP:z_row <- $x19
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	movi	d0, #0000000000000000
Ltmp241:
LBB0_127:                               ;   in Loop: Header=BB0_112 Depth=1
	;DEBUG_VALUE: z <- [DW_OP_plus_uconst 16, DW_OP_stack_value] $x28
	;DEBUG_VALUE: i <- 2
	;DEBUG_VALUE: j <- [DW_OP_consts 8, DW_OP_div, DW_OP_stack_value] $x27
	;DEBUG_VALUE: emulate_AMX_MATFP:z_row <- $x19
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	.loc	2 119 20                        ; matfp.c:119:20
	str	d0, [x28, #16]
Ltmp242:
LBB0_128:                               ;   in Loop: Header=BB0_112 Depth=1
	;DEBUG_VALUE: i <- 2
	;DEBUG_VALUE: j <- [DW_OP_consts 8, DW_OP_div, DW_OP_stack_value] $x27
	;DEBUG_VALUE: emulate_AMX_MATFP:z_row <- $x19
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	;DEBUG_VALUE: i <- 3
	.loc	2 0 20                          ; matfp.c:0:20
	ldr	x8, [sp, #40]                   ; 8-byte Folded Reload
	.loc	2 117 21 is_stmt 1              ; matfp.c:117:21
	cbz	x8, LBB0_133
Ltmp243:
; %bb.129:                              ;   in Loop: Header=BB0_112 Depth=1
	;DEBUG_VALUE: i <- 3
	;DEBUG_VALUE: j <- [DW_OP_consts 8, DW_OP_div, DW_OP_stack_value] $x27
	;DEBUG_VALUE: emulate_AMX_MATFP:z_row <- $x19
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	;DEBUG_VALUE: z <- [DW_OP_plus_uconst 24, DW_OP_stack_value] $x28
	.loc	2 119 22                        ; matfp.c:119:22
	cbz	w25, LBB0_131
Ltmp244:
; %bb.130:                              ;   in Loop: Header=BB0_112 Depth=1
	;DEBUG_VALUE: z <- [DW_OP_plus_uconst 24, DW_OP_stack_value] $x28
	;DEBUG_VALUE: i <- 3
	;DEBUG_VALUE: j <- [DW_OP_consts 8, DW_OP_div, DW_OP_stack_value] $x27
	;DEBUG_VALUE: emulate_AMX_MATFP:z_row <- $x19
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	.loc	2 119 42 is_stmt 0              ; matfp.c:119:42
	ldr	d0, [sp, #168]
	.loc	2 119 52                        ; matfp.c:119:52
	ldr	d1, [x22, x27]
	.loc	2 119 62                        ; matfp.c:119:62
	ldr	d2, [x28, #24]
	.loc	2 119 30                        ; matfp.c:119:30
	mov	x0, x20
	bl	_vecfp_alu64
Ltmp245:
	.loc	2 0 30                          ; matfp.c:0:30
	b	LBB0_132
Ltmp246:
LBB0_131:                               ;   in Loop: Header=BB0_112 Depth=1
	;DEBUG_VALUE: z <- [DW_OP_plus_uconst 24, DW_OP_stack_value] $x28
	;DEBUG_VALUE: i <- 3
	;DEBUG_VALUE: j <- [DW_OP_consts 8, DW_OP_div, DW_OP_stack_value] $x27
	;DEBUG_VALUE: emulate_AMX_MATFP:z_row <- $x19
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	movi	d0, #0000000000000000
Ltmp247:
LBB0_132:                               ;   in Loop: Header=BB0_112 Depth=1
	;DEBUG_VALUE: z <- [DW_OP_plus_uconst 24, DW_OP_stack_value] $x28
	;DEBUG_VALUE: i <- 3
	;DEBUG_VALUE: j <- [DW_OP_consts 8, DW_OP_div, DW_OP_stack_value] $x27
	;DEBUG_VALUE: emulate_AMX_MATFP:z_row <- $x19
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	.loc	2 119 20                        ; matfp.c:119:20
	str	d0, [x28, #24]
Ltmp248:
LBB0_133:                               ;   in Loop: Header=BB0_112 Depth=1
	;DEBUG_VALUE: i <- 3
	;DEBUG_VALUE: j <- [DW_OP_consts 8, DW_OP_div, DW_OP_stack_value] $x27
	;DEBUG_VALUE: emulate_AMX_MATFP:z_row <- $x19
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	;DEBUG_VALUE: i <- 4
	.loc	2 0 20                          ; matfp.c:0:20
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
	.loc	2 117 21 is_stmt 1              ; matfp.c:117:21
	cbz	x8, LBB0_138
Ltmp249:
; %bb.134:                              ;   in Loop: Header=BB0_112 Depth=1
	;DEBUG_VALUE: i <- 4
	;DEBUG_VALUE: j <- [DW_OP_consts 8, DW_OP_div, DW_OP_stack_value] $x27
	;DEBUG_VALUE: emulate_AMX_MATFP:z_row <- $x19
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	;DEBUG_VALUE: z <- [DW_OP_plus_uconst 32, DW_OP_stack_value] $x28
	.loc	2 119 22                        ; matfp.c:119:22
	cbz	w25, LBB0_136
Ltmp250:
; %bb.135:                              ;   in Loop: Header=BB0_112 Depth=1
	;DEBUG_VALUE: z <- [DW_OP_plus_uconst 32, DW_OP_stack_value] $x28
	;DEBUG_VALUE: i <- 4
	;DEBUG_VALUE: j <- [DW_OP_consts 8, DW_OP_div, DW_OP_stack_value] $x27
	;DEBUG_VALUE: emulate_AMX_MATFP:z_row <- $x19
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	.loc	2 119 42 is_stmt 0              ; matfp.c:119:42
	ldr	d0, [sp, #176]
	.loc	2 119 52                        ; matfp.c:119:52
	ldr	d1, [x22, x27]
	.loc	2 119 62                        ; matfp.c:119:62
	ldr	d2, [x28, #32]
	.loc	2 119 30                        ; matfp.c:119:30
	mov	x0, x20
	bl	_vecfp_alu64
Ltmp251:
	.loc	2 0 30                          ; matfp.c:0:30
	b	LBB0_137
Ltmp252:
LBB0_136:                               ;   in Loop: Header=BB0_112 Depth=1
	;DEBUG_VALUE: z <- [DW_OP_plus_uconst 32, DW_OP_stack_value] $x28
	;DEBUG_VALUE: i <- 4
	;DEBUG_VALUE: j <- [DW_OP_consts 8, DW_OP_div, DW_OP_stack_value] $x27
	;DEBUG_VALUE: emulate_AMX_MATFP:z_row <- $x19
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	movi	d0, #0000000000000000
Ltmp253:
LBB0_137:                               ;   in Loop: Header=BB0_112 Depth=1
	;DEBUG_VALUE: z <- [DW_OP_plus_uconst 32, DW_OP_stack_value] $x28
	;DEBUG_VALUE: i <- 4
	;DEBUG_VALUE: j <- [DW_OP_consts 8, DW_OP_div, DW_OP_stack_value] $x27
	;DEBUG_VALUE: emulate_AMX_MATFP:z_row <- $x19
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	.loc	2 119 20                        ; matfp.c:119:20
	str	d0, [x28, #32]
Ltmp254:
LBB0_138:                               ;   in Loop: Header=BB0_112 Depth=1
	;DEBUG_VALUE: i <- 4
	;DEBUG_VALUE: j <- [DW_OP_consts 8, DW_OP_div, DW_OP_stack_value] $x27
	;DEBUG_VALUE: emulate_AMX_MATFP:z_row <- $x19
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	;DEBUG_VALUE: i <- 5
	.loc	2 0 20                          ; matfp.c:0:20
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	.loc	2 117 21 is_stmt 1              ; matfp.c:117:21
	cbz	x8, LBB0_143
Ltmp255:
; %bb.139:                              ;   in Loop: Header=BB0_112 Depth=1
	;DEBUG_VALUE: i <- 5
	;DEBUG_VALUE: j <- [DW_OP_consts 8, DW_OP_div, DW_OP_stack_value] $x27
	;DEBUG_VALUE: emulate_AMX_MATFP:z_row <- $x19
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	;DEBUG_VALUE: z <- [DW_OP_plus_uconst 40, DW_OP_stack_value] $x28
	.loc	2 119 22                        ; matfp.c:119:22
	cbz	w25, LBB0_141
Ltmp256:
; %bb.140:                              ;   in Loop: Header=BB0_112 Depth=1
	;DEBUG_VALUE: z <- [DW_OP_plus_uconst 40, DW_OP_stack_value] $x28
	;DEBUG_VALUE: i <- 5
	;DEBUG_VALUE: j <- [DW_OP_consts 8, DW_OP_div, DW_OP_stack_value] $x27
	;DEBUG_VALUE: emulate_AMX_MATFP:z_row <- $x19
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	.loc	2 119 42 is_stmt 0              ; matfp.c:119:42
	ldr	d0, [sp, #184]
	.loc	2 119 52                        ; matfp.c:119:52
	ldr	d1, [x22, x27]
	.loc	2 119 62                        ; matfp.c:119:62
	ldr	d2, [x28, #40]
	.loc	2 119 30                        ; matfp.c:119:30
	mov	x0, x20
	bl	_vecfp_alu64
Ltmp257:
	.loc	2 0 30                          ; matfp.c:0:30
	b	LBB0_142
Ltmp258:
LBB0_141:                               ;   in Loop: Header=BB0_112 Depth=1
	;DEBUG_VALUE: z <- [DW_OP_plus_uconst 40, DW_OP_stack_value] $x28
	;DEBUG_VALUE: i <- 5
	;DEBUG_VALUE: j <- [DW_OP_consts 8, DW_OP_div, DW_OP_stack_value] $x27
	;DEBUG_VALUE: emulate_AMX_MATFP:z_row <- $x19
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	movi	d0, #0000000000000000
Ltmp259:
LBB0_142:                               ;   in Loop: Header=BB0_112 Depth=1
	;DEBUG_VALUE: z <- [DW_OP_plus_uconst 40, DW_OP_stack_value] $x28
	;DEBUG_VALUE: i <- 5
	;DEBUG_VALUE: j <- [DW_OP_consts 8, DW_OP_div, DW_OP_stack_value] $x27
	;DEBUG_VALUE: emulate_AMX_MATFP:z_row <- $x19
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	.loc	2 119 20                        ; matfp.c:119:20
	str	d0, [x28, #40]
Ltmp260:
LBB0_143:                               ;   in Loop: Header=BB0_112 Depth=1
	;DEBUG_VALUE: i <- 5
	;DEBUG_VALUE: j <- [DW_OP_consts 8, DW_OP_div, DW_OP_stack_value] $x27
	;DEBUG_VALUE: emulate_AMX_MATFP:z_row <- $x19
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	;DEBUG_VALUE: i <- 6
	.loc	2 0 20                          ; matfp.c:0:20
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	.loc	2 117 21 is_stmt 1              ; matfp.c:117:21
	cbz	x8, LBB0_148
Ltmp261:
; %bb.144:                              ;   in Loop: Header=BB0_112 Depth=1
	;DEBUG_VALUE: i <- 6
	;DEBUG_VALUE: j <- [DW_OP_consts 8, DW_OP_div, DW_OP_stack_value] $x27
	;DEBUG_VALUE: emulate_AMX_MATFP:z_row <- $x19
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	;DEBUG_VALUE: z <- [DW_OP_plus_uconst 48, DW_OP_stack_value] $x28
	.loc	2 119 22                        ; matfp.c:119:22
	cbz	w25, LBB0_146
Ltmp262:
; %bb.145:                              ;   in Loop: Header=BB0_112 Depth=1
	;DEBUG_VALUE: z <- [DW_OP_plus_uconst 48, DW_OP_stack_value] $x28
	;DEBUG_VALUE: i <- 6
	;DEBUG_VALUE: j <- [DW_OP_consts 8, DW_OP_div, DW_OP_stack_value] $x27
	;DEBUG_VALUE: emulate_AMX_MATFP:z_row <- $x19
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	.loc	2 119 42 is_stmt 0              ; matfp.c:119:42
	ldr	d0, [sp, #192]
	.loc	2 119 52                        ; matfp.c:119:52
	ldr	d1, [x22, x27]
	.loc	2 119 62                        ; matfp.c:119:62
	ldr	d2, [x28, #48]
	.loc	2 119 30                        ; matfp.c:119:30
	mov	x0, x20
	bl	_vecfp_alu64
Ltmp263:
	.loc	2 0 30                          ; matfp.c:0:30
	b	LBB0_147
Ltmp264:
LBB0_146:                               ;   in Loop: Header=BB0_112 Depth=1
	;DEBUG_VALUE: z <- [DW_OP_plus_uconst 48, DW_OP_stack_value] $x28
	;DEBUG_VALUE: i <- 6
	;DEBUG_VALUE: j <- [DW_OP_consts 8, DW_OP_div, DW_OP_stack_value] $x27
	;DEBUG_VALUE: emulate_AMX_MATFP:z_row <- $x19
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	movi	d0, #0000000000000000
Ltmp265:
LBB0_147:                               ;   in Loop: Header=BB0_112 Depth=1
	;DEBUG_VALUE: z <- [DW_OP_plus_uconst 48, DW_OP_stack_value] $x28
	;DEBUG_VALUE: i <- 6
	;DEBUG_VALUE: j <- [DW_OP_consts 8, DW_OP_div, DW_OP_stack_value] $x27
	;DEBUG_VALUE: emulate_AMX_MATFP:z_row <- $x19
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	.loc	2 119 20                        ; matfp.c:119:20
	str	d0, [x28, #48]
Ltmp266:
LBB0_148:                               ;   in Loop: Header=BB0_112 Depth=1
	;DEBUG_VALUE: i <- 6
	;DEBUG_VALUE: j <- [DW_OP_consts 8, DW_OP_div, DW_OP_stack_value] $x27
	;DEBUG_VALUE: emulate_AMX_MATFP:z_row <- $x19
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	;DEBUG_VALUE: i <- 7
	.loc	2 0 20                          ; matfp.c:0:20
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	.loc	2 117 21 is_stmt 1              ; matfp.c:117:21
	cbz	x8, LBB0_111
Ltmp267:
; %bb.149:                              ;   in Loop: Header=BB0_112 Depth=1
	;DEBUG_VALUE: i <- 7
	;DEBUG_VALUE: j <- [DW_OP_consts 8, DW_OP_div, DW_OP_stack_value] $x27
	;DEBUG_VALUE: emulate_AMX_MATFP:z_row <- $x19
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	;DEBUG_VALUE: z <- [DW_OP_plus_uconst 56, DW_OP_stack_value] $x28
	.loc	2 119 22                        ; matfp.c:119:22
	cbnz	w25, LBB0_109
Ltmp268:
; %bb.150:                              ;   in Loop: Header=BB0_112 Depth=1
	;DEBUG_VALUE: z <- [DW_OP_plus_uconst 56, DW_OP_stack_value] $x28
	;DEBUG_VALUE: i <- 7
	;DEBUG_VALUE: j <- [DW_OP_consts 8, DW_OP_div, DW_OP_stack_value] $x27
	;DEBUG_VALUE: emulate_AMX_MATFP:z_row <- $x19
	;DEBUG_VALUE: emulate_AMX_MATFP:omask <- $w25
	;DEBUG_VALUE: emulate_AMX_MATFP:y_enable <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	.loc	2 0 22 is_stmt 0                ; matfp.c:0:22
	movi	d0, #0000000000000000
	b	LBB0_110
Ltmp269:
LBB0_151:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w12
	;DEBUG_VALUE: parse_writemask:val <- $w11
	;DEBUG_VALUE: parse_writemask:g <- $w21
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_MATFP:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:xybits <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:operand <- [DW_OP_constu 9223371899415822335, DW_OP_and, DW_OP_stack_value] $x22
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	mov	x11, #-1
	b	LBB0_50
Ltmp270:
LBB0_152:
	;DEBUG_VALUE: parse_writemask:val <- $w9
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w10
	;DEBUG_VALUE: parse_writemask:g <- $w21
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_MATFP:xybytes <- $w21
	;DEBUG_VALUE: emulate_AMX_MATFP:xybits <- [DW_OP_plus_uconst 48] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:alumode <- [DW_OP_plus_uconst 60] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATFP:operand <- [DW_OP_constu 9223371899415822335, DW_OP_and, DW_OP_stack_value] $x22
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	mov	x24, #-1
	b	LBB0_37
Ltmp271:
LBB0_153:
	;DEBUG_VALUE: emulate_AMX_MATFP:state <- [DW_OP_plus_uconst 72] [$sp+0]
	bl	___stack_chk_fail
Ltmp272:
	.loh AdrpLdrGotLdr	Lloh0, Lloh1, Lloh2
	.loh AdrpLdrGotLdr	Lloh3, Lloh4, Lloh5
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpLdrGotLdr	Lloh8, Lloh9, Lloh10
	.loh AdrpLdrGotLdr	Lloh11, Lloh12, Lloh13
	.loh AdrpAdd	Lloh14, Lloh15
	.loh AdrpAdd	Lloh16, Lloh17
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__const
lJTI0_0:
	.byte	(LBB0_7-LBB0_7)>>2
	.byte	(LBB0_8-LBB0_7)>>2
	.byte	(LBB0_9-LBB0_7)>>2
	.byte	(LBB0_13-LBB0_7)>>2
	.byte	(LBB0_11-LBB0_7)>>2
	.byte	(LBB0_9-LBB0_7)>>2
	.byte	(LBB0_9-LBB0_7)>>2
	.byte	(LBB0_12-LBB0_7)>>2
lJTI0_1:
	.byte	(LBB0_26-LBB0_26)>>2
	.byte	(LBB0_31-LBB0_26)>>2
	.byte	(LBB0_32-LBB0_26)>>2
	.byte	(LBB0_34-LBB0_26)>>2
	.byte	(LBB0_33-LBB0_26)>>2
	.byte	(LBB0_35-LBB0_26)>>2
lJTI0_2:
	.byte	(LBB0_39-LBB0_39)>>2
	.byte	(LBB0_44-LBB0_39)>>2
	.byte	(LBB0_45-LBB0_39)>>2
	.byte	(LBB0_47-LBB0_39)>>2
	.byte	(LBB0_46-LBB0_39)>>2
	.byte	(LBB0_48-LBB0_39)>>2
	.file	4 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types" "_uint64_t.h"
	.file	5 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types" "_uint32_t.h"
	.file	6 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types" "_uint16_t.h"
                                        ; -- End function
	.file	7 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types" "_int8_t.h"
	.file	8 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types" "_int16_t.h"
	.file	9 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types" "_int32_t.h"
	.section	__DWARF,__debug_loc,regular,debug
Lsection_debug_loc:
Ldebug_loc0:
.set Lset0, Lfunc_begin0-Lfunc_begin0
	.quad	Lset0
.set Lset1, Ltmp0-Lfunc_begin0
	.quad	Lset1
	.short	1                               ; Loc expr size
	.byte	80                              ; DW_OP_reg0
.set Lset2, Ltmp0-Lfunc_begin0
	.quad	Lset2
.set Lset3, Ltmp5-Lfunc_begin0
	.quad	Lset3
	.short	3                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	200                             ; 72
	.byte	0                               ; 
.set Lset4, Ltmp6-Lfunc_begin0
	.quad	Lset4
.set Lset5, Lfunc_end0-Lfunc_begin0
	.quad	Lset5
	.short	3                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	200                             ; 72
	.byte	0                               ; 
	.quad	0
	.quad	0
Ldebug_loc1:
.set Lset6, Lfunc_begin0-Lfunc_begin0
	.quad	Lset6
.set Lset7, Ltmp3-Lfunc_begin0
	.quad	Lset7
	.short	1                               ; Loc expr size
	.byte	81                              ; DW_OP_reg1
.set Lset8, Ltmp6-Lfunc_begin0
	.quad	Lset8
.set Lset9, Ltmp7-Lfunc_begin0
	.quad	Lset9
	.short	1                               ; Loc expr size
	.byte	81                              ; DW_OP_reg1
.set Lset10, Ltmp7-Lfunc_begin0
	.quad	Lset10
.set Lset11, Ltmp143-Lfunc_begin0
	.quad	Lset11
	.short	14                              ; Loc expr size
	.byte	134                             ; DW_OP_breg22
	.byte	0                               ; 0
	.byte	16                              ; DW_OP_constu
	.byte	255                             ; 9223371899415822335
	.byte	255                             ; 
	.byte	255                             ; 
	.byte	255                             ; 
	.byte	255                             ; 
	.byte	251                             ; 
	.byte	255                             ; 
	.byte	255                             ; 
	.byte	127                             ; 
	.byte	26                              ; DW_OP_and
	.byte	159                             ; DW_OP_stack_value
.set Lset12, Ltmp156-Lfunc_begin0
	.quad	Lset12
.set Lset13, Ltmp159-Lfunc_begin0
	.quad	Lset13
	.short	14                              ; Loc expr size
	.byte	134                             ; DW_OP_breg22
	.byte	0                               ; 0
	.byte	16                              ; DW_OP_constu
	.byte	255                             ; 9223371899415822335
	.byte	255                             ; 
	.byte	255                             ; 
	.byte	255                             ; 
	.byte	255                             ; 
	.byte	251                             ; 
	.byte	255                             ; 
	.byte	255                             ; 
	.byte	127                             ; 
	.byte	26                              ; DW_OP_and
	.byte	159                             ; DW_OP_stack_value
.set Lset14, Ltmp181-Lfunc_begin0
	.quad	Lset14
.set Lset15, Ltmp182-Lfunc_begin0
	.quad	Lset15
	.short	14                              ; Loc expr size
	.byte	134                             ; DW_OP_breg22
	.byte	0                               ; 0
	.byte	16                              ; DW_OP_constu
	.byte	255                             ; 9223371899415822335
	.byte	255                             ; 
	.byte	255                             ; 
	.byte	255                             ; 
	.byte	255                             ; 
	.byte	251                             ; 
	.byte	255                             ; 
	.byte	255                             ; 
	.byte	127                             ; 
	.byte	26                              ; DW_OP_and
	.byte	159                             ; DW_OP_stack_value
.set Lset16, Ltmp195-Lfunc_begin0
	.quad	Lset16
.set Lset17, Ltmp198-Lfunc_begin0
	.quad	Lset17
	.short	14                              ; Loc expr size
	.byte	134                             ; DW_OP_breg22
	.byte	0                               ; 0
	.byte	16                              ; DW_OP_constu
	.byte	255                             ; 9223371899415822335
	.byte	255                             ; 
	.byte	255                             ; 
	.byte	255                             ; 
	.byte	255                             ; 
	.byte	251                             ; 
	.byte	255                             ; 
	.byte	255                             ; 
	.byte	127                             ; 
	.byte	26                              ; DW_OP_and
	.byte	159                             ; DW_OP_stack_value
.set Lset18, Ltmp211-Lfunc_begin0
	.quad	Lset18
.set Lset19, Ltmp215-Lfunc_begin0
	.quad	Lset19
	.short	14                              ; Loc expr size
	.byte	134                             ; DW_OP_breg22
	.byte	0                               ; 0
	.byte	16                              ; DW_OP_constu
	.byte	255                             ; 9223371899415822335
	.byte	255                             ; 
	.byte	255                             ; 
	.byte	255                             ; 
	.byte	255                             ; 
	.byte	251                             ; 
	.byte	255                             ; 
	.byte	255                             ; 
	.byte	127                             ; 
	.byte	26                              ; DW_OP_and
	.byte	159                             ; DW_OP_stack_value
.set Lset20, Ltmp269-Lfunc_begin0
	.quad	Lset20
.set Lset21, Ltmp271-Lfunc_begin0
	.quad	Lset21
	.short	14                              ; Loc expr size
	.byte	134                             ; DW_OP_breg22
	.byte	0                               ; 0
	.byte	16                              ; DW_OP_constu
	.byte	255                             ; 9223371899415822335
	.byte	255                             ; 
	.byte	255                             ; 
	.byte	255                             ; 
	.byte	255                             ; 
	.byte	251                             ; 
	.byte	255                             ; 
	.byte	255                             ; 
	.byte	127                             ; 
	.byte	26                              ; DW_OP_and
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc2:
.set Lset22, Ltmp8-Lfunc_begin0
	.quad	Lset22
.set Lset23, Ltmp11-Lfunc_begin0
	.quad	Lset23
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
.set Lset24, Ltmp11-Lfunc_begin0
	.quad	Lset24
.set Lset25, Ltmp271-Lfunc_begin0
	.quad	Lset25
	.short	2                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	60                              ; 60
	.quad	0
	.quad	0
Ldebug_loc3:
.set Lset26, Ltmp10-Lfunc_begin0
	.quad	Lset26
.set Lset27, Ltmp24-Lfunc_begin0
	.quad	Lset27
	.short	2                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc4:
.set Lset28, Ltmp13-Lfunc_begin0
	.quad	Lset28
.set Lset29, Ltmp17-Lfunc_begin0
	.quad	Lset29
	.short	2                               ; Loc expr size
	.byte	64                              ; DW_OP_lit16
	.byte	159                             ; DW_OP_stack_value
.set Lset30, Ltmp18-Lfunc_begin0
	.quad	Lset30
.set Lset31, Ltmp20-Lfunc_begin0
	.quad	Lset31
	.short	2                               ; Loc expr size
	.byte	64                              ; DW_OP_lit16
	.byte	159                             ; DW_OP_stack_value
.set Lset32, Ltmp21-Lfunc_begin0
	.quad	Lset32
.set Lset33, Ltmp22-Lfunc_begin0
	.quad	Lset33
	.short	3                               ; Loc expr size
	.byte	16                              ; DW_OP_constu
	.byte	32                              ; 32
	.byte	159                             ; DW_OP_stack_value
.set Lset34, Ltmp23-Lfunc_begin0
	.quad	Lset34
.set Lset35, Ltmp24-Lfunc_begin0
	.quad	Lset35
	.short	3                               ; Loc expr size
	.byte	16                              ; DW_OP_constu
	.byte	64                              ; 64
	.byte	159                             ; DW_OP_stack_value
.set Lset36, Ltmp24-Lfunc_begin0
	.quad	Lset36
.set Lset37, Ltmp44-Lfunc_begin0
	.quad	Lset37
	.short	1                               ; Loc expr size
	.byte	106                             ; DW_OP_reg26
.set Lset38, Ltmp44-Lfunc_begin0
	.quad	Lset38
.set Lset39, Ltmp112-Lfunc_begin0
	.quad	Lset39
	.short	2                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	48                              ; 48
.set Lset40, Ltmp113-Lfunc_begin0
	.quad	Lset40
.set Lset41, Ltmp125-Lfunc_begin0
	.quad	Lset41
	.short	2                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	48                              ; 48
.set Lset42, Ltmp269-Lfunc_begin0
	.quad	Lset42
.set Lset43, Ltmp271-Lfunc_begin0
	.quad	Lset43
	.short	2                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	48                              ; 48
	.quad	0
	.quad	0
Ldebug_loc5:
.set Lset44, Ltmp18-Lfunc_begin0
	.quad	Lset44
.set Lset45, Ltmp19-Lfunc_begin0
	.quad	Lset45
	.short	2                               ; Loc expr size
	.byte	64                              ; DW_OP_lit16
	.byte	159                             ; DW_OP_stack_value
.set Lset46, Ltmp21-Lfunc_begin0
	.quad	Lset46
.set Lset47, Ltmp22-Lfunc_begin0
	.quad	Lset47
	.short	3                               ; Loc expr size
	.byte	16                              ; DW_OP_constu
	.byte	32                              ; 32
	.byte	159                             ; DW_OP_stack_value
.set Lset48, Ltmp23-Lfunc_begin0
	.quad	Lset48
.set Lset49, Ltmp24-Lfunc_begin0
	.quad	Lset49
	.short	3                               ; Loc expr size
	.byte	16                              ; DW_OP_constu
	.byte	64                              ; 64
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc6:
.set Lset50, Ltmp45-Lfunc_begin0
	.quad	Lset50
.set Lset51, Ltmp271-Lfunc_begin0
	.quad	Lset51
	.short	1                               ; Loc expr size
	.byte	101                             ; DW_OP_reg21
	.quad	0
	.quad	0
Ldebug_loc7:
.set Lset52, Ltmp25-Lfunc_begin0
	.quad	Lset52
.set Lset53, Ltmp27-Lfunc_begin0
	.quad	Lset53
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
	.quad	0
	.quad	0
Ldebug_loc8:
.set Lset54, Ltmp26-Lfunc_begin0
	.quad	Lset54
.set Lset55, Ltmp28-Lfunc_begin0
	.quad	Lset55
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
	.quad	0
	.quad	0
Ldebug_loc9:
.set Lset56, Ltmp30-Lfunc_begin0
	.quad	Lset56
.set Lset57, Ltmp32-Lfunc_begin0
	.quad	Lset57
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
	.quad	0
	.quad	0
Ldebug_loc10:
.set Lset58, Ltmp31-Lfunc_begin0
	.quad	Lset58
.set Lset59, Ltmp33-Lfunc_begin0
	.quad	Lset59
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
	.quad	0
	.quad	0
Ldebug_loc11:
.set Lset60, Ltmp37-Lfunc_begin0
	.quad	Lset60
.set Lset61, Ltmp43-Lfunc_begin0
	.quad	Lset61
	.short	1                               ; Loc expr size
	.byte	82                              ; DW_OP_reg2
	.quad	0
	.quad	0
Ldebug_loc12:
.set Lset62, Ltmp46-Lfunc_begin0
	.quad	Lset62
.set Lset63, Ltmp50-Lfunc_begin0
	.quad	Lset63
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
	.quad	0
	.quad	0
Ldebug_loc13:
.set Lset64, Ltmp49-Lfunc_begin0
	.quad	Lset64
.set Lset65, Ltmp57-Lfunc_begin0
	.quad	Lset65
	.short	1                               ; Loc expr size
	.byte	106                             ; DW_OP_reg26
	.quad	0
	.quad	0
Ldebug_loc14:
.set Lset66, Ltmp50-Lfunc_begin0
	.quad	Lset66
.set Lset67, Ltmp52-Lfunc_begin0
	.quad	Lset67
	.short	1                               ; Loc expr size
	.byte	104                             ; DW_OP_reg24
.set Lset68, Ltmp52-Lfunc_begin0
	.quad	Lset68
.set Lset69, Ltmp53-Lfunc_begin0
	.quad	Lset69
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
.set Lset70, Ltmp53-Lfunc_begin0
	.quad	Lset70
.set Lset71, Ltmp54-Lfunc_begin0
	.quad	Lset71
	.short	6                               ; Loc expr size
	.byte	121                             ; DW_OP_breg9
	.byte	0                               ; 0
	.byte	120                             ; DW_OP_breg8
	.byte	0                               ; 0
	.byte	34                              ; DW_OP_plus
	.byte	159                             ; DW_OP_stack_value
.set Lset72, Ltmp55-Lfunc_begin0
	.quad	Lset72
.set Lset73, Ltmp57-Lfunc_begin0
	.quad	Lset73
	.short	1                               ; Loc expr size
	.byte	104                             ; DW_OP_reg24
	.quad	0
	.quad	0
Ldebug_loc15:
.set Lset74, Ltmp58-Lfunc_begin0
	.quad	Lset74
.set Lset75, Ltmp62-Lfunc_begin0
	.quad	Lset75
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
	.quad	0
	.quad	0
Ldebug_loc16:
.set Lset76, Ltmp61-Lfunc_begin0
	.quad	Lset76
.set Lset77, Ltmp69-Lfunc_begin0
	.quad	Lset77
	.short	1                               ; Loc expr size
	.byte	108                             ; DW_OP_reg28
	.quad	0
	.quad	0
Ldebug_loc17:
.set Lset78, Ltmp62-Lfunc_begin0
	.quad	Lset78
.set Lset79, Ltmp64-Lfunc_begin0
	.quad	Lset79
	.short	1                               ; Loc expr size
	.byte	104                             ; DW_OP_reg24
.set Lset80, Ltmp64-Lfunc_begin0
	.quad	Lset80
.set Lset81, Ltmp65-Lfunc_begin0
	.quad	Lset81
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
.set Lset82, Ltmp65-Lfunc_begin0
	.quad	Lset82
.set Lset83, Ltmp66-Lfunc_begin0
	.quad	Lset83
	.short	6                               ; Loc expr size
	.byte	121                             ; DW_OP_breg9
	.byte	0                               ; 0
	.byte	120                             ; DW_OP_breg8
	.byte	0                               ; 0
	.byte	34                              ; DW_OP_plus
	.byte	159                             ; DW_OP_stack_value
.set Lset84, Ltmp67-Lfunc_begin0
	.quad	Lset84
.set Lset85, Ltmp69-Lfunc_begin0
	.quad	Lset85
	.short	1                               ; Loc expr size
	.byte	104                             ; DW_OP_reg24
	.quad	0
	.quad	0
Ldebug_loc18:
.set Lset86, Ltmp70-Lfunc_begin0
	.quad	Lset86
.set Lset87, Ltmp79-Lfunc_begin0
	.quad	Lset87
	.short	1                               ; Loc expr size
	.byte	101                             ; DW_OP_reg21
.set Lset88, Ltmp79-Lfunc_begin0
	.quad	Lset88
.set Lset89, Ltmp81-Lfunc_begin0
	.quad	Lset89
	.short	1                               ; Loc expr size
	.byte	91                              ; DW_OP_reg11
.set Lset90, Ltmp81-Lfunc_begin0
	.quad	Lset90
.set Lset91, Ltmp82-Lfunc_begin0
	.quad	Lset91
	.short	1                               ; Loc expr size
	.byte	92                              ; DW_OP_reg12
.set Lset92, Ltmp82-Lfunc_begin0
	.quad	Lset92
.set Lset93, Ltmp83-Lfunc_begin0
	.quad	Lset93
	.short	1                               ; Loc expr size
	.byte	91                              ; DW_OP_reg11
.set Lset94, Ltmp84-Lfunc_begin0
	.quad	Lset94
.set Lset95, Ltmp95-Lfunc_begin0
	.quad	Lset95
	.short	1                               ; Loc expr size
	.byte	101                             ; DW_OP_reg21
	.quad	0
	.quad	0
Ldebug_loc19:
.set Lset96, Ltmp70-Lfunc_begin0
	.quad	Lset96
.set Lset97, Ltmp72-Lfunc_begin0
	.quad	Lset97
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
.set Lset98, Ltmp74-Lfunc_begin0
	.quad	Lset98
.set Lset99, Ltmp84-Lfunc_begin0
	.quad	Lset99
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
.set Lset100, Ltmp85-Lfunc_begin0
	.quad	Lset100
.set Lset101, Ltmp90-Lfunc_begin0
	.quad	Lset101
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
.set Lset102, Ltmp91-Lfunc_begin0
	.quad	Lset102
.set Lset103, Ltmp94-Lfunc_begin0
	.quad	Lset103
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
	.quad	0
	.quad	0
Ldebug_loc20:
.set Lset104, Ltmp71-Lfunc_begin0
	.quad	Lset104
.set Lset105, Ltmp76-Lfunc_begin0
	.quad	Lset105
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
.set Lset106, Ltmp84-Lfunc_begin0
	.quad	Lset106
.set Lset107, Ltmp86-Lfunc_begin0
	.quad	Lset107
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
.set Lset108, Ltmp87-Lfunc_begin0
	.quad	Lset108
.set Lset109, Ltmp89-Lfunc_begin0
	.quad	Lset109
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
.set Lset110, Ltmp91-Lfunc_begin0
	.quad	Lset110
.set Lset111, Ltmp93-Lfunc_begin0
	.quad	Lset111
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
	.quad	0
	.quad	0
Ldebug_loc21:
.set Lset112, Ltmp72-Lfunc_begin0
	.quad	Lset112
.set Lset113, Ltmp78-Lfunc_begin0
	.quad	Lset113
	.short	3                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	32                              ; DW_OP_not
	.byte	159                             ; DW_OP_stack_value
.set Lset114, Ltmp78-Lfunc_begin0
	.quad	Lset114
.set Lset115, Ltmp84-Lfunc_begin0
	.quad	Lset115
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
.set Lset116, Ltmp84-Lfunc_begin0
	.quad	Lset116
.set Lset117, Ltmp95-Lfunc_begin0
	.quad	Lset117
	.short	3                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	32                              ; DW_OP_not
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc22:
.set Lset118, Ltmp95-Lfunc_begin0
	.quad	Lset118
.set Lset119, Ltmp270-Lfunc_begin0
	.quad	Lset119
	.short	1                               ; Loc expr size
	.byte	104                             ; DW_OP_reg24
	.quad	0
	.quad	0
Ldebug_loc23:
.set Lset120, Ltmp96-Lfunc_begin0
	.quad	Lset120
.set Lset121, Ltmp105-Lfunc_begin0
	.quad	Lset121
	.short	1                               ; Loc expr size
	.byte	101                             ; DW_OP_reg21
.set Lset122, Ltmp105-Lfunc_begin0
	.quad	Lset122
.set Lset123, Ltmp107-Lfunc_begin0
	.quad	Lset123
	.short	1                               ; Loc expr size
	.byte	93                              ; DW_OP_reg13
.set Lset124, Ltmp107-Lfunc_begin0
	.quad	Lset124
.set Lset125, Ltmp108-Lfunc_begin0
	.quad	Lset125
	.short	1                               ; Loc expr size
	.byte	94                              ; DW_OP_reg14
.set Lset126, Ltmp108-Lfunc_begin0
	.quad	Lset126
.set Lset127, Ltmp109-Lfunc_begin0
	.quad	Lset127
	.short	1                               ; Loc expr size
	.byte	93                              ; DW_OP_reg13
.set Lset128, Ltmp111-Lfunc_begin0
	.quad	Lset128
.set Lset129, Ltmp124-Lfunc_begin0
	.quad	Lset129
	.short	1                               ; Loc expr size
	.byte	101                             ; DW_OP_reg21
	.quad	0
	.quad	0
Ldebug_loc24:
.set Lset130, Ltmp96-Lfunc_begin0
	.quad	Lset130
.set Lset131, Ltmp98-Lfunc_begin0
	.quad	Lset131
	.short	1                               ; Loc expr size
	.byte	91                              ; DW_OP_reg11
.set Lset132, Ltmp100-Lfunc_begin0
	.quad	Lset132
.set Lset133, Ltmp110-Lfunc_begin0
	.quad	Lset133
	.short	1                               ; Loc expr size
	.byte	91                              ; DW_OP_reg11
.set Lset134, Ltmp113-Lfunc_begin0
	.quad	Lset134
.set Lset135, Ltmp115-Lfunc_begin0
	.quad	Lset135
	.short	1                               ; Loc expr size
	.byte	91                              ; DW_OP_reg11
.set Lset136, Ltmp116-Lfunc_begin0
	.quad	Lset136
.set Lset137, Ltmp119-Lfunc_begin0
	.quad	Lset137
	.short	1                               ; Loc expr size
	.byte	91                              ; DW_OP_reg11
.set Lset138, Ltmp120-Lfunc_begin0
	.quad	Lset138
.set Lset139, Ltmp123-Lfunc_begin0
	.quad	Lset139
	.short	1                               ; Loc expr size
	.byte	91                              ; DW_OP_reg11
	.quad	0
	.quad	0
Ldebug_loc25:
.set Lset140, Ltmp97-Lfunc_begin0
	.quad	Lset140
.set Lset141, Ltmp102-Lfunc_begin0
	.quad	Lset141
	.short	1                               ; Loc expr size
	.byte	92                              ; DW_OP_reg12
.set Lset142, Ltmp111-Lfunc_begin0
	.quad	Lset142
.set Lset143, Ltmp114-Lfunc_begin0
	.quad	Lset143
	.short	1                               ; Loc expr size
	.byte	92                              ; DW_OP_reg12
.set Lset144, Ltmp116-Lfunc_begin0
	.quad	Lset144
.set Lset145, Ltmp118-Lfunc_begin0
	.quad	Lset145
	.short	1                               ; Loc expr size
	.byte	92                              ; DW_OP_reg12
.set Lset146, Ltmp120-Lfunc_begin0
	.quad	Lset146
.set Lset147, Ltmp122-Lfunc_begin0
	.quad	Lset147
	.short	1                               ; Loc expr size
	.byte	92                              ; DW_OP_reg12
	.quad	0
	.quad	0
Ldebug_loc26:
.set Lset148, Ltmp98-Lfunc_begin0
	.quad	Lset148
.set Lset149, Ltmp104-Lfunc_begin0
	.quad	Lset149
	.short	3                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	32                              ; DW_OP_not
	.byte	159                             ; DW_OP_stack_value
.set Lset150, Ltmp104-Lfunc_begin0
	.quad	Lset150
.set Lset151, Ltmp111-Lfunc_begin0
	.quad	Lset151
	.short	1                               ; Loc expr size
	.byte	92                              ; DW_OP_reg12
.set Lset152, Ltmp111-Lfunc_begin0
	.quad	Lset152
.set Lset153, Ltmp124-Lfunc_begin0
	.quad	Lset153
	.short	3                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	32                              ; DW_OP_not
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc27:
.set Lset154, Ltmp125-Lfunc_begin0
	.quad	Lset154
.set Lset155, Ltmp269-Lfunc_begin0
	.quad	Lset155
	.short	2                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	48                              ; 48
	.quad	0
	.quad	0
Ldebug_loc28:
.set Lset156, Ltmp125-Lfunc_begin0
	.quad	Lset156
.set Lset157, Ltmp128-Lfunc_begin0
	.quad	Lset157
	.short	3                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	32                              ; DW_OP_not
	.byte	159                             ; DW_OP_stack_value
.set Lset158, Ltmp128-Lfunc_begin0
	.quad	Lset158
.set Lset159, Ltmp131-Lfunc_begin0
	.quad	Lset159
	.short	1                               ; Loc expr size
	.byte	105                             ; DW_OP_reg25
.set Lset160, Ltmp132-Lfunc_begin0
	.quad	Lset160
.set Lset161, Ltmp135-Lfunc_begin0
	.quad	Lset161
	.short	3                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	32                              ; DW_OP_not
	.byte	159                             ; DW_OP_stack_value
.set Lset162, Ltmp135-Lfunc_begin0
	.quad	Lset162
.set Lset163, Ltmp138-Lfunc_begin0
	.quad	Lset163
	.short	1                               ; Loc expr size
	.byte	105                             ; DW_OP_reg25
.set Lset164, Ltmp139-Lfunc_begin0
	.quad	Lset164
.set Lset165, Ltmp211-Lfunc_begin0
	.quad	Lset165
	.short	1                               ; Loc expr size
	.byte	105                             ; DW_OP_reg25
.set Lset166, Ltmp211-Lfunc_begin0
	.quad	Lset166
.set Lset167, Ltmp213-Lfunc_begin0
	.quad	Lset167
	.short	3                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	32                              ; DW_OP_not
	.byte	159                             ; DW_OP_stack_value
.set Lset168, Ltmp213-Lfunc_begin0
	.quad	Lset168
.set Lset169, Ltmp269-Lfunc_begin0
	.quad	Lset169
	.short	1                               ; Loc expr size
	.byte	105                             ; DW_OP_reg25
	.quad	0
	.quad	0
Ldebug_loc29:
.set Lset170, Ltmp129-Lfunc_begin0
	.quad	Lset170
.set Lset171, Ltmp130-Lfunc_begin0
	.quad	Lset171
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
.set Lset172, Ltmp136-Lfunc_begin0
	.quad	Lset172
.set Lset173, Ltmp138-Lfunc_begin0
	.quad	Lset173
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
	.quad	0
	.quad	0
Ldebug_loc30:
.set Lset174, Ltmp133-Lfunc_begin0
	.quad	Lset174
.set Lset175, Ltmp134-Lfunc_begin0
	.quad	Lset175
	.short	1                               ; Loc expr size
	.byte	91                              ; DW_OP_reg11
.set Lset176, Ltmp211-Lfunc_begin0
	.quad	Lset176
.set Lset177, Ltmp213-Lfunc_begin0
	.quad	Lset177
	.short	1                               ; Loc expr size
	.byte	91                              ; DW_OP_reg11
	.quad	0
	.quad	0
Ldebug_loc31:
.set Lset178, Ltmp214-Lfunc_begin0
	.quad	Lset178
.set Lset179, Ltmp269-Lfunc_begin0
	.quad	Lset179
	.short	1                               ; Loc expr size
	.byte	99                              ; DW_OP_reg19
	.quad	0
	.quad	0
Ldebug_loc32:
.set Lset180, Ltmp148-Lfunc_begin0
	.quad	Lset180
.set Lset181, Ltmp150-Lfunc_begin0
	.quad	Lset181
	.short	6                               ; Loc expr size
	.byte	140                             ; DW_OP_breg28
	.byte	0                               ; 0
	.byte	17                              ; DW_OP_consts
	.byte	2                               ; 2
	.byte	27                              ; DW_OP_div
	.byte	159                             ; DW_OP_stack_value
.set Lset182, Ltmp150-Lfunc_begin0
	.quad	Lset182
.set Lset183, Ltmp151-Lfunc_begin0
	.quad	Lset183
	.short	9                               ; Loc expr size
	.byte	140                             ; DW_OP_breg28
	.byte	0                               ; 0
	.byte	17                              ; DW_OP_consts
	.byte	2                               ; 2
	.byte	27                              ; DW_OP_div
	.byte	17                              ; DW_OP_consts
	.byte	1                               ; 1
	.byte	34                              ; DW_OP_plus
	.byte	159                             ; DW_OP_stack_value
.set Lset184, Ltmp153-Lfunc_begin0
	.quad	Lset184
.set Lset185, Ltmp155-Lfunc_begin0
	.quad	Lset185
	.short	6                               ; Loc expr size
	.byte	140                             ; DW_OP_breg28
	.byte	0                               ; 0
	.byte	17                              ; DW_OP_consts
	.byte	2                               ; 2
	.byte	27                              ; DW_OP_div
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc33:
.set Lset186, Ltmp165-Lfunc_begin0
	.quad	Lset186
.set Lset187, Ltmp167-Lfunc_begin0
	.quad	Lset187
	.short	8                               ; Loc expr size
	.byte	132                             ; DW_OP_breg20
	.byte	0                               ; 0
	.byte	139                             ; DW_OP_breg27
	.byte	0                               ; 0
	.byte	52                              ; DW_OP_lit4
	.byte	30                              ; DW_OP_mul
	.byte	34                              ; DW_OP_plus
	.byte	159                             ; DW_OP_stack_value
.set Lset188, Ltmp179-Lfunc_begin0
	.quad	Lset188
.set Lset189, Ltmp180-Lfunc_begin0
	.quad	Lset189
	.short	8                               ; Loc expr size
	.byte	132                             ; DW_OP_breg20
	.byte	0                               ; 0
	.byte	139                             ; DW_OP_breg27
	.byte	0                               ; 0
	.byte	52                              ; DW_OP_lit4
	.byte	30                              ; DW_OP_mul
	.byte	34                              ; DW_OP_plus
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc34:
.set Lset190, Ltmp165-Lfunc_begin0
	.quad	Lset190
.set Lset191, Ltmp166-Lfunc_begin0
	.quad	Lset191
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	65                              ; 65
.set Lset192, Ltmp179-Lfunc_begin0
	.quad	Lset192
.set Lset193, Ltmp180-Lfunc_begin0
	.quad	Lset193
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	65                              ; 65
	.quad	0
	.quad	0
Ldebug_loc35:
.set Lset194, Ltmp175-Lfunc_begin0
	.quad	Lset194
.set Lset195, Ltmp177-Lfunc_begin0
	.quad	Lset195
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	72                              ; 72
	.quad	0
	.quad	0
Ldebug_loc36:
.set Lset196, Ltmp187-Lfunc_begin0
	.quad	Lset196
.set Lset197, Ltmp189-Lfunc_begin0
	.quad	Lset197
	.short	6                               ; Loc expr size
	.byte	140                             ; DW_OP_breg28
	.byte	0                               ; 0
	.byte	17                              ; DW_OP_consts
	.byte	2                               ; 2
	.byte	27                              ; DW_OP_div
	.byte	159                             ; DW_OP_stack_value
.set Lset198, Ltmp189-Lfunc_begin0
	.quad	Lset198
.set Lset199, Ltmp190-Lfunc_begin0
	.quad	Lset199
	.short	9                               ; Loc expr size
	.byte	140                             ; DW_OP_breg28
	.byte	0                               ; 0
	.byte	17                              ; DW_OP_consts
	.byte	2                               ; 2
	.byte	27                              ; DW_OP_div
	.byte	17                              ; DW_OP_consts
	.byte	1                               ; 1
	.byte	34                              ; DW_OP_plus
	.byte	159                             ; DW_OP_stack_value
.set Lset200, Ltmp192-Lfunc_begin0
	.quad	Lset200
.set Lset201, Ltmp194-Lfunc_begin0
	.quad	Lset201
	.short	6                               ; Loc expr size
	.byte	140                             ; DW_OP_breg28
	.byte	0                               ; 0
	.byte	17                              ; DW_OP_consts
	.byte	2                               ; 2
	.byte	27                              ; DW_OP_div
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc37:
.set Lset202, Ltmp203-Lfunc_begin0
	.quad	Lset202
.set Lset203, Ltmp205-Lfunc_begin0
	.quad	Lset203
	.short	6                               ; Loc expr size
	.byte	140                             ; DW_OP_breg28
	.byte	0                               ; 0
	.byte	17                              ; DW_OP_consts
	.byte	4                               ; 4
	.byte	27                              ; DW_OP_div
	.byte	159                             ; DW_OP_stack_value
.set Lset204, Ltmp205-Lfunc_begin0
	.quad	Lset204
.set Lset205, Ltmp206-Lfunc_begin0
	.quad	Lset205
	.short	9                               ; Loc expr size
	.byte	140                             ; DW_OP_breg28
	.byte	0                               ; 0
	.byte	17                              ; DW_OP_consts
	.byte	4                               ; 4
	.byte	27                              ; DW_OP_div
	.byte	17                              ; DW_OP_consts
	.byte	1                               ; 1
	.byte	34                              ; DW_OP_plus
	.byte	159                             ; DW_OP_stack_value
.set Lset206, Ltmp208-Lfunc_begin0
	.quad	Lset206
.set Lset207, Ltmp210-Lfunc_begin0
	.quad	Lset207
	.short	6                               ; Loc expr size
	.byte	140                             ; DW_OP_breg28
	.byte	0                               ; 0
	.byte	17                              ; DW_OP_consts
	.byte	4                               ; 4
	.byte	27                              ; DW_OP_div
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc38:
.set Lset208, Ltmp216-Lfunc_begin0
	.quad	Lset208
.set Lset209, Ltmp218-Lfunc_begin0
	.quad	Lset209
	.short	6                               ; Loc expr size
	.byte	139                             ; DW_OP_breg27
	.byte	0                               ; 0
	.byte	17                              ; DW_OP_consts
	.byte	8                               ; 8
	.byte	27                              ; DW_OP_div
	.byte	159                             ; DW_OP_stack_value
.set Lset210, Ltmp218-Lfunc_begin0
	.quad	Lset210
.set Lset211, Ltmp219-Lfunc_begin0
	.quad	Lset211
	.short	9                               ; Loc expr size
	.byte	139                             ; DW_OP_breg27
	.byte	0                               ; 0
	.byte	17                              ; DW_OP_consts
	.byte	8                               ; 8
	.byte	27                              ; DW_OP_div
	.byte	17                              ; DW_OP_consts
	.byte	1                               ; 1
	.byte	34                              ; DW_OP_plus
	.byte	159                             ; DW_OP_stack_value
.set Lset212, Ltmp221-Lfunc_begin0
	.quad	Lset212
.set Lset213, Ltmp268-Lfunc_begin0
	.quad	Lset213
	.short	6                               ; Loc expr size
	.byte	139                             ; DW_OP_breg27
	.byte	0                               ; 0
	.byte	17                              ; DW_OP_consts
	.byte	8                               ; 8
	.byte	27                              ; DW_OP_div
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc39:
.set Lset214, Ltmp216-Lfunc_begin0
	.quad	Lset214
.set Lset215, Ltmp218-Lfunc_begin0
	.quad	Lset215
	.short	3                               ; Loc expr size
	.byte	140                             ; DW_OP_breg28
	.byte	56                              ; 56
	.byte	159                             ; DW_OP_stack_value
.set Lset216, Ltmp225-Lfunc_begin0
	.quad	Lset216
.set Lset217, Ltmp230-Lfunc_begin0
	.quad	Lset217
	.short	1                               ; Loc expr size
	.byte	108                             ; DW_OP_reg28
.set Lset218, Ltmp231-Lfunc_begin0
	.quad	Lset218
.set Lset219, Ltmp236-Lfunc_begin0
	.quad	Lset219
	.short	3                               ; Loc expr size
	.byte	140                             ; DW_OP_breg28
	.byte	8                               ; 8
	.byte	159                             ; DW_OP_stack_value
.set Lset220, Ltmp237-Lfunc_begin0
	.quad	Lset220
.set Lset221, Ltmp242-Lfunc_begin0
	.quad	Lset221
	.short	3                               ; Loc expr size
	.byte	140                             ; DW_OP_breg28
	.byte	16                              ; 16
	.byte	159                             ; DW_OP_stack_value
.set Lset222, Ltmp243-Lfunc_begin0
	.quad	Lset222
.set Lset223, Ltmp248-Lfunc_begin0
	.quad	Lset223
	.short	3                               ; Loc expr size
	.byte	140                             ; DW_OP_breg28
	.byte	24                              ; 24
	.byte	159                             ; DW_OP_stack_value
.set Lset224, Ltmp249-Lfunc_begin0
	.quad	Lset224
.set Lset225, Ltmp254-Lfunc_begin0
	.quad	Lset225
	.short	3                               ; Loc expr size
	.byte	140                             ; DW_OP_breg28
	.byte	32                              ; 32
	.byte	159                             ; DW_OP_stack_value
.set Lset226, Ltmp255-Lfunc_begin0
	.quad	Lset226
.set Lset227, Ltmp260-Lfunc_begin0
	.quad	Lset227
	.short	3                               ; Loc expr size
	.byte	140                             ; DW_OP_breg28
	.byte	40                              ; 40
	.byte	159                             ; DW_OP_stack_value
.set Lset228, Ltmp261-Lfunc_begin0
	.quad	Lset228
.set Lset229, Ltmp266-Lfunc_begin0
	.quad	Lset229
	.short	3                               ; Loc expr size
	.byte	140                             ; DW_OP_breg28
	.byte	48                              ; 48
	.byte	159                             ; DW_OP_stack_value
.set Lset230, Ltmp267-Lfunc_begin0
	.quad	Lset230
.set Lset231, Ltmp268-Lfunc_begin0
	.quad	Lset231
	.short	3                               ; Loc expr size
	.byte	140                             ; DW_OP_breg28
	.byte	56                              ; 56
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc40:
.set Lset232, Ltmp216-Lfunc_begin0
	.quad	Lset232
.set Lset233, Ltmp218-Lfunc_begin0
	.quad	Lset233
	.short	2                               ; Loc expr size
	.byte	55                              ; DW_OP_lit7
	.byte	159                             ; DW_OP_stack_value
.set Lset234, Ltmp223-Lfunc_begin0
	.quad	Lset234
.set Lset235, Ltmp230-Lfunc_begin0
	.quad	Lset235
	.short	2                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	159                             ; DW_OP_stack_value
.set Lset236, Ltmp230-Lfunc_begin0
	.quad	Lset236
.set Lset237, Ltmp236-Lfunc_begin0
	.quad	Lset237
	.short	2                               ; Loc expr size
	.byte	49                              ; DW_OP_lit1
	.byte	159                             ; DW_OP_stack_value
.set Lset238, Ltmp236-Lfunc_begin0
	.quad	Lset238
.set Lset239, Ltmp242-Lfunc_begin0
	.quad	Lset239
	.short	2                               ; Loc expr size
	.byte	50                              ; DW_OP_lit2
	.byte	159                             ; DW_OP_stack_value
.set Lset240, Ltmp242-Lfunc_begin0
	.quad	Lset240
.set Lset241, Ltmp248-Lfunc_begin0
	.quad	Lset241
	.short	2                               ; Loc expr size
	.byte	51                              ; DW_OP_lit3
	.byte	159                             ; DW_OP_stack_value
.set Lset242, Ltmp248-Lfunc_begin0
	.quad	Lset242
.set Lset243, Ltmp254-Lfunc_begin0
	.quad	Lset243
	.short	2                               ; Loc expr size
	.byte	52                              ; DW_OP_lit4
	.byte	159                             ; DW_OP_stack_value
.set Lset244, Ltmp254-Lfunc_begin0
	.quad	Lset244
.set Lset245, Ltmp260-Lfunc_begin0
	.quad	Lset245
	.short	2                               ; Loc expr size
	.byte	53                              ; DW_OP_lit5
	.byte	159                             ; DW_OP_stack_value
.set Lset246, Ltmp260-Lfunc_begin0
	.quad	Lset246
.set Lset247, Ltmp266-Lfunc_begin0
	.quad	Lset247
	.short	2                               ; Loc expr size
	.byte	54                              ; DW_OP_lit6
	.byte	159                             ; DW_OP_stack_value
.set Lset248, Ltmp266-Lfunc_begin0
	.quad	Lset248
.set Lset249, Ltmp268-Lfunc_begin0
	.quad	Lset249
	.short	2                               ; Loc expr size
	.byte	55                              ; DW_OP_lit7
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
	.section	__DWARF,__debug_abbrev,regular,debug
Lsection_abbrev:
	.byte	1                               ; Abbreviation Code
	.byte	17                              ; DW_TAG_compile_unit
	.byte	1                               ; DW_CHILDREN_yes
	.byte	37                              ; DW_AT_producer
	.byte	14                              ; DW_FORM_strp
	.byte	19                              ; DW_AT_language
	.byte	5                               ; DW_FORM_data2
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.ascii	"\202|"                         ; DW_AT_LLVM_sysroot
	.byte	14                              ; DW_FORM_strp
	.ascii	"\357\177"                      ; DW_AT_APPLE_sdk
	.byte	14                              ; DW_FORM_strp
	.byte	16                              ; DW_AT_stmt_list
	.byte	23                              ; DW_FORM_sec_offset
	.byte	27                              ; DW_AT_comp_dir
	.byte	14                              ; DW_FORM_strp
	.ascii	"\341\177"                      ; DW_AT_APPLE_optimized
	.byte	25                              ; DW_FORM_flag_present
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	2                               ; Abbreviation Code
	.byte	15                              ; DW_TAG_pointer_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	3                               ; Abbreviation Code
	.byte	38                              ; DW_TAG_const_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	4                               ; Abbreviation Code
	.byte	22                              ; DW_TAG_typedef
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	5                               ; Abbreviation Code
	.byte	36                              ; DW_TAG_base_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	62                              ; DW_AT_encoding
	.byte	11                              ; DW_FORM_data1
	.byte	11                              ; DW_AT_byte_size
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	6                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	39                              ; DW_AT_prototyped
	.byte	25                              ; DW_FORM_flag_present
	.ascii	"\341\177"                      ; DW_AT_APPLE_optimized
	.byte	25                              ; DW_FORM_flag_present
	.byte	32                              ; DW_AT_inline
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	7                               ; Abbreviation Code
	.byte	5                               ; DW_TAG_formal_parameter
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	8                               ; Abbreviation Code
	.byte	52                              ; DW_TAG_variable
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	9                               ; Abbreviation Code
	.byte	15                              ; DW_TAG_pointer_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	10                              ; Abbreviation Code
	.byte	38                              ; DW_TAG_const_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	11                              ; Abbreviation Code
	.byte	11                              ; DW_TAG_lexical_block
	.byte	1                               ; DW_CHILDREN_yes
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	12                              ; Abbreviation Code
	.byte	1                               ; DW_TAG_array_type
	.byte	1                               ; DW_CHILDREN_yes
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	13                              ; Abbreviation Code
	.byte	33                              ; DW_TAG_subrange_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	55                              ; DW_AT_count
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	14                              ; Abbreviation Code
	.byte	36                              ; DW_TAG_base_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	11                              ; DW_AT_byte_size
	.byte	11                              ; DW_FORM_data1
	.byte	62                              ; DW_AT_encoding
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	15                              ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	39                              ; DW_AT_prototyped
	.byte	25                              ; DW_FORM_flag_present
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.ascii	"\341\177"                      ; DW_AT_APPLE_optimized
	.byte	25                              ; DW_FORM_flag_present
	.byte	32                              ; DW_AT_inline
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	16                              ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	64                              ; DW_AT_frame_base
	.byte	24                              ; DW_FORM_exprloc
	.byte	122                             ; DW_AT_call_all_calls
	.byte	25                              ; DW_FORM_flag_present
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	39                              ; DW_AT_prototyped
	.byte	25                              ; DW_FORM_flag_present
	.byte	63                              ; DW_AT_external
	.byte	25                              ; DW_FORM_flag_present
	.ascii	"\341\177"                      ; DW_AT_APPLE_optimized
	.byte	25                              ; DW_FORM_flag_present
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	17                              ; Abbreviation Code
	.byte	5                               ; DW_TAG_formal_parameter
	.byte	0                               ; DW_CHILDREN_no
	.byte	2                               ; DW_AT_location
	.byte	23                              ; DW_FORM_sec_offset
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	18                              ; Abbreviation Code
	.byte	52                              ; DW_TAG_variable
	.byte	0                               ; DW_CHILDREN_no
	.byte	2                               ; DW_AT_location
	.byte	24                              ; DW_FORM_exprloc
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	19                              ; Abbreviation Code
	.byte	52                              ; DW_TAG_variable
	.byte	0                               ; DW_CHILDREN_no
	.byte	2                               ; DW_AT_location
	.byte	23                              ; DW_FORM_sec_offset
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	20                              ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	1                               ; DW_CHILDREN_yes
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	11                              ; DW_FORM_data1
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	21                              ; Abbreviation Code
	.byte	5                               ; DW_TAG_formal_parameter
	.byte	0                               ; DW_CHILDREN_no
	.byte	2                               ; DW_AT_location
	.byte	24                              ; DW_FORM_exprloc
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	22                              ; Abbreviation Code
	.byte	5                               ; DW_TAG_formal_parameter
	.byte	0                               ; DW_CHILDREN_no
	.byte	2                               ; DW_AT_location
	.byte	23                              ; DW_FORM_sec_offset
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	23                              ; Abbreviation Code
	.byte	52                              ; DW_TAG_variable
	.byte	0                               ; DW_CHILDREN_no
	.byte	2                               ; DW_AT_location
	.byte	23                              ; DW_FORM_sec_offset
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	24                              ; Abbreviation Code
	.byte	11                              ; DW_TAG_lexical_block
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	25                              ; Abbreviation Code
	.byte	52                              ; DW_TAG_variable
	.byte	0                               ; DW_CHILDREN_no
	.byte	2                               ; DW_AT_location
	.byte	24                              ; DW_FORM_exprloc
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	26                              ; Abbreviation Code
	.byte	5                               ; DW_TAG_formal_parameter
	.byte	0                               ; DW_CHILDREN_no
	.byte	28                              ; DW_AT_const_value
	.byte	15                              ; DW_FORM_udata
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	27                              ; Abbreviation Code
	.byte	11                              ; DW_TAG_lexical_block
	.byte	1                               ; DW_CHILDREN_yes
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	28                              ; Abbreviation Code
	.byte	72                              ; DW_TAG_call_site
	.byte	1                               ; DW_CHILDREN_yes
	.byte	127                             ; DW_AT_call_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	125                             ; DW_AT_call_return_pc
	.byte	1                               ; DW_FORM_addr
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	29                              ; Abbreviation Code
	.byte	73                              ; DW_TAG_call_site_parameter
	.byte	0                               ; DW_CHILDREN_no
	.byte	2                               ; DW_AT_location
	.byte	24                              ; DW_FORM_exprloc
	.byte	126                             ; DW_AT_call_value
	.byte	24                              ; DW_FORM_exprloc
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	30                              ; Abbreviation Code
	.byte	72                              ; DW_TAG_call_site
	.byte	0                               ; DW_CHILDREN_no
	.byte	127                             ; DW_AT_call_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	125                             ; DW_AT_call_return_pc
	.byte	1                               ; DW_FORM_addr
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	31                              ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	39                              ; DW_AT_prototyped
	.byte	25                              ; DW_FORM_flag_present
	.byte	60                              ; DW_AT_declaration
	.byte	25                              ; DW_FORM_flag_present
	.byte	63                              ; DW_AT_external
	.byte	25                              ; DW_FORM_flag_present
	.ascii	"\341\177"                      ; DW_AT_APPLE_optimized
	.byte	25                              ; DW_FORM_flag_present
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	32                              ; Abbreviation Code
	.byte	5                               ; DW_TAG_formal_parameter
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	33                              ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	39                              ; DW_AT_prototyped
	.byte	25                              ; DW_FORM_flag_present
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	60                              ; DW_AT_declaration
	.byte	25                              ; DW_FORM_flag_present
	.byte	63                              ; DW_AT_external
	.byte	25                              ; DW_FORM_flag_present
	.ascii	"\341\177"                      ; DW_AT_APPLE_optimized
	.byte	25                              ; DW_FORM_flag_present
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	34                              ; Abbreviation Code
	.byte	23                              ; DW_TAG_union_type
	.byte	1                               ; DW_CHILDREN_yes
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	11                              ; DW_AT_byte_size
	.byte	11                              ; DW_FORM_data1
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	35                              ; Abbreviation Code
	.byte	13                              ; DW_TAG_member
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	56                              ; DW_AT_data_member_location
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	36                              ; Abbreviation Code
	.byte	19                              ; DW_TAG_structure_type
	.byte	1                               ; DW_CHILDREN_yes
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	11                              ; DW_AT_byte_size
	.byte	5                               ; DW_FORM_data2
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	37                              ; Abbreviation Code
	.byte	13                              ; DW_TAG_member
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	56                              ; DW_AT_data_member_location
	.byte	5                               ; DW_FORM_data2
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	0                               ; EOM(3)
	.section	__DWARF,__debug_info,regular,debug
Lsection_info:
Lcu_begin0:
.set Lset250, Ldebug_info_end0-Ldebug_info_start0 ; Length of Unit
	.long	Lset250
Ldebug_info_start0:
	.short	4                               ; DWARF version number
.set Lset251, Lsection_abbrev-Lsection_abbrev ; Offset Into Abbrev. Section
	.long	Lset251
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x950 DW_TAG_compile_unit
	.long	0                               ; DW_AT_producer
	.short	12                              ; DW_AT_language
	.long	46                              ; DW_AT_name
	.long	54                              ; DW_AT_LLVM_sysroot
	.long	106                             ; DW_AT_APPLE_sdk
.set Lset252, Lline_table_start0-Lsection_line ; DW_AT_stmt_list
	.long	Lset252
	.long	117                             ; DW_AT_comp_dir
                                        ; DW_AT_APPLE_optimized
	.quad	Lfunc_begin0                    ; DW_AT_low_pc
.set Lset253, Lfunc_end0-Lfunc_begin0   ; DW_AT_high_pc
	.long	Lset253
	.byte	2                               ; Abbrev [2] 0x32:0x5 DW_TAG_pointer_type
	.long	55                              ; DW_AT_type
	.byte	3                               ; Abbrev [3] 0x37:0x5 DW_TAG_const_type
	.long	60                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x3c:0xb DW_TAG_typedef
	.long	71                              ; DW_AT_type
	.long	171                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	31                              ; DW_AT_decl_line
	.byte	5                               ; Abbrev [5] 0x47:0x7 DW_TAG_base_type
	.long	179                             ; DW_AT_name
	.byte	8                               ; DW_AT_encoding
	.byte	1                               ; DW_AT_byte_size
	.byte	2                               ; Abbrev [2] 0x4e:0x5 DW_TAG_pointer_type
	.long	60                              ; DW_AT_type
	.byte	6                               ; Abbrev [6] 0x53:0x35 DW_TAG_subprogram
	.long	193                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	41                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_APPLE_optimized
	.byte	1                               ; DW_AT_inline
	.byte	7                               ; Abbrev [7] 0x5b:0xb DW_TAG_formal_parameter
	.long	205                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	41                              ; DW_AT_decl_line
	.long	136                             ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0x66:0xb DW_TAG_formal_parameter
	.long	209                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	41                              ; DW_AT_decl_line
	.long	137                             ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0x71:0xb DW_TAG_formal_parameter
	.long	213                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	41                              ; DW_AT_decl_line
	.long	143                             ; DW_AT_type
	.byte	8                               ; Abbrev [8] 0x7c:0xb DW_TAG_variable
	.long	248                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	42                              ; DW_AT_decl_line
	.long	143                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	9                               ; Abbrev [9] 0x88:0x1 DW_TAG_pointer_type
	.byte	2                               ; Abbrev [2] 0x89:0x5 DW_TAG_pointer_type
	.long	142                             ; DW_AT_type
	.byte	10                              ; Abbrev [10] 0x8e:0x1 DW_TAG_const_type
	.byte	4                               ; Abbrev [4] 0x8f:0xb DW_TAG_typedef
	.long	154                             ; DW_AT_type
	.long	220                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	31                              ; DW_AT_decl_line
	.byte	5                               ; Abbrev [5] 0x9a:0x7 DW_TAG_base_type
	.long	229                             ; DW_AT_name
	.byte	7                               ; DW_AT_encoding
	.byte	8                               ; DW_AT_byte_size
	.byte	6                               ; Abbrev [6] 0xa1:0x5a DW_TAG_subprogram
	.long	254                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	49                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_APPLE_optimized
	.byte	1                               ; DW_AT_inline
	.byte	7                               ; Abbrev [7] 0xa9:0xb DW_TAG_formal_parameter
	.long	205                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	49                              ; DW_AT_decl_line
	.long	78                              ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0xb4:0xb DW_TAG_formal_parameter
	.long	265                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	49                              ; DW_AT_decl_line
	.long	251                             ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0xbf:0xb DW_TAG_formal_parameter
	.long	295                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	49                              ; DW_AT_decl_line
	.long	251                             ; DW_AT_type
	.byte	11                              ; Abbrev [11] 0xca:0x30 DW_TAG_lexical_block
	.byte	8                               ; Abbrev [8] 0xcb:0xb DW_TAG_variable
	.long	209                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	51                              ; DW_AT_decl_line
	.long	269                             ; DW_AT_type
	.byte	8                               ; Abbrev [8] 0xd6:0xb DW_TAG_variable
	.long	322                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	53                              ; DW_AT_decl_line
	.long	251                             ; DW_AT_type
	.byte	11                              ; Abbrev [11] 0xe1:0x18 DW_TAG_lexical_block
	.byte	8                               ; Abbrev [8] 0xe2:0xb DW_TAG_variable
	.long	327                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	54                              ; DW_AT_decl_line
	.long	251                             ; DW_AT_type
	.byte	8                               ; Abbrev [8] 0xed:0xb DW_TAG_variable
	.long	332                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	54                              ; DW_AT_decl_line
	.long	251                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0xfb:0xb DW_TAG_typedef
	.long	262                             ; DW_AT_type
	.long	273                             ; DW_AT_name
	.byte	5                               ; DW_AT_decl_file
	.byte	31                              ; DW_AT_decl_line
	.byte	5                               ; Abbrev [5] 0x106:0x7 DW_TAG_base_type
	.long	282                             ; DW_AT_name
	.byte	7                               ; DW_AT_encoding
	.byte	4                               ; DW_AT_byte_size
	.byte	12                              ; Abbrev [12] 0x10d:0xc DW_TAG_array_type
	.long	60                              ; DW_AT_type
	.byte	13                              ; Abbrev [13] 0x112:0x6 DW_TAG_subrange_type
	.long	281                             ; DW_AT_type
	.byte	64                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	14                              ; Abbrev [14] 0x119:0x7 DW_TAG_base_type
	.long	302                             ; DW_AT_name
	.byte	8                               ; DW_AT_byte_size
	.byte	7                               ; DW_AT_encoding
	.byte	15                              ; Abbrev [15] 0x120:0x44 DW_TAG_subprogram
	.long	337                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	65                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	143                             ; DW_AT_type
                                        ; DW_AT_APPLE_optimized
	.byte	1                               ; DW_AT_inline
	.byte	7                               ; Abbrev [7] 0x12c:0xb DW_TAG_formal_parameter
	.long	353                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	65                              ; DW_AT_decl_line
	.long	251                             ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0x137:0xb DW_TAG_formal_parameter
	.long	357                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	65                              ; DW_AT_decl_line
	.long	251                             ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0x142:0xb DW_TAG_formal_parameter
	.long	359                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	65                              ; DW_AT_decl_line
	.long	251                             ; DW_AT_type
	.byte	8                               ; Abbrev [8] 0x14d:0xb DW_TAG_variable
	.long	368                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	66                              ; DW_AT_decl_line
	.long	251                             ; DW_AT_type
	.byte	8                               ; Abbrev [8] 0x158:0xb DW_TAG_variable
	.long	373                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	69                              ; DW_AT_decl_line
	.long	143                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	16                              ; Abbrev [16] 0x164:0x5a0 DW_TAG_subprogram
	.quad	Lfunc_begin0                    ; DW_AT_low_pc
.set Lset254, Lfunc_end0-Lfunc_begin0   ; DW_AT_high_pc
	.long	Lset254
	.byte	1                               ; DW_AT_frame_base
	.byte	109
                                        ; DW_AT_call_all_calls
	.long	377                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	13                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_external
                                        ; DW_AT_APPLE_optimized
	.byte	17                              ; Abbrev [17] 0x179:0xf DW_TAG_formal_parameter
.set Lset255, Ldebug_loc0-Lsection_debug_loc ; DW_AT_location
	.long	Lset255
	.long	615                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	13                              ; DW_AT_decl_line
	.long	2286                            ; DW_AT_type
	.byte	17                              ; Abbrev [17] 0x188:0xf DW_TAG_formal_parameter
.set Lset256, Ldebug_loc1-Lsection_debug_loc ; DW_AT_location
	.long	Lset256
	.long	633                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	13                              ; DW_AT_decl_line
	.long	143                             ; DW_AT_type
	.byte	18                              ; Abbrev [18] 0x197:0xf DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	143
	.ascii	"\220\001"
	.long	528                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	36                              ; DW_AT_decl_line
	.long	2015                            ; DW_AT_type
	.byte	18                              ; Abbrev [18] 0x1a6:0xf DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	143
	.asciz	"\320"
	.long	613                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	37                              ; DW_AT_decl_line
	.long	2015                            ; DW_AT_type
	.byte	19                              ; Abbrev [19] 0x1b5:0xf DW_TAG_variable
.set Lset257, Ldebug_loc2-Lsection_debug_loc ; DW_AT_location
	.long	Lset257
	.long	641                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	20                              ; DW_AT_decl_line
	.long	1863                            ; DW_AT_type
	.byte	19                              ; Abbrev [19] 0x1c4:0xf DW_TAG_variable
.set Lset258, Ldebug_loc3-Lsection_debug_loc ; DW_AT_location
	.long	Lset258
	.long	649                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	25                              ; DW_AT_decl_line
	.long	251                             ; DW_AT_type
	.byte	19                              ; Abbrev [19] 0x1d3:0xf DW_TAG_variable
.set Lset259, Ldebug_loc4-Lsection_debug_loc ; DW_AT_location
	.long	Lset259
	.long	654                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	25                              ; DW_AT_decl_line
	.long	251                             ; DW_AT_type
	.byte	19                              ; Abbrev [19] 0x1e2:0xf DW_TAG_variable
.set Lset260, Ldebug_loc5-Lsection_debug_loc ; DW_AT_location
	.long	Lset260
	.long	661                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	25                              ; DW_AT_decl_line
	.long	251                             ; DW_AT_type
	.byte	19                              ; Abbrev [19] 0x1f1:0xf DW_TAG_variable
.set Lset261, Ldebug_loc6-Lsection_debug_loc ; DW_AT_location
	.long	Lset261
	.long	667                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	34                              ; DW_AT_decl_line
	.long	251                             ; DW_AT_type
	.byte	19                              ; Abbrev [19] 0x200:0xf DW_TAG_variable
.set Lset262, Ldebug_loc22-Lsection_debug_loc ; DW_AT_location
	.long	Lset262
	.long	681                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	52                              ; DW_AT_decl_line
	.long	143                             ; DW_AT_type
	.byte	19                              ; Abbrev [19] 0x20f:0xf DW_TAG_variable
.set Lset263, Ldebug_loc27-Lsection_debug_loc ; DW_AT_location
	.long	Lset263
	.long	690                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	53                              ; DW_AT_decl_line
	.long	143                             ; DW_AT_type
	.byte	19                              ; Abbrev [19] 0x21e:0xf DW_TAG_variable
.set Lset264, Ldebug_loc28-Lsection_debug_loc ; DW_AT_location
	.long	Lset264
	.long	699                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	54                              ; DW_AT_decl_line
	.long	2239                            ; DW_AT_type
	.byte	19                              ; Abbrev [19] 0x22d:0xf DW_TAG_variable
.set Lset265, Ldebug_loc31-Lsection_debug_loc ; DW_AT_location
	.long	Lset265
	.long	705                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	72                              ; DW_AT_decl_line
	.long	143                             ; DW_AT_type
	.byte	20                              ; Abbrev [20] 0x23c:0x3a DW_TAG_inlined_subroutine
	.long	83                              ; DW_AT_abstract_origin
	.quad	Ltmp25                          ; DW_AT_low_pc
.set Lset266, Ltmp29-Ltmp25             ; DW_AT_high_pc
	.long	Lset266
	.byte	2                               ; DW_AT_call_file
	.byte	38                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	21                              ; Abbrev [21] 0x250:0xa DW_TAG_formal_parameter
	.byte	4                               ; DW_AT_location
	.byte	143
	.ascii	"\220\001"
	.byte	159
	.long	91                              ; DW_AT_abstract_origin
	.byte	21                              ; Abbrev [21] 0x25a:0x9 DW_TAG_formal_parameter
	.byte	3                               ; DW_AT_location
	.byte	143
	.asciz	"\310"
	.long	102                             ; DW_AT_abstract_origin
	.byte	22                              ; Abbrev [22] 0x263:0x9 DW_TAG_formal_parameter
.set Lset267, Ldebug_loc7-Lsection_debug_loc ; DW_AT_location
	.long	Lset267
	.long	113                             ; DW_AT_abstract_origin
	.byte	23                              ; Abbrev [23] 0x26c:0x9 DW_TAG_variable
.set Lset268, Ldebug_loc8-Lsection_debug_loc ; DW_AT_location
	.long	Lset268
	.long	124                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	20                              ; Abbrev [20] 0x276:0x38 DW_TAG_inlined_subroutine
	.long	83                              ; DW_AT_abstract_origin
	.quad	Ltmp30                          ; DW_AT_low_pc
.set Lset269, Ltmp34-Ltmp30             ; DW_AT_high_pc
	.long	Lset269
	.byte	2                               ; DW_AT_call_file
	.byte	39                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	21                              ; Abbrev [21] 0x28a:0xa DW_TAG_formal_parameter
	.byte	4                               ; DW_AT_location
	.byte	143
	.asciz	"\320"
	.byte	159
	.long	91                              ; DW_AT_abstract_origin
	.byte	21                              ; Abbrev [21] 0x294:0x7 DW_TAG_formal_parameter
	.byte	1                               ; DW_AT_location
	.byte	101
	.long	102                             ; DW_AT_abstract_origin
	.byte	22                              ; Abbrev [22] 0x29b:0x9 DW_TAG_formal_parameter
.set Lset270, Ldebug_loc9-Lsection_debug_loc ; DW_AT_location
	.long	Lset270
	.long	113                             ; DW_AT_abstract_origin
	.byte	23                              ; Abbrev [23] 0x2a4:0x9 DW_TAG_variable
.set Lset271, Ldebug_loc10-Lsection_debug_loc ; DW_AT_location
	.long	Lset271
	.long	124                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	24                              ; Abbrev [24] 0x2ae:0x28 DW_TAG_lexical_block
	.quad	Ltmp35                          ; DW_AT_low_pc
.set Lset272, Ltmp43-Ltmp35             ; DW_AT_high_pc
	.long	Lset272
	.byte	19                              ; Abbrev [19] 0x2bb:0xf DW_TAG_variable
.set Lset273, Ldebug_loc11-Lsection_debug_loc ; DW_AT_location
	.long	Lset273
	.long	675                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	42                              ; DW_AT_decl_line
	.long	251                             ; DW_AT_type
	.byte	8                               ; Abbrev [8] 0x2ca:0xb DW_TAG_variable
	.long	721                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	41                              ; DW_AT_decl_line
	.long	251                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	20                              ; Abbrev [20] 0x2d6:0x6d DW_TAG_inlined_subroutine
	.long	161                             ; DW_AT_abstract_origin
	.quad	Ltmp46                          ; DW_AT_low_pc
.set Lset274, Ltmp57-Ltmp46             ; DW_AT_high_pc
	.long	Lset274
	.byte	2                               ; DW_AT_call_file
	.byte	49                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	21                              ; Abbrev [21] 0x2ea:0xa DW_TAG_formal_parameter
	.byte	4                               ; DW_AT_location
	.byte	143
	.ascii	"\220\001"
	.byte	159
	.long	169                             ; DW_AT_abstract_origin
	.byte	22                              ; Abbrev [22] 0x2f4:0x9 DW_TAG_formal_parameter
.set Lset275, Ldebug_loc12-Lsection_debug_loc ; DW_AT_location
	.long	Lset275
	.long	180                             ; DW_AT_abstract_origin
	.byte	21                              ; Abbrev [21] 0x2fd:0x7 DW_TAG_formal_parameter
	.byte	1                               ; DW_AT_location
	.byte	101
	.long	191                             ; DW_AT_abstract_origin
	.byte	24                              ; Abbrev [24] 0x304:0x3e DW_TAG_lexical_block
	.quad	Ltmp48                          ; DW_AT_low_pc
.set Lset276, Ltmp57-Ltmp48             ; DW_AT_high_pc
	.long	Lset276
	.byte	25                              ; Abbrev [25] 0x311:0x9 DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	145
	.ascii	"\320~"
	.long	203                             ; DW_AT_abstract_origin
	.byte	23                              ; Abbrev [23] 0x31a:0x9 DW_TAG_variable
.set Lset277, Ldebug_loc13-Lsection_debug_loc ; DW_AT_location
	.long	Lset277
	.long	214                             ; DW_AT_abstract_origin
	.byte	24                              ; Abbrev [24] 0x323:0x1e DW_TAG_lexical_block
	.quad	Ltmp50                          ; DW_AT_low_pc
.set Lset278, Ltmp57-Ltmp50             ; DW_AT_high_pc
	.long	Lset278
	.byte	23                              ; Abbrev [23] 0x330:0x9 DW_TAG_variable
.set Lset279, Ldebug_loc14-Lsection_debug_loc ; DW_AT_location
	.long	Lset279
	.long	226                             ; DW_AT_abstract_origin
	.byte	25                              ; Abbrev [25] 0x339:0x7 DW_TAG_variable
	.byte	1                               ; DW_AT_location
	.byte	99
	.long	237                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	20                              ; Abbrev [20] 0x343:0x6d DW_TAG_inlined_subroutine
	.long	161                             ; DW_AT_abstract_origin
	.quad	Ltmp58                          ; DW_AT_low_pc
.set Lset280, Ltmp69-Ltmp58             ; DW_AT_high_pc
	.long	Lset280
	.byte	2                               ; DW_AT_call_file
	.byte	50                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	21                              ; Abbrev [21] 0x357:0xa DW_TAG_formal_parameter
	.byte	4                               ; DW_AT_location
	.byte	143
	.asciz	"\320"
	.byte	159
	.long	169                             ; DW_AT_abstract_origin
	.byte	22                              ; Abbrev [22] 0x361:0x9 DW_TAG_formal_parameter
.set Lset281, Ldebug_loc15-Lsection_debug_loc ; DW_AT_location
	.long	Lset281
	.long	180                             ; DW_AT_abstract_origin
	.byte	21                              ; Abbrev [21] 0x36a:0x7 DW_TAG_formal_parameter
	.byte	1                               ; DW_AT_location
	.byte	101
	.long	191                             ; DW_AT_abstract_origin
	.byte	24                              ; Abbrev [24] 0x371:0x3e DW_TAG_lexical_block
	.quad	Ltmp60                          ; DW_AT_low_pc
.set Lset282, Ltmp69-Ltmp60             ; DW_AT_high_pc
	.long	Lset282
	.byte	25                              ; Abbrev [25] 0x37e:0x9 DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	145
	.ascii	"\320~"
	.long	203                             ; DW_AT_abstract_origin
	.byte	23                              ; Abbrev [23] 0x387:0x9 DW_TAG_variable
.set Lset283, Ldebug_loc16-Lsection_debug_loc ; DW_AT_location
	.long	Lset283
	.long	214                             ; DW_AT_abstract_origin
	.byte	24                              ; Abbrev [24] 0x390:0x1e DW_TAG_lexical_block
	.quad	Ltmp62                          ; DW_AT_low_pc
.set Lset284, Ltmp69-Ltmp62             ; DW_AT_high_pc
	.long	Lset284
	.byte	23                              ; Abbrev [23] 0x39d:0x9 DW_TAG_variable
.set Lset285, Ldebug_loc17-Lsection_debug_loc ; DW_AT_location
	.long	Lset285
	.long	226                             ; DW_AT_abstract_origin
	.byte	25                              ; Abbrev [25] 0x3a6:0x7 DW_TAG_variable
	.byte	1                               ; DW_AT_location
	.byte	99
	.long	237                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	20                              ; Abbrev [20] 0x3b0:0x3f DW_TAG_inlined_subroutine
	.long	288                             ; DW_AT_abstract_origin
	.quad	Ltmp70                          ; DW_AT_low_pc
.set Lset286, Ltmp95-Ltmp70             ; DW_AT_high_pc
	.long	Lset286
	.byte	2                               ; DW_AT_call_file
	.byte	52                              ; DW_AT_call_line
	.byte	25                              ; DW_AT_call_column
	.byte	22                              ; Abbrev [22] 0x3c4:0x9 DW_TAG_formal_parameter
.set Lset287, Ldebug_loc19-Lsection_debug_loc ; DW_AT_location
	.long	Lset287
	.long	300                             ; DW_AT_abstract_origin
	.byte	22                              ; Abbrev [22] 0x3cd:0x9 DW_TAG_formal_parameter
.set Lset288, Ldebug_loc18-Lsection_debug_loc ; DW_AT_location
	.long	Lset288
	.long	311                             ; DW_AT_abstract_origin
	.byte	26                              ; Abbrev [26] 0x3d6:0x6 DW_TAG_formal_parameter
	.byte	9                               ; DW_AT_const_value
	.long	322                             ; DW_AT_abstract_origin
	.byte	23                              ; Abbrev [23] 0x3dc:0x9 DW_TAG_variable
.set Lset289, Ldebug_loc20-Lsection_debug_loc ; DW_AT_location
	.long	Lset289
	.long	333                             ; DW_AT_abstract_origin
	.byte	23                              ; Abbrev [23] 0x3e5:0x9 DW_TAG_variable
.set Lset290, Ldebug_loc21-Lsection_debug_loc ; DW_AT_location
	.long	Lset290
	.long	344                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	20                              ; Abbrev [20] 0x3ef:0x3f DW_TAG_inlined_subroutine
	.long	288                             ; DW_AT_abstract_origin
	.quad	Ltmp96                          ; DW_AT_low_pc
.set Lset291, Ltmp124-Ltmp96            ; DW_AT_high_pc
	.long	Lset291
	.byte	2                               ; DW_AT_call_file
	.byte	53                              ; DW_AT_call_line
	.byte	25                              ; DW_AT_call_column
	.byte	22                              ; Abbrev [22] 0x403:0x9 DW_TAG_formal_parameter
.set Lset292, Ldebug_loc24-Lsection_debug_loc ; DW_AT_location
	.long	Lset292
	.long	300                             ; DW_AT_abstract_origin
	.byte	22                              ; Abbrev [22] 0x40c:0x9 DW_TAG_formal_parameter
.set Lset293, Ldebug_loc23-Lsection_debug_loc ; DW_AT_location
	.long	Lset293
	.long	311                             ; DW_AT_abstract_origin
	.byte	26                              ; Abbrev [26] 0x415:0x6 DW_TAG_formal_parameter
	.byte	9                               ; DW_AT_const_value
	.long	322                             ; DW_AT_abstract_origin
	.byte	23                              ; Abbrev [23] 0x41b:0x9 DW_TAG_variable
.set Lset294, Ldebug_loc25-Lsection_debug_loc ; DW_AT_location
	.long	Lset294
	.long	333                             ; DW_AT_abstract_origin
	.byte	23                              ; Abbrev [23] 0x424:0x9 DW_TAG_variable
.set Lset295, Ldebug_loc26-Lsection_debug_loc ; DW_AT_location
	.long	Lset295
	.long	344                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	27                              ; Abbrev [27] 0x42e:0x15 DW_TAG_lexical_block
.set Lset296, Ldebug_ranges0-Ldebug_range ; DW_AT_ranges
	.long	Lset296
	.byte	19                              ; Abbrev [19] 0x433:0xf DW_TAG_variable
.set Lset297, Ldebug_loc30-Lsection_debug_loc ; DW_AT_location
	.long	Lset297
	.long	353                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	56                              ; DW_AT_decl_line
	.long	251                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	27                              ; Abbrev [27] 0x443:0x15 DW_TAG_lexical_block
.set Lset298, Ldebug_ranges1-Ldebug_range ; DW_AT_ranges
	.long	Lset298
	.byte	19                              ; Abbrev [19] 0x448:0xf DW_TAG_variable
.set Lset299, Ldebug_loc29-Lsection_debug_loc ; DW_AT_location
	.long	Lset299
	.long	353                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	64                              ; DW_AT_decl_line
	.long	251                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	24                              ; Abbrev [24] 0x458:0x49 DW_TAG_lexical_block
	.quad	Ltmp143                         ; DW_AT_low_pc
.set Lset300, Ltmp155-Ltmp143           ; DW_AT_high_pc
	.long	Lset300
	.byte	18                              ; Abbrev [18] 0x465:0xd DW_TAG_variable
	.byte	1                               ; DW_AT_location
	.byte	99
	.long	711                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	84                              ; DW_AT_decl_line
	.long	251                             ; DW_AT_type
	.byte	24                              ; Abbrev [24] 0x472:0x2e DW_TAG_lexical_block
	.quad	Ltmp148                         ; DW_AT_low_pc
.set Lset301, Ltmp155-Ltmp148           ; DW_AT_high_pc
	.long	Lset301
	.byte	19                              ; Abbrev [19] 0x47f:0xf DW_TAG_variable
.set Lset302, Ldebug_loc32-Lsection_debug_loc ; DW_AT_location
	.long	Lset302
	.long	713                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	86                              ; DW_AT_decl_line
	.long	251                             ; DW_AT_type
	.byte	27                              ; Abbrev [27] 0x48e:0x11 DW_TAG_lexical_block
.set Lset303, Ldebug_ranges2-Ldebug_range ; DW_AT_ranges
	.long	Lset303
	.byte	8                               ; Abbrev [8] 0x493:0xb DW_TAG_variable
	.long	631                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	88                              ; DW_AT_decl_line
	.long	2374                            ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	24                              ; Abbrev [24] 0x4a1:0x49 DW_TAG_lexical_block
	.quad	Ltmp182                         ; DW_AT_low_pc
.set Lset304, Ltmp194-Ltmp182           ; DW_AT_high_pc
	.long	Lset304
	.byte	18                              ; Abbrev [18] 0x4ae:0xd DW_TAG_variable
	.byte	1                               ; DW_AT_location
	.byte	99
	.long	711                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	75                              ; DW_AT_decl_line
	.long	251                             ; DW_AT_type
	.byte	24                              ; Abbrev [24] 0x4bb:0x2e DW_TAG_lexical_block
	.quad	Ltmp187                         ; DW_AT_low_pc
.set Lset305, Ltmp194-Ltmp187           ; DW_AT_high_pc
	.long	Lset305
	.byte	19                              ; Abbrev [19] 0x4c8:0xf DW_TAG_variable
.set Lset306, Ldebug_loc36-Lsection_debug_loc ; DW_AT_location
	.long	Lset306
	.long	713                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	77                              ; DW_AT_decl_line
	.long	251                             ; DW_AT_type
	.byte	27                              ; Abbrev [27] 0x4d7:0x11 DW_TAG_lexical_block
.set Lset307, Ldebug_ranges3-Ldebug_range ; DW_AT_ranges
	.long	Lset307
	.byte	8                               ; Abbrev [8] 0x4dc:0xb DW_TAG_variable
	.long	631                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	79                              ; DW_AT_decl_line
	.long	2384                            ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	24                              ; Abbrev [24] 0x4ea:0x69 DW_TAG_lexical_block
	.quad	Ltmp160                         ; DW_AT_low_pc
.set Lset308, Ltmp180-Ltmp160           ; DW_AT_high_pc
	.long	Lset308
	.byte	18                              ; Abbrev [18] 0x4f7:0xd DW_TAG_variable
	.byte	1                               ; DW_AT_location
	.byte	102
	.long	711                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	94                              ; DW_AT_decl_line
	.long	251                             ; DW_AT_type
	.byte	24                              ; Abbrev [24] 0x504:0x4e DW_TAG_lexical_block
	.quad	Ltmp165                         ; DW_AT_low_pc
.set Lset309, Ltmp180-Ltmp165           ; DW_AT_high_pc
	.long	Lset309
	.byte	18                              ; Abbrev [18] 0x511:0xd DW_TAG_variable
	.byte	1                               ; DW_AT_location
	.byte	103
	.long	713                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	96                              ; DW_AT_decl_line
	.long	251                             ; DW_AT_type
	.byte	27                              ; Abbrev [27] 0x51e:0x33 DW_TAG_lexical_block
.set Lset310, Ldebug_ranges4-Ldebug_range ; DW_AT_ranges
	.long	Lset310
	.byte	19                              ; Abbrev [19] 0x523:0xf DW_TAG_variable
.set Lset311, Ldebug_loc33-Lsection_debug_loc ; DW_AT_location
	.long	Lset311
	.long	631                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	98                              ; DW_AT_decl_line
	.long	2379                            ; DW_AT_type
	.byte	19                              ; Abbrev [19] 0x532:0xf DW_TAG_variable
.set Lset312, Ldebug_loc34-Lsection_debug_loc ; DW_AT_location
	.long	Lset312
	.long	715                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	100                             ; DW_AT_decl_line
	.long	1902                            ; DW_AT_type
	.byte	19                              ; Abbrev [19] 0x541:0xf DW_TAG_variable
.set Lset313, Ldebug_loc35-Lsection_debug_loc ; DW_AT_location
	.long	Lset313
	.long	718                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	99                              ; DW_AT_decl_line
	.long	1902                            ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	24                              ; Abbrev [24] 0x553:0x49 DW_TAG_lexical_block
	.quad	Ltmp198                         ; DW_AT_low_pc
.set Lset314, Ltmp210-Ltmp198           ; DW_AT_high_pc
	.long	Lset314
	.byte	18                              ; Abbrev [18] 0x560:0xd DW_TAG_variable
	.byte	1                               ; DW_AT_location
	.byte	99
	.long	711                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	105                             ; DW_AT_decl_line
	.long	251                             ; DW_AT_type
	.byte	24                              ; Abbrev [24] 0x56d:0x2e DW_TAG_lexical_block
	.quad	Ltmp203                         ; DW_AT_low_pc
.set Lset315, Ltmp210-Ltmp203           ; DW_AT_high_pc
	.long	Lset315
	.byte	19                              ; Abbrev [19] 0x57a:0xf DW_TAG_variable
.set Lset316, Ldebug_loc37-Lsection_debug_loc ; DW_AT_location
	.long	Lset316
	.long	713                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	107                             ; DW_AT_decl_line
	.long	251                             ; DW_AT_type
	.byte	27                              ; Abbrev [27] 0x589:0x11 DW_TAG_lexical_block
.set Lset317, Ldebug_ranges5-Ldebug_range ; DW_AT_ranges
	.long	Lset317
	.byte	8                               ; Abbrev [8] 0x58e:0xb DW_TAG_variable
	.long	631                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	109                             ; DW_AT_decl_line
	.long	2379                            ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	24                              ; Abbrev [24] 0x59c:0x47 DW_TAG_lexical_block
	.quad	Ltmp216                         ; DW_AT_low_pc
.set Lset318, Ltmp268-Ltmp216           ; DW_AT_high_pc
	.long	Lset318
	.byte	19                              ; Abbrev [19] 0x5a9:0xf DW_TAG_variable
.set Lset319, Ldebug_loc38-Lsection_debug_loc ; DW_AT_location
	.long	Lset319
	.long	711                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	114                             ; DW_AT_decl_line
	.long	251                             ; DW_AT_type
	.byte	27                              ; Abbrev [27] 0x5b8:0x2a DW_TAG_lexical_block
.set Lset320, Ldebug_ranges6-Ldebug_range ; DW_AT_ranges
	.long	Lset320
	.byte	19                              ; Abbrev [19] 0x5bd:0xf DW_TAG_variable
.set Lset321, Ldebug_loc40-Lsection_debug_loc ; DW_AT_location
	.long	Lset321
	.long	713                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	116                             ; DW_AT_decl_line
	.long	251                             ; DW_AT_type
	.byte	27                              ; Abbrev [27] 0x5cc:0x15 DW_TAG_lexical_block
.set Lset322, Ldebug_ranges7-Ldebug_range ; DW_AT_ranges
	.long	Lset322
	.byte	19                              ; Abbrev [19] 0x5d1:0xf DW_TAG_variable
.set Lset323, Ldebug_loc39-Lsection_debug_loc ; DW_AT_location
	.long	Lset323
	.long	631                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	118                             ; DW_AT_decl_line
	.long	2389                            ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	28                              ; Abbrev [28] 0x5e3:0x14 DW_TAG_call_site
	.long	1796                            ; DW_AT_call_origin
	.quad	Ltmp43                          ; DW_AT_call_return_pc
	.byte	29                              ; Abbrev [29] 0x5f0:0x6 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	83
	.byte	2                               ; DW_AT_call_value
	.byte	138
	.byte	0
	.byte	0                               ; End Of Children Mark
	.byte	28                              ; Abbrev [28] 0x5f7:0x14 DW_TAG_call_site
	.long	1824                            ; DW_AT_call_origin
	.quad	Ltmp149                         ; DW_AT_call_return_pc
	.byte	29                              ; Abbrev [29] 0x604:0x6 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	80
	.byte	2                               ; DW_AT_call_value
	.byte	132
	.byte	0
	.byte	0                               ; End Of Children Mark
	.byte	28                              ; Abbrev [28] 0x60b:0x16 DW_TAG_call_site
	.long	1870                            ; DW_AT_call_origin
	.quad	Ltmp166                         ; DW_AT_call_return_pc
	.byte	29                              ; Abbrev [29] 0x618:0x8 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	80
	.byte	4                               ; DW_AT_call_value
	.byte	143
	.byte	60
	.byte	148
	.byte	4
	.byte	0                               ; End Of Children Mark
	.byte	30                              ; Abbrev [30] 0x621:0xd DW_TAG_call_site
	.long	1909                            ; DW_AT_call_origin
	.quad	Ltmp174                         ; DW_AT_call_return_pc
	.byte	30                              ; Abbrev [30] 0x62e:0xd DW_TAG_call_site
	.long	1909                            ; DW_AT_call_origin
	.quad	Ltmp176                         ; DW_AT_call_return_pc
	.byte	28                              ; Abbrev [28] 0x63b:0x14 DW_TAG_call_site
	.long	1926                            ; DW_AT_call_origin
	.quad	Ltmp188                         ; DW_AT_call_return_pc
	.byte	29                              ; Abbrev [29] 0x648:0x6 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	83
	.byte	2                               ; DW_AT_call_value
	.byte	132
	.byte	0
	.byte	0                               ; End Of Children Mark
	.byte	28                              ; Abbrev [28] 0x64f:0x14 DW_TAG_call_site
	.long	1870                            ; DW_AT_call_origin
	.quad	Ltmp204                         ; DW_AT_call_return_pc
	.byte	29                              ; Abbrev [29] 0x65c:0x6 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	80
	.byte	2                               ; DW_AT_call_value
	.byte	132
	.byte	0
	.byte	0                               ; End Of Children Mark
	.byte	28                              ; Abbrev [28] 0x663:0x14 DW_TAG_call_site
	.long	1976                            ; DW_AT_call_origin
	.quad	Ltmp217                         ; DW_AT_call_return_pc
	.byte	29                              ; Abbrev [29] 0x670:0x6 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	80
	.byte	2                               ; DW_AT_call_value
	.byte	132
	.byte	0
	.byte	0                               ; End Of Children Mark
	.byte	28                              ; Abbrev [28] 0x677:0x14 DW_TAG_call_site
	.long	1976                            ; DW_AT_call_origin
	.quad	Ltmp227                         ; DW_AT_call_return_pc
	.byte	29                              ; Abbrev [29] 0x684:0x6 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	80
	.byte	2                               ; DW_AT_call_value
	.byte	132
	.byte	0
	.byte	0                               ; End Of Children Mark
	.byte	28                              ; Abbrev [28] 0x68b:0x14 DW_TAG_call_site
	.long	1976                            ; DW_AT_call_origin
	.quad	Ltmp233                         ; DW_AT_call_return_pc
	.byte	29                              ; Abbrev [29] 0x698:0x6 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	80
	.byte	2                               ; DW_AT_call_value
	.byte	132
	.byte	0
	.byte	0                               ; End Of Children Mark
	.byte	28                              ; Abbrev [28] 0x69f:0x14 DW_TAG_call_site
	.long	1976                            ; DW_AT_call_origin
	.quad	Ltmp239                         ; DW_AT_call_return_pc
	.byte	29                              ; Abbrev [29] 0x6ac:0x6 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	80
	.byte	2                               ; DW_AT_call_value
	.byte	132
	.byte	0
	.byte	0                               ; End Of Children Mark
	.byte	28                              ; Abbrev [28] 0x6b3:0x14 DW_TAG_call_site
	.long	1976                            ; DW_AT_call_origin
	.quad	Ltmp245                         ; DW_AT_call_return_pc
	.byte	29                              ; Abbrev [29] 0x6c0:0x6 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	80
	.byte	2                               ; DW_AT_call_value
	.byte	132
	.byte	0
	.byte	0                               ; End Of Children Mark
	.byte	28                              ; Abbrev [28] 0x6c7:0x14 DW_TAG_call_site
	.long	1976                            ; DW_AT_call_origin
	.quad	Ltmp251                         ; DW_AT_call_return_pc
	.byte	29                              ; Abbrev [29] 0x6d4:0x6 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	80
	.byte	2                               ; DW_AT_call_value
	.byte	132
	.byte	0
	.byte	0                               ; End Of Children Mark
	.byte	28                              ; Abbrev [28] 0x6db:0x14 DW_TAG_call_site
	.long	1976                            ; DW_AT_call_origin
	.quad	Ltmp257                         ; DW_AT_call_return_pc
	.byte	29                              ; Abbrev [29] 0x6e8:0x6 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	80
	.byte	2                               ; DW_AT_call_value
	.byte	132
	.byte	0
	.byte	0                               ; End Of Children Mark
	.byte	28                              ; Abbrev [28] 0x6ef:0x14 DW_TAG_call_site
	.long	1976                            ; DW_AT_call_origin
	.quad	Ltmp263                         ; DW_AT_call_return_pc
	.byte	29                              ; Abbrev [29] 0x6fc:0x6 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	80
	.byte	2                               ; DW_AT_call_value
	.byte	132
	.byte	0
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	31                              ; Abbrev [31] 0x704:0x1c DW_TAG_subprogram
	.long	395                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	47                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_declaration
                                        ; DW_AT_external
                                        ; DW_AT_APPLE_optimized
	.byte	32                              ; Abbrev [32] 0x70b:0x5 DW_TAG_formal_parameter
	.long	78                              ; DW_AT_type
	.byte	32                              ; Abbrev [32] 0x710:0x5 DW_TAG_formal_parameter
	.long	50                              ; DW_AT_type
	.byte	32                              ; Abbrev [32] 0x715:0x5 DW_TAG_formal_parameter
	.long	251                             ; DW_AT_type
	.byte	32                              ; Abbrev [32] 0x71a:0x5 DW_TAG_formal_parameter
	.long	251                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	33                              ; Abbrev [33] 0x720:0x20 DW_TAG_subprogram
	.long	415                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	8                               ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	1856                            ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
                                        ; DW_AT_APPLE_optimized
	.byte	32                              ; Abbrev [32] 0x72b:0x5 DW_TAG_formal_parameter
	.long	1856                            ; DW_AT_type
	.byte	32                              ; Abbrev [32] 0x730:0x5 DW_TAG_formal_parameter
	.long	1856                            ; DW_AT_type
	.byte	32                              ; Abbrev [32] 0x735:0x5 DW_TAG_formal_parameter
	.long	1856                            ; DW_AT_type
	.byte	32                              ; Abbrev [32] 0x73a:0x5 DW_TAG_formal_parameter
	.long	1863                            ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	5                               ; Abbrev [5] 0x740:0x7 DW_TAG_base_type
	.long	427                             ; DW_AT_name
	.byte	4                               ; DW_AT_encoding
	.byte	2                               ; DW_AT_byte_size
	.byte	5                               ; Abbrev [5] 0x747:0x7 DW_TAG_base_type
	.long	436                             ; DW_AT_name
	.byte	5                               ; DW_AT_encoding
	.byte	4                               ; DW_AT_byte_size
	.byte	33                              ; Abbrev [33] 0x74e:0x20 DW_TAG_subprogram
	.long	440                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	10                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	1902                            ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
                                        ; DW_AT_APPLE_optimized
	.byte	32                              ; Abbrev [32] 0x759:0x5 DW_TAG_formal_parameter
	.long	1902                            ; DW_AT_type
	.byte	32                              ; Abbrev [32] 0x75e:0x5 DW_TAG_formal_parameter
	.long	1902                            ; DW_AT_type
	.byte	32                              ; Abbrev [32] 0x763:0x5 DW_TAG_formal_parameter
	.long	1902                            ; DW_AT_type
	.byte	32                              ; Abbrev [32] 0x768:0x5 DW_TAG_formal_parameter
	.long	1863                            ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	5                               ; Abbrev [5] 0x76e:0x7 DW_TAG_base_type
	.long	452                             ; DW_AT_name
	.byte	4                               ; DW_AT_encoding
	.byte	4                               ; DW_AT_byte_size
	.byte	33                              ; Abbrev [33] 0x775:0x11 DW_TAG_subprogram
	.long	458                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	7                               ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	1902                            ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
                                        ; DW_AT_APPLE_optimized
	.byte	32                              ; Abbrev [32] 0x780:0x5 DW_TAG_formal_parameter
	.long	251                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	33                              ; Abbrev [33] 0x786:0x20 DW_TAG_subprogram
	.long	470                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	9                               ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	1958                            ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
                                        ; DW_AT_APPLE_optimized
	.byte	32                              ; Abbrev [32] 0x791:0x5 DW_TAG_formal_parameter
	.long	1958                            ; DW_AT_type
	.byte	32                              ; Abbrev [32] 0x796:0x5 DW_TAG_formal_parameter
	.long	1958                            ; DW_AT_type
	.byte	32                              ; Abbrev [32] 0x79b:0x5 DW_TAG_formal_parameter
	.long	1958                            ; DW_AT_type
	.byte	32                              ; Abbrev [32] 0x7a0:0x5 DW_TAG_formal_parameter
	.long	1863                            ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x7a6:0xb DW_TAG_typedef
	.long	1969                            ; DW_AT_type
	.long	485                             ; DW_AT_name
	.byte	6                               ; DW_AT_decl_file
	.byte	31                              ; DW_AT_decl_line
	.byte	5                               ; Abbrev [5] 0x7b1:0x7 DW_TAG_base_type
	.long	494                             ; DW_AT_name
	.byte	7                               ; DW_AT_encoding
	.byte	2                               ; DW_AT_byte_size
	.byte	33                              ; Abbrev [33] 0x7b8:0x20 DW_TAG_subprogram
	.long	509                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	11                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	2008                            ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
                                        ; DW_AT_APPLE_optimized
	.byte	32                              ; Abbrev [32] 0x7c3:0x5 DW_TAG_formal_parameter
	.long	2008                            ; DW_AT_type
	.byte	32                              ; Abbrev [32] 0x7c8:0x5 DW_TAG_formal_parameter
	.long	2008                            ; DW_AT_type
	.byte	32                              ; Abbrev [32] 0x7cd:0x5 DW_TAG_formal_parameter
	.long	2008                            ; DW_AT_type
	.byte	32                              ; Abbrev [32] 0x7d2:0x5 DW_TAG_formal_parameter
	.long	1863                            ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	5                               ; Abbrev [5] 0x7d8:0x7 DW_TAG_base_type
	.long	521                             ; DW_AT_name
	.byte	4                               ; DW_AT_encoding
	.byte	8                               ; DW_AT_byte_size
	.byte	4                               ; Abbrev [4] 0x7df:0xb DW_TAG_typedef
	.long	2026                            ; DW_AT_type
	.long	530                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	16                              ; DW_AT_decl_line
	.byte	34                              ; Abbrev [34] 0x7ea:0x75 DW_TAG_union_type
	.long	530                             ; DW_AT_name
	.byte	64                              ; DW_AT_byte_size
	.byte	3                               ; DW_AT_decl_file
	.byte	6                               ; DW_AT_decl_line
	.byte	35                              ; Abbrev [35] 0x7f2:0xc DW_TAG_member
	.long	538                             ; DW_AT_name
	.long	269                             ; DW_AT_type
	.byte	3                               ; DW_AT_decl_file
	.byte	7                               ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	35                              ; Abbrev [35] 0x7fe:0xc DW_TAG_member
	.long	541                             ; DW_AT_name
	.long	2143                            ; DW_AT_type
	.byte	3                               ; DW_AT_decl_file
	.byte	8                               ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	35                              ; Abbrev [35] 0x80a:0xc DW_TAG_member
	.long	545                             ; DW_AT_name
	.long	2155                            ; DW_AT_type
	.byte	3                               ; DW_AT_decl_file
	.byte	9                               ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	35                              ; Abbrev [35] 0x816:0xc DW_TAG_member
	.long	549                             ; DW_AT_name
	.long	2167                            ; DW_AT_type
	.byte	3                               ; DW_AT_decl_file
	.byte	10                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	35                              ; Abbrev [35] 0x822:0xc DW_TAG_member
	.long	571                             ; DW_AT_name
	.long	2197                            ; DW_AT_type
	.byte	3                               ; DW_AT_decl_file
	.byte	11                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	35                              ; Abbrev [35] 0x82e:0xc DW_TAG_member
	.long	589                             ; DW_AT_name
	.long	2227                            ; DW_AT_type
	.byte	3                               ; DW_AT_decl_file
	.byte	12                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	35                              ; Abbrev [35] 0x83a:0xc DW_TAG_member
	.long	601                             ; DW_AT_name
	.long	2250                            ; DW_AT_type
	.byte	3                               ; DW_AT_decl_file
	.byte	13                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	35                              ; Abbrev [35] 0x846:0xc DW_TAG_member
	.long	605                             ; DW_AT_name
	.long	2262                            ; DW_AT_type
	.byte	3                               ; DW_AT_decl_file
	.byte	14                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	35                              ; Abbrev [35] 0x852:0xc DW_TAG_member
	.long	609                             ; DW_AT_name
	.long	2274                            ; DW_AT_type
	.byte	3                               ; DW_AT_decl_file
	.byte	15                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	0                               ; End Of Children Mark
	.byte	12                              ; Abbrev [12] 0x85f:0xc DW_TAG_array_type
	.long	1958                            ; DW_AT_type
	.byte	13                              ; Abbrev [13] 0x864:0x6 DW_TAG_subrange_type
	.long	281                             ; DW_AT_type
	.byte	32                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	12                              ; Abbrev [12] 0x86b:0xc DW_TAG_array_type
	.long	251                             ; DW_AT_type
	.byte	13                              ; Abbrev [13] 0x870:0x6 DW_TAG_subrange_type
	.long	281                             ; DW_AT_type
	.byte	16                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	12                              ; Abbrev [12] 0x877:0xc DW_TAG_array_type
	.long	2179                            ; DW_AT_type
	.byte	13                              ; Abbrev [13] 0x87c:0x6 DW_TAG_subrange_type
	.long	281                             ; DW_AT_type
	.byte	64                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x883:0xb DW_TAG_typedef
	.long	2190                            ; DW_AT_type
	.long	552                             ; DW_AT_name
	.byte	7                               ; DW_AT_decl_file
	.byte	30                              ; DW_AT_decl_line
	.byte	5                               ; Abbrev [5] 0x88e:0x7 DW_TAG_base_type
	.long	559                             ; DW_AT_name
	.byte	6                               ; DW_AT_encoding
	.byte	1                               ; DW_AT_byte_size
	.byte	12                              ; Abbrev [12] 0x895:0xc DW_TAG_array_type
	.long	2209                            ; DW_AT_type
	.byte	13                              ; Abbrev [13] 0x89a:0x6 DW_TAG_subrange_type
	.long	281                             ; DW_AT_type
	.byte	32                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x8a1:0xb DW_TAG_typedef
	.long	2220                            ; DW_AT_type
	.long	575                             ; DW_AT_name
	.byte	8                               ; DW_AT_decl_file
	.byte	30                              ; DW_AT_decl_line
	.byte	5                               ; Abbrev [5] 0x8ac:0x7 DW_TAG_base_type
	.long	583                             ; DW_AT_name
	.byte	5                               ; DW_AT_encoding
	.byte	2                               ; DW_AT_byte_size
	.byte	12                              ; Abbrev [12] 0x8b3:0xc DW_TAG_array_type
	.long	2239                            ; DW_AT_type
	.byte	13                              ; Abbrev [13] 0x8b8:0x6 DW_TAG_subrange_type
	.long	281                             ; DW_AT_type
	.byte	16                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x8bf:0xb DW_TAG_typedef
	.long	1863                            ; DW_AT_type
	.long	593                             ; DW_AT_name
	.byte	9                               ; DW_AT_decl_file
	.byte	30                              ; DW_AT_decl_line
	.byte	12                              ; Abbrev [12] 0x8ca:0xc DW_TAG_array_type
	.long	1856                            ; DW_AT_type
	.byte	13                              ; Abbrev [13] 0x8cf:0x6 DW_TAG_subrange_type
	.long	281                             ; DW_AT_type
	.byte	32                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	12                              ; Abbrev [12] 0x8d6:0xc DW_TAG_array_type
	.long	1902                            ; DW_AT_type
	.byte	13                              ; Abbrev [13] 0x8db:0x6 DW_TAG_subrange_type
	.long	281                             ; DW_AT_type
	.byte	16                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	12                              ; Abbrev [12] 0x8e2:0xc DW_TAG_array_type
	.long	2008                            ; DW_AT_type
	.byte	13                              ; Abbrev [13] 0x8e7:0x6 DW_TAG_subrange_type
	.long	281                             ; DW_AT_type
	.byte	8                               ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x8ee:0x5 DW_TAG_pointer_type
	.long	2291                            ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x8f3:0xb DW_TAG_typedef
	.long	2302                            ; DW_AT_type
	.long	621                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	22                              ; DW_AT_decl_line
	.byte	36                              ; Abbrev [36] 0x8fe:0x30 DW_TAG_structure_type
	.long	621                             ; DW_AT_name
	.short	5120                            ; DW_AT_byte_size
	.byte	3                               ; DW_AT_decl_file
	.byte	18                              ; DW_AT_decl_line
	.byte	35                              ; Abbrev [35] 0x907:0xc DW_TAG_member
	.long	528                             ; DW_AT_name
	.long	2350                            ; DW_AT_type
	.byte	3                               ; DW_AT_decl_file
	.byte	19                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	37                              ; Abbrev [37] 0x913:0xd DW_TAG_member
	.long	613                             ; DW_AT_name
	.long	2350                            ; DW_AT_type
	.byte	3                               ; DW_AT_decl_file
	.byte	20                              ; DW_AT_decl_line
	.short	512                             ; DW_AT_data_member_location
	.byte	37                              ; Abbrev [37] 0x920:0xd DW_TAG_member
	.long	631                             ; DW_AT_name
	.long	2362                            ; DW_AT_type
	.byte	3                               ; DW_AT_decl_file
	.byte	21                              ; DW_AT_decl_line
	.short	1024                            ; DW_AT_data_member_location
	.byte	0                               ; End Of Children Mark
	.byte	12                              ; Abbrev [12] 0x92e:0xc DW_TAG_array_type
	.long	2015                            ; DW_AT_type
	.byte	13                              ; Abbrev [13] 0x933:0x6 DW_TAG_subrange_type
	.long	281                             ; DW_AT_type
	.byte	8                               ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	12                              ; Abbrev [12] 0x93a:0xc DW_TAG_array_type
	.long	2015                            ; DW_AT_type
	.byte	13                              ; Abbrev [13] 0x93f:0x6 DW_TAG_subrange_type
	.long	281                             ; DW_AT_type
	.byte	64                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x946:0x5 DW_TAG_pointer_type
	.long	1856                            ; DW_AT_type
	.byte	2                               ; Abbrev [2] 0x94b:0x5 DW_TAG_pointer_type
	.long	1902                            ; DW_AT_type
	.byte	2                               ; Abbrev [2] 0x950:0x5 DW_TAG_pointer_type
	.long	1958                            ; DW_AT_type
	.byte	2                               ; Abbrev [2] 0x955:0x5 DW_TAG_pointer_type
	.long	2008                            ; DW_AT_type
	.byte	0                               ; End Of Children Mark
Ldebug_info_end0:
	.section	__DWARF,__debug_ranges,regular,debug
Ldebug_range:
Ldebug_ranges0:
.set Lset324, Ltmp132-Lfunc_begin0
	.quad	Lset324
.set Lset325, Ltmp134-Lfunc_begin0
	.quad	Lset325
.set Lset326, Ltmp211-Lfunc_begin0
	.quad	Lset326
.set Lset327, Ltmp213-Lfunc_begin0
	.quad	Lset327
	.quad	0
	.quad	0
Ldebug_ranges1:
.set Lset328, Ltmp129-Lfunc_begin0
	.quad	Lset328
.set Lset329, Ltmp130-Lfunc_begin0
	.quad	Lset329
.set Lset330, Ltmp136-Lfunc_begin0
	.quad	Lset330
.set Lset331, Ltmp138-Lfunc_begin0
	.quad	Lset331
	.quad	0
	.quad	0
Ldebug_ranges2:
.set Lset332, Ltmp148-Lfunc_begin0
	.quad	Lset332
.set Lset333, Ltmp150-Lfunc_begin0
	.quad	Lset333
.set Lset334, Ltmp153-Lfunc_begin0
	.quad	Lset334
.set Lset335, Ltmp155-Lfunc_begin0
	.quad	Lset335
	.quad	0
	.quad	0
Ldebug_ranges3:
.set Lset336, Ltmp187-Lfunc_begin0
	.quad	Lset336
.set Lset337, Ltmp189-Lfunc_begin0
	.quad	Lset337
.set Lset338, Ltmp192-Lfunc_begin0
	.quad	Lset338
.set Lset339, Ltmp194-Lfunc_begin0
	.quad	Lset339
	.quad	0
	.quad	0
Ldebug_ranges4:
.set Lset340, Ltmp165-Lfunc_begin0
	.quad	Lset340
.set Lset341, Ltmp167-Lfunc_begin0
	.quad	Lset341
.set Lset342, Ltmp170-Lfunc_begin0
	.quad	Lset342
.set Lset343, Ltmp180-Lfunc_begin0
	.quad	Lset343
	.quad	0
	.quad	0
Ldebug_ranges5:
.set Lset344, Ltmp203-Lfunc_begin0
	.quad	Lset344
.set Lset345, Ltmp205-Lfunc_begin0
	.quad	Lset345
.set Lset346, Ltmp208-Lfunc_begin0
	.quad	Lset346
.set Lset347, Ltmp210-Lfunc_begin0
	.quad	Lset347
	.quad	0
	.quad	0
Ldebug_ranges6:
.set Lset348, Ltmp216-Lfunc_begin0
	.quad	Lset348
.set Lset349, Ltmp218-Lfunc_begin0
	.quad	Lset349
.set Lset350, Ltmp224-Lfunc_begin0
	.quad	Lset350
.set Lset351, Ltmp268-Lfunc_begin0
	.quad	Lset351
	.quad	0
	.quad	0
Ldebug_ranges7:
.set Lset352, Ltmp216-Lfunc_begin0
	.quad	Lset352
.set Lset353, Ltmp218-Lfunc_begin0
	.quad	Lset353
.set Lset354, Ltmp224-Lfunc_begin0
	.quad	Lset354
.set Lset355, Ltmp268-Lfunc_begin0
	.quad	Lset355
	.quad	0
	.quad	0
	.section	__DWARF,__debug_str,regular,debug
Linfo_string:
	.asciz	"Apple clang version 15.0.0 (clang-1500.3.9.4)" ; string offset=0
	.asciz	"matfp.c"                       ; string offset=46
	.asciz	"/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk" ; string offset=54
	.asciz	"MacOSX.sdk"                    ; string offset=106
	.asciz	"/Users/tarindujayatilaka/Documents/superopt/apple-amx" ; string offset=117
	.asciz	"uint8_t"                       ; string offset=171
	.asciz	"unsigned char"                 ; string offset=179
	.asciz	"load_xy_reg"                   ; string offset=193
	.asciz	"dst"                           ; string offset=205
	.asciz	"src"                           ; string offset=209
	.asciz	"offset"                        ; string offset=213
	.asciz	"uint64_t"                      ; string offset=220
	.asciz	"unsigned long long"            ; string offset=229
	.asciz	"avail"                         ; string offset=248
	.asciz	"xy_shuffle"                    ; string offset=254
	.asciz	"shuffle"                       ; string offset=265
	.asciz	"uint32_t"                      ; string offset=273
	.asciz	"unsigned int"                  ; string offset=282
	.asciz	"ebytes"                        ; string offset=295
	.asciz	"__ARRAY_SIZE_TYPE__"           ; string offset=302
	.asciz	"step"                          ; string offset=322
	.asciz	"soff"                          ; string offset=327
	.asciz	"doff"                          ; string offset=332
	.asciz	"parse_writemask"               ; string offset=337
	.asciz	"val"                           ; string offset=353
	.asciz	"g"                             ; string offset=357
	.asciz	"maskbits"                      ; string offset=359
	.asciz	"mode"                          ; string offset=368
	.asciz	"all"                           ; string offset=373
	.asciz	"emulate_AMX_MATFP"             ; string offset=377
	.asciz	"load_xy_reg_indexed"           ; string offset=395
	.asciz	"vecfp_alu16"                   ; string offset=415
	.asciz	"_Float16"                      ; string offset=427
	.asciz	"int"                           ; string offset=436
	.asciz	"vecfp_alu32"                   ; string offset=440
	.asciz	"float"                         ; string offset=452
	.asciz	"bf16_to_f32"                   ; string offset=458
	.asciz	"vecfp_alu_bf16"                ; string offset=470
	.asciz	"uint16_t"                      ; string offset=485
	.asciz	"unsigned short"                ; string offset=494
	.asciz	"vecfp_alu64"                   ; string offset=509
	.asciz	"double"                        ; string offset=521
	.asciz	"x"                             ; string offset=528
	.asciz	"amx_reg"                       ; string offset=530
	.asciz	"u8"                            ; string offset=538
	.asciz	"u16"                           ; string offset=541
	.asciz	"u32"                           ; string offset=545
	.asciz	"i8"                            ; string offset=549
	.asciz	"int8_t"                        ; string offset=552
	.asciz	"signed char"                   ; string offset=559
	.asciz	"i16"                           ; string offset=571
	.asciz	"int16_t"                       ; string offset=575
	.asciz	"short"                         ; string offset=583
	.asciz	"i32"                           ; string offset=589
	.asciz	"int32_t"                       ; string offset=593
	.asciz	"f16"                           ; string offset=601
	.asciz	"f32"                           ; string offset=605
	.asciz	"f64"                           ; string offset=609
	.asciz	"y"                             ; string offset=613
	.asciz	"state"                         ; string offset=615
	.asciz	"amx_state"                     ; string offset=621
	.asciz	"z"                             ; string offset=631
	.asciz	"operand"                       ; string offset=633
	.asciz	"alumode"                       ; string offset=641
	.asciz	"bf16"                          ; string offset=649
	.asciz	"xybits"                        ; string offset=654
	.asciz	"zbits"                         ; string offset=661
	.asciz	"xybytes"                       ; string offset=667
	.asciz	"ibits"                         ; string offset=675
	.asciz	"x_enable"                      ; string offset=681
	.asciz	"y_enable"                      ; string offset=690
	.asciz	"omask"                         ; string offset=699
	.asciz	"z_row"                         ; string offset=705
	.asciz	"j"                             ; string offset=711
	.asciz	"i"                             ; string offset=713
	.asciz	"yf"                            ; string offset=715
	.asciz	"xf"                            ; string offset=718
	.asciz	"src_reg"                       ; string offset=721
	.section	__DWARF,__apple_names,regular,debug
Lnames_begin:
	.long	1212240712                      ; Header Magic
	.short	1                               ; Header Version
	.short	0                               ; Header Hash Function
	.long	4                               ; Header Bucket Count
	.long	4                               ; Header Hash Count
	.long	12                              ; Header Data Length
	.long	0                               ; HeaderData Die Offset Base
	.long	1                               ; HeaderData Atom Count
	.short	1                               ; DW_ATOM_die_offset
	.short	6                               ; DW_FORM_data4
	.long	-1                              ; Bucket 0
	.long	-1                              ; Bucket 1
	.long	0                               ; Bucket 2
	.long	-1                              ; Bucket 3
	.long	226778194                       ; Hash in Bucket 2
	.long	1700920738                      ; Hash in Bucket 2
	.long	-1812755250                     ; Hash in Bucket 2
	.long	-224174954                      ; Hash in Bucket 2
.set Lset356, LNames2-Lnames_begin      ; Offset in Bucket 2
	.long	Lset356
.set Lset357, LNames1-Lnames_begin      ; Offset in Bucket 2
	.long	Lset357
.set Lset358, LNames3-Lnames_begin      ; Offset in Bucket 2
	.long	Lset358
.set Lset359, LNames0-Lnames_begin      ; Offset in Bucket 2
	.long	Lset359
LNames2:
	.long	193                             ; load_xy_reg
	.long	2                               ; Num DIEs
	.long	572
	.long	630
	.long	0
LNames1:
	.long	254                             ; xy_shuffle
	.long	2                               ; Num DIEs
	.long	726
	.long	835
	.long	0
LNames3:
	.long	377                             ; emulate_AMX_MATFP
	.long	1                               ; Num DIEs
	.long	356
	.long	0
LNames0:
	.long	337                             ; parse_writemask
	.long	2                               ; Num DIEs
	.long	944
	.long	1007
	.long	0
	.section	__DWARF,__apple_objc,regular,debug
Lobjc_begin:
	.long	1212240712                      ; Header Magic
	.short	1                               ; Header Version
	.short	0                               ; Header Hash Function
	.long	1                               ; Header Bucket Count
	.long	0                               ; Header Hash Count
	.long	12                              ; Header Data Length
	.long	0                               ; HeaderData Die Offset Base
	.long	1                               ; HeaderData Atom Count
	.short	1                               ; DW_ATOM_die_offset
	.short	6                               ; DW_FORM_data4
	.long	-1                              ; Bucket 0
	.section	__DWARF,__apple_namespac,regular,debug
Lnamespac_begin:
	.long	1212240712                      ; Header Magic
	.short	1                               ; Header Version
	.short	0                               ; Header Hash Function
	.long	1                               ; Header Bucket Count
	.long	0                               ; Header Hash Count
	.long	12                              ; Header Data Length
	.long	0                               ; HeaderData Die Offset Base
	.long	1                               ; HeaderData Atom Count
	.short	1                               ; DW_ATOM_die_offset
	.short	6                               ; DW_FORM_data4
	.long	-1                              ; Bucket 0
	.section	__DWARF,__apple_types,regular,debug
Ltypes_begin:
	.long	1212240712                      ; Header Magic
	.short	1                               ; Header Version
	.short	0                               ; Header Hash Function
	.long	10                              ; Header Bucket Count
	.long	20                              ; Header Hash Count
	.long	20                              ; Header Data Length
	.long	0                               ; HeaderData Die Offset Base
	.long	3                               ; HeaderData Atom Count
	.short	1                               ; DW_ATOM_die_offset
	.short	6                               ; DW_FORM_data4
	.short	3                               ; DW_ATOM_die_tag
	.short	5                               ; DW_FORM_data2
	.short	4                               ; DW_ATOM_type_flags
	.short	11                              ; DW_FORM_data1
	.long	0                               ; Bucket 0
	.long	1                               ; Bucket 1
	.long	-1                              ; Bucket 2
	.long	2                               ; Bucket 3
	.long	4                               ; Bucket 4
	.long	8                               ; Bucket 5
	.long	12                              ; Bucket 6
	.long	14                              ; Bucket 7
	.long	16                              ; Bucket 8
	.long	19                              ; Bucket 9
	.long	857652610                       ; Hash in Bucket 0
	.long	-594775205                      ; Hash in Bucket 1
	.long	259121563                       ; Hash in Bucket 3
	.long	691577533                       ; Hash in Bucket 3
	.long	290821634                       ; Hash in Bucket 4
	.long	897873384                       ; Hash in Bucket 4
	.long	-1622544152                     ; Hash in Bucket 4
	.long	-104093792                      ; Hash in Bucket 4
	.long	290711645                       ; Hash in Bucket 5
	.long	948621025                       ; Hash in Bucket 5
	.long	-1466705941                     ; Hash in Bucket 5
	.long	-1304652851                     ; Hash in Bucket 5
	.long	789719536                       ; Hash in Bucket 6
	.long	-1622611670                     ; Hash in Bucket 6
	.long	80989467                        ; Hash in Bucket 7
	.long	290644127                       ; Hash in Bucket 7
	.long	193495088                       ; Hash in Bucket 8
	.long	878862258                       ; Hash in Bucket 8
	.long	-113419488                      ; Hash in Bucket 8
	.long	274395349                       ; Hash in Bucket 9
.set Lset360, Ltypes0-Ltypes_begin      ; Offset in Bucket 0
	.long	Lset360
.set Lset361, Ltypes17-Ltypes_begin     ; Offset in Bucket 1
	.long	Lset361
.set Lset362, Ltypes11-Ltypes_begin     ; Offset in Bucket 3
	.long	Lset362
.set Lset363, Ltypes4-Ltypes_begin      ; Offset in Bucket 3
	.long	Lset363
.set Lset364, Ltypes8-Ltypes_begin      ; Offset in Bucket 4
	.long	Lset364
.set Lset365, Ltypes12-Ltypes_begin     ; Offset in Bucket 4
	.long	Lset365
.set Lset366, Ltypes9-Ltypes_begin      ; Offset in Bucket 4
	.long	Lset366
.set Lset367, Ltypes7-Ltypes_begin      ; Offset in Bucket 4
	.long	Lset367
.set Lset368, Ltypes1-Ltypes_begin      ; Offset in Bucket 5
	.long	Lset368
.set Lset369, Ltypes19-Ltypes_begin     ; Offset in Bucket 5
	.long	Lset369
.set Lset370, Ltypes18-Ltypes_begin     ; Offset in Bucket 5
	.long	Lset370
.set Lset371, Ltypes10-Ltypes_begin     ; Offset in Bucket 5
	.long	Lset371
.set Lset372, Ltypes13-Ltypes_begin     ; Offset in Bucket 6
	.long	Lset372
.set Lset373, Ltypes3-Ltypes_begin      ; Offset in Bucket 6
	.long	Lset373
.set Lset374, Ltypes15-Ltypes_begin     ; Offset in Bucket 7
	.long	Lset374
.set Lset375, Ltypes14-Ltypes_begin     ; Offset in Bucket 7
	.long	Lset375
.set Lset376, Ltypes2-Ltypes_begin      ; Offset in Bucket 8
	.long	Lset376
.set Lset377, Ltypes16-Ltypes_begin     ; Offset in Bucket 8
	.long	Lset377
.set Lset378, Ltypes5-Ltypes_begin      ; Offset in Bucket 8
	.long	Lset378
.set Lset379, Ltypes6-Ltypes_begin      ; Offset in Bucket 9
	.long	Lset379
Ltypes0:
	.long	229                             ; unsigned long long
	.long	1                               ; Num DIEs
	.long	154
	.short	36
	.byte	0
	.long	0
Ltypes17:
	.long	302                             ; __ARRAY_SIZE_TYPE__
	.long	1                               ; Num DIEs
	.long	281
	.short	36
	.byte	0
	.long	0
Ltypes11:
	.long	452                             ; float
	.long	1                               ; Num DIEs
	.long	1902
	.short	36
	.byte	0
	.long	0
Ltypes4:
	.long	559                             ; signed char
	.long	1                               ; Num DIEs
	.long	2190
	.short	36
	.byte	0
	.long	0
Ltypes8:
	.long	220                             ; uint64_t
	.long	1                               ; Num DIEs
	.long	143
	.short	22
	.byte	0
	.long	0
Ltypes12:
	.long	530                             ; amx_reg
	.long	2                               ; Num DIEs
	.long	2015
	.short	22
	.byte	0
	.long	2026
	.short	23
	.byte	0
	.long	0
Ltypes9:
	.long	593                             ; int32_t
	.long	1                               ; Num DIEs
	.long	2239
	.short	22
	.byte	0
	.long	0
Ltypes7:
	.long	179                             ; unsigned char
	.long	1                               ; Num DIEs
	.long	71
	.short	36
	.byte	0
	.long	0
Ltypes1:
	.long	273                             ; uint32_t
	.long	1                               ; Num DIEs
	.long	251
	.short	22
	.byte	0
	.long	0
Ltypes19:
	.long	427                             ; _Float16
	.long	1                               ; Num DIEs
	.long	1856
	.short	36
	.byte	0
	.long	0
Ltypes18:
	.long	621                             ; amx_state
	.long	2                               ; Num DIEs
	.long	2291
	.short	22
	.byte	0
	.long	2302
	.short	19
	.byte	0
	.long	0
Ltypes10:
	.long	282                             ; unsigned int
	.long	1                               ; Num DIEs
	.long	262
	.short	36
	.byte	0
	.long	0
Ltypes13:
	.long	171                             ; uint8_t
	.long	1                               ; Num DIEs
	.long	60
	.short	22
	.byte	0
	.long	0
Ltypes3:
	.long	575                             ; int16_t
	.long	1                               ; Num DIEs
	.long	2209
	.short	22
	.byte	0
	.long	0
Ltypes15:
	.long	552                             ; int8_t
	.long	1                               ; Num DIEs
	.long	2179
	.short	22
	.byte	0
	.long	0
Ltypes14:
	.long	485                             ; uint16_t
	.long	1                               ; Num DIEs
	.long	1958
	.short	22
	.byte	0
	.long	0
Ltypes2:
	.long	436                             ; int
	.long	1                               ; Num DIEs
	.long	1863
	.short	36
	.byte	0
	.long	0
Ltypes16:
	.long	494                             ; unsigned short
	.long	1                               ; Num DIEs
	.long	1969
	.short	36
	.byte	0
	.long	0
Ltypes5:
	.long	521                             ; double
	.long	1                               ; Num DIEs
	.long	2008
	.short	36
	.byte	0
	.long	0
Ltypes6:
	.long	583                             ; short
	.long	1                               ; Num DIEs
	.long	2220
	.short	36
	.byte	0
	.long	0
.subsections_via_symbols
	.section	__DWARF,__debug_line,regular,debug
Lsection_line:
Lline_table_start0:
