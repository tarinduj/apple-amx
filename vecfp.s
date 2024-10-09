	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 14, 4
	.file	1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types" "_int16_t.h"
	.file	2 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types" "_uint64_t.h"
	.file	3 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types" "_uint8_t.h"
	.globl	_bf16_to_f32                    ; -- Begin function bf16_to_f32
	.p2align	2
_bf16_to_f32:                           ; @bf16_to_f32
Lfunc_begin0:
	.file	4 "/Users/tarindujayatilaka/Documents/superopt/apple-amx" "vecfp.c"
	.loc	4 9 0                           ; vecfp.c:9:0
	.cfi_startproc
; %bb.0:
	;DEBUG_VALUE: bf16_to_f32:x <- $w0
	.loc	4 10 9 prologue_end             ; vecfp.c:10:9
	and	w8, w0, #0x7fff
Ltmp0:
	;DEBUG_VALUE: bf16_to_f32:x <- undef
	.loc	4 11 7                          ; vecfp.c:11:7
	lsl	w9, w0, #16
	mov	w10, #32640
	mov	w11, #2143289344
	cmp	w8, w10
	csel	w8, w11, w9, hi
Ltmp1:
	;DEBUG_VALUE: bf16_to_f32:x <- $w8
	.loc	4 13 5                          ; vecfp.c:13:5
	fmov	s0, w8
Ltmp2:
	;DEBUG_VALUE: bf16_to_f32:f <- $s0
	;DEBUG_VALUE: bf16_to_f32:x <- $s0
	.loc	4 14 5                          ; vecfp.c:14:5
	ret
Ltmp3:
Lfunc_end0:
	.cfi_endproc
                                        ; -- End function
	.globl	_bf16_fma                       ; -- Begin function bf16_fma
	.p2align	2
_bf16_fma:                              ; @bf16_fma
Lfunc_begin1:
	.loc	4 17 0                          ; vecfp.c:17:0
	.cfi_startproc
; %bb.0:
	;DEBUG_VALUE: bf16_fma:x <- $w0
	;DEBUG_VALUE: bf16_fma:y <- $w1
	;DEBUG_VALUE: bf16_fma:z <- $w2
	.loc	4 26 5 prologue_end             ; vecfp.c:26:5
	and	w8, w0, #0x7f
	mov	w9, #128
	mov	w10, #128
	bfxil	w10, w0, #0, #7
Ltmp4:
	;DEBUG_VALUE: bf16_fma:x_m <- $w10
	clz	w11, w8
	mov	w14, #25
	sub	w13, w14, w11
	sub	w11, w11, #24
	lsl	w8, w8, w11
	mov	w17, #255
	ands	w11, w17, w0, lsr #7
Ltmp5:
	;DEBUG_VALUE: bf16_fma:x_e <- $w11
	csel	w12, w8, w10, eq
Ltmp6:
	;DEBUG_VALUE: bf16_fma:x_m <- $w12
	csel	w13, w13, w11, eq
Ltmp7:
	;DEBUG_VALUE: bf16_fma:x_e <- $w13
	.loc	4 27 5                          ; vecfp.c:27:5
	and	w8, w1, #0x7f
	mov	w10, #128
	bfxil	w10, w1, #0, #7
Ltmp8:
	;DEBUG_VALUE: bf16_fma:y_m <- $w10
	clz	w11, w8
	sub	w16, w14, w11
	sub	w11, w11, #24
	lsl	w8, w8, w11
	ands	w11, w17, w1, lsr #7
Ltmp9:
	;DEBUG_VALUE: bf16_fma:y_e <- $w11
	csel	w15, w8, w10, eq
Ltmp10:
	;DEBUG_VALUE: bf16_fma:y_m <- $w15
	csel	w16, w16, w11, eq
Ltmp11:
	;DEBUG_VALUE: bf16_fma:y_e <- $w16
	.loc	4 28 5                          ; vecfp.c:28:5
	and	w8, w2, #0x7f
	bfxil	w9, w2, #0, #7
Ltmp12:
	;DEBUG_VALUE: bf16_fma:z_m <- $w9
	clz	w10, w8
	sub	w11, w14, w10
	sub	w10, w10, #24
	lsl	w8, w8, w10
	ands	w14, w17, w2, lsr #7
Ltmp13:
	;DEBUG_VALUE: bf16_fma:z_e <- $w14
	csel	w10, w8, w9, eq
Ltmp14:
	;DEBUG_VALUE: bf16_fma:z_m <- $w10
	csel	w11, w11, w14, eq
Ltmp15:
	;DEBUG_VALUE: bf16_fma:z_e <- $w11
	.loc	4 30 25                         ; vecfp.c:30:25
	and	w9, w2, #0x8000
Ltmp16:
	;DEBUG_VALUE: bf16_fma:z_sign <- [DW_OP_constu 18446744073709518848, DW_OP_and, DW_OP_stack_value] $w2
	.loc	4 31 26                         ; vecfp.c:31:26
	eor	w8, w1, w0
	.loc	4 31 31 is_stmt 0               ; vecfp.c:31:31
	and	w8, w8, #0x8000
Ltmp17:
	;DEBUG_VALUE: bf16_fma:p_sign <- $w8
	.loc	4 34 13 is_stmt 1               ; vecfp.c:34:13
	cmp	w13, #255
	.loc	4 34 20 is_stmt 0               ; vecfp.c:34:20
	ccmp	w16, w17, #4, ne
	cset	w14, eq
	b.eq	LBB1_8
Ltmp18:
; %bb.1:
	;DEBUG_VALUE: bf16_fma:p_sign <- $w8
	;DEBUG_VALUE: bf16_fma:z_sign <- [DW_OP_constu 18446744073709518848, DW_OP_and, DW_OP_stack_value] $w2
	;DEBUG_VALUE: bf16_fma:z_e <- $w11
	;DEBUG_VALUE: bf16_fma:z_m <- $w10
	;DEBUG_VALUE: bf16_fma:y_e <- $w16
	;DEBUG_VALUE: bf16_fma:y_m <- $w15
	;DEBUG_VALUE: bf16_fma:x_e <- $w13
	;DEBUG_VALUE: bf16_fma:x_m <- $w12
	;DEBUG_VALUE: bf16_fma:z <- $w2
	;DEBUG_VALUE: bf16_fma:y <- $w1
	;DEBUG_VALUE: bf16_fma:x <- $w0
	cmp	w11, #255
	b.eq	LBB1_8
Ltmp19:
; %bb.2:
	;DEBUG_VALUE: bf16_fma:p_sign <- $w8
	;DEBUG_VALUE: bf16_fma:z_sign <- [DW_OP_constu 18446744073709518848, DW_OP_and, DW_OP_stack_value] $w2
	;DEBUG_VALUE: bf16_fma:z_e <- $w11
	;DEBUG_VALUE: bf16_fma:z_m <- $w10
	;DEBUG_VALUE: bf16_fma:y_e <- $w16
	;DEBUG_VALUE: bf16_fma:y_m <- $w15
	;DEBUG_VALUE: bf16_fma:x_e <- $w13
	;DEBUG_VALUE: bf16_fma:x_m <- $w12
	;DEBUG_VALUE: bf16_fma:z <- $w2
	;DEBUG_VALUE: bf16_fma:y <- $w1
	;DEBUG_VALUE: bf16_fma:x <- $w0
	.loc	4 48 24 is_stmt 1               ; vecfp.c:48:24
	mul	w12, w15, w12
Ltmp20:
	;DEBUG_VALUE: bf16_fma:p_e <- undef
	;DEBUG_VALUE: bf16_fma:p_m <- $w12
	.loc	4 52 9                          ; vecfp.c:52:9
	cbz	w12, LBB1_16
Ltmp21:
; %bb.3:
	;DEBUG_VALUE: bf16_fma:p_m <- $w12
	;DEBUG_VALUE: bf16_fma:p_sign <- $w8
	;DEBUG_VALUE: bf16_fma:z_sign <- [DW_OP_constu 18446744073709518848, DW_OP_and, DW_OP_stack_value] $w2
	;DEBUG_VALUE: bf16_fma:z_e <- $w11
	;DEBUG_VALUE: bf16_fma:z_m <- $w10
	;DEBUG_VALUE: bf16_fma:y_e <- $w16
	;DEBUG_VALUE: bf16_fma:y_m <- $w15
	;DEBUG_VALUE: bf16_fma:x_e <- $w13
	;DEBUG_VALUE: bf16_fma:z <- $w2
	;DEBUG_VALUE: bf16_fma:y <- $w1
	;DEBUG_VALUE: bf16_fma:x <- $w0
	.loc	4 0 0 is_stmt 0                 ; vecfp.c:0:0
	add	w13, w13, w16
Ltmp22:
	sub	w15, w13, #134
Ltmp23:
	;DEBUG_VALUE: bf16_fma:p_e <- $w15
	.loc	4 53 9 is_stmt 1                ; vecfp.c:53:9
	lsl	w13, w10, #10
Ltmp24:
	;DEBUG_VALUE: bf16_fma:z_m <- $w13
	.loc	4 53 20 is_stmt 0               ; vecfp.c:53:20
	sub	w14, w11, #7
Ltmp25:
	;DEBUG_VALUE: bf16_fma:z_e <- $w14
	.loc	4 54 9 is_stmt 1                ; vecfp.c:54:9
	lsl	w12, w12, #3
Ltmp26:
	;DEBUG_VALUE: bf16_fma:p_m <- $w12
	.loc	4 66 19                         ; vecfp.c:66:19
	cmp	w15, w14
	csel	w11, w15, w14, gt
Ltmp27:
	;DEBUG_VALUE: bf16_fma:r_e <- $w11
	.loc	4 67 9                          ; vecfp.c:67:9
	b.ge	LBB1_5
Ltmp28:
; %bb.4:
	;DEBUG_VALUE: bf16_fma:r_e <- $w11
	;DEBUG_VALUE: bf16_fma:z_m <- $w13
	;DEBUG_VALUE: bf16_fma:p_e <- $w15
	;DEBUG_VALUE: bf16_fma:p_m <- $w12
	;DEBUG_VALUE: bf16_fma:p_sign <- $w8
	;DEBUG_VALUE: bf16_fma:z_sign <- [DW_OP_constu 18446744073709518848, DW_OP_and, DW_OP_stack_value] $w2
	;DEBUG_VALUE: bf16_fma:z_e <- $w14
	;DEBUG_VALUE: bf16_fma:y_e <- $w16
	;DEBUG_VALUE: bf16_fma:z <- $w2
	;DEBUG_VALUE: bf16_fma:y <- $w1
	;DEBUG_VALUE: bf16_fma:x <- $w0
	.loc	4 67 20 is_stmt 0               ; vecfp.c:67:20
	sub	w16, w11, w15
Ltmp29:
	;DEBUG_VALUE: orig <- undef
	;DEBUG_VALUE: s <- $w16
	.loc	4 67 20                         ; vecfp.c:67:20
	lsr	w17, w12, w16
Ltmp30:
	;DEBUG_VALUE: bf16_fma:p_m <- $w17
	lsl	w0, w17, w16
Ltmp31:
	;DEBUG_VALUE: bf16_fma:x <- [DW_OP_LLVM_entry_value 1] $w0
	cmp	w0, w12
	cset	w0, ne
	orr	w17, w17, w0
Ltmp32:
	;DEBUG_VALUE: bf16_fma:p_m <- $w17
	.loc	4 67 20                         ; vecfp.c:67:20
	cmp	w12, #0
	cset	w12, ne
Ltmp33:
	;DEBUG_VALUE: bf16_fma:p_m <- $w12
	.loc	4 67 20                         ; vecfp.c:67:20
	cmp	w16, #32
	csel	w12, w17, w12, lt
Ltmp34:
LBB1_5:
	;DEBUG_VALUE: bf16_fma:r_e <- $w11
	;DEBUG_VALUE: bf16_fma:z_m <- $w13
	;DEBUG_VALUE: bf16_fma:p_e <- $w15
	;DEBUG_VALUE: bf16_fma:p_sign <- $w8
	;DEBUG_VALUE: bf16_fma:z_sign <- [DW_OP_constu 18446744073709518848, DW_OP_and, DW_OP_stack_value] $w2
	;DEBUG_VALUE: bf16_fma:z_e <- $w14
	;DEBUG_VALUE: bf16_fma:z <- $w2
	;DEBUG_VALUE: bf16_fma:y <- $w1
	;DEBUG_VALUE: bf16_fma:p_m <- $w12
	.loc	4 68 9 is_stmt 1                ; vecfp.c:68:9
	cmp	w15, w14
	b.le	LBB1_24
Ltmp35:
; %bb.6:
	;DEBUG_VALUE: bf16_fma:r_e <- $w11
	;DEBUG_VALUE: bf16_fma:z_m <- $w13
	;DEBUG_VALUE: bf16_fma:p_e <- $w15
	;DEBUG_VALUE: bf16_fma:p_m <- $w12
	;DEBUG_VALUE: bf16_fma:p_sign <- $w8
	;DEBUG_VALUE: bf16_fma:z_sign <- [DW_OP_constu 18446744073709518848, DW_OP_and, DW_OP_stack_value] $w2
	;DEBUG_VALUE: bf16_fma:z_e <- $w14
	;DEBUG_VALUE: bf16_fma:z <- $w2
	;DEBUG_VALUE: bf16_fma:y <- $w1
	.loc	4 68 20 is_stmt 0               ; vecfp.c:68:20
	sub	w14, w11, w14
Ltmp36:
	;DEBUG_VALUE: s <- $w14
	cmp	w14, #32
	b.lt	LBB1_23
Ltmp37:
; %bb.7:
	;DEBUG_VALUE: s <- $w14
	;DEBUG_VALUE: bf16_fma:r_e <- $w11
	;DEBUG_VALUE: bf16_fma:z_m <- $w13
	;DEBUG_VALUE: bf16_fma:p_e <- $w15
	;DEBUG_VALUE: bf16_fma:p_m <- $w12
	;DEBUG_VALUE: bf16_fma:p_sign <- $w8
	;DEBUG_VALUE: bf16_fma:z_sign <- [DW_OP_constu 18446744073709518848, DW_OP_and, DW_OP_stack_value] $w2
	;DEBUG_VALUE: bf16_fma:z <- $w2
	;DEBUG_VALUE: bf16_fma:y <- $w1
	.loc	4 68 20                         ; vecfp.c:68:20
	cmp	w10, #0
	cset	w13, ne
Ltmp38:
	;DEBUG_VALUE: bf16_fma:z_m <- $w13
	.loc	4 0 20                          ; vecfp.c:0:20
	b	LBB1_24
Ltmp39:
LBB1_8:
	;DEBUG_VALUE: bf16_fma:p_sign <- $w8
	;DEBUG_VALUE: bf16_fma:z_sign <- [DW_OP_constu 18446744073709518848, DW_OP_and, DW_OP_stack_value] $w2
	;DEBUG_VALUE: bf16_fma:z_e <- $w11
	;DEBUG_VALUE: bf16_fma:z_m <- $w10
	;DEBUG_VALUE: bf16_fma:y_e <- $w16
	;DEBUG_VALUE: bf16_fma:y_m <- $w15
	;DEBUG_VALUE: bf16_fma:x_e <- $w13
	;DEBUG_VALUE: bf16_fma:x_m <- $w12
	;DEBUG_VALUE: bf16_fma:z <- $w2
	;DEBUG_VALUE: bf16_fma:y <- $w1
	;DEBUG_VALUE: bf16_fma:x <- $w0
	.loc	4 35 25 is_stmt 1               ; vecfp.c:35:25
	cmp	w13, #255
	b.ne	LBB1_11
Ltmp40:
; %bb.9:
	;DEBUG_VALUE: bf16_fma:p_sign <- $w8
	;DEBUG_VALUE: bf16_fma:z_sign <- [DW_OP_constu 18446744073709518848, DW_OP_and, DW_OP_stack_value] $w2
	;DEBUG_VALUE: bf16_fma:z_e <- $w11
	;DEBUG_VALUE: bf16_fma:z_m <- $w10
	;DEBUG_VALUE: bf16_fma:y_e <- $w16
	;DEBUG_VALUE: bf16_fma:y_m <- $w15
	;DEBUG_VALUE: bf16_fma:x_e <- $w13
	;DEBUG_VALUE: bf16_fma:x_m <- $w12
	;DEBUG_VALUE: bf16_fma:z <- $w2
	;DEBUG_VALUE: bf16_fma:y <- $w1
	;DEBUG_VALUE: bf16_fma:x <- $w0
	.loc	4 0 25 is_stmt 0                ; vecfp.c:0:25
	mov	w13, #32704
Ltmp41:
	.loc	4 35 40                         ; vecfp.c:35:40
	cmp	w12, #128
	b.ne	LBB1_15
Ltmp42:
; %bb.10:
	;DEBUG_VALUE: bf16_fma:p_sign <- $w8
	;DEBUG_VALUE: bf16_fma:z_sign <- [DW_OP_constu 18446744073709518848, DW_OP_and, DW_OP_stack_value] $w2
	;DEBUG_VALUE: bf16_fma:z_e <- $w11
	;DEBUG_VALUE: bf16_fma:z_m <- $w10
	;DEBUG_VALUE: bf16_fma:y_e <- $w16
	;DEBUG_VALUE: bf16_fma:y_m <- $w15
	;DEBUG_VALUE: bf16_fma:x_m <- $w12
	;DEBUG_VALUE: bf16_fma:z <- $w2
	;DEBUG_VALUE: bf16_fma:y <- $w1
	;DEBUG_VALUE: bf16_fma:x <- $w0
	cbz	w15, LBB1_15
Ltmp43:
LBB1_11:
	;DEBUG_VALUE: bf16_fma:p_sign <- $w8
	;DEBUG_VALUE: bf16_fma:z_sign <- [DW_OP_constu 18446744073709518848, DW_OP_and, DW_OP_stack_value] $w2
	;DEBUG_VALUE: bf16_fma:z_e <- $w11
	;DEBUG_VALUE: bf16_fma:z_m <- $w10
	;DEBUG_VALUE: bf16_fma:y_e <- $w16
	;DEBUG_VALUE: bf16_fma:y_m <- $w15
	;DEBUG_VALUE: bf16_fma:x_m <- $w12
	;DEBUG_VALUE: bf16_fma:z <- $w2
	;DEBUG_VALUE: bf16_fma:y <- $w1
	;DEBUG_VALUE: bf16_fma:x <- $w0
	.loc	4 36 25 is_stmt 1               ; vecfp.c:36:25
	cmp	w16, #255
	b.ne	LBB1_17
Ltmp44:
; %bb.12:
	;DEBUG_VALUE: bf16_fma:p_sign <- $w8
	;DEBUG_VALUE: bf16_fma:z_sign <- [DW_OP_constu 18446744073709518848, DW_OP_and, DW_OP_stack_value] $w2
	;DEBUG_VALUE: bf16_fma:z_e <- $w11
	;DEBUG_VALUE: bf16_fma:z_m <- $w10
	;DEBUG_VALUE: bf16_fma:y_e <- $w16
	;DEBUG_VALUE: bf16_fma:y_m <- $w15
	;DEBUG_VALUE: bf16_fma:x_m <- $w12
	;DEBUG_VALUE: bf16_fma:z <- $w2
	;DEBUG_VALUE: bf16_fma:y <- $w1
	;DEBUG_VALUE: bf16_fma:x <- $w0
	.loc	4 0 25 is_stmt 0                ; vecfp.c:0:25
	cmp	w11, #255
	mov	w13, #128
	ccmp	w10, w13, #4, eq
	cset	w10, ne
Ltmp45:
	mov	w13, #32704
	.loc	4 36 40                         ; vecfp.c:36:40
	cmp	w15, #128
	b.ne	LBB1_15
Ltmp46:
; %bb.13:
	;DEBUG_VALUE: bf16_fma:p_sign <- $w8
	;DEBUG_VALUE: bf16_fma:z_sign <- [DW_OP_constu 18446744073709518848, DW_OP_and, DW_OP_stack_value] $w2
	;DEBUG_VALUE: bf16_fma:z_e <- $w11
	;DEBUG_VALUE: bf16_fma:y_e <- $w16
	;DEBUG_VALUE: bf16_fma:y_m <- $w15
	;DEBUG_VALUE: bf16_fma:x_m <- $w12
	;DEBUG_VALUE: bf16_fma:z <- $w2
	;DEBUG_VALUE: bf16_fma:y <- $w1
	;DEBUG_VALUE: bf16_fma:x <- $w0
	cbz	w12, LBB1_15
Ltmp47:
; %bb.14:
	;DEBUG_VALUE: bf16_fma:p_sign <- $w8
	;DEBUG_VALUE: bf16_fma:z_sign <- [DW_OP_constu 18446744073709518848, DW_OP_and, DW_OP_stack_value] $w2
	;DEBUG_VALUE: bf16_fma:z_e <- $w11
	;DEBUG_VALUE: bf16_fma:y_e <- $w16
	;DEBUG_VALUE: bf16_fma:y_m <- $w15
	;DEBUG_VALUE: bf16_fma:x_m <- $w12
	;DEBUG_VALUE: bf16_fma:z <- $w2
	;DEBUG_VALUE: bf16_fma:y <- $w1
	;DEBUG_VALUE: bf16_fma:x <- $w0
	tbz	w10, #0, LBB1_19
Ltmp48:
LBB1_15:
	;DEBUG_VALUE: bf16_fma:p_sign <- $w8
	;DEBUG_VALUE: bf16_fma:z_sign <- [DW_OP_constu 18446744073709518848, DW_OP_and, DW_OP_stack_value] $w2
	;DEBUG_VALUE: bf16_fma:z_e <- $w11
	;DEBUG_VALUE: bf16_fma:y_e <- $w16
	;DEBUG_VALUE: bf16_fma:y_m <- $w15
	;DEBUG_VALUE: bf16_fma:x_m <- $w12
	;DEBUG_VALUE: bf16_fma:z <- $w2
	;DEBUG_VALUE: bf16_fma:y <- $w1
	;DEBUG_VALUE: bf16_fma:x <- $w0
	.loc	4 89 1 is_stmt 1                ; vecfp.c:89:1
	and	w0, w13, #0xffff
Ltmp49:
	;DEBUG_VALUE: bf16_fma:x <- [DW_OP_LLVM_entry_value 1] $w0
	ret
Ltmp50:
LBB1_16:
	;DEBUG_VALUE: bf16_fma:p_m <- $w12
	;DEBUG_VALUE: bf16_fma:p_sign <- $w8
	;DEBUG_VALUE: bf16_fma:z_sign <- [DW_OP_constu 18446744073709518848, DW_OP_and, DW_OP_stack_value] $w2
	;DEBUG_VALUE: bf16_fma:z_e <- $w11
	;DEBUG_VALUE: bf16_fma:z_m <- $w10
	;DEBUG_VALUE: bf16_fma:y_e <- $w16
	;DEBUG_VALUE: bf16_fma:y_m <- $w15
	;DEBUG_VALUE: bf16_fma:x_e <- $w13
	;DEBUG_VALUE: bf16_fma:z <- $w2
	;DEBUG_VALUE: bf16_fma:y <- $w1
	;DEBUG_VALUE: bf16_fma:x <- $w0
	.loc	4 52 31                         ; vecfp.c:52:31
	cmp	w10, #0
	csel	w8, w8, w2, eq
Ltmp51:
	.loc	4 0 31 is_stmt 0                ; vecfp.c:0:31
	b	LBB1_27
Ltmp52:
LBB1_17:
	;DEBUG_VALUE: bf16_fma:p_sign <- $w8
	;DEBUG_VALUE: bf16_fma:z_sign <- [DW_OP_constu 18446744073709518848, DW_OP_and, DW_OP_stack_value] $w2
	;DEBUG_VALUE: bf16_fma:z_e <- $w11
	;DEBUG_VALUE: bf16_fma:z_m <- $w10
	;DEBUG_VALUE: bf16_fma:y_e <- $w16
	;DEBUG_VALUE: bf16_fma:y_m <- $w15
	;DEBUG_VALUE: bf16_fma:x_m <- $w12
	;DEBUG_VALUE: bf16_fma:z <- $w2
	;DEBUG_VALUE: bf16_fma:y <- $w1
	;DEBUG_VALUE: bf16_fma:x <- $w0
	.loc	4 37 25 is_stmt 1               ; vecfp.c:37:25
	cmp	w11, #255
	b.ne	LBB1_19
Ltmp53:
; %bb.18:
	;DEBUG_VALUE: bf16_fma:p_sign <- $w8
	;DEBUG_VALUE: bf16_fma:z_sign <- [DW_OP_constu 18446744073709518848, DW_OP_and, DW_OP_stack_value] $w2
	;DEBUG_VALUE: bf16_fma:z_e <- $w11
	;DEBUG_VALUE: bf16_fma:z_m <- $w10
	;DEBUG_VALUE: bf16_fma:y_e <- $w16
	;DEBUG_VALUE: bf16_fma:y_m <- $w15
	;DEBUG_VALUE: bf16_fma:x_m <- $w12
	;DEBUG_VALUE: bf16_fma:z <- $w2
	;DEBUG_VALUE: bf16_fma:y <- $w1
	;DEBUG_VALUE: bf16_fma:x <- $w0
	cmp	w10, #128
	b.ne	LBB1_21
Ltmp54:
LBB1_19:
	;DEBUG_VALUE: bf16_fma:p_sign <- $w8
	;DEBUG_VALUE: bf16_fma:z_sign <- [DW_OP_constu 18446744073709518848, DW_OP_and, DW_OP_stack_value] $w2
	;DEBUG_VALUE: bf16_fma:z_e <- $w11
	;DEBUG_VALUE: bf16_fma:y_e <- $w16
	;DEBUG_VALUE: bf16_fma:y_m <- $w15
	;DEBUG_VALUE: bf16_fma:x_m <- $w12
	;DEBUG_VALUE: bf16_fma:z <- $w2
	;DEBUG_VALUE: bf16_fma:y <- $w1
	;DEBUG_VALUE: bf16_fma:x <- $w0
	.loc	4 0 25 is_stmt 0                ; vecfp.c:0:25
	cmp	w11, #255
	cset	w10, eq
	.loc	4 38 25 is_stmt 1               ; vecfp.c:38:25
	cmp	w9, w8
	b.eq	LBB1_22
Ltmp55:
; %bb.20:
	;DEBUG_VALUE: bf16_fma:p_sign <- $w8
	;DEBUG_VALUE: bf16_fma:z_sign <- [DW_OP_constu 18446744073709518848, DW_OP_and, DW_OP_stack_value] $w2
	;DEBUG_VALUE: bf16_fma:z_e <- $w11
	;DEBUG_VALUE: bf16_fma:y_e <- $w16
	;DEBUG_VALUE: bf16_fma:y_m <- $w15
	;DEBUG_VALUE: bf16_fma:x_m <- $w12
	;DEBUG_VALUE: bf16_fma:z <- $w2
	;DEBUG_VALUE: bf16_fma:y <- $w1
	;DEBUG_VALUE: bf16_fma:x <- $w0
	.loc	4 0 25 is_stmt 0                ; vecfp.c:0:25
	and	w9, w10, w14
	.loc	4 38 25                         ; vecfp.c:38:25
	tbz	w9, #0, LBB1_22
Ltmp56:
LBB1_21:
	;DEBUG_VALUE: bf16_fma:p_sign <- $w8
	;DEBUG_VALUE: bf16_fma:z_sign <- [DW_OP_constu 18446744073709518848, DW_OP_and, DW_OP_stack_value] $w2
	;DEBUG_VALUE: bf16_fma:z_e <- $w11
	;DEBUG_VALUE: bf16_fma:y_e <- $w16
	;DEBUG_VALUE: bf16_fma:y_m <- $w15
	;DEBUG_VALUE: bf16_fma:x_m <- $w12
	;DEBUG_VALUE: bf16_fma:z <- $w2
	;DEBUG_VALUE: bf16_fma:y <- $w1
	;DEBUG_VALUE: bf16_fma:x <- $w0
	.loc	4 0 25                          ; vecfp.c:0:25
	mov	w13, #32704
	.loc	4 89 1 is_stmt 1                ; vecfp.c:89:1
	and	w0, w13, #0xffff
Ltmp57:
	;DEBUG_VALUE: bf16_fma:x <- [DW_OP_LLVM_entry_value 1] $w0
	ret
Ltmp58:
LBB1_22:
	;DEBUG_VALUE: bf16_fma:p_sign <- $w8
	;DEBUG_VALUE: bf16_fma:z_sign <- [DW_OP_constu 18446744073709518848, DW_OP_and, DW_OP_stack_value] $w2
	;DEBUG_VALUE: bf16_fma:z_e <- $w11
	;DEBUG_VALUE: bf16_fma:y_e <- $w16
	;DEBUG_VALUE: bf16_fma:y_m <- $w15
	;DEBUG_VALUE: bf16_fma:x_m <- $w12
	;DEBUG_VALUE: bf16_fma:z <- $w2
	;DEBUG_VALUE: bf16_fma:y <- $w1
	;DEBUG_VALUE: bf16_fma:x <- $w0
	.loc	4 0 1 is_stmt 0                 ; vecfp.c:0:1
	orr	w8, w8, #0x7f80
Ltmp59:
	.loc	4 40 20 is_stmt 1               ; vecfp.c:40:20
	cmp	w11, #255
	csel	w13, w2, w8, eq
Ltmp60:
	.loc	4 89 1                          ; vecfp.c:89:1
	and	w0, w13, #0xffff
Ltmp61:
	;DEBUG_VALUE: bf16_fma:x <- [DW_OP_LLVM_entry_value 1] $w0
	ret
Ltmp62:
LBB1_23:
	;DEBUG_VALUE: s <- $w14
	;DEBUG_VALUE: bf16_fma:r_e <- $w11
	;DEBUG_VALUE: bf16_fma:z_m <- $w13
	;DEBUG_VALUE: bf16_fma:p_e <- $w15
	;DEBUG_VALUE: bf16_fma:p_m <- $w12
	;DEBUG_VALUE: bf16_fma:p_sign <- $w8
	;DEBUG_VALUE: bf16_fma:z_sign <- [DW_OP_constu 18446744073709518848, DW_OP_and, DW_OP_stack_value] $w2
	;DEBUG_VALUE: bf16_fma:z <- $w2
	;DEBUG_VALUE: bf16_fma:y <- $w1
	;DEBUG_VALUE: orig <- undef
	.loc	4 68 20                         ; vecfp.c:68:20
	lsr	w10, w13, w14
Ltmp63:
	;DEBUG_VALUE: bf16_fma:z_m <- $w10
	lsl	w14, w10, w14
Ltmp64:
	cmp	w14, w13
	cset	w13, ne
	orr	w13, w10, w13
Ltmp65:
	;DEBUG_VALUE: bf16_fma:z_m <- $w13
LBB1_24:
	;DEBUG_VALUE: bf16_fma:r_e <- $w11
	;DEBUG_VALUE: bf16_fma:z_m <- $w13
	;DEBUG_VALUE: bf16_fma:p_e <- $w15
	;DEBUG_VALUE: bf16_fma:p_m <- $w12
	;DEBUG_VALUE: bf16_fma:p_sign <- $w8
	;DEBUG_VALUE: bf16_fma:z_sign <- [DW_OP_constu 18446744073709518848, DW_OP_and, DW_OP_stack_value] $w2
	;DEBUG_VALUE: bf16_fma:z <- $w2
	;DEBUG_VALUE: bf16_fma:y <- $w1
	;DEBUG_VALUE: bf16_fma:z_m <- $w13
	.loc	4 69 23                         ; vecfp.c:69:23
	cmp	w12, w13
	csel	w10, w9, w8, lo
Ltmp66:
	;DEBUG_VALUE: bf16_fma:r_sign <- $w10
	.loc	4 69 27 is_stmt 0               ; vecfp.c:69:27
	cmp	w9, w10
	cinv	w13, w13, ne
Ltmp67:
	;DEBUG_VALUE: bf16_fma:z_m <- $w13
	cmp	w8, w10
	cinv	w12, w12, ne
Ltmp68:
	;DEBUG_VALUE: bf16_fma:p_m <- $w12
	.loc	4 72 40 is_stmt 1               ; vecfp.c:72:40
	cmp	w8, w9
	.loc	4 72 24 is_stmt 0               ; vecfp.c:72:24
	cinc	w9, w12, ne
	.loc	4 72 30                         ; vecfp.c:72:30
	adds	w9, w9, w13
Ltmp69:
	;DEBUG_VALUE: bf16_fma:r_m <- $w9
	.loc	4 73 9 is_stmt 1                ; vecfp.c:73:9
	b.eq	LBB1_27
Ltmp70:
; %bb.25:
	;DEBUG_VALUE: bf16_fma:r_m <- $w9
	;DEBUG_VALUE: bf16_fma:r_sign <- $w10
	;DEBUG_VALUE: bf16_fma:r_e <- $w11
	;DEBUG_VALUE: bf16_fma:z_m <- $w13
	;DEBUG_VALUE: bf16_fma:p_e <- $w15
	;DEBUG_VALUE: bf16_fma:p_m <- $w12
	;DEBUG_VALUE: bf16_fma:p_sign <- $w8
	;DEBUG_VALUE: bf16_fma:z_sign <- [DW_OP_constu 18446744073709518848, DW_OP_and, DW_OP_stack_value] $w2
	;DEBUG_VALUE: bf16_fma:z <- $w2
	;DEBUG_VALUE: bf16_fma:y <- $w1
	.loc	4 76 22                         ; vecfp.c:76:22
	clz	w12, w9
Ltmp71:
	.loc	4 0 22 is_stmt 0                ; vecfp.c:0:22
	mov	w8, #21
Ltmp72:
	.loc	4 76 20                         ; vecfp.c:76:20
	sub	w13, w8, w12
Ltmp73:
	;DEBUG_VALUE: bf16_fma:n <- $w13
	.loc	4 77 9 is_stmt 1                ; vecfp.c:77:9
	add	w8, w13, w11
Ltmp74:
	;DEBUG_VALUE: orig <- $w9
	;DEBUG_VALUE: s <- $w13
	;DEBUG_VALUE: bf16_fma:r_e <- $w8
	.loc	4 78 33                         ; vecfp.c:78:33
	lsr	w11, w9, w13
Ltmp75:
	;DEBUG_VALUE: bf16_fma:r_m <- $w11
	lsl	w13, w11, w13
Ltmp76:
	cmp	w13, w9
	cset	w13, ne
	orr	w11, w11, w13
Ltmp77:
	;DEBUG_VALUE: bf16_fma:r_m <- $w11
	.loc	4 76 20                         ; vecfp.c:76:20
	sub	w12, w12, #21
Ltmp78:
	.loc	4 78 20                         ; vecfp.c:78:20
	lsl	w12, w9, w12
Ltmp79:
	;DEBUG_VALUE: bf16_fma:r_m <- $w12
	.loc	4 78 9 is_stmt 0                ; vecfp.c:78:9
	cmp	w9, #1023
	csel	w9, w11, w12, hi
Ltmp80:
	;DEBUG_VALUE: bf16_fma:r_m <- $w9
	.loc	4 79 9 is_stmt 1                ; vecfp.c:79:9
	cmp	w8, #255
	b.lt	LBB1_28
Ltmp81:
; %bb.26:
	;DEBUG_VALUE: bf16_fma:r_e <- $w8
	;DEBUG_VALUE: bf16_fma:r_m <- $w9
	;DEBUG_VALUE: bf16_fma:r_sign <- $w10
	;DEBUG_VALUE: bf16_fma:p_e <- $w15
	;DEBUG_VALUE: bf16_fma:z_sign <- [DW_OP_constu 18446744073709518848, DW_OP_and, DW_OP_stack_value] $w2
	;DEBUG_VALUE: bf16_fma:z <- $w2
	;DEBUG_VALUE: bf16_fma:y <- $w1
	.loc	4 79 35 is_stmt 0               ; vecfp.c:79:35
	orr	w13, w10, #0x7f80
Ltmp82:
	.loc	4 89 1 is_stmt 1                ; vecfp.c:89:1
	and	w0, w13, #0xffff
	ret
Ltmp83:
LBB1_27:
	;DEBUG_VALUE: bf16_fma:p_m <- $w12
	;DEBUG_VALUE: bf16_fma:z_sign <- [DW_OP_constu 18446744073709518848, DW_OP_and, DW_OP_stack_value] $w2
	;DEBUG_VALUE: bf16_fma:z <- $w2
	;DEBUG_VALUE: bf16_fma:y <- $w1
	.loc	4 0 0 is_stmt 0                 ; vecfp.c:0:0
	and	w13, w8, w2
	.loc	4 89 1                          ; vecfp.c:89:1
	and	w0, w13, #0xffff
	ret
Ltmp84:
LBB1_28:
	;DEBUG_VALUE: bf16_fma:r_e <- $w8
	;DEBUG_VALUE: bf16_fma:r_m <- $w9
	;DEBUG_VALUE: bf16_fma:r_sign <- $w10
	;DEBUG_VALUE: bf16_fma:p_e <- $w15
	;DEBUG_VALUE: bf16_fma:z_sign <- [DW_OP_constu 18446744073709518848, DW_OP_and, DW_OP_stack_value] $w2
	;DEBUG_VALUE: bf16_fma:z <- $w2
	;DEBUG_VALUE: bf16_fma:y <- $w1
	;DEBUG_VALUE: s <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_minus, DW_OP_stack_value] 1, $w8
	.loc	4 0 1                           ; vecfp.c:0:1
	mov	w11, #1
Ltmp85:
	.loc	4 81 9 is_stmt 1                ; vecfp.c:81:9
	sub	w11, w11, w8
Ltmp86:
	;DEBUG_VALUE: orig <- $w9
	;DEBUG_VALUE: s <- $w11
	.loc	4 81 9 is_stmt 0                ; vecfp.c:81:9
	lsr	w12, w9, w11
Ltmp87:
	;DEBUG_VALUE: bf16_fma:r_m <- $w12
	lsl	w11, w12, w11
Ltmp88:
	cmp	w11, w9
	cset	w11, ne
	orr	w11, w12, w11
Ltmp89:
	;DEBUG_VALUE: bf16_fma:r_m <- $w11
	.loc	4 80 9 is_stmt 1                ; vecfp.c:80:9
	cmp	w8, #0
	csel	w8, w8, wzr, gt
Ltmp90:
	csel	w9, w9, w11, gt
Ltmp91:
	;DEBUG_VALUE: bf16_fma:r_m <- $w9
	;DEBUG_VALUE: bf16_fma:r_e <- $w8
	.loc	4 85 32                         ; vecfp.c:85:32
	lsl	w8, w8, #7
Ltmp92:
	.loc	4 85 38 is_stmt 0               ; vecfp.c:85:38
	bfxil	w8, w9, #3, #7
	.loc	4 85 18                         ; vecfp.c:85:18
	orr	w8, w10, w8
Ltmp93:
	;DEBUG_VALUE: bf16_fma:r <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_or, DW_OP_stack_value] undef
	.loc	4 88 23 is_stmt 1               ; vecfp.c:88:23
	and	w10, w9, #0x7
Ltmp94:
	.loc	4 88 33 is_stmt 0               ; vecfp.c:88:33
	ubfx	w9, w9, #3, #1
Ltmp95:
	.loc	4 88 28                         ; vecfp.c:88:28
	add	w9, w9, w10
	.loc	4 88 39                         ; vecfp.c:88:39
	cmp	w9, #4
	.loc	4 88 14                         ; vecfp.c:88:14
	cinc	w13, w8, hi
	.loc	4 89 1 is_stmt 1                ; vecfp.c:89:1
	and	w0, w13, #0xffff
	ret
Ltmp96:
Lfunc_end1:
	.cfi_endproc
                                        ; -- End function
	.globl	_vecfp_alu_bf16                 ; -- Begin function vecfp_alu_bf16
	.p2align	2
_vecfp_alu_bf16:                        ; @vecfp_alu_bf16
Lfunc_begin2:
	.loc	4 103 0                         ; vecfp.c:103:0
	.cfi_startproc
; %bb.0:
	;DEBUG_VALUE: vecfp_alu_bf16:x <- $w0
	;DEBUG_VALUE: vecfp_alu_bf16:y <- $w1
	;DEBUG_VALUE: vecfp_alu_bf16:z <- $w2
	;DEBUG_VALUE: vecfp_alu_bf16:alumode <- $w3
	.loc	4 104 5 prologue_end            ; vecfp.c:104:5
	cmp	w3, #12
	b.hi	LBB2_5
Ltmp97:
; %bb.1:
	;DEBUG_VALUE: vecfp_alu_bf16:alumode <- $w3
	;DEBUG_VALUE: vecfp_alu_bf16:z <- $w2
	;DEBUG_VALUE: vecfp_alu_bf16:y <- $w1
	;DEBUG_VALUE: vecfp_alu_bf16:x <- $w0
	;DEBUG_VALUE: vecfp_alu_bf16:x <- $w0
	;DEBUG_VALUE: vecfp_alu_bf16:y <- $w1
	.loc	4 0 5 is_stmt 0                 ; vecfp.c:0:5
	mov	w8, w3
Lloh0:
	adrp	x9, lJTI2_0@PAGE
Lloh1:
	add	x9, x9, lJTI2_0@PAGEOFF
	adr	x10, LBB2_2
	ldrb	w11, [x9, x8]
	add	x10, x10, x11, lsl #2
	br	x10
Ltmp98:
LBB2_2:
	;DEBUG_VALUE: vecfp_alu_bf16:alumode <- $w3
	;DEBUG_VALUE: vecfp_alu_bf16:z <- $w2
	;DEBUG_VALUE: vecfp_alu_bf16:y <- $w1
	;DEBUG_VALUE: vecfp_alu_bf16:x <- $w0
	.loc	4 105 17 is_stmt 1              ; vecfp.c:105:17
	b	_bf16_fma
Ltmp99:
LBB2_3:
	;DEBUG_VALUE: vecfp_alu_bf16:alumode <- $w3
	;DEBUG_VALUE: vecfp_alu_bf16:z <- $w2
	;DEBUG_VALUE: vecfp_alu_bf16:y <- $w1
	;DEBUG_VALUE: vecfp_alu_bf16:x <- $w0
	.loc	4 106 28                        ; vecfp.c:106:28
	eor	w0, w0, #0x8000
Ltmp100:
	.loc	4 106 17 is_stmt 0              ; vecfp.c:106:17
	b	_bf16_fma
Ltmp101:
LBB2_4:
	;DEBUG_VALUE: vecfp_alu_bf16:alumode <- $w3
	;DEBUG_VALUE: vecfp_alu_bf16:z <- $w2
	;DEBUG_VALUE: vecfp_alu_bf16:y <- $w1
	;DEBUG_VALUE: vecfp_alu_bf16:x <- $w0
	.loc	4 107 20 is_stmt 1              ; vecfp.c:107:20
	sxth	w8, w0
	cmn	w8, #127
	ccmp	w0, #0, #4, ge
	.loc	4 107 17 is_stmt 0              ; vecfp.c:107:17
	csel	w2, wzr, w1, eq
Ltmp102:
	;DEBUG_VALUE: vecfp_alu_bf16:z <- $w2
LBB2_5:
	;DEBUG_VALUE: vecfp_alu_bf16:alumode <- $w3
	;DEBUG_VALUE: vecfp_alu_bf16:z <- $w2
	;DEBUG_VALUE: vecfp_alu_bf16:y <- $w1
	;DEBUG_VALUE: vecfp_alu_bf16:x <- $w0
	;DEBUG_VALUE: vecfp_alu_bf16:z <- $w2
	.loc	4 114 5 is_stmt 1               ; vecfp.c:114:5
	mov	x0, x2
Ltmp103:
	ret
Ltmp104:
LBB2_6:
	;DEBUG_VALUE: vecfp_alu_bf16:alumode <- $w3
	;DEBUG_VALUE: vecfp_alu_bf16:z <- $w2
	;DEBUG_VALUE: vecfp_alu_bf16:y <- $w1
	;DEBUG_VALUE: vecfp_alu_bf16:x <- $w0
	;DEBUG_VALUE: bf16_min:x <- $w0
	;DEBUG_VALUE: bf16_min:z <- $w2
	.loc	4 93 9                          ; vecfp.c:93:9
	and	w8, w0, #0x7fff
	and	w9, w2, #0x7fff
	mov	w10, #32704
	mov	w11, #32640
Ltmp105:
	.loc	4 94 12                         ; vecfp.c:94:12
	sxth	w12, w0
	ubfx	w13, w12, #15, #15
	eor	w12, w13, w12
	.loc	4 94 21 is_stmt 0               ; vecfp.c:94:21
	sxth	w13, w2
	ubfx	w14, w13, #15, #15
	eor	w13, w14, w13
	.loc	4 94 12                         ; vecfp.c:94:12
	cmp	w12, w13
	csel	w12, w0, w2, lt
	b	LBB2_8
Ltmp106:
LBB2_7:
	;DEBUG_VALUE: vecfp_alu_bf16:alumode <- $w3
	;DEBUG_VALUE: vecfp_alu_bf16:z <- $w2
	;DEBUG_VALUE: vecfp_alu_bf16:y <- $w1
	;DEBUG_VALUE: vecfp_alu_bf16:x <- $w0
	;DEBUG_VALUE: bf16_max:x <- $w0
	;DEBUG_VALUE: bf16_max:z <- $w2
	.loc	4 98 9 is_stmt 1                ; vecfp.c:98:9
	and	w8, w0, #0x7fff
	and	w9, w2, #0x7fff
	mov	w10, #32704
	mov	w11, #32640
Ltmp107:
	.loc	4 99 12                         ; vecfp.c:99:12
	sxth	w12, w0
	ubfx	w13, w12, #15, #15
	eor	w12, w13, w12
	.loc	4 99 21 is_stmt 0               ; vecfp.c:99:21
	sxth	w13, w2
	ubfx	w14, w13, #15, #15
	eor	w13, w14, w13
	.loc	4 99 12                         ; vecfp.c:99:12
	cmp	w12, w13
	csel	w12, w0, w2, gt
Ltmp108:
LBB2_8:
	;DEBUG_VALUE: vecfp_alu_bf16:alumode <- $w3
	;DEBUG_VALUE: vecfp_alu_bf16:z <- $w2
	;DEBUG_VALUE: vecfp_alu_bf16:y <- $w1
	;DEBUG_VALUE: vecfp_alu_bf16:x <- $w0
	.loc	4 0 0                           ; vecfp.c:0:0
	cmp	w9, w11
	csel	w9, w10, w12, hi
	cmp	w8, w11
	csel	w0, w10, w9, hi
Ltmp109:
	;DEBUG_VALUE: vecfp_alu_bf16:z <- $w0
	.loc	4 114 5 is_stmt 1               ; vecfp.c:114:5
	ret
Ltmp110:
LBB2_9:
	;DEBUG_VALUE: vecfp_alu_bf16:alumode <- $w3
	;DEBUG_VALUE: vecfp_alu_bf16:z <- $w2
	;DEBUG_VALUE: vecfp_alu_bf16:y <- $w1
	;DEBUG_VALUE: vecfp_alu_bf16:x <- $w0
	.loc	4 110 18                        ; vecfp.c:110:18
	mov	w2, #32768
Ltmp111:
	;DEBUG_VALUE: vecfp_alu_bf16:z <- [DW_OP_LLVM_entry_value 1] $w2
	b	_bf16_fma
Ltmp112:
LBB2_10:
	;DEBUG_VALUE: vecfp_alu_bf16:alumode <- $w3
	;DEBUG_VALUE: vecfp_alu_bf16:z <- $w2
	;DEBUG_VALUE: vecfp_alu_bf16:y <- $w1
	;DEBUG_VALUE: vecfp_alu_bf16:x <- $w0
	.loc	4 111 18                        ; vecfp.c:111:18
	mov	w1, #16256
Ltmp113:
	b	_bf16_fma
Ltmp114:
LBB2_11:
	;DEBUG_VALUE: vecfp_alu_bf16:alumode <- $w3
	;DEBUG_VALUE: vecfp_alu_bf16:z <- $w2
	;DEBUG_VALUE: vecfp_alu_bf16:y <- $w1
	;DEBUG_VALUE: vecfp_alu_bf16:x <- $w0
	.loc	4 112 18                        ; vecfp.c:112:18
	mov	w0, #16256
Ltmp115:
	b	_bf16_fma
Ltmp116:
	.loh AdrpAdd	Lloh0, Lloh1
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__const
lJTI2_0:
	.byte	(LBB2_2-LBB2_2)>>2
	.byte	(LBB2_3-LBB2_2)>>2
	.byte	(LBB2_5-LBB2_2)>>2
	.byte	(LBB2_5-LBB2_2)>>2
	.byte	(LBB2_4-LBB2_2)>>2
	.byte	(LBB2_6-LBB2_2)>>2
	.byte	(LBB2_5-LBB2_2)>>2
	.byte	(LBB2_7-LBB2_2)>>2
	.byte	(LBB2_5-LBB2_2)>>2
	.byte	(LBB2_5-LBB2_2)>>2
	.byte	(LBB2_9-LBB2_2)>>2
	.byte	(LBB2_10-LBB2_2)>>2
	.byte	(LBB2_11-LBB2_2)>>2
	.file	5 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types" "_uint16_t.h"
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_vecfp_alu16                    ; -- Begin function vecfp_alu16
	.p2align	2
_vecfp_alu16:                           ; @vecfp_alu16
Lfunc_begin3:
	.loc	4 117 0                         ; vecfp.c:117:0
	.cfi_startproc
; %bb.0:
	;DEBUG_VALUE: vecfp_alu16:x <- $h0
	;DEBUG_VALUE: vecfp_alu16:y <- $h1
	;DEBUG_VALUE: vecfp_alu16:z <- $h2
	;DEBUG_VALUE: vecfp_alu16:alumode <- $w0
	.loc	4 118 5 prologue_end            ; vecfp.c:118:5
	cmp	w0, #12
	b.hi	LBB3_10
Ltmp117:
; %bb.1:
	;DEBUG_VALUE: vecfp_alu16:alumode <- $w0
	;DEBUG_VALUE: vecfp_alu16:z <- $h2
	;DEBUG_VALUE: vecfp_alu16:y <- $h1
	;DEBUG_VALUE: vecfp_alu16:x <- $h0
	.loc	4 0 5 is_stmt 0                 ; vecfp.c:0:5
	mov	w8, w0
Lloh2:
	adrp	x9, lJTI3_0@PAGE
Lloh3:
	add	x9, x9, lJTI3_0@PAGEOFF
Ltmp118:
	adr	x10, Ltmp118
	ldrsw	x11, [x9, x8, lsl #2]
	add	x10, x10, x11
	br	x10
Ltmp119:
LBB3_2:
	;DEBUG_VALUE: vecfp_alu16:alumode <- $w0
	;DEBUG_VALUE: vecfp_alu16:z <- $h2
	;DEBUG_VALUE: vecfp_alu16:y <- $h1
	;DEBUG_VALUE: vecfp_alu16:x <- $h0
	.loc	4 119 13 is_stmt 1              ; vecfp.c:119:13
	; InlineAsm Start
	fmadd	h0, h0, h1, h2
	; InlineAsm End
Ltmp120:
	;DEBUG_VALUE: vecfp_alu16:x <- [DW_OP_LLVM_entry_value 1] $h0
	;DEBUG_VALUE: vecfp_alu16:z <- $h0
	.loc	4 128 5                         ; vecfp.c:128:5
	ret
Ltmp121:
LBB3_3:
	;DEBUG_VALUE: vecfp_alu16:alumode <- $w0
	;DEBUG_VALUE: vecfp_alu16:z <- $h2
	;DEBUG_VALUE: vecfp_alu16:y <- $h1
	;DEBUG_VALUE: vecfp_alu16:x <- $h0
	.loc	4 120 13                        ; vecfp.c:120:13
	; InlineAsm Start
	fmsub	h0, h0, h1, h2
	; InlineAsm End
Ltmp122:
	;DEBUG_VALUE: vecfp_alu16:x <- [DW_OP_LLVM_entry_value 1] $h0
	;DEBUG_VALUE: vecfp_alu16:z <- $h0
	.loc	4 128 5                         ; vecfp.c:128:5
	ret
Ltmp123:
LBB3_4:
	;DEBUG_VALUE: vecfp_alu16:alumode <- $w0
	;DEBUG_VALUE: vecfp_alu16:z <- $h2
	;DEBUG_VALUE: vecfp_alu16:y <- $h1
	;DEBUG_VALUE: vecfp_alu16:x <- $h0
	.loc	4 121 17                        ; vecfp.c:121:17
	fcmp	h0, #0.0
	movi	d0, #0000000000000000
Ltmp124:
	;DEBUG_VALUE: vecfp_alu16:x <- [DW_OP_LLVM_entry_value 1] $h0
	fcsel	h0, h0, h1, ls
Ltmp125:
	;DEBUG_VALUE: vecfp_alu16:z <- $h0
	;DEBUG_VALUE: vecfp_alu16:z <- $h0
	.loc	4 128 5                         ; vecfp.c:128:5
	ret
Ltmp126:
LBB3_5:
	;DEBUG_VALUE: vecfp_alu16:alumode <- $w0
	;DEBUG_VALUE: vecfp_alu16:z <- $h2
	;DEBUG_VALUE: vecfp_alu16:y <- $h1
	;DEBUG_VALUE: vecfp_alu16:x <- $h0
	.loc	4 122 13                        ; vecfp.c:122:13
	; InlineAsm Start
	fmin	h0, h0, h2
	; InlineAsm End
Ltmp127:
	;DEBUG_VALUE: vecfp_alu16:x <- [DW_OP_LLVM_entry_value 1] $h0
	;DEBUG_VALUE: vecfp_alu16:z <- $h0
	.loc	4 128 5                         ; vecfp.c:128:5
	ret
Ltmp128:
LBB3_6:
	;DEBUG_VALUE: vecfp_alu16:alumode <- $w0
	;DEBUG_VALUE: vecfp_alu16:z <- $h2
	;DEBUG_VALUE: vecfp_alu16:y <- $h1
	;DEBUG_VALUE: vecfp_alu16:x <- $h0
	.loc	4 123 13                        ; vecfp.c:123:13
	; InlineAsm Start
	fmax	h0, h0, h2
	; InlineAsm End
Ltmp129:
	;DEBUG_VALUE: vecfp_alu16:x <- [DW_OP_LLVM_entry_value 1] $h0
	;DEBUG_VALUE: vecfp_alu16:z <- $h0
	.loc	4 128 5                         ; vecfp.c:128:5
	ret
Ltmp130:
LBB3_7:
	;DEBUG_VALUE: vecfp_alu16:alumode <- $w0
	;DEBUG_VALUE: vecfp_alu16:z <- $h2
	;DEBUG_VALUE: vecfp_alu16:y <- $h1
	;DEBUG_VALUE: vecfp_alu16:x <- $h0
	.loc	4 124 20                        ; vecfp.c:124:20
	fmul	h0, h0, h1
Ltmp131:
	;DEBUG_VALUE: vecfp_alu16:x <- [DW_OP_LLVM_entry_value 1] $h0
	;DEBUG_VALUE: vecfp_alu16:z <- $h0
	;DEBUG_VALUE: vecfp_alu16:z <- $h0
	.loc	4 128 5                         ; vecfp.c:128:5
	ret
Ltmp132:
LBB3_8:
	;DEBUG_VALUE: vecfp_alu16:alumode <- $w0
	;DEBUG_VALUE: vecfp_alu16:z <- $h2
	;DEBUG_VALUE: vecfp_alu16:y <- $h1
	;DEBUG_VALUE: vecfp_alu16:x <- $h0
	.loc	4 125 20                        ; vecfp.c:125:20
	fadd	h0, h0, h2
Ltmp133:
	;DEBUG_VALUE: vecfp_alu16:x <- [DW_OP_LLVM_entry_value 1] $h0
	;DEBUG_VALUE: vecfp_alu16:z <- $h0
	;DEBUG_VALUE: vecfp_alu16:z <- $h0
	.loc	4 128 5                         ; vecfp.c:128:5
	ret
Ltmp134:
LBB3_9:
	;DEBUG_VALUE: vecfp_alu16:alumode <- $w0
	;DEBUG_VALUE: vecfp_alu16:z <- $h2
	;DEBUG_VALUE: vecfp_alu16:y <- $h1
	;DEBUG_VALUE: vecfp_alu16:x <- $h0
	.loc	4 126 20                        ; vecfp.c:126:20
	fadd	h2, h1, h2
Ltmp135:
	;DEBUG_VALUE: vecfp_alu16:z <- $h2
LBB3_10:
	;DEBUG_VALUE: vecfp_alu16:alumode <- $w0
	;DEBUG_VALUE: vecfp_alu16:z <- $h2
	;DEBUG_VALUE: vecfp_alu16:y <- $h1
	;DEBUG_VALUE: vecfp_alu16:x <- $h0
	;DEBUG_VALUE: vecfp_alu16:z <- $h2
	.loc	4 128 5                         ; vecfp.c:128:5
	fmov	s0, s2
Ltmp136:
	;DEBUG_VALUE: vecfp_alu16:x <- [DW_OP_LLVM_entry_value 1] $h0
	ret
Ltmp137:
	.loh AdrpAdd	Lloh2, Lloh3
Lfunc_end3:
	.cfi_endproc
	.p2align	2
lJTI3_0:
	.long	LBB3_2-Ltmp118
	.long	LBB3_3-Ltmp118
	.long	LBB3_10-Ltmp118
	.long	LBB3_10-Ltmp118
	.long	LBB3_4-Ltmp118
	.long	LBB3_5-Ltmp118
	.long	LBB3_10-Ltmp118
	.long	LBB3_6-Ltmp118
	.long	LBB3_10-Ltmp118
	.long	LBB3_10-Ltmp118
	.long	LBB3_7-Ltmp118
	.long	LBB3_8-Ltmp118
	.long	LBB3_9-Ltmp118
                                        ; -- End function
	.globl	_vecfp_alu32                    ; -- Begin function vecfp_alu32
	.p2align	2
_vecfp_alu32:                           ; @vecfp_alu32
Lfunc_begin4:
	.loc	4 131 0                         ; vecfp.c:131:0
	.cfi_startproc
; %bb.0:
	;DEBUG_VALUE: vecfp_alu32:x <- $s0
	;DEBUG_VALUE: vecfp_alu32:y <- $s1
	;DEBUG_VALUE: vecfp_alu32:z <- $s2
	;DEBUG_VALUE: vecfp_alu32:alumode <- $w0
	.loc	4 132 5 prologue_end            ; vecfp.c:132:5
	cmp	w0, #12
	b.hi	LBB4_10
Ltmp138:
; %bb.1:
	;DEBUG_VALUE: vecfp_alu32:alumode <- $w0
	;DEBUG_VALUE: vecfp_alu32:z <- $s2
	;DEBUG_VALUE: vecfp_alu32:y <- $s1
	;DEBUG_VALUE: vecfp_alu32:x <- $s0
	.loc	4 0 5 is_stmt 0                 ; vecfp.c:0:5
	mov	w8, w0
Lloh4:
	adrp	x9, lJTI4_0@PAGE
Lloh5:
	add	x9, x9, lJTI4_0@PAGEOFF
Ltmp139:
	adr	x10, Ltmp139
	ldrsw	x11, [x9, x8, lsl #2]
	add	x10, x10, x11
	br	x10
Ltmp140:
LBB4_2:
	;DEBUG_VALUE: vecfp_alu32:alumode <- $w0
	;DEBUG_VALUE: vecfp_alu32:z <- $s2
	;DEBUG_VALUE: vecfp_alu32:y <- $s1
	;DEBUG_VALUE: vecfp_alu32:x <- $s0
	.loc	4 133 13 is_stmt 1              ; vecfp.c:133:13
	; InlineAsm Start
	fmadd	s0, s0, s1, s2
	; InlineAsm End
Ltmp141:
	;DEBUG_VALUE: vecfp_alu32:x <- [DW_OP_LLVM_entry_value 1] $s0
	;DEBUG_VALUE: vecfp_alu32:z <- $s0
	.loc	4 142 5                         ; vecfp.c:142:5
	ret
Ltmp142:
LBB4_3:
	;DEBUG_VALUE: vecfp_alu32:alumode <- $w0
	;DEBUG_VALUE: vecfp_alu32:z <- $s2
	;DEBUG_VALUE: vecfp_alu32:y <- $s1
	;DEBUG_VALUE: vecfp_alu32:x <- $s0
	.loc	4 134 13                        ; vecfp.c:134:13
	; InlineAsm Start
	fmsub	s0, s0, s1, s2
	; InlineAsm End
Ltmp143:
	;DEBUG_VALUE: vecfp_alu32:x <- [DW_OP_LLVM_entry_value 1] $s0
	;DEBUG_VALUE: vecfp_alu32:z <- $s0
	.loc	4 142 5                         ; vecfp.c:142:5
	ret
Ltmp144:
LBB4_4:
	;DEBUG_VALUE: vecfp_alu32:alumode <- $w0
	;DEBUG_VALUE: vecfp_alu32:z <- $s2
	;DEBUG_VALUE: vecfp_alu32:y <- $s1
	;DEBUG_VALUE: vecfp_alu32:x <- $s0
	.loc	4 135 17                        ; vecfp.c:135:17
	fcmp	s0, #0.0
	movi	d0, #0000000000000000
Ltmp145:
	;DEBUG_VALUE: vecfp_alu32:x <- [DW_OP_LLVM_entry_value 1] $s0
	fcsel	s0, s0, s1, ls
Ltmp146:
	;DEBUG_VALUE: vecfp_alu32:z <- $s0
	;DEBUG_VALUE: vecfp_alu32:z <- $s0
	.loc	4 142 5                         ; vecfp.c:142:5
	ret
Ltmp147:
LBB4_5:
	;DEBUG_VALUE: vecfp_alu32:alumode <- $w0
	;DEBUG_VALUE: vecfp_alu32:z <- $s2
	;DEBUG_VALUE: vecfp_alu32:y <- $s1
	;DEBUG_VALUE: vecfp_alu32:x <- $s0
	.loc	4 136 13                        ; vecfp.c:136:13
	; InlineAsm Start
	fmin	s0, s0, s2
	; InlineAsm End
Ltmp148:
	;DEBUG_VALUE: vecfp_alu32:x <- [DW_OP_LLVM_entry_value 1] $s0
	;DEBUG_VALUE: vecfp_alu32:z <- $s0
	.loc	4 142 5                         ; vecfp.c:142:5
	ret
Ltmp149:
LBB4_6:
	;DEBUG_VALUE: vecfp_alu32:alumode <- $w0
	;DEBUG_VALUE: vecfp_alu32:z <- $s2
	;DEBUG_VALUE: vecfp_alu32:y <- $s1
	;DEBUG_VALUE: vecfp_alu32:x <- $s0
	.loc	4 137 13                        ; vecfp.c:137:13
	; InlineAsm Start
	fmax	s0, s0, s2
	; InlineAsm End
Ltmp150:
	;DEBUG_VALUE: vecfp_alu32:x <- [DW_OP_LLVM_entry_value 1] $s0
	;DEBUG_VALUE: vecfp_alu32:z <- $s0
	.loc	4 142 5                         ; vecfp.c:142:5
	ret
Ltmp151:
LBB4_7:
	;DEBUG_VALUE: vecfp_alu32:alumode <- $w0
	;DEBUG_VALUE: vecfp_alu32:z <- $s2
	;DEBUG_VALUE: vecfp_alu32:y <- $s1
	;DEBUG_VALUE: vecfp_alu32:x <- $s0
	.loc	4 138 20                        ; vecfp.c:138:20
	fmul	s0, s0, s1
Ltmp152:
	;DEBUG_VALUE: vecfp_alu32:x <- [DW_OP_LLVM_entry_value 1] $s0
	;DEBUG_VALUE: vecfp_alu32:z <- $s0
	;DEBUG_VALUE: vecfp_alu32:z <- $s0
	.loc	4 142 5                         ; vecfp.c:142:5
	ret
Ltmp153:
LBB4_8:
	;DEBUG_VALUE: vecfp_alu32:alumode <- $w0
	;DEBUG_VALUE: vecfp_alu32:z <- $s2
	;DEBUG_VALUE: vecfp_alu32:y <- $s1
	;DEBUG_VALUE: vecfp_alu32:x <- $s0
	.loc	4 139 20                        ; vecfp.c:139:20
	fadd	s0, s0, s2
Ltmp154:
	;DEBUG_VALUE: vecfp_alu32:x <- [DW_OP_LLVM_entry_value 1] $s0
	;DEBUG_VALUE: vecfp_alu32:z <- $s0
	;DEBUG_VALUE: vecfp_alu32:z <- $s0
	.loc	4 142 5                         ; vecfp.c:142:5
	ret
Ltmp155:
LBB4_9:
	;DEBUG_VALUE: vecfp_alu32:alumode <- $w0
	;DEBUG_VALUE: vecfp_alu32:z <- $s2
	;DEBUG_VALUE: vecfp_alu32:y <- $s1
	;DEBUG_VALUE: vecfp_alu32:x <- $s0
	.loc	4 140 20                        ; vecfp.c:140:20
	fadd	s2, s1, s2
Ltmp156:
	;DEBUG_VALUE: vecfp_alu32:z <- $s2
LBB4_10:
	;DEBUG_VALUE: vecfp_alu32:alumode <- $w0
	;DEBUG_VALUE: vecfp_alu32:z <- $s2
	;DEBUG_VALUE: vecfp_alu32:y <- $s1
	;DEBUG_VALUE: vecfp_alu32:x <- $s0
	;DEBUG_VALUE: vecfp_alu32:z <- $s2
	.loc	4 142 5                         ; vecfp.c:142:5
	fmov	s0, s2
Ltmp157:
	;DEBUG_VALUE: vecfp_alu32:x <- [DW_OP_LLVM_entry_value 1] $s0
	ret
Ltmp158:
	.loh AdrpAdd	Lloh4, Lloh5
Lfunc_end4:
	.cfi_endproc
	.p2align	2
lJTI4_0:
	.long	LBB4_2-Ltmp139
	.long	LBB4_3-Ltmp139
	.long	LBB4_10-Ltmp139
	.long	LBB4_10-Ltmp139
	.long	LBB4_4-Ltmp139
	.long	LBB4_5-Ltmp139
	.long	LBB4_10-Ltmp139
	.long	LBB4_6-Ltmp139
	.long	LBB4_10-Ltmp139
	.long	LBB4_10-Ltmp139
	.long	LBB4_7-Ltmp139
	.long	LBB4_8-Ltmp139
	.long	LBB4_9-Ltmp139
                                        ; -- End function
	.globl	_vecfp_alu64                    ; -- Begin function vecfp_alu64
	.p2align	2
_vecfp_alu64:                           ; @vecfp_alu64
Lfunc_begin5:
	.loc	4 145 0                         ; vecfp.c:145:0
	.cfi_startproc
; %bb.0:
	;DEBUG_VALUE: vecfp_alu64:x <- $d0
	;DEBUG_VALUE: vecfp_alu64:y <- $d1
	;DEBUG_VALUE: vecfp_alu64:z <- $d2
	;DEBUG_VALUE: vecfp_alu64:alumode <- $w0
	.loc	4 146 5 prologue_end            ; vecfp.c:146:5
	cmp	w0, #12
	b.hi	LBB5_10
Ltmp159:
; %bb.1:
	;DEBUG_VALUE: vecfp_alu64:alumode <- $w0
	;DEBUG_VALUE: vecfp_alu64:z <- $d2
	;DEBUG_VALUE: vecfp_alu64:y <- $d1
	;DEBUG_VALUE: vecfp_alu64:x <- $d0
	.loc	4 0 5 is_stmt 0                 ; vecfp.c:0:5
	mov	w8, w0
Lloh6:
	adrp	x9, lJTI5_0@PAGE
Lloh7:
	add	x9, x9, lJTI5_0@PAGEOFF
Ltmp160:
	adr	x10, Ltmp160
	ldrsw	x11, [x9, x8, lsl #2]
	add	x10, x10, x11
	br	x10
Ltmp161:
LBB5_2:
	;DEBUG_VALUE: vecfp_alu64:alumode <- $w0
	;DEBUG_VALUE: vecfp_alu64:z <- $d2
	;DEBUG_VALUE: vecfp_alu64:y <- $d1
	;DEBUG_VALUE: vecfp_alu64:x <- $d0
	.loc	4 147 13 is_stmt 1              ; vecfp.c:147:13
	; InlineAsm Start
	fmadd	d0, d0, d1, d2
	; InlineAsm End
Ltmp162:
	;DEBUG_VALUE: vecfp_alu64:x <- [DW_OP_LLVM_entry_value 1] $d0
	;DEBUG_VALUE: vecfp_alu64:z <- $d0
	.loc	4 156 5                         ; vecfp.c:156:5
	ret
Ltmp163:
LBB5_3:
	;DEBUG_VALUE: vecfp_alu64:alumode <- $w0
	;DEBUG_VALUE: vecfp_alu64:z <- $d2
	;DEBUG_VALUE: vecfp_alu64:y <- $d1
	;DEBUG_VALUE: vecfp_alu64:x <- $d0
	.loc	4 148 13                        ; vecfp.c:148:13
	; InlineAsm Start
	fmsub	d0, d0, d1, d2
	; InlineAsm End
Ltmp164:
	;DEBUG_VALUE: vecfp_alu64:x <- [DW_OP_LLVM_entry_value 1] $d0
	;DEBUG_VALUE: vecfp_alu64:z <- $d0
	.loc	4 156 5                         ; vecfp.c:156:5
	ret
Ltmp165:
LBB5_4:
	;DEBUG_VALUE: vecfp_alu64:alumode <- $w0
	;DEBUG_VALUE: vecfp_alu64:z <- $d2
	;DEBUG_VALUE: vecfp_alu64:y <- $d1
	;DEBUG_VALUE: vecfp_alu64:x <- $d0
	.loc	4 149 17                        ; vecfp.c:149:17
	fcmp	d0, #0.0
	movi	d0, #0000000000000000
Ltmp166:
	;DEBUG_VALUE: vecfp_alu64:x <- [DW_OP_LLVM_entry_value 1] $d0
	fcsel	d0, d0, d1, ls
Ltmp167:
	;DEBUG_VALUE: vecfp_alu64:z <- $d0
	;DEBUG_VALUE: vecfp_alu64:z <- $d0
	.loc	4 156 5                         ; vecfp.c:156:5
	ret
Ltmp168:
LBB5_5:
	;DEBUG_VALUE: vecfp_alu64:alumode <- $w0
	;DEBUG_VALUE: vecfp_alu64:z <- $d2
	;DEBUG_VALUE: vecfp_alu64:y <- $d1
	;DEBUG_VALUE: vecfp_alu64:x <- $d0
	.loc	4 150 13                        ; vecfp.c:150:13
	; InlineAsm Start
	fmin	d0, d0, d2
	; InlineAsm End
Ltmp169:
	;DEBUG_VALUE: vecfp_alu64:x <- [DW_OP_LLVM_entry_value 1] $d0
	;DEBUG_VALUE: vecfp_alu64:z <- $d0
	.loc	4 156 5                         ; vecfp.c:156:5
	ret
Ltmp170:
LBB5_6:
	;DEBUG_VALUE: vecfp_alu64:alumode <- $w0
	;DEBUG_VALUE: vecfp_alu64:z <- $d2
	;DEBUG_VALUE: vecfp_alu64:y <- $d1
	;DEBUG_VALUE: vecfp_alu64:x <- $d0
	.loc	4 151 13                        ; vecfp.c:151:13
	; InlineAsm Start
	fmax	d0, d0, d2
	; InlineAsm End
Ltmp171:
	;DEBUG_VALUE: vecfp_alu64:x <- [DW_OP_LLVM_entry_value 1] $d0
	;DEBUG_VALUE: vecfp_alu64:z <- $d0
	.loc	4 156 5                         ; vecfp.c:156:5
	ret
Ltmp172:
LBB5_7:
	;DEBUG_VALUE: vecfp_alu64:alumode <- $w0
	;DEBUG_VALUE: vecfp_alu64:z <- $d2
	;DEBUG_VALUE: vecfp_alu64:y <- $d1
	;DEBUG_VALUE: vecfp_alu64:x <- $d0
	.loc	4 152 20                        ; vecfp.c:152:20
	fmul	d0, d0, d1
Ltmp173:
	;DEBUG_VALUE: vecfp_alu64:x <- [DW_OP_LLVM_entry_value 1] $d0
	;DEBUG_VALUE: vecfp_alu64:z <- $d0
	;DEBUG_VALUE: vecfp_alu64:z <- $d0
	.loc	4 156 5                         ; vecfp.c:156:5
	ret
Ltmp174:
LBB5_8:
	;DEBUG_VALUE: vecfp_alu64:alumode <- $w0
	;DEBUG_VALUE: vecfp_alu64:z <- $d2
	;DEBUG_VALUE: vecfp_alu64:y <- $d1
	;DEBUG_VALUE: vecfp_alu64:x <- $d0
	.loc	4 153 20                        ; vecfp.c:153:20
	fadd	d0, d0, d2
Ltmp175:
	;DEBUG_VALUE: vecfp_alu64:x <- [DW_OP_LLVM_entry_value 1] $d0
	;DEBUG_VALUE: vecfp_alu64:z <- $d0
	;DEBUG_VALUE: vecfp_alu64:z <- $d0
	.loc	4 156 5                         ; vecfp.c:156:5
	ret
Ltmp176:
LBB5_9:
	;DEBUG_VALUE: vecfp_alu64:alumode <- $w0
	;DEBUG_VALUE: vecfp_alu64:z <- $d2
	;DEBUG_VALUE: vecfp_alu64:y <- $d1
	;DEBUG_VALUE: vecfp_alu64:x <- $d0
	.loc	4 154 20                        ; vecfp.c:154:20
	fadd	d2, d1, d2
Ltmp177:
	;DEBUG_VALUE: vecfp_alu64:z <- $d2
LBB5_10:
	;DEBUG_VALUE: vecfp_alu64:alumode <- $w0
	;DEBUG_VALUE: vecfp_alu64:z <- $d2
	;DEBUG_VALUE: vecfp_alu64:y <- $d1
	;DEBUG_VALUE: vecfp_alu64:x <- $d0
	;DEBUG_VALUE: vecfp_alu64:z <- $d2
	.loc	4 156 5                         ; vecfp.c:156:5
	fmov	d0, d2
Ltmp178:
	;DEBUG_VALUE: vecfp_alu64:x <- [DW_OP_LLVM_entry_value 1] $d0
	ret
Ltmp179:
	.loh AdrpAdd	Lloh6, Lloh7
Lfunc_end5:
	.cfi_endproc
	.p2align	2
lJTI5_0:
	.long	LBB5_2-Ltmp160
	.long	LBB5_3-Ltmp160
	.long	LBB5_10-Ltmp160
	.long	LBB5_10-Ltmp160
	.long	LBB5_4-Ltmp160
	.long	LBB5_5-Ltmp160
	.long	LBB5_10-Ltmp160
	.long	LBB5_6-Ltmp160
	.long	LBB5_10-Ltmp160
	.long	LBB5_10-Ltmp160
	.long	LBB5_7-Ltmp160
	.long	LBB5_8-Ltmp160
	.long	LBB5_9-Ltmp160
                                        ; -- End function
	.globl	_emulate_AMX_VECFP              ; -- Begin function emulate_AMX_VECFP
	.p2align	2
_emulate_AMX_VECFP:                     ; @emulate_AMX_VECFP
Lfunc_begin6:
	.loc	4 159 0                         ; vecfp.c:159:0
	.cfi_startproc
; %bb.0:
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- $x0
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- $x1
	stp	d11, d10, [sp, #-128]!          ; 16-byte Folded Spill
	.cfi_def_cfa_offset 128
	stp	d9, d8, [sp, #16]               ; 16-byte Folded Spill
	stp	x28, x27, [sp, #32]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #48]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #64]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #80]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #96]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	add	x29, sp, #112
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
	.cfi_offset b10, -120
	.cfi_offset b11, -128
	sub	sp, sp, #512
	str	x0, [sp, #296]                  ; 8-byte Folded Spill
Ltmp180:
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
Lloh8:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh9:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh10:
	ldr	x8, [x8]
	stur	x8, [x29, #-128]
Ltmp181:
	.loc	4 160 25 prologue_end           ; vecfp.c:160:25
	tst	x1, #0x1c0000000000000
Ltmp182:
	.loc	4 160 9 is_stmt 0               ; vecfp.c:160:9
	b.eq	LBB6_3
Ltmp183:
LBB6_1:
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	.loc	4 0 9                           ; vecfp.c:0:9
	ldur	x8, [x29, #-128]
Lloh11:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh12:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh13:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB6_140
Ltmp184:
; %bb.2:
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	.loc	4 288 1 is_stmt 1               ; vecfp.c:288:1
	add	sp, sp, #512
Ltmp185:
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #96]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #80]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #64]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #48]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #32]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #16]               ; 16-byte Folded Reload
	ldp	d11, d10, [sp], #128            ; 16-byte Folded Reload
	ret
LBB6_3:
Ltmp186:
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- $x1
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_constu 18446743936270598143, DW_OP_and, DW_OP_stack_value] $x1
	.loc	4 165 19                        ; vecfp.c:165:19
	ubfx	x8, x1, #47, #6
	tst	x1, #0x20000000000000
	csel	w16, w8, wzr, eq
Ltmp187:
	;DEBUG_VALUE: emulate_AMX_VECFP:alumode <- $w16
	.loc	4 166 5                         ; vecfp.c:166:5
	cmp	w16, #12
	b.hi	LBB6_1
Ltmp188:
; %bb.4:
	;DEBUG_VALUE: emulate_AMX_VECFP:alumode <- $w16
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_constu 18446743936270598143, DW_OP_and, DW_OP_stack_value] $x1
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	.loc	4 0 5 is_stmt 0                 ; vecfp.c:0:5
	mov	w8, #1
	lsl	w8, w8, w16
	mov	w9, #179
Lloh14:
	adrp	x12, _AMX_VER@GOTPAGE
Lloh15:
	ldr	x12, [x12, _AMX_VER@GOTPAGEOFF]
	tst	w8, w9
	b.ne	LBB6_7
Ltmp189:
; %bb.5:
	;DEBUG_VALUE: emulate_AMX_VECFP:alumode <- $w16
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_constu 18446743936270598143, DW_OP_and, DW_OP_stack_value] $x1
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	tst	w8, #0x1c00
	b.eq	LBB6_1
Ltmp190:
; %bb.6:
	;DEBUG_VALUE: emulate_AMX_VECFP:alumode <- $w16
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_constu 18446743936270598143, DW_OP_and, DW_OP_stack_value] $x1
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	.loc	4 170 13 is_stmt 1              ; vecfp.c:170:13
	ldr	w8, [x12]
Ltmp191:
	.loc	4 170 13 is_stmt 0              ; vecfp.c:170:13
	cmp	w8, #2
	b.lo	LBB6_1
Ltmp192:
LBB6_7:
	;DEBUG_VALUE: emulate_AMX_VECFP:alumode <- $w16
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_constu 18446743936270598143, DW_OP_and, DW_OP_stack_value] $x1
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	.loc	4 0 13                          ; vecfp.c:0:13
	and	x8, x1, #0xffffffdfffffffff
Ltmp193:
	;DEBUG_VALUE: emulate_AMX_VECFP:bf16 <- 0
	str	x8, [sp, #208]                  ; 8-byte Folded Spill
	.loc	4 180 29 is_stmt 1              ; vecfp.c:180:29
	ubfx	x9, x1, #42, #4
	.loc	4 180 5 is_stmt 0               ; vecfp.c:180:5
	cmp	x9, #7
	b.hi	LBB6_11
Ltmp194:
; %bb.8:
	;DEBUG_VALUE: emulate_AMX_VECFP:bf16 <- 0
	;DEBUG_VALUE: emulate_AMX_VECFP:alumode <- $w16
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_constu 18446743936270598143, DW_OP_and, DW_OP_stack_value] $x1
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	.loc	4 0 5                           ; vecfp.c:0:5
	str	wzr, [sp, #188]                 ; 4-byte Folded Spill
	mov	w8, #0
	mov	w0, #16
	mov	w10, #1
	str	w10, [sp, #292]                 ; 4-byte Folded Spill
Lloh16:
	adrp	x10, lJTI6_0@PAGE
Lloh17:
	add	x10, x10, lJTI6_0@PAGEOFF
Ltmp195:
	adr	x11, Ltmp195
	ldrsw	x13, [x10, x9, lsl #2]
	add	x11, x11, x13
	mov	w9, #1
	mov	w10, #1
	br	x11
Ltmp196:
LBB6_9:
	;DEBUG_VALUE: emulate_AMX_VECFP:bf16 <- 0
	;DEBUG_VALUE: emulate_AMX_VECFP:alumode <- $w16
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_constu 18446743936270598143, DW_OP_and, DW_OP_stack_value] $x1
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- 16
	mov	w9, #0
	mov	w8, #0
Ltmp197:
	.loc	4 181 31 is_stmt 1              ; vecfp.c:181:31
	ldr	w10, [x12]
	.loc	4 181 39 is_stmt 0              ; vecfp.c:181:39
	cmp	w10, #2
	cset	w10, lo
	str	w10, [sp, #292]                 ; 4-byte Folded Spill
	mov	w0, #16
	b	LBB6_12
Ltmp198:
LBB6_10:
	;DEBUG_VALUE: emulate_AMX_VECFP:bf16 <- 0
	;DEBUG_VALUE: emulate_AMX_VECFP:alumode <- $w16
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_constu 18446743936270598143, DW_OP_and, DW_OP_stack_value] $x1
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- 16
	.loc	4 0 39                          ; vecfp.c:0:39
	mov	w8, #0
Ltmp199:
	.loc	4 182 31 is_stmt 1              ; vecfp.c:182:31
	ldr	w10, [x12]
	.loc	4 182 39 is_stmt 0              ; vecfp.c:182:39
	cmp	w10, #1
	cset	w9, hi
	cmp	w10, #2
	cset	w11, lo
	mov	w0, #16
	mov	w10, #1
	str	w11, [sp, #292]                 ; 4-byte Folded Spill
	str	w11, [sp, #188]                 ; 4-byte Folded Spill
	b	LBB6_15
Ltmp200:
LBB6_11:
	;DEBUG_VALUE: emulate_AMX_VECFP:bf16 <- 0
	;DEBUG_VALUE: emulate_AMX_VECFP:alumode <- $w16
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_constu 18446743936270598143, DW_OP_and, DW_OP_stack_value] $x1
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	.loc	4 0 39                          ; vecfp.c:0:39
	mov	w9, #0
	mov	w8, #0
	mov	w0, #16
	mov	w10, #1
Ltmp201:
	;DEBUG_VALUE: emulate_AMX_VECFP:zbits <- 16
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- 16
	str	w10, [sp, #292]                 ; 4-byte Folded Spill
Ltmp202:
LBB6_12:
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- 16
	;DEBUG_VALUE: emulate_AMX_VECFP:bf16 <- 0
	;DEBUG_VALUE: emulate_AMX_VECFP:alumode <- $w16
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_constu 18446743936270598143, DW_OP_and, DW_OP_stack_value] $x1
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	mov	w10, #1
	str	w10, [sp, #188]                 ; 4-byte Folded Spill
	mov	w10, #1
	b	LBB6_15
Ltmp203:
LBB6_13:
	;DEBUG_VALUE: emulate_AMX_VECFP:bf16 <- 0
	;DEBUG_VALUE: emulate_AMX_VECFP:alumode <- $w16
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_constu 18446743936270598143, DW_OP_and, DW_OP_stack_value] $x1
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	str	wzr, [sp, #188]                 ; 4-byte Folded Spill
	mov	w10, #0
	mov	w0, #32
	mov	w8, #1
Ltmp204:
	;DEBUG_VALUE: emulate_AMX_VECFP:zbits <- 32
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- 32
	str	w8, [sp, #292]                  ; 4-byte Folded Spill
	mov	w9, #1
	mov	w8, #1
	b	LBB6_15
Ltmp205:
LBB6_14:
	;DEBUG_VALUE: emulate_AMX_VECFP:bf16 <- 0
	;DEBUG_VALUE: emulate_AMX_VECFP:alumode <- $w16
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_constu 18446743936270598143, DW_OP_and, DW_OP_stack_value] $x1
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	str	wzr, [sp, #188]                 ; 4-byte Folded Spill
	mov	w9, #0
	mov	w10, #0
	mov	w8, #0
	mov	w0, #64
	mov	w11, #1
Ltmp206:
	;DEBUG_VALUE: emulate_AMX_VECFP:zbits <- 64
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- 64
	str	w11, [sp, #292]                 ; 4-byte Folded Spill
Ltmp207:
LBB6_15:
	;DEBUG_VALUE: emulate_AMX_VECFP:bf16 <- 0
	;DEBUG_VALUE: emulate_AMX_VECFP:alumode <- $w16
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_constu 18446743936270598143, DW_OP_and, DW_OP_stack_value] $x1
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:bf16 <- undef
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- $w0
	;DEBUG_VALUE: emulate_AMX_VECFP:zbits <- undef
	.loc	4 188 31 is_stmt 1              ; vecfp.c:188:31
	lsr	w22, w0, #3
Ltmp208:
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	.loc	4 0 31 is_stmt 0                ; vecfp.c:0:31
	ldr	x11, [sp, #208]                 ; 8-byte Folded Reload
	.loc	4 190 30 is_stmt 1              ; vecfp.c:190:30
	lsr	x11, x11, #20
Ltmp209:
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- -1
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- $x11
	.loc	4 0 30 is_stmt 0                ; vecfp.c:0:30
	mov	w3, #-1
	mov	w2, #64
Ltmp210:
	.loc	4 195 33 is_stmt 1              ; vecfp.c:195:33
	tbz	w1, #31, LBB6_20
Ltmp211:
; %bb.16:
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- $x11
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- -1
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- $w0
	;DEBUG_VALUE: emulate_AMX_VECFP:alumode <- $w16
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_constu 18446743936270598143, DW_OP_and, DW_OP_stack_value] $x1
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	.loc	4 0 0 is_stmt 0                 ; vecfp.c:0:0
	ldr	w12, [x12]
	mov	w15, #64
	mov	w14, #64
	mov	w4, #64
	.loc	4 195 33                        ; vecfp.c:195:33
	cmp	w12, #2
	b.lo	LBB6_31
Ltmp212:
; %bb.17:
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- $x11
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- -1
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- $w0
	;DEBUG_VALUE: emulate_AMX_VECFP:alumode <- $w16
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_constu 18446743936270598143, DW_OP_and, DW_OP_stack_value] $x1
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	.loc	4 196 42 is_stmt 1              ; vecfp.c:196:42
	ubfx	x12, x1, #32, #3
Ltmp213:
	;DEBUG_VALUE: bmode <- $x12
	.loc	4 197 17                        ; vecfp.c:197:17
	and	x13, x1, #0xfffffe00ffffffff
Ltmp214:
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- $x13
	.loc	4 0 17 is_stmt 0                ; vecfp.c:0:17
	str	x13, [sp, #208]                 ; 8-byte Folded Spill
Ltmp215:
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	.loc	4 198 9 is_stmt 1               ; vecfp.c:198:9
	sub	x12, x12, #1
Ltmp216:
	cmp	x12, #6
	b.hi	LBB6_25
Ltmp217:
; %bb.18:
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- $x11
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- -1
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- $w0
	;DEBUG_VALUE: emulate_AMX_VECFP:alumode <- $w16
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	.loc	4 0 9 is_stmt 0                 ; vecfp.c:0:9
Lloh18:
	adrp	x13, lJTI6_1@PAGE
Lloh19:
	add	x13, x13, lJTI6_1@PAGEOFF
Ltmp218:
	adr	x14, Ltmp218
	ldrsw	x15, [x13, x12, lsl #2]
	add	x14, x14, x15
	br	x14
Ltmp219:
LBB6_19:
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- $x11
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- -1
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- $w0
	;DEBUG_VALUE: emulate_AMX_VECFP:alumode <- $w16
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	ldr	x12, [sp, #208]                 ; 8-byte Folded Reload
Ltmp220:
	.loc	4 199 25 is_stmt 1              ; vecfp.c:199:25
	orr	x12, x12, #0x300000000
Ltmp221:
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- $x12
	.loc	4 0 25 is_stmt 0                ; vecfp.c:0:25
	str	x12, [sp, #208]                 ; 8-byte Folded Spill
Ltmp222:
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	b	LBB6_25
Ltmp223:
LBB6_20:
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- $x11
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- -1
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- $w0
	;DEBUG_VALUE: emulate_AMX_VECFP:alumode <- $w16
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_constu 18446743936270598143, DW_OP_and, DW_OP_stack_value] $x1
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	mov	w15, #64
	mov	w14, #64
	mov	w4, #64
	b	LBB6_31
Ltmp224:
LBB6_21:
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- $x11
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- -1
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- $w0
	;DEBUG_VALUE: emulate_AMX_VECFP:alumode <- $w16
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	mov	x14, #0
	mov	w3, #-1
	mov	w15, #64
Ltmp225:
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- 0
	b	LBB6_30
Ltmp226:
LBB6_22:
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- $x11
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- -1
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- $w0
	;DEBUG_VALUE: emulate_AMX_VECFP:alumode <- $w16
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	mov	x15, #0
	b	LBB6_28
Ltmp227:
LBB6_23:
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- $x11
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- -1
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- $w0
	;DEBUG_VALUE: emulate_AMX_VECFP:alumode <- $w16
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	ldr	x12, [sp, #208]                 ; 8-byte Folded Reload
	.loc	4 202 25 is_stmt 1              ; vecfp.c:202:25
	orr	x12, x12, #0x400000000
Ltmp228:
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- $x12
	.loc	4 0 25 is_stmt 0                ; vecfp.c:0:25
	str	x12, [sp, #208]                 ; 8-byte Folded Spill
Ltmp229:
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	b	LBB6_25
Ltmp230:
LBB6_24:
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- $x11
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- -1
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- $w0
	;DEBUG_VALUE: emulate_AMX_VECFP:alumode <- $w16
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	mov	x12, #21474836480
	ldr	x13, [sp, #208]                 ; 8-byte Folded Reload
	.loc	4 203 25 is_stmt 1              ; vecfp.c:203:25
	orr	x13, x13, x12
Ltmp231:
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- $x13
	.loc	4 0 25 is_stmt 0                ; vecfp.c:0:25
	str	x13, [sp, #208]                 ; 8-byte Folded Spill
Ltmp232:
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
LBB6_25:
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- $x11
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- -1
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- $w0
	;DEBUG_VALUE: emulate_AMX_VECFP:alumode <- $w16
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	mov	w3, #-1
	mov	w15, #64
	b	LBB6_29
Ltmp233:
LBB6_26:
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- $x11
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- -1
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- $w0
	;DEBUG_VALUE: emulate_AMX_VECFP:alumode <- $w16
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	mov	w3, #0
	mov	x14, #0
	mov	w15, #64
Ltmp234:
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- 0
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- 0
	b	LBB6_30
Ltmp235:
LBB6_27:
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- $x11
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- -1
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- $w0
	;DEBUG_VALUE: emulate_AMX_VECFP:alumode <- $w16
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- 0
	mov	x15, #0
	ldr	x12, [sp, #208]                 ; 8-byte Folded Reload
	.loc	4 205 37 is_stmt 1              ; vecfp.c:205:37
	orr	x12, x12, #0x4000000000
Ltmp236:
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- $x12
	.loc	4 0 37 is_stmt 0                ; vecfp.c:0:37
	str	x12, [sp, #208]                 ; 8-byte Folded Spill
Ltmp237:
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
LBB6_28:
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- $x11
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- -1
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- $w0
	;DEBUG_VALUE: emulate_AMX_VECFP:alumode <- $w16
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	mov	w3, #-1
Ltmp238:
LBB6_29:
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- $x11
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- -1
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- $w0
	;DEBUG_VALUE: emulate_AMX_VECFP:alumode <- $w16
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	mov	w14, #64
Ltmp239:
LBB6_30:
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- $x11
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- $w0
	;DEBUG_VALUE: emulate_AMX_VECFP:alumode <- $w16
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- $x14
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- $x15
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- $w3
	.loc	4 207 18 is_stmt 1              ; vecfp.c:207:18
	tst	x1, #0x2000000
	mov	w12, #16
	mov	w13, #32
	csel	x4, x13, x12, eq
Ltmp240:
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- $x4
LBB6_31:
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- $x11
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- $w0
	;DEBUG_VALUE: emulate_AMX_VECFP:alumode <- $w16
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_LLVM_arg 0, DW_OP_plus_uconst 17592186044415, DW_OP_LLVM_arg 1, DW_OP_and, DW_OP_stack_value] $x4, $x11
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- $x4
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- $x14
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- $x15
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- $w3
	;DEBUG_VALUE: emulate_AMX_VECFP:x_offset <- [DW_OP_plus_uconst 208, DW_OP_deref_size 8, DW_OP_constu 10, DW_OP_shr, DW_OP_stack_value] $sp
	;DEBUG_VALUE: emulate_AMX_VECFP:y_offset <- [DW_OP_plus_uconst 208] [$sp+0]
	.loc	4 212 26                        ; vecfp.c:212:26
	sub	x12, x4, #1
Ltmp241:
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_and, DW_OP_stack_value] $x12, $x11
	.loc	4 212 16 is_stmt 0              ; vecfp.c:212:16
	and	x13, x12, x11
Ltmp242:
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- $x13
	.loc	4 0 16                          ; vecfp.c:0:16
	ldr	x17, [sp, #208]                 ; 8-byte Folded Reload
	tst	x17, #0x1000000000000
	mov	w11, #4
	mov	w12, #2
	csel	w1, w12, w11, eq
	mov	w11, w0
	stp	x14, x15, [sp, #168]            ; 16-byte Folded Spill
Ltmp243:
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	smull	x12, w14, w1
	ldr	x14, [sp, #296]                 ; 8-byte Folded Reload
	str	x13, [sp, #248]                 ; 8-byte Folded Spill
Ltmp244:
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	.loc	4 212 5                         ; vecfp.c:212:5
	add	x13, x14, x13, lsl #6
	udiv	x12, x12, x11
	str	x12, [sp, #88]                  ; 8-byte Folded Spill
Ltmp245:
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	.loc	4 0 5                           ; vecfp.c:0:5
	str	x1, [sp, #112]                  ; 8-byte Folded Spill
	smull	x12, w15, w1
	udiv	x12, x12, x11
	str	x12, [sp, #80]                  ; 8-byte Folded Spill
Ltmp246:
	.loc	4 210 33 is_stmt 1              ; vecfp.c:210:33
	lsr	x1, x17, #10
Ltmp247:
	;DEBUG_VALUE: emulate_AMX_VECFP:x_offset <- $x1
	.loc	4 0 33 is_stmt 0                ; vecfp.c:0:33
	add	x15, x14, #512
	ubfx	x12, x17, #49, #3
	lsl	x12, x12, #6
	str	x15, [sp, #152]                 ; 8-byte Folded Spill
	add	x15, x15, x12
	add	x12, x14, x12
	stp	x12, x15, [sp, #64]             ; 16-byte Folded Spill
	ubfx	w12, w17, #29, #2
	str	w12, [sp, #148]                 ; 4-byte Folded Spill
	lsr	w26, w2, w12
	ubfx	w12, w17, #27, #2
	str	w12, [sp, #144]                 ; 4-byte Folded Spill
	lsr	w19, w2, w12
	lsr	x12, x17, #32
	lsr	x14, x17, #38
	ands	w14, w14, #0x7
	str	x14, [sp, #136]                 ; 8-byte Folded Spill
	csinc	w14, w22, wzr, ne
	mul	w12, w14, w12
	and	w5, w12, #0x3f
	mov	x14, #-1
	lsr	x15, x14, x12
	mvn	x15, x15
	str	x15, [sp, #48]                  ; 8-byte Folded Spill
	lsl	x15, x14, x12
	mvn	x15, x15
	str	x15, [sp, #40]                  ; 8-byte Folded Spill
	lsl	x14, x14, x22
	mvn	x14, x14
	lsl	x15, x14, x12
	str	x15, [sp, #32]                  ; 8-byte Folded Spill
	sub	w15, w5, #1
	str	w15, [sp, #28]                  ; 4-byte Folded Spill
	sbfx	w12, w12, #0, #1
	and	w12, w12, w22
	lsl	x12, x14, x12
	str	x12, [sp, #16]                  ; 8-byte Folded Spill
	str	w0, [sp, #120]                  ; 4-byte Folded Spill
Ltmp248:
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	lsr	w12, w0, #2
	str	w12, [sp, #12]                  ; 4-byte Folded Spill
	ubfx	x15, x17, #38, #3
	ubfx	x12, x17, #32, #6
	str	x12, [sp, #96]                  ; 8-byte Folded Spill
	and	w10, w9, w10
	stp	w5, w10, [sp, #104]             ; 8-byte Folded Spill
	and	w8, w9, w8
	str	w8, [sp, #60]                   ; 4-byte Folded Spill
	ubfx	x9, x17, #32, #3
	ubfx	x8, x17, #32, #4
	stp	x8, x9, [sp, #192]              ; 16-byte Folded Spill
	ubfx	x5, x17, #32, #5
Ltmp249:
	.loc	4 212 5 is_stmt 1               ; vecfp.c:212:5
	lsr	x21, x11, #3
	add	x24, x13, #1024
	movi	d8, #0000000000000000
	movi	d9, #0000000000000000
	movi	d10, #0000000000000000
	lsl	x8, x4, #6
	str	x8, [sp, #128]                  ; 8-byte Folded Spill
	sub	x11, x29, #256
	str	x16, [sp, #280]                 ; 8-byte Folded Spill
	str	w3, [sp, #276]                  ; 4-byte Folded Spill
Ltmp250:
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	.loc	4 0 5 is_stmt 0                 ; vecfp.c:0:5
	str	x4, [sp, #160]                  ; 8-byte Folded Spill
Ltmp251:
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	stp	x5, x15, [sp, #256]             ; 16-byte Folded Spill
	str	w19, [sp, #124]                 ; 4-byte Folded Spill
	b	LBB6_33
Ltmp252:
LBB6_32:                                ;   in Loop: Header=BB6_33 Depth=1
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	ldp	x17, x1, [sp, #232]             ; 16-byte Folded Reload
	ldr	x8, [sp, #216]                  ; 8-byte Folded Reload
	add	x1, x8, x1
Ltmp253:
	;DEBUG_VALUE: emulate_AMX_VECFP:x_offset <- $x1
	add	x17, x23, x17
Ltmp254:
	;DEBUG_VALUE: emulate_AMX_VECFP:y_offset <- $x17
	ldr	x4, [sp, #160]                  ; 8-byte Folded Reload
	ldr	x8, [sp, #248]                  ; 8-byte Folded Reload
Ltmp255:
	.loc	4 212 50                        ; vecfp.c:212:50
	add	x8, x8, x4
Ltmp256:
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- $x8
	.loc	4 0 50                          ; vecfp.c:0:50
	ldr	x9, [sp, #128]                  ; 8-byte Folded Reload
Ltmp257:
	.loc	4 212 5                         ; vecfp.c:212:5
	add	x24, x24, x9
	str	x8, [sp, #248]                  ; 8-byte Folded Spill
Ltmp258:
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	cmp	x8, #64
	mov	w2, #64
	sub	x11, x29, #256
	b.hs	LBB6_1
Ltmp259:
LBB6_33:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB6_39 Depth 2
                                        ;     Child Loop BB6_42 Depth 2
                                        ;     Child Loop BB6_47 Depth 2
                                        ;     Child Loop BB6_126 Depth 2
                                        ;     Child Loop BB6_111 Depth 2
                                        ;     Child Loop BB6_85 Depth 2
                                        ;     Child Loop BB6_103 Depth 2
                                        ;     Child Loop BB6_71 Depth 2
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_offset <- $x1
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_offset <- $x1
	;DEBUG_VALUE: emulate_AMX_VECFP:y_offset <- $x17
	.loc	4 0 5                           ; vecfp.c:0:5
	mov	x19, x26
	str	x1, [sp, #240]                  ; 8-byte Folded Spill
Ltmp260:
	;DEBUG_VALUE: emulate_AMX_VECFP:x_offset <- [DW_OP_plus_uconst 240] [$sp+0]
	.loc	4 215 44 is_stmt 1              ; vecfp.c:215:44
	and	x8, x1, #0x1ff
	mov	w26, #512
Ltmp261:
	;DEBUG_VALUE: load_xy_reg:src <- [DW_OP_plus_uconst 296] [$sp+0]
	;DEBUG_VALUE: load_xy_reg:dst <- [DW_OP_constu 256, DW_OP_minus, DW_OP_stack_value] $fp
	;DEBUG_VALUE: load_xy_reg:offset <- $x8
	.file	6 "/Users/tarindujayatilaka/Documents/superopt/apple-amx" "./emulate.h"
	.loc	6 42 26                         ; ./emulate.h:42:26
	sub	x9, x26, x8
Ltmp262:
	;DEBUG_VALUE: load_xy_reg:avail <- $x9
	.loc	6 0 26 is_stmt 0                ; ./emulate.h:0:26
	ldr	x20, [sp, #296]                 ; 8-byte Folded Reload
	.loc	6 43 5 is_stmt 1                ; ./emulate.h:43:5
	add	x1, x20, x8
	mov	x23, x17
Ltmp263:
	;DEBUG_VALUE: emulate_AMX_VECFP:y_offset <- $x23
	;DEBUG_VALUE: emulate_AMX_VECFP:y_offset <- $x23
	;DEBUG_VALUE: emulate_AMX_VECFP:y_offset <- $x23
	.loc	6 44 5                          ; ./emulate.h:44:5
	sub	x10, x8, #448
	.loc	6 43 5                          ; ./emulate.h:43:5
	cmp	x8, #449
	csel	x2, x2, x9, lo
	mov	w25, #64
	.loc	6 44 5                          ; ./emulate.h:44:5
	add	x27, x11, x9
	csel	x28, xzr, x10, lo
	.loc	6 43 5                          ; ./emulate.h:43:5
	sub	x0, x29, #256
	mov	w3, #64
	bl	___memcpy_chk
Ltmp264:
	.loc	6 44 5                          ; ./emulate.h:44:5
	mov	x0, x27
	mov	x1, x20
	mov	x2, x28
	bl	_memcpy
Ltmp265:
	;DEBUG_VALUE: emulate_AMX_VECFP:x_offset <- [DW_OP_LLVM_arg 0, DW_OP_plus_uconst 240, DW_OP_deref, DW_OP_LLVM_arg 1, DW_OP_plus_uconst 168, DW_OP_deref, DW_OP_plus, DW_OP_stack_value] $sp, $sp
	.loc	6 0 5 is_stmt 0                 ; ./emulate.h:0:5
	str	x23, [sp, #232]                 ; 8-byte Folded Spill
Ltmp266:
	;DEBUG_VALUE: emulate_AMX_VECFP:y_offset <- [DW_OP_plus_uconst 232] [$sp+0]
	.loc	4 216 44 is_stmt 1              ; vecfp.c:216:44
	and	x8, x23, #0x1ff
Ltmp267:
	;DEBUG_VALUE: load_xy_reg:src <- [DW_OP_plus_uconst 152] [$sp+0]
	;DEBUG_VALUE: load_xy_reg:dst <- [DW_OP_plus_uconst 304, DW_OP_stack_value] $sp
	;DEBUG_VALUE: load_xy_reg:offset <- $x8
	.loc	6 42 26                         ; ./emulate.h:42:26
	sub	x9, x26, x8
Ltmp268:
	;DEBUG_VALUE: load_xy_reg:avail <- $x9
	.loc	6 0 26 is_stmt 0                ; ./emulate.h:0:26
	ldr	x20, [sp, #152]                 ; 8-byte Folded Reload
	.loc	6 43 5 is_stmt 1                ; ./emulate.h:43:5
	add	x1, x20, x8
	.loc	6 44 5                          ; ./emulate.h:44:5
	sub	x10, x8, #448
	.loc	6 43 5                          ; ./emulate.h:43:5
	cmp	x8, #449
	csel	x2, x25, x9, lo
	.loc	6 44 5                          ; ./emulate.h:44:5
	add	x8, sp, #304
Ltmp269:
	add	x27, x8, x9
	csel	x28, xzr, x10, lo
	.loc	6 43 5                          ; ./emulate.h:43:5
	add	x0, sp, #304
	mov	w3, #64
	bl	___memcpy_chk
Ltmp270:
	.loc	6 44 5                          ; ./emulate.h:44:5
	mov	x0, x27
	mov	x1, x20
	mov	x2, x28
	bl	_memcpy
Ltmp271:
	;DEBUG_VALUE: emulate_AMX_VECFP:y_offset <- [DW_OP_LLVM_arg 0, DW_OP_plus_uconst 232, DW_OP_deref, DW_OP_LLVM_arg 1, DW_OP_plus_uconst 176, DW_OP_deref, DW_OP_plus, DW_OP_stack_value] $sp, $sp
	.loc	6 0 5 is_stmt 0                 ; ./emulate.h:0:5
	ldp	x25, x20, [sp, #168]            ; 16-byte Folded Reload
	mov	x9, x20
	mov	x10, x25
	ldr	x8, [sp, #208]                  ; 8-byte Folded Reload
Ltmp272:
	.loc	4 217 13 is_stmt 1              ; vecfp.c:217:13
	tbz	x8, #53, LBB6_37
Ltmp273:
; %bb.34:                               ;   in Loop: Header=BB6_33 Depth=1
	;DEBUG_VALUE: emulate_AMX_VECFP:y_offset <- [DW_OP_LLVM_arg 0, DW_OP_plus_uconst 232, DW_OP_deref, DW_OP_LLVM_arg 0, DW_OP_plus_uconst 176, DW_OP_deref, DW_OP_plus, DW_OP_stack_value] $sp
	;DEBUG_VALUE: emulate_AMX_VECFP:x_offset <- [DW_OP_LLVM_arg 0, DW_OP_plus_uconst 240, DW_OP_deref, DW_OP_LLVM_arg 0, DW_OP_plus_uconst 168, DW_OP_deref, DW_OP_plus, DW_OP_stack_value] $sp
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	;DEBUG_VALUE: ibits <- [DW_OP_plus_uconst 112] [$sp+0]
	;DEBUG_VALUE: src_reg <- [DW_OP_plus_uconst 208, DW_OP_deref_size 8, DW_OP_constu 49, DW_OP_shr, DW_OP_constu 7, DW_OP_and, DW_OP_stack_value] $sp
	.loc	4 0 13 is_stmt 0                ; vecfp.c:0:13
	ldr	x8, [sp, #208]                  ; 8-byte Folded Reload
	;DEBUG_VALUE: src_reg <- [DW_OP_plus_uconst 208, DW_OP_deref_size 8, DW_OP_constu 49, DW_OP_shr, DW_OP_constu 7, DW_OP_and, DW_OP_stack_value] $sp
Ltmp274:
	.loc	4 220 17 is_stmt 1              ; vecfp.c:220:17
	tbnz	x8, #47, LBB6_36
Ltmp275:
; %bb.35:                               ;   in Loop: Header=BB6_33 Depth=1
	;DEBUG_VALUE: src_reg <- [DW_OP_plus_uconst 208, DW_OP_deref_size 8, DW_OP_constu 49, DW_OP_shr, DW_OP_constu 7, DW_OP_and, DW_OP_stack_value] $sp
	;DEBUG_VALUE: ibits <- [DW_OP_plus_uconst 112] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_offset <- [DW_OP_LLVM_arg 0, DW_OP_plus_uconst 232, DW_OP_deref, DW_OP_LLVM_arg 0, DW_OP_plus_uconst 176, DW_OP_deref, DW_OP_plus, DW_OP_stack_value] $sp
	;DEBUG_VALUE: emulate_AMX_VECFP:x_offset <- [DW_OP_LLVM_arg 0, DW_OP_plus_uconst 240, DW_OP_deref, DW_OP_LLVM_arg 0, DW_OP_plus_uconst 168, DW_OP_deref, DW_OP_plus, DW_OP_stack_value] $sp
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	.loc	4 224 17                        ; vecfp.c:224:17
	sub	x0, x29, #256
	ldr	x1, [sp, #64]                   ; 8-byte Folded Reload
	ldr	x2, [sp, #112]                  ; 8-byte Folded Reload
                                        ; kill: def $w2 killed $w2 killed $x2
	ldr	w3, [sp, #120]                  ; 4-byte Folded Reload
	bl	_load_xy_reg_indexed
Ltmp276:
	;DEBUG_VALUE: emulate_AMX_VECFP:x_offset <- [DW_OP_LLVM_arg 0, DW_OP_plus_uconst 240, DW_OP_deref, DW_OP_LLVM_arg 1, DW_OP_plus_uconst 88, DW_OP_deref, DW_OP_plus, DW_OP_stack_value] $sp, $sp
	.loc	4 0 17 is_stmt 0                ; vecfp.c:0:17
	mov	x9, x20
	ldr	x10, [sp, #88]                  ; 8-byte Folded Reload
	b	LBB6_37
Ltmp277:
LBB6_36:                                ;   in Loop: Header=BB6_33 Depth=1
	;DEBUG_VALUE: src_reg <- [DW_OP_plus_uconst 208, DW_OP_deref_size 8, DW_OP_constu 49, DW_OP_shr, DW_OP_constu 7, DW_OP_and, DW_OP_stack_value] $sp
	;DEBUG_VALUE: ibits <- [DW_OP_plus_uconst 112] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_offset <- [DW_OP_LLVM_arg 0, DW_OP_plus_uconst 232, DW_OP_deref, DW_OP_LLVM_arg 0, DW_OP_plus_uconst 176, DW_OP_deref, DW_OP_plus, DW_OP_stack_value] $sp
	;DEBUG_VALUE: emulate_AMX_VECFP:x_offset <- [DW_OP_LLVM_arg 0, DW_OP_plus_uconst 240, DW_OP_deref, DW_OP_LLVM_arg 0, DW_OP_plus_uconst 168, DW_OP_deref, DW_OP_plus, DW_OP_stack_value] $sp
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	.loc	4 221 17 is_stmt 1              ; vecfp.c:221:17
	add	x0, sp, #304
	ldr	x1, [sp, #72]                   ; 8-byte Folded Reload
	ldr	x2, [sp, #112]                  ; 8-byte Folded Reload
                                        ; kill: def $w2 killed $w2 killed $x2
	ldr	w3, [sp, #120]                  ; 4-byte Folded Reload
	bl	_load_xy_reg_indexed
Ltmp278:
	;DEBUG_VALUE: emulate_AMX_VECFP:y_offset <- [DW_OP_LLVM_arg 0, DW_OP_plus_uconst 232, DW_OP_deref, DW_OP_LLVM_arg 1, DW_OP_plus_uconst 80, DW_OP_deref, DW_OP_plus, DW_OP_stack_value] $sp, $sp
	.loc	4 0 17 is_stmt 0                ; vecfp.c:0:17
	ldr	x9, [sp, #80]                   ; 8-byte Folded Reload
	mov	x10, x25
Ltmp279:
LBB6_37:                                ;   in Loop: Header=BB6_33 Depth=1
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_offset <- undef
	;DEBUG_VALUE: emulate_AMX_VECFP:y_offset <- undef
	;DEBUG_VALUE: xy_shuffle:dst <- [DW_OP_constu 256, DW_OP_minus, DW_OP_stack_value] $fp
	;DEBUG_VALUE: xy_shuffle:shuffle <- [DW_OP_plus_uconst 148] [$sp+0]
	;DEBUG_VALUE: xy_shuffle:ebytes <- undef
	stp	x10, x9, [sp, #216]             ; 16-byte Folded Spill
	mov	w27, #64
	ldr	w8, [sp, #148]                  ; 4-byte Folded Reload
	;DEBUG_VALUE: xy_shuffle:shuffle <- $w8
	mov	x26, x19
	ldr	w19, [sp, #124]                 ; 4-byte Folded Reload
	sub	x28, x29, #256
	sub	x23, x29, #192
Ltmp280:
	;DEBUG_VALUE: xy_shuffle:shuffle <- [DW_OP_plus_uconst 148] [$sp+0]
	.loc	6 50 9 is_stmt 1                ; ./emulate.h:50:9
	cbz	w8, LBB6_40
Ltmp281:
; %bb.38:                               ;   in Loop: Header=BB6_33 Depth=1
	;DEBUG_VALUE: xy_shuffle:shuffle <- [DW_OP_plus_uconst 148] [$sp+0]
	;DEBUG_VALUE: xy_shuffle:dst <- [DW_OP_constu 256, DW_OP_minus, DW_OP_stack_value] $fp
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	.loc	6 0 9 is_stmt 0                 ; ./emulate.h:0:9
	mov	x20, #0
	mov	w25, #0
Ltmp282:
	.loc	6 52 9 is_stmt 1                ; ./emulate.h:52:9
	ldp	q0, q1, [x29, #-256]
	stp	q0, q1, [x29, #-192]
	ldp	q0, q1, [x29, #-224]
	stp	q0, q1, [x29, #-160]
	;DEBUG_VALUE: doff <- 0
	;DEBUG_VALUE: soff <- 0
Ltmp283:
	;DEBUG_VALUE: step <- $w26
LBB6_39:                                ;   Parent Loop BB6_33 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	;DEBUG_VALUE: step <- $w26
	;DEBUG_VALUE: xy_shuffle:shuffle <- [DW_OP_plus_uconst 148] [$sp+0]
	;DEBUG_VALUE: xy_shuffle:dst <- [DW_OP_constu 256, DW_OP_minus, DW_OP_stack_value] $fp
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	;DEBUG_VALUE: soff <- $w25
	;DEBUG_VALUE: doff <- $x20
	.loc	6 55 13                         ; ./emulate.h:55:13
	add	x0, x28, x20
	add	x1, x23, w25, uxtw
	mov	x2, x22
	bl	_memcpy
Ltmp284:
	.loc	6 56 18                         ; ./emulate.h:56:18
	add	w8, w25, w26
Ltmp285:
	;DEBUG_VALUE: soff <- $w8
	.loc	6 57 17                         ; ./emulate.h:57:17
	cmp	w8, #64
	csel	w9, w27, w22, lo
Ltmp286:
	;DEBUG_VALUE: soff <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $w9, $w8
	add	w8, w9, w8
Ltmp287:
	.loc	6 60 18                         ; ./emulate.h:60:18
	and	w25, w8, #0x3f
Ltmp288:
	;DEBUG_VALUE: soff <- $w25
	.loc	6 54 59                         ; ./emulate.h:54:59
	add	x20, x20, x21
Ltmp289:
	;DEBUG_VALUE: doff <- $x20
	.loc	6 54 9 is_stmt 0                ; ./emulate.h:54:9
	cmp	x20, #64
	b.lo	LBB6_39
Ltmp290:
LBB6_40:                                ;   in Loop: Header=BB6_33 Depth=1
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_offset <- undef
	;DEBUG_VALUE: emulate_AMX_VECFP:y_offset <- undef
	;DEBUG_VALUE: xy_shuffle:dst <- [DW_OP_plus_uconst 304, DW_OP_stack_value] $sp
	;DEBUG_VALUE: xy_shuffle:shuffle <- [DW_OP_plus_uconst 144] [$sp+0]
	;DEBUG_VALUE: xy_shuffle:ebytes <- undef
	.loc	6 0 9                           ; ./emulate.h:0:9
	ldr	w8, [sp, #144]                  ; 4-byte Folded Reload
	;DEBUG_VALUE: xy_shuffle:shuffle <- $w8
	add	x28, sp, #304
Ltmp291:
	;DEBUG_VALUE: xy_shuffle:shuffle <- [DW_OP_plus_uconst 144] [$sp+0]
	.loc	6 50 9 is_stmt 1                ; ./emulate.h:50:9
	cbz	w8, LBB6_43
Ltmp292:
; %bb.41:                               ;   in Loop: Header=BB6_33 Depth=1
	;DEBUG_VALUE: xy_shuffle:shuffle <- [DW_OP_plus_uconst 144] [$sp+0]
	;DEBUG_VALUE: xy_shuffle:dst <- [DW_OP_plus_uconst 304, DW_OP_stack_value] $sp
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	.loc	6 0 9 is_stmt 0                 ; ./emulate.h:0:9
	mov	x20, #0
	mov	w25, #0
Ltmp293:
	.loc	6 52 9 is_stmt 1                ; ./emulate.h:52:9
	ldp	q0, q1, [sp, #304]
	stp	q0, q1, [x29, #-192]
	ldp	q0, q1, [sp, #336]
	stp	q0, q1, [x29, #-160]
	;DEBUG_VALUE: doff <- 0
	;DEBUG_VALUE: soff <- 0
Ltmp294:
	;DEBUG_VALUE: step <- $w19
LBB6_42:                                ;   Parent Loop BB6_33 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	;DEBUG_VALUE: step <- $w19
	;DEBUG_VALUE: xy_shuffle:shuffle <- [DW_OP_plus_uconst 144] [$sp+0]
	;DEBUG_VALUE: xy_shuffle:dst <- [DW_OP_plus_uconst 304, DW_OP_stack_value] $sp
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	;DEBUG_VALUE: soff <- $w25
	;DEBUG_VALUE: doff <- $x20
	.loc	6 55 13                         ; ./emulate.h:55:13
	add	x0, x28, x20
	add	x1, x23, w25, uxtw
	mov	x2, x22
	bl	_memcpy
Ltmp295:
	.loc	6 56 18                         ; ./emulate.h:56:18
	add	w8, w25, w19
Ltmp296:
	;DEBUG_VALUE: soff <- $w8
	.loc	6 57 17                         ; ./emulate.h:57:17
	cmp	w8, #64
	csel	w9, w27, w22, lo
Ltmp297:
	;DEBUG_VALUE: soff <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $w9, $w8
	add	w8, w9, w8
Ltmp298:
	.loc	6 60 18                         ; ./emulate.h:60:18
	and	w25, w8, #0x3f
Ltmp299:
	;DEBUG_VALUE: soff <- $w25
	.loc	6 54 59                         ; ./emulate.h:54:59
	add	x20, x20, x21
Ltmp300:
	;DEBUG_VALUE: doff <- $x20
	.loc	6 54 9 is_stmt 0                ; ./emulate.h:54:9
	cmp	x20, #64
	b.lo	LBB6_42
Ltmp301:
LBB6_43:                                ;   in Loop: Header=BB6_33 Depth=1
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_offset <- undef
	;DEBUG_VALUE: emulate_AMX_VECFP:y_offset <- undef
	;DEBUG_VALUE: parse_writemask:g <- undef
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: parse_writemask:mode <- [DW_OP_plus_uconst 136] [$sp+0]
	;DEBUG_VALUE: parse_writemask:val <- [DW_OP_plus_uconst 104] [$sp+0]
	;DEBUG_VALUE: parse_writemask:all <- -1
	.loc	6 0 9                           ; ./emulate.h:0:9
	ldr	x10, [sp, #136]                 ; 8-byte Folded Reload
Ltmp302:
	.loc	6 70 5 is_stmt 1                ; ./emulate.h:70:5
	cmp	w10, #5
	b.hi	LBB6_48
Ltmp303:
; %bb.44:                               ;   in Loop: Header=BB6_33 Depth=1
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:val <- [DW_OP_plus_uconst 104] [$sp+0]
	;DEBUG_VALUE: parse_writemask:mode <- [DW_OP_plus_uconst 136] [$sp+0]
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	.loc	6 0 5 is_stmt 0                 ; ./emulate.h:0:5
Lloh20:
	adrp	x11, lJTI6_2@PAGE
Lloh21:
	add	x11, x11, lJTI6_2@PAGEOFF
Ltmp304:
	adr	x8, Ltmp304
	ldrsw	x9, [x11, x10, lsl #2]
	add	x8, x8, x9
	ldr	x16, [sp, #280]                 ; 8-byte Folded Reload
	ldr	w3, [sp, #276]                  ; 4-byte Folded Reload
	ldp	x5, x15, [sp, #256]             ; 16-byte Folded Reload
	ldr	x23, [sp, #224]                 ; 8-byte Folded Reload
	br	x8
Ltmp305:
LBB6_45:                                ;   in Loop: Header=BB6_33 Depth=1
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:val <- [DW_OP_plus_uconst 104] [$sp+0]
	;DEBUG_VALUE: parse_writemask:mode <- [DW_OP_plus_uconst 136] [$sp+0]
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	ldr	w8, [sp, #28]                   ; 4-byte Folded Reload
Ltmp306:
	.loc	6 72 22 is_stmt 1               ; ./emulate.h:72:22
	cmp	w8, #1
	b.hi	LBB6_55
Ltmp307:
; %bb.46:                               ;   in Loop: Header=BB6_33 Depth=1
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:val <- [DW_OP_plus_uconst 104] [$sp+0]
	;DEBUG_VALUE: parse_writemask:mode <- [DW_OP_plus_uconst 136] [$sp+0]
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	.loc	6 0 22 is_stmt 0                ; ./emulate.h:0:22
	ldr	w9, [sp, #12]                   ; 4-byte Folded Reload
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
Ltmp308:
LBB6_47:                                ;   Parent Loop BB6_33 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	;DEBUG_VALUE: parse_writemask:val <- [DW_OP_plus_uconst 104] [$sp+0]
	;DEBUG_VALUE: parse_writemask:mode <- [DW_OP_plus_uconst 136] [$sp+0]
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	;DEBUG_VALUE: parse_writemask:all <- $x8
	.loc	6 76 28 is_stmt 1               ; ./emulate.h:76:28
	lsl	x10, x8, x9
	.loc	6 76 21 is_stmt 0               ; ./emulate.h:76:21
	orr	x8, x10, x8
Ltmp309:
	;DEBUG_VALUE: parse_writemask:all <- $x8
	;DEBUG_VALUE: parse_writemask:g <- $w9
	.loc	6 75 23 is_stmt 1               ; ./emulate.h:75:23
	lsl	w10, w9, #1
Ltmp310:
	;DEBUG_VALUE: parse_writemask:g <- $w10
	.loc	6 75 13 is_stmt 0               ; ./emulate.h:75:13
	cmp	w9, #32
	mov	x9, x10
Ltmp311:
	;DEBUG_VALUE: parse_writemask:g <- $w9
	b.lo	LBB6_47
	b	LBB6_56
Ltmp312:
LBB6_48:                                ;   in Loop: Header=BB6_33 Depth=1
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:val <- [DW_OP_plus_uconst 104] [$sp+0]
	;DEBUG_VALUE: parse_writemask:mode <- [DW_OP_plus_uconst 136] [$sp+0]
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	.loc	6 0 13                          ; ./emulate.h:0:13
	mov	x27, #0
	ldr	x16, [sp, #280]                 ; 8-byte Folded Reload
	ldr	w3, [sp, #276]                  ; 4-byte Folded Reload
	ldp	x5, x15, [sp, #256]             ; 16-byte Folded Reload
	ldr	x23, [sp, #224]                 ; 8-byte Folded Reload
	b	LBB6_57
Ltmp313:
LBB6_49:                                ;   in Loop: Header=BB6_33 Depth=1
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:val <- [DW_OP_plus_uconst 104] [$sp+0]
	;DEBUG_VALUE: parse_writemask:mode <- [DW_OP_plus_uconst 136] [$sp+0]
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	ldr	x27, [sp, #32]                  ; 8-byte Folded Reload
	b	LBB6_57
Ltmp314:
LBB6_50:                                ;   in Loop: Header=BB6_33 Depth=1
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:val <- [DW_OP_plus_uconst 104] [$sp+0]
	;DEBUG_VALUE: parse_writemask:mode <- [DW_OP_plus_uconst 136] [$sp+0]
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	ldr	w8, [sp, #104]                  ; 4-byte Folded Reload
	.loc	6 88 13 is_stmt 1               ; ./emulate.h:88:13
	cbz	w8, LBB6_54
Ltmp315:
LBB6_51:                                ;   in Loop: Header=BB6_33 Depth=1
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:val <- [DW_OP_plus_uconst 104] [$sp+0]
	;DEBUG_VALUE: parse_writemask:mode <- [DW_OP_plus_uconst 136] [$sp+0]
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	.loc	6 0 13 is_stmt 0                ; ./emulate.h:0:13
	ldr	x27, [sp, #40]                  ; 8-byte Folded Reload
	b	LBB6_57
Ltmp316:
LBB6_52:                                ;   in Loop: Header=BB6_33 Depth=1
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:val <- [DW_OP_plus_uconst 104] [$sp+0]
	;DEBUG_VALUE: parse_writemask:mode <- [DW_OP_plus_uconst 136] [$sp+0]
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	ldr	w8, [sp, #104]                  ; 4-byte Folded Reload
	.loc	6 93 13 is_stmt 1               ; ./emulate.h:93:13
	cbz	w8, LBB6_54
Ltmp317:
LBB6_53:                                ;   in Loop: Header=BB6_33 Depth=1
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:val <- [DW_OP_plus_uconst 104] [$sp+0]
	;DEBUG_VALUE: parse_writemask:mode <- [DW_OP_plus_uconst 136] [$sp+0]
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	.loc	6 0 13 is_stmt 0                ; ./emulate.h:0:13
	ldr	x27, [sp, #48]                  ; 8-byte Folded Reload
	b	LBB6_57
Ltmp318:
LBB6_54:                                ;   in Loop: Header=BB6_33 Depth=1
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:val <- [DW_OP_plus_uconst 104] [$sp+0]
	;DEBUG_VALUE: parse_writemask:mode <- [DW_OP_plus_uconst 136] [$sp+0]
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	mov	x27, #-1
	b	LBB6_57
Ltmp319:
LBB6_55:                                ;   in Loop: Header=BB6_33 Depth=1
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:val <- [DW_OP_plus_uconst 104] [$sp+0]
	;DEBUG_VALUE: parse_writemask:mode <- [DW_OP_plus_uconst 136] [$sp+0]
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	mov	x8, #-1
Ltmp320:
LBB6_56:                                ;   in Loop: Header=BB6_33 Depth=1
	;DEBUG_VALUE: parse_writemask:val <- [DW_OP_plus_uconst 104] [$sp+0]
	;DEBUG_VALUE: parse_writemask:mode <- [DW_OP_plus_uconst 136] [$sp+0]
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	;DEBUG_VALUE: parse_writemask:all <- $x8
	ldr	w9, [sp, #104]                  ; 4-byte Folded Reload
	.loc	6 83 16 is_stmt 1               ; ./emulate.h:83:16
	cmp	w9, #6
	csel	x27, x8, xzr, lo
Ltmp321:
LBB6_57:                                ;   in Loop: Header=BB6_33 Depth=1
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_offset <- undef
	;DEBUG_VALUE: emulate_AMX_VECFP:y_offset <- undef
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: broadcast_y <- [DW_OP_LLVM_convert 1 7, DW_OP_LLVM_convert 8 7, DW_OP_stack_value] undef
	;DEBUG_VALUE: omask <- -1
	.loc	4 234 13                        ; vecfp.c:234:13
	cmp	x15, #1
	csinv	x8, x27, xzr, ne
	cbz	x15, LBB6_64
Ltmp322:
; %bb.58:                               ;   in Loop: Header=BB6_33 Depth=1
	;DEBUG_VALUE: omask <- -1
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	.loc	4 0 13 is_stmt 0                ; vecfp.c:0:13
	mov	w28, #0
	mov	x27, x8
Ltmp323:
LBB6_59:                                ;   in Loop: Header=BB6_33 Depth=1
	;DEBUG_VALUE: omask <- -1
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_offset <- undef
	;DEBUG_VALUE: emulate_AMX_VECFP:y_offset <- undef
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: omask <- undef
	ldr	w8, [sp, #188]                  ; 4-byte Folded Reload
	.loc	4 247 13 is_stmt 1              ; vecfp.c:247:13
	cbz	w8, LBB6_62
Ltmp324:
; %bb.60:                               ;   in Loop: Header=BB6_33 Depth=1
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	.loc	4 0 13 is_stmt 0                ; vecfp.c:0:13
	ldr	w8, [sp, #292]                  ; 4-byte Folded Reload
Ltmp325:
	.loc	4 248 17 is_stmt 1              ; vecfp.c:248:17
	tbz	w8, #0, LBB6_99
Ltmp326:
; %bb.61:                               ;   in Loop: Header=BB6_33 Depth=1
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	.loc	4 0 17 is_stmt 0                ; vecfp.c:0:17
	mov	x8, #0
	mov	x9, #0
	b	LBB6_71
Ltmp327:
LBB6_62:                                ;   in Loop: Header=BB6_33 Depth=1
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	ldr	w8, [sp, #108]                  ; 4-byte Folded Reload
Ltmp328:
	.loc	4 263 32 is_stmt 1              ; vecfp.c:263:32
	cbz	w8, LBB6_106
Ltmp329:
; %bb.63:                               ;   in Loop: Header=BB6_33 Depth=1
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	;DEBUG_VALUE: i <- 0
	.loc	4 0 32 is_stmt 0                ; vecfp.c:0:32
	mov	x8, #0
	mov	x9, #0
	ldr	x10, [sp, #248]                 ; 8-byte Folded Reload
	and	x10, x10, #0xfffffffffffffffe
	b	LBB6_85
Ltmp330:
LBB6_64:                                ;   in Loop: Header=BB6_33 Depth=1
	;DEBUG_VALUE: omask <- -1
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	;DEBUG_VALUE: val <- [DW_OP_plus_uconst 96] [$sp+0]
	ldr	x8, [sp, #96]                   ; 8-byte Folded Reload
Ltmp331:
	.loc	4 238 17 is_stmt 1              ; vecfp.c:238:17
	cmp	w8, #3
	b.eq	LBB6_138
Ltmp332:
; %bb.65:                               ;   in Loop: Header=BB6_33 Depth=1
	;DEBUG_VALUE: val <- [DW_OP_plus_uconst 96] [$sp+0]
	;DEBUG_VALUE: omask <- -1
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	cmp	w8, #5
	b.eq	LBB6_137
Ltmp333:
; %bb.66:                               ;   in Loop: Header=BB6_33 Depth=1
	;DEBUG_VALUE: val <- [DW_OP_plus_uconst 96] [$sp+0]
	;DEBUG_VALUE: omask <- -1
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	cmp	w8, #4
	b.ne	LBB6_139
Ltmp334:
; %bb.67:                               ;   in Loop: Header=BB6_33 Depth=1
	;DEBUG_VALUE: val <- [DW_OP_plus_uconst 96] [$sp+0]
	;DEBUG_VALUE: omask <- -1
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	.loc	4 0 17 is_stmt 0                ; vecfp.c:0:17
	mov	w28, #0
	movi.2d	v0, #0000000000000000
Ltmp335:
	.loc	4 241 17 is_stmt 1              ; vecfp.c:241:17
	stp	q0, q0, [x29, #-224]
	stp	q0, q0, [x29, #-256]
	b	LBB6_59
Ltmp336:
LBB6_68:                                ;   in Loop: Header=BB6_71 Depth=2
	;DEBUG_VALUE: vecfp_alu16:y <- $h2
	;DEBUG_VALUE: vecfp_alu16:x <- $h1
	;DEBUG_VALUE: vecfp_alu16:z <- $h0
	;DEBUG_VALUE: vecfp_alu16:alumode <- $w16
	;DEBUG_VALUE: z <- [DW_OP_LLVM_arg 0, DW_OP_plus_uconst 296, DW_OP_deref, DW_OP_LLVM_arg 0, DW_OP_plus_uconst 248, DW_OP_deref, DW_OP_constu 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst 1024, DW_OP_LLVM_arg 1, DW_OP_constu 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $sp, $x9
	;DEBUG_VALUE: i <- $x9
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	.loc	4 126 20                        ; vecfp.c:126:20
	fadd	h0, h2, h0
Ltmp337:
	;DEBUG_VALUE: vecfp_alu16:z <- $h0
LBB6_69:                                ;   in Loop: Header=BB6_71 Depth=2
	;DEBUG_VALUE: z <- [DW_OP_LLVM_arg 0, DW_OP_plus_uconst 296, DW_OP_deref, DW_OP_LLVM_arg 0, DW_OP_plus_uconst 248, DW_OP_deref, DW_OP_constu 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst 1024, DW_OP_LLVM_arg 1, DW_OP_constu 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $sp, $x9
	;DEBUG_VALUE: i <- $x9
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	.loc	4 260 24                        ; vecfp.c:260:24
	str	h0, [x24, x9, lsl #1]
Ltmp338:
LBB6_70:                                ;   in Loop: Header=BB6_71 Depth=2
	;DEBUG_VALUE: i <- $x9
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	.loc	4 256 48                        ; vecfp.c:256:48
	add	x9, x9, #1
Ltmp339:
	;DEBUG_VALUE: i <- $x9
	.loc	4 256 40 is_stmt 0              ; vecfp.c:256:40
	add	x8, x8, x21
Ltmp340:
	.loc	4 256 17                        ; vecfp.c:256:17
	cmp	x9, #32
	b.eq	LBB6_32
Ltmp341:
LBB6_71:                                ;   Parent Loop BB6_33 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	;DEBUG_VALUE: i <- $x9
	.loc	4 257 25 is_stmt 1              ; vecfp.c:257:25
	lsr	x10, x27, x8
	tbz	w10, #0, LBB6_70
Ltmp342:
; %bb.72:                               ;   in Loop: Header=BB6_71 Depth=2
	;DEBUG_VALUE: i <- $x9
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	;DEBUG_VALUE: j <- [DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 32 7, DW_OP_stack_value] undef
	;DEBUG_VALUE: z <- [DW_OP_LLVM_arg 0, DW_OP_plus_uconst 296, DW_OP_deref, DW_OP_LLVM_arg 2, DW_OP_plus_uconst 248, DW_OP_deref, DW_OP_constu 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst 1024, DW_OP_LLVM_arg 1, DW_OP_constu 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $sp, $x9, $sp
	.loc	4 0 25 is_stmt 0                ; vecfp.c:0:25
	movi	d0, #0000000000000000
	.loc	4 260 26 is_stmt 1              ; vecfp.c:260:26
	tbnz	w28, #0, LBB6_69
Ltmp343:
; %bb.73:                               ;   in Loop: Header=BB6_71 Depth=2
	;DEBUG_VALUE: z <- [DW_OP_LLVM_arg 0, DW_OP_plus_uconst 296, DW_OP_deref, DW_OP_LLVM_arg 0, DW_OP_plus_uconst 248, DW_OP_deref, DW_OP_constu 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst 1024, DW_OP_LLVM_arg 1, DW_OP_constu 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $sp, $x9
	;DEBUG_VALUE: i <- $x9
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	.loc	4 258 34                        ; vecfp.c:258:34
	cmp	x15, #1
	csel	x10, x5, x9, eq
Ltmp344:
	;DEBUG_VALUE: j <- [DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 32 7, DW_OP_stack_value] $x10
	.loc	4 260 75                        ; vecfp.c:260:75
	ldr	h0, [x24, x9, lsl #1]
Ltmp345:
	;DEBUG_VALUE: vecfp_alu16:alumode <- $w16
	;DEBUG_VALUE: vecfp_alu16:y <- undef
	;DEBUG_VALUE: vecfp_alu16:x <- undef
	;DEBUG_VALUE: vecfp_alu16:z <- $h0
	.loc	4 118 5                         ; vecfp.c:118:5
	cmp	w16, #12
	b.hi	LBB6_69
Ltmp346:
; %bb.74:                               ;   in Loop: Header=BB6_71 Depth=2
	;DEBUG_VALUE: vecfp_alu16:z <- $h0
	;DEBUG_VALUE: vecfp_alu16:alumode <- $w16
	;DEBUG_VALUE: j <- [DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 32 7, DW_OP_stack_value] $x10
	;DEBUG_VALUE: z <- [DW_OP_LLVM_arg 0, DW_OP_plus_uconst 296, DW_OP_deref, DW_OP_LLVM_arg 0, DW_OP_plus_uconst 248, DW_OP_deref, DW_OP_constu 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst 1024, DW_OP_LLVM_arg 1, DW_OP_constu 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $sp, $x9
	;DEBUG_VALUE: i <- $x9
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	.loc	4 0 5 is_stmt 0                 ; vecfp.c:0:5
	and	w11, w3, w9
	sub	x12, x29, #256
	ldr	h1, [x12, w11, uxtw #1]
Ltmp347:
	;DEBUG_VALUE: vecfp_alu16:x <- $h1
	add	x11, sp, #304
	ldr	h2, [x11, x10, lsl #1]
Ltmp348:
	;DEBUG_VALUE: vecfp_alu16:y <- $h2
Lloh22:
	adrp	x12, lJTI6_6@PAGE
Lloh23:
	add	x12, x12, lJTI6_6@PAGEOFF
Ltmp349:
	adr	x10, Ltmp349
	ldrsw	x11, [x12, x16, lsl #2]
	add	x10, x10, x11
Ltmp350:
	br	x10
Ltmp351:
LBB6_75:                                ;   in Loop: Header=BB6_71 Depth=2
	;DEBUG_VALUE: vecfp_alu16:y <- $h2
	;DEBUG_VALUE: vecfp_alu16:x <- $h1
	;DEBUG_VALUE: vecfp_alu16:z <- $h0
	;DEBUG_VALUE: vecfp_alu16:alumode <- $w16
	;DEBUG_VALUE: z <- [DW_OP_LLVM_arg 0, DW_OP_plus_uconst 296, DW_OP_deref, DW_OP_LLVM_arg 0, DW_OP_plus_uconst 248, DW_OP_deref, DW_OP_constu 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst 1024, DW_OP_LLVM_arg 1, DW_OP_constu 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $sp, $x9
	;DEBUG_VALUE: i <- $x9
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	.loc	4 119 13 is_stmt 1              ; vecfp.c:119:13
	; InlineAsm Start
	fmadd	h0, h1, h2, h0
	; InlineAsm End
Ltmp352:
	;DEBUG_VALUE: vecfp_alu16:z <- $h0
	.loc	4 0 13 is_stmt 0                ; vecfp.c:0:13
	b	LBB6_69
Ltmp353:
LBB6_76:                                ;   in Loop: Header=BB6_71 Depth=2
	;DEBUG_VALUE: vecfp_alu16:y <- $h2
	;DEBUG_VALUE: vecfp_alu16:x <- $h1
	;DEBUG_VALUE: vecfp_alu16:z <- $h0
	;DEBUG_VALUE: vecfp_alu16:alumode <- $w16
	;DEBUG_VALUE: z <- [DW_OP_LLVM_arg 0, DW_OP_plus_uconst 296, DW_OP_deref, DW_OP_LLVM_arg 0, DW_OP_plus_uconst 248, DW_OP_deref, DW_OP_constu 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst 1024, DW_OP_LLVM_arg 1, DW_OP_constu 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $sp, $x9
	;DEBUG_VALUE: i <- $x9
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	.loc	4 120 13 is_stmt 1              ; vecfp.c:120:13
	; InlineAsm Start
	fmsub	h0, h1, h2, h0
	; InlineAsm End
Ltmp354:
	;DEBUG_VALUE: vecfp_alu16:z <- $h0
	.loc	4 0 13 is_stmt 0                ; vecfp.c:0:13
	b	LBB6_69
Ltmp355:
LBB6_77:                                ;   in Loop: Header=BB6_71 Depth=2
	;DEBUG_VALUE: vecfp_alu16:y <- $h2
	;DEBUG_VALUE: vecfp_alu16:x <- $h1
	;DEBUG_VALUE: vecfp_alu16:z <- $h0
	;DEBUG_VALUE: vecfp_alu16:alumode <- $w16
	;DEBUG_VALUE: z <- [DW_OP_LLVM_arg 0, DW_OP_plus_uconst 296, DW_OP_deref, DW_OP_LLVM_arg 0, DW_OP_plus_uconst 248, DW_OP_deref, DW_OP_constu 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst 1024, DW_OP_LLVM_arg 1, DW_OP_constu 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $sp, $x9
	;DEBUG_VALUE: i <- $x9
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	.loc	4 121 17 is_stmt 1              ; vecfp.c:121:17
	fcmp	h1, #0.0
	fcsel	h0, h8, h2, ls
Ltmp356:
	;DEBUG_VALUE: vecfp_alu16:z <- $h0
	.loc	4 0 17 is_stmt 0                ; vecfp.c:0:17
	b	LBB6_69
Ltmp357:
LBB6_78:                                ;   in Loop: Header=BB6_71 Depth=2
	;DEBUG_VALUE: vecfp_alu16:y <- $h2
	;DEBUG_VALUE: vecfp_alu16:x <- $h1
	;DEBUG_VALUE: vecfp_alu16:z <- $h0
	;DEBUG_VALUE: vecfp_alu16:alumode <- $w16
	;DEBUG_VALUE: z <- [DW_OP_LLVM_arg 0, DW_OP_plus_uconst 296, DW_OP_deref, DW_OP_LLVM_arg 0, DW_OP_plus_uconst 248, DW_OP_deref, DW_OP_constu 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst 1024, DW_OP_LLVM_arg 1, DW_OP_constu 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $sp, $x9
	;DEBUG_VALUE: i <- $x9
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	.loc	4 122 13 is_stmt 1              ; vecfp.c:122:13
	; InlineAsm Start
	fmin	h0, h1, h0
	; InlineAsm End
Ltmp358:
	;DEBUG_VALUE: vecfp_alu16:z <- $h0
	.loc	4 0 13 is_stmt 0                ; vecfp.c:0:13
	b	LBB6_69
Ltmp359:
LBB6_79:                                ;   in Loop: Header=BB6_71 Depth=2
	;DEBUG_VALUE: vecfp_alu16:y <- $h2
	;DEBUG_VALUE: vecfp_alu16:x <- $h1
	;DEBUG_VALUE: vecfp_alu16:z <- $h0
	;DEBUG_VALUE: vecfp_alu16:alumode <- $w16
	;DEBUG_VALUE: z <- [DW_OP_LLVM_arg 0, DW_OP_plus_uconst 296, DW_OP_deref, DW_OP_LLVM_arg 0, DW_OP_plus_uconst 248, DW_OP_deref, DW_OP_constu 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst 1024, DW_OP_LLVM_arg 1, DW_OP_constu 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $sp, $x9
	;DEBUG_VALUE: i <- $x9
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	.loc	4 123 13 is_stmt 1              ; vecfp.c:123:13
	; InlineAsm Start
	fmax	h0, h1, h0
	; InlineAsm End
Ltmp360:
	;DEBUG_VALUE: vecfp_alu16:z <- $h0
	.loc	4 0 13 is_stmt 0                ; vecfp.c:0:13
	b	LBB6_69
Ltmp361:
LBB6_80:                                ;   in Loop: Header=BB6_71 Depth=2
	;DEBUG_VALUE: vecfp_alu16:y <- $h2
	;DEBUG_VALUE: vecfp_alu16:x <- $h1
	;DEBUG_VALUE: vecfp_alu16:z <- $h0
	;DEBUG_VALUE: vecfp_alu16:alumode <- $w16
	;DEBUG_VALUE: z <- [DW_OP_LLVM_arg 0, DW_OP_plus_uconst 296, DW_OP_deref, DW_OP_LLVM_arg 0, DW_OP_plus_uconst 248, DW_OP_deref, DW_OP_constu 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst 1024, DW_OP_LLVM_arg 1, DW_OP_constu 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $sp, $x9
	;DEBUG_VALUE: i <- $x9
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	.loc	4 124 20 is_stmt 1              ; vecfp.c:124:20
	fmul	h0, h1, h2
Ltmp362:
	;DEBUG_VALUE: vecfp_alu16:z <- $h0
	.loc	4 0 20 is_stmt 0                ; vecfp.c:0:20
	b	LBB6_69
Ltmp363:
LBB6_81:                                ;   in Loop: Header=BB6_71 Depth=2
	;DEBUG_VALUE: vecfp_alu16:y <- $h2
	;DEBUG_VALUE: vecfp_alu16:x <- $h1
	;DEBUG_VALUE: vecfp_alu16:z <- $h0
	;DEBUG_VALUE: vecfp_alu16:alumode <- $w16
	;DEBUG_VALUE: z <- [DW_OP_LLVM_arg 0, DW_OP_plus_uconst 296, DW_OP_deref, DW_OP_LLVM_arg 0, DW_OP_plus_uconst 248, DW_OP_deref, DW_OP_constu 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst 1024, DW_OP_LLVM_arg 1, DW_OP_constu 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $sp, $x9
	;DEBUG_VALUE: i <- $x9
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	.loc	4 125 20 is_stmt 1              ; vecfp.c:125:20
	fadd	h0, h1, h0
Ltmp364:
	;DEBUG_VALUE: vecfp_alu16:z <- $h0
	.loc	4 0 20 is_stmt 0                ; vecfp.c:0:20
	b	LBB6_69
Ltmp365:
LBB6_82:                                ;   in Loop: Header=BB6_85 Depth=2
	;DEBUG_VALUE: vecfp_alu32:z <- $s0
	;DEBUG_VALUE: vecfp_alu32:y <- $s2
	;DEBUG_VALUE: vecfp_alu32:alumode <- $w16
	;DEBUG_VALUE: z <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 4, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $x11, $x12
	;DEBUG_VALUE: yf <- $s2
	;DEBUG_VALUE: i <- $x9
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	.loc	4 140 20 is_stmt 1              ; vecfp.c:140:20
	fadd	s0, s2, s0
Ltmp366:
	;DEBUG_VALUE: vecfp_alu32:z <- $s0
LBB6_83:                                ;   in Loop: Header=BB6_85 Depth=2
	;DEBUG_VALUE: z <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 4, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $x11, $x12
	;DEBUG_VALUE: yf <- $s2
	;DEBUG_VALUE: i <- $x9
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	.loc	4 270 20                        ; vecfp.c:270:20
	str	s0, [x11, x12, lsl #2]
Ltmp367:
LBB6_84:                                ;   in Loop: Header=BB6_85 Depth=2
	;DEBUG_VALUE: i <- $x9
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	.loc	4 264 44                        ; vecfp.c:264:44
	add	x9, x9, #1
Ltmp368:
	;DEBUG_VALUE: i <- $x9
	.loc	4 264 36 is_stmt 0              ; vecfp.c:264:36
	add	x8, x8, x21
Ltmp369:
	.loc	4 264 13                        ; vecfp.c:264:13
	cmp	x9, #32
	b.eq	LBB6_32
Ltmp370:
LBB6_85:                                ;   Parent Loop BB6_33 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	;DEBUG_VALUE: i <- $x9
	.loc	4 265 21 is_stmt 1              ; vecfp.c:265:21
	lsr	x11, x27, x8
	tbz	w11, #0, LBB6_84
Ltmp371:
; %bb.86:                               ;   in Loop: Header=BB6_85 Depth=2
	;DEBUG_VALUE: i <- $x9
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	.loc	4 266 30                        ; vecfp.c:266:30
	cmp	x15, #1
	csel	x11, x5, x9, eq
Ltmp372:
	;DEBUG_VALUE: z <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_constu 4, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] undef
	;DEBUG_VALUE: j <- [DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 32 7, DW_OP_stack_value] $x11
	.loc	4 0 0 is_stmt 0                 ; vecfp.c:0:0
	and	w12, w3, w9
	ldr	w13, [sp, #292]                 ; 4-byte Folded Reload
	.loc	4 268 28 is_stmt 1              ; vecfp.c:268:28
	tbz	w13, #0, LBB6_88
Ltmp373:
; %bb.87:                               ;   in Loop: Header=BB6_85 Depth=2
	;DEBUG_VALUE: j <- [DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 32 7, DW_OP_stack_value] $x11
	;DEBUG_VALUE: i <- $x9
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	.loc	4 268 68 is_stmt 0              ; vecfp.c:268:68
	sub	x13, x29, #256
	ldr	h0, [x13, x12, lsl #1]
	fcvt	s1, h0
	.loc	4 269 59 is_stmt 1              ; vecfp.c:269:59
	add	x12, sp, #304
	ldr	h0, [x12, x11, lsl #1]
	fcvt	s2, h0
	b	LBB6_89
Ltmp374:
LBB6_88:                                ;   in Loop: Header=BB6_85 Depth=2
	;DEBUG_VALUE: j <- [DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 32 7, DW_OP_stack_value] $x11
	;DEBUG_VALUE: i <- $x9
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	.loc	4 268 47                        ; vecfp.c:268:47
	sub	x13, x29, #256
	ldrh	w12, [x13, x12, lsl #1]
Ltmp375:
	;DEBUG_VALUE: bf16_to_f32:x <- $w12
	.loc	4 10 9                          ; vecfp.c:10:9
	and	w13, w12, #0x7fff
Ltmp376:
	;DEBUG_VALUE: bf16_to_f32:x <- undef
	.loc	4 11 7                          ; vecfp.c:11:7
	lsl	w12, w12, #16
	mov	w14, #32640
	cmp	w13, w14
	mov	w17, #2143289344
	csel	w12, w17, w12, hi
Ltmp377:
	;DEBUG_VALUE: bf16_to_f32:x <- $w12
	.loc	4 269 47                        ; vecfp.c:269:47
	add	x13, sp, #304
	ldrh	w11, [x13, x11, lsl #1]
Ltmp378:
	.loc	4 13 5                          ; vecfp.c:13:5
	fmov	s1, w12
Ltmp379:
	;DEBUG_VALUE: bf16_to_f32:f <- $s1
	;DEBUG_VALUE: xf <- $s1
	;DEBUG_VALUE: vecfp_alu32:x <- $s1
	;DEBUG_VALUE: bf16_to_f32:x <- $w11
	.loc	4 10 9                          ; vecfp.c:10:9
	and	w12, w11, #0x7fff
Ltmp380:
	;DEBUG_VALUE: bf16_to_f32:x <- undef
	.loc	4 11 7                          ; vecfp.c:11:7
	lsl	w11, w11, #16
	cmp	w12, w14
	csel	w11, w17, w11, hi
Ltmp381:
	;DEBUG_VALUE: bf16_to_f32:x <- $w11
	.loc	4 13 5                          ; vecfp.c:13:5
	fmov	s2, w11
Ltmp382:
	;DEBUG_VALUE: bf16_to_f32:f <- $s2
	;DEBUG_VALUE: bf16_to_f32:x <- $s2
LBB6_89:                                ;   in Loop: Header=BB6_85 Depth=2
	;DEBUG_VALUE: i <- $x9
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	.loc	4 0 0 is_stmt 0                 ; vecfp.c:0:0
	and	x11, x9, #0x1
	orr	x11, x10, x11
	ldr	x12, [sp, #296]                 ; 8-byte Folded Reload
	add	x11, x12, x11, lsl #6
	add	x11, x11, #1024
Ltmp383:
	;DEBUG_VALUE: z <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_constu 4, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] undef
	ubfx	x12, x9, #1, #31
Ltmp384:
	;DEBUG_VALUE: yf <- $s2
	;DEBUG_VALUE: z <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 4, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $x11, $x12
	movi	d0, #0000000000000000
	.loc	4 270 22 is_stmt 1              ; vecfp.c:270:22
	tbnz	w28, #0, LBB6_83
Ltmp385:
; %bb.90:                               ;   in Loop: Header=BB6_85 Depth=2
	;DEBUG_VALUE: z <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 4, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $x11, $x12
	;DEBUG_VALUE: yf <- $s2
	;DEBUG_VALUE: i <- $x9
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	.loc	4 270 50 is_stmt 0              ; vecfp.c:270:50
	ldr	s0, [x11, x12, lsl #2]
Ltmp386:
	;DEBUG_VALUE: vecfp_alu32:alumode <- $w16
	;DEBUG_VALUE: vecfp_alu32:y <- $s2
	;DEBUG_VALUE: vecfp_alu32:z <- $s0
	.loc	4 132 5 is_stmt 1               ; vecfp.c:132:5
	cmp	w16, #12
	b.hi	LBB6_83
Ltmp387:
; %bb.91:                               ;   in Loop: Header=BB6_85 Depth=2
	;DEBUG_VALUE: vecfp_alu32:z <- $s0
	;DEBUG_VALUE: vecfp_alu32:y <- $s2
	;DEBUG_VALUE: vecfp_alu32:alumode <- $w16
	;DEBUG_VALUE: z <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 4, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $x11, $x12
	;DEBUG_VALUE: yf <- $s2
	;DEBUG_VALUE: i <- $x9
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	.loc	4 0 5 is_stmt 0                 ; vecfp.c:0:5
Lloh24:
	adrp	x17, lJTI6_5@PAGE
Lloh25:
	add	x17, x17, lJTI6_5@PAGEOFF
Ltmp388:
	adr	x13, Ltmp388
	ldrsw	x14, [x17, x16, lsl #2]
	add	x13, x13, x14
	br	x13
Ltmp389:
LBB6_92:                                ;   in Loop: Header=BB6_85 Depth=2
	;DEBUG_VALUE: vecfp_alu32:z <- $s0
	;DEBUG_VALUE: vecfp_alu32:y <- $s2
	;DEBUG_VALUE: vecfp_alu32:alumode <- $w16
	;DEBUG_VALUE: z <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 4, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $x11, $x12
	;DEBUG_VALUE: yf <- $s2
	;DEBUG_VALUE: i <- $x9
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	.loc	4 133 13 is_stmt 1              ; vecfp.c:133:13
	; InlineAsm Start
	fmadd	s0, s1, s2, s0
	; InlineAsm End
Ltmp390:
	;DEBUG_VALUE: vecfp_alu32:z <- $s0
	.loc	4 0 13 is_stmt 0                ; vecfp.c:0:13
	b	LBB6_83
Ltmp391:
LBB6_93:                                ;   in Loop: Header=BB6_85 Depth=2
	;DEBUG_VALUE: vecfp_alu32:z <- $s0
	;DEBUG_VALUE: vecfp_alu32:y <- $s2
	;DEBUG_VALUE: vecfp_alu32:alumode <- $w16
	;DEBUG_VALUE: z <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 4, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $x11, $x12
	;DEBUG_VALUE: yf <- $s2
	;DEBUG_VALUE: i <- $x9
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	.loc	4 134 13 is_stmt 1              ; vecfp.c:134:13
	; InlineAsm Start
	fmsub	s0, s1, s2, s0
	; InlineAsm End
Ltmp392:
	;DEBUG_VALUE: vecfp_alu32:z <- $s0
	.loc	4 0 13 is_stmt 0                ; vecfp.c:0:13
	b	LBB6_83
Ltmp393:
LBB6_94:                                ;   in Loop: Header=BB6_85 Depth=2
	;DEBUG_VALUE: vecfp_alu32:z <- $s0
	;DEBUG_VALUE: vecfp_alu32:y <- $s2
	;DEBUG_VALUE: vecfp_alu32:alumode <- $w16
	;DEBUG_VALUE: z <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 4, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $x11, $x12
	;DEBUG_VALUE: yf <- $s2
	;DEBUG_VALUE: i <- $x9
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	.loc	4 135 17 is_stmt 1              ; vecfp.c:135:17
	fcmp	s1, #0.0
	fcsel	s0, s9, s2, ls
Ltmp394:
	;DEBUG_VALUE: vecfp_alu32:z <- $s0
	.loc	4 0 17 is_stmt 0                ; vecfp.c:0:17
	b	LBB6_83
Ltmp395:
LBB6_95:                                ;   in Loop: Header=BB6_85 Depth=2
	;DEBUG_VALUE: vecfp_alu32:z <- $s0
	;DEBUG_VALUE: vecfp_alu32:y <- $s2
	;DEBUG_VALUE: vecfp_alu32:alumode <- $w16
	;DEBUG_VALUE: z <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 4, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $x11, $x12
	;DEBUG_VALUE: yf <- $s2
	;DEBUG_VALUE: i <- $x9
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	.loc	4 136 13 is_stmt 1              ; vecfp.c:136:13
	; InlineAsm Start
	fmin	s0, s1, s0
	; InlineAsm End
Ltmp396:
	;DEBUG_VALUE: vecfp_alu32:z <- $s0
	.loc	4 0 13 is_stmt 0                ; vecfp.c:0:13
	b	LBB6_83
Ltmp397:
LBB6_96:                                ;   in Loop: Header=BB6_85 Depth=2
	;DEBUG_VALUE: vecfp_alu32:z <- $s0
	;DEBUG_VALUE: vecfp_alu32:y <- $s2
	;DEBUG_VALUE: vecfp_alu32:alumode <- $w16
	;DEBUG_VALUE: z <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 4, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $x11, $x12
	;DEBUG_VALUE: yf <- $s2
	;DEBUG_VALUE: i <- $x9
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	.loc	4 137 13 is_stmt 1              ; vecfp.c:137:13
	; InlineAsm Start
	fmax	s0, s1, s0
	; InlineAsm End
Ltmp398:
	;DEBUG_VALUE: vecfp_alu32:z <- $s0
	.loc	4 0 13 is_stmt 0                ; vecfp.c:0:13
	b	LBB6_83
Ltmp399:
LBB6_97:                                ;   in Loop: Header=BB6_85 Depth=2
	;DEBUG_VALUE: vecfp_alu32:z <- $s0
	;DEBUG_VALUE: vecfp_alu32:y <- $s2
	;DEBUG_VALUE: vecfp_alu32:alumode <- $w16
	;DEBUG_VALUE: z <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 4, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $x11, $x12
	;DEBUG_VALUE: yf <- $s2
	;DEBUG_VALUE: i <- $x9
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	.loc	4 138 20 is_stmt 1              ; vecfp.c:138:20
	fmul	s0, s1, s2
Ltmp400:
	;DEBUG_VALUE: vecfp_alu32:z <- $s0
	.loc	4 0 20 is_stmt 0                ; vecfp.c:0:20
	b	LBB6_83
Ltmp401:
LBB6_98:                                ;   in Loop: Header=BB6_85 Depth=2
	;DEBUG_VALUE: vecfp_alu32:z <- $s0
	;DEBUG_VALUE: vecfp_alu32:y <- $s2
	;DEBUG_VALUE: vecfp_alu32:alumode <- $w16
	;DEBUG_VALUE: z <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 4, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $x11, $x12
	;DEBUG_VALUE: yf <- $s2
	;DEBUG_VALUE: i <- $x9
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	.loc	4 139 20 is_stmt 1              ; vecfp.c:139:20
	fadd	s0, s1, s0
Ltmp402:
	;DEBUG_VALUE: vecfp_alu32:z <- $s0
	.loc	4 0 20 is_stmt 0                ; vecfp.c:0:20
	b	LBB6_83
Ltmp403:
LBB6_99:                                ;   in Loop: Header=BB6_33 Depth=1
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	mov	x20, #0
	mov	x25, #0
	b	LBB6_103
Ltmp404:
LBB6_100:                               ;   in Loop: Header=BB6_103 Depth=2
	;DEBUG_VALUE: z <- [DW_OP_LLVM_arg 0, DW_OP_plus_uconst 296, DW_OP_deref, DW_OP_LLVM_arg 0, DW_OP_plus_uconst 248, DW_OP_deref, DW_OP_constu 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst 1024, DW_OP_LLVM_arg 1, DW_OP_constu 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $sp, $x25
	;DEBUG_VALUE: i <- $x25
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	.loc	4 251 34 is_stmt 1              ; vecfp.c:251:34
	cmp	x15, #1
	csel	x8, x5, x25, eq
Ltmp405:
	;DEBUG_VALUE: j <- [DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 32 7, DW_OP_stack_value] $x8
	.loc	4 253 57                        ; vecfp.c:253:57
	and	w9, w3, w25
	.loc	4 253 49 is_stmt 0              ; vecfp.c:253:49
	sub	x10, x29, #256
	ldrh	w0, [x10, w9, uxtw #1]
	.loc	4 253 68                        ; vecfp.c:253:68
	add	x9, sp, #304
	ldrh	w1, [x9, x8, lsl #1]
	.loc	4 253 78                        ; vecfp.c:253:78
	ldrh	w2, [x24, x25, lsl #1]
	ldr	x3, [sp, #280]                  ; 8-byte Folded Reload
                                        ; kill: def $w3 killed $w3 killed $x3
	.loc	4 253 34                        ; vecfp.c:253:34
	bl	_vecfp_alu_bf16
Ltmp406:
	.loc	4 0 34                          ; vecfp.c:0:34
	ldp	x5, x15, [sp, #256]             ; 16-byte Folded Reload
	ldr	w3, [sp, #276]                  ; 4-byte Folded Reload
Ltmp407:
LBB6_101:                               ;   in Loop: Header=BB6_103 Depth=2
	;DEBUG_VALUE: z <- [DW_OP_LLVM_arg 0, DW_OP_plus_uconst 296, DW_OP_deref, DW_OP_LLVM_arg 0, DW_OP_plus_uconst 248, DW_OP_deref, DW_OP_constu 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst 1024, DW_OP_LLVM_arg 1, DW_OP_constu 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $sp, $x25
	;DEBUG_VALUE: i <- $x25
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	.loc	4 253 24                        ; vecfp.c:253:24
	strh	w0, [x24, x25, lsl #1]
Ltmp408:
LBB6_102:                               ;   in Loop: Header=BB6_103 Depth=2
	;DEBUG_VALUE: i <- $x25
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	.loc	4 249 48 is_stmt 1              ; vecfp.c:249:48
	add	x25, x25, #1
Ltmp409:
	;DEBUG_VALUE: i <- $x25
	.loc	4 249 40 is_stmt 0              ; vecfp.c:249:40
	add	x20, x20, x21
Ltmp410:
	.loc	4 249 17                        ; vecfp.c:249:17
	cmp	x25, #32
	b.eq	LBB6_32
Ltmp411:
LBB6_103:                               ;   Parent Loop BB6_33 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	;DEBUG_VALUE: i <- $x25
	.loc	4 250 25 is_stmt 1              ; vecfp.c:250:25
	lsr	x8, x27, x20
	tbz	w8, #0, LBB6_102
Ltmp412:
; %bb.104:                              ;   in Loop: Header=BB6_103 Depth=2
	;DEBUG_VALUE: i <- $x25
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	;DEBUG_VALUE: j <- [DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 32 7, DW_OP_stack_value] undef
	;DEBUG_VALUE: z <- [DW_OP_LLVM_arg 0, DW_OP_plus_uconst 296, DW_OP_deref, DW_OP_LLVM_arg 2, DW_OP_plus_uconst 248, DW_OP_deref, DW_OP_constu 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst 1024, DW_OP_LLVM_arg 1, DW_OP_constu 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $sp, $x25, $sp
	.loc	4 253 26                        ; vecfp.c:253:26
	tbz	w28, #0, LBB6_100
Ltmp413:
; %bb.105:                              ;   in Loop: Header=BB6_103 Depth=2
	;DEBUG_VALUE: z <- [DW_OP_LLVM_arg 0, DW_OP_plus_uconst 296, DW_OP_deref, DW_OP_LLVM_arg 0, DW_OP_plus_uconst 248, DW_OP_deref, DW_OP_constu 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst 1024, DW_OP_LLVM_arg 1, DW_OP_constu 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $sp, $x25
	;DEBUG_VALUE: i <- $x25
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	.loc	4 0 26 is_stmt 0                ; vecfp.c:0:26
	mov	w0, #0
	b	LBB6_101
Ltmp414:
LBB6_106:                               ;   in Loop: Header=BB6_33 Depth=1
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	ldr	w8, [sp, #60]                   ; 4-byte Folded Reload
Ltmp415:
	.loc	4 272 32 is_stmt 1              ; vecfp.c:272:32
	tbz	w8, #0, LBB6_122
Ltmp416:
; %bb.107:                              ;   in Loop: Header=BB6_33 Depth=1
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	.loc	4 0 32 is_stmt 0                ; vecfp.c:0:32
	mov	x8, #0
	mov	x9, #0
	b	LBB6_111
Ltmp417:
LBB6_108:                               ;   in Loop: Header=BB6_111 Depth=2
	;DEBUG_VALUE: vecfp_alu32:y <- $s2
	;DEBUG_VALUE: vecfp_alu32:x <- $s1
	;DEBUG_VALUE: vecfp_alu32:z <- $s0
	;DEBUG_VALUE: vecfp_alu32:alumode <- $w16
	;DEBUG_VALUE: z <- [DW_OP_LLVM_arg 0, DW_OP_plus_uconst 296, DW_OP_deref, DW_OP_LLVM_arg 0, DW_OP_plus_uconst 248, DW_OP_deref, DW_OP_constu 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst 1024, DW_OP_LLVM_arg 1, DW_OP_constu 4, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $sp, $x9
	;DEBUG_VALUE: i <- $x9
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	.loc	4 140 20 is_stmt 1              ; vecfp.c:140:20
	fadd	s0, s2, s0
Ltmp418:
	;DEBUG_VALUE: vecfp_alu32:z <- $s0
LBB6_109:                               ;   in Loop: Header=BB6_111 Depth=2
	;DEBUG_VALUE: z <- [DW_OP_LLVM_arg 0, DW_OP_plus_uconst 296, DW_OP_deref, DW_OP_LLVM_arg 0, DW_OP_plus_uconst 248, DW_OP_deref, DW_OP_constu 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst 1024, DW_OP_LLVM_arg 1, DW_OP_constu 4, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $sp, $x9
	;DEBUG_VALUE: i <- $x9
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	.loc	4 277 20                        ; vecfp.c:277:20
	str	s0, [x24, x9, lsl #2]
Ltmp419:
LBB6_110:                               ;   in Loop: Header=BB6_111 Depth=2
	;DEBUG_VALUE: i <- $x9
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	.loc	4 273 44                        ; vecfp.c:273:44
	add	x9, x9, #1
Ltmp420:
	;DEBUG_VALUE: i <- $x9
	.loc	4 273 36 is_stmt 0              ; vecfp.c:273:36
	add	x8, x8, x21
Ltmp421:
	.loc	4 273 13                        ; vecfp.c:273:13
	cmp	x9, #16
	b.eq	LBB6_32
Ltmp422:
LBB6_111:                               ;   Parent Loop BB6_33 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	;DEBUG_VALUE: i <- $x9
	.loc	4 274 21 is_stmt 1              ; vecfp.c:274:21
	lsr	x10, x27, x8
	tbz	w10, #0, LBB6_110
Ltmp423:
; %bb.112:                              ;   in Loop: Header=BB6_111 Depth=2
	;DEBUG_VALUE: i <- $x9
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	;DEBUG_VALUE: j <- [DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 32 7, DW_OP_stack_value] undef
	;DEBUG_VALUE: z <- [DW_OP_LLVM_arg 0, DW_OP_plus_uconst 296, DW_OP_deref, DW_OP_LLVM_arg 2, DW_OP_plus_uconst 248, DW_OP_deref, DW_OP_constu 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst 1024, DW_OP_LLVM_arg 1, DW_OP_constu 4, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $sp, $x9, $sp
	.loc	4 0 21 is_stmt 0                ; vecfp.c:0:21
	movi	d0, #0000000000000000
	.loc	4 277 22 is_stmt 1              ; vecfp.c:277:22
	tbnz	w28, #0, LBB6_109
Ltmp424:
; %bb.113:                              ;   in Loop: Header=BB6_111 Depth=2
	;DEBUG_VALUE: z <- [DW_OP_LLVM_arg 0, DW_OP_plus_uconst 296, DW_OP_deref, DW_OP_LLVM_arg 0, DW_OP_plus_uconst 248, DW_OP_deref, DW_OP_constu 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst 1024, DW_OP_LLVM_arg 1, DW_OP_constu 4, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $sp, $x9
	;DEBUG_VALUE: i <- $x9
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	.loc	4 275 30                        ; vecfp.c:275:30
	cmp	x15, #1
	ldr	x10, [sp, #192]                 ; 8-byte Folded Reload
	csel	x10, x10, x9, eq
Ltmp425:
	;DEBUG_VALUE: j <- [DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 32 7, DW_OP_stack_value] $x10
	.loc	4 277 71                        ; vecfp.c:277:71
	ldr	s0, [x24, x9, lsl #2]
Ltmp426:
	;DEBUG_VALUE: vecfp_alu32:alumode <- $w16
	;DEBUG_VALUE: vecfp_alu32:y <- undef
	;DEBUG_VALUE: vecfp_alu32:x <- undef
	;DEBUG_VALUE: vecfp_alu32:z <- $s0
	.loc	4 132 5                         ; vecfp.c:132:5
	cmp	w16, #12
	b.hi	LBB6_109
Ltmp427:
; %bb.114:                              ;   in Loop: Header=BB6_111 Depth=2
	;DEBUG_VALUE: vecfp_alu32:z <- $s0
	;DEBUG_VALUE: vecfp_alu32:alumode <- $w16
	;DEBUG_VALUE: j <- [DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 32 7, DW_OP_stack_value] $x10
	;DEBUG_VALUE: z <- [DW_OP_LLVM_arg 0, DW_OP_plus_uconst 296, DW_OP_deref, DW_OP_LLVM_arg 0, DW_OP_plus_uconst 248, DW_OP_deref, DW_OP_constu 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst 1024, DW_OP_LLVM_arg 1, DW_OP_constu 4, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $sp, $x9
	;DEBUG_VALUE: i <- $x9
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	.loc	4 0 5 is_stmt 0                 ; vecfp.c:0:5
	and	w11, w3, w9
	sub	x12, x29, #256
	ldr	s1, [x12, w11, uxtw #2]
Ltmp428:
	;DEBUG_VALUE: vecfp_alu32:x <- $s1
	add	x11, sp, #304
	ldr	s2, [x11, x10, lsl #2]
Ltmp429:
	;DEBUG_VALUE: vecfp_alu32:y <- $s2
Lloh26:
	adrp	x12, lJTI6_4@PAGE
Lloh27:
	add	x12, x12, lJTI6_4@PAGEOFF
Ltmp430:
	adr	x10, Ltmp430
	ldrsw	x11, [x12, x16, lsl #2]
	add	x10, x10, x11
Ltmp431:
	br	x10
Ltmp432:
LBB6_115:                               ;   in Loop: Header=BB6_111 Depth=2
	;DEBUG_VALUE: vecfp_alu32:y <- $s2
	;DEBUG_VALUE: vecfp_alu32:x <- $s1
	;DEBUG_VALUE: vecfp_alu32:z <- $s0
	;DEBUG_VALUE: vecfp_alu32:alumode <- $w16
	;DEBUG_VALUE: z <- [DW_OP_LLVM_arg 0, DW_OP_plus_uconst 296, DW_OP_deref, DW_OP_LLVM_arg 0, DW_OP_plus_uconst 248, DW_OP_deref, DW_OP_constu 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst 1024, DW_OP_LLVM_arg 1, DW_OP_constu 4, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $sp, $x9
	;DEBUG_VALUE: i <- $x9
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	.loc	4 133 13 is_stmt 1              ; vecfp.c:133:13
	; InlineAsm Start
	fmadd	s0, s1, s2, s0
	; InlineAsm End
Ltmp433:
	;DEBUG_VALUE: vecfp_alu32:z <- $s0
	.loc	4 0 13 is_stmt 0                ; vecfp.c:0:13
	b	LBB6_109
Ltmp434:
LBB6_116:                               ;   in Loop: Header=BB6_111 Depth=2
	;DEBUG_VALUE: vecfp_alu32:y <- $s2
	;DEBUG_VALUE: vecfp_alu32:x <- $s1
	;DEBUG_VALUE: vecfp_alu32:z <- $s0
	;DEBUG_VALUE: vecfp_alu32:alumode <- $w16
	;DEBUG_VALUE: z <- [DW_OP_LLVM_arg 0, DW_OP_plus_uconst 296, DW_OP_deref, DW_OP_LLVM_arg 0, DW_OP_plus_uconst 248, DW_OP_deref, DW_OP_constu 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst 1024, DW_OP_LLVM_arg 1, DW_OP_constu 4, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $sp, $x9
	;DEBUG_VALUE: i <- $x9
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	.loc	4 134 13 is_stmt 1              ; vecfp.c:134:13
	; InlineAsm Start
	fmsub	s0, s1, s2, s0
	; InlineAsm End
Ltmp435:
	;DEBUG_VALUE: vecfp_alu32:z <- $s0
	.loc	4 0 13 is_stmt 0                ; vecfp.c:0:13
	b	LBB6_109
Ltmp436:
LBB6_117:                               ;   in Loop: Header=BB6_111 Depth=2
	;DEBUG_VALUE: vecfp_alu32:y <- $s2
	;DEBUG_VALUE: vecfp_alu32:x <- $s1
	;DEBUG_VALUE: vecfp_alu32:z <- $s0
	;DEBUG_VALUE: vecfp_alu32:alumode <- $w16
	;DEBUG_VALUE: z <- [DW_OP_LLVM_arg 0, DW_OP_plus_uconst 296, DW_OP_deref, DW_OP_LLVM_arg 0, DW_OP_plus_uconst 248, DW_OP_deref, DW_OP_constu 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst 1024, DW_OP_LLVM_arg 1, DW_OP_constu 4, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $sp, $x9
	;DEBUG_VALUE: i <- $x9
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	.loc	4 135 17 is_stmt 1              ; vecfp.c:135:17
	fcmp	s1, #0.0
	fcsel	s0, s9, s2, ls
Ltmp437:
	;DEBUG_VALUE: vecfp_alu32:z <- $s0
	.loc	4 0 17 is_stmt 0                ; vecfp.c:0:17
	b	LBB6_109
Ltmp438:
LBB6_118:                               ;   in Loop: Header=BB6_111 Depth=2
	;DEBUG_VALUE: vecfp_alu32:y <- $s2
	;DEBUG_VALUE: vecfp_alu32:x <- $s1
	;DEBUG_VALUE: vecfp_alu32:z <- $s0
	;DEBUG_VALUE: vecfp_alu32:alumode <- $w16
	;DEBUG_VALUE: z <- [DW_OP_LLVM_arg 0, DW_OP_plus_uconst 296, DW_OP_deref, DW_OP_LLVM_arg 0, DW_OP_plus_uconst 248, DW_OP_deref, DW_OP_constu 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst 1024, DW_OP_LLVM_arg 1, DW_OP_constu 4, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $sp, $x9
	;DEBUG_VALUE: i <- $x9
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	.loc	4 136 13 is_stmt 1              ; vecfp.c:136:13
	; InlineAsm Start
	fmin	s0, s1, s0
	; InlineAsm End
Ltmp439:
	;DEBUG_VALUE: vecfp_alu32:z <- $s0
	.loc	4 0 13 is_stmt 0                ; vecfp.c:0:13
	b	LBB6_109
Ltmp440:
LBB6_119:                               ;   in Loop: Header=BB6_111 Depth=2
	;DEBUG_VALUE: vecfp_alu32:y <- $s2
	;DEBUG_VALUE: vecfp_alu32:x <- $s1
	;DEBUG_VALUE: vecfp_alu32:z <- $s0
	;DEBUG_VALUE: vecfp_alu32:alumode <- $w16
	;DEBUG_VALUE: z <- [DW_OP_LLVM_arg 0, DW_OP_plus_uconst 296, DW_OP_deref, DW_OP_LLVM_arg 0, DW_OP_plus_uconst 248, DW_OP_deref, DW_OP_constu 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst 1024, DW_OP_LLVM_arg 1, DW_OP_constu 4, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $sp, $x9
	;DEBUG_VALUE: i <- $x9
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	.loc	4 137 13 is_stmt 1              ; vecfp.c:137:13
	; InlineAsm Start
	fmax	s0, s1, s0
	; InlineAsm End
Ltmp441:
	;DEBUG_VALUE: vecfp_alu32:z <- $s0
	.loc	4 0 13 is_stmt 0                ; vecfp.c:0:13
	b	LBB6_109
Ltmp442:
LBB6_120:                               ;   in Loop: Header=BB6_111 Depth=2
	;DEBUG_VALUE: vecfp_alu32:y <- $s2
	;DEBUG_VALUE: vecfp_alu32:x <- $s1
	;DEBUG_VALUE: vecfp_alu32:z <- $s0
	;DEBUG_VALUE: vecfp_alu32:alumode <- $w16
	;DEBUG_VALUE: z <- [DW_OP_LLVM_arg 0, DW_OP_plus_uconst 296, DW_OP_deref, DW_OP_LLVM_arg 0, DW_OP_plus_uconst 248, DW_OP_deref, DW_OP_constu 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst 1024, DW_OP_LLVM_arg 1, DW_OP_constu 4, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $sp, $x9
	;DEBUG_VALUE: i <- $x9
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	.loc	4 138 20 is_stmt 1              ; vecfp.c:138:20
	fmul	s0, s1, s2
Ltmp443:
	;DEBUG_VALUE: vecfp_alu32:z <- $s0
	.loc	4 0 20 is_stmt 0                ; vecfp.c:0:20
	b	LBB6_109
Ltmp444:
LBB6_121:                               ;   in Loop: Header=BB6_111 Depth=2
	;DEBUG_VALUE: vecfp_alu32:y <- $s2
	;DEBUG_VALUE: vecfp_alu32:x <- $s1
	;DEBUG_VALUE: vecfp_alu32:z <- $s0
	;DEBUG_VALUE: vecfp_alu32:alumode <- $w16
	;DEBUG_VALUE: z <- [DW_OP_LLVM_arg 0, DW_OP_plus_uconst 296, DW_OP_deref, DW_OP_LLVM_arg 0, DW_OP_plus_uconst 248, DW_OP_deref, DW_OP_constu 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst 1024, DW_OP_LLVM_arg 1, DW_OP_constu 4, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $sp, $x9
	;DEBUG_VALUE: i <- $x9
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	.loc	4 139 20 is_stmt 1              ; vecfp.c:139:20
	fadd	s0, s1, s0
Ltmp445:
	;DEBUG_VALUE: vecfp_alu32:z <- $s0
	.loc	4 0 20 is_stmt 0                ; vecfp.c:0:20
	b	LBB6_109
Ltmp446:
LBB6_122:                               ;   in Loop: Header=BB6_33 Depth=1
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	mov	x8, #0
	mov	x9, #0
	b	LBB6_126
Ltmp447:
LBB6_123:                               ;   in Loop: Header=BB6_126 Depth=2
	;DEBUG_VALUE: vecfp_alu64:y <- $d2
	;DEBUG_VALUE: vecfp_alu64:x <- $d1
	;DEBUG_VALUE: vecfp_alu64:z <- $d0
	;DEBUG_VALUE: vecfp_alu64:alumode <- $w16
	;DEBUG_VALUE: z <- [DW_OP_LLVM_arg 0, DW_OP_plus_uconst 296, DW_OP_deref, DW_OP_LLVM_arg 0, DW_OP_plus_uconst 248, DW_OP_deref, DW_OP_constu 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst 1024, DW_OP_LLVM_arg 1, DW_OP_constu 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $sp, $x9
	;DEBUG_VALUE: i <- $x9
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	.loc	4 154 20 is_stmt 1              ; vecfp.c:154:20
	fadd	d0, d2, d0
Ltmp448:
	;DEBUG_VALUE: vecfp_alu64:z <- $d0
LBB6_124:                               ;   in Loop: Header=BB6_126 Depth=2
	;DEBUG_VALUE: z <- [DW_OP_LLVM_arg 0, DW_OP_plus_uconst 296, DW_OP_deref, DW_OP_LLVM_arg 0, DW_OP_plus_uconst 248, DW_OP_deref, DW_OP_constu 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst 1024, DW_OP_LLVM_arg 1, DW_OP_constu 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $sp, $x9
	;DEBUG_VALUE: i <- $x9
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	.loc	4 284 20                        ; vecfp.c:284:20
	str	d0, [x24, x9, lsl #3]
Ltmp449:
LBB6_125:                               ;   in Loop: Header=BB6_126 Depth=2
	;DEBUG_VALUE: i <- $x9
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	.loc	4 280 43                        ; vecfp.c:280:43
	add	x9, x9, #1
Ltmp450:
	;DEBUG_VALUE: i <- $x9
	.loc	4 280 36 is_stmt 0              ; vecfp.c:280:36
	add	x8, x8, x21
Ltmp451:
	.loc	4 280 13                        ; vecfp.c:280:13
	cmp	x9, #8
	b.eq	LBB6_32
Ltmp452:
LBB6_126:                               ;   Parent Loop BB6_33 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	;DEBUG_VALUE: i <- $x9
	.loc	4 281 21 is_stmt 1              ; vecfp.c:281:21
	lsr	x10, x27, x8
	tbz	w10, #0, LBB6_125
Ltmp453:
; %bb.127:                              ;   in Loop: Header=BB6_126 Depth=2
	;DEBUG_VALUE: i <- $x9
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	;DEBUG_VALUE: j <- [DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 32 7, DW_OP_stack_value] undef
	;DEBUG_VALUE: z <- [DW_OP_LLVM_arg 0, DW_OP_plus_uconst 296, DW_OP_deref, DW_OP_LLVM_arg 2, DW_OP_plus_uconst 248, DW_OP_deref, DW_OP_constu 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst 1024, DW_OP_LLVM_arg 1, DW_OP_constu 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $sp, $x9, $sp
	.loc	4 0 21 is_stmt 0                ; vecfp.c:0:21
	movi	d0, #0000000000000000
	.loc	4 284 22 is_stmt 1              ; vecfp.c:284:22
	tbnz	w28, #0, LBB6_124
Ltmp454:
; %bb.128:                              ;   in Loop: Header=BB6_126 Depth=2
	;DEBUG_VALUE: z <- [DW_OP_LLVM_arg 0, DW_OP_plus_uconst 296, DW_OP_deref, DW_OP_LLVM_arg 0, DW_OP_plus_uconst 248, DW_OP_deref, DW_OP_constu 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst 1024, DW_OP_LLVM_arg 1, DW_OP_constu 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $sp, $x9
	;DEBUG_VALUE: i <- $x9
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	.loc	4 282 30                        ; vecfp.c:282:30
	cmp	x15, #1
	ldr	x10, [sp, #200]                 ; 8-byte Folded Reload
	csel	x10, x10, x9, eq
Ltmp455:
	;DEBUG_VALUE: j <- [DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 32 7, DW_OP_stack_value] $x10
	.loc	4 284 71                        ; vecfp.c:284:71
	ldr	d0, [x24, x9, lsl #3]
Ltmp456:
	;DEBUG_VALUE: vecfp_alu64:alumode <- $w16
	;DEBUG_VALUE: vecfp_alu64:y <- undef
	;DEBUG_VALUE: vecfp_alu64:x <- undef
	;DEBUG_VALUE: vecfp_alu64:z <- $d0
	.loc	4 146 5                         ; vecfp.c:146:5
	cmp	w16, #12
	b.hi	LBB6_124
Ltmp457:
; %bb.129:                              ;   in Loop: Header=BB6_126 Depth=2
	;DEBUG_VALUE: vecfp_alu64:z <- $d0
	;DEBUG_VALUE: vecfp_alu64:alumode <- $w16
	;DEBUG_VALUE: j <- [DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 32 7, DW_OP_stack_value] $x10
	;DEBUG_VALUE: z <- [DW_OP_LLVM_arg 0, DW_OP_plus_uconst 296, DW_OP_deref, DW_OP_LLVM_arg 0, DW_OP_plus_uconst 248, DW_OP_deref, DW_OP_constu 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst 1024, DW_OP_LLVM_arg 1, DW_OP_constu 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $sp, $x9
	;DEBUG_VALUE: i <- $x9
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	.loc	4 0 5 is_stmt 0                 ; vecfp.c:0:5
	and	w11, w3, w9
	sub	x12, x29, #256
	ldr	d1, [x12, w11, uxtw #3]
Ltmp458:
	;DEBUG_VALUE: vecfp_alu64:x <- $d1
	add	x11, sp, #304
	ldr	d2, [x11, x10, lsl #3]
Ltmp459:
	;DEBUG_VALUE: vecfp_alu64:y <- $d2
Lloh28:
	adrp	x12, lJTI6_3@PAGE
Lloh29:
	add	x12, x12, lJTI6_3@PAGEOFF
Ltmp460:
	adr	x10, Ltmp460
	ldrsw	x11, [x12, x16, lsl #2]
	add	x10, x10, x11
Ltmp461:
	br	x10
Ltmp462:
LBB6_130:                               ;   in Loop: Header=BB6_126 Depth=2
	;DEBUG_VALUE: vecfp_alu64:y <- $d2
	;DEBUG_VALUE: vecfp_alu64:x <- $d1
	;DEBUG_VALUE: vecfp_alu64:z <- $d0
	;DEBUG_VALUE: vecfp_alu64:alumode <- $w16
	;DEBUG_VALUE: z <- [DW_OP_LLVM_arg 0, DW_OP_plus_uconst 296, DW_OP_deref, DW_OP_LLVM_arg 0, DW_OP_plus_uconst 248, DW_OP_deref, DW_OP_constu 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst 1024, DW_OP_LLVM_arg 1, DW_OP_constu 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $sp, $x9
	;DEBUG_VALUE: i <- $x9
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	.loc	4 147 13 is_stmt 1              ; vecfp.c:147:13
	; InlineAsm Start
	fmadd	d0, d1, d2, d0
	; InlineAsm End
Ltmp463:
	;DEBUG_VALUE: vecfp_alu64:z <- $d0
	.loc	4 0 13 is_stmt 0                ; vecfp.c:0:13
	b	LBB6_124
Ltmp464:
LBB6_131:                               ;   in Loop: Header=BB6_126 Depth=2
	;DEBUG_VALUE: vecfp_alu64:y <- $d2
	;DEBUG_VALUE: vecfp_alu64:x <- $d1
	;DEBUG_VALUE: vecfp_alu64:z <- $d0
	;DEBUG_VALUE: vecfp_alu64:alumode <- $w16
	;DEBUG_VALUE: z <- [DW_OP_LLVM_arg 0, DW_OP_plus_uconst 296, DW_OP_deref, DW_OP_LLVM_arg 0, DW_OP_plus_uconst 248, DW_OP_deref, DW_OP_constu 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst 1024, DW_OP_LLVM_arg 1, DW_OP_constu 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $sp, $x9
	;DEBUG_VALUE: i <- $x9
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	.loc	4 148 13 is_stmt 1              ; vecfp.c:148:13
	; InlineAsm Start
	fmsub	d0, d1, d2, d0
	; InlineAsm End
Ltmp465:
	;DEBUG_VALUE: vecfp_alu64:z <- $d0
	.loc	4 0 13 is_stmt 0                ; vecfp.c:0:13
	b	LBB6_124
Ltmp466:
LBB6_132:                               ;   in Loop: Header=BB6_126 Depth=2
	;DEBUG_VALUE: vecfp_alu64:y <- $d2
	;DEBUG_VALUE: vecfp_alu64:x <- $d1
	;DEBUG_VALUE: vecfp_alu64:z <- $d0
	;DEBUG_VALUE: vecfp_alu64:alumode <- $w16
	;DEBUG_VALUE: z <- [DW_OP_LLVM_arg 0, DW_OP_plus_uconst 296, DW_OP_deref, DW_OP_LLVM_arg 0, DW_OP_plus_uconst 248, DW_OP_deref, DW_OP_constu 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst 1024, DW_OP_LLVM_arg 1, DW_OP_constu 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $sp, $x9
	;DEBUG_VALUE: i <- $x9
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	.loc	4 149 17 is_stmt 1              ; vecfp.c:149:17
	fcmp	d1, #0.0
	fcsel	d0, d10, d2, ls
Ltmp467:
	;DEBUG_VALUE: vecfp_alu64:z <- $d0
	.loc	4 0 17 is_stmt 0                ; vecfp.c:0:17
	b	LBB6_124
Ltmp468:
LBB6_133:                               ;   in Loop: Header=BB6_126 Depth=2
	;DEBUG_VALUE: vecfp_alu64:y <- $d2
	;DEBUG_VALUE: vecfp_alu64:x <- $d1
	;DEBUG_VALUE: vecfp_alu64:z <- $d0
	;DEBUG_VALUE: vecfp_alu64:alumode <- $w16
	;DEBUG_VALUE: z <- [DW_OP_LLVM_arg 0, DW_OP_plus_uconst 296, DW_OP_deref, DW_OP_LLVM_arg 0, DW_OP_plus_uconst 248, DW_OP_deref, DW_OP_constu 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst 1024, DW_OP_LLVM_arg 1, DW_OP_constu 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $sp, $x9
	;DEBUG_VALUE: i <- $x9
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	.loc	4 150 13 is_stmt 1              ; vecfp.c:150:13
	; InlineAsm Start
	fmin	d0, d1, d0
	; InlineAsm End
Ltmp469:
	;DEBUG_VALUE: vecfp_alu64:z <- $d0
	.loc	4 0 13 is_stmt 0                ; vecfp.c:0:13
	b	LBB6_124
Ltmp470:
LBB6_134:                               ;   in Loop: Header=BB6_126 Depth=2
	;DEBUG_VALUE: vecfp_alu64:y <- $d2
	;DEBUG_VALUE: vecfp_alu64:x <- $d1
	;DEBUG_VALUE: vecfp_alu64:z <- $d0
	;DEBUG_VALUE: vecfp_alu64:alumode <- $w16
	;DEBUG_VALUE: z <- [DW_OP_LLVM_arg 0, DW_OP_plus_uconst 296, DW_OP_deref, DW_OP_LLVM_arg 0, DW_OP_plus_uconst 248, DW_OP_deref, DW_OP_constu 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst 1024, DW_OP_LLVM_arg 1, DW_OP_constu 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $sp, $x9
	;DEBUG_VALUE: i <- $x9
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	.loc	4 151 13 is_stmt 1              ; vecfp.c:151:13
	; InlineAsm Start
	fmax	d0, d1, d0
	; InlineAsm End
Ltmp471:
	;DEBUG_VALUE: vecfp_alu64:z <- $d0
	.loc	4 0 13 is_stmt 0                ; vecfp.c:0:13
	b	LBB6_124
Ltmp472:
LBB6_135:                               ;   in Loop: Header=BB6_126 Depth=2
	;DEBUG_VALUE: vecfp_alu64:y <- $d2
	;DEBUG_VALUE: vecfp_alu64:x <- $d1
	;DEBUG_VALUE: vecfp_alu64:z <- $d0
	;DEBUG_VALUE: vecfp_alu64:alumode <- $w16
	;DEBUG_VALUE: z <- [DW_OP_LLVM_arg 0, DW_OP_plus_uconst 296, DW_OP_deref, DW_OP_LLVM_arg 0, DW_OP_plus_uconst 248, DW_OP_deref, DW_OP_constu 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst 1024, DW_OP_LLVM_arg 1, DW_OP_constu 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $sp, $x9
	;DEBUG_VALUE: i <- $x9
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	.loc	4 152 20 is_stmt 1              ; vecfp.c:152:20
	fmul	d0, d1, d2
Ltmp473:
	;DEBUG_VALUE: vecfp_alu64:z <- $d0
	.loc	4 0 20 is_stmt 0                ; vecfp.c:0:20
	b	LBB6_124
Ltmp474:
LBB6_136:                               ;   in Loop: Header=BB6_126 Depth=2
	;DEBUG_VALUE: vecfp_alu64:y <- $d2
	;DEBUG_VALUE: vecfp_alu64:x <- $d1
	;DEBUG_VALUE: vecfp_alu64:z <- $d0
	;DEBUG_VALUE: vecfp_alu64:alumode <- $w16
	;DEBUG_VALUE: z <- [DW_OP_LLVM_arg 0, DW_OP_plus_uconst 296, DW_OP_deref, DW_OP_LLVM_arg 0, DW_OP_plus_uconst 248, DW_OP_deref, DW_OP_constu 64, DW_OP_mul, DW_OP_plus, DW_OP_plus_uconst 1024, DW_OP_LLVM_arg 1, DW_OP_constu 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $sp, $x9
	;DEBUG_VALUE: i <- $x9
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	.loc	4 153 20 is_stmt 1              ; vecfp.c:153:20
	fadd	d0, d1, d0
Ltmp475:
	;DEBUG_VALUE: vecfp_alu64:z <- $d0
	.loc	4 0 20 is_stmt 0                ; vecfp.c:0:20
	b	LBB6_124
Ltmp476:
LBB6_137:                               ;   in Loop: Header=BB6_33 Depth=1
	;DEBUG_VALUE: val <- [DW_OP_plus_uconst 96] [$sp+0]
	;DEBUG_VALUE: omask <- -1
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	mov	w28, #0
	movi.2d	v0, #0000000000000000
Ltmp477:
	.loc	4 243 17 is_stmt 1              ; vecfp.c:243:17
	stp	q0, q0, [sp, #336]
	stp	q0, q0, [sp, #304]
	b	LBB6_59
Ltmp478:
LBB6_138:                               ;   in Loop: Header=BB6_33 Depth=1
	;DEBUG_VALUE: val <- [DW_OP_plus_uconst 96] [$sp+0]
	;DEBUG_VALUE: omask <- -1
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	.loc	4 0 17 is_stmt 0                ; vecfp.c:0:17
	mov	w28, #1
	b	LBB6_59
Ltmp479:
LBB6_139:                               ;   in Loop: Header=BB6_33 Depth=1
	;DEBUG_VALUE: val <- [DW_OP_plus_uconst 96] [$sp+0]
	;DEBUG_VALUE: omask <- -1
	;DEBUG_VALUE: x_enable <- $x27
	;DEBUG_VALUE: emulate_AMX_VECFP:z_step <- [DW_OP_plus_uconst 160] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:ximask <- [DW_OP_plus_uconst 276] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybits <- [DW_OP_plus_uconst 120] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:y_step <- [DW_OP_plus_uconst 176] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:z_row <- [DW_OP_plus_uconst 248] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:x_step <- [DW_OP_plus_uconst 168] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:operand <- [DW_OP_plus_uconst 208] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_VECFP:xybytes <- $w22
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	mov	w28, #0
	b	LBB6_59
Ltmp480:
LBB6_140:
	;DEBUG_VALUE: emulate_AMX_VECFP:state <- [DW_OP_plus_uconst 296] [$sp+0]
	bl	___stack_chk_fail
Ltmp481:
	.loh AdrpLdrGotLdr	Lloh8, Lloh9, Lloh10
	.loh AdrpLdrGotLdr	Lloh11, Lloh12, Lloh13
	.loh AdrpLdrGot	Lloh14, Lloh15
	.loh AdrpAdd	Lloh16, Lloh17
	.loh AdrpAdd	Lloh18, Lloh19
	.loh AdrpAdd	Lloh20, Lloh21
	.loh AdrpAdd	Lloh22, Lloh23
	.loh AdrpAdd	Lloh24, Lloh25
	.loh AdrpAdd	Lloh26, Lloh27
	.loh AdrpAdd	Lloh28, Lloh29
Lfunc_end6:
	.cfi_endproc
	.p2align	2
lJTI6_0:
	.long	LBB6_9-Ltmp195
	.long	LBB6_10-Ltmp195
	.long	LBB6_11-Ltmp195
	.long	LBB6_15-Ltmp195
	.long	LBB6_13-Ltmp195
	.long	LBB6_11-Ltmp195
	.long	LBB6_11-Ltmp195
	.long	LBB6_14-Ltmp195
	.p2align	2
lJTI6_1:
	.long	LBB6_19-Ltmp218
	.long	LBB6_21-Ltmp218
	.long	LBB6_22-Ltmp218
	.long	LBB6_23-Ltmp218
	.long	LBB6_24-Ltmp218
	.long	LBB6_26-Ltmp218
	.long	LBB6_27-Ltmp218
	.p2align	2
lJTI6_2:
	.long	LBB6_45-Ltmp304
	.long	LBB6_49-Ltmp304
	.long	LBB6_50-Ltmp304
	.long	LBB6_52-Ltmp304
	.long	LBB6_51-Ltmp304
	.long	LBB6_53-Ltmp304
	.p2align	2
lJTI6_3:
	.long	LBB6_130-Ltmp460
	.long	LBB6_131-Ltmp460
	.long	LBB6_124-Ltmp460
	.long	LBB6_124-Ltmp460
	.long	LBB6_132-Ltmp460
	.long	LBB6_133-Ltmp460
	.long	LBB6_124-Ltmp460
	.long	LBB6_134-Ltmp460
	.long	LBB6_124-Ltmp460
	.long	LBB6_124-Ltmp460
	.long	LBB6_135-Ltmp460
	.long	LBB6_136-Ltmp460
	.long	LBB6_123-Ltmp460
	.p2align	2
lJTI6_4:
	.long	LBB6_115-Ltmp430
	.long	LBB6_116-Ltmp430
	.long	LBB6_109-Ltmp430
	.long	LBB6_109-Ltmp430
	.long	LBB6_117-Ltmp430
	.long	LBB6_118-Ltmp430
	.long	LBB6_109-Ltmp430
	.long	LBB6_119-Ltmp430
	.long	LBB6_109-Ltmp430
	.long	LBB6_109-Ltmp430
	.long	LBB6_120-Ltmp430
	.long	LBB6_121-Ltmp430
	.long	LBB6_108-Ltmp430
	.p2align	2
lJTI6_5:
	.long	LBB6_92-Ltmp388
	.long	LBB6_93-Ltmp388
	.long	LBB6_83-Ltmp388
	.long	LBB6_83-Ltmp388
	.long	LBB6_94-Ltmp388
	.long	LBB6_95-Ltmp388
	.long	LBB6_83-Ltmp388
	.long	LBB6_96-Ltmp388
	.long	LBB6_83-Ltmp388
	.long	LBB6_83-Ltmp388
	.long	LBB6_97-Ltmp388
	.long	LBB6_98-Ltmp388
	.long	LBB6_82-Ltmp388
	.p2align	2
lJTI6_6:
	.long	LBB6_75-Ltmp349
	.long	LBB6_76-Ltmp349
	.long	LBB6_69-Ltmp349
	.long	LBB6_69-Ltmp349
	.long	LBB6_77-Ltmp349
	.long	LBB6_78-Ltmp349
	.long	LBB6_69-Ltmp349
	.long	LBB6_79-Ltmp349
	.long	LBB6_69-Ltmp349
	.long	LBB6_69-Ltmp349
	.long	LBB6_80-Ltmp349
	.long	LBB6_81-Ltmp349
	.long	LBB6_68-Ltmp349
	.file	7 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types" "_uint32_t.h"
                                        ; -- End function
	.file	8 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types" "_int32_t.h"
	.file	9 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types" "_int8_t.h"
	.section	__DWARF,__debug_loc,regular,debug
Lsection_debug_loc:
Ldebug_loc0:
.set Lset0, Lfunc_begin0-Lfunc_begin0
	.quad	Lset0
.set Lset1, Ltmp0-Lfunc_begin0
	.quad	Lset1
	.short	1                               ; Loc expr size
	.byte	80                              ; DW_OP_reg0
.set Lset2, Ltmp1-Lfunc_begin0
	.quad	Lset2
.set Lset3, Ltmp2-Lfunc_begin0
	.quad	Lset3
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
.set Lset4, Ltmp2-Lfunc_begin0
	.quad	Lset4
.set Lset5, Lfunc_end0-Lfunc_begin0
	.quad	Lset5
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
	.quad	0
	.quad	0
Ldebug_loc1:
.set Lset6, Ltmp2-Lfunc_begin0
	.quad	Lset6
.set Lset7, Lfunc_end0-Lfunc_begin0
	.quad	Lset7
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
	.quad	0
	.quad	0
Ldebug_loc2:
.set Lset8, Lfunc_begin1-Lfunc_begin0
	.quad	Lset8
.set Lset9, Ltmp31-Lfunc_begin0
	.quad	Lset9
	.short	1                               ; Loc expr size
	.byte	80                              ; DW_OP_reg0
.set Lset10, Ltmp31-Lfunc_begin0
	.quad	Lset10
.set Lset11, Ltmp34-Lfunc_begin0
	.quad	Lset11
	.short	4                               ; Loc expr size
	.byte	163                             ; DW_OP_entry_value
	.byte	1                               ; 1
	.byte	80                              ; DW_OP_reg0
	.byte	159                             ; DW_OP_stack_value
.set Lset12, Ltmp39-Lfunc_begin0
	.quad	Lset12
.set Lset13, Ltmp49-Lfunc_begin0
	.quad	Lset13
	.short	1                               ; Loc expr size
	.byte	80                              ; DW_OP_reg0
.set Lset14, Ltmp49-Lfunc_begin0
	.quad	Lset14
.set Lset15, Ltmp50-Lfunc_begin0
	.quad	Lset15
	.short	4                               ; Loc expr size
	.byte	163                             ; DW_OP_entry_value
	.byte	1                               ; 1
	.byte	80                              ; DW_OP_reg0
	.byte	159                             ; DW_OP_stack_value
.set Lset16, Ltmp50-Lfunc_begin0
	.quad	Lset16
.set Lset17, Ltmp57-Lfunc_begin0
	.quad	Lset17
	.short	1                               ; Loc expr size
	.byte	80                              ; DW_OP_reg0
.set Lset18, Ltmp57-Lfunc_begin0
	.quad	Lset18
.set Lset19, Ltmp58-Lfunc_begin0
	.quad	Lset19
	.short	4                               ; Loc expr size
	.byte	163                             ; DW_OP_entry_value
	.byte	1                               ; 1
	.byte	80                              ; DW_OP_reg0
	.byte	159                             ; DW_OP_stack_value
.set Lset20, Ltmp58-Lfunc_begin0
	.quad	Lset20
.set Lset21, Ltmp61-Lfunc_begin0
	.quad	Lset21
	.short	1                               ; Loc expr size
	.byte	80                              ; DW_OP_reg0
.set Lset22, Ltmp61-Lfunc_begin0
	.quad	Lset22
.set Lset23, Ltmp62-Lfunc_begin0
	.quad	Lset23
	.short	4                               ; Loc expr size
	.byte	163                             ; DW_OP_entry_value
	.byte	1                               ; 1
	.byte	80                              ; DW_OP_reg0
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc3:
.set Lset24, Ltmp4-Lfunc_begin0
	.quad	Lset24
.set Lset25, Ltmp6-Lfunc_begin0
	.quad	Lset25
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
.set Lset26, Ltmp6-Lfunc_begin0
	.quad	Lset26
.set Lset27, Ltmp20-Lfunc_begin0
	.quad	Lset27
	.short	1                               ; Loc expr size
	.byte	92                              ; DW_OP_reg12
.set Lset28, Ltmp39-Lfunc_begin0
	.quad	Lset28
.set Lset29, Ltmp50-Lfunc_begin0
	.quad	Lset29
	.short	1                               ; Loc expr size
	.byte	92                              ; DW_OP_reg12
.set Lset30, Ltmp52-Lfunc_begin0
	.quad	Lset30
.set Lset31, Ltmp62-Lfunc_begin0
	.quad	Lset31
	.short	1                               ; Loc expr size
	.byte	92                              ; DW_OP_reg12
	.quad	0
	.quad	0
Ldebug_loc4:
.set Lset32, Ltmp5-Lfunc_begin0
	.quad	Lset32
.set Lset33, Ltmp7-Lfunc_begin0
	.quad	Lset33
	.short	1                               ; Loc expr size
	.byte	91                              ; DW_OP_reg11
.set Lset34, Ltmp7-Lfunc_begin0
	.quad	Lset34
.set Lset35, Ltmp22-Lfunc_begin0
	.quad	Lset35
	.short	1                               ; Loc expr size
	.byte	93                              ; DW_OP_reg13
.set Lset36, Ltmp39-Lfunc_begin0
	.quad	Lset36
.set Lset37, Ltmp41-Lfunc_begin0
	.quad	Lset37
	.short	1                               ; Loc expr size
	.byte	93                              ; DW_OP_reg13
.set Lset38, Ltmp50-Lfunc_begin0
	.quad	Lset38
.set Lset39, Ltmp52-Lfunc_begin0
	.quad	Lset39
	.short	1                               ; Loc expr size
	.byte	93                              ; DW_OP_reg13
	.quad	0
	.quad	0
Ldebug_loc5:
.set Lset40, Ltmp8-Lfunc_begin0
	.quad	Lset40
.set Lset41, Ltmp10-Lfunc_begin0
	.quad	Lset41
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
.set Lset42, Ltmp10-Lfunc_begin0
	.quad	Lset42
.set Lset43, Ltmp23-Lfunc_begin0
	.quad	Lset43
	.short	1                               ; Loc expr size
	.byte	95                              ; DW_OP_reg15
.set Lset44, Ltmp39-Lfunc_begin0
	.quad	Lset44
.set Lset45, Ltmp62-Lfunc_begin0
	.quad	Lset45
	.short	1                               ; Loc expr size
	.byte	95                              ; DW_OP_reg15
	.quad	0
	.quad	0
Ldebug_loc6:
.set Lset46, Ltmp9-Lfunc_begin0
	.quad	Lset46
.set Lset47, Ltmp11-Lfunc_begin0
	.quad	Lset47
	.short	1                               ; Loc expr size
	.byte	91                              ; DW_OP_reg11
.set Lset48, Ltmp11-Lfunc_begin0
	.quad	Lset48
.set Lset49, Ltmp29-Lfunc_begin0
	.quad	Lset49
	.short	1                               ; Loc expr size
	.byte	96                              ; DW_OP_reg16
.set Lset50, Ltmp39-Lfunc_begin0
	.quad	Lset50
.set Lset51, Ltmp62-Lfunc_begin0
	.quad	Lset51
	.short	1                               ; Loc expr size
	.byte	96                              ; DW_OP_reg16
	.quad	0
	.quad	0
Ldebug_loc7:
.set Lset52, Ltmp12-Lfunc_begin0
	.quad	Lset52
.set Lset53, Ltmp14-Lfunc_begin0
	.quad	Lset53
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
.set Lset54, Ltmp14-Lfunc_begin0
	.quad	Lset54
.set Lset55, Ltmp24-Lfunc_begin0
	.quad	Lset55
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
.set Lset56, Ltmp24-Lfunc_begin0
	.quad	Lset56
.set Lset57, Ltmp39-Lfunc_begin0
	.quad	Lset57
	.short	1                               ; Loc expr size
	.byte	93                              ; DW_OP_reg13
.set Lset58, Ltmp39-Lfunc_begin0
	.quad	Lset58
.set Lset59, Ltmp45-Lfunc_begin0
	.quad	Lset59
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
.set Lset60, Ltmp50-Lfunc_begin0
	.quad	Lset60
.set Lset61, Ltmp54-Lfunc_begin0
	.quad	Lset61
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
.set Lset62, Ltmp62-Lfunc_begin0
	.quad	Lset62
.set Lset63, Ltmp63-Lfunc_begin0
	.quad	Lset63
	.short	1                               ; Loc expr size
	.byte	93                              ; DW_OP_reg13
.set Lset64, Ltmp63-Lfunc_begin0
	.quad	Lset64
.set Lset65, Ltmp65-Lfunc_begin0
	.quad	Lset65
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
.set Lset66, Ltmp65-Lfunc_begin0
	.quad	Lset66
.set Lset67, Ltmp73-Lfunc_begin0
	.quad	Lset67
	.short	1                               ; Loc expr size
	.byte	93                              ; DW_OP_reg13
	.quad	0
	.quad	0
Ldebug_loc8:
.set Lset68, Ltmp13-Lfunc_begin0
	.quad	Lset68
.set Lset69, Ltmp15-Lfunc_begin0
	.quad	Lset69
	.short	1                               ; Loc expr size
	.byte	94                              ; DW_OP_reg14
.set Lset70, Ltmp15-Lfunc_begin0
	.quad	Lset70
.set Lset71, Ltmp25-Lfunc_begin0
	.quad	Lset71
	.short	1                               ; Loc expr size
	.byte	91                              ; DW_OP_reg11
.set Lset72, Ltmp25-Lfunc_begin0
	.quad	Lset72
.set Lset73, Ltmp36-Lfunc_begin0
	.quad	Lset73
	.short	1                               ; Loc expr size
	.byte	94                              ; DW_OP_reg14
.set Lset74, Ltmp39-Lfunc_begin0
	.quad	Lset74
.set Lset75, Ltmp62-Lfunc_begin0
	.quad	Lset75
	.short	1                               ; Loc expr size
	.byte	91                              ; DW_OP_reg11
	.quad	0
	.quad	0
Ldebug_loc9:
.set Lset76, Ltmp16-Lfunc_begin0
	.quad	Lset76
.set Lset77, Lfunc_end1-Lfunc_begin0
	.quad	Lset77
	.short	15                              ; Loc expr size
	.byte	114                             ; DW_OP_breg2
	.byte	0                               ; 0
	.byte	16                              ; DW_OP_constu
	.byte	128                             ; 18446744073709518848
	.byte	128                             ; 
	.byte	254                             ; 
	.byte	255                             ; 
	.byte	255                             ; 
	.byte	255                             ; 
	.byte	255                             ; 
	.byte	255                             ; 
	.byte	255                             ; 
	.byte	1                               ; 
	.byte	26                              ; DW_OP_and
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc10:
.set Lset78, Ltmp17-Lfunc_begin0
	.quad	Lset78
.set Lset79, Ltmp51-Lfunc_begin0
	.quad	Lset79
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
.set Lset80, Ltmp52-Lfunc_begin0
	.quad	Lset80
.set Lset81, Ltmp59-Lfunc_begin0
	.quad	Lset81
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
.set Lset82, Ltmp62-Lfunc_begin0
	.quad	Lset82
.set Lset83, Ltmp72-Lfunc_begin0
	.quad	Lset83
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
	.quad	0
	.quad	0
Ldebug_loc11:
.set Lset84, Ltmp23-Lfunc_begin0
	.quad	Lset84
.set Lset85, Ltmp39-Lfunc_begin0
	.quad	Lset85
	.short	1                               ; Loc expr size
	.byte	95                              ; DW_OP_reg15
.set Lset86, Ltmp62-Lfunc_begin0
	.quad	Lset86
.set Lset87, Ltmp83-Lfunc_begin0
	.quad	Lset87
	.short	1                               ; Loc expr size
	.byte	95                              ; DW_OP_reg15
.set Lset88, Ltmp84-Lfunc_begin0
	.quad	Lset88
.set Lset89, Lfunc_end1-Lfunc_begin0
	.quad	Lset89
	.short	1                               ; Loc expr size
	.byte	95                              ; DW_OP_reg15
	.quad	0
	.quad	0
Ldebug_loc12:
.set Lset90, Ltmp20-Lfunc_begin0
	.quad	Lset90
.set Lset91, Ltmp30-Lfunc_begin0
	.quad	Lset91
	.short	1                               ; Loc expr size
	.byte	92                              ; DW_OP_reg12
.set Lset92, Ltmp30-Lfunc_begin0
	.quad	Lset92
.set Lset93, Ltmp33-Lfunc_begin0
	.quad	Lset93
	.short	1                               ; Loc expr size
	.byte	97                              ; DW_OP_reg17
.set Lset94, Ltmp33-Lfunc_begin0
	.quad	Lset94
.set Lset95, Ltmp39-Lfunc_begin0
	.quad	Lset95
	.short	1                               ; Loc expr size
	.byte	92                              ; DW_OP_reg12
.set Lset96, Ltmp50-Lfunc_begin0
	.quad	Lset96
.set Lset97, Ltmp52-Lfunc_begin0
	.quad	Lset97
	.short	1                               ; Loc expr size
	.byte	92                              ; DW_OP_reg12
.set Lset98, Ltmp62-Lfunc_begin0
	.quad	Lset98
.set Lset99, Ltmp71-Lfunc_begin0
	.quad	Lset99
	.short	1                               ; Loc expr size
	.byte	92                              ; DW_OP_reg12
.set Lset100, Ltmp83-Lfunc_begin0
	.quad	Lset100
.set Lset101, Ltmp84-Lfunc_begin0
	.quad	Lset101
	.short	1                               ; Loc expr size
	.byte	92                              ; DW_OP_reg12
	.quad	0
	.quad	0
Ldebug_loc13:
.set Lset102, Ltmp27-Lfunc_begin0
	.quad	Lset102
.set Lset103, Ltmp39-Lfunc_begin0
	.quad	Lset103
	.short	1                               ; Loc expr size
	.byte	91                              ; DW_OP_reg11
.set Lset104, Ltmp62-Lfunc_begin0
	.quad	Lset104
.set Lset105, Ltmp74-Lfunc_begin0
	.quad	Lset105
	.short	1                               ; Loc expr size
	.byte	91                              ; DW_OP_reg11
.set Lset106, Ltmp74-Lfunc_begin0
	.quad	Lset106
.set Lset107, Ltmp83-Lfunc_begin0
	.quad	Lset107
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
.set Lset108, Ltmp84-Lfunc_begin0
	.quad	Lset108
.set Lset109, Ltmp90-Lfunc_begin0
	.quad	Lset109
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
.set Lset110, Ltmp91-Lfunc_begin0
	.quad	Lset110
.set Lset111, Ltmp92-Lfunc_begin0
	.quad	Lset111
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
	.quad	0
	.quad	0
Ldebug_loc14:
.set Lset112, Ltmp29-Lfunc_begin0
	.quad	Lset112
.set Lset113, Ltmp34-Lfunc_begin0
	.quad	Lset113
	.short	1                               ; Loc expr size
	.byte	96                              ; DW_OP_reg16
	.quad	0
	.quad	0
Ldebug_loc15:
.set Lset114, Ltmp36-Lfunc_begin0
	.quad	Lset114
.set Lset115, Ltmp39-Lfunc_begin0
	.quad	Lset115
	.short	1                               ; Loc expr size
	.byte	94                              ; DW_OP_reg14
.set Lset116, Ltmp62-Lfunc_begin0
	.quad	Lset116
.set Lset117, Ltmp64-Lfunc_begin0
	.quad	Lset117
	.short	1                               ; Loc expr size
	.byte	94                              ; DW_OP_reg14
	.quad	0
	.quad	0
Ldebug_loc16:
.set Lset118, Ltmp66-Lfunc_begin0
	.quad	Lset118
.set Lset119, Ltmp83-Lfunc_begin0
	.quad	Lset119
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
.set Lset120, Ltmp84-Lfunc_begin0
	.quad	Lset120
.set Lset121, Ltmp94-Lfunc_begin0
	.quad	Lset121
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
	.quad	0
	.quad	0
Ldebug_loc17:
.set Lset122, Ltmp69-Lfunc_begin0
	.quad	Lset122
.set Lset123, Ltmp75-Lfunc_begin0
	.quad	Lset123
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
.set Lset124, Ltmp75-Lfunc_begin0
	.quad	Lset124
.set Lset125, Ltmp79-Lfunc_begin0
	.quad	Lset125
	.short	1                               ; Loc expr size
	.byte	91                              ; DW_OP_reg11
.set Lset126, Ltmp79-Lfunc_begin0
	.quad	Lset126
.set Lset127, Ltmp80-Lfunc_begin0
	.quad	Lset127
	.short	1                               ; Loc expr size
	.byte	92                              ; DW_OP_reg12
.set Lset128, Ltmp80-Lfunc_begin0
	.quad	Lset128
.set Lset129, Ltmp83-Lfunc_begin0
	.quad	Lset129
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
.set Lset130, Ltmp84-Lfunc_begin0
	.quad	Lset130
.set Lset131, Ltmp87-Lfunc_begin0
	.quad	Lset131
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
.set Lset132, Ltmp87-Lfunc_begin0
	.quad	Lset132
.set Lset133, Ltmp89-Lfunc_begin0
	.quad	Lset133
	.short	1                               ; Loc expr size
	.byte	92                              ; DW_OP_reg12
.set Lset134, Ltmp89-Lfunc_begin0
	.quad	Lset134
.set Lset135, Ltmp91-Lfunc_begin0
	.quad	Lset135
	.short	1                               ; Loc expr size
	.byte	91                              ; DW_OP_reg11
.set Lset136, Ltmp91-Lfunc_begin0
	.quad	Lset136
.set Lset137, Ltmp95-Lfunc_begin0
	.quad	Lset137
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
	.quad	0
	.quad	0
Ldebug_loc18:
.set Lset138, Ltmp73-Lfunc_begin0
	.quad	Lset138
.set Lset139, Ltmp76-Lfunc_begin0
	.quad	Lset139
	.short	1                               ; Loc expr size
	.byte	93                              ; DW_OP_reg13
	.quad	0
	.quad	0
Ldebug_loc19:
.set Lset140, Ltmp74-Lfunc_begin0
	.quad	Lset140
.set Lset141, Ltmp76-Lfunc_begin0
	.quad	Lset141
	.short	1                               ; Loc expr size
	.byte	93                              ; DW_OP_reg13
	.quad	0
	.quad	0
Ldebug_loc20:
.set Lset142, Ltmp84-Lfunc_begin0
	.quad	Lset142
.set Lset143, Ltmp86-Lfunc_begin0
	.quad	Lset143
	.short	5                               ; Loc expr size
	.byte	49                              ; DW_OP_lit1
	.byte	120                             ; DW_OP_breg8
	.byte	0                               ; 0
	.byte	28                              ; DW_OP_minus
	.byte	159                             ; DW_OP_stack_value
.set Lset144, Ltmp86-Lfunc_begin0
	.quad	Lset144
.set Lset145, Ltmp88-Lfunc_begin0
	.quad	Lset145
	.short	1                               ; Loc expr size
	.byte	91                              ; DW_OP_reg11
	.quad	0
	.quad	0
Ldebug_loc21:
.set Lset146, Lfunc_begin2-Lfunc_begin0
	.quad	Lset146
.set Lset147, Ltmp100-Lfunc_begin0
	.quad	Lset147
	.short	1                               ; Loc expr size
	.byte	80                              ; DW_OP_reg0
.set Lset148, Ltmp101-Lfunc_begin0
	.quad	Lset148
.set Lset149, Ltmp103-Lfunc_begin0
	.quad	Lset149
	.short	1                               ; Loc expr size
	.byte	80                              ; DW_OP_reg0
.set Lset150, Ltmp104-Lfunc_begin0
	.quad	Lset150
.set Lset151, Ltmp109-Lfunc_begin0
	.quad	Lset151
	.short	1                               ; Loc expr size
	.byte	80                              ; DW_OP_reg0
.set Lset152, Ltmp110-Lfunc_begin0
	.quad	Lset152
.set Lset153, Ltmp115-Lfunc_begin0
	.quad	Lset153
	.short	1                               ; Loc expr size
	.byte	80                              ; DW_OP_reg0
	.quad	0
	.quad	0
Ldebug_loc22:
.set Lset154, Lfunc_begin2-Lfunc_begin0
	.quad	Lset154
.set Lset155, Ltmp113-Lfunc_begin0
	.quad	Lset155
	.short	1                               ; Loc expr size
	.byte	81                              ; DW_OP_reg1
.set Lset156, Ltmp114-Lfunc_begin0
	.quad	Lset156
.set Lset157, Ltmp116-Lfunc_begin0
	.quad	Lset157
	.short	1                               ; Loc expr size
	.byte	81                              ; DW_OP_reg1
	.quad	0
	.quad	0
Ldebug_loc23:
.set Lset158, Lfunc_begin2-Lfunc_begin0
	.quad	Lset158
.set Lset159, Ltmp109-Lfunc_begin0
	.quad	Lset159
	.short	1                               ; Loc expr size
	.byte	82                              ; DW_OP_reg2
.set Lset160, Ltmp109-Lfunc_begin0
	.quad	Lset160
.set Lset161, Ltmp110-Lfunc_begin0
	.quad	Lset161
	.short	1                               ; Loc expr size
	.byte	80                              ; DW_OP_reg0
.set Lset162, Ltmp110-Lfunc_begin0
	.quad	Lset162
.set Lset163, Ltmp111-Lfunc_begin0
	.quad	Lset163
	.short	1                               ; Loc expr size
	.byte	82                              ; DW_OP_reg2
.set Lset164, Ltmp111-Lfunc_begin0
	.quad	Lset164
.set Lset165, Ltmp112-Lfunc_begin0
	.quad	Lset165
	.short	4                               ; Loc expr size
	.byte	163                             ; DW_OP_entry_value
	.byte	1                               ; 1
	.byte	82                              ; DW_OP_reg2
	.byte	159                             ; DW_OP_stack_value
.set Lset166, Ltmp112-Lfunc_begin0
	.quad	Lset166
.set Lset167, Ltmp116-Lfunc_begin0
	.quad	Lset167
	.short	1                               ; Loc expr size
	.byte	82                              ; DW_OP_reg2
	.quad	0
	.quad	0
Ldebug_loc24:
.set Lset168, Lfunc_begin3-Lfunc_begin0
	.quad	Lset168
.set Lset169, Ltmp120-Lfunc_begin0
	.quad	Lset169
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset170, Ltmp120-Lfunc_begin0
	.quad	Lset170
.set Lset171, Ltmp121-Lfunc_begin0
	.quad	Lset171
	.short	5                               ; Loc expr size
	.byte	163                             ; DW_OP_entry_value
	.byte	2                               ; 2
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
	.byte	159                             ; DW_OP_stack_value
.set Lset172, Ltmp121-Lfunc_begin0
	.quad	Lset172
.set Lset173, Ltmp122-Lfunc_begin0
	.quad	Lset173
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset174, Ltmp122-Lfunc_begin0
	.quad	Lset174
.set Lset175, Ltmp123-Lfunc_begin0
	.quad	Lset175
	.short	5                               ; Loc expr size
	.byte	163                             ; DW_OP_entry_value
	.byte	2                               ; 2
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
	.byte	159                             ; DW_OP_stack_value
.set Lset176, Ltmp123-Lfunc_begin0
	.quad	Lset176
.set Lset177, Ltmp124-Lfunc_begin0
	.quad	Lset177
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset178, Ltmp124-Lfunc_begin0
	.quad	Lset178
.set Lset179, Ltmp126-Lfunc_begin0
	.quad	Lset179
	.short	5                               ; Loc expr size
	.byte	163                             ; DW_OP_entry_value
	.byte	2                               ; 2
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
	.byte	159                             ; DW_OP_stack_value
.set Lset180, Ltmp126-Lfunc_begin0
	.quad	Lset180
.set Lset181, Ltmp127-Lfunc_begin0
	.quad	Lset181
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset182, Ltmp127-Lfunc_begin0
	.quad	Lset182
.set Lset183, Ltmp128-Lfunc_begin0
	.quad	Lset183
	.short	5                               ; Loc expr size
	.byte	163                             ; DW_OP_entry_value
	.byte	2                               ; 2
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
	.byte	159                             ; DW_OP_stack_value
.set Lset184, Ltmp128-Lfunc_begin0
	.quad	Lset184
.set Lset185, Ltmp129-Lfunc_begin0
	.quad	Lset185
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset186, Ltmp129-Lfunc_begin0
	.quad	Lset186
.set Lset187, Ltmp130-Lfunc_begin0
	.quad	Lset187
	.short	5                               ; Loc expr size
	.byte	163                             ; DW_OP_entry_value
	.byte	2                               ; 2
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
	.byte	159                             ; DW_OP_stack_value
.set Lset188, Ltmp130-Lfunc_begin0
	.quad	Lset188
.set Lset189, Ltmp131-Lfunc_begin0
	.quad	Lset189
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset190, Ltmp131-Lfunc_begin0
	.quad	Lset190
.set Lset191, Ltmp132-Lfunc_begin0
	.quad	Lset191
	.short	5                               ; Loc expr size
	.byte	163                             ; DW_OP_entry_value
	.byte	2                               ; 2
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
	.byte	159                             ; DW_OP_stack_value
.set Lset192, Ltmp132-Lfunc_begin0
	.quad	Lset192
.set Lset193, Ltmp133-Lfunc_begin0
	.quad	Lset193
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset194, Ltmp133-Lfunc_begin0
	.quad	Lset194
.set Lset195, Ltmp134-Lfunc_begin0
	.quad	Lset195
	.short	5                               ; Loc expr size
	.byte	163                             ; DW_OP_entry_value
	.byte	2                               ; 2
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
	.byte	159                             ; DW_OP_stack_value
.set Lset196, Ltmp134-Lfunc_begin0
	.quad	Lset196
.set Lset197, Ltmp136-Lfunc_begin0
	.quad	Lset197
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset198, Ltmp136-Lfunc_begin0
	.quad	Lset198
.set Lset199, Lfunc_end3-Lfunc_begin0
	.quad	Lset199
	.short	5                               ; Loc expr size
	.byte	163                             ; DW_OP_entry_value
	.byte	2                               ; 2
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc25:
.set Lset200, Lfunc_begin3-Lfunc_begin0
	.quad	Lset200
.set Lset201, Ltmp120-Lfunc_begin0
	.quad	Lset201
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	66                              ; 66
.set Lset202, Ltmp120-Lfunc_begin0
	.quad	Lset202
.set Lset203, Ltmp121-Lfunc_begin0
	.quad	Lset203
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset204, Ltmp121-Lfunc_begin0
	.quad	Lset204
.set Lset205, Ltmp122-Lfunc_begin0
	.quad	Lset205
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	66                              ; 66
.set Lset206, Ltmp122-Lfunc_begin0
	.quad	Lset206
.set Lset207, Ltmp123-Lfunc_begin0
	.quad	Lset207
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset208, Ltmp123-Lfunc_begin0
	.quad	Lset208
.set Lset209, Ltmp125-Lfunc_begin0
	.quad	Lset209
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	66                              ; 66
.set Lset210, Ltmp125-Lfunc_begin0
	.quad	Lset210
.set Lset211, Ltmp126-Lfunc_begin0
	.quad	Lset211
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset212, Ltmp126-Lfunc_begin0
	.quad	Lset212
.set Lset213, Ltmp127-Lfunc_begin0
	.quad	Lset213
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	66                              ; 66
.set Lset214, Ltmp127-Lfunc_begin0
	.quad	Lset214
.set Lset215, Ltmp128-Lfunc_begin0
	.quad	Lset215
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset216, Ltmp128-Lfunc_begin0
	.quad	Lset216
.set Lset217, Ltmp129-Lfunc_begin0
	.quad	Lset217
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	66                              ; 66
.set Lset218, Ltmp129-Lfunc_begin0
	.quad	Lset218
.set Lset219, Ltmp130-Lfunc_begin0
	.quad	Lset219
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset220, Ltmp130-Lfunc_begin0
	.quad	Lset220
.set Lset221, Ltmp131-Lfunc_begin0
	.quad	Lset221
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	66                              ; 66
.set Lset222, Ltmp131-Lfunc_begin0
	.quad	Lset222
.set Lset223, Ltmp132-Lfunc_begin0
	.quad	Lset223
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset224, Ltmp132-Lfunc_begin0
	.quad	Lset224
.set Lset225, Ltmp133-Lfunc_begin0
	.quad	Lset225
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	66                              ; 66
.set Lset226, Ltmp133-Lfunc_begin0
	.quad	Lset226
.set Lset227, Ltmp134-Lfunc_begin0
	.quad	Lset227
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset228, Ltmp134-Lfunc_begin0
	.quad	Lset228
.set Lset229, Lfunc_end3-Lfunc_begin0
	.quad	Lset229
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	66                              ; 66
	.quad	0
	.quad	0
Ldebug_loc26:
.set Lset230, Lfunc_begin4-Lfunc_begin0
	.quad	Lset230
.set Lset231, Ltmp141-Lfunc_begin0
	.quad	Lset231
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset232, Ltmp141-Lfunc_begin0
	.quad	Lset232
.set Lset233, Ltmp142-Lfunc_begin0
	.quad	Lset233
	.short	5                               ; Loc expr size
	.byte	163                             ; DW_OP_entry_value
	.byte	2                               ; 2
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
	.byte	159                             ; DW_OP_stack_value
.set Lset234, Ltmp142-Lfunc_begin0
	.quad	Lset234
.set Lset235, Ltmp143-Lfunc_begin0
	.quad	Lset235
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset236, Ltmp143-Lfunc_begin0
	.quad	Lset236
.set Lset237, Ltmp144-Lfunc_begin0
	.quad	Lset237
	.short	5                               ; Loc expr size
	.byte	163                             ; DW_OP_entry_value
	.byte	2                               ; 2
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
	.byte	159                             ; DW_OP_stack_value
.set Lset238, Ltmp144-Lfunc_begin0
	.quad	Lset238
.set Lset239, Ltmp145-Lfunc_begin0
	.quad	Lset239
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset240, Ltmp145-Lfunc_begin0
	.quad	Lset240
.set Lset241, Ltmp147-Lfunc_begin0
	.quad	Lset241
	.short	5                               ; Loc expr size
	.byte	163                             ; DW_OP_entry_value
	.byte	2                               ; 2
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
	.byte	159                             ; DW_OP_stack_value
.set Lset242, Ltmp147-Lfunc_begin0
	.quad	Lset242
.set Lset243, Ltmp148-Lfunc_begin0
	.quad	Lset243
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset244, Ltmp148-Lfunc_begin0
	.quad	Lset244
.set Lset245, Ltmp149-Lfunc_begin0
	.quad	Lset245
	.short	5                               ; Loc expr size
	.byte	163                             ; DW_OP_entry_value
	.byte	2                               ; 2
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
	.byte	159                             ; DW_OP_stack_value
.set Lset246, Ltmp149-Lfunc_begin0
	.quad	Lset246
.set Lset247, Ltmp150-Lfunc_begin0
	.quad	Lset247
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset248, Ltmp150-Lfunc_begin0
	.quad	Lset248
.set Lset249, Ltmp151-Lfunc_begin0
	.quad	Lset249
	.short	5                               ; Loc expr size
	.byte	163                             ; DW_OP_entry_value
	.byte	2                               ; 2
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
	.byte	159                             ; DW_OP_stack_value
.set Lset250, Ltmp151-Lfunc_begin0
	.quad	Lset250
.set Lset251, Ltmp152-Lfunc_begin0
	.quad	Lset251
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset252, Ltmp152-Lfunc_begin0
	.quad	Lset252
.set Lset253, Ltmp153-Lfunc_begin0
	.quad	Lset253
	.short	5                               ; Loc expr size
	.byte	163                             ; DW_OP_entry_value
	.byte	2                               ; 2
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
	.byte	159                             ; DW_OP_stack_value
.set Lset254, Ltmp153-Lfunc_begin0
	.quad	Lset254
.set Lset255, Ltmp154-Lfunc_begin0
	.quad	Lset255
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset256, Ltmp154-Lfunc_begin0
	.quad	Lset256
.set Lset257, Ltmp155-Lfunc_begin0
	.quad	Lset257
	.short	5                               ; Loc expr size
	.byte	163                             ; DW_OP_entry_value
	.byte	2                               ; 2
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
	.byte	159                             ; DW_OP_stack_value
.set Lset258, Ltmp155-Lfunc_begin0
	.quad	Lset258
.set Lset259, Ltmp157-Lfunc_begin0
	.quad	Lset259
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset260, Ltmp157-Lfunc_begin0
	.quad	Lset260
.set Lset261, Lfunc_end4-Lfunc_begin0
	.quad	Lset261
	.short	5                               ; Loc expr size
	.byte	163                             ; DW_OP_entry_value
	.byte	2                               ; 2
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc27:
.set Lset262, Lfunc_begin4-Lfunc_begin0
	.quad	Lset262
.set Lset263, Ltmp141-Lfunc_begin0
	.quad	Lset263
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	66                              ; 66
.set Lset264, Ltmp141-Lfunc_begin0
	.quad	Lset264
.set Lset265, Ltmp142-Lfunc_begin0
	.quad	Lset265
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset266, Ltmp142-Lfunc_begin0
	.quad	Lset266
.set Lset267, Ltmp143-Lfunc_begin0
	.quad	Lset267
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	66                              ; 66
.set Lset268, Ltmp143-Lfunc_begin0
	.quad	Lset268
.set Lset269, Ltmp144-Lfunc_begin0
	.quad	Lset269
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset270, Ltmp144-Lfunc_begin0
	.quad	Lset270
.set Lset271, Ltmp146-Lfunc_begin0
	.quad	Lset271
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	66                              ; 66
.set Lset272, Ltmp146-Lfunc_begin0
	.quad	Lset272
.set Lset273, Ltmp147-Lfunc_begin0
	.quad	Lset273
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset274, Ltmp147-Lfunc_begin0
	.quad	Lset274
.set Lset275, Ltmp148-Lfunc_begin0
	.quad	Lset275
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	66                              ; 66
.set Lset276, Ltmp148-Lfunc_begin0
	.quad	Lset276
.set Lset277, Ltmp149-Lfunc_begin0
	.quad	Lset277
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset278, Ltmp149-Lfunc_begin0
	.quad	Lset278
.set Lset279, Ltmp150-Lfunc_begin0
	.quad	Lset279
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	66                              ; 66
.set Lset280, Ltmp150-Lfunc_begin0
	.quad	Lset280
.set Lset281, Ltmp151-Lfunc_begin0
	.quad	Lset281
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset282, Ltmp151-Lfunc_begin0
	.quad	Lset282
.set Lset283, Ltmp152-Lfunc_begin0
	.quad	Lset283
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	66                              ; 66
.set Lset284, Ltmp152-Lfunc_begin0
	.quad	Lset284
.set Lset285, Ltmp153-Lfunc_begin0
	.quad	Lset285
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset286, Ltmp153-Lfunc_begin0
	.quad	Lset286
.set Lset287, Ltmp154-Lfunc_begin0
	.quad	Lset287
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	66                              ; 66
.set Lset288, Ltmp154-Lfunc_begin0
	.quad	Lset288
.set Lset289, Ltmp155-Lfunc_begin0
	.quad	Lset289
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset290, Ltmp155-Lfunc_begin0
	.quad	Lset290
.set Lset291, Lfunc_end4-Lfunc_begin0
	.quad	Lset291
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	66                              ; 66
	.quad	0
	.quad	0
Ldebug_loc28:
.set Lset292, Lfunc_begin5-Lfunc_begin0
	.quad	Lset292
.set Lset293, Ltmp162-Lfunc_begin0
	.quad	Lset293
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset294, Ltmp162-Lfunc_begin0
	.quad	Lset294
.set Lset295, Ltmp163-Lfunc_begin0
	.quad	Lset295
	.short	5                               ; Loc expr size
	.byte	163                             ; DW_OP_entry_value
	.byte	2                               ; 2
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
	.byte	159                             ; DW_OP_stack_value
.set Lset296, Ltmp163-Lfunc_begin0
	.quad	Lset296
.set Lset297, Ltmp164-Lfunc_begin0
	.quad	Lset297
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset298, Ltmp164-Lfunc_begin0
	.quad	Lset298
.set Lset299, Ltmp165-Lfunc_begin0
	.quad	Lset299
	.short	5                               ; Loc expr size
	.byte	163                             ; DW_OP_entry_value
	.byte	2                               ; 2
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
	.byte	159                             ; DW_OP_stack_value
.set Lset300, Ltmp165-Lfunc_begin0
	.quad	Lset300
.set Lset301, Ltmp166-Lfunc_begin0
	.quad	Lset301
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset302, Ltmp166-Lfunc_begin0
	.quad	Lset302
.set Lset303, Ltmp168-Lfunc_begin0
	.quad	Lset303
	.short	5                               ; Loc expr size
	.byte	163                             ; DW_OP_entry_value
	.byte	2                               ; 2
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
	.byte	159                             ; DW_OP_stack_value
.set Lset304, Ltmp168-Lfunc_begin0
	.quad	Lset304
.set Lset305, Ltmp169-Lfunc_begin0
	.quad	Lset305
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset306, Ltmp169-Lfunc_begin0
	.quad	Lset306
.set Lset307, Ltmp170-Lfunc_begin0
	.quad	Lset307
	.short	5                               ; Loc expr size
	.byte	163                             ; DW_OP_entry_value
	.byte	2                               ; 2
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
	.byte	159                             ; DW_OP_stack_value
.set Lset308, Ltmp170-Lfunc_begin0
	.quad	Lset308
.set Lset309, Ltmp171-Lfunc_begin0
	.quad	Lset309
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset310, Ltmp171-Lfunc_begin0
	.quad	Lset310
.set Lset311, Ltmp172-Lfunc_begin0
	.quad	Lset311
	.short	5                               ; Loc expr size
	.byte	163                             ; DW_OP_entry_value
	.byte	2                               ; 2
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
	.byte	159                             ; DW_OP_stack_value
.set Lset312, Ltmp172-Lfunc_begin0
	.quad	Lset312
.set Lset313, Ltmp173-Lfunc_begin0
	.quad	Lset313
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset314, Ltmp173-Lfunc_begin0
	.quad	Lset314
.set Lset315, Ltmp174-Lfunc_begin0
	.quad	Lset315
	.short	5                               ; Loc expr size
	.byte	163                             ; DW_OP_entry_value
	.byte	2                               ; 2
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
	.byte	159                             ; DW_OP_stack_value
.set Lset316, Ltmp174-Lfunc_begin0
	.quad	Lset316
.set Lset317, Ltmp175-Lfunc_begin0
	.quad	Lset317
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset318, Ltmp175-Lfunc_begin0
	.quad	Lset318
.set Lset319, Ltmp176-Lfunc_begin0
	.quad	Lset319
	.short	5                               ; Loc expr size
	.byte	163                             ; DW_OP_entry_value
	.byte	2                               ; 2
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
	.byte	159                             ; DW_OP_stack_value
.set Lset320, Ltmp176-Lfunc_begin0
	.quad	Lset320
.set Lset321, Ltmp178-Lfunc_begin0
	.quad	Lset321
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset322, Ltmp178-Lfunc_begin0
	.quad	Lset322
.set Lset323, Lfunc_end5-Lfunc_begin0
	.quad	Lset323
	.short	5                               ; Loc expr size
	.byte	163                             ; DW_OP_entry_value
	.byte	2                               ; 2
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc29:
.set Lset324, Lfunc_begin5-Lfunc_begin0
	.quad	Lset324
.set Lset325, Ltmp162-Lfunc_begin0
	.quad	Lset325
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	66                              ; 66
.set Lset326, Ltmp162-Lfunc_begin0
	.quad	Lset326
.set Lset327, Ltmp163-Lfunc_begin0
	.quad	Lset327
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset328, Ltmp163-Lfunc_begin0
	.quad	Lset328
.set Lset329, Ltmp164-Lfunc_begin0
	.quad	Lset329
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	66                              ; 66
.set Lset330, Ltmp164-Lfunc_begin0
	.quad	Lset330
.set Lset331, Ltmp165-Lfunc_begin0
	.quad	Lset331
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset332, Ltmp165-Lfunc_begin0
	.quad	Lset332
.set Lset333, Ltmp167-Lfunc_begin0
	.quad	Lset333
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	66                              ; 66
.set Lset334, Ltmp167-Lfunc_begin0
	.quad	Lset334
.set Lset335, Ltmp168-Lfunc_begin0
	.quad	Lset335
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset336, Ltmp168-Lfunc_begin0
	.quad	Lset336
.set Lset337, Ltmp169-Lfunc_begin0
	.quad	Lset337
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	66                              ; 66
.set Lset338, Ltmp169-Lfunc_begin0
	.quad	Lset338
.set Lset339, Ltmp170-Lfunc_begin0
	.quad	Lset339
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset340, Ltmp170-Lfunc_begin0
	.quad	Lset340
.set Lset341, Ltmp171-Lfunc_begin0
	.quad	Lset341
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	66                              ; 66
.set Lset342, Ltmp171-Lfunc_begin0
	.quad	Lset342
.set Lset343, Ltmp172-Lfunc_begin0
	.quad	Lset343
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset344, Ltmp172-Lfunc_begin0
	.quad	Lset344
.set Lset345, Ltmp173-Lfunc_begin0
	.quad	Lset345
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	66                              ; 66
.set Lset346, Ltmp173-Lfunc_begin0
	.quad	Lset346
.set Lset347, Ltmp174-Lfunc_begin0
	.quad	Lset347
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset348, Ltmp174-Lfunc_begin0
	.quad	Lset348
.set Lset349, Ltmp175-Lfunc_begin0
	.quad	Lset349
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	66                              ; 66
.set Lset350, Ltmp175-Lfunc_begin0
	.quad	Lset350
.set Lset351, Ltmp176-Lfunc_begin0
	.quad	Lset351
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset352, Ltmp176-Lfunc_begin0
	.quad	Lset352
.set Lset353, Lfunc_end5-Lfunc_begin0
	.quad	Lset353
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	66                              ; 66
	.quad	0
	.quad	0
Ldebug_loc30:
.set Lset354, Lfunc_begin6-Lfunc_begin0
	.quad	Lset354
.set Lset355, Ltmp180-Lfunc_begin0
	.quad	Lset355
	.short	1                               ; Loc expr size
	.byte	80                              ; DW_OP_reg0
.set Lset356, Ltmp180-Lfunc_begin0
	.quad	Lset356
.set Lset357, Ltmp185-Lfunc_begin0
	.quad	Lset357
	.short	3                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	168                             ; 296
	.byte	2                               ; 
.set Lset358, Ltmp186-Lfunc_begin0
	.quad	Lset358
.set Lset359, Lfunc_end6-Lfunc_begin0
	.quad	Lset359
	.short	3                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	168                             ; 296
	.byte	2                               ; 
	.quad	0
	.quad	0
Ldebug_loc31:
.set Lset360, Lfunc_begin6-Lfunc_begin0
	.quad	Lset360
.set Lset361, Ltmp183-Lfunc_begin0
	.quad	Lset361
	.short	1                               ; Loc expr size
	.byte	81                              ; DW_OP_reg1
.set Lset362, Ltmp186-Lfunc_begin0
	.quad	Lset362
.set Lset363, Ltmp214-Lfunc_begin0
	.quad	Lset363
	.short	15                              ; Loc expr size
	.byte	113                             ; DW_OP_breg1
	.byte	0                               ; 0
	.byte	16                              ; DW_OP_constu
	.byte	255                             ; 18446743936270598143
	.byte	255                             ; 
	.byte	255                             ; 
	.byte	255                             ; 
	.byte	255                             ; 
	.byte	251                             ; 
	.byte	255                             ; 
	.byte	255                             ; 
	.byte	255                             ; 
	.byte	1                               ; 
	.byte	26                              ; DW_OP_and
	.byte	159                             ; DW_OP_stack_value
.set Lset364, Ltmp214-Lfunc_begin0
	.quad	Lset364
.set Lset365, Ltmp215-Lfunc_begin0
	.quad	Lset365
	.short	1                               ; Loc expr size
	.byte	93                              ; DW_OP_reg13
.set Lset366, Ltmp215-Lfunc_begin0
	.quad	Lset366
.set Lset367, Ltmp221-Lfunc_begin0
	.quad	Lset367
	.short	3                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	208                             ; 208
	.byte	1                               ; 
.set Lset368, Ltmp221-Lfunc_begin0
	.quad	Lset368
.set Lset369, Ltmp222-Lfunc_begin0
	.quad	Lset369
	.short	1                               ; Loc expr size
	.byte	92                              ; DW_OP_reg12
.set Lset370, Ltmp222-Lfunc_begin0
	.quad	Lset370
.set Lset371, Ltmp223-Lfunc_begin0
	.quad	Lset371
	.short	3                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	208                             ; 208
	.byte	1                               ; 
.set Lset372, Ltmp223-Lfunc_begin0
	.quad	Lset372
.set Lset373, Ltmp224-Lfunc_begin0
	.quad	Lset373
	.short	15                              ; Loc expr size
	.byte	113                             ; DW_OP_breg1
	.byte	0                               ; 0
	.byte	16                              ; DW_OP_constu
	.byte	255                             ; 18446743936270598143
	.byte	255                             ; 
	.byte	255                             ; 
	.byte	255                             ; 
	.byte	255                             ; 
	.byte	251                             ; 
	.byte	255                             ; 
	.byte	255                             ; 
	.byte	255                             ; 
	.byte	1                               ; 
	.byte	26                              ; DW_OP_and
	.byte	159                             ; DW_OP_stack_value
.set Lset374, Ltmp224-Lfunc_begin0
	.quad	Lset374
.set Lset375, Ltmp228-Lfunc_begin0
	.quad	Lset375
	.short	3                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	208                             ; 208
	.byte	1                               ; 
.set Lset376, Ltmp228-Lfunc_begin0
	.quad	Lset376
.set Lset377, Ltmp229-Lfunc_begin0
	.quad	Lset377
	.short	1                               ; Loc expr size
	.byte	92                              ; DW_OP_reg12
.set Lset378, Ltmp229-Lfunc_begin0
	.quad	Lset378
.set Lset379, Ltmp231-Lfunc_begin0
	.quad	Lset379
	.short	3                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	208                             ; 208
	.byte	1                               ; 
.set Lset380, Ltmp231-Lfunc_begin0
	.quad	Lset380
.set Lset381, Ltmp232-Lfunc_begin0
	.quad	Lset381
	.short	1                               ; Loc expr size
	.byte	93                              ; DW_OP_reg13
.set Lset382, Ltmp232-Lfunc_begin0
	.quad	Lset382
.set Lset383, Ltmp236-Lfunc_begin0
	.quad	Lset383
	.short	3                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	208                             ; 208
	.byte	1                               ; 
.set Lset384, Ltmp236-Lfunc_begin0
	.quad	Lset384
.set Lset385, Ltmp237-Lfunc_begin0
	.quad	Lset385
	.short	1                               ; Loc expr size
	.byte	92                              ; DW_OP_reg12
.set Lset386, Ltmp237-Lfunc_begin0
	.quad	Lset386
.set Lset387, Ltmp480-Lfunc_begin0
	.quad	Lset387
	.short	3                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	208                             ; 208
	.byte	1                               ; 
	.quad	0
	.quad	0
Ldebug_loc32:
.set Lset388, Ltmp187-Lfunc_begin0
	.quad	Lset388
.set Lset389, Ltmp252-Lfunc_begin0
	.quad	Lset389
	.short	1                               ; Loc expr size
	.byte	96                              ; DW_OP_reg16
	.quad	0
	.quad	0
Ldebug_loc33:
.set Lset390, Ltmp193-Lfunc_begin0
	.quad	Lset390
.set Lset391, Ltmp207-Lfunc_begin0
	.quad	Lset391
	.short	2                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc34:
.set Lset392, Ltmp196-Lfunc_begin0
	.quad	Lset392
.set Lset393, Ltmp200-Lfunc_begin0
	.quad	Lset393
	.short	2                               ; Loc expr size
	.byte	64                              ; DW_OP_lit16
	.byte	159                             ; DW_OP_stack_value
.set Lset394, Ltmp201-Lfunc_begin0
	.quad	Lset394
.set Lset395, Ltmp203-Lfunc_begin0
	.quad	Lset395
	.short	2                               ; Loc expr size
	.byte	64                              ; DW_OP_lit16
	.byte	159                             ; DW_OP_stack_value
.set Lset396, Ltmp204-Lfunc_begin0
	.quad	Lset396
.set Lset397, Ltmp205-Lfunc_begin0
	.quad	Lset397
	.short	3                               ; Loc expr size
	.byte	16                              ; DW_OP_constu
	.byte	32                              ; 32
	.byte	159                             ; DW_OP_stack_value
.set Lset398, Ltmp206-Lfunc_begin0
	.quad	Lset398
.set Lset399, Ltmp207-Lfunc_begin0
	.quad	Lset399
	.short	3                               ; Loc expr size
	.byte	16                              ; DW_OP_constu
	.byte	64                              ; 64
	.byte	159                             ; DW_OP_stack_value
.set Lset400, Ltmp207-Lfunc_begin0
	.quad	Lset400
.set Lset401, Ltmp248-Lfunc_begin0
	.quad	Lset401
	.short	1                               ; Loc expr size
	.byte	80                              ; DW_OP_reg0
.set Lset402, Ltmp248-Lfunc_begin0
	.quad	Lset402
.set Lset403, Ltmp480-Lfunc_begin0
	.quad	Lset403
	.short	3                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	248                             ; 120
	.byte	0                               ; 
	.quad	0
	.quad	0
Ldebug_loc35:
.set Lset404, Ltmp201-Lfunc_begin0
	.quad	Lset404
.set Lset405, Ltmp202-Lfunc_begin0
	.quad	Lset405
	.short	2                               ; Loc expr size
	.byte	64                              ; DW_OP_lit16
	.byte	159                             ; DW_OP_stack_value
.set Lset406, Ltmp204-Lfunc_begin0
	.quad	Lset406
.set Lset407, Ltmp205-Lfunc_begin0
	.quad	Lset407
	.short	3                               ; Loc expr size
	.byte	16                              ; DW_OP_constu
	.byte	32                              ; 32
	.byte	159                             ; DW_OP_stack_value
.set Lset408, Ltmp206-Lfunc_begin0
	.quad	Lset408
.set Lset409, Ltmp207-Lfunc_begin0
	.quad	Lset409
	.short	3                               ; Loc expr size
	.byte	16                              ; DW_OP_constu
	.byte	64                              ; 64
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc36:
.set Lset410, Ltmp208-Lfunc_begin0
	.quad	Lset410
.set Lset411, Ltmp480-Lfunc_begin0
	.quad	Lset411
	.short	1                               ; Loc expr size
	.byte	102                             ; DW_OP_reg22
	.quad	0
	.quad	0
Ldebug_loc37:
.set Lset412, Ltmp209-Lfunc_begin0
	.quad	Lset412
.set Lset413, Ltmp234-Lfunc_begin0
	.quad	Lset413
	.short	3                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	32                              ; DW_OP_not
	.byte	159                             ; DW_OP_stack_value
.set Lset414, Ltmp234-Lfunc_begin0
	.quad	Lset414
.set Lset415, Ltmp235-Lfunc_begin0
	.quad	Lset415
	.short	2                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	159                             ; DW_OP_stack_value
.set Lset416, Ltmp235-Lfunc_begin0
	.quad	Lset416
.set Lset417, Ltmp239-Lfunc_begin0
	.quad	Lset417
	.short	3                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	32                              ; DW_OP_not
	.byte	159                             ; DW_OP_stack_value
.set Lset418, Ltmp239-Lfunc_begin0
	.quad	Lset418
.set Lset419, Ltmp250-Lfunc_begin0
	.quad	Lset419
	.short	1                               ; Loc expr size
	.byte	83                              ; DW_OP_reg3
.set Lset420, Ltmp250-Lfunc_begin0
	.quad	Lset420
.set Lset421, Ltmp480-Lfunc_begin0
	.quad	Lset421
	.short	3                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	148                             ; 276
	.byte	2                               ; 
	.quad	0
	.quad	0
Ldebug_loc38:
.set Lset422, Ltmp209-Lfunc_begin0
	.quad	Lset422
.set Lset423, Ltmp235-Lfunc_begin0
	.quad	Lset423
	.short	3                               ; Loc expr size
	.byte	16                              ; DW_OP_constu
	.byte	64                              ; 64
	.byte	159                             ; DW_OP_stack_value
.set Lset424, Ltmp235-Lfunc_begin0
	.quad	Lset424
.set Lset425, Ltmp237-Lfunc_begin0
	.quad	Lset425
	.short	2                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	159                             ; DW_OP_stack_value
.set Lset426, Ltmp239-Lfunc_begin0
	.quad	Lset426
.set Lset427, Ltmp245-Lfunc_begin0
	.quad	Lset427
	.short	1                               ; Loc expr size
	.byte	95                              ; DW_OP_reg15
.set Lset428, Ltmp245-Lfunc_begin0
	.quad	Lset428
.set Lset429, Ltmp480-Lfunc_begin0
	.quad	Lset429
	.short	3                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	176                             ; 176
	.byte	1                               ; 
	.quad	0
	.quad	0
Ldebug_loc39:
.set Lset430, Ltmp209-Lfunc_begin0
	.quad	Lset430
.set Lset431, Ltmp225-Lfunc_begin0
	.quad	Lset431
	.short	3                               ; Loc expr size
	.byte	16                              ; DW_OP_constu
	.byte	64                              ; 64
	.byte	159                             ; DW_OP_stack_value
.set Lset432, Ltmp225-Lfunc_begin0
	.quad	Lset432
.set Lset433, Ltmp226-Lfunc_begin0
	.quad	Lset433
	.short	2                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	159                             ; DW_OP_stack_value
.set Lset434, Ltmp226-Lfunc_begin0
	.quad	Lset434
.set Lset435, Ltmp234-Lfunc_begin0
	.quad	Lset435
	.short	3                               ; Loc expr size
	.byte	16                              ; DW_OP_constu
	.byte	64                              ; 64
	.byte	159                             ; DW_OP_stack_value
.set Lset436, Ltmp234-Lfunc_begin0
	.quad	Lset436
.set Lset437, Ltmp235-Lfunc_begin0
	.quad	Lset437
	.short	2                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	159                             ; DW_OP_stack_value
.set Lset438, Ltmp235-Lfunc_begin0
	.quad	Lset438
.set Lset439, Ltmp239-Lfunc_begin0
	.quad	Lset439
	.short	3                               ; Loc expr size
	.byte	16                              ; DW_OP_constu
	.byte	64                              ; 64
	.byte	159                             ; DW_OP_stack_value
.set Lset440, Ltmp239-Lfunc_begin0
	.quad	Lset440
.set Lset441, Ltmp243-Lfunc_begin0
	.quad	Lset441
	.short	1                               ; Loc expr size
	.byte	94                              ; DW_OP_reg14
.set Lset442, Ltmp243-Lfunc_begin0
	.quad	Lset442
.set Lset443, Ltmp480-Lfunc_begin0
	.quad	Lset443
	.short	3                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	168                             ; 168
	.byte	1                               ; 
	.quad	0
	.quad	0
Ldebug_loc40:
.set Lset444, Ltmp209-Lfunc_begin0
	.quad	Lset444
.set Lset445, Ltmp240-Lfunc_begin0
	.quad	Lset445
	.short	3                               ; Loc expr size
	.byte	16                              ; DW_OP_constu
	.byte	64                              ; 64
	.byte	159                             ; DW_OP_stack_value
.set Lset446, Ltmp240-Lfunc_begin0
	.quad	Lset446
.set Lset447, Ltmp251-Lfunc_begin0
	.quad	Lset447
	.short	1                               ; Loc expr size
	.byte	84                              ; DW_OP_reg4
.set Lset448, Ltmp251-Lfunc_begin0
	.quad	Lset448
.set Lset449, Ltmp480-Lfunc_begin0
	.quad	Lset449
	.short	3                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	160                             ; 160
	.byte	1                               ; 
	.quad	0
	.quad	0
Ldebug_loc41:
.set Lset450, Ltmp209-Lfunc_begin0
	.quad	Lset450
.set Lset451, Ltmp240-Lfunc_begin0
	.quad	Lset451
	.short	1                               ; Loc expr size
	.byte	91                              ; DW_OP_reg11
.set Lset452, Ltmp240-Lfunc_begin0
	.quad	Lset452
.set Lset453, Ltmp241-Lfunc_begin0
	.quad	Lset453
	.short	14                              ; Loc expr size
	.byte	116                             ; DW_OP_breg4
	.byte	0                               ; 0
	.byte	35                              ; DW_OP_plus_uconst
	.byte	255                             ; 17592186044415
	.byte	255                             ; 
	.byte	255                             ; 
	.byte	255                             ; 
	.byte	255                             ; 
	.byte	255                             ; 
	.byte	3                               ; 
	.byte	123                             ; DW_OP_breg11
	.byte	0                               ; 0
	.byte	26                              ; DW_OP_and
	.byte	159                             ; DW_OP_stack_value
.set Lset454, Ltmp241-Lfunc_begin0
	.quad	Lset454
.set Lset455, Ltmp242-Lfunc_begin0
	.quad	Lset455
	.short	6                               ; Loc expr size
	.byte	124                             ; DW_OP_breg12
	.byte	0                               ; 0
	.byte	123                             ; DW_OP_breg11
	.byte	0                               ; 0
	.byte	26                              ; DW_OP_and
	.byte	159                             ; DW_OP_stack_value
.set Lset456, Ltmp242-Lfunc_begin0
	.quad	Lset456
.set Lset457, Ltmp244-Lfunc_begin0
	.quad	Lset457
	.short	1                               ; Loc expr size
	.byte	93                              ; DW_OP_reg13
.set Lset458, Ltmp244-Lfunc_begin0
	.quad	Lset458
.set Lset459, Ltmp256-Lfunc_begin0
	.quad	Lset459
	.short	3                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	248                             ; 248
	.byte	1                               ; 
.set Lset460, Ltmp256-Lfunc_begin0
	.quad	Lset460
.set Lset461, Ltmp258-Lfunc_begin0
	.quad	Lset461
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
.set Lset462, Ltmp258-Lfunc_begin0
	.quad	Lset462
.set Lset463, Ltmp480-Lfunc_begin0
	.quad	Lset463
	.short	3                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	248                             ; 248
	.byte	1                               ; 
	.quad	0
	.quad	0
Ldebug_loc42:
.set Lset464, Ltmp213-Lfunc_begin0
	.quad	Lset464
.set Lset465, Ltmp216-Lfunc_begin0
	.quad	Lset465
	.short	1                               ; Loc expr size
	.byte	92                              ; DW_OP_reg12
	.quad	0
	.quad	0
Ldebug_loc43:
.set Lset466, Ltmp240-Lfunc_begin0
	.quad	Lset466
.set Lset467, Ltmp247-Lfunc_begin0
	.quad	Lset467
	.short	8                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	208                             ; 208
	.byte	1                               ; 
	.byte	148                             ; DW_OP_deref_size
	.byte	8                               ; 
	.byte	58                              ; DW_OP_lit10
	.byte	37                              ; DW_OP_shr
	.byte	159                             ; DW_OP_stack_value
.set Lset468, Ltmp247-Lfunc_begin0
	.quad	Lset468
.set Lset469, Ltmp252-Lfunc_begin0
	.quad	Lset469
	.short	1                               ; Loc expr size
	.byte	81                              ; DW_OP_reg1
.set Lset470, Ltmp253-Lfunc_begin0
	.quad	Lset470
.set Lset471, Ltmp260-Lfunc_begin0
	.quad	Lset471
	.short	1                               ; Loc expr size
	.byte	81                              ; DW_OP_reg1
.set Lset472, Ltmp260-Lfunc_begin0
	.quad	Lset472
.set Lset473, Ltmp265-Lfunc_begin0
	.quad	Lset473
	.short	3                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	240                             ; 240
	.byte	1                               ; 
.set Lset474, Ltmp265-Lfunc_begin0
	.quad	Lset474
.set Lset475, Ltmp273-Lfunc_begin0
	.quad	Lset475
	.short	10                              ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	240                             ; 240
	.byte	1                               ; 
	.byte	6                               ; DW_OP_deref
	.byte	143                             ; DW_OP_breg31
	.byte	168                             ; 168
	.byte	1                               ; 
	.byte	6                               ; DW_OP_deref
	.byte	34                              ; DW_OP_plus
	.byte	159                             ; DW_OP_stack_value
.set Lset476, Ltmp273-Lfunc_begin0
	.quad	Lset476
.set Lset477, Ltmp276-Lfunc_begin0
	.quad	Lset477
	.short	10                              ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	240                             ; 240
	.byte	1                               ; 
	.byte	6                               ; DW_OP_deref
	.byte	143                             ; DW_OP_breg31
	.byte	168                             ; 168
	.byte	1                               ; 
	.byte	6                               ; DW_OP_deref
	.byte	34                              ; DW_OP_plus
	.byte	159                             ; DW_OP_stack_value
.set Lset478, Ltmp276-Lfunc_begin0
	.quad	Lset478
.set Lset479, Ltmp277-Lfunc_begin0
	.quad	Lset479
	.short	10                              ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	240                             ; 240
	.byte	1                               ; 
	.byte	6                               ; DW_OP_deref
	.byte	143                             ; DW_OP_breg31
	.byte	216                             ; 88
	.byte	0                               ; 
	.byte	6                               ; DW_OP_deref
	.byte	34                              ; DW_OP_plus
	.byte	159                             ; DW_OP_stack_value
.set Lset480, Ltmp277-Lfunc_begin0
	.quad	Lset480
.set Lset481, Ltmp279-Lfunc_begin0
	.quad	Lset481
	.short	10                              ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	240                             ; 240
	.byte	1                               ; 
	.byte	6                               ; DW_OP_deref
	.byte	143                             ; DW_OP_breg31
	.byte	168                             ; 168
	.byte	1                               ; 
	.byte	6                               ; DW_OP_deref
	.byte	34                              ; DW_OP_plus
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc44:
.set Lset482, Ltmp240-Lfunc_begin0
	.quad	Lset482
.set Lset483, Ltmp252-Lfunc_begin0
	.quad	Lset483
	.short	3                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	208                             ; 208
	.byte	1                               ; 
.set Lset484, Ltmp254-Lfunc_begin0
	.quad	Lset484
.set Lset485, Ltmp263-Lfunc_begin0
	.quad	Lset485
	.short	1                               ; Loc expr size
	.byte	97                              ; DW_OP_reg17
.set Lset486, Ltmp263-Lfunc_begin0
	.quad	Lset486
.set Lset487, Ltmp266-Lfunc_begin0
	.quad	Lset487
	.short	1                               ; Loc expr size
	.byte	103                             ; DW_OP_reg23
.set Lset488, Ltmp266-Lfunc_begin0
	.quad	Lset488
.set Lset489, Ltmp271-Lfunc_begin0
	.quad	Lset489
	.short	3                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	232                             ; 232
	.byte	1                               ; 
.set Lset490, Ltmp271-Lfunc_begin0
	.quad	Lset490
.set Lset491, Ltmp273-Lfunc_begin0
	.quad	Lset491
	.short	10                              ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	232                             ; 232
	.byte	1                               ; 
	.byte	6                               ; DW_OP_deref
	.byte	143                             ; DW_OP_breg31
	.byte	176                             ; 176
	.byte	1                               ; 
	.byte	6                               ; DW_OP_deref
	.byte	34                              ; DW_OP_plus
	.byte	159                             ; DW_OP_stack_value
.set Lset492, Ltmp273-Lfunc_begin0
	.quad	Lset492
.set Lset493, Ltmp278-Lfunc_begin0
	.quad	Lset493
	.short	10                              ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	232                             ; 232
	.byte	1                               ; 
	.byte	6                               ; DW_OP_deref
	.byte	143                             ; DW_OP_breg31
	.byte	176                             ; 176
	.byte	1                               ; 
	.byte	6                               ; DW_OP_deref
	.byte	34                              ; DW_OP_plus
	.byte	159                             ; DW_OP_stack_value
.set Lset494, Ltmp278-Lfunc_begin0
	.quad	Lset494
.set Lset495, Ltmp279-Lfunc_begin0
	.quad	Lset495
	.short	10                              ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	232                             ; 232
	.byte	1                               ; 
	.byte	6                               ; DW_OP_deref
	.byte	143                             ; DW_OP_breg31
	.byte	208                             ; 80
	.byte	0                               ; 
	.byte	6                               ; DW_OP_deref
	.byte	34                              ; DW_OP_plus
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc45:
.set Lset496, Ltmp261-Lfunc_begin0
	.quad	Lset496
.set Lset497, Ltmp264-Lfunc_begin0
	.quad	Lset497
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
	.quad	0
	.quad	0
Ldebug_loc46:
.set Lset498, Ltmp262-Lfunc_begin0
	.quad	Lset498
.set Lset499, Ltmp264-Lfunc_begin0
	.quad	Lset499
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
	.quad	0
	.quad	0
Ldebug_loc47:
.set Lset500, Ltmp267-Lfunc_begin0
	.quad	Lset500
.set Lset501, Ltmp269-Lfunc_begin0
	.quad	Lset501
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
	.quad	0
	.quad	0
Ldebug_loc48:
.set Lset502, Ltmp268-Lfunc_begin0
	.quad	Lset502
.set Lset503, Ltmp270-Lfunc_begin0
	.quad	Lset503
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
	.quad	0
	.quad	0
Ldebug_loc49:
.set Lset504, Ltmp283-Lfunc_begin0
	.quad	Lset504
.set Lset505, Ltmp285-Lfunc_begin0
	.quad	Lset505
	.short	1                               ; Loc expr size
	.byte	105                             ; DW_OP_reg25
.set Lset506, Ltmp285-Lfunc_begin0
	.quad	Lset506
.set Lset507, Ltmp286-Lfunc_begin0
	.quad	Lset507
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
.set Lset508, Ltmp286-Lfunc_begin0
	.quad	Lset508
.set Lset509, Ltmp287-Lfunc_begin0
	.quad	Lset509
	.short	6                               ; Loc expr size
	.byte	121                             ; DW_OP_breg9
	.byte	0                               ; 0
	.byte	120                             ; DW_OP_breg8
	.byte	0                               ; 0
	.byte	34                              ; DW_OP_plus
	.byte	159                             ; DW_OP_stack_value
.set Lset510, Ltmp288-Lfunc_begin0
	.quad	Lset510
.set Lset511, Ltmp290-Lfunc_begin0
	.quad	Lset511
	.short	1                               ; Loc expr size
	.byte	105                             ; DW_OP_reg25
	.quad	0
	.quad	0
Ldebug_loc50:
.set Lset512, Ltmp283-Lfunc_begin0
	.quad	Lset512
.set Lset513, Ltmp290-Lfunc_begin0
	.quad	Lset513
	.short	1                               ; Loc expr size
	.byte	106                             ; DW_OP_reg26
	.quad	0
	.quad	0
Ldebug_loc51:
.set Lset514, Ltmp294-Lfunc_begin0
	.quad	Lset514
.set Lset515, Ltmp296-Lfunc_begin0
	.quad	Lset515
	.short	1                               ; Loc expr size
	.byte	105                             ; DW_OP_reg25
.set Lset516, Ltmp296-Lfunc_begin0
	.quad	Lset516
.set Lset517, Ltmp297-Lfunc_begin0
	.quad	Lset517
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
.set Lset518, Ltmp297-Lfunc_begin0
	.quad	Lset518
.set Lset519, Ltmp298-Lfunc_begin0
	.quad	Lset519
	.short	6                               ; Loc expr size
	.byte	121                             ; DW_OP_breg9
	.byte	0                               ; 0
	.byte	120                             ; DW_OP_breg8
	.byte	0                               ; 0
	.byte	34                              ; DW_OP_plus
	.byte	159                             ; DW_OP_stack_value
.set Lset520, Ltmp299-Lfunc_begin0
	.quad	Lset520
.set Lset521, Ltmp301-Lfunc_begin0
	.quad	Lset521
	.short	1                               ; Loc expr size
	.byte	105                             ; DW_OP_reg25
	.quad	0
	.quad	0
Ldebug_loc52:
.set Lset522, Ltmp294-Lfunc_begin0
	.quad	Lset522
.set Lset523, Ltmp301-Lfunc_begin0
	.quad	Lset523
	.short	1                               ; Loc expr size
	.byte	99                              ; DW_OP_reg19
	.quad	0
	.quad	0
Ldebug_loc53:
.set Lset524, Ltmp309-Lfunc_begin0
	.quad	Lset524
.set Lset525, Ltmp310-Lfunc_begin0
	.quad	Lset525
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
.set Lset526, Ltmp310-Lfunc_begin0
	.quad	Lset526
.set Lset527, Ltmp311-Lfunc_begin0
	.quad	Lset527
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
.set Lset528, Ltmp311-Lfunc_begin0
	.quad	Lset528
.set Lset529, Ltmp312-Lfunc_begin0
	.quad	Lset529
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
	.quad	0
	.quad	0
Ldebug_loc54:
.set Lset530, Ltmp301-Lfunc_begin0
	.quad	Lset530
.set Lset531, Ltmp308-Lfunc_begin0
	.quad	Lset531
	.short	3                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	32                              ; DW_OP_not
	.byte	159                             ; DW_OP_stack_value
.set Lset532, Ltmp308-Lfunc_begin0
	.quad	Lset532
.set Lset533, Ltmp312-Lfunc_begin0
	.quad	Lset533
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
.set Lset534, Ltmp312-Lfunc_begin0
	.quad	Lset534
.set Lset535, Ltmp320-Lfunc_begin0
	.quad	Lset535
	.short	3                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	32                              ; DW_OP_not
	.byte	159                             ; DW_OP_stack_value
.set Lset536, Ltmp320-Lfunc_begin0
	.quad	Lset536
.set Lset537, Ltmp321-Lfunc_begin0
	.quad	Lset537
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
	.quad	0
	.quad	0
Ldebug_loc55:
.set Lset538, Ltmp321-Lfunc_begin0
	.quad	Lset538
.set Lset539, Ltmp478-Lfunc_begin0
	.quad	Lset539
	.short	1                               ; Loc expr size
	.byte	107                             ; DW_OP_reg27
	.quad	0
	.quad	0
Ldebug_loc56:
.set Lset540, Ltmp321-Lfunc_begin0
	.quad	Lset540
.set Lset541, Ltmp323-Lfunc_begin0
	.quad	Lset541
	.short	3                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	32                              ; DW_OP_not
	.byte	159                             ; DW_OP_stack_value
.set Lset542, Ltmp330-Lfunc_begin0
	.quad	Lset542
.set Lset543, Ltmp336-Lfunc_begin0
	.quad	Lset543
	.short	3                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	32                              ; DW_OP_not
	.byte	159                             ; DW_OP_stack_value
.set Lset544, Ltmp476-Lfunc_begin0
	.quad	Lset544
.set Lset545, Ltmp478-Lfunc_begin0
	.quad	Lset545
	.short	3                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	32                              ; DW_OP_not
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc57:
.set Lset546, Ltmp330-Lfunc_begin0
	.quad	Lset546
.set Lset547, Ltmp336-Lfunc_begin0
	.quad	Lset547
	.short	3                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	224                             ; 96
	.byte	0                               ; 
.set Lset548, Ltmp476-Lfunc_begin0
	.quad	Lset548
.set Lset549, Ltmp478-Lfunc_begin0
	.quad	Lset549
	.short	3                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	224                             ; 96
	.byte	0                               ; 
	.quad	0
	.quad	0
Ldebug_loc58:
.set Lset550, Ltmp336-Lfunc_begin0
	.quad	Lset550
.set Lset551, Ltmp337-Lfunc_begin0
	.quad	Lset551
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	66                              ; 66
.set Lset552, Ltmp348-Lfunc_begin0
	.quad	Lset552
.set Lset553, Ltmp365-Lfunc_begin0
	.quad	Lset553
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	66                              ; 66
	.quad	0
	.quad	0
Ldebug_loc59:
.set Lset554, Ltmp336-Lfunc_begin0
	.quad	Lset554
.set Lset555, Ltmp337-Lfunc_begin0
	.quad	Lset555
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	65                              ; 65
.set Lset556, Ltmp347-Lfunc_begin0
	.quad	Lset556
.set Lset557, Ltmp365-Lfunc_begin0
	.quad	Lset557
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	65                              ; 65
	.quad	0
	.quad	0
Ldebug_loc60:
.set Lset558, Ltmp336-Lfunc_begin0
	.quad	Lset558
.set Lset559, Ltmp337-Lfunc_begin0
	.quad	Lset559
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset560, Ltmp345-Lfunc_begin0
	.quad	Lset560
.set Lset561, Ltmp365-Lfunc_begin0
	.quad	Lset561
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
	.quad	0
	.quad	0
Ldebug_loc61:
.set Lset562, Ltmp336-Lfunc_begin0
	.quad	Lset562
.set Lset563, Ltmp337-Lfunc_begin0
	.quad	Lset563
	.short	1                               ; Loc expr size
	.byte	96                              ; DW_OP_reg16
.set Lset564, Ltmp345-Lfunc_begin0
	.quad	Lset564
.set Lset565, Ltmp365-Lfunc_begin0
	.quad	Lset565
	.short	1                               ; Loc expr size
	.byte	96                              ; DW_OP_reg16
	.quad	0
	.quad	0
Ldebug_loc62:
.set Lset566, Ltmp336-Lfunc_begin0
	.quad	Lset566
.set Lset567, Ltmp338-Lfunc_begin0
	.quad	Lset567
	.short	21                              ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	168                             ; 296
	.byte	2                               ; 
	.byte	6                               ; DW_OP_deref
	.byte	143                             ; DW_OP_breg31
	.byte	248                             ; 248
	.byte	1                               ; 
	.byte	6                               ; DW_OP_deref
	.byte	16                              ; DW_OP_constu
	.byte	64                              ; 64
	.byte	30                              ; DW_OP_mul
	.byte	34                              ; DW_OP_plus
	.byte	35                              ; DW_OP_plus_uconst
	.byte	128                             ; 1024
	.byte	8                               ; 
	.byte	121                             ; DW_OP_breg9
	.byte	0                               ; 0
	.byte	50                              ; DW_OP_lit2
	.byte	30                              ; DW_OP_mul
	.byte	34                              ; DW_OP_plus
	.byte	159                             ; DW_OP_stack_value
.set Lset568, Ltmp342-Lfunc_begin0
	.quad	Lset568
.set Lset569, Ltmp343-Lfunc_begin0
	.quad	Lset569
	.short	21                              ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	168                             ; 296
	.byte	2                               ; 
	.byte	6                               ; DW_OP_deref
	.byte	143                             ; DW_OP_breg31
	.byte	248                             ; 248
	.byte	1                               ; 
	.byte	6                               ; DW_OP_deref
	.byte	16                              ; DW_OP_constu
	.byte	64                              ; 64
	.byte	30                              ; DW_OP_mul
	.byte	34                              ; DW_OP_plus
	.byte	35                              ; DW_OP_plus_uconst
	.byte	128                             ; 1024
	.byte	8                               ; 
	.byte	121                             ; DW_OP_breg9
	.byte	0                               ; 0
	.byte	50                              ; DW_OP_lit2
	.byte	30                              ; DW_OP_mul
	.byte	34                              ; DW_OP_plus
	.byte	159                             ; DW_OP_stack_value
.set Lset570, Ltmp343-Lfunc_begin0
	.quad	Lset570
.set Lset571, Ltmp365-Lfunc_begin0
	.quad	Lset571
	.short	21                              ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	168                             ; 296
	.byte	2                               ; 
	.byte	6                               ; DW_OP_deref
	.byte	143                             ; DW_OP_breg31
	.byte	248                             ; 248
	.byte	1                               ; 
	.byte	6                               ; DW_OP_deref
	.byte	16                              ; DW_OP_constu
	.byte	64                              ; 64
	.byte	30                              ; DW_OP_mul
	.byte	34                              ; DW_OP_plus
	.byte	35                              ; DW_OP_plus_uconst
	.byte	128                             ; 1024
	.byte	8                               ; 
	.byte	121                             ; DW_OP_breg9
	.byte	0                               ; 0
	.byte	50                              ; DW_OP_lit2
	.byte	30                              ; DW_OP_mul
	.byte	34                              ; DW_OP_plus
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc63:
.set Lset572, Ltmp344-Lfunc_begin0
	.quad	Lset572
.set Lset573, Ltmp350-Lfunc_begin0
	.quad	Lset573
	.short	3                               ; Loc expr size
	.byte	122                             ; DW_OP_breg10
	.byte	0                               ; 0
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc64:
.set Lset574, Ltmp365-Lfunc_begin0
	.quad	Lset574
.set Lset575, Ltmp366-Lfunc_begin0
	.quad	Lset575
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset576, Ltmp386-Lfunc_begin0
	.quad	Lset576
.set Lset577, Ltmp403-Lfunc_begin0
	.quad	Lset577
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
	.quad	0
	.quad	0
Ldebug_loc65:
.set Lset578, Ltmp365-Lfunc_begin0
	.quad	Lset578
.set Lset579, Ltmp366-Lfunc_begin0
	.quad	Lset579
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	66                              ; 66
.set Lset580, Ltmp386-Lfunc_begin0
	.quad	Lset580
.set Lset581, Ltmp403-Lfunc_begin0
	.quad	Lset581
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	66                              ; 66
	.quad	0
	.quad	0
Ldebug_loc66:
.set Lset582, Ltmp365-Lfunc_begin0
	.quad	Lset582
.set Lset583, Ltmp366-Lfunc_begin0
	.quad	Lset583
	.short	1                               ; Loc expr size
	.byte	96                              ; DW_OP_reg16
.set Lset584, Ltmp386-Lfunc_begin0
	.quad	Lset584
.set Lset585, Ltmp403-Lfunc_begin0
	.quad	Lset585
	.short	1                               ; Loc expr size
	.byte	96                              ; DW_OP_reg16
	.quad	0
	.quad	0
Ldebug_loc67:
.set Lset586, Ltmp365-Lfunc_begin0
	.quad	Lset586
.set Lset587, Ltmp367-Lfunc_begin0
	.quad	Lset587
	.short	8                               ; Loc expr size
	.byte	123                             ; DW_OP_breg11
	.byte	0                               ; 0
	.byte	124                             ; DW_OP_breg12
	.byte	0                               ; 0
	.byte	52                              ; DW_OP_lit4
	.byte	30                              ; DW_OP_mul
	.byte	34                              ; DW_OP_plus
	.byte	159                             ; DW_OP_stack_value
.set Lset588, Ltmp384-Lfunc_begin0
	.quad	Lset588
.set Lset589, Ltmp403-Lfunc_begin0
	.quad	Lset589
	.short	8                               ; Loc expr size
	.byte	123                             ; DW_OP_breg11
	.byte	0                               ; 0
	.byte	124                             ; DW_OP_breg12
	.byte	0                               ; 0
	.byte	52                              ; DW_OP_lit4
	.byte	30                              ; DW_OP_mul
	.byte	34                              ; DW_OP_plus
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc68:
.set Lset590, Ltmp365-Lfunc_begin0
	.quad	Lset590
.set Lset591, Ltmp367-Lfunc_begin0
	.quad	Lset591
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	66                              ; 66
.set Lset592, Ltmp384-Lfunc_begin0
	.quad	Lset592
.set Lset593, Ltmp403-Lfunc_begin0
	.quad	Lset593
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	66                              ; 66
	.quad	0
	.quad	0
Ldebug_loc69:
.set Lset594, Ltmp372-Lfunc_begin0
	.quad	Lset594
.set Lset595, Ltmp378-Lfunc_begin0
	.quad	Lset595
	.short	3                               ; Loc expr size
	.byte	123                             ; DW_OP_breg11
	.byte	0                               ; 0
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc70:
.set Lset596, Ltmp375-Lfunc_begin0
	.quad	Lset596
.set Lset597, Ltmp376-Lfunc_begin0
	.quad	Lset597
	.short	1                               ; Loc expr size
	.byte	92                              ; DW_OP_reg12
.set Lset598, Ltmp377-Lfunc_begin0
	.quad	Lset598
.set Lset599, Ltmp380-Lfunc_begin0
	.quad	Lset599
	.short	1                               ; Loc expr size
	.byte	92                              ; DW_OP_reg12
	.quad	0
	.quad	0
Ldebug_loc71:
.set Lset600, Ltmp379-Lfunc_begin0
	.quad	Lset600
.set Lset601, Ltmp382-Lfunc_begin0
	.quad	Lset601
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	65                              ; 65
	.quad	0
	.quad	0
Ldebug_loc72:
.set Lset602, Ltmp379-Lfunc_begin0
	.quad	Lset602
.set Lset603, Ltmp380-Lfunc_begin0
	.quad	Lset603
	.short	1                               ; Loc expr size
	.byte	91                              ; DW_OP_reg11
.set Lset604, Ltmp381-Lfunc_begin0
	.quad	Lset604
.set Lset605, Ltmp382-Lfunc_begin0
	.quad	Lset605
	.short	1                               ; Loc expr size
	.byte	91                              ; DW_OP_reg11
	.quad	0
	.quad	0
Ldebug_loc73:
.set Lset606, Ltmp404-Lfunc_begin0
	.quad	Lset606
.set Lset607, Ltmp408-Lfunc_begin0
	.quad	Lset607
	.short	21                              ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	168                             ; 296
	.byte	2                               ; 
	.byte	6                               ; DW_OP_deref
	.byte	143                             ; DW_OP_breg31
	.byte	248                             ; 248
	.byte	1                               ; 
	.byte	6                               ; DW_OP_deref
	.byte	16                              ; DW_OP_constu
	.byte	64                              ; 64
	.byte	30                              ; DW_OP_mul
	.byte	34                              ; DW_OP_plus
	.byte	35                              ; DW_OP_plus_uconst
	.byte	128                             ; 1024
	.byte	8                               ; 
	.byte	137                             ; DW_OP_breg25
	.byte	0                               ; 0
	.byte	50                              ; DW_OP_lit2
	.byte	30                              ; DW_OP_mul
	.byte	34                              ; DW_OP_plus
	.byte	159                             ; DW_OP_stack_value
.set Lset608, Ltmp412-Lfunc_begin0
	.quad	Lset608
.set Lset609, Ltmp413-Lfunc_begin0
	.quad	Lset609
	.short	21                              ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	168                             ; 296
	.byte	2                               ; 
	.byte	6                               ; DW_OP_deref
	.byte	143                             ; DW_OP_breg31
	.byte	248                             ; 248
	.byte	1                               ; 
	.byte	6                               ; DW_OP_deref
	.byte	16                              ; DW_OP_constu
	.byte	64                              ; 64
	.byte	30                              ; DW_OP_mul
	.byte	34                              ; DW_OP_plus
	.byte	35                              ; DW_OP_plus_uconst
	.byte	128                             ; 1024
	.byte	8                               ; 
	.byte	137                             ; DW_OP_breg25
	.byte	0                               ; 0
	.byte	50                              ; DW_OP_lit2
	.byte	30                              ; DW_OP_mul
	.byte	34                              ; DW_OP_plus
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc74:
.set Lset610, Ltmp405-Lfunc_begin0
	.quad	Lset610
.set Lset611, Ltmp406-Lfunc_begin0
	.quad	Lset611
	.short	3                               ; Loc expr size
	.byte	120                             ; DW_OP_breg8
	.byte	0                               ; 0
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc75:
.set Lset612, Ltmp417-Lfunc_begin0
	.quad	Lset612
.set Lset613, Ltmp418-Lfunc_begin0
	.quad	Lset613
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	66                              ; 66
.set Lset614, Ltmp429-Lfunc_begin0
	.quad	Lset614
.set Lset615, Ltmp446-Lfunc_begin0
	.quad	Lset615
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	66                              ; 66
	.quad	0
	.quad	0
Ldebug_loc76:
.set Lset616, Ltmp417-Lfunc_begin0
	.quad	Lset616
.set Lset617, Ltmp418-Lfunc_begin0
	.quad	Lset617
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	65                              ; 65
.set Lset618, Ltmp428-Lfunc_begin0
	.quad	Lset618
.set Lset619, Ltmp446-Lfunc_begin0
	.quad	Lset619
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	65                              ; 65
	.quad	0
	.quad	0
Ldebug_loc77:
.set Lset620, Ltmp417-Lfunc_begin0
	.quad	Lset620
.set Lset621, Ltmp418-Lfunc_begin0
	.quad	Lset621
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset622, Ltmp426-Lfunc_begin0
	.quad	Lset622
.set Lset623, Ltmp446-Lfunc_begin0
	.quad	Lset623
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
	.quad	0
	.quad	0
Ldebug_loc78:
.set Lset624, Ltmp417-Lfunc_begin0
	.quad	Lset624
.set Lset625, Ltmp418-Lfunc_begin0
	.quad	Lset625
	.short	1                               ; Loc expr size
	.byte	96                              ; DW_OP_reg16
.set Lset626, Ltmp426-Lfunc_begin0
	.quad	Lset626
.set Lset627, Ltmp446-Lfunc_begin0
	.quad	Lset627
	.short	1                               ; Loc expr size
	.byte	96                              ; DW_OP_reg16
	.quad	0
	.quad	0
Ldebug_loc79:
.set Lset628, Ltmp417-Lfunc_begin0
	.quad	Lset628
.set Lset629, Ltmp419-Lfunc_begin0
	.quad	Lset629
	.short	21                              ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	168                             ; 296
	.byte	2                               ; 
	.byte	6                               ; DW_OP_deref
	.byte	143                             ; DW_OP_breg31
	.byte	248                             ; 248
	.byte	1                               ; 
	.byte	6                               ; DW_OP_deref
	.byte	16                              ; DW_OP_constu
	.byte	64                              ; 64
	.byte	30                              ; DW_OP_mul
	.byte	34                              ; DW_OP_plus
	.byte	35                              ; DW_OP_plus_uconst
	.byte	128                             ; 1024
	.byte	8                               ; 
	.byte	121                             ; DW_OP_breg9
	.byte	0                               ; 0
	.byte	52                              ; DW_OP_lit4
	.byte	30                              ; DW_OP_mul
	.byte	34                              ; DW_OP_plus
	.byte	159                             ; DW_OP_stack_value
.set Lset630, Ltmp423-Lfunc_begin0
	.quad	Lset630
.set Lset631, Ltmp424-Lfunc_begin0
	.quad	Lset631
	.short	21                              ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	168                             ; 296
	.byte	2                               ; 
	.byte	6                               ; DW_OP_deref
	.byte	143                             ; DW_OP_breg31
	.byte	248                             ; 248
	.byte	1                               ; 
	.byte	6                               ; DW_OP_deref
	.byte	16                              ; DW_OP_constu
	.byte	64                              ; 64
	.byte	30                              ; DW_OP_mul
	.byte	34                              ; DW_OP_plus
	.byte	35                              ; DW_OP_plus_uconst
	.byte	128                             ; 1024
	.byte	8                               ; 
	.byte	121                             ; DW_OP_breg9
	.byte	0                               ; 0
	.byte	52                              ; DW_OP_lit4
	.byte	30                              ; DW_OP_mul
	.byte	34                              ; DW_OP_plus
	.byte	159                             ; DW_OP_stack_value
.set Lset632, Ltmp424-Lfunc_begin0
	.quad	Lset632
.set Lset633, Ltmp446-Lfunc_begin0
	.quad	Lset633
	.short	21                              ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	168                             ; 296
	.byte	2                               ; 
	.byte	6                               ; DW_OP_deref
	.byte	143                             ; DW_OP_breg31
	.byte	248                             ; 248
	.byte	1                               ; 
	.byte	6                               ; DW_OP_deref
	.byte	16                              ; DW_OP_constu
	.byte	64                              ; 64
	.byte	30                              ; DW_OP_mul
	.byte	34                              ; DW_OP_plus
	.byte	35                              ; DW_OP_plus_uconst
	.byte	128                             ; 1024
	.byte	8                               ; 
	.byte	121                             ; DW_OP_breg9
	.byte	0                               ; 0
	.byte	52                              ; DW_OP_lit4
	.byte	30                              ; DW_OP_mul
	.byte	34                              ; DW_OP_plus
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc80:
.set Lset634, Ltmp425-Lfunc_begin0
	.quad	Lset634
.set Lset635, Ltmp431-Lfunc_begin0
	.quad	Lset635
	.short	3                               ; Loc expr size
	.byte	122                             ; DW_OP_breg10
	.byte	0                               ; 0
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc81:
.set Lset636, Ltmp447-Lfunc_begin0
	.quad	Lset636
.set Lset637, Ltmp448-Lfunc_begin0
	.quad	Lset637
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	66                              ; 66
.set Lset638, Ltmp459-Lfunc_begin0
	.quad	Lset638
.set Lset639, Ltmp476-Lfunc_begin0
	.quad	Lset639
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	66                              ; 66
	.quad	0
	.quad	0
Ldebug_loc82:
.set Lset640, Ltmp447-Lfunc_begin0
	.quad	Lset640
.set Lset641, Ltmp448-Lfunc_begin0
	.quad	Lset641
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	65                              ; 65
.set Lset642, Ltmp458-Lfunc_begin0
	.quad	Lset642
.set Lset643, Ltmp476-Lfunc_begin0
	.quad	Lset643
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	65                              ; 65
	.quad	0
	.quad	0
Ldebug_loc83:
.set Lset644, Ltmp447-Lfunc_begin0
	.quad	Lset644
.set Lset645, Ltmp448-Lfunc_begin0
	.quad	Lset645
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset646, Ltmp456-Lfunc_begin0
	.quad	Lset646
.set Lset647, Ltmp476-Lfunc_begin0
	.quad	Lset647
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
	.quad	0
	.quad	0
Ldebug_loc84:
.set Lset648, Ltmp447-Lfunc_begin0
	.quad	Lset648
.set Lset649, Ltmp448-Lfunc_begin0
	.quad	Lset649
	.short	1                               ; Loc expr size
	.byte	96                              ; DW_OP_reg16
.set Lset650, Ltmp456-Lfunc_begin0
	.quad	Lset650
.set Lset651, Ltmp476-Lfunc_begin0
	.quad	Lset651
	.short	1                               ; Loc expr size
	.byte	96                              ; DW_OP_reg16
	.quad	0
	.quad	0
Ldebug_loc85:
.set Lset652, Ltmp447-Lfunc_begin0
	.quad	Lset652
.set Lset653, Ltmp449-Lfunc_begin0
	.quad	Lset653
	.short	21                              ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	168                             ; 296
	.byte	2                               ; 
	.byte	6                               ; DW_OP_deref
	.byte	143                             ; DW_OP_breg31
	.byte	248                             ; 248
	.byte	1                               ; 
	.byte	6                               ; DW_OP_deref
	.byte	16                              ; DW_OP_constu
	.byte	64                              ; 64
	.byte	30                              ; DW_OP_mul
	.byte	34                              ; DW_OP_plus
	.byte	35                              ; DW_OP_plus_uconst
	.byte	128                             ; 1024
	.byte	8                               ; 
	.byte	121                             ; DW_OP_breg9
	.byte	0                               ; 0
	.byte	56                              ; DW_OP_lit8
	.byte	30                              ; DW_OP_mul
	.byte	34                              ; DW_OP_plus
	.byte	159                             ; DW_OP_stack_value
.set Lset654, Ltmp453-Lfunc_begin0
	.quad	Lset654
.set Lset655, Ltmp454-Lfunc_begin0
	.quad	Lset655
	.short	21                              ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	168                             ; 296
	.byte	2                               ; 
	.byte	6                               ; DW_OP_deref
	.byte	143                             ; DW_OP_breg31
	.byte	248                             ; 248
	.byte	1                               ; 
	.byte	6                               ; DW_OP_deref
	.byte	16                              ; DW_OP_constu
	.byte	64                              ; 64
	.byte	30                              ; DW_OP_mul
	.byte	34                              ; DW_OP_plus
	.byte	35                              ; DW_OP_plus_uconst
	.byte	128                             ; 1024
	.byte	8                               ; 
	.byte	121                             ; DW_OP_breg9
	.byte	0                               ; 0
	.byte	56                              ; DW_OP_lit8
	.byte	30                              ; DW_OP_mul
	.byte	34                              ; DW_OP_plus
	.byte	159                             ; DW_OP_stack_value
.set Lset656, Ltmp454-Lfunc_begin0
	.quad	Lset656
.set Lset657, Ltmp476-Lfunc_begin0
	.quad	Lset657
	.short	21                              ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	168                             ; 296
	.byte	2                               ; 
	.byte	6                               ; DW_OP_deref
	.byte	143                             ; DW_OP_breg31
	.byte	248                             ; 248
	.byte	1                               ; 
	.byte	6                               ; DW_OP_deref
	.byte	16                              ; DW_OP_constu
	.byte	64                              ; 64
	.byte	30                              ; DW_OP_mul
	.byte	34                              ; DW_OP_plus
	.byte	35                              ; DW_OP_plus_uconst
	.byte	128                             ; 1024
	.byte	8                               ; 
	.byte	121                             ; DW_OP_breg9
	.byte	0                               ; 0
	.byte	56                              ; DW_OP_lit8
	.byte	30                              ; DW_OP_mul
	.byte	34                              ; DW_OP_plus
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc86:
.set Lset658, Ltmp455-Lfunc_begin0
	.quad	Lset658
.set Lset659, Ltmp461-Lfunc_begin0
	.quad	Lset659
	.short	3                               ; Loc expr size
	.byte	122                             ; DW_OP_breg10
	.byte	0                               ; 0
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
	.byte	52                              ; DW_TAG_variable
	.byte	0                               ; DW_CHILDREN_no
	.byte	2                               ; DW_AT_location
	.byte	23                              ; DW_FORM_sec_offset
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	9                               ; Abbreviation Code
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
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	10                              ; Abbreviation Code
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
	.byte	11                              ; Abbreviation Code
	.byte	5                               ; DW_TAG_formal_parameter
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
	.byte	12                              ; Abbreviation Code
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
	.byte	11                              ; DW_TAG_lexical_block
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	15                              ; Abbreviation Code
	.byte	11                              ; DW_TAG_lexical_block
	.byte	1                               ; DW_CHILDREN_yes
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	16                              ; Abbreviation Code
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
	.byte	17                              ; Abbreviation Code
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
	.byte	18                              ; Abbreviation Code
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
	.byte	19                              ; Abbreviation Code
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
	.byte	20                              ; Abbreviation Code
	.byte	5                               ; DW_TAG_formal_parameter
	.byte	0                               ; DW_CHILDREN_no
	.byte	2                               ; DW_AT_location
	.byte	24                              ; DW_FORM_exprloc
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	21                              ; Abbreviation Code
	.byte	72                              ; DW_TAG_call_site
	.byte	0                               ; DW_CHILDREN_no
	.byte	127                             ; DW_AT_call_origin
	.byte	19                              ; DW_FORM_ref4
	.ascii	"\202\001"                      ; DW_AT_call_tail_call
	.byte	25                              ; DW_FORM_flag_present
	.ascii	"\201\001"                      ; DW_AT_call_pc
	.byte	1                               ; DW_FORM_addr
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	22                              ; Abbreviation Code
	.byte	72                              ; DW_TAG_call_site
	.byte	1                               ; DW_CHILDREN_yes
	.byte	127                             ; DW_AT_call_origin
	.byte	19                              ; DW_FORM_ref4
	.ascii	"\202\001"                      ; DW_AT_call_tail_call
	.byte	25                              ; DW_FORM_flag_present
	.ascii	"\201\001"                      ; DW_AT_call_pc
	.byte	1                               ; DW_FORM_addr
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	23                              ; Abbreviation Code
	.byte	73                              ; DW_TAG_call_site_parameter
	.byte	0                               ; DW_CHILDREN_no
	.byte	2                               ; DW_AT_location
	.byte	24                              ; DW_FORM_exprloc
	.byte	126                             ; DW_AT_call_value
	.byte	24                              ; DW_FORM_exprloc
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	24                              ; Abbreviation Code
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
	.byte	25                              ; Abbreviation Code
	.byte	15                              ; DW_TAG_pointer_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	26                              ; Abbreviation Code
	.byte	38                              ; DW_TAG_const_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	27                              ; Abbreviation Code
	.byte	11                              ; DW_TAG_lexical_block
	.byte	1                               ; DW_CHILDREN_yes
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	28                              ; Abbreviation Code
	.byte	1                               ; DW_TAG_array_type
	.byte	1                               ; DW_CHILDREN_yes
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	29                              ; Abbreviation Code
	.byte	33                              ; DW_TAG_subrange_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	55                              ; DW_AT_count
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	30                              ; Abbreviation Code
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
	.byte	32                              ; Abbreviation Code
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
	.byte	33                              ; Abbreviation Code
	.byte	52                              ; DW_TAG_variable
	.byte	0                               ; DW_CHILDREN_no
	.byte	2                               ; DW_AT_location
	.byte	24                              ; DW_FORM_exprloc
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	34                              ; Abbreviation Code
	.byte	5                               ; DW_TAG_formal_parameter
	.byte	0                               ; DW_CHILDREN_no
	.byte	28                              ; DW_AT_const_value
	.byte	15                              ; DW_FORM_udata
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	35                              ; Abbreviation Code
	.byte	52                              ; DW_TAG_variable
	.byte	0                               ; DW_CHILDREN_no
	.byte	2                               ; DW_AT_location
	.byte	24                              ; DW_FORM_exprloc
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	5                               ; DW_FORM_data2
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	36                              ; Abbreviation Code
	.byte	52                              ; DW_TAG_variable
	.byte	0                               ; DW_CHILDREN_no
	.byte	2                               ; DW_AT_location
	.byte	23                              ; DW_FORM_sec_offset
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	5                               ; DW_FORM_data2
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	37                              ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	1                               ; DW_CHILDREN_yes
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	38                              ; Abbreviation Code
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
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	39                              ; Abbreviation Code
	.byte	52                              ; DW_TAG_variable
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	40                              ; Abbreviation Code
	.byte	72                              ; DW_TAG_call_site
	.byte	1                               ; DW_CHILDREN_yes
	.byte	127                             ; DW_AT_call_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	125                             ; DW_AT_call_return_pc
	.byte	1                               ; DW_FORM_addr
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	41                              ; Abbreviation Code
	.byte	72                              ; DW_TAG_call_site
	.byte	0                               ; DW_CHILDREN_no
	.byte	127                             ; DW_AT_call_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	125                             ; DW_AT_call_return_pc
	.byte	1                               ; DW_FORM_addr
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	42                              ; Abbreviation Code
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
	.byte	43                              ; Abbreviation Code
	.byte	5                               ; DW_TAG_formal_parameter
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	44                              ; Abbreviation Code
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
	.byte	45                              ; Abbreviation Code
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
	.byte	46                              ; Abbreviation Code
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
	.byte	47                              ; Abbreviation Code
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
.set Lset660, Ldebug_info_end0-Ldebug_info_start0 ; Length of Unit
	.long	Lset660
Ldebug_info_start0:
	.short	4                               ; DWARF version number
.set Lset661, Lsection_abbrev-Lsection_abbrev ; Offset Into Abbrev. Section
	.long	Lset661
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0xdc5 DW_TAG_compile_unit
	.long	0                               ; DW_AT_producer
	.short	12                              ; DW_AT_language
	.long	46                              ; DW_AT_name
	.long	54                              ; DW_AT_LLVM_sysroot
	.long	106                             ; DW_AT_APPLE_sdk
.set Lset662, Lline_table_start0-Lsection_line ; DW_AT_stmt_list
	.long	Lset662
	.long	117                             ; DW_AT_comp_dir
                                        ; DW_AT_APPLE_optimized
	.quad	Lfunc_begin0                    ; DW_AT_low_pc
.set Lset663, Lfunc_end6-Lfunc_begin0   ; DW_AT_high_pc
	.long	Lset663
	.byte	2                               ; Abbrev [2] 0x32:0xb DW_TAG_typedef
	.long	61                              ; DW_AT_type
	.long	171                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	30                              ; DW_AT_decl_line
	.byte	3                               ; Abbrev [3] 0x3d:0x7 DW_TAG_base_type
	.long	179                             ; DW_AT_name
	.byte	5                               ; DW_AT_encoding
	.byte	2                               ; DW_AT_byte_size
	.byte	3                               ; Abbrev [3] 0x44:0x7 DW_TAG_base_type
	.long	185                             ; DW_AT_name
	.byte	4                               ; DW_AT_encoding
	.byte	2                               ; DW_AT_byte_size
	.byte	2                               ; Abbrev [2] 0x4b:0xb DW_TAG_typedef
	.long	86                              ; DW_AT_type
	.long	194                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	31                              ; DW_AT_decl_line
	.byte	3                               ; Abbrev [3] 0x56:0x7 DW_TAG_base_type
	.long	203                             ; DW_AT_name
	.byte	7                               ; DW_AT_encoding
	.byte	8                               ; DW_AT_byte_size
	.byte	4                               ; Abbrev [4] 0x5d:0x5 DW_TAG_pointer_type
	.long	98                              ; DW_AT_type
	.byte	5                               ; Abbrev [5] 0x62:0x5 DW_TAG_const_type
	.long	103                             ; DW_AT_type
	.byte	2                               ; Abbrev [2] 0x67:0xb DW_TAG_typedef
	.long	114                             ; DW_AT_type
	.long	222                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	31                              ; DW_AT_decl_line
	.byte	3                               ; Abbrev [3] 0x72:0x7 DW_TAG_base_type
	.long	230                             ; DW_AT_name
	.byte	8                               ; DW_AT_encoding
	.byte	1                               ; DW_AT_byte_size
	.byte	4                               ; Abbrev [4] 0x79:0x5 DW_TAG_pointer_type
	.long	103                             ; DW_AT_type
	.byte	6                               ; Abbrev [6] 0x7e:0x26 DW_TAG_subprogram
	.quad	Lfunc_begin0                    ; DW_AT_low_pc
.set Lset664, Lfunc_end0-Lfunc_begin0   ; DW_AT_high_pc
	.long	Lset664
                                        ; DW_AT_APPLE_omit_frame_ptr
	.byte	1                               ; DW_AT_frame_base
	.byte	111
                                        ; DW_AT_call_all_calls
	.long	1538                            ; DW_AT_abstract_origin
	.byte	7                               ; Abbrev [7] 0x91:0x9 DW_TAG_formal_parameter
.set Lset665, Ldebug_loc0-Lsection_debug_loc ; DW_AT_location
	.long	Lset665
	.long	1550                            ; DW_AT_abstract_origin
	.byte	8                               ; Abbrev [8] 0x9a:0x9 DW_TAG_variable
.set Lset666, Ldebug_loc1-Lsection_debug_loc ; DW_AT_location
	.long	Lset666
	.long	1561                            ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	9                               ; Abbrev [9] 0xa4:0x1f4 DW_TAG_subprogram
	.quad	Lfunc_begin1                    ; DW_AT_low_pc
.set Lset667, Lfunc_end1-Lfunc_begin1   ; DW_AT_high_pc
	.long	Lset667
                                        ; DW_AT_APPLE_omit_frame_ptr
	.byte	1                               ; DW_AT_frame_base
	.byte	111
                                        ; DW_AT_call_all_calls
	.long	256                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	17                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	699                             ; DW_AT_type
                                        ; DW_AT_external
                                        ; DW_AT_APPLE_optimized
	.byte	10                              ; Abbrev [10] 0xbd:0xf DW_TAG_formal_parameter
.set Lset668, Ldebug_loc2-Lsection_debug_loc ; DW_AT_location
	.long	Lset668
	.long	298                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	17                              ; DW_AT_decl_line
	.long	699                             ; DW_AT_type
	.byte	11                              ; Abbrev [11] 0xcc:0xd DW_TAG_formal_parameter
	.byte	1                               ; DW_AT_location
	.byte	81
	.long	518                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	17                              ; DW_AT_decl_line
	.long	699                             ; DW_AT_type
	.byte	11                              ; Abbrev [11] 0xd9:0xd DW_TAG_formal_parameter
	.byte	1                               ; DW_AT_location
	.byte	82
	.long	300                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	17                              ; DW_AT_decl_line
	.long	699                             ; DW_AT_type
	.byte	12                              ; Abbrev [12] 0xe6:0xf DW_TAG_variable
.set Lset669, Ldebug_loc3-Lsection_debug_loc ; DW_AT_location
	.long	Lset669
	.long	585                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	26                              ; DW_AT_decl_line
	.long	1305                            ; DW_AT_type
	.byte	12                              ; Abbrev [12] 0xf5:0xf DW_TAG_variable
.set Lset670, Ldebug_loc4-Lsection_debug_loc ; DW_AT_location
	.long	Lset670
	.long	589                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	26                              ; DW_AT_decl_line
	.long	3167                            ; DW_AT_type
	.byte	12                              ; Abbrev [12] 0x104:0xf DW_TAG_variable
.set Lset671, Ldebug_loc5-Lsection_debug_loc ; DW_AT_location
	.long	Lset671
	.long	601                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	27                              ; DW_AT_decl_line
	.long	1305                            ; DW_AT_type
	.byte	12                              ; Abbrev [12] 0x113:0xf DW_TAG_variable
.set Lset672, Ldebug_loc6-Lsection_debug_loc ; DW_AT_location
	.long	Lset672
	.long	605                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	27                              ; DW_AT_decl_line
	.long	3167                            ; DW_AT_type
	.byte	12                              ; Abbrev [12] 0x122:0xf DW_TAG_variable
.set Lset673, Ldebug_loc7-Lsection_debug_loc ; DW_AT_location
	.long	Lset673
	.long	609                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	28                              ; DW_AT_decl_line
	.long	1305                            ; DW_AT_type
	.byte	12                              ; Abbrev [12] 0x131:0xf DW_TAG_variable
.set Lset674, Ldebug_loc8-Lsection_debug_loc ; DW_AT_location
	.long	Lset674
	.long	613                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	28                              ; DW_AT_decl_line
	.long	3167                            ; DW_AT_type
	.byte	12                              ; Abbrev [12] 0x140:0xf DW_TAG_variable
.set Lset675, Ldebug_loc9-Lsection_debug_loc ; DW_AT_location
	.long	Lset675
	.long	617                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	30                              ; DW_AT_decl_line
	.long	699                             ; DW_AT_type
	.byte	12                              ; Abbrev [12] 0x14f:0xf DW_TAG_variable
.set Lset676, Ldebug_loc10-Lsection_debug_loc ; DW_AT_location
	.long	Lset676
	.long	624                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	31                              ; DW_AT_decl_line
	.long	699                             ; DW_AT_type
	.byte	12                              ; Abbrev [12] 0x15e:0xf DW_TAG_variable
.set Lset677, Ldebug_loc11-Lsection_debug_loc ; DW_AT_location
	.long	Lset677
	.long	631                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	49                              ; DW_AT_decl_line
	.long	3167                            ; DW_AT_type
	.byte	12                              ; Abbrev [12] 0x16d:0xf DW_TAG_variable
.set Lset678, Ldebug_loc12-Lsection_debug_loc ; DW_AT_location
	.long	Lset678
	.long	635                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	48                              ; DW_AT_decl_line
	.long	1305                            ; DW_AT_type
	.byte	12                              ; Abbrev [12] 0x17c:0xf DW_TAG_variable
.set Lset679, Ldebug_loc13-Lsection_debug_loc ; DW_AT_location
	.long	Lset679
	.long	639                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	66                              ; DW_AT_decl_line
	.long	3167                            ; DW_AT_type
	.byte	12                              ; Abbrev [12] 0x18b:0xf DW_TAG_variable
.set Lset680, Ldebug_loc16-Lsection_debug_loc ; DW_AT_location
	.long	Lset680
	.long	645                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	69                              ; DW_AT_decl_line
	.long	699                             ; DW_AT_type
	.byte	12                              ; Abbrev [12] 0x19a:0xf DW_TAG_variable
.set Lset681, Ldebug_loc17-Lsection_debug_loc ; DW_AT_location
	.long	Lset681
	.long	652                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	72                              ; DW_AT_decl_line
	.long	1305                            ; DW_AT_type
	.byte	12                              ; Abbrev [12] 0x1a9:0xf DW_TAG_variable
.set Lset682, Ldebug_loc18-Lsection_debug_loc ; DW_AT_location
	.long	Lset682
	.long	656                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	76                              ; DW_AT_decl_line
	.long	3167                            ; DW_AT_type
	.byte	13                              ; Abbrev [13] 0x1b8:0xb DW_TAG_variable
	.long	663                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	85                              ; DW_AT_decl_line
	.long	699                             ; DW_AT_type
	.byte	14                              ; Abbrev [14] 0x1c3:0x36 DW_TAG_lexical_block
	.quad	Ltmp28                          ; DW_AT_low_pc
.set Lset683, Ltmp34-Ltmp28             ; DW_AT_high_pc
	.long	Lset683
	.byte	12                              ; Abbrev [12] 0x1d0:0xf DW_TAG_variable
.set Lset684, Ldebug_loc14-Lsection_debug_loc ; DW_AT_location
	.long	Lset684
	.long	643                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	67                              ; DW_AT_decl_line
	.long	3167                            ; DW_AT_type
	.byte	14                              ; Abbrev [14] 0x1df:0x19 DW_TAG_lexical_block
	.quad	Ltmp29                          ; DW_AT_low_pc
.set Lset685, Ltmp32-Ltmp29             ; DW_AT_high_pc
	.long	Lset685
	.byte	13                              ; Abbrev [13] 0x1ec:0xb DW_TAG_variable
	.long	658                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	67                              ; DW_AT_decl_line
	.long	1305                            ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	15                              ; Abbrev [15] 0x1f9:0x2e DW_TAG_lexical_block
.set Lset686, Ldebug_ranges0-Ldebug_range ; DW_AT_ranges
	.long	Lset686
	.byte	12                              ; Abbrev [12] 0x1fe:0xf DW_TAG_variable
.set Lset687, Ldebug_loc15-Lsection_debug_loc ; DW_AT_location
	.long	Lset687
	.long	643                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	68                              ; DW_AT_decl_line
	.long	3167                            ; DW_AT_type
	.byte	14                              ; Abbrev [14] 0x20d:0x19 DW_TAG_lexical_block
	.quad	Ltmp62                          ; DW_AT_low_pc
.set Lset688, Ltmp65-Ltmp62             ; DW_AT_high_pc
	.long	Lset688
	.byte	13                              ; Abbrev [13] 0x21a:0xb DW_TAG_variable
	.long	658                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	68                              ; DW_AT_decl_line
	.long	1305                            ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	14                              ; Abbrev [14] 0x227:0x38 DW_TAG_lexical_block
	.quad	Ltmp74                          ; DW_AT_low_pc
.set Lset689, Ltmp77-Ltmp74             ; DW_AT_high_pc
	.long	Lset689
	.byte	12                              ; Abbrev [12] 0x234:0xf DW_TAG_variable
.set Lset690, Ldebug_loc19-Lsection_debug_loc ; DW_AT_location
	.long	Lset690
	.long	643                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	78                              ; DW_AT_decl_line
	.long	3167                            ; DW_AT_type
	.byte	14                              ; Abbrev [14] 0x243:0x1b DW_TAG_lexical_block
	.quad	Ltmp74                          ; DW_AT_low_pc
.set Lset691, Ltmp77-Ltmp74             ; DW_AT_high_pc
	.long	Lset691
	.byte	16                              ; Abbrev [16] 0x250:0xd DW_TAG_variable
	.byte	1                               ; DW_AT_location
	.byte	89
	.long	658                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	78                              ; DW_AT_decl_line
	.long	1305                            ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	14                              ; Abbrev [14] 0x25f:0x38 DW_TAG_lexical_block
	.quad	Ltmp85                          ; DW_AT_low_pc
.set Lset692, Ltmp89-Ltmp85             ; DW_AT_high_pc
	.long	Lset692
	.byte	12                              ; Abbrev [12] 0x26c:0xf DW_TAG_variable
.set Lset693, Ldebug_loc20-Lsection_debug_loc ; DW_AT_location
	.long	Lset693
	.long	643                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	81                              ; DW_AT_decl_line
	.long	3167                            ; DW_AT_type
	.byte	14                              ; Abbrev [14] 0x27b:0x1b DW_TAG_lexical_block
	.quad	Ltmp86                          ; DW_AT_low_pc
.set Lset694, Ltmp89-Ltmp86             ; DW_AT_high_pc
	.long	Lset694
	.byte	16                              ; Abbrev [16] 0x288:0xd DW_TAG_variable
	.byte	1                               ; DW_AT_location
	.byte	89
	.long	658                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	81                              ; DW_AT_decl_line
	.long	1305                            ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	17                              ; Abbrev [17] 0x298:0x23 DW_TAG_subprogram
	.long	265                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	92                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	699                             ; DW_AT_type
                                        ; DW_AT_APPLE_optimized
	.byte	1                               ; DW_AT_inline
	.byte	18                              ; Abbrev [18] 0x2a4:0xb DW_TAG_formal_parameter
	.long	298                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	92                              ; DW_AT_decl_line
	.long	699                             ; DW_AT_type
	.byte	18                              ; Abbrev [18] 0x2af:0xb DW_TAG_formal_parameter
	.long	300                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	92                              ; DW_AT_decl_line
	.long	699                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x2bb:0xb DW_TAG_typedef
	.long	710                             ; DW_AT_type
	.long	274                             ; DW_AT_name
	.byte	5                               ; DW_AT_decl_file
	.byte	31                              ; DW_AT_decl_line
	.byte	3                               ; Abbrev [3] 0x2c6:0x7 DW_TAG_base_type
	.long	283                             ; DW_AT_name
	.byte	7                               ; DW_AT_encoding
	.byte	2                               ; DW_AT_byte_size
	.byte	17                              ; Abbrev [17] 0x2cd:0x23 DW_TAG_subprogram
	.long	302                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	97                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	699                             ; DW_AT_type
                                        ; DW_AT_APPLE_optimized
	.byte	1                               ; DW_AT_inline
	.byte	18                              ; Abbrev [18] 0x2d9:0xb DW_TAG_formal_parameter
	.long	298                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	97                              ; DW_AT_decl_line
	.long	699                             ; DW_AT_type
	.byte	18                              ; Abbrev [18] 0x2e4:0xb DW_TAG_formal_parameter
	.long	300                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	97                              ; DW_AT_decl_line
	.long	699                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	9                               ; Abbrev [9] 0x2f0:0xf4 DW_TAG_subprogram
	.quad	Lfunc_begin2                    ; DW_AT_low_pc
.set Lset695, Lfunc_end2-Lfunc_begin2   ; DW_AT_high_pc
	.long	Lset695
                                        ; DW_AT_APPLE_omit_frame_ptr
	.byte	1                               ; DW_AT_frame_base
	.byte	111
                                        ; DW_AT_call_all_calls
	.long	311                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	103                             ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	699                             ; DW_AT_type
                                        ; DW_AT_external
                                        ; DW_AT_APPLE_optimized
	.byte	10                              ; Abbrev [10] 0x309:0xf DW_TAG_formal_parameter
.set Lset696, Ldebug_loc21-Lsection_debug_loc ; DW_AT_location
	.long	Lset696
	.long	298                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	103                             ; DW_AT_decl_line
	.long	699                             ; DW_AT_type
	.byte	10                              ; Abbrev [10] 0x318:0xf DW_TAG_formal_parameter
.set Lset697, Ldebug_loc22-Lsection_debug_loc ; DW_AT_location
	.long	Lset697
	.long	518                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	103                             ; DW_AT_decl_line
	.long	699                             ; DW_AT_type
	.byte	10                              ; Abbrev [10] 0x327:0xf DW_TAG_formal_parameter
.set Lset698, Ldebug_loc23-Lsection_debug_loc ; DW_AT_location
	.long	Lset698
	.long	300                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	103                             ; DW_AT_decl_line
	.long	699                             ; DW_AT_type
	.byte	11                              ; Abbrev [11] 0x336:0xd DW_TAG_formal_parameter
	.byte	1                               ; DW_AT_location
	.byte	83
	.long	520                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	103                             ; DW_AT_decl_line
	.long	1467                            ; DW_AT_type
	.byte	19                              ; Abbrev [19] 0x343:0x23 DW_TAG_inlined_subroutine
	.long	664                             ; DW_AT_abstract_origin
	.quad	Ltmp104                         ; DW_AT_low_pc
.set Lset699, Ltmp106-Ltmp104           ; DW_AT_high_pc
	.long	Lset699
	.byte	4                               ; DW_AT_call_file
	.byte	108                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	20                              ; Abbrev [20] 0x357:0x7 DW_TAG_formal_parameter
	.byte	1                               ; DW_AT_location
	.byte	80
	.long	676                             ; DW_AT_abstract_origin
	.byte	20                              ; Abbrev [20] 0x35e:0x7 DW_TAG_formal_parameter
	.byte	1                               ; DW_AT_location
	.byte	82
	.long	687                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	19                              ; Abbrev [19] 0x366:0x23 DW_TAG_inlined_subroutine
	.long	717                             ; DW_AT_abstract_origin
	.quad	Ltmp106                         ; DW_AT_low_pc
.set Lset700, Ltmp108-Ltmp106           ; DW_AT_high_pc
	.long	Lset700
	.byte	4                               ; DW_AT_call_file
	.byte	109                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	20                              ; Abbrev [20] 0x37a:0x7 DW_TAG_formal_parameter
	.byte	1                               ; DW_AT_location
	.byte	80
	.long	729                             ; DW_AT_abstract_origin
	.byte	20                              ; Abbrev [20] 0x381:0x7 DW_TAG_formal_parameter
	.byte	1                               ; DW_AT_location
	.byte	82
	.long	740                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	21                              ; Abbrev [21] 0x389:0xd DW_TAG_call_site
	.long	164                             ; DW_AT_call_origin
                                        ; DW_AT_call_tail_call
	.quad	Ltmp98                          ; DW_AT_call_pc
	.byte	21                              ; Abbrev [21] 0x396:0xd DW_TAG_call_site
	.long	164                             ; DW_AT_call_origin
                                        ; DW_AT_call_tail_call
	.quad	Ltmp100                         ; DW_AT_call_pc
	.byte	22                              ; Abbrev [22] 0x3a3:0x16 DW_TAG_call_site
	.long	164                             ; DW_AT_call_origin
                                        ; DW_AT_call_tail_call
	.quad	Ltmp111                         ; DW_AT_call_pc
	.byte	23                              ; Abbrev [23] 0x3b0:0x8 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	82
	.byte	4                               ; DW_AT_call_value
	.byte	16
	.ascii	"\200\200\002"
	.byte	0                               ; End Of Children Mark
	.byte	22                              ; Abbrev [22] 0x3b9:0x15 DW_TAG_call_site
	.long	164                             ; DW_AT_call_origin
                                        ; DW_AT_call_tail_call
	.quad	Ltmp113                         ; DW_AT_call_pc
	.byte	23                              ; Abbrev [23] 0x3c6:0x7 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	81
	.byte	3                               ; DW_AT_call_value
	.byte	16
	.ascii	"\200\177"
	.byte	0                               ; End Of Children Mark
	.byte	22                              ; Abbrev [22] 0x3ce:0x15 DW_TAG_call_site
	.long	164                             ; DW_AT_call_origin
                                        ; DW_AT_call_tail_call
	.quad	Ltmp115                         ; DW_AT_call_pc
	.byte	23                              ; Abbrev [23] 0x3db:0x7 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	80
	.byte	3                               ; DW_AT_call_value
	.byte	16
	.ascii	"\200\177"
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0x3e4:0x35 DW_TAG_subprogram
	.quad	Lfunc_begin3                    ; DW_AT_low_pc
.set Lset701, Lfunc_end3-Lfunc_begin3   ; DW_AT_high_pc
	.long	Lset701
                                        ; DW_AT_APPLE_omit_frame_ptr
	.byte	1                               ; DW_AT_frame_base
	.byte	111
                                        ; DW_AT_call_all_calls
	.long	1410                            ; DW_AT_abstract_origin
	.byte	7                               ; Abbrev [7] 0x3f7:0x9 DW_TAG_formal_parameter
.set Lset702, Ldebug_loc24-Lsection_debug_loc ; DW_AT_location
	.long	Lset702
	.long	1422                            ; DW_AT_abstract_origin
	.byte	20                              ; Abbrev [20] 0x400:0x8 DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	144
	.byte	65
	.long	1433                            ; DW_AT_abstract_origin
	.byte	7                               ; Abbrev [7] 0x408:0x9 DW_TAG_formal_parameter
.set Lset703, Ldebug_loc25-Lsection_debug_loc ; DW_AT_location
	.long	Lset703
	.long	1444                            ; DW_AT_abstract_origin
	.byte	20                              ; Abbrev [20] 0x411:0x7 DW_TAG_formal_parameter
	.byte	1                               ; DW_AT_location
	.byte	80
	.long	1455                            ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0x419:0x35 DW_TAG_subprogram
	.quad	Lfunc_begin4                    ; DW_AT_low_pc
.set Lset704, Lfunc_end4-Lfunc_begin4   ; DW_AT_high_pc
	.long	Lset704
                                        ; DW_AT_APPLE_omit_frame_ptr
	.byte	1                               ; DW_AT_frame_base
	.byte	111
                                        ; DW_AT_call_all_calls
	.long	1474                            ; DW_AT_abstract_origin
	.byte	7                               ; Abbrev [7] 0x42c:0x9 DW_TAG_formal_parameter
.set Lset705, Ldebug_loc26-Lsection_debug_loc ; DW_AT_location
	.long	Lset705
	.long	1486                            ; DW_AT_abstract_origin
	.byte	20                              ; Abbrev [20] 0x435:0x8 DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	144
	.byte	65
	.long	1497                            ; DW_AT_abstract_origin
	.byte	7                               ; Abbrev [7] 0x43d:0x9 DW_TAG_formal_parameter
.set Lset706, Ldebug_loc27-Lsection_debug_loc ; DW_AT_location
	.long	Lset706
	.long	1508                            ; DW_AT_abstract_origin
	.byte	20                              ; Abbrev [20] 0x446:0x7 DW_TAG_formal_parameter
	.byte	1                               ; DW_AT_location
	.byte	80
	.long	1519                            ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0x44e:0x35 DW_TAG_subprogram
	.quad	Lfunc_begin5                    ; DW_AT_low_pc
.set Lset707, Lfunc_end5-Lfunc_begin5   ; DW_AT_high_pc
	.long	Lset707
                                        ; DW_AT_APPLE_omit_frame_ptr
	.byte	1                               ; DW_AT_frame_base
	.byte	111
                                        ; DW_AT_call_all_calls
	.long	1573                            ; DW_AT_abstract_origin
	.byte	7                               ; Abbrev [7] 0x461:0x9 DW_TAG_formal_parameter
.set Lset708, Ldebug_loc28-Lsection_debug_loc ; DW_AT_location
	.long	Lset708
	.long	1585                            ; DW_AT_abstract_origin
	.byte	20                              ; Abbrev [20] 0x46a:0x8 DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	144
	.byte	65
	.long	1596                            ; DW_AT_abstract_origin
	.byte	7                               ; Abbrev [7] 0x472:0x9 DW_TAG_formal_parameter
.set Lset709, Ldebug_loc29-Lsection_debug_loc ; DW_AT_location
	.long	Lset709
	.long	1607                            ; DW_AT_abstract_origin
	.byte	20                              ; Abbrev [20] 0x47b:0x7 DW_TAG_formal_parameter
	.byte	1                               ; DW_AT_location
	.byte	80
	.long	1618                            ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	24                              ; Abbrev [24] 0x483:0x35 DW_TAG_subprogram
	.long	362                             ; DW_AT_name
	.byte	6                               ; DW_AT_decl_file
	.byte	41                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_APPLE_optimized
	.byte	1                               ; DW_AT_inline
	.byte	18                              ; Abbrev [18] 0x48b:0xb DW_TAG_formal_parameter
	.long	374                             ; DW_AT_name
	.byte	6                               ; DW_AT_decl_file
	.byte	41                              ; DW_AT_decl_line
	.long	1208                            ; DW_AT_type
	.byte	18                              ; Abbrev [18] 0x496:0xb DW_TAG_formal_parameter
	.long	378                             ; DW_AT_name
	.byte	6                               ; DW_AT_decl_file
	.byte	41                              ; DW_AT_decl_line
	.long	1209                            ; DW_AT_type
	.byte	18                              ; Abbrev [18] 0x4a1:0xb DW_TAG_formal_parameter
	.long	382                             ; DW_AT_name
	.byte	6                               ; DW_AT_decl_file
	.byte	41                              ; DW_AT_decl_line
	.long	75                              ; DW_AT_type
	.byte	13                              ; Abbrev [13] 0x4ac:0xb DW_TAG_variable
	.long	389                             ; DW_AT_name
	.byte	6                               ; DW_AT_decl_file
	.byte	42                              ; DW_AT_decl_line
	.long	75                              ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	25                              ; Abbrev [25] 0x4b8:0x1 DW_TAG_pointer_type
	.byte	4                               ; Abbrev [4] 0x4b9:0x5 DW_TAG_pointer_type
	.long	1214                            ; DW_AT_type
	.byte	26                              ; Abbrev [26] 0x4be:0x1 DW_TAG_const_type
	.byte	24                              ; Abbrev [24] 0x4bf:0x5a DW_TAG_subprogram
	.long	395                             ; DW_AT_name
	.byte	6                               ; DW_AT_decl_file
	.byte	49                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_APPLE_optimized
	.byte	1                               ; DW_AT_inline
	.byte	18                              ; Abbrev [18] 0x4c7:0xb DW_TAG_formal_parameter
	.long	374                             ; DW_AT_name
	.byte	6                               ; DW_AT_decl_file
	.byte	49                              ; DW_AT_decl_line
	.long	121                             ; DW_AT_type
	.byte	18                              ; Abbrev [18] 0x4d2:0xb DW_TAG_formal_parameter
	.long	406                             ; DW_AT_name
	.byte	6                               ; DW_AT_decl_file
	.byte	49                              ; DW_AT_decl_line
	.long	1305                            ; DW_AT_type
	.byte	18                              ; Abbrev [18] 0x4dd:0xb DW_TAG_formal_parameter
	.long	436                             ; DW_AT_name
	.byte	6                               ; DW_AT_decl_file
	.byte	49                              ; DW_AT_decl_line
	.long	1305                            ; DW_AT_type
	.byte	27                              ; Abbrev [27] 0x4e8:0x30 DW_TAG_lexical_block
	.byte	13                              ; Abbrev [13] 0x4e9:0xb DW_TAG_variable
	.long	378                             ; DW_AT_name
	.byte	6                               ; DW_AT_decl_file
	.byte	51                              ; DW_AT_decl_line
	.long	1323                            ; DW_AT_type
	.byte	13                              ; Abbrev [13] 0x4f4:0xb DW_TAG_variable
	.long	463                             ; DW_AT_name
	.byte	6                               ; DW_AT_decl_file
	.byte	53                              ; DW_AT_decl_line
	.long	1305                            ; DW_AT_type
	.byte	27                              ; Abbrev [27] 0x4ff:0x18 DW_TAG_lexical_block
	.byte	13                              ; Abbrev [13] 0x500:0xb DW_TAG_variable
	.long	468                             ; DW_AT_name
	.byte	6                               ; DW_AT_decl_file
	.byte	54                              ; DW_AT_decl_line
	.long	1305                            ; DW_AT_type
	.byte	13                              ; Abbrev [13] 0x50b:0xb DW_TAG_variable
	.long	473                             ; DW_AT_name
	.byte	6                               ; DW_AT_decl_file
	.byte	54                              ; DW_AT_decl_line
	.long	1305                            ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x519:0xb DW_TAG_typedef
	.long	1316                            ; DW_AT_type
	.long	414                             ; DW_AT_name
	.byte	7                               ; DW_AT_decl_file
	.byte	31                              ; DW_AT_decl_line
	.byte	3                               ; Abbrev [3] 0x524:0x7 DW_TAG_base_type
	.long	423                             ; DW_AT_name
	.byte	7                               ; DW_AT_encoding
	.byte	4                               ; DW_AT_byte_size
	.byte	28                              ; Abbrev [28] 0x52b:0xc DW_TAG_array_type
	.long	103                             ; DW_AT_type
	.byte	29                              ; Abbrev [29] 0x530:0x6 DW_TAG_subrange_type
	.long	1335                            ; DW_AT_type
	.byte	64                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	30                              ; Abbrev [30] 0x537:0x7 DW_TAG_base_type
	.long	443                             ; DW_AT_name
	.byte	8                               ; DW_AT_byte_size
	.byte	7                               ; DW_AT_encoding
	.byte	17                              ; Abbrev [17] 0x53e:0x44 DW_TAG_subprogram
	.long	478                             ; DW_AT_name
	.byte	6                               ; DW_AT_decl_file
	.byte	65                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	75                              ; DW_AT_type
                                        ; DW_AT_APPLE_optimized
	.byte	1                               ; DW_AT_inline
	.byte	18                              ; Abbrev [18] 0x54a:0xb DW_TAG_formal_parameter
	.long	494                             ; DW_AT_name
	.byte	6                               ; DW_AT_decl_file
	.byte	65                              ; DW_AT_decl_line
	.long	1305                            ; DW_AT_type
	.byte	18                              ; Abbrev [18] 0x555:0xb DW_TAG_formal_parameter
	.long	498                             ; DW_AT_name
	.byte	6                               ; DW_AT_decl_file
	.byte	65                              ; DW_AT_decl_line
	.long	1305                            ; DW_AT_type
	.byte	18                              ; Abbrev [18] 0x560:0xb DW_TAG_formal_parameter
	.long	500                             ; DW_AT_name
	.byte	6                               ; DW_AT_decl_file
	.byte	65                              ; DW_AT_decl_line
	.long	1305                            ; DW_AT_type
	.byte	13                              ; Abbrev [13] 0x56b:0xb DW_TAG_variable
	.long	509                             ; DW_AT_name
	.byte	6                               ; DW_AT_decl_file
	.byte	66                              ; DW_AT_decl_line
	.long	1305                            ; DW_AT_type
	.byte	13                              ; Abbrev [13] 0x576:0xb DW_TAG_variable
	.long	514                             ; DW_AT_name
	.byte	6                               ; DW_AT_decl_file
	.byte	69                              ; DW_AT_decl_line
	.long	75                              ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	31                              ; Abbrev [31] 0x582:0x39 DW_TAG_subprogram
	.long	326                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	117                             ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	68                              ; DW_AT_type
                                        ; DW_AT_external
                                        ; DW_AT_APPLE_optimized
	.byte	1                               ; DW_AT_inline
	.byte	18                              ; Abbrev [18] 0x58e:0xb DW_TAG_formal_parameter
	.long	298                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	117                             ; DW_AT_decl_line
	.long	68                              ; DW_AT_type
	.byte	18                              ; Abbrev [18] 0x599:0xb DW_TAG_formal_parameter
	.long	518                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	117                             ; DW_AT_decl_line
	.long	68                              ; DW_AT_type
	.byte	18                              ; Abbrev [18] 0x5a4:0xb DW_TAG_formal_parameter
	.long	300                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	117                             ; DW_AT_decl_line
	.long	68                              ; DW_AT_type
	.byte	18                              ; Abbrev [18] 0x5af:0xb DW_TAG_formal_parameter
	.long	520                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	117                             ; DW_AT_decl_line
	.long	1467                            ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	3                               ; Abbrev [3] 0x5bb:0x7 DW_TAG_base_type
	.long	528                             ; DW_AT_name
	.byte	5                               ; DW_AT_encoding
	.byte	4                               ; DW_AT_byte_size
	.byte	31                              ; Abbrev [31] 0x5c2:0x39 DW_TAG_subprogram
	.long	338                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	131                             ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	1531                            ; DW_AT_type
                                        ; DW_AT_external
                                        ; DW_AT_APPLE_optimized
	.byte	1                               ; DW_AT_inline
	.byte	18                              ; Abbrev [18] 0x5ce:0xb DW_TAG_formal_parameter
	.long	298                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	131                             ; DW_AT_decl_line
	.long	1531                            ; DW_AT_type
	.byte	18                              ; Abbrev [18] 0x5d9:0xb DW_TAG_formal_parameter
	.long	518                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	131                             ; DW_AT_decl_line
	.long	1531                            ; DW_AT_type
	.byte	18                              ; Abbrev [18] 0x5e4:0xb DW_TAG_formal_parameter
	.long	300                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	131                             ; DW_AT_decl_line
	.long	1531                            ; DW_AT_type
	.byte	18                              ; Abbrev [18] 0x5ef:0xb DW_TAG_formal_parameter
	.long	520                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	131                             ; DW_AT_decl_line
	.long	1467                            ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	3                               ; Abbrev [3] 0x5fb:0x7 DW_TAG_base_type
	.long	532                             ; DW_AT_name
	.byte	4                               ; DW_AT_encoding
	.byte	4                               ; DW_AT_byte_size
	.byte	31                              ; Abbrev [31] 0x602:0x23 DW_TAG_subprogram
	.long	244                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	9                               ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	1531                            ; DW_AT_type
                                        ; DW_AT_external
                                        ; DW_AT_APPLE_optimized
	.byte	1                               ; DW_AT_inline
	.byte	18                              ; Abbrev [18] 0x60e:0xb DW_TAG_formal_parameter
	.long	298                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	9                               ; DW_AT_decl_line
	.long	1305                            ; DW_AT_type
	.byte	13                              ; Abbrev [13] 0x619:0xb DW_TAG_variable
	.long	538                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	12                              ; DW_AT_decl_line
	.long	1531                            ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	31                              ; Abbrev [31] 0x625:0x39 DW_TAG_subprogram
	.long	350                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	145                             ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	1630                            ; DW_AT_type
                                        ; DW_AT_external
                                        ; DW_AT_APPLE_optimized
	.byte	1                               ; DW_AT_inline
	.byte	18                              ; Abbrev [18] 0x631:0xb DW_TAG_formal_parameter
	.long	298                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	145                             ; DW_AT_decl_line
	.long	1630                            ; DW_AT_type
	.byte	18                              ; Abbrev [18] 0x63c:0xb DW_TAG_formal_parameter
	.long	518                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	145                             ; DW_AT_decl_line
	.long	1630                            ; DW_AT_type
	.byte	18                              ; Abbrev [18] 0x647:0xb DW_TAG_formal_parameter
	.long	300                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	145                             ; DW_AT_decl_line
	.long	1630                            ; DW_AT_type
	.byte	18                              ; Abbrev [18] 0x652:0xb DW_TAG_formal_parameter
	.long	520                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	145                             ; DW_AT_decl_line
	.long	1467                            ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	3                               ; Abbrev [3] 0x65e:0x7 DW_TAG_base_type
	.long	540                             ; DW_AT_name
	.byte	4                               ; DW_AT_encoding
	.byte	8                               ; DW_AT_byte_size
	.byte	32                              ; Abbrev [32] 0x665:0x5de DW_TAG_subprogram
	.quad	Lfunc_begin6                    ; DW_AT_low_pc
.set Lset710, Lfunc_end6-Lfunc_begin6   ; DW_AT_high_pc
	.long	Lset710
	.byte	1                               ; DW_AT_frame_base
	.byte	109
                                        ; DW_AT_call_all_calls
	.long	547                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	159                             ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_external
                                        ; DW_AT_APPLE_optimized
	.byte	10                              ; Abbrev [10] 0x67a:0xf DW_TAG_formal_parameter
.set Lset711, Ldebug_loc30-Lsection_debug_loc ; DW_AT_location
	.long	Lset711
	.long	726                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	159                             ; DW_AT_decl_line
	.long	3420                            ; DW_AT_type
	.byte	10                              ; Abbrev [10] 0x689:0xf DW_TAG_formal_parameter
.set Lset712, Ldebug_loc31-Lsection_debug_loc ; DW_AT_location
	.long	Lset712
	.long	742                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	159                             ; DW_AT_decl_line
	.long	75                              ; DW_AT_type
	.byte	12                              ; Abbrev [12] 0x698:0xf DW_TAG_variable
.set Lset713, Ldebug_loc32-Lsection_debug_loc ; DW_AT_location
	.long	Lset713
	.long	520                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	165                             ; DW_AT_decl_line
	.long	1467                            ; DW_AT_type
	.byte	12                              ; Abbrev [12] 0x6a7:0xf DW_TAG_variable
.set Lset714, Ldebug_loc33-Lsection_debug_loc ; DW_AT_location
	.long	Lset714
	.long	750                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	179                             ; DW_AT_decl_line
	.long	1305                            ; DW_AT_type
	.byte	12                              ; Abbrev [12] 0x6b6:0xf DW_TAG_variable
.set Lset715, Ldebug_loc34-Lsection_debug_loc ; DW_AT_location
	.long	Lset715
	.long	755                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	179                             ; DW_AT_decl_line
	.long	1305                            ; DW_AT_type
	.byte	12                              ; Abbrev [12] 0x6c5:0xf DW_TAG_variable
.set Lset716, Ldebug_loc35-Lsection_debug_loc ; DW_AT_location
	.long	Lset716
	.long	762                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	179                             ; DW_AT_decl_line
	.long	1305                            ; DW_AT_type
	.byte	12                              ; Abbrev [12] 0x6d4:0xf DW_TAG_variable
.set Lset717, Ldebug_loc36-Lsection_debug_loc ; DW_AT_location
	.long	Lset717
	.long	768                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	188                             ; DW_AT_decl_line
	.long	1305                            ; DW_AT_type
	.byte	12                              ; Abbrev [12] 0x6e3:0xf DW_TAG_variable
.set Lset718, Ldebug_loc37-Lsection_debug_loc ; DW_AT_location
	.long	Lset718
	.long	776                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	194                             ; DW_AT_decl_line
	.long	3167                            ; DW_AT_type
	.byte	12                              ; Abbrev [12] 0x6f2:0xf DW_TAG_variable
.set Lset719, Ldebug_loc38-Lsection_debug_loc ; DW_AT_location
	.long	Lset719
	.long	783                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	193                             ; DW_AT_decl_line
	.long	75                              ; DW_AT_type
	.byte	12                              ; Abbrev [12] 0x701:0xf DW_TAG_variable
.set Lset720, Ldebug_loc39-Lsection_debug_loc ; DW_AT_location
	.long	Lset720
	.long	790                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	192                             ; DW_AT_decl_line
	.long	75                              ; DW_AT_type
	.byte	12                              ; Abbrev [12] 0x710:0xf DW_TAG_variable
.set Lset721, Ldebug_loc40-Lsection_debug_loc ; DW_AT_location
	.long	Lset721
	.long	797                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	191                             ; DW_AT_decl_line
	.long	75                              ; DW_AT_type
	.byte	12                              ; Abbrev [12] 0x71f:0xf DW_TAG_variable
.set Lset722, Ldebug_loc41-Lsection_debug_loc ; DW_AT_location
	.long	Lset722
	.long	804                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	190                             ; DW_AT_decl_line
	.long	75                              ; DW_AT_type
	.byte	12                              ; Abbrev [12] 0x72e:0xf DW_TAG_variable
.set Lset723, Ldebug_loc43-Lsection_debug_loc ; DW_AT_location
	.long	Lset723
	.long	816                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	210                             ; DW_AT_decl_line
	.long	75                              ; DW_AT_type
	.byte	12                              ; Abbrev [12] 0x73d:0xf DW_TAG_variable
.set Lset724, Ldebug_loc44-Lsection_debug_loc ; DW_AT_location
	.long	Lset724
	.long	825                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	211                             ; DW_AT_decl_line
	.long	75                              ; DW_AT_type
	.byte	14                              ; Abbrev [14] 0x74c:0x1d DW_TAG_lexical_block
	.quad	Ltmp212                         ; DW_AT_low_pc
.set Lset725, Ltmp240-Ltmp212           ; DW_AT_high_pc
	.long	Lset725
	.byte	12                              ; Abbrev [12] 0x759:0xf DW_TAG_variable
.set Lset726, Ldebug_loc42-Lsection_debug_loc ; DW_AT_location
	.long	Lset726
	.long	810                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	196                             ; DW_AT_decl_line
	.long	75                              ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	14                              ; Abbrev [14] 0x769:0x47e DW_TAG_lexical_block
	.quad	Ltmp260                         ; DW_AT_low_pc
.set Lset727, Ltmp478-Ltmp260           ; DW_AT_high_pc
	.long	Lset727
	.byte	16                              ; Abbrev [16] 0x776:0xf DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	145
	.ascii	"\200~"
	.long	298                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	213                             ; DW_AT_decl_line
	.long	3178                            ; DW_AT_type
	.byte	16                              ; Abbrev [16] 0x785:0xf DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	143
	.ascii	"\260\002"
	.long	518                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	214                             ; DW_AT_decl_line
	.long	3178                            ; DW_AT_type
	.byte	12                              ; Abbrev [12] 0x794:0xf DW_TAG_variable
.set Lset728, Ldebug_loc55-Lsection_debug_loc ; DW_AT_location
	.long	Lset728
	.long	848                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	231                             ; DW_AT_decl_line
	.long	75                              ; DW_AT_type
	.byte	12                              ; Abbrev [12] 0x7a3:0xf DW_TAG_variable
.set Lset729, Ldebug_loc56-Lsection_debug_loc ; DW_AT_location
	.long	Lset729
	.long	857                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	233                             ; DW_AT_decl_line
	.long	3167                            ; DW_AT_type
	.byte	13                              ; Abbrev [13] 0x7b2:0xb DW_TAG_variable
	.long	873                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	232                             ; DW_AT_decl_line
	.long	3528                            ; DW_AT_type
	.byte	19                              ; Abbrev [19] 0x7bd:0x3a DW_TAG_inlined_subroutine
	.long	1155                            ; DW_AT_abstract_origin
	.quad	Ltmp261                         ; DW_AT_low_pc
.set Lset730, Ltmp266-Ltmp261           ; DW_AT_high_pc
	.long	Lset730
	.byte	4                               ; DW_AT_call_file
	.byte	215                             ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	20                              ; Abbrev [20] 0x7d1:0xa DW_TAG_formal_parameter
	.byte	4                               ; DW_AT_location
	.byte	145
	.ascii	"\200~"
	.byte	159
	.long	1163                            ; DW_AT_abstract_origin
	.byte	20                              ; Abbrev [20] 0x7db:0x9 DW_TAG_formal_parameter
	.byte	3                               ; DW_AT_location
	.byte	143
	.ascii	"\250\002"
	.long	1174                            ; DW_AT_abstract_origin
	.byte	7                               ; Abbrev [7] 0x7e4:0x9 DW_TAG_formal_parameter
.set Lset731, Ldebug_loc45-Lsection_debug_loc ; DW_AT_location
	.long	Lset731
	.long	1185                            ; DW_AT_abstract_origin
	.byte	8                               ; Abbrev [8] 0x7ed:0x9 DW_TAG_variable
.set Lset732, Ldebug_loc46-Lsection_debug_loc ; DW_AT_location
	.long	Lset732
	.long	1196                            ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	19                              ; Abbrev [19] 0x7f7:0x3a DW_TAG_inlined_subroutine
	.long	1155                            ; DW_AT_abstract_origin
	.quad	Ltmp267                         ; DW_AT_low_pc
.set Lset733, Ltmp272-Ltmp267           ; DW_AT_high_pc
	.long	Lset733
	.byte	4                               ; DW_AT_call_file
	.byte	216                             ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	20                              ; Abbrev [20] 0x80b:0xa DW_TAG_formal_parameter
	.byte	4                               ; DW_AT_location
	.byte	143
	.ascii	"\260\002"
	.byte	159
	.long	1163                            ; DW_AT_abstract_origin
	.byte	20                              ; Abbrev [20] 0x815:0x9 DW_TAG_formal_parameter
	.byte	3                               ; DW_AT_location
	.byte	143
	.ascii	"\230\001"
	.long	1174                            ; DW_AT_abstract_origin
	.byte	7                               ; Abbrev [7] 0x81e:0x9 DW_TAG_formal_parameter
.set Lset734, Ldebug_loc47-Lsection_debug_loc ; DW_AT_location
	.long	Lset734
	.long	1185                            ; DW_AT_abstract_origin
	.byte	8                               ; Abbrev [8] 0x827:0x9 DW_TAG_variable
.set Lset735, Ldebug_loc48-Lsection_debug_loc ; DW_AT_location
	.long	Lset735
	.long	1196                            ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	14                              ; Abbrev [14] 0x831:0x34 DW_TAG_lexical_block
	.quad	Ltmp274                         ; DW_AT_low_pc
.set Lset736, Ltmp279-Ltmp274           ; DW_AT_high_pc
	.long	Lset736
	.byte	16                              ; Abbrev [16] 0x83e:0xf DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	143
	.asciz	"\360"
	.long	834                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	219                             ; DW_AT_decl_line
	.long	1305                            ; DW_AT_type
	.byte	16                              ; Abbrev [16] 0x84d:0x17 DW_TAG_variable
	.byte	11                              ; DW_AT_location
	.byte	143
	.ascii	"\320\001"
	.byte	148
	.byte	8
	.byte	16
	.byte	49
	.byte	37
	.byte	55
	.byte	26
	.byte	159
	.long	840                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	218                             ; DW_AT_decl_line
	.long	1305                            ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	19                              ; Abbrev [19] 0x865:0x66 DW_TAG_inlined_subroutine
	.long	1215                            ; DW_AT_abstract_origin
	.quad	Ltmp280                         ; DW_AT_low_pc
.set Lset737, Ltmp290-Ltmp280           ; DW_AT_high_pc
	.long	Lset737
	.byte	4                               ; DW_AT_call_file
	.byte	228                             ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	20                              ; Abbrev [20] 0x879:0xa DW_TAG_formal_parameter
	.byte	4                               ; DW_AT_location
	.byte	145
	.ascii	"\200~"
	.byte	159
	.long	1223                            ; DW_AT_abstract_origin
	.byte	20                              ; Abbrev [20] 0x883:0x9 DW_TAG_formal_parameter
	.byte	3                               ; DW_AT_location
	.byte	143
	.ascii	"\224\001"
	.long	1234                            ; DW_AT_abstract_origin
	.byte	14                              ; Abbrev [14] 0x88c:0x3e DW_TAG_lexical_block
	.quad	Ltmp282                         ; DW_AT_low_pc
.set Lset738, Ltmp290-Ltmp282           ; DW_AT_high_pc
	.long	Lset738
	.byte	33                              ; Abbrev [33] 0x899:0x9 DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	145
	.ascii	"\300~"
	.long	1257                            ; DW_AT_abstract_origin
	.byte	8                               ; Abbrev [8] 0x8a2:0x9 DW_TAG_variable
.set Lset739, Ldebug_loc50-Lsection_debug_loc ; DW_AT_location
	.long	Lset739
	.long	1268                            ; DW_AT_abstract_origin
	.byte	14                              ; Abbrev [14] 0x8ab:0x1e DW_TAG_lexical_block
	.quad	Ltmp283                         ; DW_AT_low_pc
.set Lset740, Ltmp290-Ltmp283           ; DW_AT_high_pc
	.long	Lset740
	.byte	33                              ; Abbrev [33] 0x8b8:0x7 DW_TAG_variable
	.byte	1                               ; DW_AT_location
	.byte	100
	.long	1280                            ; DW_AT_abstract_origin
	.byte	8                               ; Abbrev [8] 0x8bf:0x9 DW_TAG_variable
.set Lset741, Ldebug_loc49-Lsection_debug_loc ; DW_AT_location
	.long	Lset741
	.long	1291                            ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	19                              ; Abbrev [19] 0x8cb:0x66 DW_TAG_inlined_subroutine
	.long	1215                            ; DW_AT_abstract_origin
	.quad	Ltmp291                         ; DW_AT_low_pc
.set Lset742, Ltmp301-Ltmp291           ; DW_AT_high_pc
	.long	Lset742
	.byte	4                               ; DW_AT_call_file
	.byte	229                             ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	20                              ; Abbrev [20] 0x8df:0xa DW_TAG_formal_parameter
	.byte	4                               ; DW_AT_location
	.byte	143
	.ascii	"\260\002"
	.byte	159
	.long	1223                            ; DW_AT_abstract_origin
	.byte	20                              ; Abbrev [20] 0x8e9:0x9 DW_TAG_formal_parameter
	.byte	3                               ; DW_AT_location
	.byte	143
	.ascii	"\220\001"
	.long	1234                            ; DW_AT_abstract_origin
	.byte	14                              ; Abbrev [14] 0x8f2:0x3e DW_TAG_lexical_block
	.quad	Ltmp293                         ; DW_AT_low_pc
.set Lset743, Ltmp301-Ltmp293           ; DW_AT_high_pc
	.long	Lset743
	.byte	33                              ; Abbrev [33] 0x8ff:0x9 DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	145
	.ascii	"\300~"
	.long	1257                            ; DW_AT_abstract_origin
	.byte	8                               ; Abbrev [8] 0x908:0x9 DW_TAG_variable
.set Lset744, Ldebug_loc52-Lsection_debug_loc ; DW_AT_location
	.long	Lset744
	.long	1268                            ; DW_AT_abstract_origin
	.byte	14                              ; Abbrev [14] 0x911:0x1e DW_TAG_lexical_block
	.quad	Ltmp294                         ; DW_AT_low_pc
.set Lset745, Ltmp301-Ltmp294           ; DW_AT_high_pc
	.long	Lset745
	.byte	33                              ; Abbrev [33] 0x91e:0x7 DW_TAG_variable
	.byte	1                               ; DW_AT_location
	.byte	100
	.long	1280                            ; DW_AT_abstract_origin
	.byte	8                               ; Abbrev [8] 0x925:0x9 DW_TAG_variable
.set Lset746, Ldebug_loc51-Lsection_debug_loc ; DW_AT_location
	.long	Lset746
	.long	1291                            ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	19                              ; Abbrev [19] 0x931:0x3f DW_TAG_inlined_subroutine
	.long	1342                            ; DW_AT_abstract_origin
	.quad	Ltmp302                         ; DW_AT_low_pc
.set Lset747, Ltmp321-Ltmp302           ; DW_AT_high_pc
	.long	Lset747
	.byte	4                               ; DW_AT_call_file
	.byte	231                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	20                              ; Abbrev [20] 0x945:0x9 DW_TAG_formal_parameter
	.byte	3                               ; DW_AT_location
	.byte	143
	.asciz	"\350"
	.long	1354                            ; DW_AT_abstract_origin
	.byte	7                               ; Abbrev [7] 0x94e:0x9 DW_TAG_formal_parameter
.set Lset748, Ldebug_loc53-Lsection_debug_loc ; DW_AT_location
	.long	Lset748
	.long	1365                            ; DW_AT_abstract_origin
	.byte	34                              ; Abbrev [34] 0x957:0x6 DW_TAG_formal_parameter
	.byte	9                               ; DW_AT_const_value
	.long	1376                            ; DW_AT_abstract_origin
	.byte	33                              ; Abbrev [33] 0x95d:0x9 DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	143
	.ascii	"\210\001"
	.long	1387                            ; DW_AT_abstract_origin
	.byte	8                               ; Abbrev [8] 0x966:0x9 DW_TAG_variable
.set Lset749, Ldebug_loc54-Lsection_debug_loc ; DW_AT_location
	.long	Lset749
	.long	1398                            ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	14                              ; Abbrev [14] 0x970:0x74 DW_TAG_lexical_block
	.quad	Ltmp336                         ; DW_AT_low_pc
.set Lset750, Ltmp365-Ltmp336           ; DW_AT_high_pc
	.long	Lset750
	.byte	35                              ; Abbrev [35] 0x97d:0xe DW_TAG_variable
	.byte	1                               ; DW_AT_location
	.byte	89
	.long	863                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.short	256                             ; DW_AT_decl_line
	.long	1305                            ; DW_AT_type
	.byte	15                              ; Abbrev [15] 0x98b:0x58 DW_TAG_lexical_block
.set Lset751, Ldebug_ranges1-Ldebug_range ; DW_AT_ranges
	.long	Lset751
	.byte	36                              ; Abbrev [36] 0x990:0x10 DW_TAG_variable
.set Lset752, Ldebug_loc62-Lsection_debug_loc ; DW_AT_location
	.long	Lset752
	.long	300                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.short	259                             ; DW_AT_decl_line
	.long	3508                            ; DW_AT_type
	.byte	36                              ; Abbrev [36] 0x9a0:0x10 DW_TAG_variable
.set Lset753, Ldebug_loc63-Lsection_debug_loc ; DW_AT_location
	.long	Lset753
	.long	865                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.short	258                             ; DW_AT_decl_line
	.long	1305                            ; DW_AT_type
	.byte	37                              ; Abbrev [37] 0x9b0:0x32 DW_TAG_inlined_subroutine
	.long	1410                            ; DW_AT_abstract_origin
.set Lset754, Ldebug_ranges2-Ldebug_range ; DW_AT_ranges
	.long	Lset754
	.byte	4                               ; DW_AT_call_file
	.short	260                             ; DW_AT_call_line
	.byte	34                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x9bd:0x9 DW_TAG_formal_parameter
.set Lset755, Ldebug_loc59-Lsection_debug_loc ; DW_AT_location
	.long	Lset755
	.long	1422                            ; DW_AT_abstract_origin
	.byte	7                               ; Abbrev [7] 0x9c6:0x9 DW_TAG_formal_parameter
.set Lset756, Ldebug_loc58-Lsection_debug_loc ; DW_AT_location
	.long	Lset756
	.long	1433                            ; DW_AT_abstract_origin
	.byte	7                               ; Abbrev [7] 0x9cf:0x9 DW_TAG_formal_parameter
.set Lset757, Ldebug_loc60-Lsection_debug_loc ; DW_AT_location
	.long	Lset757
	.long	1444                            ; DW_AT_abstract_origin
	.byte	7                               ; Abbrev [7] 0x9d8:0x9 DW_TAG_formal_parameter
.set Lset758, Ldebug_loc61-Lsection_debug_loc ; DW_AT_location
	.long	Lset758
	.long	1455                            ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	14                              ; Abbrev [14] 0x9e4:0x3f DW_TAG_lexical_block
	.quad	Ltmp404                         ; DW_AT_low_pc
.set Lset759, Ltmp413-Ltmp404           ; DW_AT_high_pc
	.long	Lset759
	.byte	16                              ; Abbrev [16] 0x9f1:0xd DW_TAG_variable
	.byte	1                               ; DW_AT_location
	.byte	105
	.long	863                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	249                             ; DW_AT_decl_line
	.long	1305                            ; DW_AT_type
	.byte	15                              ; Abbrev [15] 0x9fe:0x24 DW_TAG_lexical_block
.set Lset760, Ldebug_ranges3-Ldebug_range ; DW_AT_ranges
	.long	Lset760
	.byte	12                              ; Abbrev [12] 0xa03:0xf DW_TAG_variable
.set Lset761, Ldebug_loc73-Lsection_debug_loc ; DW_AT_location
	.long	Lset761
	.long	300                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	252                             ; DW_AT_decl_line
	.long	3518                            ; DW_AT_type
	.byte	12                              ; Abbrev [12] 0xa12:0xf DW_TAG_variable
.set Lset762, Ldebug_loc74-Lsection_debug_loc ; DW_AT_location
	.long	Lset762
	.long	865                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	251                             ; DW_AT_decl_line
	.long	1305                            ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	14                              ; Abbrev [14] 0xa23:0xc6 DW_TAG_lexical_block
	.quad	Ltmp365                         ; DW_AT_low_pc
.set Lset763, Ltmp403-Ltmp365           ; DW_AT_high_pc
	.long	Lset763
	.byte	35                              ; Abbrev [35] 0xa30:0xe DW_TAG_variable
	.byte	1                               ; DW_AT_location
	.byte	89
	.long	863                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.short	264                             ; DW_AT_decl_line
	.long	1305                            ; DW_AT_type
	.byte	15                              ; Abbrev [15] 0xa3e:0xaa DW_TAG_lexical_block
.set Lset764, Ldebug_ranges4-Ldebug_range ; DW_AT_ranges
	.long	Lset764
	.byte	36                              ; Abbrev [36] 0xa43:0x10 DW_TAG_variable
.set Lset765, Ldebug_loc67-Lsection_debug_loc ; DW_AT_location
	.long	Lset765
	.long	300                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.short	267                             ; DW_AT_decl_line
	.long	3513                            ; DW_AT_type
	.byte	36                              ; Abbrev [36] 0xa53:0x10 DW_TAG_variable
.set Lset766, Ldebug_loc68-Lsection_debug_loc ; DW_AT_location
	.long	Lset766
	.long	867                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.short	269                             ; DW_AT_decl_line
	.long	1531                            ; DW_AT_type
	.byte	36                              ; Abbrev [36] 0xa63:0x10 DW_TAG_variable
.set Lset767, Ldebug_loc69-Lsection_debug_loc ; DW_AT_location
	.long	Lset767
	.long	865                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.short	266                             ; DW_AT_decl_line
	.long	1305                            ; DW_AT_type
	.byte	36                              ; Abbrev [36] 0xa73:0x10 DW_TAG_variable
.set Lset768, Ldebug_loc71-Lsection_debug_loc ; DW_AT_location
	.long	Lset768
	.long	870                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.short	268                             ; DW_AT_decl_line
	.long	1531                            ; DW_AT_type
	.byte	37                              ; Abbrev [37] 0xa83:0x29 DW_TAG_inlined_subroutine
	.long	1474                            ; DW_AT_abstract_origin
.set Lset769, Ldebug_ranges5-Ldebug_range ; DW_AT_ranges
	.long	Lset769
	.byte	4                               ; DW_AT_call_file
	.short	270                             ; DW_AT_call_line
	.byte	30                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0xa90:0x9 DW_TAG_formal_parameter
.set Lset770, Ldebug_loc65-Lsection_debug_loc ; DW_AT_location
	.long	Lset770
	.long	1497                            ; DW_AT_abstract_origin
	.byte	7                               ; Abbrev [7] 0xa99:0x9 DW_TAG_formal_parameter
.set Lset771, Ldebug_loc64-Lsection_debug_loc ; DW_AT_location
	.long	Lset771
	.long	1508                            ; DW_AT_abstract_origin
	.byte	7                               ; Abbrev [7] 0xaa2:0x9 DW_TAG_formal_parameter
.set Lset772, Ldebug_loc66-Lsection_debug_loc ; DW_AT_location
	.long	Lset772
	.long	1519                            ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	37                              ; Abbrev [37] 0xaac:0x17 DW_TAG_inlined_subroutine
	.long	1538                            ; DW_AT_abstract_origin
.set Lset773, Ldebug_ranges6-Ldebug_range ; DW_AT_ranges
	.long	Lset773
	.byte	4                               ; DW_AT_call_file
	.short	268                             ; DW_AT_call_line
	.byte	35                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0xab9:0x9 DW_TAG_formal_parameter
.set Lset774, Ldebug_loc70-Lsection_debug_loc ; DW_AT_location
	.long	Lset774
	.long	1550                            ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	38                              ; Abbrev [38] 0xac3:0x24 DW_TAG_inlined_subroutine
	.long	1538                            ; DW_AT_abstract_origin
	.quad	Ltmp379                         ; DW_AT_low_pc
.set Lset775, Ltmp382-Ltmp379           ; DW_AT_high_pc
	.long	Lset775
	.byte	4                               ; DW_AT_call_file
	.short	269                             ; DW_AT_call_line
	.byte	35                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0xad8:0x9 DW_TAG_formal_parameter
.set Lset776, Ldebug_loc72-Lsection_debug_loc ; DW_AT_location
	.long	Lset776
	.long	1550                            ; DW_AT_abstract_origin
	.byte	39                              ; Abbrev [39] 0xae1:0x5 DW_TAG_variable
	.long	1561                            ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	14                              ; Abbrev [14] 0xae9:0x74 DW_TAG_lexical_block
	.quad	Ltmp417                         ; DW_AT_low_pc
.set Lset777, Ltmp446-Ltmp417           ; DW_AT_high_pc
	.long	Lset777
	.byte	35                              ; Abbrev [35] 0xaf6:0xe DW_TAG_variable
	.byte	1                               ; DW_AT_location
	.byte	89
	.long	863                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.short	273                             ; DW_AT_decl_line
	.long	1305                            ; DW_AT_type
	.byte	15                              ; Abbrev [15] 0xb04:0x58 DW_TAG_lexical_block
.set Lset778, Ldebug_ranges7-Ldebug_range ; DW_AT_ranges
	.long	Lset778
	.byte	36                              ; Abbrev [36] 0xb09:0x10 DW_TAG_variable
.set Lset779, Ldebug_loc79-Lsection_debug_loc ; DW_AT_location
	.long	Lset779
	.long	300                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.short	276                             ; DW_AT_decl_line
	.long	3513                            ; DW_AT_type
	.byte	36                              ; Abbrev [36] 0xb19:0x10 DW_TAG_variable
.set Lset780, Ldebug_loc80-Lsection_debug_loc ; DW_AT_location
	.long	Lset780
	.long	865                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.short	275                             ; DW_AT_decl_line
	.long	1305                            ; DW_AT_type
	.byte	37                              ; Abbrev [37] 0xb29:0x32 DW_TAG_inlined_subroutine
	.long	1474                            ; DW_AT_abstract_origin
.set Lset781, Ldebug_ranges8-Ldebug_range ; DW_AT_ranges
	.long	Lset781
	.byte	4                               ; DW_AT_call_file
	.short	277                             ; DW_AT_call_line
	.byte	30                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0xb36:0x9 DW_TAG_formal_parameter
.set Lset782, Ldebug_loc76-Lsection_debug_loc ; DW_AT_location
	.long	Lset782
	.long	1486                            ; DW_AT_abstract_origin
	.byte	7                               ; Abbrev [7] 0xb3f:0x9 DW_TAG_formal_parameter
.set Lset783, Ldebug_loc75-Lsection_debug_loc ; DW_AT_location
	.long	Lset783
	.long	1497                            ; DW_AT_abstract_origin
	.byte	7                               ; Abbrev [7] 0xb48:0x9 DW_TAG_formal_parameter
.set Lset784, Ldebug_loc77-Lsection_debug_loc ; DW_AT_location
	.long	Lset784
	.long	1508                            ; DW_AT_abstract_origin
	.byte	7                               ; Abbrev [7] 0xb51:0x9 DW_TAG_formal_parameter
.set Lset785, Ldebug_loc78-Lsection_debug_loc ; DW_AT_location
	.long	Lset785
	.long	1519                            ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	14                              ; Abbrev [14] 0xb5d:0x74 DW_TAG_lexical_block
	.quad	Ltmp447                         ; DW_AT_low_pc
.set Lset786, Ltmp476-Ltmp447           ; DW_AT_high_pc
	.long	Lset786
	.byte	35                              ; Abbrev [35] 0xb6a:0xe DW_TAG_variable
	.byte	1                               ; DW_AT_location
	.byte	89
	.long	863                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.short	280                             ; DW_AT_decl_line
	.long	1305                            ; DW_AT_type
	.byte	15                              ; Abbrev [15] 0xb78:0x58 DW_TAG_lexical_block
.set Lset787, Ldebug_ranges9-Ldebug_range ; DW_AT_ranges
	.long	Lset787
	.byte	36                              ; Abbrev [36] 0xb7d:0x10 DW_TAG_variable
.set Lset788, Ldebug_loc85-Lsection_debug_loc ; DW_AT_location
	.long	Lset788
	.long	300                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.short	283                             ; DW_AT_decl_line
	.long	3523                            ; DW_AT_type
	.byte	36                              ; Abbrev [36] 0xb8d:0x10 DW_TAG_variable
.set Lset789, Ldebug_loc86-Lsection_debug_loc ; DW_AT_location
	.long	Lset789
	.long	865                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.short	282                             ; DW_AT_decl_line
	.long	1305                            ; DW_AT_type
	.byte	37                              ; Abbrev [37] 0xb9d:0x32 DW_TAG_inlined_subroutine
	.long	1573                            ; DW_AT_abstract_origin
.set Lset790, Ldebug_ranges10-Ldebug_range ; DW_AT_ranges
	.long	Lset790
	.byte	4                               ; DW_AT_call_file
	.short	284                             ; DW_AT_call_line
	.byte	30                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0xbaa:0x9 DW_TAG_formal_parameter
.set Lset791, Ldebug_loc82-Lsection_debug_loc ; DW_AT_location
	.long	Lset791
	.long	1585                            ; DW_AT_abstract_origin
	.byte	7                               ; Abbrev [7] 0xbb3:0x9 DW_TAG_formal_parameter
.set Lset792, Ldebug_loc81-Lsection_debug_loc ; DW_AT_location
	.long	Lset792
	.long	1596                            ; DW_AT_abstract_origin
	.byte	7                               ; Abbrev [7] 0xbbc:0x9 DW_TAG_formal_parameter
.set Lset793, Ldebug_loc83-Lsection_debug_loc ; DW_AT_location
	.long	Lset793
	.long	1607                            ; DW_AT_abstract_origin
	.byte	7                               ; Abbrev [7] 0xbc5:0x9 DW_TAG_formal_parameter
.set Lset794, Ldebug_loc84-Lsection_debug_loc ; DW_AT_location
	.long	Lset794
	.long	1618                            ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	15                              ; Abbrev [15] 0xbd1:0x15 DW_TAG_lexical_block
.set Lset795, Ldebug_ranges11-Ldebug_range ; DW_AT_ranges
	.long	Lset795
	.byte	12                              ; Abbrev [12] 0xbd6:0xf DW_TAG_variable
.set Lset796, Ldebug_loc57-Lsection_debug_loc ; DW_AT_location
	.long	Lset796
	.long	494                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	237                             ; DW_AT_decl_line
	.long	1305                            ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	40                              ; Abbrev [40] 0xbe7:0x27 DW_TAG_call_site
	.long	3139                            ; DW_AT_call_origin
	.quad	Ltmp276                         ; DW_AT_call_return_pc
	.byte	23                              ; Abbrev [23] 0xbf4:0x9 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	83
	.byte	5                               ; DW_AT_call_value
	.byte	143
	.asciz	"\370"
	.byte	148
	.byte	4
	.byte	23                              ; Abbrev [23] 0xbfd:0x9 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	81
	.byte	5                               ; DW_AT_call_value
	.byte	143
	.asciz	"\300"
	.byte	148
	.byte	8
	.byte	23                              ; Abbrev [23] 0xc06:0x7 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	80
	.byte	3                               ; DW_AT_call_value
	.byte	145
	.ascii	"\200~"
	.byte	0                               ; End Of Children Mark
	.byte	40                              ; Abbrev [40] 0xc0e:0x27 DW_TAG_call_site
	.long	3139                            ; DW_AT_call_origin
	.quad	Ltmp278                         ; DW_AT_call_return_pc
	.byte	23                              ; Abbrev [23] 0xc1b:0x9 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	83
	.byte	5                               ; DW_AT_call_value
	.byte	143
	.asciz	"\370"
	.byte	148
	.byte	4
	.byte	23                              ; Abbrev [23] 0xc24:0x9 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	81
	.byte	5                               ; DW_AT_call_value
	.byte	143
	.asciz	"\310"
	.byte	148
	.byte	8
	.byte	23                              ; Abbrev [23] 0xc2d:0x7 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	80
	.byte	3                               ; DW_AT_call_value
	.byte	143
	.ascii	"\260\002"
	.byte	0                               ; End Of Children Mark
	.byte	41                              ; Abbrev [41] 0xc35:0xd DW_TAG_call_site
	.long	752                             ; DW_AT_call_origin
	.quad	Ltmp406                         ; DW_AT_call_return_pc
	.byte	0                               ; End Of Children Mark
	.byte	42                              ; Abbrev [42] 0xc43:0x1c DW_TAG_subprogram
	.long	565                             ; DW_AT_name
	.byte	6                               ; DW_AT_decl_file
	.byte	47                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_declaration
                                        ; DW_AT_external
                                        ; DW_AT_APPLE_optimized
	.byte	43                              ; Abbrev [43] 0xc4a:0x5 DW_TAG_formal_parameter
	.long	121                             ; DW_AT_type
	.byte	43                              ; Abbrev [43] 0xc4f:0x5 DW_TAG_formal_parameter
	.long	93                              ; DW_AT_type
	.byte	43                              ; Abbrev [43] 0xc54:0x5 DW_TAG_formal_parameter
	.long	1305                            ; DW_AT_type
	.byte	43                              ; Abbrev [43] 0xc59:0x5 DW_TAG_formal_parameter
	.long	1305                            ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0xc5f:0xb DW_TAG_typedef
	.long	1467                            ; DW_AT_type
	.long	593                             ; DW_AT_name
	.byte	8                               ; DW_AT_decl_file
	.byte	30                              ; DW_AT_decl_line
	.byte	2                               ; Abbrev [2] 0xc6a:0xb DW_TAG_typedef
	.long	3189                            ; DW_AT_type
	.long	665                             ; DW_AT_name
	.byte	6                               ; DW_AT_decl_file
	.byte	16                              ; DW_AT_decl_line
	.byte	44                              ; Abbrev [44] 0xc75:0x75 DW_TAG_union_type
	.long	665                             ; DW_AT_name
	.byte	64                              ; DW_AT_byte_size
	.byte	6                               ; DW_AT_decl_file
	.byte	6                               ; DW_AT_decl_line
	.byte	45                              ; Abbrev [45] 0xc7d:0xc DW_TAG_member
	.long	673                             ; DW_AT_name
	.long	1323                            ; DW_AT_type
	.byte	6                               ; DW_AT_decl_file
	.byte	7                               ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	45                              ; Abbrev [45] 0xc89:0xc DW_TAG_member
	.long	676                             ; DW_AT_name
	.long	3306                            ; DW_AT_type
	.byte	6                               ; DW_AT_decl_file
	.byte	8                               ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	45                              ; Abbrev [45] 0xc95:0xc DW_TAG_member
	.long	680                             ; DW_AT_name
	.long	3318                            ; DW_AT_type
	.byte	6                               ; DW_AT_decl_file
	.byte	9                               ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	45                              ; Abbrev [45] 0xca1:0xc DW_TAG_member
	.long	684                             ; DW_AT_name
	.long	3330                            ; DW_AT_type
	.byte	6                               ; DW_AT_decl_file
	.byte	10                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	45                              ; Abbrev [45] 0xcad:0xc DW_TAG_member
	.long	706                             ; DW_AT_name
	.long	3360                            ; DW_AT_type
	.byte	6                               ; DW_AT_decl_file
	.byte	11                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	45                              ; Abbrev [45] 0xcb9:0xc DW_TAG_member
	.long	710                             ; DW_AT_name
	.long	3372                            ; DW_AT_type
	.byte	6                               ; DW_AT_decl_file
	.byte	12                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	45                              ; Abbrev [45] 0xcc5:0xc DW_TAG_member
	.long	714                             ; DW_AT_name
	.long	3384                            ; DW_AT_type
	.byte	6                               ; DW_AT_decl_file
	.byte	13                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	45                              ; Abbrev [45] 0xcd1:0xc DW_TAG_member
	.long	718                             ; DW_AT_name
	.long	3396                            ; DW_AT_type
	.byte	6                               ; DW_AT_decl_file
	.byte	14                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	45                              ; Abbrev [45] 0xcdd:0xc DW_TAG_member
	.long	722                             ; DW_AT_name
	.long	3408                            ; DW_AT_type
	.byte	6                               ; DW_AT_decl_file
	.byte	15                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	0                               ; End Of Children Mark
	.byte	28                              ; Abbrev [28] 0xcea:0xc DW_TAG_array_type
	.long	699                             ; DW_AT_type
	.byte	29                              ; Abbrev [29] 0xcef:0x6 DW_TAG_subrange_type
	.long	1335                            ; DW_AT_type
	.byte	32                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	28                              ; Abbrev [28] 0xcf6:0xc DW_TAG_array_type
	.long	1305                            ; DW_AT_type
	.byte	29                              ; Abbrev [29] 0xcfb:0x6 DW_TAG_subrange_type
	.long	1335                            ; DW_AT_type
	.byte	16                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	28                              ; Abbrev [28] 0xd02:0xc DW_TAG_array_type
	.long	3342                            ; DW_AT_type
	.byte	29                              ; Abbrev [29] 0xd07:0x6 DW_TAG_subrange_type
	.long	1335                            ; DW_AT_type
	.byte	64                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0xd0e:0xb DW_TAG_typedef
	.long	3353                            ; DW_AT_type
	.long	687                             ; DW_AT_name
	.byte	9                               ; DW_AT_decl_file
	.byte	30                              ; DW_AT_decl_line
	.byte	3                               ; Abbrev [3] 0xd19:0x7 DW_TAG_base_type
	.long	694                             ; DW_AT_name
	.byte	6                               ; DW_AT_encoding
	.byte	1                               ; DW_AT_byte_size
	.byte	28                              ; Abbrev [28] 0xd20:0xc DW_TAG_array_type
	.long	50                              ; DW_AT_type
	.byte	29                              ; Abbrev [29] 0xd25:0x6 DW_TAG_subrange_type
	.long	1335                            ; DW_AT_type
	.byte	32                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	28                              ; Abbrev [28] 0xd2c:0xc DW_TAG_array_type
	.long	3167                            ; DW_AT_type
	.byte	29                              ; Abbrev [29] 0xd31:0x6 DW_TAG_subrange_type
	.long	1335                            ; DW_AT_type
	.byte	16                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	28                              ; Abbrev [28] 0xd38:0xc DW_TAG_array_type
	.long	68                              ; DW_AT_type
	.byte	29                              ; Abbrev [29] 0xd3d:0x6 DW_TAG_subrange_type
	.long	1335                            ; DW_AT_type
	.byte	32                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	28                              ; Abbrev [28] 0xd44:0xc DW_TAG_array_type
	.long	1531                            ; DW_AT_type
	.byte	29                              ; Abbrev [29] 0xd49:0x6 DW_TAG_subrange_type
	.long	1335                            ; DW_AT_type
	.byte	16                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	28                              ; Abbrev [28] 0xd50:0xc DW_TAG_array_type
	.long	1630                            ; DW_AT_type
	.byte	29                              ; Abbrev [29] 0xd55:0x6 DW_TAG_subrange_type
	.long	1335                            ; DW_AT_type
	.byte	8                               ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0xd5c:0x5 DW_TAG_pointer_type
	.long	3425                            ; DW_AT_type
	.byte	2                               ; Abbrev [2] 0xd61:0xb DW_TAG_typedef
	.long	3436                            ; DW_AT_type
	.long	732                             ; DW_AT_name
	.byte	6                               ; DW_AT_decl_file
	.byte	22                              ; DW_AT_decl_line
	.byte	46                              ; Abbrev [46] 0xd6c:0x30 DW_TAG_structure_type
	.long	732                             ; DW_AT_name
	.short	5120                            ; DW_AT_byte_size
	.byte	6                               ; DW_AT_decl_file
	.byte	18                              ; DW_AT_decl_line
	.byte	45                              ; Abbrev [45] 0xd75:0xc DW_TAG_member
	.long	298                             ; DW_AT_name
	.long	3484                            ; DW_AT_type
	.byte	6                               ; DW_AT_decl_file
	.byte	19                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	47                              ; Abbrev [47] 0xd81:0xd DW_TAG_member
	.long	518                             ; DW_AT_name
	.long	3484                            ; DW_AT_type
	.byte	6                               ; DW_AT_decl_file
	.byte	20                              ; DW_AT_decl_line
	.short	512                             ; DW_AT_data_member_location
	.byte	47                              ; Abbrev [47] 0xd8e:0xd DW_TAG_member
	.long	300                             ; DW_AT_name
	.long	3496                            ; DW_AT_type
	.byte	6                               ; DW_AT_decl_file
	.byte	21                              ; DW_AT_decl_line
	.short	1024                            ; DW_AT_data_member_location
	.byte	0                               ; End Of Children Mark
	.byte	28                              ; Abbrev [28] 0xd9c:0xc DW_TAG_array_type
	.long	3178                            ; DW_AT_type
	.byte	29                              ; Abbrev [29] 0xda1:0x6 DW_TAG_subrange_type
	.long	1335                            ; DW_AT_type
	.byte	8                               ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	28                              ; Abbrev [28] 0xda8:0xc DW_TAG_array_type
	.long	3178                            ; DW_AT_type
	.byte	29                              ; Abbrev [29] 0xdad:0x6 DW_TAG_subrange_type
	.long	1335                            ; DW_AT_type
	.byte	64                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0xdb4:0x5 DW_TAG_pointer_type
	.long	68                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0xdb9:0x5 DW_TAG_pointer_type
	.long	1531                            ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0xdbe:0x5 DW_TAG_pointer_type
	.long	699                             ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0xdc3:0x5 DW_TAG_pointer_type
	.long	1630                            ; DW_AT_type
	.byte	3                               ; Abbrev [3] 0xdc8:0x7 DW_TAG_base_type
	.long	885                             ; DW_AT_name
	.byte	2                               ; DW_AT_encoding
	.byte	1                               ; DW_AT_byte_size
	.byte	0                               ; End Of Children Mark
Ldebug_info_end0:
	.section	__DWARF,__debug_ranges,regular,debug
Ldebug_range:
Ldebug_ranges0:
.set Lset797, Ltmp35-Lfunc_begin0
	.quad	Lset797
.set Lset798, Ltmp39-Lfunc_begin0
	.quad	Lset798
.set Lset799, Ltmp62-Lfunc_begin0
	.quad	Lset799
.set Lset800, Ltmp65-Lfunc_begin0
	.quad	Lset800
	.quad	0
	.quad	0
Ldebug_ranges1:
.set Lset801, Ltmp336-Lfunc_begin0
	.quad	Lset801
.set Lset802, Ltmp338-Lfunc_begin0
	.quad	Lset802
.set Lset803, Ltmp341-Lfunc_begin0
	.quad	Lset803
.set Lset804, Ltmp365-Lfunc_begin0
	.quad	Lset804
	.quad	0
	.quad	0
Ldebug_ranges2:
.set Lset805, Ltmp336-Lfunc_begin0
	.quad	Lset805
.set Lset806, Ltmp337-Lfunc_begin0
	.quad	Lset806
.set Lset807, Ltmp345-Lfunc_begin0
	.quad	Lset807
.set Lset808, Ltmp365-Lfunc_begin0
	.quad	Lset808
	.quad	0
	.quad	0
Ldebug_ranges3:
.set Lset809, Ltmp404-Lfunc_begin0
	.quad	Lset809
.set Lset810, Ltmp408-Lfunc_begin0
	.quad	Lset810
.set Lset811, Ltmp411-Lfunc_begin0
	.quad	Lset811
.set Lset812, Ltmp413-Lfunc_begin0
	.quad	Lset812
	.quad	0
	.quad	0
Ldebug_ranges4:
.set Lset813, Ltmp365-Lfunc_begin0
	.quad	Lset813
.set Lset814, Ltmp367-Lfunc_begin0
	.quad	Lset814
.set Lset815, Ltmp370-Lfunc_begin0
	.quad	Lset815
.set Lset816, Ltmp403-Lfunc_begin0
	.quad	Lset816
	.quad	0
	.quad	0
Ldebug_ranges5:
.set Lset817, Ltmp365-Lfunc_begin0
	.quad	Lset817
.set Lset818, Ltmp366-Lfunc_begin0
	.quad	Lset818
.set Lset819, Ltmp386-Lfunc_begin0
	.quad	Lset819
.set Lset820, Ltmp403-Lfunc_begin0
	.quad	Lset820
	.quad	0
	.quad	0
Ldebug_ranges6:
.set Lset821, Ltmp375-Lfunc_begin0
	.quad	Lset821
.set Lset822, Ltmp377-Lfunc_begin0
	.quad	Lset822
.set Lset823, Ltmp378-Lfunc_begin0
	.quad	Lset823
.set Lset824, Ltmp379-Lfunc_begin0
	.quad	Lset824
	.quad	0
	.quad	0
Ldebug_ranges7:
.set Lset825, Ltmp417-Lfunc_begin0
	.quad	Lset825
.set Lset826, Ltmp419-Lfunc_begin0
	.quad	Lset826
.set Lset827, Ltmp422-Lfunc_begin0
	.quad	Lset827
.set Lset828, Ltmp446-Lfunc_begin0
	.quad	Lset828
	.quad	0
	.quad	0
Ldebug_ranges8:
.set Lset829, Ltmp417-Lfunc_begin0
	.quad	Lset829
.set Lset830, Ltmp418-Lfunc_begin0
	.quad	Lset830
.set Lset831, Ltmp426-Lfunc_begin0
	.quad	Lset831
.set Lset832, Ltmp446-Lfunc_begin0
	.quad	Lset832
	.quad	0
	.quad	0
Ldebug_ranges9:
.set Lset833, Ltmp447-Lfunc_begin0
	.quad	Lset833
.set Lset834, Ltmp449-Lfunc_begin0
	.quad	Lset834
.set Lset835, Ltmp452-Lfunc_begin0
	.quad	Lset835
.set Lset836, Ltmp476-Lfunc_begin0
	.quad	Lset836
	.quad	0
	.quad	0
Ldebug_ranges10:
.set Lset837, Ltmp447-Lfunc_begin0
	.quad	Lset837
.set Lset838, Ltmp448-Lfunc_begin0
	.quad	Lset838
.set Lset839, Ltmp456-Lfunc_begin0
	.quad	Lset839
.set Lset840, Ltmp476-Lfunc_begin0
	.quad	Lset840
	.quad	0
	.quad	0
Ldebug_ranges11:
.set Lset841, Ltmp331-Lfunc_begin0
	.quad	Lset841
.set Lset842, Ltmp336-Lfunc_begin0
	.quad	Lset842
.set Lset843, Ltmp477-Lfunc_begin0
	.quad	Lset843
.set Lset844, Ltmp478-Lfunc_begin0
	.quad	Lset844
	.quad	0
	.quad	0
	.section	__DWARF,__debug_str,regular,debug
Linfo_string:
	.asciz	"Apple clang version 15.0.0 (clang-1500.3.9.4)" ; string offset=0
	.asciz	"vecfp.c"                       ; string offset=46
	.asciz	"/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk" ; string offset=54
	.asciz	"MacOSX.sdk"                    ; string offset=106
	.asciz	"/Users/tarindujayatilaka/Documents/superopt/apple-amx" ; string offset=117
	.asciz	"int16_t"                       ; string offset=171
	.asciz	"short"                         ; string offset=179
	.asciz	"_Float16"                      ; string offset=185
	.asciz	"uint64_t"                      ; string offset=194
	.asciz	"unsigned long long"            ; string offset=203
	.asciz	"uint8_t"                       ; string offset=222
	.asciz	"unsigned char"                 ; string offset=230
	.asciz	"bf16_to_f32"                   ; string offset=244
	.asciz	"bf16_fma"                      ; string offset=256
	.asciz	"bf16_min"                      ; string offset=265
	.asciz	"uint16_t"                      ; string offset=274
	.asciz	"unsigned short"                ; string offset=283
	.asciz	"x"                             ; string offset=298
	.asciz	"z"                             ; string offset=300
	.asciz	"bf16_max"                      ; string offset=302
	.asciz	"vecfp_alu_bf16"                ; string offset=311
	.asciz	"vecfp_alu16"                   ; string offset=326
	.asciz	"vecfp_alu32"                   ; string offset=338
	.asciz	"vecfp_alu64"                   ; string offset=350
	.asciz	"load_xy_reg"                   ; string offset=362
	.asciz	"dst"                           ; string offset=374
	.asciz	"src"                           ; string offset=378
	.asciz	"offset"                        ; string offset=382
	.asciz	"avail"                         ; string offset=389
	.asciz	"xy_shuffle"                    ; string offset=395
	.asciz	"shuffle"                       ; string offset=406
	.asciz	"uint32_t"                      ; string offset=414
	.asciz	"unsigned int"                  ; string offset=423
	.asciz	"ebytes"                        ; string offset=436
	.asciz	"__ARRAY_SIZE_TYPE__"           ; string offset=443
	.asciz	"step"                          ; string offset=463
	.asciz	"doff"                          ; string offset=468
	.asciz	"soff"                          ; string offset=473
	.asciz	"parse_writemask"               ; string offset=478
	.asciz	"val"                           ; string offset=494
	.asciz	"g"                             ; string offset=498
	.asciz	"maskbits"                      ; string offset=500
	.asciz	"mode"                          ; string offset=509
	.asciz	"all"                           ; string offset=514
	.asciz	"y"                             ; string offset=518
	.asciz	"alumode"                       ; string offset=520
	.asciz	"int"                           ; string offset=528
	.asciz	"float"                         ; string offset=532
	.asciz	"f"                             ; string offset=538
	.asciz	"double"                        ; string offset=540
	.asciz	"emulate_AMX_VECFP"             ; string offset=547
	.asciz	"load_xy_reg_indexed"           ; string offset=565
	.asciz	"x_m"                           ; string offset=585
	.asciz	"x_e"                           ; string offset=589
	.asciz	"int32_t"                       ; string offset=593
	.asciz	"y_m"                           ; string offset=601
	.asciz	"y_e"                           ; string offset=605
	.asciz	"z_m"                           ; string offset=609
	.asciz	"z_e"                           ; string offset=613
	.asciz	"z_sign"                        ; string offset=617
	.asciz	"p_sign"                        ; string offset=624
	.asciz	"p_e"                           ; string offset=631
	.asciz	"p_m"                           ; string offset=635
	.asciz	"r_e"                           ; string offset=639
	.asciz	"s"                             ; string offset=643
	.asciz	"r_sign"                        ; string offset=645
	.asciz	"r_m"                           ; string offset=652
	.asciz	"n"                             ; string offset=656
	.asciz	"orig"                          ; string offset=658
	.asciz	"r"                             ; string offset=663
	.asciz	"amx_reg"                       ; string offset=665
	.asciz	"u8"                            ; string offset=673
	.asciz	"u16"                           ; string offset=676
	.asciz	"u32"                           ; string offset=680
	.asciz	"i8"                            ; string offset=684
	.asciz	"int8_t"                        ; string offset=687
	.asciz	"signed char"                   ; string offset=694
	.asciz	"i16"                           ; string offset=706
	.asciz	"i32"                           ; string offset=710
	.asciz	"f16"                           ; string offset=714
	.asciz	"f32"                           ; string offset=718
	.asciz	"f64"                           ; string offset=722
	.asciz	"state"                         ; string offset=726
	.asciz	"amx_state"                     ; string offset=732
	.asciz	"operand"                       ; string offset=742
	.asciz	"bf16"                          ; string offset=750
	.asciz	"xybits"                        ; string offset=755
	.asciz	"zbits"                         ; string offset=762
	.asciz	"xybytes"                       ; string offset=768
	.asciz	"ximask"                        ; string offset=776
	.asciz	"y_step"                        ; string offset=783
	.asciz	"x_step"                        ; string offset=790
	.asciz	"z_step"                        ; string offset=797
	.asciz	"z_row"                         ; string offset=804
	.asciz	"bmode"                         ; string offset=810
	.asciz	"x_offset"                      ; string offset=816
	.asciz	"y_offset"                      ; string offset=825
	.asciz	"ibits"                         ; string offset=834
	.asciz	"src_reg"                       ; string offset=840
	.asciz	"x_enable"                      ; string offset=848
	.asciz	"omask"                         ; string offset=857
	.asciz	"i"                             ; string offset=863
	.asciz	"j"                             ; string offset=865
	.asciz	"yf"                            ; string offset=867
	.asciz	"xf"                            ; string offset=870
	.asciz	"broadcast_y"                   ; string offset=873
	.asciz	"_Bool"                         ; string offset=885
	.section	__DWARF,__apple_names,regular,debug
Lnames_begin:
	.long	1212240712                      ; Header Magic
	.short	1                               ; Header Version
	.short	0                               ; Header Hash Function
	.long	12                              ; Header Bucket Count
	.long	12                              ; Header Hash Count
	.long	12                              ; Header Data Length
	.long	0                               ; HeaderData Die Offset Base
	.long	1                               ; HeaderData Atom Count
	.short	1                               ; DW_ATOM_die_offset
	.short	6                               ; DW_FORM_data4
	.long	0                               ; Bucket 0
	.long	1                               ; Bucket 1
	.long	2                               ; Bucket 2
	.long	3                               ; Bucket 3
	.long	4                               ; Bucket 4
	.long	-1                              ; Bucket 5
	.long	-1                              ; Bucket 6
	.long	-1                              ; Bucket 7
	.long	5                               ; Bucket 8
	.long	6                               ; Bucket 9
	.long	7                               ; Bucket 10
	.long	10                              ; Bucket 11
	.long	1582492608                      ; Hash in Bucket 0
	.long	250536889                       ; Hash in Bucket 1
	.long	-224174954                      ; Hash in Bucket 2
	.long	250537143                       ; Hash in Bucket 3
	.long	-1126679100                     ; Hash in Bucket 4
	.long	-759728696                      ; Hash in Bucket 8
	.long	-1126679263                     ; Hash in Bucket 9
	.long	226778194                       ; Hash in Bucket 10
	.long	1700920738                      ; Hash in Bucket 10
	.long	-1801956726                     ; Hash in Bucket 10
	.long	250529639                       ; Hash in Bucket 11
	.long	-1126679201                     ; Hash in Bucket 11
.set Lset845, LNames10-Lnames_begin     ; Offset in Bucket 0
	.long	Lset845
.set Lset846, LNames11-Lnames_begin     ; Offset in Bucket 1
	.long	Lset846
.set Lset847, LNames6-Lnames_begin      ; Offset in Bucket 2
	.long	Lset847
.set Lset848, LNames9-Lnames_begin      ; Offset in Bucket 3
	.long	Lset848
.set Lset849, LNames2-Lnames_begin      ; Offset in Bucket 4
	.long	Lset849
.set Lset850, LNames1-Lnames_begin      ; Offset in Bucket 8
	.long	Lset850
.set Lset851, LNames7-Lnames_begin      ; Offset in Bucket 9
	.long	Lset851
.set Lset852, LNames5-Lnames_begin      ; Offset in Bucket 10
	.long	Lset852
.set Lset853, LNames8-Lnames_begin      ; Offset in Bucket 10
	.long	Lset853
.set Lset854, LNames3-Lnames_begin      ; Offset in Bucket 10
	.long	Lset854
.set Lset855, LNames0-Lnames_begin      ; Offset in Bucket 11
	.long	Lset855
.set Lset856, LNames4-Lnames_begin      ; Offset in Bucket 11
	.long	Lset856
LNames10:
	.long	244                             ; bf16_to_f32
	.long	3                               ; Num DIEs
	.long	126
	.long	2732
	.long	2755
	.long	0
LNames11:
	.long	302                             ; bf16_max
	.long	1                               ; Num DIEs
	.long	870
	.long	0
LNames6:
	.long	478                             ; parse_writemask
	.long	1                               ; Num DIEs
	.long	2353
	.long	0
LNames9:
	.long	265                             ; bf16_min
	.long	1                               ; Num DIEs
	.long	835
	.long	0
LNames2:
	.long	350                             ; vecfp_alu64
	.long	2                               ; Num DIEs
	.long	1102
	.long	2973
	.long	0
LNames1:
	.long	311                             ; vecfp_alu_bf16
	.long	1                               ; Num DIEs
	.long	752
	.long	0
LNames7:
	.long	326                             ; vecfp_alu16
	.long	2                               ; Num DIEs
	.long	996
	.long	2480
	.long	0
LNames5:
	.long	362                             ; load_xy_reg
	.long	2                               ; Num DIEs
	.long	1981
	.long	2039
	.long	0
LNames8:
	.long	395                             ; xy_shuffle
	.long	2                               ; Num DIEs
	.long	2149
	.long	2251
	.long	0
LNames3:
	.long	547                             ; emulate_AMX_VECFP
	.long	1                               ; Num DIEs
	.long	1637
	.long	0
LNames0:
	.long	256                             ; bf16_fma
	.long	1                               ; Num DIEs
	.long	164
	.long	0
LNames4:
	.long	338                             ; vecfp_alu32
	.long	3                               ; Num DIEs
	.long	1049
	.long	2691
	.long	2857
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
	.long	21                              ; Header Hash Count
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
	.long	15                              ; Bucket 7
	.long	17                              ; Bucket 8
	.long	20                              ; Bucket 9
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
	.long	249311216                       ; Hash in Bucket 6
	.long	789719536                       ; Hash in Bucket 6
	.long	-1622611670                     ; Hash in Bucket 6
	.long	80989467                        ; Hash in Bucket 7
	.long	290644127                       ; Hash in Bucket 7
	.long	193495088                       ; Hash in Bucket 8
	.long	878862258                       ; Hash in Bucket 8
	.long	-113419488                      ; Hash in Bucket 8
	.long	274395349                       ; Hash in Bucket 9
.set Lset857, Ltypes1-Ltypes_begin      ; Offset in Bucket 0
	.long	Lset857
.set Lset858, Ltypes18-Ltypes_begin     ; Offset in Bucket 1
	.long	Lset858
.set Lset859, Ltypes13-Ltypes_begin     ; Offset in Bucket 3
	.long	Lset859
.set Lset860, Ltypes4-Ltypes_begin      ; Offset in Bucket 3
	.long	Lset860
.set Lset861, Ltypes8-Ltypes_begin      ; Offset in Bucket 4
	.long	Lset861
.set Lset862, Ltypes20-Ltypes_begin     ; Offset in Bucket 4
	.long	Lset862
.set Lset863, Ltypes9-Ltypes_begin      ; Offset in Bucket 4
	.long	Lset863
.set Lset864, Ltypes7-Ltypes_begin      ; Offset in Bucket 4
	.long	Lset864
.set Lset865, Ltypes2-Ltypes_begin      ; Offset in Bucket 5
	.long	Lset865
.set Lset866, Ltypes17-Ltypes_begin     ; Offset in Bucket 5
	.long	Lset866
.set Lset867, Ltypes19-Ltypes_begin     ; Offset in Bucket 5
	.long	Lset867
.set Lset868, Ltypes12-Ltypes_begin     ; Offset in Bucket 5
	.long	Lset868
.set Lset869, Ltypes10-Ltypes_begin     ; Offset in Bucket 6
	.long	Lset869
.set Lset870, Ltypes14-Ltypes_begin     ; Offset in Bucket 6
	.long	Lset870
.set Lset871, Ltypes0-Ltypes_begin      ; Offset in Bucket 6
	.long	Lset871
.set Lset872, Ltypes16-Ltypes_begin     ; Offset in Bucket 7
	.long	Lset872
.set Lset873, Ltypes15-Ltypes_begin     ; Offset in Bucket 7
	.long	Lset873
.set Lset874, Ltypes5-Ltypes_begin      ; Offset in Bucket 8
	.long	Lset874
.set Lset875, Ltypes11-Ltypes_begin     ; Offset in Bucket 8
	.long	Lset875
.set Lset876, Ltypes6-Ltypes_begin      ; Offset in Bucket 8
	.long	Lset876
.set Lset877, Ltypes3-Ltypes_begin      ; Offset in Bucket 9
	.long	Lset877
Ltypes1:
	.long	203                             ; unsigned long long
	.long	1                               ; Num DIEs
	.long	86
	.short	36
	.byte	0
	.long	0
Ltypes18:
	.long	443                             ; __ARRAY_SIZE_TYPE__
	.long	1                               ; Num DIEs
	.long	1335
	.short	36
	.byte	0
	.long	0
Ltypes13:
	.long	532                             ; float
	.long	1                               ; Num DIEs
	.long	1531
	.short	36
	.byte	0
	.long	0
Ltypes4:
	.long	694                             ; signed char
	.long	1                               ; Num DIEs
	.long	3353
	.short	36
	.byte	0
	.long	0
Ltypes8:
	.long	194                             ; uint64_t
	.long	1                               ; Num DIEs
	.long	75
	.short	22
	.byte	0
	.long	0
Ltypes20:
	.long	665                             ; amx_reg
	.long	2                               ; Num DIEs
	.long	3178
	.short	22
	.byte	0
	.long	3189
	.short	23
	.byte	0
	.long	0
Ltypes9:
	.long	593                             ; int32_t
	.long	1                               ; Num DIEs
	.long	3167
	.short	22
	.byte	0
	.long	0
Ltypes7:
	.long	230                             ; unsigned char
	.long	1                               ; Num DIEs
	.long	114
	.short	36
	.byte	0
	.long	0
Ltypes2:
	.long	414                             ; uint32_t
	.long	1                               ; Num DIEs
	.long	1305
	.short	22
	.byte	0
	.long	0
Ltypes17:
	.long	185                             ; _Float16
	.long	1                               ; Num DIEs
	.long	68
	.short	36
	.byte	0
	.long	0
Ltypes19:
	.long	732                             ; amx_state
	.long	2                               ; Num DIEs
	.long	3425
	.short	22
	.byte	0
	.long	3436
	.short	19
	.byte	0
	.long	0
Ltypes12:
	.long	423                             ; unsigned int
	.long	1                               ; Num DIEs
	.long	1316
	.short	36
	.byte	0
	.long	0
Ltypes10:
	.long	885                             ; _Bool
	.long	1                               ; Num DIEs
	.long	3528
	.short	36
	.byte	0
	.long	0
Ltypes14:
	.long	222                             ; uint8_t
	.long	1                               ; Num DIEs
	.long	103
	.short	22
	.byte	0
	.long	0
Ltypes0:
	.long	171                             ; int16_t
	.long	1                               ; Num DIEs
	.long	50
	.short	22
	.byte	0
	.long	0
Ltypes16:
	.long	687                             ; int8_t
	.long	1                               ; Num DIEs
	.long	3342
	.short	22
	.byte	0
	.long	0
Ltypes15:
	.long	274                             ; uint16_t
	.long	1                               ; Num DIEs
	.long	699
	.short	22
	.byte	0
	.long	0
Ltypes5:
	.long	528                             ; int
	.long	1                               ; Num DIEs
	.long	1467
	.short	36
	.byte	0
	.long	0
Ltypes11:
	.long	283                             ; unsigned short
	.long	1                               ; Num DIEs
	.long	710
	.short	36
	.byte	0
	.long	0
Ltypes6:
	.long	540                             ; double
	.long	1                               ; Num DIEs
	.long	1630
	.short	36
	.byte	0
	.long	0
Ltypes3:
	.long	179                             ; short
	.long	1                               ; Num DIEs
	.long	61
	.short	36
	.byte	0
	.long	0
.subsections_via_symbols
	.section	__DWARF,__debug_line,regular,debug
Lsection_line:
Lline_table_start0:
