	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 14, 4
	.file	1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types" "_uint64_t.h"
	.file	2 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types" "_uint8_t.h"
	.globl	_vecint_alu_mode4               ; -- Begin function vecint_alu_mode4
	.p2align	2
_vecint_alu_mode4:                      ; @vecint_alu_mode4
Lfunc_begin0:
	.file	3 "/Users/tarindujayatilaka/Documents/superopt/apple-amx" "vecint.c"
	.loc	3 15 0                          ; vecint.c:15:0
	.cfi_startproc
; %bb.0:
	;DEBUG_VALUE: vecint_alu_mode4:val <- $x0
	;DEBUG_VALUE: vecint_alu_mode4:satbits <- $w1
	;DEBUG_VALUE: vecint_alu_mode4:operand <- $x2
	.loc	3 16 31 prologue_end            ; vecint.c:16:31
	lsr	x8, x2, #58
Ltmp0:
	.loc	3 17 9                          ; vecint.c:17:9
	ands	w9, w8, #0x1f
Ltmp1:
	;DEBUG_VALUE: vecint_alu_mode4:shift <- $w9
	.loc	3 17 15 is_stmt 0               ; vecint.c:17:15
	sub	w9, w9, #1
Ltmp2:
	.loc	3 17 9                          ; vecint.c:17:9
	ands	w8, w8, #0x1f
	and	x10, x2, #0x20000000
	ccmp	x10, #0, #4, ne
	mov	w10, #1
	.loc	3 17 15                         ; vecint.c:17:15
	lsl	x9, x10, x9
	csel	x9, xzr, x9, eq
	add	x9, x9, x0
Ltmp3:
	;DEBUG_VALUE: vecint_alu_mode4:val <- $x9
	.loc	3 20 9 is_stmt 1                ; vecint.c:20:9
	asr	x8, x9, x8
Ltmp4:
	;DEBUG_VALUE: vecint_alu_mode4:val <- $x8
	.loc	3 22 21                         ; vecint.c:22:21
	ubfx	x9, x2, #26, #1
Ltmp5:
	.loc	3 22 13 is_stmt 0               ; vecint.c:22:13
	sub	w9, w1, w9
Ltmp6:
	;DEBUG_VALUE: vecint_alu_mode4:satbits <- $w9
	.loc	3 0 13                          ; vecint.c:0:13
	mov	w10, #1
	.loc	3 25 27 is_stmt 1               ; vecint.c:25:27
	lsl	x9, x10, x9
Ltmp7:
	;DEBUG_VALUE: hi <- $x9
	.loc	3 0 27 is_stmt 0                ; vecint.c:0:27
	sub	x10, x9, #1
Ltmp8:
	.loc	3 31 17 is_stmt 1               ; vecint.c:31:17
	cmp	x8, x9
	csel	x11, x8, x10, lo
Ltmp9:
	.loc	3 22 21                         ; vecint.c:22:21
	lsl	x12, x2, #37
Ltmp10:
	.loc	3 27 26                         ; vecint.c:27:26
	neg	x13, x9
	and	x12, x13, x12, asr #63
Ltmp11:
	;DEBUG_VALUE: lo <- $x12
	.loc	3 28 17                         ; vecint.c:28:17
	cmp	x8, x12
	csel	x12, x8, x12, gt
Ltmp12:
	;DEBUG_VALUE: vecint_alu_mode4:val <- $x12
	.loc	3 29 17                         ; vecint.c:29:17
	cmp	x12, x9
	csel	x9, x12, x10, lt
Ltmp13:
	;DEBUG_VALUE: vecint_alu_mode4:val <- $x9
	.loc	3 26 13                         ; vecint.c:26:13
	tst	x2, #0x8000000000000000
	csel	x9, x11, x9, eq
Ltmp14:
	.loc	3 21 9                          ; vecint.c:21:9
	tst	w2, #0x40000000
	csel	x0, x8, x9, eq
Ltmp15:
	;DEBUG_VALUE: vecint_alu_mode4:val <- $x0
	.loc	3 34 5                          ; vecint.c:34:5
	ret
Ltmp16:
Lfunc_end0:
	.cfi_endproc
                                        ; -- End function
	.globl	_vecint_alu                     ; -- Begin function vecint_alu
	.p2align	2
_vecint_alu:                            ; @vecint_alu
Lfunc_begin1:
	.loc	3 37 0                          ; vecint.c:37:0
	.cfi_startproc
; %bb.0:
	;DEBUG_VALUE: vecint_alu:x <- $x0
	;DEBUG_VALUE: vecint_alu:y <- $x1
	;DEBUG_VALUE: vecint_alu:z <- $x2
	;DEBUG_VALUE: vecint_alu:alumode <- $w3
	;DEBUG_VALUE: vecint_alu:shift <- $w4
                                        ; kill: def $w4 killed $w4 def $x4
	.loc	3 38 21 prologue_end            ; vecint.c:38:21
	mul	x9, x1, x0
Ltmp17:
	;DEBUG_VALUE: vecint_alu:val <- $x9
	.loc	3 39 22                         ; vecint.c:39:22
	sub	w8, w3, #5
	cmp	w8, #1
	b.hi	LBB1_2
Ltmp18:
; %bb.1:
	;DEBUG_VALUE: vecint_alu:val <- $x9
	;DEBUG_VALUE: vecint_alu:shift <- $w4
	;DEBUG_VALUE: vecint_alu:alumode <- $w3
	;DEBUG_VALUE: vecint_alu:z <- $x2
	;DEBUG_VALUE: vecint_alu:y <- $x1
	;DEBUG_VALUE: vecint_alu:x <- $x0
	.loc	3 40 31                         ; vecint.c:40:31
	sub	w10, w4, #1
	mov	w11, #1
	.loc	3 40 21 is_stmt 0               ; vecint.c:40:21
	lsl	x10, x11, x10
	.loc	3 40 13                         ; vecint.c:40:13
	add	x9, x10, x9
Ltmp19:
	;DEBUG_VALUE: vecint_alu:val <- $x9
	.loc	3 0 13                          ; vecint.c:0:13
	b	LBB1_8
Ltmp20:
LBB1_2:
	;DEBUG_VALUE: vecint_alu:val <- $x9
	;DEBUG_VALUE: vecint_alu:shift <- $w4
	;DEBUG_VALUE: vecint_alu:alumode <- $w3
	;DEBUG_VALUE: vecint_alu:z <- $x2
	;DEBUG_VALUE: vecint_alu:y <- $x1
	;DEBUG_VALUE: vecint_alu:x <- $x0
	.loc	3 41 29 is_stmt 1               ; vecint.c:41:29
	and	w10, w3, #0xfffffffe
	cmp	w10, #2
	b.ne	LBB1_4
Ltmp21:
; %bb.3:
	;DEBUG_VALUE: vecint_alu:val <- $x9
	;DEBUG_VALUE: vecint_alu:shift <- $w4
	;DEBUG_VALUE: vecint_alu:alumode <- $w3
	;DEBUG_VALUE: vecint_alu:z <- $x2
	;DEBUG_VALUE: vecint_alu:y <- $x1
	;DEBUG_VALUE: vecint_alu:x <- $x0
	.loc	3 42 17                         ; vecint.c:42:17
	add	x9, x1, x0
Ltmp22:
	;DEBUG_VALUE: vecint_alu:val <- $x9
	.loc	3 0 17 is_stmt 0                ; vecint.c:0:17
	b	LBB1_8
Ltmp23:
LBB1_4:
	;DEBUG_VALUE: vecint_alu:val <- $x9
	;DEBUG_VALUE: vecint_alu:shift <- $w4
	;DEBUG_VALUE: vecint_alu:alumode <- $w3
	;DEBUG_VALUE: vecint_alu:z <- $x2
	;DEBUG_VALUE: vecint_alu:y <- $x1
	;DEBUG_VALUE: vecint_alu:x <- $x0
	.loc	3 43 16 is_stmt 1               ; vecint.c:43:16
	cmp	w3, #12
	b.eq	LBB1_11
Ltmp24:
; %bb.5:
	;DEBUG_VALUE: vecint_alu:val <- $x9
	;DEBUG_VALUE: vecint_alu:shift <- $w4
	;DEBUG_VALUE: vecint_alu:alumode <- $w3
	;DEBUG_VALUE: vecint_alu:z <- $x2
	;DEBUG_VALUE: vecint_alu:y <- $x1
	;DEBUG_VALUE: vecint_alu:x <- $x0
	cmp	w3, #11
	b.eq	LBB1_10
Ltmp25:
; %bb.6:
	;DEBUG_VALUE: vecint_alu:val <- $x9
	;DEBUG_VALUE: vecint_alu:shift <- $w4
	;DEBUG_VALUE: vecint_alu:alumode <- $w3
	;DEBUG_VALUE: vecint_alu:z <- $x2
	;DEBUG_VALUE: vecint_alu:y <- $x1
	;DEBUG_VALUE: vecint_alu:x <- $x0
	cmp	w3, #9
	b.ne	LBB1_8
Ltmp26:
; %bb.7:
	;DEBUG_VALUE: vecint_alu:val <- $x9
	;DEBUG_VALUE: vecint_alu:shift <- $w4
	;DEBUG_VALUE: vecint_alu:alumode <- $w3
	;DEBUG_VALUE: vecint_alu:z <- $x2
	;DEBUG_VALUE: vecint_alu:y <- $x1
	;DEBUG_VALUE: vecint_alu:x <- $x0
	.loc	3 44 42                         ; vecint.c:44:42
	eon	x8, x0, x1
	.loc	3 44 52 is_stmt 0               ; vecint.c:44:52
	lsl	x8, x8, x4
	.loc	3 44 20                         ; vecint.c:44:20
	fmov	d0, x8
	cnt.8b	v0, v0
	uaddlv.8b	h0, v0
	fmov	w8, s0
	.loc	3 44 18                         ; vecint.c:44:18
	add	x0, x8, x2
Ltmp27:
	;DEBUG_VALUE: vecint_alu:x <- [DW_OP_LLVM_entry_value 1] $x0
	.loc	3 62 1 is_stmt 1                ; vecint.c:62:1
	ret
Ltmp28:
LBB1_8:
	;DEBUG_VALUE: vecint_alu:val <- $x9
	;DEBUG_VALUE: vecint_alu:shift <- $w4
	;DEBUG_VALUE: vecint_alu:alumode <- $w3
	;DEBUG_VALUE: vecint_alu:z <- $x2
	;DEBUG_VALUE: vecint_alu:y <- $x1
	;DEBUG_VALUE: vecint_alu:x <- $x0
	;DEBUG_VALUE: vecint_alu:val <- $x9
	.loc	3 50 9                          ; vecint.c:50:9
	asr	x9, x9, x4
Ltmp29:
	;DEBUG_VALUE: vecint_alu:val <- $x9
	.loc	3 0 9 is_stmt 0                 ; vecint.c:0:9
	mov	w10, #1
	lsl	w10, w10, w3
	mov	w11, #74
Ltmp30:
	;DEBUG_VALUE: vecint_alu:val <- undef
	tst	w10, w11
	cneg	x10, x9, ne
Ltmp31:
	.loc	3 51 22 is_stmt 1               ; vecint.c:51:22
	cmp	w3, #6
	csel	x9, x9, x10, hi
Ltmp32:
LBB1_9:
	;DEBUG_VALUE: vecint_alu:shift <- $w4
	;DEBUG_VALUE: vecint_alu:alumode <- $w3
	;DEBUG_VALUE: vecint_alu:z <- $x2
	;DEBUG_VALUE: vecint_alu:x <- $x0
	;DEBUG_VALUE: vecint_alu:val <- $x9
	.loc	3 54 9                          ; vecint.c:54:9
	cmp	w3, #10
	csel	x10, xzr, x2, eq
	mov	w11, #32767
	add	x9, x9, x10
Ltmp33:
	;DEBUG_VALUE: vecint_alu:val <- $x9
	.loc	3 57 22                         ; vecint.c:57:22
	cmp	x9, x11
	csel	x10, x9, x11, lt
	cmn	x10, #8, lsl #12                ; =32768
	mov	x11, #-32768
	csel	x10, x10, x11, gt
	cmp	w8, #2
	csel	x0, x10, x9, lo
Ltmp34:
	;DEBUG_VALUE: vecint_alu:x <- [DW_OP_LLVM_entry_value 1] $x0
	;DEBUG_VALUE: vecint_alu:val <- $x0
	.loc	3 62 1                          ; vecint.c:62:1
	ret
Ltmp35:
LBB1_10:
	;DEBUG_VALUE: vecint_alu:val <- $x9
	;DEBUG_VALUE: vecint_alu:shift <- $w4
	;DEBUG_VALUE: vecint_alu:alumode <- $w3
	;DEBUG_VALUE: vecint_alu:z <- $x2
	;DEBUG_VALUE: vecint_alu:y <- $x1
	;DEBUG_VALUE: vecint_alu:x <- $x0
	.loc	3 0 1 is_stmt 0                 ; vecint.c:0:1
	mov	x1, x0
Ltmp36:
	;DEBUG_VALUE: vecint_alu:y <- [DW_OP_LLVM_entry_value 1] $x1
LBB1_11:
	;DEBUG_VALUE: vecint_alu:val <- $x9
	;DEBUG_VALUE: vecint_alu:shift <- $w4
	;DEBUG_VALUE: vecint_alu:alumode <- $w3
	;DEBUG_VALUE: vecint_alu:z <- $x2
	;DEBUG_VALUE: vecint_alu:x <- $x0
	.loc	3 50 9 is_stmt 1                ; vecint.c:50:9
	asr	x9, x1, x4
Ltmp37:
	.loc	3 0 9 is_stmt 0                 ; vecint.c:0:9
	b	LBB1_9
Ltmp38:
Lfunc_end1:
	.cfi_endproc
                                        ; -- End function
	.globl	_emulate_AMX_VECINT             ; -- Begin function emulate_AMX_VECINT
	.p2align	2
_emulate_AMX_VECINT:                    ; @emulate_AMX_VECINT
Lfunc_begin2:
	.loc	3 64 0 is_stmt 1                ; vecint.c:64:0
	.cfi_startproc
; %bb.0:
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- $x0
	;DEBUG_VALUE: emulate_AMX_VECINT:operand <- $x1
	stp	x28, x27, [sp, #-96]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 96
	stp	x26, x25, [sp, #16]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #32]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #48]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #64]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
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
	sub	sp, sp, #608
	str	x0, [sp, #336]                  ; 8-byte Folded Spill
Ltmp39:
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
Lloh0:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh1:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh2:
	ldr	x8, [x8]
	stur	x8, [x29, #-96]
	;DEBUG_VALUE: emulate_AMX_VECINT:operand <- $x1
Ltmp40:
	.loc	3 65 25 prologue_end            ; vecint.c:65:25
	tst	x1, #0x1c0000000000000
Ltmp41:
	.loc	3 65 9 is_stmt 0                ; vecint.c:65:9
	b.eq	LBB2_3
Ltmp42:
LBB2_1:
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	.loc	3 0 9                           ; vecint.c:0:9
	ldur	x8, [x29, #-96]
Lloh3:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh4:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh5:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB2_128
Ltmp43:
; %bb.2:
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	.loc	3 204 1 is_stmt 1               ; vecint.c:204:1
	add	sp, sp, #608
Ltmp44:
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #96             ; 16-byte Folded Reload
	ret
LBB2_3:
Ltmp45:
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:operand <- $x1
	.loc	3 0 1 is_stmt 0                 ; vecint.c:0:1
	mov	x15, x1
Ltmp46:
	;DEBUG_VALUE: emulate_AMX_VECINT:operand <- $x15
	mov	x10, x1
	.loc	3 69 30 is_stmt 1               ; vecint.c:69:30
	lsr	x8, x15, #20
Ltmp47:
	;DEBUG_VALUE: emulate_AMX_VECINT:ximask <- -1
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECINT:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- $x8
	.loc	3 74 10                         ; vecint.c:74:10
Lloh6:
	adrp	x9, _AMX_VER@GOTPAGE
Lloh7:
	ldr	x9, [x9, _AMX_VER@GOTPAGEOFF]
Lloh8:
	ldr	w11, [x9]
	mov	w9, #-1
	mov	w12, #64
	str	x12, [sp, #208]                 ; 8-byte Folded Spill
	.loc	3 74 33 is_stmt 0               ; vecint.c:74:33
	tbz	w10, #31, LBB2_8
Ltmp48:
; %bb.4:
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- $x8
	;DEBUG_VALUE: emulate_AMX_VECINT:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECINT:ximask <- -1
	;DEBUG_VALUE: emulate_AMX_VECINT:operand <- $x15
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	cmp	w11, #2
	b.lo	LBB2_8
Ltmp49:
; %bb.5:
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- $x8
	;DEBUG_VALUE: emulate_AMX_VECINT:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECINT:ximask <- -1
	;DEBUG_VALUE: emulate_AMX_VECINT:operand <- $x15
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	.loc	3 0 33                          ; vecint.c:0:33
	mov	x10, x15
Ltmp50:
	.loc	3 75 42 is_stmt 1               ; vecint.c:75:42
	ubfx	x9, x15, #32, #3
Ltmp51:
	;DEBUG_VALUE: bmode <- $x9
	.loc	3 76 17                         ; vecint.c:76:17
	and	x10, x15, #0xfffffe00ffffffff
Ltmp52:
	;DEBUG_VALUE: emulate_AMX_VECINT:operand <- $x10
	.loc	3 77 9                          ; vecint.c:77:9
	sub	x9, x9, #1
Ltmp53:
	cmp	x9, #6
	b.hi	LBB2_13
Ltmp54:
; %bb.6:
	;DEBUG_VALUE: emulate_AMX_VECINT:operand <- $x10
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- $x8
	;DEBUG_VALUE: emulate_AMX_VECINT:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECINT:ximask <- -1
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	.loc	3 0 9 is_stmt 0                 ; vecint.c:0:9
Lloh9:
	adrp	x12, lJTI2_0@PAGE
Lloh10:
	add	x12, x12, lJTI2_0@PAGEOFF
	adr	x13, LBB2_7
	ldrb	w14, [x12, x9]
	add	x13, x13, x14, lsl #2
	br	x13
Ltmp55:
LBB2_7:
	;DEBUG_VALUE: emulate_AMX_VECINT:operand <- $x10
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- $x8
	;DEBUG_VALUE: emulate_AMX_VECINT:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECINT:ximask <- -1
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	.loc	3 78 25 is_stmt 1               ; vecint.c:78:25
	orr	x10, x10, #0x300000000
Ltmp56:
	;DEBUG_VALUE: emulate_AMX_VECINT:operand <- $x10
	.loc	3 0 25 is_stmt 0                ; vecint.c:0:25
	b	LBB2_13
Ltmp57:
LBB2_8:
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- $x8
	;DEBUG_VALUE: emulate_AMX_VECINT:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECINT:ximask <- -1
	;DEBUG_VALUE: emulate_AMX_VECINT:operand <- $x15
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	mov	w10, #64
	str	x10, [sp, #200]                 ; 8-byte Folded Spill
	mov	w0, #64
	b	LBB2_20
Ltmp58:
LBB2_9:
	;DEBUG_VALUE: emulate_AMX_VECINT:operand <- $x10
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- $x8
	;DEBUG_VALUE: emulate_AMX_VECINT:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECINT:ximask <- -1
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	str	xzr, [sp, #208]                 ; 8-byte Folded Spill
	b	LBB2_17
Ltmp59:
LBB2_10:
	;DEBUG_VALUE: emulate_AMX_VECINT:operand <- $x10
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- $x8
	;DEBUG_VALUE: emulate_AMX_VECINT:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECINT:ximask <- -1
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	mov	x9, #21474836480
	.loc	3 82 25 is_stmt 1               ; vecint.c:82:25
	orr	x10, x10, x9
Ltmp60:
	;DEBUG_VALUE: emulate_AMX_VECINT:operand <- $x10
	.loc	3 0 25 is_stmt 0                ; vecint.c:0:25
	b	LBB2_13
Ltmp61:
LBB2_11:
	;DEBUG_VALUE: emulate_AMX_VECINT:operand <- $x10
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- $x8
	;DEBUG_VALUE: emulate_AMX_VECINT:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECINT:ximask <- -1
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	str	xzr, [sp, #200]                 ; 8-byte Folded Spill
	mov	w9, #-1
	b	LBB2_15
Ltmp62:
LBB2_12:
	;DEBUG_VALUE: emulate_AMX_VECINT:operand <- $x10
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- $x8
	;DEBUG_VALUE: emulate_AMX_VECINT:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECINT:ximask <- -1
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	.loc	3 81 25 is_stmt 1               ; vecint.c:81:25
	orr	x10, x10, #0x400000000
Ltmp63:
	;DEBUG_VALUE: emulate_AMX_VECINT:operand <- $x10
LBB2_13:
	;DEBUG_VALUE: emulate_AMX_VECINT:operand <- $x10
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- $x8
	;DEBUG_VALUE: emulate_AMX_VECINT:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECINT:ximask <- -1
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	.loc	3 0 25 is_stmt 0                ; vecint.c:0:25
	mov	w9, #-1
	mov	w12, #64
	str	x12, [sp, #208]                 ; 8-byte Folded Spill
	b	LBB2_18
Ltmp64:
LBB2_14:
	;DEBUG_VALUE: emulate_AMX_VECINT:operand <- $x10
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- $x8
	;DEBUG_VALUE: emulate_AMX_VECINT:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECINT:ximask <- -1
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	mov	w9, #0
	str	xzr, [sp, #200]                 ; 8-byte Folded Spill
Ltmp65:
LBB2_15:
	;DEBUG_VALUE: emulate_AMX_VECINT:operand <- $x10
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- $x8
	;DEBUG_VALUE: emulate_AMX_VECINT:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECINT:ximask <- -1
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	mov	w12, #64
Ltmp66:
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- 0
	str	x12, [sp, #208]                 ; 8-byte Folded Spill
	b	LBB2_19
Ltmp67:
LBB2_16:
	;DEBUG_VALUE: emulate_AMX_VECINT:operand <- $x10
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- $x8
	;DEBUG_VALUE: emulate_AMX_VECINT:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECINT:ximask <- -1
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- 0
	str	xzr, [sp, #208]                 ; 8-byte Folded Spill
	.loc	3 84 37 is_stmt 1               ; vecint.c:84:37
	orr	x10, x10, #0x4000000000
Ltmp68:
	;DEBUG_VALUE: emulate_AMX_VECINT:operand <- $x10
LBB2_17:
	;DEBUG_VALUE: emulate_AMX_VECINT:operand <- $x10
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- $x8
	;DEBUG_VALUE: emulate_AMX_VECINT:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECINT:ximask <- -1
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	.loc	3 0 37 is_stmt 0                ; vecint.c:0:37
	mov	w9, #-1
Ltmp69:
LBB2_18:
	;DEBUG_VALUE: emulate_AMX_VECINT:operand <- $x10
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- $x8
	;DEBUG_VALUE: emulate_AMX_VECINT:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECINT:ximask <- -1
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	mov	w12, #64
	str	x12, [sp, #200]                 ; 8-byte Folded Spill
Ltmp70:
LBB2_19:
	;DEBUG_VALUE: emulate_AMX_VECINT:operand <- $x10
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- $x8
	;DEBUG_VALUE: emulate_AMX_VECINT:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECINT:ximask <- -1
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:operand <- $x10
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:ximask <- $w9
	.loc	3 86 18 is_stmt 1               ; vecint.c:86:18
	tst	x15, #0x2000000
	mov	w12, #16
	mov	w13, #32
	csel	x0, x13, x12, eq
Ltmp71:
	;DEBUG_VALUE: emulate_AMX_VECINT:z_step <- $x0
	.loc	3 0 18 is_stmt 0                ; vecint.c:0:18
	mov	x15, x10
Ltmp72:
	;DEBUG_VALUE: emulate_AMX_VECINT:operand <- $x15
LBB2_20:
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- $x8
	;DEBUG_VALUE: emulate_AMX_VECINT:operand <- $x15
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:operand <- $x15
	;DEBUG_VALUE: emulate_AMX_VECINT:z_step <- $x0
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:ximask <- $w9
	.loc	3 88 21 is_stmt 1               ; vecint.c:88:21
	sub	x10, x0, #1
	.loc	3 88 11 is_stmt 0               ; vecint.c:88:11
	and	x8, x10, x8
Ltmp73:
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- $x8
	.loc	3 0 11                          ; vecint.c:0:11
	str	x8, [sp, #248]                  ; 8-byte Folded Spill
Ltmp74:
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	.loc	3 89 32 is_stmt 1               ; vecint.c:89:32
	lsr	x10, x15, #32
	.loc	3 89 48 is_stmt 0               ; vecint.c:89:48
	and	x8, x15, #0x1ff00000000
Ltmp75:
	;DEBUG_VALUE: emulate_AMX_VECINT:omask <- [DW_OP_LLVM_convert 1 5, DW_OP_LLVM_convert 32 5, DW_OP_stack_value] undef
	.loc	3 0 48                          ; vecint.c:0:48
	stp	x15, x8, [sp, #384]             ; 16-byte Folded Spill
	.loc	3 90 45 is_stmt 1               ; vecint.c:90:45
	ubfx	x8, x15, #38, #3
Ltmp76:
	;DEBUG_VALUE: emulate_AMX_VECINT:broadcast_y <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] undef
	.loc	3 0 45 is_stmt 0                ; vecint.c:0:45
	str	x8, [sp, #360]                  ; 8-byte Folded Spill
	.loc	3 91 19 is_stmt 1               ; vecint.c:91:19
	ubfx	x8, x15, #47, #6
	tst	x15, #0x20000000000000
	csel	w12, w8, wzr, eq
Ltmp77:
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- $w12
	.loc	3 92 22                         ; vecint.c:92:22
	ubfx	x8, x15, #58, #5
Ltmp78:
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:shift <- $w8
	.loc	3 95 9                          ; vecint.c:95:9
	cmp	w12, #4
	str	x0, [sp, #224]                  ; 8-byte Folded Spill
	b.ne	LBB2_23
Ltmp79:
; %bb.21:
	;DEBUG_VALUE: emulate_AMX_VECINT:shift <- $w8
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- $w12
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:z_step <- $x0
	;DEBUG_VALUE: emulate_AMX_VECINT:ximask <- $w9
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:operand <- $x15
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	.loc	3 96 33                         ; vecint.c:96:33
	ubfx	x9, x15, #42, #4
Ltmp80:
	.loc	3 96 9 is_stmt 0                ; vecint.c:96:9
	sub	x11, x9, #3
	cmp	x11, #9
	b.hs	LBB2_31
Ltmp81:
; %bb.22:
	;DEBUG_VALUE: emulate_AMX_VECINT:shift <- $w8
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- $w12
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:z_step <- $x0
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:operand <- $x15
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
Lloh11:
	adrp	x9, l_switch.table.emulate_AMX_VECINT@PAGE
Lloh12:
	add	x9, x9, l_switch.table.emulate_AMX_VECINT@PAGEOFF
	ldr	x9, [x9, x11, lsl #3]
Lloh13:
	adrp	x12, l_switch.table.emulate_AMX_VECINT.1@PAGE
Ltmp82:
Lloh14:
	add	x12, x12, l_switch.table.emulate_AMX_VECINT.1@PAGEOFF
	ldr	w12, [x12, x11, lsl #2]
	b	LBB2_32
Ltmp83:
LBB2_23:
	;DEBUG_VALUE: emulate_AMX_VECINT:shift <- $w8
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- $w12
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:z_step <- $x0
	;DEBUG_VALUE: emulate_AMX_VECINT:ximask <- $w9
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:operand <- $x15
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	.loc	3 0 9                           ; vecint.c:0:9
	str	w12, [sp, #316]                 ; 4-byte Folded Spill
Ltmp84:
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- [DW_OP_plus_uconst 316] [$sp+0]
	.loc	3 104 29 is_stmt 1              ; vecint.c:104:29
	sub	w12, w12, #5
	str	w12, [sp, #368]                 ; 4-byte Folded Spill
	cmp	w12, #2
	b.hs	LBB2_38
Ltmp85:
; %bb.24:
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- [DW_OP_plus_uconst 316] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:shift <- $w8
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:z_step <- $x0
	;DEBUG_VALUE: emulate_AMX_VECINT:ximask <- $w9
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:operand <- $x15
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	.loc	3 0 29 is_stmt 0                ; vecint.c:0:29
	mov	w8, #15
Ltmp86:
LBB2_25:
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- [DW_OP_plus_uconst 316] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:z_step <- $x0
	;DEBUG_VALUE: emulate_AMX_VECINT:ximask <- $w9
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	mov	w12, #16
Ltmp87:
	;DEBUG_VALUE: emulate_AMX_VECINT:zbits <- 16
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 16
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 16
	mov	w13, #16
	str	w13, [sp, #116]                 ; 4-byte Folded Spill
	mov	w13, #16
Ltmp88:
LBB2_26:
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- [DW_OP_plus_uconst 316] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:z_step <- $x0
	;DEBUG_VALUE: emulate_AMX_VECINT:ximask <- $w9
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	str	w13, [sp, #112]                 ; 4-byte Folded Spill
Ltmp89:
LBB2_27:
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- [DW_OP_plus_uconst 316] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:z_step <- $x0
	;DEBUG_VALUE: emulate_AMX_VECINT:ximask <- $w9
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:shift <- undef
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:satbits <- undef
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	.loc	3 139 40 is_stmt 1              ; vecint.c:139:40
	cmp	w11, #2
	b.lo	LBB2_41
Ltmp90:
; %bb.28:
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- [DW_OP_plus_uconst 316] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:z_step <- $x0
	;DEBUG_VALUE: emulate_AMX_VECINT:ximask <- $w9
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	.loc	3 0 40 is_stmt 0                ; vecint.c:0:40
	ldr	w11, [sp, #316]                 ; 4-byte Folded Reload
	.loc	3 139 58                        ; vecint.c:139:58
	and	w11, w11, #0x3e
	cmp	w11, #10
	b.eq	LBB2_42
Ltmp91:
; %bb.29:
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- [DW_OP_plus_uconst 316] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:z_step <- $x0
	;DEBUG_VALUE: emulate_AMX_VECINT:ximask <- $w9
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	.loc	3 0 58                          ; vecint.c:0:58
	ldr	w11, [sp, #316]                 ; 4-byte Folded Reload
	.loc	3 139 58                        ; vecint.c:139:58
	cmp	w11, #12
	b.hi	LBB2_1
Ltmp92:
; %bb.30:
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- [DW_OP_plus_uconst 316] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:z_step <- $x0
	;DEBUG_VALUE: emulate_AMX_VECINT:ximask <- $w9
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	.loc	3 0 58                          ; vecint.c:0:58
	mov	w11, #1
	ldr	w13, [sp, #316]                 ; 4-byte Folded Reload
	lsl	w11, w11, w13
	mov	w13, #4207
	tst	w11, w13
	b.ne	LBB2_42
	b	LBB2_1
Ltmp93:
LBB2_31:
	;DEBUG_VALUE: emulate_AMX_VECINT:shift <- $w8
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- $w12
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:z_step <- $x0
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:operand <- $x15
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	mov	w9, #16
	mov	w12, #16
Ltmp94:
LBB2_32:
	;DEBUG_VALUE: emulate_AMX_VECINT:shift <- $w8
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:z_step <- $x0
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:operand <- $x15
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:shift <- $w8
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:zbits <- $w12
	;DEBUG_VALUE: emulate_AMX_VECINT:satbits <- undef
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	.loc	3 119 29 is_stmt 1              ; vecint.c:119:29
	lsr	w21, w12, #3
Ltmp95:
	;DEBUG_VALUE: emulate_AMX_VECINT:zbytes <- $w21
	;DEBUG_VALUE: load_int:nbytes <- $w21
	;DEBUG_VALUE: store_int:nbytes <- $w21
	.loc	3 0 29 is_stmt 0                ; vecint.c:0:29
	mov	w11, #64
Ltmp96:
	.loc	3 124 29 is_stmt 1              ; vecint.c:124:29
	sub	w11, w11, w12
Ltmp97:
	;DEBUG_VALUE: parse_writemask:val <- undef
	;DEBUG_VALUE: zsignext <- undef
	.loc	3 0 29 is_stmt 0                ; vecint.c:0:29
	ldr	x13, [sp, #384]                 ; 8-byte Folded Reload
Ltmp98:
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: parse_writemask:g <- $w21
	.file	4 "/Users/tarindujayatilaka/Documents/superopt/apple-amx" "./emulate.h"
	.loc	4 66 44 is_stmt 1               ; ./emulate.h:66:44
	lsr	x13, x13, #38
	.loc	4 67 9                          ; ./emulate.h:67:9
	ands	w13, w13, #0x7
Ltmp99:
	;DEBUG_VALUE: parse_writemask:mode <- $w13
	csinc	w14, w21, wzr, ne
Ltmp100:
	;DEBUG_VALUE: parse_writemask:all <- -1
	.loc	4 70 5                          ; ./emulate.h:70:5
	cmp	w13, #5
	b.hi	LBB2_106
Ltmp101:
; %bb.33:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w13
	;DEBUG_VALUE: parse_writemask:g <- $w21
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: store_int:nbytes <- $w21
	;DEBUG_VALUE: load_int:nbytes <- $w21
	;DEBUG_VALUE: emulate_AMX_VECINT:zbytes <- $w21
	;DEBUG_VALUE: emulate_AMX_VECINT:zbits <- $w12
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:shift <- $w8
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:z_step <- $x0
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:operand <- $x15
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	.loc	4 0 5 is_stmt 0                 ; ./emulate.h:0:5
	mul	w14, w14, w10
	and	w10, w14, #0x3f
Ltmp102:
	;DEBUG_VALUE: parse_writemask:val <- $w10
Lloh15:
	adrp	x15, lJTI2_4@PAGE
Ltmp103:
Lloh16:
	add	x15, x15, lJTI2_4@PAGEOFF
	adr	x16, LBB2_34
	ldrh	w17, [x15, x13, lsl #1]
	add	x16, x16, x17, lsl #2
	br	x16
Ltmp104:
LBB2_34:
	;DEBUG_VALUE: parse_writemask:val <- $w10
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w13
	;DEBUG_VALUE: parse_writemask:g <- $w21
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_VECINT:zbytes <- $w21
	;DEBUG_VALUE: emulate_AMX_VECINT:zbits <- $w12
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:shift <- $w8
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:z_step <- $x0
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	.loc	4 72 22 is_stmt 1               ; ./emulate.h:72:22
	sub	w15, w10, #1
	mov	x13, #-1
Ltmp105:
	cmp	w15, #1
	b.hi	LBB2_37
Ltmp106:
; %bb.35:
	;DEBUG_VALUE: parse_writemask:val <- $w10
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:g <- $w21
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_VECINT:zbytes <- $w21
	;DEBUG_VALUE: emulate_AMX_VECINT:zbits <- $w12
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:shift <- $w8
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:z_step <- $x0
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	.loc	4 74 25                         ; ./emulate.h:74:25
	lsl	x13, x13, x21
	.loc	4 74 19 is_stmt 0               ; ./emulate.h:74:19
	mvn	x13, x13
	.loc	4 74 45                         ; ./emulate.h:74:45
	sbfx	w14, w14, #0, #1
	.loc	4 74 37                         ; ./emulate.h:74:37
	and	w14, w14, w21
	.loc	4 74 31                         ; ./emulate.h:74:31
	lsl	x13, x13, x14
Ltmp107:
	;DEBUG_VALUE: parse_writemask:all <- $x13
	;DEBUG_VALUE: parse_writemask:g <- $w21
	.loc	4 75 23 is_stmt 1               ; ./emulate.h:75:23
	lsr	w12, w12, #2
Ltmp108:
	;DEBUG_VALUE: parse_writemask:g <- $w12
LBB2_36:                                ; =>This Inner Loop Header: Depth=1
	;DEBUG_VALUE: parse_writemask:g <- $w12
	;DEBUG_VALUE: parse_writemask:all <- $x13
	;DEBUG_VALUE: parse_writemask:val <- $w10
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_VECINT:zbytes <- $w21
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:shift <- $w8
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:z_step <- $x0
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	;DEBUG_VALUE: parse_writemask:all <- $x13
	.loc	4 76 28                         ; ./emulate.h:76:28
	lsl	x14, x13, x12
	.loc	4 76 21 is_stmt 0               ; ./emulate.h:76:21
	orr	x13, x14, x13
Ltmp109:
	;DEBUG_VALUE: parse_writemask:all <- $x13
	;DEBUG_VALUE: parse_writemask:g <- $w12
	.loc	4 75 23 is_stmt 1               ; ./emulate.h:75:23
	lsl	w14, w12, #1
Ltmp110:
	;DEBUG_VALUE: parse_writemask:g <- $w14
	.loc	4 75 13 is_stmt 0               ; ./emulate.h:75:13
	cmp	w12, #32
	mov	x12, x14
Ltmp111:
	;DEBUG_VALUE: parse_writemask:g <- $w12
	b.lo	LBB2_36
Ltmp112:
LBB2_37:
	;DEBUG_VALUE: parse_writemask:val <- $w10
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_VECINT:zbytes <- $w21
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:shift <- $w8
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:z_step <- $x0
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	;DEBUG_VALUE: parse_writemask:all <- $x13
	.loc	4 83 16 is_stmt 1               ; ./emulate.h:83:16
	cmp	w10, #6
	csel	x10, x13, xzr, lo
Ltmp113:
	.loc	4 0 16 is_stmt 0                ; ./emulate.h:0:16
	b	LBB2_113
Ltmp114:
LBB2_38:
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- [DW_OP_plus_uconst 316] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:shift <- $w8
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:z_step <- $x0
	;DEBUG_VALUE: emulate_AMX_VECINT:ximask <- $w9
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:operand <- $x15
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	ldr	x12, [sp, #384]                 ; 8-byte Folded Reload
Ltmp115:
	.loc	3 108 33 is_stmt 1              ; vecint.c:108:33
	ubfx	x12, x12, #42, #4
	.loc	3 108 9 is_stmt 0               ; vecint.c:108:9
	sub	x13, x12, #3
	cmp	x13, #10
	b.hi	LBB2_25
Ltmp116:
; %bb.39:
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- [DW_OP_plus_uconst 316] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:shift <- $w8
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:z_step <- $x0
	;DEBUG_VALUE: emulate_AMX_VECINT:ximask <- $w9
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:operand <- $x15
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	.loc	3 0 9                           ; vecint.c:0:9
	mov	w12, #16
	str	w12, [sp, #116]                 ; 4-byte Folded Spill
	mov	w12, #32
Lloh17:
	adrp	x14, lJTI2_1@PAGE
Lloh18:
	add	x14, x14, lJTI2_1@PAGEOFF
	adr	x15, LBB2_25
	ldrh	w16, [x14, x13, lsl #1]
	add	x15, x15, x16, lsl #2
Ltmp117:
	mov	w13, #16
	str	w13, [sp, #112]                 ; 4-byte Folded Spill
	br	x15
Ltmp118:
LBB2_40:
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- [DW_OP_plus_uconst 316] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:shift <- $w8
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:z_step <- $x0
	;DEBUG_VALUE: emulate_AMX_VECINT:ximask <- $w9
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	mov	w12, #8
	str	w12, [sp, #116]                 ; 4-byte Folded Spill
	mov	w12, #32
Ltmp119:
	;DEBUG_VALUE: emulate_AMX_VECINT:zbits <- 32
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 8
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 8
	mov	w13, #8
	b	LBB2_26
Ltmp120:
LBB2_41:
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- [DW_OP_plus_uconst 316] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:z_step <- $x0
	;DEBUG_VALUE: emulate_AMX_VECINT:ximask <- $w9
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	ldr	w11, [sp, #316]                 ; 4-byte Folded Reload
Ltmp121:
	.loc	3 140 16 is_stmt 1              ; vecint.c:140:16
	cmp	w11, #6
	b.hi	LBB2_1
Ltmp122:
LBB2_42:
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- [DW_OP_plus_uconst 316] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:z_step <- $x0
	;DEBUG_VALUE: emulate_AMX_VECINT:ximask <- $w9
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	.loc	3 0 16 is_stmt 0                ; vecint.c:0:16
	ldr	x2, [sp, #384]                  ; 8-byte Folded Reload
	tst	x2, #0x1000000000000
	mov	w11, #4
	mov	w13, #2
	csel	w0, w13, w11, eq
Ltmp123:
	ldp	w4, w3, [sp, #112]              ; 8-byte Folded Reload
	mov	w11, w3
	ldr	x13, [sp, #200]                 ; 8-byte Folded Reload
	smull	x14, w13, w0
	mov	w13, w4
	mov	w22, #64
	sub	w15, w22, w4
	lsl	x16, x2, #37
	sub	w17, w22, w3
	and	x15, x15, x2, asr #63
	str	x15, [sp, #304]                 ; 8-byte Folded Spill
	and	x15, x17, x16, asr #63
	str	x15, [sp, #296]                 ; 8-byte Folded Spill
	mov	w15, w8
	str	x15, [sp, #288]                 ; 8-byte Folded Spill
	udiv	x15, x14, x13
	ldr	x14, [sp, #208]                 ; 8-byte Folded Reload
	str	x0, [sp, #136]                  ; 8-byte Folded Spill
	smull	x14, w14, w0
	udiv	x14, x14, x11
	stp	x14, x15, [sp, #88]             ; 16-byte Folded Spill
	lsr	w24, w4, #3
	mov	x14, x24
	lsr	w25, w3, #3
	mov	x15, x25
	lsr	w5, w12, #3
Ltmp124:
	;DEBUG_VALUE: emulate_AMX_VECINT:y_offset <- $x2
	;DEBUG_VALUE: emulate_AMX_VECINT:x_offset <- [DW_OP_constu 10, DW_OP_shr, DW_OP_stack_value] $x2
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	ldr	x17, [sp, #336]                 ; 8-byte Folded Reload
	add	x0, x17, #512
	ubfx	x16, x2, #49, #3
	lsl	x16, x16, #6
	str	x0, [sp, #192]                  ; 8-byte Folded Spill
	add	x0, x0, x16
	add	x16, x17, x16
	stp	x16, x0, [sp, #72]              ; 16-byte Folded Spill
	lsr	x16, x2, #38
	ands	w19, w16, #0x7
	csinc	w16, w24, wzr, ne
	mul	w16, w16, w10
	and	w6, w16, #0x3f
	mov	x17, #-1
	lsr	x0, x17, x16
	mvn	x0, x0
	str	x0, [sp, #56]                   ; 8-byte Folded Spill
	csinc	w0, w25, wzr, ne
	mul	w0, w0, w10
	and	w7, w0, #0x3f
	lsl	x1, x17, x16
	mvn	x1, x1
	str	x1, [sp, #104]                  ; 8-byte Folded Spill
	lsl	x14, x17, x14
	mvn	x14, x14
	lsl	x1, x14, x16
	str	x1, [sp, #144]                  ; 8-byte Folded Spill
	sbfx	w16, w16, #0, #1
	and	w16, w16, w24
	lsl	x14, x14, x16
	str	x14, [sp, #24]                  ; 8-byte Folded Spill
	lsl	x14, x17, x15
	mvn	x14, x14
	sbfx	w15, w0, #0, #1
	and	w15, w15, w25
	lsl	x15, x14, x15
	str	x15, [sp, #8]                   ; 8-byte Folded Spill
	sub	w12, w22, w12
	str	x12, [sp, #280]                 ; 8-byte Folded Spill
	neg	w12, w24
	and	w12, w9, w12
	mul	w9, w10, w25
Ltmp125:
	and	x9, x9, #0x3f
	str	x9, [sp, #352]                  ; 8-byte Folded Spill
	sub	w8, w8, #1
	lsr	x9, x17, x0
	lsl	x10, x17, x0
	lsl	x14, x14, x0
	str	x14, [sp, #64]                  ; 8-byte Folded Spill
	mov	w14, #1
	lsl	x8, x14, x8
	str	x8, [sp, #264]                  ; 8-byte Folded Spill
Ltmp126:
	.loc	3 146 5 is_stmt 1               ; vecint.c:146:5
	lsr	x27, x13, #3
	lsr	x8, x11, #3
	str	x8, [sp, #168]                  ; 8-byte Folded Spill
	mvn	x8, x9
	str	x8, [sp, #48]                   ; 8-byte Folded Spill
	mvn	x8, x10
	str	x8, [sp, #40]                   ; 8-byte Folded Spill
	cmp	w24, w25
Ltmp127:
	.loc	3 144 33                        ; vecint.c:144:33
	lsr	x8, x2, #10
Ltmp128:
	;DEBUG_VALUE: emulate_AMX_VECINT:x_offset <- $x8
	.loc	3 0 33 is_stmt 0                ; vecint.c:0:33
	str	x8, [sp, #240]                  ; 8-byte Folded Spill
Ltmp129:
	;DEBUG_VALUE: emulate_AMX_VECINT:x_offset <- [DW_OP_plus_uconst 240] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_offset <- [DW_OP_plus_uconst 240] [$sp+0]
	ubfx	w8, w2, #29, #2
	str	w8, [sp, #164]                  ; 4-byte Folded Spill
	lsr	w9, w22, w8
	ubfx	w8, w2, #27, #2
	stp	w8, w9, [sp, #156]              ; 8-byte Folded Spill
	lsr	w8, w22, w8
	str	w8, [sp, #152]                  ; 4-byte Folded Spill
	stp	w6, w7, [sp, #128]              ; 8-byte Folded Spill
	sub	w9, w6, #1
	lsr	w8, w4, #2
	str	w8, [sp, #20]                   ; 4-byte Folded Spill
	sub	w8, w7, #1
	stp	w8, w9, [sp, #32]               ; 8-byte Folded Spill
	lsr	w8, w3, #2
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	ubfx	x8, x2, #32, #6
	str	x8, [sp, #120]                  ; 8-byte Folded Spill
	csel	w23, w24, w25, lo
	neg	w8, w25
	str	w8, [sp, #348]                  ; 4-byte Folded Spill
	str	x5, [sp, #376]                  ; 8-byte Folded Spill
	neg	w8, w5
	str	w8, [sp, #276]                  ; 4-byte Folded Spill
	ldr	w8, [sp, #316]                  ; 4-byte Folded Reload
	and	w8, w8, #0x3e
	str	w8, [sp, #260]                  ; 4-byte Folded Spill
	sub	x11, x29, #224
	str	x2, [sp, #232]                  ; 8-byte Folded Spill
Ltmp130:
	;DEBUG_VALUE: emulate_AMX_VECINT:y_offset <- [DW_OP_plus_uconst 232] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:y_offset <- [DW_OP_constu 304, DW_OP_minus] [$fp+0]
	stp	x27, x19, [sp, #176]            ; 16-byte Folded Spill
	str	w12, [sp, #332]                 ; 4-byte Folded Spill
	b	LBB2_44
Ltmp131:
LBB2_43:                                ;   in Loop: Header=BB2_44 Depth=1
	;DEBUG_VALUE: emulate_AMX_VECINT:y_offset <- [DW_OP_plus_uconst 232] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_offset <- [DW_OP_plus_uconst 240] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- [DW_OP_plus_uconst 316] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	ldr	x8, [sp, #224]                  ; 8-byte Folded Reload
	ldr	x9, [sp, #248]                  ; 8-byte Folded Reload
Ltmp132:
	.loc	3 146 31 is_stmt 1              ; vecint.c:146:31
	add	x9, x9, x8
	;DEBUG_VALUE: emulate_AMX_VECINT:y_offset <- [DW_OP_plus_uconst 232] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_offset <- [DW_OP_plus_uconst 240] [$sp+0]
Ltmp133:
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- $x9
	.loc	3 0 31 is_stmt 0                ; vecint.c:0:31
	str	x9, [sp, #248]                  ; 8-byte Folded Spill
Ltmp134:
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	.loc	3 146 5                         ; vecint.c:146:5
	cmp	x9, #64
	mov	w22, #64
	ldr	x27, [sp, #176]                 ; 8-byte Folded Reload
	sub	x11, x29, #224
	b.hs	LBB2_1
Ltmp135:
LBB2_44:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB2_50 Depth 2
                                        ;     Child Loop BB2_53 Depth 2
                                        ;     Child Loop BB2_58 Depth 2
                                        ;     Child Loop BB2_70 Depth 2
                                        ;     Child Loop BB2_95 Depth 2
	;DEBUG_VALUE: emulate_AMX_VECINT:x_offset <- [DW_OP_plus_uconst 240] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- [DW_OP_plus_uconst 316] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_offset <- [DW_OP_plus_uconst 240] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:y_offset <- [DW_OP_plus_uconst 232] [$sp+0]
	.loc	3 0 5                           ; vecint.c:0:5
	ldr	x8, [sp, #240]                  ; 8-byte Folded Reload
Ltmp136:
	;DEBUG_VALUE: emulate_AMX_VECINT:x_offset <- $x8
	.loc	3 149 43 is_stmt 1              ; vecint.c:149:43
	and	x8, x8, #0x1ff
Ltmp137:
	;DEBUG_VALUE: emulate_AMX_VECINT:x_offset <- [DW_OP_plus_uconst 240] [$sp+0]
	.loc	3 0 43 is_stmt 0                ; vecint.c:0:43
	mov	w20, #512
Ltmp138:
	;DEBUG_VALUE: load_xy_reg:src <- [DW_OP_plus_uconst 336] [$sp+0]
	;DEBUG_VALUE: load_xy_reg:dst <- [DW_OP_constu 224, DW_OP_minus, DW_OP_stack_value] $fp
	;DEBUG_VALUE: load_xy_reg:offset <- $x8
	.loc	4 42 26 is_stmt 1               ; ./emulate.h:42:26
	sub	x9, x20, x8
Ltmp139:
	;DEBUG_VALUE: load_xy_reg:avail <- $x9
	.loc	4 0 26 is_stmt 0                ; ./emulate.h:0:26
	ldr	x19, [sp, #336]                 ; 8-byte Folded Reload
	.loc	4 43 5 is_stmt 1                ; ./emulate.h:43:5
	add	x1, x19, x8
	.loc	4 44 5                          ; ./emulate.h:44:5
	sub	x10, x8, #448
	.loc	4 43 5                          ; ./emulate.h:43:5
	cmp	x8, #449
	csel	x2, x22, x9, lo
	add	x26, sp, #400
	.loc	4 44 5                          ; ./emulate.h:44:5
	add	x28, x11, x9
	csel	x21, xzr, x10, lo
	.loc	4 43 5                          ; ./emulate.h:43:5
	sub	x0, x29, #224
	mov	w3, #64
	bl	___memcpy_chk
Ltmp140:
	.loc	4 44 5                          ; ./emulate.h:44:5
	mov	x0, x28
	mov	x1, x19
	mov	x2, x21
	bl	_memcpy
Ltmp141:
	;DEBUG_VALUE: emulate_AMX_VECINT:x_offset <- [DW_OP_LLVM_arg 0, DW_OP_plus_uconst 240, DW_OP_deref, DW_OP_LLVM_arg 1, DW_OP_plus_uconst 200, DW_OP_deref, DW_OP_plus, DW_OP_stack_value] $sp, $sp
	.loc	4 0 5 is_stmt 0                 ; ./emulate.h:0:5
	ldr	x8, [sp, #232]                  ; 8-byte Folded Reload
Ltmp142:
	;DEBUG_VALUE: emulate_AMX_VECINT:y_offset <- $x8
	.loc	3 150 43 is_stmt 1              ; vecint.c:150:43
	and	x8, x8, #0x1ff
Ltmp143:
	;DEBUG_VALUE: load_xy_reg:src <- [DW_OP_plus_uconst 192] [$sp+0]
	;DEBUG_VALUE: load_xy_reg:dst <- [DW_OP_constu 288, DW_OP_minus, DW_OP_stack_value] $fp
	;DEBUG_VALUE: load_xy_reg:offset <- $x8
	;DEBUG_VALUE: emulate_AMX_VECINT:y_offset <- [DW_OP_plus_uconst 232] [$sp+0]
	.loc	4 42 26                         ; ./emulate.h:42:26
	sub	x9, x20, x8
Ltmp144:
	;DEBUG_VALUE: load_xy_reg:avail <- $x9
	.loc	4 0 26 is_stmt 0                ; ./emulate.h:0:26
	ldr	x19, [sp, #192]                 ; 8-byte Folded Reload
	.loc	4 43 5 is_stmt 1                ; ./emulate.h:43:5
	add	x1, x19, x8
	.loc	4 44 5                          ; ./emulate.h:44:5
	sub	x10, x8, #448
	.loc	4 43 5                          ; ./emulate.h:43:5
	cmp	x8, #449
	csel	x2, x22, x9, lo
	.loc	4 44 5                          ; ./emulate.h:44:5
	add	x21, x26, x9
	csel	x28, xzr, x10, lo
	.loc	4 43 5                          ; ./emulate.h:43:5
	add	x0, sp, #400
	mov	w3, #64
	bl	___memcpy_chk
Ltmp145:
	.loc	4 44 5                          ; ./emulate.h:44:5
	mov	x0, x21
	mov	x1, x19
	mov	x2, x28
	bl	_memcpy
Ltmp146:
	;DEBUG_VALUE: emulate_AMX_VECINT:y_offset <- [DW_OP_LLVM_arg 0, DW_OP_plus_uconst 232, DW_OP_deref, DW_OP_LLVM_arg 1, DW_OP_plus_uconst 208, DW_OP_deref, DW_OP_plus, DW_OP_stack_value] $sp, $sp
	.loc	4 0 5 is_stmt 0                 ; ./emulate.h:0:5
	ldp	x10, x9, [sp, #200]             ; 16-byte Folded Reload
	ldr	x8, [sp, #384]                  ; 8-byte Folded Reload
Ltmp147:
	.loc	3 151 13 is_stmt 1              ; vecint.c:151:13
	tbz	x8, #53, LBB2_48
Ltmp148:
; %bb.45:                               ;   in Loop: Header=BB2_44 Depth=1
	;DEBUG_VALUE: emulate_AMX_VECINT:y_offset <- [DW_OP_LLVM_arg 0, DW_OP_plus_uconst 232, DW_OP_deref, DW_OP_LLVM_arg 0, DW_OP_plus_uconst 208, DW_OP_deref, DW_OP_plus, DW_OP_stack_value] $sp
	;DEBUG_VALUE: emulate_AMX_VECINT:x_offset <- [DW_OP_LLVM_arg 0, DW_OP_plus_uconst 240, DW_OP_deref, DW_OP_LLVM_arg 0, DW_OP_plus_uconst 200, DW_OP_deref, DW_OP_plus, DW_OP_stack_value] $sp
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- [DW_OP_plus_uconst 316] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	;DEBUG_VALUE: ibits <- [DW_OP_plus_uconst 136] [$sp+0]
	;DEBUG_VALUE: src_reg <- [DW_OP_constu 304, DW_OP_minus, DW_OP_deref_size 8, DW_OP_constu 49, DW_OP_shr, DW_OP_constu 7, DW_OP_and, DW_OP_stack_value] $fp
	.loc	3 0 13 is_stmt 0                ; vecint.c:0:13
	ldr	x8, [sp, #384]                  ; 8-byte Folded Reload
	;DEBUG_VALUE: src_reg <- [DW_OP_constu 304, DW_OP_minus, DW_OP_deref_size 8, DW_OP_constu 49, DW_OP_shr, DW_OP_constu 7, DW_OP_and, DW_OP_stack_value] $fp
Ltmp149:
	.loc	3 154 17 is_stmt 1              ; vecint.c:154:17
	tbnz	x8, #47, LBB2_47
Ltmp150:
; %bb.46:                               ;   in Loop: Header=BB2_44 Depth=1
	;DEBUG_VALUE: src_reg <- [DW_OP_constu 304, DW_OP_minus, DW_OP_deref_size 8, DW_OP_constu 49, DW_OP_shr, DW_OP_constu 7, DW_OP_and, DW_OP_stack_value] $fp
	;DEBUG_VALUE: ibits <- [DW_OP_plus_uconst 136] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:y_offset <- [DW_OP_LLVM_arg 0, DW_OP_plus_uconst 232, DW_OP_deref, DW_OP_LLVM_arg 0, DW_OP_plus_uconst 208, DW_OP_deref, DW_OP_plus, DW_OP_stack_value] $sp
	;DEBUG_VALUE: emulate_AMX_VECINT:x_offset <- [DW_OP_LLVM_arg 0, DW_OP_plus_uconst 240, DW_OP_deref, DW_OP_LLVM_arg 0, DW_OP_plus_uconst 200, DW_OP_deref, DW_OP_plus, DW_OP_stack_value] $sp
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- [DW_OP_plus_uconst 316] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	.loc	3 158 17                        ; vecint.c:158:17
	sub	x0, x29, #224
	ldr	x1, [sp, #72]                   ; 8-byte Folded Reload
	ldr	x2, [sp, #136]                  ; 8-byte Folded Reload
                                        ; kill: def $w2 killed $w2 killed $x2
	ldr	w3, [sp, #112]                  ; 4-byte Folded Reload
	bl	_load_xy_reg_indexed
Ltmp151:
	;DEBUG_VALUE: emulate_AMX_VECINT:x_offset <- [DW_OP_LLVM_arg 0, DW_OP_plus_uconst 240, DW_OP_deref, DW_OP_LLVM_arg 1, DW_OP_plus_uconst 96, DW_OP_deref, DW_OP_plus, DW_OP_stack_value] $sp, $sp
	.loc	3 0 17 is_stmt 0                ; vecint.c:0:17
	ldr	x9, [sp, #208]                  ; 8-byte Folded Reload
	ldr	x10, [sp, #96]                  ; 8-byte Folded Reload
	b	LBB2_48
Ltmp152:
LBB2_47:                                ;   in Loop: Header=BB2_44 Depth=1
	;DEBUG_VALUE: src_reg <- [DW_OP_constu 304, DW_OP_minus, DW_OP_deref_size 8, DW_OP_constu 49, DW_OP_shr, DW_OP_constu 7, DW_OP_and, DW_OP_stack_value] $fp
	;DEBUG_VALUE: ibits <- [DW_OP_plus_uconst 136] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:y_offset <- [DW_OP_LLVM_arg 0, DW_OP_plus_uconst 232, DW_OP_deref, DW_OP_LLVM_arg 0, DW_OP_plus_uconst 208, DW_OP_deref, DW_OP_plus, DW_OP_stack_value] $sp
	;DEBUG_VALUE: emulate_AMX_VECINT:x_offset <- [DW_OP_LLVM_arg 0, DW_OP_plus_uconst 240, DW_OP_deref, DW_OP_LLVM_arg 0, DW_OP_plus_uconst 200, DW_OP_deref, DW_OP_plus, DW_OP_stack_value] $sp
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- [DW_OP_plus_uconst 316] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	.loc	3 155 17 is_stmt 1              ; vecint.c:155:17
	add	x0, sp, #400
	ldr	x1, [sp, #80]                   ; 8-byte Folded Reload
	ldr	x2, [sp, #136]                  ; 8-byte Folded Reload
                                        ; kill: def $w2 killed $w2 killed $x2
	ldr	w3, [sp, #116]                  ; 4-byte Folded Reload
	bl	_load_xy_reg_indexed
Ltmp153:
	;DEBUG_VALUE: emulate_AMX_VECINT:y_offset <- [DW_OP_LLVM_arg 0, DW_OP_plus_uconst 232, DW_OP_deref, DW_OP_LLVM_arg 1, DW_OP_plus_uconst 88, DW_OP_deref, DW_OP_plus, DW_OP_stack_value] $sp, $sp
	.loc	3 0 17 is_stmt 0                ; vecint.c:0:17
	ldr	x9, [sp, #88]                   ; 8-byte Folded Reload
	ldr	x10, [sp, #200]                 ; 8-byte Folded Reload
Ltmp154:
LBB2_48:                                ;   in Loop: Header=BB2_44 Depth=1
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- [DW_OP_plus_uconst 316] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_offset <- undef
	;DEBUG_VALUE: emulate_AMX_VECINT:y_offset <- undef
	;DEBUG_VALUE: xy_shuffle:dst <- [DW_OP_constu 224, DW_OP_minus, DW_OP_stack_value] $fp
	;DEBUG_VALUE: xy_shuffle:shuffle <- [DW_OP_plus_uconst 164] [$sp+0]
	;DEBUG_VALUE: xy_shuffle:ebytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	str	x10, [sp, #216]                 ; 8-byte Folded Spill
	str	x9, [sp, #320]                  ; 8-byte Folded Spill
	ldp	w21, w8, [sp, #160]             ; 8-byte Folded Reload
	;DEBUG_VALUE: xy_shuffle:shuffle <- $w8
	sub	x26, x29, #160
Ltmp155:
	;DEBUG_VALUE: xy_shuffle:shuffle <- [DW_OP_plus_uconst 164] [$sp+0]
	.loc	4 50 9 is_stmt 1                ; ./emulate.h:50:9
	cbz	w8, LBB2_51
Ltmp156:
; %bb.49:                               ;   in Loop: Header=BB2_44 Depth=1
	;DEBUG_VALUE: xy_shuffle:ebytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: xy_shuffle:shuffle <- [DW_OP_plus_uconst 164] [$sp+0]
	;DEBUG_VALUE: xy_shuffle:dst <- [DW_OP_constu 224, DW_OP_minus, DW_OP_stack_value] $fp
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- [DW_OP_plus_uconst 316] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	.loc	4 0 9 is_stmt 0                 ; ./emulate.h:0:9
	mov	x19, #0
	mov	w20, #0
Ltmp157:
	.loc	4 52 9 is_stmt 1                ; ./emulate.h:52:9
	ldp	q0, q1, [x29, #-224]
	stp	q0, q1, [x29, #-160]
	ldp	q0, q1, [x29, #-192]
	stp	q0, q1, [x29, #-128]
Ltmp158:
	;DEBUG_VALUE: step <- [DW_OP_plus_uconst 160] [$sp+0]
	.loc	4 0 9 is_stmt 0                 ; ./emulate.h:0:9
	sub	x28, x29, #224
	;DEBUG_VALUE: soff <- 0
	;DEBUG_VALUE: doff <- 0
Ltmp159:
LBB2_50:                                ;   Parent Loop BB2_44 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	;DEBUG_VALUE: step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: xy_shuffle:ebytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: xy_shuffle:shuffle <- [DW_OP_plus_uconst 164] [$sp+0]
	;DEBUG_VALUE: xy_shuffle:dst <- [DW_OP_constu 224, DW_OP_minus, DW_OP_stack_value] $fp
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- [DW_OP_plus_uconst 316] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	;DEBUG_VALUE: doff <- $x19
	;DEBUG_VALUE: soff <- $w20
	.loc	4 55 13 is_stmt 1               ; ./emulate.h:55:13
	add	x0, x28, x19
	add	x1, x26, w20, uxtw
	mov	x2, x24
	bl	_memcpy
Ltmp160:
	.loc	4 56 18                         ; ./emulate.h:56:18
	add	w8, w20, w21
Ltmp161:
	;DEBUG_VALUE: soff <- $w8
	.loc	4 57 17                         ; ./emulate.h:57:17
	cmp	w8, #64
	csel	w9, w22, w24, lo
Ltmp162:
	;DEBUG_VALUE: soff <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $w9, $w8
	add	w8, w9, w8
Ltmp163:
	.loc	4 60 18                         ; ./emulate.h:60:18
	and	w20, w8, #0x3f
Ltmp164:
	;DEBUG_VALUE: soff <- $w20
	.loc	4 54 59                         ; ./emulate.h:54:59
	add	x19, x19, x27
Ltmp165:
	;DEBUG_VALUE: doff <- $x19
	.loc	4 54 9 is_stmt 0                ; ./emulate.h:54:9
	cmp	x19, #64
	b.lo	LBB2_50
Ltmp166:
LBB2_51:                                ;   in Loop: Header=BB2_44 Depth=1
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- [DW_OP_plus_uconst 316] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_offset <- undef
	;DEBUG_VALUE: emulate_AMX_VECINT:y_offset <- undef
	;DEBUG_VALUE: xy_shuffle:dst <- [DW_OP_constu 288, DW_OP_minus, DW_OP_stack_value] $fp
	;DEBUG_VALUE: xy_shuffle:shuffle <- [DW_OP_plus_uconst 156] [$sp+0]
	;DEBUG_VALUE: xy_shuffle:ebytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	.loc	4 0 9                           ; ./emulate.h:0:9
	ldr	x21, [sp, #168]                 ; 8-byte Folded Reload
	ldp	w27, w8, [sp, #152]             ; 8-byte Folded Reload
	;DEBUG_VALUE: xy_shuffle:shuffle <- $w8
	add	x28, sp, #400
Ltmp167:
	;DEBUG_VALUE: xy_shuffle:shuffle <- [DW_OP_plus_uconst 156] [$sp+0]
	.loc	4 50 9 is_stmt 1                ; ./emulate.h:50:9
	cbz	w8, LBB2_54
Ltmp168:
; %bb.52:                               ;   in Loop: Header=BB2_44 Depth=1
	;DEBUG_VALUE: xy_shuffle:ebytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: xy_shuffle:shuffle <- [DW_OP_plus_uconst 156] [$sp+0]
	;DEBUG_VALUE: xy_shuffle:dst <- [DW_OP_constu 288, DW_OP_minus, DW_OP_stack_value] $fp
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- [DW_OP_plus_uconst 316] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	.loc	4 0 9 is_stmt 0                 ; ./emulate.h:0:9
	mov	x19, #0
	mov	w20, #0
Ltmp169:
	.loc	4 52 9 is_stmt 1                ; ./emulate.h:52:9
	ldp	q0, q1, [sp, #400]
	stp	q0, q1, [x29, #-160]
	ldp	q0, q1, [sp, #432]
	stp	q0, q1, [x29, #-128]
	;DEBUG_VALUE: soff <- 0
	;DEBUG_VALUE: doff <- 0
Ltmp170:
	;DEBUG_VALUE: step <- [DW_OP_plus_uconst 152] [$sp+0]
LBB2_53:                                ;   Parent Loop BB2_44 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	;DEBUG_VALUE: step <- [DW_OP_plus_uconst 152] [$sp+0]
	;DEBUG_VALUE: xy_shuffle:ebytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: xy_shuffle:shuffle <- [DW_OP_plus_uconst 156] [$sp+0]
	;DEBUG_VALUE: xy_shuffle:dst <- [DW_OP_constu 288, DW_OP_minus, DW_OP_stack_value] $fp
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- [DW_OP_plus_uconst 316] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	;DEBUG_VALUE: doff <- $x19
	;DEBUG_VALUE: soff <- $w20
	.loc	4 55 13                         ; ./emulate.h:55:13
	add	x0, x28, x19
	add	x1, x26, w20, uxtw
	mov	x2, x25
	bl	_memcpy
Ltmp171:
	.loc	4 56 18                         ; ./emulate.h:56:18
	add	w8, w20, w27
Ltmp172:
	;DEBUG_VALUE: soff <- $w8
	.loc	4 57 17                         ; ./emulate.h:57:17
	cmp	w8, #64
	csel	w9, w22, w25, lo
Ltmp173:
	;DEBUG_VALUE: soff <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $w9, $w8
	add	w8, w9, w8
Ltmp174:
	.loc	4 60 18                         ; ./emulate.h:60:18
	and	w20, w8, #0x3f
Ltmp175:
	;DEBUG_VALUE: soff <- $w20
	.loc	4 54 59                         ; ./emulate.h:54:59
	add	x19, x19, x21
Ltmp176:
	;DEBUG_VALUE: doff <- $x19
	.loc	4 54 9 is_stmt 0                ; ./emulate.h:54:9
	cmp	x19, #64
	b.lo	LBB2_53
Ltmp177:
LBB2_54:                                ;   in Loop: Header=BB2_44 Depth=1
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- [DW_OP_plus_uconst 316] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_offset <- undef
	;DEBUG_VALUE: emulate_AMX_VECINT:y_offset <- undef
	;DEBUG_VALUE: parse_writemask:g <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: parse_writemask:mode <- [DW_OP_plus_uconst 184] [$sp+0]
	;DEBUG_VALUE: parse_writemask:val <- [DW_OP_plus_uconst 128] [$sp+0]
	;DEBUG_VALUE: parse_writemask:all <- -1
	.loc	4 0 9                           ; ./emulate.h:0:9
	ldr	x11, [sp, #184]                 ; 8-byte Folded Reload
Ltmp178:
	.loc	4 70 5 is_stmt 1                ; ./emulate.h:70:5
	cmp	w11, #5
	b.hi	LBB2_59
Ltmp179:
; %bb.55:                               ;   in Loop: Header=BB2_44 Depth=1
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:val <- [DW_OP_plus_uconst 128] [$sp+0]
	;DEBUG_VALUE: parse_writemask:mode <- [DW_OP_plus_uconst 184] [$sp+0]
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: parse_writemask:g <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- [DW_OP_plus_uconst 316] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	.loc	4 0 5 is_stmt 0                 ; ./emulate.h:0:5
Lloh19:
	adrp	x10, lJTI2_2@PAGE
Lloh20:
	add	x10, x10, lJTI2_2@PAGEOFF
	adr	x8, LBB2_56
	ldrb	w9, [x10, x11]
	add	x8, x8, x9, lsl #2
	ldr	x21, [sp, #144]                 ; 8-byte Folded Reload
	ldr	w12, [sp, #332]                 ; 4-byte Folded Reload
	br	x8
Ltmp180:
LBB2_56:                                ;   in Loop: Header=BB2_44 Depth=1
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:val <- [DW_OP_plus_uconst 128] [$sp+0]
	;DEBUG_VALUE: parse_writemask:mode <- [DW_OP_plus_uconst 184] [$sp+0]
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: parse_writemask:g <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- [DW_OP_plus_uconst 316] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	ldr	w8, [sp, #36]                   ; 4-byte Folded Reload
Ltmp181:
	.loc	4 72 22 is_stmt 1               ; ./emulate.h:72:22
	cmp	w8, #1
	b.hi	LBB2_74
Ltmp182:
; %bb.57:                               ;   in Loop: Header=BB2_44 Depth=1
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:val <- [DW_OP_plus_uconst 128] [$sp+0]
	;DEBUG_VALUE: parse_writemask:mode <- [DW_OP_plus_uconst 184] [$sp+0]
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: parse_writemask:g <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- [DW_OP_plus_uconst 316] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	.loc	4 0 22 is_stmt 0                ; ./emulate.h:0:22
	ldr	w9, [sp, #20]                   ; 4-byte Folded Reload
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
Ltmp183:
LBB2_58:                                ;   Parent Loop BB2_44 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	;DEBUG_VALUE: parse_writemask:val <- [DW_OP_plus_uconst 128] [$sp+0]
	;DEBUG_VALUE: parse_writemask:mode <- [DW_OP_plus_uconst 184] [$sp+0]
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- [DW_OP_plus_uconst 316] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	;DEBUG_VALUE: parse_writemask:all <- $x8
	.loc	4 76 28 is_stmt 1               ; ./emulate.h:76:28
	lsl	x10, x8, x9
	.loc	4 76 21 is_stmt 0               ; ./emulate.h:76:21
	orr	x8, x10, x8
Ltmp184:
	;DEBUG_VALUE: parse_writemask:all <- $x8
	;DEBUG_VALUE: parse_writemask:g <- $w9
	.loc	4 75 23 is_stmt 1               ; ./emulate.h:75:23
	lsl	w10, w9, #1
Ltmp185:
	;DEBUG_VALUE: parse_writemask:g <- $w10
	.loc	4 75 13 is_stmt 0               ; ./emulate.h:75:13
	cmp	w9, #32
	mov	x9, x10
Ltmp186:
	;DEBUG_VALUE: parse_writemask:g <- $w9
	b.lo	LBB2_58
	b	LBB2_75
Ltmp187:
LBB2_59:                                ;   in Loop: Header=BB2_44 Depth=1
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- [DW_OP_plus_uconst 316] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	.loc	4 0 13                          ; ./emulate.h:0:13
	mov	x21, #0
	ldr	w12, [sp, #332]                 ; 4-byte Folded Reload
Ltmp188:
	;DEBUG_VALUE: x_enable <- $x21
	;DEBUG_VALUE: parse_writemask:g <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: parse_writemask:mode <- [DW_OP_plus_uconst 184] [$sp+0]
	;DEBUG_VALUE: parse_writemask:val <- [DW_OP_plus_uconst 132] [$sp+0]
	;DEBUG_VALUE: parse_writemask:all <- -1
	.loc	4 70 5 is_stmt 1                ; ./emulate.h:70:5
	cmp	w11, #5
	b.ls	LBB2_67
	b	LBB2_64
Ltmp189:
LBB2_60:                                ;   in Loop: Header=BB2_44 Depth=1
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:val <- [DW_OP_plus_uconst 128] [$sp+0]
	;DEBUG_VALUE: parse_writemask:mode <- [DW_OP_plus_uconst 184] [$sp+0]
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: parse_writemask:g <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- [DW_OP_plus_uconst 316] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	.loc	4 0 5 is_stmt 0                 ; ./emulate.h:0:5
	ldr	x21, [sp, #104]                 ; 8-byte Folded Reload
	ldr	w8, [sp, #128]                  ; 4-byte Folded Reload
Ltmp190:
	.loc	4 88 13 is_stmt 1               ; ./emulate.h:88:13
	cbnz	w8, LBB2_66
Ltmp191:
; %bb.61:                               ;   in Loop: Header=BB2_44 Depth=1
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:val <- [DW_OP_plus_uconst 128] [$sp+0]
	;DEBUG_VALUE: parse_writemask:mode <- [DW_OP_plus_uconst 184] [$sp+0]
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: parse_writemask:g <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- [DW_OP_plus_uconst 316] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	.loc	4 0 13 is_stmt 0                ; ./emulate.h:0:13
	mov	x21, #-1
	b	LBB2_72
Ltmp192:
LBB2_62:                                ;   in Loop: Header=BB2_44 Depth=1
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:val <- [DW_OP_plus_uconst 128] [$sp+0]
	;DEBUG_VALUE: parse_writemask:mode <- [DW_OP_plus_uconst 184] [$sp+0]
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: parse_writemask:g <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- [DW_OP_plus_uconst 316] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	ldr	w8, [sp, #128]                  ; 4-byte Folded Reload
	.loc	4 93 13 is_stmt 1               ; ./emulate.h:93:13
	cbz	w8, LBB2_76
Ltmp193:
LBB2_63:                                ;   in Loop: Header=BB2_44 Depth=1
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- [DW_OP_plus_uconst 316] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	.loc	4 0 13 is_stmt 0                ; ./emulate.h:0:13
	ldr	x21, [sp, #56]                  ; 8-byte Folded Reload
Ltmp194:
	;DEBUG_VALUE: x_enable <- $x21
	;DEBUG_VALUE: parse_writemask:g <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: parse_writemask:mode <- [DW_OP_plus_uconst 184] [$sp+0]
	;DEBUG_VALUE: parse_writemask:val <- [DW_OP_plus_uconst 132] [$sp+0]
	;DEBUG_VALUE: parse_writemask:all <- -1
	.loc	4 70 5 is_stmt 1                ; ./emulate.h:70:5
	cmp	w11, #5
	b.ls	LBB2_67
Ltmp195:
LBB2_64:                                ;   in Loop: Header=BB2_44 Depth=1
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:val <- [DW_OP_plus_uconst 132] [$sp+0]
	;DEBUG_VALUE: parse_writemask:mode <- [DW_OP_plus_uconst 184] [$sp+0]
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: parse_writemask:g <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: x_enable <- $x21
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- [DW_OP_plus_uconst 316] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	.loc	4 0 5 is_stmt 0                 ; ./emulate.h:0:5
	mov	x27, #0
	b	LBB2_82
Ltmp196:
LBB2_65:                                ;   in Loop: Header=BB2_44 Depth=1
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:val <- [DW_OP_plus_uconst 128] [$sp+0]
	;DEBUG_VALUE: parse_writemask:mode <- [DW_OP_plus_uconst 184] [$sp+0]
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: parse_writemask:g <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- [DW_OP_plus_uconst 316] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	ldr	x21, [sp, #104]                 ; 8-byte Folded Reload
Ltmp197:
LBB2_66:                                ;   in Loop: Header=BB2_44 Depth=1
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- [DW_OP_plus_uconst 316] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	;DEBUG_VALUE: x_enable <- $x21
	;DEBUG_VALUE: parse_writemask:g <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: parse_writemask:mode <- [DW_OP_plus_uconst 184] [$sp+0]
	;DEBUG_VALUE: parse_writemask:val <- [DW_OP_plus_uconst 132] [$sp+0]
	;DEBUG_VALUE: parse_writemask:all <- -1
	.loc	4 70 5                          ; ./emulate.h:70:5
	cmp	w11, #5
	b.hi	LBB2_64
Ltmp198:
LBB2_67:                                ;   in Loop: Header=BB2_44 Depth=1
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:val <- [DW_OP_plus_uconst 132] [$sp+0]
	;DEBUG_VALUE: parse_writemask:mode <- [DW_OP_plus_uconst 184] [$sp+0]
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: parse_writemask:g <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: x_enable <- $x21
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- [DW_OP_plus_uconst 316] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	.loc	4 0 5                           ; ./emulate.h:0:5
Lloh21:
	adrp	x10, lJTI2_3@PAGE
Lloh22:
	add	x10, x10, lJTI2_3@PAGEOFF
	adr	x8, LBB2_68
	ldrb	w9, [x10, x11]
	add	x8, x8, x9, lsl #2
	br	x8
Ltmp199:
LBB2_68:                                ;   in Loop: Header=BB2_44 Depth=1
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:val <- [DW_OP_plus_uconst 132] [$sp+0]
	;DEBUG_VALUE: parse_writemask:mode <- [DW_OP_plus_uconst 184] [$sp+0]
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: parse_writemask:g <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: x_enable <- $x21
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- [DW_OP_plus_uconst 316] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	ldr	w8, [sp, #32]                   ; 4-byte Folded Reload
Ltmp200:
	.loc	4 72 22 is_stmt 1               ; ./emulate.h:72:22
	cmp	w8, #1
	b.hi	LBB2_80
Ltmp201:
; %bb.69:                               ;   in Loop: Header=BB2_44 Depth=1
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:val <- [DW_OP_plus_uconst 132] [$sp+0]
	;DEBUG_VALUE: parse_writemask:mode <- [DW_OP_plus_uconst 184] [$sp+0]
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: parse_writemask:g <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: x_enable <- $x21
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- [DW_OP_plus_uconst 316] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	.loc	4 0 22 is_stmt 0                ; ./emulate.h:0:22
	ldr	w9, [sp, #4]                    ; 4-byte Folded Reload
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
Ltmp202:
LBB2_70:                                ;   Parent Loop BB2_44 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	;DEBUG_VALUE: parse_writemask:val <- [DW_OP_plus_uconst 132] [$sp+0]
	;DEBUG_VALUE: parse_writemask:mode <- [DW_OP_plus_uconst 184] [$sp+0]
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: x_enable <- $x21
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- [DW_OP_plus_uconst 316] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	;DEBUG_VALUE: parse_writemask:all <- $x8
	.loc	4 76 28 is_stmt 1               ; ./emulate.h:76:28
	lsl	x10, x8, x9
	.loc	4 76 21 is_stmt 0               ; ./emulate.h:76:21
	orr	x8, x10, x8
Ltmp203:
	;DEBUG_VALUE: parse_writemask:all <- $x8
	;DEBUG_VALUE: parse_writemask:g <- $w9
	.loc	4 75 23 is_stmt 1               ; ./emulate.h:75:23
	lsl	w10, w9, #1
Ltmp204:
	;DEBUG_VALUE: parse_writemask:g <- $w10
	.loc	4 75 13 is_stmt 0               ; ./emulate.h:75:13
	cmp	w9, #32
	mov	x9, x10
Ltmp205:
	;DEBUG_VALUE: parse_writemask:g <- $w9
	b.lo	LBB2_70
	b	LBB2_81
Ltmp206:
LBB2_71:                                ;   in Loop: Header=BB2_44 Depth=1
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- [DW_OP_plus_uconst 316] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	.loc	4 0 13                          ; ./emulate.h:0:13
	ldr	x27, [sp, #64]                  ; 8-byte Folded Reload
	b	LBB2_82
Ltmp207:
LBB2_72:                                ;   in Loop: Header=BB2_44 Depth=1
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- [DW_OP_plus_uconst 316] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	ldr	w8, [sp, #132]                  ; 4-byte Folded Reload
	cbz	w8, LBB2_79
Ltmp208:
LBB2_73:                                ;   in Loop: Header=BB2_44 Depth=1
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- [DW_OP_plus_uconst 316] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	ldr	x27, [sp, #40]                  ; 8-byte Folded Reload
	b	LBB2_82
Ltmp209:
LBB2_74:                                ;   in Loop: Header=BB2_44 Depth=1
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:val <- [DW_OP_plus_uconst 128] [$sp+0]
	;DEBUG_VALUE: parse_writemask:mode <- [DW_OP_plus_uconst 184] [$sp+0]
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: parse_writemask:g <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- [DW_OP_plus_uconst 316] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	mov	x8, #-1
Ltmp210:
LBB2_75:                                ;   in Loop: Header=BB2_44 Depth=1
	;DEBUG_VALUE: parse_writemask:val <- [DW_OP_plus_uconst 128] [$sp+0]
	;DEBUG_VALUE: parse_writemask:mode <- [DW_OP_plus_uconst 184] [$sp+0]
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- [DW_OP_plus_uconst 316] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	;DEBUG_VALUE: parse_writemask:all <- $x8
	ldr	w9, [sp, #128]                  ; 4-byte Folded Reload
Ltmp211:
	.loc	4 83 16 is_stmt 1               ; ./emulate.h:83:16
	cmp	w9, #6
	csel	x21, x8, xzr, lo
Ltmp212:
	;DEBUG_VALUE: x_enable <- $x21
	;DEBUG_VALUE: parse_writemask:g <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: parse_writemask:mode <- [DW_OP_plus_uconst 184] [$sp+0]
	;DEBUG_VALUE: parse_writemask:val <- [DW_OP_plus_uconst 132] [$sp+0]
	;DEBUG_VALUE: parse_writemask:all <- -1
	.loc	4 70 5                          ; ./emulate.h:70:5
	cmp	w11, #5
	b.ls	LBB2_67
	b	LBB2_64
Ltmp213:
LBB2_76:                                ;   in Loop: Header=BB2_44 Depth=1
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:val <- [DW_OP_plus_uconst 128] [$sp+0]
	;DEBUG_VALUE: parse_writemask:mode <- [DW_OP_plus_uconst 184] [$sp+0]
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: parse_writemask:g <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- [DW_OP_plus_uconst 316] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	.loc	4 0 5 is_stmt 0                 ; ./emulate.h:0:5
	mov	x21, #-1
Ltmp214:
LBB2_77:                                ;   in Loop: Header=BB2_44 Depth=1
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- [DW_OP_plus_uconst 316] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	ldr	w8, [sp, #132]                  ; 4-byte Folded Reload
	cbz	w8, LBB2_79
Ltmp215:
LBB2_78:                                ;   in Loop: Header=BB2_44 Depth=1
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- [DW_OP_plus_uconst 316] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	ldr	x27, [sp, #48]                  ; 8-byte Folded Reload
	b	LBB2_82
Ltmp216:
LBB2_79:                                ;   in Loop: Header=BB2_44 Depth=1
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- [DW_OP_plus_uconst 316] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	mov	x27, #-1
	b	LBB2_82
Ltmp217:
LBB2_80:                                ;   in Loop: Header=BB2_44 Depth=1
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:val <- [DW_OP_plus_uconst 132] [$sp+0]
	;DEBUG_VALUE: parse_writemask:mode <- [DW_OP_plus_uconst 184] [$sp+0]
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: parse_writemask:g <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: x_enable <- $x21
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- [DW_OP_plus_uconst 316] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	mov	x8, #-1
Ltmp218:
LBB2_81:                                ;   in Loop: Header=BB2_44 Depth=1
	;DEBUG_VALUE: parse_writemask:val <- [DW_OP_plus_uconst 132] [$sp+0]
	;DEBUG_VALUE: parse_writemask:mode <- [DW_OP_plus_uconst 184] [$sp+0]
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: x_enable <- $x21
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- [DW_OP_plus_uconst 316] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	;DEBUG_VALUE: parse_writemask:all <- $x8
	ldr	w9, [sp, #132]                  ; 4-byte Folded Reload
Ltmp219:
	.loc	4 83 16 is_stmt 1               ; ./emulate.h:83:16
	cmp	w9, #6
	csel	x27, x8, xzr, lo
Ltmp220:
LBB2_82:                                ;   in Loop: Header=BB2_44 Depth=1
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- [DW_OP_plus_uconst 316] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_offset <- undef
	;DEBUG_VALUE: emulate_AMX_VECINT:y_offset <- undef
	;DEBUG_VALUE: y_enable <- $x27
	.loc	4 0 16 is_stmt 0                ; ./emulate.h:0:16
	ldr	x10, [sp, #360]                 ; 8-byte Folded Reload
	.loc	3 173 13 is_stmt 1              ; vecint.c:173:13
	cmp	x10, #1
	csinv	x8, x21, xzr, ne
	csinv	x9, x27, xzr, ne
	cbz	x10, LBB2_84
Ltmp221:
; %bb.83:                               ;   in Loop: Header=BB2_44 Depth=1
	;DEBUG_VALUE: y_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- [DW_OP_plus_uconst 316] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	.loc	3 0 13 is_stmt 0                ; vecint.c:0:13
	mov	x21, x8
	mov	x27, x9
Ltmp222:
	ldr	x9, [sp, #320]                  ; 8-byte Folded Reload
	ldr	x10, [sp, #216]                 ; 8-byte Folded Reload
	b	LBB2_89
Ltmp223:
LBB2_84:                                ;   in Loop: Header=BB2_44 Depth=1
	;DEBUG_VALUE: y_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- [DW_OP_plus_uconst 316] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	;DEBUG_VALUE: val <- [DW_OP_plus_uconst 120] [$sp+0]
	ldr	x8, [sp, #120]                  ; 8-byte Folded Reload
Ltmp224:
	.loc	3 178 17 is_stmt 1              ; vecint.c:178:17
	cmp	w8, #4
	b.eq	LBB2_87
Ltmp225:
; %bb.85:                               ;   in Loop: Header=BB2_44 Depth=1
	;DEBUG_VALUE: val <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: y_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- [DW_OP_plus_uconst 316] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	cmp	w8, #5
	ldr	x9, [sp, #320]                  ; 8-byte Folded Reload
	ldr	x10, [sp, #216]                 ; 8-byte Folded Reload
	b.ne	LBB2_89
Ltmp226:
; %bb.86:                               ;   in Loop: Header=BB2_44 Depth=1
	;DEBUG_VALUE: val <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: y_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- [DW_OP_plus_uconst 316] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	.loc	3 0 17 is_stmt 0                ; vecint.c:0:17
	add	x8, sp, #400
	b	LBB2_88
Ltmp227:
LBB2_87:                                ;   in Loop: Header=BB2_44 Depth=1
	;DEBUG_VALUE: val <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: y_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- [DW_OP_plus_uconst 316] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	sub	x8, x29, #224
	ldr	x9, [sp, #320]                  ; 8-byte Folded Reload
	ldr	x10, [sp, #216]                 ; 8-byte Folded Reload
Ltmp228:
LBB2_88:                                ;   in Loop: Header=BB2_44 Depth=1
	;DEBUG_VALUE: val <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: y_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- [DW_OP_plus_uconst 316] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	movi.2d	v0, #0000000000000000
Ltmp229:
	stp	q0, q0, [x8, #32]
	stp	q0, q0, [x8]
Ltmp230:
LBB2_89:                                ;   in Loop: Header=BB2_44 Depth=1
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- [DW_OP_plus_uconst 316] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	mov	w19, #0
	ldr	x8, [sp, #240]                  ; 8-byte Folded Reload
	add	x8, x10, x8
Ltmp231:
	;DEBUG_VALUE: emulate_AMX_VECINT:x_offset <- $x8
	str	x8, [sp, #240]                  ; 8-byte Folded Spill
Ltmp232:
	;DEBUG_VALUE: emulate_AMX_VECINT:x_offset <- [DW_OP_plus_uconst 240] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_offset <- [DW_OP_plus_uconst 240] [$sp+0]
	ldr	x8, [sp, #232]                  ; 8-byte Folded Reload
	add	x8, x9, x8
Ltmp233:
	;DEBUG_VALUE: step <- $w23
	;DEBUG_VALUE: ysignext <- undef
	;DEBUG_VALUE: xsignext <- undef
	;DEBUG_VALUE: y_enable <- $x27
	;DEBUG_VALUE: x_enable <- $x21
	;DEBUG_VALUE: emulate_AMX_VECINT:y_offset <- $x8
	str	x8, [sp, #232]                  ; 8-byte Folded Spill
Ltmp234:
	;DEBUG_VALUE: emulate_AMX_VECINT:y_offset <- [DW_OP_plus_uconst 232] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:y_offset <- [DW_OP_plus_uconst 232] [$sp+0]
	ldr	x8, [sp, #376]                  ; 8-byte Folded Reload
	.loc	3 189 34 is_stmt 1              ; vecint.c:189:34
	udiv	w8, w8, w23
	.loc	3 189 42 is_stmt 0              ; vecint.c:189:42
	sub	w9, w8, #1
	;DEBUG_VALUE: i <- 0
Ltmp235:
	;DEBUG_VALUE: zmask <- $w9
	.loc	3 0 42                          ; vecint.c:0:42
	str	w9, [sp, #320]                  ; 4-byte Folded Spill
Ltmp236:
	;DEBUG_VALUE: zmask <- [DW_OP_plus_uconst 320] [$sp+0]
	;DEBUG_VALUE: zmask <- [DW_OP_plus_uconst 320] [$sp+0]
	neg	w8, w8
	ldr	x9, [sp, #248]                  ; 8-byte Folded Reload
	and	x20, x9, x8
Ltmp237:
	;DEBUG_VALUE: zsignext <- undef
	b	LBB2_95
Ltmp238:
LBB2_90:                                ;   in Loop: Header=BB2_95 Depth=2
	;DEBUG_VALUE: vecint_alu:val <- $x9
	;DEBUG_VALUE: zv <- $x8
	;DEBUG_VALUE: vecint_alu:x <- $x26
	;DEBUG_VALUE: vecint_alu:y <- $x22
	;DEBUG_VALUE: vecint_alu:z <- $x8
	;DEBUG_VALUE: z <- $x28
	;DEBUG_VALUE: yv <- $x22
	;DEBUG_VALUE: xv <- $x26
	;DEBUG_VALUE: i <- $w19
	;DEBUG_VALUE: zmask <- [DW_OP_plus_uconst 320] [$sp+0]
	;DEBUG_VALUE: step <- $w23
	;DEBUG_VALUE: y_enable <- $x27
	;DEBUG_VALUE: x_enable <- $x21
	;DEBUG_VALUE: emulate_AMX_VECINT:y_offset <- [DW_OP_plus_uconst 232] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_offset <- [DW_OP_plus_uconst 240] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- [DW_OP_plus_uconst 316] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	ldr	x10, [sp, #264]                 ; 8-byte Folded Reload
Ltmp239:
	.loc	3 40 13 is_stmt 1               ; vecint.c:40:13
	add	x9, x9, x10
Ltmp240:
	;DEBUG_VALUE: vecint_alu:val <- $x9
	.loc	3 0 13 is_stmt 0                ; vecint.c:0:13
	ldr	w11, [sp, #316]                 ; 4-byte Folded Reload
Ltmp241:
LBB2_91:                                ;   in Loop: Header=BB2_95 Depth=2
	;DEBUG_VALUE: vecint_alu:val <- $x9
	;DEBUG_VALUE: zv <- $x8
	;DEBUG_VALUE: vecint_alu:x <- $x26
	;DEBUG_VALUE: vecint_alu:y <- $x22
	;DEBUG_VALUE: vecint_alu:z <- $x8
	;DEBUG_VALUE: z <- $x28
	;DEBUG_VALUE: yv <- $x22
	;DEBUG_VALUE: xv <- $x26
	;DEBUG_VALUE: i <- $w19
	;DEBUG_VALUE: zmask <- [DW_OP_plus_uconst 320] [$sp+0]
	;DEBUG_VALUE: step <- $w23
	;DEBUG_VALUE: y_enable <- $x27
	;DEBUG_VALUE: x_enable <- $x21
	;DEBUG_VALUE: emulate_AMX_VECINT:y_offset <- [DW_OP_plus_uconst 232] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_offset <- [DW_OP_plus_uconst 240] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- [DW_OP_plus_uconst 316] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	;DEBUG_VALUE: vecint_alu:val <- $x9
	ldr	x10, [sp, #288]                 ; 8-byte Folded Reload
	.loc	3 50 9 is_stmt 1                ; vecint.c:50:9
	asr	x9, x9, x10
Ltmp242:
	;DEBUG_VALUE: vecint_alu:val <- $x9
	.loc	3 0 9 is_stmt 0                 ; vecint.c:0:9
	mov	w10, #1
	lsl	w10, w10, w11
Ltmp243:
	;DEBUG_VALUE: vecint_alu:val <- undef
	mov	w12, #74
	tst	w10, w12
	cneg	x10, x9, ne
Ltmp244:
	.loc	3 51 22 is_stmt 1               ; vecint.c:51:22
	cmp	w11, #6
	csel	x9, x9, x10, hi
Ltmp245:
LBB2_92:                                ;   in Loop: Header=BB2_95 Depth=2
	;DEBUG_VALUE: zv <- $x8
	;DEBUG_VALUE: vecint_alu:y <- $x22
	;DEBUG_VALUE: vecint_alu:z <- $x8
	;DEBUG_VALUE: z <- $x28
	;DEBUG_VALUE: i <- $w19
	;DEBUG_VALUE: zmask <- [DW_OP_plus_uconst 320] [$sp+0]
	;DEBUG_VALUE: step <- $w23
	;DEBUG_VALUE: y_enable <- $x27
	;DEBUG_VALUE: x_enable <- $x21
	;DEBUG_VALUE: emulate_AMX_VECINT:y_offset <- [DW_OP_plus_uconst 232] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_offset <- [DW_OP_plus_uconst 240] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- [DW_OP_plus_uconst 316] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	;DEBUG_VALUE: vecint_alu:val <- $x9
	.loc	3 54 9                          ; vecint.c:54:9
	cmp	w11, #10
	csel	x8, xzr, x8, eq
Ltmp246:
	add	x8, x9, x8
Ltmp247:
	;DEBUG_VALUE: vecint_alu:val <- $x8
	.loc	3 0 9 is_stmt 0                 ; vecint.c:0:9
	mov	w9, #32767
Ltmp248:
	.loc	3 57 22 is_stmt 1               ; vecint.c:57:22
	cmp	x8, x9
	csel	x9, x8, x9, lt
	cmn	x9, #8, lsl #12                 ; =32768
	mov	x10, #-32768
	csel	x9, x9, x10, gt
	ldr	w10, [sp, #368]                 ; 4-byte Folded Reload
	cmp	w10, #2
	csel	x8, x9, x8, lo
Ltmp249:
	;DEBUG_VALUE: vecint_alu:val <- $x8
LBB2_93:                                ;   in Loop: Header=BB2_95 Depth=2
	;DEBUG_VALUE: z <- $x28
	;DEBUG_VALUE: i <- $w19
	;DEBUG_VALUE: zmask <- [DW_OP_plus_uconst 320] [$sp+0]
	;DEBUG_VALUE: step <- $w23
	;DEBUG_VALUE: y_enable <- $x27
	;DEBUG_VALUE: x_enable <- $x21
	;DEBUG_VALUE: emulate_AMX_VECINT:y_offset <- [DW_OP_plus_uconst 232] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_offset <- [DW_OP_plus_uconst 240] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- [DW_OP_plus_uconst 316] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	.loc	3 0 22 is_stmt 0                ; vecint.c:0:22
	ldr	x9, [sp, #392]                  ; 8-byte Folded Reload
	.loc	3 200 69 is_stmt 1              ; vecint.c:200:69
	mov	x10, #12884901888
	cmp	x9, x10
	csel	x8, xzr, x8, eq
	;DEBUG_VALUE: store_int:val <- $x8
Ltmp250:
	;DEBUG_VALUE: result <- $x8
	.loc	3 0 69 is_stmt 0                ; vecint.c:0:69
	stur	x8, [x29, #-160]
Ltmp251:
	;DEBUG_VALUE: store_int:dst <- $x28
	;DEBUG_VALUE: store_int:val <- [DW_OP_constu 160, DW_OP_minus, DW_OP_deref] $fp
	.loc	4 38 5 is_stmt 1                ; ./emulate.h:38:5
	sub	x1, x29, #160
	mov	x0, x28
	ldr	x2, [sp, #376]                  ; 8-byte Folded Reload
	bl	_memcpy
Ltmp252:
	.loc	4 0 5 is_stmt 0                 ; ./emulate.h:0:5
	ldr	w12, [sp, #332]                 ; 4-byte Folded Reload
	add	x28, sp, #400
Ltmp253:
LBB2_94:                                ;   in Loop: Header=BB2_95 Depth=2
	;DEBUG_VALUE: i <- $w19
	;DEBUG_VALUE: zmask <- [DW_OP_plus_uconst 320] [$sp+0]
	;DEBUG_VALUE: step <- $w23
	;DEBUG_VALUE: y_enable <- $x27
	;DEBUG_VALUE: x_enable <- $x21
	;DEBUG_VALUE: emulate_AMX_VECINT:y_offset <- [DW_OP_plus_uconst 232] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_offset <- [DW_OP_plus_uconst 240] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- [DW_OP_plus_uconst 316] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	.loc	3 190 40 is_stmt 1              ; vecint.c:190:40
	add	w19, w19, w23
Ltmp254:
	;DEBUG_VALUE: i <- $w19
	.loc	3 190 9 is_stmt 0               ; vecint.c:190:9
	cmp	w19, #64
	b.hs	LBB2_43
Ltmp255:
LBB2_95:                                ;   Parent Loop BB2_44 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	;DEBUG_VALUE: zmask <- [DW_OP_plus_uconst 320] [$sp+0]
	;DEBUG_VALUE: step <- $w23
	;DEBUG_VALUE: y_enable <- $x27
	;DEBUG_VALUE: x_enable <- $x21
	;DEBUG_VALUE: emulate_AMX_VECINT:y_offset <- [DW_OP_plus_uconst 232] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_offset <- [DW_OP_plus_uconst 240] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- [DW_OP_plus_uconst 316] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	;DEBUG_VALUE: i <- $w19
	.loc	3 191 39 is_stmt 1              ; vecint.c:191:39
	and	w8, w12, w19
Ltmp256:
	;DEBUG_VALUE: xi <- $w8
	.loc	3 192 17                        ; vecint.c:192:17
	lsr	x9, x21, x8
	tbz	w9, #0, LBB2_94
Ltmp257:
; %bb.96:                               ;   in Loop: Header=BB2_95 Depth=2
	;DEBUG_VALUE: xi <- $w8
	;DEBUG_VALUE: i <- $w19
	;DEBUG_VALUE: zmask <- [DW_OP_plus_uconst 320] [$sp+0]
	;DEBUG_VALUE: step <- $w23
	;DEBUG_VALUE: y_enable <- $x27
	;DEBUG_VALUE: x_enable <- $x21
	;DEBUG_VALUE: emulate_AMX_VECINT:y_offset <- [DW_OP_plus_uconst 232] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_offset <- [DW_OP_plus_uconst 240] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- [DW_OP_plus_uconst 316] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	.loc	3 0 17 is_stmt 0                ; vecint.c:0:17
	ldr	w9, [sp, #348]                  ; 4-byte Folded Reload
	.loc	3 193 27 is_stmt 1              ; vecint.c:193:27
	and	w9, w19, w9
	ldr	x10, [sp, #360]                 ; 8-byte Folded Reload
	cmp	x10, #1
	ldr	x10, [sp, #352]                 ; 8-byte Folded Reload
	csel	x22, x10, x9, eq
Ltmp258:
	;DEBUG_VALUE: yj <- $x22
	.loc	3 194 17                        ; vecint.c:194:17
	lsr	x9, x27, x22
	tbz	w9, #0, LBB2_94
Ltmp259:
; %bb.97:                               ;   in Loop: Header=BB2_95 Depth=2
	;DEBUG_VALUE: yj <- $x22
	;DEBUG_VALUE: xi <- $w8
	;DEBUG_VALUE: i <- $w19
	;DEBUG_VALUE: zmask <- [DW_OP_plus_uconst 320] [$sp+0]
	;DEBUG_VALUE: step <- $w23
	;DEBUG_VALUE: y_enable <- $x27
	;DEBUG_VALUE: x_enable <- $x21
	;DEBUG_VALUE: emulate_AMX_VECINT:y_offset <- [DW_OP_plus_uconst 232] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_offset <- [DW_OP_plus_uconst 240] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- [DW_OP_plus_uconst 316] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	.loc	3 196 37                        ; vecint.c:196:37
	sub	x9, x29, #224
	add	x1, x9, x8
Ltmp260:
	;DEBUG_VALUE: load_int:val <- 0
	;DEBUG_VALUE: load_int:signext <- undef
	;DEBUG_VALUE: load_int:nbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: load_int:src <- $x1
	.loc	4 32 13                         ; ./emulate.h:32:13
	stur	xzr, [x29, #-160]
Ltmp261:
	;DEBUG_VALUE: load_int:val <- [DW_OP_constu 160, DW_OP_minus, DW_OP_deref] $fp
	.loc	4 33 5                          ; ./emulate.h:33:5
	sub	x0, x29, #160
	mov	x2, x24
	mov	w3, #8
	bl	___memcpy_chk
Ltmp262:
	.loc	4 34 13                         ; ./emulate.h:34:13
	ldur	x8, [x29, #-160]
Ltmp263:
	;DEBUG_VALUE: load_int:val <- $x8
	.loc	4 0 13 is_stmt 0                ; ./emulate.h:0:13
	ldr	x9, [sp, #304]                  ; 8-byte Folded Reload
	.loc	4 34 17                         ; ./emulate.h:34:17
	lsl	x8, x8, x9
Ltmp264:
	.loc	4 34 29                         ; ./emulate.h:34:29
	asr	x26, x8, x9
Ltmp265:
	;DEBUG_VALUE: xv <- $x26
	.loc	3 197 37 is_stmt 1              ; vecint.c:197:37
	add	x1, x28, x22
Ltmp266:
	;DEBUG_VALUE: load_int:val <- 0
	;DEBUG_VALUE: load_int:signext <- undef
	;DEBUG_VALUE: load_int:nbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: load_int:src <- $x1
	.loc	4 32 13                         ; ./emulate.h:32:13
	stur	xzr, [x29, #-160]
Ltmp267:
	;DEBUG_VALUE: load_int:val <- [DW_OP_constu 160, DW_OP_minus, DW_OP_deref] $fp
	.loc	4 33 5                          ; ./emulate.h:33:5
	sub	x0, x29, #160
	mov	x2, x25
	mov	w3, #8
	bl	___memcpy_chk
Ltmp268:
	.loc	4 34 13                         ; ./emulate.h:34:13
	ldur	x8, [x29, #-160]
Ltmp269:
	;DEBUG_VALUE: load_int:val <- $x8
	.loc	4 0 13 is_stmt 0                ; ./emulate.h:0:13
	ldr	x9, [sp, #296]                  ; 8-byte Folded Reload
	.loc	4 34 17                         ; ./emulate.h:34:17
	lsl	x8, x8, x9
Ltmp270:
	.loc	4 34 29                         ; ./emulate.h:34:29
	asr	x22, x8, x9
Ltmp271:
	;DEBUG_VALUE: yv <- $x22
	.loc	3 198 33 is_stmt 1              ; vecint.c:198:33
	udiv	w8, w19, w23
	ldr	w9, [sp, #320]                  ; 4-byte Folded Reload
	and	w8, w8, w9
	orr	x8, x20, x8
	ldr	x9, [sp, #336]                  ; 8-byte Folded Reload
	.loc	3 198 24 is_stmt 0              ; vecint.c:198:24
	add	x8, x9, x8, lsl #6
	ldr	w9, [sp, #276]                  ; 4-byte Folded Reload
	.loc	3 198 74                        ; vecint.c:198:74
	and	w9, w19, w9
	.loc	3 198 24                        ; vecint.c:198:24
	add	x8, x8, x9
	add	x28, x8, #1024
Ltmp272:
	;DEBUG_VALUE: load_int:val <- 0
	;DEBUG_VALUE: load_int:src <- $x28
	;DEBUG_VALUE: z <- $x28
	.loc	4 32 13 is_stmt 1               ; ./emulate.h:32:13
	stur	xzr, [x29, #-160]
Ltmp273:
	;DEBUG_VALUE: load_int:val <- [DW_OP_constu 160, DW_OP_minus, DW_OP_deref] $fp
	.loc	4 33 5                          ; ./emulate.h:33:5
	sub	x0, x29, #160
	mov	x1, x28
	ldr	x2, [sp, #376]                  ; 8-byte Folded Reload
	mov	w3, #8
	bl	___memcpy_chk
Ltmp274:
	.loc	4 34 13                         ; ./emulate.h:34:13
	ldur	x8, [x29, #-160]
Ltmp275:
	;DEBUG_VALUE: load_int:val <- $x8
	.loc	4 0 13 is_stmt 0                ; ./emulate.h:0:13
	ldr	x9, [sp, #280]                  ; 8-byte Folded Reload
	.loc	4 34 17                         ; ./emulate.h:34:17
	lsl	x8, x8, x9
Ltmp276:
	.loc	4 34 29                         ; ./emulate.h:34:29
	asr	x8, x8, x9
Ltmp277:
	;DEBUG_VALUE: vecint_alu:shift <- undef
	;DEBUG_VALUE: vecint_alu:z <- $x8
	;DEBUG_VALUE: vecint_alu:y <- $x22
	;DEBUG_VALUE: vecint_alu:x <- $x26
	;DEBUG_VALUE: zv <- $x8
	.loc	3 38 21 is_stmt 1               ; vecint.c:38:21
	mul	x9, x22, x26
Ltmp278:
	;DEBUG_VALUE: vecint_alu:val <- $x9
	.loc	3 0 21 is_stmt 0                ; vecint.c:0:21
	ldr	w10, [sp, #368]                 ; 4-byte Folded Reload
Ltmp279:
	.loc	3 39 22 is_stmt 1               ; vecint.c:39:22
	cmp	w10, #1
Ltmp280:
	;DEBUG_VALUE: vecint_alu:alumode <- undef
	;DEBUG_VALUE: load_int:signext <- undef
	b.ls	LBB2_90
Ltmp281:
; %bb.98:                               ;   in Loop: Header=BB2_95 Depth=2
	;DEBUG_VALUE: vecint_alu:val <- $x9
	;DEBUG_VALUE: zv <- $x8
	;DEBUG_VALUE: vecint_alu:x <- $x26
	;DEBUG_VALUE: vecint_alu:y <- $x22
	;DEBUG_VALUE: vecint_alu:z <- $x8
	;DEBUG_VALUE: z <- $x28
	;DEBUG_VALUE: yv <- $x22
	;DEBUG_VALUE: xv <- $x26
	;DEBUG_VALUE: i <- $w19
	;DEBUG_VALUE: zmask <- [DW_OP_plus_uconst 320] [$sp+0]
	;DEBUG_VALUE: step <- $w23
	;DEBUG_VALUE: y_enable <- $x27
	;DEBUG_VALUE: x_enable <- $x21
	;DEBUG_VALUE: emulate_AMX_VECINT:y_offset <- [DW_OP_plus_uconst 232] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_offset <- [DW_OP_plus_uconst 240] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- [DW_OP_plus_uconst 316] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	.loc	3 0 22 is_stmt 0                ; vecint.c:0:22
	ldr	w10, [sp, #260]                 ; 4-byte Folded Reload
Ltmp282:
	.loc	3 41 29 is_stmt 1               ; vecint.c:41:29
	cmp	w10, #2
	ldr	w11, [sp, #316]                 ; 4-byte Folded Reload
	b.ne	LBB2_100
Ltmp283:
; %bb.99:                               ;   in Loop: Header=BB2_95 Depth=2
	;DEBUG_VALUE: vecint_alu:val <- $x9
	;DEBUG_VALUE: zv <- $x8
	;DEBUG_VALUE: vecint_alu:x <- $x26
	;DEBUG_VALUE: vecint_alu:y <- $x22
	;DEBUG_VALUE: vecint_alu:z <- $x8
	;DEBUG_VALUE: z <- $x28
	;DEBUG_VALUE: yv <- $x22
	;DEBUG_VALUE: xv <- $x26
	;DEBUG_VALUE: i <- $w19
	;DEBUG_VALUE: zmask <- [DW_OP_plus_uconst 320] [$sp+0]
	;DEBUG_VALUE: step <- $w23
	;DEBUG_VALUE: y_enable <- $x27
	;DEBUG_VALUE: x_enable <- $x21
	;DEBUG_VALUE: emulate_AMX_VECINT:y_offset <- [DW_OP_plus_uconst 232] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_offset <- [DW_OP_plus_uconst 240] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- [DW_OP_plus_uconst 316] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	.loc	3 42 17                         ; vecint.c:42:17
	add	x9, x22, x26
Ltmp284:
	;DEBUG_VALUE: vecint_alu:val <- $x9
	.loc	3 0 17 is_stmt 0                ; vecint.c:0:17
	b	LBB2_91
Ltmp285:
LBB2_100:                               ;   in Loop: Header=BB2_95 Depth=2
	;DEBUG_VALUE: vecint_alu:val <- $x9
	;DEBUG_VALUE: zv <- $x8
	;DEBUG_VALUE: vecint_alu:x <- $x26
	;DEBUG_VALUE: vecint_alu:y <- $x22
	;DEBUG_VALUE: vecint_alu:z <- $x8
	;DEBUG_VALUE: z <- $x28
	;DEBUG_VALUE: yv <- $x22
	;DEBUG_VALUE: xv <- $x26
	;DEBUG_VALUE: i <- $w19
	;DEBUG_VALUE: zmask <- [DW_OP_plus_uconst 320] [$sp+0]
	;DEBUG_VALUE: step <- $w23
	;DEBUG_VALUE: y_enable <- $x27
	;DEBUG_VALUE: x_enable <- $x21
	;DEBUG_VALUE: emulate_AMX_VECINT:y_offset <- [DW_OP_plus_uconst 232] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_offset <- [DW_OP_plus_uconst 240] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- [DW_OP_plus_uconst 316] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	.loc	3 43 16 is_stmt 1               ; vecint.c:43:16
	cmp	w11, #12
	b.eq	LBB2_104
Ltmp286:
; %bb.101:                              ;   in Loop: Header=BB2_95 Depth=2
	;DEBUG_VALUE: vecint_alu:val <- $x9
	;DEBUG_VALUE: zv <- $x8
	;DEBUG_VALUE: vecint_alu:x <- $x26
	;DEBUG_VALUE: vecint_alu:y <- $x22
	;DEBUG_VALUE: vecint_alu:z <- $x8
	;DEBUG_VALUE: z <- $x28
	;DEBUG_VALUE: yv <- $x22
	;DEBUG_VALUE: xv <- $x26
	;DEBUG_VALUE: i <- $w19
	;DEBUG_VALUE: zmask <- [DW_OP_plus_uconst 320] [$sp+0]
	;DEBUG_VALUE: step <- $w23
	;DEBUG_VALUE: y_enable <- $x27
	;DEBUG_VALUE: x_enable <- $x21
	;DEBUG_VALUE: emulate_AMX_VECINT:y_offset <- [DW_OP_plus_uconst 232] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_offset <- [DW_OP_plus_uconst 240] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- [DW_OP_plus_uconst 316] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	cmp	w11, #11
	b.eq	LBB2_105
Ltmp287:
; %bb.102:                              ;   in Loop: Header=BB2_95 Depth=2
	;DEBUG_VALUE: vecint_alu:val <- $x9
	;DEBUG_VALUE: zv <- $x8
	;DEBUG_VALUE: vecint_alu:x <- $x26
	;DEBUG_VALUE: vecint_alu:y <- $x22
	;DEBUG_VALUE: vecint_alu:z <- $x8
	;DEBUG_VALUE: z <- $x28
	;DEBUG_VALUE: yv <- $x22
	;DEBUG_VALUE: xv <- $x26
	;DEBUG_VALUE: i <- $w19
	;DEBUG_VALUE: zmask <- [DW_OP_plus_uconst 320] [$sp+0]
	;DEBUG_VALUE: step <- $w23
	;DEBUG_VALUE: y_enable <- $x27
	;DEBUG_VALUE: x_enable <- $x21
	;DEBUG_VALUE: emulate_AMX_VECINT:y_offset <- [DW_OP_plus_uconst 232] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_offset <- [DW_OP_plus_uconst 240] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- [DW_OP_plus_uconst 316] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	cmp	w11, #9
	b.ne	LBB2_91
Ltmp288:
; %bb.103:                              ;   in Loop: Header=BB2_95 Depth=2
	;DEBUG_VALUE: vecint_alu:val <- $x9
	;DEBUG_VALUE: zv <- $x8
	;DEBUG_VALUE: vecint_alu:x <- $x26
	;DEBUG_VALUE: vecint_alu:y <- $x22
	;DEBUG_VALUE: vecint_alu:z <- $x8
	;DEBUG_VALUE: z <- $x28
	;DEBUG_VALUE: yv <- $x22
	;DEBUG_VALUE: xv <- $x26
	;DEBUG_VALUE: i <- $w19
	;DEBUG_VALUE: zmask <- [DW_OP_plus_uconst 320] [$sp+0]
	;DEBUG_VALUE: step <- $w23
	;DEBUG_VALUE: y_enable <- $x27
	;DEBUG_VALUE: x_enable <- $x21
	;DEBUG_VALUE: emulate_AMX_VECINT:y_offset <- [DW_OP_plus_uconst 232] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_offset <- [DW_OP_plus_uconst 240] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- [DW_OP_plus_uconst 316] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	.loc	3 44 42                         ; vecint.c:44:42
	eon	x9, x26, x22
Ltmp289:
	.loc	3 0 42 is_stmt 0                ; vecint.c:0:42
	ldr	x10, [sp, #288]                 ; 8-byte Folded Reload
	.loc	3 44 52                         ; vecint.c:44:52
	lsl	x9, x9, x10
	.loc	3 44 20                         ; vecint.c:44:20
	fmov	d0, x9
	cnt.8b	v0, v0
	uaddlv.8b	h0, v0
	fmov	w9, s0
	.loc	3 44 18                         ; vecint.c:44:18
	add	x8, x8, x9
Ltmp290:
	.loc	3 0 18                          ; vecint.c:0:18
	b	LBB2_93
Ltmp291:
LBB2_104:                               ;   in Loop: Header=BB2_95 Depth=2
	;DEBUG_VALUE: vecint_alu:val <- $x9
	;DEBUG_VALUE: zv <- $x8
	;DEBUG_VALUE: vecint_alu:x <- $x26
	;DEBUG_VALUE: vecint_alu:y <- $x22
	;DEBUG_VALUE: vecint_alu:z <- $x8
	;DEBUG_VALUE: z <- $x28
	;DEBUG_VALUE: yv <- $x22
	;DEBUG_VALUE: xv <- $x26
	;DEBUG_VALUE: i <- $w19
	;DEBUG_VALUE: zmask <- [DW_OP_plus_uconst 320] [$sp+0]
	;DEBUG_VALUE: step <- $w23
	;DEBUG_VALUE: y_enable <- $x27
	;DEBUG_VALUE: x_enable <- $x21
	;DEBUG_VALUE: emulate_AMX_VECINT:y_offset <- [DW_OP_plus_uconst 232] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_offset <- [DW_OP_plus_uconst 240] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- [DW_OP_plus_uconst 316] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	;DEBUG_VALUE: vecint_alu:val <- $x22
	mov	x26, x22
Ltmp292:
	;DEBUG_VALUE: yv <- $x26
	;DEBUG_VALUE: vecint_alu:val <- $x26
LBB2_105:                               ;   in Loop: Header=BB2_95 Depth=2
	;DEBUG_VALUE: zv <- $x8
	;DEBUG_VALUE: vecint_alu:y <- $x22
	;DEBUG_VALUE: vecint_alu:z <- $x8
	;DEBUG_VALUE: z <- $x28
	;DEBUG_VALUE: i <- $w19
	;DEBUG_VALUE: zmask <- [DW_OP_plus_uconst 320] [$sp+0]
	;DEBUG_VALUE: step <- $w23
	;DEBUG_VALUE: y_enable <- $x27
	;DEBUG_VALUE: x_enable <- $x21
	;DEBUG_VALUE: emulate_AMX_VECINT:y_offset <- [DW_OP_plus_uconst 232] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_offset <- [DW_OP_plus_uconst 240] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- [DW_OP_plus_uconst 316] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	ldr	x9, [sp, #288]                  ; 8-byte Folded Reload
	.loc	3 50 9 is_stmt 1                ; vecint.c:50:9
	asr	x9, x26, x9
	b	LBB2_92
Ltmp293:
LBB2_106:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w13
	;DEBUG_VALUE: parse_writemask:g <- $w21
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: store_int:nbytes <- $w21
	;DEBUG_VALUE: load_int:nbytes <- $w21
	;DEBUG_VALUE: emulate_AMX_VECINT:zbytes <- $w21
	;DEBUG_VALUE: emulate_AMX_VECINT:zbits <- $w12
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:shift <- $w8
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:z_step <- $x0
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:operand <- $x15
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	.loc	3 0 9 is_stmt 0                 ; vecint.c:0:9
	mov	x10, #0
	b	LBB2_113
Ltmp294:
LBB2_107:
	;DEBUG_VALUE: parse_writemask:val <- $w10
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w13
	;DEBUG_VALUE: parse_writemask:g <- $w21
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_VECINT:zbytes <- $w21
	;DEBUG_VALUE: emulate_AMX_VECINT:zbits <- $w12
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:shift <- $w8
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:z_step <- $x0
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	mov	x12, #-1
Ltmp295:
	.loc	4 86 23 is_stmt 1               ; ./emulate.h:86:23
	lsl	x12, x12, x21
	.loc	4 86 17 is_stmt 0               ; ./emulate.h:86:17
	mvn	x12, x12
	.loc	4 86 30                         ; ./emulate.h:86:30
	lsl	x10, x12, x10
Ltmp296:
	.loc	4 0 30                          ; ./emulate.h:0:30
	b	LBB2_113
Ltmp297:
LBB2_108:
	;DEBUG_VALUE: parse_writemask:val <- $w10
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w13
	;DEBUG_VALUE: parse_writemask:g <- $w21
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_VECINT:zbytes <- $w21
	;DEBUG_VALUE: emulate_AMX_VECINT:zbits <- $w12
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:shift <- $w8
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:z_step <- $x0
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	.loc	4 88 13 is_stmt 1               ; ./emulate.h:88:13
	cbz	w10, LBB2_123
Ltmp298:
LBB2_109:
	;DEBUG_VALUE: parse_writemask:val <- $w10
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w13
	;DEBUG_VALUE: parse_writemask:g <- $w21
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_VECINT:zbytes <- $w21
	;DEBUG_VALUE: emulate_AMX_VECINT:zbits <- $w12
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:shift <- $w8
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:z_step <- $x0
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	.loc	4 0 13 is_stmt 0                ; ./emulate.h:0:13
	mov	x12, #-1
Ltmp299:
	.loc	4 91 22 is_stmt 1               ; ./emulate.h:91:22
	lsl	x10, x12, x10
Ltmp300:
	.loc	4 0 22 is_stmt 0                ; ./emulate.h:0:22
	b	LBB2_112
Ltmp301:
LBB2_110:
	;DEBUG_VALUE: parse_writemask:val <- $w10
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w13
	;DEBUG_VALUE: parse_writemask:g <- $w21
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_VECINT:zbytes <- $w21
	;DEBUG_VALUE: emulate_AMX_VECINT:zbits <- $w12
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:shift <- $w8
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:z_step <- $x0
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	.loc	4 93 13 is_stmt 1               ; ./emulate.h:93:13
	cbz	w10, LBB2_123
Ltmp302:
LBB2_111:
	;DEBUG_VALUE: parse_writemask:val <- $w10
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w13
	;DEBUG_VALUE: parse_writemask:g <- $w21
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_VECINT:zbytes <- $w21
	;DEBUG_VALUE: emulate_AMX_VECINT:zbits <- $w12
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:shift <- $w8
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:z_step <- $x0
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	.loc	4 0 13 is_stmt 0                ; ./emulate.h:0:13
	mov	x12, #-1
Ltmp303:
	.loc	4 96 22 is_stmt 1               ; ./emulate.h:96:22
	lsr	x10, x12, x10
Ltmp304:
LBB2_112:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w13
	;DEBUG_VALUE: parse_writemask:g <- $w21
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_VECINT:zbytes <- $w21
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:shift <- $w8
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:z_step <- $x0
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	.loc	4 0 0 is_stmt 0                 ; ./emulate.h:0:0
	mvn	x10, x10
Ltmp305:
LBB2_113:
	;DEBUG_VALUE: emulate_AMX_VECINT:zbytes <- $w21
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:shift <- $w8
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:z_step <- $x0
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	;DEBUG_VALUE: col_enable <- $x10
	ldr	x12, [sp, #360]                 ; 8-byte Folded Reload
	.loc	3 126 13 is_stmt 1              ; vecint.c:126:13
	cmp	x12, #1
	csinv	x19, x10, xzr, ne
Ltmp306:
	;DEBUG_VALUE: col_enable <- $x19
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	.loc	3 0 13 is_stmt 0                ; vecint.c:0:13
	ldr	x14, [sp, #384]                 ; 8-byte Folded Reload
	cmp	x14, #0
	csel	x22, xzr, x11, ge
	sub	w10, w8, #1
	cmp	w8, #0
	mov	w11, #1
	lsl	x10, x11, x10
	lsl	x12, x14, #37
	ubfx	x13, x14, #26, #1
	sub	w9, w9, w13
	lsl	x11, x11, x9
Ltmp307:
	.loc	3 130 9 is_stmt 1               ; vecint.c:130:9
	lsl	x9, x0, #6
	str	x9, [sp, #360]                  ; 8-byte Folded Spill
	and	x9, x14, #0x20000000
	ccmp	x9, #0, #4, ne
	csel	x25, xzr, x10, eq
	ldr	x9, [sp, #336]                  ; 8-byte Folded Reload
	ldr	x10, [sp, #248]                 ; 8-byte Folded Reload
Ltmp308:
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- $x10
	add	x9, x9, x10, lsl #6
Ltmp309:
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	.loc	3 0 9 is_stmt 0                 ; vecint.c:0:9
	neg	x10, x11
	mov	x26, x11
	sub	x11, x11, #1
	.loc	3 130 9                         ; vecint.c:130:9
	add	x27, x9, #1024
	and	x9, x10, x12, asr #63
	stp	x9, x11, [sp, #368]             ; 16-byte Folded Spill
	mov	x24, #12884901888
	mov	w28, w8
	b	LBB2_115
Ltmp310:
LBB2_114:                               ;   in Loop: Header=BB2_115 Depth=1
	;DEBUG_VALUE: col_enable <- $x19
	;DEBUG_VALUE: emulate_AMX_VECINT:zbytes <- $w21
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	.loc	3 0 9                           ; vecint.c:0:9
	ldr	x8, [sp, #224]                  ; 8-byte Folded Reload
	ldr	x9, [sp, #248]                  ; 8-byte Folded Reload
Ltmp311:
	.loc	3 130 35                        ; vecint.c:130:35
	add	x9, x9, x8
Ltmp312:
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- $x9
	.loc	3 0 35                          ; vecint.c:0:35
	ldr	x8, [sp, #360]                  ; 8-byte Folded Reload
Ltmp313:
	.loc	3 130 9                         ; vecint.c:130:9
	add	x27, x27, x8
	str	x9, [sp, #248]                  ; 8-byte Folded Spill
Ltmp314:
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	cmp	x9, #64
	b.hs	LBB2_1
Ltmp315:
LBB2_115:                               ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB2_119 Depth 2
	;DEBUG_VALUE: col_enable <- $x19
	;DEBUG_VALUE: emulate_AMX_VECINT:zbytes <- $w21
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: i <- 0
	.loc	3 0 9                           ; vecint.c:0:9
	mov	x23, #0
	b	LBB2_119
Ltmp316:
LBB2_116:                               ;   in Loop: Header=BB2_119 Depth=2
	;DEBUG_VALUE: hi <- $x26
	;DEBUG_VALUE: vecint_alu_mode4:operand <- $x9
	;DEBUG_VALUE: vecint_alu_mode4:val <- $x8
	;DEBUG_VALUE: i <- $x23
	;DEBUG_VALUE: col_enable <- $x19
	;DEBUG_VALUE: emulate_AMX_VECINT:zbytes <- $w21
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	.loc	3 31 17 is_stmt 1               ; vecint.c:31:17
	cmp	x8, x26
	ldr	x9, [sp, #376]                  ; 8-byte Folded Reload
Ltmp317:
	csel	x8, x8, x9, lo
Ltmp318:
LBB2_117:                               ;   in Loop: Header=BB2_119 Depth=2
	;DEBUG_VALUE: i <- $x23
	;DEBUG_VALUE: col_enable <- $x19
	;DEBUG_VALUE: emulate_AMX_VECINT:zbytes <- $w21
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	;DEBUG_VALUE: val <- $x8
	;DEBUG_VALUE: vecint_alu_mode4:val <- $x8
	.loc	3 0 17 is_stmt 0                ; vecint.c:0:17
	ldr	x9, [sp, #392]                  ; 8-byte Folded Reload
	.loc	3 135 63 is_stmt 1              ; vecint.c:135:63
	cmp	x9, x24
	csel	x8, xzr, x8, eq
Ltmp319:
	;DEBUG_VALUE: store_int:nbytes <- undef
	;DEBUG_VALUE: store_int:dst <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_constu 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst 1024, DW_OP_LLVM_arg 0, DW_OP_constu 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] undef
	;DEBUG_VALUE: store_int:val <- $x8
	.loc	3 0 63 is_stmt 0                ; vecint.c:0:63
	stur	x8, [x29, #-160]
Ltmp320:
	;DEBUG_VALUE: store_int:val <- [DW_OP_constu 160, DW_OP_minus, DW_OP_deref] $fp
	.loc	4 38 5 is_stmt 1                ; ./emulate.h:38:5
	sub	x1, x29, #160
	mov	x0, x20
	mov	x2, x21
	bl	_memcpy
Ltmp321:
LBB2_118:                               ;   in Loop: Header=BB2_119 Depth=2
	;DEBUG_VALUE: i <- $x23
	;DEBUG_VALUE: col_enable <- $x19
	;DEBUG_VALUE: emulate_AMX_VECINT:zbytes <- $w21
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	.loc	3 131 44                        ; vecint.c:131:44
	add	x23, x23, x21
Ltmp322:
	;DEBUG_VALUE: i <- $x23
	.loc	3 131 13 is_stmt 0              ; vecint.c:131:13
	cmp	x23, #64
	b.hs	LBB2_114
Ltmp323:
LBB2_119:                               ;   Parent Loop BB2_115 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	;DEBUG_VALUE: col_enable <- $x19
	;DEBUG_VALUE: emulate_AMX_VECINT:zbytes <- $w21
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	;DEBUG_VALUE: i <- $x23
	.loc	3 132 21 is_stmt 1              ; vecint.c:132:21
	lsr	x8, x19, x23
	tbz	w8, #0, LBB2_118
Ltmp324:
; %bb.120:                              ;   in Loop: Header=BB2_119 Depth=2
	;DEBUG_VALUE: i <- $x23
	;DEBUG_VALUE: col_enable <- $x19
	;DEBUG_VALUE: emulate_AMX_VECINT:zbytes <- $w21
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	;DEBUG_VALUE: load_int:src <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_constu 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst 1024, DW_OP_LLVM_arg 0, DW_OP_constu 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] undef
	;DEBUG_VALUE: load_int:nbytes <- undef
	;DEBUG_VALUE: load_int:signext <- undef
	.loc	4 32 5                          ; ./emulate.h:32:5
	add	x20, x27, x23
Ltmp325:
	;DEBUG_VALUE: load_int:val <- 0
	.loc	4 32 13 is_stmt 0               ; ./emulate.h:32:13
	stur	xzr, [x29, #-160]
Ltmp326:
	;DEBUG_VALUE: load_int:val <- [DW_OP_constu 160, DW_OP_minus, DW_OP_deref] $fp
	.loc	4 33 5 is_stmt 1                ; ./emulate.h:33:5
	sub	x0, x29, #160
	mov	x1, x20
	mov	x2, x21
	mov	w3, #8
	bl	___memcpy_chk
Ltmp327:
	.loc	4 34 13                         ; ./emulate.h:34:13
	ldur	x8, [x29, #-160]
Ltmp328:
	;DEBUG_VALUE: load_int:val <- $x8
	.loc	4 34 17 is_stmt 0               ; ./emulate.h:34:17
	lsl	x8, x8, x22
Ltmp329:
	.loc	4 34 29                         ; ./emulate.h:34:29
	asr	x8, x8, x22
Ltmp330:
	;DEBUG_VALUE: vecint_alu_mode4:shift <- undef
	;DEBUG_VALUE: vecint_alu_mode4:operand <- [DW_OP_constu 304, DW_OP_minus] [$fp+0]
	;DEBUG_VALUE: vecint_alu_mode4:satbits <- undef
	;DEBUG_VALUE: vecint_alu_mode4:val <- $x8
	;DEBUG_VALUE: val <- $x8
	.loc	3 17 15 is_stmt 1               ; vecint.c:17:15
	add	x8, x8, x25
Ltmp331:
	;DEBUG_VALUE: vecint_alu_mode4:val <- $x8
	.loc	3 20 9                          ; vecint.c:20:9
	asr	x8, x8, x28
Ltmp332:
	;DEBUG_VALUE: vecint_alu_mode4:val <- $x8
	.loc	3 0 9 is_stmt 0                 ; vecint.c:0:9
	ldr	x9, [sp, #384]                  ; 8-byte Folded Reload
Ltmp333:
	;DEBUG_VALUE: vecint_alu_mode4:operand <- $x9
	.loc	3 21 9 is_stmt 1                ; vecint.c:21:9
	tbz	w9, #30, LBB2_117
Ltmp334:
; %bb.121:                              ;   in Loop: Header=BB2_119 Depth=2
	;DEBUG_VALUE: vecint_alu_mode4:operand <- $x9
	;DEBUG_VALUE: vecint_alu_mode4:val <- $x8
	;DEBUG_VALUE: i <- $x23
	;DEBUG_VALUE: col_enable <- $x19
	;DEBUG_VALUE: emulate_AMX_VECINT:zbytes <- $w21
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	;DEBUG_VALUE: vecint_alu_mode4:satbits <- undef
	;DEBUG_VALUE: hi <- $x26
	.loc	3 26 13                         ; vecint.c:26:13
	tbz	x9, #63, LBB2_116
Ltmp335:
; %bb.122:                              ;   in Loop: Header=BB2_119 Depth=2
	;DEBUG_VALUE: hi <- $x26
	;DEBUG_VALUE: vecint_alu_mode4:operand <- $x9
	;DEBUG_VALUE: vecint_alu_mode4:val <- $x8
	;DEBUG_VALUE: i <- $x23
	;DEBUG_VALUE: col_enable <- $x19
	;DEBUG_VALUE: emulate_AMX_VECINT:zbytes <- $w21
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	;DEBUG_VALUE: lo <- [DW_OP_constu 320, DW_OP_minus] [$fp+0]
	.loc	3 0 13 is_stmt 0                ; vecint.c:0:13
	ldr	x9, [sp, #368]                  ; 8-byte Folded Reload
Ltmp336:
	.loc	3 28 17 is_stmt 1               ; vecint.c:28:17
	cmp	x8, x9
	csel	x8, x8, x9, gt
Ltmp337:
	;DEBUG_VALUE: vecint_alu_mode4:val <- $x8
	.loc	3 29 17                         ; vecint.c:29:17
	cmp	x8, x26
	ldr	x9, [sp, #376]                  ; 8-byte Folded Reload
	csel	x8, x8, x9, lt
Ltmp338:
	;DEBUG_VALUE: vecint_alu_mode4:val <- $x8
	.loc	3 0 17 is_stmt 0                ; vecint.c:0:17
	b	LBB2_117
Ltmp339:
LBB2_123:
	;DEBUG_VALUE: parse_writemask:val <- $w10
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w13
	;DEBUG_VALUE: parse_writemask:g <- $w21
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_VECINT:zbytes <- $w21
	;DEBUG_VALUE: emulate_AMX_VECINT:zbits <- $w12
	;DEBUG_VALUE: emulate_AMX_VECINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_VECINT:shift <- $w8
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:z_step <- $x0
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	mov	x10, #-1
	b	LBB2_113
Ltmp340:
LBB2_124:
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- [DW_OP_plus_uconst 316] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:shift <- $w8
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:z_step <- $x0
	;DEBUG_VALUE: emulate_AMX_VECINT:ximask <- $w9
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	mov	w12, #8
	str	w12, [sp, #116]                 ; 4-byte Folded Spill
	mov	w12, #16
Ltmp341:
	;DEBUG_VALUE: emulate_AMX_VECINT:zbits <- 16
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 8
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 8
	mov	w13, #8
	b	LBB2_26
Ltmp342:
LBB2_125:
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- [DW_OP_plus_uconst 316] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:shift <- $w8
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:z_step <- $x0
	;DEBUG_VALUE: emulate_AMX_VECINT:ximask <- $w9
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	mov	w12, #8
	str	w12, [sp, #112]                 ; 4-byte Folded Spill
	mov	w12, #16
	b	LBB2_127
Ltmp343:
LBB2_126:
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- [DW_OP_plus_uconst 316] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:shift <- $w8
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:z_step <- $x0
	;DEBUG_VALUE: emulate_AMX_VECINT:ximask <- $w9
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	mov	w12, #16
	str	w12, [sp, #112]                 ; 4-byte Folded Spill
	mov	w12, #8
Ltmp344:
LBB2_127:
	;DEBUG_VALUE: emulate_AMX_VECINT:alumode <- [DW_OP_plus_uconst 316] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:shift <- $w8
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_VECINT:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:z_step <- $x0
	;DEBUG_VALUE: emulate_AMX_VECINT:ximask <- $w9
	;DEBUG_VALUE: emulate_AMX_VECINT:y_step <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:x_step <- [DW_OP_plus_uconst 200] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	str	w12, [sp, #116]                 ; 4-byte Folded Spill
	mov	w12, #32
Ltmp345:
	;DEBUG_VALUE: emulate_AMX_VECINT:zbits <- 32
	;DEBUG_VALUE: emulate_AMX_VECINT:ybits <- 16
	;DEBUG_VALUE: emulate_AMX_VECINT:xbits <- 8
	b	LBB2_27
Ltmp346:
LBB2_128:
	;DEBUG_VALUE: emulate_AMX_VECINT:state <- [DW_OP_plus_uconst 336] [$sp+0]
	bl	___stack_chk_fail
Ltmp347:
	.loh AdrpLdrGotLdr	Lloh0, Lloh1, Lloh2
	.loh AdrpLdrGotLdr	Lloh3, Lloh4, Lloh5
	.loh AdrpLdrGotLdr	Lloh6, Lloh7, Lloh8
	.loh AdrpAdd	Lloh9, Lloh10
	.loh AdrpAdd	Lloh13, Lloh14
	.loh AdrpAdd	Lloh11, Lloh12
	.loh AdrpAdd	Lloh15, Lloh16
	.loh AdrpAdd	Lloh17, Lloh18
	.loh AdrpAdd	Lloh19, Lloh20
	.loh AdrpAdd	Lloh21, Lloh22
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__const
lJTI2_0:
	.byte	(LBB2_7-LBB2_7)>>2
	.byte	(LBB2_11-LBB2_7)>>2
	.byte	(LBB2_9-LBB2_7)>>2
	.byte	(LBB2_12-LBB2_7)>>2
	.byte	(LBB2_10-LBB2_7)>>2
	.byte	(LBB2_14-LBB2_7)>>2
	.byte	(LBB2_16-LBB2_7)>>2
	.p2align	1, 0x0
lJTI2_1:
	.short	(LBB2_27-LBB2_25)>>2
	.short	(LBB2_25-LBB2_25)>>2
	.short	(LBB2_25-LBB2_25)>>2
	.short	(LBB2_25-LBB2_25)>>2
	.short	(LBB2_25-LBB2_25)>>2
	.short	(LBB2_25-LBB2_25)>>2
	.short	(LBB2_25-LBB2_25)>>2
	.short	(LBB2_40-LBB2_25)>>2
	.short	(LBB2_124-LBB2_25)>>2
	.short	(LBB2_125-LBB2_25)>>2
	.short	(LBB2_126-LBB2_25)>>2
lJTI2_2:
	.byte	(LBB2_56-LBB2_56)>>2
	.byte	(LBB2_71-LBB2_56)>>2
	.byte	(LBB2_60-LBB2_56)>>2
	.byte	(LBB2_62-LBB2_56)>>2
	.byte	(LBB2_65-LBB2_56)>>2
	.byte	(LBB2_63-LBB2_56)>>2
lJTI2_3:
	.byte	(LBB2_68-LBB2_68)>>2
	.byte	(LBB2_71-LBB2_68)>>2
	.byte	(LBB2_72-LBB2_68)>>2
	.byte	(LBB2_77-LBB2_68)>>2
	.byte	(LBB2_73-LBB2_68)>>2
	.byte	(LBB2_78-LBB2_68)>>2
	.p2align	1, 0x0
lJTI2_4:
	.short	(LBB2_34-LBB2_34)>>2
	.short	(LBB2_107-LBB2_34)>>2
	.short	(LBB2_108-LBB2_34)>>2
	.short	(LBB2_110-LBB2_34)>>2
	.short	(LBB2_109-LBB2_34)>>2
	.short	(LBB2_111-LBB2_34)>>2
	.file	5 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types" "_uint32_t.h"
	.file	6 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types" "_int64_t.h"
                                        ; -- End function
	.p2align	3, 0x0                          ; @switch.table.emulate_AMX_VECINT
l_switch.table.emulate_AMX_VECINT:
	.quad	16                              ; 0x10
	.quad	32                              ; 0x20
	.quad	16                              ; 0x10
	.quad	16                              ; 0x10
	.quad	16                              ; 0x10
	.quad	16                              ; 0x10
	.quad	8                               ; 0x8
	.quad	8                               ; 0x8
	.quad	8                               ; 0x8

	.p2align	2, 0x0                          ; @switch.table.emulate_AMX_VECINT.1
l_switch.table.emulate_AMX_VECINT.1:
	.long	32                              ; 0x20
	.long	32                              ; 0x20
	.long	16                              ; 0x10
	.long	16                              ; 0x10
	.long	16                              ; 0x10
	.long	16                              ; 0x10
	.long	8                               ; 0x8
	.long	32                              ; 0x20
	.long	16                              ; 0x10

	.file	7 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types" "_uint16_t.h"
	.file	8 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types" "_int8_t.h"
	.file	9 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types" "_int16_t.h"
	.file	10 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types" "_int32_t.h"
	.section	__DWARF,__debug_loc,regular,debug
Lsection_debug_loc:
Ldebug_loc0:
.set Lset0, Lfunc_begin0-Lfunc_begin0
	.quad	Lset0
.set Lset1, Ltmp3-Lfunc_begin0
	.quad	Lset1
	.short	1                               ; Loc expr size
	.byte	80                              ; DW_OP_reg0
.set Lset2, Ltmp3-Lfunc_begin0
	.quad	Lset2
.set Lset3, Ltmp4-Lfunc_begin0
	.quad	Lset3
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
.set Lset4, Ltmp4-Lfunc_begin0
	.quad	Lset4
.set Lset5, Ltmp12-Lfunc_begin0
	.quad	Lset5
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
.set Lset6, Ltmp12-Lfunc_begin0
	.quad	Lset6
.set Lset7, Ltmp13-Lfunc_begin0
	.quad	Lset7
	.short	1                               ; Loc expr size
	.byte	92                              ; DW_OP_reg12
.set Lset8, Ltmp13-Lfunc_begin0
	.quad	Lset8
.set Lset9, Ltmp14-Lfunc_begin0
	.quad	Lset9
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
.set Lset10, Ltmp15-Lfunc_begin0
	.quad	Lset10
.set Lset11, Lfunc_end0-Lfunc_begin0
	.quad	Lset11
	.short	1                               ; Loc expr size
	.byte	80                              ; DW_OP_reg0
	.quad	0
	.quad	0
Ldebug_loc1:
.set Lset12, Lfunc_begin0-Lfunc_begin0
	.quad	Lset12
.set Lset13, Ltmp6-Lfunc_begin0
	.quad	Lset13
	.short	1                               ; Loc expr size
	.byte	81                              ; DW_OP_reg1
.set Lset14, Ltmp6-Lfunc_begin0
	.quad	Lset14
.set Lset15, Ltmp7-Lfunc_begin0
	.quad	Lset15
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
	.quad	0
	.quad	0
Ldebug_loc2:
.set Lset16, Ltmp1-Lfunc_begin0
	.quad	Lset16
.set Lset17, Ltmp2-Lfunc_begin0
	.quad	Lset17
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
	.quad	0
	.quad	0
Ldebug_loc3:
.set Lset18, Ltmp7-Lfunc_begin0
	.quad	Lset18
.set Lset19, Ltmp13-Lfunc_begin0
	.quad	Lset19
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
	.quad	0
	.quad	0
Ldebug_loc4:
.set Lset20, Ltmp11-Lfunc_begin0
	.quad	Lset20
.set Lset21, Ltmp12-Lfunc_begin0
	.quad	Lset21
	.short	1                               ; Loc expr size
	.byte	92                              ; DW_OP_reg12
	.quad	0
	.quad	0
Ldebug_loc5:
.set Lset22, Lfunc_begin1-Lfunc_begin0
	.quad	Lset22
.set Lset23, Ltmp27-Lfunc_begin0
	.quad	Lset23
	.short	1                               ; Loc expr size
	.byte	80                              ; DW_OP_reg0
.set Lset24, Ltmp27-Lfunc_begin0
	.quad	Lset24
.set Lset25, Ltmp28-Lfunc_begin0
	.quad	Lset25
	.short	4                               ; Loc expr size
	.byte	163                             ; DW_OP_entry_value
	.byte	1                               ; 1
	.byte	80                              ; DW_OP_reg0
	.byte	159                             ; DW_OP_stack_value
.set Lset26, Ltmp28-Lfunc_begin0
	.quad	Lset26
.set Lset27, Ltmp34-Lfunc_begin0
	.quad	Lset27
	.short	1                               ; Loc expr size
	.byte	80                              ; DW_OP_reg0
.set Lset28, Ltmp34-Lfunc_begin0
	.quad	Lset28
.set Lset29, Ltmp35-Lfunc_begin0
	.quad	Lset29
	.short	4                               ; Loc expr size
	.byte	163                             ; DW_OP_entry_value
	.byte	1                               ; 1
	.byte	80                              ; DW_OP_reg0
	.byte	159                             ; DW_OP_stack_value
.set Lset30, Ltmp35-Lfunc_begin0
	.quad	Lset30
.set Lset31, Lfunc_end1-Lfunc_begin0
	.quad	Lset31
	.short	1                               ; Loc expr size
	.byte	80                              ; DW_OP_reg0
	.quad	0
	.quad	0
Ldebug_loc6:
.set Lset32, Lfunc_begin1-Lfunc_begin0
	.quad	Lset32
.set Lset33, Ltmp32-Lfunc_begin0
	.quad	Lset33
	.short	1                               ; Loc expr size
	.byte	81                              ; DW_OP_reg1
.set Lset34, Ltmp35-Lfunc_begin0
	.quad	Lset34
.set Lset35, Ltmp36-Lfunc_begin0
	.quad	Lset35
	.short	1                               ; Loc expr size
	.byte	81                              ; DW_OP_reg1
	.quad	0
	.quad	0
Ldebug_loc7:
.set Lset36, Ltmp17-Lfunc_begin0
	.quad	Lset36
.set Lset37, Ltmp30-Lfunc_begin0
	.quad	Lset37
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
.set Lset38, Ltmp32-Lfunc_begin0
	.quad	Lset38
.set Lset39, Ltmp34-Lfunc_begin0
	.quad	Lset39
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
.set Lset40, Ltmp34-Lfunc_begin0
	.quad	Lset40
.set Lset41, Ltmp35-Lfunc_begin0
	.quad	Lset41
	.short	1                               ; Loc expr size
	.byte	80                              ; DW_OP_reg0
.set Lset42, Ltmp35-Lfunc_begin0
	.quad	Lset42
.set Lset43, Ltmp37-Lfunc_begin0
	.quad	Lset43
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
	.quad	0
	.quad	0
Ldebug_loc8:
.set Lset44, Lfunc_begin2-Lfunc_begin0
	.quad	Lset44
.set Lset45, Ltmp39-Lfunc_begin0
	.quad	Lset45
	.short	1                               ; Loc expr size
	.byte	80                              ; DW_OP_reg0
.set Lset46, Ltmp39-Lfunc_begin0
	.quad	Lset46
.set Lset47, Ltmp44-Lfunc_begin0
	.quad	Lset47
	.short	3                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	208                             ; 336
	.byte	2                               ; 
.set Lset48, Ltmp45-Lfunc_begin0
	.quad	Lset48
.set Lset49, Lfunc_end2-Lfunc_begin0
	.quad	Lset49
	.short	3                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	208                             ; 336
	.byte	2                               ; 
	.quad	0
	.quad	0
Ldebug_loc9:
.set Lset50, Lfunc_begin2-Lfunc_begin0
	.quad	Lset50
.set Lset51, Ltmp42-Lfunc_begin0
	.quad	Lset51
	.short	1                               ; Loc expr size
	.byte	81                              ; DW_OP_reg1
.set Lset52, Ltmp45-Lfunc_begin0
	.quad	Lset52
.set Lset53, Ltmp46-Lfunc_begin0
	.quad	Lset53
	.short	1                               ; Loc expr size
	.byte	81                              ; DW_OP_reg1
.set Lset54, Ltmp46-Lfunc_begin0
	.quad	Lset54
.set Lset55, Ltmp52-Lfunc_begin0
	.quad	Lset55
	.short	1                               ; Loc expr size
	.byte	95                              ; DW_OP_reg15
.set Lset56, Ltmp52-Lfunc_begin0
	.quad	Lset56
.set Lset57, Ltmp57-Lfunc_begin0
	.quad	Lset57
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
.set Lset58, Ltmp57-Lfunc_begin0
	.quad	Lset58
.set Lset59, Ltmp58-Lfunc_begin0
	.quad	Lset59
	.short	1                               ; Loc expr size
	.byte	95                              ; DW_OP_reg15
.set Lset60, Ltmp58-Lfunc_begin0
	.quad	Lset60
.set Lset61, Ltmp72-Lfunc_begin0
	.quad	Lset61
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
.set Lset62, Ltmp72-Lfunc_begin0
	.quad	Lset62
.set Lset63, Ltmp86-Lfunc_begin0
	.quad	Lset63
	.short	1                               ; Loc expr size
	.byte	95                              ; DW_OP_reg15
.set Lset64, Ltmp93-Lfunc_begin0
	.quad	Lset64
.set Lset65, Ltmp103-Lfunc_begin0
	.quad	Lset65
	.short	1                               ; Loc expr size
	.byte	95                              ; DW_OP_reg15
.set Lset66, Ltmp114-Lfunc_begin0
	.quad	Lset66
.set Lset67, Ltmp117-Lfunc_begin0
	.quad	Lset67
	.short	1                               ; Loc expr size
	.byte	95                              ; DW_OP_reg15
.set Lset68, Ltmp293-Lfunc_begin0
	.quad	Lset68
.set Lset69, Ltmp294-Lfunc_begin0
	.quad	Lset69
	.short	1                               ; Loc expr size
	.byte	95                              ; DW_OP_reg15
	.quad	0
	.quad	0
Ldebug_loc10:
.set Lset70, Ltmp47-Lfunc_begin0
	.quad	Lset70
.set Lset71, Ltmp70-Lfunc_begin0
	.quad	Lset71
	.short	3                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	32                              ; DW_OP_not
	.byte	159                             ; DW_OP_stack_value
.set Lset72, Ltmp70-Lfunc_begin0
	.quad	Lset72
.set Lset73, Ltmp80-Lfunc_begin0
	.quad	Lset73
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
.set Lset74, Ltmp83-Lfunc_begin0
	.quad	Lset74
.set Lset75, Ltmp93-Lfunc_begin0
	.quad	Lset75
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
.set Lset76, Ltmp114-Lfunc_begin0
	.quad	Lset76
.set Lset77, Ltmp125-Lfunc_begin0
	.quad	Lset77
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
.set Lset78, Ltmp340-Lfunc_begin0
	.quad	Lset78
.set Lset79, Ltmp346-Lfunc_begin0
	.quad	Lset79
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
	.quad	0
	.quad	0
Ldebug_loc11:
.set Lset80, Ltmp47-Lfunc_begin0
	.quad	Lset80
.set Lset81, Ltmp67-Lfunc_begin0
	.quad	Lset81
	.short	3                               ; Loc expr size
	.byte	16                              ; DW_OP_constu
	.byte	64                              ; 64
	.byte	159                             ; DW_OP_stack_value
.set Lset82, Ltmp67-Lfunc_begin0
	.quad	Lset82
.set Lset83, Ltmp68-Lfunc_begin0
	.quad	Lset83
	.short	2                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	159                             ; DW_OP_stack_value
.set Lset84, Ltmp70-Lfunc_begin0
	.quad	Lset84
.set Lset85, Ltmp346-Lfunc_begin0
	.quad	Lset85
	.short	3                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	208                             ; 208
	.byte	1                               ; 
	.quad	0
	.quad	0
Ldebug_loc12:
.set Lset86, Ltmp47-Lfunc_begin0
	.quad	Lset86
.set Lset87, Ltmp66-Lfunc_begin0
	.quad	Lset87
	.short	3                               ; Loc expr size
	.byte	16                              ; DW_OP_constu
	.byte	64                              ; 64
	.byte	159                             ; DW_OP_stack_value
.set Lset88, Ltmp66-Lfunc_begin0
	.quad	Lset88
.set Lset89, Ltmp67-Lfunc_begin0
	.quad	Lset89
	.short	2                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	159                             ; DW_OP_stack_value
.set Lset90, Ltmp67-Lfunc_begin0
	.quad	Lset90
.set Lset91, Ltmp70-Lfunc_begin0
	.quad	Lset91
	.short	3                               ; Loc expr size
	.byte	16                              ; DW_OP_constu
	.byte	64                              ; 64
	.byte	159                             ; DW_OP_stack_value
.set Lset92, Ltmp70-Lfunc_begin0
	.quad	Lset92
.set Lset93, Ltmp346-Lfunc_begin0
	.quad	Lset93
	.short	3                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	200                             ; 200
	.byte	1                               ; 
	.quad	0
	.quad	0
Ldebug_loc13:
.set Lset94, Ltmp47-Lfunc_begin0
	.quad	Lset94
.set Lset95, Ltmp71-Lfunc_begin0
	.quad	Lset95
	.short	3                               ; Loc expr size
	.byte	16                              ; DW_OP_constu
	.byte	64                              ; 64
	.byte	159                             ; DW_OP_stack_value
.set Lset96, Ltmp71-Lfunc_begin0
	.quad	Lset96
.set Lset97, Ltmp123-Lfunc_begin0
	.quad	Lset97
	.short	1                               ; Loc expr size
	.byte	80                              ; DW_OP_reg0
.set Lset98, Ltmp293-Lfunc_begin0
	.quad	Lset98
.set Lset99, Ltmp310-Lfunc_begin0
	.quad	Lset99
	.short	1                               ; Loc expr size
	.byte	80                              ; DW_OP_reg0
.set Lset100, Ltmp339-Lfunc_begin0
	.quad	Lset100
.set Lset101, Ltmp346-Lfunc_begin0
	.quad	Lset101
	.short	1                               ; Loc expr size
	.byte	80                              ; DW_OP_reg0
	.quad	0
	.quad	0
Ldebug_loc14:
.set Lset102, Ltmp47-Lfunc_begin0
	.quad	Lset102
.set Lset103, Ltmp74-Lfunc_begin0
	.quad	Lset103
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
.set Lset104, Ltmp74-Lfunc_begin0
	.quad	Lset104
.set Lset105, Ltmp133-Lfunc_begin0
	.quad	Lset105
	.short	3                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	248                             ; 248
	.byte	1                               ; 
.set Lset106, Ltmp133-Lfunc_begin0
	.quad	Lset106
.set Lset107, Ltmp134-Lfunc_begin0
	.quad	Lset107
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
.set Lset108, Ltmp134-Lfunc_begin0
	.quad	Lset108
.set Lset109, Ltmp308-Lfunc_begin0
	.quad	Lset109
	.short	3                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	248                             ; 248
	.byte	1                               ; 
.set Lset110, Ltmp308-Lfunc_begin0
	.quad	Lset110
.set Lset111, Ltmp309-Lfunc_begin0
	.quad	Lset111
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
.set Lset112, Ltmp309-Lfunc_begin0
	.quad	Lset112
.set Lset113, Ltmp312-Lfunc_begin0
	.quad	Lset113
	.short	3                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	248                             ; 248
	.byte	1                               ; 
.set Lset114, Ltmp312-Lfunc_begin0
	.quad	Lset114
.set Lset115, Ltmp314-Lfunc_begin0
	.quad	Lset115
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
.set Lset116, Ltmp314-Lfunc_begin0
	.quad	Lset116
.set Lset117, Ltmp346-Lfunc_begin0
	.quad	Lset117
	.short	3                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	248                             ; 248
	.byte	1                               ; 
	.quad	0
	.quad	0
Ldebug_loc15:
.set Lset118, Ltmp51-Lfunc_begin0
	.quad	Lset118
.set Lset119, Ltmp53-Lfunc_begin0
	.quad	Lset119
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
	.quad	0
	.quad	0
Ldebug_loc16:
.set Lset120, Ltmp77-Lfunc_begin0
	.quad	Lset120
.set Lset121, Ltmp82-Lfunc_begin0
	.quad	Lset121
	.short	1                               ; Loc expr size
	.byte	92                              ; DW_OP_reg12
.set Lset122, Ltmp83-Lfunc_begin0
	.quad	Lset122
.set Lset123, Ltmp84-Lfunc_begin0
	.quad	Lset123
	.short	1                               ; Loc expr size
	.byte	92                              ; DW_OP_reg12
.set Lset124, Ltmp84-Lfunc_begin0
	.quad	Lset124
.set Lset125, Ltmp93-Lfunc_begin0
	.quad	Lset125
	.short	3                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	188                             ; 316
	.byte	2                               ; 
.set Lset126, Ltmp93-Lfunc_begin0
	.quad	Lset126
.set Lset127, Ltmp94-Lfunc_begin0
	.quad	Lset127
	.short	1                               ; Loc expr size
	.byte	92                              ; DW_OP_reg12
.set Lset128, Ltmp114-Lfunc_begin0
	.quad	Lset128
.set Lset129, Ltmp293-Lfunc_begin0
	.quad	Lset129
	.short	3                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	188                             ; 316
	.byte	2                               ; 
.set Lset130, Ltmp340-Lfunc_begin0
	.quad	Lset130
.set Lset131, Ltmp346-Lfunc_begin0
	.quad	Lset131
	.short	3                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	188                             ; 316
	.byte	2                               ; 
	.quad	0
	.quad	0
Ldebug_loc17:
.set Lset132, Ltmp78-Lfunc_begin0
	.quad	Lset132
.set Lset133, Ltmp87-Lfunc_begin0
	.quad	Lset133
	.short	2                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	159                             ; DW_OP_stack_value
.set Lset134, Ltmp87-Lfunc_begin0
	.quad	Lset134
.set Lset135, Ltmp88-Lfunc_begin0
	.quad	Lset135
	.short	2                               ; Loc expr size
	.byte	64                              ; DW_OP_lit16
	.byte	159                             ; DW_OP_stack_value
.set Lset136, Ltmp89-Lfunc_begin0
	.quad	Lset136
.set Lset137, Ltmp119-Lfunc_begin0
	.quad	Lset137
	.short	2                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	159                             ; DW_OP_stack_value
.set Lset138, Ltmp119-Lfunc_begin0
	.quad	Lset138
.set Lset139, Ltmp120-Lfunc_begin0
	.quad	Lset139
	.short	2                               ; Loc expr size
	.byte	56                              ; DW_OP_lit8
	.byte	159                             ; DW_OP_stack_value
.set Lset140, Ltmp120-Lfunc_begin0
	.quad	Lset140
.set Lset141, Ltmp341-Lfunc_begin0
	.quad	Lset141
	.short	2                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	159                             ; DW_OP_stack_value
.set Lset142, Ltmp341-Lfunc_begin0
	.quad	Lset142
.set Lset143, Ltmp342-Lfunc_begin0
	.quad	Lset143
	.short	2                               ; Loc expr size
	.byte	56                              ; DW_OP_lit8
	.byte	159                             ; DW_OP_stack_value
.set Lset144, Ltmp342-Lfunc_begin0
	.quad	Lset144
.set Lset145, Ltmp345-Lfunc_begin0
	.quad	Lset145
	.short	2                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	159                             ; DW_OP_stack_value
.set Lset146, Ltmp345-Lfunc_begin0
	.quad	Lset146
.set Lset147, Ltmp346-Lfunc_begin0
	.quad	Lset147
	.short	2                               ; Loc expr size
	.byte	64                              ; DW_OP_lit16
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc18:
.set Lset148, Ltmp78-Lfunc_begin0
	.quad	Lset148
.set Lset149, Ltmp87-Lfunc_begin0
	.quad	Lset149
	.short	2                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	159                             ; DW_OP_stack_value
.set Lset150, Ltmp87-Lfunc_begin0
	.quad	Lset150
.set Lset151, Ltmp88-Lfunc_begin0
	.quad	Lset151
	.short	2                               ; Loc expr size
	.byte	64                              ; DW_OP_lit16
	.byte	159                             ; DW_OP_stack_value
.set Lset152, Ltmp89-Lfunc_begin0
	.quad	Lset152
.set Lset153, Ltmp119-Lfunc_begin0
	.quad	Lset153
	.short	2                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	159                             ; DW_OP_stack_value
.set Lset154, Ltmp119-Lfunc_begin0
	.quad	Lset154
.set Lset155, Ltmp120-Lfunc_begin0
	.quad	Lset155
	.short	2                               ; Loc expr size
	.byte	56                              ; DW_OP_lit8
	.byte	159                             ; DW_OP_stack_value
.set Lset156, Ltmp120-Lfunc_begin0
	.quad	Lset156
.set Lset157, Ltmp341-Lfunc_begin0
	.quad	Lset157
	.short	2                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	159                             ; DW_OP_stack_value
.set Lset158, Ltmp341-Lfunc_begin0
	.quad	Lset158
.set Lset159, Ltmp342-Lfunc_begin0
	.quad	Lset159
	.short	2                               ; Loc expr size
	.byte	56                              ; DW_OP_lit8
	.byte	159                             ; DW_OP_stack_value
.set Lset160, Ltmp342-Lfunc_begin0
	.quad	Lset160
.set Lset161, Ltmp345-Lfunc_begin0
	.quad	Lset161
	.short	2                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	159                             ; DW_OP_stack_value
.set Lset162, Ltmp345-Lfunc_begin0
	.quad	Lset162
.set Lset163, Ltmp346-Lfunc_begin0
	.quad	Lset163
	.short	2                               ; Loc expr size
	.byte	56                              ; DW_OP_lit8
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc19:
.set Lset164, Ltmp78-Lfunc_begin0
	.quad	Lset164
.set Lset165, Ltmp86-Lfunc_begin0
	.quad	Lset165
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
.set Lset166, Ltmp93-Lfunc_begin0
	.quad	Lset166
.set Lset167, Ltmp120-Lfunc_begin0
	.quad	Lset167
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
.set Lset168, Ltmp293-Lfunc_begin0
	.quad	Lset168
.set Lset169, Ltmp310-Lfunc_begin0
	.quad	Lset169
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
.set Lset170, Ltmp339-Lfunc_begin0
	.quad	Lset170
.set Lset171, Ltmp346-Lfunc_begin0
	.quad	Lset171
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
	.quad	0
	.quad	0
Ldebug_loc20:
.set Lset172, Ltmp87-Lfunc_begin0
	.quad	Lset172
.set Lset173, Ltmp88-Lfunc_begin0
	.quad	Lset173
	.short	2                               ; Loc expr size
	.byte	64                              ; DW_OP_lit16
	.byte	159                             ; DW_OP_stack_value
.set Lset174, Ltmp94-Lfunc_begin0
	.quad	Lset174
.set Lset175, Ltmp108-Lfunc_begin0
	.quad	Lset175
	.short	1                               ; Loc expr size
	.byte	92                              ; DW_OP_reg12
.set Lset176, Ltmp119-Lfunc_begin0
	.quad	Lset176
.set Lset177, Ltmp120-Lfunc_begin0
	.quad	Lset177
	.short	3                               ; Loc expr size
	.byte	16                              ; DW_OP_constu
	.byte	32                              ; 32
	.byte	159                             ; DW_OP_stack_value
.set Lset178, Ltmp293-Lfunc_begin0
	.quad	Lset178
.set Lset179, Ltmp295-Lfunc_begin0
	.quad	Lset179
	.short	1                               ; Loc expr size
	.byte	92                              ; DW_OP_reg12
.set Lset180, Ltmp297-Lfunc_begin0
	.quad	Lset180
.set Lset181, Ltmp299-Lfunc_begin0
	.quad	Lset181
	.short	1                               ; Loc expr size
	.byte	92                              ; DW_OP_reg12
.set Lset182, Ltmp301-Lfunc_begin0
	.quad	Lset182
.set Lset183, Ltmp303-Lfunc_begin0
	.quad	Lset183
	.short	1                               ; Loc expr size
	.byte	92                              ; DW_OP_reg12
.set Lset184, Ltmp339-Lfunc_begin0
	.quad	Lset184
.set Lset185, Ltmp340-Lfunc_begin0
	.quad	Lset185
	.short	1                               ; Loc expr size
	.byte	92                              ; DW_OP_reg12
.set Lset186, Ltmp341-Lfunc_begin0
	.quad	Lset186
.set Lset187, Ltmp342-Lfunc_begin0
	.quad	Lset187
	.short	2                               ; Loc expr size
	.byte	64                              ; DW_OP_lit16
	.byte	159                             ; DW_OP_stack_value
.set Lset188, Ltmp345-Lfunc_begin0
	.quad	Lset188
.set Lset189, Ltmp346-Lfunc_begin0
	.quad	Lset189
	.short	3                               ; Loc expr size
	.byte	16                              ; DW_OP_constu
	.byte	32                              ; 32
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc21:
.set Lset190, Ltmp89-Lfunc_begin0
	.quad	Lset190
.set Lset191, Ltmp93-Lfunc_begin0
	.quad	Lset191
	.short	4                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	51                              ; DW_OP_lit3
	.byte	37                              ; DW_OP_shr
	.byte	159                             ; DW_OP_stack_value
.set Lset192, Ltmp94-Lfunc_begin0
	.quad	Lset192
.set Lset193, Ltmp114-Lfunc_begin0
	.quad	Lset193
	.short	4                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	51                              ; DW_OP_lit3
	.byte	37                              ; DW_OP_shr
	.byte	159                             ; DW_OP_stack_value
.set Lset194, Ltmp120-Lfunc_begin0
	.quad	Lset194
.set Lset195, Ltmp340-Lfunc_begin0
	.quad	Lset195
	.short	4                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	51                              ; DW_OP_lit3
	.byte	37                              ; DW_OP_shr
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc22:
.set Lset196, Ltmp89-Lfunc_begin0
	.quad	Lset196
.set Lset197, Ltmp93-Lfunc_begin0
	.quad	Lset197
	.short	4                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	51                              ; DW_OP_lit3
	.byte	37                              ; DW_OP_shr
	.byte	159                             ; DW_OP_stack_value
.set Lset198, Ltmp94-Lfunc_begin0
	.quad	Lset198
.set Lset199, Ltmp114-Lfunc_begin0
	.quad	Lset199
	.short	4                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	51                              ; DW_OP_lit3
	.byte	37                              ; DW_OP_shr
	.byte	159                             ; DW_OP_stack_value
.set Lset200, Ltmp120-Lfunc_begin0
	.quad	Lset200
.set Lset201, Ltmp340-Lfunc_begin0
	.quad	Lset201
	.short	4                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	51                              ; DW_OP_lit3
	.byte	37                              ; DW_OP_shr
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc23:
.set Lset202, Ltmp95-Lfunc_begin0
	.quad	Lset202
.set Lset203, Ltmp114-Lfunc_begin0
	.quad	Lset203
	.short	1                               ; Loc expr size
	.byte	101                             ; DW_OP_reg21
.set Lset204, Ltmp293-Lfunc_begin0
	.quad	Lset204
.set Lset205, Ltmp340-Lfunc_begin0
	.quad	Lset205
	.short	1                               ; Loc expr size
	.byte	101                             ; DW_OP_reg21
	.quad	0
	.quad	0
Ldebug_loc24:
.set Lset206, Ltmp102-Lfunc_begin0
	.quad	Lset206
.set Lset207, Ltmp113-Lfunc_begin0
	.quad	Lset207
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
.set Lset208, Ltmp294-Lfunc_begin0
	.quad	Lset208
.set Lset209, Ltmp296-Lfunc_begin0
	.quad	Lset209
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
.set Lset210, Ltmp297-Lfunc_begin0
	.quad	Lset210
.set Lset211, Ltmp300-Lfunc_begin0
	.quad	Lset211
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
.set Lset212, Ltmp301-Lfunc_begin0
	.quad	Lset212
.set Lset213, Ltmp304-Lfunc_begin0
	.quad	Lset213
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
	.quad	0
	.quad	0
Ldebug_loc25:
.set Lset214, Ltmp98-Lfunc_begin0
	.quad	Lset214
.set Lset215, Ltmp114-Lfunc_begin0
	.quad	Lset215
	.short	2                               ; Loc expr size
	.byte	57                              ; DW_OP_lit9
	.byte	159                             ; DW_OP_stack_value
.set Lset216, Ltmp294-Lfunc_begin0
	.quad	Lset216
.set Lset217, Ltmp305-Lfunc_begin0
	.quad	Lset217
	.short	2                               ; Loc expr size
	.byte	57                              ; DW_OP_lit9
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc26:
.set Lset218, Ltmp98-Lfunc_begin0
	.quad	Lset218
.set Lset219, Ltmp108-Lfunc_begin0
	.quad	Lset219
	.short	1                               ; Loc expr size
	.byte	101                             ; DW_OP_reg21
.set Lset220, Ltmp108-Lfunc_begin0
	.quad	Lset220
.set Lset221, Ltmp110-Lfunc_begin0
	.quad	Lset221
	.short	1                               ; Loc expr size
	.byte	92                              ; DW_OP_reg12
.set Lset222, Ltmp110-Lfunc_begin0
	.quad	Lset222
.set Lset223, Ltmp111-Lfunc_begin0
	.quad	Lset223
	.short	1                               ; Loc expr size
	.byte	94                              ; DW_OP_reg14
.set Lset224, Ltmp111-Lfunc_begin0
	.quad	Lset224
.set Lset225, Ltmp112-Lfunc_begin0
	.quad	Lset225
	.short	1                               ; Loc expr size
	.byte	92                              ; DW_OP_reg12
.set Lset226, Ltmp294-Lfunc_begin0
	.quad	Lset226
.set Lset227, Ltmp305-Lfunc_begin0
	.quad	Lset227
	.short	1                               ; Loc expr size
	.byte	101                             ; DW_OP_reg21
	.quad	0
	.quad	0
Ldebug_loc27:
.set Lset228, Ltmp99-Lfunc_begin0
	.quad	Lset228
.set Lset229, Ltmp105-Lfunc_begin0
	.quad	Lset229
	.short	1                               ; Loc expr size
	.byte	93                              ; DW_OP_reg13
.set Lset230, Ltmp294-Lfunc_begin0
	.quad	Lset230
.set Lset231, Ltmp305-Lfunc_begin0
	.quad	Lset231
	.short	1                               ; Loc expr size
	.byte	93                              ; DW_OP_reg13
	.quad	0
	.quad	0
Ldebug_loc28:
.set Lset232, Ltmp100-Lfunc_begin0
	.quad	Lset232
.set Lset233, Ltmp107-Lfunc_begin0
	.quad	Lset233
	.short	3                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	32                              ; DW_OP_not
	.byte	159                             ; DW_OP_stack_value
.set Lset234, Ltmp107-Lfunc_begin0
	.quad	Lset234
.set Lset235, Ltmp114-Lfunc_begin0
	.quad	Lset235
	.short	1                               ; Loc expr size
	.byte	93                              ; DW_OP_reg13
.set Lset236, Ltmp294-Lfunc_begin0
	.quad	Lset236
.set Lset237, Ltmp305-Lfunc_begin0
	.quad	Lset237
	.short	3                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	32                              ; DW_OP_not
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc29:
.set Lset238, Ltmp124-Lfunc_begin0
	.quad	Lset238
.set Lset239, Ltmp130-Lfunc_begin0
	.quad	Lset239
	.short	1                               ; Loc expr size
	.byte	82                              ; DW_OP_reg2
.set Lset240, Ltmp130-Lfunc_begin0
	.quad	Lset240
.set Lset241, Ltmp131-Lfunc_begin0
	.quad	Lset241
	.short	3                               ; Loc expr size
	.byte	141                             ; DW_OP_breg29
	.byte	208                             ; -304
	.byte	125                             ; 
.set Lset242, Ltmp131-Lfunc_begin0
	.quad	Lset242
.set Lset243, Ltmp142-Lfunc_begin0
	.quad	Lset243
	.short	3                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	232                             ; 232
	.byte	1                               ; 
.set Lset244, Ltmp142-Lfunc_begin0
	.quad	Lset244
.set Lset245, Ltmp143-Lfunc_begin0
	.quad	Lset245
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
.set Lset246, Ltmp143-Lfunc_begin0
	.quad	Lset246
.set Lset247, Ltmp146-Lfunc_begin0
	.quad	Lset247
	.short	3                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	232                             ; 232
	.byte	1                               ; 
.set Lset248, Ltmp146-Lfunc_begin0
	.quad	Lset248
.set Lset249, Ltmp148-Lfunc_begin0
	.quad	Lset249
	.short	10                              ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	232                             ; 232
	.byte	1                               ; 
	.byte	6                               ; DW_OP_deref
	.byte	143                             ; DW_OP_breg31
	.byte	208                             ; 208
	.byte	1                               ; 
	.byte	6                               ; DW_OP_deref
	.byte	34                              ; DW_OP_plus
	.byte	159                             ; DW_OP_stack_value
.set Lset250, Ltmp148-Lfunc_begin0
	.quad	Lset250
.set Lset251, Ltmp153-Lfunc_begin0
	.quad	Lset251
	.short	10                              ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	232                             ; 232
	.byte	1                               ; 
	.byte	6                               ; DW_OP_deref
	.byte	143                             ; DW_OP_breg31
	.byte	208                             ; 208
	.byte	1                               ; 
	.byte	6                               ; DW_OP_deref
	.byte	34                              ; DW_OP_plus
	.byte	159                             ; DW_OP_stack_value
.set Lset252, Ltmp153-Lfunc_begin0
	.quad	Lset252
.set Lset253, Ltmp154-Lfunc_begin0
	.quad	Lset253
	.short	10                              ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	232                             ; 232
	.byte	1                               ; 
	.byte	6                               ; DW_OP_deref
	.byte	143                             ; DW_OP_breg31
	.byte	216                             ; 88
	.byte	0                               ; 
	.byte	6                               ; DW_OP_deref
	.byte	34                              ; DW_OP_plus
	.byte	159                             ; DW_OP_stack_value
.set Lset254, Ltmp233-Lfunc_begin0
	.quad	Lset254
.set Lset255, Ltmp234-Lfunc_begin0
	.quad	Lset255
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
.set Lset256, Ltmp234-Lfunc_begin0
	.quad	Lset256
.set Lset257, Ltmp293-Lfunc_begin0
	.quad	Lset257
	.short	3                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	232                             ; 232
	.byte	1                               ; 
	.quad	0
	.quad	0
Ldebug_loc30:
.set Lset258, Ltmp124-Lfunc_begin0
	.quad	Lset258
.set Lset259, Ltmp128-Lfunc_begin0
	.quad	Lset259
	.short	5                               ; Loc expr size
	.byte	114                             ; DW_OP_breg2
	.byte	0                               ; 0
	.byte	58                              ; DW_OP_lit10
	.byte	37                              ; DW_OP_shr
	.byte	159                             ; DW_OP_stack_value
.set Lset260, Ltmp128-Lfunc_begin0
	.quad	Lset260
.set Lset261, Ltmp129-Lfunc_begin0
	.quad	Lset261
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
.set Lset262, Ltmp129-Lfunc_begin0
	.quad	Lset262
.set Lset263, Ltmp136-Lfunc_begin0
	.quad	Lset263
	.short	3                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	240                             ; 240
	.byte	1                               ; 
.set Lset264, Ltmp136-Lfunc_begin0
	.quad	Lset264
.set Lset265, Ltmp137-Lfunc_begin0
	.quad	Lset265
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
.set Lset266, Ltmp137-Lfunc_begin0
	.quad	Lset266
.set Lset267, Ltmp141-Lfunc_begin0
	.quad	Lset267
	.short	3                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	240                             ; 240
	.byte	1                               ; 
.set Lset268, Ltmp141-Lfunc_begin0
	.quad	Lset268
.set Lset269, Ltmp148-Lfunc_begin0
	.quad	Lset269
	.short	10                              ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	240                             ; 240
	.byte	1                               ; 
	.byte	6                               ; DW_OP_deref
	.byte	143                             ; DW_OP_breg31
	.byte	200                             ; 200
	.byte	1                               ; 
	.byte	6                               ; DW_OP_deref
	.byte	34                              ; DW_OP_plus
	.byte	159                             ; DW_OP_stack_value
.set Lset270, Ltmp148-Lfunc_begin0
	.quad	Lset270
.set Lset271, Ltmp151-Lfunc_begin0
	.quad	Lset271
	.short	10                              ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	240                             ; 240
	.byte	1                               ; 
	.byte	6                               ; DW_OP_deref
	.byte	143                             ; DW_OP_breg31
	.byte	200                             ; 200
	.byte	1                               ; 
	.byte	6                               ; DW_OP_deref
	.byte	34                              ; DW_OP_plus
	.byte	159                             ; DW_OP_stack_value
.set Lset272, Ltmp151-Lfunc_begin0
	.quad	Lset272
.set Lset273, Ltmp152-Lfunc_begin0
	.quad	Lset273
	.short	10                              ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	240                             ; 240
	.byte	1                               ; 
	.byte	6                               ; DW_OP_deref
	.byte	143                             ; DW_OP_breg31
	.byte	224                             ; 96
	.byte	0                               ; 
	.byte	6                               ; DW_OP_deref
	.byte	34                              ; DW_OP_plus
	.byte	159                             ; DW_OP_stack_value
.set Lset274, Ltmp152-Lfunc_begin0
	.quad	Lset274
.set Lset275, Ltmp154-Lfunc_begin0
	.quad	Lset275
	.short	10                              ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	240                             ; 240
	.byte	1                               ; 
	.byte	6                               ; DW_OP_deref
	.byte	143                             ; DW_OP_breg31
	.byte	200                             ; 200
	.byte	1                               ; 
	.byte	6                               ; DW_OP_deref
	.byte	34                              ; DW_OP_plus
	.byte	159                             ; DW_OP_stack_value
.set Lset276, Ltmp231-Lfunc_begin0
	.quad	Lset276
.set Lset277, Ltmp232-Lfunc_begin0
	.quad	Lset277
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
.set Lset278, Ltmp232-Lfunc_begin0
	.quad	Lset278
.set Lset279, Ltmp293-Lfunc_begin0
	.quad	Lset279
	.short	3                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	240                             ; 240
	.byte	1                               ; 
	.quad	0
	.quad	0
Ldebug_loc31:
.set Lset280, Ltmp138-Lfunc_begin0
	.quad	Lset280
.set Lset281, Ltmp140-Lfunc_begin0
	.quad	Lset281
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
	.quad	0
	.quad	0
Ldebug_loc32:
.set Lset282, Ltmp139-Lfunc_begin0
	.quad	Lset282
.set Lset283, Ltmp140-Lfunc_begin0
	.quad	Lset283
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
	.quad	0
	.quad	0
Ldebug_loc33:
.set Lset284, Ltmp143-Lfunc_begin0
	.quad	Lset284
.set Lset285, Ltmp145-Lfunc_begin0
	.quad	Lset285
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
	.quad	0
	.quad	0
Ldebug_loc34:
.set Lset286, Ltmp144-Lfunc_begin0
	.quad	Lset286
.set Lset287, Ltmp145-Lfunc_begin0
	.quad	Lset287
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
	.quad	0
	.quad	0
Ldebug_loc35:
.set Lset288, Ltmp158-Lfunc_begin0
	.quad	Lset288
.set Lset289, Ltmp166-Lfunc_begin0
	.quad	Lset289
	.short	3                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	160                             ; 160
	.byte	1                               ; 
	.quad	0
	.quad	0
Ldebug_loc36:
.set Lset290, Ltmp159-Lfunc_begin0
	.quad	Lset290
.set Lset291, Ltmp161-Lfunc_begin0
	.quad	Lset291
	.short	1                               ; Loc expr size
	.byte	100                             ; DW_OP_reg20
.set Lset292, Ltmp161-Lfunc_begin0
	.quad	Lset292
.set Lset293, Ltmp162-Lfunc_begin0
	.quad	Lset293
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
.set Lset294, Ltmp162-Lfunc_begin0
	.quad	Lset294
.set Lset295, Ltmp163-Lfunc_begin0
	.quad	Lset295
	.short	6                               ; Loc expr size
	.byte	121                             ; DW_OP_breg9
	.byte	0                               ; 0
	.byte	120                             ; DW_OP_breg8
	.byte	0                               ; 0
	.byte	34                              ; DW_OP_plus
	.byte	159                             ; DW_OP_stack_value
.set Lset296, Ltmp164-Lfunc_begin0
	.quad	Lset296
.set Lset297, Ltmp166-Lfunc_begin0
	.quad	Lset297
	.short	1                               ; Loc expr size
	.byte	100                             ; DW_OP_reg20
	.quad	0
	.quad	0
Ldebug_loc37:
.set Lset298, Ltmp170-Lfunc_begin0
	.quad	Lset298
.set Lset299, Ltmp172-Lfunc_begin0
	.quad	Lset299
	.short	1                               ; Loc expr size
	.byte	100                             ; DW_OP_reg20
.set Lset300, Ltmp172-Lfunc_begin0
	.quad	Lset300
.set Lset301, Ltmp173-Lfunc_begin0
	.quad	Lset301
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
.set Lset302, Ltmp173-Lfunc_begin0
	.quad	Lset302
.set Lset303, Ltmp174-Lfunc_begin0
	.quad	Lset303
	.short	6                               ; Loc expr size
	.byte	121                             ; DW_OP_breg9
	.byte	0                               ; 0
	.byte	120                             ; DW_OP_breg8
	.byte	0                               ; 0
	.byte	34                              ; DW_OP_plus
	.byte	159                             ; DW_OP_stack_value
.set Lset304, Ltmp175-Lfunc_begin0
	.quad	Lset304
.set Lset305, Ltmp177-Lfunc_begin0
	.quad	Lset305
	.short	1                               ; Loc expr size
	.byte	100                             ; DW_OP_reg20
	.quad	0
	.quad	0
Ldebug_loc38:
.set Lset306, Ltmp170-Lfunc_begin0
	.quad	Lset306
.set Lset307, Ltmp177-Lfunc_begin0
	.quad	Lset307
	.short	3                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	152                             ; 152
	.byte	1                               ; 
	.quad	0
	.quad	0
Ldebug_loc39:
.set Lset308, Ltmp177-Lfunc_begin0
	.quad	Lset308
.set Lset309, Ltmp183-Lfunc_begin0
	.quad	Lset309
	.short	4                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	51                              ; DW_OP_lit3
	.byte	37                              ; DW_OP_shr
	.byte	159                             ; DW_OP_stack_value
.set Lset310, Ltmp184-Lfunc_begin0
	.quad	Lset310
.set Lset311, Ltmp185-Lfunc_begin0
	.quad	Lset311
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
.set Lset312, Ltmp185-Lfunc_begin0
	.quad	Lset312
.set Lset313, Ltmp186-Lfunc_begin0
	.quad	Lset313
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
.set Lset314, Ltmp186-Lfunc_begin0
	.quad	Lset314
.set Lset315, Ltmp187-Lfunc_begin0
	.quad	Lset315
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
.set Lset316, Ltmp189-Lfunc_begin0
	.quad	Lset316
.set Lset317, Ltmp193-Lfunc_begin0
	.quad	Lset317
	.short	4                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	51                              ; DW_OP_lit3
	.byte	37                              ; DW_OP_shr
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc40:
.set Lset318, Ltmp177-Lfunc_begin0
	.quad	Lset318
.set Lset319, Ltmp187-Lfunc_begin0
	.quad	Lset319
	.short	2                               ; Loc expr size
	.byte	57                              ; DW_OP_lit9
	.byte	159                             ; DW_OP_stack_value
.set Lset320, Ltmp189-Lfunc_begin0
	.quad	Lset320
.set Lset321, Ltmp193-Lfunc_begin0
	.quad	Lset321
	.short	2                               ; Loc expr size
	.byte	57                              ; DW_OP_lit9
	.byte	159                             ; DW_OP_stack_value
.set Lset322, Ltmp210-Lfunc_begin0
	.quad	Lset322
.set Lset323, Ltmp213-Lfunc_begin0
	.quad	Lset323
	.short	2                               ; Loc expr size
	.byte	57                              ; DW_OP_lit9
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc41:
.set Lset324, Ltmp177-Lfunc_begin0
	.quad	Lset324
.set Lset325, Ltmp187-Lfunc_begin0
	.quad	Lset325
	.short	3                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	184                             ; 184
	.byte	1                               ; 
.set Lset326, Ltmp189-Lfunc_begin0
	.quad	Lset326
.set Lset327, Ltmp193-Lfunc_begin0
	.quad	Lset327
	.short	3                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	184                             ; 184
	.byte	1                               ; 
.set Lset328, Ltmp210-Lfunc_begin0
	.quad	Lset328
.set Lset329, Ltmp213-Lfunc_begin0
	.quad	Lset329
	.short	3                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	184                             ; 184
	.byte	1                               ; 
	.quad	0
	.quad	0
Ldebug_loc42:
.set Lset330, Ltmp177-Lfunc_begin0
	.quad	Lset330
.set Lset331, Ltmp187-Lfunc_begin0
	.quad	Lset331
	.short	3                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	128                             ; 128
	.byte	1                               ; 
.set Lset332, Ltmp189-Lfunc_begin0
	.quad	Lset332
.set Lset333, Ltmp193-Lfunc_begin0
	.quad	Lset333
	.short	3                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	128                             ; 128
	.byte	1                               ; 
.set Lset334, Ltmp210-Lfunc_begin0
	.quad	Lset334
.set Lset335, Ltmp213-Lfunc_begin0
	.quad	Lset335
	.short	3                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	128                             ; 128
	.byte	1                               ; 
	.quad	0
	.quad	0
Ldebug_loc43:
.set Lset336, Ltmp177-Lfunc_begin0
	.quad	Lset336
.set Lset337, Ltmp183-Lfunc_begin0
	.quad	Lset337
	.short	3                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	32                              ; DW_OP_not
	.byte	159                             ; DW_OP_stack_value
.set Lset338, Ltmp183-Lfunc_begin0
	.quad	Lset338
.set Lset339, Ltmp187-Lfunc_begin0
	.quad	Lset339
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
.set Lset340, Ltmp189-Lfunc_begin0
	.quad	Lset340
.set Lset341, Ltmp193-Lfunc_begin0
	.quad	Lset341
	.short	3                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	32                              ; DW_OP_not
	.byte	159                             ; DW_OP_stack_value
.set Lset342, Ltmp210-Lfunc_begin0
	.quad	Lset342
.set Lset343, Ltmp213-Lfunc_begin0
	.quad	Lset343
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
	.quad	0
	.quad	0
Ldebug_loc44:
.set Lset344, Ltmp188-Lfunc_begin0
	.quad	Lset344
.set Lset345, Ltmp189-Lfunc_begin0
	.quad	Lset345
	.short	1                               ; Loc expr size
	.byte	101                             ; DW_OP_reg21
.set Lset346, Ltmp194-Lfunc_begin0
	.quad	Lset346
.set Lset347, Ltmp196-Lfunc_begin0
	.quad	Lset347
	.short	1                               ; Loc expr size
	.byte	101                             ; DW_OP_reg21
.set Lset348, Ltmp197-Lfunc_begin0
	.quad	Lset348
.set Lset349, Ltmp206-Lfunc_begin0
	.quad	Lset349
	.short	1                               ; Loc expr size
	.byte	101                             ; DW_OP_reg21
.set Lset350, Ltmp212-Lfunc_begin0
	.quad	Lset350
.set Lset351, Ltmp213-Lfunc_begin0
	.quad	Lset351
	.short	1                               ; Loc expr size
	.byte	101                             ; DW_OP_reg21
.set Lset352, Ltmp217-Lfunc_begin0
	.quad	Lset352
.set Lset353, Ltmp220-Lfunc_begin0
	.quad	Lset353
	.short	1                               ; Loc expr size
	.byte	101                             ; DW_OP_reg21
.set Lset354, Ltmp233-Lfunc_begin0
	.quad	Lset354
.set Lset355, Ltmp293-Lfunc_begin0
	.quad	Lset355
	.short	1                               ; Loc expr size
	.byte	101                             ; DW_OP_reg21
	.quad	0
	.quad	0
Ldebug_loc45:
.set Lset356, Ltmp188-Lfunc_begin0
	.quad	Lset356
.set Lset357, Ltmp189-Lfunc_begin0
	.quad	Lset357
	.short	4                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	51                              ; DW_OP_lit3
	.byte	37                              ; DW_OP_shr
	.byte	159                             ; DW_OP_stack_value
.set Lset358, Ltmp194-Lfunc_begin0
	.quad	Lset358
.set Lset359, Ltmp196-Lfunc_begin0
	.quad	Lset359
	.short	4                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	51                              ; DW_OP_lit3
	.byte	37                              ; DW_OP_shr
	.byte	159                             ; DW_OP_stack_value
.set Lset360, Ltmp197-Lfunc_begin0
	.quad	Lset360
.set Lset361, Ltmp202-Lfunc_begin0
	.quad	Lset361
	.short	4                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	51                              ; DW_OP_lit3
	.byte	37                              ; DW_OP_shr
	.byte	159                             ; DW_OP_stack_value
.set Lset362, Ltmp203-Lfunc_begin0
	.quad	Lset362
.set Lset363, Ltmp204-Lfunc_begin0
	.quad	Lset363
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
.set Lset364, Ltmp204-Lfunc_begin0
	.quad	Lset364
.set Lset365, Ltmp205-Lfunc_begin0
	.quad	Lset365
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
.set Lset366, Ltmp205-Lfunc_begin0
	.quad	Lset366
.set Lset367, Ltmp206-Lfunc_begin0
	.quad	Lset367
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
.set Lset368, Ltmp212-Lfunc_begin0
	.quad	Lset368
.set Lset369, Ltmp213-Lfunc_begin0
	.quad	Lset369
	.short	4                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	51                              ; DW_OP_lit3
	.byte	37                              ; DW_OP_shr
	.byte	159                             ; DW_OP_stack_value
.set Lset370, Ltmp217-Lfunc_begin0
	.quad	Lset370
.set Lset371, Ltmp218-Lfunc_begin0
	.quad	Lset371
	.short	4                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	51                              ; DW_OP_lit3
	.byte	37                              ; DW_OP_shr
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc46:
.set Lset372, Ltmp188-Lfunc_begin0
	.quad	Lset372
.set Lset373, Ltmp189-Lfunc_begin0
	.quad	Lset373
	.short	2                               ; Loc expr size
	.byte	57                              ; DW_OP_lit9
	.byte	159                             ; DW_OP_stack_value
.set Lset374, Ltmp194-Lfunc_begin0
	.quad	Lset374
.set Lset375, Ltmp196-Lfunc_begin0
	.quad	Lset375
	.short	2                               ; Loc expr size
	.byte	57                              ; DW_OP_lit9
	.byte	159                             ; DW_OP_stack_value
.set Lset376, Ltmp197-Lfunc_begin0
	.quad	Lset376
.set Lset377, Ltmp206-Lfunc_begin0
	.quad	Lset377
	.short	2                               ; Loc expr size
	.byte	57                              ; DW_OP_lit9
	.byte	159                             ; DW_OP_stack_value
.set Lset378, Ltmp212-Lfunc_begin0
	.quad	Lset378
.set Lset379, Ltmp213-Lfunc_begin0
	.quad	Lset379
	.short	2                               ; Loc expr size
	.byte	57                              ; DW_OP_lit9
	.byte	159                             ; DW_OP_stack_value
.set Lset380, Ltmp217-Lfunc_begin0
	.quad	Lset380
.set Lset381, Ltmp220-Lfunc_begin0
	.quad	Lset381
	.short	2                               ; Loc expr size
	.byte	57                              ; DW_OP_lit9
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc47:
.set Lset382, Ltmp188-Lfunc_begin0
	.quad	Lset382
.set Lset383, Ltmp189-Lfunc_begin0
	.quad	Lset383
	.short	3                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	184                             ; 184
	.byte	1                               ; 
.set Lset384, Ltmp194-Lfunc_begin0
	.quad	Lset384
.set Lset385, Ltmp196-Lfunc_begin0
	.quad	Lset385
	.short	3                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	184                             ; 184
	.byte	1                               ; 
.set Lset386, Ltmp197-Lfunc_begin0
	.quad	Lset386
.set Lset387, Ltmp206-Lfunc_begin0
	.quad	Lset387
	.short	3                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	184                             ; 184
	.byte	1                               ; 
.set Lset388, Ltmp212-Lfunc_begin0
	.quad	Lset388
.set Lset389, Ltmp213-Lfunc_begin0
	.quad	Lset389
	.short	3                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	184                             ; 184
	.byte	1                               ; 
.set Lset390, Ltmp217-Lfunc_begin0
	.quad	Lset390
.set Lset391, Ltmp220-Lfunc_begin0
	.quad	Lset391
	.short	3                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	184                             ; 184
	.byte	1                               ; 
	.quad	0
	.quad	0
Ldebug_loc48:
.set Lset392, Ltmp188-Lfunc_begin0
	.quad	Lset392
.set Lset393, Ltmp189-Lfunc_begin0
	.quad	Lset393
	.short	3                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	132                             ; 132
	.byte	1                               ; 
.set Lset394, Ltmp194-Lfunc_begin0
	.quad	Lset394
.set Lset395, Ltmp196-Lfunc_begin0
	.quad	Lset395
	.short	3                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	132                             ; 132
	.byte	1                               ; 
.set Lset396, Ltmp197-Lfunc_begin0
	.quad	Lset396
.set Lset397, Ltmp206-Lfunc_begin0
	.quad	Lset397
	.short	3                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	132                             ; 132
	.byte	1                               ; 
.set Lset398, Ltmp212-Lfunc_begin0
	.quad	Lset398
.set Lset399, Ltmp213-Lfunc_begin0
	.quad	Lset399
	.short	3                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	132                             ; 132
	.byte	1                               ; 
.set Lset400, Ltmp217-Lfunc_begin0
	.quad	Lset400
.set Lset401, Ltmp220-Lfunc_begin0
	.quad	Lset401
	.short	3                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	132                             ; 132
	.byte	1                               ; 
	.quad	0
	.quad	0
Ldebug_loc49:
.set Lset402, Ltmp188-Lfunc_begin0
	.quad	Lset402
.set Lset403, Ltmp189-Lfunc_begin0
	.quad	Lset403
	.short	3                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	32                              ; DW_OP_not
	.byte	159                             ; DW_OP_stack_value
.set Lset404, Ltmp194-Lfunc_begin0
	.quad	Lset404
.set Lset405, Ltmp196-Lfunc_begin0
	.quad	Lset405
	.short	3                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	32                              ; DW_OP_not
	.byte	159                             ; DW_OP_stack_value
.set Lset406, Ltmp197-Lfunc_begin0
	.quad	Lset406
.set Lset407, Ltmp202-Lfunc_begin0
	.quad	Lset407
	.short	3                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	32                              ; DW_OP_not
	.byte	159                             ; DW_OP_stack_value
.set Lset408, Ltmp202-Lfunc_begin0
	.quad	Lset408
.set Lset409, Ltmp206-Lfunc_begin0
	.quad	Lset409
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
.set Lset410, Ltmp212-Lfunc_begin0
	.quad	Lset410
.set Lset411, Ltmp213-Lfunc_begin0
	.quad	Lset411
	.short	3                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	32                              ; DW_OP_not
	.byte	159                             ; DW_OP_stack_value
.set Lset412, Ltmp217-Lfunc_begin0
	.quad	Lset412
.set Lset413, Ltmp218-Lfunc_begin0
	.quad	Lset413
	.short	3                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	32                              ; DW_OP_not
	.byte	159                             ; DW_OP_stack_value
.set Lset414, Ltmp218-Lfunc_begin0
	.quad	Lset414
.set Lset415, Ltmp220-Lfunc_begin0
	.quad	Lset415
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
	.quad	0
	.quad	0
Ldebug_loc50:
.set Lset416, Ltmp220-Lfunc_begin0
	.quad	Lset416
.set Lset417, Ltmp222-Lfunc_begin0
	.quad	Lset417
	.short	1                               ; Loc expr size
	.byte	107                             ; DW_OP_reg27
.set Lset418, Ltmp223-Lfunc_begin0
	.quad	Lset418
.set Lset419, Ltmp230-Lfunc_begin0
	.quad	Lset419
	.short	1                               ; Loc expr size
	.byte	107                             ; DW_OP_reg27
.set Lset420, Ltmp233-Lfunc_begin0
	.quad	Lset420
.set Lset421, Ltmp293-Lfunc_begin0
	.quad	Lset421
	.short	1                               ; Loc expr size
	.byte	107                             ; DW_OP_reg27
	.quad	0
	.quad	0
Ldebug_loc51:
.set Lset422, Ltmp233-Lfunc_begin0
	.quad	Lset422
.set Lset423, Ltmp293-Lfunc_begin0
	.quad	Lset423
	.short	1                               ; Loc expr size
	.byte	103                             ; DW_OP_reg23
	.quad	0
	.quad	0
Ldebug_loc52:
.set Lset424, Ltmp235-Lfunc_begin0
	.quad	Lset424
.set Lset425, Ltmp236-Lfunc_begin0
	.quad	Lset425
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
.set Lset426, Ltmp236-Lfunc_begin0
	.quad	Lset426
.set Lset427, Ltmp293-Lfunc_begin0
	.quad	Lset427
	.short	3                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	192                             ; 320
	.byte	2                               ; 
	.quad	0
	.quad	0
Ldebug_loc53:
.set Lset428, Ltmp238-Lfunc_begin0
	.quad	Lset428
.set Lset429, Ltmp243-Lfunc_begin0
	.quad	Lset429
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
.set Lset430, Ltmp245-Lfunc_begin0
	.quad	Lset430
.set Lset431, Ltmp247-Lfunc_begin0
	.quad	Lset431
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
.set Lset432, Ltmp247-Lfunc_begin0
	.quad	Lset432
.set Lset433, Ltmp249-Lfunc_begin0
	.quad	Lset433
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
.set Lset434, Ltmp278-Lfunc_begin0
	.quad	Lset434
.set Lset435, Ltmp289-Lfunc_begin0
	.quad	Lset435
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
.set Lset436, Ltmp291-Lfunc_begin0
	.quad	Lset436
.set Lset437, Ltmp292-Lfunc_begin0
	.quad	Lset437
	.short	1                               ; Loc expr size
	.byte	102                             ; DW_OP_reg22
	.quad	0
	.quad	0
Ldebug_loc54:
.set Lset438, Ltmp238-Lfunc_begin0
	.quad	Lset438
.set Lset439, Ltmp246-Lfunc_begin0
	.quad	Lset439
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
.set Lset440, Ltmp277-Lfunc_begin0
	.quad	Lset440
.set Lset441, Ltmp290-Lfunc_begin0
	.quad	Lset441
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
.set Lset442, Ltmp291-Lfunc_begin0
	.quad	Lset442
.set Lset443, Ltmp293-Lfunc_begin0
	.quad	Lset443
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
	.quad	0
	.quad	0
Ldebug_loc55:
.set Lset444, Ltmp238-Lfunc_begin0
	.quad	Lset444
.set Lset445, Ltmp245-Lfunc_begin0
	.quad	Lset445
	.short	1                               ; Loc expr size
	.byte	106                             ; DW_OP_reg26
.set Lset446, Ltmp277-Lfunc_begin0
	.quad	Lset446
.set Lset447, Ltmp292-Lfunc_begin0
	.quad	Lset447
	.short	1                               ; Loc expr size
	.byte	106                             ; DW_OP_reg26
	.quad	0
	.quad	0
Ldebug_loc56:
.set Lset448, Ltmp238-Lfunc_begin0
	.quad	Lset448
.set Lset449, Ltmp249-Lfunc_begin0
	.quad	Lset449
	.short	1                               ; Loc expr size
	.byte	102                             ; DW_OP_reg22
.set Lset450, Ltmp277-Lfunc_begin0
	.quad	Lset450
.set Lset451, Ltmp293-Lfunc_begin0
	.quad	Lset451
	.short	1                               ; Loc expr size
	.byte	102                             ; DW_OP_reg22
	.quad	0
	.quad	0
Ldebug_loc57:
.set Lset452, Ltmp238-Lfunc_begin0
	.quad	Lset452
.set Lset453, Ltmp246-Lfunc_begin0
	.quad	Lset453
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
.set Lset454, Ltmp277-Lfunc_begin0
	.quad	Lset454
.set Lset455, Ltmp290-Lfunc_begin0
	.quad	Lset455
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
.set Lset456, Ltmp291-Lfunc_begin0
	.quad	Lset456
.set Lset457, Ltmp293-Lfunc_begin0
	.quad	Lset457
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
	.quad	0
	.quad	0
Ldebug_loc58:
.set Lset458, Ltmp238-Lfunc_begin0
	.quad	Lset458
.set Lset459, Ltmp253-Lfunc_begin0
	.quad	Lset459
	.short	1                               ; Loc expr size
	.byte	108                             ; DW_OP_reg28
.set Lset460, Ltmp272-Lfunc_begin0
	.quad	Lset460
.set Lset461, Ltmp293-Lfunc_begin0
	.quad	Lset461
	.short	1                               ; Loc expr size
	.byte	108                             ; DW_OP_reg28
	.quad	0
	.quad	0
Ldebug_loc59:
.set Lset462, Ltmp238-Lfunc_begin0
	.quad	Lset462
.set Lset463, Ltmp245-Lfunc_begin0
	.quad	Lset463
	.short	1                               ; Loc expr size
	.byte	102                             ; DW_OP_reg22
.set Lset464, Ltmp271-Lfunc_begin0
	.quad	Lset464
.set Lset465, Ltmp292-Lfunc_begin0
	.quad	Lset465
	.short	1                               ; Loc expr size
	.byte	102                             ; DW_OP_reg22
	.quad	0
	.quad	0
Ldebug_loc60:
.set Lset466, Ltmp238-Lfunc_begin0
	.quad	Lset466
.set Lset467, Ltmp245-Lfunc_begin0
	.quad	Lset467
	.short	1                               ; Loc expr size
	.byte	106                             ; DW_OP_reg26
.set Lset468, Ltmp265-Lfunc_begin0
	.quad	Lset468
.set Lset469, Ltmp292-Lfunc_begin0
	.quad	Lset469
	.short	1                               ; Loc expr size
	.byte	106                             ; DW_OP_reg26
	.quad	0
	.quad	0
Ldebug_loc61:
.set Lset470, Ltmp250-Lfunc_begin0
	.quad	Lset470
.set Lset471, Ltmp252-Lfunc_begin0
	.quad	Lset471
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
	.quad	0
	.quad	0
Ldebug_loc62:
.set Lset472, Ltmp256-Lfunc_begin0
	.quad	Lset472
.set Lset473, Ltmp262-Lfunc_begin0
	.quad	Lset473
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
	.quad	0
	.quad	0
Ldebug_loc63:
.set Lset474, Ltmp258-Lfunc_begin0
	.quad	Lset474
.set Lset475, Ltmp271-Lfunc_begin0
	.quad	Lset475
	.short	1                               ; Loc expr size
	.byte	102                             ; DW_OP_reg22
	.quad	0
	.quad	0
Ldebug_loc64:
.set Lset476, Ltmp260-Lfunc_begin0
	.quad	Lset476
.set Lset477, Ltmp261-Lfunc_begin0
	.quad	Lset477
	.short	2                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	159                             ; DW_OP_stack_value
.set Lset478, Ltmp261-Lfunc_begin0
	.quad	Lset478
.set Lset479, Ltmp263-Lfunc_begin0
	.quad	Lset479
	.short	3                               ; Loc expr size
	.byte	141                             ; DW_OP_breg29
	.byte	224                             ; -160
	.byte	126                             ; 
.set Lset480, Ltmp263-Lfunc_begin0
	.quad	Lset480
.set Lset481, Ltmp264-Lfunc_begin0
	.quad	Lset481
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
	.quad	0
	.quad	0
Ldebug_loc65:
.set Lset482, Ltmp260-Lfunc_begin0
	.quad	Lset482
.set Lset483, Ltmp262-Lfunc_begin0
	.quad	Lset483
	.short	1                               ; Loc expr size
	.byte	81                              ; DW_OP_reg1
	.quad	0
	.quad	0
Ldebug_loc66:
.set Lset484, Ltmp266-Lfunc_begin0
	.quad	Lset484
.set Lset485, Ltmp267-Lfunc_begin0
	.quad	Lset485
	.short	2                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	159                             ; DW_OP_stack_value
.set Lset486, Ltmp267-Lfunc_begin0
	.quad	Lset486
.set Lset487, Ltmp269-Lfunc_begin0
	.quad	Lset487
	.short	3                               ; Loc expr size
	.byte	141                             ; DW_OP_breg29
	.byte	224                             ; -160
	.byte	126                             ; 
.set Lset488, Ltmp269-Lfunc_begin0
	.quad	Lset488
.set Lset489, Ltmp270-Lfunc_begin0
	.quad	Lset489
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
	.quad	0
	.quad	0
Ldebug_loc67:
.set Lset490, Ltmp266-Lfunc_begin0
	.quad	Lset490
.set Lset491, Ltmp268-Lfunc_begin0
	.quad	Lset491
	.short	1                               ; Loc expr size
	.byte	81                              ; DW_OP_reg1
	.quad	0
	.quad	0
Ldebug_loc68:
.set Lset492, Ltmp272-Lfunc_begin0
	.quad	Lset492
.set Lset493, Ltmp273-Lfunc_begin0
	.quad	Lset493
	.short	2                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	159                             ; DW_OP_stack_value
.set Lset494, Ltmp273-Lfunc_begin0
	.quad	Lset494
.set Lset495, Ltmp275-Lfunc_begin0
	.quad	Lset495
	.short	3                               ; Loc expr size
	.byte	141                             ; DW_OP_breg29
	.byte	224                             ; -160
	.byte	126                             ; 
.set Lset496, Ltmp275-Lfunc_begin0
	.quad	Lset496
.set Lset497, Ltmp276-Lfunc_begin0
	.quad	Lset497
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
	.quad	0
	.quad	0
Ldebug_loc69:
.set Lset498, Ltmp305-Lfunc_begin0
	.quad	Lset498
.set Lset499, Ltmp306-Lfunc_begin0
	.quad	Lset499
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
.set Lset500, Ltmp306-Lfunc_begin0
	.quad	Lset500
.set Lset501, Ltmp339-Lfunc_begin0
	.quad	Lset501
	.short	1                               ; Loc expr size
	.byte	99                              ; DW_OP_reg19
	.quad	0
	.quad	0
Ldebug_loc70:
.set Lset502, Ltmp316-Lfunc_begin0
	.quad	Lset502
.set Lset503, Ltmp318-Lfunc_begin0
	.quad	Lset503
	.short	1                               ; Loc expr size
	.byte	106                             ; DW_OP_reg26
.set Lset504, Ltmp334-Lfunc_begin0
	.quad	Lset504
.set Lset505, Ltmp339-Lfunc_begin0
	.quad	Lset505
	.short	1                               ; Loc expr size
	.byte	106                             ; DW_OP_reg26
	.quad	0
	.quad	0
Ldebug_loc71:
.set Lset506, Ltmp316-Lfunc_begin0
	.quad	Lset506
.set Lset507, Ltmp317-Lfunc_begin0
	.quad	Lset507
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
.set Lset508, Ltmp330-Lfunc_begin0
	.quad	Lset508
.set Lset509, Ltmp333-Lfunc_begin0
	.quad	Lset509
	.short	3                               ; Loc expr size
	.byte	141                             ; DW_OP_breg29
	.byte	208                             ; -304
	.byte	125                             ; 
.set Lset510, Ltmp333-Lfunc_begin0
	.quad	Lset510
.set Lset511, Ltmp336-Lfunc_begin0
	.quad	Lset511
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
	.quad	0
	.quad	0
Ldebug_loc72:
.set Lset512, Ltmp316-Lfunc_begin0
	.quad	Lset512
.set Lset513, Ltmp318-Lfunc_begin0
	.quad	Lset513
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
.set Lset514, Ltmp330-Lfunc_begin0
	.quad	Lset514
.set Lset515, Ltmp339-Lfunc_begin0
	.quad	Lset515
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
	.quad	0
	.quad	0
Ldebug_loc73:
.set Lset516, Ltmp318-Lfunc_begin0
	.quad	Lset516
.set Lset517, Ltmp319-Lfunc_begin0
	.quad	Lset517
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
.set Lset518, Ltmp330-Lfunc_begin0
	.quad	Lset518
.set Lset519, Ltmp331-Lfunc_begin0
	.quad	Lset519
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
	.quad	0
	.quad	0
Ldebug_loc74:
.set Lset520, Ltmp325-Lfunc_begin0
	.quad	Lset520
.set Lset521, Ltmp326-Lfunc_begin0
	.quad	Lset521
	.short	2                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	159                             ; DW_OP_stack_value
.set Lset522, Ltmp326-Lfunc_begin0
	.quad	Lset522
.set Lset523, Ltmp328-Lfunc_begin0
	.quad	Lset523
	.short	3                               ; Loc expr size
	.byte	141                             ; DW_OP_breg29
	.byte	224                             ; -160
	.byte	126                             ; 
.set Lset524, Ltmp328-Lfunc_begin0
	.quad	Lset524
.set Lset525, Ltmp329-Lfunc_begin0
	.quad	Lset525
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
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
	.byte	3                               ; Abbreviation Code
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
	.byte	4                               ; Abbreviation Code
	.byte	15                              ; DW_TAG_pointer_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	5                               ; Abbreviation Code
	.byte	38                              ; DW_TAG_const_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	6                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.ascii	"\347\177"                      ; DW_AT_APPLE_omit_frame_ptr
	.byte	25                              ; DW_FORM_flag_present
	.byte	64                              ; DW_AT_frame_base
	.byte	24                              ; DW_FORM_exprloc
	.byte	122                             ; DW_AT_call_all_calls
	.byte	25                              ; DW_FORM_flag_present
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	7                               ; Abbreviation Code
	.byte	5                               ; DW_TAG_formal_parameter
	.byte	0                               ; DW_CHILDREN_no
	.byte	2                               ; DW_AT_location
	.byte	23                              ; DW_FORM_sec_offset
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	8                               ; Abbreviation Code
	.byte	5                               ; DW_TAG_formal_parameter
	.byte	0                               ; DW_CHILDREN_no
	.byte	2                               ; DW_AT_location
	.byte	24                              ; DW_FORM_exprloc
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	9                               ; Abbreviation Code
	.byte	52                              ; DW_TAG_variable
	.byte	0                               ; DW_CHILDREN_no
	.byte	2                               ; DW_AT_location
	.byte	23                              ; DW_FORM_sec_offset
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	10                              ; Abbreviation Code
	.byte	11                              ; DW_TAG_lexical_block
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	11                              ; Abbreviation Code
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
	.byte	12                              ; Abbreviation Code
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
	.byte	13                              ; Abbreviation Code
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
	.byte	14                              ; Abbreviation Code
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
	.byte	15                              ; Abbreviation Code
	.byte	15                              ; DW_TAG_pointer_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	16                              ; Abbreviation Code
	.byte	38                              ; DW_TAG_const_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	17                              ; Abbreviation Code
	.byte	11                              ; DW_TAG_lexical_block
	.byte	1                               ; DW_CHILDREN_yes
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	18                              ; Abbreviation Code
	.byte	1                               ; DW_TAG_array_type
	.byte	1                               ; DW_CHILDREN_yes
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	19                              ; Abbreviation Code
	.byte	33                              ; DW_TAG_subrange_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	55                              ; DW_AT_count
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	20                              ; Abbreviation Code
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
	.byte	21                              ; Abbreviation Code
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
	.byte	63                              ; DW_AT_external
	.byte	25                              ; DW_FORM_flag_present
	.ascii	"\341\177"                      ; DW_AT_APPLE_optimized
	.byte	25                              ; DW_FORM_flag_present
	.byte	32                              ; DW_AT_inline
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	22                              ; Abbreviation Code
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
	.byte	23                              ; Abbreviation Code
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
	.byte	24                              ; Abbreviation Code
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
	.byte	25                              ; Abbreviation Code
	.byte	11                              ; DW_TAG_lexical_block
	.byte	1                               ; DW_CHILDREN_yes
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	26                              ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	1                               ; DW_CHILDREN_yes
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	11                              ; DW_FORM_data1
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	27                              ; Abbreviation Code
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
	.byte	28                              ; Abbreviation Code
	.byte	52                              ; DW_TAG_variable
	.byte	0                               ; DW_CHILDREN_no
	.byte	2                               ; DW_AT_location
	.byte	24                              ; DW_FORM_exprloc
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	29                              ; Abbreviation Code
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
	.byte	30                              ; Abbreviation Code
	.byte	5                               ; DW_TAG_formal_parameter
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	31                              ; Abbreviation Code
	.byte	72                              ; DW_TAG_call_site
	.byte	1                               ; DW_CHILDREN_yes
	.byte	127                             ; DW_AT_call_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	125                             ; DW_AT_call_return_pc
	.byte	1                               ; DW_FORM_addr
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	32                              ; Abbreviation Code
	.byte	73                              ; DW_TAG_call_site_parameter
	.byte	0                               ; DW_CHILDREN_no
	.byte	2                               ; DW_AT_location
	.byte	24                              ; DW_FORM_exprloc
	.byte	126                             ; DW_AT_call_value
	.byte	24                              ; DW_FORM_exprloc
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
	.byte	60                              ; DW_AT_declaration
	.byte	25                              ; DW_FORM_flag_present
	.byte	63                              ; DW_AT_external
	.byte	25                              ; DW_FORM_flag_present
	.ascii	"\341\177"                      ; DW_AT_APPLE_optimized
	.byte	25                              ; DW_FORM_flag_present
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	34                              ; Abbreviation Code
	.byte	5                               ; DW_TAG_formal_parameter
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	35                              ; Abbreviation Code
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
	.byte	36                              ; Abbreviation Code
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
	.byte	38                              ; Abbreviation Code
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
	.byte	0                               ; EOM(3)
	.section	__DWARF,__debug_info,regular,debug
Lsection_info:
Lcu_begin0:
.set Lset526, Ldebug_info_end0-Ldebug_info_start0 ; Length of Unit
	.long	Lset526
Ldebug_info_start0:
	.short	4                               ; DWARF version number
.set Lset527, Lsection_abbrev-Lsection_abbrev ; Offset Into Abbrev. Section
	.long	Lset527
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0xb90 DW_TAG_compile_unit
	.long	0                               ; DW_AT_producer
	.short	12                              ; DW_AT_language
	.long	46                              ; DW_AT_name
	.long	55                              ; DW_AT_LLVM_sysroot
	.long	107                             ; DW_AT_APPLE_sdk
.set Lset528, Lline_table_start0-Lsection_line ; DW_AT_stmt_list
	.long	Lset528
	.long	118                             ; DW_AT_comp_dir
                                        ; DW_AT_APPLE_optimized
	.quad	Lfunc_begin0                    ; DW_AT_low_pc
.set Lset529, Lfunc_end2-Lfunc_begin0   ; DW_AT_high_pc
	.long	Lset529
	.byte	2                               ; Abbrev [2] 0x32:0xb DW_TAG_typedef
	.long	61                              ; DW_AT_type
	.long	172                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	31                              ; DW_AT_decl_line
	.byte	3                               ; Abbrev [3] 0x3d:0x7 DW_TAG_base_type
	.long	181                             ; DW_AT_name
	.byte	7                               ; DW_AT_encoding
	.byte	8                               ; DW_AT_byte_size
	.byte	4                               ; Abbrev [4] 0x44:0x5 DW_TAG_pointer_type
	.long	73                              ; DW_AT_type
	.byte	5                               ; Abbrev [5] 0x49:0x5 DW_TAG_const_type
	.long	78                              ; DW_AT_type
	.byte	2                               ; Abbrev [2] 0x4e:0xb DW_TAG_typedef
	.long	89                              ; DW_AT_type
	.long	200                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	31                              ; DW_AT_decl_line
	.byte	3                               ; Abbrev [3] 0x59:0x7 DW_TAG_base_type
	.long	208                             ; DW_AT_name
	.byte	8                               ; DW_AT_encoding
	.byte	1                               ; DW_AT_byte_size
	.byte	4                               ; Abbrev [4] 0x60:0x5 DW_TAG_pointer_type
	.long	78                              ; DW_AT_type
	.byte	6                               ; Abbrev [6] 0x65:0x64 DW_TAG_subprogram
	.quad	Lfunc_begin0                    ; DW_AT_low_pc
.set Lset530, Lfunc_end0-Lfunc_begin0   ; DW_AT_high_pc
	.long	Lset530
                                        ; DW_AT_APPLE_omit_frame_ptr
	.byte	1                               ; DW_AT_frame_base
	.byte	111
                                        ; DW_AT_call_all_calls
	.long	727                             ; DW_AT_abstract_origin
	.byte	7                               ; Abbrev [7] 0x78:0x9 DW_TAG_formal_parameter
.set Lset531, Ldebug_loc0-Lsection_debug_loc ; DW_AT_location
	.long	Lset531
	.long	739                             ; DW_AT_abstract_origin
	.byte	7                               ; Abbrev [7] 0x81:0x9 DW_TAG_formal_parameter
.set Lset532, Ldebug_loc1-Lsection_debug_loc ; DW_AT_location
	.long	Lset532
	.long	750                             ; DW_AT_abstract_origin
	.byte	8                               ; Abbrev [8] 0x8a:0x7 DW_TAG_formal_parameter
	.byte	1                               ; DW_AT_location
	.byte	82
	.long	761                             ; DW_AT_abstract_origin
	.byte	9                               ; Abbrev [9] 0x91:0x9 DW_TAG_variable
.set Lset533, Ldebug_loc2-Lsection_debug_loc ; DW_AT_location
	.long	Lset533
	.long	772                             ; DW_AT_abstract_origin
	.byte	10                              ; Abbrev [10] 0x9a:0x2e DW_TAG_lexical_block
	.quad	Ltmp4                           ; DW_AT_low_pc
.set Lset534, Ltmp14-Ltmp4              ; DW_AT_high_pc
	.long	Lset534
	.byte	9                               ; Abbrev [9] 0xa7:0x9 DW_TAG_variable
.set Lset535, Ldebug_loc3-Lsection_debug_loc ; DW_AT_location
	.long	Lset535
	.long	784                             ; DW_AT_abstract_origin
	.byte	10                              ; Abbrev [10] 0xb0:0x17 DW_TAG_lexical_block
	.quad	Ltmp10                          ; DW_AT_low_pc
.set Lset536, Ltmp13-Ltmp10             ; DW_AT_high_pc
	.long	Lset536
	.byte	9                               ; Abbrev [9] 0xbd:0x9 DW_TAG_variable
.set Lset537, Ldebug_loc4-Lsection_debug_loc ; DW_AT_location
	.long	Lset537
	.long	796                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0xc9:0x44 DW_TAG_subprogram
	.quad	Lfunc_begin1                    ; DW_AT_low_pc
.set Lset538, Lfunc_end1-Lfunc_begin1   ; DW_AT_high_pc
	.long	Lset538
                                        ; DW_AT_APPLE_omit_frame_ptr
	.byte	1                               ; DW_AT_frame_base
	.byte	111
                                        ; DW_AT_call_all_calls
	.long	524                             ; DW_AT_abstract_origin
	.byte	7                               ; Abbrev [7] 0xdc:0x9 DW_TAG_formal_parameter
.set Lset539, Ldebug_loc5-Lsection_debug_loc ; DW_AT_location
	.long	Lset539
	.long	536                             ; DW_AT_abstract_origin
	.byte	7                               ; Abbrev [7] 0xe5:0x9 DW_TAG_formal_parameter
.set Lset540, Ldebug_loc6-Lsection_debug_loc ; DW_AT_location
	.long	Lset540
	.long	547                             ; DW_AT_abstract_origin
	.byte	8                               ; Abbrev [8] 0xee:0x7 DW_TAG_formal_parameter
	.byte	1                               ; DW_AT_location
	.byte	82
	.long	558                             ; DW_AT_abstract_origin
	.byte	8                               ; Abbrev [8] 0xf5:0x7 DW_TAG_formal_parameter
	.byte	1                               ; DW_AT_location
	.byte	83
	.long	569                             ; DW_AT_abstract_origin
	.byte	8                               ; Abbrev [8] 0xfc:0x7 DW_TAG_formal_parameter
	.byte	1                               ; DW_AT_location
	.byte	84
	.long	580                             ; DW_AT_abstract_origin
	.byte	9                               ; Abbrev [9] 0x103:0x9 DW_TAG_variable
.set Lset541, Ldebug_loc7-Lsection_debug_loc ; DW_AT_location
	.long	Lset541
	.long	591                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	11                              ; Abbrev [11] 0x10d:0x44 DW_TAG_subprogram
	.long	250                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	65                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	50                              ; DW_AT_type
                                        ; DW_AT_APPLE_optimized
	.byte	1                               ; DW_AT_inline
	.byte	12                              ; Abbrev [12] 0x119:0xb DW_TAG_formal_parameter
	.long	266                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	65                              ; DW_AT_decl_line
	.long	337                             ; DW_AT_type
	.byte	12                              ; Abbrev [12] 0x124:0xb DW_TAG_formal_parameter
	.long	292                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	65                              ; DW_AT_decl_line
	.long	337                             ; DW_AT_type
	.byte	12                              ; Abbrev [12] 0x12f:0xb DW_TAG_formal_parameter
	.long	294                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	65                              ; DW_AT_decl_line
	.long	337                             ; DW_AT_type
	.byte	13                              ; Abbrev [13] 0x13a:0xb DW_TAG_variable
	.long	303                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	66                              ; DW_AT_decl_line
	.long	337                             ; DW_AT_type
	.byte	13                              ; Abbrev [13] 0x145:0xb DW_TAG_variable
	.long	308                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	69                              ; DW_AT_decl_line
	.long	50                              ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x151:0xb DW_TAG_typedef
	.long	348                             ; DW_AT_type
	.long	270                             ; DW_AT_name
	.byte	5                               ; DW_AT_decl_file
	.byte	31                              ; DW_AT_decl_line
	.byte	3                               ; Abbrev [3] 0x15c:0x7 DW_TAG_base_type
	.long	279                             ; DW_AT_name
	.byte	7                               ; DW_AT_encoding
	.byte	4                               ; DW_AT_byte_size
	.byte	14                              ; Abbrev [14] 0x163:0x35 DW_TAG_subprogram
	.long	312                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	41                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_APPLE_optimized
	.byte	1                               ; DW_AT_inline
	.byte	12                              ; Abbrev [12] 0x16b:0xb DW_TAG_formal_parameter
	.long	324                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	41                              ; DW_AT_decl_line
	.long	408                             ; DW_AT_type
	.byte	12                              ; Abbrev [12] 0x176:0xb DW_TAG_formal_parameter
	.long	328                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	41                              ; DW_AT_decl_line
	.long	409                             ; DW_AT_type
	.byte	12                              ; Abbrev [12] 0x181:0xb DW_TAG_formal_parameter
	.long	332                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	41                              ; DW_AT_decl_line
	.long	50                              ; DW_AT_type
	.byte	13                              ; Abbrev [13] 0x18c:0xb DW_TAG_variable
	.long	339                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	42                              ; DW_AT_decl_line
	.long	50                              ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	15                              ; Abbrev [15] 0x198:0x1 DW_TAG_pointer_type
	.byte	4                               ; Abbrev [4] 0x199:0x5 DW_TAG_pointer_type
	.long	414                             ; DW_AT_type
	.byte	16                              ; Abbrev [16] 0x19e:0x1 DW_TAG_const_type
	.byte	14                              ; Abbrev [14] 0x19f:0x5a DW_TAG_subprogram
	.long	345                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	49                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_APPLE_optimized
	.byte	1                               ; DW_AT_inline
	.byte	12                              ; Abbrev [12] 0x1a7:0xb DW_TAG_formal_parameter
	.long	324                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	49                              ; DW_AT_decl_line
	.long	96                              ; DW_AT_type
	.byte	12                              ; Abbrev [12] 0x1b2:0xb DW_TAG_formal_parameter
	.long	356                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	49                              ; DW_AT_decl_line
	.long	337                             ; DW_AT_type
	.byte	12                              ; Abbrev [12] 0x1bd:0xb DW_TAG_formal_parameter
	.long	364                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	49                              ; DW_AT_decl_line
	.long	337                             ; DW_AT_type
	.byte	17                              ; Abbrev [17] 0x1c8:0x30 DW_TAG_lexical_block
	.byte	13                              ; Abbrev [13] 0x1c9:0xb DW_TAG_variable
	.long	328                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	51                              ; DW_AT_decl_line
	.long	505                             ; DW_AT_type
	.byte	13                              ; Abbrev [13] 0x1d4:0xb DW_TAG_variable
	.long	391                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	53                              ; DW_AT_decl_line
	.long	337                             ; DW_AT_type
	.byte	17                              ; Abbrev [17] 0x1df:0x18 DW_TAG_lexical_block
	.byte	13                              ; Abbrev [13] 0x1e0:0xb DW_TAG_variable
	.long	396                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	54                              ; DW_AT_decl_line
	.long	337                             ; DW_AT_type
	.byte	13                              ; Abbrev [13] 0x1eb:0xb DW_TAG_variable
	.long	401                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	54                              ; DW_AT_decl_line
	.long	337                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	18                              ; Abbrev [18] 0x1f9:0xc DW_TAG_array_type
	.long	78                              ; DW_AT_type
	.byte	19                              ; Abbrev [19] 0x1fe:0x6 DW_TAG_subrange_type
	.long	517                             ; DW_AT_type
	.byte	64                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	20                              ; Abbrev [20] 0x205:0x7 DW_TAG_base_type
	.long	371                             ; DW_AT_name
	.byte	8                               ; DW_AT_byte_size
	.byte	7                               ; DW_AT_encoding
	.byte	21                              ; Abbrev [21] 0x20c:0x4f DW_TAG_subprogram
	.long	239                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	37                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	603                             ; DW_AT_type
                                        ; DW_AT_external
                                        ; DW_AT_APPLE_optimized
	.byte	1                               ; DW_AT_inline
	.byte	12                              ; Abbrev [12] 0x218:0xb DW_TAG_formal_parameter
	.long	424                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	37                              ; DW_AT_decl_line
	.long	603                             ; DW_AT_type
	.byte	12                              ; Abbrev [12] 0x223:0xb DW_TAG_formal_parameter
	.long	426                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	37                              ; DW_AT_decl_line
	.long	603                             ; DW_AT_type
	.byte	12                              ; Abbrev [12] 0x22e:0xb DW_TAG_formal_parameter
	.long	428                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	37                              ; DW_AT_decl_line
	.long	603                             ; DW_AT_type
	.byte	12                              ; Abbrev [12] 0x239:0xb DW_TAG_formal_parameter
	.long	430                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	37                              ; DW_AT_decl_line
	.long	621                             ; DW_AT_type
	.byte	12                              ; Abbrev [12] 0x244:0xb DW_TAG_formal_parameter
	.long	442                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	37                              ; DW_AT_decl_line
	.long	337                             ; DW_AT_type
	.byte	13                              ; Abbrev [13] 0x24f:0xb DW_TAG_variable
	.long	266                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	38                              ; DW_AT_decl_line
	.long	603                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x25b:0xb DW_TAG_typedef
	.long	614                             ; DW_AT_type
	.long	406                             ; DW_AT_name
	.byte	6                               ; DW_AT_decl_file
	.byte	30                              ; DW_AT_decl_line
	.byte	3                               ; Abbrev [3] 0x266:0x7 DW_TAG_base_type
	.long	414                             ; DW_AT_name
	.byte	5                               ; DW_AT_encoding
	.byte	8                               ; DW_AT_byte_size
	.byte	3                               ; Abbrev [3] 0x26d:0x7 DW_TAG_base_type
	.long	438                             ; DW_AT_name
	.byte	5                               ; DW_AT_encoding
	.byte	4                               ; DW_AT_byte_size
	.byte	14                              ; Abbrev [14] 0x274:0x2a DW_TAG_subprogram
	.long	448                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	37                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_APPLE_optimized
	.byte	1                               ; DW_AT_inline
	.byte	12                              ; Abbrev [12] 0x27c:0xb DW_TAG_formal_parameter
	.long	324                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	37                              ; DW_AT_decl_line
	.long	408                             ; DW_AT_type
	.byte	12                              ; Abbrev [12] 0x287:0xb DW_TAG_formal_parameter
	.long	458                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	37                              ; DW_AT_decl_line
	.long	337                             ; DW_AT_type
	.byte	12                              ; Abbrev [12] 0x292:0xb DW_TAG_formal_parameter
	.long	266                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	37                              ; DW_AT_decl_line
	.long	603                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	11                              ; Abbrev [11] 0x29e:0x39 DW_TAG_subprogram
	.long	465                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	31                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	603                             ; DW_AT_type
                                        ; DW_AT_APPLE_optimized
	.byte	1                               ; DW_AT_inline
	.byte	12                              ; Abbrev [12] 0x2aa:0xb DW_TAG_formal_parameter
	.long	328                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	31                              ; DW_AT_decl_line
	.long	409                             ; DW_AT_type
	.byte	12                              ; Abbrev [12] 0x2b5:0xb DW_TAG_formal_parameter
	.long	458                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	31                              ; DW_AT_decl_line
	.long	337                             ; DW_AT_type
	.byte	12                              ; Abbrev [12] 0x2c0:0xb DW_TAG_formal_parameter
	.long	474                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	31                              ; DW_AT_decl_line
	.long	337                             ; DW_AT_type
	.byte	13                              ; Abbrev [13] 0x2cb:0xb DW_TAG_variable
	.long	266                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	32                              ; DW_AT_decl_line
	.long	603                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	21                              ; Abbrev [21] 0x2d7:0x53 DW_TAG_subprogram
	.long	222                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	15                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	603                             ; DW_AT_type
                                        ; DW_AT_external
                                        ; DW_AT_APPLE_optimized
	.byte	1                               ; DW_AT_inline
	.byte	12                              ; Abbrev [12] 0x2e3:0xb DW_TAG_formal_parameter
	.long	266                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	15                              ; DW_AT_decl_line
	.long	603                             ; DW_AT_type
	.byte	12                              ; Abbrev [12] 0x2ee:0xb DW_TAG_formal_parameter
	.long	482                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	15                              ; DW_AT_decl_line
	.long	337                             ; DW_AT_type
	.byte	12                              ; Abbrev [12] 0x2f9:0xb DW_TAG_formal_parameter
	.long	490                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	15                              ; DW_AT_decl_line
	.long	50                              ; DW_AT_type
	.byte	13                              ; Abbrev [13] 0x304:0xb DW_TAG_variable
	.long	442                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	16                              ; DW_AT_decl_line
	.long	337                             ; DW_AT_type
	.byte	17                              ; Abbrev [17] 0x30f:0x1a DW_TAG_lexical_block
	.byte	13                              ; Abbrev [13] 0x310:0xb DW_TAG_variable
	.long	498                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	25                              ; DW_AT_decl_line
	.long	603                             ; DW_AT_type
	.byte	17                              ; Abbrev [17] 0x31b:0xd DW_TAG_lexical_block
	.byte	13                              ; Abbrev [13] 0x31c:0xb DW_TAG_variable
	.long	501                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	27                              ; DW_AT_decl_line
	.long	603                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	22                              ; Abbrev [22] 0x32a:0x6bf DW_TAG_subprogram
	.quad	Lfunc_begin2                    ; DW_AT_low_pc
.set Lset542, Lfunc_end2-Lfunc_begin2   ; DW_AT_high_pc
	.long	Lset542
	.byte	1                               ; DW_AT_frame_base
	.byte	109
                                        ; DW_AT_call_all_calls
	.long	504                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	64                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_external
                                        ; DW_AT_APPLE_optimized
	.byte	23                              ; Abbrev [23] 0x33f:0xf DW_TAG_formal_parameter
.set Lset543, Ldebug_loc8-Lsection_debug_loc ; DW_AT_location
	.long	Lset543
	.long	543                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	64                              ; DW_AT_decl_line
	.long	2565                            ; DW_AT_type
	.byte	23                              ; Abbrev [23] 0x34e:0xf DW_TAG_formal_parameter
.set Lset544, Ldebug_loc9-Lsection_debug_loc ; DW_AT_location
	.long	Lset544
	.long	490                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	64                              ; DW_AT_decl_line
	.long	50                              ; DW_AT_type
	.byte	24                              ; Abbrev [24] 0x35d:0xf DW_TAG_variable
.set Lset545, Ldebug_loc10-Lsection_debug_loc ; DW_AT_location
	.long	Lset545
	.long	688                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	73                              ; DW_AT_decl_line
	.long	2883                            ; DW_AT_type
	.byte	24                              ; Abbrev [24] 0x36c:0xf DW_TAG_variable
.set Lset546, Ldebug_loc11-Lsection_debug_loc ; DW_AT_location
	.long	Lset546
	.long	695                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	72                              ; DW_AT_decl_line
	.long	50                              ; DW_AT_type
	.byte	24                              ; Abbrev [24] 0x37b:0xf DW_TAG_variable
.set Lset547, Ldebug_loc12-Lsection_debug_loc ; DW_AT_location
	.long	Lset547
	.long	702                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	71                              ; DW_AT_decl_line
	.long	50                              ; DW_AT_type
	.byte	24                              ; Abbrev [24] 0x38a:0xf DW_TAG_variable
.set Lset548, Ldebug_loc13-Lsection_debug_loc ; DW_AT_location
	.long	Lset548
	.long	709                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	70                              ; DW_AT_decl_line
	.long	50                              ; DW_AT_type
	.byte	24                              ; Abbrev [24] 0x399:0xf DW_TAG_variable
.set Lset549, Ldebug_loc14-Lsection_debug_loc ; DW_AT_location
	.long	Lset549
	.long	716                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	69                              ; DW_AT_decl_line
	.long	50                              ; DW_AT_type
	.byte	24                              ; Abbrev [24] 0x3a8:0xf DW_TAG_variable
.set Lset550, Ldebug_loc16-Lsection_debug_loc ; DW_AT_location
	.long	Lset550
	.long	430                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	91                              ; DW_AT_decl_line
	.long	621                             ; DW_AT_type
	.byte	24                              ; Abbrev [24] 0x3b7:0xf DW_TAG_variable
.set Lset551, Ldebug_loc17-Lsection_debug_loc ; DW_AT_location
	.long	Lset551
	.long	728                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	94                              ; DW_AT_decl_line
	.long	337                             ; DW_AT_type
	.byte	24                              ; Abbrev [24] 0x3c6:0xf DW_TAG_variable
.set Lset552, Ldebug_loc18-Lsection_debug_loc ; DW_AT_location
	.long	Lset552
	.long	734                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	94                              ; DW_AT_decl_line
	.long	337                             ; DW_AT_type
	.byte	24                              ; Abbrev [24] 0x3d5:0xf DW_TAG_variable
.set Lset553, Ldebug_loc19-Lsection_debug_loc ; DW_AT_location
	.long	Lset553
	.long	442                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	92                              ; DW_AT_decl_line
	.long	337                             ; DW_AT_type
	.byte	24                              ; Abbrev [24] 0x3e4:0xf DW_TAG_variable
.set Lset554, Ldebug_loc20-Lsection_debug_loc ; DW_AT_location
	.long	Lset554
	.long	740                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	94                              ; DW_AT_decl_line
	.long	337                             ; DW_AT_type
	.byte	24                              ; Abbrev [24] 0x3f3:0xf DW_TAG_variable
.set Lset555, Ldebug_loc21-Lsection_debug_loc ; DW_AT_location
	.long	Lset555
	.long	746                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	117                             ; DW_AT_decl_line
	.long	337                             ; DW_AT_type
	.byte	24                              ; Abbrev [24] 0x402:0xf DW_TAG_variable
.set Lset556, Ldebug_loc22-Lsection_debug_loc ; DW_AT_location
	.long	Lset556
	.long	753                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	118                             ; DW_AT_decl_line
	.long	337                             ; DW_AT_type
	.byte	24                              ; Abbrev [24] 0x411:0xf DW_TAG_variable
.set Lset557, Ldebug_loc23-Lsection_debug_loc ; DW_AT_location
	.long	Lset557
	.long	760                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	119                             ; DW_AT_decl_line
	.long	337                             ; DW_AT_type
	.byte	24                              ; Abbrev [24] 0x420:0xf DW_TAG_variable
.set Lset558, Ldebug_loc29-Lsection_debug_loc ; DW_AT_location
	.long	Lset558
	.long	767                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	145                             ; DW_AT_decl_line
	.long	50                              ; DW_AT_type
	.byte	24                              ; Abbrev [24] 0x42f:0xf DW_TAG_variable
.set Lset559, Ldebug_loc30-Lsection_debug_loc ; DW_AT_location
	.long	Lset559
	.long	776                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	144                             ; DW_AT_decl_line
	.long	50                              ; DW_AT_type
	.byte	13                              ; Abbrev [13] 0x43e:0xb DW_TAG_variable
	.long	858                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	89                              ; DW_AT_decl_line
	.long	2883                            ; DW_AT_type
	.byte	13                              ; Abbrev [13] 0x449:0xb DW_TAG_variable
	.long	864                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	90                              ; DW_AT_decl_line
	.long	2963                            ; DW_AT_type
	.byte	13                              ; Abbrev [13] 0x454:0xb DW_TAG_variable
	.long	482                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	94                              ; DW_AT_decl_line
	.long	337                             ; DW_AT_type
	.byte	10                              ; Abbrev [10] 0x45f:0x1d DW_TAG_lexical_block
	.quad	Ltmp50                          ; DW_AT_low_pc
.set Lset560, Ltmp72-Ltmp50             ; DW_AT_high_pc
	.long	Lset560
	.byte	24                              ; Abbrev [24] 0x46c:0xf DW_TAG_variable
.set Lset561, Ldebug_loc15-Lsection_debug_loc ; DW_AT_location
	.long	Lset561
	.long	722                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	75                              ; DW_AT_decl_line
	.long	50                              ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	25                              ; Abbrev [25] 0x47c:0x115 DW_TAG_lexical_block
.set Lset562, Ldebug_ranges0-Ldebug_range ; DW_AT_ranges
	.long	Lset562
	.byte	24                              ; Abbrev [24] 0x481:0xf DW_TAG_variable
.set Lset563, Ldebug_loc69-Lsection_debug_loc ; DW_AT_location
	.long	Lset563
	.long	847                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	125                             ; DW_AT_decl_line
	.long	50                              ; DW_AT_type
	.byte	13                              ; Abbrev [13] 0x490:0xb DW_TAG_variable
	.long	882                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	124                             ; DW_AT_decl_line
	.long	337                             ; DW_AT_type
	.byte	26                              ; Abbrev [26] 0x49b:0x3a DW_TAG_inlined_subroutine
	.long	269                             ; DW_AT_abstract_origin
.set Lset564, Ldebug_ranges1-Ldebug_range ; DW_AT_ranges
	.long	Lset564
	.byte	3                               ; DW_AT_call_file
	.byte	125                             ; DW_AT_call_line
	.byte	31                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x4a7:0x9 DW_TAG_formal_parameter
.set Lset565, Ldebug_loc24-Lsection_debug_loc ; DW_AT_location
	.long	Lset565
	.long	281                             ; DW_AT_abstract_origin
	.byte	7                               ; Abbrev [7] 0x4b0:0x9 DW_TAG_formal_parameter
.set Lset566, Ldebug_loc26-Lsection_debug_loc ; DW_AT_location
	.long	Lset566
	.long	292                             ; DW_AT_abstract_origin
	.byte	7                               ; Abbrev [7] 0x4b9:0x9 DW_TAG_formal_parameter
.set Lset567, Ldebug_loc25-Lsection_debug_loc ; DW_AT_location
	.long	Lset567
	.long	303                             ; DW_AT_abstract_origin
	.byte	9                               ; Abbrev [9] 0x4c2:0x9 DW_TAG_variable
.set Lset568, Ldebug_loc27-Lsection_debug_loc ; DW_AT_location
	.long	Lset568
	.long	314                             ; DW_AT_abstract_origin
	.byte	9                               ; Abbrev [9] 0x4cb:0x9 DW_TAG_variable
.set Lset569, Ldebug_loc28-Lsection_debug_loc ; DW_AT_location
	.long	Lset569
	.long	325                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	10                              ; Abbrev [10] 0x4d5:0xbb DW_TAG_lexical_block
	.quad	Ltmp316                         ; DW_AT_low_pc
.set Lset570, Ltmp339-Ltmp316           ; DW_AT_high_pc
	.long	Lset570
	.byte	27                              ; Abbrev [27] 0x4e2:0xd DW_TAG_variable
	.byte	1                               ; DW_AT_location
	.byte	103
	.long	817                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	131                             ; DW_AT_decl_line
	.long	337                             ; DW_AT_type
	.byte	25                              ; Abbrev [25] 0x4ef:0xa0 DW_TAG_lexical_block
.set Lset571, Ldebug_ranges2-Ldebug_range ; DW_AT_ranges
	.long	Lset571
	.byte	24                              ; Abbrev [24] 0x4f4:0xf DW_TAG_variable
.set Lset572, Ldebug_loc73-Lsection_debug_loc ; DW_AT_location
	.long	Lset572
	.long	266                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	133                             ; DW_AT_decl_line
	.long	603                             ; DW_AT_type
	.byte	26                              ; Abbrev [26] 0x503:0x45 DW_TAG_inlined_subroutine
	.long	727                             ; DW_AT_abstract_origin
.set Lset573, Ldebug_ranges3-Ldebug_range ; DW_AT_ranges
	.long	Lset573
	.byte	3                               ; DW_AT_call_file
	.byte	134                             ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x50f:0x9 DW_TAG_formal_parameter
.set Lset574, Ldebug_loc72-Lsection_debug_loc ; DW_AT_location
	.long	Lset574
	.long	739                             ; DW_AT_abstract_origin
	.byte	7                               ; Abbrev [7] 0x518:0x9 DW_TAG_formal_parameter
.set Lset575, Ldebug_loc71-Lsection_debug_loc ; DW_AT_location
	.long	Lset575
	.long	761                             ; DW_AT_abstract_origin
	.byte	25                              ; Abbrev [25] 0x521:0x26 DW_TAG_lexical_block
.set Lset576, Ldebug_ranges4-Ldebug_range ; DW_AT_ranges
	.long	Lset576
	.byte	9                               ; Abbrev [9] 0x526:0x9 DW_TAG_variable
.set Lset577, Ldebug_loc70-Lsection_debug_loc ; DW_AT_location
	.long	Lset577
	.long	784                             ; DW_AT_abstract_origin
	.byte	10                              ; Abbrev [10] 0x52f:0x17 DW_TAG_lexical_block
	.quad	Ltmp336                         ; DW_AT_low_pc
.set Lset578, Ltmp339-Ltmp336           ; DW_AT_high_pc
	.long	Lset578
	.byte	28                              ; Abbrev [28] 0x53c:0x9 DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	145
	.ascii	"\300}"
	.long	796                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	29                              ; Abbrev [29] 0x548:0x23 DW_TAG_inlined_subroutine
	.long	628                             ; DW_AT_abstract_origin
	.quad	Ltmp320                         ; DW_AT_low_pc
.set Lset579, Ltmp321-Ltmp320           ; DW_AT_high_pc
	.long	Lset579
	.byte	3                               ; DW_AT_call_file
	.byte	135                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	30                              ; Abbrev [30] 0x55c:0x5 DW_TAG_formal_parameter
	.long	636                             ; DW_AT_abstract_origin
	.byte	8                               ; Abbrev [8] 0x561:0x9 DW_TAG_formal_parameter
	.byte	3                               ; DW_AT_location
	.byte	145
	.ascii	"\340~"
	.long	658                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	29                              ; Abbrev [29] 0x56b:0x23 DW_TAG_inlined_subroutine
	.long	670                             ; DW_AT_abstract_origin
	.quad	Ltmp324                         ; DW_AT_low_pc
.set Lset580, Ltmp330-Ltmp324           ; DW_AT_high_pc
	.long	Lset580
	.byte	3                               ; DW_AT_call_file
	.byte	133                             ; DW_AT_call_line
	.byte	31                              ; DW_AT_call_column
	.byte	30                              ; Abbrev [30] 0x57f:0x5 DW_TAG_formal_parameter
	.long	682                             ; DW_AT_abstract_origin
	.byte	9                               ; Abbrev [9] 0x584:0x9 DW_TAG_variable
.set Lset581, Ldebug_loc74-Lsection_debug_loc ; DW_AT_location
	.long	Lset581
	.long	715                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	10                              ; Abbrev [10] 0x591:0x409 DW_TAG_lexical_block
	.quad	Ltmp136                         ; DW_AT_low_pc
.set Lset582, Ltmp293-Ltmp136           ; DW_AT_high_pc
	.long	Lset582
	.byte	27                              ; Abbrev [27] 0x59e:0xf DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	145
	.ascii	"\240~"
	.long	424                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	147                             ; DW_AT_decl_line
	.long	505                             ; DW_AT_type
	.byte	27                              ; Abbrev [27] 0x5ad:0xf DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	145
	.ascii	"\340}"
	.long	426                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	148                             ; DW_AT_decl_line
	.long	505                             ; DW_AT_type
	.byte	24                              ; Abbrev [24] 0x5bc:0xf DW_TAG_variable
.set Lset583, Ldebug_loc44-Lsection_debug_loc ; DW_AT_location
	.long	Lset583
	.long	799                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	171                             ; DW_AT_decl_line
	.long	50                              ; DW_AT_type
	.byte	24                              ; Abbrev [24] 0x5cb:0xf DW_TAG_variable
.set Lset584, Ldebug_loc50-Lsection_debug_loc ; DW_AT_location
	.long	Lset584
	.long	808                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	172                             ; DW_AT_decl_line
	.long	50                              ; DW_AT_type
	.byte	24                              ; Abbrev [24] 0x5da:0xf DW_TAG_variable
.set Lset585, Ldebug_loc51-Lsection_debug_loc ; DW_AT_location
	.long	Lset585
	.long	391                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	188                             ; DW_AT_decl_line
	.long	337                             ; DW_AT_type
	.byte	24                              ; Abbrev [24] 0x5e9:0xf DW_TAG_variable
.set Lset586, Ldebug_loc52-Lsection_debug_loc ; DW_AT_location
	.long	Lset586
	.long	819                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	189                             ; DW_AT_decl_line
	.long	337                             ; DW_AT_type
	.byte	13                              ; Abbrev [13] 0x5f8:0xb DW_TAG_variable
	.long	891                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	185                             ; DW_AT_decl_line
	.long	337                             ; DW_AT_type
	.byte	13                              ; Abbrev [13] 0x603:0xb DW_TAG_variable
	.long	900                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	186                             ; DW_AT_decl_line
	.long	337                             ; DW_AT_type
	.byte	13                              ; Abbrev [13] 0x60e:0xb DW_TAG_variable
	.long	882                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	187                             ; DW_AT_decl_line
	.long	337                             ; DW_AT_type
	.byte	29                              ; Abbrev [29] 0x619:0x3a DW_TAG_inlined_subroutine
	.long	355                             ; DW_AT_abstract_origin
	.quad	Ltmp138                         ; DW_AT_low_pc
.set Lset587, Ltmp142-Ltmp138           ; DW_AT_high_pc
	.long	Lset587
	.byte	3                               ; DW_AT_call_file
	.byte	149                             ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x62d:0xa DW_TAG_formal_parameter
	.byte	4                               ; DW_AT_location
	.byte	145
	.ascii	"\240~"
	.byte	159
	.long	363                             ; DW_AT_abstract_origin
	.byte	8                               ; Abbrev [8] 0x637:0x9 DW_TAG_formal_parameter
	.byte	3                               ; DW_AT_location
	.byte	143
	.ascii	"\320\002"
	.long	374                             ; DW_AT_abstract_origin
	.byte	7                               ; Abbrev [7] 0x640:0x9 DW_TAG_formal_parameter
.set Lset588, Ldebug_loc31-Lsection_debug_loc ; DW_AT_location
	.long	Lset588
	.long	385                             ; DW_AT_abstract_origin
	.byte	9                               ; Abbrev [9] 0x649:0x9 DW_TAG_variable
.set Lset589, Ldebug_loc32-Lsection_debug_loc ; DW_AT_location
	.long	Lset589
	.long	396                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	29                              ; Abbrev [29] 0x653:0x3a DW_TAG_inlined_subroutine
	.long	355                             ; DW_AT_abstract_origin
	.quad	Ltmp143                         ; DW_AT_low_pc
.set Lset590, Ltmp147-Ltmp143           ; DW_AT_high_pc
	.long	Lset590
	.byte	3                               ; DW_AT_call_file
	.byte	150                             ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x667:0xa DW_TAG_formal_parameter
	.byte	4                               ; DW_AT_location
	.byte	145
	.ascii	"\340}"
	.byte	159
	.long	363                             ; DW_AT_abstract_origin
	.byte	8                               ; Abbrev [8] 0x671:0x9 DW_TAG_formal_parameter
	.byte	3                               ; DW_AT_location
	.byte	143
	.ascii	"\300\001"
	.long	374                             ; DW_AT_abstract_origin
	.byte	7                               ; Abbrev [7] 0x67a:0x9 DW_TAG_formal_parameter
.set Lset591, Ldebug_loc33-Lsection_debug_loc ; DW_AT_location
	.long	Lset591
	.long	385                             ; DW_AT_abstract_origin
	.byte	9                               ; Abbrev [9] 0x683:0x9 DW_TAG_variable
.set Lset592, Ldebug_loc34-Lsection_debug_loc ; DW_AT_location
	.long	Lset592
	.long	396                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	10                              ; Abbrev [10] 0x68d:0x34 DW_TAG_lexical_block
	.quad	Ltmp149                         ; DW_AT_low_pc
.set Lset593, Ltmp154-Ltmp149           ; DW_AT_high_pc
	.long	Lset593
	.byte	27                              ; Abbrev [27] 0x69a:0xf DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	143
	.ascii	"\210\001"
	.long	785                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	153                             ; DW_AT_decl_line
	.long	337                             ; DW_AT_type
	.byte	27                              ; Abbrev [27] 0x6a9:0x17 DW_TAG_variable
	.byte	11                              ; DW_AT_location
	.byte	145
	.ascii	"\320}"
	.byte	148
	.byte	8
	.byte	16
	.byte	49
	.byte	37
	.byte	55
	.byte	26
	.byte	159
	.long	791                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	152                             ; DW_AT_decl_line
	.long	337                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	29                              ; Abbrev [29] 0x6c1:0x70 DW_TAG_inlined_subroutine
	.long	415                             ; DW_AT_abstract_origin
	.quad	Ltmp155                         ; DW_AT_low_pc
.set Lset594, Ltmp166-Ltmp155           ; DW_AT_high_pc
	.long	Lset594
	.byte	3                               ; DW_AT_call_file
	.byte	162                             ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x6d5:0xa DW_TAG_formal_parameter
	.byte	4                               ; DW_AT_location
	.byte	145
	.ascii	"\240~"
	.byte	159
	.long	423                             ; DW_AT_abstract_origin
	.byte	8                               ; Abbrev [8] 0x6df:0x9 DW_TAG_formal_parameter
	.byte	3                               ; DW_AT_location
	.byte	143
	.ascii	"\244\001"
	.long	434                             ; DW_AT_abstract_origin
	.byte	8                               ; Abbrev [8] 0x6e8:0xa DW_TAG_formal_parameter
	.byte	4                               ; DW_AT_location
	.byte	48
	.byte	51
	.byte	37
	.byte	159
	.long	445                             ; DW_AT_abstract_origin
	.byte	10                              ; Abbrev [10] 0x6f2:0x3e DW_TAG_lexical_block
	.quad	Ltmp157                         ; DW_AT_low_pc
.set Lset595, Ltmp166-Ltmp157           ; DW_AT_high_pc
	.long	Lset595
	.byte	28                              ; Abbrev [28] 0x6ff:0x9 DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	145
	.ascii	"\340~"
	.long	457                             ; DW_AT_abstract_origin
	.byte	9                               ; Abbrev [9] 0x708:0x9 DW_TAG_variable
.set Lset596, Ldebug_loc35-Lsection_debug_loc ; DW_AT_location
	.long	Lset596
	.long	468                             ; DW_AT_abstract_origin
	.byte	10                              ; Abbrev [10] 0x711:0x1e DW_TAG_lexical_block
	.quad	Ltmp159                         ; DW_AT_low_pc
.set Lset597, Ltmp166-Ltmp159           ; DW_AT_high_pc
	.long	Lset597
	.byte	9                               ; Abbrev [9] 0x71e:0x9 DW_TAG_variable
.set Lset598, Ldebug_loc36-Lsection_debug_loc ; DW_AT_location
	.long	Lset598
	.long	480                             ; DW_AT_abstract_origin
	.byte	28                              ; Abbrev [28] 0x727:0x7 DW_TAG_variable
	.byte	1                               ; DW_AT_location
	.byte	99
	.long	491                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	29                              ; Abbrev [29] 0x731:0x70 DW_TAG_inlined_subroutine
	.long	415                             ; DW_AT_abstract_origin
	.quad	Ltmp167                         ; DW_AT_low_pc
.set Lset599, Ltmp177-Ltmp167           ; DW_AT_high_pc
	.long	Lset599
	.byte	3                               ; DW_AT_call_file
	.byte	163                             ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x745:0xa DW_TAG_formal_parameter
	.byte	4                               ; DW_AT_location
	.byte	145
	.ascii	"\340}"
	.byte	159
	.long	423                             ; DW_AT_abstract_origin
	.byte	8                               ; Abbrev [8] 0x74f:0x9 DW_TAG_formal_parameter
	.byte	3                               ; DW_AT_location
	.byte	143
	.ascii	"\234\001"
	.long	434                             ; DW_AT_abstract_origin
	.byte	8                               ; Abbrev [8] 0x758:0xa DW_TAG_formal_parameter
	.byte	4                               ; DW_AT_location
	.byte	48
	.byte	51
	.byte	37
	.byte	159
	.long	445                             ; DW_AT_abstract_origin
	.byte	10                              ; Abbrev [10] 0x762:0x3e DW_TAG_lexical_block
	.quad	Ltmp169                         ; DW_AT_low_pc
.set Lset600, Ltmp177-Ltmp169           ; DW_AT_high_pc
	.long	Lset600
	.byte	28                              ; Abbrev [28] 0x76f:0x9 DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	145
	.ascii	"\340~"
	.long	457                             ; DW_AT_abstract_origin
	.byte	9                               ; Abbrev [9] 0x778:0x9 DW_TAG_variable
.set Lset601, Ldebug_loc38-Lsection_debug_loc ; DW_AT_location
	.long	Lset601
	.long	468                             ; DW_AT_abstract_origin
	.byte	10                              ; Abbrev [10] 0x781:0x1e DW_TAG_lexical_block
	.quad	Ltmp170                         ; DW_AT_low_pc
.set Lset602, Ltmp177-Ltmp170           ; DW_AT_high_pc
	.long	Lset602
	.byte	9                               ; Abbrev [9] 0x78e:0x9 DW_TAG_variable
.set Lset603, Ldebug_loc37-Lsection_debug_loc ; DW_AT_location
	.long	Lset603
	.long	480                             ; DW_AT_abstract_origin
	.byte	28                              ; Abbrev [28] 0x797:0x7 DW_TAG_variable
	.byte	1                               ; DW_AT_location
	.byte	99
	.long	491                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	26                              ; Abbrev [26] 0x7a1:0x3a DW_TAG_inlined_subroutine
	.long	269                             ; DW_AT_abstract_origin
.set Lset604, Ldebug_ranges5-Ldebug_range ; DW_AT_ranges
	.long	Lset604
	.byte	3                               ; DW_AT_call_file
	.byte	171                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x7ad:0x9 DW_TAG_formal_parameter
.set Lset605, Ldebug_loc42-Lsection_debug_loc ; DW_AT_location
	.long	Lset605
	.long	281                             ; DW_AT_abstract_origin
	.byte	7                               ; Abbrev [7] 0x7b6:0x9 DW_TAG_formal_parameter
.set Lset606, Ldebug_loc39-Lsection_debug_loc ; DW_AT_location
	.long	Lset606
	.long	292                             ; DW_AT_abstract_origin
	.byte	7                               ; Abbrev [7] 0x7bf:0x9 DW_TAG_formal_parameter
.set Lset607, Ldebug_loc40-Lsection_debug_loc ; DW_AT_location
	.long	Lset607
	.long	303                             ; DW_AT_abstract_origin
	.byte	9                               ; Abbrev [9] 0x7c8:0x9 DW_TAG_variable
.set Lset608, Ldebug_loc41-Lsection_debug_loc ; DW_AT_location
	.long	Lset608
	.long	314                             ; DW_AT_abstract_origin
	.byte	9                               ; Abbrev [9] 0x7d1:0x9 DW_TAG_variable
.set Lset609, Ldebug_loc43-Lsection_debug_loc ; DW_AT_location
	.long	Lset609
	.long	325                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	26                              ; Abbrev [26] 0x7db:0x3a DW_TAG_inlined_subroutine
	.long	269                             ; DW_AT_abstract_origin
.set Lset610, Ldebug_ranges6-Ldebug_range ; DW_AT_ranges
	.long	Lset610
	.byte	3                               ; DW_AT_call_file
	.byte	172                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x7e7:0x9 DW_TAG_formal_parameter
.set Lset611, Ldebug_loc48-Lsection_debug_loc ; DW_AT_location
	.long	Lset611
	.long	281                             ; DW_AT_abstract_origin
	.byte	7                               ; Abbrev [7] 0x7f0:0x9 DW_TAG_formal_parameter
.set Lset612, Ldebug_loc45-Lsection_debug_loc ; DW_AT_location
	.long	Lset612
	.long	292                             ; DW_AT_abstract_origin
	.byte	7                               ; Abbrev [7] 0x7f9:0x9 DW_TAG_formal_parameter
.set Lset613, Ldebug_loc46-Lsection_debug_loc ; DW_AT_location
	.long	Lset613
	.long	303                             ; DW_AT_abstract_origin
	.byte	9                               ; Abbrev [9] 0x802:0x9 DW_TAG_variable
.set Lset614, Ldebug_loc47-Lsection_debug_loc ; DW_AT_location
	.long	Lset614
	.long	314                             ; DW_AT_abstract_origin
	.byte	9                               ; Abbrev [9] 0x80b:0x9 DW_TAG_variable
.set Lset615, Ldebug_loc49-Lsection_debug_loc ; DW_AT_location
	.long	Lset615
	.long	325                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	10                              ; Abbrev [10] 0x815:0x1d DW_TAG_lexical_block
	.quad	Ltmp224                         ; DW_AT_low_pc
.set Lset616, Ltmp230-Ltmp224           ; DW_AT_high_pc
	.long	Lset616
	.byte	27                              ; Abbrev [27] 0x822:0xf DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	143
	.asciz	"\370"
	.long	266                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	177                             ; DW_AT_decl_line
	.long	337                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	10                              ; Abbrev [10] 0x832:0x167 DW_TAG_lexical_block
	.quad	Ltmp239                         ; DW_AT_low_pc
.set Lset617, Ltmp293-Ltmp239           ; DW_AT_high_pc
	.long	Lset617
	.byte	27                              ; Abbrev [27] 0x83f:0xd DW_TAG_variable
	.byte	1                               ; DW_AT_location
	.byte	99
	.long	817                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	190                             ; DW_AT_decl_line
	.long	337                             ; DW_AT_type
	.byte	25                              ; Abbrev [25] 0x84c:0x14c DW_TAG_lexical_block
.set Lset618, Ldebug_ranges7-Ldebug_range ; DW_AT_ranges
	.long	Lset618
	.byte	24                              ; Abbrev [24] 0x851:0xf DW_TAG_variable
.set Lset619, Ldebug_loc54-Lsection_debug_loc ; DW_AT_location
	.long	Lset619
	.long	825                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	199                             ; DW_AT_decl_line
	.long	603                             ; DW_AT_type
	.byte	24                              ; Abbrev [24] 0x860:0xf DW_TAG_variable
.set Lset620, Ldebug_loc58-Lsection_debug_loc ; DW_AT_location
	.long	Lset620
	.long	428                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	198                             ; DW_AT_decl_line
	.long	408                             ; DW_AT_type
	.byte	24                              ; Abbrev [24] 0x86f:0xf DW_TAG_variable
.set Lset621, Ldebug_loc59-Lsection_debug_loc ; DW_AT_location
	.long	Lset621
	.long	828                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	197                             ; DW_AT_decl_line
	.long	603                             ; DW_AT_type
	.byte	24                              ; Abbrev [24] 0x87e:0xf DW_TAG_variable
.set Lset622, Ldebug_loc60-Lsection_debug_loc ; DW_AT_location
	.long	Lset622
	.long	831                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	196                             ; DW_AT_decl_line
	.long	603                             ; DW_AT_type
	.byte	24                              ; Abbrev [24] 0x88d:0xf DW_TAG_variable
.set Lset623, Ldebug_loc61-Lsection_debug_loc ; DW_AT_location
	.long	Lset623
	.long	834                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	200                             ; DW_AT_decl_line
	.long	603                             ; DW_AT_type
	.byte	24                              ; Abbrev [24] 0x89c:0xf DW_TAG_variable
.set Lset624, Ldebug_loc62-Lsection_debug_loc ; DW_AT_location
	.long	Lset624
	.long	841                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	191                             ; DW_AT_decl_line
	.long	337                             ; DW_AT_type
	.byte	24                              ; Abbrev [24] 0x8ab:0xf DW_TAG_variable
.set Lset625, Ldebug_loc63-Lsection_debug_loc ; DW_AT_location
	.long	Lset625
	.long	844                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	193                             ; DW_AT_decl_line
	.long	337                             ; DW_AT_type
	.byte	26                              ; Abbrev [26] 0x8ba:0x31 DW_TAG_inlined_subroutine
	.long	524                             ; DW_AT_abstract_origin
.set Lset626, Ldebug_ranges8-Ldebug_range ; DW_AT_ranges
	.long	Lset626
	.byte	3                               ; DW_AT_call_file
	.byte	200                             ; DW_AT_call_line
	.byte	30                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x8c6:0x9 DW_TAG_formal_parameter
.set Lset627, Ldebug_loc55-Lsection_debug_loc ; DW_AT_location
	.long	Lset627
	.long	536                             ; DW_AT_abstract_origin
	.byte	7                               ; Abbrev [7] 0x8cf:0x9 DW_TAG_formal_parameter
.set Lset628, Ldebug_loc56-Lsection_debug_loc ; DW_AT_location
	.long	Lset628
	.long	547                             ; DW_AT_abstract_origin
	.byte	7                               ; Abbrev [7] 0x8d8:0x9 DW_TAG_formal_parameter
.set Lset629, Ldebug_loc57-Lsection_debug_loc ; DW_AT_location
	.long	Lset629
	.long	558                             ; DW_AT_abstract_origin
	.byte	9                               ; Abbrev [9] 0x8e1:0x9 DW_TAG_variable
.set Lset630, Ldebug_loc53-Lsection_debug_loc ; DW_AT_location
	.long	Lset630
	.long	591                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	29                              ; Abbrev [29] 0x8eb:0x25 DW_TAG_inlined_subroutine
	.long	628                             ; DW_AT_abstract_origin
	.quad	Ltmp251                         ; DW_AT_low_pc
.set Lset631, Ltmp253-Ltmp251           ; DW_AT_high_pc
	.long	Lset631
	.byte	3                               ; DW_AT_call_file
	.byte	201                             ; DW_AT_call_line
	.byte	13                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x8ff:0x7 DW_TAG_formal_parameter
	.byte	1                               ; DW_AT_location
	.byte	108
	.long	636                             ; DW_AT_abstract_origin
	.byte	8                               ; Abbrev [8] 0x906:0x9 DW_TAG_formal_parameter
	.byte	3                               ; DW_AT_location
	.byte	145
	.ascii	"\340~"
	.long	658                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	29                              ; Abbrev [29] 0x910:0x31 DW_TAG_inlined_subroutine
	.long	670                             ; DW_AT_abstract_origin
	.quad	Ltmp260                         ; DW_AT_low_pc
.set Lset632, Ltmp265-Ltmp260           ; DW_AT_high_pc
	.long	Lset632
	.byte	3                               ; DW_AT_call_file
	.byte	196                             ; DW_AT_call_line
	.byte	26                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x924:0x9 DW_TAG_formal_parameter
.set Lset633, Ldebug_loc65-Lsection_debug_loc ; DW_AT_location
	.long	Lset633
	.long	682                             ; DW_AT_abstract_origin
	.byte	8                               ; Abbrev [8] 0x92d:0xa DW_TAG_formal_parameter
	.byte	4                               ; DW_AT_location
	.byte	48
	.byte	51
	.byte	37
	.byte	159
	.long	693                             ; DW_AT_abstract_origin
	.byte	9                               ; Abbrev [9] 0x937:0x9 DW_TAG_variable
.set Lset634, Ldebug_loc64-Lsection_debug_loc ; DW_AT_location
	.long	Lset634
	.long	715                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	29                              ; Abbrev [29] 0x941:0x31 DW_TAG_inlined_subroutine
	.long	670                             ; DW_AT_abstract_origin
	.quad	Ltmp266                         ; DW_AT_low_pc
.set Lset635, Ltmp271-Ltmp266           ; DW_AT_high_pc
	.long	Lset635
	.byte	3                               ; DW_AT_call_file
	.byte	197                             ; DW_AT_call_line
	.byte	26                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x955:0x9 DW_TAG_formal_parameter
.set Lset636, Ldebug_loc67-Lsection_debug_loc ; DW_AT_location
	.long	Lset636
	.long	682                             ; DW_AT_abstract_origin
	.byte	8                               ; Abbrev [8] 0x95e:0xa DW_TAG_formal_parameter
	.byte	4                               ; DW_AT_location
	.byte	48
	.byte	51
	.byte	37
	.byte	159
	.long	693                             ; DW_AT_abstract_origin
	.byte	9                               ; Abbrev [9] 0x968:0x9 DW_TAG_variable
.set Lset637, Ldebug_loc66-Lsection_debug_loc ; DW_AT_location
	.long	Lset637
	.long	715                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	29                              ; Abbrev [29] 0x972:0x25 DW_TAG_inlined_subroutine
	.long	670                             ; DW_AT_abstract_origin
	.quad	Ltmp272                         ; DW_AT_low_pc
.set Lset638, Ltmp277-Ltmp272           ; DW_AT_high_pc
	.long	Lset638
	.byte	3                               ; DW_AT_call_file
	.byte	199                             ; DW_AT_call_line
	.byte	26                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x986:0x7 DW_TAG_formal_parameter
	.byte	1                               ; DW_AT_location
	.byte	108
	.long	682                             ; DW_AT_abstract_origin
	.byte	9                               ; Abbrev [9] 0x98d:0x9 DW_TAG_variable
.set Lset639, Ldebug_loc68-Lsection_debug_loc ; DW_AT_location
	.long	Lset639
	.long	715                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	31                              ; Abbrev [31] 0x99a:0x27 DW_TAG_call_site
	.long	2537                            ; DW_AT_call_origin
	.quad	Ltmp151                         ; DW_AT_call_return_pc
	.byte	32                              ; Abbrev [32] 0x9a7:0x9 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	83
	.byte	5                               ; DW_AT_call_value
	.byte	143
	.asciz	"\360"
	.byte	148
	.byte	4
	.byte	32                              ; Abbrev [32] 0x9b0:0x9 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	81
	.byte	5                               ; DW_AT_call_value
	.byte	143
	.asciz	"\310"
	.byte	148
	.byte	8
	.byte	32                              ; Abbrev [32] 0x9b9:0x7 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	80
	.byte	3                               ; DW_AT_call_value
	.byte	145
	.ascii	"\240~"
	.byte	0                               ; End Of Children Mark
	.byte	31                              ; Abbrev [31] 0x9c1:0x27 DW_TAG_call_site
	.long	2537                            ; DW_AT_call_origin
	.quad	Ltmp153                         ; DW_AT_call_return_pc
	.byte	32                              ; Abbrev [32] 0x9ce:0x9 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	83
	.byte	5                               ; DW_AT_call_value
	.byte	143
	.asciz	"\364"
	.byte	148
	.byte	4
	.byte	32                              ; Abbrev [32] 0x9d7:0x9 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	81
	.byte	5                               ; DW_AT_call_value
	.byte	143
	.asciz	"\320"
	.byte	148
	.byte	8
	.byte	32                              ; Abbrev [32] 0x9e0:0x7 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	80
	.byte	3                               ; DW_AT_call_value
	.byte	143
	.ascii	"\220\003"
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	33                              ; Abbrev [33] 0x9e9:0x1c DW_TAG_subprogram
	.long	523                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	47                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_declaration
                                        ; DW_AT_external
                                        ; DW_AT_APPLE_optimized
	.byte	34                              ; Abbrev [34] 0x9f0:0x5 DW_TAG_formal_parameter
	.long	96                              ; DW_AT_type
	.byte	34                              ; Abbrev [34] 0x9f5:0x5 DW_TAG_formal_parameter
	.long	68                              ; DW_AT_type
	.byte	34                              ; Abbrev [34] 0x9fa:0x5 DW_TAG_formal_parameter
	.long	337                             ; DW_AT_type
	.byte	34                              ; Abbrev [34] 0x9ff:0x5 DW_TAG_formal_parameter
	.long	337                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0xa05:0x5 DW_TAG_pointer_type
	.long	2570                            ; DW_AT_type
	.byte	2                               ; Abbrev [2] 0xa0a:0xb DW_TAG_typedef
	.long	2581                            ; DW_AT_type
	.long	549                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	22                              ; DW_AT_decl_line
	.byte	35                              ; Abbrev [35] 0xa15:0x30 DW_TAG_structure_type
	.long	549                             ; DW_AT_name
	.short	5120                            ; DW_AT_byte_size
	.byte	4                               ; DW_AT_decl_file
	.byte	18                              ; DW_AT_decl_line
	.byte	36                              ; Abbrev [36] 0xa1e:0xc DW_TAG_member
	.long	424                             ; DW_AT_name
	.long	2629                            ; DW_AT_type
	.byte	4                               ; DW_AT_decl_file
	.byte	19                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	37                              ; Abbrev [37] 0xa2a:0xd DW_TAG_member
	.long	426                             ; DW_AT_name
	.long	2629                            ; DW_AT_type
	.byte	4                               ; DW_AT_decl_file
	.byte	20                              ; DW_AT_decl_line
	.short	512                             ; DW_AT_data_member_location
	.byte	37                              ; Abbrev [37] 0xa37:0xd DW_TAG_member
	.long	428                             ; DW_AT_name
	.long	2951                            ; DW_AT_type
	.byte	4                               ; DW_AT_decl_file
	.byte	21                              ; DW_AT_decl_line
	.short	1024                            ; DW_AT_data_member_location
	.byte	0                               ; End Of Children Mark
	.byte	18                              ; Abbrev [18] 0xa45:0xc DW_TAG_array_type
	.long	2641                            ; DW_AT_type
	.byte	19                              ; Abbrev [19] 0xa4a:0x6 DW_TAG_subrange_type
	.long	517                             ; DW_AT_type
	.byte	8                               ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0xa51:0xb DW_TAG_typedef
	.long	2652                            ; DW_AT_type
	.long	559                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	16                              ; DW_AT_decl_line
	.byte	38                              ; Abbrev [38] 0xa5c:0x75 DW_TAG_union_type
	.long	559                             ; DW_AT_name
	.byte	64                              ; DW_AT_byte_size
	.byte	4                               ; DW_AT_decl_file
	.byte	6                               ; DW_AT_decl_line
	.byte	36                              ; Abbrev [36] 0xa64:0xc DW_TAG_member
	.long	567                             ; DW_AT_name
	.long	505                             ; DW_AT_type
	.byte	4                               ; DW_AT_decl_file
	.byte	7                               ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	36                              ; Abbrev [36] 0xa70:0xc DW_TAG_member
	.long	570                             ; DW_AT_name
	.long	2769                            ; DW_AT_type
	.byte	4                               ; DW_AT_decl_file
	.byte	8                               ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	36                              ; Abbrev [36] 0xa7c:0xc DW_TAG_member
	.long	598                             ; DW_AT_name
	.long	2799                            ; DW_AT_type
	.byte	4                               ; DW_AT_decl_file
	.byte	9                               ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	36                              ; Abbrev [36] 0xa88:0xc DW_TAG_member
	.long	602                             ; DW_AT_name
	.long	2811                            ; DW_AT_type
	.byte	4                               ; DW_AT_decl_file
	.byte	10                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	36                              ; Abbrev [36] 0xa94:0xc DW_TAG_member
	.long	624                             ; DW_AT_name
	.long	2841                            ; DW_AT_type
	.byte	4                               ; DW_AT_decl_file
	.byte	11                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	36                              ; Abbrev [36] 0xaa0:0xc DW_TAG_member
	.long	642                             ; DW_AT_name
	.long	2871                            ; DW_AT_type
	.byte	4                               ; DW_AT_decl_file
	.byte	12                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	36                              ; Abbrev [36] 0xaac:0xc DW_TAG_member
	.long	654                             ; DW_AT_name
	.long	2894                            ; DW_AT_type
	.byte	4                               ; DW_AT_decl_file
	.byte	13                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	36                              ; Abbrev [36] 0xab8:0xc DW_TAG_member
	.long	667                             ; DW_AT_name
	.long	2913                            ; DW_AT_type
	.byte	4                               ; DW_AT_decl_file
	.byte	14                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	36                              ; Abbrev [36] 0xac4:0xc DW_TAG_member
	.long	677                             ; DW_AT_name
	.long	2932                            ; DW_AT_type
	.byte	4                               ; DW_AT_decl_file
	.byte	15                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	0                               ; End Of Children Mark
	.byte	18                              ; Abbrev [18] 0xad1:0xc DW_TAG_array_type
	.long	2781                            ; DW_AT_type
	.byte	19                              ; Abbrev [19] 0xad6:0x6 DW_TAG_subrange_type
	.long	517                             ; DW_AT_type
	.byte	32                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0xadd:0xb DW_TAG_typedef
	.long	2792                            ; DW_AT_type
	.long	574                             ; DW_AT_name
	.byte	7                               ; DW_AT_decl_file
	.byte	31                              ; DW_AT_decl_line
	.byte	3                               ; Abbrev [3] 0xae8:0x7 DW_TAG_base_type
	.long	583                             ; DW_AT_name
	.byte	7                               ; DW_AT_encoding
	.byte	2                               ; DW_AT_byte_size
	.byte	18                              ; Abbrev [18] 0xaef:0xc DW_TAG_array_type
	.long	337                             ; DW_AT_type
	.byte	19                              ; Abbrev [19] 0xaf4:0x6 DW_TAG_subrange_type
	.long	517                             ; DW_AT_type
	.byte	16                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	18                              ; Abbrev [18] 0xafb:0xc DW_TAG_array_type
	.long	2823                            ; DW_AT_type
	.byte	19                              ; Abbrev [19] 0xb00:0x6 DW_TAG_subrange_type
	.long	517                             ; DW_AT_type
	.byte	64                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0xb07:0xb DW_TAG_typedef
	.long	2834                            ; DW_AT_type
	.long	605                             ; DW_AT_name
	.byte	8                               ; DW_AT_decl_file
	.byte	30                              ; DW_AT_decl_line
	.byte	3                               ; Abbrev [3] 0xb12:0x7 DW_TAG_base_type
	.long	612                             ; DW_AT_name
	.byte	6                               ; DW_AT_encoding
	.byte	1                               ; DW_AT_byte_size
	.byte	18                              ; Abbrev [18] 0xb19:0xc DW_TAG_array_type
	.long	2853                            ; DW_AT_type
	.byte	19                              ; Abbrev [19] 0xb1e:0x6 DW_TAG_subrange_type
	.long	517                             ; DW_AT_type
	.byte	32                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0xb25:0xb DW_TAG_typedef
	.long	2864                            ; DW_AT_type
	.long	628                             ; DW_AT_name
	.byte	9                               ; DW_AT_decl_file
	.byte	30                              ; DW_AT_decl_line
	.byte	3                               ; Abbrev [3] 0xb30:0x7 DW_TAG_base_type
	.long	636                             ; DW_AT_name
	.byte	5                               ; DW_AT_encoding
	.byte	2                               ; DW_AT_byte_size
	.byte	18                              ; Abbrev [18] 0xb37:0xc DW_TAG_array_type
	.long	2883                            ; DW_AT_type
	.byte	19                              ; Abbrev [19] 0xb3c:0x6 DW_TAG_subrange_type
	.long	517                             ; DW_AT_type
	.byte	16                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0xb43:0xb DW_TAG_typedef
	.long	621                             ; DW_AT_type
	.long	646                             ; DW_AT_name
	.byte	10                              ; DW_AT_decl_file
	.byte	30                              ; DW_AT_decl_line
	.byte	18                              ; Abbrev [18] 0xb4e:0xc DW_TAG_array_type
	.long	2906                            ; DW_AT_type
	.byte	19                              ; Abbrev [19] 0xb53:0x6 DW_TAG_subrange_type
	.long	517                             ; DW_AT_type
	.byte	32                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	3                               ; Abbrev [3] 0xb5a:0x7 DW_TAG_base_type
	.long	658                             ; DW_AT_name
	.byte	4                               ; DW_AT_encoding
	.byte	2                               ; DW_AT_byte_size
	.byte	18                              ; Abbrev [18] 0xb61:0xc DW_TAG_array_type
	.long	2925                            ; DW_AT_type
	.byte	19                              ; Abbrev [19] 0xb66:0x6 DW_TAG_subrange_type
	.long	517                             ; DW_AT_type
	.byte	16                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	3                               ; Abbrev [3] 0xb6d:0x7 DW_TAG_base_type
	.long	671                             ; DW_AT_name
	.byte	4                               ; DW_AT_encoding
	.byte	4                               ; DW_AT_byte_size
	.byte	18                              ; Abbrev [18] 0xb74:0xc DW_TAG_array_type
	.long	2944                            ; DW_AT_type
	.byte	19                              ; Abbrev [19] 0xb79:0x6 DW_TAG_subrange_type
	.long	517                             ; DW_AT_type
	.byte	8                               ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	3                               ; Abbrev [3] 0xb80:0x7 DW_TAG_base_type
	.long	681                             ; DW_AT_name
	.byte	4                               ; DW_AT_encoding
	.byte	8                               ; DW_AT_byte_size
	.byte	18                              ; Abbrev [18] 0xb87:0xc DW_TAG_array_type
	.long	2641                            ; DW_AT_type
	.byte	19                              ; Abbrev [19] 0xb8c:0x6 DW_TAG_subrange_type
	.long	517                             ; DW_AT_type
	.byte	64                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	3                               ; Abbrev [3] 0xb93:0x7 DW_TAG_base_type
	.long	876                             ; DW_AT_name
	.byte	2                               ; DW_AT_encoding
	.byte	1                               ; DW_AT_byte_size
	.byte	0                               ; End Of Children Mark
Ldebug_info_end0:
	.section	__DWARF,__debug_ranges,regular,debug
Ldebug_range:
Ldebug_ranges0:
.set Lset640, Ltmp96-Lfunc_begin0
	.quad	Lset640
.set Lset641, Ltmp114-Lfunc_begin0
	.quad	Lset641
.set Lset642, Ltmp295-Lfunc_begin0
	.quad	Lset642
.set Lset643, Ltmp339-Lfunc_begin0
	.quad	Lset643
	.quad	0
	.quad	0
Ldebug_ranges1:
.set Lset644, Ltmp98-Lfunc_begin0
	.quad	Lset644
.set Lset645, Ltmp114-Lfunc_begin0
	.quad	Lset645
.set Lset646, Ltmp295-Lfunc_begin0
	.quad	Lset646
.set Lset647, Ltmp305-Lfunc_begin0
	.quad	Lset647
	.quad	0
	.quad	0
Ldebug_ranges2:
.set Lset648, Ltmp316-Lfunc_begin0
	.quad	Lset648
.set Lset649, Ltmp321-Lfunc_begin0
	.quad	Lset649
.set Lset650, Ltmp323-Lfunc_begin0
	.quad	Lset650
.set Lset651, Ltmp339-Lfunc_begin0
	.quad	Lset651
	.quad	0
	.quad	0
Ldebug_ranges3:
.set Lset652, Ltmp316-Lfunc_begin0
	.quad	Lset652
.set Lset653, Ltmp318-Lfunc_begin0
	.quad	Lset653
.set Lset654, Ltmp330-Lfunc_begin0
	.quad	Lset654
.set Lset655, Ltmp339-Lfunc_begin0
	.quad	Lset655
	.quad	0
	.quad	0
Ldebug_ranges4:
.set Lset656, Ltmp316-Lfunc_begin0
	.quad	Lset656
.set Lset657, Ltmp318-Lfunc_begin0
	.quad	Lset657
.set Lset658, Ltmp334-Lfunc_begin0
	.quad	Lset658
.set Lset659, Ltmp339-Lfunc_begin0
	.quad	Lset659
	.quad	0
	.quad	0
Ldebug_ranges5:
.set Lset660, Ltmp178-Lfunc_begin0
	.quad	Lset660
.set Lset661, Ltmp187-Lfunc_begin0
	.quad	Lset661
.set Lset662, Ltmp190-Lfunc_begin0
	.quad	Lset662
.set Lset663, Ltmp193-Lfunc_begin0
	.quad	Lset663
.set Lset664, Ltmp211-Lfunc_begin0
	.quad	Lset664
.set Lset665, Ltmp212-Lfunc_begin0
	.quad	Lset665
	.quad	0
	.quad	0
Ldebug_ranges6:
.set Lset666, Ltmp188-Lfunc_begin0
	.quad	Lset666
.set Lset667, Ltmp189-Lfunc_begin0
	.quad	Lset667
.set Lset668, Ltmp194-Lfunc_begin0
	.quad	Lset668
.set Lset669, Ltmp206-Lfunc_begin0
	.quad	Lset669
.set Lset670, Ltmp212-Lfunc_begin0
	.quad	Lset670
.set Lset671, Ltmp220-Lfunc_begin0
	.quad	Lset671
	.quad	0
	.quad	0
Ldebug_ranges7:
.set Lset672, Ltmp239-Lfunc_begin0
	.quad	Lset672
.set Lset673, Ltmp253-Lfunc_begin0
	.quad	Lset673
.set Lset674, Ltmp255-Lfunc_begin0
	.quad	Lset674
.set Lset675, Ltmp293-Lfunc_begin0
	.quad	Lset675
	.quad	0
	.quad	0
Ldebug_ranges8:
.set Lset676, Ltmp239-Lfunc_begin0
	.quad	Lset676
.set Lset677, Ltmp249-Lfunc_begin0
	.quad	Lset677
.set Lset678, Ltmp277-Lfunc_begin0
	.quad	Lset678
.set Lset679, Ltmp293-Lfunc_begin0
	.quad	Lset679
	.quad	0
	.quad	0
	.section	__DWARF,__debug_str,regular,debug
Linfo_string:
	.asciz	"Apple clang version 15.0.0 (clang-1500.3.9.4)" ; string offset=0
	.asciz	"vecint.c"                      ; string offset=46
	.asciz	"/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk" ; string offset=55
	.asciz	"MacOSX.sdk"                    ; string offset=107
	.asciz	"/Users/tarindujayatilaka/Documents/superopt/apple-amx" ; string offset=118
	.asciz	"uint64_t"                      ; string offset=172
	.asciz	"unsigned long long"            ; string offset=181
	.asciz	"uint8_t"                       ; string offset=200
	.asciz	"unsigned char"                 ; string offset=208
	.asciz	"vecint_alu_mode4"              ; string offset=222
	.asciz	"vecint_alu"                    ; string offset=239
	.asciz	"parse_writemask"               ; string offset=250
	.asciz	"val"                           ; string offset=266
	.asciz	"uint32_t"                      ; string offset=270
	.asciz	"unsigned int"                  ; string offset=279
	.asciz	"g"                             ; string offset=292
	.asciz	"maskbits"                      ; string offset=294
	.asciz	"mode"                          ; string offset=303
	.asciz	"all"                           ; string offset=308
	.asciz	"load_xy_reg"                   ; string offset=312
	.asciz	"dst"                           ; string offset=324
	.asciz	"src"                           ; string offset=328
	.asciz	"offset"                        ; string offset=332
	.asciz	"avail"                         ; string offset=339
	.asciz	"xy_shuffle"                    ; string offset=345
	.asciz	"shuffle"                       ; string offset=356
	.asciz	"ebytes"                        ; string offset=364
	.asciz	"__ARRAY_SIZE_TYPE__"           ; string offset=371
	.asciz	"step"                          ; string offset=391
	.asciz	"soff"                          ; string offset=396
	.asciz	"doff"                          ; string offset=401
	.asciz	"int64_t"                       ; string offset=406
	.asciz	"long long"                     ; string offset=414
	.asciz	"x"                             ; string offset=424
	.asciz	"y"                             ; string offset=426
	.asciz	"z"                             ; string offset=428
	.asciz	"alumode"                       ; string offset=430
	.asciz	"int"                           ; string offset=438
	.asciz	"shift"                         ; string offset=442
	.asciz	"store_int"                     ; string offset=448
	.asciz	"nbytes"                        ; string offset=458
	.asciz	"load_int"                      ; string offset=465
	.asciz	"signext"                       ; string offset=474
	.asciz	"satbits"                       ; string offset=482
	.asciz	"operand"                       ; string offset=490
	.asciz	"hi"                            ; string offset=498
	.asciz	"lo"                            ; string offset=501
	.asciz	"emulate_AMX_VECINT"            ; string offset=504
	.asciz	"load_xy_reg_indexed"           ; string offset=523
	.asciz	"state"                         ; string offset=543
	.asciz	"amx_state"                     ; string offset=549
	.asciz	"amx_reg"                       ; string offset=559
	.asciz	"u8"                            ; string offset=567
	.asciz	"u16"                           ; string offset=570
	.asciz	"uint16_t"                      ; string offset=574
	.asciz	"unsigned short"                ; string offset=583
	.asciz	"u32"                           ; string offset=598
	.asciz	"i8"                            ; string offset=602
	.asciz	"int8_t"                        ; string offset=605
	.asciz	"signed char"                   ; string offset=612
	.asciz	"i16"                           ; string offset=624
	.asciz	"int16_t"                       ; string offset=628
	.asciz	"short"                         ; string offset=636
	.asciz	"i32"                           ; string offset=642
	.asciz	"int32_t"                       ; string offset=646
	.asciz	"f16"                           ; string offset=654
	.asciz	"_Float16"                      ; string offset=658
	.asciz	"f32"                           ; string offset=667
	.asciz	"float"                         ; string offset=671
	.asciz	"f64"                           ; string offset=677
	.asciz	"double"                        ; string offset=681
	.asciz	"ximask"                        ; string offset=688
	.asciz	"y_step"                        ; string offset=695
	.asciz	"x_step"                        ; string offset=702
	.asciz	"z_step"                        ; string offset=709
	.asciz	"z_row"                         ; string offset=716
	.asciz	"bmode"                         ; string offset=722
	.asciz	"ybits"                         ; string offset=728
	.asciz	"xbits"                         ; string offset=734
	.asciz	"zbits"                         ; string offset=740
	.asciz	"xbytes"                        ; string offset=746
	.asciz	"ybytes"                        ; string offset=753
	.asciz	"zbytes"                        ; string offset=760
	.asciz	"y_offset"                      ; string offset=767
	.asciz	"x_offset"                      ; string offset=776
	.asciz	"ibits"                         ; string offset=785
	.asciz	"src_reg"                       ; string offset=791
	.asciz	"x_enable"                      ; string offset=799
	.asciz	"y_enable"                      ; string offset=808
	.asciz	"i"                             ; string offset=817
	.asciz	"zmask"                         ; string offset=819
	.asciz	"zv"                            ; string offset=825
	.asciz	"yv"                            ; string offset=828
	.asciz	"xv"                            ; string offset=831
	.asciz	"result"                        ; string offset=834
	.asciz	"xi"                            ; string offset=841
	.asciz	"yj"                            ; string offset=844
	.asciz	"col_enable"                    ; string offset=847
	.asciz	"omask"                         ; string offset=858
	.asciz	"broadcast_y"                   ; string offset=864
	.asciz	"_Bool"                         ; string offset=876
	.asciz	"zsignext"                      ; string offset=882
	.asciz	"xsignext"                      ; string offset=891
	.asciz	"ysignext"                      ; string offset=900
	.section	__DWARF,__apple_names,regular,debug
Lnames_begin:
	.long	1212240712                      ; Header Magic
	.short	1                               ; Header Version
	.short	0                               ; Header Hash Function
	.long	8                               ; Header Bucket Count
	.long	8                               ; Header Hash Count
	.long	12                              ; Header Data Length
	.long	0                               ; HeaderData Die Offset Base
	.long	1                               ; HeaderData Atom Count
	.short	1                               ; DW_ATOM_die_offset
	.short	6                               ; DW_FORM_data4
	.long	-1                              ; Bucket 0
	.long	-1                              ; Bucket 1
	.long	0                               ; Bucket 2
	.long	-1                              ; Bucket 3
	.long	2                               ; Bucket 4
	.long	-1                              ; Bucket 5
	.long	3                               ; Bucket 6
	.long	4                               ; Bucket 7
	.long	226778194                       ; Hash in Bucket 2
	.long	1700920738                      ; Hash in Bucket 2
	.long	-979516516                      ; Hash in Bucket 4
	.long	-224174954                      ; Hash in Bucket 6
	.long	12446383                        ; Hash in Bucket 7
	.long	446826823                       ; Hash in Bucket 7
	.long	664973471                       ; Hash in Bucket 7
	.long	1904561487                      ; Hash in Bucket 7
.set Lset680, LNames3-Lnames_begin      ; Offset in Bucket 2
	.long	Lset680
.set Lset681, LNames2-Lnames_begin      ; Offset in Bucket 2
	.long	Lset681
.set Lset682, LNames6-Lnames_begin      ; Offset in Bucket 4
	.long	Lset682
.set Lset683, LNames1-Lnames_begin      ; Offset in Bucket 6
	.long	Lset683
.set Lset684, LNames5-Lnames_begin      ; Offset in Bucket 7
	.long	Lset684
.set Lset685, LNames7-Lnames_begin      ; Offset in Bucket 7
	.long	Lset685
.set Lset686, LNames0-Lnames_begin      ; Offset in Bucket 7
	.long	Lset686
.set Lset687, LNames4-Lnames_begin      ; Offset in Bucket 7
	.long	Lset687
LNames3:
	.long	312                             ; load_xy_reg
	.long	2                               ; Num DIEs
	.long	1561
	.long	1619
	.long	0
LNames2:
	.long	345                             ; xy_shuffle
	.long	2                               ; Num DIEs
	.long	1729
	.long	1841
	.long	0
LNames6:
	.long	448                             ; store_int
	.long	2                               ; Num DIEs
	.long	1352
	.long	2283
	.long	0
LNames1:
	.long	250                             ; parse_writemask
	.long	3                               ; Num DIEs
	.long	1179
	.long	1953
	.long	2011
	.long	0
LNames5:
	.long	239                             ; vecint_alu
	.long	2                               ; Num DIEs
	.long	201
	.long	2234
	.long	0
LNames7:
	.long	222                             ; vecint_alu_mode4
	.long	2                               ; Num DIEs
	.long	101
	.long	1283
	.long	0
LNames0:
	.long	504                             ; emulate_AMX_VECINT
	.long	1                               ; Num DIEs
	.long	810
	.long	0
LNames4:
	.long	465                             ; load_int
	.long	4                               ; Num DIEs
	.long	1387
	.long	2320
	.long	2369
	.long	2418
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
	.long	11                              ; Header Bucket Count
	.long	23                              ; Header Hash Count
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
	.long	2                               ; Bucket 1
	.long	5                               ; Bucket 2
	.long	-1                              ; Bucket 3
	.long	6                               ; Bucket 4
	.long	-1                              ; Bucket 5
	.long	10                              ; Bucket 6
	.long	14                              ; Bucket 7
	.long	15                              ; Bucket 8
	.long	18                              ; Bucket 9
	.long	22                              ; Bucket 10
	.long	249311216                       ; Hash in Bucket 0
	.long	948621025                       ; Hash in Bucket 0
	.long	789719536                       ; Hash in Bucket 1
	.long	857652610                       ; Hash in Bucket 1
	.long	897873384                       ; Hash in Bucket 1
	.long	-594775205                      ; Hash in Bucket 2
	.long	290644127                       ; Hash in Bucket 4
	.long	290711645                       ; Hash in Bucket 4
	.long	290821634                       ; Hash in Bucket 4
	.long	-104093792                      ; Hash in Bucket 4
	.long	193495088                       ; Hash in Bucket 6
	.long	-1622611670                     ; Hash in Bucket 6
	.long	-1622544152                     ; Hash in Bucket 6
	.long	-1622434163                     ; Hash in Bucket 6
	.long	-1466705941                     ; Hash in Bucket 7
	.long	259121563                       ; Hash in Bucket 8
	.long	274395349                       ; Hash in Bucket 8
	.long	-1304652851                     ; Hash in Bucket 8
	.long	80989467                        ; Hash in Bucket 9
	.long	691577533                       ; Hash in Bucket 9
	.long	-1921963995                     ; Hash in Bucket 9
	.long	-113419488                      ; Hash in Bucket 9
	.long	878862258                       ; Hash in Bucket 10
.set Lset688, Ltypes11-Ltypes_begin     ; Offset in Bucket 0
	.long	Lset688
.set Lset689, Ltypes19-Ltypes_begin     ; Offset in Bucket 0
	.long	Lset689
.set Lset690, Ltypes15-Ltypes_begin     ; Offset in Bucket 1
	.long	Lset690
.set Lset691, Ltypes0-Ltypes_begin      ; Offset in Bucket 1
	.long	Lset691
.set Lset692, Ltypes13-Ltypes_begin     ; Offset in Bucket 1
	.long	Lset692
.set Lset693, Ltypes18-Ltypes_begin     ; Offset in Bucket 2
	.long	Lset693
.set Lset694, Ltypes16-Ltypes_begin     ; Offset in Bucket 4
	.long	Lset694
.set Lset695, Ltypes1-Ltypes_begin      ; Offset in Bucket 4
	.long	Lset695
.set Lset696, Ltypes9-Ltypes_begin      ; Offset in Bucket 4
	.long	Lset696
.set Lset697, Ltypes8-Ltypes_begin      ; Offset in Bucket 4
	.long	Lset697
.set Lset698, Ltypes2-Ltypes_begin      ; Offset in Bucket 6
	.long	Lset698
.set Lset699, Ltypes3-Ltypes_begin      ; Offset in Bucket 6
	.long	Lset699
.set Lset700, Ltypes10-Ltypes_begin     ; Offset in Bucket 6
	.long	Lset700
.set Lset701, Ltypes22-Ltypes_begin     ; Offset in Bucket 6
	.long	Lset701
.set Lset702, Ltypes17-Ltypes_begin     ; Offset in Bucket 7
	.long	Lset702
.set Lset703, Ltypes14-Ltypes_begin     ; Offset in Bucket 8
	.long	Lset703
.set Lset704, Ltypes5-Ltypes_begin      ; Offset in Bucket 8
	.long	Lset704
.set Lset705, Ltypes12-Ltypes_begin     ; Offset in Bucket 8
	.long	Lset705
.set Lset706, Ltypes20-Ltypes_begin     ; Offset in Bucket 9
	.long	Lset706
.set Lset707, Ltypes4-Ltypes_begin      ; Offset in Bucket 9
	.long	Lset707
.set Lset708, Ltypes21-Ltypes_begin     ; Offset in Bucket 9
	.long	Lset708
.set Lset709, Ltypes6-Ltypes_begin      ; Offset in Bucket 9
	.long	Lset709
.set Lset710, Ltypes7-Ltypes_begin      ; Offset in Bucket 10
	.long	Lset710
Ltypes11:
	.long	876                             ; _Bool
	.long	1                               ; Num DIEs
	.long	2963
	.short	36
	.byte	0
	.long	0
Ltypes19:
	.long	658                             ; _Float16
	.long	1                               ; Num DIEs
	.long	2906
	.short	36
	.byte	0
	.long	0
Ltypes15:
	.long	200                             ; uint8_t
	.long	1                               ; Num DIEs
	.long	78
	.short	22
	.byte	0
	.long	0
Ltypes0:
	.long	181                             ; unsigned long long
	.long	1                               ; Num DIEs
	.long	61
	.short	36
	.byte	0
	.long	0
Ltypes13:
	.long	559                             ; amx_reg
	.long	2                               ; Num DIEs
	.long	2641
	.short	22
	.byte	0
	.long	2652
	.short	23
	.byte	0
	.long	0
Ltypes18:
	.long	371                             ; __ARRAY_SIZE_TYPE__
	.long	1                               ; Num DIEs
	.long	517
	.short	36
	.byte	0
	.long	0
Ltypes16:
	.long	574                             ; uint16_t
	.long	1                               ; Num DIEs
	.long	2781
	.short	22
	.byte	0
	.long	0
Ltypes1:
	.long	270                             ; uint32_t
	.long	1                               ; Num DIEs
	.long	337
	.short	22
	.byte	0
	.long	0
Ltypes9:
	.long	172                             ; uint64_t
	.long	1                               ; Num DIEs
	.long	50
	.short	22
	.byte	0
	.long	0
Ltypes8:
	.long	208                             ; unsigned char
	.long	1                               ; Num DIEs
	.long	89
	.short	36
	.byte	0
	.long	0
Ltypes2:
	.long	438                             ; int
	.long	1                               ; Num DIEs
	.long	621
	.short	36
	.byte	0
	.long	0
Ltypes3:
	.long	628                             ; int16_t
	.long	1                               ; Num DIEs
	.long	2853
	.short	22
	.byte	0
	.long	0
Ltypes10:
	.long	646                             ; int32_t
	.long	1                               ; Num DIEs
	.long	2883
	.short	22
	.byte	0
	.long	0
Ltypes22:
	.long	406                             ; int64_t
	.long	1                               ; Num DIEs
	.long	603
	.short	22
	.byte	0
	.long	0
Ltypes17:
	.long	549                             ; amx_state
	.long	2                               ; Num DIEs
	.long	2570
	.short	22
	.byte	0
	.long	2581
	.short	19
	.byte	0
	.long	0
Ltypes14:
	.long	671                             ; float
	.long	1                               ; Num DIEs
	.long	2925
	.short	36
	.byte	0
	.long	0
Ltypes5:
	.long	636                             ; short
	.long	1                               ; Num DIEs
	.long	2864
	.short	36
	.byte	0
	.long	0
Ltypes12:
	.long	279                             ; unsigned int
	.long	1                               ; Num DIEs
	.long	348
	.short	36
	.byte	0
	.long	0
Ltypes20:
	.long	605                             ; int8_t
	.long	1                               ; Num DIEs
	.long	2823
	.short	22
	.byte	0
	.long	0
Ltypes4:
	.long	612                             ; signed char
	.long	1                               ; Num DIEs
	.long	2834
	.short	36
	.byte	0
	.long	0
Ltypes21:
	.long	414                             ; long long
	.long	1                               ; Num DIEs
	.long	614
	.short	36
	.byte	0
	.long	0
Ltypes6:
	.long	681                             ; double
	.long	1                               ; Num DIEs
	.long	2944
	.short	36
	.byte	0
	.long	0
Ltypes7:
	.long	583                             ; unsigned short
	.long	1                               ; Num DIEs
	.long	2792
	.short	36
	.byte	0
	.long	0
.subsections_via_symbols
	.section	__DWARF,__debug_line,regular,debug
Lsection_line:
Lline_table_start0:
