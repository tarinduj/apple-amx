	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 14, 4
	.file	1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types" "_uint8_t.h"
	.file	2 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types" "_int8_t.h"
	.globl	_emulate_AMX_MAC16              ; -- Begin function emulate_AMX_MAC16
	.p2align	2
_emulate_AMX_MAC16:                     ; @emulate_AMX_MAC16
Lfunc_begin0:
	.file	3 "/Users/tarindujayatilaka/Documents/superopt/apple-amx" "mac16.c"
	.loc	3 28 0                          ; mac16.c:28:0
	.cfi_startproc
; %bb.0:
	;DEBUG_VALUE: emulate_AMX_MAC16:state <- $x0
	;DEBUG_VALUE: emulate_AMX_MAC16:operand <- $x1
	;DEBUG_VALUE: emulate_AMX_MAC16:operand <- $x1
	;DEBUG_VALUE: emulate_AMX_MAC16:state <- $x0
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
	.loc	3 29 33 prologue_end            ; mac16.c:29:33
	and	x23, x1, #0x1ff
Ltmp1:
	;DEBUG_VALUE: emulate_AMX_MAC16:y_offset <- $x23
	.loc	3 30 41                         ; mac16.c:30:41
	ubfx	x8, x1, #10, #9
Ltmp2:
	;DEBUG_VALUE: emulate_AMX_MAC16:x_offset <- $x8
	.loc	3 31 38                         ; mac16.c:31:38
	ubfx	x15, x1, #20, #6
Ltmp3:
	;DEBUG_VALUE: emulate_AMX_MAC16:z_row <- $x15
	.loc	3 32 49                         ; mac16.c:32:49
	lsr	x9, x1, #41
	mov	w10, #3
Ltmp4:
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: parse_writemask:g <- 2
	;DEBUG_VALUE: parse_writemask:val <- $w9
	.file	4 "/Users/tarindujayatilaka/Documents/superopt/apple-amx" "./emulate.h"
	.loc	4 67 14                         ; ./emulate.h:67:14
	ands	w11, w10, w9, lsr #5
Ltmp5:
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	cset	w10, ne
Ltmp6:
	.loc	4 67 9 is_stmt 0                ; ./emulate.h:67:9
	lsl	w10, w9, w10
Ltmp7:
	;DEBUG_VALUE: parse_writemask:val <- $w10
	.loc	4 68 9 is_stmt 1                ; ./emulate.h:68:9
	and	w9, w10, #0x3f
Ltmp8:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:val <- $w9
	.loc	4 0 9 is_stmt 0                 ; ./emulate.h:0:9
	mov	x19, x1
Ltmp9:
	;DEBUG_VALUE: emulate_AMX_MAC16:operand <- $x19
	mov	x20, x0
Ltmp10:
	;DEBUG_VALUE: emulate_AMX_MAC16:state <- $x20
Lloh3:
	adrp	x12, lJTI0_0@PAGE
Lloh4:
	add	x12, x12, lJTI0_0@PAGEOFF
	adr	x13, LBB0_1
	ldrb	w14, [x12, x11]
	add	x13, x13, x14, lsl #2
	br	x13
Ltmp11:
LBB0_1:
	;DEBUG_VALUE: emulate_AMX_MAC16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_MAC16:operand <- $x19
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:val <- $w9
	;DEBUG_VALUE: parse_writemask:g <- 2
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_MAC16:z_row <- $x15
	;DEBUG_VALUE: emulate_AMX_MAC16:x_offset <- $x8
	;DEBUG_VALUE: emulate_AMX_MAC16:y_offset <- $x23
	.loc	4 72 22 is_stmt 1               ; ./emulate.h:72:22
	sub	w11, w9, #1
Ltmp12:
	ubfiz	w10, w10, #1, #1
	mov	x12, #3689348814741910323
	lsl	x10, x12, x10
	cmp	w11, #2
	csinv	x10, x10, xzr, lo
Ltmp13:
	;DEBUG_VALUE: parse_writemask:all <- $x10
	.loc	4 83 16                         ; ./emulate.h:83:16
	cmp	w9, #3
	csel	x24, x10, xzr, lo
	b	LBB0_8
Ltmp14:
LBB0_2:
	;DEBUG_VALUE: emulate_AMX_MAC16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_MAC16:operand <- $x19
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:val <- $w9
	;DEBUG_VALUE: parse_writemask:g <- 2
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_MAC16:z_row <- $x15
	;DEBUG_VALUE: emulate_AMX_MAC16:x_offset <- $x8
	;DEBUG_VALUE: emulate_AMX_MAC16:y_offset <- $x23
	.loc	4 0 16 is_stmt 0                ; ./emulate.h:0:16
	mov	x24, #-1
	.loc	4 88 13 is_stmt 1               ; ./emulate.h:88:13
	cbz	w9, LBB0_8
Ltmp15:
; %bb.3:
	;DEBUG_VALUE: emulate_AMX_MAC16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_MAC16:operand <- $x19
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:val <- $w9
	;DEBUG_VALUE: parse_writemask:g <- 2
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_MAC16:z_row <- $x15
	;DEBUG_VALUE: emulate_AMX_MAC16:x_offset <- $x8
	;DEBUG_VALUE: emulate_AMX_MAC16:y_offset <- $x23
	.loc	4 91 22                         ; ./emulate.h:91:22
	lsl	x9, x24, x9
Ltmp16:
	.loc	4 0 22 is_stmt 0                ; ./emulate.h:0:22
	b	LBB0_6
Ltmp17:
LBB0_4:
	;DEBUG_VALUE: emulate_AMX_MAC16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_MAC16:operand <- $x19
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:val <- $w9
	;DEBUG_VALUE: parse_writemask:g <- 2
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_MAC16:z_row <- $x15
	;DEBUG_VALUE: emulate_AMX_MAC16:x_offset <- $x8
	;DEBUG_VALUE: emulate_AMX_MAC16:y_offset <- $x23
	mov	x24, #-1
	.loc	4 93 13 is_stmt 1               ; ./emulate.h:93:13
	cbz	w9, LBB0_8
Ltmp18:
; %bb.5:
	;DEBUG_VALUE: emulate_AMX_MAC16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_MAC16:operand <- $x19
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:val <- $w9
	;DEBUG_VALUE: parse_writemask:g <- 2
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_MAC16:z_row <- $x15
	;DEBUG_VALUE: emulate_AMX_MAC16:x_offset <- $x8
	;DEBUG_VALUE: emulate_AMX_MAC16:y_offset <- $x23
	.loc	4 96 22                         ; ./emulate.h:96:22
	lsr	x9, x24, x9
Ltmp19:
LBB0_6:
	;DEBUG_VALUE: emulate_AMX_MAC16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_MAC16:operand <- $x19
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:g <- 2
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_MAC16:z_row <- $x15
	;DEBUG_VALUE: emulate_AMX_MAC16:x_offset <- $x8
	;DEBUG_VALUE: emulate_AMX_MAC16:y_offset <- $x23
	.loc	4 0 0 is_stmt 0                 ; ./emulate.h:0:0
	mvn	x24, x9
	b	LBB0_8
Ltmp20:
LBB0_7:
	;DEBUG_VALUE: emulate_AMX_MAC16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_MAC16:operand <- $x19
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:val <- $w9
	;DEBUG_VALUE: parse_writemask:g <- 2
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_MAC16:z_row <- $x15
	;DEBUG_VALUE: emulate_AMX_MAC16:x_offset <- $x8
	;DEBUG_VALUE: emulate_AMX_MAC16:y_offset <- $x23
	mov	w10, #3
	.loc	4 86 30 is_stmt 1               ; ./emulate.h:86:30
	lsl	x24, x10, x9
Ltmp21:
LBB0_8:
	;DEBUG_VALUE: emulate_AMX_MAC16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_MAC16:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_MAC16:z_row <- $x15
	;DEBUG_VALUE: emulate_AMX_MAC16:x_offset <- $x8
	;DEBUG_VALUE: emulate_AMX_MAC16:y_offset <- $x23
	;DEBUG_VALUE: emulate_AMX_MAC16:x_enable <- $x24
	.loc	3 33 49                         ; mac16.c:33:49
	lsr	x9, x19, #32
Ltmp22:
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: parse_writemask:g <- 2
	;DEBUG_VALUE: parse_writemask:val <- $w9
	.loc	4 66 61                         ; ./emulate.h:66:61
	lsr	x10, x19, #37
Ltmp23:
	.loc	4 67 14                         ; ./emulate.h:67:14
	ands	w11, w10, #0x3
Ltmp24:
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	cset	w10, ne
Ltmp25:
	.loc	4 67 9 is_stmt 0                ; ./emulate.h:67:9
	lsl	w10, w9, w10
Ltmp26:
	;DEBUG_VALUE: parse_writemask:val <- $w10
	.loc	4 68 9 is_stmt 1                ; ./emulate.h:68:9
	and	w9, w10, #0x3f
Ltmp27:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:val <- $w9
	.loc	4 0 9 is_stmt 0                 ; ./emulate.h:0:9
Lloh5:
	adrp	x12, lJTI0_1@PAGE
Lloh6:
	add	x12, x12, lJTI0_1@PAGEOFF
	adr	x13, LBB0_9
	ldrb	w14, [x12, x11]
	add	x13, x13, x14, lsl #2
	str	x15, [sp]                       ; 8-byte Folded Spill
Ltmp28:
	;DEBUG_VALUE: emulate_AMX_MAC16:z_row <- [$sp+0]
	br	x13
Ltmp29:
LBB0_9:
	;DEBUG_VALUE: emulate_AMX_MAC16:z_row <- [$sp+0]
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:val <- $w9
	;DEBUG_VALUE: parse_writemask:g <- 2
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_MAC16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MAC16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_MAC16:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_MAC16:x_offset <- $x8
	;DEBUG_VALUE: emulate_AMX_MAC16:y_offset <- $x23
	.loc	4 72 22 is_stmt 1               ; ./emulate.h:72:22
	sub	w11, w9, #1
Ltmp30:
	ubfiz	w10, w10, #1, #1
	mov	x12, #3689348814741910323
	lsl	x10, x12, x10
	cmp	w11, #2
	csinv	x10, x10, xzr, lo
Ltmp31:
	;DEBUG_VALUE: parse_writemask:all <- $x10
	.loc	4 83 16                         ; ./emulate.h:83:16
	cmp	w9, #3
	csel	x25, x10, xzr, lo
	b	LBB0_16
Ltmp32:
LBB0_10:
	;DEBUG_VALUE: emulate_AMX_MAC16:z_row <- [$sp+0]
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:val <- $w9
	;DEBUG_VALUE: parse_writemask:g <- 2
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_MAC16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MAC16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_MAC16:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_MAC16:x_offset <- $x8
	;DEBUG_VALUE: emulate_AMX_MAC16:y_offset <- $x23
	.loc	4 0 16 is_stmt 0                ; ./emulate.h:0:16
	mov	x25, #-1
	.loc	4 88 13 is_stmt 1               ; ./emulate.h:88:13
	cbz	w9, LBB0_16
Ltmp33:
; %bb.11:
	;DEBUG_VALUE: emulate_AMX_MAC16:z_row <- [$sp+0]
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:val <- $w9
	;DEBUG_VALUE: parse_writemask:g <- 2
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_MAC16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MAC16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_MAC16:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_MAC16:x_offset <- $x8
	;DEBUG_VALUE: emulate_AMX_MAC16:y_offset <- $x23
	.loc	4 91 22                         ; ./emulate.h:91:22
	lsl	x9, x25, x9
Ltmp34:
	.loc	4 0 22 is_stmt 0                ; ./emulate.h:0:22
	b	LBB0_14
Ltmp35:
LBB0_12:
	;DEBUG_VALUE: emulate_AMX_MAC16:z_row <- [$sp+0]
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:val <- $w9
	;DEBUG_VALUE: parse_writemask:g <- 2
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_MAC16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MAC16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_MAC16:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_MAC16:x_offset <- $x8
	;DEBUG_VALUE: emulate_AMX_MAC16:y_offset <- $x23
	mov	x25, #-1
	.loc	4 93 13 is_stmt 1               ; ./emulate.h:93:13
	cbz	w9, LBB0_16
Ltmp36:
; %bb.13:
	;DEBUG_VALUE: emulate_AMX_MAC16:z_row <- [$sp+0]
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:val <- $w9
	;DEBUG_VALUE: parse_writemask:g <- 2
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_MAC16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MAC16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_MAC16:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_MAC16:x_offset <- $x8
	;DEBUG_VALUE: emulate_AMX_MAC16:y_offset <- $x23
	.loc	4 96 22                         ; ./emulate.h:96:22
	lsr	x9, x25, x9
Ltmp37:
LBB0_14:
	;DEBUG_VALUE: emulate_AMX_MAC16:z_row <- [$sp+0]
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:g <- 2
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_MAC16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MAC16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_MAC16:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_MAC16:x_offset <- $x8
	;DEBUG_VALUE: emulate_AMX_MAC16:y_offset <- $x23
	.loc	4 0 0 is_stmt 0                 ; ./emulate.h:0:0
	mvn	x25, x9
	b	LBB0_16
Ltmp38:
LBB0_15:
	;DEBUG_VALUE: emulate_AMX_MAC16:z_row <- [$sp+0]
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:val <- $w9
	;DEBUG_VALUE: parse_writemask:g <- 2
	;DEBUG_VALUE: parse_writemask:maskbits <- 7
	;DEBUG_VALUE: emulate_AMX_MAC16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MAC16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_MAC16:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_MAC16:x_offset <- $x8
	;DEBUG_VALUE: emulate_AMX_MAC16:y_offset <- $x23
	mov	w10, #3
	.loc	4 86 30 is_stmt 1               ; ./emulate.h:86:30
	lsl	x25, x10, x9
Ltmp39:
LBB0_16:
	;DEBUG_VALUE: emulate_AMX_MAC16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MAC16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MAC16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_MAC16:operand <- $x19
	;DEBUG_VALUE: emulate_AMX_MAC16:x_offset <- $x8
	;DEBUG_VALUE: emulate_AMX_MAC16:y_offset <- $x23
	;DEBUG_VALUE: emulate_AMX_MAC16:y_enable <- $x25
	.loc	4 0 30 is_stmt 0                ; ./emulate.h:0:30
	mov	w28, #512
Ltmp40:
	;DEBUG_VALUE: load_xy_reg:offset <- $x8
	;DEBUG_VALUE: load_xy_reg:src <- $x20
	;DEBUG_VALUE: load_xy_reg:dst <- [DW_OP_plus_uconst 72, DW_OP_stack_value] $sp
	.loc	4 42 26 is_stmt 1               ; ./emulate.h:42:26
	sub	x9, x28, x8
Ltmp41:
	;DEBUG_VALUE: load_xy_reg:avail <- $x9
	.loc	4 43 5                          ; ./emulate.h:43:5
	add	x1, x20, x8
	.loc	4 44 5                          ; ./emulate.h:44:5
	sub	x10, x8, #448
	mov	w27, #64
	.loc	4 43 5                          ; ./emulate.h:43:5
	cmp	x8, #449
	csel	x2, x27, x9, lo
	add	x26, sp, #72
	.loc	4 44 5                          ; ./emulate.h:44:5
	add	x21, x26, x9
	csel	x22, xzr, x10, lo
	.loc	4 43 5                          ; ./emulate.h:43:5
	add	x0, sp, #72
	mov	w3, #64
	bl	___memcpy_chk
Ltmp42:
	.loc	4 44 5                          ; ./emulate.h:44:5
	mov	x0, x21
	mov	x1, x20
	mov	x2, x22
	bl	_memcpy
Ltmp43:
	.loc	3 38 27                         ; mac16.c:38:27
	add	x21, x20, #512
Ltmp44:
	;DEBUG_VALUE: load_xy_reg:offset <- $x23
	;DEBUG_VALUE: load_xy_reg:dst <- [DW_OP_plus_uconst 8, DW_OP_stack_value] $sp
	;DEBUG_VALUE: load_xy_reg:src <- $x21
	.loc	4 42 26                         ; ./emulate.h:42:26
	sub	x8, x28, x23
Ltmp45:
	;DEBUG_VALUE: load_xy_reg:avail <- $x8
	.loc	4 43 5                          ; ./emulate.h:43:5
	add	x1, x21, x23
	.loc	4 44 5                          ; ./emulate.h:44:5
	sub	x9, x23, #448
	.loc	4 43 5                          ; ./emulate.h:43:5
	cmp	x23, #449
	csel	x2, x27, x8, lo
	add	x28, sp, #8
	.loc	4 44 5                          ; ./emulate.h:44:5
	add	x22, x28, x8
	csel	x23, xzr, x9, lo
Ltmp46:
	.loc	4 43 5                          ; ./emulate.h:43:5
	add	x0, sp, #8
	mov	w3, #64
	bl	___memcpy_chk
Ltmp47:
	.loc	4 44 5                          ; ./emulate.h:44:5
	mov	x0, x22
	mov	x1, x21
	mov	x2, x23
	bl	_memcpy
Ltmp48:
	;DEBUG_VALUE: i <- 0
	.loc	4 0 5 is_stmt 0                 ; ./emulate.h:0:5
	mov	x8, #0
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	add	x9, x20, x9, lsl #6
	add	x9, x9, #1024
	ubfx	x10, x19, #28, #2
	ubfx	x11, x19, #55, #5
	ubfx	x12, x19, #20, #1
	b	LBB0_19
Ltmp49:
LBB0_17:                                ;   in Loop: Header=BB0_19 Depth=1
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_MAC16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_MAC16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MAC16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MAC16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_MAC16:operand <- $x19
	;DEBUG_VALUE: z <- undef
	.loc	3 44 28                         ; mac16.c:44:28
	ldrsh	x14, [x26, x13]
	.loc	3 44 34                         ; mac16.c:44:34
	ldrsh	x15, [x28, x13]
	.loc	3 44 40                         ; mac16.c:44:40
	ldrh	w13, [x9, x13]
Ltmp50:
	;DEBUG_VALUE: mac32_alu:x <- $x14
	;DEBUG_VALUE: mac32_alu:y <- $x15
	;DEBUG_VALUE: mac32_alu:operand <- $x19
	;DEBUG_VALUE: mac32_alu:z <- [DW_OP_LLVM_convert 16 5, DW_OP_LLVM_convert 64 5, DW_OP_stack_value] undef
	.loc	3 11 9 is_stmt 1                ; mac16.c:11:9
	sxtb	x16, w14
	tst	x19, #0x2000000000000000
	csel	x14, x14, x16, eq
Ltmp51:
	;DEBUG_VALUE: mac32_alu:x <- $x14
	.loc	3 12 9                          ; mac16.c:12:9
	sxtb	x16, w15
	tst	x19, #0x1000000000000000
	csel	x15, x15, x16, eq
Ltmp52:
	;DEBUG_VALUE: mac32_alu:y <- $x15
	.loc	3 15 22                         ; mac16.c:15:22
	mul	x16, x15, x14
Ltmp53:
	;DEBUG_VALUE: mac32_alu:val <- $x16
	.loc	3 14 5                          ; mac16.c:14:5
	cmp	x10, #3
Ltmp54:
	;DEBUG_VALUE: mac32_alu:val <- 0
	csel	x16, xzr, x16, eq
	cmp	x10, #2
	csel	x15, x15, x16, eq
Ltmp55:
	cmp	x10, #1
	csel	x14, x14, x15, eq
Ltmp56:
	;DEBUG_VALUE: mac32_alu:shift <- $x11
	;DEBUG_VALUE: mac32_alu:val <- $x14
	.loc	3 21 9                          ; mac16.c:21:9
	asr	x14, x14, x11
Ltmp57:
	;DEBUG_VALUE: mac32_alu:val <- $x14
	.loc	3 22 9                          ; mac16.c:22:9
	tst	x19, #0x8000000
	csel	w13, w13, wzr, eq
	add	w13, w14, w13
Ltmp58:
	;DEBUG_VALUE: mac32_alu:val <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] undef
	.loc	3 44 16                         ; mac16.c:44:16
	strh	w13, [x9, x8, lsl #1]
Ltmp59:
LBB0_18:                                ;   in Loop: Header=BB0_19 Depth=1
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_MAC16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_MAC16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MAC16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MAC16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_MAC16:operand <- $x19
	.loc	3 40 30                         ; mac16.c:40:30
	add	x8, x8, #1
Ltmp60:
	;DEBUG_VALUE: i <- $x8
	.loc	3 40 5 is_stmt 0                ; mac16.c:40:5
	cmp	x8, #32
	b.eq	LBB0_27
Ltmp61:
LBB0_19:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_24 Depth 2
	;DEBUG_VALUE: emulate_AMX_MAC16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_MAC16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MAC16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MAC16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_MAC16:operand <- $x19
	;DEBUG_VALUE: i <- $x8
	.loc	3 41 31 is_stmt 1               ; mac16.c:41:31
	lsl	x13, x8, #1
Ltmp62:
	.loc	3 41 13 is_stmt 0               ; mac16.c:41:13
	lsr	x14, x24, x13
	tbz	w14, #0, LBB0_18
Ltmp63:
; %bb.20:                               ;   in Loop: Header=BB0_19 Depth=1
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_MAC16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_MAC16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MAC16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MAC16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_MAC16:operand <- $x19
	.loc	3 42 13 is_stmt 1               ; mac16.c:42:13
	tbnz	x19, #63, LBB0_17
Ltmp64:
; %bb.21:                               ;   in Loop: Header=BB0_19 Depth=1
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_MAC16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_MAC16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MAC16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MAC16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_MAC16:operand <- $x19
	;DEBUG_VALUE: j <- 0
	.loc	3 0 13 is_stmt 0                ; mac16.c:0:13
	mov	x14, #0
	and	x15, x8, #0x1
	ubfx	x16, x8, #1, #31
	b	LBB0_24
Ltmp65:
LBB0_22:                                ;   in Loop: Header=BB0_24 Depth=2
	;DEBUG_VALUE: j <- [DW_OP_consts 2, DW_OP_div, DW_OP_stack_value] $x14
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_MAC16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_MAC16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MAC16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MAC16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_MAC16:operand <- $x19
	.loc	3 52 52 is_stmt 1               ; mac16.c:52:52
	orr	x17, x12, x14
	.loc	3 52 35 is_stmt 0               ; mac16.c:52:35
	add	x17, x20, x17, lsl #6
	.loc	3 53 36 is_stmt 1               ; mac16.c:53:36
	ldrsh	x0, [x26, x13]
	.loc	3 52 35                         ; mac16.c:52:35
	add	x17, x17, #1024
Ltmp66:
	;DEBUG_VALUE: z <- undef
	.loc	3 53 42                         ; mac16.c:53:42
	ldrsh	x1, [x28, x14]
	.loc	3 53 48 is_stmt 0               ; mac16.c:53:48
	ldrh	w2, [x17, x13]
Ltmp67:
	;DEBUG_VALUE: mac32_alu:x <- $x0
	;DEBUG_VALUE: mac32_alu:y <- $x1
	;DEBUG_VALUE: mac32_alu:operand <- $x19
	;DEBUG_VALUE: mac32_alu:z <- [DW_OP_LLVM_convert 16 5, DW_OP_LLVM_convert 64 5, DW_OP_stack_value] undef
	.loc	3 11 9 is_stmt 1                ; mac16.c:11:9
	sxtb	x3, w0
	tst	x19, #0x2000000000000000
	csel	x0, x0, x3, eq
Ltmp68:
	;DEBUG_VALUE: mac32_alu:x <- $x0
	.loc	3 12 9                          ; mac16.c:12:9
	sxtb	x3, w1
	tst	x19, #0x1000000000000000
	csel	x1, x1, x3, eq
Ltmp69:
	;DEBUG_VALUE: mac32_alu:y <- $x1
	.loc	3 15 22                         ; mac16.c:15:22
	mul	x3, x1, x0
Ltmp70:
	;DEBUG_VALUE: mac32_alu:val <- $x3
	.loc	3 14 5                          ; mac16.c:14:5
	cmp	x10, #3
Ltmp71:
	;DEBUG_VALUE: mac32_alu:val <- 0
	csel	x3, xzr, x3, eq
	cmp	x10, #2
	csel	x1, x1, x3, eq
Ltmp72:
	cmp	x10, #1
	csel	x0, x0, x1, eq
Ltmp73:
	;DEBUG_VALUE: mac32_alu:shift <- $x11
	;DEBUG_VALUE: mac32_alu:val <- $x0
	.loc	3 21 9                          ; mac16.c:21:9
	asr	x0, x0, x11
Ltmp74:
	;DEBUG_VALUE: mac32_alu:val <- $x0
	.loc	3 22 9                          ; mac16.c:22:9
	tst	x19, #0x8000000
	csel	w1, w2, wzr, eq
	add	w0, w0, w1
Ltmp75:
	;DEBUG_VALUE: mac32_alu:val <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] undef
	.loc	3 53 24                         ; mac16.c:53:24
	strh	w0, [x17, x8, lsl #1]
Ltmp76:
LBB0_23:                                ;   in Loop: Header=BB0_24 Depth=2
	;DEBUG_VALUE: j <- [DW_OP_consts 2, DW_OP_div, DW_OP_stack_value] $x14
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_MAC16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_MAC16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MAC16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MAC16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_MAC16:operand <- $x19
	;DEBUG_VALUE: j <- [DW_OP_consts 2, DW_OP_div, DW_OP_consts 1, DW_OP_plus, DW_OP_stack_value] $x14
	.loc	3 46 31                         ; mac16.c:46:31
	add	x14, x14, #2
Ltmp77:
	.loc	3 46 13 is_stmt 0               ; mac16.c:46:13
	cmp	x14, #64
	b.eq	LBB0_18
Ltmp78:
LBB0_24:                                ;   Parent Loop BB0_19 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_MAC16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_MAC16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MAC16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MAC16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_MAC16:operand <- $x19
	;DEBUG_VALUE: j <- [DW_OP_consts 2, DW_OP_div, DW_OP_stack_value] $x14
	.loc	3 47 21 is_stmt 1               ; mac16.c:47:21
	lsr	x17, x25, x14
	tbz	w17, #0, LBB0_23
Ltmp79:
; %bb.25:                               ;   in Loop: Header=BB0_24 Depth=2
	;DEBUG_VALUE: j <- [DW_OP_consts 2, DW_OP_div, DW_OP_stack_value] $x14
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_MAC16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_MAC16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MAC16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MAC16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_MAC16:operand <- $x19
	.loc	3 48 21                         ; mac16.c:48:21
	tbz	x19, #62, LBB0_22
Ltmp80:
; %bb.26:                               ;   in Loop: Header=BB0_24 Depth=2
	;DEBUG_VALUE: j <- [DW_OP_consts 2, DW_OP_div, DW_OP_stack_value] $x14
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_MAC16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_MAC16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MAC16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MAC16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_MAC16:operand <- $x19
	.loc	3 49 35                         ; mac16.c:49:35
	orr	x17, x15, x14
	add	x17, x20, x17, lsl #6
	.loc	3 50 36                         ; mac16.c:50:36
	ldrsh	x0, [x26, x8, lsl #1]
	.loc	3 49 35                         ; mac16.c:49:35
	add	x17, x17, #1024
Ltmp81:
	;DEBUG_VALUE: z <- undef
	.loc	3 50 42                         ; mac16.c:50:42
	ldrsh	x1, [x28, x14]
	.loc	3 50 48 is_stmt 0               ; mac16.c:50:48
	ldr	w2, [x17, x16, lsl #2]
Ltmp82:
	;DEBUG_VALUE: mac32_alu:x <- $x0
	;DEBUG_VALUE: mac32_alu:y <- $x1
	;DEBUG_VALUE: mac32_alu:operand <- $x19
	;DEBUG_VALUE: mac32_alu:z <- [DW_OP_LLVM_convert 32 5, DW_OP_LLVM_convert 64 5, DW_OP_stack_value] undef
	.loc	3 11 9 is_stmt 1                ; mac16.c:11:9
	sxtb	x3, w0
	tst	x19, #0x2000000000000000
	csel	x0, x0, x3, eq
Ltmp83:
	;DEBUG_VALUE: mac32_alu:x <- $x0
	.loc	3 12 9                          ; mac16.c:12:9
	sxtb	x3, w1
	tst	x19, #0x1000000000000000
	csel	x1, x1, x3, eq
Ltmp84:
	;DEBUG_VALUE: mac32_alu:y <- $x1
	.loc	3 15 22                         ; mac16.c:15:22
	mul	x3, x1, x0
Ltmp85:
	;DEBUG_VALUE: mac32_alu:val <- $x3
	.loc	3 14 5                          ; mac16.c:14:5
	cmp	x10, #3
Ltmp86:
	;DEBUG_VALUE: mac32_alu:val <- 0
	csel	x3, xzr, x3, eq
	cmp	x10, #2
	csel	x1, x1, x3, eq
Ltmp87:
	cmp	x10, #1
	csel	x0, x0, x1, eq
Ltmp88:
	;DEBUG_VALUE: mac32_alu:shift <- $x11
	;DEBUG_VALUE: mac32_alu:val <- $x0
	.loc	3 21 9                          ; mac16.c:21:9
	asr	x0, x0, x11
Ltmp89:
	;DEBUG_VALUE: mac32_alu:val <- $x0
	.loc	3 22 9                          ; mac16.c:22:9
	tst	x19, #0x8000000
	csel	w1, w2, wzr, eq
	add	w0, w0, w1
Ltmp90:
	;DEBUG_VALUE: mac32_alu:val <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] undef
	.loc	3 50 24                         ; mac16.c:50:24
	str	w0, [x17, x16, lsl #2]
	b	LBB0_23
Ltmp91:
LBB0_27:
	;DEBUG_VALUE: i <- $x8
	;DEBUG_VALUE: emulate_AMX_MAC16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_MAC16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MAC16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MAC16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_MAC16:operand <- $x19
	.loc	3 0 24 is_stmt 0                ; mac16.c:0:24
	ldur	x8, [x29, #-88]
Lloh7:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh8:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh9:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB0_29
Ltmp92:
; %bb.28:
	;DEBUG_VALUE: emulate_AMX_MAC16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_MAC16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MAC16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MAC16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_MAC16:operand <- $x19
	.loc	3 58 1 is_stmt 1                ; mac16.c:58:1
	ldp	x29, x30, [sp, #224]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #208]            ; 16-byte Folded Reload
Ltmp93:
	;DEBUG_VALUE: emulate_AMX_MAC16:state <- [DW_OP_LLVM_entry_value 1] $x0
	;DEBUG_VALUE: emulate_AMX_MAC16:operand <- [DW_OP_LLVM_entry_value 1] $x1
	ldp	x22, x21, [sp, #192]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #176]            ; 16-byte Folded Reload
Ltmp94:
	ldp	x26, x25, [sp, #160]            ; 16-byte Folded Reload
Ltmp95:
	ldp	x28, x27, [sp, #144]            ; 16-byte Folded Reload
	add	sp, sp, #240
Ltmp96:
	ret
Ltmp97:
LBB0_29:
	;DEBUG_VALUE: emulate_AMX_MAC16:y_enable <- $x25
	;DEBUG_VALUE: emulate_AMX_MAC16:z_row <- [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MAC16:x_enable <- $x24
	;DEBUG_VALUE: emulate_AMX_MAC16:state <- $x20
	;DEBUG_VALUE: emulate_AMX_MAC16:operand <- $x19
	.loc	3 0 1 is_stmt 0                 ; mac16.c:0:1
	bl	___stack_chk_fail
Ltmp98:
	.loh AdrpAdd	Lloh3, Lloh4
	.loh AdrpLdrGotLdr	Lloh0, Lloh1, Lloh2
	.loh AdrpAdd	Lloh5, Lloh6
	.loh AdrpLdrGotLdr	Lloh7, Lloh8, Lloh9
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__const
lJTI0_0:
	.byte	(LBB0_1-LBB0_1)>>2
	.byte	(LBB0_7-LBB0_1)>>2
	.byte	(LBB0_2-LBB0_1)>>2
	.byte	(LBB0_4-LBB0_1)>>2
lJTI0_1:
	.byte	(LBB0_9-LBB0_9)>>2
	.byte	(LBB0_15-LBB0_9)>>2
	.byte	(LBB0_10-LBB0_9)>>2
	.byte	(LBB0_12-LBB0_9)>>2
	.file	5 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types" "_uint64_t.h"
	.file	6 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types" "_uint32_t.h"
	.file	7 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types" "_int64_t.h"
                                        ; -- End function
	.file	8 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types" "_int16_t.h"
	.file	9 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types" "_uint16_t.h"
	.file	10 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types" "_int32_t.h"
	.section	__DWARF,__debug_loc,regular,debug
Lsection_debug_loc:
Ldebug_loc0:
.set Lset0, Lfunc_begin0-Lfunc_begin0
	.quad	Lset0
.set Lset1, Ltmp10-Lfunc_begin0
	.quad	Lset1
	.short	1                               ; Loc expr size
	.byte	80                              ; DW_OP_reg0
.set Lset2, Ltmp10-Lfunc_begin0
	.quad	Lset2
.set Lset3, Ltmp93-Lfunc_begin0
	.quad	Lset3
	.short	1                               ; Loc expr size
	.byte	100                             ; DW_OP_reg20
.set Lset4, Ltmp93-Lfunc_begin0
	.quad	Lset4
.set Lset5, Ltmp97-Lfunc_begin0
	.quad	Lset5
	.short	4                               ; Loc expr size
	.byte	163                             ; DW_OP_entry_value
	.byte	1                               ; 1
	.byte	80                              ; DW_OP_reg0
	.byte	159                             ; DW_OP_stack_value
.set Lset6, Ltmp97-Lfunc_begin0
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
.set Lset9, Ltmp9-Lfunc_begin0
	.quad	Lset9
	.short	1                               ; Loc expr size
	.byte	81                              ; DW_OP_reg1
.set Lset10, Ltmp9-Lfunc_begin0
	.quad	Lset10
.set Lset11, Ltmp93-Lfunc_begin0
	.quad	Lset11
	.short	1                               ; Loc expr size
	.byte	99                              ; DW_OP_reg19
.set Lset12, Ltmp93-Lfunc_begin0
	.quad	Lset12
.set Lset13, Ltmp97-Lfunc_begin0
	.quad	Lset13
	.short	4                               ; Loc expr size
	.byte	163                             ; DW_OP_entry_value
	.byte	1                               ; 1
	.byte	81                              ; DW_OP_reg1
	.byte	159                             ; DW_OP_stack_value
.set Lset14, Ltmp97-Lfunc_begin0
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
.set Lset17, Ltmp46-Lfunc_begin0
	.quad	Lset17
	.short	1                               ; Loc expr size
	.byte	103                             ; DW_OP_reg23
	.quad	0
	.quad	0
Ldebug_loc3:
.set Lset18, Ltmp2-Lfunc_begin0
	.quad	Lset18
.set Lset19, Ltmp42-Lfunc_begin0
	.quad	Lset19
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
	.quad	0
	.quad	0
Ldebug_loc4:
.set Lset20, Ltmp3-Lfunc_begin0
	.quad	Lset20
.set Lset21, Ltmp28-Lfunc_begin0
	.quad	Lset21
	.short	1                               ; Loc expr size
	.byte	95                              ; DW_OP_reg15
.set Lset22, Ltmp28-Lfunc_begin0
	.quad	Lset22
.set Lset23, Ltmp96-Lfunc_begin0
	.quad	Lset23
	.short	2                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	0                               ; 0
.set Lset24, Ltmp97-Lfunc_begin0
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
.set Lset27, Ltmp7-Lfunc_begin0
	.quad	Lset27
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
.set Lset28, Ltmp7-Lfunc_begin0
	.quad	Lset28
.set Lset29, Ltmp8-Lfunc_begin0
	.quad	Lset29
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
.set Lset30, Ltmp8-Lfunc_begin0
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
.set Lset40, Ltmp8-Lfunc_begin0
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
.set Lset47, Ltmp94-Lfunc_begin0
	.quad	Lset47
	.short	1                               ; Loc expr size
	.byte	104                             ; DW_OP_reg24
.set Lset48, Ltmp97-Lfunc_begin0
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
.set Lset51, Ltmp26-Lfunc_begin0
	.quad	Lset51
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
.set Lset52, Ltmp26-Lfunc_begin0
	.quad	Lset52
.set Lset53, Ltmp27-Lfunc_begin0
	.quad	Lset53
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
.set Lset54, Ltmp27-Lfunc_begin0
	.quad	Lset54
.set Lset55, Ltmp34-Lfunc_begin0
	.quad	Lset55
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
.set Lset56, Ltmp35-Lfunc_begin0
	.quad	Lset56
.set Lset57, Ltmp37-Lfunc_begin0
	.quad	Lset57
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
.set Lset58, Ltmp38-Lfunc_begin0
	.quad	Lset58
.set Lset59, Ltmp39-Lfunc_begin0
	.quad	Lset59
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
	.quad	0
	.quad	0
Ldebug_loc10:
.set Lset60, Ltmp24-Lfunc_begin0
	.quad	Lset60
.set Lset61, Ltmp30-Lfunc_begin0
	.quad	Lset61
	.short	1                               ; Loc expr size
	.byte	91                              ; DW_OP_reg11
.set Lset62, Ltmp32-Lfunc_begin0
	.quad	Lset62
.set Lset63, Ltmp39-Lfunc_begin0
	.quad	Lset63
	.short	1                               ; Loc expr size
	.byte	91                              ; DW_OP_reg11
	.quad	0
	.quad	0
Ldebug_loc11:
.set Lset64, Ltmp27-Lfunc_begin0
	.quad	Lset64
.set Lset65, Ltmp31-Lfunc_begin0
	.quad	Lset65
	.short	3                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	32                              ; DW_OP_not
	.byte	159                             ; DW_OP_stack_value
.set Lset66, Ltmp31-Lfunc_begin0
	.quad	Lset66
.set Lset67, Ltmp32-Lfunc_begin0
	.quad	Lset67
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
.set Lset68, Ltmp32-Lfunc_begin0
	.quad	Lset68
.set Lset69, Ltmp39-Lfunc_begin0
	.quad	Lset69
	.short	3                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	32                              ; DW_OP_not
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc12:
.set Lset70, Ltmp39-Lfunc_begin0
	.quad	Lset70
.set Lset71, Ltmp95-Lfunc_begin0
	.quad	Lset71
	.short	1                               ; Loc expr size
	.byte	105                             ; DW_OP_reg25
.set Lset72, Ltmp97-Lfunc_begin0
	.quad	Lset72
.set Lset73, Lfunc_end0-Lfunc_begin0
	.quad	Lset73
	.short	1                               ; Loc expr size
	.byte	105                             ; DW_OP_reg25
	.quad	0
	.quad	0
Ldebug_loc13:
.set Lset74, Ltmp40-Lfunc_begin0
	.quad	Lset74
.set Lset75, Ltmp42-Lfunc_begin0
	.quad	Lset75
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
	.quad	0
	.quad	0
Ldebug_loc14:
.set Lset76, Ltmp41-Lfunc_begin0
	.quad	Lset76
.set Lset77, Ltmp42-Lfunc_begin0
	.quad	Lset77
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
	.quad	0
	.quad	0
Ldebug_loc15:
.set Lset78, Ltmp44-Lfunc_begin0
	.quad	Lset78
.set Lset79, Ltmp46-Lfunc_begin0
	.quad	Lset79
	.short	1                               ; Loc expr size
	.byte	103                             ; DW_OP_reg23
	.quad	0
	.quad	0
Ldebug_loc16:
.set Lset80, Ltmp45-Lfunc_begin0
	.quad	Lset80
.set Lset81, Ltmp47-Lfunc_begin0
	.quad	Lset81
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
	.quad	0
	.quad	0
Ldebug_loc17:
.set Lset82, Ltmp50-Lfunc_begin0
	.quad	Lset82
.set Lset83, Ltmp56-Lfunc_begin0
	.quad	Lset83
	.short	1                               ; Loc expr size
	.byte	94                              ; DW_OP_reg14
	.quad	0
	.quad	0
Ldebug_loc18:
.set Lset84, Ltmp50-Lfunc_begin0
	.quad	Lset84
.set Lset85, Ltmp55-Lfunc_begin0
	.quad	Lset85
	.short	1                               ; Loc expr size
	.byte	95                              ; DW_OP_reg15
	.quad	0
	.quad	0
Ldebug_loc19:
.set Lset86, Ltmp53-Lfunc_begin0
	.quad	Lset86
.set Lset87, Ltmp54-Lfunc_begin0
	.quad	Lset87
	.short	1                               ; Loc expr size
	.byte	96                              ; DW_OP_reg16
.set Lset88, Ltmp54-Lfunc_begin0
	.quad	Lset88
.set Lset89, Ltmp56-Lfunc_begin0
	.quad	Lset89
	.short	2                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	159                             ; DW_OP_stack_value
.set Lset90, Ltmp56-Lfunc_begin0
	.quad	Lset90
.set Lset91, Ltmp58-Lfunc_begin0
	.quad	Lset91
	.short	1                               ; Loc expr size
	.byte	94                              ; DW_OP_reg14
	.quad	0
	.quad	0
Ldebug_loc20:
.set Lset92, Ltmp56-Lfunc_begin0
	.quad	Lset92
.set Lset93, Ltmp59-Lfunc_begin0
	.quad	Lset93
	.short	1                               ; Loc expr size
	.byte	91                              ; DW_OP_reg11
	.quad	0
	.quad	0
Ldebug_loc21:
.set Lset94, Ltmp65-Lfunc_begin0
	.quad	Lset94
.set Lset95, Ltmp76-Lfunc_begin0
	.quad	Lset95
	.short	6                               ; Loc expr size
	.byte	126                             ; DW_OP_breg14
	.byte	0                               ; 0
	.byte	17                              ; DW_OP_consts
	.byte	2                               ; 2
	.byte	27                              ; DW_OP_div
	.byte	159                             ; DW_OP_stack_value
.set Lset96, Ltmp76-Lfunc_begin0
	.quad	Lset96
.set Lset97, Ltmp77-Lfunc_begin0
	.quad	Lset97
	.short	9                               ; Loc expr size
	.byte	126                             ; DW_OP_breg14
	.byte	0                               ; 0
	.byte	17                              ; DW_OP_consts
	.byte	2                               ; 2
	.byte	27                              ; DW_OP_div
	.byte	17                              ; DW_OP_consts
	.byte	1                               ; 1
	.byte	34                              ; DW_OP_plus
	.byte	159                             ; DW_OP_stack_value
.set Lset98, Ltmp78-Lfunc_begin0
	.quad	Lset98
.set Lset99, Ltmp91-Lfunc_begin0
	.quad	Lset99
	.short	6                               ; Loc expr size
	.byte	126                             ; DW_OP_breg14
	.byte	0                               ; 0
	.byte	17                              ; DW_OP_consts
	.byte	2                               ; 2
	.byte	27                              ; DW_OP_div
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc22:
.set Lset100, Ltmp67-Lfunc_begin0
	.quad	Lset100
.set Lset101, Ltmp73-Lfunc_begin0
	.quad	Lset101
	.short	1                               ; Loc expr size
	.byte	80                              ; DW_OP_reg0
	.quad	0
	.quad	0
Ldebug_loc23:
.set Lset102, Ltmp67-Lfunc_begin0
	.quad	Lset102
.set Lset103, Ltmp72-Lfunc_begin0
	.quad	Lset103
	.short	1                               ; Loc expr size
	.byte	81                              ; DW_OP_reg1
	.quad	0
	.quad	0
Ldebug_loc24:
.set Lset104, Ltmp70-Lfunc_begin0
	.quad	Lset104
.set Lset105, Ltmp71-Lfunc_begin0
	.quad	Lset105
	.short	1                               ; Loc expr size
	.byte	83                              ; DW_OP_reg3
.set Lset106, Ltmp71-Lfunc_begin0
	.quad	Lset106
.set Lset107, Ltmp73-Lfunc_begin0
	.quad	Lset107
	.short	2                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	159                             ; DW_OP_stack_value
.set Lset108, Ltmp73-Lfunc_begin0
	.quad	Lset108
.set Lset109, Ltmp75-Lfunc_begin0
	.quad	Lset109
	.short	1                               ; Loc expr size
	.byte	80                              ; DW_OP_reg0
	.quad	0
	.quad	0
Ldebug_loc25:
.set Lset110, Ltmp73-Lfunc_begin0
	.quad	Lset110
.set Lset111, Ltmp76-Lfunc_begin0
	.quad	Lset111
	.short	1                               ; Loc expr size
	.byte	91                              ; DW_OP_reg11
	.quad	0
	.quad	0
Ldebug_loc26:
.set Lset112, Ltmp82-Lfunc_begin0
	.quad	Lset112
.set Lset113, Ltmp88-Lfunc_begin0
	.quad	Lset113
	.short	1                               ; Loc expr size
	.byte	80                              ; DW_OP_reg0
	.quad	0
	.quad	0
Ldebug_loc27:
.set Lset114, Ltmp82-Lfunc_begin0
	.quad	Lset114
.set Lset115, Ltmp87-Lfunc_begin0
	.quad	Lset115
	.short	1                               ; Loc expr size
	.byte	81                              ; DW_OP_reg1
	.quad	0
	.quad	0
Ldebug_loc28:
.set Lset116, Ltmp85-Lfunc_begin0
	.quad	Lset116
.set Lset117, Ltmp86-Lfunc_begin0
	.quad	Lset117
	.short	1                               ; Loc expr size
	.byte	83                              ; DW_OP_reg3
.set Lset118, Ltmp86-Lfunc_begin0
	.quad	Lset118
.set Lset119, Ltmp88-Lfunc_begin0
	.quad	Lset119
	.short	2                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	159                             ; DW_OP_stack_value
.set Lset120, Ltmp88-Lfunc_begin0
	.quad	Lset120
.set Lset121, Ltmp90-Lfunc_begin0
	.quad	Lset121
	.short	1                               ; Loc expr size
	.byte	80                              ; DW_OP_reg0
	.quad	0
	.quad	0
Ldebug_loc29:
.set Lset122, Ltmp88-Lfunc_begin0
	.quad	Lset122
.set Lset123, Ltmp91-Lfunc_begin0
	.quad	Lset123
	.short	1                               ; Loc expr size
	.byte	91                              ; DW_OP_reg11
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
	.byte	1                               ; DW_TAG_array_type
	.byte	1                               ; DW_CHILDREN_yes
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	23                              ; Abbreviation Code
	.byte	33                              ; DW_TAG_subrange_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	55                              ; DW_AT_count
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	24                              ; Abbreviation Code
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
	.byte	25                              ; Abbreviation Code
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
	.byte	26                              ; Abbreviation Code
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
	.byte	27                              ; Abbreviation Code
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
	.byte	28                              ; Abbreviation Code
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
.set Lset124, Ldebug_info_end0-Ldebug_info_start0 ; Length of Unit
	.long	Lset124
Ldebug_info_start0:
	.short	4                               ; DWARF version number
.set Lset125, Lsection_abbrev-Lsection_abbrev ; Offset Into Abbrev. Section
	.long	Lset125
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x5c6 DW_TAG_compile_unit
	.long	0                               ; DW_AT_producer
	.short	12                              ; DW_AT_language
	.long	46                              ; DW_AT_name
	.long	54                              ; DW_AT_LLVM_sysroot
	.long	106                             ; DW_AT_APPLE_sdk
.set Lset126, Lline_table_start0-Lsection_line ; DW_AT_stmt_list
	.long	Lset126
	.long	117                             ; DW_AT_comp_dir
                                        ; DW_AT_APPLE_optimized
	.quad	Lfunc_begin0                    ; DW_AT_low_pc
.set Lset127, Lfunc_end0-Lfunc_begin0   ; DW_AT_high_pc
	.long	Lset127
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
	.byte	4                               ; Abbrev [4] 0x53:0xb DW_TAG_typedef
	.long	94                              ; DW_AT_type
	.long	193                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	30                              ; DW_AT_decl_line
	.byte	5                               ; Abbrev [5] 0x5e:0x7 DW_TAG_base_type
	.long	200                             ; DW_AT_name
	.byte	6                               ; DW_AT_encoding
	.byte	1                               ; DW_AT_byte_size
	.byte	6                               ; Abbrev [6] 0x65:0x44 DW_TAG_subprogram
	.long	212                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	65                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	169                             ; DW_AT_type
                                        ; DW_AT_APPLE_optimized
	.byte	1                               ; DW_AT_inline
	.byte	7                               ; Abbrev [7] 0x71:0xb DW_TAG_formal_parameter
	.long	256                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	65                              ; DW_AT_decl_line
	.long	187                             ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0x7c:0xb DW_TAG_formal_parameter
	.long	282                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	65                              ; DW_AT_decl_line
	.long	187                             ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0x87:0xb DW_TAG_formal_parameter
	.long	284                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	65                              ; DW_AT_decl_line
	.long	187                             ; DW_AT_type
	.byte	8                               ; Abbrev [8] 0x92:0xb DW_TAG_variable
	.long	293                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	66                              ; DW_AT_decl_line
	.long	187                             ; DW_AT_type
	.byte	8                               ; Abbrev [8] 0x9d:0xb DW_TAG_variable
	.long	298                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	69                              ; DW_AT_decl_line
	.long	169                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0xa9:0xb DW_TAG_typedef
	.long	180                             ; DW_AT_type
	.long	228                             ; DW_AT_name
	.byte	5                               ; DW_AT_decl_file
	.byte	31                              ; DW_AT_decl_line
	.byte	5                               ; Abbrev [5] 0xb4:0x7 DW_TAG_base_type
	.long	237                             ; DW_AT_name
	.byte	7                               ; DW_AT_encoding
	.byte	8                               ; DW_AT_byte_size
	.byte	4                               ; Abbrev [4] 0xbb:0xb DW_TAG_typedef
	.long	198                             ; DW_AT_type
	.long	260                             ; DW_AT_name
	.byte	6                               ; DW_AT_decl_file
	.byte	31                              ; DW_AT_decl_line
	.byte	5                               ; Abbrev [5] 0xc6:0x7 DW_TAG_base_type
	.long	269                             ; DW_AT_name
	.byte	7                               ; DW_AT_encoding
	.byte	4                               ; DW_AT_byte_size
	.byte	9                               ; Abbrev [9] 0xcd:0x35 DW_TAG_subprogram
	.long	302                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	41                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_APPLE_optimized
	.byte	1                               ; DW_AT_inline
	.byte	7                               ; Abbrev [7] 0xd5:0xb DW_TAG_formal_parameter
	.long	314                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	41                              ; DW_AT_decl_line
	.long	258                             ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0xe0:0xb DW_TAG_formal_parameter
	.long	318                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	41                              ; DW_AT_decl_line
	.long	259                             ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0xeb:0xb DW_TAG_formal_parameter
	.long	322                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	41                              ; DW_AT_decl_line
	.long	169                             ; DW_AT_type
	.byte	8                               ; Abbrev [8] 0xf6:0xb DW_TAG_variable
	.long	329                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	42                              ; DW_AT_decl_line
	.long	169                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	10                              ; Abbrev [10] 0x102:0x1 DW_TAG_pointer_type
	.byte	2                               ; Abbrev [2] 0x103:0x5 DW_TAG_pointer_type
	.long	264                             ; DW_AT_type
	.byte	11                              ; Abbrev [11] 0x108:0x1 DW_TAG_const_type
	.byte	6                               ; Abbrev [6] 0x109:0x4f DW_TAG_subprogram
	.long	335                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	10                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	344                             ; DW_AT_type
                                        ; DW_AT_APPLE_optimized
	.byte	1                               ; DW_AT_inline
	.byte	7                               ; Abbrev [7] 0x115:0xb DW_TAG_formal_parameter
	.long	363                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	10                              ; DW_AT_decl_line
	.long	344                             ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0x120:0xb DW_TAG_formal_parameter
	.long	365                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	10                              ; DW_AT_decl_line
	.long	344                             ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0x12b:0xb DW_TAG_formal_parameter
	.long	367                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	10                              ; DW_AT_decl_line
	.long	344                             ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0x136:0xb DW_TAG_formal_parameter
	.long	369                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	10                              ; DW_AT_decl_line
	.long	169                             ; DW_AT_type
	.byte	8                               ; Abbrev [8] 0x141:0xb DW_TAG_variable
	.long	256                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	13                              ; DW_AT_decl_line
	.long	344                             ; DW_AT_type
	.byte	8                               ; Abbrev [8] 0x14c:0xb DW_TAG_variable
	.long	377                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	20                              ; DW_AT_decl_line
	.long	187                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x158:0xb DW_TAG_typedef
	.long	355                             ; DW_AT_type
	.long	345                             ; DW_AT_name
	.byte	7                               ; DW_AT_decl_file
	.byte	30                              ; DW_AT_decl_line
	.byte	5                               ; Abbrev [5] 0x163:0x7 DW_TAG_base_type
	.long	353                             ; DW_AT_name
	.byte	5                               ; DW_AT_encoding
	.byte	8                               ; DW_AT_byte_size
	.byte	12                              ; Abbrev [12] 0x16a:0x2c6 DW_TAG_subprogram
	.quad	Lfunc_begin0                    ; DW_AT_low_pc
.set Lset128, Lfunc_end0-Lfunc_begin0   ; DW_AT_high_pc
	.long	Lset128
	.byte	1                               ; DW_AT_frame_base
	.byte	109
                                        ; DW_AT_call_all_calls
	.long	383                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	28                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_external
                                        ; DW_AT_APPLE_optimized
	.byte	13                              ; Abbrev [13] 0x17f:0xf DW_TAG_formal_parameter
.set Lset129, Ldebug_loc0-Lsection_debug_loc ; DW_AT_location
	.long	Lset129
	.long	435                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	28                              ; DW_AT_decl_line
	.long	1109                            ; DW_AT_type
	.byte	13                              ; Abbrev [13] 0x18e:0xf DW_TAG_formal_parameter
.set Lset130, Ldebug_loc1-Lsection_debug_loc ; DW_AT_location
	.long	Lset130
	.long	369                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	28                              ; DW_AT_decl_line
	.long	169                             ; DW_AT_type
	.byte	14                              ; Abbrev [14] 0x19d:0xf DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	143
	.asciz	"\310"
	.long	363                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	35                              ; DW_AT_decl_line
	.long	1072                            ; DW_AT_type
	.byte	14                              ; Abbrev [14] 0x1ac:0xe DW_TAG_variable
	.byte	2                               ; DW_AT_location
	.byte	143
	.byte	8
	.long	365                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	36                              ; DW_AT_decl_line
	.long	1072                            ; DW_AT_type
	.byte	15                              ; Abbrev [15] 0x1ba:0xf DW_TAG_variable
.set Lset131, Ldebug_loc2-Lsection_debug_loc ; DW_AT_location
	.long	Lset131
	.long	551                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	29                              ; DW_AT_decl_line
	.long	169                             ; DW_AT_type
	.byte	15                              ; Abbrev [15] 0x1c9:0xf DW_TAG_variable
.set Lset132, Ldebug_loc3-Lsection_debug_loc ; DW_AT_location
	.long	Lset132
	.long	560                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	30                              ; DW_AT_decl_line
	.long	169                             ; DW_AT_type
	.byte	15                              ; Abbrev [15] 0x1d8:0xf DW_TAG_variable
.set Lset133, Ldebug_loc4-Lsection_debug_loc ; DW_AT_location
	.long	Lset133
	.long	569                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	31                              ; DW_AT_decl_line
	.long	169                             ; DW_AT_type
	.byte	15                              ; Abbrev [15] 0x1e7:0xf DW_TAG_variable
.set Lset134, Ldebug_loc8-Lsection_debug_loc ; DW_AT_location
	.long	Lset134
	.long	575                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	32                              ; DW_AT_decl_line
	.long	169                             ; DW_AT_type
	.byte	15                              ; Abbrev [15] 0x1f6:0xf DW_TAG_variable
.set Lset135, Ldebug_loc12-Lsection_debug_loc ; DW_AT_location
	.long	Lset135
	.long	584                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	33                              ; DW_AT_decl_line
	.long	169                             ; DW_AT_type
	.byte	16                              ; Abbrev [16] 0x205:0x3c DW_TAG_inlined_subroutine
	.long	101                             ; DW_AT_abstract_origin
	.quad	Ltmp4                           ; DW_AT_low_pc
.set Lset136, Ltmp21-Ltmp4              ; DW_AT_high_pc
	.long	Lset136
	.byte	3                               ; DW_AT_call_file
	.byte	32                              ; DW_AT_call_line
	.byte	25                              ; DW_AT_call_column
	.byte	17                              ; Abbrev [17] 0x219:0x9 DW_TAG_formal_parameter
.set Lset137, Ldebug_loc5-Lsection_debug_loc ; DW_AT_location
	.long	Lset137
	.long	113                             ; DW_AT_abstract_origin
	.byte	18                              ; Abbrev [18] 0x222:0x6 DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_const_value
	.long	124                             ; DW_AT_abstract_origin
	.byte	18                              ; Abbrev [18] 0x228:0x6 DW_TAG_formal_parameter
	.byte	7                               ; DW_AT_const_value
	.long	135                             ; DW_AT_abstract_origin
	.byte	19                              ; Abbrev [19] 0x22e:0x9 DW_TAG_variable
.set Lset138, Ldebug_loc6-Lsection_debug_loc ; DW_AT_location
	.long	Lset138
	.long	146                             ; DW_AT_abstract_origin
	.byte	19                              ; Abbrev [19] 0x237:0x9 DW_TAG_variable
.set Lset139, Ldebug_loc7-Lsection_debug_loc ; DW_AT_location
	.long	Lset139
	.long	157                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	16                              ; Abbrev [16] 0x241:0x3c DW_TAG_inlined_subroutine
	.long	101                             ; DW_AT_abstract_origin
	.quad	Ltmp22                          ; DW_AT_low_pc
.set Lset140, Ltmp39-Ltmp22             ; DW_AT_high_pc
	.long	Lset140
	.byte	3                               ; DW_AT_call_file
	.byte	33                              ; DW_AT_call_line
	.byte	25                              ; DW_AT_call_column
	.byte	17                              ; Abbrev [17] 0x255:0x9 DW_TAG_formal_parameter
.set Lset141, Ldebug_loc9-Lsection_debug_loc ; DW_AT_location
	.long	Lset141
	.long	113                             ; DW_AT_abstract_origin
	.byte	18                              ; Abbrev [18] 0x25e:0x6 DW_TAG_formal_parameter
	.byte	2                               ; DW_AT_const_value
	.long	124                             ; DW_AT_abstract_origin
	.byte	18                              ; Abbrev [18] 0x264:0x6 DW_TAG_formal_parameter
	.byte	7                               ; DW_AT_const_value
	.long	135                             ; DW_AT_abstract_origin
	.byte	19                              ; Abbrev [19] 0x26a:0x9 DW_TAG_variable
.set Lset142, Ldebug_loc10-Lsection_debug_loc ; DW_AT_location
	.long	Lset142
	.long	146                             ; DW_AT_abstract_origin
	.byte	19                              ; Abbrev [19] 0x273:0x9 DW_TAG_variable
.set Lset143, Ldebug_loc11-Lsection_debug_loc ; DW_AT_location
	.long	Lset143
	.long	157                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	16                              ; Abbrev [16] 0x27d:0x38 DW_TAG_inlined_subroutine
	.long	205                             ; DW_AT_abstract_origin
	.quad	Ltmp40                          ; DW_AT_low_pc
.set Lset144, Ltmp43-Ltmp40             ; DW_AT_high_pc
	.long	Lset144
	.byte	3                               ; DW_AT_call_file
	.byte	37                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	20                              ; Abbrev [20] 0x291:0xa DW_TAG_formal_parameter
	.byte	4                               ; DW_AT_location
	.byte	143
	.asciz	"\310"
	.byte	159
	.long	213                             ; DW_AT_abstract_origin
	.byte	20                              ; Abbrev [20] 0x29b:0x7 DW_TAG_formal_parameter
	.byte	1                               ; DW_AT_location
	.byte	100
	.long	224                             ; DW_AT_abstract_origin
	.byte	17                              ; Abbrev [17] 0x2a2:0x9 DW_TAG_formal_parameter
.set Lset145, Ldebug_loc13-Lsection_debug_loc ; DW_AT_location
	.long	Lset145
	.long	235                             ; DW_AT_abstract_origin
	.byte	19                              ; Abbrev [19] 0x2ab:0x9 DW_TAG_variable
.set Lset146, Ldebug_loc14-Lsection_debug_loc ; DW_AT_location
	.long	Lset146
	.long	246                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	16                              ; Abbrev [16] 0x2b5:0x37 DW_TAG_inlined_subroutine
	.long	205                             ; DW_AT_abstract_origin
	.quad	Ltmp44                          ; DW_AT_low_pc
.set Lset147, Ltmp49-Ltmp44             ; DW_AT_high_pc
	.long	Lset147
	.byte	3                               ; DW_AT_call_file
	.byte	38                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	20                              ; Abbrev [20] 0x2c9:0x9 DW_TAG_formal_parameter
	.byte	3                               ; DW_AT_location
	.byte	143
	.byte	8
	.byte	159
	.long	213                             ; DW_AT_abstract_origin
	.byte	20                              ; Abbrev [20] 0x2d2:0x7 DW_TAG_formal_parameter
	.byte	1                               ; DW_AT_location
	.byte	101
	.long	224                             ; DW_AT_abstract_origin
	.byte	17                              ; Abbrev [17] 0x2d9:0x9 DW_TAG_formal_parameter
.set Lset148, Ldebug_loc15-Lsection_debug_loc ; DW_AT_location
	.long	Lset148
	.long	235                             ; DW_AT_abstract_origin
	.byte	19                              ; Abbrev [19] 0x2e2:0x9 DW_TAG_variable
.set Lset149, Ldebug_loc16-Lsection_debug_loc ; DW_AT_location
	.long	Lset149
	.long	246                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	21                              ; Abbrev [21] 0x2ec:0x143 DW_TAG_lexical_block
	.quad	Ltmp49                          ; DW_AT_low_pc
.set Lset150, Ltmp91-Ltmp49             ; DW_AT_high_pc
	.long	Lset150
	.byte	14                              ; Abbrev [14] 0x2f9:0xd DW_TAG_variable
	.byte	1                               ; DW_AT_location
	.byte	88
	.long	593                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	40                              ; DW_AT_decl_line
	.long	1402                            ; DW_AT_type
	.byte	21                              ; Abbrev [21] 0x306:0x59 DW_TAG_lexical_block
	.quad	Ltmp49                          ; DW_AT_low_pc
.set Lset151, Ltmp59-Ltmp49             ; DW_AT_high_pc
	.long	Lset151
	.byte	8                               ; Abbrev [8] 0x313:0xb DW_TAG_variable
	.long	367                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	43                              ; DW_AT_decl_line
	.long	1478                            ; DW_AT_type
	.byte	16                              ; Abbrev [16] 0x31e:0x40 DW_TAG_inlined_subroutine
	.long	265                             ; DW_AT_abstract_origin
	.quad	Ltmp50                          ; DW_AT_low_pc
.set Lset152, Ltmp58-Ltmp50             ; DW_AT_high_pc
	.long	Lset152
	.byte	3                               ; DW_AT_call_file
	.byte	44                              ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	17                              ; Abbrev [17] 0x332:0x9 DW_TAG_formal_parameter
.set Lset153, Ldebug_loc17-Lsection_debug_loc ; DW_AT_location
	.long	Lset153
	.long	277                             ; DW_AT_abstract_origin
	.byte	17                              ; Abbrev [17] 0x33b:0x9 DW_TAG_formal_parameter
.set Lset154, Ldebug_loc18-Lsection_debug_loc ; DW_AT_location
	.long	Lset154
	.long	288                             ; DW_AT_abstract_origin
	.byte	20                              ; Abbrev [20] 0x344:0x7 DW_TAG_formal_parameter
	.byte	1                               ; DW_AT_location
	.byte	99
	.long	310                             ; DW_AT_abstract_origin
	.byte	19                              ; Abbrev [19] 0x34b:0x9 DW_TAG_variable
.set Lset155, Ldebug_loc19-Lsection_debug_loc ; DW_AT_location
	.long	Lset155
	.long	321                             ; DW_AT_abstract_origin
	.byte	19                              ; Abbrev [19] 0x354:0x9 DW_TAG_variable
.set Lset156, Ldebug_loc20-Lsection_debug_loc ; DW_AT_location
	.long	Lset156
	.long	332                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	21                              ; Abbrev [21] 0x35f:0xcf DW_TAG_lexical_block
	.quad	Ltmp65                          ; DW_AT_low_pc
.set Lset157, Ltmp91-Ltmp65             ; DW_AT_high_pc
	.long	Lset157
	.byte	15                              ; Abbrev [15] 0x36c:0xf DW_TAG_variable
.set Lset158, Ldebug_loc21-Lsection_debug_loc ; DW_AT_location
	.long	Lset158
	.long	595                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	46                              ; DW_AT_decl_line
	.long	1402                            ; DW_AT_type
	.byte	21                              ; Abbrev [21] 0x37b:0x59 DW_TAG_lexical_block
	.quad	Ltmp65                          ; DW_AT_low_pc
.set Lset159, Ltmp76-Ltmp65             ; DW_AT_high_pc
	.long	Lset159
	.byte	8                               ; Abbrev [8] 0x388:0xb DW_TAG_variable
	.long	367                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	52                              ; DW_AT_decl_line
	.long	1478                            ; DW_AT_type
	.byte	16                              ; Abbrev [16] 0x393:0x40 DW_TAG_inlined_subroutine
	.long	265                             ; DW_AT_abstract_origin
	.quad	Ltmp67                          ; DW_AT_low_pc
.set Lset160, Ltmp75-Ltmp67             ; DW_AT_high_pc
	.long	Lset160
	.byte	3                               ; DW_AT_call_file
	.byte	53                              ; DW_AT_call_line
	.byte	26                              ; DW_AT_call_column
	.byte	17                              ; Abbrev [17] 0x3a7:0x9 DW_TAG_formal_parameter
.set Lset161, Ldebug_loc22-Lsection_debug_loc ; DW_AT_location
	.long	Lset161
	.long	277                             ; DW_AT_abstract_origin
	.byte	17                              ; Abbrev [17] 0x3b0:0x9 DW_TAG_formal_parameter
.set Lset162, Ldebug_loc23-Lsection_debug_loc ; DW_AT_location
	.long	Lset162
	.long	288                             ; DW_AT_abstract_origin
	.byte	20                              ; Abbrev [20] 0x3b9:0x7 DW_TAG_formal_parameter
	.byte	1                               ; DW_AT_location
	.byte	99
	.long	310                             ; DW_AT_abstract_origin
	.byte	19                              ; Abbrev [19] 0x3c0:0x9 DW_TAG_variable
.set Lset163, Ldebug_loc24-Lsection_debug_loc ; DW_AT_location
	.long	Lset163
	.long	321                             ; DW_AT_abstract_origin
	.byte	19                              ; Abbrev [19] 0x3c9:0x9 DW_TAG_variable
.set Lset164, Ldebug_loc25-Lsection_debug_loc ; DW_AT_location
	.long	Lset164
	.long	332                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	21                              ; Abbrev [21] 0x3d4:0x59 DW_TAG_lexical_block
	.quad	Ltmp80                          ; DW_AT_low_pc
.set Lset165, Ltmp91-Ltmp80             ; DW_AT_high_pc
	.long	Lset165
	.byte	8                               ; Abbrev [8] 0x3e1:0xb DW_TAG_variable
	.long	367                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	49                              ; DW_AT_decl_line
	.long	1483                            ; DW_AT_type
	.byte	16                              ; Abbrev [16] 0x3ec:0x40 DW_TAG_inlined_subroutine
	.long	265                             ; DW_AT_abstract_origin
	.quad	Ltmp82                          ; DW_AT_low_pc
.set Lset166, Ltmp90-Ltmp82             ; DW_AT_high_pc
	.long	Lset166
	.byte	3                               ; DW_AT_call_file
	.byte	50                              ; DW_AT_call_line
	.byte	26                              ; DW_AT_call_column
	.byte	17                              ; Abbrev [17] 0x400:0x9 DW_TAG_formal_parameter
.set Lset167, Ldebug_loc26-Lsection_debug_loc ; DW_AT_location
	.long	Lset167
	.long	277                             ; DW_AT_abstract_origin
	.byte	17                              ; Abbrev [17] 0x409:0x9 DW_TAG_formal_parameter
.set Lset168, Ldebug_loc27-Lsection_debug_loc ; DW_AT_location
	.long	Lset168
	.long	288                             ; DW_AT_abstract_origin
	.byte	20                              ; Abbrev [20] 0x412:0x7 DW_TAG_formal_parameter
	.byte	1                               ; DW_AT_location
	.byte	99
	.long	310                             ; DW_AT_abstract_origin
	.byte	19                              ; Abbrev [19] 0x419:0x9 DW_TAG_variable
.set Lset169, Ldebug_loc28-Lsection_debug_loc ; DW_AT_location
	.long	Lset169
	.long	321                             ; DW_AT_abstract_origin
	.byte	19                              ; Abbrev [19] 0x422:0x9 DW_TAG_variable
.set Lset170, Ldebug_loc29-Lsection_debug_loc ; DW_AT_location
	.long	Lset170
	.long	332                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	22                              ; Abbrev [22] 0x430:0xc DW_TAG_array_type
	.long	1084                            ; DW_AT_type
	.byte	23                              ; Abbrev [23] 0x435:0x6 DW_TAG_subrange_type
	.long	1102                            ; DW_AT_type
	.byte	32                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x43c:0xb DW_TAG_typedef
	.long	1095                            ; DW_AT_type
	.long	401                             ; DW_AT_name
	.byte	8                               ; DW_AT_decl_file
	.byte	30                              ; DW_AT_decl_line
	.byte	5                               ; Abbrev [5] 0x447:0x7 DW_TAG_base_type
	.long	409                             ; DW_AT_name
	.byte	5                               ; DW_AT_encoding
	.byte	2                               ; DW_AT_byte_size
	.byte	24                              ; Abbrev [24] 0x44e:0x7 DW_TAG_base_type
	.long	415                             ; DW_AT_name
	.byte	8                               ; DW_AT_byte_size
	.byte	7                               ; DW_AT_encoding
	.byte	2                               ; Abbrev [2] 0x455:0x5 DW_TAG_pointer_type
	.long	1114                            ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x45a:0xb DW_TAG_typedef
	.long	1125                            ; DW_AT_type
	.long	441                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	22                              ; DW_AT_decl_line
	.byte	25                              ; Abbrev [25] 0x465:0x30 DW_TAG_structure_type
	.long	441                             ; DW_AT_name
	.short	5120                            ; DW_AT_byte_size
	.byte	4                               ; DW_AT_decl_file
	.byte	18                              ; DW_AT_decl_line
	.byte	26                              ; Abbrev [26] 0x46e:0xc DW_TAG_member
	.long	363                             ; DW_AT_name
	.long	1173                            ; DW_AT_type
	.byte	4                               ; DW_AT_decl_file
	.byte	19                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	27                              ; Abbrev [27] 0x47a:0xd DW_TAG_member
	.long	365                             ; DW_AT_name
	.long	1173                            ; DW_AT_type
	.byte	4                               ; DW_AT_decl_file
	.byte	20                              ; DW_AT_decl_line
	.short	512                             ; DW_AT_data_member_location
	.byte	27                              ; Abbrev [27] 0x487:0xd DW_TAG_member
	.long	367                             ; DW_AT_name
	.long	1466                            ; DW_AT_type
	.byte	4                               ; DW_AT_decl_file
	.byte	21                              ; DW_AT_decl_line
	.short	1024                            ; DW_AT_data_member_location
	.byte	0                               ; End Of Children Mark
	.byte	22                              ; Abbrev [22] 0x495:0xc DW_TAG_array_type
	.long	1185                            ; DW_AT_type
	.byte	23                              ; Abbrev [23] 0x49a:0x6 DW_TAG_subrange_type
	.long	1102                            ; DW_AT_type
	.byte	8                               ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x4a1:0xb DW_TAG_typedef
	.long	1196                            ; DW_AT_type
	.long	451                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	16                              ; DW_AT_decl_line
	.byte	28                              ; Abbrev [28] 0x4ac:0x75 DW_TAG_union_type
	.long	451                             ; DW_AT_name
	.byte	64                              ; DW_AT_byte_size
	.byte	4                               ; DW_AT_decl_file
	.byte	6                               ; DW_AT_decl_line
	.byte	26                              ; Abbrev [26] 0x4b4:0xc DW_TAG_member
	.long	459                             ; DW_AT_name
	.long	1313                            ; DW_AT_type
	.byte	4                               ; DW_AT_decl_file
	.byte	7                               ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	26                              ; Abbrev [26] 0x4c0:0xc DW_TAG_member
	.long	462                             ; DW_AT_name
	.long	1325                            ; DW_AT_type
	.byte	4                               ; DW_AT_decl_file
	.byte	8                               ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	26                              ; Abbrev [26] 0x4cc:0xc DW_TAG_member
	.long	490                             ; DW_AT_name
	.long	1355                            ; DW_AT_type
	.byte	4                               ; DW_AT_decl_file
	.byte	9                               ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	26                              ; Abbrev [26] 0x4d8:0xc DW_TAG_member
	.long	494                             ; DW_AT_name
	.long	1367                            ; DW_AT_type
	.byte	4                               ; DW_AT_decl_file
	.byte	10                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	26                              ; Abbrev [26] 0x4e4:0xc DW_TAG_member
	.long	497                             ; DW_AT_name
	.long	1072                            ; DW_AT_type
	.byte	4                               ; DW_AT_decl_file
	.byte	11                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	26                              ; Abbrev [26] 0x4f0:0xc DW_TAG_member
	.long	501                             ; DW_AT_name
	.long	1379                            ; DW_AT_type
	.byte	4                               ; DW_AT_decl_file
	.byte	12                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	26                              ; Abbrev [26] 0x4fc:0xc DW_TAG_member
	.long	517                             ; DW_AT_name
	.long	1409                            ; DW_AT_type
	.byte	4                               ; DW_AT_decl_file
	.byte	13                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	26                              ; Abbrev [26] 0x508:0xc DW_TAG_member
	.long	530                             ; DW_AT_name
	.long	1428                            ; DW_AT_type
	.byte	4                               ; DW_AT_decl_file
	.byte	14                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	26                              ; Abbrev [26] 0x514:0xc DW_TAG_member
	.long	540                             ; DW_AT_name
	.long	1447                            ; DW_AT_type
	.byte	4                               ; DW_AT_decl_file
	.byte	15                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	0                               ; End Of Children Mark
	.byte	22                              ; Abbrev [22] 0x521:0xc DW_TAG_array_type
	.long	60                              ; DW_AT_type
	.byte	23                              ; Abbrev [23] 0x526:0x6 DW_TAG_subrange_type
	.long	1102                            ; DW_AT_type
	.byte	64                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	22                              ; Abbrev [22] 0x52d:0xc DW_TAG_array_type
	.long	1337                            ; DW_AT_type
	.byte	23                              ; Abbrev [23] 0x532:0x6 DW_TAG_subrange_type
	.long	1102                            ; DW_AT_type
	.byte	32                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x539:0xb DW_TAG_typedef
	.long	1348                            ; DW_AT_type
	.long	466                             ; DW_AT_name
	.byte	9                               ; DW_AT_decl_file
	.byte	31                              ; DW_AT_decl_line
	.byte	5                               ; Abbrev [5] 0x544:0x7 DW_TAG_base_type
	.long	475                             ; DW_AT_name
	.byte	7                               ; DW_AT_encoding
	.byte	2                               ; DW_AT_byte_size
	.byte	22                              ; Abbrev [22] 0x54b:0xc DW_TAG_array_type
	.long	187                             ; DW_AT_type
	.byte	23                              ; Abbrev [23] 0x550:0x6 DW_TAG_subrange_type
	.long	1102                            ; DW_AT_type
	.byte	16                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	22                              ; Abbrev [22] 0x557:0xc DW_TAG_array_type
	.long	83                              ; DW_AT_type
	.byte	23                              ; Abbrev [23] 0x55c:0x6 DW_TAG_subrange_type
	.long	1102                            ; DW_AT_type
	.byte	64                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	22                              ; Abbrev [22] 0x563:0xc DW_TAG_array_type
	.long	1391                            ; DW_AT_type
	.byte	23                              ; Abbrev [23] 0x568:0x6 DW_TAG_subrange_type
	.long	1102                            ; DW_AT_type
	.byte	16                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x56f:0xb DW_TAG_typedef
	.long	1402                            ; DW_AT_type
	.long	505                             ; DW_AT_name
	.byte	10                              ; DW_AT_decl_file
	.byte	30                              ; DW_AT_decl_line
	.byte	5                               ; Abbrev [5] 0x57a:0x7 DW_TAG_base_type
	.long	513                             ; DW_AT_name
	.byte	5                               ; DW_AT_encoding
	.byte	4                               ; DW_AT_byte_size
	.byte	22                              ; Abbrev [22] 0x581:0xc DW_TAG_array_type
	.long	1421                            ; DW_AT_type
	.byte	23                              ; Abbrev [23] 0x586:0x6 DW_TAG_subrange_type
	.long	1102                            ; DW_AT_type
	.byte	32                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	5                               ; Abbrev [5] 0x58d:0x7 DW_TAG_base_type
	.long	521                             ; DW_AT_name
	.byte	4                               ; DW_AT_encoding
	.byte	2                               ; DW_AT_byte_size
	.byte	22                              ; Abbrev [22] 0x594:0xc DW_TAG_array_type
	.long	1440                            ; DW_AT_type
	.byte	23                              ; Abbrev [23] 0x599:0x6 DW_TAG_subrange_type
	.long	1102                            ; DW_AT_type
	.byte	16                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	5                               ; Abbrev [5] 0x5a0:0x7 DW_TAG_base_type
	.long	534                             ; DW_AT_name
	.byte	4                               ; DW_AT_encoding
	.byte	4                               ; DW_AT_byte_size
	.byte	22                              ; Abbrev [22] 0x5a7:0xc DW_TAG_array_type
	.long	1459                            ; DW_AT_type
	.byte	23                              ; Abbrev [23] 0x5ac:0x6 DW_TAG_subrange_type
	.long	1102                            ; DW_AT_type
	.byte	8                               ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	5                               ; Abbrev [5] 0x5b3:0x7 DW_TAG_base_type
	.long	544                             ; DW_AT_name
	.byte	4                               ; DW_AT_encoding
	.byte	8                               ; DW_AT_byte_size
	.byte	22                              ; Abbrev [22] 0x5ba:0xc DW_TAG_array_type
	.long	1185                            ; DW_AT_type
	.byte	23                              ; Abbrev [23] 0x5bf:0x6 DW_TAG_subrange_type
	.long	1102                            ; DW_AT_type
	.byte	64                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x5c6:0x5 DW_TAG_pointer_type
	.long	1084                            ; DW_AT_type
	.byte	2                               ; Abbrev [2] 0x5cb:0x5 DW_TAG_pointer_type
	.long	1391                            ; DW_AT_type
	.byte	0                               ; End Of Children Mark
Ldebug_info_end0:
	.section	__DWARF,__debug_str,regular,debug
Linfo_string:
	.asciz	"Apple clang version 15.0.0 (clang-1500.3.9.4)" ; string offset=0
	.asciz	"mac16.c"                       ; string offset=46
	.asciz	"/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk" ; string offset=54
	.asciz	"MacOSX.sdk"                    ; string offset=106
	.asciz	"/Users/tarindujayatilaka/Documents/superopt/apple-amx" ; string offset=117
	.asciz	"uint8_t"                       ; string offset=171
	.asciz	"unsigned char"                 ; string offset=179
	.asciz	"int8_t"                        ; string offset=193
	.asciz	"signed char"                   ; string offset=200
	.asciz	"parse_writemask"               ; string offset=212
	.asciz	"uint64_t"                      ; string offset=228
	.asciz	"unsigned long long"            ; string offset=237
	.asciz	"val"                           ; string offset=256
	.asciz	"uint32_t"                      ; string offset=260
	.asciz	"unsigned int"                  ; string offset=269
	.asciz	"g"                             ; string offset=282
	.asciz	"maskbits"                      ; string offset=284
	.asciz	"mode"                          ; string offset=293
	.asciz	"all"                           ; string offset=298
	.asciz	"load_xy_reg"                   ; string offset=302
	.asciz	"dst"                           ; string offset=314
	.asciz	"src"                           ; string offset=318
	.asciz	"offset"                        ; string offset=322
	.asciz	"avail"                         ; string offset=329
	.asciz	"mac32_alu"                     ; string offset=335
	.asciz	"int64_t"                       ; string offset=345
	.asciz	"long long"                     ; string offset=353
	.asciz	"x"                             ; string offset=363
	.asciz	"y"                             ; string offset=365
	.asciz	"z"                             ; string offset=367
	.asciz	"operand"                       ; string offset=369
	.asciz	"shift"                         ; string offset=377
	.asciz	"emulate_AMX_MAC16"             ; string offset=383
	.asciz	"int16_t"                       ; string offset=401
	.asciz	"short"                         ; string offset=409
	.asciz	"__ARRAY_SIZE_TYPE__"           ; string offset=415
	.asciz	"state"                         ; string offset=435
	.asciz	"amx_state"                     ; string offset=441
	.asciz	"amx_reg"                       ; string offset=451
	.asciz	"u8"                            ; string offset=459
	.asciz	"u16"                           ; string offset=462
	.asciz	"uint16_t"                      ; string offset=466
	.asciz	"unsigned short"                ; string offset=475
	.asciz	"u32"                           ; string offset=490
	.asciz	"i8"                            ; string offset=494
	.asciz	"i16"                           ; string offset=497
	.asciz	"i32"                           ; string offset=501
	.asciz	"int32_t"                       ; string offset=505
	.asciz	"int"                           ; string offset=513
	.asciz	"f16"                           ; string offset=517
	.asciz	"_Float16"                      ; string offset=521
	.asciz	"f32"                           ; string offset=530
	.asciz	"float"                         ; string offset=534
	.asciz	"f64"                           ; string offset=540
	.asciz	"double"                        ; string offset=544
	.asciz	"y_offset"                      ; string offset=551
	.asciz	"x_offset"                      ; string offset=560
	.asciz	"z_row"                         ; string offset=569
	.asciz	"x_enable"                      ; string offset=575
	.asciz	"y_enable"                      ; string offset=584
	.asciz	"i"                             ; string offset=593
	.asciz	"j"                             ; string offset=595
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
	.long	0                               ; Bucket 0
	.long	-1                              ; Bucket 1
	.long	1                               ; Bucket 2
	.long	-1                              ; Bucket 3
	.long	1334146108                      ; Hash in Bucket 0
	.long	226778194                       ; Hash in Bucket 2
	.long	-1812774482                     ; Hash in Bucket 2
	.long	-224174954                      ; Hash in Bucket 2
.set Lset171, LNames3-Lnames_begin      ; Offset in Bucket 0
	.long	Lset171
.set Lset172, LNames2-Lnames_begin      ; Offset in Bucket 2
	.long	Lset172
.set Lset173, LNames1-Lnames_begin      ; Offset in Bucket 2
	.long	Lset173
.set Lset174, LNames0-Lnames_begin      ; Offset in Bucket 2
	.long	Lset174
LNames3:
	.long	335                             ; mac32_alu
	.long	3                               ; Num DIEs
	.long	798
	.long	915
	.long	1004
	.long	0
LNames2:
	.long	302                             ; load_xy_reg
	.long	2                               ; Num DIEs
	.long	637
	.long	693
	.long	0
LNames1:
	.long	383                             ; emulate_AMX_MAC16
	.long	1                               ; Num DIEs
	.long	362
	.long	0
LNames0:
	.long	212                             ; parse_writemask
	.long	2                               ; Num DIEs
	.long	517
	.long	577
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
.set Lset175, Ltypes18-Ltypes_begin     ; Offset in Bucket 0
	.long	Lset175
.set Lset176, Ltypes14-Ltypes_begin     ; Offset in Bucket 1
	.long	Lset176
.set Lset177, Ltypes0-Ltypes_begin      ; Offset in Bucket 1
	.long	Lset177
.set Lset178, Ltypes12-Ltypes_begin     ; Offset in Bucket 1
	.long	Lset178
.set Lset179, Ltypes17-Ltypes_begin     ; Offset in Bucket 2
	.long	Lset179
.set Lset180, Ltypes15-Ltypes_begin     ; Offset in Bucket 4
	.long	Lset180
.set Lset181, Ltypes1-Ltypes_begin      ; Offset in Bucket 4
	.long	Lset181
.set Lset182, Ltypes9-Ltypes_begin      ; Offset in Bucket 4
	.long	Lset182
.set Lset183, Ltypes8-Ltypes_begin      ; Offset in Bucket 4
	.long	Lset183
.set Lset184, Ltypes5-Ltypes_begin      ; Offset in Bucket 6
	.long	Lset184
.set Lset185, Ltypes3-Ltypes_begin      ; Offset in Bucket 6
	.long	Lset185
.set Lset186, Ltypes10-Ltypes_begin     ; Offset in Bucket 6
	.long	Lset186
.set Lset187, Ltypes21-Ltypes_begin     ; Offset in Bucket 6
	.long	Lset187
.set Lset188, Ltypes19-Ltypes_begin     ; Offset in Bucket 7
	.long	Lset188
.set Lset189, Ltypes13-Ltypes_begin     ; Offset in Bucket 8
	.long	Lset189
.set Lset190, Ltypes6-Ltypes_begin      ; Offset in Bucket 8
	.long	Lset190
.set Lset191, Ltypes11-Ltypes_begin     ; Offset in Bucket 8
	.long	Lset191
.set Lset192, Ltypes16-Ltypes_begin     ; Offset in Bucket 9
	.long	Lset192
.set Lset193, Ltypes4-Ltypes_begin      ; Offset in Bucket 9
	.long	Lset193
.set Lset194, Ltypes20-Ltypes_begin     ; Offset in Bucket 9
	.long	Lset194
.set Lset195, Ltypes7-Ltypes_begin      ; Offset in Bucket 9
	.long	Lset195
.set Lset196, Ltypes2-Ltypes_begin      ; Offset in Bucket 10
	.long	Lset196
Ltypes18:
	.long	521                             ; _Float16
	.long	1                               ; Num DIEs
	.long	1421
	.short	36
	.byte	0
	.long	0
Ltypes14:
	.long	171                             ; uint8_t
	.long	1                               ; Num DIEs
	.long	60
	.short	22
	.byte	0
	.long	0
Ltypes0:
	.long	237                             ; unsigned long long
	.long	1                               ; Num DIEs
	.long	180
	.short	36
	.byte	0
	.long	0
Ltypes12:
	.long	451                             ; amx_reg
	.long	2                               ; Num DIEs
	.long	1185
	.short	22
	.byte	0
	.long	1196
	.short	23
	.byte	0
	.long	0
Ltypes17:
	.long	415                             ; __ARRAY_SIZE_TYPE__
	.long	1                               ; Num DIEs
	.long	1102
	.short	36
	.byte	0
	.long	0
Ltypes15:
	.long	466                             ; uint16_t
	.long	1                               ; Num DIEs
	.long	1337
	.short	22
	.byte	0
	.long	0
Ltypes1:
	.long	260                             ; uint32_t
	.long	1                               ; Num DIEs
	.long	187
	.short	22
	.byte	0
	.long	0
Ltypes9:
	.long	228                             ; uint64_t
	.long	1                               ; Num DIEs
	.long	169
	.short	22
	.byte	0
	.long	0
Ltypes8:
	.long	179                             ; unsigned char
	.long	1                               ; Num DIEs
	.long	71
	.short	36
	.byte	0
	.long	0
Ltypes5:
	.long	513                             ; int
	.long	1                               ; Num DIEs
	.long	1402
	.short	36
	.byte	0
	.long	0
Ltypes3:
	.long	401                             ; int16_t
	.long	1                               ; Num DIEs
	.long	1084
	.short	22
	.byte	0
	.long	0
Ltypes10:
	.long	505                             ; int32_t
	.long	1                               ; Num DIEs
	.long	1391
	.short	22
	.byte	0
	.long	0
Ltypes21:
	.long	345                             ; int64_t
	.long	1                               ; Num DIEs
	.long	344
	.short	22
	.byte	0
	.long	0
Ltypes19:
	.long	441                             ; amx_state
	.long	2                               ; Num DIEs
	.long	1114
	.short	22
	.byte	0
	.long	1125
	.short	19
	.byte	0
	.long	0
Ltypes13:
	.long	534                             ; float
	.long	1                               ; Num DIEs
	.long	1440
	.short	36
	.byte	0
	.long	0
Ltypes6:
	.long	409                             ; short
	.long	1                               ; Num DIEs
	.long	1095
	.short	36
	.byte	0
	.long	0
Ltypes11:
	.long	269                             ; unsigned int
	.long	1                               ; Num DIEs
	.long	198
	.short	36
	.byte	0
	.long	0
Ltypes16:
	.long	193                             ; int8_t
	.long	1                               ; Num DIEs
	.long	83
	.short	22
	.byte	0
	.long	0
Ltypes4:
	.long	200                             ; signed char
	.long	1                               ; Num DIEs
	.long	94
	.short	36
	.byte	0
	.long	0
Ltypes20:
	.long	353                             ; long long
	.long	1                               ; Num DIEs
	.long	355
	.short	36
	.byte	0
	.long	0
Ltypes7:
	.long	544                             ; double
	.long	1                               ; Num DIEs
	.long	1459
	.short	36
	.byte	0
	.long	0
Ltypes2:
	.long	475                             ; unsigned short
	.long	1                               ; Num DIEs
	.long	1348
	.short	36
	.byte	0
	.long	0
.subsections_via_symbols
	.section	__DWARF,__debug_line,regular,debug
Lsection_line:
Lline_table_start0:
