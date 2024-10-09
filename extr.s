	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 14, 4
	.file	1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types" "_uint64_t.h"
	.file	2 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types" "_uint32_t.h"
	.file	3 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types" "_uint8_t.h"
	.globl	_emulate_AMX_EXTRX              ; -- Begin function emulate_AMX_EXTRX
	.p2align	2
_emulate_AMX_EXTRX:                     ; @emulate_AMX_EXTRX
Lfunc_begin0:
	.file	4 "/Users/tarindujayatilaka/Documents/superopt/apple-amx" "extr.c"
	.loc	4 53 0                          ; extr.c:53:0
	.cfi_startproc
; %bb.0:
	;DEBUG_VALUE: emulate_AMX_EXTRX:state <- $x0
	;DEBUG_VALUE: emulate_AMX_EXTRX:operand <- $x1
	sub	sp, sp, #288
	.cfi_def_cfa_offset 288
	stp	x28, x27, [sp, #192]            ; 16-byte Folded Spill
	stp	x26, x25, [sp, #208]            ; 16-byte Folded Spill
	stp	x24, x23, [sp, #224]            ; 16-byte Folded Spill
	stp	x22, x21, [sp, #240]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #256]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #272]            ; 16-byte Folded Spill
	add	x29, sp, #272
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
Lloh0:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh1:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh2:
	ldr	x8, [x8]
	stur	x8, [x29, #-96]
Ltmp0:
	;DEBUG_VALUE: emulate_AMX_EXTRX:stride <- 0
	;DEBUG_VALUE: emulate_AMX_EXTRX:store_enable <- -1
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_row <- undef
	.loc	4 63 9 prologue_end             ; extr.c:63:9
	tbnz	w1, #26, LBB0_7
Ltmp1:
; %bb.1:
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_EXTRX:store_enable <- -1
	;DEBUG_VALUE: emulate_AMX_EXTRX:stride <- 0
	;DEBUG_VALUE: emulate_AMX_EXTRX:operand <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRX:state <- $x0
	.loc	4 84 16                         ; extr.c:84:16
	tbnz	w1, #27, LBB0_10
Ltmp2:
; %bb.2:
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_EXTRX:store_enable <- -1
	;DEBUG_VALUE: emulate_AMX_EXTRX:stride <- 0
	;DEBUG_VALUE: emulate_AMX_EXTRX:operand <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRX:state <- $x0
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst <- $x0
	.loc	4 90 30                         ; extr.c:90:30
	lsr	x17, x1, #10
Ltmp3:
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst_offset <- $x17
	.loc	4 91 21                         ; extr.c:91:21
	ubfx	w8, w1, #28, #2
	mov	w9, #8
	lsr	w9, w9, w8
Ltmp4:
	;DEBUG_VALUE: emulate_AMX_EXTRX:xybytes <- $w9
	.loc	4 0 21 is_stmt 0                ; extr.c:0:21
	mov	x10, #6148914691236517205
	mov	w11, #2
	.loc	4 92 13 is_stmt 1               ; extr.c:92:13
	cmp	w8, #3
	csel	w8, w11, w9, eq
Ltmp5:
	;DEBUG_VALUE: emulate_AMX_EXTRX:xybytes <- $w8
	;DEBUG_VALUE: emulate_AMX_EXTRX:store_enable <- undef
	csinv	x9, x10, xzr, eq
	.loc	4 96 49                         ; extr.c:96:49
	lsr	x10, x1, #41
	mov	w11, #3
Ltmp6:
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: parse_writemask:val <- $w10
	;DEBUG_VALUE: parse_writemask:g <- $w8
	.file	5 "/Users/tarindujayatilaka/Documents/superopt/apple-amx" "./emulate.h"
	.loc	5 67 9                          ; ./emulate.h:67:9
	ands	w11, w11, w10, lsr #5
Ltmp7:
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	csinc	w12, w8, wzr, ne
	mul	w12, w12, w10
Ltmp8:
	;DEBUG_VALUE: parse_writemask:val <- $w12
	.loc	5 68 9                          ; ./emulate.h:68:9
	and	w10, w12, #0x3f
Ltmp9:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:val <- $w10
	.loc	5 0 9 is_stmt 0                 ; ./emulate.h:0:9
Lloh3:
	adrp	x13, lJTI0_2@PAGE
Lloh4:
	add	x13, x13, lJTI0_2@PAGEOFF
Ltmp10:
	adr	x14, Ltmp10
	ldrsw	x15, [x13, x11, lsl #2]
	add	x14, x14, x15
	br	x14
Ltmp11:
LBB0_3:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:g <- $w8
	;DEBUG_VALUE: parse_writemask:val <- $w10
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_EXTRX:xybytes <- $w8
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst_offset <- $x17
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst <- $x0
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_EXTRX:stride <- 0
	;DEBUG_VALUE: emulate_AMX_EXTRX:operand <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRX:state <- $x0
	.loc	5 72 22 is_stmt 1               ; ./emulate.h:72:22
	sub	w13, w10, #1
	mov	x11, #-1
Ltmp12:
	cmp	w13, #1
	b.hi	LBB0_6
Ltmp13:
; %bb.4:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:g <- $w8
	;DEBUG_VALUE: parse_writemask:val <- $w10
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_EXTRX:xybytes <- $w8
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst_offset <- $x17
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst <- $x0
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_EXTRX:stride <- 0
	;DEBUG_VALUE: emulate_AMX_EXTRX:operand <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRX:state <- $x0
	.loc	5 74 25                         ; ./emulate.h:74:25
	lsl	x11, x11, x8
	.loc	5 74 19 is_stmt 0               ; ./emulate.h:74:19
	mvn	x11, x11
	.loc	5 74 45                         ; ./emulate.h:74:45
	sbfx	w12, w12, #0, #1
	.loc	5 74 37                         ; ./emulate.h:74:37
	and	w12, w12, w8
	.loc	5 74 31                         ; ./emulate.h:74:31
	lsl	x11, x11, x12
Ltmp14:
	;DEBUG_VALUE: parse_writemask:all <- $x11
	;DEBUG_VALUE: parse_writemask:g <- [DW_OP_constu 1, DW_OP_shl, DW_OP_stack_value] $w8
	.loc	5 0 31                          ; ./emulate.h:0:31
	mov	x12, x8
Ltmp15:
LBB0_5:                                 ; =>This Inner Loop Header: Depth=1
	;DEBUG_VALUE: parse_writemask:all <- $x11
	;DEBUG_VALUE: parse_writemask:val <- $w10
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_EXTRX:xybytes <- $w8
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst_offset <- $x17
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst <- $x0
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_EXTRX:stride <- 0
	;DEBUG_VALUE: emulate_AMX_EXTRX:operand <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRX:state <- $x0
	.loc	5 75 23 is_stmt 1               ; ./emulate.h:75:23
	lsl	w13, w12, #1
	;DEBUG_VALUE: parse_writemask:all <- $x11
Ltmp16:
	.loc	5 76 28                         ; ./emulate.h:76:28
	lsl	x14, x11, x13
	.loc	5 76 21 is_stmt 0               ; ./emulate.h:76:21
	orr	x11, x14, x11
Ltmp17:
	;DEBUG_VALUE: parse_writemask:all <- $x11
	;DEBUG_VALUE: parse_writemask:g <- [DW_OP_constu 1, DW_OP_shl, DW_OP_stack_value] $w13
	.loc	5 75 13 is_stmt 1               ; ./emulate.h:75:13
	cmp	w12, #16
	mov	x12, x13
	b.lo	LBB0_5
Ltmp18:
LBB0_6:
	;DEBUG_VALUE: parse_writemask:val <- $w10
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_EXTRX:xybytes <- $w8
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst_offset <- $x17
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst <- $x0
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_EXTRX:stride <- 0
	;DEBUG_VALUE: emulate_AMX_EXTRX:operand <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRX:state <- $x0
	;DEBUG_VALUE: parse_writemask:all <- $x11
	.loc	5 83 16                         ; ./emulate.h:83:16
	cmp	w10, #3
	csel	x11, x11, xzr, lo
Ltmp19:
	.loc	5 0 16 is_stmt 0                ; ./emulate.h:0:16
	b	LBB0_19
Ltmp20:
LBB0_7:
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_EXTRX:store_enable <- -1
	;DEBUG_VALUE: emulate_AMX_EXTRX:stride <- 0
	;DEBUG_VALUE: emulate_AMX_EXTRX:operand <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRX:state <- $x0
	.loc	4 64 15 is_stmt 1               ; extr.c:64:15
	add	x8, x0, #512
	tst	x1, #0x400
	csel	x16, x0, x8, eq
Ltmp21:
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst_offset <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst <- $x16
	.loc	4 66 34                         ; extr.c:66:34
	lsr	x8, x1, #59
	and	x9, x8, #0x10
	.loc	4 66 40 is_stmt 0               ; extr.c:66:40
	bfxil	x9, x1, #11, #4
Lloh5:
	adrp	x10, _AMX_VER@GOTPAGE
Lloh6:
	ldr	x10, [x10, _AMX_VER@GOTPAGEOFF]
	.loc	4 66 9                          ; extr.c:66:9
	cmp	x9, #26
	b.hi	LBB0_20
Ltmp22:
; %bb.8:
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst <- $x16
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst_offset <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_EXTRX:store_enable <- -1
	;DEBUG_VALUE: emulate_AMX_EXTRX:stride <- 0
	;DEBUG_VALUE: emulate_AMX_EXTRX:operand <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRX:state <- $x0
	.loc	4 0 9                           ; extr.c:0:9
	str	wzr, [sp, #100]                 ; 4-byte Folded Spill
	mov	w8, #1
Lloh7:
	adrp	x11, lJTI0_0@PAGE
Lloh8:
	add	x11, x11, lJTI0_0@PAGEOFF
Ltmp23:
	adr	x12, Ltmp23
	ldrsw	x13, [x11, x9, lsl #2]
	add	x12, x12, x13
	mov	x9, x8
	br	x12
Ltmp24:
LBB0_9:
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst <- $x16
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst_offset <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_EXTRX:store_enable <- -1
	;DEBUG_VALUE: emulate_AMX_EXTRX:stride <- 0
	;DEBUG_VALUE: emulate_AMX_EXTRX:operand <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRX:state <- $x0
	str	wzr, [sp, #100]                 ; 4-byte Folded Spill
	mov	w8, #4
Ltmp25:
	;DEBUG_VALUE: emulate_AMX_EXTRX:zbytes <- 4
	;DEBUG_VALUE: emulate_AMX_EXTRX:xybytes <- 4
	b	LBB0_27
Ltmp26:
LBB0_10:
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_EXTRX:store_enable <- -1
	;DEBUG_VALUE: emulate_AMX_EXTRX:stride <- 0
	;DEBUG_VALUE: emulate_AMX_EXTRX:operand <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRX:state <- $x0
	.loc	4 85 9 is_stmt 1                ; extr.c:85:9
	ubfx	x8, x1, #16, #3
	add	x8, x0, x8, lsl #6
	ubfx	x9, x1, #20, #3
	add	x9, x0, x9, lsl #6
	ldp	q0, q1, [x9, #512]
	stp	q0, q1, [x8]
	ldp	q0, q1, [x9, #544]
	stp	q0, q1, [x8, #32]
Ltmp27:
LBB0_11:
	.loc	4 0 9 is_stmt 0                 ; extr.c:0:9
	ldur	x8, [x29, #-96]
Lloh9:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh10:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh11:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB0_64
; %bb.12:
	.loc	4 114 1 is_stmt 1               ; extr.c:114:1
	ldp	x29, x30, [sp, #272]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #256]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #240]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #224]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #208]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #192]            ; 16-byte Folded Reload
	add	sp, sp, #288
	ret
LBB0_13:
Ltmp28:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:g <- $w8
	;DEBUG_VALUE: parse_writemask:val <- $w10
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_EXTRX:xybytes <- $w8
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst_offset <- $x17
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst <- $x0
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_EXTRX:stride <- 0
	;DEBUG_VALUE: emulate_AMX_EXTRX:operand <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRX:state <- $x0
	.loc	4 0 1 is_stmt 0                 ; extr.c:0:1
	mov	x11, #-1
Ltmp29:
	.loc	5 88 13 is_stmt 1               ; ./emulate.h:88:13
	cbz	w10, LBB0_19
Ltmp30:
; %bb.14:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:g <- $w8
	;DEBUG_VALUE: parse_writemask:val <- $w10
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_EXTRX:xybytes <- $w8
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst_offset <- $x17
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst <- $x0
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_EXTRX:stride <- 0
	;DEBUG_VALUE: emulate_AMX_EXTRX:operand <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRX:state <- $x0
	.loc	5 91 22                         ; ./emulate.h:91:22
	lsl	x10, x11, x10
Ltmp31:
	.loc	5 0 22 is_stmt 0                ; ./emulate.h:0:22
	b	LBB0_17
Ltmp32:
LBB0_15:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:g <- $w8
	;DEBUG_VALUE: parse_writemask:val <- $w10
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_EXTRX:xybytes <- $w8
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst_offset <- $x17
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst <- $x0
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_EXTRX:stride <- 0
	;DEBUG_VALUE: emulate_AMX_EXTRX:operand <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRX:state <- $x0
	mov	x11, #-1
Ltmp33:
	.loc	5 93 13 is_stmt 1               ; ./emulate.h:93:13
	cbz	w10, LBB0_19
Ltmp34:
; %bb.16:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:g <- $w8
	;DEBUG_VALUE: parse_writemask:val <- $w10
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_EXTRX:xybytes <- $w8
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst_offset <- $x17
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst <- $x0
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_EXTRX:stride <- 0
	;DEBUG_VALUE: emulate_AMX_EXTRX:operand <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRX:state <- $x0
	.loc	5 96 22                         ; ./emulate.h:96:22
	lsr	x10, x11, x10
Ltmp35:
LBB0_17:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:g <- $w8
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_EXTRX:xybytes <- $w8
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst_offset <- $x17
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst <- $x0
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_EXTRX:stride <- 0
	;DEBUG_VALUE: emulate_AMX_EXTRX:operand <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRX:state <- $x0
	.loc	5 0 0 is_stmt 0                 ; ./emulate.h:0:0
	mvn	x11, x10
	b	LBB0_19
Ltmp36:
LBB0_18:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:g <- $w8
	;DEBUG_VALUE: parse_writemask:val <- $w10
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_EXTRX:xybytes <- $w8
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst_offset <- $x17
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst <- $x0
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_EXTRX:stride <- 0
	;DEBUG_VALUE: emulate_AMX_EXTRX:operand <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRX:state <- $x0
	mov	x11, #-1
Ltmp37:
	.loc	5 86 23 is_stmt 1               ; ./emulate.h:86:23
	lsl	x11, x11, x8
	.loc	5 86 17 is_stmt 0               ; ./emulate.h:86:17
	mvn	x11, x11
	.loc	5 86 30                         ; ./emulate.h:86:30
	lsl	x11, x11, x10
Ltmp38:
LBB0_19:
	;DEBUG_VALUE: emulate_AMX_EXTRX:xybytes <- $w8
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst_offset <- $x17
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst <- $x0
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_EXTRX:stride <- 0
	;DEBUG_VALUE: emulate_AMX_EXTRX:operand <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRX:state <- $x0
	.loc	5 0 30                          ; ./emulate.h:0:30
	str	wzr, [sp, #100]                 ; 4-byte Folded Spill
	.loc	4 96 22 is_stmt 1               ; extr.c:96:22
	and	x2, x11, x9
Ltmp39:
	;DEBUG_VALUE: emulate_AMX_EXTRX:store_enable <- $x2
	.loc	4 0 22 is_stmt 0                ; extr.c:0:22
	mov	w9, #64
Ltmp40:
	;DEBUG_VALUE: emulate_AMX_EXTRX:zbytes <- $w8
	str	x9, [sp, #32]                   ; 8-byte Folded Spill
	mov	x9, x8
	mov	x16, x0
	str	x1, [sp, #88]                   ; 8-byte Folded Spill
	b	LBB0_42
Ltmp41:
LBB0_20:
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst <- $x16
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst_offset <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_EXTRX:store_enable <- -1
	;DEBUG_VALUE: emulate_AMX_EXTRX:stride <- 0
	;DEBUG_VALUE: emulate_AMX_EXTRX:operand <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRX:state <- $x0
	str	wzr, [sp, #100]                 ; 4-byte Folded Spill
	mov	w8, #2
Ltmp42:
	;DEBUG_VALUE: emulate_AMX_EXTRX:zbytes <- 2
	;DEBUG_VALUE: emulate_AMX_EXTRX:xybytes <- 2
	b	LBB0_27
Ltmp43:
LBB0_21:
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst <- $x16
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst_offset <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_EXTRX:store_enable <- -1
	;DEBUG_VALUE: emulate_AMX_EXTRX:stride <- 0
	;DEBUG_VALUE: emulate_AMX_EXTRX:operand <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRX:state <- $x0
	mov	w9, #2
	mov	w8, #4
	mov	w11, #1
Ltmp44:
	;DEBUG_VALUE: emulate_AMX_EXTRX:zbytes <- 4
	;DEBUG_VALUE: emulate_AMX_EXTRX:xybytes <- 2
	;DEBUG_VALUE: emulate_AMX_EXTRX:stride <- 1
	str	w11, [sp, #100]                 ; 4-byte Folded Spill
	b	LBB0_28
Ltmp45:
LBB0_22:
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst <- $x16
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst_offset <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_EXTRX:store_enable <- -1
	;DEBUG_VALUE: emulate_AMX_EXTRX:stride <- 0
	;DEBUG_VALUE: emulate_AMX_EXTRX:operand <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRX:state <- $x0
	mov	w8, #4
	mov	w9, #2
Ltmp46:
	;DEBUG_VALUE: emulate_AMX_EXTRX:zbytes <- 4
	;DEBUG_VALUE: emulate_AMX_EXTRX:xybytes <- 2
	;DEBUG_VALUE: emulate_AMX_EXTRX:stride <- 2
	str	w9, [sp, #100]                  ; 4-byte Folded Spill
	mov	w9, #2
	b	LBB0_28
Ltmp47:
LBB0_23:
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst <- $x16
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst_offset <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_EXTRX:store_enable <- -1
	;DEBUG_VALUE: emulate_AMX_EXTRX:stride <- 0
	;DEBUG_VALUE: emulate_AMX_EXTRX:operand <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRX:state <- $x0
	mov	w8, #4
	b	LBB0_25
Ltmp48:
LBB0_24:
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst <- $x16
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst_offset <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_EXTRX:store_enable <- -1
	;DEBUG_VALUE: emulate_AMX_EXTRX:stride <- 0
	;DEBUG_VALUE: emulate_AMX_EXTRX:operand <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRX:state <- $x0
	mov	w8, #2
Ltmp49:
LBB0_25:
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst <- $x16
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst_offset <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_EXTRX:store_enable <- -1
	;DEBUG_VALUE: emulate_AMX_EXTRX:stride <- 0
	;DEBUG_VALUE: emulate_AMX_EXTRX:operand <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRX:state <- $x0
	mov	w9, #1
Ltmp50:
	;DEBUG_VALUE: emulate_AMX_EXTRX:zbytes <- 4
	;DEBUG_VALUE: emulate_AMX_EXTRX:xybytes <- 1
	;DEBUG_VALUE: emulate_AMX_EXTRX:stride <- 1
	str	w9, [sp, #100]                  ; 4-byte Folded Spill
	mov	w9, #1
	b	LBB0_28
Ltmp51:
LBB0_26:
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst <- $x16
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst_offset <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_EXTRX:store_enable <- -1
	;DEBUG_VALUE: emulate_AMX_EXTRX:stride <- 0
	;DEBUG_VALUE: emulate_AMX_EXTRX:operand <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRX:state <- $x0
	str	wzr, [sp, #100]                 ; 4-byte Folded Spill
	mov	w8, #8
Ltmp52:
	;DEBUG_VALUE: emulate_AMX_EXTRX:zbytes <- 8
	;DEBUG_VALUE: emulate_AMX_EXTRX:xybytes <- 8
LBB0_27:
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst <- $x16
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst_offset <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_EXTRX:store_enable <- -1
	;DEBUG_VALUE: emulate_AMX_EXTRX:stride <- 0
	;DEBUG_VALUE: emulate_AMX_EXTRX:operand <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRX:state <- $x0
	mov	x9, x8
Ltmp53:
LBB0_28:
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst <- $x16
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst_offset <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_EXTRX:store_enable <- -1
	;DEBUG_VALUE: emulate_AMX_EXTRX:operand <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRX:state <- $x0
	;DEBUG_VALUE: emulate_AMX_EXTRX:stride <- [DW_OP_plus_uconst 100] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:xybytes <- $w9
	;DEBUG_VALUE: emulate_AMX_EXTRX:zbytes <- $w8
	.loc	4 79 14 is_stmt 1               ; extr.c:79:14
	ldr	w10, [x10]
	tst	x1, #0x80000000
	.loc	4 79 37 is_stmt 0               ; extr.c:79:37
	ccmp	w10, #2, #0, ne
	cset	w10, lo
	and	x11, x1, #0xfffffe00ffffffff
	tst	x1, #0x2000000
	mov	w12, #16
	mov	w13, #32
	csel	x12, x13, x12, eq
	cmp	w10, #0
	mov	w10, #64
	csel	x10, x10, x12, ne
Ltmp54:
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_step <- $x10
	.loc	4 0 37                          ; extr.c:0:37
	str	x10, [sp, #32]                  ; 8-byte Folded Spill
Ltmp55:
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_step <- [DW_OP_plus_uconst 32] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_step <- [DW_OP_plus_uconst 32] [$sp+0]
	.loc	4 79 37                         ; extr.c:79:37
	csel	x12, x1, x11, ne
Ltmp56:
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: parse_writemask:g <- $w9
	;DEBUG_VALUE: parse_writemask:val <- undef
	;DEBUG_VALUE: emulate_AMX_EXTRX:operand <- $x12
	.loc	5 66 21 is_stmt 1               ; ./emulate.h:66:21
	lsr	x10, x12, #38
	.loc	5 67 9                          ; ./emulate.h:67:9
	ands	w11, w10, #0x7
Ltmp57:
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	csinc	w10, w9, wzr, ne
Ltmp58:
	;DEBUG_VALUE: parse_writemask:all <- -1
	.loc	5 70 5                          ; ./emulate.h:70:5
	cmp	w11, #5
	str	x12, [sp, #88]                  ; 8-byte Folded Spill
	b.hi	LBB0_34
Ltmp59:
; %bb.29:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: emulate_AMX_EXTRX:operand <- $x12
	;DEBUG_VALUE: parse_writemask:g <- $w9
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_step <- [DW_OP_plus_uconst 32] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:zbytes <- $w8
	;DEBUG_VALUE: emulate_AMX_EXTRX:xybytes <- $w9
	;DEBUG_VALUE: emulate_AMX_EXTRX:stride <- [DW_OP_plus_uconst 100] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst <- $x16
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst_offset <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRX:store_enable <- -1
	;DEBUG_VALUE: emulate_AMX_EXTRX:state <- $x0
	.loc	5 0 5 is_stmt 0                 ; ./emulate.h:0:5
	lsr	x12, x12, #32
Ltmp60:
	mul	w12, w10, w12
	and	w10, w12, #0x3f
Ltmp61:
	;DEBUG_VALUE: parse_writemask:val <- $w10
Lloh12:
	adrp	x13, lJTI0_1@PAGE
Lloh13:
	add	x13, x13, lJTI0_1@PAGEOFF
Ltmp62:
	adr	x14, Ltmp62
	ldrsw	x15, [x13, x11, lsl #2]
	add	x14, x14, x15
	br	x14
Ltmp63:
LBB0_30:
	;DEBUG_VALUE: parse_writemask:val <- $w10
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:g <- $w9
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_step <- [DW_OP_plus_uconst 32] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:zbytes <- $w8
	;DEBUG_VALUE: emulate_AMX_EXTRX:xybytes <- $w9
	;DEBUG_VALUE: emulate_AMX_EXTRX:stride <- [DW_OP_plus_uconst 100] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst <- $x16
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst_offset <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRX:store_enable <- -1
	;DEBUG_VALUE: emulate_AMX_EXTRX:state <- $x0
	.loc	5 72 22 is_stmt 1               ; ./emulate.h:72:22
	sub	w13, w10, #1
	mov	x11, #-1
Ltmp64:
	cmp	w13, #1
	b.hi	LBB0_33
Ltmp65:
; %bb.31:
	;DEBUG_VALUE: parse_writemask:val <- $w10
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:g <- $w9
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_step <- [DW_OP_plus_uconst 32] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:zbytes <- $w8
	;DEBUG_VALUE: emulate_AMX_EXTRX:xybytes <- $w9
	;DEBUG_VALUE: emulate_AMX_EXTRX:stride <- [DW_OP_plus_uconst 100] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst <- $x16
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst_offset <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRX:store_enable <- -1
	;DEBUG_VALUE: emulate_AMX_EXTRX:state <- $x0
	.loc	5 74 25                         ; ./emulate.h:74:25
	lsl	x11, x11, x9
	.loc	5 74 19 is_stmt 0               ; ./emulate.h:74:19
	mvn	x11, x11
	.loc	5 74 45                         ; ./emulate.h:74:45
	sbfx	w12, w12, #0, #1
	.loc	5 74 37                         ; ./emulate.h:74:37
	and	w12, w12, w9
	.loc	5 74 31                         ; ./emulate.h:74:31
	lsl	x11, x11, x12
Ltmp66:
	;DEBUG_VALUE: parse_writemask:all <- $x11
	;DEBUG_VALUE: parse_writemask:g <- [DW_OP_constu 1, DW_OP_shl, DW_OP_stack_value] $w9
	.loc	5 0 31                          ; ./emulate.h:0:31
	mov	x12, x9
Ltmp67:
LBB0_32:                                ; =>This Inner Loop Header: Depth=1
	;DEBUG_VALUE: parse_writemask:all <- $x11
	;DEBUG_VALUE: parse_writemask:val <- $w10
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_step <- [DW_OP_plus_uconst 32] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:zbytes <- $w8
	;DEBUG_VALUE: emulate_AMX_EXTRX:xybytes <- $w9
	;DEBUG_VALUE: emulate_AMX_EXTRX:stride <- [DW_OP_plus_uconst 100] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst <- $x16
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst_offset <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRX:store_enable <- -1
	;DEBUG_VALUE: emulate_AMX_EXTRX:state <- $x0
	.loc	5 75 23 is_stmt 1               ; ./emulate.h:75:23
	lsl	w13, w12, #1
	;DEBUG_VALUE: parse_writemask:all <- $x11
Ltmp68:
	.loc	5 76 28                         ; ./emulate.h:76:28
	lsl	x14, x11, x13
	.loc	5 76 21 is_stmt 0               ; ./emulate.h:76:21
	orr	x11, x14, x11
Ltmp69:
	;DEBUG_VALUE: parse_writemask:all <- $x11
	;DEBUG_VALUE: parse_writemask:g <- [DW_OP_constu 1, DW_OP_shl, DW_OP_stack_value] $w13
	.loc	5 75 13 is_stmt 1               ; ./emulate.h:75:13
	cmp	w12, #16
	mov	x12, x13
	b.lo	LBB0_32
Ltmp70:
LBB0_33:
	;DEBUG_VALUE: parse_writemask:val <- $w10
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_step <- [DW_OP_plus_uconst 32] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:zbytes <- $w8
	;DEBUG_VALUE: emulate_AMX_EXTRX:xybytes <- $w9
	;DEBUG_VALUE: emulate_AMX_EXTRX:stride <- [DW_OP_plus_uconst 100] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst <- $x16
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst_offset <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRX:store_enable <- -1
	;DEBUG_VALUE: emulate_AMX_EXTRX:state <- $x0
	;DEBUG_VALUE: parse_writemask:all <- $x11
	.loc	5 83 16                         ; ./emulate.h:83:16
	cmp	w10, #6
	csel	x2, x11, xzr, lo
	b	LBB0_41
Ltmp71:
LBB0_34:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: emulate_AMX_EXTRX:operand <- $x12
	;DEBUG_VALUE: parse_writemask:g <- $w9
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_step <- [DW_OP_plus_uconst 32] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:zbytes <- $w8
	;DEBUG_VALUE: emulate_AMX_EXTRX:xybytes <- $w9
	;DEBUG_VALUE: emulate_AMX_EXTRX:stride <- [DW_OP_plus_uconst 100] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst <- $x16
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst_offset <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRX:store_enable <- -1
	;DEBUG_VALUE: emulate_AMX_EXTRX:state <- $x0
	.loc	5 0 16 is_stmt 0                ; ./emulate.h:0:16
	mov	x2, #0
	b	LBB0_41
Ltmp72:
LBB0_35:
	;DEBUG_VALUE: parse_writemask:val <- $w10
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:g <- $w9
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_step <- [DW_OP_plus_uconst 32] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:zbytes <- $w8
	;DEBUG_VALUE: emulate_AMX_EXTRX:xybytes <- $w9
	;DEBUG_VALUE: emulate_AMX_EXTRX:stride <- [DW_OP_plus_uconst 100] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst <- $x16
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst_offset <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRX:store_enable <- -1
	;DEBUG_VALUE: emulate_AMX_EXTRX:state <- $x0
	mov	x11, #-1
Ltmp73:
	.loc	5 86 23 is_stmt 1               ; ./emulate.h:86:23
	lsl	x11, x11, x9
	.loc	5 86 17 is_stmt 0               ; ./emulate.h:86:17
	mvn	x11, x11
	.loc	5 86 30                         ; ./emulate.h:86:30
	lsl	x2, x11, x10
	b	LBB0_41
Ltmp74:
LBB0_36:
	;DEBUG_VALUE: parse_writemask:val <- $w10
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:g <- $w9
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_step <- [DW_OP_plus_uconst 32] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:zbytes <- $w8
	;DEBUG_VALUE: emulate_AMX_EXTRX:xybytes <- $w9
	;DEBUG_VALUE: emulate_AMX_EXTRX:stride <- [DW_OP_plus_uconst 100] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst <- $x16
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst_offset <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRX:store_enable <- -1
	;DEBUG_VALUE: emulate_AMX_EXTRX:state <- $x0
	.loc	5 88 13 is_stmt 1               ; ./emulate.h:88:13
	cbz	w10, LBB0_61
Ltmp75:
LBB0_37:
	;DEBUG_VALUE: parse_writemask:val <- $w10
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:g <- $w9
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_step <- [DW_OP_plus_uconst 32] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:zbytes <- $w8
	;DEBUG_VALUE: emulate_AMX_EXTRX:xybytes <- $w9
	;DEBUG_VALUE: emulate_AMX_EXTRX:stride <- [DW_OP_plus_uconst 100] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst <- $x16
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst_offset <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRX:store_enable <- -1
	;DEBUG_VALUE: emulate_AMX_EXTRX:state <- $x0
	.loc	5 0 13 is_stmt 0                ; ./emulate.h:0:13
	mov	x11, #-1
Ltmp76:
	.loc	5 91 22 is_stmt 1               ; ./emulate.h:91:22
	lsl	x10, x11, x10
Ltmp77:
	.loc	5 0 22 is_stmt 0                ; ./emulate.h:0:22
	b	LBB0_40
Ltmp78:
LBB0_38:
	;DEBUG_VALUE: parse_writemask:val <- $w10
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:g <- $w9
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_step <- [DW_OP_plus_uconst 32] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:zbytes <- $w8
	;DEBUG_VALUE: emulate_AMX_EXTRX:xybytes <- $w9
	;DEBUG_VALUE: emulate_AMX_EXTRX:stride <- [DW_OP_plus_uconst 100] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst <- $x16
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst_offset <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRX:store_enable <- -1
	;DEBUG_VALUE: emulate_AMX_EXTRX:state <- $x0
	.loc	5 93 13 is_stmt 1               ; ./emulate.h:93:13
	cbz	w10, LBB0_61
Ltmp79:
LBB0_39:
	;DEBUG_VALUE: parse_writemask:val <- $w10
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:g <- $w9
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_step <- [DW_OP_plus_uconst 32] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:zbytes <- $w8
	;DEBUG_VALUE: emulate_AMX_EXTRX:xybytes <- $w9
	;DEBUG_VALUE: emulate_AMX_EXTRX:stride <- [DW_OP_plus_uconst 100] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst <- $x16
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst_offset <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRX:store_enable <- -1
	;DEBUG_VALUE: emulate_AMX_EXTRX:state <- $x0
	.loc	5 0 13 is_stmt 0                ; ./emulate.h:0:13
	mov	x11, #-1
Ltmp80:
	.loc	5 96 22 is_stmt 1               ; ./emulate.h:96:22
	lsr	x10, x11, x10
Ltmp81:
LBB0_40:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:g <- $w9
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_step <- [DW_OP_plus_uconst 32] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:zbytes <- $w8
	;DEBUG_VALUE: emulate_AMX_EXTRX:xybytes <- $w9
	;DEBUG_VALUE: emulate_AMX_EXTRX:stride <- [DW_OP_plus_uconst 100] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst <- $x16
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst_offset <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRX:store_enable <- -1
	;DEBUG_VALUE: emulate_AMX_EXTRX:state <- $x0
	.loc	5 0 0 is_stmt 0                 ; ./emulate.h:0:0
	mvn	x2, x10
Ltmp82:
LBB0_41:
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_step <- [DW_OP_plus_uconst 32] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:zbytes <- $w8
	;DEBUG_VALUE: emulate_AMX_EXTRX:xybytes <- $w9
	;DEBUG_VALUE: emulate_AMX_EXTRX:stride <- [DW_OP_plus_uconst 100] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst <- $x16
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst_offset <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRX:store_enable <- -1
	;DEBUG_VALUE: emulate_AMX_EXTRX:state <- $x0
	mov	x17, x1
Ltmp83:
LBB0_42:
	;DEBUG_VALUE: emulate_AMX_EXTRX:zbytes <- $w8
	;DEBUG_VALUE: emulate_AMX_EXTRX:state <- $x0
	lsr	x10, x1, #20
	;DEBUG_VALUE: emulate_AMX_EXTRX:zbytes <- $w8
Ltmp84:
	;DEBUG_VALUE: emulate_AMX_EXTRX:xybytes <- $w9
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst_offset <- $x17
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst <- $x16
	;DEBUG_VALUE: emulate_AMX_EXTRX:stride <- [DW_OP_plus_uconst 100] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:store_enable <- $x2
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_step <- [DW_OP_plus_uconst 32] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_row <- $x10
	;DEBUG_VALUE: emulate_AMX_EXTRX:operand <- [DW_OP_plus_uconst 88] [$sp+0]
	ldr	x15, [sp, #88]                  ; 8-byte Folded Reload
	lsr	x11, x15, #58
	ands	w12, w11, #0x1f
	sub	w12, w12, #1
	ands	w11, w11, #0x1f
	str	x11, [sp, #80]                  ; 8-byte Folded Spill
	.loc	4 100 33 is_stmt 1              ; extr.c:100:33
	lsl	x11, x15, #6
	and	x13, x15, #0x40000000000000
	ccmp	x13, #0, #4, ne
	mov	w13, #1
	lsl	w12, w13, w12
	csel	x12, xzr, x12, eq
Ltmp85:
	;DEBUG_VALUE: emulate_AMX_EXTRX:signext <- undef
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_row <- [DW_OP_LLVM_arg 0, DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_plus_uconst 17592186044415, DW_OP_LLVM_arg 1, DW_OP_and, DW_OP_stack_value] $sp, $x10
	.loc	4 0 33 is_stmt 0                ; extr.c:0:33
	str	x12, [sp, #72]                  ; 8-byte Folded Spill
	mov	w12, #64
	.loc	4 100 24                        ; extr.c:100:24
	sub	w12, w12, w8, lsl #3
	ldr	x14, [sp, #32]                  ; 8-byte Folded Reload
Ltmp86:
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_step <- $x14
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_row <- [DW_OP_LLVM_arg 0, DW_OP_plus_uconst 17592186044415, DW_OP_LLVM_arg 1, DW_OP_and, DW_OP_stack_value] $x14, $x10
	.loc	4 101 26 is_stmt 1              ; extr.c:101:26
	sub	x14, x14, #1
Ltmp87:
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_step <- [DW_OP_plus_uconst 32] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_row <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_and, DW_OP_stack_value] $x14, $x10
	.loc	4 101 16 is_stmt 0              ; extr.c:101:16
	and	x22, x14, x10
Ltmp88:
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_row <- $x22
	.loc	4 0 16                          ; extr.c:0:16
	sub	w19, w8, #1
	neg	w25, w8
	and	x24, x12, x11, asr #63
	lsl	w10, w9, #3
	lsl	x11, x15, #7
	ubfx	x12, x15, #56, #1
	sub	w10, w10, w12
	lsl	x12, x13, x10
	neg	x10, x12
	and	x10, x10, x11, asr #63
	str	x10, [sp, #48]                  ; 8-byte Folded Spill
	sub	x10, x12, #1
	stp	x10, x12, [sp, #56]             ; 16-byte Folded Spill
	and	x10, x15, #0x1fffc000000
	and	x10, x10, #0xffffffff07ffffff
	stp	x10, x2, [sp, #8]               ; 16-byte Folded Spill
	mov	w20, w8
	mov	w21, w9
	str	x16, [sp, #24]                  ; 8-byte Folded Spill
Ltmp89:
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst <- [DW_OP_plus_uconst 24] [$sp+0]
	ldr	w28, [sp, #100]                 ; 4-byte Folded Reload
	b	LBB0_44
Ltmp90:
LBB0_43:                                ;   in Loop: Header=BB0_44 Depth=1
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst_offset <- [DW_OP_plus_uconst 40] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst <- [DW_OP_plus_uconst 24] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_row <- $x22
	;DEBUG_VALUE: emulate_AMX_EXTRX:operand <- [DW_OP_plus_uconst 88] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_step <- [DW_OP_plus_uconst 32] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:stride <- [DW_OP_plus_uconst 100] [$sp+0]
	.loc	4 112 20 is_stmt 1              ; extr.c:112:20
	add	x17, x17, #64
Ltmp91:
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst_offset <- $x17
	.loc	4 0 20 is_stmt 0                ; extr.c:0:20
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
Ltmp92:
	.loc	4 101 50 is_stmt 1              ; extr.c:101:50
	add	x22, x22, x8
Ltmp93:
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_row <- $x22
	.loc	4 101 5 is_stmt 0               ; extr.c:101:5
	cmp	x22, #64
	b.hs	LBB0_11
Ltmp94:
LBB0_44:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_47 Depth 2
                                        ;     Child Loop BB0_59 Depth 2
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst <- [DW_OP_plus_uconst 24] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_row <- $x22
	;DEBUG_VALUE: emulate_AMX_EXTRX:operand <- [DW_OP_plus_uconst 88] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst_offset <- $x17
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_step <- [DW_OP_plus_uconst 32] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:stride <- [DW_OP_plus_uconst 100] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_row <- $x22
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst_offset <- $x17
	.loc	4 0 5                           ; extr.c:0:5
	str	x17, [sp, #40]                  ; 8-byte Folded Spill
Ltmp95:
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst_offset <- [DW_OP_plus_uconst 40] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst_offset <- [DW_OP_plus_uconst 40] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst_offset <- [DW_OP_plus_uconst 40] [$sp+0]
	mov	w27, #0
	and	x26, x22, x25
	;DEBUG_VALUE: i <- 0
	b	LBB0_47
Ltmp96:
LBB0_45:                                ;   in Loop: Header=BB0_47 Depth=2
	;DEBUG_VALUE: extr_alu:shift <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_constu 58, DW_OP_shr, DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 32 7, DW_OP_constu 31, DW_OP_and, DW_OP_stack_value] $sp
	;DEBUG_VALUE: extr_alu:operand <- [DW_OP_plus_uconst 88] [$sp+0]
	;DEBUG_VALUE: extr_alu:val <- $x8
	;DEBUG_VALUE: val <- $x8
	;DEBUG_VALUE: i <- $w27
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst_offset <- [DW_OP_plus_uconst 40] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst <- [DW_OP_plus_uconst 24] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_row <- $x22
	;DEBUG_VALUE: emulate_AMX_EXTRX:operand <- [DW_OP_plus_uconst 88] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_step <- [DW_OP_plus_uconst 32] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:stride <- [DW_OP_plus_uconst 100] [$sp+0]
	.loc	4 24 13 is_stmt 1               ; extr.c:24:13
	fmov	d0, x8
	; InlineAsm Start
	fcvt	h0, s0
	; InlineAsm End
	fmov	x8, d0
Ltmp97:
	;DEBUG_VALUE: extr_alu:val <- $x8
LBB0_46:                                ;   in Loop: Header=BB0_47 Depth=2
	;DEBUG_VALUE: i <- $w27
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst_offset <- [DW_OP_plus_uconst 40] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst <- [DW_OP_plus_uconst 24] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_row <- $x22
	;DEBUG_VALUE: emulate_AMX_EXTRX:operand <- [DW_OP_plus_uconst 88] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_step <- [DW_OP_plus_uconst 32] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:stride <- [DW_OP_plus_uconst 100] [$sp+0]
	;DEBUG_VALUE: val <- $x8
	.loc	4 106 30                        ; extr.c:106:30
	add	x9, sp, #112
	add	x0, x9, w27, uxtw
	;DEBUG_VALUE: store_int:val <- $x8
Ltmp98:
	;DEBUG_VALUE: store_int:nbytes <- undef
	.loc	4 0 30 is_stmt 0                ; extr.c:0:30
	str	x8, [sp, #104]
Ltmp99:
	;DEBUG_VALUE: store_int:val <- [DW_OP_plus_uconst 104, DW_OP_deref] $sp
	;DEBUG_VALUE: store_int:dst <- $x0
	.loc	5 38 5 is_stmt 1                ; ./emulate.h:38:5
	add	x1, sp, #104
	mov	x2, x21
	bl	_memcpy
Ltmp100:
	.loc	4 102 40                        ; extr.c:102:40
	add	w27, w27, w21
Ltmp101:
	;DEBUG_VALUE: i <- $w27
	.loc	4 102 9 is_stmt 0               ; extr.c:102:9
	cmp	w27, #64
	mov	x0, x23
	b.hs	LBB0_55
Ltmp102:
LBB0_47:                                ;   Parent Loop BB0_44 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst_offset <- [DW_OP_plus_uconst 40] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst <- [DW_OP_plus_uconst 24] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_row <- $x22
	;DEBUG_VALUE: emulate_AMX_EXTRX:operand <- [DW_OP_plus_uconst 88] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_step <- [DW_OP_plus_uconst 32] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:stride <- [DW_OP_plus_uconst 100] [$sp+0]
	;DEBUG_VALUE: i <- $w27
	.loc	4 103 32 is_stmt 1              ; extr.c:103:32
	and	w8, w27, w19
	.loc	4 103 48 is_stmt 0              ; extr.c:103:48
	udiv	w8, w8, w21
Ltmp103:
	;DEBUG_VALUE: zoff <- undef
	.loc	4 104 46 is_stmt 1              ; extr.c:104:46
	madd	w8, w8, w28, w22
	and	x8, x8, x19
	orr	x8, x8, x26
	mov	x23, x0
	.loc	4 104 37 is_stmt 0              ; extr.c:104:37
	add	x8, x0, x8, lsl #6
	.loc	4 104 96                        ; extr.c:104:96
	and	w9, w27, w25
	.loc	4 104 37                        ; extr.c:104:37
	add	x8, x8, x9
	add	x1, x8, #1024
Ltmp104:
	;DEBUG_VALUE: load_int:val <- 0
	;DEBUG_VALUE: load_int:signext <- undef
	;DEBUG_VALUE: load_int:nbytes <- undef
	;DEBUG_VALUE: load_int:src <- $x1
	.loc	5 32 13 is_stmt 1               ; ./emulate.h:32:13
	str	xzr, [sp, #104]
Ltmp105:
	;DEBUG_VALUE: load_int:val <- [DW_OP_plus_uconst 104, DW_OP_deref] $sp
	.loc	5 33 5                          ; ./emulate.h:33:5
	add	x0, sp, #104
Ltmp106:
	;DEBUG_VALUE: emulate_AMX_EXTRX:state <- [DW_OP_LLVM_entry_value 1] $x0
	mov	x2, x20
	mov	w3, #8
	bl	___memcpy_chk
Ltmp107:
	.loc	5 34 13                         ; ./emulate.h:34:13
	ldr	x8, [sp, #104]
Ltmp108:
	;DEBUG_VALUE: load_int:val <- $x8
	.loc	5 34 17 is_stmt 0               ; ./emulate.h:34:17
	lsl	x8, x8, x24
Ltmp109:
	.loc	5 34 29                         ; ./emulate.h:34:29
	asr	x8, x8, x24
Ltmp110:
	;DEBUG_VALUE: val <- $x8
	.loc	4 105 17 is_stmt 1              ; extr.c:105:17
	cbz	w28, LBB0_46
Ltmp111:
; %bb.48:                               ;   in Loop: Header=BB0_47 Depth=2
	;DEBUG_VALUE: val <- $x8
	;DEBUG_VALUE: i <- $w27
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst_offset <- [DW_OP_plus_uconst 40] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst <- [DW_OP_plus_uconst 24] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_row <- $x22
	;DEBUG_VALUE: emulate_AMX_EXTRX:operand <- [DW_OP_plus_uconst 88] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_step <- [DW_OP_plus_uconst 32] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:stride <- [DW_OP_plus_uconst 100] [$sp+0]
	;DEBUG_VALUE: extr_alu:val <- $x8
	;DEBUG_VALUE: extr_alu:operand <- [DW_OP_plus_uconst 88] [$sp+0]
	;DEBUG_VALUE: extr_alu:outbits <- [DW_OP_constu 3, DW_OP_shl, DW_OP_stack_value] undef
	;DEBUG_VALUE: extr_alu:shift <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_constu 58, DW_OP_shr, DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 32 7, DW_OP_constu 31, DW_OP_and, DW_OP_stack_value] $sp
	.loc	4 0 17 is_stmt 0                ; extr.c:0:17
	ldr	x9, [sp, #88]                   ; 8-byte Folded Reload
Ltmp112:
	.loc	4 20 9 is_stmt 1                ; extr.c:20:9
	tbnz	x9, #63, LBB0_52
Ltmp113:
; %bb.49:                               ;   in Loop: Header=BB0_47 Depth=2
	;DEBUG_VALUE: extr_alu:shift <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_constu 58, DW_OP_shr, DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 32 7, DW_OP_constu 31, DW_OP_and, DW_OP_stack_value] $sp
	;DEBUG_VALUE: extr_alu:operand <- [DW_OP_plus_uconst 88] [$sp+0]
	;DEBUG_VALUE: extr_alu:val <- $x8
	;DEBUG_VALUE: val <- $x8
	;DEBUG_VALUE: i <- $w27
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst_offset <- [DW_OP_plus_uconst 40] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst <- [DW_OP_plus_uconst 24] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_row <- $x22
	;DEBUG_VALUE: emulate_AMX_EXTRX:operand <- [DW_OP_plus_uconst 88] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_step <- [DW_OP_plus_uconst 32] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:stride <- [DW_OP_plus_uconst 100] [$sp+0]
	.loc	4 0 9 is_stmt 0                 ; extr.c:0:9
	ldr	x10, [sp, #72]                  ; 8-byte Folded Reload
Ltmp114:
	.loc	4 28 15 is_stmt 1               ; extr.c:28:15
	add	x8, x8, x10
Ltmp115:
	;DEBUG_VALUE: extr_alu:val <- $x8
	.loc	4 0 15 is_stmt 0                ; extr.c:0:15
	ldr	x10, [sp, #80]                  ; 8-byte Folded Reload
Ltmp116:
	.loc	4 31 9 is_stmt 1                ; extr.c:31:9
	asr	x8, x8, x10
Ltmp117:
	;DEBUG_VALUE: extr_alu:val <- $x8
	.loc	4 32 9                          ; extr.c:32:9
	tbz	x9, #55, LBB0_46
Ltmp118:
; %bb.50:                               ;   in Loop: Header=BB0_47 Depth=2
	;DEBUG_VALUE: extr_alu:shift <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_constu 58, DW_OP_shr, DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 32 7, DW_OP_constu 31, DW_OP_and, DW_OP_stack_value] $sp
	;DEBUG_VALUE: extr_alu:operand <- [DW_OP_plus_uconst 88] [$sp+0]
	;DEBUG_VALUE: extr_alu:val <- $x8
	;DEBUG_VALUE: i <- $w27
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst_offset <- [DW_OP_plus_uconst 40] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst <- [DW_OP_plus_uconst 24] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_row <- $x22
	;DEBUG_VALUE: emulate_AMX_EXTRX:operand <- [DW_OP_plus_uconst 88] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_step <- [DW_OP_plus_uconst 32] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:stride <- [DW_OP_plus_uconst 100] [$sp+0]
	;DEBUG_VALUE: extr_alu:outbits <- undef
	;DEBUG_VALUE: hi <- [DW_OP_plus_uconst 64] [$sp+0]
	.loc	4 0 9 is_stmt 0                 ; extr.c:0:9
	ldr	x9, [sp, #88]                   ; 8-byte Folded Reload
Ltmp119:
	.loc	4 35 13 is_stmt 1               ; extr.c:35:13
	tbnz	x9, #57, LBB0_54
Ltmp120:
; %bb.51:                               ;   in Loop: Header=BB0_47 Depth=2
	;DEBUG_VALUE: hi <- [DW_OP_plus_uconst 64] [$sp+0]
	;DEBUG_VALUE: extr_alu:shift <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_constu 58, DW_OP_shr, DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 32 7, DW_OP_constu 31, DW_OP_and, DW_OP_stack_value] $sp
	;DEBUG_VALUE: extr_alu:operand <- [DW_OP_plus_uconst 88] [$sp+0]
	;DEBUG_VALUE: extr_alu:val <- $x8
	;DEBUG_VALUE: i <- $w27
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst_offset <- [DW_OP_plus_uconst 40] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst <- [DW_OP_plus_uconst 24] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_row <- $x22
	;DEBUG_VALUE: emulate_AMX_EXTRX:operand <- [DW_OP_plus_uconst 88] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_step <- [DW_OP_plus_uconst 32] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:stride <- [DW_OP_plus_uconst 100] [$sp+0]
	.loc	4 0 13 is_stmt 0                ; extr.c:0:13
	ldr	x9, [sp, #64]                   ; 8-byte Folded Reload
Ltmp121:
	.loc	4 40 17 is_stmt 1               ; extr.c:40:17
	cmp	x8, x9
	ldr	x9, [sp, #56]                   ; 8-byte Folded Reload
	csel	x8, x8, x9, lo
Ltmp122:
	.loc	4 0 17 is_stmt 0                ; extr.c:0:17
	b	LBB0_46
Ltmp123:
LBB0_52:                                ;   in Loop: Header=BB0_47 Depth=2
	;DEBUG_VALUE: extr_alu:shift <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_constu 58, DW_OP_shr, DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 32 7, DW_OP_constu 31, DW_OP_and, DW_OP_stack_value] $sp
	;DEBUG_VALUE: extr_alu:operand <- [DW_OP_plus_uconst 88] [$sp+0]
	;DEBUG_VALUE: extr_alu:val <- $x8
	;DEBUG_VALUE: val <- $x8
	;DEBUG_VALUE: i <- $w27
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst_offset <- [DW_OP_plus_uconst 40] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst <- [DW_OP_plus_uconst 24] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_row <- $x22
	;DEBUG_VALUE: emulate_AMX_EXTRX:operand <- [DW_OP_plus_uconst 88] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_step <- [DW_OP_plus_uconst 32] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:stride <- [DW_OP_plus_uconst 100] [$sp+0]
	ldr	x9, [sp, #80]                   ; 8-byte Folded Reload
Ltmp124:
	.loc	4 21 13 is_stmt 1               ; extr.c:21:13
	cmp	w9, #16
	b.lo	LBB0_45
Ltmp125:
; %bb.53:                               ;   in Loop: Header=BB0_47 Depth=2
	;DEBUG_VALUE: extr_alu:shift <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_constu 58, DW_OP_shr, DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 32 7, DW_OP_constu 31, DW_OP_and, DW_OP_stack_value] $sp
	;DEBUG_VALUE: extr_alu:operand <- [DW_OP_plus_uconst 88] [$sp+0]
	;DEBUG_VALUE: extr_alu:val <- $x8
	;DEBUG_VALUE: val <- $x8
	;DEBUG_VALUE: i <- $w27
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst_offset <- [DW_OP_plus_uconst 40] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst <- [DW_OP_plus_uconst 24] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_row <- $x22
	;DEBUG_VALUE: emulate_AMX_EXTRX:operand <- [DW_OP_plus_uconst 88] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_step <- [DW_OP_plus_uconst 32] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:stride <- [DW_OP_plus_uconst 100] [$sp+0]
	;DEBUG_VALUE: bf16_from_f32:f <- $w8
	.loc	4 12 12                         ; extr.c:12:12
	and	w9, w8, #0x7fffffff
Ltmp126:
	;DEBUG_VALUE: bf16_from_f32:low <- undef
	.loc	4 14 7                          ; extr.c:14:7
	lsr	w10, w8, #16
Ltmp127:
	;DEBUG_VALUE: bf16_from_f32:f <- $w10
	.loc	4 15 26                         ; extr.c:15:26
	ubfx	w11, w8, #16, #1
	.loc	4 15 21 is_stmt 0               ; extr.c:15:21
	add	w8, w11, w8, uxth
Ltmp128:
	.loc	4 15 31                         ; extr.c:15:31
	cmp	w8, #8, lsl #12                 ; =32768
	.loc	4 15 14                         ; extr.c:15:14
	cinc	w8, w10, hi
	.loc	4 12 9 is_stmt 1                ; extr.c:12:9
	mov	w10, #2139095040
Ltmp129:
	cmp	w9, w10
	mov	w9, #32704
	csel	x8, x9, x8, hi
	b	LBB0_46
Ltmp130:
LBB0_54:                                ;   in Loop: Header=BB0_47 Depth=2
	;DEBUG_VALUE: hi <- [DW_OP_plus_uconst 64] [$sp+0]
	;DEBUG_VALUE: extr_alu:shift <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_constu 58, DW_OP_shr, DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 32 7, DW_OP_constu 31, DW_OP_and, DW_OP_stack_value] $sp
	;DEBUG_VALUE: extr_alu:operand <- [DW_OP_plus_uconst 88] [$sp+0]
	;DEBUG_VALUE: extr_alu:val <- $x8
	;DEBUG_VALUE: i <- $w27
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst_offset <- [DW_OP_plus_uconst 40] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst <- [DW_OP_plus_uconst 24] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_row <- $x22
	;DEBUG_VALUE: emulate_AMX_EXTRX:operand <- [DW_OP_plus_uconst 88] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_step <- [DW_OP_plus_uconst 32] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:stride <- [DW_OP_plus_uconst 100] [$sp+0]
	;DEBUG_VALUE: lo <- [DW_OP_plus_uconst 48] [$sp+0]
	.loc	4 0 9 is_stmt 0                 ; extr.c:0:9
	ldr	x9, [sp, #48]                   ; 8-byte Folded Reload
Ltmp131:
	.loc	4 37 17 is_stmt 1               ; extr.c:37:17
	cmp	x8, x9
	csel	x8, x8, x9, gt
Ltmp132:
	;DEBUG_VALUE: extr_alu:val <- $x8
	.loc	4 0 17 is_stmt 0                ; extr.c:0:17
	ldr	x9, [sp, #64]                   ; 8-byte Folded Reload
	.loc	4 38 17 is_stmt 1               ; extr.c:38:17
	cmp	x8, x9
	ldr	x9, [sp, #56]                   ; 8-byte Folded Reload
	csel	x8, x8, x9, lt
Ltmp133:
	;DEBUG_VALUE: extr_alu:val <- $x8
	.loc	4 0 17 is_stmt 0                ; extr.c:0:17
	b	LBB0_46
Ltmp134:
LBB0_55:                                ;   in Loop: Header=BB0_44 Depth=1
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst_offset <- [DW_OP_plus_uconst 40] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst <- [DW_OP_plus_uconst 24] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_row <- $x22
	;DEBUG_VALUE: emulate_AMX_EXTRX:operand <- [DW_OP_plus_uconst 88] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_step <- [DW_OP_plus_uconst 32] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:stride <- [DW_OP_plus_uconst 100] [$sp+0]
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
Ltmp135:
	.loc	4 108 33 is_stmt 1              ; extr.c:108:33
	mov	x9, #67108864
	movk	x9, #3, lsl #32
	cmp	x8, x9
	b.ne	LBB0_57
Ltmp136:
; %bb.56:                               ;   in Loop: Header=BB0_44 Depth=1
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst_offset <- [DW_OP_plus_uconst 40] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst <- [DW_OP_plus_uconst 24] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_row <- $x22
	;DEBUG_VALUE: emulate_AMX_EXTRX:operand <- [DW_OP_plus_uconst 88] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_step <- [DW_OP_plus_uconst 32] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:stride <- [DW_OP_plus_uconst 100] [$sp+0]
	.loc	4 0 33 is_stmt 0                ; extr.c:0:33
	movi.2d	v0, #0000000000000000
Ltmp137:
	.loc	4 109 13 is_stmt 1              ; extr.c:109:13
	stp	q0, q0, [sp, #144]
	stp	q0, q0, [sp, #112]
Ltmp138:
LBB0_57:                                ;   in Loop: Header=BB0_44 Depth=1
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst_offset <- [DW_OP_plus_uconst 40] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst <- [DW_OP_plus_uconst 24] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_row <- $x22
	;DEBUG_VALUE: emulate_AMX_EXTRX:operand <- [DW_OP_plus_uconst 88] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_step <- [DW_OP_plus_uconst 32] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:stride <- [DW_OP_plus_uconst 100] [$sp+0]
	.loc	4 0 13 is_stmt 0                ; extr.c:0:13
	mov	x8, #0
	ldp	x2, x16, [sp, #16]              ; 16-byte Folded Reload
	ldr	x17, [sp, #40]                  ; 8-byte Folded Reload
	b	LBB0_59
Ltmp139:
LBB0_58:                                ;   in Loop: Header=BB0_59 Depth=2
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst_offset <- [DW_OP_plus_uconst 40] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst <- [DW_OP_plus_uconst 24] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_row <- $x22
	;DEBUG_VALUE: emulate_AMX_EXTRX:operand <- [DW_OP_plus_uconst 88] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_step <- [DW_OP_plus_uconst 32] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:stride <- [DW_OP_plus_uconst 100] [$sp+0]
	.loc	4 47 34 is_stmt 1               ; extr.c:47:34
	add	x8, x8, #1
Ltmp140:
	;DEBUG_VALUE: i <- $x8
	.loc	4 47 5 is_stmt 0                ; extr.c:47:5
	cmp	x8, #64
	b.eq	LBB0_43
Ltmp141:
LBB0_59:                                ;   Parent Loop BB0_44 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst_offset <- [DW_OP_plus_uconst 40] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst <- [DW_OP_plus_uconst 24] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_row <- $x22
	;DEBUG_VALUE: emulate_AMX_EXTRX:operand <- [DW_OP_plus_uconst 88] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_step <- [DW_OP_plus_uconst 32] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:stride <- [DW_OP_plus_uconst 100] [$sp+0]
	;DEBUG_VALUE: i <- $x8
	.loc	4 48 13 is_stmt 1               ; extr.c:48:13
	lsr	x9, x2, x8
	tbz	w9, #0, LBB0_58
Ltmp142:
; %bb.60:                               ;   in Loop: Header=BB0_59 Depth=2
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst_offset <- [DW_OP_plus_uconst 40] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst <- [DW_OP_plus_uconst 24] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_row <- $x22
	;DEBUG_VALUE: emulate_AMX_EXTRX:operand <- [DW_OP_plus_uconst 88] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_step <- [DW_OP_plus_uconst 32] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:stride <- [DW_OP_plus_uconst 100] [$sp+0]
	.loc	4 49 49                         ; extr.c:49:49
	add	x9, sp, #112
	ldrb	w9, [x9, x8]
	.loc	4 49 38 is_stmt 0               ; extr.c:49:38
	add	w10, w17, w8
	and	x10, x10, #0x1ff
	.loc	4 49 47                         ; extr.c:49:47
	strb	w9, [x16, x10]
	b	LBB0_58
Ltmp143:
LBB0_61:
	;DEBUG_VALUE: parse_writemask:val <- $w10
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:g <- $w9
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_step <- [DW_OP_plus_uconst 32] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:zbytes <- $w8
	;DEBUG_VALUE: emulate_AMX_EXTRX:xybytes <- $w9
	;DEBUG_VALUE: emulate_AMX_EXTRX:stride <- [DW_OP_plus_uconst 100] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst <- $x16
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst_offset <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRX:store_enable <- -1
	;DEBUG_VALUE: emulate_AMX_EXTRX:state <- $x0
	.loc	4 0 47                          ; extr.c:0:47
	mov	x2, #-1
	b	LBB0_41
Ltmp144:
LBB0_62:
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst <- $x16
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst_offset <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_EXTRX:store_enable <- -1
	;DEBUG_VALUE: emulate_AMX_EXTRX:stride <- 0
	;DEBUG_VALUE: emulate_AMX_EXTRX:operand <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRX:state <- $x0
	;DEBUG_VALUE: emulate_AMX_EXTRX:xybytes <- 2
	.loc	4 75 35 is_stmt 1               ; extr.c:75:35
	ldr	w8, [x10]
	mov	w9, #2
	mov	w11, #4
	.loc	4 75 43 is_stmt 0               ; extr.c:75:43
	cmp	w8, #1
	csel	w8, w11, w9, hi
	cset	w11, hi
	str	w11, [sp, #100]                 ; 4-byte Folded Spill
	b	LBB0_28
Ltmp145:
LBB0_63:
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst <- $x16
	;DEBUG_VALUE: emulate_AMX_EXTRX:dst_offset <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRX:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_EXTRX:store_enable <- -1
	;DEBUG_VALUE: emulate_AMX_EXTRX:stride <- 0
	;DEBUG_VALUE: emulate_AMX_EXTRX:operand <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRX:state <- $x0
	;DEBUG_VALUE: emulate_AMX_EXTRX:xybytes <- 2
	.loc	4 76 35 is_stmt 1               ; extr.c:76:35
	ldr	w8, [x10]
	mov	w9, #2
	mov	w11, #4
	cmp	w8, #1
	csel	w8, w11, w9, hi
	cset	w11, hi
	lsl	w11, w11, #1
	str	w11, [sp, #100]                 ; 4-byte Folded Spill
	b	LBB0_28
Ltmp146:
LBB0_64:
	.loc	4 0 35 is_stmt 0                ; extr.c:0:35
	bl	___stack_chk_fail
Ltmp147:
	.loh AdrpLdrGotLdr	Lloh0, Lloh1, Lloh2
	.loh AdrpAdd	Lloh3, Lloh4
	.loh AdrpLdrGot	Lloh5, Lloh6
	.loh AdrpAdd	Lloh7, Lloh8
	.loh AdrpLdrGotLdr	Lloh9, Lloh10, Lloh11
	.loh AdrpAdd	Lloh12, Lloh13
Lfunc_end0:
	.cfi_endproc
	.p2align	2
lJTI0_0:
	.long	LBB0_28-Ltmp23
	.long	LBB0_20-Ltmp23
	.long	LBB0_20-Ltmp23
	.long	LBB0_20-Ltmp23
	.long	LBB0_20-Ltmp23
	.long	LBB0_20-Ltmp23
	.long	LBB0_20-Ltmp23
	.long	LBB0_20-Ltmp23
	.long	LBB0_9-Ltmp23
	.long	LBB0_21-Ltmp23
	.long	LBB0_22-Ltmp23
	.long	LBB0_23-Ltmp23
	.long	LBB0_20-Ltmp23
	.long	LBB0_24-Ltmp23
	.long	LBB0_20-Ltmp23
	.long	LBB0_20-Ltmp23
	.long	LBB0_20-Ltmp23
	.long	LBB0_26-Ltmp23
	.long	LBB0_20-Ltmp23
	.long	LBB0_20-Ltmp23
	.long	LBB0_20-Ltmp23
	.long	LBB0_20-Ltmp23
	.long	LBB0_20-Ltmp23
	.long	LBB0_20-Ltmp23
	.long	LBB0_9-Ltmp23
	.long	LBB0_62-Ltmp23
	.long	LBB0_63-Ltmp23
	.p2align	2
lJTI0_1:
	.long	LBB0_30-Ltmp62
	.long	LBB0_35-Ltmp62
	.long	LBB0_36-Ltmp62
	.long	LBB0_38-Ltmp62
	.long	LBB0_37-Ltmp62
	.long	LBB0_39-Ltmp62
	.p2align	2
lJTI0_2:
	.long	LBB0_3-Ltmp10
	.long	LBB0_18-Ltmp10
	.long	LBB0_13-Ltmp10
	.long	LBB0_15-Ltmp10
	.file	6 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types" "_int64_t.h"
                                        ; -- End function
	.globl	_emulate_AMX_EXTRY              ; -- Begin function emulate_AMX_EXTRY
	.p2align	2
_emulate_AMX_EXTRY:                     ; @emulate_AMX_EXTRY
Lfunc_begin1:
	.loc	4 116 0 is_stmt 1               ; extr.c:116:0
	.cfi_startproc
; %bb.0:
	;DEBUG_VALUE: emulate_AMX_EXTRY:state <- $x0
	;DEBUG_VALUE: emulate_AMX_EXTRY:operand <- $x1
	sub	sp, sp, #288
	.cfi_def_cfa_offset 288
	stp	x28, x27, [sp, #192]            ; 16-byte Folded Spill
	stp	x26, x25, [sp, #208]            ; 16-byte Folded Spill
	stp	x24, x23, [sp, #224]            ; 16-byte Folded Spill
	stp	x22, x21, [sp, #240]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #256]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #272]            ; 16-byte Folded Spill
	add	x29, sp, #272
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
Lloh14:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh15:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh16:
	ldr	x8, [x8]
	stur	x8, [x29, #-96]
Ltmp148:
	;DEBUG_VALUE: emulate_AMX_EXTRY:stride <- 0
	;DEBUG_VALUE: emulate_AMX_EXTRY:store_enable <- -1
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_col <- undef
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst_offset <- $x1
	.loc	4 0 0 is_stmt 0                 ; extr.c:0:0
	add	x16, x0, #512
Ltmp149:
	.loc	4 126 9 prologue_end is_stmt 1  ; extr.c:126:9
	tbnz	w1, #26, LBB1_7
Ltmp150:
; %bb.1:
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst_offset <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_EXTRY:store_enable <- -1
	;DEBUG_VALUE: emulate_AMX_EXTRY:stride <- 0
	;DEBUG_VALUE: emulate_AMX_EXTRY:operand <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRY:state <- $x0
	.loc	4 146 16                        ; extr.c:146:16
	tbnz	w1, #27, LBB1_10
Ltmp151:
; %bb.2:
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst_offset <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_EXTRY:store_enable <- -1
	;DEBUG_VALUE: emulate_AMX_EXTRY:stride <- 0
	;DEBUG_VALUE: emulate_AMX_EXTRY:operand <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRY:state <- $x0
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst <- $x16
	.loc	4 152 21                        ; extr.c:152:21
	ubfx	w8, w1, #28, #2
	mov	w9, #8
	lsr	w9, w9, w8
Ltmp152:
	;DEBUG_VALUE: emulate_AMX_EXTRY:xybytes <- $w9
	.loc	4 0 21 is_stmt 0                ; extr.c:0:21
	mov	x10, #6148914691236517205
	mov	w11, #2
	.loc	4 153 13 is_stmt 1              ; extr.c:153:13
	cmp	w8, #3
	csel	w8, w11, w9, eq
Ltmp153:
	;DEBUG_VALUE: emulate_AMX_EXTRY:xybytes <- $w8
	;DEBUG_VALUE: emulate_AMX_EXTRY:store_enable <- undef
	csinv	x9, x10, xzr, eq
	.loc	4 157 49                        ; extr.c:157:49
	lsr	x10, x1, #32
Ltmp154:
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: parse_writemask:val <- $w10
	;DEBUG_VALUE: parse_writemask:g <- $w8
	.loc	5 66 21                         ; ./emulate.h:66:21
	lsr	x11, x1, #37
	.loc	5 67 9                          ; ./emulate.h:67:9
	ands	w11, w11, #0x3
Ltmp155:
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	csinc	w12, w8, wzr, ne
	mul	w12, w12, w10
Ltmp156:
	;DEBUG_VALUE: parse_writemask:val <- $w12
	.loc	5 68 9                          ; ./emulate.h:68:9
	and	w10, w12, #0x3f
Ltmp157:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:val <- $w10
	.loc	5 0 9 is_stmt 0                 ; ./emulate.h:0:9
Lloh17:
	adrp	x13, lJTI1_2@PAGE
Lloh18:
	add	x13, x13, lJTI1_2@PAGEOFF
Ltmp158:
	adr	x14, Ltmp158
	ldrsw	x15, [x13, x11, lsl #2]
	add	x14, x14, x15
	br	x14
Ltmp159:
LBB1_3:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:g <- $w8
	;DEBUG_VALUE: parse_writemask:val <- $w10
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_EXTRY:xybytes <- $w8
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst <- $x16
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst_offset <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_EXTRY:stride <- 0
	;DEBUG_VALUE: emulate_AMX_EXTRY:operand <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRY:state <- $x0
	.loc	5 72 22 is_stmt 1               ; ./emulate.h:72:22
	sub	w13, w10, #1
	mov	x11, #-1
Ltmp160:
	cmp	w13, #1
	b.hi	LBB1_6
Ltmp161:
; %bb.4:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:g <- $w8
	;DEBUG_VALUE: parse_writemask:val <- $w10
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_EXTRY:xybytes <- $w8
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst <- $x16
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst_offset <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_EXTRY:stride <- 0
	;DEBUG_VALUE: emulate_AMX_EXTRY:operand <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRY:state <- $x0
	.loc	5 74 25                         ; ./emulate.h:74:25
	lsl	x11, x11, x8
	.loc	5 74 19 is_stmt 0               ; ./emulate.h:74:19
	mvn	x11, x11
	.loc	5 74 45                         ; ./emulate.h:74:45
	sbfx	w12, w12, #0, #1
	.loc	5 74 37                         ; ./emulate.h:74:37
	and	w12, w12, w8
	.loc	5 74 31                         ; ./emulate.h:74:31
	lsl	x11, x11, x12
Ltmp162:
	;DEBUG_VALUE: parse_writemask:all <- $x11
	;DEBUG_VALUE: parse_writemask:g <- [DW_OP_constu 1, DW_OP_shl, DW_OP_stack_value] $w8
	.loc	5 0 31                          ; ./emulate.h:0:31
	mov	x12, x8
Ltmp163:
LBB1_5:                                 ; =>This Inner Loop Header: Depth=1
	;DEBUG_VALUE: parse_writemask:all <- $x11
	;DEBUG_VALUE: parse_writemask:val <- $w10
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_EXTRY:xybytes <- $w8
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst <- $x16
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst_offset <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_EXTRY:stride <- 0
	;DEBUG_VALUE: emulate_AMX_EXTRY:operand <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRY:state <- $x0
	.loc	5 75 23 is_stmt 1               ; ./emulate.h:75:23
	lsl	w13, w12, #1
	;DEBUG_VALUE: parse_writemask:all <- $x11
Ltmp164:
	.loc	5 76 28                         ; ./emulate.h:76:28
	lsl	x14, x11, x13
	.loc	5 76 21 is_stmt 0               ; ./emulate.h:76:21
	orr	x11, x14, x11
Ltmp165:
	;DEBUG_VALUE: parse_writemask:all <- $x11
	;DEBUG_VALUE: parse_writemask:g <- [DW_OP_constu 1, DW_OP_shl, DW_OP_stack_value] $w13
	.loc	5 75 13 is_stmt 1               ; ./emulate.h:75:13
	cmp	w12, #16
	mov	x12, x13
	b.lo	LBB1_5
Ltmp166:
LBB1_6:
	;DEBUG_VALUE: parse_writemask:val <- $w10
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_EXTRY:xybytes <- $w8
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst <- $x16
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst_offset <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_EXTRY:stride <- 0
	;DEBUG_VALUE: emulate_AMX_EXTRY:operand <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRY:state <- $x0
	;DEBUG_VALUE: parse_writemask:all <- $x11
	.loc	5 83 16                         ; ./emulate.h:83:16
	cmp	w10, #3
	csel	x11, x11, xzr, lo
Ltmp167:
	.loc	5 0 16 is_stmt 0                ; ./emulate.h:0:16
	b	LBB1_19
Ltmp168:
LBB1_7:
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst_offset <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_EXTRY:store_enable <- -1
	;DEBUG_VALUE: emulate_AMX_EXTRY:stride <- 0
	;DEBUG_VALUE: emulate_AMX_EXTRY:operand <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRY:state <- $x0
	.loc	4 127 15 is_stmt 1              ; extr.c:127:15
	tst	x1, #0x400
	csel	x16, x0, x16, eq
Ltmp169:
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst <- $x16
	.loc	4 128 34                        ; extr.c:128:34
	lsr	x8, x1, #59
	and	x9, x8, #0x10
	.loc	4 128 40 is_stmt 0              ; extr.c:128:40
	bfxil	x9, x1, #11, #4
Lloh19:
	adrp	x10, _AMX_VER@GOTPAGE
Lloh20:
	ldr	x10, [x10, _AMX_VER@GOTPAGEOFF]
	.loc	4 128 9                         ; extr.c:128:9
	cmp	x9, #26
	b.hi	LBB1_20
Ltmp170:
; %bb.8:
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst <- $x16
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst_offset <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_EXTRY:store_enable <- -1
	;DEBUG_VALUE: emulate_AMX_EXTRY:stride <- 0
	;DEBUG_VALUE: emulate_AMX_EXTRY:operand <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRY:state <- $x0
	.loc	4 0 9                           ; extr.c:0:9
	str	wzr, [sp, #100]                 ; 4-byte Folded Spill
	mov	w8, #1
Lloh21:
	adrp	x11, lJTI1_0@PAGE
Lloh22:
	add	x11, x11, lJTI1_0@PAGEOFF
Ltmp171:
	adr	x12, Ltmp171
	ldrsw	x13, [x11, x9, lsl #2]
	add	x12, x12, x13
	mov	x9, x8
	br	x12
Ltmp172:
LBB1_9:
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst <- $x16
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst_offset <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_EXTRY:store_enable <- -1
	;DEBUG_VALUE: emulate_AMX_EXTRY:stride <- 0
	;DEBUG_VALUE: emulate_AMX_EXTRY:operand <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRY:state <- $x0
	str	wzr, [sp, #100]                 ; 4-byte Folded Spill
	mov	w8, #4
Ltmp173:
	;DEBUG_VALUE: emulate_AMX_EXTRY:zbytes <- 4
	;DEBUG_VALUE: emulate_AMX_EXTRY:xybytes <- 4
	b	LBB1_27
Ltmp174:
LBB1_10:
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst_offset <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_EXTRY:store_enable <- -1
	;DEBUG_VALUE: emulate_AMX_EXTRY:stride <- 0
	;DEBUG_VALUE: emulate_AMX_EXTRY:operand <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRY:state <- $x0
	.loc	4 147 9 is_stmt 1               ; extr.c:147:9
	ubfx	x8, x1, #6, #3
	add	x8, x16, x8, lsl #6
	ubfx	x9, x1, #20, #3
	add	x9, x0, x9, lsl #6
	ldp	q0, q1, [x9]
	stp	q0, q1, [x8]
	ldp	q0, q1, [x9, #32]
	stp	q0, q1, [x8, #32]
Ltmp175:
LBB1_11:
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst_offset <- $x1
	.loc	4 0 9 is_stmt 0                 ; extr.c:0:9
	ldur	x8, [x29, #-96]
Lloh23:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh24:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh25:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB1_63
Ltmp176:
; %bb.12:
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst_offset <- $x1
	.loc	4 175 1 is_stmt 1               ; extr.c:175:1
	ldp	x29, x30, [sp, #272]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #256]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #240]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #224]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #208]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #192]            ; 16-byte Folded Reload
	add	sp, sp, #288
	ret
Ltmp177:
LBB1_13:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:g <- $w8
	;DEBUG_VALUE: parse_writemask:val <- $w10
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_EXTRY:xybytes <- $w8
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst <- $x16
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst_offset <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_EXTRY:stride <- 0
	;DEBUG_VALUE: emulate_AMX_EXTRY:operand <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRY:state <- $x0
	.loc	4 0 1 is_stmt 0                 ; extr.c:0:1
	mov	x11, #-1
Ltmp178:
	.loc	5 88 13 is_stmt 1               ; ./emulate.h:88:13
	cbz	w10, LBB1_19
Ltmp179:
; %bb.14:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:g <- $w8
	;DEBUG_VALUE: parse_writemask:val <- $w10
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_EXTRY:xybytes <- $w8
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst <- $x16
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst_offset <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_EXTRY:stride <- 0
	;DEBUG_VALUE: emulate_AMX_EXTRY:operand <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRY:state <- $x0
	.loc	5 91 22                         ; ./emulate.h:91:22
	lsl	x10, x11, x10
Ltmp180:
	.loc	5 0 22 is_stmt 0                ; ./emulate.h:0:22
	b	LBB1_17
Ltmp181:
LBB1_15:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:g <- $w8
	;DEBUG_VALUE: parse_writemask:val <- $w10
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_EXTRY:xybytes <- $w8
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst <- $x16
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst_offset <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_EXTRY:stride <- 0
	;DEBUG_VALUE: emulate_AMX_EXTRY:operand <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRY:state <- $x0
	mov	x11, #-1
Ltmp182:
	.loc	5 93 13 is_stmt 1               ; ./emulate.h:93:13
	cbz	w10, LBB1_19
Ltmp183:
; %bb.16:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:g <- $w8
	;DEBUG_VALUE: parse_writemask:val <- $w10
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_EXTRY:xybytes <- $w8
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst <- $x16
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst_offset <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_EXTRY:stride <- 0
	;DEBUG_VALUE: emulate_AMX_EXTRY:operand <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRY:state <- $x0
	.loc	5 96 22                         ; ./emulate.h:96:22
	lsr	x10, x11, x10
Ltmp184:
LBB1_17:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:g <- $w8
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_EXTRY:xybytes <- $w8
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst <- $x16
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst_offset <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_EXTRY:stride <- 0
	;DEBUG_VALUE: emulate_AMX_EXTRY:operand <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRY:state <- $x0
	.loc	5 0 0 is_stmt 0                 ; ./emulate.h:0:0
	mvn	x11, x10
	b	LBB1_19
Ltmp185:
LBB1_18:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:g <- $w8
	;DEBUG_VALUE: parse_writemask:val <- $w10
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_EXTRY:xybytes <- $w8
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst <- $x16
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst_offset <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_EXTRY:stride <- 0
	;DEBUG_VALUE: emulate_AMX_EXTRY:operand <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRY:state <- $x0
	mov	x11, #-1
Ltmp186:
	.loc	5 86 23 is_stmt 1               ; ./emulate.h:86:23
	lsl	x11, x11, x8
	.loc	5 86 17 is_stmt 0               ; ./emulate.h:86:17
	mvn	x11, x11
	.loc	5 86 30                         ; ./emulate.h:86:30
	lsl	x11, x11, x10
Ltmp187:
LBB1_19:
	;DEBUG_VALUE: emulate_AMX_EXTRY:xybytes <- $w8
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst <- $x16
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst_offset <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_EXTRY:stride <- 0
	;DEBUG_VALUE: emulate_AMX_EXTRY:operand <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRY:state <- $x0
	.loc	5 0 30                          ; ./emulate.h:0:30
	str	wzr, [sp, #100]                 ; 4-byte Folded Spill
	.loc	4 157 22 is_stmt 1              ; extr.c:157:22
	and	x17, x11, x9
Ltmp188:
	;DEBUG_VALUE: emulate_AMX_EXTRY:store_enable <- $x17
	.loc	4 0 22 is_stmt 0                ; extr.c:0:22
	mov	w9, #64
Ltmp189:
	;DEBUG_VALUE: emulate_AMX_EXTRY:zbytes <- $w8
	str	x9, [sp, #32]                   ; 8-byte Folded Spill
	mov	x9, x8
	str	x1, [sp, #88]                   ; 8-byte Folded Spill
	b	LBB1_41
Ltmp190:
LBB1_20:
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst <- $x16
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst_offset <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_EXTRY:store_enable <- -1
	;DEBUG_VALUE: emulate_AMX_EXTRY:stride <- 0
	;DEBUG_VALUE: emulate_AMX_EXTRY:operand <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRY:state <- $x0
	str	wzr, [sp, #100]                 ; 4-byte Folded Spill
	mov	w8, #2
Ltmp191:
	;DEBUG_VALUE: emulate_AMX_EXTRY:zbytes <- 2
	;DEBUG_VALUE: emulate_AMX_EXTRY:xybytes <- 2
	b	LBB1_27
Ltmp192:
LBB1_21:
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst <- $x16
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst_offset <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_EXTRY:store_enable <- -1
	;DEBUG_VALUE: emulate_AMX_EXTRY:stride <- 0
	;DEBUG_VALUE: emulate_AMX_EXTRY:operand <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRY:state <- $x0
	mov	w9, #2
	mov	w8, #4
	mov	w11, #1
Ltmp193:
	;DEBUG_VALUE: emulate_AMX_EXTRY:zbytes <- 4
	;DEBUG_VALUE: emulate_AMX_EXTRY:xybytes <- 2
	;DEBUG_VALUE: emulate_AMX_EXTRY:stride <- 1
	str	w11, [sp, #100]                 ; 4-byte Folded Spill
	b	LBB1_28
Ltmp194:
LBB1_22:
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst <- $x16
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst_offset <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_EXTRY:store_enable <- -1
	;DEBUG_VALUE: emulate_AMX_EXTRY:stride <- 0
	;DEBUG_VALUE: emulate_AMX_EXTRY:operand <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRY:state <- $x0
	mov	w8, #4
	mov	w9, #2
Ltmp195:
	;DEBUG_VALUE: emulate_AMX_EXTRY:zbytes <- 4
	;DEBUG_VALUE: emulate_AMX_EXTRY:xybytes <- 2
	;DEBUG_VALUE: emulate_AMX_EXTRY:stride <- 2
	str	w9, [sp, #100]                  ; 4-byte Folded Spill
	mov	w9, #2
	b	LBB1_28
Ltmp196:
LBB1_23:
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst <- $x16
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst_offset <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_EXTRY:store_enable <- -1
	;DEBUG_VALUE: emulate_AMX_EXTRY:stride <- 0
	;DEBUG_VALUE: emulate_AMX_EXTRY:operand <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRY:state <- $x0
	mov	w8, #4
	b	LBB1_25
Ltmp197:
LBB1_24:
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst <- $x16
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst_offset <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_EXTRY:store_enable <- -1
	;DEBUG_VALUE: emulate_AMX_EXTRY:stride <- 0
	;DEBUG_VALUE: emulate_AMX_EXTRY:operand <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRY:state <- $x0
	mov	w8, #2
Ltmp198:
LBB1_25:
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst <- $x16
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst_offset <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_EXTRY:store_enable <- -1
	;DEBUG_VALUE: emulate_AMX_EXTRY:stride <- 0
	;DEBUG_VALUE: emulate_AMX_EXTRY:operand <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRY:state <- $x0
	mov	w9, #1
Ltmp199:
	;DEBUG_VALUE: emulate_AMX_EXTRY:zbytes <- 4
	;DEBUG_VALUE: emulate_AMX_EXTRY:xybytes <- 1
	;DEBUG_VALUE: emulate_AMX_EXTRY:stride <- 1
	str	w9, [sp, #100]                  ; 4-byte Folded Spill
	mov	w9, #1
	b	LBB1_28
Ltmp200:
LBB1_26:
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst <- $x16
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst_offset <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_EXTRY:store_enable <- -1
	;DEBUG_VALUE: emulate_AMX_EXTRY:stride <- 0
	;DEBUG_VALUE: emulate_AMX_EXTRY:operand <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRY:state <- $x0
	str	wzr, [sp, #100]                 ; 4-byte Folded Spill
	mov	w8, #8
Ltmp201:
	;DEBUG_VALUE: emulate_AMX_EXTRY:zbytes <- 8
	;DEBUG_VALUE: emulate_AMX_EXTRY:xybytes <- 8
LBB1_27:
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst <- $x16
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst_offset <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_EXTRY:store_enable <- -1
	;DEBUG_VALUE: emulate_AMX_EXTRY:stride <- 0
	;DEBUG_VALUE: emulate_AMX_EXTRY:operand <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRY:state <- $x0
	mov	x9, x8
Ltmp202:
LBB1_28:
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst <- $x16
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst_offset <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_EXTRY:store_enable <- -1
	;DEBUG_VALUE: emulate_AMX_EXTRY:operand <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRY:state <- $x0
	;DEBUG_VALUE: emulate_AMX_EXTRY:stride <- [DW_OP_plus_uconst 100] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:xybytes <- $w9
	;DEBUG_VALUE: emulate_AMX_EXTRY:zbytes <- $w8
	.loc	4 141 14 is_stmt 1              ; extr.c:141:14
	ldr	w10, [x10]
	tst	x1, #0x80000000
	.loc	4 141 37 is_stmt 0              ; extr.c:141:37
	ccmp	w10, #2, #0, ne
	cset	w10, lo
	and	x11, x1, #0xfffffe00ffffffff
	tst	x1, #0x2000000
	mov	w12, #16
	mov	w13, #32
	csel	x12, x13, x12, eq
	cmp	w10, #0
	mov	w10, #64
	csel	x10, x10, x12, ne
Ltmp203:
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_step <- $x10
	.loc	4 0 37                          ; extr.c:0:37
	str	x10, [sp, #32]                  ; 8-byte Folded Spill
Ltmp204:
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_step <- [DW_OP_plus_uconst 32] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_step <- [DW_OP_plus_uconst 32] [$sp+0]
	.loc	4 141 37                        ; extr.c:141:37
	csel	x12, x1, x11, ne
Ltmp205:
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: parse_writemask:g <- $w9
	;DEBUG_VALUE: parse_writemask:val <- undef
	;DEBUG_VALUE: emulate_AMX_EXTRY:operand <- $x12
	.loc	5 66 21 is_stmt 1               ; ./emulate.h:66:21
	lsr	x10, x12, #38
	.loc	5 67 9                          ; ./emulate.h:67:9
	ands	w11, w10, #0x7
Ltmp206:
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	csinc	w10, w9, wzr, ne
Ltmp207:
	;DEBUG_VALUE: parse_writemask:all <- -1
	.loc	5 70 5                          ; ./emulate.h:70:5
	cmp	w11, #5
	str	x12, [sp, #88]                  ; 8-byte Folded Spill
	b.hi	LBB1_34
Ltmp208:
; %bb.29:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: emulate_AMX_EXTRY:operand <- $x12
	;DEBUG_VALUE: parse_writemask:g <- $w9
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_step <- [DW_OP_plus_uconst 32] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:zbytes <- $w8
	;DEBUG_VALUE: emulate_AMX_EXTRY:xybytes <- $w9
	;DEBUG_VALUE: emulate_AMX_EXTRY:stride <- [DW_OP_plus_uconst 100] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst <- $x16
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst_offset <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRY:store_enable <- -1
	;DEBUG_VALUE: emulate_AMX_EXTRY:state <- $x0
	.loc	5 0 5 is_stmt 0                 ; ./emulate.h:0:5
	lsr	x12, x12, #32
Ltmp209:
	mul	w12, w10, w12
	and	w10, w12, #0x3f
Ltmp210:
	;DEBUG_VALUE: parse_writemask:val <- $w10
Lloh26:
	adrp	x13, lJTI1_1@PAGE
Lloh27:
	add	x13, x13, lJTI1_1@PAGEOFF
Ltmp211:
	adr	x14, Ltmp211
	ldrsw	x15, [x13, x11, lsl #2]
	add	x14, x14, x15
	br	x14
Ltmp212:
LBB1_30:
	;DEBUG_VALUE: parse_writemask:val <- $w10
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:g <- $w9
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_step <- [DW_OP_plus_uconst 32] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:zbytes <- $w8
	;DEBUG_VALUE: emulate_AMX_EXTRY:xybytes <- $w9
	;DEBUG_VALUE: emulate_AMX_EXTRY:stride <- [DW_OP_plus_uconst 100] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst <- $x16
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst_offset <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRY:store_enable <- -1
	;DEBUG_VALUE: emulate_AMX_EXTRY:state <- $x0
	.loc	5 72 22 is_stmt 1               ; ./emulate.h:72:22
	sub	w13, w10, #1
	mov	x11, #-1
Ltmp213:
	cmp	w13, #1
	b.hi	LBB1_33
Ltmp214:
; %bb.31:
	;DEBUG_VALUE: parse_writemask:val <- $w10
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:g <- $w9
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_step <- [DW_OP_plus_uconst 32] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:zbytes <- $w8
	;DEBUG_VALUE: emulate_AMX_EXTRY:xybytes <- $w9
	;DEBUG_VALUE: emulate_AMX_EXTRY:stride <- [DW_OP_plus_uconst 100] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst <- $x16
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst_offset <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRY:store_enable <- -1
	;DEBUG_VALUE: emulate_AMX_EXTRY:state <- $x0
	.loc	5 74 25                         ; ./emulate.h:74:25
	lsl	x11, x11, x9
	.loc	5 74 19 is_stmt 0               ; ./emulate.h:74:19
	mvn	x11, x11
	.loc	5 74 45                         ; ./emulate.h:74:45
	sbfx	w12, w12, #0, #1
	.loc	5 74 37                         ; ./emulate.h:74:37
	and	w12, w12, w9
	.loc	5 74 31                         ; ./emulate.h:74:31
	lsl	x11, x11, x12
Ltmp215:
	;DEBUG_VALUE: parse_writemask:all <- $x11
	;DEBUG_VALUE: parse_writemask:g <- [DW_OP_constu 1, DW_OP_shl, DW_OP_stack_value] $w9
	.loc	5 0 31                          ; ./emulate.h:0:31
	mov	x12, x9
Ltmp216:
LBB1_32:                                ; =>This Inner Loop Header: Depth=1
	;DEBUG_VALUE: parse_writemask:all <- $x11
	;DEBUG_VALUE: parse_writemask:val <- $w10
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_step <- [DW_OP_plus_uconst 32] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:zbytes <- $w8
	;DEBUG_VALUE: emulate_AMX_EXTRY:xybytes <- $w9
	;DEBUG_VALUE: emulate_AMX_EXTRY:stride <- [DW_OP_plus_uconst 100] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst <- $x16
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst_offset <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRY:store_enable <- -1
	;DEBUG_VALUE: emulate_AMX_EXTRY:state <- $x0
	.loc	5 75 23 is_stmt 1               ; ./emulate.h:75:23
	lsl	w13, w12, #1
	;DEBUG_VALUE: parse_writemask:all <- $x11
Ltmp217:
	.loc	5 76 28                         ; ./emulate.h:76:28
	lsl	x14, x11, x13
	.loc	5 76 21 is_stmt 0               ; ./emulate.h:76:21
	orr	x11, x14, x11
Ltmp218:
	;DEBUG_VALUE: parse_writemask:all <- $x11
	;DEBUG_VALUE: parse_writemask:g <- [DW_OP_constu 1, DW_OP_shl, DW_OP_stack_value] $w13
	.loc	5 75 13 is_stmt 1               ; ./emulate.h:75:13
	cmp	w12, #16
	mov	x12, x13
	b.lo	LBB1_32
Ltmp219:
LBB1_33:
	;DEBUG_VALUE: parse_writemask:val <- $w10
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_step <- [DW_OP_plus_uconst 32] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:zbytes <- $w8
	;DEBUG_VALUE: emulate_AMX_EXTRY:xybytes <- $w9
	;DEBUG_VALUE: emulate_AMX_EXTRY:stride <- [DW_OP_plus_uconst 100] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst <- $x16
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst_offset <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRY:store_enable <- -1
	;DEBUG_VALUE: emulate_AMX_EXTRY:state <- $x0
	;DEBUG_VALUE: parse_writemask:all <- $x11
	.loc	5 83 16                         ; ./emulate.h:83:16
	cmp	w10, #6
	csel	x17, x11, xzr, lo
	b	LBB1_41
Ltmp220:
LBB1_34:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: emulate_AMX_EXTRY:operand <- $x12
	;DEBUG_VALUE: parse_writemask:g <- $w9
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_step <- [DW_OP_plus_uconst 32] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:zbytes <- $w8
	;DEBUG_VALUE: emulate_AMX_EXTRY:xybytes <- $w9
	;DEBUG_VALUE: emulate_AMX_EXTRY:stride <- [DW_OP_plus_uconst 100] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst <- $x16
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst_offset <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRY:store_enable <- -1
	;DEBUG_VALUE: emulate_AMX_EXTRY:state <- $x0
	.loc	5 0 16 is_stmt 0                ; ./emulate.h:0:16
	mov	x17, #0
	b	LBB1_41
Ltmp221:
LBB1_35:
	;DEBUG_VALUE: parse_writemask:val <- $w10
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:g <- $w9
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_step <- [DW_OP_plus_uconst 32] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:zbytes <- $w8
	;DEBUG_VALUE: emulate_AMX_EXTRY:xybytes <- $w9
	;DEBUG_VALUE: emulate_AMX_EXTRY:stride <- [DW_OP_plus_uconst 100] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst <- $x16
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst_offset <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRY:store_enable <- -1
	;DEBUG_VALUE: emulate_AMX_EXTRY:state <- $x0
	mov	x11, #-1
Ltmp222:
	.loc	5 86 23 is_stmt 1               ; ./emulate.h:86:23
	lsl	x11, x11, x9
	.loc	5 86 17 is_stmt 0               ; ./emulate.h:86:17
	mvn	x11, x11
	.loc	5 86 30                         ; ./emulate.h:86:30
	lsl	x17, x11, x10
	b	LBB1_41
Ltmp223:
LBB1_36:
	;DEBUG_VALUE: parse_writemask:val <- $w10
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:g <- $w9
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_step <- [DW_OP_plus_uconst 32] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:zbytes <- $w8
	;DEBUG_VALUE: emulate_AMX_EXTRY:xybytes <- $w9
	;DEBUG_VALUE: emulate_AMX_EXTRY:stride <- [DW_OP_plus_uconst 100] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst <- $x16
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst_offset <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRY:store_enable <- -1
	;DEBUG_VALUE: emulate_AMX_EXTRY:state <- $x0
	.loc	5 88 13 is_stmt 1               ; ./emulate.h:88:13
	cbz	w10, LBB1_60
Ltmp224:
LBB1_37:
	;DEBUG_VALUE: parse_writemask:val <- $w10
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:g <- $w9
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_step <- [DW_OP_plus_uconst 32] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:zbytes <- $w8
	;DEBUG_VALUE: emulate_AMX_EXTRY:xybytes <- $w9
	;DEBUG_VALUE: emulate_AMX_EXTRY:stride <- [DW_OP_plus_uconst 100] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst <- $x16
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst_offset <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRY:store_enable <- -1
	;DEBUG_VALUE: emulate_AMX_EXTRY:state <- $x0
	.loc	5 0 13 is_stmt 0                ; ./emulate.h:0:13
	mov	x11, #-1
Ltmp225:
	.loc	5 91 22 is_stmt 1               ; ./emulate.h:91:22
	lsl	x10, x11, x10
Ltmp226:
	.loc	5 0 22 is_stmt 0                ; ./emulate.h:0:22
	b	LBB1_40
Ltmp227:
LBB1_38:
	;DEBUG_VALUE: parse_writemask:val <- $w10
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:g <- $w9
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_step <- [DW_OP_plus_uconst 32] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:zbytes <- $w8
	;DEBUG_VALUE: emulate_AMX_EXTRY:xybytes <- $w9
	;DEBUG_VALUE: emulate_AMX_EXTRY:stride <- [DW_OP_plus_uconst 100] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst <- $x16
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst_offset <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRY:store_enable <- -1
	;DEBUG_VALUE: emulate_AMX_EXTRY:state <- $x0
	.loc	5 93 13 is_stmt 1               ; ./emulate.h:93:13
	cbz	w10, LBB1_60
Ltmp228:
LBB1_39:
	;DEBUG_VALUE: parse_writemask:val <- $w10
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:g <- $w9
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_step <- [DW_OP_plus_uconst 32] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:zbytes <- $w8
	;DEBUG_VALUE: emulate_AMX_EXTRY:xybytes <- $w9
	;DEBUG_VALUE: emulate_AMX_EXTRY:stride <- [DW_OP_plus_uconst 100] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst <- $x16
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst_offset <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRY:store_enable <- -1
	;DEBUG_VALUE: emulate_AMX_EXTRY:state <- $x0
	.loc	5 0 13 is_stmt 0                ; ./emulate.h:0:13
	mov	x11, #-1
Ltmp229:
	.loc	5 96 22 is_stmt 1               ; ./emulate.h:96:22
	lsr	x10, x11, x10
Ltmp230:
LBB1_40:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:g <- $w9
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_step <- [DW_OP_plus_uconst 32] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:zbytes <- $w8
	;DEBUG_VALUE: emulate_AMX_EXTRY:xybytes <- $w9
	;DEBUG_VALUE: emulate_AMX_EXTRY:stride <- [DW_OP_plus_uconst 100] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst <- $x16
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst_offset <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRY:store_enable <- -1
	;DEBUG_VALUE: emulate_AMX_EXTRY:state <- $x0
	.loc	5 0 0 is_stmt 0                 ; ./emulate.h:0:0
	mvn	x17, x10
Ltmp231:
LBB1_41:
	;DEBUG_VALUE: emulate_AMX_EXTRY:zbytes <- $w8
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst <- $x16
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst_offset <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRY:state <- $x0
	lsr	x10, x1, #20
	;DEBUG_VALUE: emulate_AMX_EXTRY:zbytes <- $w8
Ltmp232:
	;DEBUG_VALUE: emulate_AMX_EXTRY:xybytes <- $w9
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst <- $x16
	;DEBUG_VALUE: emulate_AMX_EXTRY:stride <- [DW_OP_plus_uconst 100] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:store_enable <- $x17
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_step <- [DW_OP_plus_uconst 32] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_col <- $x10
	;DEBUG_VALUE: emulate_AMX_EXTRY:operand <- [DW_OP_plus_uconst 88] [$sp+0]
	ldr	x15, [sp, #88]                  ; 8-byte Folded Reload
	lsr	x11, x15, #58
	ands	w12, w11, #0x1f
	sub	w12, w12, #1
	ands	w11, w11, #0x1f
	str	x11, [sp, #80]                  ; 8-byte Folded Spill
	.loc	4 161 33 is_stmt 1              ; extr.c:161:33
	lsl	x11, x15, #6
	and	x13, x15, #0x40000000000000
	mov	w14, #1
	lsl	w12, w14, w12
	ccmp	x13, #0, #4, ne
	mov	w13, #64
	.loc	4 161 24 is_stmt 0              ; extr.c:161:24
	sub	w13, w13, w8, lsl #3
	csel	x12, xzr, x12, eq
Ltmp233:
	;DEBUG_VALUE: emulate_AMX_EXTRY:signext <- undef
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_col <- [DW_OP_LLVM_arg 0, DW_OP_plus_uconst 32, DW_OP_deref, DW_OP_plus_uconst 17592186044415, DW_OP_LLVM_arg 1, DW_OP_and, DW_OP_stack_value] $sp, $x10
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst_offset <- $x1
	.loc	4 0 24                          ; extr.c:0:24
	str	x12, [sp, #72]                  ; 8-byte Folded Spill
	ldr	x12, [sp, #32]                  ; 8-byte Folded Reload
Ltmp234:
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_step <- $x12
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_col <- [DW_OP_LLVM_arg 0, DW_OP_plus_uconst 17592186044415, DW_OP_LLVM_arg 1, DW_OP_and, DW_OP_stack_value] $x12, $x10
	.loc	4 162 26 is_stmt 1              ; extr.c:162:26
	sub	x12, x12, #1
Ltmp235:
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_step <- [DW_OP_plus_uconst 32] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_col <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_and, DW_OP_stack_value] $x12, $x10
	.loc	4 162 16 is_stmt 0              ; extr.c:162:16
	and	x23, x12, x10
Ltmp236:
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_col <- $x23
	.loc	4 0 16                          ; extr.c:0:16
	sub	w20, w8, #1
	neg	w19, w8
	lsl	w10, w9, #3
	and	x25, x13, x11, asr #63
	lsl	x11, x15, #7
	ubfx	x12, x15, #56, #1
	sub	w10, w10, w12
	lsl	x12, x14, x10
	neg	x10, x12
	and	x10, x10, x11, asr #63
	str	x10, [sp, #48]                  ; 8-byte Folded Spill
	sub	x10, x12, #1
	stp	x10, x12, [sp, #56]             ; 16-byte Folded Spill
	and	x10, x15, #0x1ff00000000
	stp	x10, x17, [sp, #8]              ; 16-byte Folded Spill
	mov	w21, w8
	mov	w22, w9
	str	x16, [sp, #24]                  ; 8-byte Folded Spill
Ltmp237:
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst <- [DW_OP_plus_uconst 24] [$sp+0]
	ldr	w28, [sp, #100]                 ; 4-byte Folded Reload
	b	LBB1_43
Ltmp238:
LBB1_42:                                ;   in Loop: Header=BB1_43 Depth=1
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst_offset <- [DW_OP_plus_uconst 40] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst <- [DW_OP_plus_uconst 24] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_col <- $x23
	;DEBUG_VALUE: emulate_AMX_EXTRY:operand <- [DW_OP_plus_uconst 88] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_step <- [DW_OP_plus_uconst 32] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:stride <- [DW_OP_plus_uconst 100] [$sp+0]
	.loc	4 173 20 is_stmt 1              ; extr.c:173:20
	add	x1, x1, #64
Ltmp239:
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst_offset <- $x1
	.loc	4 0 20 is_stmt 0                ; extr.c:0:20
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
Ltmp240:
	.loc	4 162 50 is_stmt 1              ; extr.c:162:50
	add	x23, x23, x8
Ltmp241:
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_col <- $x23
	.loc	4 162 5 is_stmt 0               ; extr.c:162:5
	cmp	x23, #64
	b.hs	LBB1_11
Ltmp242:
LBB1_43:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_46 Depth 2
                                        ;     Child Loop BB1_58 Depth 2
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst <- [DW_OP_plus_uconst 24] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_col <- $x23
	;DEBUG_VALUE: emulate_AMX_EXTRY:operand <- [DW_OP_plus_uconst 88] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_step <- [DW_OP_plus_uconst 32] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:stride <- [DW_OP_plus_uconst 100] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst_offset <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst_offset <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_col <- $x23
	.loc	4 0 5                           ; extr.c:0:5
	str	x1, [sp, #40]                   ; 8-byte Folded Spill
Ltmp243:
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst_offset <- [DW_OP_plus_uconst 40] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst_offset <- [DW_OP_plus_uconst 40] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst_offset <- [DW_OP_plus_uconst 40] [$sp+0]
	mov	w27, #0
	and	x26, x23, x19
	;DEBUG_VALUE: j <- 0
	b	LBB1_46
Ltmp244:
LBB1_44:                                ;   in Loop: Header=BB1_46 Depth=2
	;DEBUG_VALUE: extr_alu:shift <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_constu 58, DW_OP_shr, DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 32 7, DW_OP_constu 31, DW_OP_and, DW_OP_stack_value] $sp
	;DEBUG_VALUE: extr_alu:operand <- [DW_OP_plus_uconst 88] [$sp+0]
	;DEBUG_VALUE: extr_alu:val <- $x8
	;DEBUG_VALUE: val <- $x8
	;DEBUG_VALUE: j <- $w27
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst_offset <- [DW_OP_plus_uconst 40] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst <- [DW_OP_plus_uconst 24] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_col <- $x23
	;DEBUG_VALUE: emulate_AMX_EXTRY:operand <- [DW_OP_plus_uconst 88] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_step <- [DW_OP_plus_uconst 32] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:stride <- [DW_OP_plus_uconst 100] [$sp+0]
	.loc	4 24 13 is_stmt 1               ; extr.c:24:13
	fmov	d0, x8
	; InlineAsm Start
	fcvt	h0, s0
	; InlineAsm End
	fmov	x8, d0
Ltmp245:
	;DEBUG_VALUE: extr_alu:val <- $x8
LBB1_45:                                ;   in Loop: Header=BB1_46 Depth=2
	;DEBUG_VALUE: j <- $w27
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst_offset <- [DW_OP_plus_uconst 40] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst <- [DW_OP_plus_uconst 24] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_col <- $x23
	;DEBUG_VALUE: emulate_AMX_EXTRY:operand <- [DW_OP_plus_uconst 88] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_step <- [DW_OP_plus_uconst 32] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:stride <- [DW_OP_plus_uconst 100] [$sp+0]
	;DEBUG_VALUE: val <- $x8
	.loc	4 167 30                        ; extr.c:167:30
	add	x9, sp, #112
	add	x0, x9, w27, uxtw
	;DEBUG_VALUE: store_int:val <- $x8
Ltmp246:
	;DEBUG_VALUE: store_int:nbytes <- undef
	.loc	4 0 30 is_stmt 0                ; extr.c:0:30
	str	x8, [sp, #104]
Ltmp247:
	;DEBUG_VALUE: store_int:val <- [DW_OP_plus_uconst 104, DW_OP_deref] $sp
	;DEBUG_VALUE: store_int:dst <- $x0
	.loc	5 38 5 is_stmt 1                ; ./emulate.h:38:5
	add	x1, sp, #104
	mov	x2, x22
	bl	_memcpy
Ltmp248:
	.loc	4 163 40                        ; extr.c:163:40
	add	w27, w27, w22
Ltmp249:
	;DEBUG_VALUE: j <- $w27
	.loc	4 163 9 is_stmt 0               ; extr.c:163:9
	cmp	w27, #64
	mov	x0, x24
	b.hs	LBB1_54
Ltmp250:
LBB1_46:                                ;   Parent Loop BB1_43 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst_offset <- [DW_OP_plus_uconst 40] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst <- [DW_OP_plus_uconst 24] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_col <- $x23
	;DEBUG_VALUE: emulate_AMX_EXTRY:operand <- [DW_OP_plus_uconst 88] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_step <- [DW_OP_plus_uconst 32] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:stride <- [DW_OP_plus_uconst 100] [$sp+0]
	;DEBUG_VALUE: j <- $w27
	.loc	4 164 32 is_stmt 1              ; extr.c:164:32
	and	w8, w27, w20
	.loc	4 164 48 is_stmt 0              ; extr.c:164:48
	udiv	w8, w8, w22
Ltmp251:
	;DEBUG_VALUE: zoff <- undef
	.loc	4 165 46 is_stmt 1              ; extr.c:165:46
	and	w9, w27, w19
	madd	w8, w8, w28, w23
	and	x8, x8, x20
	orr	x8, x8, x9
	mov	x24, x0
	.loc	4 165 37 is_stmt 0              ; extr.c:165:37
	add	x8, x0, x8, lsl #6
	add	x8, x8, x26
	add	x1, x8, #1024
Ltmp252:
	;DEBUG_VALUE: load_int:val <- 0
	;DEBUG_VALUE: load_int:signext <- undef
	;DEBUG_VALUE: load_int:nbytes <- undef
	;DEBUG_VALUE: load_int:src <- $x1
	.loc	5 32 13 is_stmt 1               ; ./emulate.h:32:13
	str	xzr, [sp, #104]
Ltmp253:
	;DEBUG_VALUE: load_int:val <- [DW_OP_plus_uconst 104, DW_OP_deref] $sp
	.loc	5 33 5                          ; ./emulate.h:33:5
	add	x0, sp, #104
Ltmp254:
	;DEBUG_VALUE: emulate_AMX_EXTRY:state <- [DW_OP_LLVM_entry_value 1] $x0
	mov	x2, x21
	mov	w3, #8
	bl	___memcpy_chk
Ltmp255:
	.loc	5 34 13                         ; ./emulate.h:34:13
	ldr	x8, [sp, #104]
Ltmp256:
	;DEBUG_VALUE: load_int:val <- $x8
	.loc	5 34 17 is_stmt 0               ; ./emulate.h:34:17
	lsl	x8, x8, x25
Ltmp257:
	.loc	5 34 29                         ; ./emulate.h:34:29
	asr	x8, x8, x25
Ltmp258:
	;DEBUG_VALUE: val <- $x8
	.loc	4 166 17 is_stmt 1              ; extr.c:166:17
	cbz	w28, LBB1_45
Ltmp259:
; %bb.47:                               ;   in Loop: Header=BB1_46 Depth=2
	;DEBUG_VALUE: val <- $x8
	;DEBUG_VALUE: j <- $w27
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst_offset <- [DW_OP_plus_uconst 40] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst <- [DW_OP_plus_uconst 24] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_col <- $x23
	;DEBUG_VALUE: emulate_AMX_EXTRY:operand <- [DW_OP_plus_uconst 88] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_step <- [DW_OP_plus_uconst 32] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:stride <- [DW_OP_plus_uconst 100] [$sp+0]
	;DEBUG_VALUE: extr_alu:val <- $x8
	;DEBUG_VALUE: extr_alu:operand <- [DW_OP_plus_uconst 88] [$sp+0]
	;DEBUG_VALUE: extr_alu:outbits <- [DW_OP_constu 3, DW_OP_shl, DW_OP_stack_value] undef
	;DEBUG_VALUE: extr_alu:shift <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_constu 58, DW_OP_shr, DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 32 7, DW_OP_constu 31, DW_OP_and, DW_OP_stack_value] $sp
	.loc	4 0 17 is_stmt 0                ; extr.c:0:17
	ldr	x9, [sp, #88]                   ; 8-byte Folded Reload
Ltmp260:
	.loc	4 20 9 is_stmt 1                ; extr.c:20:9
	tbnz	x9, #63, LBB1_51
Ltmp261:
; %bb.48:                               ;   in Loop: Header=BB1_46 Depth=2
	;DEBUG_VALUE: extr_alu:shift <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_constu 58, DW_OP_shr, DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 32 7, DW_OP_constu 31, DW_OP_and, DW_OP_stack_value] $sp
	;DEBUG_VALUE: extr_alu:operand <- [DW_OP_plus_uconst 88] [$sp+0]
	;DEBUG_VALUE: extr_alu:val <- $x8
	;DEBUG_VALUE: val <- $x8
	;DEBUG_VALUE: j <- $w27
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst_offset <- [DW_OP_plus_uconst 40] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst <- [DW_OP_plus_uconst 24] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_col <- $x23
	;DEBUG_VALUE: emulate_AMX_EXTRY:operand <- [DW_OP_plus_uconst 88] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_step <- [DW_OP_plus_uconst 32] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:stride <- [DW_OP_plus_uconst 100] [$sp+0]
	.loc	4 0 9 is_stmt 0                 ; extr.c:0:9
	ldr	x10, [sp, #72]                  ; 8-byte Folded Reload
Ltmp262:
	.loc	4 28 15 is_stmt 1               ; extr.c:28:15
	add	x8, x8, x10
Ltmp263:
	;DEBUG_VALUE: extr_alu:val <- $x8
	.loc	4 0 15 is_stmt 0                ; extr.c:0:15
	ldr	x10, [sp, #80]                  ; 8-byte Folded Reload
Ltmp264:
	.loc	4 31 9 is_stmt 1                ; extr.c:31:9
	asr	x8, x8, x10
Ltmp265:
	;DEBUG_VALUE: extr_alu:val <- $x8
	.loc	4 32 9                          ; extr.c:32:9
	tbz	x9, #55, LBB1_45
Ltmp266:
; %bb.49:                               ;   in Loop: Header=BB1_46 Depth=2
	;DEBUG_VALUE: extr_alu:shift <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_constu 58, DW_OP_shr, DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 32 7, DW_OP_constu 31, DW_OP_and, DW_OP_stack_value] $sp
	;DEBUG_VALUE: extr_alu:operand <- [DW_OP_plus_uconst 88] [$sp+0]
	;DEBUG_VALUE: extr_alu:val <- $x8
	;DEBUG_VALUE: j <- $w27
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst_offset <- [DW_OP_plus_uconst 40] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst <- [DW_OP_plus_uconst 24] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_col <- $x23
	;DEBUG_VALUE: emulate_AMX_EXTRY:operand <- [DW_OP_plus_uconst 88] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_step <- [DW_OP_plus_uconst 32] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:stride <- [DW_OP_plus_uconst 100] [$sp+0]
	;DEBUG_VALUE: extr_alu:outbits <- undef
	;DEBUG_VALUE: hi <- [DW_OP_plus_uconst 64] [$sp+0]
	.loc	4 0 9 is_stmt 0                 ; extr.c:0:9
	ldr	x9, [sp, #88]                   ; 8-byte Folded Reload
Ltmp267:
	.loc	4 35 13 is_stmt 1               ; extr.c:35:13
	tbnz	x9, #57, LBB1_53
Ltmp268:
; %bb.50:                               ;   in Loop: Header=BB1_46 Depth=2
	;DEBUG_VALUE: hi <- [DW_OP_plus_uconst 64] [$sp+0]
	;DEBUG_VALUE: extr_alu:shift <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_constu 58, DW_OP_shr, DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 32 7, DW_OP_constu 31, DW_OP_and, DW_OP_stack_value] $sp
	;DEBUG_VALUE: extr_alu:operand <- [DW_OP_plus_uconst 88] [$sp+0]
	;DEBUG_VALUE: extr_alu:val <- $x8
	;DEBUG_VALUE: j <- $w27
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst_offset <- [DW_OP_plus_uconst 40] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst <- [DW_OP_plus_uconst 24] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_col <- $x23
	;DEBUG_VALUE: emulate_AMX_EXTRY:operand <- [DW_OP_plus_uconst 88] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_step <- [DW_OP_plus_uconst 32] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:stride <- [DW_OP_plus_uconst 100] [$sp+0]
	.loc	4 0 13 is_stmt 0                ; extr.c:0:13
	ldr	x9, [sp, #64]                   ; 8-byte Folded Reload
Ltmp269:
	.loc	4 40 17 is_stmt 1               ; extr.c:40:17
	cmp	x8, x9
	ldr	x9, [sp, #56]                   ; 8-byte Folded Reload
	csel	x8, x8, x9, lo
Ltmp270:
	.loc	4 0 17 is_stmt 0                ; extr.c:0:17
	b	LBB1_45
Ltmp271:
LBB1_51:                                ;   in Loop: Header=BB1_46 Depth=2
	;DEBUG_VALUE: extr_alu:shift <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_constu 58, DW_OP_shr, DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 32 7, DW_OP_constu 31, DW_OP_and, DW_OP_stack_value] $sp
	;DEBUG_VALUE: extr_alu:operand <- [DW_OP_plus_uconst 88] [$sp+0]
	;DEBUG_VALUE: extr_alu:val <- $x8
	;DEBUG_VALUE: val <- $x8
	;DEBUG_VALUE: j <- $w27
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst_offset <- [DW_OP_plus_uconst 40] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst <- [DW_OP_plus_uconst 24] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_col <- $x23
	;DEBUG_VALUE: emulate_AMX_EXTRY:operand <- [DW_OP_plus_uconst 88] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_step <- [DW_OP_plus_uconst 32] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:stride <- [DW_OP_plus_uconst 100] [$sp+0]
	ldr	x9, [sp, #80]                   ; 8-byte Folded Reload
Ltmp272:
	.loc	4 21 13 is_stmt 1               ; extr.c:21:13
	cmp	w9, #16
	b.lo	LBB1_44
Ltmp273:
; %bb.52:                               ;   in Loop: Header=BB1_46 Depth=2
	;DEBUG_VALUE: extr_alu:shift <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_constu 58, DW_OP_shr, DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 32 7, DW_OP_constu 31, DW_OP_and, DW_OP_stack_value] $sp
	;DEBUG_VALUE: extr_alu:operand <- [DW_OP_plus_uconst 88] [$sp+0]
	;DEBUG_VALUE: extr_alu:val <- $x8
	;DEBUG_VALUE: val <- $x8
	;DEBUG_VALUE: j <- $w27
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst_offset <- [DW_OP_plus_uconst 40] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst <- [DW_OP_plus_uconst 24] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_col <- $x23
	;DEBUG_VALUE: emulate_AMX_EXTRY:operand <- [DW_OP_plus_uconst 88] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_step <- [DW_OP_plus_uconst 32] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:stride <- [DW_OP_plus_uconst 100] [$sp+0]
	;DEBUG_VALUE: bf16_from_f32:f <- $w8
	.loc	4 12 12                         ; extr.c:12:12
	and	w9, w8, #0x7fffffff
Ltmp274:
	;DEBUG_VALUE: bf16_from_f32:low <- undef
	.loc	4 14 7                          ; extr.c:14:7
	lsr	w10, w8, #16
Ltmp275:
	;DEBUG_VALUE: bf16_from_f32:f <- $w10
	.loc	4 15 26                         ; extr.c:15:26
	ubfx	w11, w8, #16, #1
	.loc	4 15 21 is_stmt 0               ; extr.c:15:21
	add	w8, w11, w8, uxth
Ltmp276:
	.loc	4 15 31                         ; extr.c:15:31
	cmp	w8, #8, lsl #12                 ; =32768
	.loc	4 15 14                         ; extr.c:15:14
	cinc	w8, w10, hi
	.loc	4 12 9 is_stmt 1                ; extr.c:12:9
	mov	w10, #2139095040
Ltmp277:
	cmp	w9, w10
	mov	w9, #32704
	csel	x8, x9, x8, hi
	b	LBB1_45
Ltmp278:
LBB1_53:                                ;   in Loop: Header=BB1_46 Depth=2
	;DEBUG_VALUE: hi <- [DW_OP_plus_uconst 64] [$sp+0]
	;DEBUG_VALUE: extr_alu:shift <- [DW_OP_plus_uconst 88, DW_OP_deref_size 8, DW_OP_constu 58, DW_OP_shr, DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 32 7, DW_OP_constu 31, DW_OP_and, DW_OP_stack_value] $sp
	;DEBUG_VALUE: extr_alu:operand <- [DW_OP_plus_uconst 88] [$sp+0]
	;DEBUG_VALUE: extr_alu:val <- $x8
	;DEBUG_VALUE: j <- $w27
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst_offset <- [DW_OP_plus_uconst 40] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst <- [DW_OP_plus_uconst 24] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_col <- $x23
	;DEBUG_VALUE: emulate_AMX_EXTRY:operand <- [DW_OP_plus_uconst 88] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_step <- [DW_OP_plus_uconst 32] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:stride <- [DW_OP_plus_uconst 100] [$sp+0]
	;DEBUG_VALUE: lo <- [DW_OP_plus_uconst 48] [$sp+0]
	.loc	4 0 9 is_stmt 0                 ; extr.c:0:9
	ldr	x9, [sp, #48]                   ; 8-byte Folded Reload
Ltmp279:
	.loc	4 37 17 is_stmt 1               ; extr.c:37:17
	cmp	x8, x9
	csel	x8, x8, x9, gt
Ltmp280:
	;DEBUG_VALUE: extr_alu:val <- $x8
	.loc	4 0 17 is_stmt 0                ; extr.c:0:17
	ldr	x9, [sp, #64]                   ; 8-byte Folded Reload
	.loc	4 38 17 is_stmt 1               ; extr.c:38:17
	cmp	x8, x9
	ldr	x9, [sp, #56]                   ; 8-byte Folded Reload
	csel	x8, x8, x9, lt
Ltmp281:
	;DEBUG_VALUE: extr_alu:val <- $x8
	.loc	4 0 17 is_stmt 0                ; extr.c:0:17
	b	LBB1_45
Ltmp282:
LBB1_54:                                ;   in Loop: Header=BB1_43 Depth=1
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst_offset <- [DW_OP_plus_uconst 40] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst <- [DW_OP_plus_uconst 24] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_col <- $x23
	;DEBUG_VALUE: emulate_AMX_EXTRY:operand <- [DW_OP_plus_uconst 88] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_step <- [DW_OP_plus_uconst 32] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:stride <- [DW_OP_plus_uconst 100] [$sp+0]
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	.loc	4 169 13 is_stmt 1              ; extr.c:169:13
	mov	x9, #12884901888
	cmp	x8, x9
	b.ne	LBB1_56
Ltmp283:
; %bb.55:                               ;   in Loop: Header=BB1_43 Depth=1
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst_offset <- [DW_OP_plus_uconst 40] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst <- [DW_OP_plus_uconst 24] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_col <- $x23
	;DEBUG_VALUE: emulate_AMX_EXTRY:operand <- [DW_OP_plus_uconst 88] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_step <- [DW_OP_plus_uconst 32] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:stride <- [DW_OP_plus_uconst 100] [$sp+0]
	.loc	4 0 13 is_stmt 0                ; extr.c:0:13
	movi.2d	v0, #0000000000000000
Ltmp284:
	.loc	4 170 13 is_stmt 1              ; extr.c:170:13
	stp	q0, q0, [sp, #144]
	stp	q0, q0, [sp, #112]
Ltmp285:
LBB1_56:                                ;   in Loop: Header=BB1_43 Depth=1
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst_offset <- [DW_OP_plus_uconst 40] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst <- [DW_OP_plus_uconst 24] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_col <- $x23
	;DEBUG_VALUE: emulate_AMX_EXTRY:operand <- [DW_OP_plus_uconst 88] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_step <- [DW_OP_plus_uconst 32] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:stride <- [DW_OP_plus_uconst 100] [$sp+0]
	.loc	4 0 13 is_stmt 0                ; extr.c:0:13
	mov	x8, #0
	ldr	x1, [sp, #40]                   ; 8-byte Folded Reload
	ldp	x17, x16, [sp, #16]             ; 16-byte Folded Reload
	b	LBB1_58
Ltmp286:
LBB1_57:                                ;   in Loop: Header=BB1_58 Depth=2
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst_offset <- [DW_OP_plus_uconst 40] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst <- [DW_OP_plus_uconst 24] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_col <- $x23
	;DEBUG_VALUE: emulate_AMX_EXTRY:operand <- [DW_OP_plus_uconst 88] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_step <- [DW_OP_plus_uconst 32] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:stride <- [DW_OP_plus_uconst 100] [$sp+0]
	.loc	4 47 34 is_stmt 1               ; extr.c:47:34
	add	x8, x8, #1
Ltmp287:
	;DEBUG_VALUE: i <- $x8
	.loc	4 47 5 is_stmt 0                ; extr.c:47:5
	cmp	x8, #64
	b.eq	LBB1_42
Ltmp288:
LBB1_58:                                ;   Parent Loop BB1_43 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst_offset <- [DW_OP_plus_uconst 40] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst <- [DW_OP_plus_uconst 24] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_col <- $x23
	;DEBUG_VALUE: emulate_AMX_EXTRY:operand <- [DW_OP_plus_uconst 88] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_step <- [DW_OP_plus_uconst 32] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:stride <- [DW_OP_plus_uconst 100] [$sp+0]
	;DEBUG_VALUE: i <- $x8
	.loc	4 48 13 is_stmt 1               ; extr.c:48:13
	lsr	x9, x17, x8
	tbz	w9, #0, LBB1_57
Ltmp289:
; %bb.59:                               ;   in Loop: Header=BB1_58 Depth=2
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst_offset <- [DW_OP_plus_uconst 40] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst <- [DW_OP_plus_uconst 24] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_col <- $x23
	;DEBUG_VALUE: emulate_AMX_EXTRY:operand <- [DW_OP_plus_uconst 88] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_step <- [DW_OP_plus_uconst 32] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:stride <- [DW_OP_plus_uconst 100] [$sp+0]
	.loc	4 49 49                         ; extr.c:49:49
	add	x9, sp, #112
	ldrb	w9, [x9, x8]
	.loc	4 49 38 is_stmt 0               ; extr.c:49:38
	add	w10, w1, w8
	and	x10, x10, #0x1ff
	.loc	4 49 47                         ; extr.c:49:47
	strb	w9, [x16, x10]
	b	LBB1_57
Ltmp290:
LBB1_60:
	;DEBUG_VALUE: parse_writemask:val <- $w10
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:g <- $w9
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_step <- [DW_OP_plus_uconst 32] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:zbytes <- $w8
	;DEBUG_VALUE: emulate_AMX_EXTRY:xybytes <- $w9
	;DEBUG_VALUE: emulate_AMX_EXTRY:stride <- [DW_OP_plus_uconst 100] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst <- $x16
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst_offset <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRY:store_enable <- -1
	;DEBUG_VALUE: emulate_AMX_EXTRY:state <- $x0
	.loc	4 0 47                          ; extr.c:0:47
	mov	x17, #-1
	b	LBB1_41
Ltmp291:
LBB1_61:
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst <- $x16
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst_offset <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_EXTRY:store_enable <- -1
	;DEBUG_VALUE: emulate_AMX_EXTRY:stride <- 0
	;DEBUG_VALUE: emulate_AMX_EXTRY:operand <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRY:state <- $x0
	;DEBUG_VALUE: emulate_AMX_EXTRY:xybytes <- 2
	.loc	4 137 35 is_stmt 1              ; extr.c:137:35
	ldr	w8, [x10]
	mov	w9, #2
	mov	w11, #4
	.loc	4 137 43 is_stmt 0              ; extr.c:137:43
	cmp	w8, #1
	csel	w8, w11, w9, hi
	cset	w11, hi
	str	w11, [sp, #100]                 ; 4-byte Folded Spill
	b	LBB1_28
Ltmp292:
LBB1_62:
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst <- $x16
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst_offset <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRY:z_step <- 64
	;DEBUG_VALUE: emulate_AMX_EXTRY:store_enable <- -1
	;DEBUG_VALUE: emulate_AMX_EXTRY:stride <- 0
	;DEBUG_VALUE: emulate_AMX_EXTRY:operand <- $x1
	;DEBUG_VALUE: emulate_AMX_EXTRY:state <- $x0
	;DEBUG_VALUE: emulate_AMX_EXTRY:xybytes <- 2
	.loc	4 138 35 is_stmt 1              ; extr.c:138:35
	ldr	w8, [x10]
	mov	w9, #2
	mov	w11, #4
	cmp	w8, #1
	csel	w8, w11, w9, hi
	cset	w11, hi
	lsl	w11, w11, #1
	str	w11, [sp, #100]                 ; 4-byte Folded Spill
	b	LBB1_28
Ltmp293:
LBB1_63:
	;DEBUG_VALUE: emulate_AMX_EXTRY:dst_offset <- $x1
	.loc	4 0 35 is_stmt 0                ; extr.c:0:35
	bl	___stack_chk_fail
Ltmp294:
	.loh AdrpLdrGotLdr	Lloh14, Lloh15, Lloh16
	.loh AdrpAdd	Lloh17, Lloh18
	.loh AdrpLdrGot	Lloh19, Lloh20
	.loh AdrpAdd	Lloh21, Lloh22
	.loh AdrpLdrGotLdr	Lloh23, Lloh24, Lloh25
	.loh AdrpAdd	Lloh26, Lloh27
Lfunc_end1:
	.cfi_endproc
	.p2align	2
lJTI1_0:
	.long	LBB1_28-Ltmp171
	.long	LBB1_20-Ltmp171
	.long	LBB1_20-Ltmp171
	.long	LBB1_20-Ltmp171
	.long	LBB1_20-Ltmp171
	.long	LBB1_20-Ltmp171
	.long	LBB1_20-Ltmp171
	.long	LBB1_20-Ltmp171
	.long	LBB1_9-Ltmp171
	.long	LBB1_21-Ltmp171
	.long	LBB1_22-Ltmp171
	.long	LBB1_23-Ltmp171
	.long	LBB1_20-Ltmp171
	.long	LBB1_24-Ltmp171
	.long	LBB1_20-Ltmp171
	.long	LBB1_20-Ltmp171
	.long	LBB1_20-Ltmp171
	.long	LBB1_26-Ltmp171
	.long	LBB1_20-Ltmp171
	.long	LBB1_20-Ltmp171
	.long	LBB1_20-Ltmp171
	.long	LBB1_20-Ltmp171
	.long	LBB1_20-Ltmp171
	.long	LBB1_20-Ltmp171
	.long	LBB1_9-Ltmp171
	.long	LBB1_61-Ltmp171
	.long	LBB1_62-Ltmp171
	.p2align	2
lJTI1_1:
	.long	LBB1_30-Ltmp211
	.long	LBB1_35-Ltmp211
	.long	LBB1_36-Ltmp211
	.long	LBB1_38-Ltmp211
	.long	LBB1_37-Ltmp211
	.long	LBB1_39-Ltmp211
	.p2align	2
lJTI1_2:
	.long	LBB1_3-Ltmp158
	.long	LBB1_18-Ltmp158
	.long	LBB1_13-Ltmp158
	.long	LBB1_15-Ltmp158
                                        ; -- End function
	.file	7 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types" "_uint16_t.h"
	.file	8 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types" "_int8_t.h"
	.file	9 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types" "_int16_t.h"
	.file	10 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types" "_int32_t.h"
	.section	__DWARF,__debug_loc,regular,debug
Lsection_debug_loc:
Ldebug_loc0:
.set Lset0, Lfunc_begin0-Lfunc_begin0
	.quad	Lset0
.set Lset1, Ltmp27-Lfunc_begin0
	.quad	Lset1
	.short	1                               ; Loc expr size
	.byte	80                              ; DW_OP_reg0
.set Lset2, Ltmp28-Lfunc_begin0
	.quad	Lset2
.set Lset3, Ltmp90-Lfunc_begin0
	.quad	Lset3
	.short	1                               ; Loc expr size
	.byte	80                              ; DW_OP_reg0
.set Lset4, Ltmp106-Lfunc_begin0
	.quad	Lset4
.set Lset5, Ltmp111-Lfunc_begin0
	.quad	Lset5
	.short	4                               ; Loc expr size
	.byte	163                             ; DW_OP_entry_value
	.byte	1                               ; 1
	.byte	80                              ; DW_OP_reg0
	.byte	159                             ; DW_OP_stack_value
.set Lset6, Ltmp143-Lfunc_begin0
	.quad	Lset6
.set Lset7, Ltmp146-Lfunc_begin0
	.quad	Lset7
	.short	1                               ; Loc expr size
	.byte	80                              ; DW_OP_reg0
	.quad	0
	.quad	0
Ldebug_loc1:
.set Lset8, Lfunc_begin0-Lfunc_begin0
	.quad	Lset8
.set Lset9, Ltmp27-Lfunc_begin0
	.quad	Lset9
	.short	1                               ; Loc expr size
	.byte	81                              ; DW_OP_reg1
.set Lset10, Ltmp28-Lfunc_begin0
	.quad	Lset10
.set Lset11, Ltmp56-Lfunc_begin0
	.quad	Lset11
	.short	1                               ; Loc expr size
	.byte	81                              ; DW_OP_reg1
.set Lset12, Ltmp56-Lfunc_begin0
	.quad	Lset12
.set Lset13, Ltmp60-Lfunc_begin0
	.quad	Lset13
	.short	1                               ; Loc expr size
	.byte	92                              ; DW_OP_reg12
.set Lset14, Ltmp71-Lfunc_begin0
	.quad	Lset14
.set Lset15, Ltmp72-Lfunc_begin0
	.quad	Lset15
	.short	1                               ; Loc expr size
	.byte	92                              ; DW_OP_reg12
.set Lset16, Ltmp84-Lfunc_begin0
	.quad	Lset16
.set Lset17, Ltmp143-Lfunc_begin0
	.quad	Lset17
	.short	3                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	216                             ; 88
	.byte	0                               ; 
.set Lset18, Ltmp144-Lfunc_begin0
	.quad	Lset18
.set Lset19, Ltmp146-Lfunc_begin0
	.quad	Lset19
	.short	1                               ; Loc expr size
	.byte	81                              ; DW_OP_reg1
	.quad	0
	.quad	0
Ldebug_loc2:
.set Lset20, Ltmp0-Lfunc_begin0
	.quad	Lset20
.set Lset21, Ltmp27-Lfunc_begin0
	.quad	Lset21
	.short	2                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	159                             ; DW_OP_stack_value
.set Lset22, Ltmp28-Lfunc_begin0
	.quad	Lset22
.set Lset23, Ltmp44-Lfunc_begin0
	.quad	Lset23
	.short	2                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	159                             ; DW_OP_stack_value
.set Lset24, Ltmp44-Lfunc_begin0
	.quad	Lset24
.set Lset25, Ltmp45-Lfunc_begin0
	.quad	Lset25
	.short	2                               ; Loc expr size
	.byte	49                              ; DW_OP_lit1
	.byte	159                             ; DW_OP_stack_value
.set Lset26, Ltmp45-Lfunc_begin0
	.quad	Lset26
.set Lset27, Ltmp46-Lfunc_begin0
	.quad	Lset27
	.short	2                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	159                             ; DW_OP_stack_value
.set Lset28, Ltmp46-Lfunc_begin0
	.quad	Lset28
.set Lset29, Ltmp47-Lfunc_begin0
	.quad	Lset29
	.short	2                               ; Loc expr size
	.byte	50                              ; DW_OP_lit2
	.byte	159                             ; DW_OP_stack_value
.set Lset30, Ltmp47-Lfunc_begin0
	.quad	Lset30
.set Lset31, Ltmp50-Lfunc_begin0
	.quad	Lset31
	.short	2                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	159                             ; DW_OP_stack_value
.set Lset32, Ltmp50-Lfunc_begin0
	.quad	Lset32
.set Lset33, Ltmp51-Lfunc_begin0
	.quad	Lset33
	.short	2                               ; Loc expr size
	.byte	49                              ; DW_OP_lit1
	.byte	159                             ; DW_OP_stack_value
.set Lset34, Ltmp51-Lfunc_begin0
	.quad	Lset34
.set Lset35, Ltmp53-Lfunc_begin0
	.quad	Lset35
	.short	2                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	159                             ; DW_OP_stack_value
.set Lset36, Ltmp53-Lfunc_begin0
	.quad	Lset36
.set Lset37, Ltmp83-Lfunc_begin0
	.quad	Lset37
	.short	3                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	228                             ; 100
	.byte	0                               ; 
.set Lset38, Ltmp84-Lfunc_begin0
	.quad	Lset38
.set Lset39, Ltmp144-Lfunc_begin0
	.quad	Lset39
	.short	3                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	228                             ; 100
	.byte	0                               ; 
.set Lset40, Ltmp144-Lfunc_begin0
	.quad	Lset40
.set Lset41, Ltmp146-Lfunc_begin0
	.quad	Lset41
	.short	2                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc3:
.set Lset42, Ltmp0-Lfunc_begin0
	.quad	Lset42
.set Lset43, Ltmp5-Lfunc_begin0
	.quad	Lset43
	.short	3                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	32                              ; DW_OP_not
	.byte	159                             ; DW_OP_stack_value
.set Lset44, Ltmp20-Lfunc_begin0
	.quad	Lset44
.set Lset45, Ltmp27-Lfunc_begin0
	.quad	Lset45
	.short	3                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	32                              ; DW_OP_not
	.byte	159                             ; DW_OP_stack_value
.set Lset46, Ltmp39-Lfunc_begin0
	.quad	Lset46
.set Lset47, Ltmp41-Lfunc_begin0
	.quad	Lset47
	.short	1                               ; Loc expr size
	.byte	82                              ; DW_OP_reg2
.set Lset48, Ltmp41-Lfunc_begin0
	.quad	Lset48
.set Lset49, Ltmp83-Lfunc_begin0
	.quad	Lset49
	.short	3                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	32                              ; DW_OP_not
	.byte	159                             ; DW_OP_stack_value
.set Lset50, Ltmp84-Lfunc_begin0
	.quad	Lset50
.set Lset51, Ltmp90-Lfunc_begin0
	.quad	Lset51
	.short	1                               ; Loc expr size
	.byte	82                              ; DW_OP_reg2
.set Lset52, Ltmp143-Lfunc_begin0
	.quad	Lset52
.set Lset53, Ltmp146-Lfunc_begin0
	.quad	Lset53
	.short	3                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	32                              ; DW_OP_not
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc4:
.set Lset54, Ltmp0-Lfunc_begin0
	.quad	Lset54
.set Lset55, Ltmp27-Lfunc_begin0
	.quad	Lset55
	.short	3                               ; Loc expr size
	.byte	16                              ; DW_OP_constu
	.byte	64                              ; 64
	.byte	159                             ; DW_OP_stack_value
.set Lset56, Ltmp28-Lfunc_begin0
	.quad	Lset56
.set Lset57, Ltmp54-Lfunc_begin0
	.quad	Lset57
	.short	3                               ; Loc expr size
	.byte	16                              ; DW_OP_constu
	.byte	64                              ; 64
	.byte	159                             ; DW_OP_stack_value
.set Lset58, Ltmp54-Lfunc_begin0
	.quad	Lset58
.set Lset59, Ltmp55-Lfunc_begin0
	.quad	Lset59
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
.set Lset60, Ltmp55-Lfunc_begin0
	.quad	Lset60
.set Lset61, Ltmp83-Lfunc_begin0
	.quad	Lset61
	.short	2                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	32                              ; 32
.set Lset62, Ltmp84-Lfunc_begin0
	.quad	Lset62
.set Lset63, Ltmp86-Lfunc_begin0
	.quad	Lset63
	.short	2                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	32                              ; 32
.set Lset64, Ltmp86-Lfunc_begin0
	.quad	Lset64
.set Lset65, Ltmp87-Lfunc_begin0
	.quad	Lset65
	.short	1                               ; Loc expr size
	.byte	94                              ; DW_OP_reg14
.set Lset66, Ltmp87-Lfunc_begin0
	.quad	Lset66
.set Lset67, Ltmp144-Lfunc_begin0
	.quad	Lset67
	.short	2                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	32                              ; 32
.set Lset68, Ltmp144-Lfunc_begin0
	.quad	Lset68
.set Lset69, Ltmp146-Lfunc_begin0
	.quad	Lset69
	.short	3                               ; Loc expr size
	.byte	16                              ; DW_OP_constu
	.byte	64                              ; 64
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc5:
.set Lset70, Ltmp84-Lfunc_begin0
	.quad	Lset70
.set Lset71, Ltmp85-Lfunc_begin0
	.quad	Lset71
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
.set Lset72, Ltmp85-Lfunc_begin0
	.quad	Lset72
.set Lset73, Ltmp86-Lfunc_begin0
	.quad	Lset73
	.short	15                              ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	32                              ; 32
	.byte	6                               ; DW_OP_deref
	.byte	35                              ; DW_OP_plus_uconst
	.byte	255                             ; 17592186044415
	.byte	255                             ; 
	.byte	255                             ; 
	.byte	255                             ; 
	.byte	255                             ; 
	.byte	255                             ; 
	.byte	3                               ; 
	.byte	122                             ; DW_OP_breg10
	.byte	0                               ; 0
	.byte	26                              ; DW_OP_and
	.byte	159                             ; DW_OP_stack_value
.set Lset74, Ltmp86-Lfunc_begin0
	.quad	Lset74
.set Lset75, Ltmp87-Lfunc_begin0
	.quad	Lset75
	.short	14                              ; Loc expr size
	.byte	126                             ; DW_OP_breg14
	.byte	0                               ; 0
	.byte	35                              ; DW_OP_plus_uconst
	.byte	255                             ; 17592186044415
	.byte	255                             ; 
	.byte	255                             ; 
	.byte	255                             ; 
	.byte	255                             ; 
	.byte	255                             ; 
	.byte	3                               ; 
	.byte	122                             ; DW_OP_breg10
	.byte	0                               ; 0
	.byte	26                              ; DW_OP_and
	.byte	159                             ; DW_OP_stack_value
.set Lset76, Ltmp87-Lfunc_begin0
	.quad	Lset76
.set Lset77, Ltmp88-Lfunc_begin0
	.quad	Lset77
	.short	6                               ; Loc expr size
	.byte	126                             ; DW_OP_breg14
	.byte	0                               ; 0
	.byte	122                             ; DW_OP_breg10
	.byte	0                               ; 0
	.byte	26                              ; DW_OP_and
	.byte	159                             ; DW_OP_stack_value
.set Lset78, Ltmp88-Lfunc_begin0
	.quad	Lset78
.set Lset79, Ltmp143-Lfunc_begin0
	.quad	Lset79
	.short	1                               ; Loc expr size
	.byte	102                             ; DW_OP_reg22
	.quad	0
	.quad	0
Ldebug_loc6:
.set Lset80, Ltmp2-Lfunc_begin0
	.quad	Lset80
.set Lset81, Ltmp20-Lfunc_begin0
	.quad	Lset81
	.short	1                               ; Loc expr size
	.byte	80                              ; DW_OP_reg0
.set Lset82, Ltmp21-Lfunc_begin0
	.quad	Lset82
.set Lset83, Ltmp26-Lfunc_begin0
	.quad	Lset83
	.short	1                               ; Loc expr size
	.byte	96                              ; DW_OP_reg16
.set Lset84, Ltmp28-Lfunc_begin0
	.quad	Lset84
.set Lset85, Ltmp41-Lfunc_begin0
	.quad	Lset85
	.short	1                               ; Loc expr size
	.byte	80                              ; DW_OP_reg0
.set Lset86, Ltmp41-Lfunc_begin0
	.quad	Lset86
.set Lset87, Ltmp83-Lfunc_begin0
	.quad	Lset87
	.short	1                               ; Loc expr size
	.byte	96                              ; DW_OP_reg16
.set Lset88, Ltmp84-Lfunc_begin0
	.quad	Lset88
.set Lset89, Ltmp89-Lfunc_begin0
	.quad	Lset89
	.short	1                               ; Loc expr size
	.byte	96                              ; DW_OP_reg16
.set Lset90, Ltmp89-Lfunc_begin0
	.quad	Lset90
.set Lset91, Ltmp143-Lfunc_begin0
	.quad	Lset91
	.short	2                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	24                              ; 24
.set Lset92, Ltmp143-Lfunc_begin0
	.quad	Lset92
.set Lset93, Ltmp146-Lfunc_begin0
	.quad	Lset93
	.short	1                               ; Loc expr size
	.byte	96                              ; DW_OP_reg16
	.quad	0
	.quad	0
Ldebug_loc7:
.set Lset94, Ltmp3-Lfunc_begin0
	.quad	Lset94
.set Lset95, Ltmp20-Lfunc_begin0
	.quad	Lset95
	.short	1                               ; Loc expr size
	.byte	97                              ; DW_OP_reg17
.set Lset96, Ltmp21-Lfunc_begin0
	.quad	Lset96
.set Lset97, Ltmp26-Lfunc_begin0
	.quad	Lset97
	.short	1                               ; Loc expr size
	.byte	81                              ; DW_OP_reg1
.set Lset98, Ltmp28-Lfunc_begin0
	.quad	Lset98
.set Lset99, Ltmp41-Lfunc_begin0
	.quad	Lset99
	.short	1                               ; Loc expr size
	.byte	97                              ; DW_OP_reg17
.set Lset100, Ltmp41-Lfunc_begin0
	.quad	Lset100
.set Lset101, Ltmp83-Lfunc_begin0
	.quad	Lset101
	.short	1                               ; Loc expr size
	.byte	81                              ; DW_OP_reg1
.set Lset102, Ltmp84-Lfunc_begin0
	.quad	Lset102
.set Lset103, Ltmp90-Lfunc_begin0
	.quad	Lset103
	.short	1                               ; Loc expr size
	.byte	97                              ; DW_OP_reg17
.set Lset104, Ltmp90-Lfunc_begin0
	.quad	Lset104
.set Lset105, Ltmp91-Lfunc_begin0
	.quad	Lset105
	.short	2                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	40                              ; 40
.set Lset106, Ltmp91-Lfunc_begin0
	.quad	Lset106
.set Lset107, Ltmp95-Lfunc_begin0
	.quad	Lset107
	.short	1                               ; Loc expr size
	.byte	97                              ; DW_OP_reg17
.set Lset108, Ltmp95-Lfunc_begin0
	.quad	Lset108
.set Lset109, Ltmp143-Lfunc_begin0
	.quad	Lset109
	.short	2                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	40                              ; 40
.set Lset110, Ltmp143-Lfunc_begin0
	.quad	Lset110
.set Lset111, Ltmp146-Lfunc_begin0
	.quad	Lset111
	.short	1                               ; Loc expr size
	.byte	81                              ; DW_OP_reg1
	.quad	0
	.quad	0
Ldebug_loc8:
.set Lset112, Ltmp4-Lfunc_begin0
	.quad	Lset112
.set Lset113, Ltmp5-Lfunc_begin0
	.quad	Lset113
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
.set Lset114, Ltmp5-Lfunc_begin0
	.quad	Lset114
.set Lset115, Ltmp20-Lfunc_begin0
	.quad	Lset115
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
.set Lset116, Ltmp25-Lfunc_begin0
	.quad	Lset116
.set Lset117, Ltmp26-Lfunc_begin0
	.quad	Lset117
	.short	2                               ; Loc expr size
	.byte	52                              ; DW_OP_lit4
	.byte	159                             ; DW_OP_stack_value
.set Lset118, Ltmp28-Lfunc_begin0
	.quad	Lset118
.set Lset119, Ltmp41-Lfunc_begin0
	.quad	Lset119
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
.set Lset120, Ltmp42-Lfunc_begin0
	.quad	Lset120
.set Lset121, Ltmp43-Lfunc_begin0
	.quad	Lset121
	.short	2                               ; Loc expr size
	.byte	50                              ; DW_OP_lit2
	.byte	159                             ; DW_OP_stack_value
.set Lset122, Ltmp44-Lfunc_begin0
	.quad	Lset122
.set Lset123, Ltmp45-Lfunc_begin0
	.quad	Lset123
	.short	2                               ; Loc expr size
	.byte	50                              ; DW_OP_lit2
	.byte	159                             ; DW_OP_stack_value
.set Lset124, Ltmp46-Lfunc_begin0
	.quad	Lset124
.set Lset125, Ltmp47-Lfunc_begin0
	.quad	Lset125
	.short	2                               ; Loc expr size
	.byte	50                              ; DW_OP_lit2
	.byte	159                             ; DW_OP_stack_value
.set Lset126, Ltmp50-Lfunc_begin0
	.quad	Lset126
.set Lset127, Ltmp51-Lfunc_begin0
	.quad	Lset127
	.short	2                               ; Loc expr size
	.byte	49                              ; DW_OP_lit1
	.byte	159                             ; DW_OP_stack_value
.set Lset128, Ltmp53-Lfunc_begin0
	.quad	Lset128
.set Lset129, Ltmp83-Lfunc_begin0
	.quad	Lset129
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
.set Lset130, Ltmp84-Lfunc_begin0
	.quad	Lset130
.set Lset131, Ltmp90-Lfunc_begin0
	.quad	Lset131
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
.set Lset132, Ltmp143-Lfunc_begin0
	.quad	Lset132
.set Lset133, Ltmp144-Lfunc_begin0
	.quad	Lset133
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
.set Lset134, Ltmp144-Lfunc_begin0
	.quad	Lset134
.set Lset135, Ltmp146-Lfunc_begin0
	.quad	Lset135
	.short	2                               ; Loc expr size
	.byte	50                              ; DW_OP_lit2
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc9:
.set Lset136, Ltmp6-Lfunc_begin0
	.quad	Lset136
.set Lset137, Ltmp20-Lfunc_begin0
	.quad	Lset137
	.short	2                               ; Loc expr size
	.byte	55                              ; DW_OP_lit7
	.byte	159                             ; DW_OP_stack_value
.set Lset138, Ltmp28-Lfunc_begin0
	.quad	Lset138
.set Lset139, Ltmp38-Lfunc_begin0
	.quad	Lset139
	.short	2                               ; Loc expr size
	.byte	55                              ; DW_OP_lit7
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc10:
.set Lset140, Ltmp6-Lfunc_begin0
	.quad	Lset140
.set Lset141, Ltmp8-Lfunc_begin0
	.quad	Lset141
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
.set Lset142, Ltmp8-Lfunc_begin0
	.quad	Lset142
.set Lset143, Ltmp9-Lfunc_begin0
	.quad	Lset143
	.short	1                               ; Loc expr size
	.byte	92                              ; DW_OP_reg12
.set Lset144, Ltmp9-Lfunc_begin0
	.quad	Lset144
.set Lset145, Ltmp20-Lfunc_begin0
	.quad	Lset145
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
.set Lset146, Ltmp28-Lfunc_begin0
	.quad	Lset146
.set Lset147, Ltmp31-Lfunc_begin0
	.quad	Lset147
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
.set Lset148, Ltmp32-Lfunc_begin0
	.quad	Lset148
.set Lset149, Ltmp35-Lfunc_begin0
	.quad	Lset149
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
.set Lset150, Ltmp36-Lfunc_begin0
	.quad	Lset150
.set Lset151, Ltmp38-Lfunc_begin0
	.quad	Lset151
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
	.quad	0
	.quad	0
Ldebug_loc11:
.set Lset152, Ltmp6-Lfunc_begin0
	.quad	Lset152
.set Lset153, Ltmp14-Lfunc_begin0
	.quad	Lset153
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
.set Lset154, Ltmp14-Lfunc_begin0
	.quad	Lset154
.set Lset155, Ltmp15-Lfunc_begin0
	.quad	Lset155
	.short	5                               ; Loc expr size
	.byte	120                             ; DW_OP_breg8
	.byte	0                               ; 0
	.byte	49                              ; DW_OP_lit1
	.byte	36                              ; DW_OP_shl
	.byte	159                             ; DW_OP_stack_value
.set Lset156, Ltmp17-Lfunc_begin0
	.quad	Lset156
.set Lset157, Ltmp18-Lfunc_begin0
	.quad	Lset157
	.short	5                               ; Loc expr size
	.byte	125                             ; DW_OP_breg13
	.byte	0                               ; 0
	.byte	49                              ; DW_OP_lit1
	.byte	36                              ; DW_OP_shl
	.byte	159                             ; DW_OP_stack_value
.set Lset158, Ltmp28-Lfunc_begin0
	.quad	Lset158
.set Lset159, Ltmp38-Lfunc_begin0
	.quad	Lset159
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
	.quad	0
	.quad	0
Ldebug_loc12:
.set Lset160, Ltmp7-Lfunc_begin0
	.quad	Lset160
.set Lset161, Ltmp12-Lfunc_begin0
	.quad	Lset161
	.short	1                               ; Loc expr size
	.byte	91                              ; DW_OP_reg11
.set Lset162, Ltmp32-Lfunc_begin0
	.quad	Lset162
.set Lset163, Ltmp33-Lfunc_begin0
	.quad	Lset163
	.short	1                               ; Loc expr size
	.byte	91                              ; DW_OP_reg11
.set Lset164, Ltmp36-Lfunc_begin0
	.quad	Lset164
.set Lset165, Ltmp37-Lfunc_begin0
	.quad	Lset165
	.short	1                               ; Loc expr size
	.byte	91                              ; DW_OP_reg11
	.quad	0
	.quad	0
Ldebug_loc13:
.set Lset166, Ltmp9-Lfunc_begin0
	.quad	Lset166
.set Lset167, Ltmp14-Lfunc_begin0
	.quad	Lset167
	.short	3                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	32                              ; DW_OP_not
	.byte	159                             ; DW_OP_stack_value
.set Lset168, Ltmp14-Lfunc_begin0
	.quad	Lset168
.set Lset169, Ltmp19-Lfunc_begin0
	.quad	Lset169
	.short	1                               ; Loc expr size
	.byte	91                              ; DW_OP_reg11
.set Lset170, Ltmp28-Lfunc_begin0
	.quad	Lset170
.set Lset171, Ltmp38-Lfunc_begin0
	.quad	Lset171
	.short	3                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	32                              ; DW_OP_not
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc14:
.set Lset172, Ltmp25-Lfunc_begin0
	.quad	Lset172
.set Lset173, Ltmp26-Lfunc_begin0
	.quad	Lset173
	.short	2                               ; Loc expr size
	.byte	52                              ; DW_OP_lit4
	.byte	159                             ; DW_OP_stack_value
.set Lset174, Ltmp40-Lfunc_begin0
	.quad	Lset174
.set Lset175, Ltmp41-Lfunc_begin0
	.quad	Lset175
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
.set Lset176, Ltmp42-Lfunc_begin0
	.quad	Lset176
.set Lset177, Ltmp43-Lfunc_begin0
	.quad	Lset177
	.short	2                               ; Loc expr size
	.byte	50                              ; DW_OP_lit2
	.byte	159                             ; DW_OP_stack_value
.set Lset178, Ltmp44-Lfunc_begin0
	.quad	Lset178
.set Lset179, Ltmp45-Lfunc_begin0
	.quad	Lset179
	.short	2                               ; Loc expr size
	.byte	52                              ; DW_OP_lit4
	.byte	159                             ; DW_OP_stack_value
.set Lset180, Ltmp46-Lfunc_begin0
	.quad	Lset180
.set Lset181, Ltmp47-Lfunc_begin0
	.quad	Lset181
	.short	2                               ; Loc expr size
	.byte	52                              ; DW_OP_lit4
	.byte	159                             ; DW_OP_stack_value
.set Lset182, Ltmp50-Lfunc_begin0
	.quad	Lset182
.set Lset183, Ltmp51-Lfunc_begin0
	.quad	Lset183
	.short	2                               ; Loc expr size
	.byte	52                              ; DW_OP_lit4
	.byte	159                             ; DW_OP_stack_value
.set Lset184, Ltmp53-Lfunc_begin0
	.quad	Lset184
.set Lset185, Ltmp90-Lfunc_begin0
	.quad	Lset185
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
.set Lset186, Ltmp143-Lfunc_begin0
	.quad	Lset186
.set Lset187, Ltmp144-Lfunc_begin0
	.quad	Lset187
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
	.quad	0
	.quad	0
Ldebug_loc15:
.set Lset188, Ltmp56-Lfunc_begin0
	.quad	Lset188
.set Lset189, Ltmp66-Lfunc_begin0
	.quad	Lset189
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
.set Lset190, Ltmp66-Lfunc_begin0
	.quad	Lset190
.set Lset191, Ltmp67-Lfunc_begin0
	.quad	Lset191
	.short	5                               ; Loc expr size
	.byte	121                             ; DW_OP_breg9
	.byte	0                               ; 0
	.byte	49                              ; DW_OP_lit1
	.byte	36                              ; DW_OP_shl
	.byte	159                             ; DW_OP_stack_value
.set Lset192, Ltmp69-Lfunc_begin0
	.quad	Lset192
.set Lset193, Ltmp70-Lfunc_begin0
	.quad	Lset193
	.short	5                               ; Loc expr size
	.byte	125                             ; DW_OP_breg13
	.byte	0                               ; 0
	.byte	49                              ; DW_OP_lit1
	.byte	36                              ; DW_OP_shl
	.byte	159                             ; DW_OP_stack_value
.set Lset194, Ltmp71-Lfunc_begin0
	.quad	Lset194
.set Lset195, Ltmp82-Lfunc_begin0
	.quad	Lset195
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
	.quad	0
	.quad	0
Ldebug_loc16:
.set Lset196, Ltmp61-Lfunc_begin0
	.quad	Lset196
.set Lset197, Ltmp71-Lfunc_begin0
	.quad	Lset197
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
.set Lset198, Ltmp72-Lfunc_begin0
	.quad	Lset198
.set Lset199, Ltmp77-Lfunc_begin0
	.quad	Lset199
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
.set Lset200, Ltmp78-Lfunc_begin0
	.quad	Lset200
.set Lset201, Ltmp81-Lfunc_begin0
	.quad	Lset201
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
	.quad	0
	.quad	0
Ldebug_loc17:
.set Lset202, Ltmp57-Lfunc_begin0
	.quad	Lset202
.set Lset203, Ltmp64-Lfunc_begin0
	.quad	Lset203
	.short	1                               ; Loc expr size
	.byte	91                              ; DW_OP_reg11
.set Lset204, Ltmp71-Lfunc_begin0
	.quad	Lset204
.set Lset205, Ltmp73-Lfunc_begin0
	.quad	Lset205
	.short	1                               ; Loc expr size
	.byte	91                              ; DW_OP_reg11
.set Lset206, Ltmp74-Lfunc_begin0
	.quad	Lset206
.set Lset207, Ltmp76-Lfunc_begin0
	.quad	Lset207
	.short	1                               ; Loc expr size
	.byte	91                              ; DW_OP_reg11
.set Lset208, Ltmp78-Lfunc_begin0
	.quad	Lset208
.set Lset209, Ltmp80-Lfunc_begin0
	.quad	Lset209
	.short	1                               ; Loc expr size
	.byte	91                              ; DW_OP_reg11
	.quad	0
	.quad	0
Ldebug_loc18:
.set Lset210, Ltmp58-Lfunc_begin0
	.quad	Lset210
.set Lset211, Ltmp66-Lfunc_begin0
	.quad	Lset211
	.short	3                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	32                              ; DW_OP_not
	.byte	159                             ; DW_OP_stack_value
.set Lset212, Ltmp66-Lfunc_begin0
	.quad	Lset212
.set Lset213, Ltmp71-Lfunc_begin0
	.quad	Lset213
	.short	1                               ; Loc expr size
	.byte	91                              ; DW_OP_reg11
.set Lset214, Ltmp71-Lfunc_begin0
	.quad	Lset214
.set Lset215, Ltmp82-Lfunc_begin0
	.quad	Lset215
	.short	3                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	32                              ; DW_OP_not
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc19:
.set Lset216, Ltmp96-Lfunc_begin0
	.quad	Lset216
.set Lset217, Ltmp97-Lfunc_begin0
	.quad	Lset217
	.short	11                              ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	216                             ; 88
	.byte	0                               ; 
	.byte	148                             ; DW_OP_deref_size
	.byte	8                               ; 
	.byte	16                              ; DW_OP_constu
	.byte	58                              ; 58
	.byte	37                              ; DW_OP_shr
	.byte	79                              ; DW_OP_lit31
	.byte	26                              ; DW_OP_and
	.byte	159                             ; DW_OP_stack_value
.set Lset218, Ltmp111-Lfunc_begin0
	.quad	Lset218
.set Lset219, Ltmp134-Lfunc_begin0
	.quad	Lset219
	.short	11                              ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	216                             ; 88
	.byte	0                               ; 
	.byte	148                             ; DW_OP_deref_size
	.byte	8                               ; 
	.byte	16                              ; DW_OP_constu
	.byte	58                              ; 58
	.byte	37                              ; DW_OP_shr
	.byte	79                              ; DW_OP_lit31
	.byte	26                              ; DW_OP_and
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc20:
.set Lset220, Ltmp96-Lfunc_begin0
	.quad	Lset220
.set Lset221, Ltmp97-Lfunc_begin0
	.quad	Lset221
	.short	3                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	216                             ; 88
	.byte	0                               ; 
.set Lset222, Ltmp111-Lfunc_begin0
	.quad	Lset222
.set Lset223, Ltmp134-Lfunc_begin0
	.quad	Lset223
	.short	3                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	216                             ; 88
	.byte	0                               ; 
	.quad	0
	.quad	0
Ldebug_loc21:
.set Lset224, Ltmp96-Lfunc_begin0
	.quad	Lset224
.set Lset225, Ltmp97-Lfunc_begin0
	.quad	Lset225
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
.set Lset226, Ltmp111-Lfunc_begin0
	.quad	Lset226
.set Lset227, Ltmp122-Lfunc_begin0
	.quad	Lset227
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
.set Lset228, Ltmp123-Lfunc_begin0
	.quad	Lset228
.set Lset229, Ltmp128-Lfunc_begin0
	.quad	Lset229
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
.set Lset230, Ltmp130-Lfunc_begin0
	.quad	Lset230
.set Lset231, Ltmp134-Lfunc_begin0
	.quad	Lset231
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
	.quad	0
	.quad	0
Ldebug_loc22:
.set Lset232, Ltmp96-Lfunc_begin0
	.quad	Lset232
.set Lset233, Ltmp100-Lfunc_begin0
	.quad	Lset233
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
.set Lset234, Ltmp110-Lfunc_begin0
	.quad	Lset234
.set Lset235, Ltmp115-Lfunc_begin0
	.quad	Lset235
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
.set Lset236, Ltmp123-Lfunc_begin0
	.quad	Lset236
.set Lset237, Ltmp128-Lfunc_begin0
	.quad	Lset237
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
	.quad	0
	.quad	0
Ldebug_loc23:
.set Lset238, Ltmp104-Lfunc_begin0
	.quad	Lset238
.set Lset239, Ltmp105-Lfunc_begin0
	.quad	Lset239
	.short	2                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	159                             ; DW_OP_stack_value
.set Lset240, Ltmp105-Lfunc_begin0
	.quad	Lset240
.set Lset241, Ltmp108-Lfunc_begin0
	.quad	Lset241
	.short	3                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	232                             ; 104
	.byte	0                               ; 
.set Lset242, Ltmp108-Lfunc_begin0
	.quad	Lset242
.set Lset243, Ltmp109-Lfunc_begin0
	.quad	Lset243
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
	.quad	0
	.quad	0
Ldebug_loc24:
.set Lset244, Ltmp104-Lfunc_begin0
	.quad	Lset244
.set Lset245, Ltmp107-Lfunc_begin0
	.quad	Lset245
	.short	1                               ; Loc expr size
	.byte	81                              ; DW_OP_reg1
	.quad	0
	.quad	0
Ldebug_loc25:
.set Lset246, Ltmp118-Lfunc_begin0
	.quad	Lset246
.set Lset247, Ltmp123-Lfunc_begin0
	.quad	Lset247
	.short	3                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	192                             ; 64
	.byte	0                               ; 
.set Lset248, Ltmp130-Lfunc_begin0
	.quad	Lset248
.set Lset249, Ltmp134-Lfunc_begin0
	.quad	Lset249
	.short	3                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	192                             ; 64
	.byte	0                               ; 
	.quad	0
	.quad	0
Ldebug_loc26:
.set Lset250, Ltmp125-Lfunc_begin0
	.quad	Lset250
.set Lset251, Ltmp127-Lfunc_begin0
	.quad	Lset251
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
.set Lset252, Ltmp127-Lfunc_begin0
	.quad	Lset252
.set Lset253, Ltmp129-Lfunc_begin0
	.quad	Lset253
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
	.quad	0
	.quad	0
Ldebug_loc27:
.set Lset254, Lfunc_begin1-Lfunc_begin0
	.quad	Lset254
.set Lset255, Ltmp175-Lfunc_begin0
	.quad	Lset255
	.short	1                               ; Loc expr size
	.byte	80                              ; DW_OP_reg0
.set Lset256, Ltmp177-Lfunc_begin0
	.quad	Lset256
.set Lset257, Ltmp238-Lfunc_begin0
	.quad	Lset257
	.short	1                               ; Loc expr size
	.byte	80                              ; DW_OP_reg0
.set Lset258, Ltmp254-Lfunc_begin0
	.quad	Lset258
.set Lset259, Ltmp259-Lfunc_begin0
	.quad	Lset259
	.short	4                               ; Loc expr size
	.byte	163                             ; DW_OP_entry_value
	.byte	1                               ; 1
	.byte	80                              ; DW_OP_reg0
	.byte	159                             ; DW_OP_stack_value
.set Lset260, Ltmp290-Lfunc_begin0
	.quad	Lset260
.set Lset261, Ltmp293-Lfunc_begin0
	.quad	Lset261
	.short	1                               ; Loc expr size
	.byte	80                              ; DW_OP_reg0
	.quad	0
	.quad	0
Ldebug_loc28:
.set Lset262, Lfunc_begin1-Lfunc_begin0
	.quad	Lset262
.set Lset263, Ltmp175-Lfunc_begin0
	.quad	Lset263
	.short	1                               ; Loc expr size
	.byte	81                              ; DW_OP_reg1
.set Lset264, Ltmp177-Lfunc_begin0
	.quad	Lset264
.set Lset265, Ltmp205-Lfunc_begin0
	.quad	Lset265
	.short	1                               ; Loc expr size
	.byte	81                              ; DW_OP_reg1
.set Lset266, Ltmp205-Lfunc_begin0
	.quad	Lset266
.set Lset267, Ltmp209-Lfunc_begin0
	.quad	Lset267
	.short	1                               ; Loc expr size
	.byte	92                              ; DW_OP_reg12
.set Lset268, Ltmp220-Lfunc_begin0
	.quad	Lset268
.set Lset269, Ltmp221-Lfunc_begin0
	.quad	Lset269
	.short	1                               ; Loc expr size
	.byte	92                              ; DW_OP_reg12
.set Lset270, Ltmp232-Lfunc_begin0
	.quad	Lset270
.set Lset271, Ltmp290-Lfunc_begin0
	.quad	Lset271
	.short	3                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	216                             ; 88
	.byte	0                               ; 
.set Lset272, Ltmp291-Lfunc_begin0
	.quad	Lset272
.set Lset273, Ltmp293-Lfunc_begin0
	.quad	Lset273
	.short	1                               ; Loc expr size
	.byte	81                              ; DW_OP_reg1
	.quad	0
	.quad	0
Ldebug_loc29:
.set Lset274, Ltmp148-Lfunc_begin0
	.quad	Lset274
.set Lset275, Ltmp175-Lfunc_begin0
	.quad	Lset275
	.short	2                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	159                             ; DW_OP_stack_value
.set Lset276, Ltmp177-Lfunc_begin0
	.quad	Lset276
.set Lset277, Ltmp193-Lfunc_begin0
	.quad	Lset277
	.short	2                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	159                             ; DW_OP_stack_value
.set Lset278, Ltmp193-Lfunc_begin0
	.quad	Lset278
.set Lset279, Ltmp194-Lfunc_begin0
	.quad	Lset279
	.short	2                               ; Loc expr size
	.byte	49                              ; DW_OP_lit1
	.byte	159                             ; DW_OP_stack_value
.set Lset280, Ltmp194-Lfunc_begin0
	.quad	Lset280
.set Lset281, Ltmp195-Lfunc_begin0
	.quad	Lset281
	.short	2                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	159                             ; DW_OP_stack_value
.set Lset282, Ltmp195-Lfunc_begin0
	.quad	Lset282
.set Lset283, Ltmp196-Lfunc_begin0
	.quad	Lset283
	.short	2                               ; Loc expr size
	.byte	50                              ; DW_OP_lit2
	.byte	159                             ; DW_OP_stack_value
.set Lset284, Ltmp196-Lfunc_begin0
	.quad	Lset284
.set Lset285, Ltmp199-Lfunc_begin0
	.quad	Lset285
	.short	2                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	159                             ; DW_OP_stack_value
.set Lset286, Ltmp199-Lfunc_begin0
	.quad	Lset286
.set Lset287, Ltmp200-Lfunc_begin0
	.quad	Lset287
	.short	2                               ; Loc expr size
	.byte	49                              ; DW_OP_lit1
	.byte	159                             ; DW_OP_stack_value
.set Lset288, Ltmp200-Lfunc_begin0
	.quad	Lset288
.set Lset289, Ltmp202-Lfunc_begin0
	.quad	Lset289
	.short	2                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	159                             ; DW_OP_stack_value
.set Lset290, Ltmp202-Lfunc_begin0
	.quad	Lset290
.set Lset291, Ltmp231-Lfunc_begin0
	.quad	Lset291
	.short	3                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	228                             ; 100
	.byte	0                               ; 
.set Lset292, Ltmp232-Lfunc_begin0
	.quad	Lset292
.set Lset293, Ltmp291-Lfunc_begin0
	.quad	Lset293
	.short	3                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	228                             ; 100
	.byte	0                               ; 
.set Lset294, Ltmp291-Lfunc_begin0
	.quad	Lset294
.set Lset295, Ltmp293-Lfunc_begin0
	.quad	Lset295
	.short	2                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc30:
.set Lset296, Ltmp148-Lfunc_begin0
	.quad	Lset296
.set Lset297, Ltmp153-Lfunc_begin0
	.quad	Lset297
	.short	3                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	32                              ; DW_OP_not
	.byte	159                             ; DW_OP_stack_value
.set Lset298, Ltmp168-Lfunc_begin0
	.quad	Lset298
.set Lset299, Ltmp175-Lfunc_begin0
	.quad	Lset299
	.short	3                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	32                              ; DW_OP_not
	.byte	159                             ; DW_OP_stack_value
.set Lset300, Ltmp188-Lfunc_begin0
	.quad	Lset300
.set Lset301, Ltmp190-Lfunc_begin0
	.quad	Lset301
	.short	1                               ; Loc expr size
	.byte	97                              ; DW_OP_reg17
.set Lset302, Ltmp190-Lfunc_begin0
	.quad	Lset302
.set Lset303, Ltmp231-Lfunc_begin0
	.quad	Lset303
	.short	3                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	32                              ; DW_OP_not
	.byte	159                             ; DW_OP_stack_value
.set Lset304, Ltmp232-Lfunc_begin0
	.quad	Lset304
.set Lset305, Ltmp238-Lfunc_begin0
	.quad	Lset305
	.short	1                               ; Loc expr size
	.byte	97                              ; DW_OP_reg17
.set Lset306, Ltmp290-Lfunc_begin0
	.quad	Lset306
.set Lset307, Ltmp293-Lfunc_begin0
	.quad	Lset307
	.short	3                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	32                              ; DW_OP_not
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc31:
.set Lset308, Ltmp148-Lfunc_begin0
	.quad	Lset308
.set Lset309, Ltmp175-Lfunc_begin0
	.quad	Lset309
	.short	3                               ; Loc expr size
	.byte	16                              ; DW_OP_constu
	.byte	64                              ; 64
	.byte	159                             ; DW_OP_stack_value
.set Lset310, Ltmp177-Lfunc_begin0
	.quad	Lset310
.set Lset311, Ltmp203-Lfunc_begin0
	.quad	Lset311
	.short	3                               ; Loc expr size
	.byte	16                              ; DW_OP_constu
	.byte	64                              ; 64
	.byte	159                             ; DW_OP_stack_value
.set Lset312, Ltmp203-Lfunc_begin0
	.quad	Lset312
.set Lset313, Ltmp204-Lfunc_begin0
	.quad	Lset313
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
.set Lset314, Ltmp204-Lfunc_begin0
	.quad	Lset314
.set Lset315, Ltmp231-Lfunc_begin0
	.quad	Lset315
	.short	2                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	32                              ; 32
.set Lset316, Ltmp232-Lfunc_begin0
	.quad	Lset316
.set Lset317, Ltmp234-Lfunc_begin0
	.quad	Lset317
	.short	2                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	32                              ; 32
.set Lset318, Ltmp234-Lfunc_begin0
	.quad	Lset318
.set Lset319, Ltmp235-Lfunc_begin0
	.quad	Lset319
	.short	1                               ; Loc expr size
	.byte	92                              ; DW_OP_reg12
.set Lset320, Ltmp235-Lfunc_begin0
	.quad	Lset320
.set Lset321, Ltmp291-Lfunc_begin0
	.quad	Lset321
	.short	2                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	32                              ; 32
.set Lset322, Ltmp291-Lfunc_begin0
	.quad	Lset322
.set Lset323, Ltmp293-Lfunc_begin0
	.quad	Lset323
	.short	3                               ; Loc expr size
	.byte	16                              ; DW_OP_constu
	.byte	64                              ; 64
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc32:
.set Lset324, Ltmp232-Lfunc_begin0
	.quad	Lset324
.set Lset325, Ltmp233-Lfunc_begin0
	.quad	Lset325
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
.set Lset326, Ltmp233-Lfunc_begin0
	.quad	Lset326
.set Lset327, Ltmp234-Lfunc_begin0
	.quad	Lset327
	.short	15                              ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	32                              ; 32
	.byte	6                               ; DW_OP_deref
	.byte	35                              ; DW_OP_plus_uconst
	.byte	255                             ; 17592186044415
	.byte	255                             ; 
	.byte	255                             ; 
	.byte	255                             ; 
	.byte	255                             ; 
	.byte	255                             ; 
	.byte	3                               ; 
	.byte	122                             ; DW_OP_breg10
	.byte	0                               ; 0
	.byte	26                              ; DW_OP_and
	.byte	159                             ; DW_OP_stack_value
.set Lset328, Ltmp234-Lfunc_begin0
	.quad	Lset328
.set Lset329, Ltmp235-Lfunc_begin0
	.quad	Lset329
	.short	14                              ; Loc expr size
	.byte	124                             ; DW_OP_breg12
	.byte	0                               ; 0
	.byte	35                              ; DW_OP_plus_uconst
	.byte	255                             ; 17592186044415
	.byte	255                             ; 
	.byte	255                             ; 
	.byte	255                             ; 
	.byte	255                             ; 
	.byte	255                             ; 
	.byte	3                               ; 
	.byte	122                             ; DW_OP_breg10
	.byte	0                               ; 0
	.byte	26                              ; DW_OP_and
	.byte	159                             ; DW_OP_stack_value
.set Lset330, Ltmp235-Lfunc_begin0
	.quad	Lset330
.set Lset331, Ltmp236-Lfunc_begin0
	.quad	Lset331
	.short	6                               ; Loc expr size
	.byte	124                             ; DW_OP_breg12
	.byte	0                               ; 0
	.byte	122                             ; DW_OP_breg10
	.byte	0                               ; 0
	.byte	26                              ; DW_OP_and
	.byte	159                             ; DW_OP_stack_value
.set Lset332, Ltmp236-Lfunc_begin0
	.quad	Lset332
.set Lset333, Ltmp290-Lfunc_begin0
	.quad	Lset333
	.short	1                               ; Loc expr size
	.byte	103                             ; DW_OP_reg23
	.quad	0
	.quad	0
Ldebug_loc33:
.set Lset334, Ltmp148-Lfunc_begin0
	.quad	Lset334
.set Lset335, Ltmp238-Lfunc_begin0
	.quad	Lset335
	.short	1                               ; Loc expr size
	.byte	81                              ; DW_OP_reg1
.set Lset336, Ltmp238-Lfunc_begin0
	.quad	Lset336
.set Lset337, Ltmp239-Lfunc_begin0
	.quad	Lset337
	.short	2                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	40                              ; 40
.set Lset338, Ltmp239-Lfunc_begin0
	.quad	Lset338
.set Lset339, Ltmp243-Lfunc_begin0
	.quad	Lset339
	.short	1                               ; Loc expr size
	.byte	81                              ; DW_OP_reg1
.set Lset340, Ltmp243-Lfunc_begin0
	.quad	Lset340
.set Lset341, Ltmp290-Lfunc_begin0
	.quad	Lset341
	.short	2                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	40                              ; 40
.set Lset342, Ltmp290-Lfunc_begin0
	.quad	Lset342
.set Lset343, Ltmp294-Lfunc_begin0
	.quad	Lset343
	.short	1                               ; Loc expr size
	.byte	81                              ; DW_OP_reg1
	.quad	0
	.quad	0
Ldebug_loc34:
.set Lset344, Ltmp151-Lfunc_begin0
	.quad	Lset344
.set Lset345, Ltmp168-Lfunc_begin0
	.quad	Lset345
	.short	1                               ; Loc expr size
	.byte	96                              ; DW_OP_reg16
.set Lset346, Ltmp169-Lfunc_begin0
	.quad	Lset346
.set Lset347, Ltmp174-Lfunc_begin0
	.quad	Lset347
	.short	1                               ; Loc expr size
	.byte	96                              ; DW_OP_reg16
.set Lset348, Ltmp177-Lfunc_begin0
	.quad	Lset348
.set Lset349, Ltmp237-Lfunc_begin0
	.quad	Lset349
	.short	1                               ; Loc expr size
	.byte	96                              ; DW_OP_reg16
.set Lset350, Ltmp237-Lfunc_begin0
	.quad	Lset350
.set Lset351, Ltmp290-Lfunc_begin0
	.quad	Lset351
	.short	2                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	24                              ; 24
.set Lset352, Ltmp290-Lfunc_begin0
	.quad	Lset352
.set Lset353, Ltmp293-Lfunc_begin0
	.quad	Lset353
	.short	1                               ; Loc expr size
	.byte	96                              ; DW_OP_reg16
	.quad	0
	.quad	0
Ldebug_loc35:
.set Lset354, Ltmp152-Lfunc_begin0
	.quad	Lset354
.set Lset355, Ltmp153-Lfunc_begin0
	.quad	Lset355
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
.set Lset356, Ltmp153-Lfunc_begin0
	.quad	Lset356
.set Lset357, Ltmp168-Lfunc_begin0
	.quad	Lset357
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
.set Lset358, Ltmp173-Lfunc_begin0
	.quad	Lset358
.set Lset359, Ltmp174-Lfunc_begin0
	.quad	Lset359
	.short	2                               ; Loc expr size
	.byte	52                              ; DW_OP_lit4
	.byte	159                             ; DW_OP_stack_value
.set Lset360, Ltmp177-Lfunc_begin0
	.quad	Lset360
.set Lset361, Ltmp190-Lfunc_begin0
	.quad	Lset361
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
.set Lset362, Ltmp191-Lfunc_begin0
	.quad	Lset362
.set Lset363, Ltmp192-Lfunc_begin0
	.quad	Lset363
	.short	2                               ; Loc expr size
	.byte	50                              ; DW_OP_lit2
	.byte	159                             ; DW_OP_stack_value
.set Lset364, Ltmp193-Lfunc_begin0
	.quad	Lset364
.set Lset365, Ltmp194-Lfunc_begin0
	.quad	Lset365
	.short	2                               ; Loc expr size
	.byte	50                              ; DW_OP_lit2
	.byte	159                             ; DW_OP_stack_value
.set Lset366, Ltmp195-Lfunc_begin0
	.quad	Lset366
.set Lset367, Ltmp196-Lfunc_begin0
	.quad	Lset367
	.short	2                               ; Loc expr size
	.byte	50                              ; DW_OP_lit2
	.byte	159                             ; DW_OP_stack_value
.set Lset368, Ltmp199-Lfunc_begin0
	.quad	Lset368
.set Lset369, Ltmp200-Lfunc_begin0
	.quad	Lset369
	.short	2                               ; Loc expr size
	.byte	49                              ; DW_OP_lit1
	.byte	159                             ; DW_OP_stack_value
.set Lset370, Ltmp202-Lfunc_begin0
	.quad	Lset370
.set Lset371, Ltmp231-Lfunc_begin0
	.quad	Lset371
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
.set Lset372, Ltmp232-Lfunc_begin0
	.quad	Lset372
.set Lset373, Ltmp238-Lfunc_begin0
	.quad	Lset373
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
.set Lset374, Ltmp290-Lfunc_begin0
	.quad	Lset374
.set Lset375, Ltmp291-Lfunc_begin0
	.quad	Lset375
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
.set Lset376, Ltmp291-Lfunc_begin0
	.quad	Lset376
.set Lset377, Ltmp293-Lfunc_begin0
	.quad	Lset377
	.short	2                               ; Loc expr size
	.byte	50                              ; DW_OP_lit2
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc36:
.set Lset378, Ltmp154-Lfunc_begin0
	.quad	Lset378
.set Lset379, Ltmp168-Lfunc_begin0
	.quad	Lset379
	.short	2                               ; Loc expr size
	.byte	55                              ; DW_OP_lit7
	.byte	159                             ; DW_OP_stack_value
.set Lset380, Ltmp177-Lfunc_begin0
	.quad	Lset380
.set Lset381, Ltmp187-Lfunc_begin0
	.quad	Lset381
	.short	2                               ; Loc expr size
	.byte	55                              ; DW_OP_lit7
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc37:
.set Lset382, Ltmp154-Lfunc_begin0
	.quad	Lset382
.set Lset383, Ltmp156-Lfunc_begin0
	.quad	Lset383
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
.set Lset384, Ltmp156-Lfunc_begin0
	.quad	Lset384
.set Lset385, Ltmp157-Lfunc_begin0
	.quad	Lset385
	.short	1                               ; Loc expr size
	.byte	92                              ; DW_OP_reg12
.set Lset386, Ltmp157-Lfunc_begin0
	.quad	Lset386
.set Lset387, Ltmp168-Lfunc_begin0
	.quad	Lset387
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
.set Lset388, Ltmp177-Lfunc_begin0
	.quad	Lset388
.set Lset389, Ltmp180-Lfunc_begin0
	.quad	Lset389
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
.set Lset390, Ltmp181-Lfunc_begin0
	.quad	Lset390
.set Lset391, Ltmp184-Lfunc_begin0
	.quad	Lset391
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
.set Lset392, Ltmp185-Lfunc_begin0
	.quad	Lset392
.set Lset393, Ltmp187-Lfunc_begin0
	.quad	Lset393
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
	.quad	0
	.quad	0
Ldebug_loc38:
.set Lset394, Ltmp154-Lfunc_begin0
	.quad	Lset394
.set Lset395, Ltmp162-Lfunc_begin0
	.quad	Lset395
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
.set Lset396, Ltmp162-Lfunc_begin0
	.quad	Lset396
.set Lset397, Ltmp163-Lfunc_begin0
	.quad	Lset397
	.short	5                               ; Loc expr size
	.byte	120                             ; DW_OP_breg8
	.byte	0                               ; 0
	.byte	49                              ; DW_OP_lit1
	.byte	36                              ; DW_OP_shl
	.byte	159                             ; DW_OP_stack_value
.set Lset398, Ltmp165-Lfunc_begin0
	.quad	Lset398
.set Lset399, Ltmp166-Lfunc_begin0
	.quad	Lset399
	.short	5                               ; Loc expr size
	.byte	125                             ; DW_OP_breg13
	.byte	0                               ; 0
	.byte	49                              ; DW_OP_lit1
	.byte	36                              ; DW_OP_shl
	.byte	159                             ; DW_OP_stack_value
.set Lset400, Ltmp177-Lfunc_begin0
	.quad	Lset400
.set Lset401, Ltmp187-Lfunc_begin0
	.quad	Lset401
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
	.quad	0
	.quad	0
Ldebug_loc39:
.set Lset402, Ltmp155-Lfunc_begin0
	.quad	Lset402
.set Lset403, Ltmp160-Lfunc_begin0
	.quad	Lset403
	.short	1                               ; Loc expr size
	.byte	91                              ; DW_OP_reg11
.set Lset404, Ltmp181-Lfunc_begin0
	.quad	Lset404
.set Lset405, Ltmp182-Lfunc_begin0
	.quad	Lset405
	.short	1                               ; Loc expr size
	.byte	91                              ; DW_OP_reg11
.set Lset406, Ltmp185-Lfunc_begin0
	.quad	Lset406
.set Lset407, Ltmp186-Lfunc_begin0
	.quad	Lset407
	.short	1                               ; Loc expr size
	.byte	91                              ; DW_OP_reg11
	.quad	0
	.quad	0
Ldebug_loc40:
.set Lset408, Ltmp157-Lfunc_begin0
	.quad	Lset408
.set Lset409, Ltmp162-Lfunc_begin0
	.quad	Lset409
	.short	3                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	32                              ; DW_OP_not
	.byte	159                             ; DW_OP_stack_value
.set Lset410, Ltmp162-Lfunc_begin0
	.quad	Lset410
.set Lset411, Ltmp167-Lfunc_begin0
	.quad	Lset411
	.short	1                               ; Loc expr size
	.byte	91                              ; DW_OP_reg11
.set Lset412, Ltmp177-Lfunc_begin0
	.quad	Lset412
.set Lset413, Ltmp187-Lfunc_begin0
	.quad	Lset413
	.short	3                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	32                              ; DW_OP_not
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc41:
.set Lset414, Ltmp173-Lfunc_begin0
	.quad	Lset414
.set Lset415, Ltmp174-Lfunc_begin0
	.quad	Lset415
	.short	2                               ; Loc expr size
	.byte	52                              ; DW_OP_lit4
	.byte	159                             ; DW_OP_stack_value
.set Lset416, Ltmp189-Lfunc_begin0
	.quad	Lset416
.set Lset417, Ltmp190-Lfunc_begin0
	.quad	Lset417
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
.set Lset418, Ltmp191-Lfunc_begin0
	.quad	Lset418
.set Lset419, Ltmp192-Lfunc_begin0
	.quad	Lset419
	.short	2                               ; Loc expr size
	.byte	50                              ; DW_OP_lit2
	.byte	159                             ; DW_OP_stack_value
.set Lset420, Ltmp193-Lfunc_begin0
	.quad	Lset420
.set Lset421, Ltmp194-Lfunc_begin0
	.quad	Lset421
	.short	2                               ; Loc expr size
	.byte	52                              ; DW_OP_lit4
	.byte	159                             ; DW_OP_stack_value
.set Lset422, Ltmp195-Lfunc_begin0
	.quad	Lset422
.set Lset423, Ltmp196-Lfunc_begin0
	.quad	Lset423
	.short	2                               ; Loc expr size
	.byte	52                              ; DW_OP_lit4
	.byte	159                             ; DW_OP_stack_value
.set Lset424, Ltmp199-Lfunc_begin0
	.quad	Lset424
.set Lset425, Ltmp200-Lfunc_begin0
	.quad	Lset425
	.short	2                               ; Loc expr size
	.byte	52                              ; DW_OP_lit4
	.byte	159                             ; DW_OP_stack_value
.set Lset426, Ltmp202-Lfunc_begin0
	.quad	Lset426
.set Lset427, Ltmp238-Lfunc_begin0
	.quad	Lset427
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
.set Lset428, Ltmp290-Lfunc_begin0
	.quad	Lset428
.set Lset429, Ltmp291-Lfunc_begin0
	.quad	Lset429
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
	.quad	0
	.quad	0
Ldebug_loc42:
.set Lset430, Ltmp205-Lfunc_begin0
	.quad	Lset430
.set Lset431, Ltmp215-Lfunc_begin0
	.quad	Lset431
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
.set Lset432, Ltmp215-Lfunc_begin0
	.quad	Lset432
.set Lset433, Ltmp216-Lfunc_begin0
	.quad	Lset433
	.short	5                               ; Loc expr size
	.byte	121                             ; DW_OP_breg9
	.byte	0                               ; 0
	.byte	49                              ; DW_OP_lit1
	.byte	36                              ; DW_OP_shl
	.byte	159                             ; DW_OP_stack_value
.set Lset434, Ltmp218-Lfunc_begin0
	.quad	Lset434
.set Lset435, Ltmp219-Lfunc_begin0
	.quad	Lset435
	.short	5                               ; Loc expr size
	.byte	125                             ; DW_OP_breg13
	.byte	0                               ; 0
	.byte	49                              ; DW_OP_lit1
	.byte	36                              ; DW_OP_shl
	.byte	159                             ; DW_OP_stack_value
.set Lset436, Ltmp220-Lfunc_begin0
	.quad	Lset436
.set Lset437, Ltmp231-Lfunc_begin0
	.quad	Lset437
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
	.quad	0
	.quad	0
Ldebug_loc43:
.set Lset438, Ltmp210-Lfunc_begin0
	.quad	Lset438
.set Lset439, Ltmp220-Lfunc_begin0
	.quad	Lset439
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
.set Lset440, Ltmp221-Lfunc_begin0
	.quad	Lset440
.set Lset441, Ltmp226-Lfunc_begin0
	.quad	Lset441
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
.set Lset442, Ltmp227-Lfunc_begin0
	.quad	Lset442
.set Lset443, Ltmp230-Lfunc_begin0
	.quad	Lset443
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
	.quad	0
	.quad	0
Ldebug_loc44:
.set Lset444, Ltmp206-Lfunc_begin0
	.quad	Lset444
.set Lset445, Ltmp213-Lfunc_begin0
	.quad	Lset445
	.short	1                               ; Loc expr size
	.byte	91                              ; DW_OP_reg11
.set Lset446, Ltmp220-Lfunc_begin0
	.quad	Lset446
.set Lset447, Ltmp222-Lfunc_begin0
	.quad	Lset447
	.short	1                               ; Loc expr size
	.byte	91                              ; DW_OP_reg11
.set Lset448, Ltmp223-Lfunc_begin0
	.quad	Lset448
.set Lset449, Ltmp225-Lfunc_begin0
	.quad	Lset449
	.short	1                               ; Loc expr size
	.byte	91                              ; DW_OP_reg11
.set Lset450, Ltmp227-Lfunc_begin0
	.quad	Lset450
.set Lset451, Ltmp229-Lfunc_begin0
	.quad	Lset451
	.short	1                               ; Loc expr size
	.byte	91                              ; DW_OP_reg11
	.quad	0
	.quad	0
Ldebug_loc45:
.set Lset452, Ltmp207-Lfunc_begin0
	.quad	Lset452
.set Lset453, Ltmp215-Lfunc_begin0
	.quad	Lset453
	.short	3                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	32                              ; DW_OP_not
	.byte	159                             ; DW_OP_stack_value
.set Lset454, Ltmp215-Lfunc_begin0
	.quad	Lset454
.set Lset455, Ltmp220-Lfunc_begin0
	.quad	Lset455
	.short	1                               ; Loc expr size
	.byte	91                              ; DW_OP_reg11
.set Lset456, Ltmp220-Lfunc_begin0
	.quad	Lset456
.set Lset457, Ltmp231-Lfunc_begin0
	.quad	Lset457
	.short	3                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	32                              ; DW_OP_not
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc46:
.set Lset458, Ltmp244-Lfunc_begin0
	.quad	Lset458
.set Lset459, Ltmp245-Lfunc_begin0
	.quad	Lset459
	.short	11                              ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	216                             ; 88
	.byte	0                               ; 
	.byte	148                             ; DW_OP_deref_size
	.byte	8                               ; 
	.byte	16                              ; DW_OP_constu
	.byte	58                              ; 58
	.byte	37                              ; DW_OP_shr
	.byte	79                              ; DW_OP_lit31
	.byte	26                              ; DW_OP_and
	.byte	159                             ; DW_OP_stack_value
.set Lset460, Ltmp259-Lfunc_begin0
	.quad	Lset460
.set Lset461, Ltmp282-Lfunc_begin0
	.quad	Lset461
	.short	11                              ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	216                             ; 88
	.byte	0                               ; 
	.byte	148                             ; DW_OP_deref_size
	.byte	8                               ; 
	.byte	16                              ; DW_OP_constu
	.byte	58                              ; 58
	.byte	37                              ; DW_OP_shr
	.byte	79                              ; DW_OP_lit31
	.byte	26                              ; DW_OP_and
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc47:
.set Lset462, Ltmp244-Lfunc_begin0
	.quad	Lset462
.set Lset463, Ltmp245-Lfunc_begin0
	.quad	Lset463
	.short	3                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	216                             ; 88
	.byte	0                               ; 
.set Lset464, Ltmp259-Lfunc_begin0
	.quad	Lset464
.set Lset465, Ltmp282-Lfunc_begin0
	.quad	Lset465
	.short	3                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	216                             ; 88
	.byte	0                               ; 
	.quad	0
	.quad	0
Ldebug_loc48:
.set Lset466, Ltmp244-Lfunc_begin0
	.quad	Lset466
.set Lset467, Ltmp245-Lfunc_begin0
	.quad	Lset467
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
.set Lset468, Ltmp259-Lfunc_begin0
	.quad	Lset468
.set Lset469, Ltmp270-Lfunc_begin0
	.quad	Lset469
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
.set Lset470, Ltmp271-Lfunc_begin0
	.quad	Lset470
.set Lset471, Ltmp276-Lfunc_begin0
	.quad	Lset471
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
.set Lset472, Ltmp278-Lfunc_begin0
	.quad	Lset472
.set Lset473, Ltmp282-Lfunc_begin0
	.quad	Lset473
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
	.quad	0
	.quad	0
Ldebug_loc49:
.set Lset474, Ltmp244-Lfunc_begin0
	.quad	Lset474
.set Lset475, Ltmp248-Lfunc_begin0
	.quad	Lset475
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
.set Lset476, Ltmp258-Lfunc_begin0
	.quad	Lset476
.set Lset477, Ltmp263-Lfunc_begin0
	.quad	Lset477
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
.set Lset478, Ltmp271-Lfunc_begin0
	.quad	Lset478
.set Lset479, Ltmp276-Lfunc_begin0
	.quad	Lset479
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
	.quad	0
	.quad	0
Ldebug_loc50:
.set Lset480, Ltmp252-Lfunc_begin0
	.quad	Lset480
.set Lset481, Ltmp253-Lfunc_begin0
	.quad	Lset481
	.short	2                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	159                             ; DW_OP_stack_value
.set Lset482, Ltmp253-Lfunc_begin0
	.quad	Lset482
.set Lset483, Ltmp256-Lfunc_begin0
	.quad	Lset483
	.short	3                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	232                             ; 104
	.byte	0                               ; 
.set Lset484, Ltmp256-Lfunc_begin0
	.quad	Lset484
.set Lset485, Ltmp257-Lfunc_begin0
	.quad	Lset485
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
	.quad	0
	.quad	0
Ldebug_loc51:
.set Lset486, Ltmp252-Lfunc_begin0
	.quad	Lset486
.set Lset487, Ltmp255-Lfunc_begin0
	.quad	Lset487
	.short	1                               ; Loc expr size
	.byte	81                              ; DW_OP_reg1
	.quad	0
	.quad	0
Ldebug_loc52:
.set Lset488, Ltmp266-Lfunc_begin0
	.quad	Lset488
.set Lset489, Ltmp271-Lfunc_begin0
	.quad	Lset489
	.short	3                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	192                             ; 64
	.byte	0                               ; 
.set Lset490, Ltmp278-Lfunc_begin0
	.quad	Lset490
.set Lset491, Ltmp282-Lfunc_begin0
	.quad	Lset491
	.short	3                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	192                             ; 64
	.byte	0                               ; 
	.quad	0
	.quad	0
Ldebug_loc53:
.set Lset492, Ltmp273-Lfunc_begin0
	.quad	Lset492
.set Lset493, Ltmp275-Lfunc_begin0
	.quad	Lset493
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
.set Lset494, Ltmp275-Lfunc_begin0
	.quad	Lset494
.set Lset495, Ltmp277-Lfunc_begin0
	.quad	Lset495
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
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
	.byte	11                              ; DW_TAG_lexical_block
	.byte	1                               ; DW_CHILDREN_yes
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	10                              ; Abbreviation Code
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
	.byte	11                              ; Abbreviation Code
	.byte	15                              ; DW_TAG_pointer_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	12                              ; Abbreviation Code
	.byte	38                              ; DW_TAG_const_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	13                              ; Abbreviation Code
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
	.byte	16                              ; Abbreviation Code
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
	.byte	17                              ; Abbreviation Code
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
	.byte	18                              ; Abbreviation Code
	.byte	5                               ; DW_TAG_formal_parameter
	.byte	0                               ; DW_CHILDREN_no
	.byte	2                               ; DW_AT_location
	.byte	23                              ; DW_FORM_sec_offset
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	19                              ; Abbreviation Code
	.byte	52                              ; DW_TAG_variable
	.byte	0                               ; DW_CHILDREN_no
	.byte	2                               ; DW_AT_location
	.byte	23                              ; DW_FORM_sec_offset
	.byte	49                              ; DW_AT_abstract_origin
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
	.byte	28                              ; DW_AT_const_value
	.byte	15                              ; DW_FORM_udata
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	22                              ; Abbreviation Code
	.byte	11                              ; DW_TAG_lexical_block
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	23                              ; Abbreviation Code
	.byte	11                              ; DW_TAG_lexical_block
	.byte	1                               ; DW_CHILDREN_yes
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	24                              ; Abbreviation Code
	.byte	52                              ; DW_TAG_variable
	.byte	0                               ; DW_CHILDREN_no
	.byte	2                               ; DW_AT_location
	.byte	24                              ; DW_FORM_exprloc
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	25                              ; Abbreviation Code
	.byte	5                               ; DW_TAG_formal_parameter
	.byte	0                               ; DW_CHILDREN_no
	.byte	2                               ; DW_AT_location
	.byte	24                              ; DW_FORM_exprloc
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	26                              ; Abbreviation Code
	.byte	1                               ; DW_TAG_array_type
	.byte	1                               ; DW_CHILDREN_yes
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	27                              ; Abbreviation Code
	.byte	33                              ; DW_TAG_subrange_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	55                              ; DW_AT_count
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	28                              ; Abbreviation Code
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
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	31                              ; Abbreviation Code
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
	.byte	32                              ; Abbreviation Code
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
.set Lset496, Ldebug_info_end0-Ldebug_info_start0 ; Length of Unit
	.long	Lset496
Ldebug_info_start0:
	.short	4                               ; DWARF version number
.set Lset497, Lsection_abbrev-Lsection_abbrev ; Offset Into Abbrev. Section
	.long	Lset497
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x843 DW_TAG_compile_unit
	.long	0                               ; DW_AT_producer
	.short	12                              ; DW_AT_language
	.long	46                              ; DW_AT_name
	.long	53                              ; DW_AT_LLVM_sysroot
	.long	105                             ; DW_AT_APPLE_sdk
.set Lset498, Lline_table_start0-Lsection_line ; DW_AT_stmt_list
	.long	Lset498
	.long	116                             ; DW_AT_comp_dir
                                        ; DW_AT_APPLE_optimized
	.quad	Lfunc_begin0                    ; DW_AT_low_pc
.set Lset499, Lfunc_end1-Lfunc_begin0   ; DW_AT_high_pc
	.long	Lset499
	.byte	2                               ; Abbrev [2] 0x32:0xb DW_TAG_typedef
	.long	61                              ; DW_AT_type
	.long	170                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	31                              ; DW_AT_decl_line
	.byte	3                               ; Abbrev [3] 0x3d:0x7 DW_TAG_base_type
	.long	179                             ; DW_AT_name
	.byte	7                               ; DW_AT_encoding
	.byte	8                               ; DW_AT_byte_size
	.byte	2                               ; Abbrev [2] 0x44:0xb DW_TAG_typedef
	.long	79                              ; DW_AT_type
	.long	198                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	31                              ; DW_AT_decl_line
	.byte	3                               ; Abbrev [3] 0x4f:0x7 DW_TAG_base_type
	.long	207                             ; DW_AT_name
	.byte	7                               ; DW_AT_encoding
	.byte	4                               ; DW_AT_byte_size
	.byte	4                               ; Abbrev [4] 0x56:0x5 DW_TAG_pointer_type
	.long	91                              ; DW_AT_type
	.byte	5                               ; Abbrev [5] 0x5b:0x5 DW_TAG_const_type
	.long	96                              ; DW_AT_type
	.byte	2                               ; Abbrev [2] 0x60:0xb DW_TAG_typedef
	.long	107                             ; DW_AT_type
	.long	220                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	31                              ; DW_AT_decl_line
	.byte	3                               ; Abbrev [3] 0x6b:0x7 DW_TAG_base_type
	.long	228                             ; DW_AT_name
	.byte	8                               ; DW_AT_encoding
	.byte	1                               ; DW_AT_byte_size
	.byte	4                               ; Abbrev [4] 0x72:0x5 DW_TAG_pointer_type
	.long	96                              ; DW_AT_type
	.byte	6                               ; Abbrev [6] 0x77:0x44 DW_TAG_subprogram
	.long	242                             ; DW_AT_name
	.byte	5                               ; DW_AT_decl_file
	.byte	65                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	50                              ; DW_AT_type
                                        ; DW_AT_APPLE_optimized
	.byte	1                               ; DW_AT_inline
	.byte	7                               ; Abbrev [7] 0x83:0xb DW_TAG_formal_parameter
	.long	258                             ; DW_AT_name
	.byte	5                               ; DW_AT_decl_file
	.byte	65                              ; DW_AT_decl_line
	.long	68                              ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0x8e:0xb DW_TAG_formal_parameter
	.long	262                             ; DW_AT_name
	.byte	5                               ; DW_AT_decl_file
	.byte	65                              ; DW_AT_decl_line
	.long	68                              ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0x99:0xb DW_TAG_formal_parameter
	.long	264                             ; DW_AT_name
	.byte	5                               ; DW_AT_decl_file
	.byte	65                              ; DW_AT_decl_line
	.long	68                              ; DW_AT_type
	.byte	8                               ; Abbrev [8] 0xa4:0xb DW_TAG_variable
	.long	273                             ; DW_AT_name
	.byte	5                               ; DW_AT_decl_file
	.byte	66                              ; DW_AT_decl_line
	.long	68                              ; DW_AT_type
	.byte	8                               ; Abbrev [8] 0xaf:0xb DW_TAG_variable
	.long	278                             ; DW_AT_name
	.byte	5                               ; DW_AT_decl_file
	.byte	69                              ; DW_AT_decl_line
	.long	50                              ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0xbb:0x53 DW_TAG_subprogram
	.long	282                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	18                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	270                             ; DW_AT_type
                                        ; DW_AT_APPLE_optimized
	.byte	1                               ; DW_AT_inline
	.byte	7                               ; Abbrev [7] 0xc7:0xb DW_TAG_formal_parameter
	.long	258                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	18                              ; DW_AT_decl_line
	.long	270                             ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0xd2:0xb DW_TAG_formal_parameter
	.long	309                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	18                              ; DW_AT_decl_line
	.long	50                              ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0xdd:0xb DW_TAG_formal_parameter
	.long	317                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	18                              ; DW_AT_decl_line
	.long	68                              ; DW_AT_type
	.byte	8                               ; Abbrev [8] 0xe8:0xb DW_TAG_variable
	.long	325                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	19                              ; DW_AT_decl_line
	.long	68                              ; DW_AT_type
	.byte	9                               ; Abbrev [9] 0xf3:0x1a DW_TAG_lexical_block
	.byte	8                               ; Abbrev [8] 0xf4:0xb DW_TAG_variable
	.long	331                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	34                              ; DW_AT_decl_line
	.long	270                             ; DW_AT_type
	.byte	9                               ; Abbrev [9] 0xff:0xd DW_TAG_lexical_block
	.byte	8                               ; Abbrev [8] 0x100:0xb DW_TAG_variable
	.long	334                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	36                              ; DW_AT_decl_line
	.long	270                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x10e:0xb DW_TAG_typedef
	.long	281                             ; DW_AT_type
	.long	291                             ; DW_AT_name
	.byte	6                               ; DW_AT_decl_file
	.byte	30                              ; DW_AT_decl_line
	.byte	3                               ; Abbrev [3] 0x119:0x7 DW_TAG_base_type
	.long	299                             ; DW_AT_name
	.byte	5                               ; DW_AT_encoding
	.byte	8                               ; DW_AT_byte_size
	.byte	10                              ; Abbrev [10] 0x120:0x2a DW_TAG_subprogram
	.long	337                             ; DW_AT_name
	.byte	5                               ; DW_AT_decl_file
	.byte	37                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_APPLE_optimized
	.byte	1                               ; DW_AT_inline
	.byte	7                               ; Abbrev [7] 0x128:0xb DW_TAG_formal_parameter
	.long	347                             ; DW_AT_name
	.byte	5                               ; DW_AT_decl_file
	.byte	37                              ; DW_AT_decl_line
	.long	330                             ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0x133:0xb DW_TAG_formal_parameter
	.long	351                             ; DW_AT_name
	.byte	5                               ; DW_AT_decl_file
	.byte	37                              ; DW_AT_decl_line
	.long	68                              ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0x13e:0xb DW_TAG_formal_parameter
	.long	258                             ; DW_AT_name
	.byte	5                               ; DW_AT_decl_file
	.byte	37                              ; DW_AT_decl_line
	.long	270                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	11                              ; Abbrev [11] 0x14a:0x1 DW_TAG_pointer_type
	.byte	6                               ; Abbrev [6] 0x14b:0x39 DW_TAG_subprogram
	.long	358                             ; DW_AT_name
	.byte	5                               ; DW_AT_decl_file
	.byte	31                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	270                             ; DW_AT_type
                                        ; DW_AT_APPLE_optimized
	.byte	1                               ; DW_AT_inline
	.byte	7                               ; Abbrev [7] 0x157:0xb DW_TAG_formal_parameter
	.long	367                             ; DW_AT_name
	.byte	5                               ; DW_AT_decl_file
	.byte	31                              ; DW_AT_decl_line
	.long	388                             ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0x162:0xb DW_TAG_formal_parameter
	.long	351                             ; DW_AT_name
	.byte	5                               ; DW_AT_decl_file
	.byte	31                              ; DW_AT_decl_line
	.long	68                              ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0x16d:0xb DW_TAG_formal_parameter
	.long	371                             ; DW_AT_name
	.byte	5                               ; DW_AT_decl_file
	.byte	31                              ; DW_AT_decl_line
	.long	68                              ; DW_AT_type
	.byte	8                               ; Abbrev [8] 0x178:0xb DW_TAG_variable
	.long	258                             ; DW_AT_name
	.byte	5                               ; DW_AT_decl_file
	.byte	32                              ; DW_AT_decl_line
	.long	270                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x184:0x5 DW_TAG_pointer_type
	.long	393                             ; DW_AT_type
	.byte	12                              ; Abbrev [12] 0x189:0x1 DW_TAG_const_type
	.byte	6                               ; Abbrev [6] 0x18a:0x23 DW_TAG_subprogram
	.long	379                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	11                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	68                              ; DW_AT_type
                                        ; DW_AT_APPLE_optimized
	.byte	1                               ; DW_AT_inline
	.byte	7                               ; Abbrev [7] 0x196:0xb DW_TAG_formal_parameter
	.long	393                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	11                              ; DW_AT_decl_line
	.long	68                              ; DW_AT_type
	.byte	8                               ; Abbrev [8] 0x1a1:0xb DW_TAG_variable
	.long	395                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	13                              ; DW_AT_decl_line
	.long	68                              ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	10                              ; Abbrev [10] 0x1ad:0x42 DW_TAG_subprogram
	.long	399                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	46                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_APPLE_optimized
	.byte	1                               ; DW_AT_inline
	.byte	7                               ; Abbrev [7] 0x1b5:0xb DW_TAG_formal_parameter
	.long	347                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	46                              ; DW_AT_decl_line
	.long	330                             ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0x1c0:0xb DW_TAG_formal_parameter
	.long	412                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	46                              ; DW_AT_decl_line
	.long	50                              ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0x1cb:0xb DW_TAG_formal_parameter
	.long	367                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	46                              ; DW_AT_decl_line
	.long	388                             ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0x1d6:0xb DW_TAG_formal_parameter
	.long	419                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	46                              ; DW_AT_decl_line
	.long	50                              ; DW_AT_type
	.byte	9                               ; Abbrev [9] 0x1e1:0xd DW_TAG_lexical_block
	.byte	8                               ; Abbrev [8] 0x1e2:0xb DW_TAG_variable
	.long	430                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	47                              ; DW_AT_decl_line
	.long	50                              ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	13                              ; Abbrev [13] 0x1ef:0x25b DW_TAG_subprogram
	.quad	Lfunc_begin0                    ; DW_AT_low_pc
.set Lset500, Lfunc_end0-Lfunc_begin0   ; DW_AT_high_pc
	.long	Lset500
	.byte	1                               ; DW_AT_frame_base
	.byte	109
                                        ; DW_AT_call_all_calls
	.long	432                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	53                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_external
                                        ; DW_AT_APPLE_optimized
	.byte	14                              ; Abbrev [14] 0x204:0xf DW_TAG_formal_parameter
.set Lset501, Ldebug_loc0-Lsection_debug_loc ; DW_AT_location
	.long	Lset501
	.long	495                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	53                              ; DW_AT_decl_line
	.long	1720                            ; DW_AT_type
	.byte	14                              ; Abbrev [14] 0x213:0xf DW_TAG_formal_parameter
.set Lset502, Ldebug_loc1-Lsection_debug_loc ; DW_AT_location
	.long	Lset502
	.long	309                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	53                              ; DW_AT_decl_line
	.long	50                              ; DW_AT_type
	.byte	15                              ; Abbrev [15] 0x222:0xf DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	143
	.asciz	"\360"
	.long	468                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	59                              ; DW_AT_decl_line
	.long	1701                            ; DW_AT_type
	.byte	16                              ; Abbrev [16] 0x231:0xf DW_TAG_variable
.set Lset503, Ldebug_loc2-Lsection_debug_loc ; DW_AT_location
	.long	Lset503
	.long	650                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	60                              ; DW_AT_decl_line
	.long	68                              ; DW_AT_type
	.byte	16                              ; Abbrev [16] 0x240:0xf DW_TAG_variable
.set Lset504, Ldebug_loc3-Lsection_debug_loc ; DW_AT_location
	.long	Lset504
	.long	657                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	58                              ; DW_AT_decl_line
	.long	50                              ; DW_AT_type
	.byte	16                              ; Abbrev [16] 0x24f:0xf DW_TAG_variable
.set Lset505, Ldebug_loc4-Lsection_debug_loc ; DW_AT_location
	.long	Lset505
	.long	670                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	57                              ; DW_AT_decl_line
	.long	50                              ; DW_AT_type
	.byte	16                              ; Abbrev [16] 0x25e:0xf DW_TAG_variable
.set Lset506, Ldebug_loc5-Lsection_debug_loc ; DW_AT_location
	.long	Lset506
	.long	677                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	56                              ; DW_AT_decl_line
	.long	50                              ; DW_AT_type
	.byte	16                              ; Abbrev [16] 0x26d:0xf DW_TAG_variable
.set Lset507, Ldebug_loc6-Lsection_debug_loc ; DW_AT_location
	.long	Lset507
	.long	347                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	54                              ; DW_AT_decl_line
	.long	330                             ; DW_AT_type
	.byte	16                              ; Abbrev [16] 0x27c:0xf DW_TAG_variable
.set Lset508, Ldebug_loc7-Lsection_debug_loc ; DW_AT_location
	.long	Lset508
	.long	683                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	55                              ; DW_AT_decl_line
	.long	50                              ; DW_AT_type
	.byte	16                              ; Abbrev [16] 0x28b:0xf DW_TAG_variable
.set Lset509, Ldebug_loc8-Lsection_debug_loc ; DW_AT_location
	.long	Lset509
	.long	694                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	61                              ; DW_AT_decl_line
	.long	68                              ; DW_AT_type
	.byte	16                              ; Abbrev [16] 0x29a:0xf DW_TAG_variable
.set Lset510, Ldebug_loc14-Lsection_debug_loc ; DW_AT_location
	.long	Lset510
	.long	702                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	61                              ; DW_AT_decl_line
	.long	68                              ; DW_AT_type
	.byte	8                               ; Abbrev [8] 0x2a9:0xb DW_TAG_variable
	.long	371                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	100                             ; DW_AT_decl_line
	.long	68                              ; DW_AT_type
	.byte	17                              ; Abbrev [17] 0x2b4:0x3a DW_TAG_inlined_subroutine
	.long	119                             ; DW_AT_abstract_origin
.set Lset511, Ldebug_ranges0-Ldebug_range ; DW_AT_ranges
	.long	Lset511
	.byte	4                               ; DW_AT_call_file
	.byte	96                              ; DW_AT_call_line
	.byte	25                              ; DW_AT_call_column
	.byte	18                              ; Abbrev [18] 0x2c0:0x9 DW_TAG_formal_parameter
.set Lset512, Ldebug_loc10-Lsection_debug_loc ; DW_AT_location
	.long	Lset512
	.long	131                             ; DW_AT_abstract_origin
	.byte	18                              ; Abbrev [18] 0x2c9:0x9 DW_TAG_formal_parameter
.set Lset513, Ldebug_loc11-Lsection_debug_loc ; DW_AT_location
	.long	Lset513
	.long	142                             ; DW_AT_abstract_origin
	.byte	18                              ; Abbrev [18] 0x2d2:0x9 DW_TAG_formal_parameter
.set Lset514, Ldebug_loc9-Lsection_debug_loc ; DW_AT_location
	.long	Lset514
	.long	153                             ; DW_AT_abstract_origin
	.byte	19                              ; Abbrev [19] 0x2db:0x9 DW_TAG_variable
.set Lset515, Ldebug_loc12-Lsection_debug_loc ; DW_AT_location
	.long	Lset515
	.long	164                             ; DW_AT_abstract_origin
	.byte	19                              ; Abbrev [19] 0x2e4:0x9 DW_TAG_variable
.set Lset516, Ldebug_loc13-Lsection_debug_loc ; DW_AT_location
	.long	Lset516
	.long	175                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	20                              ; Abbrev [20] 0x2ee:0x3f DW_TAG_inlined_subroutine
	.long	119                             ; DW_AT_abstract_origin
	.quad	Ltmp56                          ; DW_AT_low_pc
.set Lset517, Ltmp82-Ltmp56             ; DW_AT_high_pc
	.long	Lset517
	.byte	4                               ; DW_AT_call_file
	.byte	83                              ; DW_AT_call_line
	.byte	25                              ; DW_AT_call_column
	.byte	18                              ; Abbrev [18] 0x302:0x9 DW_TAG_formal_parameter
.set Lset518, Ldebug_loc16-Lsection_debug_loc ; DW_AT_location
	.long	Lset518
	.long	131                             ; DW_AT_abstract_origin
	.byte	18                              ; Abbrev [18] 0x30b:0x9 DW_TAG_formal_parameter
.set Lset519, Ldebug_loc15-Lsection_debug_loc ; DW_AT_location
	.long	Lset519
	.long	142                             ; DW_AT_abstract_origin
	.byte	21                              ; Abbrev [21] 0x314:0x6 DW_TAG_formal_parameter
	.byte	9                               ; DW_AT_const_value
	.long	153                             ; DW_AT_abstract_origin
	.byte	19                              ; Abbrev [19] 0x31a:0x9 DW_TAG_variable
.set Lset520, Ldebug_loc17-Lsection_debug_loc ; DW_AT_location
	.long	Lset520
	.long	164                             ; DW_AT_abstract_origin
	.byte	19                              ; Abbrev [19] 0x323:0x9 DW_TAG_variable
.set Lset521, Ldebug_loc18-Lsection_debug_loc ; DW_AT_location
	.long	Lset521
	.long	175                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	22                              ; Abbrev [22] 0x32d:0xf2 DW_TAG_lexical_block
	.quad	Ltmp96                          ; DW_AT_low_pc
.set Lset522, Ltmp134-Ltmp96            ; DW_AT_high_pc
	.long	Lset522
	.byte	15                              ; Abbrev [15] 0x33a:0xd DW_TAG_variable
	.byte	1                               ; DW_AT_location
	.byte	107
	.long	430                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	102                             ; DW_AT_decl_line
	.long	68                              ; DW_AT_type
	.byte	23                              ; Abbrev [23] 0x347:0xd7 DW_TAG_lexical_block
.set Lset523, Ldebug_ranges1-Ldebug_range ; DW_AT_ranges
	.long	Lset523
	.byte	16                              ; Abbrev [16] 0x34c:0xf DW_TAG_variable
.set Lset524, Ldebug_loc22-Lsection_debug_loc ; DW_AT_location
	.long	Lset524
	.long	258                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	104                             ; DW_AT_decl_line
	.long	270                             ; DW_AT_type
	.byte	8                               ; Abbrev [8] 0x35b:0xb DW_TAG_variable
	.long	709                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	103                             ; DW_AT_decl_line
	.long	50                              ; DW_AT_type
	.byte	17                              ; Abbrev [17] 0x366:0x6b DW_TAG_inlined_subroutine
	.long	187                             ; DW_AT_abstract_origin
.set Lset525, Ldebug_ranges2-Ldebug_range ; DW_AT_ranges
	.long	Lset525
	.byte	4                               ; DW_AT_call_file
	.byte	105                             ; DW_AT_call_line
	.byte	31                              ; DW_AT_call_column
	.byte	18                              ; Abbrev [18] 0x372:0x9 DW_TAG_formal_parameter
.set Lset526, Ldebug_loc21-Lsection_debug_loc ; DW_AT_location
	.long	Lset526
	.long	199                             ; DW_AT_abstract_origin
	.byte	18                              ; Abbrev [18] 0x37b:0x9 DW_TAG_formal_parameter
.set Lset527, Ldebug_loc20-Lsection_debug_loc ; DW_AT_location
	.long	Lset527
	.long	210                             ; DW_AT_abstract_origin
	.byte	19                              ; Abbrev [19] 0x384:0x9 DW_TAG_variable
.set Lset528, Ldebug_loc19-Lsection_debug_loc ; DW_AT_location
	.long	Lset528
	.long	232                             ; DW_AT_abstract_origin
	.byte	20                              ; Abbrev [20] 0x38d:0x1e DW_TAG_inlined_subroutine
	.long	394                             ; DW_AT_abstract_origin
	.quad	Ltmp125                         ; DW_AT_low_pc
.set Lset529, Ltmp130-Ltmp125           ; DW_AT_high_pc
	.long	Lset529
	.byte	4                               ; DW_AT_call_file
	.byte	22                              ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	18                              ; Abbrev [18] 0x3a1:0x9 DW_TAG_formal_parameter
.set Lset530, Ldebug_loc26-Lsection_debug_loc ; DW_AT_location
	.long	Lset530
	.long	406                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	23                              ; Abbrev [23] 0x3ab:0x25 DW_TAG_lexical_block
.set Lset531, Ldebug_ranges3-Ldebug_range ; DW_AT_ranges
	.long	Lset531
	.byte	19                              ; Abbrev [19] 0x3b0:0x9 DW_TAG_variable
.set Lset532, Ldebug_loc25-Lsection_debug_loc ; DW_AT_location
	.long	Lset532
	.long	244                             ; DW_AT_abstract_origin
	.byte	22                              ; Abbrev [22] 0x3b9:0x16 DW_TAG_lexical_block
	.quad	Ltmp131                         ; DW_AT_low_pc
.set Lset533, Ltmp134-Ltmp131           ; DW_AT_high_pc
	.long	Lset533
	.byte	24                              ; Abbrev [24] 0x3c6:0x8 DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	48
	.long	256                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	20                              ; Abbrev [20] 0x3d1:0x25 DW_TAG_inlined_subroutine
	.long	288                             ; DW_AT_abstract_origin
	.quad	Ltmp99                          ; DW_AT_low_pc
.set Lset534, Ltmp100-Ltmp99            ; DW_AT_high_pc
	.long	Lset534
	.byte	4                               ; DW_AT_call_file
	.byte	106                             ; DW_AT_call_line
	.byte	13                              ; DW_AT_call_column
	.byte	25                              ; Abbrev [25] 0x3e5:0x7 DW_TAG_formal_parameter
	.byte	1                               ; DW_AT_location
	.byte	80
	.long	296                             ; DW_AT_abstract_origin
	.byte	25                              ; Abbrev [25] 0x3ec:0x9 DW_TAG_formal_parameter
	.byte	3                               ; DW_AT_location
	.byte	143
	.asciz	"\350"
	.long	318                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	20                              ; Abbrev [20] 0x3f6:0x27 DW_TAG_inlined_subroutine
	.long	331                             ; DW_AT_abstract_origin
	.quad	Ltmp104                         ; DW_AT_low_pc
.set Lset535, Ltmp110-Ltmp104           ; DW_AT_high_pc
	.long	Lset535
	.byte	4                               ; DW_AT_call_file
	.byte	104                             ; DW_AT_call_line
	.byte	27                              ; DW_AT_call_column
	.byte	18                              ; Abbrev [18] 0x40a:0x9 DW_TAG_formal_parameter
.set Lset536, Ldebug_loc24-Lsection_debug_loc ; DW_AT_location
	.long	Lset536
	.long	343                             ; DW_AT_abstract_origin
	.byte	19                              ; Abbrev [19] 0x413:0x9 DW_TAG_variable
.set Lset537, Ldebug_loc23-Lsection_debug_loc ; DW_AT_location
	.long	Lset537
	.long	376                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	20                              ; Abbrev [20] 0x41f:0x2a DW_TAG_inlined_subroutine
	.long	429                             ; DW_AT_abstract_origin
	.quad	Ltmp139                         ; DW_AT_low_pc
.set Lset538, Ltmp143-Ltmp139           ; DW_AT_high_pc
	.long	Lset538
	.byte	4                               ; DW_AT_call_file
	.byte	111                             ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	22                              ; Abbrev [22] 0x433:0x15 DW_TAG_lexical_block
	.quad	Ltmp139                         ; DW_AT_low_pc
.set Lset539, Ltmp143-Ltmp139           ; DW_AT_high_pc
	.long	Lset539
	.byte	24                              ; Abbrev [24] 0x440:0x7 DW_TAG_variable
	.byte	1                               ; DW_AT_location
	.byte	88
	.long	482                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	13                              ; Abbrev [13] 0x44a:0x25b DW_TAG_subprogram
	.quad	Lfunc_begin1                    ; DW_AT_low_pc
.set Lset540, Lfunc_end1-Lfunc_begin1   ; DW_AT_high_pc
	.long	Lset540
	.byte	1                               ; DW_AT_frame_base
	.byte	109
                                        ; DW_AT_call_all_calls
	.long	450                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	116                             ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_external
                                        ; DW_AT_APPLE_optimized
	.byte	14                              ; Abbrev [14] 0x45f:0xf DW_TAG_formal_parameter
.set Lset541, Ldebug_loc27-Lsection_debug_loc ; DW_AT_location
	.long	Lset541
	.long	495                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	116                             ; DW_AT_decl_line
	.long	1720                            ; DW_AT_type
	.byte	14                              ; Abbrev [14] 0x46e:0xf DW_TAG_formal_parameter
.set Lset542, Ldebug_loc28-Lsection_debug_loc ; DW_AT_location
	.long	Lset542
	.long	309                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	116                             ; DW_AT_decl_line
	.long	50                              ; DW_AT_type
	.byte	15                              ; Abbrev [15] 0x47d:0xf DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	143
	.asciz	"\360"
	.long	468                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	122                             ; DW_AT_decl_line
	.long	1701                            ; DW_AT_type
	.byte	16                              ; Abbrev [16] 0x48c:0xf DW_TAG_variable
.set Lset543, Ldebug_loc29-Lsection_debug_loc ; DW_AT_location
	.long	Lset543
	.long	650                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	123                             ; DW_AT_decl_line
	.long	68                              ; DW_AT_type
	.byte	16                              ; Abbrev [16] 0x49b:0xf DW_TAG_variable
.set Lset544, Ldebug_loc30-Lsection_debug_loc ; DW_AT_location
	.long	Lset544
	.long	657                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	121                             ; DW_AT_decl_line
	.long	50                              ; DW_AT_type
	.byte	16                              ; Abbrev [16] 0x4aa:0xf DW_TAG_variable
.set Lset545, Ldebug_loc31-Lsection_debug_loc ; DW_AT_location
	.long	Lset545
	.long	670                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	120                             ; DW_AT_decl_line
	.long	50                              ; DW_AT_type
	.byte	16                              ; Abbrev [16] 0x4b9:0xf DW_TAG_variable
.set Lset546, Ldebug_loc32-Lsection_debug_loc ; DW_AT_location
	.long	Lset546
	.long	714                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	119                             ; DW_AT_decl_line
	.long	50                              ; DW_AT_type
	.byte	16                              ; Abbrev [16] 0x4c8:0xf DW_TAG_variable
.set Lset547, Ldebug_loc33-Lsection_debug_loc ; DW_AT_location
	.long	Lset547
	.long	683                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	118                             ; DW_AT_decl_line
	.long	50                              ; DW_AT_type
	.byte	16                              ; Abbrev [16] 0x4d7:0xf DW_TAG_variable
.set Lset548, Ldebug_loc34-Lsection_debug_loc ; DW_AT_location
	.long	Lset548
	.long	347                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	117                             ; DW_AT_decl_line
	.long	330                             ; DW_AT_type
	.byte	16                              ; Abbrev [16] 0x4e6:0xf DW_TAG_variable
.set Lset549, Ldebug_loc35-Lsection_debug_loc ; DW_AT_location
	.long	Lset549
	.long	694                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	124                             ; DW_AT_decl_line
	.long	68                              ; DW_AT_type
	.byte	16                              ; Abbrev [16] 0x4f5:0xf DW_TAG_variable
.set Lset550, Ldebug_loc41-Lsection_debug_loc ; DW_AT_location
	.long	Lset550
	.long	702                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	124                             ; DW_AT_decl_line
	.long	68                              ; DW_AT_type
	.byte	8                               ; Abbrev [8] 0x504:0xb DW_TAG_variable
	.long	371                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	161                             ; DW_AT_decl_line
	.long	68                              ; DW_AT_type
	.byte	17                              ; Abbrev [17] 0x50f:0x3a DW_TAG_inlined_subroutine
	.long	119                             ; DW_AT_abstract_origin
.set Lset551, Ldebug_ranges4-Ldebug_range ; DW_AT_ranges
	.long	Lset551
	.byte	4                               ; DW_AT_call_file
	.byte	157                             ; DW_AT_call_line
	.byte	25                              ; DW_AT_call_column
	.byte	18                              ; Abbrev [18] 0x51b:0x9 DW_TAG_formal_parameter
.set Lset552, Ldebug_loc37-Lsection_debug_loc ; DW_AT_location
	.long	Lset552
	.long	131                             ; DW_AT_abstract_origin
	.byte	18                              ; Abbrev [18] 0x524:0x9 DW_TAG_formal_parameter
.set Lset553, Ldebug_loc38-Lsection_debug_loc ; DW_AT_location
	.long	Lset553
	.long	142                             ; DW_AT_abstract_origin
	.byte	18                              ; Abbrev [18] 0x52d:0x9 DW_TAG_formal_parameter
.set Lset554, Ldebug_loc36-Lsection_debug_loc ; DW_AT_location
	.long	Lset554
	.long	153                             ; DW_AT_abstract_origin
	.byte	19                              ; Abbrev [19] 0x536:0x9 DW_TAG_variable
.set Lset555, Ldebug_loc39-Lsection_debug_loc ; DW_AT_location
	.long	Lset555
	.long	164                             ; DW_AT_abstract_origin
	.byte	19                              ; Abbrev [19] 0x53f:0x9 DW_TAG_variable
.set Lset556, Ldebug_loc40-Lsection_debug_loc ; DW_AT_location
	.long	Lset556
	.long	175                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	20                              ; Abbrev [20] 0x549:0x3f DW_TAG_inlined_subroutine
	.long	119                             ; DW_AT_abstract_origin
	.quad	Ltmp205                         ; DW_AT_low_pc
.set Lset557, Ltmp231-Ltmp205           ; DW_AT_high_pc
	.long	Lset557
	.byte	4                               ; DW_AT_call_file
	.byte	145                             ; DW_AT_call_line
	.byte	25                              ; DW_AT_call_column
	.byte	18                              ; Abbrev [18] 0x55d:0x9 DW_TAG_formal_parameter
.set Lset558, Ldebug_loc43-Lsection_debug_loc ; DW_AT_location
	.long	Lset558
	.long	131                             ; DW_AT_abstract_origin
	.byte	18                              ; Abbrev [18] 0x566:0x9 DW_TAG_formal_parameter
.set Lset559, Ldebug_loc42-Lsection_debug_loc ; DW_AT_location
	.long	Lset559
	.long	142                             ; DW_AT_abstract_origin
	.byte	21                              ; Abbrev [21] 0x56f:0x6 DW_TAG_formal_parameter
	.byte	9                               ; DW_AT_const_value
	.long	153                             ; DW_AT_abstract_origin
	.byte	19                              ; Abbrev [19] 0x575:0x9 DW_TAG_variable
.set Lset560, Ldebug_loc44-Lsection_debug_loc ; DW_AT_location
	.long	Lset560
	.long	164                             ; DW_AT_abstract_origin
	.byte	19                              ; Abbrev [19] 0x57e:0x9 DW_TAG_variable
.set Lset561, Ldebug_loc45-Lsection_debug_loc ; DW_AT_location
	.long	Lset561
	.long	175                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	22                              ; Abbrev [22] 0x588:0xf2 DW_TAG_lexical_block
	.quad	Ltmp244                         ; DW_AT_low_pc
.set Lset562, Ltmp282-Ltmp244           ; DW_AT_high_pc
	.long	Lset562
	.byte	15                              ; Abbrev [15] 0x595:0xd DW_TAG_variable
	.byte	1                               ; DW_AT_location
	.byte	107
	.long	720                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	163                             ; DW_AT_decl_line
	.long	68                              ; DW_AT_type
	.byte	23                              ; Abbrev [23] 0x5a2:0xd7 DW_TAG_lexical_block
.set Lset563, Ldebug_ranges5-Ldebug_range ; DW_AT_ranges
	.long	Lset563
	.byte	16                              ; Abbrev [16] 0x5a7:0xf DW_TAG_variable
.set Lset564, Ldebug_loc49-Lsection_debug_loc ; DW_AT_location
	.long	Lset564
	.long	258                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	165                             ; DW_AT_decl_line
	.long	270                             ; DW_AT_type
	.byte	8                               ; Abbrev [8] 0x5b6:0xb DW_TAG_variable
	.long	709                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	164                             ; DW_AT_decl_line
	.long	50                              ; DW_AT_type
	.byte	17                              ; Abbrev [17] 0x5c1:0x6b DW_TAG_inlined_subroutine
	.long	187                             ; DW_AT_abstract_origin
.set Lset565, Ldebug_ranges6-Ldebug_range ; DW_AT_ranges
	.long	Lset565
	.byte	4                               ; DW_AT_call_file
	.byte	166                             ; DW_AT_call_line
	.byte	31                              ; DW_AT_call_column
	.byte	18                              ; Abbrev [18] 0x5cd:0x9 DW_TAG_formal_parameter
.set Lset566, Ldebug_loc48-Lsection_debug_loc ; DW_AT_location
	.long	Lset566
	.long	199                             ; DW_AT_abstract_origin
	.byte	18                              ; Abbrev [18] 0x5d6:0x9 DW_TAG_formal_parameter
.set Lset567, Ldebug_loc47-Lsection_debug_loc ; DW_AT_location
	.long	Lset567
	.long	210                             ; DW_AT_abstract_origin
	.byte	19                              ; Abbrev [19] 0x5df:0x9 DW_TAG_variable
.set Lset568, Ldebug_loc46-Lsection_debug_loc ; DW_AT_location
	.long	Lset568
	.long	232                             ; DW_AT_abstract_origin
	.byte	20                              ; Abbrev [20] 0x5e8:0x1e DW_TAG_inlined_subroutine
	.long	394                             ; DW_AT_abstract_origin
	.quad	Ltmp273                         ; DW_AT_low_pc
.set Lset569, Ltmp278-Ltmp273           ; DW_AT_high_pc
	.long	Lset569
	.byte	4                               ; DW_AT_call_file
	.byte	22                              ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	18                              ; Abbrev [18] 0x5fc:0x9 DW_TAG_formal_parameter
.set Lset570, Ldebug_loc53-Lsection_debug_loc ; DW_AT_location
	.long	Lset570
	.long	406                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	23                              ; Abbrev [23] 0x606:0x25 DW_TAG_lexical_block
.set Lset571, Ldebug_ranges7-Ldebug_range ; DW_AT_ranges
	.long	Lset571
	.byte	19                              ; Abbrev [19] 0x60b:0x9 DW_TAG_variable
.set Lset572, Ldebug_loc52-Lsection_debug_loc ; DW_AT_location
	.long	Lset572
	.long	244                             ; DW_AT_abstract_origin
	.byte	22                              ; Abbrev [22] 0x614:0x16 DW_TAG_lexical_block
	.quad	Ltmp279                         ; DW_AT_low_pc
.set Lset573, Ltmp282-Ltmp279           ; DW_AT_high_pc
	.long	Lset573
	.byte	24                              ; Abbrev [24] 0x621:0x8 DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	48
	.long	256                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	20                              ; Abbrev [20] 0x62c:0x25 DW_TAG_inlined_subroutine
	.long	288                             ; DW_AT_abstract_origin
	.quad	Ltmp247                         ; DW_AT_low_pc
.set Lset574, Ltmp248-Ltmp247           ; DW_AT_high_pc
	.long	Lset574
	.byte	4                               ; DW_AT_call_file
	.byte	167                             ; DW_AT_call_line
	.byte	13                              ; DW_AT_call_column
	.byte	25                              ; Abbrev [25] 0x640:0x7 DW_TAG_formal_parameter
	.byte	1                               ; DW_AT_location
	.byte	80
	.long	296                             ; DW_AT_abstract_origin
	.byte	25                              ; Abbrev [25] 0x647:0x9 DW_TAG_formal_parameter
	.byte	3                               ; DW_AT_location
	.byte	143
	.asciz	"\350"
	.long	318                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	20                              ; Abbrev [20] 0x651:0x27 DW_TAG_inlined_subroutine
	.long	331                             ; DW_AT_abstract_origin
	.quad	Ltmp252                         ; DW_AT_low_pc
.set Lset575, Ltmp258-Ltmp252           ; DW_AT_high_pc
	.long	Lset575
	.byte	4                               ; DW_AT_call_file
	.byte	165                             ; DW_AT_call_line
	.byte	27                              ; DW_AT_call_column
	.byte	18                              ; Abbrev [18] 0x665:0x9 DW_TAG_formal_parameter
.set Lset576, Ldebug_loc51-Lsection_debug_loc ; DW_AT_location
	.long	Lset576
	.long	343                             ; DW_AT_abstract_origin
	.byte	19                              ; Abbrev [19] 0x66e:0x9 DW_TAG_variable
.set Lset577, Ldebug_loc50-Lsection_debug_loc ; DW_AT_location
	.long	Lset577
	.long	376                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	20                              ; Abbrev [20] 0x67a:0x2a DW_TAG_inlined_subroutine
	.long	429                             ; DW_AT_abstract_origin
	.quad	Ltmp286                         ; DW_AT_low_pc
.set Lset578, Ltmp290-Ltmp286           ; DW_AT_high_pc
	.long	Lset578
	.byte	4                               ; DW_AT_call_file
	.byte	172                             ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	22                              ; Abbrev [22] 0x68e:0x15 DW_TAG_lexical_block
	.quad	Ltmp286                         ; DW_AT_low_pc
.set Lset579, Ltmp290-Ltmp286           ; DW_AT_high_pc
	.long	Lset579
	.byte	24                              ; Abbrev [24] 0x69b:0x7 DW_TAG_variable
	.byte	1                               ; DW_AT_location
	.byte	88
	.long	482                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	26                              ; Abbrev [26] 0x6a5:0xc DW_TAG_array_type
	.long	96                              ; DW_AT_type
	.byte	27                              ; Abbrev [27] 0x6aa:0x6 DW_TAG_subrange_type
	.long	1713                            ; DW_AT_type
	.byte	64                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	28                              ; Abbrev [28] 0x6b1:0x7 DW_TAG_base_type
	.long	475                             ; DW_AT_name
	.byte	8                               ; DW_AT_byte_size
	.byte	7                               ; DW_AT_encoding
	.byte	4                               ; Abbrev [4] 0x6b8:0x5 DW_TAG_pointer_type
	.long	1725                            ; DW_AT_type
	.byte	2                               ; Abbrev [2] 0x6bd:0xb DW_TAG_typedef
	.long	1736                            ; DW_AT_type
	.long	501                             ; DW_AT_name
	.byte	5                               ; DW_AT_decl_file
	.byte	22                              ; DW_AT_decl_line
	.byte	29                              ; Abbrev [29] 0x6c8:0x30 DW_TAG_structure_type
	.long	501                             ; DW_AT_name
	.short	5120                            ; DW_AT_byte_size
	.byte	5                               ; DW_AT_decl_file
	.byte	18                              ; DW_AT_decl_line
	.byte	30                              ; Abbrev [30] 0x6d1:0xc DW_TAG_member
	.long	511                             ; DW_AT_name
	.long	1784                            ; DW_AT_type
	.byte	5                               ; DW_AT_decl_file
	.byte	19                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	31                              ; Abbrev [31] 0x6dd:0xd DW_TAG_member
	.long	646                             ; DW_AT_name
	.long	1784                            ; DW_AT_type
	.byte	5                               ; DW_AT_decl_file
	.byte	20                              ; DW_AT_decl_line
	.short	512                             ; DW_AT_data_member_location
	.byte	31                              ; Abbrev [31] 0x6ea:0xd DW_TAG_member
	.long	648                             ; DW_AT_name
	.long	2113                            ; DW_AT_type
	.byte	5                               ; DW_AT_decl_file
	.byte	21                              ; DW_AT_decl_line
	.short	1024                            ; DW_AT_data_member_location
	.byte	0                               ; End Of Children Mark
	.byte	26                              ; Abbrev [26] 0x6f8:0xc DW_TAG_array_type
	.long	1796                            ; DW_AT_type
	.byte	27                              ; Abbrev [27] 0x6fd:0x6 DW_TAG_subrange_type
	.long	1713                            ; DW_AT_type
	.byte	8                               ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x704:0xb DW_TAG_typedef
	.long	1807                            ; DW_AT_type
	.long	513                             ; DW_AT_name
	.byte	5                               ; DW_AT_decl_file
	.byte	16                              ; DW_AT_decl_line
	.byte	32                              ; Abbrev [32] 0x70f:0x75 DW_TAG_union_type
	.long	513                             ; DW_AT_name
	.byte	64                              ; DW_AT_byte_size
	.byte	5                               ; DW_AT_decl_file
	.byte	6                               ; DW_AT_decl_line
	.byte	30                              ; Abbrev [30] 0x717:0xc DW_TAG_member
	.long	521                             ; DW_AT_name
	.long	1701                            ; DW_AT_type
	.byte	5                               ; DW_AT_decl_file
	.byte	7                               ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	30                              ; Abbrev [30] 0x723:0xc DW_TAG_member
	.long	524                             ; DW_AT_name
	.long	1924                            ; DW_AT_type
	.byte	5                               ; DW_AT_decl_file
	.byte	8                               ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	30                              ; Abbrev [30] 0x72f:0xc DW_TAG_member
	.long	552                             ; DW_AT_name
	.long	1954                            ; DW_AT_type
	.byte	5                               ; DW_AT_decl_file
	.byte	9                               ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	30                              ; Abbrev [30] 0x73b:0xc DW_TAG_member
	.long	556                             ; DW_AT_name
	.long	1966                            ; DW_AT_type
	.byte	5                               ; DW_AT_decl_file
	.byte	10                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	30                              ; Abbrev [30] 0x747:0xc DW_TAG_member
	.long	578                             ; DW_AT_name
	.long	1996                            ; DW_AT_type
	.byte	5                               ; DW_AT_decl_file
	.byte	11                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	30                              ; Abbrev [30] 0x753:0xc DW_TAG_member
	.long	596                             ; DW_AT_name
	.long	2026                            ; DW_AT_type
	.byte	5                               ; DW_AT_decl_file
	.byte	12                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	30                              ; Abbrev [30] 0x75f:0xc DW_TAG_member
	.long	612                             ; DW_AT_name
	.long	2056                            ; DW_AT_type
	.byte	5                               ; DW_AT_decl_file
	.byte	13                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	30                              ; Abbrev [30] 0x76b:0xc DW_TAG_member
	.long	625                             ; DW_AT_name
	.long	2075                            ; DW_AT_type
	.byte	5                               ; DW_AT_decl_file
	.byte	14                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	30                              ; Abbrev [30] 0x777:0xc DW_TAG_member
	.long	635                             ; DW_AT_name
	.long	2094                            ; DW_AT_type
	.byte	5                               ; DW_AT_decl_file
	.byte	15                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	0                               ; End Of Children Mark
	.byte	26                              ; Abbrev [26] 0x784:0xc DW_TAG_array_type
	.long	1936                            ; DW_AT_type
	.byte	27                              ; Abbrev [27] 0x789:0x6 DW_TAG_subrange_type
	.long	1713                            ; DW_AT_type
	.byte	32                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x790:0xb DW_TAG_typedef
	.long	1947                            ; DW_AT_type
	.long	528                             ; DW_AT_name
	.byte	7                               ; DW_AT_decl_file
	.byte	31                              ; DW_AT_decl_line
	.byte	3                               ; Abbrev [3] 0x79b:0x7 DW_TAG_base_type
	.long	537                             ; DW_AT_name
	.byte	7                               ; DW_AT_encoding
	.byte	2                               ; DW_AT_byte_size
	.byte	26                              ; Abbrev [26] 0x7a2:0xc DW_TAG_array_type
	.long	68                              ; DW_AT_type
	.byte	27                              ; Abbrev [27] 0x7a7:0x6 DW_TAG_subrange_type
	.long	1713                            ; DW_AT_type
	.byte	16                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	26                              ; Abbrev [26] 0x7ae:0xc DW_TAG_array_type
	.long	1978                            ; DW_AT_type
	.byte	27                              ; Abbrev [27] 0x7b3:0x6 DW_TAG_subrange_type
	.long	1713                            ; DW_AT_type
	.byte	64                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x7ba:0xb DW_TAG_typedef
	.long	1989                            ; DW_AT_type
	.long	559                             ; DW_AT_name
	.byte	8                               ; DW_AT_decl_file
	.byte	30                              ; DW_AT_decl_line
	.byte	3                               ; Abbrev [3] 0x7c5:0x7 DW_TAG_base_type
	.long	566                             ; DW_AT_name
	.byte	6                               ; DW_AT_encoding
	.byte	1                               ; DW_AT_byte_size
	.byte	26                              ; Abbrev [26] 0x7cc:0xc DW_TAG_array_type
	.long	2008                            ; DW_AT_type
	.byte	27                              ; Abbrev [27] 0x7d1:0x6 DW_TAG_subrange_type
	.long	1713                            ; DW_AT_type
	.byte	32                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x7d8:0xb DW_TAG_typedef
	.long	2019                            ; DW_AT_type
	.long	582                             ; DW_AT_name
	.byte	9                               ; DW_AT_decl_file
	.byte	30                              ; DW_AT_decl_line
	.byte	3                               ; Abbrev [3] 0x7e3:0x7 DW_TAG_base_type
	.long	590                             ; DW_AT_name
	.byte	5                               ; DW_AT_encoding
	.byte	2                               ; DW_AT_byte_size
	.byte	26                              ; Abbrev [26] 0x7ea:0xc DW_TAG_array_type
	.long	2038                            ; DW_AT_type
	.byte	27                              ; Abbrev [27] 0x7ef:0x6 DW_TAG_subrange_type
	.long	1713                            ; DW_AT_type
	.byte	16                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x7f6:0xb DW_TAG_typedef
	.long	2049                            ; DW_AT_type
	.long	600                             ; DW_AT_name
	.byte	10                              ; DW_AT_decl_file
	.byte	30                              ; DW_AT_decl_line
	.byte	3                               ; Abbrev [3] 0x801:0x7 DW_TAG_base_type
	.long	608                             ; DW_AT_name
	.byte	5                               ; DW_AT_encoding
	.byte	4                               ; DW_AT_byte_size
	.byte	26                              ; Abbrev [26] 0x808:0xc DW_TAG_array_type
	.long	2068                            ; DW_AT_type
	.byte	27                              ; Abbrev [27] 0x80d:0x6 DW_TAG_subrange_type
	.long	1713                            ; DW_AT_type
	.byte	32                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	3                               ; Abbrev [3] 0x814:0x7 DW_TAG_base_type
	.long	616                             ; DW_AT_name
	.byte	4                               ; DW_AT_encoding
	.byte	2                               ; DW_AT_byte_size
	.byte	26                              ; Abbrev [26] 0x81b:0xc DW_TAG_array_type
	.long	2087                            ; DW_AT_type
	.byte	27                              ; Abbrev [27] 0x820:0x6 DW_TAG_subrange_type
	.long	1713                            ; DW_AT_type
	.byte	16                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	3                               ; Abbrev [3] 0x827:0x7 DW_TAG_base_type
	.long	629                             ; DW_AT_name
	.byte	4                               ; DW_AT_encoding
	.byte	4                               ; DW_AT_byte_size
	.byte	26                              ; Abbrev [26] 0x82e:0xc DW_TAG_array_type
	.long	2106                            ; DW_AT_type
	.byte	27                              ; Abbrev [27] 0x833:0x6 DW_TAG_subrange_type
	.long	1713                            ; DW_AT_type
	.byte	8                               ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	3                               ; Abbrev [3] 0x83a:0x7 DW_TAG_base_type
	.long	639                             ; DW_AT_name
	.byte	4                               ; DW_AT_encoding
	.byte	8                               ; DW_AT_byte_size
	.byte	26                              ; Abbrev [26] 0x841:0xc DW_TAG_array_type
	.long	1796                            ; DW_AT_type
	.byte	27                              ; Abbrev [27] 0x846:0x6 DW_TAG_subrange_type
	.long	1713                            ; DW_AT_type
	.byte	64                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
Ldebug_info_end0:
	.section	__DWARF,__debug_ranges,regular,debug
Ldebug_range:
Ldebug_ranges0:
.set Lset580, Ltmp6-Lfunc_begin0
	.quad	Lset580
.set Lset581, Ltmp20-Lfunc_begin0
	.quad	Lset581
.set Lset582, Ltmp29-Lfunc_begin0
	.quad	Lset582
.set Lset583, Ltmp38-Lfunc_begin0
	.quad	Lset583
	.quad	0
	.quad	0
Ldebug_ranges1:
.set Lset584, Ltmp96-Lfunc_begin0
	.quad	Lset584
.set Lset585, Ltmp100-Lfunc_begin0
	.quad	Lset585
.set Lset586, Ltmp102-Lfunc_begin0
	.quad	Lset586
.set Lset587, Ltmp134-Lfunc_begin0
	.quad	Lset587
	.quad	0
	.quad	0
Ldebug_ranges2:
.set Lset588, Ltmp96-Lfunc_begin0
	.quad	Lset588
.set Lset589, Ltmp97-Lfunc_begin0
	.quad	Lset589
.set Lset590, Ltmp112-Lfunc_begin0
	.quad	Lset590
.set Lset591, Ltmp134-Lfunc_begin0
	.quad	Lset591
	.quad	0
	.quad	0
Ldebug_ranges3:
.set Lset592, Ltmp119-Lfunc_begin0
	.quad	Lset592
.set Lset593, Ltmp123-Lfunc_begin0
	.quad	Lset593
.set Lset594, Ltmp131-Lfunc_begin0
	.quad	Lset594
.set Lset595, Ltmp134-Lfunc_begin0
	.quad	Lset595
	.quad	0
	.quad	0
Ldebug_ranges4:
.set Lset596, Ltmp154-Lfunc_begin0
	.quad	Lset596
.set Lset597, Ltmp168-Lfunc_begin0
	.quad	Lset597
.set Lset598, Ltmp178-Lfunc_begin0
	.quad	Lset598
.set Lset599, Ltmp187-Lfunc_begin0
	.quad	Lset599
	.quad	0
	.quad	0
Ldebug_ranges5:
.set Lset600, Ltmp244-Lfunc_begin0
	.quad	Lset600
.set Lset601, Ltmp248-Lfunc_begin0
	.quad	Lset601
.set Lset602, Ltmp250-Lfunc_begin0
	.quad	Lset602
.set Lset603, Ltmp282-Lfunc_begin0
	.quad	Lset603
	.quad	0
	.quad	0
Ldebug_ranges6:
.set Lset604, Ltmp244-Lfunc_begin0
	.quad	Lset604
.set Lset605, Ltmp245-Lfunc_begin0
	.quad	Lset605
.set Lset606, Ltmp260-Lfunc_begin0
	.quad	Lset606
.set Lset607, Ltmp282-Lfunc_begin0
	.quad	Lset607
	.quad	0
	.quad	0
Ldebug_ranges7:
.set Lset608, Ltmp267-Lfunc_begin0
	.quad	Lset608
.set Lset609, Ltmp271-Lfunc_begin0
	.quad	Lset609
.set Lset610, Ltmp279-Lfunc_begin0
	.quad	Lset610
.set Lset611, Ltmp282-Lfunc_begin0
	.quad	Lset611
	.quad	0
	.quad	0
	.section	__DWARF,__debug_str,regular,debug
Linfo_string:
	.asciz	"Apple clang version 15.0.0 (clang-1500.3.9.4)" ; string offset=0
	.asciz	"extr.c"                        ; string offset=46
	.asciz	"/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk" ; string offset=53
	.asciz	"MacOSX.sdk"                    ; string offset=105
	.asciz	"/Users/tarindujayatilaka/Documents/superopt/apple-amx" ; string offset=116
	.asciz	"uint64_t"                      ; string offset=170
	.asciz	"unsigned long long"            ; string offset=179
	.asciz	"uint32_t"                      ; string offset=198
	.asciz	"unsigned int"                  ; string offset=207
	.asciz	"uint8_t"                       ; string offset=220
	.asciz	"unsigned char"                 ; string offset=228
	.asciz	"parse_writemask"               ; string offset=242
	.asciz	"val"                           ; string offset=258
	.asciz	"g"                             ; string offset=262
	.asciz	"maskbits"                      ; string offset=264
	.asciz	"mode"                          ; string offset=273
	.asciz	"all"                           ; string offset=278
	.asciz	"extr_alu"                      ; string offset=282
	.asciz	"int64_t"                       ; string offset=291
	.asciz	"long long"                     ; string offset=299
	.asciz	"operand"                       ; string offset=309
	.asciz	"outbits"                       ; string offset=317
	.asciz	"shift"                         ; string offset=325
	.asciz	"hi"                            ; string offset=331
	.asciz	"lo"                            ; string offset=334
	.asciz	"store_int"                     ; string offset=337
	.asciz	"dst"                           ; string offset=347
	.asciz	"nbytes"                        ; string offset=351
	.asciz	"load_int"                      ; string offset=358
	.asciz	"src"                           ; string offset=367
	.asciz	"signext"                       ; string offset=371
	.asciz	"bf16_from_f32"                 ; string offset=379
	.asciz	"f"                             ; string offset=393
	.asciz	"low"                           ; string offset=395
	.asciz	"store_xy_row"                  ; string offset=399
	.asciz	"offset"                        ; string offset=412
	.asciz	"write_mask"                    ; string offset=419
	.asciz	"i"                             ; string offset=430
	.asciz	"emulate_AMX_EXTRX"             ; string offset=432
	.asciz	"emulate_AMX_EXTRY"             ; string offset=450
	.asciz	"buffer"                        ; string offset=468
	.asciz	"__ARRAY_SIZE_TYPE__"           ; string offset=475
	.asciz	"state"                         ; string offset=495
	.asciz	"amx_state"                     ; string offset=501
	.asciz	"x"                             ; string offset=511
	.asciz	"amx_reg"                       ; string offset=513
	.asciz	"u8"                            ; string offset=521
	.asciz	"u16"                           ; string offset=524
	.asciz	"uint16_t"                      ; string offset=528
	.asciz	"unsigned short"                ; string offset=537
	.asciz	"u32"                           ; string offset=552
	.asciz	"i8"                            ; string offset=556
	.asciz	"int8_t"                        ; string offset=559
	.asciz	"signed char"                   ; string offset=566
	.asciz	"i16"                           ; string offset=578
	.asciz	"int16_t"                       ; string offset=582
	.asciz	"short"                         ; string offset=590
	.asciz	"i32"                           ; string offset=596
	.asciz	"int32_t"                       ; string offset=600
	.asciz	"int"                           ; string offset=608
	.asciz	"f16"                           ; string offset=612
	.asciz	"_Float16"                      ; string offset=616
	.asciz	"f32"                           ; string offset=625
	.asciz	"float"                         ; string offset=629
	.asciz	"f64"                           ; string offset=635
	.asciz	"double"                        ; string offset=639
	.asciz	"y"                             ; string offset=646
	.asciz	"z"                             ; string offset=648
	.asciz	"stride"                        ; string offset=650
	.asciz	"store_enable"                  ; string offset=657
	.asciz	"z_step"                        ; string offset=670
	.asciz	"z_row"                         ; string offset=677
	.asciz	"dst_offset"                    ; string offset=683
	.asciz	"xybytes"                       ; string offset=694
	.asciz	"zbytes"                        ; string offset=702
	.asciz	"zoff"                          ; string offset=709
	.asciz	"z_col"                         ; string offset=714
	.asciz	"j"                             ; string offset=720
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
	.long	0                               ; Bucket 1
	.long	4                               ; Bucket 2
	.long	-1                              ; Bucket 3
	.long	5                               ; Bucket 4
	.long	-1                              ; Bucket 5
	.long	6                               ; Bucket 6
	.long	7                               ; Bucket 7
	.long	1266371801                      ; Hash in Bucket 1
	.long	1610360817                      ; Hash in Bucket 1
	.long	-1821415663                     ; Hash in Bucket 1
	.long	-573319511                      ; Hash in Bucket 1
	.long	-1821415662                     ; Hash in Bucket 2
	.long	-979516516                      ; Hash in Bucket 4
	.long	-224174954                      ; Hash in Bucket 6
	.long	1904561487                      ; Hash in Bucket 7
.set Lset612, LNames7-Lnames_begin      ; Offset in Bucket 1
	.long	Lset612
.set Lset613, LNames3-Lnames_begin      ; Offset in Bucket 1
	.long	Lset613
.set Lset614, LNames1-Lnames_begin      ; Offset in Bucket 1
	.long	Lset614
.set Lset615, LNames4-Lnames_begin      ; Offset in Bucket 1
	.long	Lset615
.set Lset616, LNames6-Lnames_begin      ; Offset in Bucket 2
	.long	Lset616
.set Lset617, LNames5-Lnames_begin      ; Offset in Bucket 4
	.long	Lset617
.set Lset618, LNames0-Lnames_begin      ; Offset in Bucket 6
	.long	Lset618
.set Lset619, LNames2-Lnames_begin      ; Offset in Bucket 7
	.long	Lset619
LNames7:
	.long	399                             ; store_xy_row
	.long	2                               ; Num DIEs
	.long	1055
	.long	1658
	.long	0
LNames3:
	.long	379                             ; bf16_from_f32
	.long	2                               ; Num DIEs
	.long	909
	.long	1512
	.long	0
LNames1:
	.long	432                             ; emulate_AMX_EXTRX
	.long	1                               ; Num DIEs
	.long	495
	.long	0
LNames4:
	.long	282                             ; extr_alu
	.long	2                               ; Num DIEs
	.long	870
	.long	1473
	.long	0
LNames6:
	.long	450                             ; emulate_AMX_EXTRY
	.long	1                               ; Num DIEs
	.long	1098
	.long	0
LNames5:
	.long	337                             ; store_int
	.long	2                               ; Num DIEs
	.long	977
	.long	1580
	.long	0
LNames0:
	.long	242                             ; parse_writemask
	.long	4                               ; Num DIEs
	.long	692
	.long	750
	.long	1295
	.long	1353
	.long	0
LNames2:
	.long	358                             ; load_int
	.long	2                               ; Num DIEs
	.long	1014
	.long	1617
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
	.long	22                              ; Header Hash Count
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
	.long	4                               ; Bucket 2
	.long	-1                              ; Bucket 3
	.long	5                               ; Bucket 4
	.long	-1                              ; Bucket 5
	.long	9                               ; Bucket 6
	.long	13                              ; Bucket 7
	.long	14                              ; Bucket 8
	.long	17                              ; Bucket 9
	.long	21                              ; Bucket 10
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
.set Lset620, Ltypes17-Ltypes_begin     ; Offset in Bucket 0
	.long	Lset620
.set Lset621, Ltypes13-Ltypes_begin     ; Offset in Bucket 1
	.long	Lset621
.set Lset622, Ltypes0-Ltypes_begin      ; Offset in Bucket 1
	.long	Lset622
.set Lset623, Ltypes12-Ltypes_begin     ; Offset in Bucket 1
	.long	Lset623
.set Lset624, Ltypes16-Ltypes_begin     ; Offset in Bucket 2
	.long	Lset624
.set Lset625, Ltypes14-Ltypes_begin     ; Offset in Bucket 4
	.long	Lset625
.set Lset626, Ltypes1-Ltypes_begin      ; Offset in Bucket 4
	.long	Lset626
.set Lset627, Ltypes8-Ltypes_begin      ; Offset in Bucket 4
	.long	Lset627
.set Lset628, Ltypes7-Ltypes_begin      ; Offset in Bucket 4
	.long	Lset628
.set Lset629, Ltypes2-Ltypes_begin      ; Offset in Bucket 6
	.long	Lset629
.set Lset630, Ltypes3-Ltypes_begin      ; Offset in Bucket 6
	.long	Lset630
.set Lset631, Ltypes9-Ltypes_begin      ; Offset in Bucket 6
	.long	Lset631
.set Lset632, Ltypes20-Ltypes_begin     ; Offset in Bucket 6
	.long	Lset632
.set Lset633, Ltypes15-Ltypes_begin     ; Offset in Bucket 7
	.long	Lset633
.set Lset634, Ltypes21-Ltypes_begin     ; Offset in Bucket 8
	.long	Lset634
.set Lset635, Ltypes5-Ltypes_begin      ; Offset in Bucket 8
	.long	Lset635
.set Lset636, Ltypes11-Ltypes_begin     ; Offset in Bucket 8
	.long	Lset636
.set Lset637, Ltypes18-Ltypes_begin     ; Offset in Bucket 9
	.long	Lset637
.set Lset638, Ltypes4-Ltypes_begin      ; Offset in Bucket 9
	.long	Lset638
.set Lset639, Ltypes19-Ltypes_begin     ; Offset in Bucket 9
	.long	Lset639
.set Lset640, Ltypes6-Ltypes_begin      ; Offset in Bucket 9
	.long	Lset640
.set Lset641, Ltypes10-Ltypes_begin     ; Offset in Bucket 10
	.long	Lset641
Ltypes17:
	.long	616                             ; _Float16
	.long	1                               ; Num DIEs
	.long	2068
	.short	36
	.byte	0
	.long	0
Ltypes13:
	.long	220                             ; uint8_t
	.long	1                               ; Num DIEs
	.long	96
	.short	22
	.byte	0
	.long	0
Ltypes0:
	.long	179                             ; unsigned long long
	.long	1                               ; Num DIEs
	.long	61
	.short	36
	.byte	0
	.long	0
Ltypes12:
	.long	513                             ; amx_reg
	.long	2                               ; Num DIEs
	.long	1796
	.short	22
	.byte	0
	.long	1807
	.short	23
	.byte	0
	.long	0
Ltypes16:
	.long	475                             ; __ARRAY_SIZE_TYPE__
	.long	1                               ; Num DIEs
	.long	1713
	.short	36
	.byte	0
	.long	0
Ltypes14:
	.long	528                             ; uint16_t
	.long	1                               ; Num DIEs
	.long	1936
	.short	22
	.byte	0
	.long	0
Ltypes1:
	.long	198                             ; uint32_t
	.long	1                               ; Num DIEs
	.long	68
	.short	22
	.byte	0
	.long	0
Ltypes8:
	.long	170                             ; uint64_t
	.long	1                               ; Num DIEs
	.long	50
	.short	22
	.byte	0
	.long	0
Ltypes7:
	.long	228                             ; unsigned char
	.long	1                               ; Num DIEs
	.long	107
	.short	36
	.byte	0
	.long	0
Ltypes2:
	.long	608                             ; int
	.long	1                               ; Num DIEs
	.long	2049
	.short	36
	.byte	0
	.long	0
Ltypes3:
	.long	582                             ; int16_t
	.long	1                               ; Num DIEs
	.long	2008
	.short	22
	.byte	0
	.long	0
Ltypes9:
	.long	600                             ; int32_t
	.long	1                               ; Num DIEs
	.long	2038
	.short	22
	.byte	0
	.long	0
Ltypes20:
	.long	291                             ; int64_t
	.long	1                               ; Num DIEs
	.long	270
	.short	22
	.byte	0
	.long	0
Ltypes15:
	.long	501                             ; amx_state
	.long	2                               ; Num DIEs
	.long	1725
	.short	22
	.byte	0
	.long	1736
	.short	19
	.byte	0
	.long	0
Ltypes21:
	.long	629                             ; float
	.long	1                               ; Num DIEs
	.long	2087
	.short	36
	.byte	0
	.long	0
Ltypes5:
	.long	590                             ; short
	.long	1                               ; Num DIEs
	.long	2019
	.short	36
	.byte	0
	.long	0
Ltypes11:
	.long	207                             ; unsigned int
	.long	1                               ; Num DIEs
	.long	79
	.short	36
	.byte	0
	.long	0
Ltypes18:
	.long	559                             ; int8_t
	.long	1                               ; Num DIEs
	.long	1978
	.short	22
	.byte	0
	.long	0
Ltypes4:
	.long	566                             ; signed char
	.long	1                               ; Num DIEs
	.long	1989
	.short	36
	.byte	0
	.long	0
Ltypes19:
	.long	299                             ; long long
	.long	1                               ; Num DIEs
	.long	281
	.short	36
	.byte	0
	.long	0
Ltypes6:
	.long	639                             ; double
	.long	1                               ; Num DIEs
	.long	2106
	.short	36
	.byte	0
	.long	0
Ltypes10:
	.long	537                             ; unsigned short
	.long	1                               ; Num DIEs
	.long	1947
	.short	36
	.byte	0
	.long	0
.subsections_via_symbols
	.section	__DWARF,__debug_line,regular,debug
Lsection_line:
Lline_table_start0:
