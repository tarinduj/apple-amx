	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 14, 4
	.file	1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types" "_uint32_t.h"
	.file	2 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types" "_uint8_t.h"
	.globl	_emulate_AMX_LDX                ; -- Begin function emulate_AMX_LDX
	.p2align	2
_emulate_AMX_LDX:                       ; @emulate_AMX_LDX
Lfunc_begin0:
	.file	3 "/Users/tarindujayatilaka/Documents/superopt/apple-amx" "ldst.c"
	.loc	3 34 0                          ; ldst.c:34:0
	.cfi_startproc
; %bb.0:
	;DEBUG_VALUE: emulate_AMX_LDX:state <- $x0
	;DEBUG_VALUE: emulate_AMX_LDX:operand <- $x1
	.loc	3 35 5 prologue_end             ; ldst.c:35:5
	mov	w2, #7
Ltmp0:
	b	_ld_common
Ltmp1:
Lfunc_end0:
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function ld_common
_ld_common:                             ; @ld_common
Lfunc_begin1:
	.loc	3 8 0                           ; ldst.c:8:0
	.cfi_startproc
; %bb.0:
	;DEBUG_VALUE: ld_common:regs <- $x0
	;DEBUG_VALUE: ld_common:operand <- $x1
	;DEBUG_VALUE: ld_common:regmask <- $w2
	.loc	3 9 28 prologue_end             ; ldst.c:9:28
	lsr	x8, x1, #56
	.loc	3 9 19 is_stmt 0                ; ldst.c:9:19
	and	w9, w8, w2
Ltmp2:
	;DEBUG_VALUE: ld_common:rn <- $w9
	.loc	3 10 52 is_stmt 1               ; ldst.c:10:52
	and	x8, x1, #0xffffffffffffff
Ltmp3:
	;DEBUG_VALUE: ld_common:src <- $x8
	.loc	3 11 5                          ; ldst.c:11:5
	ldp	q0, q1, [x8]
	ldp	q2, q3, [x8, #32]
	add	x10, x0, x9, lsl #6
	stp	q2, q3, [x10, #32]
	stp	q0, q1, [x10]
	.loc	3 12 9                          ; ldst.c:12:9
	tbz	x1, #62, LBB1_5
Ltmp4:
; %bb.1:
	;DEBUG_VALUE: ld_common:src <- $x8
	;DEBUG_VALUE: ld_common:rn <- $w9
	;DEBUG_VALUE: ld_common:regmask <- $w2
	;DEBUG_VALUE: ld_common:operand <- $x1
	;DEBUG_VALUE: ld_common:regs <- $x0
	;DEBUG_VALUE: rs <- 1
	.loc	3 14 14                         ; ldst.c:14:14
Lloh0:
	adrp	x11, _AMX_VER@GOTPAGE
Lloh1:
	ldr	x11, [x11, _AMX_VER@GOTPAGEOFF]
	ldr	w10, [x11]
	mov	w12, #1
	mov	w13, #1
Ltmp5:
	.loc	3 15 18                         ; ldst.c:15:18
	tst	x1, #0x1000000000000000
	mov	w14, #2
	mov	w15, #4
	csel	w14, w15, w14, eq
Ltmp6:
	;DEBUG_VALUE: rs <- $w14
	.loc	3 14 73                         ; ldst.c:14:73
	cmp	w2, #15
	csel	w14, w13, w14, hi
Ltmp7:
	tst	x1, #0x2000000000000000
	csel	w13, w13, w14, eq
	.loc	3 14 37 is_stmt 0               ; ldst.c:14:37
	cmp	w10, #3
	csel	w10, w12, w13, lo
Ltmp8:
	;DEBUG_VALUE: rs <- $w10
	.loc	3 17 9 is_stmt 1                ; ldst.c:17:9
	add	w12, w10, w9
	and	w12, w12, w2
	add	x12, x0, x12, lsl #6
	ldp	q0, q1, [x8, #64]
	ldp	q2, q3, [x8, #96]
	stp	q2, q3, [x12, #32]
	stp	q0, q1, [x12]
Ltmp9:
	.loc	3 18 14                         ; ldst.c:18:14
	ldr	w11, [x11]
	.loc	3 18 37 is_stmt 0               ; ldst.c:18:37
	cmp	w11, #2
	b.lo	LBB1_5
Ltmp10:
; %bb.2:
	;DEBUG_VALUE: rs <- $w10
	;DEBUG_VALUE: ld_common:src <- $x8
	;DEBUG_VALUE: ld_common:rn <- $w9
	;DEBUG_VALUE: ld_common:regmask <- $w2
	;DEBUG_VALUE: ld_common:operand <- $x1
	;DEBUG_VALUE: ld_common:regs <- $x0
	.loc	3 18 77                         ; ldst.c:18:77
	tbz	x1, #60, LBB1_5
Ltmp11:
; %bb.3:
	;DEBUG_VALUE: rs <- $w10
	;DEBUG_VALUE: ld_common:src <- $x8
	;DEBUG_VALUE: ld_common:rn <- $w9
	;DEBUG_VALUE: ld_common:regmask <- $w2
	;DEBUG_VALUE: ld_common:operand <- $x1
	;DEBUG_VALUE: ld_common:regs <- $x0
	cmp	w2, #15
	b.hi	LBB1_5
Ltmp12:
; %bb.4:
	;DEBUG_VALUE: rs <- $w10
	;DEBUG_VALUE: ld_common:src <- $x8
	;DEBUG_VALUE: ld_common:rn <- $w9
	;DEBUG_VALUE: ld_common:regmask <- $w2
	;DEBUG_VALUE: ld_common:operand <- $x1
	;DEBUG_VALUE: ld_common:regs <- $x0
	.loc	3 19 13 is_stmt 1               ; ldst.c:19:13
	add	w9, w9, w10, lsl #1
Ltmp13:
	and	w11, w9, w2
	ldp	q0, q1, [x8, #128]
	ldp	q2, q3, [x8, #160]
	add	x11, x0, x11, lsl #6
	stp	q2, q3, [x11, #32]
	stp	q0, q1, [x11]
	.loc	3 20 13                         ; ldst.c:20:13
	add	w9, w9, w10
	and	w9, w9, w2
	add	x9, x0, x9, lsl #6
	ldp	q0, q1, [x8, #192]
	ldp	q2, q3, [x8, #224]
	stp	q2, q3, [x9, #32]
	stp	q0, q1, [x9]
Ltmp14:
LBB1_5:
	;DEBUG_VALUE: ld_common:src <- $x8
	;DEBUG_VALUE: ld_common:regmask <- $w2
	;DEBUG_VALUE: ld_common:operand <- $x1
	;DEBUG_VALUE: ld_common:regs <- $x0
	.loc	3 23 1                          ; ldst.c:23:1
	ret
Ltmp15:
	.loh AdrpLdrGot	Lloh0, Lloh1
Lfunc_end1:
	.cfi_endproc
                                        ; -- End function
	.globl	_emulate_AMX_LDY                ; -- Begin function emulate_AMX_LDY
	.p2align	2
_emulate_AMX_LDY:                       ; @emulate_AMX_LDY
Lfunc_begin2:
	.loc	3 38 0                          ; ldst.c:38:0
	.cfi_startproc
; %bb.0:
	;DEBUG_VALUE: emulate_AMX_LDY:state <- $x0
	;DEBUG_VALUE: emulate_AMX_LDY:operand <- $x1
	.loc	3 39 22 prologue_end            ; ldst.c:39:22
	add	x0, x0, #512
Ltmp16:
	;DEBUG_VALUE: emulate_AMX_LDY:state <- [DW_OP_LLVM_entry_value 1] $x0
	.loc	3 39 5 is_stmt 0                ; ldst.c:39:5
	mov	w2, #7
Ltmp17:
	b	_ld_common
Ltmp18:
Lfunc_end2:
	.cfi_endproc
                                        ; -- End function
	.globl	_emulate_AMX_LDZ                ; -- Begin function emulate_AMX_LDZ
	.p2align	2
_emulate_AMX_LDZ:                       ; @emulate_AMX_LDZ
Lfunc_begin3:
	.loc	3 42 0 is_stmt 1                ; ldst.c:42:0
	.cfi_startproc
; %bb.0:
	;DEBUG_VALUE: emulate_AMX_LDZ:state <- $x0
	;DEBUG_VALUE: emulate_AMX_LDZ:operand <- $x1
	.loc	3 43 22 prologue_end            ; ldst.c:43:22
	add	x9, x0, #1024
Ltmp19:
	;DEBUG_VALUE: ld_common:regmask <- 63
	;DEBUG_VALUE: ld_common:operand <- $x1
	;DEBUG_VALUE: ld_common:regs <- $x9
	.loc	3 9 19                          ; ldst.c:9:19
	ubfx	x10, x1, #56, #6
Ltmp20:
	;DEBUG_VALUE: ld_common:rn <- [DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 32 7, DW_OP_constu 63, DW_OP_and, DW_OP_stack_value] undef
	.loc	3 10 52                         ; ldst.c:10:52
	and	x8, x1, #0xffffffffffffff
Ltmp21:
	;DEBUG_VALUE: ld_common:src <- $x8
	.loc	3 11 5                          ; ldst.c:11:5
	add	x10, x9, x10, lsl #6
	ldp	q0, q1, [x8]
	ldp	q2, q3, [x8, #32]
	stp	q2, q3, [x10, #32]
	stp	q0, q1, [x10]
	.loc	3 12 9                          ; ldst.c:12:9
	tbz	x1, #62, LBB3_2
Ltmp22:
; %bb.1:
	;DEBUG_VALUE: ld_common:src <- $x8
	;DEBUG_VALUE: ld_common:regs <- $x9
	;DEBUG_VALUE: ld_common:operand <- $x1
	;DEBUG_VALUE: ld_common:regmask <- 63
	;DEBUG_VALUE: emulate_AMX_LDZ:operand <- $x1
	;DEBUG_VALUE: emulate_AMX_LDZ:state <- $x0
	.loc	3 0 0 is_stmt 0                 ; ldst.c:0:0
	lsr	x10, x1, #56
Ltmp23:
	;DEBUG_VALUE: rs <- 1
	;DEBUG_VALUE: ld_common:rn <- [DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 32 7, DW_OP_constu 63, DW_OP_and, DW_OP_stack_value] $x10
	.loc	3 17 9 is_stmt 1                ; ldst.c:17:9
	add	w10, w10, #1
Ltmp24:
	and	x10, x10, #0x3f
	add	x9, x9, x10, lsl #6
Ltmp25:
	ldp	q0, q1, [x8, #64]
	ldp	q2, q3, [x8, #96]
	stp	q2, q3, [x9, #32]
	stp	q0, q1, [x9]
Ltmp26:
LBB3_2:
	;DEBUG_VALUE: emulate_AMX_LDZ:operand <- $x1
	;DEBUG_VALUE: emulate_AMX_LDZ:state <- $x0
	.loc	3 44 1                          ; ldst.c:44:1
	ret
Ltmp27:
Lfunc_end3:
	.cfi_endproc
	.file	4 "/Users/tarindujayatilaka/Documents/superopt/apple-amx" "./emulate.h"
	.file	5 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types" "_uint16_t.h"
	.file	6 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types" "_int8_t.h"
	.file	7 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types" "_int16_t.h"
	.file	8 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types" "_int32_t.h"
	.file	9 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types" "_uint64_t.h"
                                        ; -- End function
	.globl	_emulate_AMX_LDZI               ; -- Begin function emulate_AMX_LDZI
	.p2align	2
_emulate_AMX_LDZI:                      ; @emulate_AMX_LDZI
Lfunc_begin4:
	.loc	3 46 0                          ; ldst.c:46:0
	.cfi_startproc
; %bb.0:
	;DEBUG_VALUE: emulate_AMX_LDZI:state <- $x0
	;DEBUG_VALUE: emulate_AMX_LDZI:operand <- $x1
	.loc	3 47 28 prologue_end            ; ldst.c:47:28
	lsr	x9, x1, #56
Ltmp28:
	;DEBUG_VALUE: emulate_AMX_LDZI:rn <- [DW_OP_constu 63, DW_OP_and, DW_OP_stack_value] $w9
	.loc	3 48 30                         ; ldst.c:48:30
	ubfiz	w11, w9, #3, #1
Ltmp29:
	;DEBUG_VALUE: emulate_AMX_LDZI:half <- $w11
	.loc	3 49 60                         ; ldst.c:49:60
	and	x8, x1, #0xffffffffffffff
Ltmp30:
	;DEBUG_VALUE: i <- 0
	;DEBUG_VALUE: emulate_AMX_LDZI:src <- $x8
	.loc	3 0 60 is_stmt 0                ; ldst.c:0:60
	and	w12, w9, #0x3e
Ltmp31:
	.loc	3 51 63 is_stmt 1               ; ldst.c:51:63
	ldr	w13, [x8]
	.loc	3 51 9 is_stmt 0                ; ldst.c:51:9
	add	x14, x0, #1024
	add	x10, x14, x12, lsl #6
	ubfiz	x15, x11, #2, #32
	.loc	3 51 61                         ; ldst.c:51:61
	str	w13, [x10, x15]
Ltmp32:
	;DEBUG_VALUE: i <- 1
	.loc	3 51 63                         ; ldst.c:51:63
	ldr	w13, [x8, #4]
	.loc	3 51 18                         ; ldst.c:51:18
	orr	w11, w12, #0x1
Ltmp33:
	.loc	3 51 9                          ; ldst.c:51:9
	add	x11, x14, x11, lsl #6
	.loc	3 51 61                         ; ldst.c:51:61
	str	w13, [x11, x15]
Ltmp34:
	;DEBUG_VALUE: i <- 2
	.loc	3 51 63                         ; ldst.c:51:63
	ldr	w12, [x8, #8]
	mov	w13, #1
	.loc	3 51 49                         ; ldst.c:51:49
	bfi	w13, w9, #3, #1
	.loc	3 51 9                          ; ldst.c:51:9
	ubfiz	x13, x13, #2, #32
	.loc	3 51 61                         ; ldst.c:51:61
	str	w12, [x10, x13]
Ltmp35:
	;DEBUG_VALUE: i <- 3
	.loc	3 51 63                         ; ldst.c:51:63
	ldr	w12, [x8, #12]
	.loc	3 51 61                         ; ldst.c:51:61
	str	w12, [x11, x13]
Ltmp36:
	;DEBUG_VALUE: i <- 4
	.loc	3 51 63                         ; ldst.c:51:63
	ldr	w12, [x8, #16]
	mov	w13, #2
	.loc	3 51 49                         ; ldst.c:51:49
	bfi	w13, w9, #3, #1
	.loc	3 51 9                          ; ldst.c:51:9
	ubfiz	x13, x13, #2, #32
	.loc	3 51 61                         ; ldst.c:51:61
	str	w12, [x10, x13]
Ltmp37:
	;DEBUG_VALUE: i <- 5
	.loc	3 51 63                         ; ldst.c:51:63
	ldr	w12, [x8, #20]
	.loc	3 51 61                         ; ldst.c:51:61
	str	w12, [x11, x13]
Ltmp38:
	;DEBUG_VALUE: i <- 6
	.loc	3 51 63                         ; ldst.c:51:63
	ldr	w12, [x8, #24]
	mov	w13, #3
	.loc	3 51 49                         ; ldst.c:51:49
	bfi	w13, w9, #3, #1
	.loc	3 51 9                          ; ldst.c:51:9
	ubfiz	x13, x13, #2, #32
	.loc	3 51 61                         ; ldst.c:51:61
	str	w12, [x10, x13]
Ltmp39:
	;DEBUG_VALUE: i <- 7
	.loc	3 51 63                         ; ldst.c:51:63
	ldr	w12, [x8, #28]
	.loc	3 51 61                         ; ldst.c:51:61
	str	w12, [x11, x13]
Ltmp40:
	;DEBUG_VALUE: i <- 8
	.loc	3 51 63                         ; ldst.c:51:63
	ldr	w12, [x8, #32]
	mov	w13, #4
	.loc	3 51 49                         ; ldst.c:51:49
	bfi	w13, w9, #3, #1
	.loc	3 51 9                          ; ldst.c:51:9
	ubfiz	x13, x13, #2, #32
	.loc	3 51 61                         ; ldst.c:51:61
	str	w12, [x10, x13]
Ltmp41:
	;DEBUG_VALUE: i <- 9
	.loc	3 51 63                         ; ldst.c:51:63
	ldr	w12, [x8, #36]
	.loc	3 51 61                         ; ldst.c:51:61
	str	w12, [x11, x13]
Ltmp42:
	;DEBUG_VALUE: i <- 10
	.loc	3 51 63                         ; ldst.c:51:63
	ldr	w12, [x8, #40]
	mov	w13, #5
	.loc	3 51 49                         ; ldst.c:51:49
	bfi	w13, w9, #3, #1
	.loc	3 51 9                          ; ldst.c:51:9
	ubfiz	x13, x13, #2, #32
	.loc	3 51 61                         ; ldst.c:51:61
	str	w12, [x10, x13]
Ltmp43:
	;DEBUG_VALUE: i <- 11
	.loc	3 51 63                         ; ldst.c:51:63
	ldr	w12, [x8, #44]
	.loc	3 51 61                         ; ldst.c:51:61
	str	w12, [x11, x13]
Ltmp44:
	;DEBUG_VALUE: i <- 12
	.loc	3 51 63                         ; ldst.c:51:63
	ldr	w12, [x8, #48]
	mov	w13, #6
	.loc	3 51 49                         ; ldst.c:51:49
	bfi	w13, w9, #3, #1
	.loc	3 51 9                          ; ldst.c:51:9
	ubfiz	x13, x13, #2, #32
	.loc	3 51 61                         ; ldst.c:51:61
	str	w12, [x10, x13]
Ltmp45:
	;DEBUG_VALUE: i <- 13
	.loc	3 51 63                         ; ldst.c:51:63
	ldr	w12, [x8, #52]
	.loc	3 51 61                         ; ldst.c:51:61
	str	w12, [x11, x13]
Ltmp46:
	;DEBUG_VALUE: i <- 14
	.loc	3 51 63                         ; ldst.c:51:63
	ldr	w12, [x8, #56]
	mov	w13, #7
	.loc	3 51 49                         ; ldst.c:51:49
	bfi	w13, w9, #3, #1
	.loc	3 51 9                          ; ldst.c:51:9
	ubfiz	x9, x13, #2, #32
Ltmp47:
	.loc	3 51 61                         ; ldst.c:51:61
	str	w12, [x10, x9]
Ltmp48:
	;DEBUG_VALUE: i <- 15
	.loc	3 51 63                         ; ldst.c:51:63
	ldr	w8, [x8, #60]
Ltmp49:
	.loc	3 51 61                         ; ldst.c:51:61
	str	w8, [x11, x9]
Ltmp50:
	;DEBUG_VALUE: i <- 16
	.loc	3 53 1 is_stmt 1                ; ldst.c:53:1
	ret
Ltmp51:
Lfunc_end4:
	.cfi_endproc
                                        ; -- End function
	.globl	_emulate_AMX_STX                ; -- Begin function emulate_AMX_STX
	.p2align	2
_emulate_AMX_STX:                       ; @emulate_AMX_STX
Lfunc_begin5:
	.loc	3 55 0                          ; ldst.c:55:0
	.cfi_startproc
; %bb.0:
	;DEBUG_VALUE: emulate_AMX_STX:state <- $x0
	;DEBUG_VALUE: emulate_AMX_STX:operand <- $x1
	;DEBUG_VALUE: st_common:regs <- $x0
	;DEBUG_VALUE: st_common:operand <- $x1
	;DEBUG_VALUE: st_common:regmask <- 7
	.loc	3 26 19 prologue_end            ; ldst.c:26:19
	ubfx	x9, x1, #56, #3
Ltmp52:
	;DEBUG_VALUE: st_common:rn <- [DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 32 7, DW_OP_constu 7, DW_OP_and, DW_OP_stack_value] undef
	.loc	3 27 46                         ; ldst.c:27:46
	and	x8, x1, #0xffffffffffffff
Ltmp53:
	;DEBUG_VALUE: st_common:dst <- $x8
	.loc	3 28 5                          ; ldst.c:28:5
	add	x9, x0, x9, lsl #6
	ldp	q0, q1, [x9]
	ldp	q2, q3, [x9, #32]
	stp	q2, q3, [x8, #32]
	stp	q0, q1, [x8]
	.loc	3 29 9                          ; ldst.c:29:9
	tbz	x1, #62, LBB5_2
Ltmp54:
; %bb.1:
	;DEBUG_VALUE: st_common:dst <- $x8
	;DEBUG_VALUE: st_common:regmask <- 7
	;DEBUG_VALUE: st_common:operand <- $x1
	;DEBUG_VALUE: st_common:regs <- $x0
	;DEBUG_VALUE: emulate_AMX_STX:operand <- $x1
	;DEBUG_VALUE: emulate_AMX_STX:state <- $x0
	.loc	3 0 0 is_stmt 0                 ; ldst.c:0:0
	lsr	x9, x1, #56
Ltmp55:
	;DEBUG_VALUE: st_common:rn <- [DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 32 7, DW_OP_constu 7, DW_OP_and, DW_OP_stack_value] $x9
	.loc	3 30 9 is_stmt 1                ; ldst.c:30:9
	add	w9, w9, #1
Ltmp56:
	and	x9, x9, #0x7
	add	x9, x0, x9, lsl #6
	ldp	q0, q1, [x9]
	ldp	q2, q3, [x9, #32]
	stp	q2, q3, [x8, #96]
	stp	q0, q1, [x8, #64]
Ltmp57:
LBB5_2:
	;DEBUG_VALUE: emulate_AMX_STX:operand <- $x1
	;DEBUG_VALUE: emulate_AMX_STX:state <- $x0
	.loc	3 57 1                          ; ldst.c:57:1
	ret
Ltmp58:
Lfunc_end5:
	.cfi_endproc
                                        ; -- End function
	.globl	_emulate_AMX_STY                ; -- Begin function emulate_AMX_STY
	.p2align	2
_emulate_AMX_STY:                       ; @emulate_AMX_STY
Lfunc_begin6:
	.loc	3 59 0                          ; ldst.c:59:0
	.cfi_startproc
; %bb.0:
	;DEBUG_VALUE: emulate_AMX_STY:state <- $x0
	;DEBUG_VALUE: emulate_AMX_STY:operand <- $x1
	.loc	3 60 22 prologue_end            ; ldst.c:60:22
	add	x9, x0, #512
Ltmp59:
	;DEBUG_VALUE: st_common:regmask <- 7
	;DEBUG_VALUE: st_common:operand <- $x1
	;DEBUG_VALUE: st_common:regs <- $x9
	.loc	3 26 19                         ; ldst.c:26:19
	ubfx	x10, x1, #56, #3
Ltmp60:
	;DEBUG_VALUE: st_common:rn <- [DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 32 7, DW_OP_constu 7, DW_OP_and, DW_OP_stack_value] undef
	.loc	3 27 46                         ; ldst.c:27:46
	and	x8, x1, #0xffffffffffffff
Ltmp61:
	;DEBUG_VALUE: st_common:dst <- $x8
	.loc	3 28 5                          ; ldst.c:28:5
	add	x10, x9, x10, lsl #6
	ldp	q0, q1, [x10]
	ldp	q2, q3, [x10, #32]
	stp	q2, q3, [x8, #32]
	stp	q0, q1, [x8]
	.loc	3 29 9                          ; ldst.c:29:9
	tbz	x1, #62, LBB6_2
Ltmp62:
; %bb.1:
	;DEBUG_VALUE: st_common:dst <- $x8
	;DEBUG_VALUE: st_common:regs <- $x9
	;DEBUG_VALUE: st_common:operand <- $x1
	;DEBUG_VALUE: st_common:regmask <- 7
	;DEBUG_VALUE: emulate_AMX_STY:operand <- $x1
	;DEBUG_VALUE: emulate_AMX_STY:state <- $x0
	.loc	3 0 0 is_stmt 0                 ; ldst.c:0:0
	lsr	x10, x1, #56
Ltmp63:
	;DEBUG_VALUE: st_common:rn <- [DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 32 7, DW_OP_constu 7, DW_OP_and, DW_OP_stack_value] $x10
	.loc	3 30 9 is_stmt 1                ; ldst.c:30:9
	add	w10, w10, #1
Ltmp64:
	and	x10, x10, #0x7
	add	x9, x9, x10, lsl #6
Ltmp65:
	ldp	q0, q1, [x9]
	ldp	q2, q3, [x9, #32]
	stp	q2, q3, [x8, #96]
	stp	q0, q1, [x8, #64]
Ltmp66:
LBB6_2:
	;DEBUG_VALUE: emulate_AMX_STY:operand <- $x1
	;DEBUG_VALUE: emulate_AMX_STY:state <- $x0
	.loc	3 61 1                          ; ldst.c:61:1
	ret
Ltmp67:
Lfunc_end6:
	.cfi_endproc
                                        ; -- End function
	.globl	_emulate_AMX_STZ                ; -- Begin function emulate_AMX_STZ
	.p2align	2
_emulate_AMX_STZ:                       ; @emulate_AMX_STZ
Lfunc_begin7:
	.loc	3 63 0                          ; ldst.c:63:0
	.cfi_startproc
; %bb.0:
	;DEBUG_VALUE: emulate_AMX_STZ:state <- $x0
	;DEBUG_VALUE: emulate_AMX_STZ:operand <- $x1
	.loc	3 64 22 prologue_end            ; ldst.c:64:22
	add	x9, x0, #1024
Ltmp68:
	;DEBUG_VALUE: st_common:regmask <- 63
	;DEBUG_VALUE: st_common:operand <- $x1
	;DEBUG_VALUE: st_common:regs <- $x9
	.loc	3 26 19                         ; ldst.c:26:19
	ubfx	x10, x1, #56, #6
Ltmp69:
	;DEBUG_VALUE: st_common:rn <- [DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 32 7, DW_OP_constu 63, DW_OP_and, DW_OP_stack_value] undef
	.loc	3 27 46                         ; ldst.c:27:46
	and	x8, x1, #0xffffffffffffff
Ltmp70:
	;DEBUG_VALUE: st_common:dst <- $x8
	.loc	3 28 5                          ; ldst.c:28:5
	add	x10, x9, x10, lsl #6
	ldp	q0, q1, [x10]
	ldp	q2, q3, [x10, #32]
	stp	q2, q3, [x8, #32]
	stp	q0, q1, [x8]
	.loc	3 29 9                          ; ldst.c:29:9
	tbz	x1, #62, LBB7_2
Ltmp71:
; %bb.1:
	;DEBUG_VALUE: st_common:dst <- $x8
	;DEBUG_VALUE: st_common:regs <- $x9
	;DEBUG_VALUE: st_common:operand <- $x1
	;DEBUG_VALUE: st_common:regmask <- 63
	;DEBUG_VALUE: emulate_AMX_STZ:operand <- $x1
	;DEBUG_VALUE: emulate_AMX_STZ:state <- $x0
	.loc	3 0 0 is_stmt 0                 ; ldst.c:0:0
	lsr	x10, x1, #56
Ltmp72:
	;DEBUG_VALUE: st_common:rn <- [DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 32 7, DW_OP_constu 63, DW_OP_and, DW_OP_stack_value] $x10
	.loc	3 30 9 is_stmt 1                ; ldst.c:30:9
	add	w10, w10, #1
Ltmp73:
	and	x10, x10, #0x3f
	add	x9, x9, x10, lsl #6
Ltmp74:
	ldp	q0, q1, [x9]
	ldp	q2, q3, [x9, #32]
	stp	q2, q3, [x8, #96]
	stp	q0, q1, [x8, #64]
Ltmp75:
LBB7_2:
	;DEBUG_VALUE: emulate_AMX_STZ:operand <- $x1
	;DEBUG_VALUE: emulate_AMX_STZ:state <- $x0
	.loc	3 65 1                          ; ldst.c:65:1
	ret
Ltmp76:
Lfunc_end7:
	.cfi_endproc
                                        ; -- End function
	.globl	_emulate_AMX_STZI               ; -- Begin function emulate_AMX_STZI
	.p2align	2
_emulate_AMX_STZI:                      ; @emulate_AMX_STZI
Lfunc_begin8:
	.loc	3 67 0                          ; ldst.c:67:0
	.cfi_startproc
; %bb.0:
	;DEBUG_VALUE: emulate_AMX_STZI:state <- $x0
	;DEBUG_VALUE: emulate_AMX_STZI:operand <- $x1
	.loc	3 68 28 prologue_end            ; ldst.c:68:28
	lsr	x9, x1, #56
Ltmp77:
	;DEBUG_VALUE: emulate_AMX_STZI:rn <- [DW_OP_constu 63, DW_OP_and, DW_OP_stack_value] $w9
	.loc	3 69 30                         ; ldst.c:69:30
	ubfiz	w11, w9, #3, #1
Ltmp78:
	;DEBUG_VALUE: emulate_AMX_STZI:half <- $w11
	.loc	3 70 48                         ; ldst.c:70:48
	and	x8, x1, #0xffffffffffffff
Ltmp79:
	;DEBUG_VALUE: i <- 0
	;DEBUG_VALUE: emulate_AMX_STZI:dst <- $x8
	.loc	3 0 48 is_stmt 0                ; ldst.c:0:48
	and	w12, w9, #0x3e
Ltmp80:
	.loc	3 72 18 is_stmt 1               ; ldst.c:72:18
	add	x13, x0, #1024
	add	x10, x13, x12, lsl #6
	ubfiz	x14, x11, #2, #32
	ldr	w11, [x10, x14]
Ltmp81:
	.loc	3 72 16 is_stmt 0               ; ldst.c:72:16
	str	w11, [x8]
Ltmp82:
	;DEBUG_VALUE: i <- 1
	.loc	3 72 27                         ; ldst.c:72:27
	orr	w11, w12, #0x1
	.loc	3 72 18                         ; ldst.c:72:18
	add	x11, x13, x11, lsl #6
	ldr	w12, [x11, x14]
	.loc	3 72 16                         ; ldst.c:72:16
	str	w12, [x8, #4]
	mov	w12, #1
Ltmp83:
	;DEBUG_VALUE: i <- 2
	.loc	3 72 58                         ; ldst.c:72:58
	bfi	w12, w9, #3, #1
	.loc	3 72 18                         ; ldst.c:72:18
	ubfiz	x12, x12, #2, #32
	ldr	w13, [x10, x12]
	.loc	3 72 16                         ; ldst.c:72:16
	str	w13, [x8, #8]
Ltmp84:
	;DEBUG_VALUE: i <- 3
	.loc	3 72 18                         ; ldst.c:72:18
	ldr	w12, [x11, x12]
	.loc	3 72 16                         ; ldst.c:72:16
	str	w12, [x8, #12]
	mov	w12, #2
Ltmp85:
	;DEBUG_VALUE: i <- 4
	.loc	3 72 58                         ; ldst.c:72:58
	bfi	w12, w9, #3, #1
	.loc	3 72 18                         ; ldst.c:72:18
	ubfiz	x12, x12, #2, #32
	ldr	w13, [x10, x12]
	.loc	3 72 16                         ; ldst.c:72:16
	str	w13, [x8, #16]
Ltmp86:
	;DEBUG_VALUE: i <- 5
	.loc	3 72 18                         ; ldst.c:72:18
	ldr	w12, [x11, x12]
	.loc	3 72 16                         ; ldst.c:72:16
	str	w12, [x8, #20]
	mov	w12, #3
Ltmp87:
	;DEBUG_VALUE: i <- 6
	.loc	3 72 58                         ; ldst.c:72:58
	bfi	w12, w9, #3, #1
	.loc	3 72 18                         ; ldst.c:72:18
	ubfiz	x12, x12, #2, #32
	ldr	w13, [x10, x12]
	.loc	3 72 16                         ; ldst.c:72:16
	str	w13, [x8, #24]
Ltmp88:
	;DEBUG_VALUE: i <- 7
	.loc	3 72 18                         ; ldst.c:72:18
	ldr	w12, [x11, x12]
	.loc	3 72 16                         ; ldst.c:72:16
	str	w12, [x8, #28]
	mov	w12, #4
Ltmp89:
	;DEBUG_VALUE: i <- 8
	.loc	3 72 58                         ; ldst.c:72:58
	bfi	w12, w9, #3, #1
	.loc	3 72 18                         ; ldst.c:72:18
	ubfiz	x12, x12, #2, #32
	ldr	w13, [x10, x12]
	.loc	3 72 16                         ; ldst.c:72:16
	str	w13, [x8, #32]
Ltmp90:
	;DEBUG_VALUE: i <- 9
	.loc	3 72 18                         ; ldst.c:72:18
	ldr	w12, [x11, x12]
	.loc	3 72 16                         ; ldst.c:72:16
	str	w12, [x8, #36]
	mov	w12, #5
Ltmp91:
	;DEBUG_VALUE: i <- 10
	.loc	3 72 58                         ; ldst.c:72:58
	bfi	w12, w9, #3, #1
	.loc	3 72 18                         ; ldst.c:72:18
	ubfiz	x12, x12, #2, #32
	ldr	w13, [x10, x12]
	.loc	3 72 16                         ; ldst.c:72:16
	str	w13, [x8, #40]
Ltmp92:
	;DEBUG_VALUE: i <- 11
	.loc	3 72 18                         ; ldst.c:72:18
	ldr	w12, [x11, x12]
	.loc	3 72 16                         ; ldst.c:72:16
	str	w12, [x8, #44]
	mov	w12, #6
Ltmp93:
	;DEBUG_VALUE: i <- 12
	.loc	3 72 58                         ; ldst.c:72:58
	bfi	w12, w9, #3, #1
	.loc	3 72 18                         ; ldst.c:72:18
	ubfiz	x12, x12, #2, #32
	ldr	w13, [x10, x12]
	.loc	3 72 16                         ; ldst.c:72:16
	str	w13, [x8, #48]
Ltmp94:
	;DEBUG_VALUE: i <- 13
	.loc	3 72 18                         ; ldst.c:72:18
	ldr	w12, [x11, x12]
	.loc	3 72 16                         ; ldst.c:72:16
	str	w12, [x8, #52]
	mov	w12, #7
Ltmp95:
	;DEBUG_VALUE: i <- 14
	.loc	3 72 58                         ; ldst.c:72:58
	bfi	w12, w9, #3, #1
	.loc	3 72 18                         ; ldst.c:72:18
	ubfiz	x9, x12, #2, #32
Ltmp96:
	ldr	w10, [x10, x9]
	.loc	3 72 16                         ; ldst.c:72:16
	str	w10, [x8, #56]
Ltmp97:
	;DEBUG_VALUE: i <- 15
	.loc	3 72 18                         ; ldst.c:72:18
	ldr	w9, [x11, x9]
	.loc	3 72 16                         ; ldst.c:72:16
	str	w9, [x8, #60]
Ltmp98:
	;DEBUG_VALUE: i <- 16
	.loc	3 74 1 is_stmt 1                ; ldst.c:74:1
	ret
Ltmp99:
Lfunc_end8:
	.cfi_endproc
                                        ; -- End function
	.section	__DWARF,__debug_loc,regular,debug
Lsection_debug_loc:
Ldebug_loc0:
.set Lset0, Ltmp2-Lfunc_begin0
	.quad	Lset0
.set Lset1, Ltmp13-Lfunc_begin0
	.quad	Lset1
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
	.quad	0
	.quad	0
Ldebug_loc1:
.set Lset2, Ltmp3-Lfunc_begin0
	.quad	Lset2
.set Lset3, Lfunc_end1-Lfunc_begin0
	.quad	Lset3
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
	.quad	0
	.quad	0
Ldebug_loc2:
.set Lset4, Ltmp4-Lfunc_begin0
	.quad	Lset4
.set Lset5, Ltmp6-Lfunc_begin0
	.quad	Lset5
	.short	2                               ; Loc expr size
	.byte	49                              ; DW_OP_lit1
	.byte	159                             ; DW_OP_stack_value
.set Lset6, Ltmp6-Lfunc_begin0
	.quad	Lset6
.set Lset7, Ltmp7-Lfunc_begin0
	.quad	Lset7
	.short	1                               ; Loc expr size
	.byte	94                              ; DW_OP_reg14
.set Lset8, Ltmp8-Lfunc_begin0
	.quad	Lset8
.set Lset9, Ltmp14-Lfunc_begin0
	.quad	Lset9
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
	.quad	0
	.quad	0
Ldebug_loc3:
.set Lset10, Lfunc_begin2-Lfunc_begin0
	.quad	Lset10
.set Lset11, Ltmp16-Lfunc_begin0
	.quad	Lset11
	.short	1                               ; Loc expr size
	.byte	80                              ; DW_OP_reg0
.set Lset12, Ltmp16-Lfunc_begin0
	.quad	Lset12
.set Lset13, Lfunc_end2-Lfunc_begin0
	.quad	Lset13
	.short	4                               ; Loc expr size
	.byte	163                             ; DW_OP_entry_value
	.byte	1                               ; 1
	.byte	80                              ; DW_OP_reg0
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc4:
.set Lset14, Ltmp19-Lfunc_begin0
	.quad	Lset14
.set Lset15, Ltmp25-Lfunc_begin0
	.quad	Lset15
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
	.quad	0
	.quad	0
Ldebug_loc5:
.set Lset16, Ltmp23-Lfunc_begin0
	.quad	Lset16
.set Lset17, Ltmp24-Lfunc_begin0
	.quad	Lset17
	.short	6                               ; Loc expr size
	.byte	122                             ; DW_OP_breg10
	.byte	0                               ; 0
	.byte	16                              ; DW_OP_constu
	.byte	63                              ; 63
	.byte	26                              ; DW_OP_and
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc6:
.set Lset18, Ltmp21-Lfunc_begin0
	.quad	Lset18
.set Lset19, Ltmp26-Lfunc_begin0
	.quad	Lset19
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
	.quad	0
	.quad	0
Ldebug_loc7:
.set Lset20, Ltmp28-Lfunc_begin0
	.quad	Lset20
.set Lset21, Ltmp47-Lfunc_begin0
	.quad	Lset21
	.short	6                               ; Loc expr size
	.byte	121                             ; DW_OP_breg9
	.byte	0                               ; 0
	.byte	16                              ; DW_OP_constu
	.byte	63                              ; 63
	.byte	26                              ; DW_OP_and
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc8:
.set Lset22, Ltmp29-Lfunc_begin0
	.quad	Lset22
.set Lset23, Ltmp33-Lfunc_begin0
	.quad	Lset23
	.short	1                               ; Loc expr size
	.byte	91                              ; DW_OP_reg11
	.quad	0
	.quad	0
Ldebug_loc9:
.set Lset24, Ltmp30-Lfunc_begin0
	.quad	Lset24
.set Lset25, Ltmp32-Lfunc_begin0
	.quad	Lset25
	.short	2                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	159                             ; DW_OP_stack_value
.set Lset26, Ltmp32-Lfunc_begin0
	.quad	Lset26
.set Lset27, Ltmp34-Lfunc_begin0
	.quad	Lset27
	.short	2                               ; Loc expr size
	.byte	49                              ; DW_OP_lit1
	.byte	159                             ; DW_OP_stack_value
.set Lset28, Ltmp34-Lfunc_begin0
	.quad	Lset28
.set Lset29, Ltmp35-Lfunc_begin0
	.quad	Lset29
	.short	2                               ; Loc expr size
	.byte	50                              ; DW_OP_lit2
	.byte	159                             ; DW_OP_stack_value
.set Lset30, Ltmp35-Lfunc_begin0
	.quad	Lset30
.set Lset31, Ltmp36-Lfunc_begin0
	.quad	Lset31
	.short	2                               ; Loc expr size
	.byte	51                              ; DW_OP_lit3
	.byte	159                             ; DW_OP_stack_value
.set Lset32, Ltmp36-Lfunc_begin0
	.quad	Lset32
.set Lset33, Ltmp37-Lfunc_begin0
	.quad	Lset33
	.short	2                               ; Loc expr size
	.byte	52                              ; DW_OP_lit4
	.byte	159                             ; DW_OP_stack_value
.set Lset34, Ltmp37-Lfunc_begin0
	.quad	Lset34
.set Lset35, Ltmp38-Lfunc_begin0
	.quad	Lset35
	.short	2                               ; Loc expr size
	.byte	53                              ; DW_OP_lit5
	.byte	159                             ; DW_OP_stack_value
.set Lset36, Ltmp38-Lfunc_begin0
	.quad	Lset36
.set Lset37, Ltmp39-Lfunc_begin0
	.quad	Lset37
	.short	2                               ; Loc expr size
	.byte	54                              ; DW_OP_lit6
	.byte	159                             ; DW_OP_stack_value
.set Lset38, Ltmp39-Lfunc_begin0
	.quad	Lset38
.set Lset39, Ltmp40-Lfunc_begin0
	.quad	Lset39
	.short	2                               ; Loc expr size
	.byte	55                              ; DW_OP_lit7
	.byte	159                             ; DW_OP_stack_value
.set Lset40, Ltmp40-Lfunc_begin0
	.quad	Lset40
.set Lset41, Ltmp41-Lfunc_begin0
	.quad	Lset41
	.short	2                               ; Loc expr size
	.byte	56                              ; DW_OP_lit8
	.byte	159                             ; DW_OP_stack_value
.set Lset42, Ltmp41-Lfunc_begin0
	.quad	Lset42
.set Lset43, Ltmp42-Lfunc_begin0
	.quad	Lset43
	.short	2                               ; Loc expr size
	.byte	57                              ; DW_OP_lit9
	.byte	159                             ; DW_OP_stack_value
.set Lset44, Ltmp42-Lfunc_begin0
	.quad	Lset44
.set Lset45, Ltmp43-Lfunc_begin0
	.quad	Lset45
	.short	2                               ; Loc expr size
	.byte	58                              ; DW_OP_lit10
	.byte	159                             ; DW_OP_stack_value
.set Lset46, Ltmp43-Lfunc_begin0
	.quad	Lset46
.set Lset47, Ltmp44-Lfunc_begin0
	.quad	Lset47
	.short	2                               ; Loc expr size
	.byte	59                              ; DW_OP_lit11
	.byte	159                             ; DW_OP_stack_value
.set Lset48, Ltmp44-Lfunc_begin0
	.quad	Lset48
.set Lset49, Ltmp45-Lfunc_begin0
	.quad	Lset49
	.short	2                               ; Loc expr size
	.byte	60                              ; DW_OP_lit12
	.byte	159                             ; DW_OP_stack_value
.set Lset50, Ltmp45-Lfunc_begin0
	.quad	Lset50
.set Lset51, Ltmp46-Lfunc_begin0
	.quad	Lset51
	.short	2                               ; Loc expr size
	.byte	61                              ; DW_OP_lit13
	.byte	159                             ; DW_OP_stack_value
.set Lset52, Ltmp46-Lfunc_begin0
	.quad	Lset52
.set Lset53, Ltmp48-Lfunc_begin0
	.quad	Lset53
	.short	2                               ; Loc expr size
	.byte	62                              ; DW_OP_lit14
	.byte	159                             ; DW_OP_stack_value
.set Lset54, Ltmp48-Lfunc_begin0
	.quad	Lset54
.set Lset55, Ltmp50-Lfunc_begin0
	.quad	Lset55
	.short	2                               ; Loc expr size
	.byte	63                              ; DW_OP_lit15
	.byte	159                             ; DW_OP_stack_value
.set Lset56, Ltmp50-Lfunc_begin0
	.quad	Lset56
.set Lset57, Lfunc_end4-Lfunc_begin0
	.quad	Lset57
	.short	2                               ; Loc expr size
	.byte	64                              ; DW_OP_lit16
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc10:
.set Lset58, Ltmp30-Lfunc_begin0
	.quad	Lset58
.set Lset59, Ltmp49-Lfunc_begin0
	.quad	Lset59
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
	.quad	0
	.quad	0
Ldebug_loc11:
.set Lset60, Ltmp55-Lfunc_begin0
	.quad	Lset60
.set Lset61, Ltmp56-Lfunc_begin0
	.quad	Lset61
	.short	5                               ; Loc expr size
	.byte	121                             ; DW_OP_breg9
	.byte	0                               ; 0
	.byte	55                              ; DW_OP_lit7
	.byte	26                              ; DW_OP_and
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc12:
.set Lset62, Ltmp53-Lfunc_begin0
	.quad	Lset62
.set Lset63, Ltmp57-Lfunc_begin0
	.quad	Lset63
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
	.quad	0
	.quad	0
Ldebug_loc13:
.set Lset64, Ltmp59-Lfunc_begin0
	.quad	Lset64
.set Lset65, Ltmp65-Lfunc_begin0
	.quad	Lset65
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
	.quad	0
	.quad	0
Ldebug_loc14:
.set Lset66, Ltmp63-Lfunc_begin0
	.quad	Lset66
.set Lset67, Ltmp64-Lfunc_begin0
	.quad	Lset67
	.short	5                               ; Loc expr size
	.byte	122                             ; DW_OP_breg10
	.byte	0                               ; 0
	.byte	55                              ; DW_OP_lit7
	.byte	26                              ; DW_OP_and
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc15:
.set Lset68, Ltmp61-Lfunc_begin0
	.quad	Lset68
.set Lset69, Ltmp66-Lfunc_begin0
	.quad	Lset69
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
	.quad	0
	.quad	0
Ldebug_loc16:
.set Lset70, Ltmp68-Lfunc_begin0
	.quad	Lset70
.set Lset71, Ltmp74-Lfunc_begin0
	.quad	Lset71
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
	.quad	0
	.quad	0
Ldebug_loc17:
.set Lset72, Ltmp72-Lfunc_begin0
	.quad	Lset72
.set Lset73, Ltmp73-Lfunc_begin0
	.quad	Lset73
	.short	6                               ; Loc expr size
	.byte	122                             ; DW_OP_breg10
	.byte	0                               ; 0
	.byte	16                              ; DW_OP_constu
	.byte	63                              ; 63
	.byte	26                              ; DW_OP_and
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc18:
.set Lset74, Ltmp70-Lfunc_begin0
	.quad	Lset74
.set Lset75, Ltmp75-Lfunc_begin0
	.quad	Lset75
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
	.quad	0
	.quad	0
Ldebug_loc19:
.set Lset76, Ltmp77-Lfunc_begin0
	.quad	Lset76
.set Lset77, Ltmp96-Lfunc_begin0
	.quad	Lset77
	.short	6                               ; Loc expr size
	.byte	121                             ; DW_OP_breg9
	.byte	0                               ; 0
	.byte	16                              ; DW_OP_constu
	.byte	63                              ; 63
	.byte	26                              ; DW_OP_and
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc20:
.set Lset78, Ltmp78-Lfunc_begin0
	.quad	Lset78
.set Lset79, Ltmp81-Lfunc_begin0
	.quad	Lset79
	.short	1                               ; Loc expr size
	.byte	91                              ; DW_OP_reg11
	.quad	0
	.quad	0
Ldebug_loc21:
.set Lset80, Ltmp79-Lfunc_begin0
	.quad	Lset80
.set Lset81, Ltmp82-Lfunc_begin0
	.quad	Lset81
	.short	2                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	159                             ; DW_OP_stack_value
.set Lset82, Ltmp82-Lfunc_begin0
	.quad	Lset82
.set Lset83, Ltmp83-Lfunc_begin0
	.quad	Lset83
	.short	2                               ; Loc expr size
	.byte	49                              ; DW_OP_lit1
	.byte	159                             ; DW_OP_stack_value
.set Lset84, Ltmp83-Lfunc_begin0
	.quad	Lset84
.set Lset85, Ltmp84-Lfunc_begin0
	.quad	Lset85
	.short	2                               ; Loc expr size
	.byte	50                              ; DW_OP_lit2
	.byte	159                             ; DW_OP_stack_value
.set Lset86, Ltmp84-Lfunc_begin0
	.quad	Lset86
.set Lset87, Ltmp85-Lfunc_begin0
	.quad	Lset87
	.short	2                               ; Loc expr size
	.byte	51                              ; DW_OP_lit3
	.byte	159                             ; DW_OP_stack_value
.set Lset88, Ltmp85-Lfunc_begin0
	.quad	Lset88
.set Lset89, Ltmp86-Lfunc_begin0
	.quad	Lset89
	.short	2                               ; Loc expr size
	.byte	52                              ; DW_OP_lit4
	.byte	159                             ; DW_OP_stack_value
.set Lset90, Ltmp86-Lfunc_begin0
	.quad	Lset90
.set Lset91, Ltmp87-Lfunc_begin0
	.quad	Lset91
	.short	2                               ; Loc expr size
	.byte	53                              ; DW_OP_lit5
	.byte	159                             ; DW_OP_stack_value
.set Lset92, Ltmp87-Lfunc_begin0
	.quad	Lset92
.set Lset93, Ltmp88-Lfunc_begin0
	.quad	Lset93
	.short	2                               ; Loc expr size
	.byte	54                              ; DW_OP_lit6
	.byte	159                             ; DW_OP_stack_value
.set Lset94, Ltmp88-Lfunc_begin0
	.quad	Lset94
.set Lset95, Ltmp89-Lfunc_begin0
	.quad	Lset95
	.short	2                               ; Loc expr size
	.byte	55                              ; DW_OP_lit7
	.byte	159                             ; DW_OP_stack_value
.set Lset96, Ltmp89-Lfunc_begin0
	.quad	Lset96
.set Lset97, Ltmp90-Lfunc_begin0
	.quad	Lset97
	.short	2                               ; Loc expr size
	.byte	56                              ; DW_OP_lit8
	.byte	159                             ; DW_OP_stack_value
.set Lset98, Ltmp90-Lfunc_begin0
	.quad	Lset98
.set Lset99, Ltmp91-Lfunc_begin0
	.quad	Lset99
	.short	2                               ; Loc expr size
	.byte	57                              ; DW_OP_lit9
	.byte	159                             ; DW_OP_stack_value
.set Lset100, Ltmp91-Lfunc_begin0
	.quad	Lset100
.set Lset101, Ltmp92-Lfunc_begin0
	.quad	Lset101
	.short	2                               ; Loc expr size
	.byte	58                              ; DW_OP_lit10
	.byte	159                             ; DW_OP_stack_value
.set Lset102, Ltmp92-Lfunc_begin0
	.quad	Lset102
.set Lset103, Ltmp93-Lfunc_begin0
	.quad	Lset103
	.short	2                               ; Loc expr size
	.byte	59                              ; DW_OP_lit11
	.byte	159                             ; DW_OP_stack_value
.set Lset104, Ltmp93-Lfunc_begin0
	.quad	Lset104
.set Lset105, Ltmp94-Lfunc_begin0
	.quad	Lset105
	.short	2                               ; Loc expr size
	.byte	60                              ; DW_OP_lit12
	.byte	159                             ; DW_OP_stack_value
.set Lset106, Ltmp94-Lfunc_begin0
	.quad	Lset106
.set Lset107, Ltmp95-Lfunc_begin0
	.quad	Lset107
	.short	2                               ; Loc expr size
	.byte	61                              ; DW_OP_lit13
	.byte	159                             ; DW_OP_stack_value
.set Lset108, Ltmp95-Lfunc_begin0
	.quad	Lset108
.set Lset109, Ltmp97-Lfunc_begin0
	.quad	Lset109
	.short	2                               ; Loc expr size
	.byte	62                              ; DW_OP_lit14
	.byte	159                             ; DW_OP_stack_value
.set Lset110, Ltmp97-Lfunc_begin0
	.quad	Lset110
.set Lset111, Ltmp98-Lfunc_begin0
	.quad	Lset111
	.short	2                               ; Loc expr size
	.byte	63                              ; DW_OP_lit15
	.byte	159                             ; DW_OP_stack_value
.set Lset112, Ltmp98-Lfunc_begin0
	.quad	Lset112
.set Lset113, Lfunc_end8-Lfunc_begin0
	.quad	Lset113
	.short	2                               ; Loc expr size
	.byte	64                              ; DW_OP_lit16
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc22:
.set Lset114, Ltmp79-Lfunc_begin0
	.quad	Lset114
.set Lset115, Lfunc_end8-Lfunc_begin0
	.quad	Lset115
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
	.byte	63                              ; DW_AT_external
	.byte	25                              ; DW_FORM_flag_present
	.ascii	"\341\177"                      ; DW_AT_APPLE_optimized
	.byte	25                              ; DW_FORM_flag_present
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	7                               ; Abbreviation Code
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
	.byte	8                               ; Abbreviation Code
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
	.byte	9                               ; Abbreviation Code
	.byte	73                              ; DW_TAG_call_site_parameter
	.byte	0                               ; DW_CHILDREN_no
	.byte	2                               ; DW_AT_location
	.byte	24                              ; DW_FORM_exprloc
	.byte	126                             ; DW_AT_call_value
	.byte	24                              ; DW_FORM_exprloc
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	10                              ; Abbreviation Code
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
	.byte	11                              ; Abbreviation Code
	.byte	5                               ; DW_TAG_formal_parameter
	.byte	0                               ; DW_CHILDREN_no
	.byte	2                               ; DW_AT_location
	.byte	24                              ; DW_FORM_exprloc
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	12                              ; Abbreviation Code
	.byte	52                              ; DW_TAG_variable
	.byte	0                               ; DW_CHILDREN_no
	.byte	2                               ; DW_AT_location
	.byte	23                              ; DW_FORM_sec_offset
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	13                              ; Abbreviation Code
	.byte	11                              ; DW_TAG_lexical_block
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	14                              ; Abbreviation Code
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
	.ascii	"\341\177"                      ; DW_AT_APPLE_optimized
	.byte	25                              ; DW_FORM_flag_present
	.byte	32                              ; DW_AT_inline
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	16                              ; Abbreviation Code
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
	.byte	17                              ; Abbreviation Code
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
	.byte	18                              ; Abbreviation Code
	.byte	11                              ; DW_TAG_lexical_block
	.byte	1                               ; DW_CHILDREN_yes
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	19                              ; Abbreviation Code
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
	.byte	20                              ; Abbreviation Code
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
	.byte	21                              ; Abbreviation Code
	.byte	1                               ; DW_TAG_array_type
	.byte	1                               ; DW_CHILDREN_yes
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	22                              ; Abbreviation Code
	.byte	33                              ; DW_TAG_subrange_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	55                              ; DW_AT_count
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	23                              ; Abbreviation Code
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
	.byte	24                              ; Abbreviation Code
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
	.byte	25                              ; Abbreviation Code
	.byte	5                               ; DW_TAG_formal_parameter
	.byte	0                               ; DW_CHILDREN_no
	.byte	2                               ; DW_AT_location
	.byte	23                              ; DW_FORM_sec_offset
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
	.byte	52                              ; DW_TAG_variable
	.byte	0                               ; DW_CHILDREN_no
	.byte	28                              ; DW_AT_const_value
	.byte	15                              ; DW_FORM_udata
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	28                              ; Abbreviation Code
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
	.byte	29                              ; Abbreviation Code
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
	.byte	30                              ; Abbreviation Code
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
.set Lset116, Ldebug_info_end0-Ldebug_info_start0 ; Length of Unit
	.long	Lset116
Ldebug_info_start0:
	.short	4                               ; DWARF version number
.set Lset117, Lsection_abbrev-Lsection_abbrev ; Offset Into Abbrev. Section
	.long	Lset117
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x669 DW_TAG_compile_unit
	.long	0                               ; DW_AT_producer
	.short	12                              ; DW_AT_language
	.long	46                              ; DW_AT_name
	.long	53                              ; DW_AT_LLVM_sysroot
	.long	105                             ; DW_AT_APPLE_sdk
.set Lset118, Lline_table_start0-Lsection_line ; DW_AT_stmt_list
	.long	Lset118
	.long	116                             ; DW_AT_comp_dir
                                        ; DW_AT_APPLE_optimized
	.quad	Lfunc_begin0                    ; DW_AT_low_pc
.set Lset119, Lfunc_end8-Lfunc_begin0   ; DW_AT_high_pc
	.long	Lset119
	.byte	2                               ; Abbrev [2] 0x32:0x5 DW_TAG_pointer_type
	.long	55                              ; DW_AT_type
	.byte	3                               ; Abbrev [3] 0x37:0x5 DW_TAG_const_type
	.long	60                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x3c:0xb DW_TAG_typedef
	.long	71                              ; DW_AT_type
	.long	170                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	31                              ; DW_AT_decl_line
	.byte	5                               ; Abbrev [5] 0x47:0x7 DW_TAG_base_type
	.long	179                             ; DW_AT_name
	.byte	7                               ; DW_AT_encoding
	.byte	4                               ; DW_AT_byte_size
	.byte	2                               ; Abbrev [2] 0x4e:0x5 DW_TAG_pointer_type
	.long	60                              ; DW_AT_type
	.byte	2                               ; Abbrev [2] 0x53:0x5 DW_TAG_pointer_type
	.long	88                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x58:0xb DW_TAG_typedef
	.long	99                              ; DW_AT_type
	.long	192                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	31                              ; DW_AT_decl_line
	.byte	5                               ; Abbrev [5] 0x63:0x7 DW_TAG_base_type
	.long	200                             ; DW_AT_name
	.byte	8                               ; DW_AT_encoding
	.byte	1                               ; DW_AT_byte_size
	.byte	6                               ; Abbrev [6] 0x6a:0x51 DW_TAG_subprogram
	.quad	Lfunc_begin0                    ; DW_AT_low_pc
.set Lset120, Lfunc_end0-Lfunc_begin0   ; DW_AT_high_pc
	.long	Lset120
                                        ; DW_AT_APPLE_omit_frame_ptr
	.byte	1                               ; DW_AT_frame_base
	.byte	111
                                        ; DW_AT_call_all_calls
	.long	214                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	34                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_external
                                        ; DW_AT_APPLE_optimized
	.byte	7                               ; Abbrev [7] 0x7f:0xd DW_TAG_formal_parameter
	.byte	1                               ; DW_AT_location
	.byte	80
	.long	580                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	34                              ; DW_AT_decl_line
	.long	1563                            ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0x8c:0xd DW_TAG_formal_parameter
	.byte	1                               ; DW_AT_location
	.byte	81
	.long	414                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	34                              ; DW_AT_decl_line
	.long	763                             ; DW_AT_type
	.byte	8                               ; Abbrev [8] 0x99:0x21 DW_TAG_call_site
	.long	187                             ; DW_AT_call_origin
                                        ; DW_AT_call_tail_call
	.quad	Ltmp0                           ; DW_AT_call_pc
	.byte	9                               ; Abbrev [9] 0xa6:0x5 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	82
	.byte	1                               ; DW_AT_call_value
	.byte	55
	.byte	9                               ; Abbrev [9] 0xab:0x7 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	80
	.byte	3                               ; DW_AT_call_value
	.byte	163
	.byte	1
	.byte	80
	.byte	9                               ; Abbrev [9] 0xb2:0x7 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	81
	.byte	3                               ; DW_AT_call_value
	.byte	163
	.byte	1
	.byte	81
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	10                              ; Abbrev [10] 0xbb:0x52 DW_TAG_subprogram
	.quad	Lfunc_begin1                    ; DW_AT_low_pc
.set Lset121, Lfunc_end1-Lfunc_begin1   ; DW_AT_high_pc
	.long	Lset121
                                        ; DW_AT_APPLE_omit_frame_ptr
	.byte	1                               ; DW_AT_frame_base
	.byte	111
                                        ; DW_AT_call_all_calls
	.long	345                             ; DW_AT_abstract_origin
	.byte	11                              ; Abbrev [11] 0xce:0x7 DW_TAG_formal_parameter
	.byte	1                               ; DW_AT_location
	.byte	80
	.long	353                             ; DW_AT_abstract_origin
	.byte	11                              ; Abbrev [11] 0xd5:0x7 DW_TAG_formal_parameter
	.byte	1                               ; DW_AT_location
	.byte	81
	.long	364                             ; DW_AT_abstract_origin
	.byte	11                              ; Abbrev [11] 0xdc:0x7 DW_TAG_formal_parameter
	.byte	1                               ; DW_AT_location
	.byte	82
	.long	375                             ; DW_AT_abstract_origin
	.byte	12                              ; Abbrev [12] 0xe3:0x9 DW_TAG_variable
.set Lset122, Ldebug_loc0-Lsection_debug_loc ; DW_AT_location
	.long	Lset122
	.long	386                             ; DW_AT_abstract_origin
	.byte	12                              ; Abbrev [12] 0xec:0x9 DW_TAG_variable
.set Lset123, Ldebug_loc1-Lsection_debug_loc ; DW_AT_location
	.long	Lset123
	.long	397                             ; DW_AT_abstract_origin
	.byte	13                              ; Abbrev [13] 0xf5:0x17 DW_TAG_lexical_block
	.quad	Ltmp4                           ; DW_AT_low_pc
.set Lset124, Ltmp14-Ltmp4              ; DW_AT_high_pc
	.long	Lset124
	.byte	12                              ; Abbrev [12] 0x102:0x9 DW_TAG_variable
.set Lset125, Ldebug_loc2-Lsection_debug_loc ; DW_AT_location
	.long	Lset125
	.long	409                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0x10d:0x4c DW_TAG_subprogram
	.quad	Lfunc_begin2                    ; DW_AT_low_pc
.set Lset126, Lfunc_end2-Lfunc_begin2   ; DW_AT_high_pc
	.long	Lset126
                                        ; DW_AT_APPLE_omit_frame_ptr
	.byte	1                               ; DW_AT_frame_base
	.byte	111
                                        ; DW_AT_call_all_calls
	.long	240                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	38                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_external
                                        ; DW_AT_APPLE_optimized
	.byte	14                              ; Abbrev [14] 0x122:0xf DW_TAG_formal_parameter
.set Lset127, Ldebug_loc3-Lsection_debug_loc ; DW_AT_location
	.long	Lset127
	.long	580                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	38                              ; DW_AT_decl_line
	.long	1563                            ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0x131:0xd DW_TAG_formal_parameter
	.byte	1                               ; DW_AT_location
	.byte	81
	.long	414                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	38                              ; DW_AT_decl_line
	.long	763                             ; DW_AT_type
	.byte	8                               ; Abbrev [8] 0x13e:0x1a DW_TAG_call_site
	.long	187                             ; DW_AT_call_origin
                                        ; DW_AT_call_tail_call
	.quad	Ltmp17                          ; DW_AT_call_pc
	.byte	9                               ; Abbrev [9] 0x14b:0x5 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	82
	.byte	1                               ; DW_AT_call_value
	.byte	55
	.byte	9                               ; Abbrev [9] 0x150:0x7 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	81
	.byte	3                               ; DW_AT_call_value
	.byte	163
	.byte	1
	.byte	81
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	15                              ; Abbrev [15] 0x159:0x4d DW_TAG_subprogram
	.long	230                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	8                               ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_APPLE_optimized
	.byte	1                               ; DW_AT_inline
	.byte	16                              ; Abbrev [16] 0x161:0xb DW_TAG_formal_parameter
	.long	256                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	8                               ; DW_AT_decl_line
	.long	422                             ; DW_AT_type
	.byte	16                              ; Abbrev [16] 0x16c:0xb DW_TAG_formal_parameter
	.long	414                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	8                               ; DW_AT_decl_line
	.long	763                             ; DW_AT_type
	.byte	16                              ; Abbrev [16] 0x177:0xb DW_TAG_formal_parameter
	.long	450                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	8                               ; DW_AT_decl_line
	.long	60                              ; DW_AT_type
	.byte	17                              ; Abbrev [17] 0x182:0xb DW_TAG_variable
	.long	458                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	9                               ; DW_AT_decl_line
	.long	60                              ; DW_AT_type
	.byte	17                              ; Abbrev [17] 0x18d:0xb DW_TAG_variable
	.long	461                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	10                              ; DW_AT_decl_line
	.long	781                             ; DW_AT_type
	.byte	18                              ; Abbrev [18] 0x198:0xd DW_TAG_lexical_block
	.byte	17                              ; Abbrev [17] 0x199:0xb DW_TAG_variable
	.long	465                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	13                              ; DW_AT_decl_line
	.long	60                              ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x1a6:0x5 DW_TAG_pointer_type
	.long	427                             ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x1ab:0xb DW_TAG_typedef
	.long	438                             ; DW_AT_type
	.long	261                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	16                              ; DW_AT_decl_line
	.byte	19                              ; Abbrev [19] 0x1b6:0x75 DW_TAG_union_type
	.long	261                             ; DW_AT_name
	.byte	64                              ; DW_AT_byte_size
	.byte	4                               ; DW_AT_decl_file
	.byte	6                               ; DW_AT_decl_line
	.byte	20                              ; Abbrev [20] 0x1be:0xc DW_TAG_member
	.long	269                             ; DW_AT_name
	.long	555                             ; DW_AT_type
	.byte	4                               ; DW_AT_decl_file
	.byte	7                               ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	20                              ; Abbrev [20] 0x1ca:0xc DW_TAG_member
	.long	292                             ; DW_AT_name
	.long	574                             ; DW_AT_type
	.byte	4                               ; DW_AT_decl_file
	.byte	8                               ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	20                              ; Abbrev [20] 0x1d6:0xc DW_TAG_member
	.long	320                             ; DW_AT_name
	.long	604                             ; DW_AT_type
	.byte	4                               ; DW_AT_decl_file
	.byte	9                               ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	20                              ; Abbrev [20] 0x1e2:0xc DW_TAG_member
	.long	324                             ; DW_AT_name
	.long	616                             ; DW_AT_type
	.byte	4                               ; DW_AT_decl_file
	.byte	10                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	20                              ; Abbrev [20] 0x1ee:0xc DW_TAG_member
	.long	346                             ; DW_AT_name
	.long	646                             ; DW_AT_type
	.byte	4                               ; DW_AT_decl_file
	.byte	11                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	20                              ; Abbrev [20] 0x1fa:0xc DW_TAG_member
	.long	364                             ; DW_AT_name
	.long	676                             ; DW_AT_type
	.byte	4                               ; DW_AT_decl_file
	.byte	12                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	20                              ; Abbrev [20] 0x206:0xc DW_TAG_member
	.long	380                             ; DW_AT_name
	.long	706                             ; DW_AT_type
	.byte	4                               ; DW_AT_decl_file
	.byte	13                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	20                              ; Abbrev [20] 0x212:0xc DW_TAG_member
	.long	393                             ; DW_AT_name
	.long	725                             ; DW_AT_type
	.byte	4                               ; DW_AT_decl_file
	.byte	14                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	20                              ; Abbrev [20] 0x21e:0xc DW_TAG_member
	.long	403                             ; DW_AT_name
	.long	744                             ; DW_AT_type
	.byte	4                               ; DW_AT_decl_file
	.byte	15                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	0                               ; End Of Children Mark
	.byte	21                              ; Abbrev [21] 0x22b:0xc DW_TAG_array_type
	.long	88                              ; DW_AT_type
	.byte	22                              ; Abbrev [22] 0x230:0x6 DW_TAG_subrange_type
	.long	567                             ; DW_AT_type
	.byte	64                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	23                              ; Abbrev [23] 0x237:0x7 DW_TAG_base_type
	.long	272                             ; DW_AT_name
	.byte	8                               ; DW_AT_byte_size
	.byte	7                               ; DW_AT_encoding
	.byte	21                              ; Abbrev [21] 0x23e:0xc DW_TAG_array_type
	.long	586                             ; DW_AT_type
	.byte	22                              ; Abbrev [22] 0x243:0x6 DW_TAG_subrange_type
	.long	567                             ; DW_AT_type
	.byte	32                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x24a:0xb DW_TAG_typedef
	.long	597                             ; DW_AT_type
	.long	296                             ; DW_AT_name
	.byte	5                               ; DW_AT_decl_file
	.byte	31                              ; DW_AT_decl_line
	.byte	5                               ; Abbrev [5] 0x255:0x7 DW_TAG_base_type
	.long	305                             ; DW_AT_name
	.byte	7                               ; DW_AT_encoding
	.byte	2                               ; DW_AT_byte_size
	.byte	21                              ; Abbrev [21] 0x25c:0xc DW_TAG_array_type
	.long	60                              ; DW_AT_type
	.byte	22                              ; Abbrev [22] 0x261:0x6 DW_TAG_subrange_type
	.long	567                             ; DW_AT_type
	.byte	16                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	21                              ; Abbrev [21] 0x268:0xc DW_TAG_array_type
	.long	628                             ; DW_AT_type
	.byte	22                              ; Abbrev [22] 0x26d:0x6 DW_TAG_subrange_type
	.long	567                             ; DW_AT_type
	.byte	64                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x274:0xb DW_TAG_typedef
	.long	639                             ; DW_AT_type
	.long	327                             ; DW_AT_name
	.byte	6                               ; DW_AT_decl_file
	.byte	30                              ; DW_AT_decl_line
	.byte	5                               ; Abbrev [5] 0x27f:0x7 DW_TAG_base_type
	.long	334                             ; DW_AT_name
	.byte	6                               ; DW_AT_encoding
	.byte	1                               ; DW_AT_byte_size
	.byte	21                              ; Abbrev [21] 0x286:0xc DW_TAG_array_type
	.long	658                             ; DW_AT_type
	.byte	22                              ; Abbrev [22] 0x28b:0x6 DW_TAG_subrange_type
	.long	567                             ; DW_AT_type
	.byte	32                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x292:0xb DW_TAG_typedef
	.long	669                             ; DW_AT_type
	.long	350                             ; DW_AT_name
	.byte	7                               ; DW_AT_decl_file
	.byte	30                              ; DW_AT_decl_line
	.byte	5                               ; Abbrev [5] 0x29d:0x7 DW_TAG_base_type
	.long	358                             ; DW_AT_name
	.byte	5                               ; DW_AT_encoding
	.byte	2                               ; DW_AT_byte_size
	.byte	21                              ; Abbrev [21] 0x2a4:0xc DW_TAG_array_type
	.long	688                             ; DW_AT_type
	.byte	22                              ; Abbrev [22] 0x2a9:0x6 DW_TAG_subrange_type
	.long	567                             ; DW_AT_type
	.byte	16                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x2b0:0xb DW_TAG_typedef
	.long	699                             ; DW_AT_type
	.long	368                             ; DW_AT_name
	.byte	8                               ; DW_AT_decl_file
	.byte	30                              ; DW_AT_decl_line
	.byte	5                               ; Abbrev [5] 0x2bb:0x7 DW_TAG_base_type
	.long	376                             ; DW_AT_name
	.byte	5                               ; DW_AT_encoding
	.byte	4                               ; DW_AT_byte_size
	.byte	21                              ; Abbrev [21] 0x2c2:0xc DW_TAG_array_type
	.long	718                             ; DW_AT_type
	.byte	22                              ; Abbrev [22] 0x2c7:0x6 DW_TAG_subrange_type
	.long	567                             ; DW_AT_type
	.byte	32                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	5                               ; Abbrev [5] 0x2ce:0x7 DW_TAG_base_type
	.long	384                             ; DW_AT_name
	.byte	4                               ; DW_AT_encoding
	.byte	2                               ; DW_AT_byte_size
	.byte	21                              ; Abbrev [21] 0x2d5:0xc DW_TAG_array_type
	.long	737                             ; DW_AT_type
	.byte	22                              ; Abbrev [22] 0x2da:0x6 DW_TAG_subrange_type
	.long	567                             ; DW_AT_type
	.byte	16                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	5                               ; Abbrev [5] 0x2e1:0x7 DW_TAG_base_type
	.long	397                             ; DW_AT_name
	.byte	4                               ; DW_AT_encoding
	.byte	4                               ; DW_AT_byte_size
	.byte	21                              ; Abbrev [21] 0x2e8:0xc DW_TAG_array_type
	.long	756                             ; DW_AT_type
	.byte	22                              ; Abbrev [22] 0x2ed:0x6 DW_TAG_subrange_type
	.long	567                             ; DW_AT_type
	.byte	8                               ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	5                               ; Abbrev [5] 0x2f4:0x7 DW_TAG_base_type
	.long	407                             ; DW_AT_name
	.byte	4                               ; DW_AT_encoding
	.byte	8                               ; DW_AT_byte_size
	.byte	4                               ; Abbrev [4] 0x2fb:0xb DW_TAG_typedef
	.long	774                             ; DW_AT_type
	.long	422                             ; DW_AT_name
	.byte	9                               ; DW_AT_decl_file
	.byte	31                              ; DW_AT_decl_line
	.byte	5                               ; Abbrev [5] 0x306:0x7 DW_TAG_base_type
	.long	431                             ; DW_AT_name
	.byte	7                               ; DW_AT_encoding
	.byte	8                               ; DW_AT_byte_size
	.byte	2                               ; Abbrev [2] 0x30d:0x5 DW_TAG_pointer_type
	.long	786                             ; DW_AT_type
	.byte	3                               ; Abbrev [3] 0x312:0x5 DW_TAG_const_type
	.long	88                              ; DW_AT_type
	.byte	6                               ; Abbrev [6] 0x317:0x81 DW_TAG_subprogram
	.quad	Lfunc_begin3                    ; DW_AT_low_pc
.set Lset128, Lfunc_end3-Lfunc_begin3   ; DW_AT_high_pc
	.long	Lset128
                                        ; DW_AT_APPLE_omit_frame_ptr
	.byte	1                               ; DW_AT_frame_base
	.byte	111
                                        ; DW_AT_call_all_calls
	.long	468                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	42                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_external
                                        ; DW_AT_APPLE_optimized
	.byte	7                               ; Abbrev [7] 0x32c:0xd DW_TAG_formal_parameter
	.byte	1                               ; DW_AT_location
	.byte	80
	.long	580                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	42                              ; DW_AT_decl_line
	.long	1563                            ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0x339:0xd DW_TAG_formal_parameter
	.byte	1                               ; DW_AT_location
	.byte	81
	.long	414                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	42                              ; DW_AT_decl_line
	.long	763                             ; DW_AT_type
	.byte	24                              ; Abbrev [24] 0x346:0x51 DW_TAG_inlined_subroutine
	.long	345                             ; DW_AT_abstract_origin
	.quad	Ltmp19                          ; DW_AT_low_pc
.set Lset129, Ltmp26-Ltmp19             ; DW_AT_high_pc
	.long	Lset129
	.byte	3                               ; DW_AT_call_file
	.byte	43                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	25                              ; Abbrev [25] 0x35a:0x9 DW_TAG_formal_parameter
.set Lset130, Ldebug_loc4-Lsection_debug_loc ; DW_AT_location
	.long	Lset130
	.long	353                             ; DW_AT_abstract_origin
	.byte	11                              ; Abbrev [11] 0x363:0x7 DW_TAG_formal_parameter
	.byte	1                               ; DW_AT_location
	.byte	81
	.long	364                             ; DW_AT_abstract_origin
	.byte	26                              ; Abbrev [26] 0x36a:0x6 DW_TAG_formal_parameter
	.byte	63                              ; DW_AT_const_value
	.long	375                             ; DW_AT_abstract_origin
	.byte	12                              ; Abbrev [12] 0x370:0x9 DW_TAG_variable
.set Lset131, Ldebug_loc5-Lsection_debug_loc ; DW_AT_location
	.long	Lset131
	.long	386                             ; DW_AT_abstract_origin
	.byte	12                              ; Abbrev [12] 0x379:0x9 DW_TAG_variable
.set Lset132, Ldebug_loc6-Lsection_debug_loc ; DW_AT_location
	.long	Lset132
	.long	397                             ; DW_AT_abstract_origin
	.byte	13                              ; Abbrev [13] 0x382:0x14 DW_TAG_lexical_block
	.quad	Ltmp23                          ; DW_AT_low_pc
.set Lset133, Ltmp26-Ltmp23             ; DW_AT_high_pc
	.long	Lset133
	.byte	27                              ; Abbrev [27] 0x38f:0x6 DW_TAG_variable
	.byte	1                               ; DW_AT_const_value
	.long	409                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0x398:0x7a DW_TAG_subprogram
	.quad	Lfunc_begin4                    ; DW_AT_low_pc
.set Lset134, Lfunc_end4-Lfunc_begin4   ; DW_AT_high_pc
	.long	Lset134
                                        ; DW_AT_APPLE_omit_frame_ptr
	.byte	1                               ; DW_AT_frame_base
	.byte	111
                                        ; DW_AT_call_all_calls
	.long	484                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	46                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_external
                                        ; DW_AT_APPLE_optimized
	.byte	7                               ; Abbrev [7] 0x3ad:0xd DW_TAG_formal_parameter
	.byte	1                               ; DW_AT_location
	.byte	80
	.long	580                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	46                              ; DW_AT_decl_line
	.long	1563                            ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0x3ba:0xd DW_TAG_formal_parameter
	.byte	1                               ; DW_AT_location
	.byte	81
	.long	414                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	46                              ; DW_AT_decl_line
	.long	763                             ; DW_AT_type
	.byte	28                              ; Abbrev [28] 0x3c7:0xf DW_TAG_variable
.set Lset135, Ldebug_loc7-Lsection_debug_loc ; DW_AT_location
	.long	Lset135
	.long	458                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	47                              ; DW_AT_decl_line
	.long	60                              ; DW_AT_type
	.byte	28                              ; Abbrev [28] 0x3d6:0xf DW_TAG_variable
.set Lset136, Ldebug_loc8-Lsection_debug_loc ; DW_AT_location
	.long	Lset136
	.long	602                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	48                              ; DW_AT_decl_line
	.long	60                              ; DW_AT_type
	.byte	28                              ; Abbrev [28] 0x3e5:0xf DW_TAG_variable
.set Lset137, Ldebug_loc10-Lsection_debug_loc ; DW_AT_location
	.long	Lset137
	.long	461                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	49                              ; DW_AT_decl_line
	.long	50                              ; DW_AT_type
	.byte	13                              ; Abbrev [13] 0x3f4:0x1d DW_TAG_lexical_block
	.quad	Ltmp31                          ; DW_AT_low_pc
.set Lset138, Ltmp50-Ltmp31             ; DW_AT_high_pc
	.long	Lset138
	.byte	28                              ; Abbrev [28] 0x401:0xf DW_TAG_variable
.set Lset139, Ldebug_loc9-Lsection_debug_loc ; DW_AT_location
	.long	Lset139
	.long	607                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	50                              ; DW_AT_decl_line
	.long	60                              ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	15                              ; Abbrev [15] 0x412:0x40 DW_TAG_subprogram
	.long	501                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	25                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_APPLE_optimized
	.byte	1                               ; DW_AT_inline
	.byte	16                              ; Abbrev [16] 0x41a:0xb DW_TAG_formal_parameter
	.long	256                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	25                              ; DW_AT_decl_line
	.long	1106                            ; DW_AT_type
	.byte	16                              ; Abbrev [16] 0x425:0xb DW_TAG_formal_parameter
	.long	414                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	25                              ; DW_AT_decl_line
	.long	763                             ; DW_AT_type
	.byte	16                              ; Abbrev [16] 0x430:0xb DW_TAG_formal_parameter
	.long	450                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	25                              ; DW_AT_decl_line
	.long	60                              ; DW_AT_type
	.byte	17                              ; Abbrev [17] 0x43b:0xb DW_TAG_variable
	.long	458                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	26                              ; DW_AT_decl_line
	.long	60                              ; DW_AT_type
	.byte	17                              ; Abbrev [17] 0x446:0xb DW_TAG_variable
	.long	511                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	27                              ; DW_AT_decl_line
	.long	83                              ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x452:0x5 DW_TAG_pointer_type
	.long	1111                            ; DW_AT_type
	.byte	3                               ; Abbrev [3] 0x457:0x5 DW_TAG_const_type
	.long	427                             ; DW_AT_type
	.byte	6                               ; Abbrev [6] 0x45c:0x6b DW_TAG_subprogram
	.quad	Lfunc_begin5                    ; DW_AT_low_pc
.set Lset140, Lfunc_end5-Lfunc_begin5   ; DW_AT_high_pc
	.long	Lset140
                                        ; DW_AT_APPLE_omit_frame_ptr
	.byte	1                               ; DW_AT_frame_base
	.byte	111
                                        ; DW_AT_call_all_calls
	.long	515                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	55                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_external
                                        ; DW_AT_APPLE_optimized
	.byte	7                               ; Abbrev [7] 0x471:0xd DW_TAG_formal_parameter
	.byte	1                               ; DW_AT_location
	.byte	80
	.long	580                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	55                              ; DW_AT_decl_line
	.long	1563                            ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0x47e:0xd DW_TAG_formal_parameter
	.byte	1                               ; DW_AT_location
	.byte	81
	.long	414                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	55                              ; DW_AT_decl_line
	.long	763                             ; DW_AT_type
	.byte	24                              ; Abbrev [24] 0x48b:0x3b DW_TAG_inlined_subroutine
	.long	1042                            ; DW_AT_abstract_origin
	.quad	Lfunc_begin5                    ; DW_AT_low_pc
.set Lset141, Ltmp57-Lfunc_begin5       ; DW_AT_high_pc
	.long	Lset141
	.byte	3                               ; DW_AT_call_file
	.byte	56                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	11                              ; Abbrev [11] 0x49f:0x7 DW_TAG_formal_parameter
	.byte	1                               ; DW_AT_location
	.byte	80
	.long	1050                            ; DW_AT_abstract_origin
	.byte	11                              ; Abbrev [11] 0x4a6:0x7 DW_TAG_formal_parameter
	.byte	1                               ; DW_AT_location
	.byte	81
	.long	1061                            ; DW_AT_abstract_origin
	.byte	26                              ; Abbrev [26] 0x4ad:0x6 DW_TAG_formal_parameter
	.byte	7                               ; DW_AT_const_value
	.long	1072                            ; DW_AT_abstract_origin
	.byte	12                              ; Abbrev [12] 0x4b3:0x9 DW_TAG_variable
.set Lset142, Ldebug_loc11-Lsection_debug_loc ; DW_AT_location
	.long	Lset142
	.long	1083                            ; DW_AT_abstract_origin
	.byte	12                              ; Abbrev [12] 0x4bc:0x9 DW_TAG_variable
.set Lset143, Ldebug_loc12-Lsection_debug_loc ; DW_AT_location
	.long	Lset143
	.long	1094                            ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0x4c7:0x6d DW_TAG_subprogram
	.quad	Lfunc_begin6                    ; DW_AT_low_pc
.set Lset144, Lfunc_end6-Lfunc_begin6   ; DW_AT_high_pc
	.long	Lset144
                                        ; DW_AT_APPLE_omit_frame_ptr
	.byte	1                               ; DW_AT_frame_base
	.byte	111
                                        ; DW_AT_call_all_calls
	.long	531                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	59                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_external
                                        ; DW_AT_APPLE_optimized
	.byte	7                               ; Abbrev [7] 0x4dc:0xd DW_TAG_formal_parameter
	.byte	1                               ; DW_AT_location
	.byte	80
	.long	580                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	59                              ; DW_AT_decl_line
	.long	1563                            ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0x4e9:0xd DW_TAG_formal_parameter
	.byte	1                               ; DW_AT_location
	.byte	81
	.long	414                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	59                              ; DW_AT_decl_line
	.long	763                             ; DW_AT_type
	.byte	24                              ; Abbrev [24] 0x4f6:0x3d DW_TAG_inlined_subroutine
	.long	1042                            ; DW_AT_abstract_origin
	.quad	Ltmp59                          ; DW_AT_low_pc
.set Lset145, Ltmp66-Ltmp59             ; DW_AT_high_pc
	.long	Lset145
	.byte	3                               ; DW_AT_call_file
	.byte	60                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	25                              ; Abbrev [25] 0x50a:0x9 DW_TAG_formal_parameter
.set Lset146, Ldebug_loc13-Lsection_debug_loc ; DW_AT_location
	.long	Lset146
	.long	1050                            ; DW_AT_abstract_origin
	.byte	11                              ; Abbrev [11] 0x513:0x7 DW_TAG_formal_parameter
	.byte	1                               ; DW_AT_location
	.byte	81
	.long	1061                            ; DW_AT_abstract_origin
	.byte	26                              ; Abbrev [26] 0x51a:0x6 DW_TAG_formal_parameter
	.byte	7                               ; DW_AT_const_value
	.long	1072                            ; DW_AT_abstract_origin
	.byte	12                              ; Abbrev [12] 0x520:0x9 DW_TAG_variable
.set Lset147, Ldebug_loc14-Lsection_debug_loc ; DW_AT_location
	.long	Lset147
	.long	1083                            ; DW_AT_abstract_origin
	.byte	12                              ; Abbrev [12] 0x529:0x9 DW_TAG_variable
.set Lset148, Ldebug_loc15-Lsection_debug_loc ; DW_AT_location
	.long	Lset148
	.long	1094                            ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0x534:0x6d DW_TAG_subprogram
	.quad	Lfunc_begin7                    ; DW_AT_low_pc
.set Lset149, Lfunc_end7-Lfunc_begin7   ; DW_AT_high_pc
	.long	Lset149
                                        ; DW_AT_APPLE_omit_frame_ptr
	.byte	1                               ; DW_AT_frame_base
	.byte	111
                                        ; DW_AT_call_all_calls
	.long	547                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	63                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_external
                                        ; DW_AT_APPLE_optimized
	.byte	7                               ; Abbrev [7] 0x549:0xd DW_TAG_formal_parameter
	.byte	1                               ; DW_AT_location
	.byte	80
	.long	580                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	63                              ; DW_AT_decl_line
	.long	1563                            ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0x556:0xd DW_TAG_formal_parameter
	.byte	1                               ; DW_AT_location
	.byte	81
	.long	414                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	63                              ; DW_AT_decl_line
	.long	763                             ; DW_AT_type
	.byte	24                              ; Abbrev [24] 0x563:0x3d DW_TAG_inlined_subroutine
	.long	1042                            ; DW_AT_abstract_origin
	.quad	Ltmp68                          ; DW_AT_low_pc
.set Lset150, Ltmp75-Ltmp68             ; DW_AT_high_pc
	.long	Lset150
	.byte	3                               ; DW_AT_call_file
	.byte	64                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	25                              ; Abbrev [25] 0x577:0x9 DW_TAG_formal_parameter
.set Lset151, Ldebug_loc16-Lsection_debug_loc ; DW_AT_location
	.long	Lset151
	.long	1050                            ; DW_AT_abstract_origin
	.byte	11                              ; Abbrev [11] 0x580:0x7 DW_TAG_formal_parameter
	.byte	1                               ; DW_AT_location
	.byte	81
	.long	1061                            ; DW_AT_abstract_origin
	.byte	26                              ; Abbrev [26] 0x587:0x6 DW_TAG_formal_parameter
	.byte	63                              ; DW_AT_const_value
	.long	1072                            ; DW_AT_abstract_origin
	.byte	12                              ; Abbrev [12] 0x58d:0x9 DW_TAG_variable
.set Lset152, Ldebug_loc17-Lsection_debug_loc ; DW_AT_location
	.long	Lset152
	.long	1083                            ; DW_AT_abstract_origin
	.byte	12                              ; Abbrev [12] 0x596:0x9 DW_TAG_variable
.set Lset153, Ldebug_loc18-Lsection_debug_loc ; DW_AT_location
	.long	Lset153
	.long	1094                            ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0x5a1:0x7a DW_TAG_subprogram
	.quad	Lfunc_begin8                    ; DW_AT_low_pc
.set Lset154, Lfunc_end8-Lfunc_begin8   ; DW_AT_high_pc
	.long	Lset154
                                        ; DW_AT_APPLE_omit_frame_ptr
	.byte	1                               ; DW_AT_frame_base
	.byte	111
                                        ; DW_AT_call_all_calls
	.long	563                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	67                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_external
                                        ; DW_AT_APPLE_optimized
	.byte	7                               ; Abbrev [7] 0x5b6:0xd DW_TAG_formal_parameter
	.byte	1                               ; DW_AT_location
	.byte	80
	.long	580                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	67                              ; DW_AT_decl_line
	.long	1563                            ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0x5c3:0xd DW_TAG_formal_parameter
	.byte	1                               ; DW_AT_location
	.byte	81
	.long	414                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	67                              ; DW_AT_decl_line
	.long	763                             ; DW_AT_type
	.byte	28                              ; Abbrev [28] 0x5d0:0xf DW_TAG_variable
.set Lset155, Ldebug_loc19-Lsection_debug_loc ; DW_AT_location
	.long	Lset155
	.long	458                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	68                              ; DW_AT_decl_line
	.long	60                              ; DW_AT_type
	.byte	28                              ; Abbrev [28] 0x5df:0xf DW_TAG_variable
.set Lset156, Ldebug_loc20-Lsection_debug_loc ; DW_AT_location
	.long	Lset156
	.long	602                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	69                              ; DW_AT_decl_line
	.long	60                              ; DW_AT_type
	.byte	28                              ; Abbrev [28] 0x5ee:0xf DW_TAG_variable
.set Lset157, Ldebug_loc22-Lsection_debug_loc ; DW_AT_location
	.long	Lset157
	.long	511                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	70                              ; DW_AT_decl_line
	.long	78                              ; DW_AT_type
	.byte	13                              ; Abbrev [13] 0x5fd:0x1d DW_TAG_lexical_block
	.quad	Ltmp80                          ; DW_AT_low_pc
.set Lset158, Ltmp98-Ltmp80             ; DW_AT_high_pc
	.long	Lset158
	.byte	28                              ; Abbrev [28] 0x60a:0xf DW_TAG_variable
.set Lset159, Ldebug_loc21-Lsection_debug_loc ; DW_AT_location
	.long	Lset159
	.long	607                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	71                              ; DW_AT_decl_line
	.long	60                              ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x61b:0x5 DW_TAG_pointer_type
	.long	1568                            ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x620:0xb DW_TAG_typedef
	.long	1579                            ; DW_AT_type
	.long	586                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	22                              ; DW_AT_decl_line
	.byte	29                              ; Abbrev [29] 0x62b:0x30 DW_TAG_structure_type
	.long	586                             ; DW_AT_name
	.short	5120                            ; DW_AT_byte_size
	.byte	4                               ; DW_AT_decl_file
	.byte	18                              ; DW_AT_decl_line
	.byte	20                              ; Abbrev [20] 0x634:0xc DW_TAG_member
	.long	596                             ; DW_AT_name
	.long	1627                            ; DW_AT_type
	.byte	4                               ; DW_AT_decl_file
	.byte	19                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	30                              ; Abbrev [30] 0x640:0xd DW_TAG_member
	.long	598                             ; DW_AT_name
	.long	1627                            ; DW_AT_type
	.byte	4                               ; DW_AT_decl_file
	.byte	20                              ; DW_AT_decl_line
	.short	512                             ; DW_AT_data_member_location
	.byte	30                              ; Abbrev [30] 0x64d:0xd DW_TAG_member
	.long	600                             ; DW_AT_name
	.long	1639                            ; DW_AT_type
	.byte	4                               ; DW_AT_decl_file
	.byte	21                              ; DW_AT_decl_line
	.short	1024                            ; DW_AT_data_member_location
	.byte	0                               ; End Of Children Mark
	.byte	21                              ; Abbrev [21] 0x65b:0xc DW_TAG_array_type
	.long	427                             ; DW_AT_type
	.byte	22                              ; Abbrev [22] 0x660:0x6 DW_TAG_subrange_type
	.long	567                             ; DW_AT_type
	.byte	8                               ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	21                              ; Abbrev [21] 0x667:0xc DW_TAG_array_type
	.long	427                             ; DW_AT_type
	.byte	22                              ; Abbrev [22] 0x66c:0x6 DW_TAG_subrange_type
	.long	567                             ; DW_AT_type
	.byte	64                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
Ldebug_info_end0:
	.section	__DWARF,__debug_str,regular,debug
Linfo_string:
	.asciz	"Apple clang version 15.0.0 (clang-1500.3.9.4)" ; string offset=0
	.asciz	"ldst.c"                        ; string offset=46
	.asciz	"/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk" ; string offset=53
	.asciz	"MacOSX.sdk"                    ; string offset=105
	.asciz	"/Users/tarindujayatilaka/Documents/superopt/apple-amx" ; string offset=116
	.asciz	"uint32_t"                      ; string offset=170
	.asciz	"unsigned int"                  ; string offset=179
	.asciz	"uint8_t"                       ; string offset=192
	.asciz	"unsigned char"                 ; string offset=200
	.asciz	"emulate_AMX_LDX"               ; string offset=214
	.asciz	"ld_common"                     ; string offset=230
	.asciz	"emulate_AMX_LDY"               ; string offset=240
	.asciz	"regs"                          ; string offset=256
	.asciz	"amx_reg"                       ; string offset=261
	.asciz	"u8"                            ; string offset=269
	.asciz	"__ARRAY_SIZE_TYPE__"           ; string offset=272
	.asciz	"u16"                           ; string offset=292
	.asciz	"uint16_t"                      ; string offset=296
	.asciz	"unsigned short"                ; string offset=305
	.asciz	"u32"                           ; string offset=320
	.asciz	"i8"                            ; string offset=324
	.asciz	"int8_t"                        ; string offset=327
	.asciz	"signed char"                   ; string offset=334
	.asciz	"i16"                           ; string offset=346
	.asciz	"int16_t"                       ; string offset=350
	.asciz	"short"                         ; string offset=358
	.asciz	"i32"                           ; string offset=364
	.asciz	"int32_t"                       ; string offset=368
	.asciz	"int"                           ; string offset=376
	.asciz	"f16"                           ; string offset=380
	.asciz	"_Float16"                      ; string offset=384
	.asciz	"f32"                           ; string offset=393
	.asciz	"float"                         ; string offset=397
	.asciz	"f64"                           ; string offset=403
	.asciz	"double"                        ; string offset=407
	.asciz	"operand"                       ; string offset=414
	.asciz	"uint64_t"                      ; string offset=422
	.asciz	"unsigned long long"            ; string offset=431
	.asciz	"regmask"                       ; string offset=450
	.asciz	"rn"                            ; string offset=458
	.asciz	"src"                           ; string offset=461
	.asciz	"rs"                            ; string offset=465
	.asciz	"emulate_AMX_LDZ"               ; string offset=468
	.asciz	"emulate_AMX_LDZI"              ; string offset=484
	.asciz	"st_common"                     ; string offset=501
	.asciz	"dst"                           ; string offset=511
	.asciz	"emulate_AMX_STX"               ; string offset=515
	.asciz	"emulate_AMX_STY"               ; string offset=531
	.asciz	"emulate_AMX_STZ"               ; string offset=547
	.asciz	"emulate_AMX_STZI"              ; string offset=563
	.asciz	"state"                         ; string offset=580
	.asciz	"amx_state"                     ; string offset=586
	.asciz	"x"                             ; string offset=596
	.asciz	"y"                             ; string offset=598
	.asciz	"z"                             ; string offset=600
	.asciz	"half"                          ; string offset=602
	.asciz	"i"                             ; string offset=607
	.section	__DWARF,__apple_names,regular,debug
Lnames_begin:
	.long	1212240712                      ; Header Magic
	.short	1                               ; Header Version
	.short	0                               ; Header Hash Function
	.long	10                              ; Header Bucket Count
	.long	10                              ; Header Hash Count
	.long	12                              ; Header Data Length
	.long	0                               ; HeaderData Die Offset Base
	.long	1                               ; HeaderData Atom Count
	.short	1                               ; DW_ATOM_die_offset
	.short	6                               ; DW_FORM_data4
	.long	0                               ; Bucket 0
	.long	2                               ; Bucket 1
	.long	3                               ; Bucket 2
	.long	-1                              ; Bucket 3
	.long	-1                              ; Bucket 4
	.long	-1                              ; Bucket 5
	.long	-1                              ; Bucket 6
	.long	-1                              ; Bucket 7
	.long	5                               ; Bucket 8
	.long	6                               ; Bucket 9
	.long	1875657120                      ; Hash in Bucket 0
	.long	1875665270                      ; Hash in Bucket 0
	.long	1875665271                      ; Hash in Bucket 1
	.long	1767411872                      ; Hash in Bucket 2
	.long	-742831724                      ; Hash in Bucket 2
	.long	1875657118                      ; Hash in Bucket 8
	.long	1767142889                      ; Hash in Bucket 9
	.long	1875657119                      ; Hash in Bucket 9
	.long	1875665269                      ; Hash in Bucket 9
	.long	-533404547                      ; Hash in Bucket 9
.set Lset160, LNames0-Lnames_begin      ; Offset in Bucket 0
	.long	Lset160
.set Lset161, LNames5-Lnames_begin      ; Offset in Bucket 0
	.long	Lset161
.set Lset162, LNames1-Lnames_begin      ; Offset in Bucket 1
	.long	Lset162
.set Lset163, LNames6-Lnames_begin      ; Offset in Bucket 2
	.long	Lset163
.set Lset164, LNames8-Lnames_begin      ; Offset in Bucket 2
	.long	Lset164
.set Lset165, LNames3-Lnames_begin      ; Offset in Bucket 8
	.long	Lset165
.set Lset166, LNames2-Lnames_begin      ; Offset in Bucket 9
	.long	Lset166
.set Lset167, LNames9-Lnames_begin      ; Offset in Bucket 9
	.long	Lset167
.set Lset168, LNames7-Lnames_begin      ; Offset in Bucket 9
	.long	Lset168
.set Lset169, LNames4-Lnames_begin      ; Offset in Bucket 9
	.long	Lset169
LNames0:
	.long	468                             ; emulate_AMX_LDZ
	.long	1                               ; Num DIEs
	.long	791
	.long	0
LNames5:
	.long	531                             ; emulate_AMX_STY
	.long	1                               ; Num DIEs
	.long	1223
	.long	0
LNames1:
	.long	547                             ; emulate_AMX_STZ
	.long	1                               ; Num DIEs
	.long	1332
	.long	0
LNames6:
	.long	563                             ; emulate_AMX_STZI
	.long	1                               ; Num DIEs
	.long	1441
	.long	0
LNames8:
	.long	501                             ; st_common
	.long	3                               ; Num DIEs
	.long	1163
	.long	1270
	.long	1379
	.long	0
LNames3:
	.long	214                             ; emulate_AMX_LDX
	.long	1                               ; Num DIEs
	.long	106
	.long	0
LNames2:
	.long	484                             ; emulate_AMX_LDZI
	.long	1                               ; Num DIEs
	.long	920
	.long	0
LNames9:
	.long	240                             ; emulate_AMX_LDY
	.long	1                               ; Num DIEs
	.long	269
	.long	0
LNames7:
	.long	515                             ; emulate_AMX_STX
	.long	1                               ; Num DIEs
	.long	1116
	.long	0
LNames4:
	.long	230                             ; ld_common
	.long	2                               ; Num DIEs
	.long	187
	.long	838
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
.set Lset170, Ltypes9-Ltypes_begin      ; Offset in Bucket 0
	.long	Lset170
.set Lset171, Ltypes16-Ltypes_begin     ; Offset in Bucket 1
	.long	Lset171
.set Lset172, Ltypes12-Ltypes_begin     ; Offset in Bucket 3
	.long	Lset172
.set Lset173, Ltypes4-Ltypes_begin      ; Offset in Bucket 3
	.long	Lset173
.set Lset174, Ltypes8-Ltypes_begin      ; Offset in Bucket 4
	.long	Lset174
.set Lset175, Ltypes11-Ltypes_begin     ; Offset in Bucket 4
	.long	Lset175
.set Lset176, Ltypes7-Ltypes_begin      ; Offset in Bucket 4
	.long	Lset176
.set Lset177, Ltypes6-Ltypes_begin      ; Offset in Bucket 4
	.long	Lset177
.set Lset178, Ltypes1-Ltypes_begin      ; Offset in Bucket 5
	.long	Lset178
.set Lset179, Ltypes17-Ltypes_begin     ; Offset in Bucket 5
	.long	Lset179
.set Lset180, Ltypes18-Ltypes_begin     ; Offset in Bucket 5
	.long	Lset180
.set Lset181, Ltypes10-Ltypes_begin     ; Offset in Bucket 5
	.long	Lset181
.set Lset182, Ltypes13-Ltypes_begin     ; Offset in Bucket 6
	.long	Lset182
.set Lset183, Ltypes0-Ltypes_begin      ; Offset in Bucket 6
	.long	Lset183
.set Lset184, Ltypes15-Ltypes_begin     ; Offset in Bucket 7
	.long	Lset184
.set Lset185, Ltypes14-Ltypes_begin     ; Offset in Bucket 7
	.long	Lset185
.set Lset186, Ltypes2-Ltypes_begin      ; Offset in Bucket 8
	.long	Lset186
.set Lset187, Ltypes19-Ltypes_begin     ; Offset in Bucket 8
	.long	Lset187
.set Lset188, Ltypes5-Ltypes_begin      ; Offset in Bucket 8
	.long	Lset188
.set Lset189, Ltypes3-Ltypes_begin      ; Offset in Bucket 9
	.long	Lset189
Ltypes9:
	.long	431                             ; unsigned long long
	.long	1                               ; Num DIEs
	.long	774
	.short	36
	.byte	0
	.long	0
Ltypes16:
	.long	272                             ; __ARRAY_SIZE_TYPE__
	.long	1                               ; Num DIEs
	.long	567
	.short	36
	.byte	0
	.long	0
Ltypes12:
	.long	397                             ; float
	.long	1                               ; Num DIEs
	.long	737
	.short	36
	.byte	0
	.long	0
Ltypes4:
	.long	334                             ; signed char
	.long	1                               ; Num DIEs
	.long	639
	.short	36
	.byte	0
	.long	0
Ltypes8:
	.long	422                             ; uint64_t
	.long	1                               ; Num DIEs
	.long	763
	.short	22
	.byte	0
	.long	0
Ltypes11:
	.long	261                             ; amx_reg
	.long	2                               ; Num DIEs
	.long	427
	.short	22
	.byte	0
	.long	438
	.short	23
	.byte	0
	.long	0
Ltypes7:
	.long	368                             ; int32_t
	.long	1                               ; Num DIEs
	.long	688
	.short	22
	.byte	0
	.long	0
Ltypes6:
	.long	200                             ; unsigned char
	.long	1                               ; Num DIEs
	.long	99
	.short	36
	.byte	0
	.long	0
Ltypes1:
	.long	170                             ; uint32_t
	.long	1                               ; Num DIEs
	.long	60
	.short	22
	.byte	0
	.long	0
Ltypes17:
	.long	384                             ; _Float16
	.long	1                               ; Num DIEs
	.long	718
	.short	36
	.byte	0
	.long	0
Ltypes18:
	.long	586                             ; amx_state
	.long	2                               ; Num DIEs
	.long	1568
	.short	22
	.byte	0
	.long	1579
	.short	19
	.byte	0
	.long	0
Ltypes10:
	.long	179                             ; unsigned int
	.long	1                               ; Num DIEs
	.long	71
	.short	36
	.byte	0
	.long	0
Ltypes13:
	.long	192                             ; uint8_t
	.long	1                               ; Num DIEs
	.long	88
	.short	22
	.byte	0
	.long	0
Ltypes0:
	.long	350                             ; int16_t
	.long	1                               ; Num DIEs
	.long	658
	.short	22
	.byte	0
	.long	0
Ltypes15:
	.long	327                             ; int8_t
	.long	1                               ; Num DIEs
	.long	628
	.short	22
	.byte	0
	.long	0
Ltypes14:
	.long	296                             ; uint16_t
	.long	1                               ; Num DIEs
	.long	586
	.short	22
	.byte	0
	.long	0
Ltypes2:
	.long	376                             ; int
	.long	1                               ; Num DIEs
	.long	699
	.short	36
	.byte	0
	.long	0
Ltypes19:
	.long	305                             ; unsigned short
	.long	1                               ; Num DIEs
	.long	597
	.short	36
	.byte	0
	.long	0
Ltypes5:
	.long	407                             ; double
	.long	1                               ; Num DIEs
	.long	756
	.short	36
	.byte	0
	.long	0
Ltypes3:
	.long	358                             ; short
	.long	1                               ; Num DIEs
	.long	669
	.short	36
	.byte	0
	.long	0
.subsections_via_symbols
	.section	__DWARF,__debug_line,regular,debug
Lsection_line:
Lline_table_start0:
