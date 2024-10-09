	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 14, 4
	.file	1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types" "_uint8_t.h"
	.globl	_emulate_AMX_FMS64              ; -- Begin function emulate_AMX_FMS64
	.p2align	2
_emulate_AMX_FMS64:                     ; @emulate_AMX_FMS64
Lfunc_begin0:
	.file	2 "/Users/tarindujayatilaka/Documents/superopt/apple-amx" "fms.c"
	.loc	2 63 0                          ; fms.c:63:0
	.cfi_startproc
; %bb.0:
	;DEBUG_VALUE: emulate_AMX_FMS64:state <- $x0
	;DEBUG_VALUE: emulate_AMX_FMS64:operand <- $x1
	;DEBUG_VALUE: emulate_AMX_FMS64:operand <- $x1
	;DEBUG_VALUE: emulate_AMX_FMS64:state <- $x0
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
	.loc	2 64 33 prologue_end            ; fms.c:64:33
	and	x23, x1, #0x1ff
Ltmp1:
	;DEBUG_VALUE: emulate_AMX_FMS64:y_offset <- $x23
	.loc	2 65 41                         ; fms.c:65:41
	ubfx	x8, x1, #10, #9
Ltmp2:
	;DEBUG_VALUE: emulate_AMX_FMS64:x_offset <- $x8
	.loc	2 66 38                         ; fms.c:66:38
	ubfx	x15, x1, #20, #6
Ltmp3:
	;DEBUG_VALUE: emulate_AMX_FMS64:z_row <- $x15
	.loc	2 67 49                         ; fms.c:67:49
	lsr	x9, x1, #41
	mov	w10, #3
Ltmp4:
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: parse_writemask:g <- 8
	;DEBUG_VALUE: parse_writemask:val <- $w9
	.file	3 "/Users/tarindujayatilaka/Documents/superopt/apple-amx" "./emulate.h"
	.loc	3 67 9 is_stmt 0                ; ./emulate.h:67:9
	ands	w11, w10, w9, lsr #5
Ltmp5:
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	.loc	3 0 9                           ; ./emulate.h:0:9
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
	;DEBUG_VALUE: emulate_AMX_FMS64:operand <- $x19
	mov	x20, x0
Ltmp9:
	;DEBUG_VALUE: emulate_AMX_FMS64:state <- $x20
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
	;DEBUG_VALUE: emulate_AMX_FMS64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS64:operand <- $x19
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:val <- $w9
	;DEBUG_VALUE: parse_writemask:g <- 8
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_FMS64:z_row <- $x15
	;DEBUG_VALUE: emulate_AMX_FMS64:x_offset <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS64:y_offset <- $x23
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
	;DEBUG_VALUE: emulate_AMX_FMS64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS64:operand <- $x19
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:val <- $w9
	;DEBUG_VALUE: parse_writemask:g <- 8
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_FMS64:z_row <- $x15
	;DEBUG_VALUE: emulate_AMX_FMS64:x_offset <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS64:y_offset <- $x23
	.loc	3 0 16 is_stmt 0                ; ./emulate.h:0:16
	mov	x24, #-1
	.loc	3 88 13 is_stmt 1               ; ./emulate.h:88:13
	cbz	w9, LBB0_8
Ltmp15:
; %bb.3:
	;DEBUG_VALUE: emulate_AMX_FMS64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS64:operand <- $x19
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:val <- $w9
	;DEBUG_VALUE: parse_writemask:g <- 8
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_FMS64:z_row <- $x15
	;DEBUG_VALUE: emulate_AMX_FMS64:x_offset <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS64:y_offset <- $x23
	.loc	3 91 22                         ; ./emulate.h:91:22
	lsl	x9, x24, x9
Ltmp16:
	.loc	3 0 22 is_stmt 0                ; ./emulate.h:0:22
	b	LBB0_6
Ltmp17:
LBB0_4:
	;DEBUG_VALUE: emulate_AMX_FMS64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS64:operand <- $x19
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:val <- $w9
	;DEBUG_VALUE: parse_writemask:g <- 8
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_FMS64:z_row <- $x15
	;DEBUG_VALUE: emulate_AMX_FMS64:x_offset <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS64:y_offset <- $x23
	mov	x24, #-1
	.loc	3 93 13 is_stmt 1               ; ./emulate.h:93:13
	cbz	w9, LBB0_8
Ltmp18:
; %bb.5:
	;DEBUG_VALUE: emulate_AMX_FMS64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS64:operand <- $x19
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:val <- $w9
	;DEBUG_VALUE: parse_writemask:g <- 8
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_FMS64:z_row <- $x15
	;DEBUG_VALUE: emulate_AMX_FMS64:x_offset <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS64:y_offset <- $x23
	.loc	3 96 22                         ; ./emulate.h:96:22
	lsr	x9, x24, x9
Ltmp19:
LBB0_6:
	;DEBUG_VALUE: emulate_AMX_FMS64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS64:operand <- $x19
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:g <- 8
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_FMS64:z_row <- $x15
	;DEBUG_VALUE: emulate_AMX_FMS64:x_offset <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS64:y_offset <- $x23
	.loc	3 0 0 is_stmt 0                 ; ./emulate.h:0:0
	mvn	x24, x9
	b	LBB0_8
Ltmp20:
LBB0_7:
	;DEBUG_VALUE: emulate_AMX_FMS64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS64:operand <- $x19
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:val <- $w9
	;DEBUG_VALUE: parse_writemask:g <- 8
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_FMS64:z_row <- $x15
	;DEBUG_VALUE: emulate_AMX_FMS64:x_offset <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS64:y_offset <- $x23
	mov	w10, #255
	.loc	3 86 30 is_stmt 1               ; ./emulate.h:86:30
	lsl	x24, x10, x9
Ltmp21:
LBB0_8:
	;DEBUG_VALUE: emulate_AMX_FMS64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS64:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMS64:z_row <- $x15
	;DEBUG_VALUE: emulate_AMX_FMS64:x_offset <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS64:y_offset <- $x23
	;DEBUG_VALUE: emulate_AMX_FMS64:x_enable <- $x24
	.loc	2 68 49                         ; fms.c:68:49
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
	;DEBUG_VALUE: emulate_AMX_FMS64:z_row <- [$sp+0]
	br	x13
Ltmp28:
LBB0_9:
	;DEBUG_VALUE: emulate_AMX_FMS64:z_row <- [$sp+0]
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:val <- $w9
	;DEBUG_VALUE: parse_writemask:g <- 8
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_FMS64:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS64:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMS64:x_offset <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS64:y_offset <- $x23
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
	;DEBUG_VALUE: emulate_AMX_FMS64:z_row <- [$sp+0]
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:val <- $w9
	;DEBUG_VALUE: parse_writemask:g <- 8
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_FMS64:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS64:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMS64:x_offset <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS64:y_offset <- $x23
	.loc	3 0 16 is_stmt 0                ; ./emulate.h:0:16
	mov	x25, #-1
	.loc	3 88 13 is_stmt 1               ; ./emulate.h:88:13
	cbz	w9, LBB0_16
Ltmp32:
; %bb.11:
	;DEBUG_VALUE: emulate_AMX_FMS64:z_row <- [$sp+0]
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:val <- $w9
	;DEBUG_VALUE: parse_writemask:g <- 8
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_FMS64:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS64:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMS64:x_offset <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS64:y_offset <- $x23
	.loc	3 91 22                         ; ./emulate.h:91:22
	lsl	x9, x25, x9
Ltmp33:
	.loc	3 0 22 is_stmt 0                ; ./emulate.h:0:22
	b	LBB0_14
Ltmp34:
LBB0_12:
	;DEBUG_VALUE: emulate_AMX_FMS64:z_row <- [$sp+0]
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:val <- $w9
	;DEBUG_VALUE: parse_writemask:g <- 8
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_FMS64:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS64:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMS64:x_offset <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS64:y_offset <- $x23
	mov	x25, #-1
	.loc	3 93 13 is_stmt 1               ; ./emulate.h:93:13
	cbz	w9, LBB0_16
Ltmp35:
; %bb.13:
	;DEBUG_VALUE: emulate_AMX_FMS64:z_row <- [$sp+0]
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:val <- $w9
	;DEBUG_VALUE: parse_writemask:g <- 8
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_FMS64:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS64:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMS64:x_offset <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS64:y_offset <- $x23
	.loc	3 96 22                         ; ./emulate.h:96:22
	lsr	x9, x25, x9
Ltmp36:
LBB0_14:
	;DEBUG_VALUE: emulate_AMX_FMS64:z_row <- [$sp+0]
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:g <- 8
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_FMS64:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS64:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMS64:x_offset <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS64:y_offset <- $x23
	.loc	3 0 0 is_stmt 0                 ; ./emulate.h:0:0
	mvn	x25, x9
	b	LBB0_16
Ltmp37:
LBB0_15:
	;DEBUG_VALUE: emulate_AMX_FMS64:z_row <- [$sp+0]
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:val <- $w9
	;DEBUG_VALUE: parse_writemask:g <- 8
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_FMS64:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS64:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMS64:x_offset <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS64:y_offset <- $x23
	mov	w10, #255
	.loc	3 86 30 is_stmt 1               ; ./emulate.h:86:30
	lsl	x25, x10, x9
Ltmp38:
LBB0_16:
	;DEBUG_VALUE: emulate_AMX_FMS64:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMS64:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS64:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMS64:x_offset <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS64:y_offset <- $x23
	;DEBUG_VALUE: emulate_AMX_FMS64:y_enable <- $x25
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
	mov	w27, #64
	.loc	3 43 5                          ; ./emulate.h:43:5
	cmp	x8, #449
	csel	x2, x27, x9, lo
	add	x26, sp, #72
	.loc	3 44 5                          ; ./emulate.h:44:5
	add	x21, x26, x9
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
	.loc	2 73 27                         ; fms.c:73:27
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
	csel	x2, x27, x8, lo
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
	b	LBB0_20
Ltmp48:
LBB0_17:                                ;   in Loop: Header=BB0_20 Depth=1
	;DEBUG_VALUE: fms64_alu:z <- $d0
	;DEBUG_VALUE: fms64_alu:x <- $d1
	;DEBUG_VALUE: fms64_alu:y <- $d2
	;DEBUG_VALUE: fms64_alu:operand <- $x19
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS64:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMS64:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMS64:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS64:operand <- $x19
	.loc	2 11 22 is_stmt 1               ; fms.c:11:22
	fsub	d0, d0, d2
Ltmp49:
LBB0_18:                                ;   in Loop: Header=BB0_20 Depth=1
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS64:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMS64:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMS64:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS64:operand <- $x19
	.loc	2 79 16                         ; fms.c:79:16
	str	d0, [x9, x8, lsl #3]
Ltmp50:
LBB0_19:                                ;   in Loop: Header=BB0_20 Depth=1
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS64:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMS64:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMS64:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS64:operand <- $x19
	.loc	2 75 29                         ; fms.c:75:29
	add	x8, x8, #1
Ltmp51:
	;DEBUG_VALUE: i <- $x8
	.loc	2 75 5 is_stmt 0                ; fms.c:75:5
	cmp	x8, #8
	b.eq	LBB0_43
Ltmp52:
LBB0_20:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_26 Depth 2
	;DEBUG_VALUE: emulate_AMX_FMS64:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMS64:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMS64:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS64:operand <- $x19
	;DEBUG_VALUE: i <- $x8
	.loc	2 76 31 is_stmt 1               ; fms.c:76:31
	lsl	x14, x8, #3
Ltmp53:
	.loc	2 76 13 is_stmt 0               ; fms.c:76:13
	lsr	x15, x24, x14
	tbz	w15, #0, LBB0_19
Ltmp54:
; %bb.21:                               ;   in Loop: Header=BB0_20 Depth=1
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS64:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMS64:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMS64:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS64:operand <- $x19
	.loc	2 77 13 is_stmt 1               ; fms.c:77:13
	tbnz	x19, #63, LBB0_35
Ltmp55:
; %bb.22:                               ;   in Loop: Header=BB0_20 Depth=1
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS64:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMS64:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMS64:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS64:operand <- $x19
	;DEBUG_VALUE: j <- 0
	.loc	2 0 13 is_stmt 0                ; fms.c:0:13
	mov	x15, #0
	b	LBB0_26
Ltmp56:
LBB0_23:                                ;   in Loop: Header=BB0_26 Depth=2
	;DEBUG_VALUE: fms64_alu:z <- $d0
	;DEBUG_VALUE: fms64_alu:x <- $d1
	;DEBUG_VALUE: fms64_alu:y <- $d2
	;DEBUG_VALUE: fms64_alu:operand <- $x19
	;DEBUG_VALUE: j <- [DW_OP_consts 8, DW_OP_div, DW_OP_stack_value] $x15
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS64:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMS64:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMS64:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS64:operand <- $x19
	.loc	2 11 22 is_stmt 1               ; fms.c:11:22
	fsub	d0, d0, d2
Ltmp57:
LBB0_24:                                ;   in Loop: Header=BB0_26 Depth=2
	;DEBUG_VALUE: j <- [DW_OP_consts 8, DW_OP_div, DW_OP_stack_value] $x15
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS64:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMS64:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMS64:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS64:operand <- $x19
	.loc	2 84 20                         ; fms.c:84:20
	str	d0, [x16, x8, lsl #3]
Ltmp58:
LBB0_25:                                ;   in Loop: Header=BB0_26 Depth=2
	;DEBUG_VALUE: j <- [DW_OP_consts 8, DW_OP_div, DW_OP_stack_value] $x15
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS64:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMS64:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMS64:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS64:operand <- $x19
	;DEBUG_VALUE: j <- [DW_OP_consts 8, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] $x15
	.loc	2 81 31                         ; fms.c:81:31
	add	x15, x15, #8
Ltmp59:
	.loc	2 81 13 is_stmt 0               ; fms.c:81:13
	cmp	x15, #64
	b.eq	LBB0_19
Ltmp60:
LBB0_26:                                ;   Parent Loop BB0_20 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS64:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMS64:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMS64:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS64:operand <- $x19
	;DEBUG_VALUE: j <- [DW_OP_consts 8, DW_OP_div, DW_OP_stack_value] $x15
	.loc	2 82 21 is_stmt 1               ; fms.c:82:21
	lsr	x16, x25, x15
	tbz	w16, #0, LBB0_25
Ltmp61:
; %bb.27:                               ;   in Loop: Header=BB0_26 Depth=2
	;DEBUG_VALUE: j <- [DW_OP_consts 8, DW_OP_div, DW_OP_stack_value] $x15
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS64:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMS64:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMS64:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS64:operand <- $x19
	.loc	2 83 47                         ; fms.c:83:47
	orr	x16, x10, x15
	.loc	2 83 30 is_stmt 0               ; fms.c:83:30
	add	x16, x20, x16, lsl #6
	.loc	2 84 32 is_stmt 1               ; fms.c:84:32
	ldr	d1, [x26, x14]
	.loc	2 83 30                         ; fms.c:83:30
	add	x16, x16, #1024
Ltmp62:
	;DEBUG_VALUE: z <- undef
	.loc	2 84 38                         ; fms.c:84:38
	ldr	d2, [x28, x15]
	.loc	2 84 44 is_stmt 0               ; fms.c:84:44
	ldr	d0, [x16, x14]
Ltmp63:
	;DEBUG_VALUE: fms64_alu:operand <- $x19
	;DEBUG_VALUE: fms64_alu:y <- $d2
	;DEBUG_VALUE: fms64_alu:x <- $d1
	;DEBUG_VALUE: fms64_alu:z <- $d0
	.loc	2 7 5 is_stmt 1                 ; fms.c:7:5
	cmp	x11, #6
	b.hi	LBB0_32
Ltmp64:
; %bb.28:                               ;   in Loop: Header=BB0_26 Depth=2
	;DEBUG_VALUE: fms64_alu:z <- $d0
	;DEBUG_VALUE: fms64_alu:x <- $d1
	;DEBUG_VALUE: fms64_alu:y <- $d2
	;DEBUG_VALUE: fms64_alu:operand <- $x19
	;DEBUG_VALUE: j <- [DW_OP_consts 8, DW_OP_div, DW_OP_stack_value] $x15
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS64:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMS64:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMS64:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS64:operand <- $x19
	.loc	2 0 5 is_stmt 0                 ; fms.c:0:5
Ltmp65:
	adr	x17, Ltmp65
	ldrsw	x0, [x12, x11, lsl #2]
	add	x17, x17, x0
	br	x17
Ltmp66:
LBB0_29:                                ;   in Loop: Header=BB0_26 Depth=2
	;DEBUG_VALUE: fms64_alu:z <- $d0
	;DEBUG_VALUE: fms64_alu:x <- $d1
	;DEBUG_VALUE: fms64_alu:y <- $d2
	;DEBUG_VALUE: fms64_alu:operand <- $x19
	;DEBUG_VALUE: j <- [DW_OP_consts 8, DW_OP_div, DW_OP_stack_value] $x15
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS64:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMS64:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMS64:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS64:operand <- $x19
	.loc	2 8 20 is_stmt 1                ; fms.c:8:20
	fneg	d0, d1
Ltmp67:
	.loc	2 8 23 is_stmt 0                ; fms.c:8:23
	fmul	d0, d2, d0
	b	LBB0_24
Ltmp68:
LBB0_30:                                ;   in Loop: Header=BB0_26 Depth=2
	;DEBUG_VALUE: fms64_alu:z <- $d0
	;DEBUG_VALUE: fms64_alu:x <- $d1
	;DEBUG_VALUE: fms64_alu:y <- $d2
	;DEBUG_VALUE: fms64_alu:operand <- $x19
	;DEBUG_VALUE: j <- [DW_OP_consts 8, DW_OP_div, DW_OP_stack_value] $x15
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS64:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMS64:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMS64:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS64:operand <- $x19
	.loc	2 9 22 is_stmt 1                ; fms.c:9:22
	fsub	d0, d0, d1
Ltmp69:
	.loc	2 0 22 is_stmt 0                ; fms.c:0:22
	b	LBB0_24
Ltmp70:
LBB0_31:                                ;   in Loop: Header=BB0_26 Depth=2
	;DEBUG_VALUE: fms64_alu:z <- $d0
	;DEBUG_VALUE: fms64_alu:x <- $d1
	;DEBUG_VALUE: fms64_alu:y <- $d2
	;DEBUG_VALUE: fms64_alu:operand <- $x19
	;DEBUG_VALUE: j <- [DW_OP_consts 8, DW_OP_div, DW_OP_stack_value] $x15
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS64:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMS64:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMS64:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS64:operand <- $x19
	.loc	2 10 20 is_stmt 1               ; fms.c:10:20
	fneg	d0, d1
Ltmp71:
	.loc	2 0 20 is_stmt 0                ; fms.c:0:20
	b	LBB0_24
Ltmp72:
LBB0_32:                                ;   in Loop: Header=BB0_26 Depth=2
	;DEBUG_VALUE: fms64_alu:z <- $d0
	;DEBUG_VALUE: fms64_alu:x <- $d1
	;DEBUG_VALUE: fms64_alu:y <- $d2
	;DEBUG_VALUE: fms64_alu:operand <- $x19
	;DEBUG_VALUE: j <- [DW_OP_consts 8, DW_OP_div, DW_OP_stack_value] $x15
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS64:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMS64:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMS64:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS64:operand <- $x19
	.loc	2 17 5 is_stmt 1                ; fms.c:17:5
	; InlineAsm Start
	fmsub	d0, d1, d2, d0
	; InlineAsm End
Ltmp73:
	;DEBUG_VALUE: fms64_alu:out <- $d0
	.loc	2 0 5 is_stmt 0                 ; fms.c:0:5
	b	LBB0_24
Ltmp74:
LBB0_33:                                ;   in Loop: Header=BB0_26 Depth=2
	;DEBUG_VALUE: fms64_alu:z <- $d0
	;DEBUG_VALUE: fms64_alu:x <- $d1
	;DEBUG_VALUE: fms64_alu:y <- $d2
	;DEBUG_VALUE: fms64_alu:operand <- $x19
	;DEBUG_VALUE: j <- [DW_OP_consts 8, DW_OP_div, DW_OP_stack_value] $x15
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS64:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMS64:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMS64:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS64:operand <- $x19
	.loc	2 12 20 is_stmt 1               ; fms.c:12:20
	fneg	d0, d2
Ltmp75:
	.loc	2 0 20 is_stmt 0                ; fms.c:0:20
	b	LBB0_24
Ltmp76:
LBB0_34:                                ;   in Loop: Header=BB0_26 Depth=2
	;DEBUG_VALUE: fms64_alu:z <- $d0
	;DEBUG_VALUE: fms64_alu:x <- $d1
	;DEBUG_VALUE: fms64_alu:y <- $d2
	;DEBUG_VALUE: fms64_alu:operand <- $x19
	;DEBUG_VALUE: j <- [DW_OP_consts 8, DW_OP_div, DW_OP_stack_value] $x15
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS64:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMS64:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMS64:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS64:operand <- $x19
	mov	x17, #-9223372036854775808
	fmov	d0, x17
	b	LBB0_24
Ltmp77:
LBB0_35:                                ;   in Loop: Header=BB0_20 Depth=1
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS64:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMS64:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMS64:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS64:operand <- $x19
	;DEBUG_VALUE: z <- undef
	.loc	2 79 28 is_stmt 1               ; fms.c:79:28
	ldr	d1, [x26, x14]
	.loc	2 79 34 is_stmt 0               ; fms.c:79:34
	ldr	d2, [x28, x14]
	.loc	2 79 40                         ; fms.c:79:40
	ldr	d0, [x9, x14]
Ltmp78:
	;DEBUG_VALUE: fms64_alu:operand <- $x19
	;DEBUG_VALUE: fms64_alu:y <- $d2
	;DEBUG_VALUE: fms64_alu:x <- $d1
	;DEBUG_VALUE: fms64_alu:z <- $d0
	.loc	2 7 5 is_stmt 1                 ; fms.c:7:5
	cmp	x11, #6
	b.hi	LBB0_38
Ltmp79:
; %bb.36:                               ;   in Loop: Header=BB0_20 Depth=1
	;DEBUG_VALUE: fms64_alu:z <- $d0
	;DEBUG_VALUE: fms64_alu:x <- $d1
	;DEBUG_VALUE: fms64_alu:y <- $d2
	;DEBUG_VALUE: fms64_alu:operand <- $x19
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS64:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMS64:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMS64:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS64:operand <- $x19
	.loc	2 0 5 is_stmt 0                 ; fms.c:0:5
Ltmp80:
	adr	x14, Ltmp80
	ldrsw	x15, [x13, x11, lsl #2]
	add	x14, x14, x15
	br	x14
Ltmp81:
LBB0_37:                                ;   in Loop: Header=BB0_20 Depth=1
	;DEBUG_VALUE: fms64_alu:z <- $d0
	;DEBUG_VALUE: fms64_alu:x <- $d1
	;DEBUG_VALUE: fms64_alu:y <- $d2
	;DEBUG_VALUE: fms64_alu:operand <- $x19
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS64:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMS64:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMS64:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS64:operand <- $x19
	.loc	2 8 20 is_stmt 1                ; fms.c:8:20
	fneg	d0, d1
Ltmp82:
	.loc	2 8 23 is_stmt 0                ; fms.c:8:23
	fmul	d0, d2, d0
	b	LBB0_18
Ltmp83:
LBB0_38:                                ;   in Loop: Header=BB0_20 Depth=1
	;DEBUG_VALUE: fms64_alu:z <- $d0
	;DEBUG_VALUE: fms64_alu:x <- $d1
	;DEBUG_VALUE: fms64_alu:y <- $d2
	;DEBUG_VALUE: fms64_alu:operand <- $x19
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS64:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMS64:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMS64:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS64:operand <- $x19
	.loc	2 17 5 is_stmt 1                ; fms.c:17:5
	; InlineAsm Start
	fmsub	d0, d1, d2, d0
	; InlineAsm End
Ltmp84:
	;DEBUG_VALUE: fms64_alu:out <- $d0
	.loc	2 0 5 is_stmt 0                 ; fms.c:0:5
	b	LBB0_18
Ltmp85:
LBB0_39:                                ;   in Loop: Header=BB0_20 Depth=1
	;DEBUG_VALUE: fms64_alu:z <- $d0
	;DEBUG_VALUE: fms64_alu:x <- $d1
	;DEBUG_VALUE: fms64_alu:y <- $d2
	;DEBUG_VALUE: fms64_alu:operand <- $x19
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS64:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMS64:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMS64:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS64:operand <- $x19
	.loc	2 9 22 is_stmt 1                ; fms.c:9:22
	fsub	d0, d0, d1
Ltmp86:
	.loc	2 0 22 is_stmt 0                ; fms.c:0:22
	b	LBB0_18
Ltmp87:
LBB0_40:                                ;   in Loop: Header=BB0_20 Depth=1
	;DEBUG_VALUE: fms64_alu:z <- $d0
	;DEBUG_VALUE: fms64_alu:x <- $d1
	;DEBUG_VALUE: fms64_alu:y <- $d2
	;DEBUG_VALUE: fms64_alu:operand <- $x19
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS64:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMS64:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMS64:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS64:operand <- $x19
	.loc	2 10 20 is_stmt 1               ; fms.c:10:20
	fneg	d0, d1
Ltmp88:
	.loc	2 0 20 is_stmt 0                ; fms.c:0:20
	b	LBB0_18
Ltmp89:
LBB0_41:                                ;   in Loop: Header=BB0_20 Depth=1
	;DEBUG_VALUE: fms64_alu:z <- $d0
	;DEBUG_VALUE: fms64_alu:x <- $d1
	;DEBUG_VALUE: fms64_alu:y <- $d2
	;DEBUG_VALUE: fms64_alu:operand <- $x19
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS64:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMS64:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMS64:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS64:operand <- $x19
	.loc	2 12 20 is_stmt 1               ; fms.c:12:20
	fneg	d0, d2
Ltmp90:
	.loc	2 0 20 is_stmt 0                ; fms.c:0:20
	b	LBB0_18
Ltmp91:
LBB0_42:                                ;   in Loop: Header=BB0_20 Depth=1
	;DEBUG_VALUE: fms64_alu:z <- $d0
	;DEBUG_VALUE: fms64_alu:x <- $d1
	;DEBUG_VALUE: fms64_alu:y <- $d2
	;DEBUG_VALUE: fms64_alu:operand <- $x19
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS64:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMS64:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMS64:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS64:operand <- $x19
	mov	x14, #-9223372036854775808
	fmov	d0, x14
	b	LBB0_18
Ltmp92:
LBB0_43:
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS64:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMS64:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMS64:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS64:operand <- $x19
	ldur	x8, [x29, #-88]
Lloh11:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh12:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh13:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB0_45
Ltmp93:
; %bb.44:
	;DEBUG_VALUE: emulate_AMX_FMS64:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMS64:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMS64:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS64:operand <- $x19
	.loc	2 88 1 is_stmt 1                ; fms.c:88:1
	ldp	x29, x30, [sp, #224]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #208]            ; 16-byte Folded Reload
Ltmp94:
	;DEBUG_VALUE: emulate_AMX_FMS64:state <- [DW_OP_LLVM_entry_value 1] $x0
	;DEBUG_VALUE: emulate_AMX_FMS64:operand <- [DW_OP_LLVM_entry_value 1] $x1
	ldp	x22, x21, [sp, #192]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #176]            ; 16-byte Folded Reload
Ltmp95:
	ldp	x26, x25, [sp, #160]            ; 16-byte Folded Reload
Ltmp96:
	ldp	x28, x27, [sp, #144]            ; 16-byte Folded Reload
	add	sp, sp, #240
Ltmp97:
	ret
Ltmp98:
LBB0_45:
	;DEBUG_VALUE: emulate_AMX_FMS64:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMS64:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMS64:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS64:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS64:operand <- $x19
	.loc	2 0 1 is_stmt 0                 ; fms.c:0:1
	bl	___stack_chk_fail
Ltmp99:
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
	.long	LBB0_37-Ltmp80
	.long	LBB0_39-Ltmp80
	.long	LBB0_40-Ltmp80
	.long	LBB0_17-Ltmp80
	.long	LBB0_41-Ltmp80
	.long	LBB0_18-Ltmp80
	.long	LBB0_42-Ltmp80
	.p2align	2
lJTI0_3:
	.long	LBB0_29-Ltmp65
	.long	LBB0_30-Ltmp65
	.long	LBB0_31-Ltmp65
	.long	LBB0_23-Ltmp65
	.long	LBB0_33-Ltmp65
	.long	LBB0_24-Ltmp65
	.long	LBB0_34-Ltmp65
	.file	4 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types" "_uint64_t.h"
	.file	5 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types" "_uint32_t.h"
                                        ; -- End function
	.globl	_emulate_AMX_FMS32              ; -- Begin function emulate_AMX_FMS32
	.p2align	2
_emulate_AMX_FMS32:                     ; @emulate_AMX_FMS32
Lfunc_begin1:
	.loc	2 90 0 is_stmt 1                ; fms.c:90:0
	.cfi_startproc
; %bb.0:
	;DEBUG_VALUE: emulate_AMX_FMS32:state <- $x0
	;DEBUG_VALUE: emulate_AMX_FMS32:operand <- $x1
	;DEBUG_VALUE: emulate_AMX_FMS32:operand <- $x1
	;DEBUG_VALUE: emulate_AMX_FMS32:state <- $x0
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
Ltmp100:
	.loc	2 91 33 prologue_end            ; fms.c:91:33
	and	x21, x1, #0x1ff
Ltmp101:
	;DEBUG_VALUE: emulate_AMX_FMS32:y_offset <- $x21
	.loc	2 92 41                         ; fms.c:92:41
	ubfx	x2, x1, #10, #9
Ltmp102:
	;DEBUG_VALUE: emulate_AMX_FMS32:x_offset <- $x2
	.loc	2 93 38                         ; fms.c:93:38
	ubfx	x26, x1, #20, #6
Ltmp103:
	;DEBUG_VALUE: emulate_AMX_FMS32:z_row <- $x26
	.loc	2 94 49                         ; fms.c:94:49
	lsr	x8, x1, #41
	mov	w9, #3
Ltmp104:
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: parse_writemask:g <- 4
	;DEBUG_VALUE: parse_writemask:val <- $w8
	.loc	3 67 9                          ; ./emulate.h:67:9
	ands	w10, w9, w8, lsr #5
Ltmp105:
	;DEBUG_VALUE: parse_writemask:mode <- $w10
	.loc	3 0 9 is_stmt 0                 ; ./emulate.h:0:9
	mov	w9, #4
	.loc	3 67 9                          ; ./emulate.h:67:9
	csinc	w9, w9, wzr, ne
	mul	w9, w9, w8
Ltmp106:
	;DEBUG_VALUE: parse_writemask:val <- $w9
	.loc	3 68 9 is_stmt 1                ; ./emulate.h:68:9
	and	w8, w9, #0x3f
Ltmp107:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:val <- $w8
	.loc	3 0 9 is_stmt 0                 ; ./emulate.h:0:9
	mov	x19, x1
Ltmp108:
	;DEBUG_VALUE: emulate_AMX_FMS32:operand <- $x19
	mov	x20, x0
Ltmp109:
	;DEBUG_VALUE: emulate_AMX_FMS32:state <- $x20
Lloh17:
	adrp	x11, lJTI1_0@PAGE
Lloh18:
	add	x11, x11, lJTI1_0@PAGEOFF
Ltmp110:
	adr	x12, Ltmp110
	ldrsw	x13, [x11, x10, lsl #2]
	add	x12, x12, x13
	br	x12
Ltmp111:
LBB1_1:
	;DEBUG_VALUE: emulate_AMX_FMS32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS32:operand <- $x19
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w10
	;DEBUG_VALUE: parse_writemask:val <- $w8
	;DEBUG_VALUE: parse_writemask:g <- 4
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_FMS32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMS32:x_offset <- $x2
	;DEBUG_VALUE: emulate_AMX_FMS32:y_offset <- $x21
	.loc	3 72 22 is_stmt 1               ; ./emulate.h:72:22
	sub	w10, w8, #1
Ltmp112:
	ubfiz	w9, w9, #2, #1
	mov	x11, #1085102592571150095
	lsl	x9, x11, x9
	cmp	w10, #2
	csinv	x9, x9, xzr, lo
Ltmp113:
	;DEBUG_VALUE: parse_writemask:all <- $x9
	.loc	3 83 16                         ; ./emulate.h:83:16
	cmp	w8, #3
	csel	x22, x9, xzr, lo
	b	LBB1_6
Ltmp114:
LBB1_2:
	;DEBUG_VALUE: emulate_AMX_FMS32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS32:operand <- $x19
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w10
	;DEBUG_VALUE: parse_writemask:val <- $w8
	;DEBUG_VALUE: parse_writemask:g <- 4
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_FMS32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMS32:x_offset <- $x2
	;DEBUG_VALUE: emulate_AMX_FMS32:y_offset <- $x21
	.loc	3 0 16 is_stmt 0                ; ./emulate.h:0:16
	mov	x9, #-1
	.loc	3 91 22 is_stmt 1               ; ./emulate.h:91:22
	lsl	x10, x9, x8
Ltmp115:
	.loc	3 0 22 is_stmt 0                ; ./emulate.h:0:22
	b	LBB1_4
Ltmp116:
LBB1_3:
	;DEBUG_VALUE: emulate_AMX_FMS32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS32:operand <- $x19
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w10
	;DEBUG_VALUE: parse_writemask:val <- $w8
	;DEBUG_VALUE: parse_writemask:g <- 4
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_FMS32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMS32:x_offset <- $x2
	;DEBUG_VALUE: emulate_AMX_FMS32:y_offset <- $x21
	mov	x9, #-1
	.loc	3 96 22 is_stmt 1               ; ./emulate.h:96:22
	lsr	x10, x9, x8
Ltmp117:
LBB1_4:
	;DEBUG_VALUE: emulate_AMX_FMS32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS32:operand <- $x19
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:val <- $w8
	;DEBUG_VALUE: parse_writemask:g <- 4
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_FMS32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMS32:x_offset <- $x2
	;DEBUG_VALUE: emulate_AMX_FMS32:y_offset <- $x21
	.loc	3 0 0 is_stmt 0                 ; ./emulate.h:0:0
	cmp	w8, #0
	csinv	x22, x9, x10, eq
	b	LBB1_6
Ltmp118:
LBB1_5:
	;DEBUG_VALUE: emulate_AMX_FMS32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS32:operand <- $x19
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w10
	;DEBUG_VALUE: parse_writemask:val <- $w8
	;DEBUG_VALUE: parse_writemask:g <- 4
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_FMS32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMS32:x_offset <- $x2
	;DEBUG_VALUE: emulate_AMX_FMS32:y_offset <- $x21
	mov	w9, #15
	.loc	3 86 30 is_stmt 1               ; ./emulate.h:86:30
	lsl	x22, x9, x8
Ltmp119:
LBB1_6:
	;DEBUG_VALUE: emulate_AMX_FMS32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS32:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMS32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMS32:x_offset <- $x2
	;DEBUG_VALUE: emulate_AMX_FMS32:y_offset <- $x21
	;DEBUG_VALUE: emulate_AMX_FMS32:x_enable <- $x22
	.loc	2 95 49                         ; fms.c:95:49
	lsr	x8, x19, #32
Ltmp120:
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: parse_writemask:g <- 4
	;DEBUG_VALUE: parse_writemask:val <- $w8
	.loc	3 66 61                         ; ./emulate.h:66:61
	lsr	x9, x19, #37
	.loc	3 67 9                          ; ./emulate.h:67:9
	ands	w10, w9, #0x3
Ltmp121:
	;DEBUG_VALUE: parse_writemask:mode <- $w10
	.loc	3 0 9 is_stmt 0                 ; ./emulate.h:0:9
	mov	w9, #4
	.loc	3 67 9                          ; ./emulate.h:67:9
	csinc	w9, w9, wzr, ne
	mul	w9, w9, w8
Ltmp122:
	;DEBUG_VALUE: parse_writemask:val <- $w9
	.loc	3 68 9 is_stmt 1                ; ./emulate.h:68:9
	and	w8, w9, #0x3f
Ltmp123:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:val <- $w8
	.loc	3 0 9 is_stmt 0                 ; ./emulate.h:0:9
Lloh19:
	adrp	x11, lJTI1_1@PAGE
Lloh20:
	add	x11, x11, lJTI1_1@PAGEOFF
Ltmp124:
	adr	x12, Ltmp124
	ldrsw	x13, [x11, x10, lsl #2]
	add	x12, x12, x13
	br	x12
Ltmp125:
LBB1_7:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w10
	;DEBUG_VALUE: parse_writemask:val <- $w8
	;DEBUG_VALUE: parse_writemask:g <- 4
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_FMS32:x_enable <- $x22
	;DEBUG_VALUE: emulate_AMX_FMS32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS32:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMS32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMS32:x_offset <- $x2
	;DEBUG_VALUE: emulate_AMX_FMS32:y_offset <- $x21
	.loc	3 72 22 is_stmt 1               ; ./emulate.h:72:22
	sub	w10, w8, #1
Ltmp126:
	ubfiz	w9, w9, #2, #1
	mov	x11, #1085102592571150095
	lsl	x9, x11, x9
	cmp	w10, #2
	csinv	x9, x9, xzr, lo
Ltmp127:
	;DEBUG_VALUE: parse_writemask:all <- $x9
	.loc	3 83 16                         ; ./emulate.h:83:16
	cmp	w8, #3
	csel	x23, x9, xzr, lo
	b	LBB1_12
Ltmp128:
LBB1_8:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w10
	;DEBUG_VALUE: parse_writemask:val <- $w8
	;DEBUG_VALUE: parse_writemask:g <- 4
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_FMS32:x_enable <- $x22
	;DEBUG_VALUE: emulate_AMX_FMS32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS32:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMS32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMS32:x_offset <- $x2
	;DEBUG_VALUE: emulate_AMX_FMS32:y_offset <- $x21
	.loc	3 0 16 is_stmt 0                ; ./emulate.h:0:16
	mov	x9, #-1
	.loc	3 91 22 is_stmt 1               ; ./emulate.h:91:22
	lsl	x10, x9, x8
Ltmp129:
	.loc	3 0 22 is_stmt 0                ; ./emulate.h:0:22
	b	LBB1_10
Ltmp130:
LBB1_9:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w10
	;DEBUG_VALUE: parse_writemask:val <- $w8
	;DEBUG_VALUE: parse_writemask:g <- 4
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_FMS32:x_enable <- $x22
	;DEBUG_VALUE: emulate_AMX_FMS32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS32:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMS32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMS32:x_offset <- $x2
	;DEBUG_VALUE: emulate_AMX_FMS32:y_offset <- $x21
	mov	x9, #-1
	.loc	3 96 22 is_stmt 1               ; ./emulate.h:96:22
	lsr	x10, x9, x8
Ltmp131:
LBB1_10:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:val <- $w8
	;DEBUG_VALUE: parse_writemask:g <- 4
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_FMS32:x_enable <- $x22
	;DEBUG_VALUE: emulate_AMX_FMS32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS32:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMS32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMS32:x_offset <- $x2
	;DEBUG_VALUE: emulate_AMX_FMS32:y_offset <- $x21
	.loc	3 0 0 is_stmt 0                 ; ./emulate.h:0:0
	cmp	w8, #0
	csinv	x23, x9, x10, eq
	b	LBB1_12
Ltmp132:
LBB1_11:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w10
	;DEBUG_VALUE: parse_writemask:val <- $w8
	;DEBUG_VALUE: parse_writemask:g <- 4
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_FMS32:x_enable <- $x22
	;DEBUG_VALUE: emulate_AMX_FMS32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS32:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMS32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMS32:x_offset <- $x2
	;DEBUG_VALUE: emulate_AMX_FMS32:y_offset <- $x21
	mov	w9, #15
	.loc	3 86 30 is_stmt 1               ; ./emulate.h:86:30
	lsl	x23, x9, x8
Ltmp133:
LBB1_12:
	;DEBUG_VALUE: emulate_AMX_FMS32:x_enable <- $x22
	;DEBUG_VALUE: emulate_AMX_FMS32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS32:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMS32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMS32:x_offset <- $x2
	;DEBUG_VALUE: emulate_AMX_FMS32:y_offset <- $x21
	;DEBUG_VALUE: emulate_AMX_FMS32:y_enable <- $x23
	.loc	2 99 54                         ; fms.c:99:54
	and	x3, x19, #0x2000000000000000
	add	x24, sp, #72
	.loc	2 99 5 is_stmt 0                ; fms.c:99:5
	add	x0, sp, #72
	mov	x1, x20
	bl	_load_xy_reg_fms32
Ltmp134:
	.loc	2 100 33 is_stmt 1              ; fms.c:100:33
	add	x1, x20, #512
	.loc	2 100 54 is_stmt 0              ; fms.c:100:54
	and	x3, x19, #0x1000000000000000
	add	x25, sp, #8
	.loc	2 100 5                         ; fms.c:100:5
	add	x0, sp, #8
	mov	x2, x21
	bl	_load_xy_reg_fms32
Ltmp135:
	;DEBUG_VALUE: i <- 0
	.loc	2 0 5                           ; fms.c:0:5
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
	b	LBB1_16
Ltmp136:
LBB1_13:                                ;   in Loop: Header=BB1_16 Depth=1
	;DEBUG_VALUE: fms32_alu:z <- $s0
	;DEBUG_VALUE: fms32_alu:x <- $s1
	;DEBUG_VALUE: fms32_alu:y <- $s2
	;DEBUG_VALUE: fms32_alu:operand <- $x19
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS32:y_enable <- $x23
	;DEBUG_VALUE: emulate_AMX_FMS32:x_enable <- $x22
	;DEBUG_VALUE: emulate_AMX_FMS32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS32:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMS32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMS32:y_offset <- $x21
	.loc	2 26 22 is_stmt 1               ; fms.c:26:22
	fsub	s0, s0, s2
Ltmp137:
LBB1_14:                                ;   in Loop: Header=BB1_16 Depth=1
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS32:y_enable <- $x23
	;DEBUG_VALUE: emulate_AMX_FMS32:x_enable <- $x22
	;DEBUG_VALUE: emulate_AMX_FMS32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS32:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMS32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMS32:y_offset <- $x21
	.loc	2 106 16                        ; fms.c:106:16
	str	s0, [x9, x8, lsl #2]
Ltmp138:
LBB1_15:                                ;   in Loop: Header=BB1_16 Depth=1
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS32:y_enable <- $x23
	;DEBUG_VALUE: emulate_AMX_FMS32:x_enable <- $x22
	;DEBUG_VALUE: emulate_AMX_FMS32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS32:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMS32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMS32:y_offset <- $x21
	.loc	2 102 30                        ; fms.c:102:30
	add	x8, x8, #1
Ltmp139:
	;DEBUG_VALUE: i <- $x8
	.loc	2 102 5 is_stmt 0               ; fms.c:102:5
	cmp	x8, #16
	b.eq	LBB1_39
Ltmp140:
LBB1_16:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_22 Depth 2
	;DEBUG_VALUE: emulate_AMX_FMS32:y_enable <- $x23
	;DEBUG_VALUE: emulate_AMX_FMS32:x_enable <- $x22
	;DEBUG_VALUE: emulate_AMX_FMS32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS32:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMS32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMS32:y_offset <- $x21
	;DEBUG_VALUE: i <- $x8
	.loc	2 103 31 is_stmt 1              ; fms.c:103:31
	lsl	x14, x8, #2
Ltmp141:
	.loc	2 103 13 is_stmt 0              ; fms.c:103:13
	lsr	x15, x22, x14
	tbz	w15, #0, LBB1_15
Ltmp142:
; %bb.17:                               ;   in Loop: Header=BB1_16 Depth=1
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS32:y_enable <- $x23
	;DEBUG_VALUE: emulate_AMX_FMS32:x_enable <- $x22
	;DEBUG_VALUE: emulate_AMX_FMS32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS32:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMS32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMS32:y_offset <- $x21
	.loc	2 104 13 is_stmt 1              ; fms.c:104:13
	tbnz	x19, #63, LBB1_31
Ltmp143:
; %bb.18:                               ;   in Loop: Header=BB1_16 Depth=1
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS32:y_enable <- $x23
	;DEBUG_VALUE: emulate_AMX_FMS32:x_enable <- $x22
	;DEBUG_VALUE: emulate_AMX_FMS32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS32:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMS32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMS32:y_offset <- $x21
	;DEBUG_VALUE: j <- 0
	.loc	2 0 13 is_stmt 0                ; fms.c:0:13
	mov	x15, #0
	b	LBB1_22
Ltmp144:
LBB1_19:                                ;   in Loop: Header=BB1_22 Depth=2
	;DEBUG_VALUE: fms32_alu:z <- $s0
	;DEBUG_VALUE: fms32_alu:x <- $s1
	;DEBUG_VALUE: fms32_alu:y <- $s2
	;DEBUG_VALUE: fms32_alu:operand <- $x19
	;DEBUG_VALUE: j <- [DW_OP_consts 4, DW_OP_div, DW_OP_stack_value] $x15
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS32:y_enable <- $x23
	;DEBUG_VALUE: emulate_AMX_FMS32:x_enable <- $x22
	;DEBUG_VALUE: emulate_AMX_FMS32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS32:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMS32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMS32:y_offset <- $x21
	.loc	2 26 22 is_stmt 1               ; fms.c:26:22
	fsub	s0, s0, s2
Ltmp145:
LBB1_20:                                ;   in Loop: Header=BB1_22 Depth=2
	;DEBUG_VALUE: j <- [DW_OP_consts 4, DW_OP_div, DW_OP_stack_value] $x15
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS32:y_enable <- $x23
	;DEBUG_VALUE: emulate_AMX_FMS32:x_enable <- $x22
	;DEBUG_VALUE: emulate_AMX_FMS32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS32:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMS32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMS32:y_offset <- $x21
	.loc	2 111 20                        ; fms.c:111:20
	str	s0, [x16, x8, lsl #2]
Ltmp146:
LBB1_21:                                ;   in Loop: Header=BB1_22 Depth=2
	;DEBUG_VALUE: j <- [DW_OP_consts 4, DW_OP_div, DW_OP_stack_value] $x15
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS32:y_enable <- $x23
	;DEBUG_VALUE: emulate_AMX_FMS32:x_enable <- $x22
	;DEBUG_VALUE: emulate_AMX_FMS32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS32:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMS32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMS32:y_offset <- $x21
	;DEBUG_VALUE: j <- [DW_OP_consts 4, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] $x15
	.loc	2 108 31                        ; fms.c:108:31
	add	x15, x15, #4
Ltmp147:
	.loc	2 108 13 is_stmt 0              ; fms.c:108:13
	cmp	x15, #64
	b.eq	LBB1_15
Ltmp148:
LBB1_22:                                ;   Parent Loop BB1_16 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS32:y_enable <- $x23
	;DEBUG_VALUE: emulate_AMX_FMS32:x_enable <- $x22
	;DEBUG_VALUE: emulate_AMX_FMS32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS32:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMS32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMS32:y_offset <- $x21
	;DEBUG_VALUE: j <- [DW_OP_consts 4, DW_OP_div, DW_OP_stack_value] $x15
	.loc	2 109 21 is_stmt 1              ; fms.c:109:21
	lsr	x16, x23, x15
	tbz	w16, #0, LBB1_21
Ltmp149:
; %bb.23:                               ;   in Loop: Header=BB1_22 Depth=2
	;DEBUG_VALUE: j <- [DW_OP_consts 4, DW_OP_div, DW_OP_stack_value] $x15
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS32:y_enable <- $x23
	;DEBUG_VALUE: emulate_AMX_FMS32:x_enable <- $x22
	;DEBUG_VALUE: emulate_AMX_FMS32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS32:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMS32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMS32:y_offset <- $x21
	.loc	2 110 46                        ; fms.c:110:46
	orr	x16, x10, x15
	.loc	2 110 29 is_stmt 0              ; fms.c:110:29
	add	x16, x20, x16, lsl #6
	.loc	2 111 32 is_stmt 1              ; fms.c:111:32
	ldr	s1, [x24, x14]
	.loc	2 110 29                        ; fms.c:110:29
	add	x16, x16, #1024
Ltmp150:
	;DEBUG_VALUE: z <- undef
	.loc	2 111 38                        ; fms.c:111:38
	ldr	s2, [x25, x15]
	.loc	2 111 44 is_stmt 0              ; fms.c:111:44
	ldr	s0, [x16, x14]
Ltmp151:
	;DEBUG_VALUE: fms32_alu:operand <- $x19
	;DEBUG_VALUE: fms32_alu:y <- $s2
	;DEBUG_VALUE: fms32_alu:x <- $s1
	;DEBUG_VALUE: fms32_alu:z <- $s0
	.loc	2 22 5 is_stmt 1                ; fms.c:22:5
	cmp	x11, #6
	b.hi	LBB1_28
Ltmp152:
; %bb.24:                               ;   in Loop: Header=BB1_22 Depth=2
	;DEBUG_VALUE: fms32_alu:z <- $s0
	;DEBUG_VALUE: fms32_alu:x <- $s1
	;DEBUG_VALUE: fms32_alu:y <- $s2
	;DEBUG_VALUE: fms32_alu:operand <- $x19
	;DEBUG_VALUE: j <- [DW_OP_consts 4, DW_OP_div, DW_OP_stack_value] $x15
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS32:y_enable <- $x23
	;DEBUG_VALUE: emulate_AMX_FMS32:x_enable <- $x22
	;DEBUG_VALUE: emulate_AMX_FMS32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS32:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMS32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMS32:y_offset <- $x21
	.loc	2 0 5 is_stmt 0                 ; fms.c:0:5
Ltmp153:
	adr	x17, Ltmp153
	ldrsw	x0, [x12, x11, lsl #2]
	add	x17, x17, x0
	br	x17
Ltmp154:
LBB1_25:                                ;   in Loop: Header=BB1_22 Depth=2
	;DEBUG_VALUE: fms32_alu:z <- $s0
	;DEBUG_VALUE: fms32_alu:x <- $s1
	;DEBUG_VALUE: fms32_alu:y <- $s2
	;DEBUG_VALUE: fms32_alu:operand <- $x19
	;DEBUG_VALUE: j <- [DW_OP_consts 4, DW_OP_div, DW_OP_stack_value] $x15
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS32:y_enable <- $x23
	;DEBUG_VALUE: emulate_AMX_FMS32:x_enable <- $x22
	;DEBUG_VALUE: emulate_AMX_FMS32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS32:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMS32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMS32:y_offset <- $x21
	.loc	2 23 20 is_stmt 1               ; fms.c:23:20
	fneg	s0, s1
Ltmp155:
	.loc	2 23 23 is_stmt 0               ; fms.c:23:23
	fmul	s0, s2, s0
	b	LBB1_20
Ltmp156:
LBB1_26:                                ;   in Loop: Header=BB1_22 Depth=2
	;DEBUG_VALUE: fms32_alu:z <- $s0
	;DEBUG_VALUE: fms32_alu:x <- $s1
	;DEBUG_VALUE: fms32_alu:y <- $s2
	;DEBUG_VALUE: fms32_alu:operand <- $x19
	;DEBUG_VALUE: j <- [DW_OP_consts 4, DW_OP_div, DW_OP_stack_value] $x15
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS32:y_enable <- $x23
	;DEBUG_VALUE: emulate_AMX_FMS32:x_enable <- $x22
	;DEBUG_VALUE: emulate_AMX_FMS32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS32:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMS32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMS32:y_offset <- $x21
	.loc	2 24 22 is_stmt 1               ; fms.c:24:22
	fsub	s0, s0, s1
Ltmp157:
	.loc	2 0 22 is_stmt 0                ; fms.c:0:22
	b	LBB1_20
Ltmp158:
LBB1_27:                                ;   in Loop: Header=BB1_22 Depth=2
	;DEBUG_VALUE: fms32_alu:z <- $s0
	;DEBUG_VALUE: fms32_alu:x <- $s1
	;DEBUG_VALUE: fms32_alu:y <- $s2
	;DEBUG_VALUE: fms32_alu:operand <- $x19
	;DEBUG_VALUE: j <- [DW_OP_consts 4, DW_OP_div, DW_OP_stack_value] $x15
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS32:y_enable <- $x23
	;DEBUG_VALUE: emulate_AMX_FMS32:x_enable <- $x22
	;DEBUG_VALUE: emulate_AMX_FMS32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS32:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMS32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMS32:y_offset <- $x21
	.loc	2 25 20 is_stmt 1               ; fms.c:25:20
	fneg	s0, s1
Ltmp159:
	.loc	2 0 20 is_stmt 0                ; fms.c:0:20
	b	LBB1_20
Ltmp160:
LBB1_28:                                ;   in Loop: Header=BB1_22 Depth=2
	;DEBUG_VALUE: fms32_alu:z <- $s0
	;DEBUG_VALUE: fms32_alu:x <- $s1
	;DEBUG_VALUE: fms32_alu:y <- $s2
	;DEBUG_VALUE: fms32_alu:operand <- $x19
	;DEBUG_VALUE: j <- [DW_OP_consts 4, DW_OP_div, DW_OP_stack_value] $x15
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS32:y_enable <- $x23
	;DEBUG_VALUE: emulate_AMX_FMS32:x_enable <- $x22
	;DEBUG_VALUE: emulate_AMX_FMS32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS32:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMS32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMS32:y_offset <- $x21
	.loc	2 32 5 is_stmt 1                ; fms.c:32:5
	; InlineAsm Start
	fmsub	s0, s1, s2, s0
	; InlineAsm End
Ltmp161:
	;DEBUG_VALUE: fms32_alu:result <- $s0
	.loc	2 0 5 is_stmt 0                 ; fms.c:0:5
	b	LBB1_20
Ltmp162:
LBB1_29:                                ;   in Loop: Header=BB1_22 Depth=2
	;DEBUG_VALUE: fms32_alu:z <- $s0
	;DEBUG_VALUE: fms32_alu:x <- $s1
	;DEBUG_VALUE: fms32_alu:y <- $s2
	;DEBUG_VALUE: fms32_alu:operand <- $x19
	;DEBUG_VALUE: j <- [DW_OP_consts 4, DW_OP_div, DW_OP_stack_value] $x15
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS32:y_enable <- $x23
	;DEBUG_VALUE: emulate_AMX_FMS32:x_enable <- $x22
	;DEBUG_VALUE: emulate_AMX_FMS32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS32:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMS32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMS32:y_offset <- $x21
	.loc	2 27 20 is_stmt 1               ; fms.c:27:20
	fneg	s0, s2
Ltmp163:
	.loc	2 0 20 is_stmt 0                ; fms.c:0:20
	b	LBB1_20
Ltmp164:
LBB1_30:                                ;   in Loop: Header=BB1_22 Depth=2
	;DEBUG_VALUE: fms32_alu:z <- $s0
	;DEBUG_VALUE: fms32_alu:x <- $s1
	;DEBUG_VALUE: fms32_alu:y <- $s2
	;DEBUG_VALUE: fms32_alu:operand <- $x19
	;DEBUG_VALUE: j <- [DW_OP_consts 4, DW_OP_div, DW_OP_stack_value] $x15
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS32:y_enable <- $x23
	;DEBUG_VALUE: emulate_AMX_FMS32:x_enable <- $x22
	;DEBUG_VALUE: emulate_AMX_FMS32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS32:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMS32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMS32:y_offset <- $x21
	movi.2s	v0, #128, lsl #24
	b	LBB1_20
Ltmp165:
LBB1_31:                                ;   in Loop: Header=BB1_16 Depth=1
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS32:y_enable <- $x23
	;DEBUG_VALUE: emulate_AMX_FMS32:x_enable <- $x22
	;DEBUG_VALUE: emulate_AMX_FMS32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS32:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMS32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMS32:y_offset <- $x21
	;DEBUG_VALUE: z <- undef
	.loc	2 106 28 is_stmt 1              ; fms.c:106:28
	ldr	s1, [x24, x14]
	.loc	2 106 34 is_stmt 0              ; fms.c:106:34
	ldr	s2, [x25, x14]
	.loc	2 106 40                        ; fms.c:106:40
	ldr	s0, [x9, x14]
Ltmp166:
	;DEBUG_VALUE: fms32_alu:operand <- $x19
	;DEBUG_VALUE: fms32_alu:y <- $s2
	;DEBUG_VALUE: fms32_alu:x <- $s1
	;DEBUG_VALUE: fms32_alu:z <- $s0
	.loc	2 22 5 is_stmt 1                ; fms.c:22:5
	cmp	x11, #6
	b.hi	LBB1_34
Ltmp167:
; %bb.32:                               ;   in Loop: Header=BB1_16 Depth=1
	;DEBUG_VALUE: fms32_alu:z <- $s0
	;DEBUG_VALUE: fms32_alu:x <- $s1
	;DEBUG_VALUE: fms32_alu:y <- $s2
	;DEBUG_VALUE: fms32_alu:operand <- $x19
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS32:y_enable <- $x23
	;DEBUG_VALUE: emulate_AMX_FMS32:x_enable <- $x22
	;DEBUG_VALUE: emulate_AMX_FMS32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS32:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMS32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMS32:y_offset <- $x21
	.loc	2 0 5 is_stmt 0                 ; fms.c:0:5
Ltmp168:
	adr	x14, Ltmp168
	ldrsw	x15, [x13, x11, lsl #2]
	add	x14, x14, x15
	br	x14
Ltmp169:
LBB1_33:                                ;   in Loop: Header=BB1_16 Depth=1
	;DEBUG_VALUE: fms32_alu:z <- $s0
	;DEBUG_VALUE: fms32_alu:x <- $s1
	;DEBUG_VALUE: fms32_alu:y <- $s2
	;DEBUG_VALUE: fms32_alu:operand <- $x19
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS32:y_enable <- $x23
	;DEBUG_VALUE: emulate_AMX_FMS32:x_enable <- $x22
	;DEBUG_VALUE: emulate_AMX_FMS32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS32:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMS32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMS32:y_offset <- $x21
	.loc	2 23 20 is_stmt 1               ; fms.c:23:20
	fneg	s0, s1
Ltmp170:
	.loc	2 23 23 is_stmt 0               ; fms.c:23:23
	fmul	s0, s2, s0
	b	LBB1_14
Ltmp171:
LBB1_34:                                ;   in Loop: Header=BB1_16 Depth=1
	;DEBUG_VALUE: fms32_alu:z <- $s0
	;DEBUG_VALUE: fms32_alu:x <- $s1
	;DEBUG_VALUE: fms32_alu:y <- $s2
	;DEBUG_VALUE: fms32_alu:operand <- $x19
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS32:y_enable <- $x23
	;DEBUG_VALUE: emulate_AMX_FMS32:x_enable <- $x22
	;DEBUG_VALUE: emulate_AMX_FMS32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS32:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMS32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMS32:y_offset <- $x21
	.loc	2 32 5 is_stmt 1                ; fms.c:32:5
	; InlineAsm Start
	fmsub	s0, s1, s2, s0
	; InlineAsm End
Ltmp172:
	;DEBUG_VALUE: fms32_alu:result <- $s0
	.loc	2 0 5 is_stmt 0                 ; fms.c:0:5
	b	LBB1_14
Ltmp173:
LBB1_35:                                ;   in Loop: Header=BB1_16 Depth=1
	;DEBUG_VALUE: fms32_alu:z <- $s0
	;DEBUG_VALUE: fms32_alu:x <- $s1
	;DEBUG_VALUE: fms32_alu:y <- $s2
	;DEBUG_VALUE: fms32_alu:operand <- $x19
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS32:y_enable <- $x23
	;DEBUG_VALUE: emulate_AMX_FMS32:x_enable <- $x22
	;DEBUG_VALUE: emulate_AMX_FMS32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS32:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMS32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMS32:y_offset <- $x21
	.loc	2 24 22 is_stmt 1               ; fms.c:24:22
	fsub	s0, s0, s1
Ltmp174:
	.loc	2 0 22 is_stmt 0                ; fms.c:0:22
	b	LBB1_14
Ltmp175:
LBB1_36:                                ;   in Loop: Header=BB1_16 Depth=1
	;DEBUG_VALUE: fms32_alu:z <- $s0
	;DEBUG_VALUE: fms32_alu:x <- $s1
	;DEBUG_VALUE: fms32_alu:y <- $s2
	;DEBUG_VALUE: fms32_alu:operand <- $x19
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS32:y_enable <- $x23
	;DEBUG_VALUE: emulate_AMX_FMS32:x_enable <- $x22
	;DEBUG_VALUE: emulate_AMX_FMS32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS32:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMS32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMS32:y_offset <- $x21
	.loc	2 25 20 is_stmt 1               ; fms.c:25:20
	fneg	s0, s1
Ltmp176:
	.loc	2 0 20 is_stmt 0                ; fms.c:0:20
	b	LBB1_14
Ltmp177:
LBB1_37:                                ;   in Loop: Header=BB1_16 Depth=1
	;DEBUG_VALUE: fms32_alu:z <- $s0
	;DEBUG_VALUE: fms32_alu:x <- $s1
	;DEBUG_VALUE: fms32_alu:y <- $s2
	;DEBUG_VALUE: fms32_alu:operand <- $x19
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS32:y_enable <- $x23
	;DEBUG_VALUE: emulate_AMX_FMS32:x_enable <- $x22
	;DEBUG_VALUE: emulate_AMX_FMS32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS32:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMS32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMS32:y_offset <- $x21
	.loc	2 27 20 is_stmt 1               ; fms.c:27:20
	fneg	s0, s2
Ltmp178:
	.loc	2 0 20 is_stmt 0                ; fms.c:0:20
	b	LBB1_14
Ltmp179:
LBB1_38:                                ;   in Loop: Header=BB1_16 Depth=1
	;DEBUG_VALUE: fms32_alu:z <- $s0
	;DEBUG_VALUE: fms32_alu:x <- $s1
	;DEBUG_VALUE: fms32_alu:y <- $s2
	;DEBUG_VALUE: fms32_alu:operand <- $x19
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS32:y_enable <- $x23
	;DEBUG_VALUE: emulate_AMX_FMS32:x_enable <- $x22
	;DEBUG_VALUE: emulate_AMX_FMS32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS32:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMS32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMS32:y_offset <- $x21
	movi.2s	v0, #128, lsl #24
	b	LBB1_14
Ltmp180:
LBB1_39:
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS32:y_enable <- $x23
	;DEBUG_VALUE: emulate_AMX_FMS32:x_enable <- $x22
	;DEBUG_VALUE: emulate_AMX_FMS32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS32:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMS32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMS32:y_offset <- $x21
	ldur	x8, [x29, #-72]
Lloh25:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh26:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh27:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB1_41
Ltmp181:
; %bb.40:
	;DEBUG_VALUE: emulate_AMX_FMS32:y_enable <- $x23
	;DEBUG_VALUE: emulate_AMX_FMS32:x_enable <- $x22
	;DEBUG_VALUE: emulate_AMX_FMS32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS32:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMS32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMS32:y_offset <- $x21
	.loc	2 115 1 is_stmt 1               ; fms.c:115:1
	ldp	x29, x30, [sp, #208]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #192]            ; 16-byte Folded Reload
Ltmp182:
	;DEBUG_VALUE: emulate_AMX_FMS32:state <- [DW_OP_LLVM_entry_value 1] $x0
	;DEBUG_VALUE: emulate_AMX_FMS32:operand <- [DW_OP_LLVM_entry_value 1] $x1
	ldp	x22, x21, [sp, #176]            ; 16-byte Folded Reload
Ltmp183:
	ldp	x24, x23, [sp, #160]            ; 16-byte Folded Reload
Ltmp184:
	ldp	x26, x25, [sp, #144]            ; 16-byte Folded Reload
Ltmp185:
	add	sp, sp, #224
	ret
Ltmp186:
LBB1_41:
	;DEBUG_VALUE: emulate_AMX_FMS32:y_enable <- $x23
	;DEBUG_VALUE: emulate_AMX_FMS32:x_enable <- $x22
	;DEBUG_VALUE: emulate_AMX_FMS32:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS32:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMS32:z_row <- $x26
	;DEBUG_VALUE: emulate_AMX_FMS32:y_offset <- $x21
	.loc	2 0 1 is_stmt 0                 ; fms.c:0:1
	bl	___stack_chk_fail
Ltmp187:
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
	.long	LBB1_1-Ltmp110
	.long	LBB1_5-Ltmp110
	.long	LBB1_2-Ltmp110
	.long	LBB1_3-Ltmp110
	.p2align	2
lJTI1_1:
	.long	LBB1_7-Ltmp124
	.long	LBB1_11-Ltmp124
	.long	LBB1_8-Ltmp124
	.long	LBB1_9-Ltmp124
	.p2align	2
lJTI1_2:
	.long	LBB1_33-Ltmp168
	.long	LBB1_35-Ltmp168
	.long	LBB1_36-Ltmp168
	.long	LBB1_13-Ltmp168
	.long	LBB1_37-Ltmp168
	.long	LBB1_14-Ltmp168
	.long	LBB1_38-Ltmp168
	.p2align	2
lJTI1_3:
	.long	LBB1_25-Ltmp153
	.long	LBB1_26-Ltmp153
	.long	LBB1_27-Ltmp153
	.long	LBB1_19-Ltmp153
	.long	LBB1_29-Ltmp153
	.long	LBB1_20-Ltmp153
	.long	LBB1_30-Ltmp153
                                        ; -- End function
	.p2align	2                               ; -- Begin function load_xy_reg_fms32
_load_xy_reg_fms32:                     ; @load_xy_reg_fms32
Lfunc_begin2:
	.loc	2 51 0 is_stmt 1                ; fms.c:51:0
	.cfi_startproc
; %bb.0:
	;DEBUG_VALUE: load_xy_reg_fms32:dst <- $x0
	;DEBUG_VALUE: load_xy_reg_fms32:src <- $x1
	;DEBUG_VALUE: load_xy_reg_fms32:offset <- $x2
	;DEBUG_VALUE: load_xy_reg_fms32:fp16 <- $x3
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
Ltmp188:
	;DEBUG_VALUE: load_xy_reg_fms32:fp16 <- $x20
	mov	x21, x1
Ltmp189:
	;DEBUG_VALUE: load_xy_reg_fms32:src <- $x21
	mov	x19, x0
Ltmp190:
	;DEBUG_VALUE: load_xy_reg_fms32:dst <- $x19
	mov	w8, #512
Ltmp191:
	;DEBUG_VALUE: load_xy_reg:src <- $x21
	;DEBUG_VALUE: load_xy_reg:dst <- $x19
	.loc	3 42 26 prologue_end            ; ./emulate.h:42:26
	sub	x8, x8, x2
Ltmp192:
	;DEBUG_VALUE: load_xy_reg:avail <- $x8
	.loc	3 43 5                          ; ./emulate.h:43:5
	add	x1, x1, x2
	.loc	3 44 5                          ; ./emulate.h:44:5
	sub	x9, x2, #448
	mov	w10, #64
	.loc	3 43 5                          ; ./emulate.h:43:5
	cmp	x8, #63
	csel	x2, x10, x8, hi
Ltmp193:
	;DEBUG_VALUE: load_xy_reg_fms32:offset <- [DW_OP_LLVM_entry_value 1] $x2
	.loc	3 44 5                          ; ./emulate.h:44:5
	add	x22, x0, x8
	csel	x23, xzr, x9, hi
	.loc	3 43 5                          ; ./emulate.h:43:5
	bl	_memcpy
Ltmp194:
	.loc	3 44 5                          ; ./emulate.h:44:5
	mov	x0, x22
	mov	x1, x21
	mov	x2, x23
	bl	_memcpy
Ltmp195:
	.loc	2 53 9                          ; fms.c:53:9
	cbz	x20, LBB2_2
Ltmp196:
; %bb.1:
	;DEBUG_VALUE: load_xy_reg_fms32:offset <- [DW_OP_LLVM_entry_value 1] $x2
	;DEBUG_VALUE: load_xy_reg_fms32:dst <- $x19
	;DEBUG_VALUE: load_xy_reg_fms32:src <- $x21
	;DEBUG_VALUE: load_xy_reg_fms32:fp16 <- $x20
	;DEBUG_VALUE: i <- 0
	.loc	2 55 25                         ; fms.c:55:25
	ldp	s0, s1, [x19]
Ltmp197:
	;DEBUG_VALUE: val <- $s0
	;DEBUG_VALUE: val <- $s1
	.loc	2 56 13                         ; fms.c:56:13
	; InlineAsm Start
	fcvt	s0, h0
	; InlineAsm End
Ltmp198:
	;DEBUG_VALUE: val <- $s0
	.loc	2 57 17                         ; fms.c:57:17
	fneg	s2, s0
	fcmp	s0, s0
	fcsel	s0, s2, s0, vs
Ltmp199:
	;DEBUG_VALUE: val <- $s0
	.loc	2 56 13                         ; fms.c:56:13
	; InlineAsm Start
	fcvt	s1, h1
	; InlineAsm End
Ltmp200:
	;DEBUG_VALUE: val <- $s1
	.loc	2 57 17                         ; fms.c:57:17
	fneg	s2, s1
	fcmp	s1, s1
	fcsel	s1, s2, s1, vs
Ltmp201:
	;DEBUG_VALUE: val <- $s1
	.loc	2 58 20                         ; fms.c:58:20
	stp	s0, s1, [x19]
Ltmp202:
	;DEBUG_VALUE: i <- 1
	;DEBUG_VALUE: i <- 2
	.loc	2 55 25                         ; fms.c:55:25
	ldp	s0, s1, [x19, #8]
Ltmp203:
	;DEBUG_VALUE: val <- $s0
	;DEBUG_VALUE: val <- $s1
	.loc	2 56 13                         ; fms.c:56:13
	; InlineAsm Start
	fcvt	s0, h0
	; InlineAsm End
Ltmp204:
	;DEBUG_VALUE: val <- $s0
	.loc	2 57 17                         ; fms.c:57:17
	fneg	s2, s0
	fcmp	s0, s0
	fcsel	s0, s2, s0, vs
Ltmp205:
	;DEBUG_VALUE: val <- $s0
	.loc	2 56 13                         ; fms.c:56:13
	; InlineAsm Start
	fcvt	s1, h1
	; InlineAsm End
Ltmp206:
	;DEBUG_VALUE: val <- $s1
	.loc	2 57 17                         ; fms.c:57:17
	fneg	s2, s1
	fcmp	s1, s1
	fcsel	s1, s2, s1, vs
Ltmp207:
	;DEBUG_VALUE: val <- $s1
	.loc	2 58 20                         ; fms.c:58:20
	stp	s0, s1, [x19, #8]
Ltmp208:
	;DEBUG_VALUE: i <- 3
	;DEBUG_VALUE: i <- 4
	.loc	2 55 25                         ; fms.c:55:25
	ldp	s0, s1, [x19, #16]
Ltmp209:
	;DEBUG_VALUE: val <- $s0
	;DEBUG_VALUE: val <- $s1
	.loc	2 56 13                         ; fms.c:56:13
	; InlineAsm Start
	fcvt	s0, h0
	; InlineAsm End
Ltmp210:
	;DEBUG_VALUE: val <- $s0
	.loc	2 57 17                         ; fms.c:57:17
	fneg	s2, s0
	fcmp	s0, s0
	fcsel	s0, s2, s0, vs
Ltmp211:
	;DEBUG_VALUE: val <- $s0
	.loc	2 56 13                         ; fms.c:56:13
	; InlineAsm Start
	fcvt	s1, h1
	; InlineAsm End
Ltmp212:
	;DEBUG_VALUE: val <- $s1
	.loc	2 57 17                         ; fms.c:57:17
	fneg	s2, s1
	fcmp	s1, s1
	fcsel	s1, s2, s1, vs
Ltmp213:
	;DEBUG_VALUE: val <- $s1
	.loc	2 58 20                         ; fms.c:58:20
	stp	s0, s1, [x19, #16]
Ltmp214:
	;DEBUG_VALUE: i <- 5
	;DEBUG_VALUE: i <- 6
	.loc	2 55 25                         ; fms.c:55:25
	ldp	s0, s1, [x19, #24]
Ltmp215:
	;DEBUG_VALUE: val <- $s0
	;DEBUG_VALUE: val <- $s1
	.loc	2 56 13                         ; fms.c:56:13
	; InlineAsm Start
	fcvt	s0, h0
	; InlineAsm End
Ltmp216:
	;DEBUG_VALUE: val <- $s0
	.loc	2 57 17                         ; fms.c:57:17
	fneg	s2, s0
	fcmp	s0, s0
	fcsel	s0, s2, s0, vs
Ltmp217:
	;DEBUG_VALUE: val <- $s0
	.loc	2 56 13                         ; fms.c:56:13
	; InlineAsm Start
	fcvt	s1, h1
	; InlineAsm End
Ltmp218:
	;DEBUG_VALUE: val <- $s1
	.loc	2 57 17                         ; fms.c:57:17
	fneg	s2, s1
	fcmp	s1, s1
	fcsel	s1, s2, s1, vs
Ltmp219:
	;DEBUG_VALUE: val <- $s1
	.loc	2 58 20                         ; fms.c:58:20
	stp	s0, s1, [x19, #24]
Ltmp220:
	;DEBUG_VALUE: i <- 7
	;DEBUG_VALUE: i <- 8
	.loc	2 55 25                         ; fms.c:55:25
	ldp	s0, s1, [x19, #32]
Ltmp221:
	;DEBUG_VALUE: val <- $s0
	;DEBUG_VALUE: val <- $s1
	.loc	2 56 13                         ; fms.c:56:13
	; InlineAsm Start
	fcvt	s0, h0
	; InlineAsm End
Ltmp222:
	;DEBUG_VALUE: val <- $s0
	.loc	2 57 17                         ; fms.c:57:17
	fneg	s2, s0
	fcmp	s0, s0
	fcsel	s0, s2, s0, vs
Ltmp223:
	;DEBUG_VALUE: val <- $s0
	.loc	2 56 13                         ; fms.c:56:13
	; InlineAsm Start
	fcvt	s1, h1
	; InlineAsm End
Ltmp224:
	;DEBUG_VALUE: val <- $s1
	.loc	2 57 17                         ; fms.c:57:17
	fneg	s2, s1
	fcmp	s1, s1
	fcsel	s1, s2, s1, vs
Ltmp225:
	;DEBUG_VALUE: val <- $s1
	.loc	2 58 20                         ; fms.c:58:20
	stp	s0, s1, [x19, #32]
Ltmp226:
	;DEBUG_VALUE: i <- 9
	;DEBUG_VALUE: i <- 10
	.loc	2 55 25                         ; fms.c:55:25
	ldp	s0, s1, [x19, #40]
Ltmp227:
	;DEBUG_VALUE: val <- $s0
	;DEBUG_VALUE: val <- $s1
	.loc	2 56 13                         ; fms.c:56:13
	; InlineAsm Start
	fcvt	s0, h0
	; InlineAsm End
Ltmp228:
	;DEBUG_VALUE: val <- $s0
	.loc	2 57 17                         ; fms.c:57:17
	fneg	s2, s0
	fcmp	s0, s0
	fcsel	s0, s2, s0, vs
Ltmp229:
	;DEBUG_VALUE: val <- $s0
	.loc	2 56 13                         ; fms.c:56:13
	; InlineAsm Start
	fcvt	s1, h1
	; InlineAsm End
Ltmp230:
	;DEBUG_VALUE: val <- $s1
	.loc	2 57 17                         ; fms.c:57:17
	fneg	s2, s1
	fcmp	s1, s1
	fcsel	s1, s2, s1, vs
Ltmp231:
	;DEBUG_VALUE: val <- $s1
	.loc	2 58 20                         ; fms.c:58:20
	stp	s0, s1, [x19, #40]
Ltmp232:
	;DEBUG_VALUE: i <- 11
	;DEBUG_VALUE: i <- 12
	.loc	2 55 25                         ; fms.c:55:25
	ldp	s0, s1, [x19, #48]
Ltmp233:
	;DEBUG_VALUE: val <- $s0
	;DEBUG_VALUE: val <- $s1
	.loc	2 56 13                         ; fms.c:56:13
	; InlineAsm Start
	fcvt	s0, h0
	; InlineAsm End
Ltmp234:
	;DEBUG_VALUE: val <- $s0
	.loc	2 57 17                         ; fms.c:57:17
	fneg	s2, s0
	fcmp	s0, s0
	fcsel	s0, s2, s0, vs
Ltmp235:
	;DEBUG_VALUE: val <- $s0
	.loc	2 56 13                         ; fms.c:56:13
	; InlineAsm Start
	fcvt	s1, h1
	; InlineAsm End
Ltmp236:
	;DEBUG_VALUE: val <- $s1
	.loc	2 57 17                         ; fms.c:57:17
	fneg	s2, s1
	fcmp	s1, s1
	fcsel	s1, s2, s1, vs
Ltmp237:
	;DEBUG_VALUE: val <- $s1
	.loc	2 58 20                         ; fms.c:58:20
	stp	s0, s1, [x19, #48]
Ltmp238:
	;DEBUG_VALUE: i <- 13
	;DEBUG_VALUE: i <- 14
	.loc	2 55 25                         ; fms.c:55:25
	ldp	s0, s1, [x19, #56]
Ltmp239:
	;DEBUG_VALUE: val <- $s0
	;DEBUG_VALUE: val <- $s1
	.loc	2 56 13                         ; fms.c:56:13
	; InlineAsm Start
	fcvt	s0, h0
	; InlineAsm End
Ltmp240:
	;DEBUG_VALUE: val <- $s0
	.loc	2 57 17                         ; fms.c:57:17
	fneg	s2, s0
	fcmp	s0, s0
	fcsel	s0, s2, s0, vs
Ltmp241:
	;DEBUG_VALUE: val <- $s0
	.loc	2 56 13                         ; fms.c:56:13
	; InlineAsm Start
	fcvt	s1, h1
	; InlineAsm End
Ltmp242:
	;DEBUG_VALUE: val <- $s1
	.loc	2 57 17                         ; fms.c:57:17
	fneg	s2, s1
	fcmp	s1, s1
	fcsel	s1, s2, s1, vs
Ltmp243:
	;DEBUG_VALUE: val <- $s1
	.loc	2 58 20                         ; fms.c:58:20
	stp	s0, s1, [x19, #56]
Ltmp244:
	;DEBUG_VALUE: i <- 15
	;DEBUG_VALUE: i <- 16
LBB2_2:
	;DEBUG_VALUE: load_xy_reg_fms32:offset <- [DW_OP_LLVM_entry_value 1] $x2
	;DEBUG_VALUE: load_xy_reg_fms32:dst <- $x19
	;DEBUG_VALUE: load_xy_reg_fms32:src <- $x21
	;DEBUG_VALUE: load_xy_reg_fms32:fp16 <- $x20
	.loc	2 61 1                          ; fms.c:61:1
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
Ltmp245:
	;DEBUG_VALUE: load_xy_reg_fms32:fp16 <- [DW_OP_LLVM_entry_value 1] $x3
	;DEBUG_VALUE: load_xy_reg_fms32:dst <- [DW_OP_LLVM_entry_value 1] $x0
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
Ltmp246:
	;DEBUG_VALUE: load_xy_reg_fms32:src <- [DW_OP_LLVM_entry_value 1] $x1
	ldp	x24, x23, [sp], #64             ; 16-byte Folded Reload
	ret
Ltmp247:
Lfunc_end2:
	.cfi_endproc
                                        ; -- End function
	.globl	_emulate_AMX_FMS16              ; -- Begin function emulate_AMX_FMS16
	.p2align	2
_emulate_AMX_FMS16:                     ; @emulate_AMX_FMS16
Lfunc_begin3:
	.loc	2 117 0                         ; fms.c:117:0
	.cfi_startproc
; %bb.0:
	;DEBUG_VALUE: emulate_AMX_FMS16:state <- $x0
	;DEBUG_VALUE: emulate_AMX_FMS16:operand <- $x1
	;DEBUG_VALUE: emulate_AMX_FMS16:operand <- $x1
	;DEBUG_VALUE: emulate_AMX_FMS16:state <- $x0
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
Ltmp248:
	.loc	2 118 33 prologue_end           ; fms.c:118:33
	and	x23, x1, #0x1ff
Ltmp249:
	;DEBUG_VALUE: emulate_AMX_FMS16:y_offset <- $x23
	.loc	2 119 41                        ; fms.c:119:41
	ubfx	x8, x1, #10, #9
Ltmp250:
	;DEBUG_VALUE: emulate_AMX_FMS16:x_offset <- $x8
	.loc	2 120 38                        ; fms.c:120:38
	ubfx	x15, x1, #20, #6
Ltmp251:
	;DEBUG_VALUE: emulate_AMX_FMS16:z_row <- $x15
	.loc	2 121 49                        ; fms.c:121:49
	lsr	x9, x1, #41
	mov	w10, #3
Ltmp252:
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: parse_writemask:g <- 2
	;DEBUG_VALUE: parse_writemask:val <- $w9
	.loc	3 67 9                          ; ./emulate.h:67:9
	ands	w11, w10, w9, lsr #5
Ltmp253:
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	.loc	3 0 9 is_stmt 0                 ; ./emulate.h:0:9
	mov	w10, #1
	.loc	3 67 9                          ; ./emulate.h:67:9
	cinc	w10, w10, ne
	mul	w10, w10, w9
Ltmp254:
	;DEBUG_VALUE: parse_writemask:val <- $w10
	.loc	3 68 9 is_stmt 1                ; ./emulate.h:68:9
	and	w9, w10, #0x3f
Ltmp255:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:val <- $w9
	.loc	3 0 9 is_stmt 0                 ; ./emulate.h:0:9
	mov	x19, x1
Ltmp256:
	;DEBUG_VALUE: emulate_AMX_FMS16:operand <- $x19
	mov	x20, x0
Ltmp257:
	;DEBUG_VALUE: emulate_AMX_FMS16:state <- $x20
Lloh31:
	adrp	x12, lJTI3_0@PAGE
Lloh32:
	add	x12, x12, lJTI3_0@PAGEOFF
Ltmp258:
	adr	x13, Ltmp258
	ldrsw	x14, [x12, x11, lsl #2]
	add	x13, x13, x14
	br	x13
Ltmp259:
LBB3_1:
	;DEBUG_VALUE: emulate_AMX_FMS16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS16:operand <- $x19
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:val <- $w9
	;DEBUG_VALUE: parse_writemask:g <- 2
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_FMS16:z_row <- $x15
	;DEBUG_VALUE: emulate_AMX_FMS16:x_offset <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS16:y_offset <- $x23
	.loc	3 72 22 is_stmt 1               ; ./emulate.h:72:22
	sub	w11, w9, #1
Ltmp260:
	ubfiz	w10, w10, #1, #1
	mov	x12, #3689348814741910323
	lsl	x10, x12, x10
	cmp	w11, #2
	csinv	x10, x10, xzr, lo
Ltmp261:
	;DEBUG_VALUE: parse_writemask:all <- $x10
	.loc	3 83 16                         ; ./emulate.h:83:16
	cmp	w9, #3
	csel	x24, x10, xzr, lo
	b	LBB3_8
Ltmp262:
LBB3_2:
	;DEBUG_VALUE: emulate_AMX_FMS16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS16:operand <- $x19
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:val <- $w9
	;DEBUG_VALUE: parse_writemask:g <- 2
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_FMS16:z_row <- $x15
	;DEBUG_VALUE: emulate_AMX_FMS16:x_offset <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS16:y_offset <- $x23
	.loc	3 0 16 is_stmt 0                ; ./emulate.h:0:16
	mov	x24, #-1
	.loc	3 88 13 is_stmt 1               ; ./emulate.h:88:13
	cbz	w9, LBB3_8
Ltmp263:
; %bb.3:
	;DEBUG_VALUE: emulate_AMX_FMS16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS16:operand <- $x19
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:val <- $w9
	;DEBUG_VALUE: parse_writemask:g <- 2
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_FMS16:z_row <- $x15
	;DEBUG_VALUE: emulate_AMX_FMS16:x_offset <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS16:y_offset <- $x23
	.loc	3 91 22                         ; ./emulate.h:91:22
	lsl	x9, x24, x9
Ltmp264:
	.loc	3 0 22 is_stmt 0                ; ./emulate.h:0:22
	b	LBB3_6
Ltmp265:
LBB3_4:
	;DEBUG_VALUE: emulate_AMX_FMS16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS16:operand <- $x19
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:val <- $w9
	;DEBUG_VALUE: parse_writemask:g <- 2
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_FMS16:z_row <- $x15
	;DEBUG_VALUE: emulate_AMX_FMS16:x_offset <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS16:y_offset <- $x23
	mov	x24, #-1
	.loc	3 93 13 is_stmt 1               ; ./emulate.h:93:13
	cbz	w9, LBB3_8
Ltmp266:
; %bb.5:
	;DEBUG_VALUE: emulate_AMX_FMS16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS16:operand <- $x19
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:val <- $w9
	;DEBUG_VALUE: parse_writemask:g <- 2
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_FMS16:z_row <- $x15
	;DEBUG_VALUE: emulate_AMX_FMS16:x_offset <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS16:y_offset <- $x23
	.loc	3 96 22                         ; ./emulate.h:96:22
	lsr	x9, x24, x9
Ltmp267:
LBB3_6:
	;DEBUG_VALUE: emulate_AMX_FMS16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS16:operand <- $x19
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:g <- 2
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_FMS16:z_row <- $x15
	;DEBUG_VALUE: emulate_AMX_FMS16:x_offset <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS16:y_offset <- $x23
	.loc	3 0 0 is_stmt 0                 ; ./emulate.h:0:0
	mvn	x24, x9
	b	LBB3_8
Ltmp268:
LBB3_7:
	;DEBUG_VALUE: emulate_AMX_FMS16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS16:operand <- $x19
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:val <- $w9
	;DEBUG_VALUE: parse_writemask:g <- 2
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_FMS16:z_row <- $x15
	;DEBUG_VALUE: emulate_AMX_FMS16:x_offset <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS16:y_offset <- $x23
	mov	w10, #3
	.loc	3 86 30 is_stmt 1               ; ./emulate.h:86:30
	lsl	x24, x10, x9
Ltmp269:
LBB3_8:
	;DEBUG_VALUE: emulate_AMX_FMS16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS16:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMS16:z_row <- $x15
	;DEBUG_VALUE: emulate_AMX_FMS16:x_offset <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS16:y_offset <- $x23
	;DEBUG_VALUE: emulate_AMX_FMS16:x_enable <- $x24
	.loc	2 122 49                        ; fms.c:122:49
	lsr	x9, x19, #32
Ltmp270:
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: parse_writemask:g <- 2
	;DEBUG_VALUE: parse_writemask:val <- $w9
	.loc	3 66 61                         ; ./emulate.h:66:61
	lsr	x10, x19, #37
	.loc	3 67 9                          ; ./emulate.h:67:9
	ands	w11, w10, #0x3
Ltmp271:
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	.loc	3 0 9 is_stmt 0                 ; ./emulate.h:0:9
	mov	w10, #1
	.loc	3 67 9                          ; ./emulate.h:67:9
	cinc	w10, w10, ne
	mul	w10, w10, w9
Ltmp272:
	;DEBUG_VALUE: parse_writemask:val <- $w10
	.loc	3 68 9 is_stmt 1                ; ./emulate.h:68:9
	and	w9, w10, #0x3f
Ltmp273:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:val <- $w9
	.loc	3 0 9 is_stmt 0                 ; ./emulate.h:0:9
Lloh33:
	adrp	x12, lJTI3_1@PAGE
Lloh34:
	add	x12, x12, lJTI3_1@PAGEOFF
Ltmp274:
	adr	x13, Ltmp274
	ldrsw	x14, [x12, x11, lsl #2]
	add	x13, x13, x14
	str	x15, [sp]                       ; 8-byte Folded Spill
Ltmp275:
	;DEBUG_VALUE: emulate_AMX_FMS16:z_row <- [$sp+0]
	br	x13
Ltmp276:
LBB3_9:
	;DEBUG_VALUE: emulate_AMX_FMS16:z_row <- [$sp+0]
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:val <- $w9
	;DEBUG_VALUE: parse_writemask:g <- 2
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_FMS16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS16:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMS16:x_offset <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS16:y_offset <- $x23
	.loc	3 72 22 is_stmt 1               ; ./emulate.h:72:22
	sub	w11, w9, #1
Ltmp277:
	ubfiz	w10, w10, #1, #1
	mov	x12, #3689348814741910323
	lsl	x10, x12, x10
	cmp	w11, #2
	csinv	x10, x10, xzr, lo
Ltmp278:
	;DEBUG_VALUE: parse_writemask:all <- $x10
	.loc	3 83 16                         ; ./emulate.h:83:16
	cmp	w9, #3
	csel	x25, x10, xzr, lo
	b	LBB3_16
Ltmp279:
LBB3_10:
	;DEBUG_VALUE: emulate_AMX_FMS16:z_row <- [$sp+0]
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:val <- $w9
	;DEBUG_VALUE: parse_writemask:g <- 2
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_FMS16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS16:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMS16:x_offset <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS16:y_offset <- $x23
	.loc	3 0 16 is_stmt 0                ; ./emulate.h:0:16
	mov	x25, #-1
	.loc	3 88 13 is_stmt 1               ; ./emulate.h:88:13
	cbz	w9, LBB3_16
Ltmp280:
; %bb.11:
	;DEBUG_VALUE: emulate_AMX_FMS16:z_row <- [$sp+0]
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:val <- $w9
	;DEBUG_VALUE: parse_writemask:g <- 2
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_FMS16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS16:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMS16:x_offset <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS16:y_offset <- $x23
	.loc	3 91 22                         ; ./emulate.h:91:22
	lsl	x9, x25, x9
Ltmp281:
	.loc	3 0 22 is_stmt 0                ; ./emulate.h:0:22
	b	LBB3_14
Ltmp282:
LBB3_12:
	;DEBUG_VALUE: emulate_AMX_FMS16:z_row <- [$sp+0]
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:val <- $w9
	;DEBUG_VALUE: parse_writemask:g <- 2
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_FMS16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS16:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMS16:x_offset <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS16:y_offset <- $x23
	mov	x25, #-1
	.loc	3 93 13 is_stmt 1               ; ./emulate.h:93:13
	cbz	w9, LBB3_16
Ltmp283:
; %bb.13:
	;DEBUG_VALUE: emulate_AMX_FMS16:z_row <- [$sp+0]
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:val <- $w9
	;DEBUG_VALUE: parse_writemask:g <- 2
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_FMS16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS16:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMS16:x_offset <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS16:y_offset <- $x23
	.loc	3 96 22                         ; ./emulate.h:96:22
	lsr	x9, x25, x9
Ltmp284:
LBB3_14:
	;DEBUG_VALUE: emulate_AMX_FMS16:z_row <- [$sp+0]
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:g <- 2
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_FMS16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS16:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMS16:x_offset <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS16:y_offset <- $x23
	.loc	3 0 0 is_stmt 0                 ; ./emulate.h:0:0
	mvn	x25, x9
	b	LBB3_16
Ltmp285:
LBB3_15:
	;DEBUG_VALUE: emulate_AMX_FMS16:z_row <- [$sp+0]
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:val <- $w9
	;DEBUG_VALUE: parse_writemask:g <- 2
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_FMS16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS16:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMS16:x_offset <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS16:y_offset <- $x23
	mov	w10, #3
	.loc	3 86 30 is_stmt 1               ; ./emulate.h:86:30
	lsl	x25, x10, x9
Ltmp286:
LBB3_16:
	;DEBUG_VALUE: emulate_AMX_FMS16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMS16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS16:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_FMS16:x_offset <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS16:y_offset <- $x23
	;DEBUG_VALUE: emulate_AMX_FMS16:y_enable <- $x25
	.loc	3 0 30 is_stmt 0                ; ./emulate.h:0:30
	mov	w27, #512
Ltmp287:
	;DEBUG_VALUE: load_xy_reg:offset <- $x8
	;DEBUG_VALUE: load_xy_reg:src <- $x20
	;DEBUG_VALUE: load_xy_reg:dst <- [DW_OP_plus_uconst 72, DW_OP_stack_value] $sp
	.loc	3 42 26 is_stmt 1               ; ./emulate.h:42:26
	sub	x9, x27, x8
Ltmp288:
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
Ltmp289:
	.loc	3 44 5                          ; ./emulate.h:44:5
	mov	x0, x21
	mov	x1, x20
	mov	x2, x22
	bl	_memcpy
Ltmp290:
	.loc	2 127 27                        ; fms.c:127:27
	add	x21, x20, #512
Ltmp291:
	;DEBUG_VALUE: load_xy_reg:offset <- $x23
	;DEBUG_VALUE: load_xy_reg:dst <- [DW_OP_plus_uconst 8, DW_OP_stack_value] $sp
	;DEBUG_VALUE: load_xy_reg:src <- $x21
	.loc	3 42 26                         ; ./emulate.h:42:26
	sub	x8, x27, x23
Ltmp292:
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
Ltmp293:
	.loc	3 43 5                          ; ./emulate.h:43:5
	add	x0, sp, #8
	mov	w3, #64
	bl	___memcpy_chk
Ltmp294:
	.loc	3 44 5                          ; ./emulate.h:44:5
	mov	x0, x22
	mov	x1, x21
	mov	x2, x23
	bl	_memcpy
Ltmp295:
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
	mov	w13, #32768
	fmov	h0, w13
Lloh37:
	adrp	x14, lJTI3_3@PAGE
Lloh38:
	add	x14, x14, lJTI3_3@PAGEOFF
Lloh39:
	adrp	x15, lJTI3_2@PAGE
Lloh40:
	add	x15, x15, lJTI3_2@PAGEOFF
	b	LBB3_20
Ltmp296:
LBB3_17:                                ;   in Loop: Header=BB3_20 Depth=1
	;DEBUG_VALUE: fms16_alu:z <- $h1
	;DEBUG_VALUE: fms16_alu:x <- $h2
	;DEBUG_VALUE: fms16_alu:y <- $h3
	;DEBUG_VALUE: fms16_alu:operand <- $x19
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMS16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMS16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS16:operand <- $x19
	.loc	2 41 22 is_stmt 1               ; fms.c:41:22
	fsub	h1, h1, h3
Ltmp297:
LBB3_18:                                ;   in Loop: Header=BB3_20 Depth=1
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMS16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMS16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS16:operand <- $x19
	.loc	2 133 16                        ; fms.c:133:16
	str	h1, [x9, x8, lsl #1]
Ltmp298:
LBB3_19:                                ;   in Loop: Header=BB3_20 Depth=1
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMS16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMS16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS16:operand <- $x19
	.loc	2 129 30                        ; fms.c:129:30
	add	x8, x8, #1
Ltmp299:
	;DEBUG_VALUE: i <- $x8
	.loc	2 129 5 is_stmt 0               ; fms.c:129:5
	cmp	x8, #32
	b.eq	LBB3_54
Ltmp300:
LBB3_20:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB3_26 Depth 2
	;DEBUG_VALUE: emulate_AMX_FMS16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMS16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMS16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS16:operand <- $x19
	;DEBUG_VALUE: i <- $x8
	.loc	2 130 31 is_stmt 1              ; fms.c:130:31
	lsl	x16, x8, #1
Ltmp301:
	.loc	2 130 13 is_stmt 0              ; fms.c:130:13
	lsr	x17, x24, x16
	tbz	w17, #0, LBB3_19
Ltmp302:
; %bb.21:                               ;   in Loop: Header=BB3_20 Depth=1
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMS16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMS16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS16:operand <- $x19
	.loc	2 131 13 is_stmt 1              ; fms.c:131:13
	tbnz	x19, #63, LBB3_46
Ltmp303:
; %bb.22:                               ;   in Loop: Header=BB3_20 Depth=1
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMS16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMS16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS16:operand <- $x19
	;DEBUG_VALUE: j <- 0
	.loc	2 0 13 is_stmt 0                ; fms.c:0:13
	mov	x17, #0
	and	x0, x8, #0x1
	ubfx	x1, x8, #1, #31
	b	LBB3_26
Ltmp304:
LBB3_23:                                ;   in Loop: Header=BB3_26 Depth=2
	;DEBUG_VALUE: fms16_alu:z <- $h1
	;DEBUG_VALUE: fms16_alu:x <- $h2
	;DEBUG_VALUE: fms16_alu:y <- $h3
	;DEBUG_VALUE: fms16_alu:operand <- $x19
	;DEBUG_VALUE: j <- [DW_OP_consts 2, DW_OP_div, DW_OP_stack_value] $x17
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMS16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMS16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS16:operand <- $x19
	.loc	2 41 22 is_stmt 1               ; fms.c:41:22
	fsub	h1, h1, h3
Ltmp305:
LBB3_24:                                ;   in Loop: Header=BB3_26 Depth=2
	;DEBUG_VALUE: j <- [DW_OP_consts 2, DW_OP_div, DW_OP_stack_value] $x17
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMS16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMS16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS16:operand <- $x19
	.loc	2 144 24                        ; fms.c:144:24
	str	h1, [x2, x8, lsl #1]
Ltmp306:
LBB3_25:                                ;   in Loop: Header=BB3_26 Depth=2
	;DEBUG_VALUE: j <- [DW_OP_consts 2, DW_OP_div, DW_OP_stack_value] $x17
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMS16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMS16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS16:operand <- $x19
	;DEBUG_VALUE: j <- [DW_OP_consts 2, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] $x17
	.loc	2 135 31                        ; fms.c:135:31
	add	x17, x17, #2
Ltmp307:
	.loc	2 135 13 is_stmt 0              ; fms.c:135:13
	cmp	x17, #64
	b.eq	LBB3_19
Ltmp308:
LBB3_26:                                ;   Parent Loop BB3_20 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMS16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMS16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS16:operand <- $x19
	;DEBUG_VALUE: j <- [DW_OP_consts 2, DW_OP_div, DW_OP_stack_value] $x17
	.loc	2 136 21 is_stmt 1              ; fms.c:136:21
	lsr	x2, x25, x17
	tbz	w2, #0, LBB3_25
Ltmp309:
; %bb.27:                               ;   in Loop: Header=BB3_26 Depth=2
	;DEBUG_VALUE: j <- [DW_OP_consts 2, DW_OP_div, DW_OP_stack_value] $x17
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMS16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMS16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS16:operand <- $x19
	.loc	2 137 21                        ; fms.c:137:21
	tbnz	x19, #62, LBB3_31
Ltmp310:
; %bb.28:                               ;   in Loop: Header=BB3_26 Depth=2
	;DEBUG_VALUE: j <- [DW_OP_consts 2, DW_OP_div, DW_OP_stack_value] $x17
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMS16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMS16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS16:operand <- $x19
	.loc	2 143 53                        ; fms.c:143:53
	orr	x2, x10, x17
	.loc	2 143 36 is_stmt 0              ; fms.c:143:36
	add	x2, x20, x2, lsl #6
	.loc	2 144 36 is_stmt 1              ; fms.c:144:36
	ldr	h2, [x26, x16]
	.loc	2 143 36                        ; fms.c:143:36
	add	x2, x2, #1024
Ltmp311:
	;DEBUG_VALUE: z <- undef
	.loc	2 144 42                        ; fms.c:144:42
	ldr	h3, [x27, x17]
	.loc	2 144 48 is_stmt 0              ; fms.c:144:48
	ldr	h1, [x2, x16]
Ltmp312:
	;DEBUG_VALUE: fms16_alu:operand <- $x19
	;DEBUG_VALUE: fms16_alu:y <- $h3
	;DEBUG_VALUE: fms16_alu:x <- $h2
	;DEBUG_VALUE: fms16_alu:z <- $h1
	.loc	2 37 5 is_stmt 1                ; fms.c:37:5
	cmp	x11, #6
	b.hi	LBB3_39
Ltmp313:
; %bb.29:                               ;   in Loop: Header=BB3_26 Depth=2
	;DEBUG_VALUE: fms16_alu:z <- $h1
	;DEBUG_VALUE: fms16_alu:x <- $h2
	;DEBUG_VALUE: fms16_alu:y <- $h3
	;DEBUG_VALUE: fms16_alu:operand <- $x19
	;DEBUG_VALUE: j <- [DW_OP_consts 2, DW_OP_div, DW_OP_stack_value] $x17
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMS16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMS16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS16:operand <- $x19
	.loc	2 0 5 is_stmt 0                 ; fms.c:0:5
Ltmp314:
	adr	x3, Ltmp314
	ldrsw	x4, [x12, x11, lsl #2]
	add	x3, x3, x4
	br	x3
Ltmp315:
LBB3_30:                                ;   in Loop: Header=BB3_26 Depth=2
	;DEBUG_VALUE: fms16_alu:z <- $h1
	;DEBUG_VALUE: fms16_alu:x <- $h2
	;DEBUG_VALUE: fms16_alu:y <- $h3
	;DEBUG_VALUE: fms16_alu:operand <- $x19
	;DEBUG_VALUE: j <- [DW_OP_consts 2, DW_OP_div, DW_OP_stack_value] $x17
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMS16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMS16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS16:operand <- $x19
	.loc	2 38 20 is_stmt 1               ; fms.c:38:20
	fneg	h1, h2
Ltmp316:
	.loc	2 38 23 is_stmt 0               ; fms.c:38:23
	fmul	h1, h3, h1
	b	LBB3_24
Ltmp317:
LBB3_31:                                ;   in Loop: Header=BB3_26 Depth=2
	;DEBUG_VALUE: j <- [DW_OP_consts 2, DW_OP_div, DW_OP_stack_value] $x17
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMS16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMS16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS16:operand <- $x19
	.loc	2 138 33 is_stmt 1              ; fms.c:138:33
	orr	x2, x0, x17
	add	x2, x20, x2, lsl #6
	add	x2, x2, #1024
Ltmp318:
	;DEBUG_VALUE: z <- undef
	.loc	2 139 32                        ; fms.c:139:32
	ldr	h1, [x26, x8, lsl #1]
	fcvt	s2, h1
Ltmp319:
	;DEBUG_VALUE: xv <- $s2
	.loc	2 139 42 is_stmt 0              ; fms.c:139:42
	fneg	s3, s2
	fcmp	h1, h1
	fcsel	s2, s3, s2, vs
Ltmp320:
	;DEBUG_VALUE: xv <- $s2
	.loc	2 140 32 is_stmt 1              ; fms.c:140:32
	ldr	h1, [x27, x17]
	fcvt	s3, h1
Ltmp321:
	;DEBUG_VALUE: yv <- $s3
	.loc	2 140 42 is_stmt 0              ; fms.c:140:42
	fneg	s4, s3
	fcmp	h1, h1
	fcsel	s3, s4, s3, vs
Ltmp322:
	;DEBUG_VALUE: yv <- $s3
	.loc	2 141 44 is_stmt 1              ; fms.c:141:44
	ldr	s1, [x2, x1, lsl #2]
Ltmp323:
	;DEBUG_VALUE: fms32_alu:operand <- $x19
	;DEBUG_VALUE: fms32_alu:z <- $s1
	;DEBUG_VALUE: fms32_alu:y <- $s3
	;DEBUG_VALUE: fms32_alu:x <- $s2
	.loc	2 22 5                          ; fms.c:22:5
	cmp	x11, #6
	b.hi	LBB3_42
Ltmp324:
; %bb.32:                               ;   in Loop: Header=BB3_26 Depth=2
	;DEBUG_VALUE: fms32_alu:x <- $s2
	;DEBUG_VALUE: fms32_alu:y <- $s3
	;DEBUG_VALUE: fms32_alu:z <- $s1
	;DEBUG_VALUE: fms32_alu:operand <- $x19
	;DEBUG_VALUE: yv <- $s3
	;DEBUG_VALUE: xv <- $s2
	;DEBUG_VALUE: j <- [DW_OP_consts 2, DW_OP_div, DW_OP_stack_value] $x17
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMS16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMS16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS16:operand <- $x19
	.loc	2 0 5 is_stmt 0                 ; fms.c:0:5
Ltmp325:
	adr	x3, Ltmp325
	ldrsw	x4, [x14, x11, lsl #2]
	add	x3, x3, x4
	br	x3
Ltmp326:
LBB3_33:                                ;   in Loop: Header=BB3_26 Depth=2
	;DEBUG_VALUE: fms32_alu:x <- $s2
	;DEBUG_VALUE: fms32_alu:y <- $s3
	;DEBUG_VALUE: fms32_alu:z <- $s1
	;DEBUG_VALUE: fms32_alu:operand <- $x19
	;DEBUG_VALUE: yv <- $s3
	;DEBUG_VALUE: xv <- $s2
	;DEBUG_VALUE: j <- [DW_OP_consts 2, DW_OP_div, DW_OP_stack_value] $x17
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMS16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMS16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS16:operand <- $x19
	.loc	2 23 20 is_stmt 1               ; fms.c:23:20
	fneg	s1, s2
Ltmp327:
	.loc	2 23 23 is_stmt 0               ; fms.c:23:23
	fmul	s1, s3, s1
Ltmp328:
	.loc	2 141 24 is_stmt 1              ; fms.c:141:24
	str	s1, [x2, x1, lsl #2]
	b	LBB3_25
Ltmp329:
LBB3_34:                                ;   in Loop: Header=BB3_26 Depth=2
	;DEBUG_VALUE: fms16_alu:z <- $h1
	;DEBUG_VALUE: fms16_alu:x <- $h2
	;DEBUG_VALUE: fms16_alu:y <- $h3
	;DEBUG_VALUE: fms16_alu:operand <- $x19
	;DEBUG_VALUE: j <- [DW_OP_consts 2, DW_OP_div, DW_OP_stack_value] $x17
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMS16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMS16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS16:operand <- $x19
	.loc	2 39 22                         ; fms.c:39:22
	fsub	h1, h1, h2
Ltmp330:
	.loc	2 0 22 is_stmt 0                ; fms.c:0:22
	b	LBB3_24
Ltmp331:
LBB3_35:                                ;   in Loop: Header=BB3_26 Depth=2
	;DEBUG_VALUE: fms16_alu:z <- $h1
	;DEBUG_VALUE: fms16_alu:x <- $h2
	;DEBUG_VALUE: fms16_alu:y <- $h3
	;DEBUG_VALUE: fms16_alu:operand <- $x19
	;DEBUG_VALUE: j <- [DW_OP_consts 2, DW_OP_div, DW_OP_stack_value] $x17
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMS16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMS16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS16:operand <- $x19
	.loc	2 40 20 is_stmt 1               ; fms.c:40:20
	fneg	h1, h2
Ltmp332:
	.loc	2 0 20 is_stmt 0                ; fms.c:0:20
	b	LBB3_24
Ltmp333:
LBB3_36:                                ;   in Loop: Header=BB3_26 Depth=2
	;DEBUG_VALUE: fms32_alu:x <- $s2
	;DEBUG_VALUE: fms32_alu:y <- $s3
	;DEBUG_VALUE: fms32_alu:z <- $s1
	;DEBUG_VALUE: fms32_alu:operand <- $x19
	;DEBUG_VALUE: yv <- $s3
	;DEBUG_VALUE: xv <- $s2
	;DEBUG_VALUE: j <- [DW_OP_consts 2, DW_OP_div, DW_OP_stack_value] $x17
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMS16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMS16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS16:operand <- $x19
	.loc	2 24 22 is_stmt 1               ; fms.c:24:22
	fsub	s1, s1, s2
Ltmp334:
	.loc	2 141 24                        ; fms.c:141:24
	str	s1, [x2, x1, lsl #2]
	b	LBB3_25
Ltmp335:
LBB3_37:                                ;   in Loop: Header=BB3_26 Depth=2
	;DEBUG_VALUE: fms32_alu:x <- $s2
	;DEBUG_VALUE: fms32_alu:y <- $s3
	;DEBUG_VALUE: fms32_alu:z <- $s1
	;DEBUG_VALUE: fms32_alu:operand <- $x19
	;DEBUG_VALUE: yv <- $s3
	;DEBUG_VALUE: xv <- $s2
	;DEBUG_VALUE: j <- [DW_OP_consts 2, DW_OP_div, DW_OP_stack_value] $x17
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMS16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMS16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS16:operand <- $x19
	.loc	2 25 20                         ; fms.c:25:20
	fneg	s1, s2
Ltmp336:
	.loc	2 141 24                        ; fms.c:141:24
	str	s1, [x2, x1, lsl #2]
	b	LBB3_25
Ltmp337:
LBB3_38:                                ;   in Loop: Header=BB3_26 Depth=2
	;DEBUG_VALUE: fms32_alu:x <- $s2
	;DEBUG_VALUE: fms32_alu:y <- $s3
	;DEBUG_VALUE: fms32_alu:z <- $s1
	;DEBUG_VALUE: fms32_alu:operand <- $x19
	;DEBUG_VALUE: yv <- $s3
	;DEBUG_VALUE: xv <- $s2
	;DEBUG_VALUE: j <- [DW_OP_consts 2, DW_OP_div, DW_OP_stack_value] $x17
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMS16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMS16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS16:operand <- $x19
	.loc	2 26 22                         ; fms.c:26:22
	fsub	s1, s1, s3
Ltmp338:
	.loc	2 141 24                        ; fms.c:141:24
	str	s1, [x2, x1, lsl #2]
	b	LBB3_25
Ltmp339:
LBB3_39:                                ;   in Loop: Header=BB3_26 Depth=2
	;DEBUG_VALUE: fms16_alu:z <- $h1
	;DEBUG_VALUE: fms16_alu:x <- $h2
	;DEBUG_VALUE: fms16_alu:y <- $h3
	;DEBUG_VALUE: fms16_alu:operand <- $x19
	;DEBUG_VALUE: j <- [DW_OP_consts 2, DW_OP_div, DW_OP_stack_value] $x17
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMS16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMS16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS16:operand <- $x19
	.loc	2 47 5                          ; fms.c:47:5
	; InlineAsm Start
	fmsub	h1, h2, h3, h1
	; InlineAsm End
Ltmp340:
	;DEBUG_VALUE: fms16_alu:result <- $h1
	.loc	2 0 5 is_stmt 0                 ; fms.c:0:5
	b	LBB3_24
Ltmp341:
LBB3_40:                                ;   in Loop: Header=BB3_26 Depth=2
	;DEBUG_VALUE: fms16_alu:z <- $h1
	;DEBUG_VALUE: fms16_alu:x <- $h2
	;DEBUG_VALUE: fms16_alu:y <- $h3
	;DEBUG_VALUE: fms16_alu:operand <- $x19
	;DEBUG_VALUE: j <- [DW_OP_consts 2, DW_OP_div, DW_OP_stack_value] $x17
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMS16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMS16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS16:operand <- $x19
	.loc	2 42 20 is_stmt 1               ; fms.c:42:20
	fneg	h1, h3
Ltmp342:
	.loc	2 0 20 is_stmt 0                ; fms.c:0:20
	b	LBB3_24
Ltmp343:
LBB3_41:                                ;   in Loop: Header=BB3_26 Depth=2
	;DEBUG_VALUE: fms16_alu:z <- $h1
	;DEBUG_VALUE: fms16_alu:x <- $h2
	;DEBUG_VALUE: fms16_alu:y <- $h3
	;DEBUG_VALUE: fms16_alu:operand <- $x19
	;DEBUG_VALUE: j <- [DW_OP_consts 2, DW_OP_div, DW_OP_stack_value] $x17
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMS16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMS16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS16:operand <- $x19
	fmov	s1, s0
	b	LBB3_24
Ltmp344:
LBB3_42:                                ;   in Loop: Header=BB3_26 Depth=2
	;DEBUG_VALUE: fms32_alu:x <- $s2
	;DEBUG_VALUE: fms32_alu:y <- $s3
	;DEBUG_VALUE: fms32_alu:z <- $s1
	;DEBUG_VALUE: fms32_alu:operand <- $x19
	;DEBUG_VALUE: yv <- $s3
	;DEBUG_VALUE: xv <- $s2
	;DEBUG_VALUE: j <- [DW_OP_consts 2, DW_OP_div, DW_OP_stack_value] $x17
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMS16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMS16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS16:operand <- $x19
	.loc	2 32 5 is_stmt 1                ; fms.c:32:5
	; InlineAsm Start
	fmsub	s1, s2, s3, s1
	; InlineAsm End
Ltmp345:
	;DEBUG_VALUE: fms32_alu:result <- $s1
LBB3_43:                                ;   in Loop: Header=BB3_26 Depth=2
	;DEBUG_VALUE: yv <- $s3
	;DEBUG_VALUE: xv <- $s2
	;DEBUG_VALUE: j <- [DW_OP_consts 2, DW_OP_div, DW_OP_stack_value] $x17
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMS16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMS16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS16:operand <- $x19
	.loc	2 141 24                        ; fms.c:141:24
	str	s1, [x2, x1, lsl #2]
	b	LBB3_25
Ltmp346:
LBB3_44:                                ;   in Loop: Header=BB3_26 Depth=2
	;DEBUG_VALUE: fms32_alu:x <- $s2
	;DEBUG_VALUE: fms32_alu:y <- $s3
	;DEBUG_VALUE: fms32_alu:z <- $s1
	;DEBUG_VALUE: fms32_alu:operand <- $x19
	;DEBUG_VALUE: yv <- $s3
	;DEBUG_VALUE: xv <- $s2
	;DEBUG_VALUE: j <- [DW_OP_consts 2, DW_OP_div, DW_OP_stack_value] $x17
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMS16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMS16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS16:operand <- $x19
	.loc	2 27 20                         ; fms.c:27:20
	fneg	s1, s3
Ltmp347:
	.loc	2 141 24                        ; fms.c:141:24
	str	s1, [x2, x1, lsl #2]
	b	LBB3_25
Ltmp348:
LBB3_45:                                ;   in Loop: Header=BB3_26 Depth=2
	;DEBUG_VALUE: yv <- $s3
	;DEBUG_VALUE: xv <- $s2
	;DEBUG_VALUE: j <- [DW_OP_consts 2, DW_OP_div, DW_OP_stack_value] $x17
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMS16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMS16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS16:operand <- $x19
	.loc	2 0 24 is_stmt 0                ; fms.c:0:24
	movi.2s	v1, #128, lsl #24
	.loc	2 141 24                        ; fms.c:141:24
	str	s1, [x2, x1, lsl #2]
	b	LBB3_25
Ltmp349:
LBB3_46:                                ;   in Loop: Header=BB3_20 Depth=1
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMS16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMS16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS16:operand <- $x19
	;DEBUG_VALUE: z <- undef
	.loc	2 133 28 is_stmt 1              ; fms.c:133:28
	ldr	h2, [x26, x16]
	.loc	2 133 34 is_stmt 0              ; fms.c:133:34
	ldr	h3, [x27, x16]
	.loc	2 133 40                        ; fms.c:133:40
	ldr	h1, [x9, x16]
Ltmp350:
	;DEBUG_VALUE: fms16_alu:operand <- $x19
	;DEBUG_VALUE: fms16_alu:y <- $h3
	;DEBUG_VALUE: fms16_alu:x <- $h2
	;DEBUG_VALUE: fms16_alu:z <- $h1
	.loc	2 37 5 is_stmt 1                ; fms.c:37:5
	cmp	x11, #6
	b.hi	LBB3_49
Ltmp351:
; %bb.47:                               ;   in Loop: Header=BB3_20 Depth=1
	;DEBUG_VALUE: fms16_alu:z <- $h1
	;DEBUG_VALUE: fms16_alu:x <- $h2
	;DEBUG_VALUE: fms16_alu:y <- $h3
	;DEBUG_VALUE: fms16_alu:operand <- $x19
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMS16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMS16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS16:operand <- $x19
	.loc	2 0 5 is_stmt 0                 ; fms.c:0:5
Ltmp352:
	adr	x16, Ltmp352
	ldrsw	x17, [x15, x11, lsl #2]
	add	x16, x16, x17
	br	x16
Ltmp353:
LBB3_48:                                ;   in Loop: Header=BB3_20 Depth=1
	;DEBUG_VALUE: fms16_alu:z <- $h1
	;DEBUG_VALUE: fms16_alu:x <- $h2
	;DEBUG_VALUE: fms16_alu:y <- $h3
	;DEBUG_VALUE: fms16_alu:operand <- $x19
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMS16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMS16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS16:operand <- $x19
	.loc	2 38 20 is_stmt 1               ; fms.c:38:20
	fneg	h1, h2
Ltmp354:
	.loc	2 38 23 is_stmt 0               ; fms.c:38:23
	fmul	h1, h3, h1
	b	LBB3_18
Ltmp355:
LBB3_49:                                ;   in Loop: Header=BB3_20 Depth=1
	;DEBUG_VALUE: fms16_alu:z <- $h1
	;DEBUG_VALUE: fms16_alu:x <- $h2
	;DEBUG_VALUE: fms16_alu:y <- $h3
	;DEBUG_VALUE: fms16_alu:operand <- $x19
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMS16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMS16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS16:operand <- $x19
	.loc	2 47 5 is_stmt 1                ; fms.c:47:5
	; InlineAsm Start
	fmsub	h1, h2, h3, h1
	; InlineAsm End
Ltmp356:
	;DEBUG_VALUE: fms16_alu:result <- $h1
	.loc	2 0 5 is_stmt 0                 ; fms.c:0:5
	b	LBB3_18
Ltmp357:
LBB3_50:                                ;   in Loop: Header=BB3_20 Depth=1
	;DEBUG_VALUE: fms16_alu:z <- $h1
	;DEBUG_VALUE: fms16_alu:x <- $h2
	;DEBUG_VALUE: fms16_alu:y <- $h3
	;DEBUG_VALUE: fms16_alu:operand <- $x19
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMS16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMS16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS16:operand <- $x19
	.loc	2 39 22 is_stmt 1               ; fms.c:39:22
	fsub	h1, h1, h2
Ltmp358:
	.loc	2 0 22 is_stmt 0                ; fms.c:0:22
	b	LBB3_18
Ltmp359:
LBB3_51:                                ;   in Loop: Header=BB3_20 Depth=1
	;DEBUG_VALUE: fms16_alu:z <- $h1
	;DEBUG_VALUE: fms16_alu:x <- $h2
	;DEBUG_VALUE: fms16_alu:y <- $h3
	;DEBUG_VALUE: fms16_alu:operand <- $x19
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMS16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMS16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS16:operand <- $x19
	.loc	2 40 20 is_stmt 1               ; fms.c:40:20
	fneg	h1, h2
Ltmp360:
	.loc	2 0 20 is_stmt 0                ; fms.c:0:20
	b	LBB3_18
Ltmp361:
LBB3_52:                                ;   in Loop: Header=BB3_20 Depth=1
	;DEBUG_VALUE: fms16_alu:z <- $h1
	;DEBUG_VALUE: fms16_alu:x <- $h2
	;DEBUG_VALUE: fms16_alu:y <- $h3
	;DEBUG_VALUE: fms16_alu:operand <- $x19
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMS16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMS16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS16:operand <- $x19
	.loc	2 42 20 is_stmt 1               ; fms.c:42:20
	fneg	h1, h3
Ltmp362:
	.loc	2 0 20 is_stmt 0                ; fms.c:0:20
	b	LBB3_18
Ltmp363:
LBB3_53:                                ;   in Loop: Header=BB3_20 Depth=1
	;DEBUG_VALUE: fms16_alu:z <- $h1
	;DEBUG_VALUE: fms16_alu:x <- $h2
	;DEBUG_VALUE: fms16_alu:y <- $h3
	;DEBUG_VALUE: fms16_alu:operand <- $x19
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMS16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMS16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS16:operand <- $x19
	fmov	h1, w13
	b	LBB3_18
Ltmp364:
LBB3_54:
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_FMS16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMS16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMS16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS16:operand <- $x19
	ldur	x8, [x29, #-88]
Lloh41:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh42:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh43:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB3_56
Ltmp365:
; %bb.55:
	;DEBUG_VALUE: emulate_AMX_FMS16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMS16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMS16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS16:operand <- $x19
	.loc	2 149 1 is_stmt 1               ; fms.c:149:1
	ldp	x29, x30, [sp, #224]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #208]            ; 16-byte Folded Reload
Ltmp366:
	;DEBUG_VALUE: emulate_AMX_FMS16:state <- [DW_OP_LLVM_entry_value 1] $x0
	;DEBUG_VALUE: emulate_AMX_FMS16:operand <- [DW_OP_LLVM_entry_value 1] $x1
	ldp	x22, x21, [sp, #192]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #176]            ; 16-byte Folded Reload
Ltmp367:
	ldp	x26, x25, [sp, #160]            ; 16-byte Folded Reload
Ltmp368:
	ldp	x28, x27, [sp, #144]            ; 16-byte Folded Reload
	add	sp, sp, #240
Ltmp369:
	ret
Ltmp370:
LBB3_56:
	;DEBUG_VALUE: emulate_AMX_FMS16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_FMS16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_FMS16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_FMS16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_FMS16:operand <- $x19
	.loc	2 0 1 is_stmt 0                 ; fms.c:0:1
	bl	___stack_chk_fail
Ltmp371:
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
	.long	LBB3_1-Ltmp258
	.long	LBB3_7-Ltmp258
	.long	LBB3_2-Ltmp258
	.long	LBB3_4-Ltmp258
	.p2align	2
lJTI3_1:
	.long	LBB3_9-Ltmp274
	.long	LBB3_15-Ltmp274
	.long	LBB3_10-Ltmp274
	.long	LBB3_12-Ltmp274
	.p2align	2
lJTI3_2:
	.long	LBB3_48-Ltmp352
	.long	LBB3_50-Ltmp352
	.long	LBB3_51-Ltmp352
	.long	LBB3_17-Ltmp352
	.long	LBB3_52-Ltmp352
	.long	LBB3_18-Ltmp352
	.long	LBB3_53-Ltmp352
	.p2align	2
lJTI3_3:
	.long	LBB3_33-Ltmp325
	.long	LBB3_36-Ltmp325
	.long	LBB3_37-Ltmp325
	.long	LBB3_38-Ltmp325
	.long	LBB3_44-Ltmp325
	.long	LBB3_43-Ltmp325
	.long	LBB3_45-Ltmp325
	.p2align	2
lJTI3_4:
	.long	LBB3_30-Ltmp314
	.long	LBB3_34-Ltmp314
	.long	LBB3_35-Ltmp314
	.long	LBB3_23-Ltmp314
	.long	LBB3_40-Ltmp314
	.long	LBB3_24-Ltmp314
	.long	LBB3_41-Ltmp314
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
.set Lset3, Ltmp94-Lfunc_begin0
	.quad	Lset3
	.short	1                               ; Loc expr size
	.byte	100                             ; DW_OP_reg20
.set Lset4, Ltmp94-Lfunc_begin0
	.quad	Lset4
.set Lset5, Ltmp98-Lfunc_begin0
	.quad	Lset5
	.short	4                               ; Loc expr size
	.byte	163                             ; DW_OP_entry_value
	.byte	1                               ; 1
	.byte	80                              ; DW_OP_reg0
	.byte	159                             ; DW_OP_stack_value
.set Lset6, Ltmp98-Lfunc_begin0
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
.set Lset11, Ltmp94-Lfunc_begin0
	.quad	Lset11
	.short	1                               ; Loc expr size
	.byte	99                              ; DW_OP_reg19
.set Lset12, Ltmp94-Lfunc_begin0
	.quad	Lset12
.set Lset13, Ltmp98-Lfunc_begin0
	.quad	Lset13
	.short	4                               ; Loc expr size
	.byte	163                             ; DW_OP_entry_value
	.byte	1                               ; 1
	.byte	81                              ; DW_OP_reg1
	.byte	159                             ; DW_OP_stack_value
.set Lset14, Ltmp98-Lfunc_begin0
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
.set Lset23, Ltmp97-Lfunc_begin0
	.quad	Lset23
	.short	2                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	0                               ; 0
.set Lset24, Ltmp98-Lfunc_begin0
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
.set Lset47, Ltmp95-Lfunc_begin0
	.quad	Lset47
	.short	1                               ; Loc expr size
	.byte	104                             ; DW_OP_reg24
.set Lset48, Ltmp98-Lfunc_begin0
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
.set Lset71, Ltmp96-Lfunc_begin0
	.quad	Lset71
	.short	1                               ; Loc expr size
	.byte	105                             ; DW_OP_reg25
.set Lset72, Ltmp98-Lfunc_begin0
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
.set Lset82, Ltmp48-Lfunc_begin0
	.quad	Lset82
.set Lset83, Ltmp49-Lfunc_begin0
	.quad	Lset83
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset84, Ltmp78-Lfunc_begin0
	.quad	Lset84
.set Lset85, Ltmp82-Lfunc_begin0
	.quad	Lset85
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset86, Ltmp83-Lfunc_begin0
	.quad	Lset86
.set Lset87, Ltmp84-Lfunc_begin0
	.quad	Lset87
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset88, Ltmp85-Lfunc_begin0
	.quad	Lset88
.set Lset89, Ltmp86-Lfunc_begin0
	.quad	Lset89
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset90, Ltmp87-Lfunc_begin0
	.quad	Lset90
.set Lset91, Ltmp88-Lfunc_begin0
	.quad	Lset91
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset92, Ltmp89-Lfunc_begin0
	.quad	Lset92
.set Lset93, Ltmp90-Lfunc_begin0
	.quad	Lset93
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
	.quad	0
	.quad	0
Ldebug_loc18:
.set Lset94, Ltmp48-Lfunc_begin0
	.quad	Lset94
.set Lset95, Ltmp49-Lfunc_begin0
	.quad	Lset95
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	65                              ; 65
.set Lset96, Ltmp78-Lfunc_begin0
	.quad	Lset96
.set Lset97, Ltmp91-Lfunc_begin0
	.quad	Lset97
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	65                              ; 65
	.quad	0
	.quad	0
Ldebug_loc19:
.set Lset98, Ltmp48-Lfunc_begin0
	.quad	Lset98
.set Lset99, Ltmp49-Lfunc_begin0
	.quad	Lset99
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	66                              ; 66
.set Lset100, Ltmp78-Lfunc_begin0
	.quad	Lset100
.set Lset101, Ltmp91-Lfunc_begin0
	.quad	Lset101
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	66                              ; 66
	.quad	0
	.quad	0
Ldebug_loc20:
.set Lset102, Ltmp48-Lfunc_begin0
	.quad	Lset102
.set Lset103, Ltmp49-Lfunc_begin0
	.quad	Lset103
	.short	1                               ; Loc expr size
	.byte	99                              ; DW_OP_reg19
.set Lset104, Ltmp78-Lfunc_begin0
	.quad	Lset104
.set Lset105, Ltmp91-Lfunc_begin0
	.quad	Lset105
	.short	1                               ; Loc expr size
	.byte	99                              ; DW_OP_reg19
	.quad	0
	.quad	0
Ldebug_loc21:
.set Lset106, Ltmp56-Lfunc_begin0
	.quad	Lset106
.set Lset107, Ltmp58-Lfunc_begin0
	.quad	Lset107
	.short	6                               ; Loc expr size
	.byte	127                             ; DW_OP_breg15
	.byte	0                               ; 0
	.byte	17                              ; DW_OP_consts
	.byte	8                               ; 8
	.byte	27                              ; DW_OP_div
	.byte	159                             ; DW_OP_stack_value
.set Lset108, Ltmp58-Lfunc_begin0
	.quad	Lset108
.set Lset109, Ltmp59-Lfunc_begin0
	.quad	Lset109
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
.set Lset110, Ltmp60-Lfunc_begin0
	.quad	Lset110
.set Lset111, Ltmp76-Lfunc_begin0
	.quad	Lset111
	.short	6                               ; Loc expr size
	.byte	127                             ; DW_OP_breg15
	.byte	0                               ; 0
	.byte	17                              ; DW_OP_consts
	.byte	8                               ; 8
	.byte	27                              ; DW_OP_div
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc22:
.set Lset112, Ltmp56-Lfunc_begin0
	.quad	Lset112
.set Lset113, Ltmp57-Lfunc_begin0
	.quad	Lset113
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset114, Ltmp63-Lfunc_begin0
	.quad	Lset114
.set Lset115, Ltmp67-Lfunc_begin0
	.quad	Lset115
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset116, Ltmp68-Lfunc_begin0
	.quad	Lset116
.set Lset117, Ltmp69-Lfunc_begin0
	.quad	Lset117
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset118, Ltmp70-Lfunc_begin0
	.quad	Lset118
.set Lset119, Ltmp71-Lfunc_begin0
	.quad	Lset119
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset120, Ltmp72-Lfunc_begin0
	.quad	Lset120
.set Lset121, Ltmp73-Lfunc_begin0
	.quad	Lset121
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset122, Ltmp74-Lfunc_begin0
	.quad	Lset122
.set Lset123, Ltmp75-Lfunc_begin0
	.quad	Lset123
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
	.quad	0
	.quad	0
Ldebug_loc23:
.set Lset124, Ltmp56-Lfunc_begin0
	.quad	Lset124
.set Lset125, Ltmp57-Lfunc_begin0
	.quad	Lset125
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	65                              ; 65
.set Lset126, Ltmp63-Lfunc_begin0
	.quad	Lset126
.set Lset127, Ltmp76-Lfunc_begin0
	.quad	Lset127
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	65                              ; 65
	.quad	0
	.quad	0
Ldebug_loc24:
.set Lset128, Ltmp56-Lfunc_begin0
	.quad	Lset128
.set Lset129, Ltmp57-Lfunc_begin0
	.quad	Lset129
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	66                              ; 66
.set Lset130, Ltmp63-Lfunc_begin0
	.quad	Lset130
.set Lset131, Ltmp76-Lfunc_begin0
	.quad	Lset131
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	66                              ; 66
	.quad	0
	.quad	0
Ldebug_loc25:
.set Lset132, Ltmp56-Lfunc_begin0
	.quad	Lset132
.set Lset133, Ltmp57-Lfunc_begin0
	.quad	Lset133
	.short	1                               ; Loc expr size
	.byte	99                              ; DW_OP_reg19
.set Lset134, Ltmp63-Lfunc_begin0
	.quad	Lset134
.set Lset135, Ltmp76-Lfunc_begin0
	.quad	Lset135
	.short	1                               ; Loc expr size
	.byte	99                              ; DW_OP_reg19
	.quad	0
	.quad	0
Ldebug_loc26:
.set Lset136, Ltmp73-Lfunc_begin0
	.quad	Lset136
.set Lset137, Ltmp74-Lfunc_begin0
	.quad	Lset137
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
	.quad	0
	.quad	0
Ldebug_loc27:
.set Lset138, Ltmp84-Lfunc_begin0
	.quad	Lset138
.set Lset139, Ltmp85-Lfunc_begin0
	.quad	Lset139
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
	.quad	0
	.quad	0
Ldebug_loc28:
.set Lset140, Lfunc_begin1-Lfunc_begin0
	.quad	Lset140
.set Lset141, Ltmp109-Lfunc_begin0
	.quad	Lset141
	.short	1                               ; Loc expr size
	.byte	80                              ; DW_OP_reg0
.set Lset142, Ltmp109-Lfunc_begin0
	.quad	Lset142
.set Lset143, Ltmp182-Lfunc_begin0
	.quad	Lset143
	.short	1                               ; Loc expr size
	.byte	100                             ; DW_OP_reg20
.set Lset144, Ltmp182-Lfunc_begin0
	.quad	Lset144
.set Lset145, Ltmp186-Lfunc_begin0
	.quad	Lset145
	.short	4                               ; Loc expr size
	.byte	163                             ; DW_OP_entry_value
	.byte	1                               ; 1
	.byte	80                              ; DW_OP_reg0
	.byte	159                             ; DW_OP_stack_value
.set Lset146, Ltmp186-Lfunc_begin0
	.quad	Lset146
.set Lset147, Lfunc_end1-Lfunc_begin0
	.quad	Lset147
	.short	1                               ; Loc expr size
	.byte	100                             ; DW_OP_reg20
	.quad	0
	.quad	0
Ldebug_loc29:
.set Lset148, Lfunc_begin1-Lfunc_begin0
	.quad	Lset148
.set Lset149, Ltmp108-Lfunc_begin0
	.quad	Lset149
	.short	1                               ; Loc expr size
	.byte	81                              ; DW_OP_reg1
.set Lset150, Ltmp108-Lfunc_begin0
	.quad	Lset150
.set Lset151, Ltmp182-Lfunc_begin0
	.quad	Lset151
	.short	1                               ; Loc expr size
	.byte	99                              ; DW_OP_reg19
.set Lset152, Ltmp182-Lfunc_begin0
	.quad	Lset152
.set Lset153, Ltmp186-Lfunc_begin0
	.quad	Lset153
	.short	4                               ; Loc expr size
	.byte	163                             ; DW_OP_entry_value
	.byte	1                               ; 1
	.byte	81                              ; DW_OP_reg1
	.byte	159                             ; DW_OP_stack_value
.set Lset154, Ltmp186-Lfunc_begin0
	.quad	Lset154
.set Lset155, Lfunc_end1-Lfunc_begin0
	.quad	Lset155
	.short	1                               ; Loc expr size
	.byte	99                              ; DW_OP_reg19
	.quad	0
	.quad	0
Ldebug_loc30:
.set Lset156, Ltmp101-Lfunc_begin0
	.quad	Lset156
.set Lset157, Ltmp183-Lfunc_begin0
	.quad	Lset157
	.short	1                               ; Loc expr size
	.byte	101                             ; DW_OP_reg21
.set Lset158, Ltmp186-Lfunc_begin0
	.quad	Lset158
.set Lset159, Lfunc_end1-Lfunc_begin0
	.quad	Lset159
	.short	1                               ; Loc expr size
	.byte	101                             ; DW_OP_reg21
	.quad	0
	.quad	0
Ldebug_loc31:
.set Lset160, Ltmp102-Lfunc_begin0
	.quad	Lset160
.set Lset161, Ltmp134-Lfunc_begin0
	.quad	Lset161
	.short	1                               ; Loc expr size
	.byte	82                              ; DW_OP_reg2
	.quad	0
	.quad	0
Ldebug_loc32:
.set Lset162, Ltmp103-Lfunc_begin0
	.quad	Lset162
.set Lset163, Ltmp185-Lfunc_begin0
	.quad	Lset163
	.short	1                               ; Loc expr size
	.byte	106                             ; DW_OP_reg26
.set Lset164, Ltmp186-Lfunc_begin0
	.quad	Lset164
.set Lset165, Lfunc_end1-Lfunc_begin0
	.quad	Lset165
	.short	1                               ; Loc expr size
	.byte	106                             ; DW_OP_reg26
	.quad	0
	.quad	0
Ldebug_loc33:
.set Lset166, Ltmp104-Lfunc_begin0
	.quad	Lset166
.set Lset167, Ltmp106-Lfunc_begin0
	.quad	Lset167
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
.set Lset168, Ltmp106-Lfunc_begin0
	.quad	Lset168
.set Lset169, Ltmp107-Lfunc_begin0
	.quad	Lset169
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
.set Lset170, Ltmp107-Lfunc_begin0
	.quad	Lset170
.set Lset171, Ltmp119-Lfunc_begin0
	.quad	Lset171
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
	.quad	0
	.quad	0
Ldebug_loc34:
.set Lset172, Ltmp105-Lfunc_begin0
	.quad	Lset172
.set Lset173, Ltmp112-Lfunc_begin0
	.quad	Lset173
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
.set Lset174, Ltmp114-Lfunc_begin0
	.quad	Lset174
.set Lset175, Ltmp115-Lfunc_begin0
	.quad	Lset175
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
.set Lset176, Ltmp116-Lfunc_begin0
	.quad	Lset176
.set Lset177, Ltmp117-Lfunc_begin0
	.quad	Lset177
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
.set Lset178, Ltmp118-Lfunc_begin0
	.quad	Lset178
.set Lset179, Ltmp119-Lfunc_begin0
	.quad	Lset179
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
	.quad	0
	.quad	0
Ldebug_loc35:
.set Lset180, Ltmp107-Lfunc_begin0
	.quad	Lset180
.set Lset181, Ltmp113-Lfunc_begin0
	.quad	Lset181
	.short	3                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	32                              ; DW_OP_not
	.byte	159                             ; DW_OP_stack_value
.set Lset182, Ltmp113-Lfunc_begin0
	.quad	Lset182
.set Lset183, Ltmp114-Lfunc_begin0
	.quad	Lset183
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
.set Lset184, Ltmp114-Lfunc_begin0
	.quad	Lset184
.set Lset185, Ltmp119-Lfunc_begin0
	.quad	Lset185
	.short	3                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	32                              ; DW_OP_not
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc36:
.set Lset186, Ltmp119-Lfunc_begin0
	.quad	Lset186
.set Lset187, Ltmp183-Lfunc_begin0
	.quad	Lset187
	.short	1                               ; Loc expr size
	.byte	102                             ; DW_OP_reg22
.set Lset188, Ltmp186-Lfunc_begin0
	.quad	Lset188
.set Lset189, Lfunc_end1-Lfunc_begin0
	.quad	Lset189
	.short	1                               ; Loc expr size
	.byte	102                             ; DW_OP_reg22
	.quad	0
	.quad	0
Ldebug_loc37:
.set Lset190, Ltmp120-Lfunc_begin0
	.quad	Lset190
.set Lset191, Ltmp122-Lfunc_begin0
	.quad	Lset191
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
.set Lset192, Ltmp122-Lfunc_begin0
	.quad	Lset192
.set Lset193, Ltmp123-Lfunc_begin0
	.quad	Lset193
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
.set Lset194, Ltmp123-Lfunc_begin0
	.quad	Lset194
.set Lset195, Ltmp133-Lfunc_begin0
	.quad	Lset195
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
	.quad	0
	.quad	0
Ldebug_loc38:
.set Lset196, Ltmp121-Lfunc_begin0
	.quad	Lset196
.set Lset197, Ltmp126-Lfunc_begin0
	.quad	Lset197
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
.set Lset198, Ltmp128-Lfunc_begin0
	.quad	Lset198
.set Lset199, Ltmp129-Lfunc_begin0
	.quad	Lset199
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
.set Lset200, Ltmp130-Lfunc_begin0
	.quad	Lset200
.set Lset201, Ltmp131-Lfunc_begin0
	.quad	Lset201
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
.set Lset202, Ltmp132-Lfunc_begin0
	.quad	Lset202
.set Lset203, Ltmp133-Lfunc_begin0
	.quad	Lset203
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
	.quad	0
	.quad	0
Ldebug_loc39:
.set Lset204, Ltmp123-Lfunc_begin0
	.quad	Lset204
.set Lset205, Ltmp127-Lfunc_begin0
	.quad	Lset205
	.short	3                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	32                              ; DW_OP_not
	.byte	159                             ; DW_OP_stack_value
.set Lset206, Ltmp127-Lfunc_begin0
	.quad	Lset206
.set Lset207, Ltmp128-Lfunc_begin0
	.quad	Lset207
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
.set Lset208, Ltmp128-Lfunc_begin0
	.quad	Lset208
.set Lset209, Ltmp133-Lfunc_begin0
	.quad	Lset209
	.short	3                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	32                              ; DW_OP_not
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc40:
.set Lset210, Ltmp133-Lfunc_begin0
	.quad	Lset210
.set Lset211, Ltmp184-Lfunc_begin0
	.quad	Lset211
	.short	1                               ; Loc expr size
	.byte	103                             ; DW_OP_reg23
.set Lset212, Ltmp186-Lfunc_begin0
	.quad	Lset212
.set Lset213, Lfunc_end1-Lfunc_begin0
	.quad	Lset213
	.short	1                               ; Loc expr size
	.byte	103                             ; DW_OP_reg23
	.quad	0
	.quad	0
Ldebug_loc41:
.set Lset214, Ltmp136-Lfunc_begin0
	.quad	Lset214
.set Lset215, Ltmp137-Lfunc_begin0
	.quad	Lset215
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset216, Ltmp166-Lfunc_begin0
	.quad	Lset216
.set Lset217, Ltmp170-Lfunc_begin0
	.quad	Lset217
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset218, Ltmp171-Lfunc_begin0
	.quad	Lset218
.set Lset219, Ltmp172-Lfunc_begin0
	.quad	Lset219
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset220, Ltmp173-Lfunc_begin0
	.quad	Lset220
.set Lset221, Ltmp174-Lfunc_begin0
	.quad	Lset221
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset222, Ltmp175-Lfunc_begin0
	.quad	Lset222
.set Lset223, Ltmp176-Lfunc_begin0
	.quad	Lset223
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset224, Ltmp177-Lfunc_begin0
	.quad	Lset224
.set Lset225, Ltmp178-Lfunc_begin0
	.quad	Lset225
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
	.quad	0
	.quad	0
Ldebug_loc42:
.set Lset226, Ltmp136-Lfunc_begin0
	.quad	Lset226
.set Lset227, Ltmp137-Lfunc_begin0
	.quad	Lset227
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	65                              ; 65
.set Lset228, Ltmp166-Lfunc_begin0
	.quad	Lset228
.set Lset229, Ltmp179-Lfunc_begin0
	.quad	Lset229
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	65                              ; 65
	.quad	0
	.quad	0
Ldebug_loc43:
.set Lset230, Ltmp136-Lfunc_begin0
	.quad	Lset230
.set Lset231, Ltmp137-Lfunc_begin0
	.quad	Lset231
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	66                              ; 66
.set Lset232, Ltmp166-Lfunc_begin0
	.quad	Lset232
.set Lset233, Ltmp179-Lfunc_begin0
	.quad	Lset233
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	66                              ; 66
	.quad	0
	.quad	0
Ldebug_loc44:
.set Lset234, Ltmp136-Lfunc_begin0
	.quad	Lset234
.set Lset235, Ltmp137-Lfunc_begin0
	.quad	Lset235
	.short	1                               ; Loc expr size
	.byte	99                              ; DW_OP_reg19
.set Lset236, Ltmp166-Lfunc_begin0
	.quad	Lset236
.set Lset237, Ltmp179-Lfunc_begin0
	.quad	Lset237
	.short	1                               ; Loc expr size
	.byte	99                              ; DW_OP_reg19
	.quad	0
	.quad	0
Ldebug_loc45:
.set Lset238, Ltmp144-Lfunc_begin0
	.quad	Lset238
.set Lset239, Ltmp146-Lfunc_begin0
	.quad	Lset239
	.short	6                               ; Loc expr size
	.byte	127                             ; DW_OP_breg15
	.byte	0                               ; 0
	.byte	17                              ; DW_OP_consts
	.byte	4                               ; 4
	.byte	27                              ; DW_OP_div
	.byte	159                             ; DW_OP_stack_value
.set Lset240, Ltmp146-Lfunc_begin0
	.quad	Lset240
.set Lset241, Ltmp147-Lfunc_begin0
	.quad	Lset241
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
.set Lset242, Ltmp148-Lfunc_begin0
	.quad	Lset242
.set Lset243, Ltmp164-Lfunc_begin0
	.quad	Lset243
	.short	6                               ; Loc expr size
	.byte	127                             ; DW_OP_breg15
	.byte	0                               ; 0
	.byte	17                              ; DW_OP_consts
	.byte	4                               ; 4
	.byte	27                              ; DW_OP_div
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc46:
.set Lset244, Ltmp144-Lfunc_begin0
	.quad	Lset244
.set Lset245, Ltmp145-Lfunc_begin0
	.quad	Lset245
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset246, Ltmp151-Lfunc_begin0
	.quad	Lset246
.set Lset247, Ltmp155-Lfunc_begin0
	.quad	Lset247
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset248, Ltmp156-Lfunc_begin0
	.quad	Lset248
.set Lset249, Ltmp157-Lfunc_begin0
	.quad	Lset249
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset250, Ltmp158-Lfunc_begin0
	.quad	Lset250
.set Lset251, Ltmp159-Lfunc_begin0
	.quad	Lset251
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset252, Ltmp160-Lfunc_begin0
	.quad	Lset252
.set Lset253, Ltmp161-Lfunc_begin0
	.quad	Lset253
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset254, Ltmp162-Lfunc_begin0
	.quad	Lset254
.set Lset255, Ltmp163-Lfunc_begin0
	.quad	Lset255
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
	.quad	0
	.quad	0
Ldebug_loc47:
.set Lset256, Ltmp144-Lfunc_begin0
	.quad	Lset256
.set Lset257, Ltmp145-Lfunc_begin0
	.quad	Lset257
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	65                              ; 65
.set Lset258, Ltmp151-Lfunc_begin0
	.quad	Lset258
.set Lset259, Ltmp164-Lfunc_begin0
	.quad	Lset259
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	65                              ; 65
	.quad	0
	.quad	0
Ldebug_loc48:
.set Lset260, Ltmp144-Lfunc_begin0
	.quad	Lset260
.set Lset261, Ltmp145-Lfunc_begin0
	.quad	Lset261
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	66                              ; 66
.set Lset262, Ltmp151-Lfunc_begin0
	.quad	Lset262
.set Lset263, Ltmp164-Lfunc_begin0
	.quad	Lset263
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	66                              ; 66
	.quad	0
	.quad	0
Ldebug_loc49:
.set Lset264, Ltmp144-Lfunc_begin0
	.quad	Lset264
.set Lset265, Ltmp145-Lfunc_begin0
	.quad	Lset265
	.short	1                               ; Loc expr size
	.byte	99                              ; DW_OP_reg19
.set Lset266, Ltmp151-Lfunc_begin0
	.quad	Lset266
.set Lset267, Ltmp164-Lfunc_begin0
	.quad	Lset267
	.short	1                               ; Loc expr size
	.byte	99                              ; DW_OP_reg19
	.quad	0
	.quad	0
Ldebug_loc50:
.set Lset268, Ltmp161-Lfunc_begin0
	.quad	Lset268
.set Lset269, Ltmp162-Lfunc_begin0
	.quad	Lset269
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
	.quad	0
	.quad	0
Ldebug_loc51:
.set Lset270, Ltmp172-Lfunc_begin0
	.quad	Lset270
.set Lset271, Ltmp173-Lfunc_begin0
	.quad	Lset271
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
	.quad	0
	.quad	0
Ldebug_loc52:
.set Lset272, Lfunc_begin2-Lfunc_begin0
	.quad	Lset272
.set Lset273, Ltmp190-Lfunc_begin0
	.quad	Lset273
	.short	1                               ; Loc expr size
	.byte	80                              ; DW_OP_reg0
.set Lset274, Ltmp190-Lfunc_begin0
	.quad	Lset274
.set Lset275, Ltmp245-Lfunc_begin0
	.quad	Lset275
	.short	1                               ; Loc expr size
	.byte	99                              ; DW_OP_reg19
.set Lset276, Ltmp245-Lfunc_begin0
	.quad	Lset276
.set Lset277, Lfunc_end2-Lfunc_begin0
	.quad	Lset277
	.short	4                               ; Loc expr size
	.byte	163                             ; DW_OP_entry_value
	.byte	1                               ; 1
	.byte	80                              ; DW_OP_reg0
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc53:
.set Lset278, Lfunc_begin2-Lfunc_begin0
	.quad	Lset278
.set Lset279, Ltmp189-Lfunc_begin0
	.quad	Lset279
	.short	1                               ; Loc expr size
	.byte	81                              ; DW_OP_reg1
.set Lset280, Ltmp189-Lfunc_begin0
	.quad	Lset280
.set Lset281, Ltmp246-Lfunc_begin0
	.quad	Lset281
	.short	1                               ; Loc expr size
	.byte	101                             ; DW_OP_reg21
.set Lset282, Ltmp246-Lfunc_begin0
	.quad	Lset282
.set Lset283, Lfunc_end2-Lfunc_begin0
	.quad	Lset283
	.short	4                               ; Loc expr size
	.byte	163                             ; DW_OP_entry_value
	.byte	1                               ; 1
	.byte	81                              ; DW_OP_reg1
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc54:
.set Lset284, Lfunc_begin2-Lfunc_begin0
	.quad	Lset284
.set Lset285, Ltmp193-Lfunc_begin0
	.quad	Lset285
	.short	1                               ; Loc expr size
	.byte	82                              ; DW_OP_reg2
.set Lset286, Ltmp193-Lfunc_begin0
	.quad	Lset286
.set Lset287, Lfunc_end2-Lfunc_begin0
	.quad	Lset287
	.short	4                               ; Loc expr size
	.byte	163                             ; DW_OP_entry_value
	.byte	1                               ; 1
	.byte	82                              ; DW_OP_reg2
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc55:
.set Lset288, Lfunc_begin2-Lfunc_begin0
	.quad	Lset288
.set Lset289, Ltmp188-Lfunc_begin0
	.quad	Lset289
	.short	1                               ; Loc expr size
	.byte	83                              ; DW_OP_reg3
.set Lset290, Ltmp188-Lfunc_begin0
	.quad	Lset290
.set Lset291, Ltmp245-Lfunc_begin0
	.quad	Lset291
	.short	1                               ; Loc expr size
	.byte	100                             ; DW_OP_reg20
.set Lset292, Ltmp245-Lfunc_begin0
	.quad	Lset292
.set Lset293, Lfunc_end2-Lfunc_begin0
	.quad	Lset293
	.short	4                               ; Loc expr size
	.byte	163                             ; DW_OP_entry_value
	.byte	1                               ; 1
	.byte	83                              ; DW_OP_reg3
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc56:
.set Lset294, Lfunc_begin2-Lfunc_begin0
	.quad	Lset294
.set Lset295, Ltmp193-Lfunc_begin0
	.quad	Lset295
	.short	1                               ; Loc expr size
	.byte	82                              ; DW_OP_reg2
	.quad	0
	.quad	0
Ldebug_loc57:
.set Lset296, Ltmp192-Lfunc_begin0
	.quad	Lset296
.set Lset297, Ltmp194-Lfunc_begin0
	.quad	Lset297
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
	.quad	0
	.quad	0
Ldebug_loc58:
.set Lset298, Ltmp196-Lfunc_begin0
	.quad	Lset298
.set Lset299, Ltmp202-Lfunc_begin0
	.quad	Lset299
	.short	2                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	159                             ; DW_OP_stack_value
.set Lset300, Ltmp202-Lfunc_begin0
	.quad	Lset300
.set Lset301, Ltmp208-Lfunc_begin0
	.quad	Lset301
	.short	2                               ; Loc expr size
	.byte	50                              ; DW_OP_lit2
	.byte	159                             ; DW_OP_stack_value
.set Lset302, Ltmp208-Lfunc_begin0
	.quad	Lset302
.set Lset303, Ltmp214-Lfunc_begin0
	.quad	Lset303
	.short	2                               ; Loc expr size
	.byte	52                              ; DW_OP_lit4
	.byte	159                             ; DW_OP_stack_value
.set Lset304, Ltmp214-Lfunc_begin0
	.quad	Lset304
.set Lset305, Ltmp220-Lfunc_begin0
	.quad	Lset305
	.short	2                               ; Loc expr size
	.byte	54                              ; DW_OP_lit6
	.byte	159                             ; DW_OP_stack_value
.set Lset306, Ltmp220-Lfunc_begin0
	.quad	Lset306
.set Lset307, Ltmp226-Lfunc_begin0
	.quad	Lset307
	.short	2                               ; Loc expr size
	.byte	56                              ; DW_OP_lit8
	.byte	159                             ; DW_OP_stack_value
.set Lset308, Ltmp226-Lfunc_begin0
	.quad	Lset308
.set Lset309, Ltmp232-Lfunc_begin0
	.quad	Lset309
	.short	2                               ; Loc expr size
	.byte	58                              ; DW_OP_lit10
	.byte	159                             ; DW_OP_stack_value
.set Lset310, Ltmp232-Lfunc_begin0
	.quad	Lset310
.set Lset311, Ltmp238-Lfunc_begin0
	.quad	Lset311
	.short	2                               ; Loc expr size
	.byte	60                              ; DW_OP_lit12
	.byte	159                             ; DW_OP_stack_value
.set Lset312, Ltmp238-Lfunc_begin0
	.quad	Lset312
.set Lset313, Ltmp244-Lfunc_begin0
	.quad	Lset313
	.short	2                               ; Loc expr size
	.byte	62                              ; DW_OP_lit14
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc59:
.set Lset314, Ltmp197-Lfunc_begin0
	.quad	Lset314
.set Lset315, Ltmp198-Lfunc_begin0
	.quad	Lset315
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	65                              ; 65
.set Lset316, Ltmp198-Lfunc_begin0
	.quad	Lset316
.set Lset317, Ltmp200-Lfunc_begin0
	.quad	Lset317
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset318, Ltmp200-Lfunc_begin0
	.quad	Lset318
.set Lset319, Ltmp204-Lfunc_begin0
	.quad	Lset319
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	65                              ; 65
.set Lset320, Ltmp204-Lfunc_begin0
	.quad	Lset320
.set Lset321, Ltmp206-Lfunc_begin0
	.quad	Lset321
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset322, Ltmp206-Lfunc_begin0
	.quad	Lset322
.set Lset323, Ltmp210-Lfunc_begin0
	.quad	Lset323
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	65                              ; 65
.set Lset324, Ltmp210-Lfunc_begin0
	.quad	Lset324
.set Lset325, Ltmp212-Lfunc_begin0
	.quad	Lset325
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset326, Ltmp212-Lfunc_begin0
	.quad	Lset326
.set Lset327, Ltmp216-Lfunc_begin0
	.quad	Lset327
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	65                              ; 65
.set Lset328, Ltmp216-Lfunc_begin0
	.quad	Lset328
.set Lset329, Ltmp218-Lfunc_begin0
	.quad	Lset329
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset330, Ltmp218-Lfunc_begin0
	.quad	Lset330
.set Lset331, Ltmp222-Lfunc_begin0
	.quad	Lset331
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	65                              ; 65
.set Lset332, Ltmp222-Lfunc_begin0
	.quad	Lset332
.set Lset333, Ltmp224-Lfunc_begin0
	.quad	Lset333
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset334, Ltmp224-Lfunc_begin0
	.quad	Lset334
.set Lset335, Ltmp228-Lfunc_begin0
	.quad	Lset335
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	65                              ; 65
.set Lset336, Ltmp228-Lfunc_begin0
	.quad	Lset336
.set Lset337, Ltmp230-Lfunc_begin0
	.quad	Lset337
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset338, Ltmp230-Lfunc_begin0
	.quad	Lset338
.set Lset339, Ltmp234-Lfunc_begin0
	.quad	Lset339
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	65                              ; 65
.set Lset340, Ltmp234-Lfunc_begin0
	.quad	Lset340
.set Lset341, Ltmp236-Lfunc_begin0
	.quad	Lset341
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset342, Ltmp236-Lfunc_begin0
	.quad	Lset342
.set Lset343, Ltmp240-Lfunc_begin0
	.quad	Lset343
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	65                              ; 65
.set Lset344, Ltmp240-Lfunc_begin0
	.quad	Lset344
.set Lset345, Ltmp242-Lfunc_begin0
	.quad	Lset345
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
.set Lset346, Ltmp242-Lfunc_begin0
	.quad	Lset346
.set Lset347, Ltmp244-Lfunc_begin0
	.quad	Lset347
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	65                              ; 65
	.quad	0
	.quad	0
Ldebug_loc60:
.set Lset348, Lfunc_begin3-Lfunc_begin0
	.quad	Lset348
.set Lset349, Ltmp257-Lfunc_begin0
	.quad	Lset349
	.short	1                               ; Loc expr size
	.byte	80                              ; DW_OP_reg0
.set Lset350, Ltmp257-Lfunc_begin0
	.quad	Lset350
.set Lset351, Ltmp366-Lfunc_begin0
	.quad	Lset351
	.short	1                               ; Loc expr size
	.byte	100                             ; DW_OP_reg20
.set Lset352, Ltmp366-Lfunc_begin0
	.quad	Lset352
.set Lset353, Ltmp370-Lfunc_begin0
	.quad	Lset353
	.short	4                               ; Loc expr size
	.byte	163                             ; DW_OP_entry_value
	.byte	1                               ; 1
	.byte	80                              ; DW_OP_reg0
	.byte	159                             ; DW_OP_stack_value
.set Lset354, Ltmp370-Lfunc_begin0
	.quad	Lset354
.set Lset355, Lfunc_end3-Lfunc_begin0
	.quad	Lset355
	.short	1                               ; Loc expr size
	.byte	100                             ; DW_OP_reg20
	.quad	0
	.quad	0
Ldebug_loc61:
.set Lset356, Lfunc_begin3-Lfunc_begin0
	.quad	Lset356
.set Lset357, Ltmp256-Lfunc_begin0
	.quad	Lset357
	.short	1                               ; Loc expr size
	.byte	81                              ; DW_OP_reg1
.set Lset358, Ltmp256-Lfunc_begin0
	.quad	Lset358
.set Lset359, Ltmp366-Lfunc_begin0
	.quad	Lset359
	.short	1                               ; Loc expr size
	.byte	99                              ; DW_OP_reg19
.set Lset360, Ltmp366-Lfunc_begin0
	.quad	Lset360
.set Lset361, Ltmp370-Lfunc_begin0
	.quad	Lset361
	.short	4                               ; Loc expr size
	.byte	163                             ; DW_OP_entry_value
	.byte	1                               ; 1
	.byte	81                              ; DW_OP_reg1
	.byte	159                             ; DW_OP_stack_value
.set Lset362, Ltmp370-Lfunc_begin0
	.quad	Lset362
.set Lset363, Lfunc_end3-Lfunc_begin0
	.quad	Lset363
	.short	1                               ; Loc expr size
	.byte	99                              ; DW_OP_reg19
	.quad	0
	.quad	0
Ldebug_loc62:
.set Lset364, Ltmp249-Lfunc_begin0
	.quad	Lset364
.set Lset365, Ltmp293-Lfunc_begin0
	.quad	Lset365
	.short	1                               ; Loc expr size
	.byte	103                             ; DW_OP_reg23
	.quad	0
	.quad	0
Ldebug_loc63:
.set Lset366, Ltmp250-Lfunc_begin0
	.quad	Lset366
.set Lset367, Ltmp289-Lfunc_begin0
	.quad	Lset367
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
	.quad	0
	.quad	0
Ldebug_loc64:
.set Lset368, Ltmp251-Lfunc_begin0
	.quad	Lset368
.set Lset369, Ltmp275-Lfunc_begin0
	.quad	Lset369
	.short	1                               ; Loc expr size
	.byte	95                              ; DW_OP_reg15
.set Lset370, Ltmp275-Lfunc_begin0
	.quad	Lset370
.set Lset371, Ltmp369-Lfunc_begin0
	.quad	Lset371
	.short	2                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	0                               ; 0
.set Lset372, Ltmp370-Lfunc_begin0
	.quad	Lset372
.set Lset373, Lfunc_end3-Lfunc_begin0
	.quad	Lset373
	.short	2                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	0                               ; 0
	.quad	0
	.quad	0
Ldebug_loc65:
.set Lset374, Ltmp252-Lfunc_begin0
	.quad	Lset374
.set Lset375, Ltmp254-Lfunc_begin0
	.quad	Lset375
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
.set Lset376, Ltmp254-Lfunc_begin0
	.quad	Lset376
.set Lset377, Ltmp255-Lfunc_begin0
	.quad	Lset377
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
.set Lset378, Ltmp255-Lfunc_begin0
	.quad	Lset378
.set Lset379, Ltmp264-Lfunc_begin0
	.quad	Lset379
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
.set Lset380, Ltmp265-Lfunc_begin0
	.quad	Lset380
.set Lset381, Ltmp267-Lfunc_begin0
	.quad	Lset381
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
.set Lset382, Ltmp268-Lfunc_begin0
	.quad	Lset382
.set Lset383, Ltmp269-Lfunc_begin0
	.quad	Lset383
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
	.quad	0
	.quad	0
Ldebug_loc66:
.set Lset384, Ltmp253-Lfunc_begin0
	.quad	Lset384
.set Lset385, Ltmp260-Lfunc_begin0
	.quad	Lset385
	.short	1                               ; Loc expr size
	.byte	91                              ; DW_OP_reg11
.set Lset386, Ltmp262-Lfunc_begin0
	.quad	Lset386
.set Lset387, Ltmp269-Lfunc_begin0
	.quad	Lset387
	.short	1                               ; Loc expr size
	.byte	91                              ; DW_OP_reg11
	.quad	0
	.quad	0
Ldebug_loc67:
.set Lset388, Ltmp255-Lfunc_begin0
	.quad	Lset388
.set Lset389, Ltmp261-Lfunc_begin0
	.quad	Lset389
	.short	3                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	32                              ; DW_OP_not
	.byte	159                             ; DW_OP_stack_value
.set Lset390, Ltmp261-Lfunc_begin0
	.quad	Lset390
.set Lset391, Ltmp262-Lfunc_begin0
	.quad	Lset391
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
.set Lset392, Ltmp262-Lfunc_begin0
	.quad	Lset392
.set Lset393, Ltmp269-Lfunc_begin0
	.quad	Lset393
	.short	3                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	32                              ; DW_OP_not
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc68:
.set Lset394, Ltmp269-Lfunc_begin0
	.quad	Lset394
.set Lset395, Ltmp367-Lfunc_begin0
	.quad	Lset395
	.short	1                               ; Loc expr size
	.byte	104                             ; DW_OP_reg24
.set Lset396, Ltmp370-Lfunc_begin0
	.quad	Lset396
.set Lset397, Lfunc_end3-Lfunc_begin0
	.quad	Lset397
	.short	1                               ; Loc expr size
	.byte	104                             ; DW_OP_reg24
	.quad	0
	.quad	0
Ldebug_loc69:
.set Lset398, Ltmp270-Lfunc_begin0
	.quad	Lset398
.set Lset399, Ltmp272-Lfunc_begin0
	.quad	Lset399
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
.set Lset400, Ltmp272-Lfunc_begin0
	.quad	Lset400
.set Lset401, Ltmp273-Lfunc_begin0
	.quad	Lset401
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
.set Lset402, Ltmp273-Lfunc_begin0
	.quad	Lset402
.set Lset403, Ltmp281-Lfunc_begin0
	.quad	Lset403
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
.set Lset404, Ltmp282-Lfunc_begin0
	.quad	Lset404
.set Lset405, Ltmp284-Lfunc_begin0
	.quad	Lset405
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
.set Lset406, Ltmp285-Lfunc_begin0
	.quad	Lset406
.set Lset407, Ltmp286-Lfunc_begin0
	.quad	Lset407
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
	.quad	0
	.quad	0
Ldebug_loc70:
.set Lset408, Ltmp271-Lfunc_begin0
	.quad	Lset408
.set Lset409, Ltmp277-Lfunc_begin0
	.quad	Lset409
	.short	1                               ; Loc expr size
	.byte	91                              ; DW_OP_reg11
.set Lset410, Ltmp279-Lfunc_begin0
	.quad	Lset410
.set Lset411, Ltmp286-Lfunc_begin0
	.quad	Lset411
	.short	1                               ; Loc expr size
	.byte	91                              ; DW_OP_reg11
	.quad	0
	.quad	0
Ldebug_loc71:
.set Lset412, Ltmp273-Lfunc_begin0
	.quad	Lset412
.set Lset413, Ltmp278-Lfunc_begin0
	.quad	Lset413
	.short	3                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	32                              ; DW_OP_not
	.byte	159                             ; DW_OP_stack_value
.set Lset414, Ltmp278-Lfunc_begin0
	.quad	Lset414
.set Lset415, Ltmp279-Lfunc_begin0
	.quad	Lset415
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
.set Lset416, Ltmp279-Lfunc_begin0
	.quad	Lset416
.set Lset417, Ltmp286-Lfunc_begin0
	.quad	Lset417
	.short	3                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	32                              ; DW_OP_not
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc72:
.set Lset418, Ltmp286-Lfunc_begin0
	.quad	Lset418
.set Lset419, Ltmp368-Lfunc_begin0
	.quad	Lset419
	.short	1                               ; Loc expr size
	.byte	105                             ; DW_OP_reg25
.set Lset420, Ltmp370-Lfunc_begin0
	.quad	Lset420
.set Lset421, Lfunc_end3-Lfunc_begin0
	.quad	Lset421
	.short	1                               ; Loc expr size
	.byte	105                             ; DW_OP_reg25
	.quad	0
	.quad	0
Ldebug_loc73:
.set Lset422, Ltmp287-Lfunc_begin0
	.quad	Lset422
.set Lset423, Ltmp289-Lfunc_begin0
	.quad	Lset423
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
	.quad	0
	.quad	0
Ldebug_loc74:
.set Lset424, Ltmp288-Lfunc_begin0
	.quad	Lset424
.set Lset425, Ltmp289-Lfunc_begin0
	.quad	Lset425
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
	.quad	0
	.quad	0
Ldebug_loc75:
.set Lset426, Ltmp291-Lfunc_begin0
	.quad	Lset426
.set Lset427, Ltmp293-Lfunc_begin0
	.quad	Lset427
	.short	1                               ; Loc expr size
	.byte	103                             ; DW_OP_reg23
	.quad	0
	.quad	0
Ldebug_loc76:
.set Lset428, Ltmp292-Lfunc_begin0
	.quad	Lset428
.set Lset429, Ltmp294-Lfunc_begin0
	.quad	Lset429
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
	.quad	0
	.quad	0
Ldebug_loc77:
.set Lset430, Ltmp296-Lfunc_begin0
	.quad	Lset430
.set Lset431, Ltmp297-Lfunc_begin0
	.quad	Lset431
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	65                              ; 65
.set Lset432, Ltmp350-Lfunc_begin0
	.quad	Lset432
.set Lset433, Ltmp354-Lfunc_begin0
	.quad	Lset433
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	65                              ; 65
.set Lset434, Ltmp355-Lfunc_begin0
	.quad	Lset434
.set Lset435, Ltmp356-Lfunc_begin0
	.quad	Lset435
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	65                              ; 65
.set Lset436, Ltmp357-Lfunc_begin0
	.quad	Lset436
.set Lset437, Ltmp358-Lfunc_begin0
	.quad	Lset437
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	65                              ; 65
.set Lset438, Ltmp359-Lfunc_begin0
	.quad	Lset438
.set Lset439, Ltmp360-Lfunc_begin0
	.quad	Lset439
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	65                              ; 65
.set Lset440, Ltmp361-Lfunc_begin0
	.quad	Lset440
.set Lset441, Ltmp362-Lfunc_begin0
	.quad	Lset441
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	65                              ; 65
	.quad	0
	.quad	0
Ldebug_loc78:
.set Lset442, Ltmp296-Lfunc_begin0
	.quad	Lset442
.set Lset443, Ltmp297-Lfunc_begin0
	.quad	Lset443
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	66                              ; 66
.set Lset444, Ltmp350-Lfunc_begin0
	.quad	Lset444
.set Lset445, Ltmp363-Lfunc_begin0
	.quad	Lset445
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	66                              ; 66
	.quad	0
	.quad	0
Ldebug_loc79:
.set Lset446, Ltmp296-Lfunc_begin0
	.quad	Lset446
.set Lset447, Ltmp297-Lfunc_begin0
	.quad	Lset447
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	67                              ; 67
.set Lset448, Ltmp350-Lfunc_begin0
	.quad	Lset448
.set Lset449, Ltmp363-Lfunc_begin0
	.quad	Lset449
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	67                              ; 67
	.quad	0
	.quad	0
Ldebug_loc80:
.set Lset450, Ltmp296-Lfunc_begin0
	.quad	Lset450
.set Lset451, Ltmp297-Lfunc_begin0
	.quad	Lset451
	.short	1                               ; Loc expr size
	.byte	99                              ; DW_OP_reg19
.set Lset452, Ltmp350-Lfunc_begin0
	.quad	Lset452
.set Lset453, Ltmp363-Lfunc_begin0
	.quad	Lset453
	.short	1                               ; Loc expr size
	.byte	99                              ; DW_OP_reg19
	.quad	0
	.quad	0
Ldebug_loc81:
.set Lset454, Ltmp304-Lfunc_begin0
	.quad	Lset454
.set Lset455, Ltmp306-Lfunc_begin0
	.quad	Lset455
	.short	6                               ; Loc expr size
	.byte	129                             ; DW_OP_breg17
	.byte	0                               ; 0
	.byte	17                              ; DW_OP_consts
	.byte	2                               ; 2
	.byte	27                              ; DW_OP_div
	.byte	159                             ; DW_OP_stack_value
.set Lset456, Ltmp306-Lfunc_begin0
	.quad	Lset456
.set Lset457, Ltmp307-Lfunc_begin0
	.quad	Lset457
	.short	9                               ; Loc expr size
	.byte	129                             ; DW_OP_breg17
	.byte	0                               ; 0
	.byte	17                              ; DW_OP_consts
	.byte	2                               ; 2
	.byte	27                              ; DW_OP_div
	.byte	17                              ; DW_OP_consts
	.byte	1                               ; 1
	.byte	34                              ; DW_OP_plus
	.byte	159                             ; DW_OP_stack_value
.set Lset458, Ltmp308-Lfunc_begin0
	.quad	Lset458
.set Lset459, Ltmp349-Lfunc_begin0
	.quad	Lset459
	.short	6                               ; Loc expr size
	.byte	129                             ; DW_OP_breg17
	.byte	0                               ; 0
	.byte	17                              ; DW_OP_consts
	.byte	2                               ; 2
	.byte	27                              ; DW_OP_div
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc82:
.set Lset460, Ltmp304-Lfunc_begin0
	.quad	Lset460
.set Lset461, Ltmp305-Lfunc_begin0
	.quad	Lset461
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	65                              ; 65
.set Lset462, Ltmp312-Lfunc_begin0
	.quad	Lset462
.set Lset463, Ltmp316-Lfunc_begin0
	.quad	Lset463
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	65                              ; 65
.set Lset464, Ltmp329-Lfunc_begin0
	.quad	Lset464
.set Lset465, Ltmp330-Lfunc_begin0
	.quad	Lset465
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	65                              ; 65
.set Lset466, Ltmp331-Lfunc_begin0
	.quad	Lset466
.set Lset467, Ltmp332-Lfunc_begin0
	.quad	Lset467
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	65                              ; 65
.set Lset468, Ltmp339-Lfunc_begin0
	.quad	Lset468
.set Lset469, Ltmp340-Lfunc_begin0
	.quad	Lset469
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	65                              ; 65
.set Lset470, Ltmp341-Lfunc_begin0
	.quad	Lset470
.set Lset471, Ltmp342-Lfunc_begin0
	.quad	Lset471
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	65                              ; 65
	.quad	0
	.quad	0
Ldebug_loc83:
.set Lset472, Ltmp304-Lfunc_begin0
	.quad	Lset472
.set Lset473, Ltmp305-Lfunc_begin0
	.quad	Lset473
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	66                              ; 66
.set Lset474, Ltmp312-Lfunc_begin0
	.quad	Lset474
.set Lset475, Ltmp317-Lfunc_begin0
	.quad	Lset475
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	66                              ; 66
.set Lset476, Ltmp329-Lfunc_begin0
	.quad	Lset476
.set Lset477, Ltmp333-Lfunc_begin0
	.quad	Lset477
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	66                              ; 66
.set Lset478, Ltmp339-Lfunc_begin0
	.quad	Lset478
.set Lset479, Ltmp343-Lfunc_begin0
	.quad	Lset479
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	66                              ; 66
	.quad	0
	.quad	0
Ldebug_loc84:
.set Lset480, Ltmp304-Lfunc_begin0
	.quad	Lset480
.set Lset481, Ltmp305-Lfunc_begin0
	.quad	Lset481
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	67                              ; 67
.set Lset482, Ltmp312-Lfunc_begin0
	.quad	Lset482
.set Lset483, Ltmp317-Lfunc_begin0
	.quad	Lset483
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	67                              ; 67
.set Lset484, Ltmp329-Lfunc_begin0
	.quad	Lset484
.set Lset485, Ltmp333-Lfunc_begin0
	.quad	Lset485
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	67                              ; 67
.set Lset486, Ltmp339-Lfunc_begin0
	.quad	Lset486
.set Lset487, Ltmp343-Lfunc_begin0
	.quad	Lset487
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	67                              ; 67
	.quad	0
	.quad	0
Ldebug_loc85:
.set Lset488, Ltmp304-Lfunc_begin0
	.quad	Lset488
.set Lset489, Ltmp305-Lfunc_begin0
	.quad	Lset489
	.short	1                               ; Loc expr size
	.byte	99                              ; DW_OP_reg19
.set Lset490, Ltmp312-Lfunc_begin0
	.quad	Lset490
.set Lset491, Ltmp317-Lfunc_begin0
	.quad	Lset491
	.short	1                               ; Loc expr size
	.byte	99                              ; DW_OP_reg19
.set Lset492, Ltmp329-Lfunc_begin0
	.quad	Lset492
.set Lset493, Ltmp333-Lfunc_begin0
	.quad	Lset493
	.short	1                               ; Loc expr size
	.byte	99                              ; DW_OP_reg19
.set Lset494, Ltmp339-Lfunc_begin0
	.quad	Lset494
.set Lset495, Ltmp343-Lfunc_begin0
	.quad	Lset495
	.short	1                               ; Loc expr size
	.byte	99                              ; DW_OP_reg19
	.quad	0
	.quad	0
Ldebug_loc86:
.set Lset496, Ltmp319-Lfunc_begin0
	.quad	Lset496
.set Lset497, Ltmp329-Lfunc_begin0
	.quad	Lset497
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	66                              ; 66
.set Lset498, Ltmp333-Lfunc_begin0
	.quad	Lset498
.set Lset499, Ltmp339-Lfunc_begin0
	.quad	Lset499
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	66                              ; 66
.set Lset500, Ltmp344-Lfunc_begin0
	.quad	Lset500
.set Lset501, Ltmp349-Lfunc_begin0
	.quad	Lset501
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	66                              ; 66
	.quad	0
	.quad	0
Ldebug_loc87:
.set Lset502, Ltmp321-Lfunc_begin0
	.quad	Lset502
.set Lset503, Ltmp329-Lfunc_begin0
	.quad	Lset503
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	67                              ; 67
.set Lset504, Ltmp333-Lfunc_begin0
	.quad	Lset504
.set Lset505, Ltmp339-Lfunc_begin0
	.quad	Lset505
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	67                              ; 67
.set Lset506, Ltmp344-Lfunc_begin0
	.quad	Lset506
.set Lset507, Ltmp349-Lfunc_begin0
	.quad	Lset507
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	67                              ; 67
	.quad	0
	.quad	0
Ldebug_loc88:
.set Lset508, Ltmp323-Lfunc_begin0
	.quad	Lset508
.set Lset509, Ltmp329-Lfunc_begin0
	.quad	Lset509
	.short	1                               ; Loc expr size
	.byte	99                              ; DW_OP_reg19
.set Lset510, Ltmp333-Lfunc_begin0
	.quad	Lset510
.set Lset511, Ltmp339-Lfunc_begin0
	.quad	Lset511
	.short	1                               ; Loc expr size
	.byte	99                              ; DW_OP_reg19
.set Lset512, Ltmp344-Lfunc_begin0
	.quad	Lset512
.set Lset513, Ltmp345-Lfunc_begin0
	.quad	Lset513
	.short	1                               ; Loc expr size
	.byte	99                              ; DW_OP_reg19
.set Lset514, Ltmp346-Lfunc_begin0
	.quad	Lset514
.set Lset515, Ltmp348-Lfunc_begin0
	.quad	Lset515
	.short	1                               ; Loc expr size
	.byte	99                              ; DW_OP_reg19
	.quad	0
	.quad	0
Ldebug_loc89:
.set Lset516, Ltmp323-Lfunc_begin0
	.quad	Lset516
.set Lset517, Ltmp327-Lfunc_begin0
	.quad	Lset517
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	65                              ; 65
.set Lset518, Ltmp333-Lfunc_begin0
	.quad	Lset518
.set Lset519, Ltmp334-Lfunc_begin0
	.quad	Lset519
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	65                              ; 65
.set Lset520, Ltmp335-Lfunc_begin0
	.quad	Lset520
.set Lset521, Ltmp336-Lfunc_begin0
	.quad	Lset521
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	65                              ; 65
.set Lset522, Ltmp337-Lfunc_begin0
	.quad	Lset522
.set Lset523, Ltmp338-Lfunc_begin0
	.quad	Lset523
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	65                              ; 65
.set Lset524, Ltmp344-Lfunc_begin0
	.quad	Lset524
.set Lset525, Ltmp345-Lfunc_begin0
	.quad	Lset525
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	65                              ; 65
.set Lset526, Ltmp346-Lfunc_begin0
	.quad	Lset526
.set Lset527, Ltmp347-Lfunc_begin0
	.quad	Lset527
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	65                              ; 65
	.quad	0
	.quad	0
Ldebug_loc90:
.set Lset528, Ltmp323-Lfunc_begin0
	.quad	Lset528
.set Lset529, Ltmp329-Lfunc_begin0
	.quad	Lset529
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	67                              ; 67
.set Lset530, Ltmp333-Lfunc_begin0
	.quad	Lset530
.set Lset531, Ltmp339-Lfunc_begin0
	.quad	Lset531
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	67                              ; 67
.set Lset532, Ltmp344-Lfunc_begin0
	.quad	Lset532
.set Lset533, Ltmp345-Lfunc_begin0
	.quad	Lset533
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	67                              ; 67
.set Lset534, Ltmp346-Lfunc_begin0
	.quad	Lset534
.set Lset535, Ltmp348-Lfunc_begin0
	.quad	Lset535
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	67                              ; 67
	.quad	0
	.quad	0
Ldebug_loc91:
.set Lset536, Ltmp323-Lfunc_begin0
	.quad	Lset536
.set Lset537, Ltmp329-Lfunc_begin0
	.quad	Lset537
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	66                              ; 66
.set Lset538, Ltmp333-Lfunc_begin0
	.quad	Lset538
.set Lset539, Ltmp339-Lfunc_begin0
	.quad	Lset539
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	66                              ; 66
.set Lset540, Ltmp344-Lfunc_begin0
	.quad	Lset540
.set Lset541, Ltmp345-Lfunc_begin0
	.quad	Lset541
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	66                              ; 66
.set Lset542, Ltmp346-Lfunc_begin0
	.quad	Lset542
.set Lset543, Ltmp348-Lfunc_begin0
	.quad	Lset543
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	66                              ; 66
	.quad	0
	.quad	0
Ldebug_loc92:
.set Lset544, Ltmp340-Lfunc_begin0
	.quad	Lset544
.set Lset545, Ltmp341-Lfunc_begin0
	.quad	Lset545
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	65                              ; 65
	.quad	0
	.quad	0
Ldebug_loc93:
.set Lset546, Ltmp356-Lfunc_begin0
	.quad	Lset546
.set Lset547, Ltmp357-Lfunc_begin0
	.quad	Lset547
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	65                              ; 65
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
	.byte	72                              ; DW_TAG_call_site
	.byte	1                               ; DW_CHILDREN_yes
	.byte	127                             ; DW_AT_call_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	125                             ; DW_AT_call_return_pc
	.byte	1                               ; DW_FORM_addr
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	25                              ; Abbreviation Code
	.byte	73                              ; DW_TAG_call_site_parameter
	.byte	0                               ; DW_CHILDREN_no
	.byte	2                               ; DW_AT_location
	.byte	24                              ; DW_FORM_exprloc
	.byte	126                             ; DW_AT_call_value
	.byte	24                              ; DW_FORM_exprloc
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	26                              ; Abbreviation Code
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
	.byte	27                              ; Abbreviation Code
	.byte	52                              ; DW_TAG_variable
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
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
.set Lset548, Ldebug_info_end0-Ldebug_info_start0 ; Length of Unit
	.long	Lset548
Ldebug_info_start0:
	.short	4                               ; DWARF version number
.set Lset549, Lsection_abbrev-Lsection_abbrev ; Offset Into Abbrev. Section
	.long	Lset549
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0xb56 DW_TAG_compile_unit
	.long	0                               ; DW_AT_producer
	.short	12                              ; DW_AT_language
	.long	46                              ; DW_AT_name
	.long	52                              ; DW_AT_LLVM_sysroot
	.long	104                             ; DW_AT_APPLE_sdk
.set Lset550, Lline_table_start0-Lsection_line ; DW_AT_stmt_list
	.long	Lset550
	.long	115                             ; DW_AT_comp_dir
                                        ; DW_AT_APPLE_optimized
	.quad	Lfunc_begin0                    ; DW_AT_low_pc
.set Lset551, Lfunc_end3-Lfunc_begin0   ; DW_AT_high_pc
	.long	Lset551
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
.set Lset552, Lfunc_end0-Lfunc_begin0   ; DW_AT_high_pc
	.long	Lset552
	.byte	1                               ; DW_AT_frame_base
	.byte	109
                                        ; DW_AT_call_all_calls
	.long	349                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	63                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_external
                                        ; DW_AT_APPLE_optimized
	.byte	13                              ; Abbrev [13] 0x157:0xf DW_TAG_formal_parameter
.set Lset553, Ldebug_loc0-Lsection_debug_loc ; DW_AT_location
	.long	Lset553
	.long	483                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	63                              ; DW_AT_decl_line
	.long	2513                            ; DW_AT_type
	.byte	13                              ; Abbrev [13] 0x166:0xf DW_TAG_formal_parameter
.set Lset554, Ldebug_loc1-Lsection_debug_loc ; DW_AT_location
	.long	Lset554
	.long	337                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	63                              ; DW_AT_decl_line
	.long	151                             ; DW_AT_type
	.byte	14                              ; Abbrev [14] 0x175:0xf DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	143
	.asciz	"\310"
	.long	331                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	70                              ; DW_AT_decl_line
	.long	2494                            ; DW_AT_type
	.byte	14                              ; Abbrev [14] 0x184:0xe DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	8
	.long	333                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	71                              ; DW_AT_decl_line
	.long	2494                            ; DW_AT_type
	.byte	15                              ; Abbrev [15] 0x192:0xf DW_TAG_variable
.set Lset555, Ldebug_loc2-Lsection_debug_loc ; DW_AT_location
	.long	Lset555
	.long	610                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	64                              ; DW_AT_decl_line
	.long	151                             ; DW_AT_type
	.byte	15                              ; Abbrev [15] 0x1a1:0xf DW_TAG_variable
.set Lset556, Ldebug_loc3-Lsection_debug_loc ; DW_AT_location
	.long	Lset556
	.long	619                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	65                              ; DW_AT_decl_line
	.long	151                             ; DW_AT_type
	.byte	15                              ; Abbrev [15] 0x1b0:0xf DW_TAG_variable
.set Lset557, Ldebug_loc4-Lsection_debug_loc ; DW_AT_location
	.long	Lset557
	.long	628                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	66                              ; DW_AT_decl_line
	.long	151                             ; DW_AT_type
	.byte	15                              ; Abbrev [15] 0x1bf:0xf DW_TAG_variable
.set Lset558, Ldebug_loc8-Lsection_debug_loc ; DW_AT_location
	.long	Lset558
	.long	634                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	67                              ; DW_AT_decl_line
	.long	151                             ; DW_AT_type
	.byte	15                              ; Abbrev [15] 0x1ce:0xf DW_TAG_variable
.set Lset559, Ldebug_loc12-Lsection_debug_loc ; DW_AT_location
	.long	Lset559
	.long	643                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	68                              ; DW_AT_decl_line
	.long	151                             ; DW_AT_type
	.byte	16                              ; Abbrev [16] 0x1dd:0x3c DW_TAG_inlined_subroutine
	.long	83                              ; DW_AT_abstract_origin
	.quad	Ltmp4                           ; DW_AT_low_pc
.set Lset560, Ltmp21-Ltmp4              ; DW_AT_high_pc
	.long	Lset560
	.byte	2                               ; DW_AT_call_file
	.byte	67                              ; DW_AT_call_line
	.byte	25                              ; DW_AT_call_column
	.byte	17                              ; Abbrev [17] 0x1f1:0x9 DW_TAG_formal_parameter
.set Lset561, Ldebug_loc5-Lsection_debug_loc ; DW_AT_location
	.long	Lset561
	.long	95                              ; DW_AT_abstract_origin
	.byte	18                              ; Abbrev [18] 0x1fa:0x6 DW_TAG_formal_parameter
	.byte	8                               ; DW_AT_const_value
	.long	106                             ; DW_AT_abstract_origin
	.byte	18                              ; Abbrev [18] 0x200:0x6 DW_TAG_formal_parameter
	.byte	7                               ; DW_AT_const_value
	.long	117                             ; DW_AT_abstract_origin
	.byte	19                              ; Abbrev [19] 0x206:0x9 DW_TAG_variable
.set Lset562, Ldebug_loc6-Lsection_debug_loc ; DW_AT_location
	.long	Lset562
	.long	128                             ; DW_AT_abstract_origin
	.byte	19                              ; Abbrev [19] 0x20f:0x9 DW_TAG_variable
.set Lset563, Ldebug_loc7-Lsection_debug_loc ; DW_AT_location
	.long	Lset563
	.long	139                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	16                              ; Abbrev [16] 0x219:0x3c DW_TAG_inlined_subroutine
	.long	83                              ; DW_AT_abstract_origin
	.quad	Ltmp22                          ; DW_AT_low_pc
.set Lset564, Ltmp38-Ltmp22             ; DW_AT_high_pc
	.long	Lset564
	.byte	2                               ; DW_AT_call_file
	.byte	68                              ; DW_AT_call_line
	.byte	25                              ; DW_AT_call_column
	.byte	17                              ; Abbrev [17] 0x22d:0x9 DW_TAG_formal_parameter
.set Lset565, Ldebug_loc9-Lsection_debug_loc ; DW_AT_location
	.long	Lset565
	.long	95                              ; DW_AT_abstract_origin
	.byte	18                              ; Abbrev [18] 0x236:0x6 DW_TAG_formal_parameter
	.byte	8                               ; DW_AT_const_value
	.long	106                             ; DW_AT_abstract_origin
	.byte	18                              ; Abbrev [18] 0x23c:0x6 DW_TAG_formal_parameter
	.byte	7                               ; DW_AT_const_value
	.long	117                             ; DW_AT_abstract_origin
	.byte	19                              ; Abbrev [19] 0x242:0x9 DW_TAG_variable
.set Lset566, Ldebug_loc10-Lsection_debug_loc ; DW_AT_location
	.long	Lset566
	.long	128                             ; DW_AT_abstract_origin
	.byte	19                              ; Abbrev [19] 0x24b:0x9 DW_TAG_variable
.set Lset567, Ldebug_loc11-Lsection_debug_loc ; DW_AT_location
	.long	Lset567
	.long	139                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	16                              ; Abbrev [16] 0x255:0x38 DW_TAG_inlined_subroutine
	.long	187                             ; DW_AT_abstract_origin
	.quad	Ltmp39                          ; DW_AT_low_pc
.set Lset568, Ltmp42-Ltmp39             ; DW_AT_high_pc
	.long	Lset568
	.byte	2                               ; DW_AT_call_file
	.byte	72                              ; DW_AT_call_line
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
.set Lset569, Ldebug_loc13-Lsection_debug_loc ; DW_AT_location
	.long	Lset569
	.long	217                             ; DW_AT_abstract_origin
	.byte	19                              ; Abbrev [19] 0x283:0x9 DW_TAG_variable
.set Lset570, Ldebug_loc14-Lsection_debug_loc ; DW_AT_location
	.long	Lset570
	.long	228                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	16                              ; Abbrev [16] 0x28d:0x37 DW_TAG_inlined_subroutine
	.long	187                             ; DW_AT_abstract_origin
	.quad	Ltmp43                          ; DW_AT_low_pc
.set Lset571, Ltmp48-Ltmp43             ; DW_AT_high_pc
	.long	Lset571
	.byte	2                               ; DW_AT_call_file
	.byte	73                              ; DW_AT_call_line
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
.set Lset572, Ldebug_loc15-Lsection_debug_loc ; DW_AT_location
	.long	Lset572
	.long	217                             ; DW_AT_abstract_origin
	.byte	19                              ; Abbrev [19] 0x2ba:0x9 DW_TAG_variable
.set Lset573, Ldebug_loc16-Lsection_debug_loc ; DW_AT_location
	.long	Lset573
	.long	228                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	21                              ; Abbrev [21] 0x2c4:0xce DW_TAG_lexical_block
	.quad	Ltmp48                          ; DW_AT_low_pc
.set Lset574, Ltmp91-Ltmp48             ; DW_AT_high_pc
	.long	Lset574
	.byte	14                              ; Abbrev [14] 0x2d1:0xd DW_TAG_variable
	.byte	1                               ; DW_AT_location
	.byte	88
	.long	652                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	75                              ; DW_AT_decl_line
	.long	2854                            ; DW_AT_type
	.byte	22                              ; Abbrev [22] 0x2de:0x4b DW_TAG_lexical_block
.set Lset575, Ldebug_ranges0-Ldebug_range ; DW_AT_ranges
	.long	Lset575
	.byte	8                               ; Abbrev [8] 0x2e3:0xb DW_TAG_variable
	.long	335                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	78                              ; DW_AT_decl_line
	.long	2897                            ; DW_AT_type
	.byte	23                              ; Abbrev [23] 0x2ee:0x3a DW_TAG_inlined_subroutine
	.long	247                             ; DW_AT_abstract_origin
.set Lset576, Ldebug_ranges1-Ldebug_range ; DW_AT_ranges
	.long	Lset576
	.byte	2                               ; DW_AT_call_file
	.byte	79                              ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	17                              ; Abbrev [17] 0x2fa:0x9 DW_TAG_formal_parameter
.set Lset577, Ldebug_loc18-Lsection_debug_loc ; DW_AT_location
	.long	Lset577
	.long	259                             ; DW_AT_abstract_origin
	.byte	17                              ; Abbrev [17] 0x303:0x9 DW_TAG_formal_parameter
.set Lset578, Ldebug_loc19-Lsection_debug_loc ; DW_AT_location
	.long	Lset578
	.long	270                             ; DW_AT_abstract_origin
	.byte	17                              ; Abbrev [17] 0x30c:0x9 DW_TAG_formal_parameter
.set Lset579, Ldebug_loc17-Lsection_debug_loc ; DW_AT_location
	.long	Lset579
	.long	281                             ; DW_AT_abstract_origin
	.byte	17                              ; Abbrev [17] 0x315:0x9 DW_TAG_formal_parameter
.set Lset580, Ldebug_loc20-Lsection_debug_loc ; DW_AT_location
	.long	Lset580
	.long	292                             ; DW_AT_abstract_origin
	.byte	19                              ; Abbrev [19] 0x31e:0x9 DW_TAG_variable
.set Lset581, Ldebug_loc27-Lsection_debug_loc ; DW_AT_location
	.long	Lset581
	.long	303                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	21                              ; Abbrev [21] 0x329:0x68 DW_TAG_lexical_block
	.quad	Ltmp56                          ; DW_AT_low_pc
.set Lset582, Ltmp76-Ltmp56             ; DW_AT_high_pc
	.long	Lset582
	.byte	15                              ; Abbrev [15] 0x336:0xf DW_TAG_variable
.set Lset583, Ldebug_loc21-Lsection_debug_loc ; DW_AT_location
	.long	Lset583
	.long	654                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	81                              ; DW_AT_decl_line
	.long	2854                            ; DW_AT_type
	.byte	22                              ; Abbrev [22] 0x345:0x4b DW_TAG_lexical_block
.set Lset584, Ldebug_ranges2-Ldebug_range ; DW_AT_ranges
	.long	Lset584
	.byte	8                               ; Abbrev [8] 0x34a:0xb DW_TAG_variable
	.long	335                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	83                              ; DW_AT_decl_line
	.long	2897                            ; DW_AT_type
	.byte	23                              ; Abbrev [23] 0x355:0x3a DW_TAG_inlined_subroutine
	.long	247                             ; DW_AT_abstract_origin
.set Lset585, Ldebug_ranges3-Ldebug_range ; DW_AT_ranges
	.long	Lset585
	.byte	2                               ; DW_AT_call_file
	.byte	84                              ; DW_AT_call_line
	.byte	22                              ; DW_AT_call_column
	.byte	17                              ; Abbrev [17] 0x361:0x9 DW_TAG_formal_parameter
.set Lset586, Ldebug_loc23-Lsection_debug_loc ; DW_AT_location
	.long	Lset586
	.long	259                             ; DW_AT_abstract_origin
	.byte	17                              ; Abbrev [17] 0x36a:0x9 DW_TAG_formal_parameter
.set Lset587, Ldebug_loc24-Lsection_debug_loc ; DW_AT_location
	.long	Lset587
	.long	270                             ; DW_AT_abstract_origin
	.byte	17                              ; Abbrev [17] 0x373:0x9 DW_TAG_formal_parameter
.set Lset588, Ldebug_loc22-Lsection_debug_loc ; DW_AT_location
	.long	Lset588
	.long	281                             ; DW_AT_abstract_origin
	.byte	17                              ; Abbrev [17] 0x37c:0x9 DW_TAG_formal_parameter
.set Lset589, Ldebug_loc25-Lsection_debug_loc ; DW_AT_location
	.long	Lset589
	.long	292                             ; DW_AT_abstract_origin
	.byte	19                              ; Abbrev [19] 0x385:0x9 DW_TAG_variable
.set Lset590, Ldebug_loc26-Lsection_debug_loc ; DW_AT_location
	.long	Lset590
	.long	303                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0x393:0x44 DW_TAG_subprogram
	.long	367                             ; DW_AT_name
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
	.long	383                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	31                              ; DW_AT_decl_line
	.long	983                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	5                               ; Abbrev [5] 0x3d7:0x7 DW_TAG_base_type
	.long	377                             ; DW_AT_name
	.byte	4                               ; DW_AT_encoding
	.byte	4                               ; DW_AT_byte_size
	.byte	12                              ; Abbrev [12] 0x3de:0x21e DW_TAG_subprogram
	.quad	Lfunc_begin1                    ; DW_AT_low_pc
.set Lset591, Lfunc_end1-Lfunc_begin1   ; DW_AT_high_pc
	.long	Lset591
	.byte	1                               ; DW_AT_frame_base
	.byte	109
                                        ; DW_AT_call_all_calls
	.long	390                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	90                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_external
                                        ; DW_AT_APPLE_optimized
	.byte	13                              ; Abbrev [13] 0x3f3:0xf DW_TAG_formal_parameter
.set Lset592, Ldebug_loc28-Lsection_debug_loc ; DW_AT_location
	.long	Lset592
	.long	483                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	90                              ; DW_AT_decl_line
	.long	2513                            ; DW_AT_type
	.byte	13                              ; Abbrev [13] 0x402:0xf DW_TAG_formal_parameter
.set Lset593, Ldebug_loc29-Lsection_debug_loc ; DW_AT_location
	.long	Lset593
	.long	337                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	90                              ; DW_AT_decl_line
	.long	151                             ; DW_AT_type
	.byte	14                              ; Abbrev [14] 0x411:0xf DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	143
	.asciz	"\310"
	.long	331                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	97                              ; DW_AT_decl_line
	.long	2873                            ; DW_AT_type
	.byte	14                              ; Abbrev [14] 0x420:0xe DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	8
	.long	333                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	98                              ; DW_AT_decl_line
	.long	2873                            ; DW_AT_type
	.byte	15                              ; Abbrev [15] 0x42e:0xf DW_TAG_variable
.set Lset594, Ldebug_loc30-Lsection_debug_loc ; DW_AT_location
	.long	Lset594
	.long	610                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	91                              ; DW_AT_decl_line
	.long	151                             ; DW_AT_type
	.byte	15                              ; Abbrev [15] 0x43d:0xf DW_TAG_variable
.set Lset595, Ldebug_loc31-Lsection_debug_loc ; DW_AT_location
	.long	Lset595
	.long	619                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	92                              ; DW_AT_decl_line
	.long	151                             ; DW_AT_type
	.byte	15                              ; Abbrev [15] 0x44c:0xf DW_TAG_variable
.set Lset596, Ldebug_loc32-Lsection_debug_loc ; DW_AT_location
	.long	Lset596
	.long	628                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	93                              ; DW_AT_decl_line
	.long	151                             ; DW_AT_type
	.byte	15                              ; Abbrev [15] 0x45b:0xf DW_TAG_variable
.set Lset597, Ldebug_loc36-Lsection_debug_loc ; DW_AT_location
	.long	Lset597
	.long	634                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	94                              ; DW_AT_decl_line
	.long	151                             ; DW_AT_type
	.byte	15                              ; Abbrev [15] 0x46a:0xf DW_TAG_variable
.set Lset598, Ldebug_loc40-Lsection_debug_loc ; DW_AT_location
	.long	Lset598
	.long	643                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	95                              ; DW_AT_decl_line
	.long	151                             ; DW_AT_type
	.byte	16                              ; Abbrev [16] 0x479:0x3c DW_TAG_inlined_subroutine
	.long	83                              ; DW_AT_abstract_origin
	.quad	Ltmp104                         ; DW_AT_low_pc
.set Lset599, Ltmp119-Ltmp104           ; DW_AT_high_pc
	.long	Lset599
	.byte	2                               ; DW_AT_call_file
	.byte	94                              ; DW_AT_call_line
	.byte	25                              ; DW_AT_call_column
	.byte	17                              ; Abbrev [17] 0x48d:0x9 DW_TAG_formal_parameter
.set Lset600, Ldebug_loc33-Lsection_debug_loc ; DW_AT_location
	.long	Lset600
	.long	95                              ; DW_AT_abstract_origin
	.byte	18                              ; Abbrev [18] 0x496:0x6 DW_TAG_formal_parameter
	.byte	4                               ; DW_AT_const_value
	.long	106                             ; DW_AT_abstract_origin
	.byte	18                              ; Abbrev [18] 0x49c:0x6 DW_TAG_formal_parameter
	.byte	7                               ; DW_AT_const_value
	.long	117                             ; DW_AT_abstract_origin
	.byte	19                              ; Abbrev [19] 0x4a2:0x9 DW_TAG_variable
.set Lset601, Ldebug_loc34-Lsection_debug_loc ; DW_AT_location
	.long	Lset601
	.long	128                             ; DW_AT_abstract_origin
	.byte	19                              ; Abbrev [19] 0x4ab:0x9 DW_TAG_variable
.set Lset602, Ldebug_loc35-Lsection_debug_loc ; DW_AT_location
	.long	Lset602
	.long	139                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	16                              ; Abbrev [16] 0x4b5:0x3c DW_TAG_inlined_subroutine
	.long	83                              ; DW_AT_abstract_origin
	.quad	Ltmp120                         ; DW_AT_low_pc
.set Lset603, Ltmp133-Ltmp120           ; DW_AT_high_pc
	.long	Lset603
	.byte	2                               ; DW_AT_call_file
	.byte	95                              ; DW_AT_call_line
	.byte	25                              ; DW_AT_call_column
	.byte	17                              ; Abbrev [17] 0x4c9:0x9 DW_TAG_formal_parameter
.set Lset604, Ldebug_loc37-Lsection_debug_loc ; DW_AT_location
	.long	Lset604
	.long	95                              ; DW_AT_abstract_origin
	.byte	18                              ; Abbrev [18] 0x4d2:0x6 DW_TAG_formal_parameter
	.byte	4                               ; DW_AT_const_value
	.long	106                             ; DW_AT_abstract_origin
	.byte	18                              ; Abbrev [18] 0x4d8:0x6 DW_TAG_formal_parameter
	.byte	7                               ; DW_AT_const_value
	.long	117                             ; DW_AT_abstract_origin
	.byte	19                              ; Abbrev [19] 0x4de:0x9 DW_TAG_variable
.set Lset605, Ldebug_loc38-Lsection_debug_loc ; DW_AT_location
	.long	Lset605
	.long	128                             ; DW_AT_abstract_origin
	.byte	19                              ; Abbrev [19] 0x4e7:0x9 DW_TAG_variable
.set Lset606, Ldebug_loc39-Lsection_debug_loc ; DW_AT_location
	.long	Lset606
	.long	139                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	21                              ; Abbrev [21] 0x4f1:0xce DW_TAG_lexical_block
	.quad	Ltmp136                         ; DW_AT_low_pc
.set Lset607, Ltmp179-Ltmp136           ; DW_AT_high_pc
	.long	Lset607
	.byte	14                              ; Abbrev [14] 0x4fe:0xd DW_TAG_variable
	.byte	1                               ; DW_AT_location
	.byte	88
	.long	652                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	102                             ; DW_AT_decl_line
	.long	2854                            ; DW_AT_type
	.byte	22                              ; Abbrev [22] 0x50b:0x4b DW_TAG_lexical_block
.set Lset608, Ldebug_ranges4-Ldebug_range ; DW_AT_ranges
	.long	Lset608
	.byte	8                               ; Abbrev [8] 0x510:0xb DW_TAG_variable
	.long	335                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	105                             ; DW_AT_decl_line
	.long	2902                            ; DW_AT_type
	.byte	23                              ; Abbrev [23] 0x51b:0x3a DW_TAG_inlined_subroutine
	.long	915                             ; DW_AT_abstract_origin
.set Lset609, Ldebug_ranges5-Ldebug_range ; DW_AT_ranges
	.long	Lset609
	.byte	2                               ; DW_AT_call_file
	.byte	106                             ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	17                              ; Abbrev [17] 0x527:0x9 DW_TAG_formal_parameter
.set Lset610, Ldebug_loc42-Lsection_debug_loc ; DW_AT_location
	.long	Lset610
	.long	927                             ; DW_AT_abstract_origin
	.byte	17                              ; Abbrev [17] 0x530:0x9 DW_TAG_formal_parameter
.set Lset611, Ldebug_loc43-Lsection_debug_loc ; DW_AT_location
	.long	Lset611
	.long	938                             ; DW_AT_abstract_origin
	.byte	17                              ; Abbrev [17] 0x539:0x9 DW_TAG_formal_parameter
.set Lset612, Ldebug_loc41-Lsection_debug_loc ; DW_AT_location
	.long	Lset612
	.long	949                             ; DW_AT_abstract_origin
	.byte	17                              ; Abbrev [17] 0x542:0x9 DW_TAG_formal_parameter
.set Lset613, Ldebug_loc44-Lsection_debug_loc ; DW_AT_location
	.long	Lset613
	.long	960                             ; DW_AT_abstract_origin
	.byte	19                              ; Abbrev [19] 0x54b:0x9 DW_TAG_variable
.set Lset614, Ldebug_loc51-Lsection_debug_loc ; DW_AT_location
	.long	Lset614
	.long	971                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	21                              ; Abbrev [21] 0x556:0x68 DW_TAG_lexical_block
	.quad	Ltmp144                         ; DW_AT_low_pc
.set Lset615, Ltmp164-Ltmp144           ; DW_AT_high_pc
	.long	Lset615
	.byte	15                              ; Abbrev [15] 0x563:0xf DW_TAG_variable
.set Lset616, Ldebug_loc45-Lsection_debug_loc ; DW_AT_location
	.long	Lset616
	.long	654                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	108                             ; DW_AT_decl_line
	.long	2854                            ; DW_AT_type
	.byte	22                              ; Abbrev [22] 0x572:0x4b DW_TAG_lexical_block
.set Lset617, Ldebug_ranges6-Ldebug_range ; DW_AT_ranges
	.long	Lset617
	.byte	8                               ; Abbrev [8] 0x577:0xb DW_TAG_variable
	.long	335                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	110                             ; DW_AT_decl_line
	.long	2902                            ; DW_AT_type
	.byte	23                              ; Abbrev [23] 0x582:0x3a DW_TAG_inlined_subroutine
	.long	915                             ; DW_AT_abstract_origin
.set Lset618, Ldebug_ranges7-Ldebug_range ; DW_AT_ranges
	.long	Lset618
	.byte	2                               ; DW_AT_call_file
	.byte	111                             ; DW_AT_call_line
	.byte	22                              ; DW_AT_call_column
	.byte	17                              ; Abbrev [17] 0x58e:0x9 DW_TAG_formal_parameter
.set Lset619, Ldebug_loc47-Lsection_debug_loc ; DW_AT_location
	.long	Lset619
	.long	927                             ; DW_AT_abstract_origin
	.byte	17                              ; Abbrev [17] 0x597:0x9 DW_TAG_formal_parameter
.set Lset620, Ldebug_loc48-Lsection_debug_loc ; DW_AT_location
	.long	Lset620
	.long	938                             ; DW_AT_abstract_origin
	.byte	17                              ; Abbrev [17] 0x5a0:0x9 DW_TAG_formal_parameter
.set Lset621, Ldebug_loc46-Lsection_debug_loc ; DW_AT_location
	.long	Lset621
	.long	949                             ; DW_AT_abstract_origin
	.byte	17                              ; Abbrev [17] 0x5a9:0x9 DW_TAG_formal_parameter
.set Lset622, Ldebug_loc49-Lsection_debug_loc ; DW_AT_location
	.long	Lset622
	.long	960                             ; DW_AT_abstract_origin
	.byte	19                              ; Abbrev [19] 0x5b2:0x9 DW_TAG_variable
.set Lset623, Ldebug_loc50-Lsection_debug_loc ; DW_AT_location
	.long	Lset623
	.long	971                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	24                              ; Abbrev [24] 0x5bf:0x1b DW_TAG_call_site
	.long	1532                            ; DW_AT_call_origin
	.quad	Ltmp134                         ; DW_AT_call_return_pc
	.byte	25                              ; Abbrev [25] 0x5cc:0x6 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	81
	.byte	2                               ; DW_AT_call_value
	.byte	132
	.byte	0
	.byte	25                              ; Abbrev [25] 0x5d2:0x7 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	80
	.byte	3                               ; DW_AT_call_value
	.byte	143
	.asciz	"\310"
	.byte	0                               ; End Of Children Mark
	.byte	24                              ; Abbrev [24] 0x5da:0x21 DW_TAG_call_site
	.long	1532                            ; DW_AT_call_origin
	.quad	Ltmp135                         ; DW_AT_call_return_pc
	.byte	25                              ; Abbrev [25] 0x5e7:0x6 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	82
	.byte	2                               ; DW_AT_call_value
	.byte	133
	.byte	0
	.byte	25                              ; Abbrev [25] 0x5ed:0x6 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	80
	.byte	2                               ; DW_AT_call_value
	.byte	143
	.byte	8
	.byte	25                              ; Abbrev [25] 0x5f3:0x7 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	81
	.byte	3                               ; DW_AT_call_value
	.byte	132
	.ascii	"\200\004"
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	26                              ; Abbrev [26] 0x5fc:0xc1 DW_TAG_subprogram
	.quad	Lfunc_begin2                    ; DW_AT_low_pc
.set Lset624, Lfunc_end2-Lfunc_begin2   ; DW_AT_high_pc
	.long	Lset624
	.byte	1                               ; DW_AT_frame_base
	.byte	109
                                        ; DW_AT_call_all_calls
	.long	408                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	51                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_APPLE_optimized
	.byte	13                              ; Abbrev [13] 0x611:0xf DW_TAG_formal_parameter
.set Lset625, Ldebug_loc52-Lsection_debug_loc ; DW_AT_location
	.long	Lset625
	.long	293                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	51                              ; DW_AT_decl_line
	.long	2902                            ; DW_AT_type
	.byte	13                              ; Abbrev [13] 0x620:0xf DW_TAG_formal_parameter
.set Lset626, Ldebug_loc53-Lsection_debug_loc ; DW_AT_location
	.long	Lset626
	.long	297                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	51                              ; DW_AT_decl_line
	.long	241                             ; DW_AT_type
	.byte	13                              ; Abbrev [13] 0x62f:0xf DW_TAG_formal_parameter
.set Lset627, Ldebug_loc54-Lsection_debug_loc ; DW_AT_location
	.long	Lset627
	.long	301                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	51                              ; DW_AT_decl_line
	.long	151                             ; DW_AT_type
	.byte	13                              ; Abbrev [13] 0x63e:0xf DW_TAG_formal_parameter
.set Lset628, Ldebug_loc55-Lsection_debug_loc ; DW_AT_location
	.long	Lset628
	.long	656                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	51                              ; DW_AT_decl_line
	.long	151                             ; DW_AT_type
	.byte	16                              ; Abbrev [16] 0x64d:0x35 DW_TAG_inlined_subroutine
	.long	187                             ; DW_AT_abstract_origin
	.quad	Ltmp191                         ; DW_AT_low_pc
.set Lset629, Ltmp195-Ltmp191           ; DW_AT_high_pc
	.long	Lset629
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
.set Lset630, Ldebug_loc56-Lsection_debug_loc ; DW_AT_location
	.long	Lset630
	.long	217                             ; DW_AT_abstract_origin
	.byte	19                              ; Abbrev [19] 0x678:0x9 DW_TAG_variable
.set Lset631, Ldebug_loc57-Lsection_debug_loc ; DW_AT_location
	.long	Lset631
	.long	228                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	21                              ; Abbrev [21] 0x682:0x3a DW_TAG_lexical_block
	.quad	Ltmp196                         ; DW_AT_low_pc
.set Lset632, Ltmp244-Ltmp196           ; DW_AT_high_pc
	.long	Lset632
	.byte	15                              ; Abbrev [15] 0x68f:0xf DW_TAG_variable
.set Lset633, Ldebug_loc58-Lsection_debug_loc ; DW_AT_location
	.long	Lset633
	.long	652                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	54                              ; DW_AT_decl_line
	.long	169                             ; DW_AT_type
	.byte	21                              ; Abbrev [21] 0x69e:0x1d DW_TAG_lexical_block
	.quad	Ltmp196                         ; DW_AT_low_pc
.set Lset634, Ltmp244-Ltmp196           ; DW_AT_high_pc
	.long	Lset634
	.byte	15                              ; Abbrev [15] 0x6ab:0xf DW_TAG_variable
.set Lset635, Ldebug_loc59-Lsection_debug_loc ; DW_AT_location
	.long	Lset635
	.long	235                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	55                              ; DW_AT_decl_line
	.long	983                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0x6bd:0x44 DW_TAG_subprogram
	.long	426                             ; DW_AT_name
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
	.long	383                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	46                              ; DW_AT_decl_line
	.long	1793                            ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	5                               ; Abbrev [5] 0x701:0x7 DW_TAG_base_type
	.long	436                             ; DW_AT_name
	.byte	4                               ; DW_AT_encoding
	.byte	2                               ; DW_AT_byte_size
	.byte	12                              ; Abbrev [12] 0x708:0x2b6 DW_TAG_subprogram
	.quad	Lfunc_begin3                    ; DW_AT_low_pc
.set Lset636, Lfunc_end3-Lfunc_begin3   ; DW_AT_high_pc
	.long	Lset636
	.byte	1                               ; DW_AT_frame_base
	.byte	109
                                        ; DW_AT_call_all_calls
	.long	445                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	117                             ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_external
                                        ; DW_AT_APPLE_optimized
	.byte	13                              ; Abbrev [13] 0x71d:0xf DW_TAG_formal_parameter
.set Lset637, Ldebug_loc60-Lsection_debug_loc ; DW_AT_location
	.long	Lset637
	.long	483                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	117                             ; DW_AT_decl_line
	.long	2513                            ; DW_AT_type
	.byte	13                              ; Abbrev [13] 0x72c:0xf DW_TAG_formal_parameter
.set Lset638, Ldebug_loc61-Lsection_debug_loc ; DW_AT_location
	.long	Lset638
	.long	337                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	117                             ; DW_AT_decl_line
	.long	151                             ; DW_AT_type
	.byte	14                              ; Abbrev [14] 0x73b:0xf DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	143
	.asciz	"\310"
	.long	331                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	124                             ; DW_AT_decl_line
	.long	2861                            ; DW_AT_type
	.byte	14                              ; Abbrev [14] 0x74a:0xe DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	8
	.long	333                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	125                             ; DW_AT_decl_line
	.long	2861                            ; DW_AT_type
	.byte	15                              ; Abbrev [15] 0x758:0xf DW_TAG_variable
.set Lset639, Ldebug_loc62-Lsection_debug_loc ; DW_AT_location
	.long	Lset639
	.long	610                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	118                             ; DW_AT_decl_line
	.long	151                             ; DW_AT_type
	.byte	15                              ; Abbrev [15] 0x767:0xf DW_TAG_variable
.set Lset640, Ldebug_loc63-Lsection_debug_loc ; DW_AT_location
	.long	Lset640
	.long	619                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	119                             ; DW_AT_decl_line
	.long	151                             ; DW_AT_type
	.byte	15                              ; Abbrev [15] 0x776:0xf DW_TAG_variable
.set Lset641, Ldebug_loc64-Lsection_debug_loc ; DW_AT_location
	.long	Lset641
	.long	628                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	120                             ; DW_AT_decl_line
	.long	151                             ; DW_AT_type
	.byte	15                              ; Abbrev [15] 0x785:0xf DW_TAG_variable
.set Lset642, Ldebug_loc68-Lsection_debug_loc ; DW_AT_location
	.long	Lset642
	.long	634                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	121                             ; DW_AT_decl_line
	.long	151                             ; DW_AT_type
	.byte	15                              ; Abbrev [15] 0x794:0xf DW_TAG_variable
.set Lset643, Ldebug_loc72-Lsection_debug_loc ; DW_AT_location
	.long	Lset643
	.long	643                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	122                             ; DW_AT_decl_line
	.long	151                             ; DW_AT_type
	.byte	16                              ; Abbrev [16] 0x7a3:0x3c DW_TAG_inlined_subroutine
	.long	83                              ; DW_AT_abstract_origin
	.quad	Ltmp252                         ; DW_AT_low_pc
.set Lset644, Ltmp269-Ltmp252           ; DW_AT_high_pc
	.long	Lset644
	.byte	2                               ; DW_AT_call_file
	.byte	121                             ; DW_AT_call_line
	.byte	25                              ; DW_AT_call_column
	.byte	17                              ; Abbrev [17] 0x7b7:0x9 DW_TAG_formal_parameter
.set Lset645, Ldebug_loc65-Lsection_debug_loc ; DW_AT_location
	.long	Lset645
	.long	95                              ; DW_AT_abstract_origin
	.byte	18                              ; Abbrev [18] 0x7c0:0x6 DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_const_value
	.long	106                             ; DW_AT_abstract_origin
	.byte	18                              ; Abbrev [18] 0x7c6:0x6 DW_TAG_formal_parameter
	.byte	7                               ; DW_AT_const_value
	.long	117                             ; DW_AT_abstract_origin
	.byte	19                              ; Abbrev [19] 0x7cc:0x9 DW_TAG_variable
.set Lset646, Ldebug_loc66-Lsection_debug_loc ; DW_AT_location
	.long	Lset646
	.long	128                             ; DW_AT_abstract_origin
	.byte	19                              ; Abbrev [19] 0x7d5:0x9 DW_TAG_variable
.set Lset647, Ldebug_loc67-Lsection_debug_loc ; DW_AT_location
	.long	Lset647
	.long	139                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	16                              ; Abbrev [16] 0x7df:0x3c DW_TAG_inlined_subroutine
	.long	83                              ; DW_AT_abstract_origin
	.quad	Ltmp270                         ; DW_AT_low_pc
.set Lset648, Ltmp286-Ltmp270           ; DW_AT_high_pc
	.long	Lset648
	.byte	2                               ; DW_AT_call_file
	.byte	122                             ; DW_AT_call_line
	.byte	25                              ; DW_AT_call_column
	.byte	17                              ; Abbrev [17] 0x7f3:0x9 DW_TAG_formal_parameter
.set Lset649, Ldebug_loc69-Lsection_debug_loc ; DW_AT_location
	.long	Lset649
	.long	95                              ; DW_AT_abstract_origin
	.byte	18                              ; Abbrev [18] 0x7fc:0x6 DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_const_value
	.long	106                             ; DW_AT_abstract_origin
	.byte	18                              ; Abbrev [18] 0x802:0x6 DW_TAG_formal_parameter
	.byte	7                               ; DW_AT_const_value
	.long	117                             ; DW_AT_abstract_origin
	.byte	19                              ; Abbrev [19] 0x808:0x9 DW_TAG_variable
.set Lset650, Ldebug_loc70-Lsection_debug_loc ; DW_AT_location
	.long	Lset650
	.long	128                             ; DW_AT_abstract_origin
	.byte	19                              ; Abbrev [19] 0x811:0x9 DW_TAG_variable
.set Lset651, Ldebug_loc71-Lsection_debug_loc ; DW_AT_location
	.long	Lset651
	.long	139                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	16                              ; Abbrev [16] 0x81b:0x38 DW_TAG_inlined_subroutine
	.long	187                             ; DW_AT_abstract_origin
	.quad	Ltmp287                         ; DW_AT_low_pc
.set Lset652, Ltmp290-Ltmp287           ; DW_AT_high_pc
	.long	Lset652
	.byte	2                               ; DW_AT_call_file
	.byte	126                             ; DW_AT_call_line
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
.set Lset653, Ldebug_loc73-Lsection_debug_loc ; DW_AT_location
	.long	Lset653
	.long	217                             ; DW_AT_abstract_origin
	.byte	19                              ; Abbrev [19] 0x849:0x9 DW_TAG_variable
.set Lset654, Ldebug_loc74-Lsection_debug_loc ; DW_AT_location
	.long	Lset654
	.long	228                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	16                              ; Abbrev [16] 0x853:0x37 DW_TAG_inlined_subroutine
	.long	187                             ; DW_AT_abstract_origin
	.quad	Ltmp291                         ; DW_AT_low_pc
.set Lset655, Ltmp296-Ltmp291           ; DW_AT_high_pc
	.long	Lset655
	.byte	2                               ; DW_AT_call_file
	.byte	127                             ; DW_AT_call_line
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
.set Lset656, Ldebug_loc75-Lsection_debug_loc ; DW_AT_location
	.long	Lset656
	.long	217                             ; DW_AT_abstract_origin
	.byte	19                              ; Abbrev [19] 0x880:0x9 DW_TAG_variable
.set Lset657, Ldebug_loc76-Lsection_debug_loc ; DW_AT_location
	.long	Lset657
	.long	228                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	21                              ; Abbrev [21] 0x88a:0x133 DW_TAG_lexical_block
	.quad	Ltmp296                         ; DW_AT_low_pc
.set Lset658, Ltmp363-Ltmp296           ; DW_AT_high_pc
	.long	Lset658
	.byte	14                              ; Abbrev [14] 0x897:0xd DW_TAG_variable
	.byte	1                               ; DW_AT_location
	.byte	88
	.long	652                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	129                             ; DW_AT_decl_line
	.long	2854                            ; DW_AT_type
	.byte	22                              ; Abbrev [22] 0x8a4:0x4b DW_TAG_lexical_block
.set Lset659, Ldebug_ranges8-Ldebug_range ; DW_AT_ranges
	.long	Lset659
	.byte	8                               ; Abbrev [8] 0x8a9:0xb DW_TAG_variable
	.long	335                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	132                             ; DW_AT_decl_line
	.long	2907                            ; DW_AT_type
	.byte	23                              ; Abbrev [23] 0x8b4:0x3a DW_TAG_inlined_subroutine
	.long	1725                            ; DW_AT_abstract_origin
.set Lset660, Ldebug_ranges9-Ldebug_range ; DW_AT_ranges
	.long	Lset660
	.byte	2                               ; DW_AT_call_file
	.byte	133                             ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	17                              ; Abbrev [17] 0x8c0:0x9 DW_TAG_formal_parameter
.set Lset661, Ldebug_loc78-Lsection_debug_loc ; DW_AT_location
	.long	Lset661
	.long	1737                            ; DW_AT_abstract_origin
	.byte	17                              ; Abbrev [17] 0x8c9:0x9 DW_TAG_formal_parameter
.set Lset662, Ldebug_loc79-Lsection_debug_loc ; DW_AT_location
	.long	Lset662
	.long	1748                            ; DW_AT_abstract_origin
	.byte	17                              ; Abbrev [17] 0x8d2:0x9 DW_TAG_formal_parameter
.set Lset663, Ldebug_loc77-Lsection_debug_loc ; DW_AT_location
	.long	Lset663
	.long	1759                            ; DW_AT_abstract_origin
	.byte	17                              ; Abbrev [17] 0x8db:0x9 DW_TAG_formal_parameter
.set Lset664, Ldebug_loc80-Lsection_debug_loc ; DW_AT_location
	.long	Lset664
	.long	1770                            ; DW_AT_abstract_origin
	.byte	19                              ; Abbrev [19] 0x8e4:0x9 DW_TAG_variable
.set Lset665, Ldebug_loc93-Lsection_debug_loc ; DW_AT_location
	.long	Lset665
	.long	1781                            ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	21                              ; Abbrev [21] 0x8ef:0xcd DW_TAG_lexical_block
	.quad	Ltmp304                         ; DW_AT_low_pc
.set Lset666, Ltmp349-Ltmp304           ; DW_AT_high_pc
	.long	Lset666
	.byte	15                              ; Abbrev [15] 0x8fc:0xf DW_TAG_variable
.set Lset667, Ldebug_loc81-Lsection_debug_loc ; DW_AT_location
	.long	Lset667
	.long	654                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	135                             ; DW_AT_decl_line
	.long	2854                            ; DW_AT_type
	.byte	22                              ; Abbrev [22] 0x90b:0x4b DW_TAG_lexical_block
.set Lset668, Ldebug_ranges10-Ldebug_range ; DW_AT_ranges
	.long	Lset668
	.byte	8                               ; Abbrev [8] 0x910:0xb DW_TAG_variable
	.long	335                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	143                             ; DW_AT_decl_line
	.long	2907                            ; DW_AT_type
	.byte	23                              ; Abbrev [23] 0x91b:0x3a DW_TAG_inlined_subroutine
	.long	1725                            ; DW_AT_abstract_origin
.set Lset669, Ldebug_ranges11-Ldebug_range ; DW_AT_ranges
	.long	Lset669
	.byte	2                               ; DW_AT_call_file
	.byte	144                             ; DW_AT_call_line
	.byte	26                              ; DW_AT_call_column
	.byte	17                              ; Abbrev [17] 0x927:0x9 DW_TAG_formal_parameter
.set Lset670, Ldebug_loc83-Lsection_debug_loc ; DW_AT_location
	.long	Lset670
	.long	1737                            ; DW_AT_abstract_origin
	.byte	17                              ; Abbrev [17] 0x930:0x9 DW_TAG_formal_parameter
.set Lset671, Ldebug_loc84-Lsection_debug_loc ; DW_AT_location
	.long	Lset671
	.long	1748                            ; DW_AT_abstract_origin
	.byte	17                              ; Abbrev [17] 0x939:0x9 DW_TAG_formal_parameter
.set Lset672, Ldebug_loc82-Lsection_debug_loc ; DW_AT_location
	.long	Lset672
	.long	1759                            ; DW_AT_abstract_origin
	.byte	17                              ; Abbrev [17] 0x942:0x9 DW_TAG_formal_parameter
.set Lset673, Ldebug_loc85-Lsection_debug_loc ; DW_AT_location
	.long	Lset673
	.long	1770                            ; DW_AT_abstract_origin
	.byte	19                              ; Abbrev [19] 0x94b:0x9 DW_TAG_variable
.set Lset674, Ldebug_loc92-Lsection_debug_loc ; DW_AT_location
	.long	Lset674
	.long	1781                            ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	22                              ; Abbrev [22] 0x956:0x65 DW_TAG_lexical_block
.set Lset675, Ldebug_ranges12-Ldebug_range ; DW_AT_ranges
	.long	Lset675
	.byte	15                              ; Abbrev [15] 0x95b:0xf DW_TAG_variable
.set Lset676, Ldebug_loc86-Lsection_debug_loc ; DW_AT_location
	.long	Lset676
	.long	661                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	139                             ; DW_AT_decl_line
	.long	983                             ; DW_AT_type
	.byte	15                              ; Abbrev [15] 0x96a:0xf DW_TAG_variable
.set Lset677, Ldebug_loc87-Lsection_debug_loc ; DW_AT_location
	.long	Lset677
	.long	664                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	140                             ; DW_AT_decl_line
	.long	983                             ; DW_AT_type
	.byte	8                               ; Abbrev [8] 0x979:0xb DW_TAG_variable
	.long	335                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	138                             ; DW_AT_decl_line
	.long	2902                            ; DW_AT_type
	.byte	23                              ; Abbrev [23] 0x984:0x36 DW_TAG_inlined_subroutine
	.long	915                             ; DW_AT_abstract_origin
.set Lset678, Ldebug_ranges13-Ldebug_range ; DW_AT_ranges
	.long	Lset678
	.byte	2                               ; DW_AT_call_file
	.byte	141                             ; DW_AT_call_line
	.byte	26                              ; DW_AT_call_column
	.byte	17                              ; Abbrev [17] 0x990:0x9 DW_TAG_formal_parameter
.set Lset679, Ldebug_loc91-Lsection_debug_loc ; DW_AT_location
	.long	Lset679
	.long	927                             ; DW_AT_abstract_origin
	.byte	17                              ; Abbrev [17] 0x999:0x9 DW_TAG_formal_parameter
.set Lset680, Ldebug_loc90-Lsection_debug_loc ; DW_AT_location
	.long	Lset680
	.long	938                             ; DW_AT_abstract_origin
	.byte	17                              ; Abbrev [17] 0x9a2:0x9 DW_TAG_formal_parameter
.set Lset681, Ldebug_loc89-Lsection_debug_loc ; DW_AT_location
	.long	Lset681
	.long	949                             ; DW_AT_abstract_origin
	.byte	17                              ; Abbrev [17] 0x9ab:0x9 DW_TAG_formal_parameter
.set Lset682, Ldebug_loc88-Lsection_debug_loc ; DW_AT_location
	.long	Lset682
	.long	960                             ; DW_AT_abstract_origin
	.byte	27                              ; Abbrev [27] 0x9b4:0x5 DW_TAG_variable
	.long	971                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	28                              ; Abbrev [28] 0x9be:0xc DW_TAG_array_type
	.long	315                             ; DW_AT_type
	.byte	29                              ; Abbrev [29] 0x9c3:0x6 DW_TAG_subrange_type
	.long	2506                            ; DW_AT_type
	.byte	8                               ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	30                              ; Abbrev [30] 0x9ca:0x7 DW_TAG_base_type
	.long	463                             ; DW_AT_name
	.byte	8                               ; DW_AT_byte_size
	.byte	7                               ; DW_AT_encoding
	.byte	2                               ; Abbrev [2] 0x9d1:0x5 DW_TAG_pointer_type
	.long	2518                            ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x9d6:0xb DW_TAG_typedef
	.long	2529                            ; DW_AT_type
	.long	489                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	22                              ; DW_AT_decl_line
	.byte	31                              ; Abbrev [31] 0x9e1:0x30 DW_TAG_structure_type
	.long	489                             ; DW_AT_name
	.short	5120                            ; DW_AT_byte_size
	.byte	3                               ; DW_AT_decl_file
	.byte	18                              ; DW_AT_decl_line
	.byte	32                              ; Abbrev [32] 0x9ea:0xc DW_TAG_member
	.long	331                             ; DW_AT_name
	.long	2577                            ; DW_AT_type
	.byte	3                               ; DW_AT_decl_file
	.byte	19                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	33                              ; Abbrev [33] 0x9f6:0xd DW_TAG_member
	.long	333                             ; DW_AT_name
	.long	2577                            ; DW_AT_type
	.byte	3                               ; DW_AT_decl_file
	.byte	20                              ; DW_AT_decl_line
	.short	512                             ; DW_AT_data_member_location
	.byte	33                              ; Abbrev [33] 0xa03:0xd DW_TAG_member
	.long	335                             ; DW_AT_name
	.long	2885                            ; DW_AT_type
	.byte	3                               ; DW_AT_decl_file
	.byte	21                              ; DW_AT_decl_line
	.short	1024                            ; DW_AT_data_member_location
	.byte	0                               ; End Of Children Mark
	.byte	28                              ; Abbrev [28] 0xa11:0xc DW_TAG_array_type
	.long	2589                            ; DW_AT_type
	.byte	29                              ; Abbrev [29] 0xa16:0x6 DW_TAG_subrange_type
	.long	2506                            ; DW_AT_type
	.byte	8                               ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0xa1d:0xb DW_TAG_typedef
	.long	2600                            ; DW_AT_type
	.long	499                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	16                              ; DW_AT_decl_line
	.byte	34                              ; Abbrev [34] 0xa28:0x75 DW_TAG_union_type
	.long	499                             ; DW_AT_name
	.byte	64                              ; DW_AT_byte_size
	.byte	3                               ; DW_AT_decl_file
	.byte	6                               ; DW_AT_decl_line
	.byte	32                              ; Abbrev [32] 0xa30:0xc DW_TAG_member
	.long	507                             ; DW_AT_name
	.long	2717                            ; DW_AT_type
	.byte	3                               ; DW_AT_decl_file
	.byte	7                               ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	32                              ; Abbrev [32] 0xa3c:0xc DW_TAG_member
	.long	510                             ; DW_AT_name
	.long	2729                            ; DW_AT_type
	.byte	3                               ; DW_AT_decl_file
	.byte	8                               ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	32                              ; Abbrev [32] 0xa48:0xc DW_TAG_member
	.long	538                             ; DW_AT_name
	.long	2759                            ; DW_AT_type
	.byte	3                               ; DW_AT_decl_file
	.byte	9                               ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	32                              ; Abbrev [32] 0xa54:0xc DW_TAG_member
	.long	542                             ; DW_AT_name
	.long	2771                            ; DW_AT_type
	.byte	3                               ; DW_AT_decl_file
	.byte	10                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	32                              ; Abbrev [32] 0xa60:0xc DW_TAG_member
	.long	564                             ; DW_AT_name
	.long	2801                            ; DW_AT_type
	.byte	3                               ; DW_AT_decl_file
	.byte	11                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	32                              ; Abbrev [32] 0xa6c:0xc DW_TAG_member
	.long	582                             ; DW_AT_name
	.long	2831                            ; DW_AT_type
	.byte	3                               ; DW_AT_decl_file
	.byte	12                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	32                              ; Abbrev [32] 0xa78:0xc DW_TAG_member
	.long	598                             ; DW_AT_name
	.long	2861                            ; DW_AT_type
	.byte	3                               ; DW_AT_decl_file
	.byte	13                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	32                              ; Abbrev [32] 0xa84:0xc DW_TAG_member
	.long	602                             ; DW_AT_name
	.long	2873                            ; DW_AT_type
	.byte	3                               ; DW_AT_decl_file
	.byte	14                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	32                              ; Abbrev [32] 0xa90:0xc DW_TAG_member
	.long	606                             ; DW_AT_name
	.long	2494                            ; DW_AT_type
	.byte	3                               ; DW_AT_decl_file
	.byte	15                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	0                               ; End Of Children Mark
	.byte	28                              ; Abbrev [28] 0xa9d:0xc DW_TAG_array_type
	.long	60                              ; DW_AT_type
	.byte	29                              ; Abbrev [29] 0xaa2:0x6 DW_TAG_subrange_type
	.long	2506                            ; DW_AT_type
	.byte	64                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	28                              ; Abbrev [28] 0xaa9:0xc DW_TAG_array_type
	.long	2741                            ; DW_AT_type
	.byte	29                              ; Abbrev [29] 0xaae:0x6 DW_TAG_subrange_type
	.long	2506                            ; DW_AT_type
	.byte	32                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0xab5:0xb DW_TAG_typedef
	.long	2752                            ; DW_AT_type
	.long	514                             ; DW_AT_name
	.byte	6                               ; DW_AT_decl_file
	.byte	31                              ; DW_AT_decl_line
	.byte	5                               ; Abbrev [5] 0xac0:0x7 DW_TAG_base_type
	.long	523                             ; DW_AT_name
	.byte	7                               ; DW_AT_encoding
	.byte	2                               ; DW_AT_byte_size
	.byte	28                              ; Abbrev [28] 0xac7:0xc DW_TAG_array_type
	.long	169                             ; DW_AT_type
	.byte	29                              ; Abbrev [29] 0xacc:0x6 DW_TAG_subrange_type
	.long	2506                            ; DW_AT_type
	.byte	16                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	28                              ; Abbrev [28] 0xad3:0xc DW_TAG_array_type
	.long	2783                            ; DW_AT_type
	.byte	29                              ; Abbrev [29] 0xad8:0x6 DW_TAG_subrange_type
	.long	2506                            ; DW_AT_type
	.byte	64                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0xadf:0xb DW_TAG_typedef
	.long	2794                            ; DW_AT_type
	.long	545                             ; DW_AT_name
	.byte	7                               ; DW_AT_decl_file
	.byte	30                              ; DW_AT_decl_line
	.byte	5                               ; Abbrev [5] 0xaea:0x7 DW_TAG_base_type
	.long	552                             ; DW_AT_name
	.byte	6                               ; DW_AT_encoding
	.byte	1                               ; DW_AT_byte_size
	.byte	28                              ; Abbrev [28] 0xaf1:0xc DW_TAG_array_type
	.long	2813                            ; DW_AT_type
	.byte	29                              ; Abbrev [29] 0xaf6:0x6 DW_TAG_subrange_type
	.long	2506                            ; DW_AT_type
	.byte	32                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0xafd:0xb DW_TAG_typedef
	.long	2824                            ; DW_AT_type
	.long	568                             ; DW_AT_name
	.byte	8                               ; DW_AT_decl_file
	.byte	30                              ; DW_AT_decl_line
	.byte	5                               ; Abbrev [5] 0xb08:0x7 DW_TAG_base_type
	.long	576                             ; DW_AT_name
	.byte	5                               ; DW_AT_encoding
	.byte	2                               ; DW_AT_byte_size
	.byte	28                              ; Abbrev [28] 0xb0f:0xc DW_TAG_array_type
	.long	2843                            ; DW_AT_type
	.byte	29                              ; Abbrev [29] 0xb14:0x6 DW_TAG_subrange_type
	.long	2506                            ; DW_AT_type
	.byte	16                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0xb1b:0xb DW_TAG_typedef
	.long	2854                            ; DW_AT_type
	.long	586                             ; DW_AT_name
	.byte	9                               ; DW_AT_decl_file
	.byte	30                              ; DW_AT_decl_line
	.byte	5                               ; Abbrev [5] 0xb26:0x7 DW_TAG_base_type
	.long	594                             ; DW_AT_name
	.byte	5                               ; DW_AT_encoding
	.byte	4                               ; DW_AT_byte_size
	.byte	28                              ; Abbrev [28] 0xb2d:0xc DW_TAG_array_type
	.long	1793                            ; DW_AT_type
	.byte	29                              ; Abbrev [29] 0xb32:0x6 DW_TAG_subrange_type
	.long	2506                            ; DW_AT_type
	.byte	32                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	28                              ; Abbrev [28] 0xb39:0xc DW_TAG_array_type
	.long	983                             ; DW_AT_type
	.byte	29                              ; Abbrev [29] 0xb3e:0x6 DW_TAG_subrange_type
	.long	2506                            ; DW_AT_type
	.byte	16                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	28                              ; Abbrev [28] 0xb45:0xc DW_TAG_array_type
	.long	2589                            ; DW_AT_type
	.byte	29                              ; Abbrev [29] 0xb4a:0x6 DW_TAG_subrange_type
	.long	2506                            ; DW_AT_type
	.byte	64                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0xb51:0x5 DW_TAG_pointer_type
	.long	315                             ; DW_AT_type
	.byte	2                               ; Abbrev [2] 0xb56:0x5 DW_TAG_pointer_type
	.long	983                             ; DW_AT_type
	.byte	2                               ; Abbrev [2] 0xb5b:0x5 DW_TAG_pointer_type
	.long	1793                            ; DW_AT_type
	.byte	0                               ; End Of Children Mark
Ldebug_info_end0:
	.section	__DWARF,__debug_ranges,regular,debug
Ldebug_range:
Ldebug_ranges0:
.set Lset683, Ltmp48-Lfunc_begin0
	.quad	Lset683
.set Lset684, Ltmp50-Lfunc_begin0
	.quad	Lset684
.set Lset685, Ltmp77-Lfunc_begin0
	.quad	Lset685
.set Lset686, Ltmp91-Lfunc_begin0
	.quad	Lset686
	.quad	0
	.quad	0
Ldebug_ranges1:
.set Lset687, Ltmp48-Lfunc_begin0
	.quad	Lset687
.set Lset688, Ltmp49-Lfunc_begin0
	.quad	Lset688
.set Lset689, Ltmp78-Lfunc_begin0
	.quad	Lset689
.set Lset690, Ltmp91-Lfunc_begin0
	.quad	Lset690
	.quad	0
	.quad	0
Ldebug_ranges2:
.set Lset691, Ltmp56-Lfunc_begin0
	.quad	Lset691
.set Lset692, Ltmp58-Lfunc_begin0
	.quad	Lset692
.set Lset693, Ltmp60-Lfunc_begin0
	.quad	Lset693
.set Lset694, Ltmp76-Lfunc_begin0
	.quad	Lset694
	.quad	0
	.quad	0
Ldebug_ranges3:
.set Lset695, Ltmp56-Lfunc_begin0
	.quad	Lset695
.set Lset696, Ltmp57-Lfunc_begin0
	.quad	Lset696
.set Lset697, Ltmp63-Lfunc_begin0
	.quad	Lset697
.set Lset698, Ltmp76-Lfunc_begin0
	.quad	Lset698
	.quad	0
	.quad	0
Ldebug_ranges4:
.set Lset699, Ltmp136-Lfunc_begin0
	.quad	Lset699
.set Lset700, Ltmp138-Lfunc_begin0
	.quad	Lset700
.set Lset701, Ltmp165-Lfunc_begin0
	.quad	Lset701
.set Lset702, Ltmp179-Lfunc_begin0
	.quad	Lset702
	.quad	0
	.quad	0
Ldebug_ranges5:
.set Lset703, Ltmp136-Lfunc_begin0
	.quad	Lset703
.set Lset704, Ltmp137-Lfunc_begin0
	.quad	Lset704
.set Lset705, Ltmp166-Lfunc_begin0
	.quad	Lset705
.set Lset706, Ltmp179-Lfunc_begin0
	.quad	Lset706
	.quad	0
	.quad	0
Ldebug_ranges6:
.set Lset707, Ltmp144-Lfunc_begin0
	.quad	Lset707
.set Lset708, Ltmp146-Lfunc_begin0
	.quad	Lset708
.set Lset709, Ltmp148-Lfunc_begin0
	.quad	Lset709
.set Lset710, Ltmp164-Lfunc_begin0
	.quad	Lset710
	.quad	0
	.quad	0
Ldebug_ranges7:
.set Lset711, Ltmp144-Lfunc_begin0
	.quad	Lset711
.set Lset712, Ltmp145-Lfunc_begin0
	.quad	Lset712
.set Lset713, Ltmp151-Lfunc_begin0
	.quad	Lset713
.set Lset714, Ltmp164-Lfunc_begin0
	.quad	Lset714
	.quad	0
	.quad	0
Ldebug_ranges8:
.set Lset715, Ltmp296-Lfunc_begin0
	.quad	Lset715
.set Lset716, Ltmp298-Lfunc_begin0
	.quad	Lset716
.set Lset717, Ltmp349-Lfunc_begin0
	.quad	Lset717
.set Lset718, Ltmp363-Lfunc_begin0
	.quad	Lset718
	.quad	0
	.quad	0
Ldebug_ranges9:
.set Lset719, Ltmp296-Lfunc_begin0
	.quad	Lset719
.set Lset720, Ltmp297-Lfunc_begin0
	.quad	Lset720
.set Lset721, Ltmp350-Lfunc_begin0
	.quad	Lset721
.set Lset722, Ltmp363-Lfunc_begin0
	.quad	Lset722
	.quad	0
	.quad	0
Ldebug_ranges10:
.set Lset723, Ltmp304-Lfunc_begin0
	.quad	Lset723
.set Lset724, Ltmp306-Lfunc_begin0
	.quad	Lset724
.set Lset725, Ltmp310-Lfunc_begin0
	.quad	Lset725
.set Lset726, Ltmp317-Lfunc_begin0
	.quad	Lset726
.set Lset727, Ltmp329-Lfunc_begin0
	.quad	Lset727
.set Lset728, Ltmp333-Lfunc_begin0
	.quad	Lset728
.set Lset729, Ltmp339-Lfunc_begin0
	.quad	Lset729
.set Lset730, Ltmp343-Lfunc_begin0
	.quad	Lset730
	.quad	0
	.quad	0
Ldebug_ranges11:
.set Lset731, Ltmp304-Lfunc_begin0
	.quad	Lset731
.set Lset732, Ltmp305-Lfunc_begin0
	.quad	Lset732
.set Lset733, Ltmp312-Lfunc_begin0
	.quad	Lset733
.set Lset734, Ltmp317-Lfunc_begin0
	.quad	Lset734
.set Lset735, Ltmp329-Lfunc_begin0
	.quad	Lset735
.set Lset736, Ltmp333-Lfunc_begin0
	.quad	Lset736
.set Lset737, Ltmp339-Lfunc_begin0
	.quad	Lset737
.set Lset738, Ltmp343-Lfunc_begin0
	.quad	Lset738
	.quad	0
	.quad	0
Ldebug_ranges12:
.set Lset739, Ltmp317-Lfunc_begin0
	.quad	Lset739
.set Lset740, Ltmp329-Lfunc_begin0
	.quad	Lset740
.set Lset741, Ltmp333-Lfunc_begin0
	.quad	Lset741
.set Lset742, Ltmp339-Lfunc_begin0
	.quad	Lset742
.set Lset743, Ltmp344-Lfunc_begin0
	.quad	Lset743
.set Lset744, Ltmp349-Lfunc_begin0
	.quad	Lset744
	.quad	0
	.quad	0
Ldebug_ranges13:
.set Lset745, Ltmp323-Lfunc_begin0
	.quad	Lset745
.set Lset746, Ltmp328-Lfunc_begin0
	.quad	Lset746
.set Lset747, Ltmp333-Lfunc_begin0
	.quad	Lset747
.set Lset748, Ltmp334-Lfunc_begin0
	.quad	Lset748
.set Lset749, Ltmp335-Lfunc_begin0
	.quad	Lset749
.set Lset750, Ltmp336-Lfunc_begin0
	.quad	Lset750
.set Lset751, Ltmp337-Lfunc_begin0
	.quad	Lset751
.set Lset752, Ltmp338-Lfunc_begin0
	.quad	Lset752
.set Lset753, Ltmp344-Lfunc_begin0
	.quad	Lset753
.set Lset754, Ltmp345-Lfunc_begin0
	.quad	Lset754
.set Lset755, Ltmp346-Lfunc_begin0
	.quad	Lset755
.set Lset756, Ltmp347-Lfunc_begin0
	.quad	Lset756
	.quad	0
	.quad	0
	.section	__DWARF,__debug_str,regular,debug
Linfo_string:
	.asciz	"Apple clang version 15.0.0 (clang-1500.3.9.4)" ; string offset=0
	.asciz	"fms.c"                         ; string offset=46
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
	.asciz	"fms64_alu"                     ; string offset=314
	.asciz	"double"                        ; string offset=324
	.asciz	"x"                             ; string offset=331
	.asciz	"y"                             ; string offset=333
	.asciz	"z"                             ; string offset=335
	.asciz	"operand"                       ; string offset=337
	.asciz	"out"                           ; string offset=345
	.asciz	"emulate_AMX_FMS64"             ; string offset=349
	.asciz	"fms32_alu"                     ; string offset=367
	.asciz	"float"                         ; string offset=377
	.asciz	"result"                        ; string offset=383
	.asciz	"emulate_AMX_FMS32"             ; string offset=390
	.asciz	"load_xy_reg_fms32"             ; string offset=408
	.asciz	"fms16_alu"                     ; string offset=426
	.asciz	"_Float16"                      ; string offset=436
	.asciz	"emulate_AMX_FMS16"             ; string offset=445
	.asciz	"__ARRAY_SIZE_TYPE__"           ; string offset=463
	.asciz	"state"                         ; string offset=483
	.asciz	"amx_state"                     ; string offset=489
	.asciz	"amx_reg"                       ; string offset=499
	.asciz	"u8"                            ; string offset=507
	.asciz	"u16"                           ; string offset=510
	.asciz	"uint16_t"                      ; string offset=514
	.asciz	"unsigned short"                ; string offset=523
	.asciz	"u32"                           ; string offset=538
	.asciz	"i8"                            ; string offset=542
	.asciz	"int8_t"                        ; string offset=545
	.asciz	"signed char"                   ; string offset=552
	.asciz	"i16"                           ; string offset=564
	.asciz	"int16_t"                       ; string offset=568
	.asciz	"short"                         ; string offset=576
	.asciz	"i32"                           ; string offset=582
	.asciz	"int32_t"                       ; string offset=586
	.asciz	"int"                           ; string offset=594
	.asciz	"f16"                           ; string offset=598
	.asciz	"f32"                           ; string offset=602
	.asciz	"f64"                           ; string offset=606
	.asciz	"y_offset"                      ; string offset=610
	.asciz	"x_offset"                      ; string offset=619
	.asciz	"z_row"                         ; string offset=628
	.asciz	"x_enable"                      ; string offset=634
	.asciz	"y_enable"                      ; string offset=643
	.asciz	"i"                             ; string offset=652
	.asciz	"j"                             ; string offset=654
	.asciz	"fp16"                          ; string offset=656
	.asciz	"xv"                            ; string offset=661
	.asciz	"yv"                            ; string offset=664
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
	.long	0                               ; Bucket 0
	.long	2                               ; Bucket 1
	.long	4                               ; Bucket 2
	.long	-1                              ; Bucket 3
	.long	5                               ; Bucket 4
	.long	7                               ; Bucket 5
	.long	8                               ; Bucket 6
	.long	-1                              ; Bucket 7
	.long	-1                              ; Bucket 8
	.long	47719377                        ; Hash in Bucket 0
	.long	167497398                       ; Hash in Bucket 0
	.long	226778194                       ; Hash in Bucket 1
	.long	-1685168580                     ; Hash in Bucket 1
	.long	-224174954                      ; Hash in Bucket 2
	.long	-1820627199                     ; Hash in Bucket 4
	.long	-25807725                       ; Hash in Bucket 4
	.long	-1820627261                     ; Hash in Bucket 5
	.long	-1820627098                     ; Hash in Bucket 6
.set Lset757, LNames6-Lnames_begin      ; Offset in Bucket 0
	.long	Lset757
.set Lset758, LNames2-Lnames_begin      ; Offset in Bucket 0
	.long	Lset758
.set Lset759, LNames3-Lnames_begin      ; Offset in Bucket 1
	.long	Lset759
.set Lset760, LNames7-Lnames_begin      ; Offset in Bucket 1
	.long	Lset760
.set Lset761, LNames0-Lnames_begin      ; Offset in Bucket 2
	.long	Lset761
.set Lset762, LNames1-Lnames_begin      ; Offset in Bucket 4
	.long	Lset762
.set Lset763, LNames5-Lnames_begin      ; Offset in Bucket 4
	.long	Lset763
.set Lset764, LNames4-Lnames_begin      ; Offset in Bucket 5
	.long	Lset764
.set Lset765, LNames8-Lnames_begin      ; Offset in Bucket 6
	.long	Lset765
LNames6:
	.long	367                             ; fms32_alu
	.long	3                               ; Num DIEs
	.long	1307
	.long	1410
	.long	2436
	.long	0
LNames2:
	.long	314                             ; fms64_alu
	.long	2                               ; Num DIEs
	.long	750
	.long	853
	.long	0
LNames3:
	.long	281                             ; load_xy_reg
	.long	5                               ; Num DIEs
	.long	597
	.long	653
	.long	1613
	.long	2075
	.long	2131
	.long	0
LNames7:
	.long	408                             ; load_xy_reg_fms32
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
LNames1:
	.long	390                             ; emulate_AMX_FMS32
	.long	1                               ; Num DIEs
	.long	990
	.long	0
LNames5:
	.long	426                             ; fms16_alu
	.long	2                               ; Num DIEs
	.long	2228
	.long	2331
	.long	0
LNames4:
	.long	445                             ; emulate_AMX_FMS16
	.long	1                               ; Num DIEs
	.long	1800
	.long	0
LNames8:
	.long	349                             ; emulate_AMX_FMS64
	.long	1                               ; Num DIEs
	.long	322
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
.set Lset766, Ltypes0-Ltypes_begin      ; Offset in Bucket 0
	.long	Lset766
.set Lset767, Ltypes17-Ltypes_begin     ; Offset in Bucket 1
	.long	Lset767
.set Lset768, Ltypes11-Ltypes_begin     ; Offset in Bucket 3
	.long	Lset768
.set Lset769, Ltypes4-Ltypes_begin      ; Offset in Bucket 3
	.long	Lset769
.set Lset770, Ltypes8-Ltypes_begin      ; Offset in Bucket 4
	.long	Lset770
.set Lset771, Ltypes12-Ltypes_begin     ; Offset in Bucket 4
	.long	Lset771
.set Lset772, Ltypes9-Ltypes_begin      ; Offset in Bucket 4
	.long	Lset772
.set Lset773, Ltypes7-Ltypes_begin      ; Offset in Bucket 4
	.long	Lset773
.set Lset774, Ltypes1-Ltypes_begin      ; Offset in Bucket 5
	.long	Lset774
.set Lset775, Ltypes16-Ltypes_begin     ; Offset in Bucket 5
	.long	Lset775
.set Lset776, Ltypes15-Ltypes_begin     ; Offset in Bucket 5
	.long	Lset776
.set Lset777, Ltypes10-Ltypes_begin     ; Offset in Bucket 5
	.long	Lset777
.set Lset778, Ltypes13-Ltypes_begin     ; Offset in Bucket 6
	.long	Lset778
.set Lset779, Ltypes3-Ltypes_begin      ; Offset in Bucket 6
	.long	Lset779
.set Lset780, Ltypes18-Ltypes_begin     ; Offset in Bucket 7
	.long	Lset780
.set Lset781, Ltypes14-Ltypes_begin     ; Offset in Bucket 7
	.long	Lset781
.set Lset782, Ltypes2-Ltypes_begin      ; Offset in Bucket 8
	.long	Lset782
.set Lset783, Ltypes19-Ltypes_begin     ; Offset in Bucket 8
	.long	Lset783
.set Lset784, Ltypes5-Ltypes_begin      ; Offset in Bucket 8
	.long	Lset784
.set Lset785, Ltypes6-Ltypes_begin      ; Offset in Bucket 9
	.long	Lset785
Ltypes0:
	.long	216                             ; unsigned long long
	.long	1                               ; Num DIEs
	.long	162
	.short	36
	.byte	0
	.long	0
Ltypes17:
	.long	463                             ; __ARRAY_SIZE_TYPE__
	.long	1                               ; Num DIEs
	.long	2506
	.short	36
	.byte	0
	.long	0
Ltypes11:
	.long	377                             ; float
	.long	1                               ; Num DIEs
	.long	983
	.short	36
	.byte	0
	.long	0
Ltypes4:
	.long	552                             ; signed char
	.long	1                               ; Num DIEs
	.long	2794
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
	.long	499                             ; amx_reg
	.long	2                               ; Num DIEs
	.long	2589
	.short	22
	.byte	0
	.long	2600
	.short	23
	.byte	0
	.long	0
Ltypes9:
	.long	586                             ; int32_t
	.long	1                               ; Num DIEs
	.long	2843
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
	.long	436                             ; _Float16
	.long	1                               ; Num DIEs
	.long	1793
	.short	36
	.byte	0
	.long	0
Ltypes15:
	.long	489                             ; amx_state
	.long	2                               ; Num DIEs
	.long	2518
	.short	22
	.byte	0
	.long	2529
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
	.long	568                             ; int16_t
	.long	1                               ; Num DIEs
	.long	2813
	.short	22
	.byte	0
	.long	0
Ltypes18:
	.long	545                             ; int8_t
	.long	1                               ; Num DIEs
	.long	2783
	.short	22
	.byte	0
	.long	0
Ltypes14:
	.long	514                             ; uint16_t
	.long	1                               ; Num DIEs
	.long	2741
	.short	22
	.byte	0
	.long	0
Ltypes2:
	.long	594                             ; int
	.long	1                               ; Num DIEs
	.long	2854
	.short	36
	.byte	0
	.long	0
Ltypes19:
	.long	523                             ; unsigned short
	.long	1                               ; Num DIEs
	.long	2752
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
	.long	576                             ; short
	.long	1                               ; Num DIEs
	.long	2824
	.short	36
	.byte	0
	.long	0
.subsections_via_symbols
	.section	__DWARF,__debug_line,regular,debug
Lsection_line:
Lline_table_start0:
