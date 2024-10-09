	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 14, 4
	.file	1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types" "_uint8_t.h"
	.globl	_emulate_AMX_FMA64              ; -- Begin function emulate_AMX_FMA64
	.p2align	2
_emulate_AMX_FMA64:                     ; @emulate_AMX_FMA64
Lfunc_begin0:
	.file	2 "/Users/tarindujayatilaka/Documents/superopt/apple-amx" "fma.c"
	.loc	2 62 0                          ; fma.c:62:0
	.cfi_startproc
; %bb.0:
	;DEBUG_VALUE: emulate_AMX_FMA64:state <- $x0
	;DEBUG_VALUE: emulate_AMX_FMA64:operand <- $x1
	;DEBUG_VALUE: emulate_AMX_FMA64:operand <- $x1
	;DEBUG_VALUE: emulate_AMX_FMA64:state <- $x0
	sub	sp, sp, #240
	.cfi_def_cfa_offset 240
	stp	x28, x27, [sp, #144]            ; 16-byte Folded Spill
	stp	x26, x25, [sp, #160]            ; 16-byte Folded Spill
	stp	x24, x23, [sp, #176]            ; 16-byte Folded Spill
	stp	x22, x21, [sp, #192]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #208]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #224]            ; 16-byte Folded Spill
	add	x29, sp, #224
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
	stur	x8, [x29, #-88]
Ltmp0:
	.loc	2 63 33 prologue_end            ; fma.c:63:33
	and	x23, x1, #0x1ff
Ltmp1:
	;DEBUG_VALUE: emulate_AMX_FMA64:y_offset <- $x23
	.loc	2 64 41                         ; fma.c:64:41
	ubfx	x8, x1, #10, #9
Ltmp2:
	;DEBUG_VALUE: emulate_AMX_FMA64:x_offset <- $x8
	.loc	2 65 38                         ; fma.c:65:38
	ubfx	x15, x1, #20, #6
Ltmp3:
	;DEBUG_VALUE: emulate_AMX_FMA64:z_row <- $x15
	.loc	2 66 49                         ; fma.c:66:49
	lsr	x9, x1, #41
	mov	w10, #3
Ltmp4:
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: parse_writemask:g <- 8
	;DEBUG_VALUE: parse_writemask:val <- $w9
	.file	3 "/Users/tarindujayatilaka/Documents/superopt/apple-amx" "./emulate.h"
	.loc	3 67 9                          ; ./emulate.h:67:9
	ands	w11, w10, w9, lsr #5
Ltmp5:
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	.loc	3 0 9 is_stmt 0                 ; ./emulate.h:0:9
	mov	w10, #8
	.loc	3 67 9                          ; ./emulate.h:67:9
	csinc	w10, w10, wzr, ne
	mul	w10, w10, w9
Ltmp6:
	;DEBUG_VALUE: parse_writemask:val <- $w10
	.loc	3 68 9 is_stmt 1                ; ./emulate.h:68:9
	and	w9, w10, #0x3f
Ltmp7:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:val <- $w9
	.loc	3 0 9 is_stmt 0                 ; ./emulate.h:0:9
	mov	x19, x1
Ltmp8:
	;DEBUG_VALUE: emulate_AMX_FMA64:operand <- $x19
	mov	x20, x0
Ltmp9:
	;DEBUG_VALUE: emulate_AMX_FMA64:state <- $x20
Lloh3:
	adrp	x12, lJTI0_0@PAGE
Lloh4:
	add	x12, x12, lJTI0_0@PAGEOFF
Ltmp10:
	adr	x13, Ltmp10
	ldrsw	x14, [x12, x11, lsl #2]
	add	x13, x13, x14
	br	x13
Ltmp11:
LBB0_1:
	;DEBUG_VALUE: emulate_AMX_FMA64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA64:operand <- $x19
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:val <- $w9
	;DEBUG_VALUE: parse_writemask:g <- 8
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_FMA64:z_row <- $x15
	;DEBUG_VALUE: emulate_AMX_FMA64:x_offset <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA64:y_offset <- $x23
	.loc	3 72 22 is_stmt 1               ; ./emulate.h:72:22
	sub	w11, w9, #1
Ltmp12:
	ubfiz	w10, w10, #3, #1
	mov	x12, #71777214294589695
	lsl	x10, x12, x10
	cmp	w11, #2
	csinv	x10, x10, xzr, lo
Ltmp13:
	;DEBUG_VALUE: parse_writemask:all <- $x10
	.loc	3 83 16                         ; ./emulate.h:83:16
	cmp	w9, #3
	csel	x24, x10, xzr, lo
	b	LBB0_8
Ltmp14:
LBB0_2:
	;DEBUG_VALUE: emulate_AMX_FMA64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA64:operand <- $x19
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:val <- $w9
	;DEBUG_VALUE: parse_writemask:g <- 8
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_FMA64:z_row <- $x15
	;DEBUG_VALUE: emulate_AMX_FMA64:x_offset <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA64:y_offset <- $x23
	.loc	3 0 16 is_stmt 0                ; ./emulate.h:0:16
	mov	x24, #-1
	.loc	3 88 13 is_stmt 1               ; ./emulate.h:88:13
	cbz	w9, LBB0_8
Ltmp15:
; %bb.3:
	;DEBUG_VALUE: emulate_AMX_FMA64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA64:operand <- $x19
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:val <- $w9
	;DEBUG_VALUE: parse_writemask:g <- 8
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_FMA64:z_row <- $x15
	;DEBUG_VALUE: emulate_AMX_FMA64:x_offset <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA64:y_offset <- $x23
	.loc	3 91 22                         ; ./emulate.h:91:22
	lsl	x9, x24, x9
Ltmp16:
	.loc	3 0 22 is_stmt 0                ; ./emulate.h:0:22
	b	LBB0_6
Ltmp17:
LBB0_4:
	;DEBUG_VALUE: emulate_AMX_FMA64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA64:operand <- $x19
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:val <- $w9
	;DEBUG_VALUE: parse_writemask:g <- 8
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_FMA64:z_row <- $x15
	;DEBUG_VALUE: emulate_AMX_FMA64:x_offset <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA64:y_offset <- $x23
	mov	x24, #-1
	.loc	3 93 13 is_stmt 1               ; ./emulate.h:93:13
	cbz	w9, LBB0_8
Ltmp18:
; %bb.5:
	;DEBUG_VALUE: emulate_AMX_FMA64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA64:operand <- $x19
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:val <- $w9
	;DEBUG_VALUE: parse_writemask:g <- 8
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_FMA64:z_row <- $x15
	;DEBUG_VALUE: emulate_AMX_FMA64:x_offset <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA64:y_offset <- $x23
	.loc	3 96 22                         ; ./emulate.h:96:22
	lsr	x9, x24, x9
Ltmp19:
LBB0_6:
	;DEBUG_VALUE: emulate_AMX_FMA64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA64:operand <- $x19
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:g <- 8
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_FMA64:z_row <- $x15
	;DEBUG_VALUE: emulate_AMX_FMA64:x_offset <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA64:y_offset <- $x23
	.loc	3 0 0 is_stmt 0                 ; ./emulate.h:0:0
	mvn	x24, x9
	b	LBB0_8
Ltmp20:
LBB0_7:
	;DEBUG_VALUE: emulate_AMX_FMA64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA64:operand <- $x19
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:val <- $w9
	;DEBUG_VALUE: parse_writemask:g <- 8
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_FMA64:z_row <- $x15
	;DEBUG_VALUE: emulate_AMX_FMA64:x_offset <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA64:y_offset <- $x23
	mov	w10, #255
	.loc	3 86 30 is_stmt 1               ; ./emulate.h:86:30
	lsl	x24, x10, x9
Ltmp21:
LBB0_8:
	;DEBUG_VALUE: emulate_AMX_FMA64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA64:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMA64:z_row <- $x15
	;DEBUG_VALUE: emulate_AMX_FMA64:x_offset <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA64:y_offset <- $x23
	;DEBUG_VALUE: emulate_AMX_FMA64:x_enable <- $x24
	.loc	2 67 49                         ; fma.c:67:49
	lsr	x9, x19, #32
Ltmp22:
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: parse_writemask:g <- 8
	;DEBUG_VALUE: parse_writemask:val <- $w9
	.loc	3 66 61                         ; ./emulate.h:66:61
	lsr	x10, x19, #37
	.loc	3 67 9                          ; ./emulate.h:67:9
	ands	w11, w10, #0x3
Ltmp23:
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	.loc	3 0 9 is_stmt 0                 ; ./emulate.h:0:9
	mov	w10, #8
	.loc	3 67 9                          ; ./emulate.h:67:9
	csinc	w10, w10, wzr, ne
	mul	w10, w10, w9
Ltmp24:
	;DEBUG_VALUE: parse_writemask:val <- $w10
	.loc	3 68 9 is_stmt 1                ; ./emulate.h:68:9
	and	w9, w10, #0x3f
Ltmp25:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:val <- $w9
	.loc	3 0 9 is_stmt 0                 ; ./emulate.h:0:9
Lloh5:
	adrp	x12, lJTI0_1@PAGE
Lloh6:
	add	x12, x12, lJTI0_1@PAGEOFF
Ltmp26:
	adr	x13, Ltmp26
	ldrsw	x14, [x12, x11, lsl #2]
	add	x13, x13, x14
	str	x15, [sp]                       ; 8-byte Folded Spill
Ltmp27:
	;DEBUG_VALUE: emulate_AMX_FMA64:z_row <- [$sp+0]
	br	x13
Ltmp28:
LBB0_9:
	;DEBUG_VALUE: emulate_AMX_FMA64:z_row <- [$sp+0]
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:val <- $w9
	;DEBUG_VALUE: parse_writemask:g <- 8
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_FMA64:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA64:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMA64:x_offset <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA64:y_offset <- $x23
	.loc	3 72 22 is_stmt 1               ; ./emulate.h:72:22
	sub	w11, w9, #1
Ltmp29:
	ubfiz	w10, w10, #3, #1
	mov	x12, #71777214294589695
	lsl	x10, x12, x10
	cmp	w11, #2
	csinv	x10, x10, xzr, lo
Ltmp30:
	;DEBUG_VALUE: parse_writemask:all <- $x10
	.loc	3 83 16                         ; ./emulate.h:83:16
	cmp	w9, #3
	csel	x25, x10, xzr, lo
	b	LBB0_16
Ltmp31:
LBB0_10:
	;DEBUG_VALUE: emulate_AMX_FMA64:z_row <- [$sp+0]
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:val <- $w9
	;DEBUG_VALUE: parse_writemask:g <- 8
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_FMA64:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA64:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMA64:x_offset <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA64:y_offset <- $x23
	.loc	3 0 16 is_stmt 0                ; ./emulate.h:0:16
	mov	x25, #-1
	.loc	3 88 13 is_stmt 1               ; ./emulate.h:88:13
	cbz	w9, LBB0_16
Ltmp32:
; %bb.11:
	;DEBUG_VALUE: emulate_AMX_FMA64:z_row <- [$sp+0]
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:val <- $w9
	;DEBUG_VALUE: parse_writemask:g <- 8
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_FMA64:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA64:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMA64:x_offset <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA64:y_offset <- $x23
	.loc	3 91 22                         ; ./emulate.h:91:22
	lsl	x9, x25, x9
Ltmp33:
	.loc	3 0 22 is_stmt 0                ; ./emulate.h:0:22
	b	LBB0_14
Ltmp34:
LBB0_12:
	;DEBUG_VALUE: emulate_AMX_FMA64:z_row <- [$sp+0]
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:val <- $w9
	;DEBUG_VALUE: parse_writemask:g <- 8
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_FMA64:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA64:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMA64:x_offset <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA64:y_offset <- $x23
	mov	x25, #-1
	.loc	3 93 13 is_stmt 1               ; ./emulate.h:93:13
	cbz	w9, LBB0_16
Ltmp35:
; %bb.13:
	;DEBUG_VALUE: emulate_AMX_FMA64:z_row <- [$sp+0]
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:val <- $w9
	;DEBUG_VALUE: parse_writemask:g <- 8
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_FMA64:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA64:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMA64:x_offset <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA64:y_offset <- $x23
	.loc	3 96 22                         ; ./emulate.h:96:22
	lsr	x9, x25, x9
Ltmp36:
LBB0_14:
	;DEBUG_VALUE: emulate_AMX_FMA64:z_row <- [$sp+0]
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:g <- 8
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_FMA64:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA64:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMA64:x_offset <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA64:y_offset <- $x23
	.loc	3 0 0 is_stmt 0                 ; ./emulate.h:0:0
	mvn	x25, x9
	b	LBB0_16
Ltmp37:
LBB0_15:
	;DEBUG_VALUE: emulate_AMX_FMA64:z_row <- [$sp+0]
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:val <- $w9
	;DEBUG_VALUE: parse_writemask:g <- 8
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_FMA64:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA64:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMA64:x_offset <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA64:y_offset <- $x23
	mov	w10, #255
	.loc	3 86 30 is_stmt 1               ; ./emulate.h:86:30
	lsl	x25, x10, x9
Ltmp38:
LBB0_16:
	;DEBUG_VALUE: emulate_AMX_FMA64:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMA64:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA64:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMA64:x_offset <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA64:y_offset <- $x23
	;DEBUG_VALUE: emulate_AMX_FMA64:y_enable <- $x25
	.loc	3 0 30 is_stmt 0                ; ./emulate.h:0:30
	mov	w28, #512
Ltmp39:
	;DEBUG_VALUE: load_xy_reg:offset <- $x8
	;DEBUG_VALUE: load_xy_reg:src <- $x20
	;DEBUG_VALUE: load_xy_reg:dst <- [DW_OP_plus_uconst 72, DW_OP_stack_value] $sp
	.loc	3 42 26 is_stmt 1               ; ./emulate.h:42:26
	sub	x9, x28, x8
Ltmp40:
	;DEBUG_VALUE: load_xy_reg:avail <- $x9
	.loc	3 43 5                          ; ./emulate.h:43:5
	add	x1, x20, x8
	.loc	3 44 5                          ; ./emulate.h:44:5
	sub	x10, x8, #448
	mov	w26, #64
	.loc	3 43 5                          ; ./emulate.h:43:5
	cmp	x8, #449
	csel	x2, x26, x9, lo
	add	x27, sp, #72
	.loc	3 44 5                          ; ./emulate.h:44:5
	add	x21, x27, x9
	csel	x22, xzr, x10, lo
	.loc	3 43 5                          ; ./emulate.h:43:5
	add	x0, sp, #72
	mov	w3, #64
	bl	___memcpy_chk
Ltmp41:
	.loc	3 44 5                          ; ./emulate.h:44:5
	mov	x0, x21
	mov	x1, x20
	mov	x2, x22
	bl	_memcpy
Ltmp42:
	.loc	2 72 27                         ; fma.c:72:27
	add	x21, x20, #512
Ltmp43:
	;DEBUG_VALUE: load_xy_reg:offset <- $x23
	;DEBUG_VALUE: load_xy_reg:dst <- [DW_OP_plus_uconst 8, DW_OP_stack_value] $sp
	;DEBUG_VALUE: load_xy_reg:src <- $x21
	.loc	3 42 26                         ; ./emulate.h:42:26
	sub	x8, x28, x23
Ltmp44:
	;DEBUG_VALUE: load_xy_reg:avail <- $x8
	.loc	3 43 5                          ; ./emulate.h:43:5
	add	x1, x21, x23
	.loc	3 44 5                          ; ./emulate.h:44:5
	sub	x9, x23, #448
	.loc	3 43 5                          ; ./emulate.h:43:5
	cmp	x23, #449
	csel	x2, x26, x8, lo
	add	x28, sp, #8
	.loc	3 44 5                          ; ./emulate.h:44:5
	add	x22, x28, x8
	csel	x23, xzr, x9, lo
Ltmp45:
	.loc	3 43 5                          ; ./emulate.h:43:5
	add	x0, sp, #8
	mov	w3, #64
	bl	___memcpy_chk
Ltmp46:
	.loc	3 44 5                          ; ./emulate.h:44:5
	mov	x0, x22
	mov	x1, x21
	mov	x2, x23
	bl	_memcpy
Ltmp47:
	;DEBUG_VALUE: i <- 0
	.loc	3 0 5 is_stmt 0                 ; ./emulate.h:0:5
	mov	x8, #0
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	add	x9, x20, x9, lsl #6
	add	x9, x9, #1024
	ubfx	x11, x19, #27, #3
	ubfx	x10, x19, #20, #3
	sub	x11, x11, #1
Lloh7:
	adrp	x12, lJTI0_3@PAGE
Lloh8:
	add	x12, x12, lJTI0_3@PAGEOFF
Lloh9:
	adrp	x13, lJTI0_2@PAGE
Lloh10:
	add	x13, x13, lJTI0_2@PAGEOFF
	b	LBB0_19
Ltmp48:
LBB0_17:                                ;   in Loop: Header=BB0_19 Depth=1
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA64:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMA64:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMA64:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA64:operand <- $x19
	fmov	d0, d1
Ltmp49:
	.loc	2 78 16 is_stmt 1               ; fma.c:78:16
	str	d1, [x9, x8, lsl #3]
Ltmp50:
LBB0_18:                                ;   in Loop: Header=BB0_19 Depth=1
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA64:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMA64:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMA64:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA64:operand <- $x19
	.loc	2 74 29                         ; fma.c:74:29
	add	x8, x8, #1
Ltmp51:
	;DEBUG_VALUE: i <- $x8
	.loc	2 74 5 is_stmt 0                ; fma.c:74:5
	cmp	x8, #8
	b.eq	LBB0_43
Ltmp52:
LBB0_19:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_25 Depth 2
	;DEBUG_VALUE: emulate_AMX_FMA64:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMA64:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMA64:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA64:operand <- $x19
	;DEBUG_VALUE: i <- $x8
	.loc	2 75 31 is_stmt 1               ; fma.c:75:31
	lsl	x14, x8, #3
Ltmp53:
	.loc	2 75 13 is_stmt 0               ; fma.c:75:13
	lsr	x15, x24, x14
	tbz	w15, #0, LBB0_18
Ltmp54:
; %bb.20:                               ;   in Loop: Header=BB0_19 Depth=1
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA64:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMA64:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMA64:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA64:operand <- $x19
	.loc	2 76 13 is_stmt 1               ; fma.c:76:13
	tbnz	x19, #63, LBB0_34
Ltmp55:
; %bb.21:                               ;   in Loop: Header=BB0_19 Depth=1
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA64:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMA64:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMA64:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA64:operand <- $x19
	;DEBUG_VALUE: j <- 0
	.loc	2 0 13 is_stmt 0                ; fma.c:0:13
	mov	x15, #0
	b	LBB0_25
Ltmp56:
LBB0_22:                                ;   in Loop: Header=BB0_25 Depth=2
	;DEBUG_VALUE: fma64_alu:z <- $d2
	;DEBUG_VALUE: fma64_alu:x <- $d0
	;DEBUG_VALUE: fma64_alu:y <- $d1
	;DEBUG_VALUE: fma64_alu:operand <- $x19
	;DEBUG_VALUE: j <- [DW_OP_consts 8, DW_OP_div, DW_OP_stack_value] $x15
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA64:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMA64:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMA64:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA64:operand <- $x19
	fmov	d0, d1
Ltmp57:
LBB0_23:                                ;   in Loop: Header=BB0_25 Depth=2
	;DEBUG_VALUE: j <- [DW_OP_consts 8, DW_OP_div, DW_OP_stack_value] $x15
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA64:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMA64:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMA64:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA64:operand <- $x19
	.loc	2 83 20 is_stmt 1               ; fma.c:83:20
	str	d0, [x16, x8, lsl #3]
Ltmp58:
LBB0_24:                                ;   in Loop: Header=BB0_25 Depth=2
	;DEBUG_VALUE: j <- [DW_OP_consts 8, DW_OP_div, DW_OP_stack_value] $x15
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA64:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMA64:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMA64:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA64:operand <- $x19
	;DEBUG_VALUE: j <- [DW_OP_consts 8, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] $x15
	.loc	2 80 31                         ; fma.c:80:31
	add	x15, x15, #8
Ltmp59:
	.loc	2 80 13 is_stmt 0               ; fma.c:80:13
	cmp	x15, #64
	b.eq	LBB0_18
Ltmp60:
LBB0_25:                                ;   Parent Loop BB0_19 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA64:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMA64:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMA64:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA64:operand <- $x19
	;DEBUG_VALUE: j <- [DW_OP_consts 8, DW_OP_div, DW_OP_stack_value] $x15
	.loc	2 81 21 is_stmt 1               ; fma.c:81:21
	lsr	x16, x25, x15
	tbz	w16, #0, LBB0_24
Ltmp61:
; %bb.26:                               ;   in Loop: Header=BB0_25 Depth=2
	;DEBUG_VALUE: j <- [DW_OP_consts 8, DW_OP_div, DW_OP_stack_value] $x15
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA64:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMA64:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMA64:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA64:operand <- $x19
	.loc	2 82 47                         ; fma.c:82:47
	orr	x16, x10, x15
	.loc	2 82 30 is_stmt 0               ; fma.c:82:30
	add	x16, x20, x16, lsl #6
	.loc	2 83 32 is_stmt 1               ; fma.c:83:32
	ldr	d0, [x27, x14]
	.loc	2 82 30                         ; fma.c:82:30
	add	x16, x16, #1024
Ltmp62:
	;DEBUG_VALUE: z <- undef
	.loc	2 83 38                         ; fma.c:83:38
	ldr	d1, [x28, x15]
	.loc	2 83 44 is_stmt 0               ; fma.c:83:44
	ldr	d2, [x16, x14]
Ltmp63:
	;DEBUG_VALUE: fma64_alu:operand <- $x19
	;DEBUG_VALUE: fma64_alu:y <- $d1
	;DEBUG_VALUE: fma64_alu:x <- $d0
	;DEBUG_VALUE: fma64_alu:z <- $d2
	.loc	2 7 5 is_stmt 1                 ; fma.c:7:5
	cmp	x11, #6
	b.hi	LBB0_31
Ltmp64:
; %bb.27:                               ;   in Loop: Header=BB0_25 Depth=2
	;DEBUG_VALUE: fma64_alu:z <- $d2
	;DEBUG_VALUE: fma64_alu:x <- $d0
	;DEBUG_VALUE: fma64_alu:y <- $d1
	;DEBUG_VALUE: fma64_alu:operand <- $x19
	;DEBUG_VALUE: j <- [DW_OP_consts 8, DW_OP_div, DW_OP_stack_value] $x15
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA64:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMA64:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMA64:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA64:operand <- $x19
	.loc	2 0 5 is_stmt 0                 ; fma.c:0:5
Ltmp65:
	adr	x17, Ltmp65
	ldrsw	x0, [x12, x11, lsl #2]
	add	x17, x17, x0
	br	x17
Ltmp66:
LBB0_28:                                ;   in Loop: Header=BB0_25 Depth=2
	;DEBUG_VALUE: fma64_alu:z <- $d2
	;DEBUG_VALUE: fma64_alu:x <- $d0
	;DEBUG_VALUE: fma64_alu:y <- $d1
	;DEBUG_VALUE: fma64_alu:operand <- $x19
	;DEBUG_VALUE: j <- [DW_OP_consts 8, DW_OP_div, DW_OP_stack_value] $x15
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA64:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMA64:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMA64:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA64:operand <- $x19
	.loc	2 8 22 is_stmt 1                ; fma.c:8:22
	fmul	d0, d0, d1
Ltmp67:
	.loc	2 0 22 is_stmt 0                ; fma.c:0:22
	b	LBB0_23
Ltmp68:
LBB0_29:                                ;   in Loop: Header=BB0_25 Depth=2
	;DEBUG_VALUE: fma64_alu:z <- $d2
	;DEBUG_VALUE: fma64_alu:x <- $d0
	;DEBUG_VALUE: fma64_alu:y <- $d1
	;DEBUG_VALUE: fma64_alu:operand <- $x19
	;DEBUG_VALUE: j <- [DW_OP_consts 8, DW_OP_div, DW_OP_stack_value] $x15
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA64:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMA64:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMA64:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA64:operand <- $x19
	.loc	2 9 22 is_stmt 1                ; fma.c:9:22
	fadd	d0, d0, d2
Ltmp69:
	.loc	2 0 22 is_stmt 0                ; fma.c:0:22
	b	LBB0_23
Ltmp70:
LBB0_30:                                ;   in Loop: Header=BB0_25 Depth=2
	;DEBUG_VALUE: fma64_alu:z <- $d2
	;DEBUG_VALUE: fma64_alu:x <- $d0
	;DEBUG_VALUE: fma64_alu:y <- $d1
	;DEBUG_VALUE: fma64_alu:operand <- $x19
	;DEBUG_VALUE: j <- [DW_OP_consts 8, DW_OP_div, DW_OP_stack_value] $x15
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA64:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMA64:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMA64:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA64:operand <- $x19
	.loc	2 11 22 is_stmt 1               ; fma.c:11:22
	fadd	d0, d1, d2
Ltmp71:
	.loc	2 0 22 is_stmt 0                ; fma.c:0:22
	b	LBB0_23
Ltmp72:
LBB0_31:                                ;   in Loop: Header=BB0_25 Depth=2
	;DEBUG_VALUE: fma64_alu:z <- $d2
	;DEBUG_VALUE: fma64_alu:x <- $d0
	;DEBUG_VALUE: fma64_alu:y <- $d1
	;DEBUG_VALUE: fma64_alu:operand <- $x19
	;DEBUG_VALUE: j <- [DW_OP_consts 8, DW_OP_div, DW_OP_stack_value] $x15
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA64:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMA64:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMA64:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA64:operand <- $x19
	.loc	2 17 5 is_stmt 1                ; fma.c:17:5
	; InlineAsm Start
	fmadd	d0, d0, d1, d2
	; InlineAsm End
Ltmp73:
	;DEBUG_VALUE: fma64_alu:result <- $d0
	.loc	2 0 5 is_stmt 0                 ; fma.c:0:5
	b	LBB0_23
Ltmp74:
LBB0_32:                                ;   in Loop: Header=BB0_25 Depth=2
	;DEBUG_VALUE: fma64_alu:z <- $d2
	;DEBUG_VALUE: fma64_alu:x <- $d0
	;DEBUG_VALUE: fma64_alu:y <- $d1
	;DEBUG_VALUE: fma64_alu:operand <- $x19
	;DEBUG_VALUE: j <- [DW_OP_consts 8, DW_OP_div, DW_OP_stack_value] $x15
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA64:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMA64:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMA64:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA64:operand <- $x19
	fmov	d0, d2
	b	LBB0_23
Ltmp75:
LBB0_33:                                ;   in Loop: Header=BB0_25 Depth=2
	;DEBUG_VALUE: fma64_alu:z <- $d2
	;DEBUG_VALUE: fma64_alu:x <- $d0
	;DEBUG_VALUE: fma64_alu:y <- $d1
	;DEBUG_VALUE: fma64_alu:operand <- $x19
	;DEBUG_VALUE: j <- [DW_OP_consts 8, DW_OP_div, DW_OP_stack_value] $x15
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA64:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMA64:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMA64:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA64:operand <- $x19
	movi	d0, #0000000000000000
	b	LBB0_23
Ltmp76:
LBB0_34:                                ;   in Loop: Header=BB0_19 Depth=1
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA64:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMA64:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMA64:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA64:operand <- $x19
	;DEBUG_VALUE: z <- undef
	.loc	2 78 28 is_stmt 1               ; fma.c:78:28
	ldr	d0, [x27, x14]
	.loc	2 78 34 is_stmt 0               ; fma.c:78:34
	ldr	d1, [x28, x14]
	.loc	2 78 40                         ; fma.c:78:40
	ldr	d2, [x9, x14]
Ltmp77:
	;DEBUG_VALUE: fma64_alu:operand <- $x19
	;DEBUG_VALUE: fma64_alu:y <- $d1
	;DEBUG_VALUE: fma64_alu:x <- $d0
	;DEBUG_VALUE: fma64_alu:z <- $d2
	.loc	2 7 5 is_stmt 1                 ; fma.c:7:5
	cmp	x11, #6
	b.hi	LBB0_37
Ltmp78:
; %bb.35:                               ;   in Loop: Header=BB0_19 Depth=1
	;DEBUG_VALUE: fma64_alu:z <- $d2
	;DEBUG_VALUE: fma64_alu:x <- $d0
	;DEBUG_VALUE: fma64_alu:y <- $d1
	;DEBUG_VALUE: fma64_alu:operand <- $x19
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA64:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMA64:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMA64:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA64:operand <- $x19
	.loc	2 0 5 is_stmt 0                 ; fma.c:0:5
Ltmp79:
	adr	x14, Ltmp79
	ldrsw	x15, [x13, x11, lsl #2]
	add	x14, x14, x15
	br	x14
Ltmp80:
LBB0_36:                                ;   in Loop: Header=BB0_19 Depth=1
	;DEBUG_VALUE: fma64_alu:z <- $d2
	;DEBUG_VALUE: fma64_alu:x <- $d0
	;DEBUG_VALUE: fma64_alu:y <- $d1
	;DEBUG_VALUE: fma64_alu:operand <- $x19
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA64:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMA64:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMA64:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA64:operand <- $x19
	.loc	2 8 22 is_stmt 1                ; fma.c:8:22
	fmul	d0, d0, d1
Ltmp81:
	.loc	2 78 16                         ; fma.c:78:16
	str	d0, [x9, x8, lsl #3]
	b	LBB0_18
Ltmp82:
LBB0_37:                                ;   in Loop: Header=BB0_19 Depth=1
	;DEBUG_VALUE: fma64_alu:z <- $d2
	;DEBUG_VALUE: fma64_alu:x <- $d0
	;DEBUG_VALUE: fma64_alu:y <- $d1
	;DEBUG_VALUE: fma64_alu:operand <- $x19
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA64:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMA64:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMA64:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA64:operand <- $x19
	.loc	2 17 5                          ; fma.c:17:5
	; InlineAsm Start
	fmadd	d0, d0, d1, d2
	; InlineAsm End
Ltmp83:
	;DEBUG_VALUE: fma64_alu:result <- $d0
LBB0_38:                                ;   in Loop: Header=BB0_19 Depth=1
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA64:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMA64:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMA64:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA64:operand <- $x19
	.loc	2 78 16                         ; fma.c:78:16
	str	d0, [x9, x8, lsl #3]
	b	LBB0_18
Ltmp84:
LBB0_39:                                ;   in Loop: Header=BB0_19 Depth=1
	;DEBUG_VALUE: fma64_alu:z <- $d2
	;DEBUG_VALUE: fma64_alu:x <- $d0
	;DEBUG_VALUE: fma64_alu:y <- $d1
	;DEBUG_VALUE: fma64_alu:operand <- $x19
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA64:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMA64:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMA64:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA64:operand <- $x19
	.loc	2 9 22                          ; fma.c:9:22
	fadd	d0, d0, d2
Ltmp85:
	.loc	2 78 16                         ; fma.c:78:16
	str	d0, [x9, x8, lsl #3]
	b	LBB0_18
Ltmp86:
LBB0_40:                                ;   in Loop: Header=BB0_19 Depth=1
	;DEBUG_VALUE: fma64_alu:z <- $d2
	;DEBUG_VALUE: fma64_alu:x <- $d0
	;DEBUG_VALUE: fma64_alu:y <- $d1
	;DEBUG_VALUE: fma64_alu:operand <- $x19
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA64:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMA64:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMA64:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA64:operand <- $x19
	.loc	2 11 22                         ; fma.c:11:22
	fadd	d0, d1, d2
Ltmp87:
	.loc	2 78 16                         ; fma.c:78:16
	str	d0, [x9, x8, lsl #3]
	b	LBB0_18
Ltmp88:
LBB0_41:                                ;   in Loop: Header=BB0_19 Depth=1
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA64:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMA64:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMA64:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA64:operand <- $x19
	.loc	2 0 16 is_stmt 0                ; fma.c:0:16
	fmov	d0, d2
	.loc	2 78 16                         ; fma.c:78:16
	str	d2, [x9, x8, lsl #3]
	b	LBB0_18
Ltmp89:
LBB0_42:                                ;   in Loop: Header=BB0_19 Depth=1
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA64:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMA64:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMA64:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA64:operand <- $x19
	.loc	2 0 16                          ; fma.c:0:16
	movi	d0, #0000000000000000
	.loc	2 78 16                         ; fma.c:78:16
	str	d0, [x9, x8, lsl #3]
	b	LBB0_18
Ltmp90:
LBB0_43:
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA64:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMA64:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMA64:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA64:operand <- $x19
	.loc	2 0 16                          ; fma.c:0:16
	ldur	x8, [x29, #-88]
Lloh11:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh12:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh13:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB0_45
Ltmp91:
; %bb.44:
	;DEBUG_VALUE: emulate_AMX_FMA64:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMA64:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMA64:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA64:operand <- $x19
	.loc	2 87 1 is_stmt 1                ; fma.c:87:1
	ldp	x29, x30, [sp, #224]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #208]            ; 16-byte Folded Reload
Ltmp92:
	;DEBUG_VALUE: emulate_AMX_FMA64:state <- [DW_OP_LLVM_entry_value 1] $x0
	;DEBUG_VALUE: emulate_AMX_FMA64:operand <- [DW_OP_LLVM_entry_value 1] $x1
	ldp	x22, x21, [sp, #192]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #176]            ; 16-byte Folded Reload
Ltmp93:
	ldp	x26, x25, [sp, #160]            ; 16-byte Folded Reload
Ltmp94:
	ldp	x28, x27, [sp, #144]            ; 16-byte Folded Reload
	add	sp, sp, #240
Ltmp95:
	ret
Ltmp96:
LBB0_45:
	;DEBUG_VALUE: emulate_AMX_FMA64:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMA64:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMA64:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA64:operand <- $x19
	.loc	2 0 1 is_stmt 0                 ; fma.c:0:1
	bl	___stack_chk_fail
Ltmp97:
	.loh AdrpAdd	Lloh3, Lloh4
	.loh AdrpLdrGotLdr	Lloh0, Lloh1, Lloh2
	.loh AdrpAdd	Lloh5, Lloh6
	.loh AdrpAdd	Lloh9, Lloh10
	.loh AdrpAdd	Lloh7, Lloh8
	.loh AdrpLdrGotLdr	Lloh11, Lloh12, Lloh13
Lfunc_end0:
	.cfi_endproc
	.p2align	2
lJTI0_0:
	.long	LBB0_1-Ltmp10
	.long	LBB0_7-Ltmp10
	.long	LBB0_2-Ltmp10
	.long	LBB0_4-Ltmp10
	.p2align	2
lJTI0_1:
	.long	LBB0_9-Ltmp26
	.long	LBB0_15-Ltmp26
	.long	LBB0_10-Ltmp26
	.long	LBB0_12-Ltmp26
	.p2align	2
lJTI0_2:
	.long	LBB0_36-Ltmp79
	.long	LBB0_39-Ltmp79
	.long	LBB0_38-Ltmp79
	.long	LBB0_40-Ltmp79
	.long	LBB0_17-Ltmp79
	.long	LBB0_41-Ltmp79
	.long	LBB0_42-Ltmp79
	.p2align	2
lJTI0_3:
	.long	LBB0_28-Ltmp65
	.long	LBB0_29-Ltmp65
	.long	LBB0_23-Ltmp65
	.long	LBB0_30-Ltmp65
	.long	LBB0_22-Ltmp65
	.long	LBB0_32-Ltmp65
	.long	LBB0_33-Ltmp65
	.file	4 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types" "_uint64_t.h"
	.file	5 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types" "_uint32_t.h"
                                        ; -- End function
	.globl	_emulate_AMX_FMA32              ; -- Begin function emulate_AMX_FMA32
	.p2align	2
_emulate_AMX_FMA32:                     ; @emulate_AMX_FMA32
Lfunc_begin1:
	.loc	2 89 0 is_stmt 1                ; fma.c:89:0
	.cfi_startproc
; %bb.0:
	;DEBUG_VALUE: emulate_AMX_FMA32:state <- $x0
	;DEBUG_VALUE: emulate_AMX_FMA32:operand <- $x1
	;DEBUG_VALUE: emulate_AMX_FMA32:operand <- $x1
	;DEBUG_VALUE: emulate_AMX_FMA32:state <- $x0
	sub	sp, sp, #224
	.cfi_def_cfa_offset 224
	stp	x26, x25, [sp, #144]            ; 16-byte Folded Spill
	stp	x24, x23, [sp, #160]            ; 16-byte Folded Spill
	stp	x22, x21, [sp, #176]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #192]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #208]            ; 16-byte Folded Spill
	add	x29, sp, #208
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
Lloh14:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh15:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh16:
	ldr	x8, [x8]
	stur	x8, [x29, #-72]
Ltmp98:
	.loc	2 90 33 prologue_end            ; fma.c:90:33
	and	x21, x1, #0x1ff
Ltmp99:
	;DEBUG_VALUE: emulate_AMX_FMA32:y_offset <- $x21
	.loc	2 91 41                         ; fma.c:91:41
	ubfx	x2, x1, #10, #9
Ltmp100:
	;DEBUG_VALUE: emulate_AMX_FMA32:x_offset <- $x2
	.loc	2 92 38                         ; fma.c:92:38
	ubfx	x26, x1, #20, #6
Ltmp101:
	;DEBUG_VALUE: emulate_AMX_FMA32:z_row <- $x26
	.loc	2 93 49                         ; fma.c:93:49
	lsr	x8, x1, #41
	mov	w9, #3
Ltmp102:
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: parse_writemask:g <- 4
	;DEBUG_VALUE: parse_writemask:val <- $w8
	.loc	3 67 9                          ; ./emulate.h:67:9
	ands	w10, w9, w8, lsr #5
Ltmp103:
	;DEBUG_VALUE: parse_writemask:mode <- $w10
	.loc	3 0 9 is_stmt 0                 ; ./emulate.h:0:9
	mov	w9, #4
	.loc	3 67 9                          ; ./emulate.h:67:9
	csinc	w9, w9, wzr, ne
	mul	w9, w9, w8
Ltmp104:
	;DEBUG_VALUE: parse_writemask:val <- $w9
	.loc	3 68 9 is_stmt 1                ; ./emulate.h:68:9
	and	w8, w9, #0x3f
Ltmp105:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:val <- $w8
	.loc	3 0 9 is_stmt 0                 ; ./emulate.h:0:9
	mov	x19, x1
Ltmp106:
	;DEBUG_VALUE: emulate_AMX_FMA32:operand <- $x19
	mov	x20, x0
Ltmp107:
	;DEBUG_VALUE: emulate_AMX_FMA32:state <- $x20
Lloh17:
	adrp	x11, lJTI1_0@PAGE
Lloh18:
	add	x11, x11, lJTI1_0@PAGEOFF
Ltmp108:
	adr	x12, Ltmp108
	ldrsw	x13, [x11, x10, lsl #2]
	add	x12, x12, x13
	br	x12
Ltmp109:
LBB1_1:
	;DEBUG_VALUE: emulate_AMX_FMA32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA32:operand <- $x19
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w10
	;DEBUG_VALUE: parse_writemask:val <- $w8
	;DEBUG_VALUE: parse_writemask:g <- 4
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_FMA32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMA32:x_offset <- $x2
	;DEBUG_VALUE: emulate_AMX_FMA32:y_offset <- $x21
	.loc	3 72 22 is_stmt 1               ; ./emulate.h:72:22
	sub	w10, w8, #1
Ltmp110:
	ubfiz	w9, w9, #2, #1
	mov	x11, #1085102592571150095
	lsl	x9, x11, x9
	cmp	w10, #2
	csinv	x9, x9, xzr, lo
Ltmp111:
	;DEBUG_VALUE: parse_writemask:all <- $x9
	.loc	3 83 16                         ; ./emulate.h:83:16
	cmp	w8, #3
	csel	x22, x9, xzr, lo
	b	LBB1_6
Ltmp112:
LBB1_2:
	;DEBUG_VALUE: emulate_AMX_FMA32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA32:operand <- $x19
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w10
	;DEBUG_VALUE: parse_writemask:val <- $w8
	;DEBUG_VALUE: parse_writemask:g <- 4
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_FMA32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMA32:x_offset <- $x2
	;DEBUG_VALUE: emulate_AMX_FMA32:y_offset <- $x21
	.loc	3 0 16 is_stmt 0                ; ./emulate.h:0:16
	mov	x9, #-1
	.loc	3 91 22 is_stmt 1               ; ./emulate.h:91:22
	lsl	x10, x9, x8
Ltmp113:
	.loc	3 0 22 is_stmt 0                ; ./emulate.h:0:22
	b	LBB1_4
Ltmp114:
LBB1_3:
	;DEBUG_VALUE: emulate_AMX_FMA32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA32:operand <- $x19
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w10
	;DEBUG_VALUE: parse_writemask:val <- $w8
	;DEBUG_VALUE: parse_writemask:g <- 4
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_FMA32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMA32:x_offset <- $x2
	;DEBUG_VALUE: emulate_AMX_FMA32:y_offset <- $x21
	mov	x9, #-1
	.loc	3 96 22 is_stmt 1               ; ./emulate.h:96:22
	lsr	x10, x9, x8
Ltmp115:
LBB1_4:
	;DEBUG_VALUE: emulate_AMX_FMA32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA32:operand <- $x19
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:val <- $w8
	;DEBUG_VALUE: parse_writemask:g <- 4
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_FMA32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMA32:x_offset <- $x2
	;DEBUG_VALUE: emulate_AMX_FMA32:y_offset <- $x21
	.loc	3 0 0 is_stmt 0                 ; ./emulate.h:0:0
	cmp	w8, #0
	csinv	x22, x9, x10, eq
	b	LBB1_6
Ltmp116:
LBB1_5:
	;DEBUG_VALUE: emulate_AMX_FMA32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA32:operand <- $x19
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w10
	;DEBUG_VALUE: parse_writemask:val <- $w8
	;DEBUG_VALUE: parse_writemask:g <- 4
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_FMA32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMA32:x_offset <- $x2
	;DEBUG_VALUE: emulate_AMX_FMA32:y_offset <- $x21
	mov	w9, #15
	.loc	3 86 30 is_stmt 1               ; ./emulate.h:86:30
	lsl	x22, x9, x8
Ltmp117:
LBB1_6:
	;DEBUG_VALUE: emulate_AMX_FMA32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA32:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMA32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMA32:x_offset <- $x2
	;DEBUG_VALUE: emulate_AMX_FMA32:y_offset <- $x21
	;DEBUG_VALUE: emulate_AMX_FMA32:x_enable <- $x22
	.loc	2 94 49                         ; fma.c:94:49
	lsr	x8, x19, #32
Ltmp118:
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: parse_writemask:g <- 4
	;DEBUG_VALUE: parse_writemask:val <- $w8
	.loc	3 66 61                         ; ./emulate.h:66:61
	lsr	x9, x19, #37
	.loc	3 67 9                          ; ./emulate.h:67:9
	ands	w10, w9, #0x3
Ltmp119:
	;DEBUG_VALUE: parse_writemask:mode <- $w10
	.loc	3 0 9 is_stmt 0                 ; ./emulate.h:0:9
	mov	w9, #4
	.loc	3 67 9                          ; ./emulate.h:67:9
	csinc	w9, w9, wzr, ne
	mul	w9, w9, w8
Ltmp120:
	;DEBUG_VALUE: parse_writemask:val <- $w9
	.loc	3 68 9 is_stmt 1                ; ./emulate.h:68:9
	and	w8, w9, #0x3f
Ltmp121:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:val <- $w8
	.loc	3 0 9 is_stmt 0                 ; ./emulate.h:0:9
Lloh19:
	adrp	x11, lJTI1_1@PAGE
Lloh20:
	add	x11, x11, lJTI1_1@PAGEOFF
Ltmp122:
	adr	x12, Ltmp122
	ldrsw	x13, [x11, x10, lsl #2]
	add	x12, x12, x13
	br	x12
Ltmp123:
LBB1_7:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w10
	;DEBUG_VALUE: parse_writemask:val <- $w8
	;DEBUG_VALUE: parse_writemask:g <- 4
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_FMA32:x_enable <- $x22
	;DEBUG_VALUE: emulate_AMX_FMA32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA32:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMA32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMA32:x_offset <- $x2
	;DEBUG_VALUE: emulate_AMX_FMA32:y_offset <- $x21
	.loc	3 72 22 is_stmt 1               ; ./emulate.h:72:22
	sub	w10, w8, #1
Ltmp124:
	ubfiz	w9, w9, #2, #1
	mov	x11, #1085102592571150095
	lsl	x9, x11, x9
	cmp	w10, #2
	csinv	x9, x9, xzr, lo
Ltmp125:
	;DEBUG_VALUE: parse_writemask:all <- $x9
	.loc	3 83 16                         ; ./emulate.h:83:16
	cmp	w8, #3
	csel	x23, x9, xzr, lo
	b	LBB1_12
Ltmp126:
LBB1_8:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w10
	;DEBUG_VALUE: parse_writemask:val <- $w8
	;DEBUG_VALUE: parse_writemask:g <- 4
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_FMA32:x_enable <- $x22
	;DEBUG_VALUE: emulate_AMX_FMA32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA32:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMA32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMA32:x_offset <- $x2
	;DEBUG_VALUE: emulate_AMX_FMA32:y_offset <- $x21
	.loc	3 0 16 is_stmt 0                ; ./emulate.h:0:16
	mov	x9, #-1
	.loc	3 91 22 is_stmt 1               ; ./emulate.h:91:22
	lsl	x10, x9, x8
Ltmp127:
	.loc	3 0 22 is_stmt 0                ; ./emulate.h:0:22
	b	LBB1_10
Ltmp128:
LBB1_9:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w10
	;DEBUG_VALUE: parse_writemask:val <- $w8
	;DEBUG_VALUE: parse_writemask:g <- 4
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_FMA32:x_enable <- $x22
	;DEBUG_VALUE: emulate_AMX_FMA32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA32:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMA32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMA32:x_offset <- $x2
	;DEBUG_VALUE: emulate_AMX_FMA32:y_offset <- $x21
	mov	x9, #-1
	.loc	3 96 22 is_stmt 1               ; ./emulate.h:96:22
	lsr	x10, x9, x8
Ltmp129:
LBB1_10:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:val <- $w8
	;DEBUG_VALUE: parse_writemask:g <- 4
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_FMA32:x_enable <- $x22
	;DEBUG_VALUE: emulate_AMX_FMA32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA32:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMA32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMA32:x_offset <- $x2
	;DEBUG_VALUE: emulate_AMX_FMA32:y_offset <- $x21
	.loc	3 0 0 is_stmt 0                 ; ./emulate.h:0:0
	cmp	w8, #0
	csinv	x23, x9, x10, eq
	b	LBB1_12
Ltmp130:
LBB1_11:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w10
	;DEBUG_VALUE: parse_writemask:val <- $w8
	;DEBUG_VALUE: parse_writemask:g <- 4
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_FMA32:x_enable <- $x22
	;DEBUG_VALUE: emulate_AMX_FMA32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA32:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMA32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMA32:x_offset <- $x2
	;DEBUG_VALUE: emulate_AMX_FMA32:y_offset <- $x21
	mov	w9, #15
	.loc	3 86 30 is_stmt 1               ; ./emulate.h:86:30
	lsl	x23, x9, x8
Ltmp131:
LBB1_12:
	;DEBUG_VALUE: emulate_AMX_FMA32:x_enable <- $x22
	;DEBUG_VALUE: emulate_AMX_FMA32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA32:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMA32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMA32:x_offset <- $x2
	;DEBUG_VALUE: emulate_AMX_FMA32:y_offset <- $x21
	;DEBUG_VALUE: emulate_AMX_FMA32:y_enable <- $x23
	.loc	2 98 54                         ; fma.c:98:54
	and	x3, x19, #0x2000000000000000
	add	x24, sp, #72
	.loc	2 98 5 is_stmt 0                ; fma.c:98:5
	add	x0, sp, #72
	mov	x1, x20
	bl	_load_xy_reg_fma32
Ltmp132:
	.loc	2 99 33 is_stmt 1               ; fma.c:99:33
	add	x1, x20, #512
	.loc	2 99 54 is_stmt 0               ; fma.c:99:54
	and	x3, x19, #0x1000000000000000
	add	x25, sp, #8
	.loc	2 99 5                          ; fma.c:99:5
	add	x0, sp, #8
	mov	x2, x21
	bl	_load_xy_reg_fma32
Ltmp133:
	;DEBUG_VALUE: i <- 0
	.loc	2 0 5                           ; fma.c:0:5
	mov	x8, #0
	add	x9, x20, x26, lsl #6
	add	x9, x9, #1024
	ubfx	x11, x19, #27, #3
	ubfx	x10, x19, #20, #2
	sub	x11, x11, #1
Lloh21:
	adrp	x12, lJTI1_3@PAGE
Lloh22:
	add	x12, x12, lJTI1_3@PAGEOFF
Lloh23:
	adrp	x13, lJTI1_2@PAGE
Lloh24:
	add	x13, x13, lJTI1_2@PAGEOFF
	b	LBB1_15
Ltmp134:
LBB1_13:                                ;   in Loop: Header=BB1_15 Depth=1
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA32:y_enable <- $x23
	;DEBUG_VALUE: emulate_AMX_FMA32:x_enable <- $x22
	;DEBUG_VALUE: emulate_AMX_FMA32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA32:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMA32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMA32:y_offset <- $x21
	fmov	s0, s1
Ltmp135:
	.loc	2 105 16 is_stmt 1              ; fma.c:105:16
	str	s1, [x9, x8, lsl #2]
Ltmp136:
LBB1_14:                                ;   in Loop: Header=BB1_15 Depth=1
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA32:y_enable <- $x23
	;DEBUG_VALUE: emulate_AMX_FMA32:x_enable <- $x22
	;DEBUG_VALUE: emulate_AMX_FMA32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA32:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMA32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMA32:y_offset <- $x21
	.loc	2 101 30                        ; fma.c:101:30
	add	x8, x8, #1
Ltmp137:
	;DEBUG_VALUE: i <- $x8
	.loc	2 101 5 is_stmt 0               ; fma.c:101:5
	cmp	x8, #16
	b.eq	LBB1_39
Ltmp138:
LBB1_15:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_21 Depth 2
	;DEBUG_VALUE: emulate_AMX_FMA32:y_enable <- $x23
	;DEBUG_VALUE: emulate_AMX_FMA32:x_enable <- $x22
	;DEBUG_VALUE: emulate_AMX_FMA32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA32:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMA32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMA32:y_offset <- $x21
	;DEBUG_VALUE: i <- $x8
	.loc	2 102 31 is_stmt 1              ; fma.c:102:31
	lsl	x14, x8, #2
Ltmp139:
	.loc	2 102 13 is_stmt 0              ; fma.c:102:13
	lsr	x15, x22, x14
	tbz	w15, #0, LBB1_14
Ltmp140:
; %bb.16:                               ;   in Loop: Header=BB1_15 Depth=1
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA32:y_enable <- $x23
	;DEBUG_VALUE: emulate_AMX_FMA32:x_enable <- $x22
	;DEBUG_VALUE: emulate_AMX_FMA32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA32:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMA32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMA32:y_offset <- $x21
	.loc	2 103 13 is_stmt 1              ; fma.c:103:13
	tbnz	x19, #63, LBB1_30
Ltmp141:
; %bb.17:                               ;   in Loop: Header=BB1_15 Depth=1
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA32:y_enable <- $x23
	;DEBUG_VALUE: emulate_AMX_FMA32:x_enable <- $x22
	;DEBUG_VALUE: emulate_AMX_FMA32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA32:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMA32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMA32:y_offset <- $x21
	;DEBUG_VALUE: j <- 0
	.loc	2 0 13 is_stmt 0                ; fma.c:0:13
	mov	x15, #0
	b	LBB1_21
Ltmp142:
LBB1_18:                                ;   in Loop: Header=BB1_21 Depth=2
	;DEBUG_VALUE: fma32_alu:z <- $s2
	;DEBUG_VALUE: fma32_alu:x <- $s0
	;DEBUG_VALUE: fma32_alu:y <- $s1
	;DEBUG_VALUE: fma32_alu:operand <- $x19
	;DEBUG_VALUE: j <- [DW_OP_consts 4, DW_OP_div, DW_OP_stack_value] $x15
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA32:y_enable <- $x23
	;DEBUG_VALUE: emulate_AMX_FMA32:x_enable <- $x22
	;DEBUG_VALUE: emulate_AMX_FMA32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA32:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMA32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMA32:y_offset <- $x21
	fmov	s0, s1
Ltmp143:
LBB1_19:                                ;   in Loop: Header=BB1_21 Depth=2
	;DEBUG_VALUE: j <- [DW_OP_consts 4, DW_OP_div, DW_OP_stack_value] $x15
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA32:y_enable <- $x23
	;DEBUG_VALUE: emulate_AMX_FMA32:x_enable <- $x22
	;DEBUG_VALUE: emulate_AMX_FMA32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA32:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMA32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMA32:y_offset <- $x21
	.loc	2 110 20 is_stmt 1              ; fma.c:110:20
	str	s0, [x16, x8, lsl #2]
Ltmp144:
LBB1_20:                                ;   in Loop: Header=BB1_21 Depth=2
	;DEBUG_VALUE: j <- [DW_OP_consts 4, DW_OP_div, DW_OP_stack_value] $x15
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA32:y_enable <- $x23
	;DEBUG_VALUE: emulate_AMX_FMA32:x_enable <- $x22
	;DEBUG_VALUE: emulate_AMX_FMA32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA32:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMA32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMA32:y_offset <- $x21
	;DEBUG_VALUE: j <- [DW_OP_consts 4, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] $x15
	.loc	2 107 31                        ; fma.c:107:31
	add	x15, x15, #4
Ltmp145:
	.loc	2 107 13 is_stmt 0              ; fma.c:107:13
	cmp	x15, #64
	b.eq	LBB1_14
Ltmp146:
LBB1_21:                                ;   Parent Loop BB1_15 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA32:y_enable <- $x23
	;DEBUG_VALUE: emulate_AMX_FMA32:x_enable <- $x22
	;DEBUG_VALUE: emulate_AMX_FMA32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA32:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMA32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMA32:y_offset <- $x21
	;DEBUG_VALUE: j <- [DW_OP_consts 4, DW_OP_div, DW_OP_stack_value] $x15
	.loc	2 108 21 is_stmt 1              ; fma.c:108:21
	lsr	x16, x23, x15
	tbz	w16, #0, LBB1_20
Ltmp147:
; %bb.22:                               ;   in Loop: Header=BB1_21 Depth=2
	;DEBUG_VALUE: j <- [DW_OP_consts 4, DW_OP_div, DW_OP_stack_value] $x15
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA32:y_enable <- $x23
	;DEBUG_VALUE: emulate_AMX_FMA32:x_enable <- $x22
	;DEBUG_VALUE: emulate_AMX_FMA32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA32:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMA32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMA32:y_offset <- $x21
	.loc	2 109 46                        ; fma.c:109:46
	orr	x16, x10, x15
	.loc	2 109 29 is_stmt 0              ; fma.c:109:29
	add	x16, x20, x16, lsl #6
	.loc	2 110 32 is_stmt 1              ; fma.c:110:32
	ldr	s0, [x24, x14]
	.loc	2 109 29                        ; fma.c:109:29
	add	x16, x16, #1024
Ltmp148:
	;DEBUG_VALUE: z <- undef
	.loc	2 110 38                        ; fma.c:110:38
	ldr	s1, [x25, x15]
	.loc	2 110 44 is_stmt 0              ; fma.c:110:44
	ldr	s2, [x16, x14]
Ltmp149:
	;DEBUG_VALUE: fma32_alu:operand <- $x19
	;DEBUG_VALUE: fma32_alu:y <- $s1
	;DEBUG_VALUE: fma32_alu:x <- $s0
	;DEBUG_VALUE: fma32_alu:z <- $s2
	.loc	2 22 5 is_stmt 1                ; fma.c:22:5
	cmp	x11, #6
	b.hi	LBB1_27
Ltmp150:
; %bb.23:                               ;   in Loop: Header=BB1_21 Depth=2
	;DEBUG_VALUE: fma32_alu:z <- $s2
	;DEBUG_VALUE: fma32_alu:x <- $s0
	;DEBUG_VALUE: fma32_alu:y <- $s1
	;DEBUG_VALUE: fma32_alu:operand <- $x19
	;DEBUG_VALUE: j <- [DW_OP_consts 4, DW_OP_div, DW_OP_stack_value] $x15
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA32:y_enable <- $x23
	;DEBUG_VALUE: emulate_AMX_FMA32:x_enable <- $x22
	;DEBUG_VALUE: emulate_AMX_FMA32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA32:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMA32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMA32:y_offset <- $x21
	.loc	2 0 5 is_stmt 0                 ; fma.c:0:5
Ltmp151:
	adr	x17, Ltmp151
	ldrsw	x0, [x12, x11, lsl #2]
	add	x17, x17, x0
	br	x17
Ltmp152:
LBB1_24:                                ;   in Loop: Header=BB1_21 Depth=2
	;DEBUG_VALUE: fma32_alu:z <- $s2
	;DEBUG_VALUE: fma32_alu:x <- $s0
	;DEBUG_VALUE: fma32_alu:y <- $s1
	;DEBUG_VALUE: fma32_alu:operand <- $x19
	;DEBUG_VALUE: j <- [DW_OP_consts 4, DW_OP_div, DW_OP_stack_value] $x15
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA32:y_enable <- $x23
	;DEBUG_VALUE: emulate_AMX_FMA32:x_enable <- $x22
	;DEBUG_VALUE: emulate_AMX_FMA32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA32:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMA32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMA32:y_offset <- $x21
	.loc	2 23 22 is_stmt 1               ; fma.c:23:22
	fmul	s0, s0, s1
Ltmp153:
	.loc	2 0 22 is_stmt 0                ; fma.c:0:22
	b	LBB1_19
Ltmp154:
LBB1_25:                                ;   in Loop: Header=BB1_21 Depth=2
	;DEBUG_VALUE: fma32_alu:z <- $s2
	;DEBUG_VALUE: fma32_alu:x <- $s0
	;DEBUG_VALUE: fma32_alu:y <- $s1
	;DEBUG_VALUE: fma32_alu:operand <- $x19
	;DEBUG_VALUE: j <- [DW_OP_consts 4, DW_OP_div, DW_OP_stack_value] $x15
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA32:y_enable <- $x23
	;DEBUG_VALUE: emulate_AMX_FMA32:x_enable <- $x22
	;DEBUG_VALUE: emulate_AMX_FMA32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA32:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMA32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMA32:y_offset <- $x21
	.loc	2 24 22 is_stmt 1               ; fma.c:24:22
	fadd	s0, s0, s2
Ltmp155:
	.loc	2 0 22 is_stmt 0                ; fma.c:0:22
	b	LBB1_19
Ltmp156:
LBB1_26:                                ;   in Loop: Header=BB1_21 Depth=2
	;DEBUG_VALUE: fma32_alu:z <- $s2
	;DEBUG_VALUE: fma32_alu:x <- $s0
	;DEBUG_VALUE: fma32_alu:y <- $s1
	;DEBUG_VALUE: fma32_alu:operand <- $x19
	;DEBUG_VALUE: j <- [DW_OP_consts 4, DW_OP_div, DW_OP_stack_value] $x15
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA32:y_enable <- $x23
	;DEBUG_VALUE: emulate_AMX_FMA32:x_enable <- $x22
	;DEBUG_VALUE: emulate_AMX_FMA32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA32:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMA32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMA32:y_offset <- $x21
	.loc	2 26 22 is_stmt 1               ; fma.c:26:22
	fadd	s0, s1, s2
Ltmp157:
	.loc	2 0 22 is_stmt 0                ; fma.c:0:22
	b	LBB1_19
Ltmp158:
LBB1_27:                                ;   in Loop: Header=BB1_21 Depth=2
	;DEBUG_VALUE: fma32_alu:z <- $s2
	;DEBUG_VALUE: fma32_alu:x <- $s0
	;DEBUG_VALUE: fma32_alu:y <- $s1
	;DEBUG_VALUE: fma32_alu:operand <- $x19
	;DEBUG_VALUE: j <- [DW_OP_consts 4, DW_OP_div, DW_OP_stack_value] $x15
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA32:y_enable <- $x23
	;DEBUG_VALUE: emulate_AMX_FMA32:x_enable <- $x22
	;DEBUG_VALUE: emulate_AMX_FMA32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA32:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMA32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMA32:y_offset <- $x21
	.loc	2 32 5 is_stmt 1                ; fma.c:32:5
	; InlineAsm Start
	fmadd	s0, s0, s1, s2
	; InlineAsm End
Ltmp159:
	;DEBUG_VALUE: fma32_alu:result <- $s0
	.loc	2 0 5 is_stmt 0                 ; fma.c:0:5
	b	LBB1_19
Ltmp160:
LBB1_28:                                ;   in Loop: Header=BB1_21 Depth=2
	;DEBUG_VALUE: fma32_alu:z <- $s2
	;DEBUG_VALUE: fma32_alu:x <- $s0
	;DEBUG_VALUE: fma32_alu:y <- $s1
	;DEBUG_VALUE: fma32_alu:operand <- $x19
	;DEBUG_VALUE: j <- [DW_OP_consts 4, DW_OP_div, DW_OP_stack_value] $x15
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA32:y_enable <- $x23
	;DEBUG_VALUE: emulate_AMX_FMA32:x_enable <- $x22
	;DEBUG_VALUE: emulate_AMX_FMA32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA32:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMA32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMA32:y_offset <- $x21
	fmov	s0, s2
	b	LBB1_19
Ltmp161:
LBB1_29:                                ;   in Loop: Header=BB1_21 Depth=2
	;DEBUG_VALUE: fma32_alu:z <- $s2
	;DEBUG_VALUE: fma32_alu:x <- $s0
	;DEBUG_VALUE: fma32_alu:y <- $s1
	;DEBUG_VALUE: fma32_alu:operand <- $x19
	;DEBUG_VALUE: j <- [DW_OP_consts 4, DW_OP_div, DW_OP_stack_value] $x15
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA32:y_enable <- $x23
	;DEBUG_VALUE: emulate_AMX_FMA32:x_enable <- $x22
	;DEBUG_VALUE: emulate_AMX_FMA32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA32:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMA32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMA32:y_offset <- $x21
	movi	d0, #0000000000000000
	b	LBB1_19
Ltmp162:
LBB1_30:                                ;   in Loop: Header=BB1_15 Depth=1
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA32:y_enable <- $x23
	;DEBUG_VALUE: emulate_AMX_FMA32:x_enable <- $x22
	;DEBUG_VALUE: emulate_AMX_FMA32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA32:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMA32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMA32:y_offset <- $x21
	;DEBUG_VALUE: z <- undef
	.loc	2 105 28 is_stmt 1              ; fma.c:105:28
	ldr	s0, [x24, x14]
	.loc	2 105 34 is_stmt 0              ; fma.c:105:34
	ldr	s1, [x25, x14]
	.loc	2 105 40                        ; fma.c:105:40
	ldr	s2, [x9, x14]
Ltmp163:
	;DEBUG_VALUE: fma32_alu:operand <- $x19
	;DEBUG_VALUE: fma32_alu:y <- $s1
	;DEBUG_VALUE: fma32_alu:x <- $s0
	;DEBUG_VALUE: fma32_alu:z <- $s2
	.loc	2 22 5 is_stmt 1                ; fma.c:22:5
	cmp	x11, #6
	b.hi	LBB1_33
Ltmp164:
; %bb.31:                               ;   in Loop: Header=BB1_15 Depth=1
	;DEBUG_VALUE: fma32_alu:z <- $s2
	;DEBUG_VALUE: fma32_alu:x <- $s0
	;DEBUG_VALUE: fma32_alu:y <- $s1
	;DEBUG_VALUE: fma32_alu:operand <- $x19
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA32:y_enable <- $x23
	;DEBUG_VALUE: emulate_AMX_FMA32:x_enable <- $x22
	;DEBUG_VALUE: emulate_AMX_FMA32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA32:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMA32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMA32:y_offset <- $x21
	.loc	2 0 5 is_stmt 0                 ; fma.c:0:5
Ltmp165:
	adr	x14, Ltmp165
	ldrsw	x15, [x13, x11, lsl #2]
	add	x14, x14, x15
	br	x14
Ltmp166:
LBB1_32:                                ;   in Loop: Header=BB1_15 Depth=1
	;DEBUG_VALUE: fma32_alu:z <- $s2
	;DEBUG_VALUE: fma32_alu:x <- $s0
	;DEBUG_VALUE: fma32_alu:y <- $s1
	;DEBUG_VALUE: fma32_alu:operand <- $x19
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA32:y_enable <- $x23
	;DEBUG_VALUE: emulate_AMX_FMA32:x_enable <- $x22
	;DEBUG_VALUE: emulate_AMX_FMA32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA32:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMA32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMA32:y_offset <- $x21
	.loc	2 23 22 is_stmt 1               ; fma.c:23:22
	fmul	s0, s0, s1
Ltmp167:
	.loc	2 105 16                        ; fma.c:105:16
	str	s0, [x9, x8, lsl #2]
	b	LBB1_14
Ltmp168:
LBB1_33:                                ;   in Loop: Header=BB1_15 Depth=1
	;DEBUG_VALUE: fma32_alu:z <- $s2
	;DEBUG_VALUE: fma32_alu:x <- $s0
	;DEBUG_VALUE: fma32_alu:y <- $s1
	;DEBUG_VALUE: fma32_alu:operand <- $x19
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA32:y_enable <- $x23
	;DEBUG_VALUE: emulate_AMX_FMA32:x_enable <- $x22
	;DEBUG_VALUE: emulate_AMX_FMA32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA32:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMA32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMA32:y_offset <- $x21
	.loc	2 32 5                          ; fma.c:32:5
	; InlineAsm Start
	fmadd	s0, s0, s1, s2
	; InlineAsm End
Ltmp169:
	;DEBUG_VALUE: fma32_alu:result <- $s0
LBB1_34:                                ;   in Loop: Header=BB1_15 Depth=1
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA32:y_enable <- $x23
	;DEBUG_VALUE: emulate_AMX_FMA32:x_enable <- $x22
	;DEBUG_VALUE: emulate_AMX_FMA32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA32:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMA32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMA32:y_offset <- $x21
	.loc	2 105 16                        ; fma.c:105:16
	str	s0, [x9, x8, lsl #2]
	b	LBB1_14
Ltmp170:
LBB1_35:                                ;   in Loop: Header=BB1_15 Depth=1
	;DEBUG_VALUE: fma32_alu:z <- $s2
	;DEBUG_VALUE: fma32_alu:x <- $s0
	;DEBUG_VALUE: fma32_alu:y <- $s1
	;DEBUG_VALUE: fma32_alu:operand <- $x19
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA32:y_enable <- $x23
	;DEBUG_VALUE: emulate_AMX_FMA32:x_enable <- $x22
	;DEBUG_VALUE: emulate_AMX_FMA32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA32:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMA32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMA32:y_offset <- $x21
	.loc	2 24 22                         ; fma.c:24:22
	fadd	s0, s0, s2
Ltmp171:
	.loc	2 105 16                        ; fma.c:105:16
	str	s0, [x9, x8, lsl #2]
	b	LBB1_14
Ltmp172:
LBB1_36:                                ;   in Loop: Header=BB1_15 Depth=1
	;DEBUG_VALUE: fma32_alu:z <- $s2
	;DEBUG_VALUE: fma32_alu:x <- $s0
	;DEBUG_VALUE: fma32_alu:y <- $s1
	;DEBUG_VALUE: fma32_alu:operand <- $x19
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA32:y_enable <- $x23
	;DEBUG_VALUE: emulate_AMX_FMA32:x_enable <- $x22
	;DEBUG_VALUE: emulate_AMX_FMA32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA32:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMA32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMA32:y_offset <- $x21
	.loc	2 26 22                         ; fma.c:26:22
	fadd	s0, s1, s2
Ltmp173:
	.loc	2 105 16                        ; fma.c:105:16
	str	s0, [x9, x8, lsl #2]
	b	LBB1_14
Ltmp174:
LBB1_37:                                ;   in Loop: Header=BB1_15 Depth=1
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA32:y_enable <- $x23
	;DEBUG_VALUE: emulate_AMX_FMA32:x_enable <- $x22
	;DEBUG_VALUE: emulate_AMX_FMA32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA32:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMA32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMA32:y_offset <- $x21
	.loc	2 0 16 is_stmt 0                ; fma.c:0:16
	fmov	s0, s2
	.loc	2 105 16                        ; fma.c:105:16
	str	s2, [x9, x8, lsl #2]
	b	LBB1_14
Ltmp175:
LBB1_38:                                ;   in Loop: Header=BB1_15 Depth=1
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA32:y_enable <- $x23
	;DEBUG_VALUE: emulate_AMX_FMA32:x_enable <- $x22
	;DEBUG_VALUE: emulate_AMX_FMA32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA32:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMA32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMA32:y_offset <- $x21
	.loc	2 0 16                          ; fma.c:0:16
	movi	d0, #0000000000000000
	.loc	2 105 16                        ; fma.c:105:16
	str	s0, [x9, x8, lsl #2]
	b	LBB1_14
Ltmp176:
LBB1_39:
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA32:y_enable <- $x23
	;DEBUG_VALUE: emulate_AMX_FMA32:x_enable <- $x22
	;DEBUG_VALUE: emulate_AMX_FMA32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA32:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMA32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMA32:y_offset <- $x21
	.loc	2 0 16                          ; fma.c:0:16
	ldur	x8, [x29, #-72]
Lloh25:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh26:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh27:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB1_41
Ltmp177:
; %bb.40:
	;DEBUG_VALUE: emulate_AMX_FMA32:y_enable <- $x23
	;DEBUG_VALUE: emulate_AMX_FMA32:x_enable <- $x22
	;DEBUG_VALUE: emulate_AMX_FMA32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA32:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMA32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMA32:y_offset <- $x21
	.loc	2 114 1 is_stmt 1               ; fma.c:114:1
	ldp	x29, x30, [sp, #208]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #192]            ; 16-byte Folded Reload
Ltmp178:
	;DEBUG_VALUE: emulate_AMX_FMA32:state <- [DW_OP_LLVM_entry_value 1] $x0
	;DEBUG_VALUE: emulate_AMX_FMA32:operand <- [DW_OP_LLVM_entry_value 1] $x1
	ldp	x22, x21, [sp, #176]            ; 16-byte Folded Reload
Ltmp179:
	ldp	x24, x23, [sp, #160]            ; 16-byte Folded Reload
Ltmp180:
	ldp	x26, x25, [sp, #144]            ; 16-byte Folded Reload
Ltmp181:
	add	sp, sp, #224
	ret
Ltmp182:
LBB1_41:
	;DEBUG_VALUE: emulate_AMX_FMA32:y_enable <- $x23
	;DEBUG_VALUE: emulate_AMX_FMA32:x_enable <- $x22
	;DEBUG_VALUE: emulate_AMX_FMA32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA32:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMA32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMA32:y_offset <- $x21
	.loc	2 0 1 is_stmt 0                 ; fma.c:0:1
	bl	___stack_chk_fail
Ltmp183:
	.loh AdrpAdd	Lloh17, Lloh18
	.loh AdrpLdrGotLdr	Lloh14, Lloh15, Lloh16
	.loh AdrpAdd	Lloh19, Lloh20
	.loh AdrpAdd	Lloh23, Lloh24
	.loh AdrpAdd	Lloh21, Lloh22
	.loh AdrpLdrGotLdr	Lloh25, Lloh26, Lloh27
Lfunc_end1:
	.cfi_endproc
	.p2align	2
lJTI1_0:
	.long	LBB1_1-Ltmp108
	.long	LBB1_5-Ltmp108
	.long	LBB1_2-Ltmp108
	.long	LBB1_3-Ltmp108
	.p2align	2
lJTI1_1:
	.long	LBB1_7-Ltmp122
	.long	LBB1_11-Ltmp122
	.long	LBB1_8-Ltmp122
	.long	LBB1_9-Ltmp122
	.p2align	2
lJTI1_2:
	.long	LBB1_32-Ltmp165
	.long	LBB1_35-Ltmp165
	.long	LBB1_34-Ltmp165
	.long	LBB1_36-Ltmp165
	.long	LBB1_13-Ltmp165
	.long	LBB1_37-Ltmp165
	.long	LBB1_38-Ltmp165
	.p2align	2
lJTI1_3:
	.long	LBB1_24-Ltmp151
	.long	LBB1_25-Ltmp151
	.long	LBB1_19-Ltmp151
	.long	LBB1_26-Ltmp151
	.long	LBB1_18-Ltmp151
	.long	LBB1_28-Ltmp151
	.long	LBB1_29-Ltmp151
                                        ; -- End function
	.p2align	2                               ; -- Begin function load_xy_reg_fma32
_load_xy_reg_fma32:                     ; @load_xy_reg_fma32
Lfunc_begin2:
	.loc	2 51 0 is_stmt 1                ; fma.c:51:0
	.cfi_startproc
; %bb.0:
	;DEBUG_VALUE: load_xy_reg_fma32:dst <- $x0
	;DEBUG_VALUE: load_xy_reg_fma32:src <- $x1
	;DEBUG_VALUE: load_xy_reg_fma32:offset <- $x2
	;DEBUG_VALUE: load_xy_reg_fma32:fp16 <- $x3
	;DEBUG_VALUE: load_xy_reg:dst <- $x0
	;DEBUG_VALUE: load_xy_reg:src <- $x1
	;DEBUG_VALUE: load_xy_reg:offset <- $x2
	stp	x24, x23, [sp, #-64]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 64
	stp	x22, x21, [sp, #16]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	mov	x20, x3
Ltmp184:
	;DEBUG_VALUE: load_xy_reg_fma32:fp16 <- $x20
	mov	x21, x1
Ltmp185:
	;DEBUG_VALUE: load_xy_reg_fma32:src <- $x21
	mov	x19, x0
Ltmp186:
	;DEBUG_VALUE: load_xy_reg_fma32:dst <- $x19
	mov	w8, #512
Ltmp187:
	;DEBUG_VALUE: load_xy_reg:src <- $x21
	;DEBUG_VALUE: load_xy_reg:dst <- $x19
	.loc	3 42 26 prologue_end            ; ./emulate.h:42:26
	sub	x8, x8, x2
Ltmp188:
	;DEBUG_VALUE: load_xy_reg:avail <- $x8
	.loc	3 43 5                          ; ./emulate.h:43:5
	add	x1, x1, x2
	.loc	3 44 5                          ; ./emulate.h:44:5
	sub	x9, x2, #448
	mov	w10, #64
	.loc	3 43 5                          ; ./emulate.h:43:5
	cmp	x8, #63
	csel	x2, x10, x8, hi
Ltmp189:
	;DEBUG_VALUE: load_xy_reg_fma32:offset <- [DW_OP_LLVM_entry_value 1] $x2
	.loc	3 44 5                          ; ./emulate.h:44:5
	add	x22, x0, x8
	csel	x23, xzr, x9, hi
	.loc	3 43 5                          ; ./emulate.h:43:5
	bl	_memcpy
Ltmp190:
	.loc	3 44 5                          ; ./emulate.h:44:5
	mov	x0, x22
	mov	x1, x21
	mov	x2, x23
	bl	_memcpy
Ltmp191:
	.loc	2 53 9                          ; fma.c:53:9
	cbz	x20, LBB2_2
Ltmp192:
; %bb.1:
	;DEBUG_VALUE: load_xy_reg_fma32:offset <- [DW_OP_LLVM_entry_value 1] $x2
	;DEBUG_VALUE: load_xy_reg_fma32:dst <- $x19
	;DEBUG_VALUE: load_xy_reg_fma32:src <- $x21
	;DEBUG_VALUE: load_xy_reg_fma32:fp16 <- $x20
	;DEBUG_VALUE: i <- 0
	.loc	2 55 25                         ; fma.c:55:25
	ldp	s0, s1, [x19]
Ltmp193:
	;DEBUG_VALUE: val <- $s0
	;DEBUG_VALUE: val <- $s1
	.loc	2 56 13                         ; fma.c:56:13
	; InlineAsm Start
	fcvt	s0, h0
	; InlineAsm End
Ltmp194:
	;DEBUG_VALUE: val <- $s0
	.loc	2 57 20                         ; fma.c:57:20
	str	s0, [x19]
Ltmp195:
	;DEBUG_VALUE: i <- 1
	.loc	2 56 13                         ; fma.c:56:13
	; InlineAsm Start
	fcvt	s1, h1
	; InlineAsm End
Ltmp196:
	;DEBUG_VALUE: val <- $s1
	.loc	2 57 20                         ; fma.c:57:20
	str	s1, [x19, #4]
Ltmp197:
	;DEBUG_VALUE: i <- 2
	.loc	2 55 25                         ; fma.c:55:25
	ldp	s0, s1, [x19, #8]
Ltmp198:
	;DEBUG_VALUE: val <- $s0
	;DEBUG_VALUE: val <- $s1
	.loc	2 56 13                         ; fma.c:56:13
	; InlineAsm Start
	fcvt	s0, h0
	; InlineAsm End
Ltmp199:
	;DEBUG_VALUE: val <- $s0
	.loc	2 57 20                         ; fma.c:57:20
	str	s0, [x19, #8]
Ltmp200:
	;DEBUG_VALUE: i <- 3
	.loc	2 56 13                         ; fma.c:56:13
	; InlineAsm Start
	fcvt	s1, h1
	; InlineAsm End
Ltmp201:
	;DEBUG_VALUE: val <- $s1
	.loc	2 57 20                         ; fma.c:57:20
	str	s1, [x19, #12]
Ltmp202:
	;DEBUG_VALUE: i <- 4
	.loc	2 55 25                         ; fma.c:55:25
	ldp	s0, s1, [x19, #16]
Ltmp203:
	;DEBUG_VALUE: val <- $s0
	;DEBUG_VALUE: val <- $s1
	.loc	2 56 13                         ; fma.c:56:13
	; InlineAsm Start
	fcvt	s0, h0
	; InlineAsm End
Ltmp204:
	;DEBUG_VALUE: val <- $s0
	.loc	2 57 20                         ; fma.c:57:20
	str	s0, [x19, #16]
Ltmp205:
	;DEBUG_VALUE: i <- 5
	.loc	2 56 13                         ; fma.c:56:13
	; InlineAsm Start
	fcvt	s1, h1
	; InlineAsm End
Ltmp206:
	;DEBUG_VALUE: val <- $s1
	.loc	2 57 20                         ; fma.c:57:20
	str	s1, [x19, #20]
Ltmp207:
	;DEBUG_VALUE: i <- 6
	.loc	2 55 25                         ; fma.c:55:25
	ldp	s0, s1, [x19, #24]
Ltmp208:
	;DEBUG_VALUE: val <- $s0
	;DEBUG_VALUE: val <- $s1
	.loc	2 56 13                         ; fma.c:56:13
	; InlineAsm Start
	fcvt	s0, h0
	; InlineAsm End
Ltmp209:
	;DEBUG_VALUE: val <- $s0
	.loc	2 57 20                         ; fma.c:57:20
	str	s0, [x19, #24]
Ltmp210:
	;DEBUG_VALUE: i <- 7
	.loc	2 56 13                         ; fma.c:56:13
	; InlineAsm Start
	fcvt	s1, h1
	; InlineAsm End
Ltmp211:
	;DEBUG_VALUE: val <- $s1
	.loc	2 57 20                         ; fma.c:57:20
	str	s1, [x19, #28]
Ltmp212:
	;DEBUG_VALUE: i <- 8
	.loc	2 55 25                         ; fma.c:55:25
	ldp	s0, s1, [x19, #32]
Ltmp213:
	;DEBUG_VALUE: val <- $s0
	;DEBUG_VALUE: val <- $s1
	.loc	2 56 13                         ; fma.c:56:13
	; InlineAsm Start
	fcvt	s0, h0
	; InlineAsm End
Ltmp214:
	;DEBUG_VALUE: val <- $s0
	.loc	2 57 20                         ; fma.c:57:20
	str	s0, [x19, #32]
Ltmp215:
	;DEBUG_VALUE: i <- 9
	.loc	2 56 13                         ; fma.c:56:13
	; InlineAsm Start
	fcvt	s1, h1
	; InlineAsm End
Ltmp216:
	;DEBUG_VALUE: val <- $s1
	.loc	2 57 20                         ; fma.c:57:20
	str	s1, [x19, #36]
Ltmp217:
	;DEBUG_VALUE: i <- 10
	.loc	2 55 25                         ; fma.c:55:25
	ldp	s0, s1, [x19, #40]
Ltmp218:
	;DEBUG_VALUE: val <- $s0
	;DEBUG_VALUE: val <- $s1
	.loc	2 56 13                         ; fma.c:56:13
	; InlineAsm Start
	fcvt	s0, h0
	; InlineAsm End
Ltmp219:
	;DEBUG_VALUE: val <- $s0
	.loc	2 57 20                         ; fma.c:57:20
	str	s0, [x19, #40]
Ltmp220:
	;DEBUG_VALUE: i <- 11
	.loc	2 56 13                         ; fma.c:56:13
	; InlineAsm Start
	fcvt	s1, h1
	; InlineAsm End
Ltmp221:
	;DEBUG_VALUE: val <- $s1
	.loc	2 57 20                         ; fma.c:57:20
	str	s1, [x19, #44]
Ltmp222:
	;DEBUG_VALUE: i <- 12
	.loc	2 55 25                         ; fma.c:55:25
	ldp	s0, s1, [x19, #48]
Ltmp223:
	;DEBUG_VALUE: val <- $s0
	;DEBUG_VALUE: val <- $s1
	.loc	2 56 13                         ; fma.c:56:13
	; InlineAsm Start
	fcvt	s0, h0
	; InlineAsm End
Ltmp224:
	;DEBUG_VALUE: val <- $s0
	.loc	2 57 20                         ; fma.c:57:20
	str	s0, [x19, #48]
Ltmp225:
	;DEBUG_VALUE: i <- 13
	.loc	2 56 13                         ; fma.c:56:13
	; InlineAsm Start
	fcvt	s1, h1
	; InlineAsm End
Ltmp226:
	;DEBUG_VALUE: val <- $s1
	.loc	2 57 20                         ; fma.c:57:20
	str	s1, [x19, #52]
Ltmp227:
	;DEBUG_VALUE: i <- 14
	.loc	2 55 25                         ; fma.c:55:25
	ldp	s0, s1, [x19, #56]
Ltmp228:
	;DEBUG_VALUE: val <- $s0
	;DEBUG_VALUE: val <- $s1
	.loc	2 56 13                         ; fma.c:56:13
	; InlineAsm Start
	fcvt	s0, h0
	; InlineAsm End
Ltmp229:
	;DEBUG_VALUE: val <- $s0
	.loc	2 57 20                         ; fma.c:57:20
	str	s0, [x19, #56]
Ltmp230:
	;DEBUG_VALUE: i <- 15
	.loc	2 56 13                         ; fma.c:56:13
	; InlineAsm Start
	fcvt	s1, h1
	; InlineAsm End
Ltmp231:
	;DEBUG_VALUE: val <- $s1
	.loc	2 57 20                         ; fma.c:57:20
	str	s1, [x19, #60]
Ltmp232:
	;DEBUG_VALUE: i <- 16
LBB2_2:
	;DEBUG_VALUE: load_xy_reg_fma32:offset <- [DW_OP_LLVM_entry_value 1] $x2
	;DEBUG_VALUE: load_xy_reg_fma32:dst <- $x19
	;DEBUG_VALUE: load_xy_reg_fma32:src <- $x21
	;DEBUG_VALUE: load_xy_reg_fma32:fp16 <- $x20
	.loc	2 60 1                          ; fma.c:60:1
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
Ltmp233:
	;DEBUG_VALUE: load_xy_reg_fma32:fp16 <- [DW_OP_LLVM_entry_value 1] $x3
	;DEBUG_VALUE: load_xy_reg_fma32:dst <- [DW_OP_LLVM_entry_value 1] $x0
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
Ltmp234:
	;DEBUG_VALUE: load_xy_reg_fma32:src <- [DW_OP_LLVM_entry_value 1] $x1
	ldp	x24, x23, [sp], #64             ; 16-byte Folded Reload
	ret
Ltmp235:
Lfunc_end2:
	.cfi_endproc
                                        ; -- End function
	.globl	_emulate_AMX_FMA16              ; -- Begin function emulate_AMX_FMA16
	.p2align	2
_emulate_AMX_FMA16:                     ; @emulate_AMX_FMA16
Lfunc_begin3:
	.loc	2 116 0                         ; fma.c:116:0
	.cfi_startproc
; %bb.0:
	;DEBUG_VALUE: emulate_AMX_FMA16:state <- $x0
	;DEBUG_VALUE: emulate_AMX_FMA16:operand <- $x1
	;DEBUG_VALUE: emulate_AMX_FMA16:operand <- $x1
	;DEBUG_VALUE: emulate_AMX_FMA16:state <- $x0
	sub	sp, sp, #240
	.cfi_def_cfa_offset 240
	stp	x28, x27, [sp, #144]            ; 16-byte Folded Spill
	stp	x26, x25, [sp, #160]            ; 16-byte Folded Spill
	stp	x24, x23, [sp, #176]            ; 16-byte Folded Spill
	stp	x22, x21, [sp, #192]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #208]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #224]            ; 16-byte Folded Spill
	add	x29, sp, #224
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
Lloh28:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh29:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh30:
	ldr	x8, [x8]
	stur	x8, [x29, #-88]
Ltmp236:
	.loc	2 117 33 prologue_end           ; fma.c:117:33
	and	x23, x1, #0x1ff
Ltmp237:
	;DEBUG_VALUE: emulate_AMX_FMA16:y_offset <- $x23
	.loc	2 118 41                        ; fma.c:118:41
	ubfx	x8, x1, #10, #9
Ltmp238:
	;DEBUG_VALUE: emulate_AMX_FMA16:x_offset <- $x8
	.loc	2 119 38                        ; fma.c:119:38
	ubfx	x15, x1, #20, #6
Ltmp239:
	;DEBUG_VALUE: emulate_AMX_FMA16:z_row <- $x15
	.loc	2 120 49                        ; fma.c:120:49
	lsr	x9, x1, #41
	mov	w10, #3
Ltmp240:
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: parse_writemask:g <- 2
	;DEBUG_VALUE: parse_writemask:val <- $w9
	.loc	3 67 9                          ; ./emulate.h:67:9
	ands	w11, w10, w9, lsr #5
Ltmp241:
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	.loc	3 0 9 is_stmt 0                 ; ./emulate.h:0:9
	mov	w10, #1
	.loc	3 67 9                          ; ./emulate.h:67:9
	cinc	w10, w10, ne
	mul	w10, w10, w9
Ltmp242:
	;DEBUG_VALUE: parse_writemask:val <- $w10
	.loc	3 68 9 is_stmt 1                ; ./emulate.h:68:9
	and	w9, w10, #0x3f
Ltmp243:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:val <- $w9
	.loc	3 0 9 is_stmt 0                 ; ./emulate.h:0:9
	mov	x19, x1
Ltmp244:
	;DEBUG_VALUE: emulate_AMX_FMA16:operand <- $x19
	mov	x20, x0
Ltmp245:
	;DEBUG_VALUE: emulate_AMX_FMA16:state <- $x20
Lloh31:
	adrp	x12, lJTI3_0@PAGE
Lloh32:
	add	x12, x12, lJTI3_0@PAGEOFF
Ltmp246:
	adr	x13, Ltmp246
	ldrsw	x14, [x12, x11, lsl #2]
	add	x13, x13, x14
	br	x13
Ltmp247:
LBB3_1:
	;DEBUG_VALUE: emulate_AMX_FMA16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA16:operand <- $x19
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:val <- $w9
	;DEBUG_VALUE: parse_writemask:g <- 2
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_FMA16:z_row <- $x15
	;DEBUG_VALUE: emulate_AMX_FMA16:x_offset <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA16:y_offset <- $x23
	.loc	3 72 22 is_stmt 1               ; ./emulate.h:72:22
	sub	w11, w9, #1
Ltmp248:
	ubfiz	w10, w10, #1, #1
	mov	x12, #3689348814741910323
	lsl	x10, x12, x10
	cmp	w11, #2
	csinv	x10, x10, xzr, lo
Ltmp249:
	;DEBUG_VALUE: parse_writemask:all <- $x10
	.loc	3 83 16                         ; ./emulate.h:83:16
	cmp	w9, #3
	csel	x24, x10, xzr, lo
	b	LBB3_8
Ltmp250:
LBB3_2:
	;DEBUG_VALUE: emulate_AMX_FMA16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA16:operand <- $x19
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:val <- $w9
	;DEBUG_VALUE: parse_writemask:g <- 2
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_FMA16:z_row <- $x15
	;DEBUG_VALUE: emulate_AMX_FMA16:x_offset <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA16:y_offset <- $x23
	.loc	3 0 16 is_stmt 0                ; ./emulate.h:0:16
	mov	x24, #-1
	.loc	3 88 13 is_stmt 1               ; ./emulate.h:88:13
	cbz	w9, LBB3_8
Ltmp251:
; %bb.3:
	;DEBUG_VALUE: emulate_AMX_FMA16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA16:operand <- $x19
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:val <- $w9
	;DEBUG_VALUE: parse_writemask:g <- 2
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_FMA16:z_row <- $x15
	;DEBUG_VALUE: emulate_AMX_FMA16:x_offset <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA16:y_offset <- $x23
	.loc	3 91 22                         ; ./emulate.h:91:22
	lsl	x9, x24, x9
Ltmp252:
	.loc	3 0 22 is_stmt 0                ; ./emulate.h:0:22
	b	LBB3_6
Ltmp253:
LBB3_4:
	;DEBUG_VALUE: emulate_AMX_FMA16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA16:operand <- $x19
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:val <- $w9
	;DEBUG_VALUE: parse_writemask:g <- 2
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_FMA16:z_row <- $x15
	;DEBUG_VALUE: emulate_AMX_FMA16:x_offset <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA16:y_offset <- $x23
	mov	x24, #-1
	.loc	3 93 13 is_stmt 1               ; ./emulate.h:93:13
	cbz	w9, LBB3_8
Ltmp254:
; %bb.5:
	;DEBUG_VALUE: emulate_AMX_FMA16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA16:operand <- $x19
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:val <- $w9
	;DEBUG_VALUE: parse_writemask:g <- 2
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_FMA16:z_row <- $x15
	;DEBUG_VALUE: emulate_AMX_FMA16:x_offset <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA16:y_offset <- $x23
	.loc	3 96 22                         ; ./emulate.h:96:22
	lsr	x9, x24, x9
Ltmp255:
LBB3_6:
	;DEBUG_VALUE: emulate_AMX_FMA16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA16:operand <- $x19
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:g <- 2
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_FMA16:z_row <- $x15
	;DEBUG_VALUE: emulate_AMX_FMA16:x_offset <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA16:y_offset <- $x23
	.loc	3 0 0 is_stmt 0                 ; ./emulate.h:0:0
	mvn	x24, x9
	b	LBB3_8
Ltmp256:
LBB3_7:
	;DEBUG_VALUE: emulate_AMX_FMA16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA16:operand <- $x19
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:val <- $w9
	;DEBUG_VALUE: parse_writemask:g <- 2
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_FMA16:z_row <- $x15
	;DEBUG_VALUE: emulate_AMX_FMA16:x_offset <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA16:y_offset <- $x23
	mov	w10, #3
	.loc	3 86 30 is_stmt 1               ; ./emulate.h:86:30
	lsl	x24, x10, x9
Ltmp257:
LBB3_8:
	;DEBUG_VALUE: emulate_AMX_FMA16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA16:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMA16:z_row <- $x15
	;DEBUG_VALUE: emulate_AMX_FMA16:x_offset <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA16:y_offset <- $x23
	;DEBUG_VALUE: emulate_AMX_FMA16:x_enable <- $x24
	.loc	2 121 49                        ; fma.c:121:49
	lsr	x9, x19, #32
Ltmp258:
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: parse_writemask:g <- 2
	;DEBUG_VALUE: parse_writemask:val <- $w9
	.loc	3 66 61                         ; ./emulate.h:66:61
	lsr	x10, x19, #37
	.loc	3 67 9                          ; ./emulate.h:67:9
	ands	w11, w10, #0x3
Ltmp259:
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	.loc	3 0 9 is_stmt 0                 ; ./emulate.h:0:9
	mov	w10, #1
	.loc	3 67 9                          ; ./emulate.h:67:9
	cinc	w10, w10, ne
	mul	w10, w10, w9
Ltmp260:
	;DEBUG_VALUE: parse_writemask:val <- $w10
	.loc	3 68 9 is_stmt 1                ; ./emulate.h:68:9
	and	w9, w10, #0x3f
Ltmp261:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:val <- $w9
	.loc	3 0 9 is_stmt 0                 ; ./emulate.h:0:9
Lloh33:
	adrp	x12, lJTI3_1@PAGE
Lloh34:
	add	x12, x12, lJTI3_1@PAGEOFF
Ltmp262:
	adr	x13, Ltmp262
	ldrsw	x14, [x12, x11, lsl #2]
	add	x13, x13, x14
	str	x15, [sp]                       ; 8-byte Folded Spill
Ltmp263:
	;DEBUG_VALUE: emulate_AMX_FMA16:z_row <- [$sp+0]
	br	x13
Ltmp264:
LBB3_9:
	;DEBUG_VALUE: emulate_AMX_FMA16:z_row <- [$sp+0]
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:val <- $w9
	;DEBUG_VALUE: parse_writemask:g <- 2
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_FMA16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA16:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMA16:x_offset <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA16:y_offset <- $x23
	.loc	3 72 22 is_stmt 1               ; ./emulate.h:72:22
	sub	w11, w9, #1
Ltmp265:
	ubfiz	w10, w10, #1, #1
	mov	x12, #3689348814741910323
	lsl	x10, x12, x10
	cmp	w11, #2
	csinv	x10, x10, xzr, lo
Ltmp266:
	;DEBUG_VALUE: parse_writemask:all <- $x10
	.loc	3 83 16                         ; ./emulate.h:83:16
	cmp	w9, #3
	csel	x25, x10, xzr, lo
	b	LBB3_16
Ltmp267:
LBB3_10:
	;DEBUG_VALUE: emulate_AMX_FMA16:z_row <- [$sp+0]
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:val <- $w9
	;DEBUG_VALUE: parse_writemask:g <- 2
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_FMA16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA16:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMA16:x_offset <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA16:y_offset <- $x23
	.loc	3 0 16 is_stmt 0                ; ./emulate.h:0:16
	mov	x25, #-1
	.loc	3 88 13 is_stmt 1               ; ./emulate.h:88:13
	cbz	w9, LBB3_16
Ltmp268:
; %bb.11:
	;DEBUG_VALUE: emulate_AMX_FMA16:z_row <- [$sp+0]
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:val <- $w9
	;DEBUG_VALUE: parse_writemask:g <- 2
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_FMA16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA16:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMA16:x_offset <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA16:y_offset <- $x23
	.loc	3 91 22                         ; ./emulate.h:91:22
	lsl	x9, x25, x9
Ltmp269:
	.loc	3 0 22 is_stmt 0                ; ./emulate.h:0:22
	b	LBB3_14
Ltmp270:
LBB3_12:
	;DEBUG_VALUE: emulate_AMX_FMA16:z_row <- [$sp+0]
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:val <- $w9
	;DEBUG_VALUE: parse_writemask:g <- 2
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_FMA16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA16:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMA16:x_offset <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA16:y_offset <- $x23
	mov	x25, #-1
	.loc	3 93 13 is_stmt 1               ; ./emulate.h:93:13
	cbz	w9, LBB3_16
Ltmp271:
; %bb.13:
	;DEBUG_VALUE: emulate_AMX_FMA16:z_row <- [$sp+0]
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:val <- $w9
	;DEBUG_VALUE: parse_writemask:g <- 2
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_FMA16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA16:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMA16:x_offset <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA16:y_offset <- $x23
	.loc	3 96 22                         ; ./emulate.h:96:22
	lsr	x9, x25, x9
Ltmp272:
LBB3_14:
	;DEBUG_VALUE: emulate_AMX_FMA16:z_row <- [$sp+0]
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:g <- 2
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_FMA16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA16:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMA16:x_offset <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA16:y_offset <- $x23
	.loc	3 0 0 is_stmt 0                 ; ./emulate.h:0:0
	mvn	x25, x9
	b	LBB3_16
Ltmp273:
LBB3_15:
	;DEBUG_VALUE: emulate_AMX_FMA16:z_row <- [$sp+0]
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:val <- $w9
	;DEBUG_VALUE: parse_writemask:g <- 2
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_FMA16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA16:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMA16:x_offset <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA16:y_offset <- $x23
	mov	w10, #3
	.loc	3 86 30 is_stmt 1               ; ./emulate.h:86:30
	lsl	x25, x10, x9
Ltmp274:
LBB3_16:
	;DEBUG_VALUE: emulate_AMX_FMA16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMA16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA16:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMA16:x_offset <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA16:y_offset <- $x23
	;DEBUG_VALUE: emulate_AMX_FMA16:y_enable <- $x25
	.loc	3 0 30 is_stmt 0                ; ./emulate.h:0:30
	mov	w27, #512
Ltmp275:
	;DEBUG_VALUE: load_xy_reg:offset <- $x8
	;DEBUG_VALUE: load_xy_reg:src <- $x20
	;DEBUG_VALUE: load_xy_reg:dst <- [DW_OP_plus_uconst 72, DW_OP_stack_value] $sp
	.loc	3 42 26 is_stmt 1               ; ./emulate.h:42:26
	sub	x9, x27, x8
Ltmp276:
	;DEBUG_VALUE: load_xy_reg:avail <- $x9
	.loc	3 43 5                          ; ./emulate.h:43:5
	add	x1, x20, x8
	.loc	3 44 5                          ; ./emulate.h:44:5
	sub	x10, x8, #448
	mov	w28, #64
	.loc	3 43 5                          ; ./emulate.h:43:5
	cmp	x8, #449
	csel	x2, x28, x9, lo
	add	x26, sp, #72
	.loc	3 44 5                          ; ./emulate.h:44:5
	add	x21, x26, x9
	csel	x22, xzr, x10, lo
	.loc	3 43 5                          ; ./emulate.h:43:5
	add	x0, sp, #72
	mov	w3, #64
	bl	___memcpy_chk
Ltmp277:
	.loc	3 44 5                          ; ./emulate.h:44:5
	mov	x0, x21
	mov	x1, x20
	mov	x2, x22
	bl	_memcpy
Ltmp278:
	.loc	2 126 27                        ; fma.c:126:27
	add	x21, x20, #512
Ltmp279:
	;DEBUG_VALUE: load_xy_reg:offset <- $x23
	;DEBUG_VALUE: load_xy_reg:dst <- [DW_OP_plus_uconst 8, DW_OP_stack_value] $sp
	;DEBUG_VALUE: load_xy_reg:src <- $x21
	.loc	3 42 26                         ; ./emulate.h:42:26
	sub	x8, x27, x23
Ltmp280:
	;DEBUG_VALUE: load_xy_reg:avail <- $x8
	.loc	3 43 5                          ; ./emulate.h:43:5
	add	x1, x21, x23
	.loc	3 44 5                          ; ./emulate.h:44:5
	sub	x9, x23, #448
	.loc	3 43 5                          ; ./emulate.h:43:5
	cmp	x23, #449
	csel	x2, x28, x8, lo
	add	x27, sp, #8
	.loc	3 44 5                          ; ./emulate.h:44:5
	add	x22, x27, x8
	csel	x23, xzr, x9, lo
Ltmp281:
	.loc	3 43 5                          ; ./emulate.h:43:5
	add	x0, sp, #8
	mov	w3, #64
	bl	___memcpy_chk
Ltmp282:
	.loc	3 44 5                          ; ./emulate.h:44:5
	mov	x0, x22
	mov	x1, x21
	mov	x2, x23
	bl	_memcpy
Ltmp283:
	;DEBUG_VALUE: i <- 0
	.loc	3 0 5 is_stmt 0                 ; ./emulate.h:0:5
	mov	x8, #0
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	add	x9, x20, x9, lsl #6
	add	x9, x9, #1024
	ubfx	x11, x19, #27, #3
	ubfx	x10, x19, #20, #1
	sub	x11, x11, #1
Lloh35:
	adrp	x12, lJTI3_4@PAGE
Lloh36:
	add	x12, x12, lJTI3_4@PAGEOFF
Lloh37:
	adrp	x13, lJTI3_3@PAGE
Lloh38:
	add	x13, x13, lJTI3_3@PAGEOFF
Lloh39:
	adrp	x14, lJTI3_2@PAGE
Lloh40:
	add	x14, x14, lJTI3_2@PAGEOFF
	b	LBB3_19
Ltmp284:
LBB3_17:                                ;   in Loop: Header=BB3_19 Depth=1
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMA16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMA16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA16:operand <- $x19
	fmov	s0, s1
Ltmp285:
	.loc	2 132 16 is_stmt 1              ; fma.c:132:16
	str	h1, [x9, x8, lsl #1]
Ltmp286:
LBB3_18:                                ;   in Loop: Header=BB3_19 Depth=1
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMA16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMA16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA16:operand <- $x19
	.loc	2 128 30                        ; fma.c:128:30
	add	x8, x8, #1
Ltmp287:
	;DEBUG_VALUE: i <- $x8
	.loc	2 128 5 is_stmt 0               ; fma.c:128:5
	cmp	x8, #32
	b.eq	LBB3_54
Ltmp288:
LBB3_19:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB3_25 Depth 2
	;DEBUG_VALUE: emulate_AMX_FMA16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMA16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMA16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA16:operand <- $x19
	;DEBUG_VALUE: i <- $x8
	.loc	2 129 31 is_stmt 1              ; fma.c:129:31
	lsl	x15, x8, #1
Ltmp289:
	.loc	2 129 13 is_stmt 0              ; fma.c:129:13
	lsr	x16, x24, x15
	tbz	w16, #0, LBB3_18
Ltmp290:
; %bb.20:                               ;   in Loop: Header=BB3_19 Depth=1
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMA16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMA16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA16:operand <- $x19
	.loc	2 130 13 is_stmt 1              ; fma.c:130:13
	tbnz	x19, #63, LBB3_45
Ltmp291:
; %bb.21:                               ;   in Loop: Header=BB3_19 Depth=1
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMA16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMA16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA16:operand <- $x19
	;DEBUG_VALUE: j <- 0
	.loc	2 0 13 is_stmt 0                ; fma.c:0:13
	mov	x16, #0
	and	x17, x8, #0x1
	ubfx	x0, x8, #1, #31
	b	LBB3_25
Ltmp292:
LBB3_22:                                ;   in Loop: Header=BB3_25 Depth=2
	;DEBUG_VALUE: fma16_alu:z <- $h2
	;DEBUG_VALUE: fma16_alu:x <- $h0
	;DEBUG_VALUE: fma16_alu:y <- $h1
	;DEBUG_VALUE: fma16_alu:operand <- $x19
	;DEBUG_VALUE: j <- [DW_OP_consts 2, DW_OP_div, DW_OP_stack_value] $x16
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMA16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMA16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA16:operand <- $x19
	fmov	s0, s1
Ltmp293:
LBB3_23:                                ;   in Loop: Header=BB3_25 Depth=2
	;DEBUG_VALUE: j <- [DW_OP_consts 2, DW_OP_div, DW_OP_stack_value] $x16
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMA16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMA16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA16:operand <- $x19
	.loc	2 141 24 is_stmt 1              ; fma.c:141:24
	str	h0, [x1, x8, lsl #1]
Ltmp294:
LBB3_24:                                ;   in Loop: Header=BB3_25 Depth=2
	;DEBUG_VALUE: j <- [DW_OP_consts 2, DW_OP_div, DW_OP_stack_value] $x16
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMA16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMA16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA16:operand <- $x19
	;DEBUG_VALUE: j <- [DW_OP_consts 2, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] $x16
	.loc	2 134 31                        ; fma.c:134:31
	add	x16, x16, #2
Ltmp295:
	.loc	2 134 13 is_stmt 0              ; fma.c:134:13
	cmp	x16, #64
	b.eq	LBB3_18
Ltmp296:
LBB3_25:                                ;   Parent Loop BB3_19 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMA16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMA16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA16:operand <- $x19
	;DEBUG_VALUE: j <- [DW_OP_consts 2, DW_OP_div, DW_OP_stack_value] $x16
	.loc	2 135 21 is_stmt 1              ; fma.c:135:21
	lsr	x1, x25, x16
	tbz	w1, #0, LBB3_24
Ltmp297:
; %bb.26:                               ;   in Loop: Header=BB3_25 Depth=2
	;DEBUG_VALUE: j <- [DW_OP_consts 2, DW_OP_div, DW_OP_stack_value] $x16
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMA16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMA16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA16:operand <- $x19
	.loc	2 136 21                        ; fma.c:136:21
	tbnz	x19, #62, LBB3_30
Ltmp298:
; %bb.27:                               ;   in Loop: Header=BB3_25 Depth=2
	;DEBUG_VALUE: j <- [DW_OP_consts 2, DW_OP_div, DW_OP_stack_value] $x16
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMA16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMA16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA16:operand <- $x19
	.loc	2 140 53                        ; fma.c:140:53
	orr	x1, x10, x16
	.loc	2 140 36 is_stmt 0              ; fma.c:140:36
	add	x1, x20, x1, lsl #6
	.loc	2 141 36 is_stmt 1              ; fma.c:141:36
	ldr	h0, [x26, x15]
	.loc	2 140 36                        ; fma.c:140:36
	add	x1, x1, #1024
Ltmp299:
	;DEBUG_VALUE: z <- undef
	.loc	2 141 42                        ; fma.c:141:42
	ldr	h1, [x27, x16]
	.loc	2 141 48 is_stmt 0              ; fma.c:141:48
	ldr	h2, [x1, x15]
Ltmp300:
	;DEBUG_VALUE: fma16_alu:operand <- $x19
	;DEBUG_VALUE: fma16_alu:y <- $h1
	;DEBUG_VALUE: fma16_alu:x <- $h0
	;DEBUG_VALUE: fma16_alu:z <- $h2
	.loc	2 37 5 is_stmt 1                ; fma.c:37:5
	cmp	x11, #6
	b.hi	LBB3_38
Ltmp301:
; %bb.28:                               ;   in Loop: Header=BB3_25 Depth=2
	;DEBUG_VALUE: fma16_alu:z <- $h2
	;DEBUG_VALUE: fma16_alu:x <- $h0
	;DEBUG_VALUE: fma16_alu:y <- $h1
	;DEBUG_VALUE: fma16_alu:operand <- $x19
	;DEBUG_VALUE: j <- [DW_OP_consts 2, DW_OP_div, DW_OP_stack_value] $x16
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMA16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMA16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA16:operand <- $x19
	.loc	2 0 5 is_stmt 0                 ; fma.c:0:5
Ltmp302:
	adr	x2, Ltmp302
	ldrsw	x3, [x12, x11, lsl #2]
	add	x2, x2, x3
	br	x2
Ltmp303:
LBB3_29:                                ;   in Loop: Header=BB3_25 Depth=2
	;DEBUG_VALUE: fma16_alu:z <- $h2
	;DEBUG_VALUE: fma16_alu:x <- $h0
	;DEBUG_VALUE: fma16_alu:y <- $h1
	;DEBUG_VALUE: fma16_alu:operand <- $x19
	;DEBUG_VALUE: j <- [DW_OP_consts 2, DW_OP_div, DW_OP_stack_value] $x16
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMA16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMA16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA16:operand <- $x19
	.loc	2 38 22 is_stmt 1               ; fma.c:38:22
	fmul	h0, h0, h1
Ltmp304:
	.loc	2 0 22 is_stmt 0                ; fma.c:0:22
	b	LBB3_23
Ltmp305:
LBB3_30:                                ;   in Loop: Header=BB3_25 Depth=2
	;DEBUG_VALUE: j <- [DW_OP_consts 2, DW_OP_div, DW_OP_stack_value] $x16
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMA16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMA16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA16:operand <- $x19
	.loc	2 137 33 is_stmt 1              ; fma.c:137:33
	orr	x1, x17, x16
	add	x1, x20, x1, lsl #6
	add	x1, x1, #1024
Ltmp306:
	;DEBUG_VALUE: z <- undef
	.loc	2 138 36                        ; fma.c:138:36
	ldr	h0, [x26, x8, lsl #1]
	fcvt	s0, h0
	.loc	2 138 42 is_stmt 0              ; fma.c:138:42
	ldr	h1, [x27, x16]
	fcvt	s1, h1
	.loc	2 138 48                        ; fma.c:138:48
	ldr	s2, [x1, x0, lsl #2]
Ltmp307:
	;DEBUG_VALUE: fma32_alu:operand <- $x19
	;DEBUG_VALUE: fma32_alu:y <- $s1
	;DEBUG_VALUE: fma32_alu:x <- $s0
	;DEBUG_VALUE: fma32_alu:z <- $s2
	.loc	2 22 5 is_stmt 1                ; fma.c:22:5
	cmp	x11, #6
	b.hi	LBB3_41
Ltmp308:
; %bb.31:                               ;   in Loop: Header=BB3_25 Depth=2
	;DEBUG_VALUE: fma32_alu:z <- $s2
	;DEBUG_VALUE: fma32_alu:x <- $s0
	;DEBUG_VALUE: fma32_alu:y <- $s1
	;DEBUG_VALUE: fma32_alu:operand <- $x19
	;DEBUG_VALUE: j <- [DW_OP_consts 2, DW_OP_div, DW_OP_stack_value] $x16
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMA16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMA16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA16:operand <- $x19
	.loc	2 0 5 is_stmt 0                 ; fma.c:0:5
Ltmp309:
	adr	x2, Ltmp309
	ldrsw	x3, [x13, x11, lsl #2]
	add	x2, x2, x3
	br	x2
Ltmp310:
LBB3_32:                                ;   in Loop: Header=BB3_25 Depth=2
	;DEBUG_VALUE: fma32_alu:z <- $s2
	;DEBUG_VALUE: fma32_alu:x <- $s0
	;DEBUG_VALUE: fma32_alu:y <- $s1
	;DEBUG_VALUE: fma32_alu:operand <- $x19
	;DEBUG_VALUE: j <- [DW_OP_consts 2, DW_OP_div, DW_OP_stack_value] $x16
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMA16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMA16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA16:operand <- $x19
	.loc	2 23 22 is_stmt 1               ; fma.c:23:22
	fmul	s0, s0, s1
Ltmp311:
	.loc	2 138 24                        ; fma.c:138:24
	str	s0, [x1, x0, lsl #2]
	b	LBB3_24
Ltmp312:
LBB3_33:                                ;   in Loop: Header=BB3_25 Depth=2
	;DEBUG_VALUE: fma16_alu:z <- $h2
	;DEBUG_VALUE: fma16_alu:x <- $h0
	;DEBUG_VALUE: fma16_alu:y <- $h1
	;DEBUG_VALUE: fma16_alu:operand <- $x19
	;DEBUG_VALUE: j <- [DW_OP_consts 2, DW_OP_div, DW_OP_stack_value] $x16
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMA16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMA16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA16:operand <- $x19
	.loc	2 39 22                         ; fma.c:39:22
	fadd	h0, h0, h2
Ltmp313:
	.loc	2 0 22 is_stmt 0                ; fma.c:0:22
	b	LBB3_23
Ltmp314:
LBB3_34:                                ;   in Loop: Header=BB3_25 Depth=2
	;DEBUG_VALUE: fma16_alu:z <- $h2
	;DEBUG_VALUE: fma16_alu:x <- $h0
	;DEBUG_VALUE: fma16_alu:y <- $h1
	;DEBUG_VALUE: fma16_alu:operand <- $x19
	;DEBUG_VALUE: j <- [DW_OP_consts 2, DW_OP_div, DW_OP_stack_value] $x16
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMA16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMA16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA16:operand <- $x19
	.loc	2 41 22 is_stmt 1               ; fma.c:41:22
	fadd	h0, h1, h2
Ltmp315:
	.loc	2 0 22 is_stmt 0                ; fma.c:0:22
	b	LBB3_23
Ltmp316:
LBB3_35:                                ;   in Loop: Header=BB3_25 Depth=2
	;DEBUG_VALUE: fma32_alu:z <- $s2
	;DEBUG_VALUE: fma32_alu:x <- $s0
	;DEBUG_VALUE: fma32_alu:y <- $s1
	;DEBUG_VALUE: fma32_alu:operand <- $x19
	;DEBUG_VALUE: j <- [DW_OP_consts 2, DW_OP_div, DW_OP_stack_value] $x16
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMA16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMA16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA16:operand <- $x19
	.loc	2 24 22 is_stmt 1               ; fma.c:24:22
	fadd	s0, s2, s0
Ltmp317:
	.loc	2 138 24                        ; fma.c:138:24
	str	s0, [x1, x0, lsl #2]
	b	LBB3_24
Ltmp318:
LBB3_36:                                ;   in Loop: Header=BB3_25 Depth=2
	;DEBUG_VALUE: fma32_alu:z <- $s2
	;DEBUG_VALUE: fma32_alu:x <- $s0
	;DEBUG_VALUE: fma32_alu:y <- $s1
	;DEBUG_VALUE: fma32_alu:operand <- $x19
	;DEBUG_VALUE: j <- [DW_OP_consts 2, DW_OP_div, DW_OP_stack_value] $x16
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMA16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMA16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA16:operand <- $x19
	.loc	2 26 22                         ; fma.c:26:22
	fadd	s0, s2, s1
Ltmp319:
	.loc	2 138 24                        ; fma.c:138:24
	str	s0, [x1, x0, lsl #2]
	b	LBB3_24
Ltmp320:
LBB3_37:                                ;   in Loop: Header=BB3_25 Depth=2
	;DEBUG_VALUE: j <- [DW_OP_consts 2, DW_OP_div, DW_OP_stack_value] $x16
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMA16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMA16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA16:operand <- $x19
	.loc	2 0 24 is_stmt 0                ; fma.c:0:24
	fmov	s0, s1
	.loc	2 138 24                        ; fma.c:138:24
	str	s1, [x1, x0, lsl #2]
	b	LBB3_24
Ltmp321:
LBB3_38:                                ;   in Loop: Header=BB3_25 Depth=2
	;DEBUG_VALUE: fma16_alu:z <- $h2
	;DEBUG_VALUE: fma16_alu:x <- $h0
	;DEBUG_VALUE: fma16_alu:y <- $h1
	;DEBUG_VALUE: fma16_alu:operand <- $x19
	;DEBUG_VALUE: j <- [DW_OP_consts 2, DW_OP_div, DW_OP_stack_value] $x16
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMA16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMA16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA16:operand <- $x19
	.loc	2 47 5 is_stmt 1                ; fma.c:47:5
	; InlineAsm Start
	fmadd	h0, h0, h1, h2
	; InlineAsm End
Ltmp322:
	;DEBUG_VALUE: fma16_alu:result <- $h0
	.loc	2 0 5 is_stmt 0                 ; fma.c:0:5
	b	LBB3_23
Ltmp323:
LBB3_39:                                ;   in Loop: Header=BB3_25 Depth=2
	;DEBUG_VALUE: fma16_alu:z <- $h2
	;DEBUG_VALUE: fma16_alu:x <- $h0
	;DEBUG_VALUE: fma16_alu:y <- $h1
	;DEBUG_VALUE: fma16_alu:operand <- $x19
	;DEBUG_VALUE: j <- [DW_OP_consts 2, DW_OP_div, DW_OP_stack_value] $x16
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMA16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMA16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA16:operand <- $x19
	fmov	s0, s2
	b	LBB3_23
Ltmp324:
LBB3_40:                                ;   in Loop: Header=BB3_25 Depth=2
	;DEBUG_VALUE: fma16_alu:z <- $h2
	;DEBUG_VALUE: fma16_alu:x <- $h0
	;DEBUG_VALUE: fma16_alu:y <- $h1
	;DEBUG_VALUE: fma16_alu:operand <- $x19
	;DEBUG_VALUE: j <- [DW_OP_consts 2, DW_OP_div, DW_OP_stack_value] $x16
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMA16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMA16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA16:operand <- $x19
	movi	d0, #0000000000000000
	b	LBB3_23
Ltmp325:
LBB3_41:                                ;   in Loop: Header=BB3_25 Depth=2
	;DEBUG_VALUE: fma32_alu:z <- $s2
	;DEBUG_VALUE: fma32_alu:x <- $s0
	;DEBUG_VALUE: fma32_alu:y <- $s1
	;DEBUG_VALUE: fma32_alu:operand <- $x19
	;DEBUG_VALUE: j <- [DW_OP_consts 2, DW_OP_div, DW_OP_stack_value] $x16
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMA16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMA16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA16:operand <- $x19
	.loc	2 32 5 is_stmt 1                ; fma.c:32:5
	; InlineAsm Start
	fmadd	s0, s0, s1, s2
	; InlineAsm End
Ltmp326:
	;DEBUG_VALUE: fma32_alu:result <- $s0
LBB3_42:                                ;   in Loop: Header=BB3_25 Depth=2
	;DEBUG_VALUE: j <- [DW_OP_consts 2, DW_OP_div, DW_OP_stack_value] $x16
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMA16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMA16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA16:operand <- $x19
	.loc	2 138 24                        ; fma.c:138:24
	str	s0, [x1, x0, lsl #2]
	b	LBB3_24
Ltmp327:
LBB3_43:                                ;   in Loop: Header=BB3_25 Depth=2
	;DEBUG_VALUE: j <- [DW_OP_consts 2, DW_OP_div, DW_OP_stack_value] $x16
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMA16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMA16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA16:operand <- $x19
	.loc	2 0 24 is_stmt 0                ; fma.c:0:24
	fmov	s0, s2
	.loc	2 138 24                        ; fma.c:138:24
	str	s2, [x1, x0, lsl #2]
	b	LBB3_24
Ltmp328:
LBB3_44:                                ;   in Loop: Header=BB3_25 Depth=2
	;DEBUG_VALUE: j <- [DW_OP_consts 2, DW_OP_div, DW_OP_stack_value] $x16
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMA16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMA16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA16:operand <- $x19
	.loc	2 0 24                          ; fma.c:0:24
	movi	d0, #0000000000000000
	.loc	2 138 24                        ; fma.c:138:24
	str	s0, [x1, x0, lsl #2]
	b	LBB3_24
Ltmp329:
LBB3_45:                                ;   in Loop: Header=BB3_19 Depth=1
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMA16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMA16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA16:operand <- $x19
	;DEBUG_VALUE: z <- undef
	.loc	2 132 28 is_stmt 1              ; fma.c:132:28
	ldr	h0, [x26, x15]
	.loc	2 132 34 is_stmt 0              ; fma.c:132:34
	ldr	h1, [x27, x15]
	.loc	2 132 40                        ; fma.c:132:40
	ldr	h2, [x9, x15]
Ltmp330:
	;DEBUG_VALUE: fma16_alu:operand <- $x19
	;DEBUG_VALUE: fma16_alu:y <- $h1
	;DEBUG_VALUE: fma16_alu:x <- $h0
	;DEBUG_VALUE: fma16_alu:z <- $h2
	.loc	2 37 5 is_stmt 1                ; fma.c:37:5
	cmp	x11, #6
	b.hi	LBB3_48
Ltmp331:
; %bb.46:                               ;   in Loop: Header=BB3_19 Depth=1
	;DEBUG_VALUE: fma16_alu:z <- $h2
	;DEBUG_VALUE: fma16_alu:x <- $h0
	;DEBUG_VALUE: fma16_alu:y <- $h1
	;DEBUG_VALUE: fma16_alu:operand <- $x19
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMA16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMA16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA16:operand <- $x19
	.loc	2 0 5 is_stmt 0                 ; fma.c:0:5
Ltmp332:
	adr	x15, Ltmp332
	ldrsw	x16, [x14, x11, lsl #2]
	add	x15, x15, x16
	br	x15
Ltmp333:
LBB3_47:                                ;   in Loop: Header=BB3_19 Depth=1
	;DEBUG_VALUE: fma16_alu:z <- $h2
	;DEBUG_VALUE: fma16_alu:x <- $h0
	;DEBUG_VALUE: fma16_alu:y <- $h1
	;DEBUG_VALUE: fma16_alu:operand <- $x19
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMA16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMA16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA16:operand <- $x19
	.loc	2 38 22 is_stmt 1               ; fma.c:38:22
	fmul	h0, h0, h1
Ltmp334:
	.loc	2 132 16                        ; fma.c:132:16
	str	h0, [x9, x8, lsl #1]
	b	LBB3_18
Ltmp335:
LBB3_48:                                ;   in Loop: Header=BB3_19 Depth=1
	;DEBUG_VALUE: fma16_alu:z <- $h2
	;DEBUG_VALUE: fma16_alu:x <- $h0
	;DEBUG_VALUE: fma16_alu:y <- $h1
	;DEBUG_VALUE: fma16_alu:operand <- $x19
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMA16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMA16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA16:operand <- $x19
	.loc	2 47 5                          ; fma.c:47:5
	; InlineAsm Start
	fmadd	h0, h0, h1, h2
	; InlineAsm End
Ltmp336:
	;DEBUG_VALUE: fma16_alu:result <- $h0
LBB3_49:                                ;   in Loop: Header=BB3_19 Depth=1
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMA16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMA16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA16:operand <- $x19
	.loc	2 132 16                        ; fma.c:132:16
	str	h0, [x9, x8, lsl #1]
	b	LBB3_18
Ltmp337:
LBB3_50:                                ;   in Loop: Header=BB3_19 Depth=1
	;DEBUG_VALUE: fma16_alu:z <- $h2
	;DEBUG_VALUE: fma16_alu:x <- $h0
	;DEBUG_VALUE: fma16_alu:y <- $h1
	;DEBUG_VALUE: fma16_alu:operand <- $x19
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMA16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMA16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA16:operand <- $x19
	.loc	2 39 22                         ; fma.c:39:22
	fadd	h0, h0, h2
Ltmp338:
	.loc	2 132 16                        ; fma.c:132:16
	str	h0, [x9, x8, lsl #1]
	b	LBB3_18
Ltmp339:
LBB3_51:                                ;   in Loop: Header=BB3_19 Depth=1
	;DEBUG_VALUE: fma16_alu:z <- $h2
	;DEBUG_VALUE: fma16_alu:x <- $h0
	;DEBUG_VALUE: fma16_alu:y <- $h1
	;DEBUG_VALUE: fma16_alu:operand <- $x19
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMA16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMA16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA16:operand <- $x19
	.loc	2 41 22                         ; fma.c:41:22
	fadd	h0, h1, h2
Ltmp340:
	.loc	2 132 16                        ; fma.c:132:16
	str	h0, [x9, x8, lsl #1]
	b	LBB3_18
Ltmp341:
LBB3_52:                                ;   in Loop: Header=BB3_19 Depth=1
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMA16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMA16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA16:operand <- $x19
	.loc	2 0 16 is_stmt 0                ; fma.c:0:16
	fmov	s0, s2
	.loc	2 132 16                        ; fma.c:132:16
	str	h2, [x9, x8, lsl #1]
	b	LBB3_18
Ltmp342:
LBB3_53:                                ;   in Loop: Header=BB3_19 Depth=1
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMA16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMA16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA16:operand <- $x19
	.loc	2 0 16                          ; fma.c:0:16
	movi	d0, #0000000000000000
	.loc	2 132 16                        ; fma.c:132:16
	str	h0, [x9, x8, lsl #1]
	b	LBB3_18
Ltmp343:
LBB3_54:
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMA16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMA16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMA16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA16:operand <- $x19
	.loc	2 0 16                          ; fma.c:0:16
	ldur	x8, [x29, #-88]
Lloh41:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh42:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh43:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB3_56
Ltmp344:
; %bb.55:
	;DEBUG_VALUE: emulate_AMX_FMA16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMA16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMA16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA16:operand <- $x19
	.loc	2 146 1 is_stmt 1               ; fma.c:146:1
	ldp	x29, x30, [sp, #224]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #208]            ; 16-byte Folded Reload
Ltmp345:
	;DEBUG_VALUE: emulate_AMX_FMA16:state <- [DW_OP_LLVM_entry_value 1] $x0
	;DEBUG_VALUE: emulate_AMX_FMA16:operand <- [DW_OP_LLVM_entry_value 1] $x1
	ldp	x22, x21, [sp, #192]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #176]            ; 16-byte Folded Reload
Ltmp346:
	ldp	x26, x25, [sp, #160]            ; 16-byte Folded Reload
Ltmp347:
	ldp	x28, x27, [sp, #144]            ; 16-byte Folded Reload
	add	sp, sp, #240
Ltmp348:
	ret
Ltmp349:
LBB3_56:
	;DEBUG_VALUE: emulate_AMX_FMA16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMA16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMA16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMA16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMA16:operand <- $x19
	.loc	2 0 1 is_stmt 0                 ; fma.c:0:1
	bl	___stack_chk_fail
Ltmp350:
	.loh AdrpAdd	Lloh31, Lloh32
	.loh AdrpLdrGotLdr	Lloh28, Lloh29, Lloh30
	.loh AdrpAdd	Lloh33, Lloh34
	.loh AdrpAdd	Lloh39, Lloh40
	.loh AdrpAdd	Lloh37, Lloh38
	.loh AdrpAdd	Lloh35, Lloh36
	.loh AdrpLdrGotLdr	Lloh41, Lloh42, Lloh43
Lfunc_end3:
	.cfi_endproc
	.p2align	2
lJTI3_0:
	.long	LBB3_1-Ltmp246
	.long	LBB3_7-Ltmp246
	.long	LBB3_2-Ltmp246
	.long	LBB3_4-Ltmp246
	.p2align	2
lJTI3_1:
	.long	LBB3_9-Ltmp262
	.long	LBB3_15-Ltmp262
	.long	LBB3_10-Ltmp262
	.long	LBB3_12-Ltmp262
	.p2align	2
lJTI3_2:
	.long	LBB3_47-Ltmp332
	.long	LBB3_50-Ltmp332
	.long	LBB3_49-Ltmp332
	.long	LBB3_51-Ltmp332
	.long	LBB3_17-Ltmp332
	.long	LBB3_52-Ltmp332
	.long	LBB3_53-Ltmp332
	.p2align	2
lJTI3_3:
	.long	LBB3_32-Ltmp309
	.long	LBB3_35-Ltmp309
	.long	LBB3_42-Ltmp309
	.long	LBB3_36-Ltmp309
	.long	LBB3_37-Ltmp309
	.long	LBB3_43-Ltmp309
	.long	LBB3_44-Ltmp309
	.p2align	2
lJTI3_4:
	.long	LBB3_29-Ltmp302
	.long	LBB3_33-Ltmp302
	.long	LBB3_23-Ltmp302
	.long	LBB3_34-Ltmp302
	.long	LBB3_22-Ltmp302
	.long	LBB3_39-Ltmp302
	.long	LBB3_40-Ltmp302
                                        ; -- End function
	.file	6 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types" "_uint16_t.h"
	.file	7 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types" "_int8_t.h"
	.file	8 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types" "_int16_t.h"
	.file	9 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types" "_int32_t.h"
	.section	__DWARF,__debug_loc,regular,debug
Lsection_debug_loc:
Ldebug_loc0:
.set Lset0, Lfunc_begin0-Lfunc_begin0
	.quad	Lset0
.set Lset1, Ltmp9-Lfunc_begin0
	.quad	Lset1
	.short	1                               ; Loc expr size
	.byte	80                              ; DW_OP_reg0
.set Lset2, Ltmp9-Lfunc_begin0
	.quad	Lset2
.set Lset3, Ltmp92-Lfunc_begin0
	.quad	Lset3
	.short	1                               ; Loc expr size
	.byte	100                             ; DW_OP_reg20
.set Lset4, Ltmp92-Lfunc_begin0
	.quad	Lset4
.set Lset5, Ltmp96-Lfunc_begin0
	.quad	Lset5
	.short	4                               ; Loc expr size
	.byte	163                             ; DW_OP_entry_value
	.byte	1                               ; 1
	.byte	80                              ; DW_OP_reg0
	.byte	159                             ; DW_OP_stack_value
.set Lset6, Ltmp96-Lfunc_begin0
	.quad	Lset6
.set Lset7, Lfunc_end0-Lfunc_begin0
	.quad	Lset7
	.short	1                               ; Loc expr size
	.byte	100                             ; DW_OP_reg20
	.quad	0
	.quad	0
Ldebug_loc1:
.set Lset8, Lfunc_begin0-Lfunc_begin0
	.quad	Lset8
.set Lset9, Ltmp8-Lfunc_begin0
	.quad	Lset9
	.short	1                               ; Loc expr size
	.byte	81                              ; DW_OP_reg1
.set Lset10, Ltmp8-Lfunc_begin0
	.quad	Lset10
.set Lset11, Ltmp92-Lfunc_begin0
	.quad	Lset11
	.short	1                               ; Loc expr size
	.byte	99                              ; DW_OP_reg19
.set Lset12, Ltmp92-Lfunc_begin0
	.quad	Lset12
.set Lset13, Ltmp96-Lfunc_begin0
	.quad	Lset13
	.short	4                               ; Loc expr size
	.byte	163                             ; DW_OP_entry_value
	.byte	1                               ; 1
	.byte	81                              ; DW_OP_reg1
	.byte	159                             ; DW_OP_stack_value
.set Lset14, Ltmp96-Lfunc_begin0
	.quad	Lset14
.set Lset15, Lfunc_end0-Lfunc_begin0
	.quad	Lset15
	.short	1                               ; Loc expr size
	.byte	99                              ; DW_OP_reg19
	.quad	0
	.quad	0
Ldebug_loc2:
.set Lset16, Ltmp1-Lfunc_begin0
	.quad	Lset16
.set Lset17, Ltmp45-Lfunc_begin0
	.quad	Lset17
	.short	1                               ; Loc expr size
	.byte	103                             ; DW_OP_reg23
	.quad	0
	.quad	0
Ldebug_loc3:
.set Lset18, Ltmp2-Lfunc_begin0
	.quad	Lset18
.set Lset19, Ltmp41-Lfunc_begin0
	.quad	Lset19
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
	.quad	0
	.quad	0
Ldebug_loc4:
.set Lset20, Ltmp3-Lfunc_begin0
	.quad	Lset20
.set Lset21, Ltmp27-Lfunc_begin0
	.quad	Lset21
	.short	1                               ; Loc expr size
	.byte	95                              ; DW_OP_reg15
.set Lset22, Ltmp27-Lfunc_begin0
	.quad	Lset22
.set Lset23, Ltmp95-Lfunc_begin0
	.quad	Lset23
	.short	2                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	0                               ; 0
.set Lset24, Ltmp96-Lfunc_begin0
	.quad	Lset24
.set Lset25, Lfunc_end0-Lfunc_begin0
	.quad	Lset25
	.short	2                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	0                               ; 0
	.quad	0
	.quad	0
Ldebug_loc5:
.set Lset26, Ltmp4-Lfunc_begin0
	.quad	Lset26
.set Lset27, Ltmp6-Lfunc_begin0
	.quad	Lset27
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
.set Lset28, Ltmp6-Lfunc_begin0
	.quad	Lset28
.set Lset29, Ltmp7-Lfunc_begin0
	.quad	Lset29
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
.set Lset30, Ltmp7-Lfunc_begin0
	.quad	Lset30
.set Lset31, Ltmp16-Lfunc_begin0
	.quad	Lset31
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
.set Lset32, Ltmp17-Lfunc_begin0
	.quad	Lset32
.set Lset33, Ltmp19-Lfunc_begin0
	.quad	Lset33
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
.set Lset34, Ltmp20-Lfunc_begin0
	.quad	Lset34
.set Lset35, Ltmp21-Lfunc_begin0
	.quad	Lset35
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
	.quad	0
	.quad	0
Ldebug_loc6:
.set Lset36, Ltmp5-Lfunc_begin0
	.quad	Lset36
.set Lset37, Ltmp12-Lfunc_begin0
	.quad	Lset37
	.short	1                               ; Loc expr size
	.byte	91                              ; DW_OP_reg11
.set Lset38, Ltmp14-Lfunc_begin0
	.quad	Lset38
.set Lset39, Ltmp21-Lfunc_begin0
	.quad	Lset39
	.short	1                               ; Loc expr size
	.byte	91                              ; DW_OP_reg11
	.quad	0
	.quad	0
Ldebug_loc7:
.set Lset40, Ltmp7-Lfunc_begin0
	.quad	Lset40
.set Lset41, Ltmp13-Lfunc_begin0
	.quad	Lset41
	.short	3                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	32                              ; DW_OP_not
	.byte	159                             ; DW_OP_stack_value
.set Lset42, Ltmp13-Lfunc_begin0
	.quad	Lset42
.set Lset43, Ltmp14-Lfunc_begin0
	.quad	Lset43
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
.set Lset44, Ltmp14-Lfunc_begin0
	.quad	Lset44
.set Lset45, Ltmp21-Lfunc_begin0
	.quad	Lset45
	.short	3                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	32                              ; DW_OP_not
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc8:
.set Lset46, Ltmp21-Lfunc_begin0
	.quad	Lset46
.set Lset47, Ltmp93-Lfunc_begin0
	.quad	Lset47
	.short	1                               ; Loc expr size
	.byte	104                             ; DW_OP_reg24
.set Lset48, Ltmp96-Lfunc_begin0
	.quad	Lset48
.set Lset49, Lfunc_end0-Lfunc_begin0
	.quad	Lset49
	.short	1                               ; Loc expr size
	.byte	104                             ; DW_OP_reg24
	.quad	0
	.quad	0
Ldebug_loc9:
.set Lset50, Ltmp22-Lfunc_begin0
	.quad	Lset50
.set Lset51, Ltmp24-Lfunc_begin0
	.quad	Lset51
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
.set Lset52, Ltmp24-Lfunc_begin0
	.quad	Lset52
.set Lset53, Ltmp25-Lfunc_begin0
	.quad	Lset53
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
.set Lset54, Ltmp25-Lfunc_begin0
	.quad	Lset54
.set Lset55, Ltmp33-Lfunc_begin0
	.quad	Lset55
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
.set Lset56, Ltmp34-Lfunc_begin0
	.quad	Lset56
.set Lset57, Ltmp36-Lfunc_begin0
	.quad	Lset57
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
.set Lset58, Ltmp37-Lfunc_begin0
	.quad	Lset58
.set Lset59, Ltmp38-Lfunc_begin0
	.quad	Lset59
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
	.quad	0
	.quad	0
Ldebug_loc10:
.set Lset60, Ltmp23-Lfunc_begin0
	.quad	Lset60
.set Lset61, Ltmp29-Lfunc_begin0
	.quad	Lset61
	.short	1                               ; Loc expr size
	.byte	91                              ; DW_OP_reg11
.set Lset62, Ltmp31-Lfunc_begin0
	.quad	Lset62
.set Lset63, Ltmp38-Lfunc_begin0
	.quad	Lset63
	.short	1                               ; Loc expr size
	.byte	91                              ; DW_OP_reg11
	.quad	0
	.quad	0
Ldebug_loc11:
.set Lset64, Ltmp25-Lfunc_begin0
	.quad	Lset64
.set Lset65, Ltmp30-Lfunc_begin0
	.quad	Lset65
	.short	3                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	32                              ; DW_OP_not
	.byte	159                             ; DW_OP_stack_value
.set Lset66, Ltmp30-Lfunc_begin0
	.quad	Lset66
.set Lset67, Ltmp31-Lfunc_begin0
	.quad	Lset67
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
.set Lset68, Ltmp31-Lfunc_begin0
	.quad	Lset68
.set Lset69, Ltmp38-Lfunc_begin0
	.quad	Lset69
	.short	3                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	32                              ; DW_OP_not
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc12:
.set Lset70, Ltmp38-Lfunc_begin0
	.quad	Lset70
.set Lset71, Ltmp94-Lfunc_begin0
	.quad	Lset71
	.short	1                               ; Loc expr size
	.byte	105                             ; DW_OP_reg25
.set Lset72, Ltmp96-Lfunc_begin0
	.quad	Lset72
.set Lset73, Lfunc_end0-Lfunc_begin0
	.quad	Lset73
	.short	1                               ; Loc expr size
	.byte	105                             ; DW_OP_reg25
	.quad	0
	.quad	0
Ldebug_loc13:
.set Lset74, Ltmp39-Lfunc_begin0
	.quad	Lset74
.set Lset75, Ltmp41-Lfunc_begin0
	.quad	Lset75
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
	.quad	0
	.quad	0
Ldebug_loc14:
.set Lset76, Ltmp40-Lfunc_begin0
	.quad	Lset76
.set Lset77, Ltmp41-Lfunc_begin0
	.quad	Lset77
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
	.quad	0
	.quad	0
Ldebug_loc15:
.set Lset78, Ltmp43-Lfunc_begin0
	.quad	Lset78
.set Lset79, Ltmp45-Lfunc_begin0
	.quad	Lset79
	.short	1                               ; Loc expr size
	.byte	103                             ; DW_OP_reg23
	.quad	0
	.quad	0
Ldebug_loc16:
.set Lset80, Ltmp44-Lfunc_begin0
	.quad	Lset80
.set Lset81, Ltmp46-Lfunc_begin0
	.quad	Lset81
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
	.quad	0
	.quad	0
Ldebug_loc17:
.set Lset82, Ltmp57-Lfunc_begin0
	.quad	Lset82
.set Lset83, Ltmp58-Lfunc_begin0
	.quad	Lset83
	.short	6                               ; Loc expr size
	.byte	127                             ; DW_OP_breg15
	.byte	0                               ; 0
	.byte	17                              ; DW_OP_consts
	.byte	8                               ; 8
	.byte	27                              ; DW_OP_div
	.byte	159                             ; DW_OP_stack_value
.set Lset84, Ltmp58-Lfunc_begin0
	.quad	Lset84
.set Lset85, Ltmp59-Lfunc_begin0
	.quad	Lset85
	.short	9                               ; Loc expr size
	.byte	127                             ; DW_OP_breg15
	.byte	0                               ; 0
	.byte	17                              ; DW_OP_consts
	.byte	8                               ; 8
	.byte	27                              ; DW_OP_div
	.byte	17                              ; DW_OP_consts
	.byte	1                               ; 1
	.byte	34                              ; DW_OP_plus
	.byte	159                             ; DW_OP_stack_value
.set Lset86, Ltmp60-Lfunc_begin0
	.quad	Lset86
.set Lset87, Ltmp74-Lfunc_begin0
	.quad	Lset87
	.short	6                               ; Loc expr size
	.byte	127                             ; DW_OP_breg15
	.byte	0                               ; 0
	.byte	17                              ; DW_OP_consts
	.byte	8                               ; 8
	.byte	27                              ; DW_OP_div
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc18:
.set Lset88, Ltmp63-Lfunc_begin0
	.quad	Lset88
.set Lset89, Ltmp67-Lfunc_begin0
	.quad	Lset89
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset90, Ltmp68-Lfunc_begin0
	.quad	Lset90
.set Lset91, Ltmp69-Lfunc_begin0
	.quad	Lset91
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset92, Ltmp70-Lfunc_begin0
	.quad	Lset92
.set Lset93, Ltmp71-Lfunc_begin0
	.quad	Lset93
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset94, Ltmp72-Lfunc_begin0
	.quad	Lset94
.set Lset95, Ltmp73-Lfunc_begin0
	.quad	Lset95
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
	.quad	0
	.quad	0
Ldebug_loc19:
.set Lset96, Ltmp73-Lfunc_begin0
	.quad	Lset96
.set Lset97, Ltmp74-Lfunc_begin0
	.quad	Lset97
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
	.quad	0
	.quad	0
Ldebug_loc20:
.set Lset98, Ltmp77-Lfunc_begin0
	.quad	Lset98
.set Lset99, Ltmp83-Lfunc_begin0
	.quad	Lset99
	.short	1                               ; Loc expr size
	.byte	99                              ; DW_OP_reg19
.set Lset100, Ltmp84-Lfunc_begin0
	.quad	Lset100
.set Lset101, Ltmp88-Lfunc_begin0
	.quad	Lset101
	.short	1                               ; Loc expr size
	.byte	99                              ; DW_OP_reg19
	.quad	0
	.quad	0
Ldebug_loc21:
.set Lset102, Ltmp77-Lfunc_begin0
	.quad	Lset102
.set Lset103, Ltmp83-Lfunc_begin0
	.quad	Lset103
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	65                              ; 65
.set Lset104, Ltmp84-Lfunc_begin0
	.quad	Lset104
.set Lset105, Ltmp88-Lfunc_begin0
	.quad	Lset105
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	65                              ; 65
	.quad	0
	.quad	0
Ldebug_loc22:
.set Lset106, Ltmp77-Lfunc_begin0
	.quad	Lset106
.set Lset107, Ltmp81-Lfunc_begin0
	.quad	Lset107
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset108, Ltmp82-Lfunc_begin0
	.quad	Lset108
.set Lset109, Ltmp83-Lfunc_begin0
	.quad	Lset109
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset110, Ltmp84-Lfunc_begin0
	.quad	Lset110
.set Lset111, Ltmp85-Lfunc_begin0
	.quad	Lset111
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset112, Ltmp86-Lfunc_begin0
	.quad	Lset112
.set Lset113, Ltmp87-Lfunc_begin0
	.quad	Lset113
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
	.quad	0
	.quad	0
Ldebug_loc23:
.set Lset114, Ltmp77-Lfunc_begin0
	.quad	Lset114
.set Lset115, Ltmp83-Lfunc_begin0
	.quad	Lset115
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	66                              ; 66
.set Lset116, Ltmp84-Lfunc_begin0
	.quad	Lset116
.set Lset117, Ltmp88-Lfunc_begin0
	.quad	Lset117
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	66                              ; 66
	.quad	0
	.quad	0
Ldebug_loc24:
.set Lset118, Lfunc_begin1-Lfunc_begin0
	.quad	Lset118
.set Lset119, Ltmp107-Lfunc_begin0
	.quad	Lset119
	.short	1                               ; Loc expr size
	.byte	80                              ; DW_OP_reg0
.set Lset120, Ltmp107-Lfunc_begin0
	.quad	Lset120
.set Lset121, Ltmp178-Lfunc_begin0
	.quad	Lset121
	.short	1                               ; Loc expr size
	.byte	100                             ; DW_OP_reg20
.set Lset122, Ltmp178-Lfunc_begin0
	.quad	Lset122
.set Lset123, Ltmp182-Lfunc_begin0
	.quad	Lset123
	.short	4                               ; Loc expr size
	.byte	163                             ; DW_OP_entry_value
	.byte	1                               ; 1
	.byte	80                              ; DW_OP_reg0
	.byte	159                             ; DW_OP_stack_value
.set Lset124, Ltmp182-Lfunc_begin0
	.quad	Lset124
.set Lset125, Lfunc_end1-Lfunc_begin0
	.quad	Lset125
	.short	1                               ; Loc expr size
	.byte	100                             ; DW_OP_reg20
	.quad	0
	.quad	0
Ldebug_loc25:
.set Lset126, Lfunc_begin1-Lfunc_begin0
	.quad	Lset126
.set Lset127, Ltmp106-Lfunc_begin0
	.quad	Lset127
	.short	1                               ; Loc expr size
	.byte	81                              ; DW_OP_reg1
.set Lset128, Ltmp106-Lfunc_begin0
	.quad	Lset128
.set Lset129, Ltmp178-Lfunc_begin0
	.quad	Lset129
	.short	1                               ; Loc expr size
	.byte	99                              ; DW_OP_reg19
.set Lset130, Ltmp178-Lfunc_begin0
	.quad	Lset130
.set Lset131, Ltmp182-Lfunc_begin0
	.quad	Lset131
	.short	4                               ; Loc expr size
	.byte	163                             ; DW_OP_entry_value
	.byte	1                               ; 1
	.byte	81                              ; DW_OP_reg1
	.byte	159                             ; DW_OP_stack_value
.set Lset132, Ltmp182-Lfunc_begin0
	.quad	Lset132
.set Lset133, Lfunc_end1-Lfunc_begin0
	.quad	Lset133
	.short	1                               ; Loc expr size
	.byte	99                              ; DW_OP_reg19
	.quad	0
	.quad	0
Ldebug_loc26:
.set Lset134, Ltmp99-Lfunc_begin0
	.quad	Lset134
.set Lset135, Ltmp179-Lfunc_begin0
	.quad	Lset135
	.short	1                               ; Loc expr size
	.byte	101                             ; DW_OP_reg21
.set Lset136, Ltmp182-Lfunc_begin0
	.quad	Lset136
.set Lset137, Lfunc_end1-Lfunc_begin0
	.quad	Lset137
	.short	1                               ; Loc expr size
	.byte	101                             ; DW_OP_reg21
	.quad	0
	.quad	0
Ldebug_loc27:
.set Lset138, Ltmp100-Lfunc_begin0
	.quad	Lset138
.set Lset139, Ltmp132-Lfunc_begin0
	.quad	Lset139
	.short	1                               ; Loc expr size
	.byte	82                              ; DW_OP_reg2
	.quad	0
	.quad	0
Ldebug_loc28:
.set Lset140, Ltmp101-Lfunc_begin0
	.quad	Lset140
.set Lset141, Ltmp181-Lfunc_begin0
	.quad	Lset141
	.short	1                               ; Loc expr size
	.byte	106                             ; DW_OP_reg26
.set Lset142, Ltmp182-Lfunc_begin0
	.quad	Lset142
.set Lset143, Lfunc_end1-Lfunc_begin0
	.quad	Lset143
	.short	1                               ; Loc expr size
	.byte	106                             ; DW_OP_reg26
	.quad	0
	.quad	0
Ldebug_loc29:
.set Lset144, Ltmp102-Lfunc_begin0
	.quad	Lset144
.set Lset145, Ltmp104-Lfunc_begin0
	.quad	Lset145
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
.set Lset146, Ltmp104-Lfunc_begin0
	.quad	Lset146
.set Lset147, Ltmp105-Lfunc_begin0
	.quad	Lset147
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
.set Lset148, Ltmp105-Lfunc_begin0
	.quad	Lset148
.set Lset149, Ltmp117-Lfunc_begin0
	.quad	Lset149
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
	.quad	0
	.quad	0
Ldebug_loc30:
.set Lset150, Ltmp103-Lfunc_begin0
	.quad	Lset150
.set Lset151, Ltmp110-Lfunc_begin0
	.quad	Lset151
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
.set Lset152, Ltmp112-Lfunc_begin0
	.quad	Lset152
.set Lset153, Ltmp113-Lfunc_begin0
	.quad	Lset153
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
.set Lset154, Ltmp114-Lfunc_begin0
	.quad	Lset154
.set Lset155, Ltmp115-Lfunc_begin0
	.quad	Lset155
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
.set Lset156, Ltmp116-Lfunc_begin0
	.quad	Lset156
.set Lset157, Ltmp117-Lfunc_begin0
	.quad	Lset157
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
	.quad	0
	.quad	0
Ldebug_loc31:
.set Lset158, Ltmp105-Lfunc_begin0
	.quad	Lset158
.set Lset159, Ltmp111-Lfunc_begin0
	.quad	Lset159
	.short	3                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	32                              ; DW_OP_not
	.byte	159                             ; DW_OP_stack_value
.set Lset160, Ltmp111-Lfunc_begin0
	.quad	Lset160
.set Lset161, Ltmp112-Lfunc_begin0
	.quad	Lset161
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
.set Lset162, Ltmp112-Lfunc_begin0
	.quad	Lset162
.set Lset163, Ltmp117-Lfunc_begin0
	.quad	Lset163
	.short	3                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	32                              ; DW_OP_not
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc32:
.set Lset164, Ltmp117-Lfunc_begin0
	.quad	Lset164
.set Lset165, Ltmp179-Lfunc_begin0
	.quad	Lset165
	.short	1                               ; Loc expr size
	.byte	102                             ; DW_OP_reg22
.set Lset166, Ltmp182-Lfunc_begin0
	.quad	Lset166
.set Lset167, Lfunc_end1-Lfunc_begin0
	.quad	Lset167
	.short	1                               ; Loc expr size
	.byte	102                             ; DW_OP_reg22
	.quad	0
	.quad	0
Ldebug_loc33:
.set Lset168, Ltmp118-Lfunc_begin0
	.quad	Lset168
.set Lset169, Ltmp120-Lfunc_begin0
	.quad	Lset169
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
.set Lset170, Ltmp120-Lfunc_begin0
	.quad	Lset170
.set Lset171, Ltmp121-Lfunc_begin0
	.quad	Lset171
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
.set Lset172, Ltmp121-Lfunc_begin0
	.quad	Lset172
.set Lset173, Ltmp131-Lfunc_begin0
	.quad	Lset173
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
	.quad	0
	.quad	0
Ldebug_loc34:
.set Lset174, Ltmp119-Lfunc_begin0
	.quad	Lset174
.set Lset175, Ltmp124-Lfunc_begin0
	.quad	Lset175
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
.set Lset176, Ltmp126-Lfunc_begin0
	.quad	Lset176
.set Lset177, Ltmp127-Lfunc_begin0
	.quad	Lset177
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
.set Lset178, Ltmp128-Lfunc_begin0
	.quad	Lset178
.set Lset179, Ltmp129-Lfunc_begin0
	.quad	Lset179
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
.set Lset180, Ltmp130-Lfunc_begin0
	.quad	Lset180
.set Lset181, Ltmp131-Lfunc_begin0
	.quad	Lset181
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
	.quad	0
	.quad	0
Ldebug_loc35:
.set Lset182, Ltmp121-Lfunc_begin0
	.quad	Lset182
.set Lset183, Ltmp125-Lfunc_begin0
	.quad	Lset183
	.short	3                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	32                              ; DW_OP_not
	.byte	159                             ; DW_OP_stack_value
.set Lset184, Ltmp125-Lfunc_begin0
	.quad	Lset184
.set Lset185, Ltmp126-Lfunc_begin0
	.quad	Lset185
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
.set Lset186, Ltmp126-Lfunc_begin0
	.quad	Lset186
.set Lset187, Ltmp131-Lfunc_begin0
	.quad	Lset187
	.short	3                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	32                              ; DW_OP_not
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc36:
.set Lset188, Ltmp131-Lfunc_begin0
	.quad	Lset188
.set Lset189, Ltmp180-Lfunc_begin0
	.quad	Lset189
	.short	1                               ; Loc expr size
	.byte	103                             ; DW_OP_reg23
.set Lset190, Ltmp182-Lfunc_begin0
	.quad	Lset190
.set Lset191, Lfunc_end1-Lfunc_begin0
	.quad	Lset191
	.short	1                               ; Loc expr size
	.byte	103                             ; DW_OP_reg23
	.quad	0
	.quad	0
Ldebug_loc37:
.set Lset192, Ltmp143-Lfunc_begin0
	.quad	Lset192
.set Lset193, Ltmp144-Lfunc_begin0
	.quad	Lset193
	.short	6                               ; Loc expr size
	.byte	127                             ; DW_OP_breg15
	.byte	0                               ; 0
	.byte	17                              ; DW_OP_consts
	.byte	4                               ; 4
	.byte	27                              ; DW_OP_div
	.byte	159                             ; DW_OP_stack_value
.set Lset194, Ltmp144-Lfunc_begin0
	.quad	Lset194
.set Lset195, Ltmp145-Lfunc_begin0
	.quad	Lset195
	.short	9                               ; Loc expr size
	.byte	127                             ; DW_OP_breg15
	.byte	0                               ; 0
	.byte	17                              ; DW_OP_consts
	.byte	4                               ; 4
	.byte	27                              ; DW_OP_div
	.byte	17                              ; DW_OP_consts
	.byte	1                               ; 1
	.byte	34                              ; DW_OP_plus
	.byte	159                             ; DW_OP_stack_value
.set Lset196, Ltmp146-Lfunc_begin0
	.quad	Lset196
.set Lset197, Ltmp160-Lfunc_begin0
	.quad	Lset197
	.short	6                               ; Loc expr size
	.byte	127                             ; DW_OP_breg15
	.byte	0                               ; 0
	.byte	17                              ; DW_OP_consts
	.byte	4                               ; 4
	.byte	27                              ; DW_OP_div
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc38:
.set Lset198, Ltmp149-Lfunc_begin0
	.quad	Lset198
.set Lset199, Ltmp153-Lfunc_begin0
	.quad	Lset199
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset200, Ltmp154-Lfunc_begin0
	.quad	Lset200
.set Lset201, Ltmp155-Lfunc_begin0
	.quad	Lset201
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset202, Ltmp156-Lfunc_begin0
	.quad	Lset202
.set Lset203, Ltmp157-Lfunc_begin0
	.quad	Lset203
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset204, Ltmp158-Lfunc_begin0
	.quad	Lset204
.set Lset205, Ltmp159-Lfunc_begin0
	.quad	Lset205
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
	.quad	0
	.quad	0
Ldebug_loc39:
.set Lset206, Ltmp159-Lfunc_begin0
	.quad	Lset206
.set Lset207, Ltmp160-Lfunc_begin0
	.quad	Lset207
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
	.quad	0
	.quad	0
Ldebug_loc40:
.set Lset208, Ltmp163-Lfunc_begin0
	.quad	Lset208
.set Lset209, Ltmp169-Lfunc_begin0
	.quad	Lset209
	.short	1                               ; Loc expr size
	.byte	99                              ; DW_OP_reg19
.set Lset210, Ltmp170-Lfunc_begin0
	.quad	Lset210
.set Lset211, Ltmp174-Lfunc_begin0
	.quad	Lset211
	.short	1                               ; Loc expr size
	.byte	99                              ; DW_OP_reg19
	.quad	0
	.quad	0
Ldebug_loc41:
.set Lset212, Ltmp163-Lfunc_begin0
	.quad	Lset212
.set Lset213, Ltmp169-Lfunc_begin0
	.quad	Lset213
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	65                              ; 65
.set Lset214, Ltmp170-Lfunc_begin0
	.quad	Lset214
.set Lset215, Ltmp174-Lfunc_begin0
	.quad	Lset215
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	65                              ; 65
	.quad	0
	.quad	0
Ldebug_loc42:
.set Lset216, Ltmp163-Lfunc_begin0
	.quad	Lset216
.set Lset217, Ltmp167-Lfunc_begin0
	.quad	Lset217
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset218, Ltmp168-Lfunc_begin0
	.quad	Lset218
.set Lset219, Ltmp169-Lfunc_begin0
	.quad	Lset219
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset220, Ltmp170-Lfunc_begin0
	.quad	Lset220
.set Lset221, Ltmp171-Lfunc_begin0
	.quad	Lset221
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset222, Ltmp172-Lfunc_begin0
	.quad	Lset222
.set Lset223, Ltmp173-Lfunc_begin0
	.quad	Lset223
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
	.quad	0
	.quad	0
Ldebug_loc43:
.set Lset224, Ltmp163-Lfunc_begin0
	.quad	Lset224
.set Lset225, Ltmp169-Lfunc_begin0
	.quad	Lset225
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	66                              ; 66
.set Lset226, Ltmp170-Lfunc_begin0
	.quad	Lset226
.set Lset227, Ltmp174-Lfunc_begin0
	.quad	Lset227
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	66                              ; 66
	.quad	0
	.quad	0
Ldebug_loc44:
.set Lset228, Lfunc_begin2-Lfunc_begin0
	.quad	Lset228
.set Lset229, Ltmp186-Lfunc_begin0
	.quad	Lset229
	.short	1                               ; Loc expr size
	.byte	80                              ; DW_OP_reg0
.set Lset230, Ltmp186-Lfunc_begin0
	.quad	Lset230
.set Lset231, Ltmp233-Lfunc_begin0
	.quad	Lset231
	.short	1                               ; Loc expr size
	.byte	99                              ; DW_OP_reg19
.set Lset232, Ltmp233-Lfunc_begin0
	.quad	Lset232
.set Lset233, Lfunc_end2-Lfunc_begin0
	.quad	Lset233
	.short	4                               ; Loc expr size
	.byte	163                             ; DW_OP_entry_value
	.byte	1                               ; 1
	.byte	80                              ; DW_OP_reg0
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc45:
.set Lset234, Lfunc_begin2-Lfunc_begin0
	.quad	Lset234
.set Lset235, Ltmp185-Lfunc_begin0
	.quad	Lset235
	.short	1                               ; Loc expr size
	.byte	81                              ; DW_OP_reg1
.set Lset236, Ltmp185-Lfunc_begin0
	.quad	Lset236
.set Lset237, Ltmp234-Lfunc_begin0
	.quad	Lset237
	.short	1                               ; Loc expr size
	.byte	101                             ; DW_OP_reg21
.set Lset238, Ltmp234-Lfunc_begin0
	.quad	Lset238
.set Lset239, Lfunc_end2-Lfunc_begin0
	.quad	Lset239
	.short	4                               ; Loc expr size
	.byte	163                             ; DW_OP_entry_value
	.byte	1                               ; 1
	.byte	81                              ; DW_OP_reg1
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc46:
.set Lset240, Lfunc_begin2-Lfunc_begin0
	.quad	Lset240
.set Lset241, Ltmp189-Lfunc_begin0
	.quad	Lset241
	.short	1                               ; Loc expr size
	.byte	82                              ; DW_OP_reg2
.set Lset242, Ltmp189-Lfunc_begin0
	.quad	Lset242
.set Lset243, Lfunc_end2-Lfunc_begin0
	.quad	Lset243
	.short	4                               ; Loc expr size
	.byte	163                             ; DW_OP_entry_value
	.byte	1                               ; 1
	.byte	82                              ; DW_OP_reg2
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc47:
.set Lset244, Lfunc_begin2-Lfunc_begin0
	.quad	Lset244
.set Lset245, Ltmp184-Lfunc_begin0
	.quad	Lset245
	.short	1                               ; Loc expr size
	.byte	83                              ; DW_OP_reg3
.set Lset246, Ltmp184-Lfunc_begin0
	.quad	Lset246
.set Lset247, Ltmp233-Lfunc_begin0
	.quad	Lset247
	.short	1                               ; Loc expr size
	.byte	100                             ; DW_OP_reg20
.set Lset248, Ltmp233-Lfunc_begin0
	.quad	Lset248
.set Lset249, Lfunc_end2-Lfunc_begin0
	.quad	Lset249
	.short	4                               ; Loc expr size
	.byte	163                             ; DW_OP_entry_value
	.byte	1                               ; 1
	.byte	83                              ; DW_OP_reg3
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc48:
.set Lset250, Lfunc_begin2-Lfunc_begin0
	.quad	Lset250
.set Lset251, Ltmp189-Lfunc_begin0
	.quad	Lset251
	.short	1                               ; Loc expr size
	.byte	82                              ; DW_OP_reg2
	.quad	0
	.quad	0
Ldebug_loc49:
.set Lset252, Ltmp188-Lfunc_begin0
	.quad	Lset252
.set Lset253, Ltmp190-Lfunc_begin0
	.quad	Lset253
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
	.quad	0
	.quad	0
Ldebug_loc50:
.set Lset254, Ltmp192-Lfunc_begin0
	.quad	Lset254
.set Lset255, Ltmp195-Lfunc_begin0
	.quad	Lset255
	.short	2                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	159                             ; DW_OP_stack_value
.set Lset256, Ltmp195-Lfunc_begin0
	.quad	Lset256
.set Lset257, Ltmp197-Lfunc_begin0
	.quad	Lset257
	.short	2                               ; Loc expr size
	.byte	49                              ; DW_OP_lit1
	.byte	159                             ; DW_OP_stack_value
.set Lset258, Ltmp197-Lfunc_begin0
	.quad	Lset258
.set Lset259, Ltmp200-Lfunc_begin0
	.quad	Lset259
	.short	2                               ; Loc expr size
	.byte	50                              ; DW_OP_lit2
	.byte	159                             ; DW_OP_stack_value
.set Lset260, Ltmp200-Lfunc_begin0
	.quad	Lset260
.set Lset261, Ltmp202-Lfunc_begin0
	.quad	Lset261
	.short	2                               ; Loc expr size
	.byte	51                              ; DW_OP_lit3
	.byte	159                             ; DW_OP_stack_value
.set Lset262, Ltmp202-Lfunc_begin0
	.quad	Lset262
.set Lset263, Ltmp205-Lfunc_begin0
	.quad	Lset263
	.short	2                               ; Loc expr size
	.byte	52                              ; DW_OP_lit4
	.byte	159                             ; DW_OP_stack_value
.set Lset264, Ltmp205-Lfunc_begin0
	.quad	Lset264
.set Lset265, Ltmp207-Lfunc_begin0
	.quad	Lset265
	.short	2                               ; Loc expr size
	.byte	53                              ; DW_OP_lit5
	.byte	159                             ; DW_OP_stack_value
.set Lset266, Ltmp207-Lfunc_begin0
	.quad	Lset266
.set Lset267, Ltmp210-Lfunc_begin0
	.quad	Lset267
	.short	2                               ; Loc expr size
	.byte	54                              ; DW_OP_lit6
	.byte	159                             ; DW_OP_stack_value
.set Lset268, Ltmp210-Lfunc_begin0
	.quad	Lset268
.set Lset269, Ltmp212-Lfunc_begin0
	.quad	Lset269
	.short	2                               ; Loc expr size
	.byte	55                              ; DW_OP_lit7
	.byte	159                             ; DW_OP_stack_value
.set Lset270, Ltmp212-Lfunc_begin0
	.quad	Lset270
.set Lset271, Ltmp215-Lfunc_begin0
	.quad	Lset271
	.short	2                               ; Loc expr size
	.byte	56                              ; DW_OP_lit8
	.byte	159                             ; DW_OP_stack_value
.set Lset272, Ltmp215-Lfunc_begin0
	.quad	Lset272
.set Lset273, Ltmp217-Lfunc_begin0
	.quad	Lset273
	.short	2                               ; Loc expr size
	.byte	57                              ; DW_OP_lit9
	.byte	159                             ; DW_OP_stack_value
.set Lset274, Ltmp217-Lfunc_begin0
	.quad	Lset274
.set Lset275, Ltmp220-Lfunc_begin0
	.quad	Lset275
	.short	2                               ; Loc expr size
	.byte	58                              ; DW_OP_lit10
	.byte	159                             ; DW_OP_stack_value
.set Lset276, Ltmp220-Lfunc_begin0
	.quad	Lset276
.set Lset277, Ltmp222-Lfunc_begin0
	.quad	Lset277
	.short	2                               ; Loc expr size
	.byte	59                              ; DW_OP_lit11
	.byte	159                             ; DW_OP_stack_value
.set Lset278, Ltmp222-Lfunc_begin0
	.quad	Lset278
.set Lset279, Ltmp225-Lfunc_begin0
	.quad	Lset279
	.short	2                               ; Loc expr size
	.byte	60                              ; DW_OP_lit12
	.byte	159                             ; DW_OP_stack_value
.set Lset280, Ltmp225-Lfunc_begin0
	.quad	Lset280
.set Lset281, Ltmp227-Lfunc_begin0
	.quad	Lset281
	.short	2                               ; Loc expr size
	.byte	61                              ; DW_OP_lit13
	.byte	159                             ; DW_OP_stack_value
.set Lset282, Ltmp227-Lfunc_begin0
	.quad	Lset282
.set Lset283, Ltmp230-Lfunc_begin0
	.quad	Lset283
	.short	2                               ; Loc expr size
	.byte	62                              ; DW_OP_lit14
	.byte	159                             ; DW_OP_stack_value
.set Lset284, Ltmp230-Lfunc_begin0
	.quad	Lset284
.set Lset285, Ltmp232-Lfunc_begin0
	.quad	Lset285
	.short	2                               ; Loc expr size
	.byte	63                              ; DW_OP_lit15
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc51:
.set Lset286, Ltmp193-Lfunc_begin0
	.quad	Lset286
.set Lset287, Ltmp194-Lfunc_begin0
	.quad	Lset287
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	65                              ; 65
.set Lset288, Ltmp194-Lfunc_begin0
	.quad	Lset288
.set Lset289, Ltmp196-Lfunc_begin0
	.quad	Lset289
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset290, Ltmp196-Lfunc_begin0
	.quad	Lset290
.set Lset291, Ltmp199-Lfunc_begin0
	.quad	Lset291
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	65                              ; 65
.set Lset292, Ltmp199-Lfunc_begin0
	.quad	Lset292
.set Lset293, Ltmp201-Lfunc_begin0
	.quad	Lset293
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset294, Ltmp201-Lfunc_begin0
	.quad	Lset294
.set Lset295, Ltmp204-Lfunc_begin0
	.quad	Lset295
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	65                              ; 65
.set Lset296, Ltmp204-Lfunc_begin0
	.quad	Lset296
.set Lset297, Ltmp206-Lfunc_begin0
	.quad	Lset297
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset298, Ltmp206-Lfunc_begin0
	.quad	Lset298
.set Lset299, Ltmp209-Lfunc_begin0
	.quad	Lset299
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	65                              ; 65
.set Lset300, Ltmp209-Lfunc_begin0
	.quad	Lset300
.set Lset301, Ltmp211-Lfunc_begin0
	.quad	Lset301
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset302, Ltmp211-Lfunc_begin0
	.quad	Lset302
.set Lset303, Ltmp214-Lfunc_begin0
	.quad	Lset303
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	65                              ; 65
.set Lset304, Ltmp214-Lfunc_begin0
	.quad	Lset304
.set Lset305, Ltmp216-Lfunc_begin0
	.quad	Lset305
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset306, Ltmp216-Lfunc_begin0
	.quad	Lset306
.set Lset307, Ltmp219-Lfunc_begin0
	.quad	Lset307
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	65                              ; 65
.set Lset308, Ltmp219-Lfunc_begin0
	.quad	Lset308
.set Lset309, Ltmp221-Lfunc_begin0
	.quad	Lset309
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset310, Ltmp221-Lfunc_begin0
	.quad	Lset310
.set Lset311, Ltmp224-Lfunc_begin0
	.quad	Lset311
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	65                              ; 65
.set Lset312, Ltmp224-Lfunc_begin0
	.quad	Lset312
.set Lset313, Ltmp226-Lfunc_begin0
	.quad	Lset313
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset314, Ltmp226-Lfunc_begin0
	.quad	Lset314
.set Lset315, Ltmp229-Lfunc_begin0
	.quad	Lset315
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	65                              ; 65
.set Lset316, Ltmp229-Lfunc_begin0
	.quad	Lset316
.set Lset317, Ltmp231-Lfunc_begin0
	.quad	Lset317
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset318, Ltmp231-Lfunc_begin0
	.quad	Lset318
.set Lset319, Ltmp232-Lfunc_begin0
	.quad	Lset319
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	65                              ; 65
	.quad	0
	.quad	0
Ldebug_loc52:
.set Lset320, Lfunc_begin3-Lfunc_begin0
	.quad	Lset320
.set Lset321, Ltmp245-Lfunc_begin0
	.quad	Lset321
	.short	1                               ; Loc expr size
	.byte	80                              ; DW_OP_reg0
.set Lset322, Ltmp245-Lfunc_begin0
	.quad	Lset322
.set Lset323, Ltmp345-Lfunc_begin0
	.quad	Lset323
	.short	1                               ; Loc expr size
	.byte	100                             ; DW_OP_reg20
.set Lset324, Ltmp345-Lfunc_begin0
	.quad	Lset324
.set Lset325, Ltmp349-Lfunc_begin0
	.quad	Lset325
	.short	4                               ; Loc expr size
	.byte	163                             ; DW_OP_entry_value
	.byte	1                               ; 1
	.byte	80                              ; DW_OP_reg0
	.byte	159                             ; DW_OP_stack_value
.set Lset326, Ltmp349-Lfunc_begin0
	.quad	Lset326
.set Lset327, Lfunc_end3-Lfunc_begin0
	.quad	Lset327
	.short	1                               ; Loc expr size
	.byte	100                             ; DW_OP_reg20
	.quad	0
	.quad	0
Ldebug_loc53:
.set Lset328, Lfunc_begin3-Lfunc_begin0
	.quad	Lset328
.set Lset329, Ltmp244-Lfunc_begin0
	.quad	Lset329
	.short	1                               ; Loc expr size
	.byte	81                              ; DW_OP_reg1
.set Lset330, Ltmp244-Lfunc_begin0
	.quad	Lset330
.set Lset331, Ltmp345-Lfunc_begin0
	.quad	Lset331
	.short	1                               ; Loc expr size
	.byte	99                              ; DW_OP_reg19
.set Lset332, Ltmp345-Lfunc_begin0
	.quad	Lset332
.set Lset333, Ltmp349-Lfunc_begin0
	.quad	Lset333
	.short	4                               ; Loc expr size
	.byte	163                             ; DW_OP_entry_value
	.byte	1                               ; 1
	.byte	81                              ; DW_OP_reg1
	.byte	159                             ; DW_OP_stack_value
.set Lset334, Ltmp349-Lfunc_begin0
	.quad	Lset334
.set Lset335, Lfunc_end3-Lfunc_begin0
	.quad	Lset335
	.short	1                               ; Loc expr size
	.byte	99                              ; DW_OP_reg19
	.quad	0
	.quad	0
Ldebug_loc54:
.set Lset336, Ltmp237-Lfunc_begin0
	.quad	Lset336
.set Lset337, Ltmp281-Lfunc_begin0
	.quad	Lset337
	.short	1                               ; Loc expr size
	.byte	103                             ; DW_OP_reg23
	.quad	0
	.quad	0
Ldebug_loc55:
.set Lset338, Ltmp238-Lfunc_begin0
	.quad	Lset338
.set Lset339, Ltmp277-Lfunc_begin0
	.quad	Lset339
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
	.quad	0
	.quad	0
Ldebug_loc56:
.set Lset340, Ltmp239-Lfunc_begin0
	.quad	Lset340
.set Lset341, Ltmp263-Lfunc_begin0
	.quad	Lset341
	.short	1                               ; Loc expr size
	.byte	95                              ; DW_OP_reg15
.set Lset342, Ltmp263-Lfunc_begin0
	.quad	Lset342
.set Lset343, Ltmp348-Lfunc_begin0
	.quad	Lset343
	.short	2                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	0                               ; 0
.set Lset344, Ltmp349-Lfunc_begin0
	.quad	Lset344
.set Lset345, Lfunc_end3-Lfunc_begin0
	.quad	Lset345
	.short	2                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	0                               ; 0
	.quad	0
	.quad	0
Ldebug_loc57:
.set Lset346, Ltmp240-Lfunc_begin0
	.quad	Lset346
.set Lset347, Ltmp242-Lfunc_begin0
	.quad	Lset347
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
.set Lset348, Ltmp242-Lfunc_begin0
	.quad	Lset348
.set Lset349, Ltmp243-Lfunc_begin0
	.quad	Lset349
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
.set Lset350, Ltmp243-Lfunc_begin0
	.quad	Lset350
.set Lset351, Ltmp252-Lfunc_begin0
	.quad	Lset351
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
.set Lset352, Ltmp253-Lfunc_begin0
	.quad	Lset352
.set Lset353, Ltmp255-Lfunc_begin0
	.quad	Lset353
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
.set Lset354, Ltmp256-Lfunc_begin0
	.quad	Lset354
.set Lset355, Ltmp257-Lfunc_begin0
	.quad	Lset355
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
	.quad	0
	.quad	0
Ldebug_loc58:
.set Lset356, Ltmp241-Lfunc_begin0
	.quad	Lset356
.set Lset357, Ltmp248-Lfunc_begin0
	.quad	Lset357
	.short	1                               ; Loc expr size
	.byte	91                              ; DW_OP_reg11
.set Lset358, Ltmp250-Lfunc_begin0
	.quad	Lset358
.set Lset359, Ltmp257-Lfunc_begin0
	.quad	Lset359
	.short	1                               ; Loc expr size
	.byte	91                              ; DW_OP_reg11
	.quad	0
	.quad	0
Ldebug_loc59:
.set Lset360, Ltmp243-Lfunc_begin0
	.quad	Lset360
.set Lset361, Ltmp249-Lfunc_begin0
	.quad	Lset361
	.short	3                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	32                              ; DW_OP_not
	.byte	159                             ; DW_OP_stack_value
.set Lset362, Ltmp249-Lfunc_begin0
	.quad	Lset362
.set Lset363, Ltmp250-Lfunc_begin0
	.quad	Lset363
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
.set Lset364, Ltmp250-Lfunc_begin0
	.quad	Lset364
.set Lset365, Ltmp257-Lfunc_begin0
	.quad	Lset365
	.short	3                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	32                              ; DW_OP_not
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc60:
.set Lset366, Ltmp257-Lfunc_begin0
	.quad	Lset366
.set Lset367, Ltmp346-Lfunc_begin0
	.quad	Lset367
	.short	1                               ; Loc expr size
	.byte	104                             ; DW_OP_reg24
.set Lset368, Ltmp349-Lfunc_begin0
	.quad	Lset368
.set Lset369, Lfunc_end3-Lfunc_begin0
	.quad	Lset369
	.short	1                               ; Loc expr size
	.byte	104                             ; DW_OP_reg24
	.quad	0
	.quad	0
Ldebug_loc61:
.set Lset370, Ltmp258-Lfunc_begin0
	.quad	Lset370
.set Lset371, Ltmp260-Lfunc_begin0
	.quad	Lset371
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
.set Lset372, Ltmp260-Lfunc_begin0
	.quad	Lset372
.set Lset373, Ltmp261-Lfunc_begin0
	.quad	Lset373
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
.set Lset374, Ltmp261-Lfunc_begin0
	.quad	Lset374
.set Lset375, Ltmp269-Lfunc_begin0
	.quad	Lset375
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
.set Lset376, Ltmp270-Lfunc_begin0
	.quad	Lset376
.set Lset377, Ltmp272-Lfunc_begin0
	.quad	Lset377
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
.set Lset378, Ltmp273-Lfunc_begin0
	.quad	Lset378
.set Lset379, Ltmp274-Lfunc_begin0
	.quad	Lset379
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
	.quad	0
	.quad	0
Ldebug_loc62:
.set Lset380, Ltmp259-Lfunc_begin0
	.quad	Lset380
.set Lset381, Ltmp265-Lfunc_begin0
	.quad	Lset381
	.short	1                               ; Loc expr size
	.byte	91                              ; DW_OP_reg11
.set Lset382, Ltmp267-Lfunc_begin0
	.quad	Lset382
.set Lset383, Ltmp274-Lfunc_begin0
	.quad	Lset383
	.short	1                               ; Loc expr size
	.byte	91                              ; DW_OP_reg11
	.quad	0
	.quad	0
Ldebug_loc63:
.set Lset384, Ltmp261-Lfunc_begin0
	.quad	Lset384
.set Lset385, Ltmp266-Lfunc_begin0
	.quad	Lset385
	.short	3                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	32                              ; DW_OP_not
	.byte	159                             ; DW_OP_stack_value
.set Lset386, Ltmp266-Lfunc_begin0
	.quad	Lset386
.set Lset387, Ltmp267-Lfunc_begin0
	.quad	Lset387
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
.set Lset388, Ltmp267-Lfunc_begin0
	.quad	Lset388
.set Lset389, Ltmp274-Lfunc_begin0
	.quad	Lset389
	.short	3                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	32                              ; DW_OP_not
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc64:
.set Lset390, Ltmp274-Lfunc_begin0
	.quad	Lset390
.set Lset391, Ltmp347-Lfunc_begin0
	.quad	Lset391
	.short	1                               ; Loc expr size
	.byte	105                             ; DW_OP_reg25
.set Lset392, Ltmp349-Lfunc_begin0
	.quad	Lset392
.set Lset393, Lfunc_end3-Lfunc_begin0
	.quad	Lset393
	.short	1                               ; Loc expr size
	.byte	105                             ; DW_OP_reg25
	.quad	0
	.quad	0
Ldebug_loc65:
.set Lset394, Ltmp275-Lfunc_begin0
	.quad	Lset394
.set Lset395, Ltmp277-Lfunc_begin0
	.quad	Lset395
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
	.quad	0
	.quad	0
Ldebug_loc66:
.set Lset396, Ltmp276-Lfunc_begin0
	.quad	Lset396
.set Lset397, Ltmp277-Lfunc_begin0
	.quad	Lset397
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
	.quad	0
	.quad	0
Ldebug_loc67:
.set Lset398, Ltmp279-Lfunc_begin0
	.quad	Lset398
.set Lset399, Ltmp281-Lfunc_begin0
	.quad	Lset399
	.short	1                               ; Loc expr size
	.byte	103                             ; DW_OP_reg23
	.quad	0
	.quad	0
Ldebug_loc68:
.set Lset400, Ltmp280-Lfunc_begin0
	.quad	Lset400
.set Lset401, Ltmp282-Lfunc_begin0
	.quad	Lset401
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
	.quad	0
	.quad	0
Ldebug_loc69:
.set Lset402, Ltmp293-Lfunc_begin0
	.quad	Lset402
.set Lset403, Ltmp294-Lfunc_begin0
	.quad	Lset403
	.short	6                               ; Loc expr size
	.byte	128                             ; DW_OP_breg16
	.byte	0                               ; 0
	.byte	17                              ; DW_OP_consts
	.byte	2                               ; 2
	.byte	27                              ; DW_OP_div
	.byte	159                             ; DW_OP_stack_value
.set Lset404, Ltmp294-Lfunc_begin0
	.quad	Lset404
.set Lset405, Ltmp295-Lfunc_begin0
	.quad	Lset405
	.short	9                               ; Loc expr size
	.byte	128                             ; DW_OP_breg16
	.byte	0                               ; 0
	.byte	17                              ; DW_OP_consts
	.byte	2                               ; 2
	.byte	27                              ; DW_OP_div
	.byte	17                              ; DW_OP_consts
	.byte	1                               ; 1
	.byte	34                              ; DW_OP_plus
	.byte	159                             ; DW_OP_stack_value
.set Lset406, Ltmp296-Lfunc_begin0
	.quad	Lset406
.set Lset407, Ltmp329-Lfunc_begin0
	.quad	Lset407
	.short	6                               ; Loc expr size
	.byte	128                             ; DW_OP_breg16
	.byte	0                               ; 0
	.byte	17                              ; DW_OP_consts
	.byte	2                               ; 2
	.byte	27                              ; DW_OP_div
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc70:
.set Lset408, Ltmp300-Lfunc_begin0
	.quad	Lset408
.set Lset409, Ltmp305-Lfunc_begin0
	.quad	Lset409
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	66                              ; 66
.set Lset410, Ltmp312-Lfunc_begin0
	.quad	Lset410
.set Lset411, Ltmp316-Lfunc_begin0
	.quad	Lset411
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	66                              ; 66
.set Lset412, Ltmp321-Lfunc_begin0
	.quad	Lset412
.set Lset413, Ltmp323-Lfunc_begin0
	.quad	Lset413
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	66                              ; 66
	.quad	0
	.quad	0
Ldebug_loc71:
.set Lset414, Ltmp300-Lfunc_begin0
	.quad	Lset414
.set Lset415, Ltmp304-Lfunc_begin0
	.quad	Lset415
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset416, Ltmp312-Lfunc_begin0
	.quad	Lset416
.set Lset417, Ltmp313-Lfunc_begin0
	.quad	Lset417
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset418, Ltmp314-Lfunc_begin0
	.quad	Lset418
.set Lset419, Ltmp315-Lfunc_begin0
	.quad	Lset419
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset420, Ltmp321-Lfunc_begin0
	.quad	Lset420
.set Lset421, Ltmp322-Lfunc_begin0
	.quad	Lset421
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
	.quad	0
	.quad	0
Ldebug_loc72:
.set Lset422, Ltmp300-Lfunc_begin0
	.quad	Lset422
.set Lset423, Ltmp305-Lfunc_begin0
	.quad	Lset423
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	65                              ; 65
.set Lset424, Ltmp312-Lfunc_begin0
	.quad	Lset424
.set Lset425, Ltmp316-Lfunc_begin0
	.quad	Lset425
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	65                              ; 65
.set Lset426, Ltmp321-Lfunc_begin0
	.quad	Lset426
.set Lset427, Ltmp323-Lfunc_begin0
	.quad	Lset427
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	65                              ; 65
	.quad	0
	.quad	0
Ldebug_loc73:
.set Lset428, Ltmp300-Lfunc_begin0
	.quad	Lset428
.set Lset429, Ltmp305-Lfunc_begin0
	.quad	Lset429
	.short	1                               ; Loc expr size
	.byte	99                              ; DW_OP_reg19
.set Lset430, Ltmp312-Lfunc_begin0
	.quad	Lset430
.set Lset431, Ltmp316-Lfunc_begin0
	.quad	Lset431
	.short	1                               ; Loc expr size
	.byte	99                              ; DW_OP_reg19
.set Lset432, Ltmp321-Lfunc_begin0
	.quad	Lset432
.set Lset433, Ltmp323-Lfunc_begin0
	.quad	Lset433
	.short	1                               ; Loc expr size
	.byte	99                              ; DW_OP_reg19
	.quad	0
	.quad	0
Ldebug_loc74:
.set Lset434, Ltmp307-Lfunc_begin0
	.quad	Lset434
.set Lset435, Ltmp312-Lfunc_begin0
	.quad	Lset435
	.short	1                               ; Loc expr size
	.byte	99                              ; DW_OP_reg19
.set Lset436, Ltmp316-Lfunc_begin0
	.quad	Lset436
.set Lset437, Ltmp320-Lfunc_begin0
	.quad	Lset437
	.short	1                               ; Loc expr size
	.byte	99                              ; DW_OP_reg19
.set Lset438, Ltmp325-Lfunc_begin0
	.quad	Lset438
.set Lset439, Ltmp326-Lfunc_begin0
	.quad	Lset439
	.short	1                               ; Loc expr size
	.byte	99                              ; DW_OP_reg19
	.quad	0
	.quad	0
Ldebug_loc75:
.set Lset440, Ltmp307-Lfunc_begin0
	.quad	Lset440
.set Lset441, Ltmp312-Lfunc_begin0
	.quad	Lset441
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	65                              ; 65
.set Lset442, Ltmp316-Lfunc_begin0
	.quad	Lset442
.set Lset443, Ltmp320-Lfunc_begin0
	.quad	Lset443
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	65                              ; 65
.set Lset444, Ltmp325-Lfunc_begin0
	.quad	Lset444
.set Lset445, Ltmp326-Lfunc_begin0
	.quad	Lset445
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	65                              ; 65
	.quad	0
	.quad	0
Ldebug_loc76:
.set Lset446, Ltmp307-Lfunc_begin0
	.quad	Lset446
.set Lset447, Ltmp311-Lfunc_begin0
	.quad	Lset447
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset448, Ltmp316-Lfunc_begin0
	.quad	Lset448
.set Lset449, Ltmp317-Lfunc_begin0
	.quad	Lset449
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset450, Ltmp318-Lfunc_begin0
	.quad	Lset450
.set Lset451, Ltmp319-Lfunc_begin0
	.quad	Lset451
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset452, Ltmp325-Lfunc_begin0
	.quad	Lset452
.set Lset453, Ltmp326-Lfunc_begin0
	.quad	Lset453
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
	.quad	0
	.quad	0
Ldebug_loc77:
.set Lset454, Ltmp307-Lfunc_begin0
	.quad	Lset454
.set Lset455, Ltmp312-Lfunc_begin0
	.quad	Lset455
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	66                              ; 66
.set Lset456, Ltmp316-Lfunc_begin0
	.quad	Lset456
.set Lset457, Ltmp320-Lfunc_begin0
	.quad	Lset457
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	66                              ; 66
.set Lset458, Ltmp325-Lfunc_begin0
	.quad	Lset458
.set Lset459, Ltmp326-Lfunc_begin0
	.quad	Lset459
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	66                              ; 66
	.quad	0
	.quad	0
Ldebug_loc78:
.set Lset460, Ltmp322-Lfunc_begin0
	.quad	Lset460
.set Lset461, Ltmp323-Lfunc_begin0
	.quad	Lset461
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
	.quad	0
	.quad	0
Ldebug_loc79:
.set Lset462, Ltmp330-Lfunc_begin0
	.quad	Lset462
.set Lset463, Ltmp336-Lfunc_begin0
	.quad	Lset463
	.short	1                               ; Loc expr size
	.byte	99                              ; DW_OP_reg19
.set Lset464, Ltmp337-Lfunc_begin0
	.quad	Lset464
.set Lset465, Ltmp341-Lfunc_begin0
	.quad	Lset465
	.short	1                               ; Loc expr size
	.byte	99                              ; DW_OP_reg19
	.quad	0
	.quad	0
Ldebug_loc80:
.set Lset466, Ltmp330-Lfunc_begin0
	.quad	Lset466
.set Lset467, Ltmp336-Lfunc_begin0
	.quad	Lset467
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	65                              ; 65
.set Lset468, Ltmp337-Lfunc_begin0
	.quad	Lset468
.set Lset469, Ltmp341-Lfunc_begin0
	.quad	Lset469
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	65                              ; 65
	.quad	0
	.quad	0
Ldebug_loc81:
.set Lset470, Ltmp330-Lfunc_begin0
	.quad	Lset470
.set Lset471, Ltmp334-Lfunc_begin0
	.quad	Lset471
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset472, Ltmp335-Lfunc_begin0
	.quad	Lset472
.set Lset473, Ltmp336-Lfunc_begin0
	.quad	Lset473
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset474, Ltmp337-Lfunc_begin0
	.quad	Lset474
.set Lset475, Ltmp338-Lfunc_begin0
	.quad	Lset475
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset476, Ltmp339-Lfunc_begin0
	.quad	Lset476
.set Lset477, Ltmp340-Lfunc_begin0
	.quad	Lset477
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
	.quad	0
	.quad	0
Ldebug_loc82:
.set Lset478, Ltmp330-Lfunc_begin0
	.quad	Lset478
.set Lset479, Ltmp336-Lfunc_begin0
	.quad	Lset479
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	66                              ; 66
.set Lset480, Ltmp337-Lfunc_begin0
	.quad	Lset480
.set Lset481, Ltmp341-Lfunc_begin0
	.quad	Lset481
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	66                              ; 66
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
	.byte	10                              ; Abbreviation Code
	.byte	15                              ; DW_TAG_pointer_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	11                              ; Abbreviation Code
	.byte	38                              ; DW_TAG_const_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	12                              ; Abbreviation Code
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
	.byte	13                              ; Abbreviation Code
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
	.byte	14                              ; Abbreviation Code
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
	.byte	15                              ; Abbreviation Code
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
	.byte	16                              ; Abbreviation Code
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
	.byte	17                              ; Abbreviation Code
	.byte	5                               ; DW_TAG_formal_parameter
	.byte	0                               ; DW_CHILDREN_no
	.byte	2                               ; DW_AT_location
	.byte	23                              ; DW_FORM_sec_offset
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	18                              ; Abbreviation Code
	.byte	5                               ; DW_TAG_formal_parameter
	.byte	0                               ; DW_CHILDREN_no
	.byte	28                              ; DW_AT_const_value
	.byte	15                              ; DW_FORM_udata
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
	.byte	5                               ; DW_TAG_formal_parameter
	.byte	0                               ; DW_CHILDREN_no
	.byte	2                               ; DW_AT_location
	.byte	24                              ; DW_FORM_exprloc
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	21                              ; Abbreviation Code
	.byte	11                              ; DW_TAG_lexical_block
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	22                              ; Abbreviation Code
	.byte	11                              ; DW_TAG_lexical_block
	.byte	1                               ; DW_CHILDREN_yes
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	23                              ; Abbreviation Code
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
	.byte	24                              ; Abbreviation Code
	.byte	52                              ; DW_TAG_variable
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	25                              ; Abbreviation Code
	.byte	72                              ; DW_TAG_call_site
	.byte	1                               ; DW_CHILDREN_yes
	.byte	127                             ; DW_AT_call_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	125                             ; DW_AT_call_return_pc
	.byte	1                               ; DW_FORM_addr
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	26                              ; Abbreviation Code
	.byte	73                              ; DW_TAG_call_site_parameter
	.byte	0                               ; DW_CHILDREN_no
	.byte	2                               ; DW_AT_location
	.byte	24                              ; DW_FORM_exprloc
	.byte	126                             ; DW_AT_call_value
	.byte	24                              ; DW_FORM_exprloc
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	27                              ; Abbreviation Code
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
	.ascii	"\341\177"                      ; DW_AT_APPLE_optimized
	.byte	25                              ; DW_FORM_flag_present
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
	.byte	32                              ; Abbreviation Code
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
	.byte	33                              ; Abbreviation Code
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
	.byte	0                               ; EOM(3)
	.section	__DWARF,__debug_info,regular,debug
Lsection_info:
Lcu_begin0:
.set Lset482, Ldebug_info_end0-Ldebug_info_start0 ; Length of Unit
	.long	Lset482
Ldebug_info_start0:
	.short	4                               ; DWARF version number
.set Lset483, Lsection_abbrev-Lsection_abbrev ; Offset Into Abbrev. Section
	.long	Lset483
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0xb34 DW_TAG_compile_unit
	.long	0                               ; DW_AT_producer
	.short	12                              ; DW_AT_language
	.long	46                              ; DW_AT_name
	.long	52                              ; DW_AT_LLVM_sysroot
	.long	104                             ; DW_AT_APPLE_sdk
.set Lset484, Lline_table_start0-Lsection_line ; DW_AT_stmt_list
	.long	Lset484
	.long	115                             ; DW_AT_comp_dir
                                        ; DW_AT_APPLE_optimized
	.quad	Lfunc_begin0                    ; DW_AT_low_pc
.set Lset485, Lfunc_end3-Lfunc_begin0   ; DW_AT_high_pc
	.long	Lset485
	.byte	2                               ; Abbrev [2] 0x32:0x5 DW_TAG_pointer_type
	.long	55                              ; DW_AT_type
	.byte	3                               ; Abbrev [3] 0x37:0x5 DW_TAG_const_type
	.long	60                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x3c:0xb DW_TAG_typedef
	.long	71                              ; DW_AT_type
	.long	169                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	31                              ; DW_AT_decl_line
	.byte	5                               ; Abbrev [5] 0x47:0x7 DW_TAG_base_type
	.long	177                             ; DW_AT_name
	.byte	8                               ; DW_AT_encoding
	.byte	1                               ; DW_AT_byte_size
	.byte	2                               ; Abbrev [2] 0x4e:0x5 DW_TAG_pointer_type
	.long	60                              ; DW_AT_type
	.byte	6                               ; Abbrev [6] 0x53:0x44 DW_TAG_subprogram
	.long	191                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	65                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	151                             ; DW_AT_type
                                        ; DW_AT_APPLE_optimized
	.byte	1                               ; DW_AT_inline
	.byte	7                               ; Abbrev [7] 0x5f:0xb DW_TAG_formal_parameter
	.long	235                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	65                              ; DW_AT_decl_line
	.long	169                             ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0x6a:0xb DW_TAG_formal_parameter
	.long	261                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	65                              ; DW_AT_decl_line
	.long	169                             ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0x75:0xb DW_TAG_formal_parameter
	.long	263                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	65                              ; DW_AT_decl_line
	.long	169                             ; DW_AT_type
	.byte	8                               ; Abbrev [8] 0x80:0xb DW_TAG_variable
	.long	272                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	66                              ; DW_AT_decl_line
	.long	169                             ; DW_AT_type
	.byte	8                               ; Abbrev [8] 0x8b:0xb DW_TAG_variable
	.long	277                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	69                              ; DW_AT_decl_line
	.long	151                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x97:0xb DW_TAG_typedef
	.long	162                             ; DW_AT_type
	.long	207                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	31                              ; DW_AT_decl_line
	.byte	5                               ; Abbrev [5] 0xa2:0x7 DW_TAG_base_type
	.long	216                             ; DW_AT_name
	.byte	7                               ; DW_AT_encoding
	.byte	8                               ; DW_AT_byte_size
	.byte	4                               ; Abbrev [4] 0xa9:0xb DW_TAG_typedef
	.long	180                             ; DW_AT_type
	.long	239                             ; DW_AT_name
	.byte	5                               ; DW_AT_decl_file
	.byte	31                              ; DW_AT_decl_line
	.byte	5                               ; Abbrev [5] 0xb4:0x7 DW_TAG_base_type
	.long	248                             ; DW_AT_name
	.byte	7                               ; DW_AT_encoding
	.byte	4                               ; DW_AT_byte_size
	.byte	9                               ; Abbrev [9] 0xbb:0x35 DW_TAG_subprogram
	.long	281                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	41                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_APPLE_optimized
	.byte	1                               ; DW_AT_inline
	.byte	7                               ; Abbrev [7] 0xc3:0xb DW_TAG_formal_parameter
	.long	293                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	41                              ; DW_AT_decl_line
	.long	240                             ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0xce:0xb DW_TAG_formal_parameter
	.long	297                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	41                              ; DW_AT_decl_line
	.long	241                             ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0xd9:0xb DW_TAG_formal_parameter
	.long	301                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	41                              ; DW_AT_decl_line
	.long	151                             ; DW_AT_type
	.byte	8                               ; Abbrev [8] 0xe4:0xb DW_TAG_variable
	.long	308                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	42                              ; DW_AT_decl_line
	.long	151                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	10                              ; Abbrev [10] 0xf0:0x1 DW_TAG_pointer_type
	.byte	2                               ; Abbrev [2] 0xf1:0x5 DW_TAG_pointer_type
	.long	246                             ; DW_AT_type
	.byte	11                              ; Abbrev [11] 0xf6:0x1 DW_TAG_const_type
	.byte	6                               ; Abbrev [6] 0xf7:0x44 DW_TAG_subprogram
	.long	314                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	6                               ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	315                             ; DW_AT_type
                                        ; DW_AT_APPLE_optimized
	.byte	1                               ; DW_AT_inline
	.byte	7                               ; Abbrev [7] 0x103:0xb DW_TAG_formal_parameter
	.long	331                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	6                               ; DW_AT_decl_line
	.long	315                             ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0x10e:0xb DW_TAG_formal_parameter
	.long	333                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	6                               ; DW_AT_decl_line
	.long	315                             ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0x119:0xb DW_TAG_formal_parameter
	.long	335                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	6                               ; DW_AT_decl_line
	.long	315                             ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0x124:0xb DW_TAG_formal_parameter
	.long	337                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	6                               ; DW_AT_decl_line
	.long	151                             ; DW_AT_type
	.byte	8                               ; Abbrev [8] 0x12f:0xb DW_TAG_variable
	.long	345                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	16                              ; DW_AT_decl_line
	.long	315                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	5                               ; Abbrev [5] 0x13b:0x7 DW_TAG_base_type
	.long	324                             ; DW_AT_name
	.byte	4                               ; DW_AT_encoding
	.byte	8                               ; DW_AT_byte_size
	.byte	12                              ; Abbrev [12] 0x142:0x251 DW_TAG_subprogram
	.quad	Lfunc_begin0                    ; DW_AT_low_pc
.set Lset486, Lfunc_end0-Lfunc_begin0   ; DW_AT_high_pc
	.long	Lset486
	.byte	1                               ; DW_AT_frame_base
	.byte	109
                                        ; DW_AT_call_all_calls
	.long	352                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	62                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_external
                                        ; DW_AT_APPLE_optimized
	.byte	13                              ; Abbrev [13] 0x157:0xf DW_TAG_formal_parameter
.set Lset487, Ldebug_loc0-Lsection_debug_loc ; DW_AT_location
	.long	Lset487
	.long	479                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	62                              ; DW_AT_decl_line
	.long	2479                            ; DW_AT_type
	.byte	13                              ; Abbrev [13] 0x166:0xf DW_TAG_formal_parameter
.set Lset488, Ldebug_loc1-Lsection_debug_loc ; DW_AT_location
	.long	Lset488
	.long	337                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	62                              ; DW_AT_decl_line
	.long	151                             ; DW_AT_type
	.byte	14                              ; Abbrev [14] 0x175:0xf DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	143
	.asciz	"\310"
	.long	331                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	69                              ; DW_AT_decl_line
	.long	2460                            ; DW_AT_type
	.byte	14                              ; Abbrev [14] 0x184:0xe DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	8
	.long	333                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	70                              ; DW_AT_decl_line
	.long	2460                            ; DW_AT_type
	.byte	15                              ; Abbrev [15] 0x192:0xf DW_TAG_variable
.set Lset489, Ldebug_loc2-Lsection_debug_loc ; DW_AT_location
	.long	Lset489
	.long	606                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	63                              ; DW_AT_decl_line
	.long	151                             ; DW_AT_type
	.byte	15                              ; Abbrev [15] 0x1a1:0xf DW_TAG_variable
.set Lset490, Ldebug_loc3-Lsection_debug_loc ; DW_AT_location
	.long	Lset490
	.long	615                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	64                              ; DW_AT_decl_line
	.long	151                             ; DW_AT_type
	.byte	15                              ; Abbrev [15] 0x1b0:0xf DW_TAG_variable
.set Lset491, Ldebug_loc4-Lsection_debug_loc ; DW_AT_location
	.long	Lset491
	.long	624                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	65                              ; DW_AT_decl_line
	.long	151                             ; DW_AT_type
	.byte	15                              ; Abbrev [15] 0x1bf:0xf DW_TAG_variable
.set Lset492, Ldebug_loc8-Lsection_debug_loc ; DW_AT_location
	.long	Lset492
	.long	630                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	66                              ; DW_AT_decl_line
	.long	151                             ; DW_AT_type
	.byte	15                              ; Abbrev [15] 0x1ce:0xf DW_TAG_variable
.set Lset493, Ldebug_loc12-Lsection_debug_loc ; DW_AT_location
	.long	Lset493
	.long	639                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	67                              ; DW_AT_decl_line
	.long	151                             ; DW_AT_type
	.byte	16                              ; Abbrev [16] 0x1dd:0x3c DW_TAG_inlined_subroutine
	.long	83                              ; DW_AT_abstract_origin
	.quad	Ltmp4                           ; DW_AT_low_pc
.set Lset494, Ltmp21-Ltmp4              ; DW_AT_high_pc
	.long	Lset494
	.byte	2                               ; DW_AT_call_file
	.byte	66                              ; DW_AT_call_line
	.byte	25                              ; DW_AT_call_column
	.byte	17                              ; Abbrev [17] 0x1f1:0x9 DW_TAG_formal_parameter
.set Lset495, Ldebug_loc5-Lsection_debug_loc ; DW_AT_location
	.long	Lset495
	.long	95                              ; DW_AT_abstract_origin
	.byte	18                              ; Abbrev [18] 0x1fa:0x6 DW_TAG_formal_parameter
	.byte	8                               ; DW_AT_const_value
	.long	106                             ; DW_AT_abstract_origin
	.byte	18                              ; Abbrev [18] 0x200:0x6 DW_TAG_formal_parameter
	.byte	7                               ; DW_AT_const_value
	.long	117                             ; DW_AT_abstract_origin
	.byte	19                              ; Abbrev [19] 0x206:0x9 DW_TAG_variable
.set Lset496, Ldebug_loc6-Lsection_debug_loc ; DW_AT_location
	.long	Lset496
	.long	128                             ; DW_AT_abstract_origin
	.byte	19                              ; Abbrev [19] 0x20f:0x9 DW_TAG_variable
.set Lset497, Ldebug_loc7-Lsection_debug_loc ; DW_AT_location
	.long	Lset497
	.long	139                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	16                              ; Abbrev [16] 0x219:0x3c DW_TAG_inlined_subroutine
	.long	83                              ; DW_AT_abstract_origin
	.quad	Ltmp22                          ; DW_AT_low_pc
.set Lset498, Ltmp38-Ltmp22             ; DW_AT_high_pc
	.long	Lset498
	.byte	2                               ; DW_AT_call_file
	.byte	67                              ; DW_AT_call_line
	.byte	25                              ; DW_AT_call_column
	.byte	17                              ; Abbrev [17] 0x22d:0x9 DW_TAG_formal_parameter
.set Lset499, Ldebug_loc9-Lsection_debug_loc ; DW_AT_location
	.long	Lset499
	.long	95                              ; DW_AT_abstract_origin
	.byte	18                              ; Abbrev [18] 0x236:0x6 DW_TAG_formal_parameter
	.byte	8                               ; DW_AT_const_value
	.long	106                             ; DW_AT_abstract_origin
	.byte	18                              ; Abbrev [18] 0x23c:0x6 DW_TAG_formal_parameter
	.byte	7                               ; DW_AT_const_value
	.long	117                             ; DW_AT_abstract_origin
	.byte	19                              ; Abbrev [19] 0x242:0x9 DW_TAG_variable
.set Lset500, Ldebug_loc10-Lsection_debug_loc ; DW_AT_location
	.long	Lset500
	.long	128                             ; DW_AT_abstract_origin
	.byte	19                              ; Abbrev [19] 0x24b:0x9 DW_TAG_variable
.set Lset501, Ldebug_loc11-Lsection_debug_loc ; DW_AT_location
	.long	Lset501
	.long	139                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	16                              ; Abbrev [16] 0x255:0x38 DW_TAG_inlined_subroutine
	.long	187                             ; DW_AT_abstract_origin
	.quad	Ltmp39                          ; DW_AT_low_pc
.set Lset502, Ltmp42-Ltmp39             ; DW_AT_high_pc
	.long	Lset502
	.byte	2                               ; DW_AT_call_file
	.byte	71                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	20                              ; Abbrev [20] 0x269:0xa DW_TAG_formal_parameter
	.byte	4                               ; DW_AT_location
	.byte	143
	.asciz	"\310"
	.byte	159
	.long	195                             ; DW_AT_abstract_origin
	.byte	20                              ; Abbrev [20] 0x273:0x7 DW_TAG_formal_parameter
	.byte	1                               ; DW_AT_location
	.byte	100
	.long	206                             ; DW_AT_abstract_origin
	.byte	17                              ; Abbrev [17] 0x27a:0x9 DW_TAG_formal_parameter
.set Lset503, Ldebug_loc13-Lsection_debug_loc ; DW_AT_location
	.long	Lset503
	.long	217                             ; DW_AT_abstract_origin
	.byte	19                              ; Abbrev [19] 0x283:0x9 DW_TAG_variable
.set Lset504, Ldebug_loc14-Lsection_debug_loc ; DW_AT_location
	.long	Lset504
	.long	228                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	16                              ; Abbrev [16] 0x28d:0x37 DW_TAG_inlined_subroutine
	.long	187                             ; DW_AT_abstract_origin
	.quad	Ltmp43                          ; DW_AT_low_pc
.set Lset505, Ltmp48-Ltmp43             ; DW_AT_high_pc
	.long	Lset505
	.byte	2                               ; DW_AT_call_file
	.byte	72                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	20                              ; Abbrev [20] 0x2a1:0x9 DW_TAG_formal_parameter
	.byte	3                               ; DW_AT_location
	.byte	143
	.byte	8
	.byte	159
	.long	195                             ; DW_AT_abstract_origin
	.byte	20                              ; Abbrev [20] 0x2aa:0x7 DW_TAG_formal_parameter
	.byte	1                               ; DW_AT_location
	.byte	101
	.long	206                             ; DW_AT_abstract_origin
	.byte	17                              ; Abbrev [17] 0x2b1:0x9 DW_TAG_formal_parameter
.set Lset506, Ldebug_loc15-Lsection_debug_loc ; DW_AT_location
	.long	Lset506
	.long	217                             ; DW_AT_abstract_origin
	.byte	19                              ; Abbrev [19] 0x2ba:0x9 DW_TAG_variable
.set Lset507, Ldebug_loc16-Lsection_debug_loc ; DW_AT_location
	.long	Lset507
	.long	228                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	21                              ; Abbrev [21] 0x2c4:0xce DW_TAG_lexical_block
	.quad	Ltmp49                          ; DW_AT_low_pc
.set Lset508, Ltmp90-Ltmp49             ; DW_AT_high_pc
	.long	Lset508
	.byte	14                              ; Abbrev [14] 0x2d1:0xd DW_TAG_variable
	.byte	1                               ; DW_AT_location
	.byte	88
	.long	648                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	74                              ; DW_AT_decl_line
	.long	2820                            ; DW_AT_type
	.byte	22                              ; Abbrev [22] 0x2de:0x47 DW_TAG_lexical_block
.set Lset509, Ldebug_ranges0-Ldebug_range ; DW_AT_ranges
	.long	Lset509
	.byte	8                               ; Abbrev [8] 0x2e3:0xb DW_TAG_variable
	.long	335                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	77                              ; DW_AT_decl_line
	.long	2863                            ; DW_AT_type
	.byte	23                              ; Abbrev [23] 0x2ee:0x36 DW_TAG_inlined_subroutine
	.long	247                             ; DW_AT_abstract_origin
.set Lset510, Ldebug_ranges1-Ldebug_range ; DW_AT_ranges
	.long	Lset510
	.byte	2                               ; DW_AT_call_file
	.byte	78                              ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	17                              ; Abbrev [17] 0x2fa:0x9 DW_TAG_formal_parameter
.set Lset511, Ldebug_loc22-Lsection_debug_loc ; DW_AT_location
	.long	Lset511
	.long	259                             ; DW_AT_abstract_origin
	.byte	17                              ; Abbrev [17] 0x303:0x9 DW_TAG_formal_parameter
.set Lset512, Ldebug_loc21-Lsection_debug_loc ; DW_AT_location
	.long	Lset512
	.long	270                             ; DW_AT_abstract_origin
	.byte	17                              ; Abbrev [17] 0x30c:0x9 DW_TAG_formal_parameter
.set Lset513, Ldebug_loc23-Lsection_debug_loc ; DW_AT_location
	.long	Lset513
	.long	281                             ; DW_AT_abstract_origin
	.byte	17                              ; Abbrev [17] 0x315:0x9 DW_TAG_formal_parameter
.set Lset514, Ldebug_loc20-Lsection_debug_loc ; DW_AT_location
	.long	Lset514
	.long	292                             ; DW_AT_abstract_origin
	.byte	24                              ; Abbrev [24] 0x31e:0x5 DW_TAG_variable
	.long	303                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	21                              ; Abbrev [21] 0x325:0x6c DW_TAG_lexical_block
	.quad	Ltmp57                          ; DW_AT_low_pc
.set Lset515, Ltmp74-Ltmp57             ; DW_AT_high_pc
	.long	Lset515
	.byte	15                              ; Abbrev [15] 0x332:0xf DW_TAG_variable
.set Lset516, Ldebug_loc17-Lsection_debug_loc ; DW_AT_location
	.long	Lset516
	.long	650                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	80                              ; DW_AT_decl_line
	.long	2820                            ; DW_AT_type
	.byte	22                              ; Abbrev [22] 0x341:0x4f DW_TAG_lexical_block
.set Lset517, Ldebug_ranges2-Ldebug_range ; DW_AT_ranges
	.long	Lset517
	.byte	8                               ; Abbrev [8] 0x346:0xb DW_TAG_variable
	.long	335                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	82                              ; DW_AT_decl_line
	.long	2863                            ; DW_AT_type
	.byte	16                              ; Abbrev [16] 0x351:0x3e DW_TAG_inlined_subroutine
	.long	247                             ; DW_AT_abstract_origin
	.quad	Ltmp63                          ; DW_AT_low_pc
.set Lset518, Ltmp74-Ltmp63             ; DW_AT_high_pc
	.long	Lset518
	.byte	2                               ; DW_AT_call_file
	.byte	83                              ; DW_AT_call_line
	.byte	22                              ; DW_AT_call_column
	.byte	17                              ; Abbrev [17] 0x365:0x9 DW_TAG_formal_parameter
.set Lset519, Ldebug_loc18-Lsection_debug_loc ; DW_AT_location
	.long	Lset519
	.long	259                             ; DW_AT_abstract_origin
	.byte	20                              ; Abbrev [20] 0x36e:0x8 DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	144
	.byte	65
	.long	270                             ; DW_AT_abstract_origin
	.byte	20                              ; Abbrev [20] 0x376:0x8 DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	144
	.byte	66
	.long	281                             ; DW_AT_abstract_origin
	.byte	20                              ; Abbrev [20] 0x37e:0x7 DW_TAG_formal_parameter
	.byte	1                               ; DW_AT_location
	.byte	99
	.long	292                             ; DW_AT_abstract_origin
	.byte	19                              ; Abbrev [19] 0x385:0x9 DW_TAG_variable
.set Lset520, Ldebug_loc19-Lsection_debug_loc ; DW_AT_location
	.long	Lset520
	.long	303                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0x393:0x44 DW_TAG_subprogram
	.long	370                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	21                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	983                             ; DW_AT_type
                                        ; DW_AT_APPLE_optimized
	.byte	1                               ; DW_AT_inline
	.byte	7                               ; Abbrev [7] 0x39f:0xb DW_TAG_formal_parameter
	.long	331                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	21                              ; DW_AT_decl_line
	.long	983                             ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0x3aa:0xb DW_TAG_formal_parameter
	.long	333                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	21                              ; DW_AT_decl_line
	.long	983                             ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0x3b5:0xb DW_TAG_formal_parameter
	.long	335                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	21                              ; DW_AT_decl_line
	.long	983                             ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0x3c0:0xb DW_TAG_formal_parameter
	.long	337                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	21                              ; DW_AT_decl_line
	.long	151                             ; DW_AT_type
	.byte	8                               ; Abbrev [8] 0x3cb:0xb DW_TAG_variable
	.long	345                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	31                              ; DW_AT_decl_line
	.long	983                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	5                               ; Abbrev [5] 0x3d7:0x7 DW_TAG_base_type
	.long	380                             ; DW_AT_name
	.byte	4                               ; DW_AT_encoding
	.byte	4                               ; DW_AT_byte_size
	.byte	12                              ; Abbrev [12] 0x3de:0x21e DW_TAG_subprogram
	.quad	Lfunc_begin1                    ; DW_AT_low_pc
.set Lset521, Lfunc_end1-Lfunc_begin1   ; DW_AT_high_pc
	.long	Lset521
	.byte	1                               ; DW_AT_frame_base
	.byte	109
                                        ; DW_AT_call_all_calls
	.long	386                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	89                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_external
                                        ; DW_AT_APPLE_optimized
	.byte	13                              ; Abbrev [13] 0x3f3:0xf DW_TAG_formal_parameter
.set Lset522, Ldebug_loc24-Lsection_debug_loc ; DW_AT_location
	.long	Lset522
	.long	479                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	89                              ; DW_AT_decl_line
	.long	2479                            ; DW_AT_type
	.byte	13                              ; Abbrev [13] 0x402:0xf DW_TAG_formal_parameter
.set Lset523, Ldebug_loc25-Lsection_debug_loc ; DW_AT_location
	.long	Lset523
	.long	337                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	89                              ; DW_AT_decl_line
	.long	151                             ; DW_AT_type
	.byte	14                              ; Abbrev [14] 0x411:0xf DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	143
	.asciz	"\310"
	.long	331                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	96                              ; DW_AT_decl_line
	.long	2839                            ; DW_AT_type
	.byte	14                              ; Abbrev [14] 0x420:0xe DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	8
	.long	333                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	97                              ; DW_AT_decl_line
	.long	2839                            ; DW_AT_type
	.byte	15                              ; Abbrev [15] 0x42e:0xf DW_TAG_variable
.set Lset524, Ldebug_loc26-Lsection_debug_loc ; DW_AT_location
	.long	Lset524
	.long	606                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	90                              ; DW_AT_decl_line
	.long	151                             ; DW_AT_type
	.byte	15                              ; Abbrev [15] 0x43d:0xf DW_TAG_variable
.set Lset525, Ldebug_loc27-Lsection_debug_loc ; DW_AT_location
	.long	Lset525
	.long	615                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	91                              ; DW_AT_decl_line
	.long	151                             ; DW_AT_type
	.byte	15                              ; Abbrev [15] 0x44c:0xf DW_TAG_variable
.set Lset526, Ldebug_loc28-Lsection_debug_loc ; DW_AT_location
	.long	Lset526
	.long	624                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	92                              ; DW_AT_decl_line
	.long	151                             ; DW_AT_type
	.byte	15                              ; Abbrev [15] 0x45b:0xf DW_TAG_variable
.set Lset527, Ldebug_loc32-Lsection_debug_loc ; DW_AT_location
	.long	Lset527
	.long	630                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	93                              ; DW_AT_decl_line
	.long	151                             ; DW_AT_type
	.byte	15                              ; Abbrev [15] 0x46a:0xf DW_TAG_variable
.set Lset528, Ldebug_loc36-Lsection_debug_loc ; DW_AT_location
	.long	Lset528
	.long	639                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	94                              ; DW_AT_decl_line
	.long	151                             ; DW_AT_type
	.byte	16                              ; Abbrev [16] 0x479:0x3c DW_TAG_inlined_subroutine
	.long	83                              ; DW_AT_abstract_origin
	.quad	Ltmp102                         ; DW_AT_low_pc
.set Lset529, Ltmp117-Ltmp102           ; DW_AT_high_pc
	.long	Lset529
	.byte	2                               ; DW_AT_call_file
	.byte	93                              ; DW_AT_call_line
	.byte	25                              ; DW_AT_call_column
	.byte	17                              ; Abbrev [17] 0x48d:0x9 DW_TAG_formal_parameter
.set Lset530, Ldebug_loc29-Lsection_debug_loc ; DW_AT_location
	.long	Lset530
	.long	95                              ; DW_AT_abstract_origin
	.byte	18                              ; Abbrev [18] 0x496:0x6 DW_TAG_formal_parameter
	.byte	4                               ; DW_AT_const_value
	.long	106                             ; DW_AT_abstract_origin
	.byte	18                              ; Abbrev [18] 0x49c:0x6 DW_TAG_formal_parameter
	.byte	7                               ; DW_AT_const_value
	.long	117                             ; DW_AT_abstract_origin
	.byte	19                              ; Abbrev [19] 0x4a2:0x9 DW_TAG_variable
.set Lset531, Ldebug_loc30-Lsection_debug_loc ; DW_AT_location
	.long	Lset531
	.long	128                             ; DW_AT_abstract_origin
	.byte	19                              ; Abbrev [19] 0x4ab:0x9 DW_TAG_variable
.set Lset532, Ldebug_loc31-Lsection_debug_loc ; DW_AT_location
	.long	Lset532
	.long	139                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	16                              ; Abbrev [16] 0x4b5:0x3c DW_TAG_inlined_subroutine
	.long	83                              ; DW_AT_abstract_origin
	.quad	Ltmp118                         ; DW_AT_low_pc
.set Lset533, Ltmp131-Ltmp118           ; DW_AT_high_pc
	.long	Lset533
	.byte	2                               ; DW_AT_call_file
	.byte	94                              ; DW_AT_call_line
	.byte	25                              ; DW_AT_call_column
	.byte	17                              ; Abbrev [17] 0x4c9:0x9 DW_TAG_formal_parameter
.set Lset534, Ldebug_loc33-Lsection_debug_loc ; DW_AT_location
	.long	Lset534
	.long	95                              ; DW_AT_abstract_origin
	.byte	18                              ; Abbrev [18] 0x4d2:0x6 DW_TAG_formal_parameter
	.byte	4                               ; DW_AT_const_value
	.long	106                             ; DW_AT_abstract_origin
	.byte	18                              ; Abbrev [18] 0x4d8:0x6 DW_TAG_formal_parameter
	.byte	7                               ; DW_AT_const_value
	.long	117                             ; DW_AT_abstract_origin
	.byte	19                              ; Abbrev [19] 0x4de:0x9 DW_TAG_variable
.set Lset535, Ldebug_loc34-Lsection_debug_loc ; DW_AT_location
	.long	Lset535
	.long	128                             ; DW_AT_abstract_origin
	.byte	19                              ; Abbrev [19] 0x4e7:0x9 DW_TAG_variable
.set Lset536, Ldebug_loc35-Lsection_debug_loc ; DW_AT_location
	.long	Lset536
	.long	139                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	21                              ; Abbrev [21] 0x4f1:0xce DW_TAG_lexical_block
	.quad	Ltmp135                         ; DW_AT_low_pc
.set Lset537, Ltmp176-Ltmp135           ; DW_AT_high_pc
	.long	Lset537
	.byte	14                              ; Abbrev [14] 0x4fe:0xd DW_TAG_variable
	.byte	1                               ; DW_AT_location
	.byte	88
	.long	648                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	101                             ; DW_AT_decl_line
	.long	2820                            ; DW_AT_type
	.byte	22                              ; Abbrev [22] 0x50b:0x47 DW_TAG_lexical_block
.set Lset538, Ldebug_ranges3-Ldebug_range ; DW_AT_ranges
	.long	Lset538
	.byte	8                               ; Abbrev [8] 0x510:0xb DW_TAG_variable
	.long	335                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	104                             ; DW_AT_decl_line
	.long	2868                            ; DW_AT_type
	.byte	23                              ; Abbrev [23] 0x51b:0x36 DW_TAG_inlined_subroutine
	.long	915                             ; DW_AT_abstract_origin
.set Lset539, Ldebug_ranges4-Ldebug_range ; DW_AT_ranges
	.long	Lset539
	.byte	2                               ; DW_AT_call_file
	.byte	105                             ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	17                              ; Abbrev [17] 0x527:0x9 DW_TAG_formal_parameter
.set Lset540, Ldebug_loc42-Lsection_debug_loc ; DW_AT_location
	.long	Lset540
	.long	927                             ; DW_AT_abstract_origin
	.byte	17                              ; Abbrev [17] 0x530:0x9 DW_TAG_formal_parameter
.set Lset541, Ldebug_loc41-Lsection_debug_loc ; DW_AT_location
	.long	Lset541
	.long	938                             ; DW_AT_abstract_origin
	.byte	17                              ; Abbrev [17] 0x539:0x9 DW_TAG_formal_parameter
.set Lset542, Ldebug_loc43-Lsection_debug_loc ; DW_AT_location
	.long	Lset542
	.long	949                             ; DW_AT_abstract_origin
	.byte	17                              ; Abbrev [17] 0x542:0x9 DW_TAG_formal_parameter
.set Lset543, Ldebug_loc40-Lsection_debug_loc ; DW_AT_location
	.long	Lset543
	.long	960                             ; DW_AT_abstract_origin
	.byte	24                              ; Abbrev [24] 0x54b:0x5 DW_TAG_variable
	.long	971                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	21                              ; Abbrev [21] 0x552:0x6c DW_TAG_lexical_block
	.quad	Ltmp143                         ; DW_AT_low_pc
.set Lset544, Ltmp160-Ltmp143           ; DW_AT_high_pc
	.long	Lset544
	.byte	15                              ; Abbrev [15] 0x55f:0xf DW_TAG_variable
.set Lset545, Ldebug_loc37-Lsection_debug_loc ; DW_AT_location
	.long	Lset545
	.long	650                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	107                             ; DW_AT_decl_line
	.long	2820                            ; DW_AT_type
	.byte	22                              ; Abbrev [22] 0x56e:0x4f DW_TAG_lexical_block
.set Lset546, Ldebug_ranges5-Ldebug_range ; DW_AT_ranges
	.long	Lset546
	.byte	8                               ; Abbrev [8] 0x573:0xb DW_TAG_variable
	.long	335                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	109                             ; DW_AT_decl_line
	.long	2868                            ; DW_AT_type
	.byte	16                              ; Abbrev [16] 0x57e:0x3e DW_TAG_inlined_subroutine
	.long	915                             ; DW_AT_abstract_origin
	.quad	Ltmp149                         ; DW_AT_low_pc
.set Lset547, Ltmp160-Ltmp149           ; DW_AT_high_pc
	.long	Lset547
	.byte	2                               ; DW_AT_call_file
	.byte	110                             ; DW_AT_call_line
	.byte	22                              ; DW_AT_call_column
	.byte	17                              ; Abbrev [17] 0x592:0x9 DW_TAG_formal_parameter
.set Lset548, Ldebug_loc38-Lsection_debug_loc ; DW_AT_location
	.long	Lset548
	.long	927                             ; DW_AT_abstract_origin
	.byte	20                              ; Abbrev [20] 0x59b:0x8 DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	144
	.byte	65
	.long	938                             ; DW_AT_abstract_origin
	.byte	20                              ; Abbrev [20] 0x5a3:0x8 DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_location
	.byte	144
	.byte	66
	.long	949                             ; DW_AT_abstract_origin
	.byte	20                              ; Abbrev [20] 0x5ab:0x7 DW_TAG_formal_parameter
	.byte	1                               ; DW_AT_location
	.byte	99
	.long	960                             ; DW_AT_abstract_origin
	.byte	19                              ; Abbrev [19] 0x5b2:0x9 DW_TAG_variable
.set Lset549, Ldebug_loc39-Lsection_debug_loc ; DW_AT_location
	.long	Lset549
	.long	971                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	25                              ; Abbrev [25] 0x5bf:0x1b DW_TAG_call_site
	.long	1532                            ; DW_AT_call_origin
	.quad	Ltmp132                         ; DW_AT_call_return_pc
	.byte	26                              ; Abbrev [26] 0x5cc:0x6 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	81
	.byte	2                               ; DW_AT_call_value
	.byte	132
	.byte	0
	.byte	26                              ; Abbrev [26] 0x5d2:0x7 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	80
	.byte	3                               ; DW_AT_call_value
	.byte	143
	.asciz	"\310"
	.byte	0                               ; End Of Children Mark
	.byte	25                              ; Abbrev [25] 0x5da:0x21 DW_TAG_call_site
	.long	1532                            ; DW_AT_call_origin
	.quad	Ltmp133                         ; DW_AT_call_return_pc
	.byte	26                              ; Abbrev [26] 0x5e7:0x6 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	82
	.byte	2                               ; DW_AT_call_value
	.byte	133
	.byte	0
	.byte	26                              ; Abbrev [26] 0x5ed:0x6 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	80
	.byte	2                               ; DW_AT_call_value
	.byte	143
	.byte	8
	.byte	26                              ; Abbrev [26] 0x5f3:0x7 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	81
	.byte	3                               ; DW_AT_call_value
	.byte	132
	.ascii	"\200\004"
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	27                              ; Abbrev [27] 0x5fc:0xc1 DW_TAG_subprogram
	.quad	Lfunc_begin2                    ; DW_AT_low_pc
.set Lset550, Lfunc_end2-Lfunc_begin2   ; DW_AT_high_pc
	.long	Lset550
	.byte	1                               ; DW_AT_frame_base
	.byte	109
                                        ; DW_AT_call_all_calls
	.long	404                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	51                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_APPLE_optimized
	.byte	13                              ; Abbrev [13] 0x611:0xf DW_TAG_formal_parameter
.set Lset551, Ldebug_loc44-Lsection_debug_loc ; DW_AT_location
	.long	Lset551
	.long	293                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	51                              ; DW_AT_decl_line
	.long	2868                            ; DW_AT_type
	.byte	13                              ; Abbrev [13] 0x620:0xf DW_TAG_formal_parameter
.set Lset552, Ldebug_loc45-Lsection_debug_loc ; DW_AT_location
	.long	Lset552
	.long	297                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	51                              ; DW_AT_decl_line
	.long	241                             ; DW_AT_type
	.byte	13                              ; Abbrev [13] 0x62f:0xf DW_TAG_formal_parameter
.set Lset553, Ldebug_loc46-Lsection_debug_loc ; DW_AT_location
	.long	Lset553
	.long	301                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	51                              ; DW_AT_decl_line
	.long	151                             ; DW_AT_type
	.byte	13                              ; Abbrev [13] 0x63e:0xf DW_TAG_formal_parameter
.set Lset554, Ldebug_loc47-Lsection_debug_loc ; DW_AT_location
	.long	Lset554
	.long	652                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	51                              ; DW_AT_decl_line
	.long	151                             ; DW_AT_type
	.byte	16                              ; Abbrev [16] 0x64d:0x35 DW_TAG_inlined_subroutine
	.long	187                             ; DW_AT_abstract_origin
	.quad	Ltmp187                         ; DW_AT_low_pc
.set Lset555, Ltmp191-Ltmp187           ; DW_AT_high_pc
	.long	Lset555
	.byte	2                               ; DW_AT_call_file
	.byte	52                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	20                              ; Abbrev [20] 0x661:0x7 DW_TAG_formal_parameter
	.byte	1                               ; DW_AT_location
	.byte	99
	.long	195                             ; DW_AT_abstract_origin
	.byte	20                              ; Abbrev [20] 0x668:0x7 DW_TAG_formal_parameter
	.byte	1                               ; DW_AT_location
	.byte	101
	.long	206                             ; DW_AT_abstract_origin
	.byte	17                              ; Abbrev [17] 0x66f:0x9 DW_TAG_formal_parameter
.set Lset556, Ldebug_loc48-Lsection_debug_loc ; DW_AT_location
	.long	Lset556
	.long	217                             ; DW_AT_abstract_origin
	.byte	19                              ; Abbrev [19] 0x678:0x9 DW_TAG_variable
.set Lset557, Ldebug_loc49-Lsection_debug_loc ; DW_AT_location
	.long	Lset557
	.long	228                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	21                              ; Abbrev [21] 0x682:0x3a DW_TAG_lexical_block
	.quad	Ltmp192                         ; DW_AT_low_pc
.set Lset558, Ltmp232-Ltmp192           ; DW_AT_high_pc
	.long	Lset558
	.byte	15                              ; Abbrev [15] 0x68f:0xf DW_TAG_variable
.set Lset559, Ldebug_loc50-Lsection_debug_loc ; DW_AT_location
	.long	Lset559
	.long	648                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	54                              ; DW_AT_decl_line
	.long	169                             ; DW_AT_type
	.byte	21                              ; Abbrev [21] 0x69e:0x1d DW_TAG_lexical_block
	.quad	Ltmp192                         ; DW_AT_low_pc
.set Lset560, Ltmp232-Ltmp192           ; DW_AT_high_pc
	.long	Lset560
	.byte	15                              ; Abbrev [15] 0x6ab:0xf DW_TAG_variable
.set Lset561, Ldebug_loc51-Lsection_debug_loc ; DW_AT_location
	.long	Lset561
	.long	235                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	55                              ; DW_AT_decl_line
	.long	983                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0x6bd:0x44 DW_TAG_subprogram
	.long	422                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	36                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	1793                            ; DW_AT_type
                                        ; DW_AT_APPLE_optimized
	.byte	1                               ; DW_AT_inline
	.byte	7                               ; Abbrev [7] 0x6c9:0xb DW_TAG_formal_parameter
	.long	331                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	36                              ; DW_AT_decl_line
	.long	1793                            ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0x6d4:0xb DW_TAG_formal_parameter
	.long	333                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	36                              ; DW_AT_decl_line
	.long	1793                            ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0x6df:0xb DW_TAG_formal_parameter
	.long	335                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	36                              ; DW_AT_decl_line
	.long	1793                            ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0x6ea:0xb DW_TAG_formal_parameter
	.long	337                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	36                              ; DW_AT_decl_line
	.long	151                             ; DW_AT_type
	.byte	8                               ; Abbrev [8] 0x6f5:0xb DW_TAG_variable
	.long	345                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	46                              ; DW_AT_decl_line
	.long	1793                            ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	5                               ; Abbrev [5] 0x701:0x7 DW_TAG_base_type
	.long	432                             ; DW_AT_name
	.byte	4                               ; DW_AT_encoding
	.byte	2                               ; DW_AT_byte_size
	.byte	12                              ; Abbrev [12] 0x708:0x294 DW_TAG_subprogram
	.quad	Lfunc_begin3                    ; DW_AT_low_pc
.set Lset562, Lfunc_end3-Lfunc_begin3   ; DW_AT_high_pc
	.long	Lset562
	.byte	1                               ; DW_AT_frame_base
	.byte	109
                                        ; DW_AT_call_all_calls
	.long	441                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	116                             ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_external
                                        ; DW_AT_APPLE_optimized
	.byte	13                              ; Abbrev [13] 0x71d:0xf DW_TAG_formal_parameter
.set Lset563, Ldebug_loc52-Lsection_debug_loc ; DW_AT_location
	.long	Lset563
	.long	479                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	116                             ; DW_AT_decl_line
	.long	2479                            ; DW_AT_type
	.byte	13                              ; Abbrev [13] 0x72c:0xf DW_TAG_formal_parameter
.set Lset564, Ldebug_loc53-Lsection_debug_loc ; DW_AT_location
	.long	Lset564
	.long	337                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	116                             ; DW_AT_decl_line
	.long	151                             ; DW_AT_type
	.byte	14                              ; Abbrev [14] 0x73b:0xf DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	143
	.asciz	"\310"
	.long	331                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	123                             ; DW_AT_decl_line
	.long	2827                            ; DW_AT_type
	.byte	14                              ; Abbrev [14] 0x74a:0xe DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	8
	.long	333                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	124                             ; DW_AT_decl_line
	.long	2827                            ; DW_AT_type
	.byte	15                              ; Abbrev [15] 0x758:0xf DW_TAG_variable
.set Lset565, Ldebug_loc54-Lsection_debug_loc ; DW_AT_location
	.long	Lset565
	.long	606                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	117                             ; DW_AT_decl_line
	.long	151                             ; DW_AT_type
	.byte	15                              ; Abbrev [15] 0x767:0xf DW_TAG_variable
.set Lset566, Ldebug_loc55-Lsection_debug_loc ; DW_AT_location
	.long	Lset566
	.long	615                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	118                             ; DW_AT_decl_line
	.long	151                             ; DW_AT_type
	.byte	15                              ; Abbrev [15] 0x776:0xf DW_TAG_variable
.set Lset567, Ldebug_loc56-Lsection_debug_loc ; DW_AT_location
	.long	Lset567
	.long	624                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	119                             ; DW_AT_decl_line
	.long	151                             ; DW_AT_type
	.byte	15                              ; Abbrev [15] 0x785:0xf DW_TAG_variable
.set Lset568, Ldebug_loc60-Lsection_debug_loc ; DW_AT_location
	.long	Lset568
	.long	630                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	120                             ; DW_AT_decl_line
	.long	151                             ; DW_AT_type
	.byte	15                              ; Abbrev [15] 0x794:0xf DW_TAG_variable
.set Lset569, Ldebug_loc64-Lsection_debug_loc ; DW_AT_location
	.long	Lset569
	.long	639                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	121                             ; DW_AT_decl_line
	.long	151                             ; DW_AT_type
	.byte	16                              ; Abbrev [16] 0x7a3:0x3c DW_TAG_inlined_subroutine
	.long	83                              ; DW_AT_abstract_origin
	.quad	Ltmp240                         ; DW_AT_low_pc
.set Lset570, Ltmp257-Ltmp240           ; DW_AT_high_pc
	.long	Lset570
	.byte	2                               ; DW_AT_call_file
	.byte	120                             ; DW_AT_call_line
	.byte	25                              ; DW_AT_call_column
	.byte	17                              ; Abbrev [17] 0x7b7:0x9 DW_TAG_formal_parameter
.set Lset571, Ldebug_loc57-Lsection_debug_loc ; DW_AT_location
	.long	Lset571
	.long	95                              ; DW_AT_abstract_origin
	.byte	18                              ; Abbrev [18] 0x7c0:0x6 DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_const_value
	.long	106                             ; DW_AT_abstract_origin
	.byte	18                              ; Abbrev [18] 0x7c6:0x6 DW_TAG_formal_parameter
	.byte	7                               ; DW_AT_const_value
	.long	117                             ; DW_AT_abstract_origin
	.byte	19                              ; Abbrev [19] 0x7cc:0x9 DW_TAG_variable
.set Lset572, Ldebug_loc58-Lsection_debug_loc ; DW_AT_location
	.long	Lset572
	.long	128                             ; DW_AT_abstract_origin
	.byte	19                              ; Abbrev [19] 0x7d5:0x9 DW_TAG_variable
.set Lset573, Ldebug_loc59-Lsection_debug_loc ; DW_AT_location
	.long	Lset573
	.long	139                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	16                              ; Abbrev [16] 0x7df:0x3c DW_TAG_inlined_subroutine
	.long	83                              ; DW_AT_abstract_origin
	.quad	Ltmp258                         ; DW_AT_low_pc
.set Lset574, Ltmp274-Ltmp258           ; DW_AT_high_pc
	.long	Lset574
	.byte	2                               ; DW_AT_call_file
	.byte	121                             ; DW_AT_call_line
	.byte	25                              ; DW_AT_call_column
	.byte	17                              ; Abbrev [17] 0x7f3:0x9 DW_TAG_formal_parameter
.set Lset575, Ldebug_loc61-Lsection_debug_loc ; DW_AT_location
	.long	Lset575
	.long	95                              ; DW_AT_abstract_origin
	.byte	18                              ; Abbrev [18] 0x7fc:0x6 DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_const_value
	.long	106                             ; DW_AT_abstract_origin
	.byte	18                              ; Abbrev [18] 0x802:0x6 DW_TAG_formal_parameter
	.byte	7                               ; DW_AT_const_value
	.long	117                             ; DW_AT_abstract_origin
	.byte	19                              ; Abbrev [19] 0x808:0x9 DW_TAG_variable
.set Lset576, Ldebug_loc62-Lsection_debug_loc ; DW_AT_location
	.long	Lset576
	.long	128                             ; DW_AT_abstract_origin
	.byte	19                              ; Abbrev [19] 0x811:0x9 DW_TAG_variable
.set Lset577, Ldebug_loc63-Lsection_debug_loc ; DW_AT_location
	.long	Lset577
	.long	139                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	16                              ; Abbrev [16] 0x81b:0x38 DW_TAG_inlined_subroutine
	.long	187                             ; DW_AT_abstract_origin
	.quad	Ltmp275                         ; DW_AT_low_pc
.set Lset578, Ltmp278-Ltmp275           ; DW_AT_high_pc
	.long	Lset578
	.byte	2                               ; DW_AT_call_file
	.byte	125                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	20                              ; Abbrev [20] 0x82f:0xa DW_TAG_formal_parameter
	.byte	4                               ; DW_AT_location
	.byte	143
	.asciz	"\310"
	.byte	159
	.long	195                             ; DW_AT_abstract_origin
	.byte	20                              ; Abbrev [20] 0x839:0x7 DW_TAG_formal_parameter
	.byte	1                               ; DW_AT_location
	.byte	100
	.long	206                             ; DW_AT_abstract_origin
	.byte	17                              ; Abbrev [17] 0x840:0x9 DW_TAG_formal_parameter
.set Lset579, Ldebug_loc65-Lsection_debug_loc ; DW_AT_location
	.long	Lset579
	.long	217                             ; DW_AT_abstract_origin
	.byte	19                              ; Abbrev [19] 0x849:0x9 DW_TAG_variable
.set Lset580, Ldebug_loc66-Lsection_debug_loc ; DW_AT_location
	.long	Lset580
	.long	228                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	16                              ; Abbrev [16] 0x853:0x37 DW_TAG_inlined_subroutine
	.long	187                             ; DW_AT_abstract_origin
	.quad	Ltmp279                         ; DW_AT_low_pc
.set Lset581, Ltmp284-Ltmp279           ; DW_AT_high_pc
	.long	Lset581
	.byte	2                               ; DW_AT_call_file
	.byte	126                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	20                              ; Abbrev [20] 0x867:0x9 DW_TAG_formal_parameter
	.byte	3                               ; DW_AT_location
	.byte	143
	.byte	8
	.byte	159
	.long	195                             ; DW_AT_abstract_origin
	.byte	20                              ; Abbrev [20] 0x870:0x7 DW_TAG_formal_parameter
	.byte	1                               ; DW_AT_location
	.byte	101
	.long	206                             ; DW_AT_abstract_origin
	.byte	17                              ; Abbrev [17] 0x877:0x9 DW_TAG_formal_parameter
.set Lset582, Ldebug_loc67-Lsection_debug_loc ; DW_AT_location
	.long	Lset582
	.long	217                             ; DW_AT_abstract_origin
	.byte	19                              ; Abbrev [19] 0x880:0x9 DW_TAG_variable
.set Lset583, Ldebug_loc68-Lsection_debug_loc ; DW_AT_location
	.long	Lset583
	.long	228                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	21                              ; Abbrev [21] 0x88a:0x111 DW_TAG_lexical_block
	.quad	Ltmp285                         ; DW_AT_low_pc
.set Lset584, Ltmp343-Ltmp285           ; DW_AT_high_pc
	.long	Lset584
	.byte	14                              ; Abbrev [14] 0x897:0xd DW_TAG_variable
	.byte	1                               ; DW_AT_location
	.byte	88
	.long	648                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	128                             ; DW_AT_decl_line
	.long	2820                            ; DW_AT_type
	.byte	22                              ; Abbrev [22] 0x8a4:0x47 DW_TAG_lexical_block
.set Lset585, Ldebug_ranges6-Ldebug_range ; DW_AT_ranges
	.long	Lset585
	.byte	8                               ; Abbrev [8] 0x8a9:0xb DW_TAG_variable
	.long	335                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	131                             ; DW_AT_decl_line
	.long	2873                            ; DW_AT_type
	.byte	23                              ; Abbrev [23] 0x8b4:0x36 DW_TAG_inlined_subroutine
	.long	1725                            ; DW_AT_abstract_origin
.set Lset586, Ldebug_ranges7-Ldebug_range ; DW_AT_ranges
	.long	Lset586
	.byte	2                               ; DW_AT_call_file
	.byte	132                             ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	17                              ; Abbrev [17] 0x8c0:0x9 DW_TAG_formal_parameter
.set Lset587, Ldebug_loc81-Lsection_debug_loc ; DW_AT_location
	.long	Lset587
	.long	1737                            ; DW_AT_abstract_origin
	.byte	17                              ; Abbrev [17] 0x8c9:0x9 DW_TAG_formal_parameter
.set Lset588, Ldebug_loc80-Lsection_debug_loc ; DW_AT_location
	.long	Lset588
	.long	1748                            ; DW_AT_abstract_origin
	.byte	17                              ; Abbrev [17] 0x8d2:0x9 DW_TAG_formal_parameter
.set Lset589, Ldebug_loc82-Lsection_debug_loc ; DW_AT_location
	.long	Lset589
	.long	1759                            ; DW_AT_abstract_origin
	.byte	17                              ; Abbrev [17] 0x8db:0x9 DW_TAG_formal_parameter
.set Lset590, Ldebug_loc79-Lsection_debug_loc ; DW_AT_location
	.long	Lset590
	.long	1770                            ; DW_AT_abstract_origin
	.byte	24                              ; Abbrev [24] 0x8e4:0x5 DW_TAG_variable
	.long	1781                            ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	21                              ; Abbrev [21] 0x8eb:0xaf DW_TAG_lexical_block
	.quad	Ltmp293                         ; DW_AT_low_pc
.set Lset591, Ltmp329-Ltmp293           ; DW_AT_high_pc
	.long	Lset591
	.byte	15                              ; Abbrev [15] 0x8f8:0xf DW_TAG_variable
.set Lset592, Ldebug_loc69-Lsection_debug_loc ; DW_AT_location
	.long	Lset592
	.long	650                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	134                             ; DW_AT_decl_line
	.long	2820                            ; DW_AT_type
	.byte	22                              ; Abbrev [22] 0x907:0x4b DW_TAG_lexical_block
.set Lset593, Ldebug_ranges8-Ldebug_range ; DW_AT_ranges
	.long	Lset593
	.byte	8                               ; Abbrev [8] 0x90c:0xb DW_TAG_variable
	.long	335                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	140                             ; DW_AT_decl_line
	.long	2873                            ; DW_AT_type
	.byte	23                              ; Abbrev [23] 0x917:0x3a DW_TAG_inlined_subroutine
	.long	1725                            ; DW_AT_abstract_origin
.set Lset594, Ldebug_ranges9-Ldebug_range ; DW_AT_ranges
	.long	Lset594
	.byte	2                               ; DW_AT_call_file
	.byte	141                             ; DW_AT_call_line
	.byte	26                              ; DW_AT_call_column
	.byte	17                              ; Abbrev [17] 0x923:0x9 DW_TAG_formal_parameter
.set Lset595, Ldebug_loc71-Lsection_debug_loc ; DW_AT_location
	.long	Lset595
	.long	1737                            ; DW_AT_abstract_origin
	.byte	17                              ; Abbrev [17] 0x92c:0x9 DW_TAG_formal_parameter
.set Lset596, Ldebug_loc72-Lsection_debug_loc ; DW_AT_location
	.long	Lset596
	.long	1748                            ; DW_AT_abstract_origin
	.byte	17                              ; Abbrev [17] 0x935:0x9 DW_TAG_formal_parameter
.set Lset597, Ldebug_loc70-Lsection_debug_loc ; DW_AT_location
	.long	Lset597
	.long	1759                            ; DW_AT_abstract_origin
	.byte	17                              ; Abbrev [17] 0x93e:0x9 DW_TAG_formal_parameter
.set Lset598, Ldebug_loc73-Lsection_debug_loc ; DW_AT_location
	.long	Lset598
	.long	1770                            ; DW_AT_abstract_origin
	.byte	19                              ; Abbrev [19] 0x947:0x9 DW_TAG_variable
.set Lset599, Ldebug_loc78-Lsection_debug_loc ; DW_AT_location
	.long	Lset599
	.long	1781                            ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	22                              ; Abbrev [22] 0x952:0x47 DW_TAG_lexical_block
.set Lset600, Ldebug_ranges10-Ldebug_range ; DW_AT_ranges
	.long	Lset600
	.byte	8                               ; Abbrev [8] 0x957:0xb DW_TAG_variable
	.long	335                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	137                             ; DW_AT_decl_line
	.long	2868                            ; DW_AT_type
	.byte	23                              ; Abbrev [23] 0x962:0x36 DW_TAG_inlined_subroutine
	.long	915                             ; DW_AT_abstract_origin
.set Lset601, Ldebug_ranges11-Ldebug_range ; DW_AT_ranges
	.long	Lset601
	.byte	2                               ; DW_AT_call_file
	.byte	138                             ; DW_AT_call_line
	.byte	26                              ; DW_AT_call_column
	.byte	17                              ; Abbrev [17] 0x96e:0x9 DW_TAG_formal_parameter
.set Lset602, Ldebug_loc76-Lsection_debug_loc ; DW_AT_location
	.long	Lset602
	.long	927                             ; DW_AT_abstract_origin
	.byte	17                              ; Abbrev [17] 0x977:0x9 DW_TAG_formal_parameter
.set Lset603, Ldebug_loc75-Lsection_debug_loc ; DW_AT_location
	.long	Lset603
	.long	938                             ; DW_AT_abstract_origin
	.byte	17                              ; Abbrev [17] 0x980:0x9 DW_TAG_formal_parameter
.set Lset604, Ldebug_loc77-Lsection_debug_loc ; DW_AT_location
	.long	Lset604
	.long	949                             ; DW_AT_abstract_origin
	.byte	17                              ; Abbrev [17] 0x989:0x9 DW_TAG_formal_parameter
.set Lset605, Ldebug_loc74-Lsection_debug_loc ; DW_AT_location
	.long	Lset605
	.long	960                             ; DW_AT_abstract_origin
	.byte	24                              ; Abbrev [24] 0x992:0x5 DW_TAG_variable
	.long	971                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	28                              ; Abbrev [28] 0x99c:0xc DW_TAG_array_type
	.long	315                             ; DW_AT_type
	.byte	29                              ; Abbrev [29] 0x9a1:0x6 DW_TAG_subrange_type
	.long	2472                            ; DW_AT_type
	.byte	8                               ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	30                              ; Abbrev [30] 0x9a8:0x7 DW_TAG_base_type
	.long	459                             ; DW_AT_name
	.byte	8                               ; DW_AT_byte_size
	.byte	7                               ; DW_AT_encoding
	.byte	2                               ; Abbrev [2] 0x9af:0x5 DW_TAG_pointer_type
	.long	2484                            ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x9b4:0xb DW_TAG_typedef
	.long	2495                            ; DW_AT_type
	.long	485                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	22                              ; DW_AT_decl_line
	.byte	31                              ; Abbrev [31] 0x9bf:0x30 DW_TAG_structure_type
	.long	485                             ; DW_AT_name
	.short	5120                            ; DW_AT_byte_size
	.byte	3                               ; DW_AT_decl_file
	.byte	18                              ; DW_AT_decl_line
	.byte	32                              ; Abbrev [32] 0x9c8:0xc DW_TAG_member
	.long	331                             ; DW_AT_name
	.long	2543                            ; DW_AT_type
	.byte	3                               ; DW_AT_decl_file
	.byte	19                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	33                              ; Abbrev [33] 0x9d4:0xd DW_TAG_member
	.long	333                             ; DW_AT_name
	.long	2543                            ; DW_AT_type
	.byte	3                               ; DW_AT_decl_file
	.byte	20                              ; DW_AT_decl_line
	.short	512                             ; DW_AT_data_member_location
	.byte	33                              ; Abbrev [33] 0x9e1:0xd DW_TAG_member
	.long	335                             ; DW_AT_name
	.long	2851                            ; DW_AT_type
	.byte	3                               ; DW_AT_decl_file
	.byte	21                              ; DW_AT_decl_line
	.short	1024                            ; DW_AT_data_member_location
	.byte	0                               ; End Of Children Mark
	.byte	28                              ; Abbrev [28] 0x9ef:0xc DW_TAG_array_type
	.long	2555                            ; DW_AT_type
	.byte	29                              ; Abbrev [29] 0x9f4:0x6 DW_TAG_subrange_type
	.long	2472                            ; DW_AT_type
	.byte	8                               ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x9fb:0xb DW_TAG_typedef
	.long	2566                            ; DW_AT_type
	.long	495                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	16                              ; DW_AT_decl_line
	.byte	34                              ; Abbrev [34] 0xa06:0x75 DW_TAG_union_type
	.long	495                             ; DW_AT_name
	.byte	64                              ; DW_AT_byte_size
	.byte	3                               ; DW_AT_decl_file
	.byte	6                               ; DW_AT_decl_line
	.byte	32                              ; Abbrev [32] 0xa0e:0xc DW_TAG_member
	.long	503                             ; DW_AT_name
	.long	2683                            ; DW_AT_type
	.byte	3                               ; DW_AT_decl_file
	.byte	7                               ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	32                              ; Abbrev [32] 0xa1a:0xc DW_TAG_member
	.long	506                             ; DW_AT_name
	.long	2695                            ; DW_AT_type
	.byte	3                               ; DW_AT_decl_file
	.byte	8                               ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	32                              ; Abbrev [32] 0xa26:0xc DW_TAG_member
	.long	534                             ; DW_AT_name
	.long	2725                            ; DW_AT_type
	.byte	3                               ; DW_AT_decl_file
	.byte	9                               ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	32                              ; Abbrev [32] 0xa32:0xc DW_TAG_member
	.long	538                             ; DW_AT_name
	.long	2737                            ; DW_AT_type
	.byte	3                               ; DW_AT_decl_file
	.byte	10                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	32                              ; Abbrev [32] 0xa3e:0xc DW_TAG_member
	.long	560                             ; DW_AT_name
	.long	2767                            ; DW_AT_type
	.byte	3                               ; DW_AT_decl_file
	.byte	11                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	32                              ; Abbrev [32] 0xa4a:0xc DW_TAG_member
	.long	578                             ; DW_AT_name
	.long	2797                            ; DW_AT_type
	.byte	3                               ; DW_AT_decl_file
	.byte	12                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	32                              ; Abbrev [32] 0xa56:0xc DW_TAG_member
	.long	594                             ; DW_AT_name
	.long	2827                            ; DW_AT_type
	.byte	3                               ; DW_AT_decl_file
	.byte	13                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	32                              ; Abbrev [32] 0xa62:0xc DW_TAG_member
	.long	598                             ; DW_AT_name
	.long	2839                            ; DW_AT_type
	.byte	3                               ; DW_AT_decl_file
	.byte	14                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	32                              ; Abbrev [32] 0xa6e:0xc DW_TAG_member
	.long	602                             ; DW_AT_name
	.long	2460                            ; DW_AT_type
	.byte	3                               ; DW_AT_decl_file
	.byte	15                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	0                               ; End Of Children Mark
	.byte	28                              ; Abbrev [28] 0xa7b:0xc DW_TAG_array_type
	.long	60                              ; DW_AT_type
	.byte	29                              ; Abbrev [29] 0xa80:0x6 DW_TAG_subrange_type
	.long	2472                            ; DW_AT_type
	.byte	64                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	28                              ; Abbrev [28] 0xa87:0xc DW_TAG_array_type
	.long	2707                            ; DW_AT_type
	.byte	29                              ; Abbrev [29] 0xa8c:0x6 DW_TAG_subrange_type
	.long	2472                            ; DW_AT_type
	.byte	32                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0xa93:0xb DW_TAG_typedef
	.long	2718                            ; DW_AT_type
	.long	510                             ; DW_AT_name
	.byte	6                               ; DW_AT_decl_file
	.byte	31                              ; DW_AT_decl_line
	.byte	5                               ; Abbrev [5] 0xa9e:0x7 DW_TAG_base_type
	.long	519                             ; DW_AT_name
	.byte	7                               ; DW_AT_encoding
	.byte	2                               ; DW_AT_byte_size
	.byte	28                              ; Abbrev [28] 0xaa5:0xc DW_TAG_array_type
	.long	169                             ; DW_AT_type
	.byte	29                              ; Abbrev [29] 0xaaa:0x6 DW_TAG_subrange_type
	.long	2472                            ; DW_AT_type
	.byte	16                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	28                              ; Abbrev [28] 0xab1:0xc DW_TAG_array_type
	.long	2749                            ; DW_AT_type
	.byte	29                              ; Abbrev [29] 0xab6:0x6 DW_TAG_subrange_type
	.long	2472                            ; DW_AT_type
	.byte	64                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0xabd:0xb DW_TAG_typedef
	.long	2760                            ; DW_AT_type
	.long	541                             ; DW_AT_name
	.byte	7                               ; DW_AT_decl_file
	.byte	30                              ; DW_AT_decl_line
	.byte	5                               ; Abbrev [5] 0xac8:0x7 DW_TAG_base_type
	.long	548                             ; DW_AT_name
	.byte	6                               ; DW_AT_encoding
	.byte	1                               ; DW_AT_byte_size
	.byte	28                              ; Abbrev [28] 0xacf:0xc DW_TAG_array_type
	.long	2779                            ; DW_AT_type
	.byte	29                              ; Abbrev [29] 0xad4:0x6 DW_TAG_subrange_type
	.long	2472                            ; DW_AT_type
	.byte	32                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0xadb:0xb DW_TAG_typedef
	.long	2790                            ; DW_AT_type
	.long	564                             ; DW_AT_name
	.byte	8                               ; DW_AT_decl_file
	.byte	30                              ; DW_AT_decl_line
	.byte	5                               ; Abbrev [5] 0xae6:0x7 DW_TAG_base_type
	.long	572                             ; DW_AT_name
	.byte	5                               ; DW_AT_encoding
	.byte	2                               ; DW_AT_byte_size
	.byte	28                              ; Abbrev [28] 0xaed:0xc DW_TAG_array_type
	.long	2809                            ; DW_AT_type
	.byte	29                              ; Abbrev [29] 0xaf2:0x6 DW_TAG_subrange_type
	.long	2472                            ; DW_AT_type
	.byte	16                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0xaf9:0xb DW_TAG_typedef
	.long	2820                            ; DW_AT_type
	.long	582                             ; DW_AT_name
	.byte	9                               ; DW_AT_decl_file
	.byte	30                              ; DW_AT_decl_line
	.byte	5                               ; Abbrev [5] 0xb04:0x7 DW_TAG_base_type
	.long	590                             ; DW_AT_name
	.byte	5                               ; DW_AT_encoding
	.byte	4                               ; DW_AT_byte_size
	.byte	28                              ; Abbrev [28] 0xb0b:0xc DW_TAG_array_type
	.long	1793                            ; DW_AT_type
	.byte	29                              ; Abbrev [29] 0xb10:0x6 DW_TAG_subrange_type
	.long	2472                            ; DW_AT_type
	.byte	32                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	28                              ; Abbrev [28] 0xb17:0xc DW_TAG_array_type
	.long	983                             ; DW_AT_type
	.byte	29                              ; Abbrev [29] 0xb1c:0x6 DW_TAG_subrange_type
	.long	2472                            ; DW_AT_type
	.byte	16                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	28                              ; Abbrev [28] 0xb23:0xc DW_TAG_array_type
	.long	2555                            ; DW_AT_type
	.byte	29                              ; Abbrev [29] 0xb28:0x6 DW_TAG_subrange_type
	.long	2472                            ; DW_AT_type
	.byte	64                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0xb2f:0x5 DW_TAG_pointer_type
	.long	315                             ; DW_AT_type
	.byte	2                               ; Abbrev [2] 0xb34:0x5 DW_TAG_pointer_type
	.long	983                             ; DW_AT_type
	.byte	2                               ; Abbrev [2] 0xb39:0x5 DW_TAG_pointer_type
	.long	1793                            ; DW_AT_type
	.byte	0                               ; End Of Children Mark
Ldebug_info_end0:
	.section	__DWARF,__debug_ranges,regular,debug
Ldebug_range:
Ldebug_ranges0:
.set Lset606, Ltmp49-Lfunc_begin0
	.quad	Lset606
.set Lset607, Ltmp50-Lfunc_begin0
	.quad	Lset607
.set Lset608, Ltmp76-Lfunc_begin0
	.quad	Lset608
.set Lset609, Ltmp90-Lfunc_begin0
	.quad	Lset609
	.quad	0
	.quad	0
Ldebug_ranges1:
.set Lset610, Ltmp77-Lfunc_begin0
	.quad	Lset610
.set Lset611, Ltmp81-Lfunc_begin0
	.quad	Lset611
.set Lset612, Ltmp82-Lfunc_begin0
	.quad	Lset612
.set Lset613, Ltmp83-Lfunc_begin0
	.quad	Lset613
.set Lset614, Ltmp84-Lfunc_begin0
	.quad	Lset614
.set Lset615, Ltmp85-Lfunc_begin0
	.quad	Lset615
.set Lset616, Ltmp86-Lfunc_begin0
	.quad	Lset616
.set Lset617, Ltmp87-Lfunc_begin0
	.quad	Lset617
	.quad	0
	.quad	0
Ldebug_ranges2:
.set Lset618, Ltmp57-Lfunc_begin0
	.quad	Lset618
.set Lset619, Ltmp58-Lfunc_begin0
	.quad	Lset619
.set Lset620, Ltmp60-Lfunc_begin0
	.quad	Lset620
.set Lset621, Ltmp74-Lfunc_begin0
	.quad	Lset621
	.quad	0
	.quad	0
Ldebug_ranges3:
.set Lset622, Ltmp135-Lfunc_begin0
	.quad	Lset622
.set Lset623, Ltmp136-Lfunc_begin0
	.quad	Lset623
.set Lset624, Ltmp162-Lfunc_begin0
	.quad	Lset624
.set Lset625, Ltmp176-Lfunc_begin0
	.quad	Lset625
	.quad	0
	.quad	0
Ldebug_ranges4:
.set Lset626, Ltmp163-Lfunc_begin0
	.quad	Lset626
.set Lset627, Ltmp167-Lfunc_begin0
	.quad	Lset627
.set Lset628, Ltmp168-Lfunc_begin0
	.quad	Lset628
.set Lset629, Ltmp169-Lfunc_begin0
	.quad	Lset629
.set Lset630, Ltmp170-Lfunc_begin0
	.quad	Lset630
.set Lset631, Ltmp171-Lfunc_begin0
	.quad	Lset631
.set Lset632, Ltmp172-Lfunc_begin0
	.quad	Lset632
.set Lset633, Ltmp173-Lfunc_begin0
	.quad	Lset633
	.quad	0
	.quad	0
Ldebug_ranges5:
.set Lset634, Ltmp143-Lfunc_begin0
	.quad	Lset634
.set Lset635, Ltmp144-Lfunc_begin0
	.quad	Lset635
.set Lset636, Ltmp146-Lfunc_begin0
	.quad	Lset636
.set Lset637, Ltmp160-Lfunc_begin0
	.quad	Lset637
	.quad	0
	.quad	0
Ldebug_ranges6:
.set Lset638, Ltmp285-Lfunc_begin0
	.quad	Lset638
.set Lset639, Ltmp286-Lfunc_begin0
	.quad	Lset639
.set Lset640, Ltmp329-Lfunc_begin0
	.quad	Lset640
.set Lset641, Ltmp343-Lfunc_begin0
	.quad	Lset641
	.quad	0
	.quad	0
Ldebug_ranges7:
.set Lset642, Ltmp330-Lfunc_begin0
	.quad	Lset642
.set Lset643, Ltmp334-Lfunc_begin0
	.quad	Lset643
.set Lset644, Ltmp335-Lfunc_begin0
	.quad	Lset644
.set Lset645, Ltmp336-Lfunc_begin0
	.quad	Lset645
.set Lset646, Ltmp337-Lfunc_begin0
	.quad	Lset646
.set Lset647, Ltmp338-Lfunc_begin0
	.quad	Lset647
.set Lset648, Ltmp339-Lfunc_begin0
	.quad	Lset648
.set Lset649, Ltmp340-Lfunc_begin0
	.quad	Lset649
	.quad	0
	.quad	0
Ldebug_ranges8:
.set Lset650, Ltmp293-Lfunc_begin0
	.quad	Lset650
.set Lset651, Ltmp294-Lfunc_begin0
	.quad	Lset651
.set Lset652, Ltmp298-Lfunc_begin0
	.quad	Lset652
.set Lset653, Ltmp305-Lfunc_begin0
	.quad	Lset653
.set Lset654, Ltmp312-Lfunc_begin0
	.quad	Lset654
.set Lset655, Ltmp316-Lfunc_begin0
	.quad	Lset655
.set Lset656, Ltmp321-Lfunc_begin0
	.quad	Lset656
.set Lset657, Ltmp323-Lfunc_begin0
	.quad	Lset657
	.quad	0
	.quad	0
Ldebug_ranges9:
.set Lset658, Ltmp300-Lfunc_begin0
	.quad	Lset658
.set Lset659, Ltmp305-Lfunc_begin0
	.quad	Lset659
.set Lset660, Ltmp312-Lfunc_begin0
	.quad	Lset660
.set Lset661, Ltmp316-Lfunc_begin0
	.quad	Lset661
.set Lset662, Ltmp321-Lfunc_begin0
	.quad	Lset662
.set Lset663, Ltmp323-Lfunc_begin0
	.quad	Lset663
	.quad	0
	.quad	0
Ldebug_ranges10:
.set Lset664, Ltmp305-Lfunc_begin0
	.quad	Lset664
.set Lset665, Ltmp312-Lfunc_begin0
	.quad	Lset665
.set Lset666, Ltmp316-Lfunc_begin0
	.quad	Lset666
.set Lset667, Ltmp321-Lfunc_begin0
	.quad	Lset667
.set Lset668, Ltmp325-Lfunc_begin0
	.quad	Lset668
.set Lset669, Ltmp329-Lfunc_begin0
	.quad	Lset669
	.quad	0
	.quad	0
Ldebug_ranges11:
.set Lset670, Ltmp307-Lfunc_begin0
	.quad	Lset670
.set Lset671, Ltmp311-Lfunc_begin0
	.quad	Lset671
.set Lset672, Ltmp316-Lfunc_begin0
	.quad	Lset672
.set Lset673, Ltmp317-Lfunc_begin0
	.quad	Lset673
.set Lset674, Ltmp318-Lfunc_begin0
	.quad	Lset674
.set Lset675, Ltmp319-Lfunc_begin0
	.quad	Lset675
.set Lset676, Ltmp325-Lfunc_begin0
	.quad	Lset676
.set Lset677, Ltmp326-Lfunc_begin0
	.quad	Lset677
	.quad	0
	.quad	0
	.section	__DWARF,__debug_str,regular,debug
Linfo_string:
	.asciz	"Apple clang version 15.0.0 (clang-1500.3.9.4)" ; string offset=0
	.asciz	"fma.c"                         ; string offset=46
	.asciz	"/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk" ; string offset=52
	.asciz	"MacOSX.sdk"                    ; string offset=104
	.asciz	"/Users/tarindujayatilaka/Documents/superopt/apple-amx" ; string offset=115
	.asciz	"uint8_t"                       ; string offset=169
	.asciz	"unsigned char"                 ; string offset=177
	.asciz	"parse_writemask"               ; string offset=191
	.asciz	"uint64_t"                      ; string offset=207
	.asciz	"unsigned long long"            ; string offset=216
	.asciz	"val"                           ; string offset=235
	.asciz	"uint32_t"                      ; string offset=239
	.asciz	"unsigned int"                  ; string offset=248
	.asciz	"g"                             ; string offset=261
	.asciz	"maskbits"                      ; string offset=263
	.asciz	"mode"                          ; string offset=272
	.asciz	"all"                           ; string offset=277
	.asciz	"load_xy_reg"                   ; string offset=281
	.asciz	"dst"                           ; string offset=293
	.asciz	"src"                           ; string offset=297
	.asciz	"offset"                        ; string offset=301
	.asciz	"avail"                         ; string offset=308
	.asciz	"fma64_alu"                     ; string offset=314
	.asciz	"double"                        ; string offset=324
	.asciz	"x"                             ; string offset=331
	.asciz	"y"                             ; string offset=333
	.asciz	"z"                             ; string offset=335
	.asciz	"operand"                       ; string offset=337
	.asciz	"result"                        ; string offset=345
	.asciz	"emulate_AMX_FMA64"             ; string offset=352
	.asciz	"fma32_alu"                     ; string offset=370
	.asciz	"float"                         ; string offset=380
	.asciz	"emulate_AMX_FMA32"             ; string offset=386
	.asciz	"load_xy_reg_fma32"             ; string offset=404
	.asciz	"fma16_alu"                     ; string offset=422
	.asciz	"_Float16"                      ; string offset=432
	.asciz	"emulate_AMX_FMA16"             ; string offset=441
	.asciz	"__ARRAY_SIZE_TYPE__"           ; string offset=459
	.asciz	"state"                         ; string offset=479
	.asciz	"amx_state"                     ; string offset=485
	.asciz	"amx_reg"                       ; string offset=495
	.asciz	"u8"                            ; string offset=503
	.asciz	"u16"                           ; string offset=506
	.asciz	"uint16_t"                      ; string offset=510
	.asciz	"unsigned short"                ; string offset=519
	.asciz	"u32"                           ; string offset=534
	.asciz	"i8"                            ; string offset=538
	.asciz	"int8_t"                        ; string offset=541
	.asciz	"signed char"                   ; string offset=548
	.asciz	"i16"                           ; string offset=560
	.asciz	"int16_t"                       ; string offset=564
	.asciz	"short"                         ; string offset=572
	.asciz	"i32"                           ; string offset=578
	.asciz	"int32_t"                       ; string offset=582
	.asciz	"int"                           ; string offset=590
	.asciz	"f16"                           ; string offset=594
	.asciz	"f32"                           ; string offset=598
	.asciz	"f64"                           ; string offset=602
	.asciz	"y_offset"                      ; string offset=606
	.asciz	"x_offset"                      ; string offset=615
	.asciz	"z_row"                         ; string offset=624
	.asciz	"x_enable"                      ; string offset=630
	.asciz	"y_enable"                      ; string offset=639
	.asciz	"i"                             ; string offset=648
	.asciz	"j"                             ; string offset=650
	.asciz	"fp16"                          ; string offset=652
	.section	__DWARF,__apple_names,regular,debug
Lnames_begin:
	.long	1212240712                      ; Header Magic
	.short	1                               ; Header Version
	.short	0                               ; Header Hash Function
	.long	9                               ; Header Bucket Count
	.long	9                               ; Header Hash Count
	.long	12                              ; Header Data Length
	.long	0                               ; HeaderData Die Offset Base
	.long	1                               ; HeaderData Atom Count
	.short	1                               ; DW_ATOM_die_offset
	.short	6                               ; DW_FORM_data4
	.long	-1                              ; Bucket 0
	.long	0                               ; Bucket 1
	.long	2                               ; Bucket 2
	.long	-1                              ; Bucket 3
	.long	3                               ; Bucket 4
	.long	4                               ; Bucket 5
	.long	5                               ; Bucket 6
	.long	-1                              ; Bucket 7
	.long	-1                              ; Bucket 8
	.long	226778194                       ; Hash in Bucket 1
	.long	-1685188182                     ; Hash in Bucket 1
	.long	-224174954                      ; Hash in Bucket 2
	.long	-1820646801                     ; Hash in Bucket 4
	.long	-1820646863                     ; Hash in Bucket 5
	.long	-1820646700                     ; Hash in Bucket 6
	.long	-1797394687                     ; Hash in Bucket 6
	.long	-1723867585                     ; Hash in Bucket 6
	.long	-1604089564                     ; Hash in Bucket 6
.set Lset678, LNames2-Lnames_begin      ; Offset in Bucket 1
	.long	Lset678
.set Lset679, LNames5-Lnames_begin      ; Offset in Bucket 1
	.long	Lset679
.set Lset680, LNames0-Lnames_begin      ; Offset in Bucket 2
	.long	Lset680
.set Lset681, LNames4-Lnames_begin      ; Offset in Bucket 4
	.long	Lset681
.set Lset682, LNames7-Lnames_begin      ; Offset in Bucket 5
	.long	Lset682
.set Lset683, LNames6-Lnames_begin      ; Offset in Bucket 6
	.long	Lset683
.set Lset684, LNames1-Lnames_begin      ; Offset in Bucket 6
	.long	Lset684
.set Lset685, LNames3-Lnames_begin      ; Offset in Bucket 6
	.long	Lset685
.set Lset686, LNames8-Lnames_begin      ; Offset in Bucket 6
	.long	Lset686
LNames2:
	.long	281                             ; load_xy_reg
	.long	5                               ; Num DIEs
	.long	597
	.long	653
	.long	1613
	.long	2075
	.long	2131
	.long	0
LNames5:
	.long	404                             ; load_xy_reg_fma32
	.long	1                               ; Num DIEs
	.long	1532
	.long	0
LNames0:
	.long	191                             ; parse_writemask
	.long	6                               ; Num DIEs
	.long	477
	.long	537
	.long	1145
	.long	1205
	.long	1955
	.long	2015
	.long	0
LNames4:
	.long	386                             ; emulate_AMX_FMA32
	.long	1                               ; Num DIEs
	.long	990
	.long	0
LNames7:
	.long	441                             ; emulate_AMX_FMA16
	.long	1                               ; Num DIEs
	.long	1800
	.long	0
LNames6:
	.long	352                             ; emulate_AMX_FMA64
	.long	1                               ; Num DIEs
	.long	322
	.long	0
LNames1:
	.long	422                             ; fma16_alu
	.long	2                               ; Num DIEs
	.long	2228
	.long	2327
	.long	0
LNames3:
	.long	370                             ; fma32_alu
	.long	3                               ; Num DIEs
	.long	1307
	.long	1406
	.long	2402
	.long	0
LNames8:
	.long	314                             ; fma64_alu
	.long	2                               ; Num DIEs
	.long	750
	.long	849
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
.set Lset687, Ltypes0-Ltypes_begin      ; Offset in Bucket 0
	.long	Lset687
.set Lset688, Ltypes17-Ltypes_begin     ; Offset in Bucket 1
	.long	Lset688
.set Lset689, Ltypes11-Ltypes_begin     ; Offset in Bucket 3
	.long	Lset689
.set Lset690, Ltypes4-Ltypes_begin      ; Offset in Bucket 3
	.long	Lset690
.set Lset691, Ltypes8-Ltypes_begin      ; Offset in Bucket 4
	.long	Lset691
.set Lset692, Ltypes12-Ltypes_begin     ; Offset in Bucket 4
	.long	Lset692
.set Lset693, Ltypes9-Ltypes_begin      ; Offset in Bucket 4
	.long	Lset693
.set Lset694, Ltypes7-Ltypes_begin      ; Offset in Bucket 4
	.long	Lset694
.set Lset695, Ltypes1-Ltypes_begin      ; Offset in Bucket 5
	.long	Lset695
.set Lset696, Ltypes16-Ltypes_begin     ; Offset in Bucket 5
	.long	Lset696
.set Lset697, Ltypes15-Ltypes_begin     ; Offset in Bucket 5
	.long	Lset697
.set Lset698, Ltypes10-Ltypes_begin     ; Offset in Bucket 5
	.long	Lset698
.set Lset699, Ltypes13-Ltypes_begin     ; Offset in Bucket 6
	.long	Lset699
.set Lset700, Ltypes3-Ltypes_begin      ; Offset in Bucket 6
	.long	Lset700
.set Lset701, Ltypes18-Ltypes_begin     ; Offset in Bucket 7
	.long	Lset701
.set Lset702, Ltypes14-Ltypes_begin     ; Offset in Bucket 7
	.long	Lset702
.set Lset703, Ltypes2-Ltypes_begin      ; Offset in Bucket 8
	.long	Lset703
.set Lset704, Ltypes19-Ltypes_begin     ; Offset in Bucket 8
	.long	Lset704
.set Lset705, Ltypes5-Ltypes_begin      ; Offset in Bucket 8
	.long	Lset705
.set Lset706, Ltypes6-Ltypes_begin      ; Offset in Bucket 9
	.long	Lset706
Ltypes0:
	.long	216                             ; unsigned long long
	.long	1                               ; Num DIEs
	.long	162
	.short	36
	.byte	0
	.long	0
Ltypes17:
	.long	459                             ; __ARRAY_SIZE_TYPE__
	.long	1                               ; Num DIEs
	.long	2472
	.short	36
	.byte	0
	.long	0
Ltypes11:
	.long	380                             ; float
	.long	1                               ; Num DIEs
	.long	983
	.short	36
	.byte	0
	.long	0
Ltypes4:
	.long	548                             ; signed char
	.long	1                               ; Num DIEs
	.long	2760
	.short	36
	.byte	0
	.long	0
Ltypes8:
	.long	207                             ; uint64_t
	.long	1                               ; Num DIEs
	.long	151
	.short	22
	.byte	0
	.long	0
Ltypes12:
	.long	495                             ; amx_reg
	.long	2                               ; Num DIEs
	.long	2555
	.short	22
	.byte	0
	.long	2566
	.short	23
	.byte	0
	.long	0
Ltypes9:
	.long	582                             ; int32_t
	.long	1                               ; Num DIEs
	.long	2809
	.short	22
	.byte	0
	.long	0
Ltypes7:
	.long	177                             ; unsigned char
	.long	1                               ; Num DIEs
	.long	71
	.short	36
	.byte	0
	.long	0
Ltypes1:
	.long	239                             ; uint32_t
	.long	1                               ; Num DIEs
	.long	169
	.short	22
	.byte	0
	.long	0
Ltypes16:
	.long	432                             ; _Float16
	.long	1                               ; Num DIEs
	.long	1793
	.short	36
	.byte	0
	.long	0
Ltypes15:
	.long	485                             ; amx_state
	.long	2                               ; Num DIEs
	.long	2484
	.short	22
	.byte	0
	.long	2495
	.short	19
	.byte	0
	.long	0
Ltypes10:
	.long	248                             ; unsigned int
	.long	1                               ; Num DIEs
	.long	180
	.short	36
	.byte	0
	.long	0
Ltypes13:
	.long	169                             ; uint8_t
	.long	1                               ; Num DIEs
	.long	60
	.short	22
	.byte	0
	.long	0
Ltypes3:
	.long	564                             ; int16_t
	.long	1                               ; Num DIEs
	.long	2779
	.short	22
	.byte	0
	.long	0
Ltypes18:
	.long	541                             ; int8_t
	.long	1                               ; Num DIEs
	.long	2749
	.short	22
	.byte	0
	.long	0
Ltypes14:
	.long	510                             ; uint16_t
	.long	1                               ; Num DIEs
	.long	2707
	.short	22
	.byte	0
	.long	0
Ltypes2:
	.long	590                             ; int
	.long	1                               ; Num DIEs
	.long	2820
	.short	36
	.byte	0
	.long	0
Ltypes19:
	.long	519                             ; unsigned short
	.long	1                               ; Num DIEs
	.long	2718
	.short	36
	.byte	0
	.long	0
Ltypes5:
	.long	324                             ; double
	.long	1                               ; Num DIEs
	.long	315
	.short	36
	.byte	0
	.long	0
Ltypes6:
	.long	572                             ; short
	.long	1                               ; Num DIEs
	.long	2790
	.short	36
	.byte	0
	.long	0
.subsections_via_symbols
	.section	__DWARF,__debug_line,regular,debug
Lsection_line:
Lline_table_start0:
