	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 14, 4
	.file	1 "/Users/tarindujayatilaka/Documents/superopt/apple-amx" "./tp_utils.h"
	.file	2 "/Users/tarindujayatilaka/Documents/superopt/apple-amx" "transpose.c"
	.file	3 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types" "_uint32_t.h"
	.file	4 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types" "_uint64_t.h"
	.file	5 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types" "_uint8_t.h"
	.file	6 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/arm" "_types.h"
	.file	7 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types" "_clock_t.h"
	.globl	_print_amx_state                ; -- Begin function print_amx_state
	.p2align	2
_print_amx_state:                       ; @print_amx_state
Lfunc_begin0:
	.loc	1 5 0                           ; ./tp_utils.h:5:0
	.cfi_startproc
; %bb.0:
	;DEBUG_VALUE: print_amx_state:state <- $x0
	sub	sp, sp, #96
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
	mov	x19, x0
Ltmp0:
	;DEBUG_VALUE: print_amx_state:state <- $x19
	.loc	1 6 5 prologue_end              ; ./tp_utils.h:6:5
Lloh0:
	adrp	x0, l_str@PAGE
Lloh1:
	add	x0, x0, l_str@PAGEOFF
	bl	_puts
Ltmp1:
	.loc	1 9 5                           ; ./tp_utils.h:9:5
Lloh2:
	adrp	x0, l_str.14@PAGE
Lloh3:
	add	x0, x0, l_str.14@PAGEOFF
	bl	_puts
Ltmp2:
	;DEBUG_VALUE: i <- 0
	.loc	1 11 9                          ; ./tp_utils.h:11:9
	str	xzr, [sp]
Lloh4:
	adrp	x0, l_.str.2@PAGE
Lloh5:
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_printf
Ltmp3:
	;DEBUG_VALUE: j <- 0
	.loc	1 0 9 is_stmt 0                 ; ./tp_utils.h:0:9
	mov	x22, #0
Lloh6:
	adrp	x20, l_.str.3@PAGE
Lloh7:
	add	x20, x20, l_.str.3@PAGEOFF
Lloh8:
	adrp	x21, l_.str.4@PAGE
Lloh9:
	add	x21, x21, l_.str.4@PAGEOFF
	b	LBB0_2
Ltmp4:
LBB0_1:                                 ;   in Loop: Header=BB0_2 Depth=1
	;DEBUG_VALUE: i <- 0
	;DEBUG_VALUE: print_amx_state:state <- $x19
	;DEBUG_VALUE: j <- $x22
	.loc	1 12 9 is_stmt 1                ; ./tp_utils.h:12:9
	cmp	x22, #64
	b.eq	LBB0_4
Ltmp5:
LBB0_2:                                 ; =>This Inner Loop Header: Depth=1
	;DEBUG_VALUE: i <- 0
	;DEBUG_VALUE: print_amx_state:state <- $x19
	;DEBUG_VALUE: j <- $x22
	.loc	1 13 29                         ; ./tp_utils.h:13:29
	ldrb	w8, [x19, x22]
	.loc	1 13 13 is_stmt 0               ; ./tp_utils.h:13:13
	str	x8, [sp]
	mov	x0, x20
	bl	_printf
Ltmp6:
	.loc	1 14 20 is_stmt 1               ; ./tp_utils.h:14:20
	add	x22, x22, #1
Ltmp7:
	.loc	1 14 30 is_stmt 0               ; ./tp_utils.h:14:30
	tst	x22, #0xf
Ltmp8:
	.loc	1 14 17                         ; ./tp_utils.h:14:17
	b.ne	LBB0_1
Ltmp9:
; %bb.3:                                ;   in Loop: Header=BB0_2 Depth=1
	;DEBUG_VALUE: i <- 0
	;DEBUG_VALUE: print_amx_state:state <- $x19
	.loc	1 14 36                         ; ./tp_utils.h:14:36
	mov	x0, x21
	bl	_printf
Ltmp10:
	.loc	1 0 36                          ; ./tp_utils.h:0:36
	b	LBB0_1
Ltmp11:
LBB0_4:
	;DEBUG_VALUE: i <- 0
	;DEBUG_VALUE: print_amx_state:state <- $x19
	.loc	1 16 9 is_stmt 1                ; ./tp_utils.h:16:9
	mov	w0, #10
	bl	_putchar
Ltmp12:
	;DEBUG_VALUE: i <- 1
	.loc	1 0 9 is_stmt 0                 ; ./tp_utils.h:0:9
	mov	w8, #1
	.loc	1 11 9 is_stmt 1                ; ./tp_utils.h:11:9
	str	x8, [sp]
Lloh10:
	adrp	x0, l_.str.2@PAGE
Lloh11:
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_printf
Ltmp13:
	;DEBUG_VALUE: j <- 0
	.loc	1 0 9 is_stmt 0                 ; ./tp_utils.h:0:9
	mov	x22, #0
	add	x23, x19, #64
Lloh12:
	adrp	x20, l_.str.3@PAGE
Lloh13:
	add	x20, x20, l_.str.3@PAGEOFF
Lloh14:
	adrp	x21, l_.str.4@PAGE
Lloh15:
	add	x21, x21, l_.str.4@PAGEOFF
	b	LBB0_6
Ltmp14:
LBB0_5:                                 ;   in Loop: Header=BB0_6 Depth=1
	;DEBUG_VALUE: i <- 1
	;DEBUG_VALUE: print_amx_state:state <- $x19
	;DEBUG_VALUE: j <- $x22
	.loc	1 12 9 is_stmt 1                ; ./tp_utils.h:12:9
	cmp	x22, #64
	b.eq	LBB0_8
Ltmp15:
LBB0_6:                                 ; =>This Inner Loop Header: Depth=1
	;DEBUG_VALUE: i <- 1
	;DEBUG_VALUE: print_amx_state:state <- $x19
	;DEBUG_VALUE: j <- $x22
	.loc	1 13 29                         ; ./tp_utils.h:13:29
	ldrb	w8, [x23, x22]
	.loc	1 13 13 is_stmt 0               ; ./tp_utils.h:13:13
	str	x8, [sp]
	mov	x0, x20
	bl	_printf
Ltmp16:
	.loc	1 14 20 is_stmt 1               ; ./tp_utils.h:14:20
	add	x22, x22, #1
Ltmp17:
	.loc	1 14 30 is_stmt 0               ; ./tp_utils.h:14:30
	tst	x22, #0xf
Ltmp18:
	.loc	1 14 17                         ; ./tp_utils.h:14:17
	b.ne	LBB0_5
Ltmp19:
; %bb.7:                                ;   in Loop: Header=BB0_6 Depth=1
	;DEBUG_VALUE: i <- 1
	;DEBUG_VALUE: print_amx_state:state <- $x19
	.loc	1 14 36                         ; ./tp_utils.h:14:36
	mov	x0, x21
	bl	_printf
Ltmp20:
	.loc	1 0 36                          ; ./tp_utils.h:0:36
	b	LBB0_5
Ltmp21:
LBB0_8:
	;DEBUG_VALUE: i <- 1
	;DEBUG_VALUE: print_amx_state:state <- $x19
	.loc	1 16 9 is_stmt 1                ; ./tp_utils.h:16:9
	mov	w0, #10
	bl	_putchar
Ltmp22:
	;DEBUG_VALUE: i <- 2
	.loc	1 0 9 is_stmt 0                 ; ./tp_utils.h:0:9
	mov	w8, #2
	.loc	1 11 9 is_stmt 1                ; ./tp_utils.h:11:9
	str	x8, [sp]
Lloh16:
	adrp	x0, l_.str.2@PAGE
Lloh17:
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_printf
Ltmp23:
	;DEBUG_VALUE: j <- 0
	.loc	1 0 9 is_stmt 0                 ; ./tp_utils.h:0:9
	mov	x22, #0
	add	x23, x19, #128
Lloh18:
	adrp	x20, l_.str.3@PAGE
Lloh19:
	add	x20, x20, l_.str.3@PAGEOFF
Lloh20:
	adrp	x21, l_.str.4@PAGE
Lloh21:
	add	x21, x21, l_.str.4@PAGEOFF
	b	LBB0_10
Ltmp24:
LBB0_9:                                 ;   in Loop: Header=BB0_10 Depth=1
	;DEBUG_VALUE: i <- 2
	;DEBUG_VALUE: print_amx_state:state <- $x19
	;DEBUG_VALUE: j <- $x22
	.loc	1 12 9 is_stmt 1                ; ./tp_utils.h:12:9
	cmp	x22, #64
	b.eq	LBB0_12
Ltmp25:
LBB0_10:                                ; =>This Inner Loop Header: Depth=1
	;DEBUG_VALUE: i <- 2
	;DEBUG_VALUE: print_amx_state:state <- $x19
	;DEBUG_VALUE: j <- $x22
	.loc	1 13 29                         ; ./tp_utils.h:13:29
	ldrb	w8, [x23, x22]
	.loc	1 13 13 is_stmt 0               ; ./tp_utils.h:13:13
	str	x8, [sp]
	mov	x0, x20
	bl	_printf
Ltmp26:
	.loc	1 14 20 is_stmt 1               ; ./tp_utils.h:14:20
	add	x22, x22, #1
Ltmp27:
	.loc	1 14 30 is_stmt 0               ; ./tp_utils.h:14:30
	tst	x22, #0xf
Ltmp28:
	.loc	1 14 17                         ; ./tp_utils.h:14:17
	b.ne	LBB0_9
Ltmp29:
; %bb.11:                               ;   in Loop: Header=BB0_10 Depth=1
	;DEBUG_VALUE: i <- 2
	;DEBUG_VALUE: print_amx_state:state <- $x19
	.loc	1 14 36                         ; ./tp_utils.h:14:36
	mov	x0, x21
	bl	_printf
Ltmp30:
	.loc	1 0 36                          ; ./tp_utils.h:0:36
	b	LBB0_9
Ltmp31:
LBB0_12:
	;DEBUG_VALUE: i <- 2
	;DEBUG_VALUE: print_amx_state:state <- $x19
	.loc	1 16 9 is_stmt 1                ; ./tp_utils.h:16:9
	mov	w0, #10
	bl	_putchar
Ltmp32:
	;DEBUG_VALUE: i <- 3
	.loc	1 0 9 is_stmt 0                 ; ./tp_utils.h:0:9
	mov	w8, #3
	.loc	1 11 9 is_stmt 1                ; ./tp_utils.h:11:9
	str	x8, [sp]
Lloh22:
	adrp	x0, l_.str.2@PAGE
Lloh23:
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_printf
Ltmp33:
	;DEBUG_VALUE: j <- 0
	.loc	1 0 9 is_stmt 0                 ; ./tp_utils.h:0:9
	mov	x22, #0
	add	x23, x19, #192
Lloh24:
	adrp	x20, l_.str.3@PAGE
Lloh25:
	add	x20, x20, l_.str.3@PAGEOFF
Lloh26:
	adrp	x21, l_.str.4@PAGE
Lloh27:
	add	x21, x21, l_.str.4@PAGEOFF
	b	LBB0_14
Ltmp34:
LBB0_13:                                ;   in Loop: Header=BB0_14 Depth=1
	;DEBUG_VALUE: i <- 3
	;DEBUG_VALUE: print_amx_state:state <- $x19
	;DEBUG_VALUE: j <- $x22
	.loc	1 12 9 is_stmt 1                ; ./tp_utils.h:12:9
	cmp	x22, #64
	b.eq	LBB0_16
Ltmp35:
LBB0_14:                                ; =>This Inner Loop Header: Depth=1
	;DEBUG_VALUE: i <- 3
	;DEBUG_VALUE: print_amx_state:state <- $x19
	;DEBUG_VALUE: j <- $x22
	.loc	1 13 29                         ; ./tp_utils.h:13:29
	ldrb	w8, [x23, x22]
	.loc	1 13 13 is_stmt 0               ; ./tp_utils.h:13:13
	str	x8, [sp]
	mov	x0, x20
	bl	_printf
Ltmp36:
	.loc	1 14 20 is_stmt 1               ; ./tp_utils.h:14:20
	add	x22, x22, #1
Ltmp37:
	.loc	1 14 30 is_stmt 0               ; ./tp_utils.h:14:30
	tst	x22, #0xf
Ltmp38:
	.loc	1 14 17                         ; ./tp_utils.h:14:17
	b.ne	LBB0_13
Ltmp39:
; %bb.15:                               ;   in Loop: Header=BB0_14 Depth=1
	;DEBUG_VALUE: i <- 3
	;DEBUG_VALUE: print_amx_state:state <- $x19
	.loc	1 14 36                         ; ./tp_utils.h:14:36
	mov	x0, x21
	bl	_printf
Ltmp40:
	.loc	1 0 36                          ; ./tp_utils.h:0:36
	b	LBB0_13
Ltmp41:
LBB0_16:
	;DEBUG_VALUE: i <- 3
	;DEBUG_VALUE: print_amx_state:state <- $x19
	.loc	1 16 9 is_stmt 1                ; ./tp_utils.h:16:9
	mov	w0, #10
	bl	_putchar
Ltmp42:
	;DEBUG_VALUE: i <- 4
	.loc	1 0 9 is_stmt 0                 ; ./tp_utils.h:0:9
	mov	w8, #4
	.loc	1 11 9 is_stmt 1                ; ./tp_utils.h:11:9
	str	x8, [sp]
Lloh28:
	adrp	x0, l_.str.2@PAGE
Lloh29:
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_printf
Ltmp43:
	;DEBUG_VALUE: j <- 0
	.loc	1 0 9 is_stmt 0                 ; ./tp_utils.h:0:9
	mov	x22, #0
	add	x23, x19, #256
Lloh30:
	adrp	x20, l_.str.3@PAGE
Lloh31:
	add	x20, x20, l_.str.3@PAGEOFF
Lloh32:
	adrp	x21, l_.str.4@PAGE
Lloh33:
	add	x21, x21, l_.str.4@PAGEOFF
	b	LBB0_18
Ltmp44:
LBB0_17:                                ;   in Loop: Header=BB0_18 Depth=1
	;DEBUG_VALUE: i <- 4
	;DEBUG_VALUE: print_amx_state:state <- $x19
	;DEBUG_VALUE: j <- $x22
	.loc	1 12 9 is_stmt 1                ; ./tp_utils.h:12:9
	cmp	x22, #64
	b.eq	LBB0_20
Ltmp45:
LBB0_18:                                ; =>This Inner Loop Header: Depth=1
	;DEBUG_VALUE: i <- 4
	;DEBUG_VALUE: print_amx_state:state <- $x19
	;DEBUG_VALUE: j <- $x22
	.loc	1 13 29                         ; ./tp_utils.h:13:29
	ldrb	w8, [x23, x22]
	.loc	1 13 13 is_stmt 0               ; ./tp_utils.h:13:13
	str	x8, [sp]
	mov	x0, x20
	bl	_printf
Ltmp46:
	.loc	1 14 20 is_stmt 1               ; ./tp_utils.h:14:20
	add	x22, x22, #1
Ltmp47:
	.loc	1 14 30 is_stmt 0               ; ./tp_utils.h:14:30
	tst	x22, #0xf
Ltmp48:
	.loc	1 14 17                         ; ./tp_utils.h:14:17
	b.ne	LBB0_17
Ltmp49:
; %bb.19:                               ;   in Loop: Header=BB0_18 Depth=1
	;DEBUG_VALUE: i <- 4
	;DEBUG_VALUE: print_amx_state:state <- $x19
	.loc	1 14 36                         ; ./tp_utils.h:14:36
	mov	x0, x21
	bl	_printf
Ltmp50:
	.loc	1 0 36                          ; ./tp_utils.h:0:36
	b	LBB0_17
Ltmp51:
LBB0_20:
	;DEBUG_VALUE: i <- 4
	;DEBUG_VALUE: print_amx_state:state <- $x19
	.loc	1 16 9 is_stmt 1                ; ./tp_utils.h:16:9
	mov	w0, #10
	bl	_putchar
Ltmp52:
	;DEBUG_VALUE: i <- 5
	.loc	1 0 9 is_stmt 0                 ; ./tp_utils.h:0:9
	mov	w8, #5
	.loc	1 11 9 is_stmt 1                ; ./tp_utils.h:11:9
	str	x8, [sp]
Lloh34:
	adrp	x0, l_.str.2@PAGE
Lloh35:
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_printf
Ltmp53:
	;DEBUG_VALUE: j <- 0
	.loc	1 0 9 is_stmt 0                 ; ./tp_utils.h:0:9
	mov	x22, #0
	add	x23, x19, #320
Lloh36:
	adrp	x20, l_.str.3@PAGE
Lloh37:
	add	x20, x20, l_.str.3@PAGEOFF
Lloh38:
	adrp	x21, l_.str.4@PAGE
Lloh39:
	add	x21, x21, l_.str.4@PAGEOFF
	b	LBB0_22
Ltmp54:
LBB0_21:                                ;   in Loop: Header=BB0_22 Depth=1
	;DEBUG_VALUE: i <- 5
	;DEBUG_VALUE: print_amx_state:state <- $x19
	;DEBUG_VALUE: j <- $x22
	.loc	1 12 9 is_stmt 1                ; ./tp_utils.h:12:9
	cmp	x22, #64
	b.eq	LBB0_24
Ltmp55:
LBB0_22:                                ; =>This Inner Loop Header: Depth=1
	;DEBUG_VALUE: i <- 5
	;DEBUG_VALUE: print_amx_state:state <- $x19
	;DEBUG_VALUE: j <- $x22
	.loc	1 13 29                         ; ./tp_utils.h:13:29
	ldrb	w8, [x23, x22]
	.loc	1 13 13 is_stmt 0               ; ./tp_utils.h:13:13
	str	x8, [sp]
	mov	x0, x20
	bl	_printf
Ltmp56:
	.loc	1 14 20 is_stmt 1               ; ./tp_utils.h:14:20
	add	x22, x22, #1
Ltmp57:
	.loc	1 14 30 is_stmt 0               ; ./tp_utils.h:14:30
	tst	x22, #0xf
Ltmp58:
	.loc	1 14 17                         ; ./tp_utils.h:14:17
	b.ne	LBB0_21
Ltmp59:
; %bb.23:                               ;   in Loop: Header=BB0_22 Depth=1
	;DEBUG_VALUE: i <- 5
	;DEBUG_VALUE: print_amx_state:state <- $x19
	.loc	1 14 36                         ; ./tp_utils.h:14:36
	mov	x0, x21
	bl	_printf
Ltmp60:
	.loc	1 0 36                          ; ./tp_utils.h:0:36
	b	LBB0_21
Ltmp61:
LBB0_24:
	;DEBUG_VALUE: i <- 5
	;DEBUG_VALUE: print_amx_state:state <- $x19
	.loc	1 16 9 is_stmt 1                ; ./tp_utils.h:16:9
	mov	w0, #10
	bl	_putchar
Ltmp62:
	;DEBUG_VALUE: i <- 6
	.loc	1 0 9 is_stmt 0                 ; ./tp_utils.h:0:9
	mov	w8, #6
	.loc	1 11 9 is_stmt 1                ; ./tp_utils.h:11:9
	str	x8, [sp]
Lloh40:
	adrp	x0, l_.str.2@PAGE
Lloh41:
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_printf
Ltmp63:
	;DEBUG_VALUE: j <- 0
	.loc	1 0 9 is_stmt 0                 ; ./tp_utils.h:0:9
	mov	x22, #0
	add	x23, x19, #384
Lloh42:
	adrp	x20, l_.str.3@PAGE
Lloh43:
	add	x20, x20, l_.str.3@PAGEOFF
Lloh44:
	adrp	x21, l_.str.4@PAGE
Lloh45:
	add	x21, x21, l_.str.4@PAGEOFF
	b	LBB0_26
Ltmp64:
LBB0_25:                                ;   in Loop: Header=BB0_26 Depth=1
	;DEBUG_VALUE: i <- 6
	;DEBUG_VALUE: print_amx_state:state <- $x19
	;DEBUG_VALUE: j <- $x22
	.loc	1 12 9 is_stmt 1                ; ./tp_utils.h:12:9
	cmp	x22, #64
	b.eq	LBB0_28
Ltmp65:
LBB0_26:                                ; =>This Inner Loop Header: Depth=1
	;DEBUG_VALUE: i <- 6
	;DEBUG_VALUE: print_amx_state:state <- $x19
	;DEBUG_VALUE: j <- $x22
	.loc	1 13 29                         ; ./tp_utils.h:13:29
	ldrb	w8, [x23, x22]
	.loc	1 13 13 is_stmt 0               ; ./tp_utils.h:13:13
	str	x8, [sp]
	mov	x0, x20
	bl	_printf
Ltmp66:
	.loc	1 14 20 is_stmt 1               ; ./tp_utils.h:14:20
	add	x22, x22, #1
Ltmp67:
	.loc	1 14 30 is_stmt 0               ; ./tp_utils.h:14:30
	tst	x22, #0xf
Ltmp68:
	.loc	1 14 17                         ; ./tp_utils.h:14:17
	b.ne	LBB0_25
Ltmp69:
; %bb.27:                               ;   in Loop: Header=BB0_26 Depth=1
	;DEBUG_VALUE: i <- 6
	;DEBUG_VALUE: print_amx_state:state <- $x19
	.loc	1 14 36                         ; ./tp_utils.h:14:36
	mov	x0, x21
	bl	_printf
Ltmp70:
	.loc	1 0 36                          ; ./tp_utils.h:0:36
	b	LBB0_25
Ltmp71:
LBB0_28:
	;DEBUG_VALUE: i <- 6
	;DEBUG_VALUE: print_amx_state:state <- $x19
	.loc	1 16 9 is_stmt 1                ; ./tp_utils.h:16:9
	mov	w0, #10
	bl	_putchar
Ltmp72:
	;DEBUG_VALUE: i <- 7
	.loc	1 0 9 is_stmt 0                 ; ./tp_utils.h:0:9
	mov	w8, #7
	.loc	1 11 9 is_stmt 1                ; ./tp_utils.h:11:9
	str	x8, [sp]
Lloh46:
	adrp	x0, l_.str.2@PAGE
Lloh47:
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_printf
Ltmp73:
	;DEBUG_VALUE: j <- 0
	.loc	1 0 9 is_stmt 0                 ; ./tp_utils.h:0:9
	mov	x22, #0
	add	x23, x19, #448
Lloh48:
	adrp	x20, l_.str.3@PAGE
Lloh49:
	add	x20, x20, l_.str.3@PAGEOFF
Lloh50:
	adrp	x21, l_.str.4@PAGE
Lloh51:
	add	x21, x21, l_.str.4@PAGEOFF
	b	LBB0_30
Ltmp74:
LBB0_29:                                ;   in Loop: Header=BB0_30 Depth=1
	;DEBUG_VALUE: i <- 7
	;DEBUG_VALUE: print_amx_state:state <- $x19
	;DEBUG_VALUE: j <- $x22
	.loc	1 12 9 is_stmt 1                ; ./tp_utils.h:12:9
	cmp	x22, #64
	b.eq	LBB0_32
Ltmp75:
LBB0_30:                                ; =>This Inner Loop Header: Depth=1
	;DEBUG_VALUE: i <- 7
	;DEBUG_VALUE: print_amx_state:state <- $x19
	;DEBUG_VALUE: j <- $x22
	.loc	1 13 29                         ; ./tp_utils.h:13:29
	ldrb	w8, [x23, x22]
	.loc	1 13 13 is_stmt 0               ; ./tp_utils.h:13:13
	str	x8, [sp]
	mov	x0, x20
	bl	_printf
Ltmp76:
	.loc	1 14 20 is_stmt 1               ; ./tp_utils.h:14:20
	add	x22, x22, #1
Ltmp77:
	.loc	1 14 30 is_stmt 0               ; ./tp_utils.h:14:30
	tst	x22, #0xf
Ltmp78:
	.loc	1 14 17                         ; ./tp_utils.h:14:17
	b.ne	LBB0_29
Ltmp79:
; %bb.31:                               ;   in Loop: Header=BB0_30 Depth=1
	;DEBUG_VALUE: i <- 7
	;DEBUG_VALUE: print_amx_state:state <- $x19
	.loc	1 14 36                         ; ./tp_utils.h:14:36
	mov	x0, x21
	bl	_printf
Ltmp80:
	.loc	1 0 36                          ; ./tp_utils.h:0:36
	b	LBB0_29
Ltmp81:
LBB0_32:
	;DEBUG_VALUE: i <- 7
	;DEBUG_VALUE: print_amx_state:state <- $x19
	.loc	1 16 9 is_stmt 1                ; ./tp_utils.h:16:9
	mov	w0, #10
	bl	_putchar
Ltmp82:
	;DEBUG_VALUE: i <- 8
	.loc	1 20 5                          ; ./tp_utils.h:20:5
Lloh52:
	adrp	x0, l_str.15@PAGE
Lloh53:
	add	x0, x0, l_str.15@PAGEOFF
	bl	_puts
Ltmp83:
	;DEBUG_VALUE: i <- 0
	.loc	1 0 5 is_stmt 0                 ; ./tp_utils.h:0:5
	mov	x23, #0
Ltmp84:
	.loc	1 21 5 is_stmt 1                ; ./tp_utils.h:21:5
	add	x24, x19, #512
Lloh54:
	adrp	x20, l_.str.7@PAGE
Lloh55:
	add	x20, x20, l_.str.7@PAGEOFF
Lloh56:
	adrp	x21, l_.str.3@PAGE
Lloh57:
	add	x21, x21, l_.str.3@PAGEOFF
Lloh58:
	adrp	x22, l_.str.4@PAGE
Lloh59:
	add	x22, x22, l_.str.4@PAGEOFF
	b	LBB0_34
Ltmp85:
LBB0_33:                                ;   in Loop: Header=BB0_34 Depth=1
	;DEBUG_VALUE: i <- $x23
	;DEBUG_VALUE: print_amx_state:state <- $x19
	.loc	1 27 9                          ; ./tp_utils.h:27:9
	mov	w0, #10
	bl	_putchar
Ltmp86:
	.loc	1 21 29                         ; ./tp_utils.h:21:29
	add	x23, x23, #1
Ltmp87:
	;DEBUG_VALUE: i <- $x23
	.loc	1 21 5 is_stmt 0                ; ./tp_utils.h:21:5
	add	x24, x24, #64
	cmp	x23, #8
	b.eq	LBB0_38
Ltmp88:
LBB0_34:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_36 Depth 2
	;DEBUG_VALUE: print_amx_state:state <- $x19
	;DEBUG_VALUE: i <- $x23
	.loc	1 22 9 is_stmt 1                ; ./tp_utils.h:22:9
	str	x23, [sp]
	mov	x0, x20
	bl	_printf
Ltmp89:
	;DEBUG_VALUE: j <- 0
	.loc	1 0 9 is_stmt 0                 ; ./tp_utils.h:0:9
	mov	x25, #0
	b	LBB0_36
Ltmp90:
LBB0_35:                                ;   in Loop: Header=BB0_36 Depth=2
	;DEBUG_VALUE: i <- $x23
	;DEBUG_VALUE: print_amx_state:state <- $x19
	;DEBUG_VALUE: j <- $x25
	.loc	1 23 9 is_stmt 1                ; ./tp_utils.h:23:9
	cmp	x25, #64
	b.eq	LBB0_33
Ltmp91:
LBB0_36:                                ;   Parent Loop BB0_34 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	;DEBUG_VALUE: i <- $x23
	;DEBUG_VALUE: print_amx_state:state <- $x19
	;DEBUG_VALUE: j <- $x25
	.loc	1 24 29                         ; ./tp_utils.h:24:29
	ldrb	w8, [x24, x25]
	.loc	1 24 13 is_stmt 0               ; ./tp_utils.h:24:13
	str	x8, [sp]
	mov	x0, x21
	bl	_printf
Ltmp92:
	.loc	1 25 20 is_stmt 1               ; ./tp_utils.h:25:20
	add	x25, x25, #1
Ltmp93:
	.loc	1 25 30 is_stmt 0               ; ./tp_utils.h:25:30
	tst	x25, #0xf
Ltmp94:
	.loc	1 25 17                         ; ./tp_utils.h:25:17
	b.ne	LBB0_35
Ltmp95:
; %bb.37:                               ;   in Loop: Header=BB0_36 Depth=2
	;DEBUG_VALUE: i <- $x23
	;DEBUG_VALUE: print_amx_state:state <- $x19
	.loc	1 25 36                         ; ./tp_utils.h:25:36
	mov	x0, x22
	bl	_printf
Ltmp96:
	.loc	1 0 36                          ; ./tp_utils.h:0:36
	b	LBB0_35
Ltmp97:
LBB0_38:
	;DEBUG_VALUE: print_amx_state:state <- $x19
	.loc	1 31 5 is_stmt 1                ; ./tp_utils.h:31:5
Lloh60:
	adrp	x0, l_str.16@PAGE
Lloh61:
	add	x0, x0, l_str.16@PAGEOFF
	bl	_puts
Ltmp98:
	;DEBUG_VALUE: i <- 0
	.loc	1 0 5 is_stmt 0                 ; ./tp_utils.h:0:5
	mov	x22, #0
Ltmp99:
	.loc	1 32 5 is_stmt 1                ; ./tp_utils.h:32:5
	add	x23, x19, #1024
Lloh62:
	adrp	x19, l_.str.9@PAGE
Ltmp100:
	;DEBUG_VALUE: print_amx_state:state <- [DW_OP_LLVM_entry_value 1] $x0
	.loc	1 0 5 is_stmt 0                 ; ./tp_utils.h:0:5
Lloh63:
	add	x19, x19, l_.str.9@PAGEOFF
Lloh64:
	adrp	x20, l_.str.3@PAGE
Lloh65:
	add	x20, x20, l_.str.3@PAGEOFF
Lloh66:
	adrp	x21, l_.str.4@PAGE
Lloh67:
	add	x21, x21, l_.str.4@PAGEOFF
	b	LBB0_40
Ltmp101:
LBB0_39:                                ;   in Loop: Header=BB0_40 Depth=1
	;DEBUG_VALUE: i <- $x22
	;DEBUG_VALUE: print_amx_state:state <- [DW_OP_LLVM_entry_value 1] $x0
	.loc	1 38 9 is_stmt 1                ; ./tp_utils.h:38:9
	mov	w0, #10
	bl	_putchar
Ltmp102:
	.loc	1 32 30                         ; ./tp_utils.h:32:30
	add	x22, x22, #1
Ltmp103:
	;DEBUG_VALUE: i <- $x22
	.loc	1 32 5 is_stmt 0                ; ./tp_utils.h:32:5
	add	x23, x23, #64
	cmp	x22, #64
	b.eq	LBB0_44
Ltmp104:
LBB0_40:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_42 Depth 2
	;DEBUG_VALUE: print_amx_state:state <- [DW_OP_LLVM_entry_value 1] $x0
	;DEBUG_VALUE: i <- $x22
	.loc	1 33 9 is_stmt 1                ; ./tp_utils.h:33:9
	str	x22, [sp]
	mov	x0, x19
	bl	_printf
Ltmp105:
	;DEBUG_VALUE: j <- 0
	.loc	1 0 9 is_stmt 0                 ; ./tp_utils.h:0:9
	mov	x24, #0
	b	LBB0_42
Ltmp106:
LBB0_41:                                ;   in Loop: Header=BB0_42 Depth=2
	;DEBUG_VALUE: i <- $x22
	;DEBUG_VALUE: print_amx_state:state <- [DW_OP_LLVM_entry_value 1] $x0
	;DEBUG_VALUE: j <- $x24
	.loc	1 34 9 is_stmt 1                ; ./tp_utils.h:34:9
	cmp	x24, #64
	b.eq	LBB0_39
Ltmp107:
LBB0_42:                                ;   Parent Loop BB0_40 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	;DEBUG_VALUE: i <- $x22
	;DEBUG_VALUE: print_amx_state:state <- [DW_OP_LLVM_entry_value 1] $x0
	;DEBUG_VALUE: j <- $x24
	.loc	1 35 29                         ; ./tp_utils.h:35:29
	ldrb	w8, [x23, x24]
	.loc	1 35 13 is_stmt 0               ; ./tp_utils.h:35:13
	str	x8, [sp]
	mov	x0, x20
	bl	_printf
Ltmp108:
	.loc	1 36 20 is_stmt 1               ; ./tp_utils.h:36:20
	add	x24, x24, #1
Ltmp109:
	.loc	1 36 30 is_stmt 0               ; ./tp_utils.h:36:30
	tst	x24, #0xf
Ltmp110:
	.loc	1 36 17                         ; ./tp_utils.h:36:17
	b.ne	LBB0_41
Ltmp111:
; %bb.43:                               ;   in Loop: Header=BB0_42 Depth=2
	;DEBUG_VALUE: i <- $x22
	;DEBUG_VALUE: print_amx_state:state <- [DW_OP_LLVM_entry_value 1] $x0
	.loc	1 36 36                         ; ./tp_utils.h:36:36
	mov	x0, x21
	bl	_printf
Ltmp112:
	.loc	1 0 36                          ; ./tp_utils.h:0:36
	b	LBB0_41
Ltmp113:
LBB0_44:
	;DEBUG_VALUE: print_amx_state:state <- [DW_OP_LLVM_entry_value 1] $x0
	.loc	1 40 1 is_stmt 1                ; ./tp_utils.h:40:1
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
Ltmp114:
	.loh AdrpAdd	Lloh8, Lloh9
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpAdd	Lloh0, Lloh1
	.loh AdrpAdd	Lloh14, Lloh15
	.loh AdrpAdd	Lloh12, Lloh13
	.loh AdrpAdd	Lloh10, Lloh11
	.loh AdrpAdd	Lloh20, Lloh21
	.loh AdrpAdd	Lloh18, Lloh19
	.loh AdrpAdd	Lloh16, Lloh17
	.loh AdrpAdd	Lloh26, Lloh27
	.loh AdrpAdd	Lloh24, Lloh25
	.loh AdrpAdd	Lloh22, Lloh23
	.loh AdrpAdd	Lloh32, Lloh33
	.loh AdrpAdd	Lloh30, Lloh31
	.loh AdrpAdd	Lloh28, Lloh29
	.loh AdrpAdd	Lloh38, Lloh39
	.loh AdrpAdd	Lloh36, Lloh37
	.loh AdrpAdd	Lloh34, Lloh35
	.loh AdrpAdd	Lloh44, Lloh45
	.loh AdrpAdd	Lloh42, Lloh43
	.loh AdrpAdd	Lloh40, Lloh41
	.loh AdrpAdd	Lloh50, Lloh51
	.loh AdrpAdd	Lloh48, Lloh49
	.loh AdrpAdd	Lloh46, Lloh47
	.loh AdrpAdd	Lloh58, Lloh59
	.loh AdrpAdd	Lloh56, Lloh57
	.loh AdrpAdd	Lloh54, Lloh55
	.loh AdrpAdd	Lloh52, Lloh53
	.loh AdrpAdd	Lloh66, Lloh67
	.loh AdrpAdd	Lloh64, Lloh65
	.loh AdrpAdd	Lloh62, Lloh63
	.loh AdrpAdd	Lloh60, Lloh61
Lfunc_end0:
	.cfi_endproc
                                        ; -- End function
	.globl	_print_matrix                   ; -- Begin function print_matrix
	.p2align	2
_print_matrix:                          ; @print_matrix
Lfunc_begin1:
	.loc	1 42 0                          ; ./tp_utils.h:42:0
	.cfi_startproc
; %bb.0:
	;DEBUG_VALUE: print_matrix:original_matrix <- $x0
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x24, x23, [sp, #16]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #32]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	mov	x19, x0
	;DEBUG_VALUE: i <- 0
Ltmp115:
	;DEBUG_VALUE: print_matrix:original_matrix <- $x19
	mov	x23, #0
Lloh68:
	adrp	x20, l_.str.10@PAGE
Lloh69:
	add	x20, x20, l_.str.10@PAGEOFF
Lloh70:
	adrp	x21, l_.str.3@PAGE
Lloh71:
	add	x21, x21, l_.str.3@PAGEOFF
Lloh72:
	adrp	x22, l_.str.4@PAGE
Lloh73:
	add	x22, x22, l_.str.4@PAGEOFF
	b	LBB1_2
Ltmp116:
LBB1_1:                                 ;   in Loop: Header=BB1_2 Depth=1
	;DEBUG_VALUE: i <- $x23
	.loc	1 49 9 prologue_end             ; ./tp_utils.h:49:9
	mov	w0, #10
	bl	_putchar
Ltmp117:
	.loc	1 43 30                         ; ./tp_utils.h:43:30
	add	x23, x23, #1
Ltmp118:
	;DEBUG_VALUE: i <- $x23
	.loc	1 43 5 is_stmt 0                ; ./tp_utils.h:43:5
	add	x19, x19, #64
Ltmp119:
	;DEBUG_VALUE: print_matrix:original_matrix <- [DW_OP_LLVM_entry_value 1] $x0
	cmp	x23, #64
	b.eq	LBB1_6
Ltmp120:
LBB1_2:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_4 Depth 2
	;DEBUG_VALUE: i <- $x23
	.loc	1 44 9 is_stmt 1                ; ./tp_utils.h:44:9
	str	x23, [sp]
	mov	x0, x20
	bl	_printf
Ltmp121:
	;DEBUG_VALUE: j <- 0
	.loc	1 0 9 is_stmt 0                 ; ./tp_utils.h:0:9
	mov	x24, #0
	b	LBB1_4
Ltmp122:
LBB1_3:                                 ;   in Loop: Header=BB1_4 Depth=2
	;DEBUG_VALUE: i <- $x23
	;DEBUG_VALUE: j <- $x24
	.loc	1 45 9 is_stmt 1                ; ./tp_utils.h:45:9
	cmp	x24, #64
	b.eq	LBB1_1
Ltmp123:
LBB1_4:                                 ;   Parent Loop BB1_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	;DEBUG_VALUE: i <- $x23
	;DEBUG_VALUE: j <- $x24
	.loc	1 46 29                         ; ./tp_utils.h:46:29
	ldrb	w8, [x19, x24]
	.loc	1 46 13 is_stmt 0               ; ./tp_utils.h:46:13
	str	x8, [sp]
	mov	x0, x21
	bl	_printf
Ltmp124:
	.loc	1 47 20 is_stmt 1               ; ./tp_utils.h:47:20
	add	x24, x24, #1
Ltmp125:
	.loc	1 47 30 is_stmt 0               ; ./tp_utils.h:47:30
	tst	x24, #0xf
Ltmp126:
	.loc	1 47 17                         ; ./tp_utils.h:47:17
	b.ne	LBB1_3
Ltmp127:
; %bb.5:                                ;   in Loop: Header=BB1_4 Depth=2
	;DEBUG_VALUE: i <- $x23
	.loc	1 47 36                         ; ./tp_utils.h:47:36
	mov	x0, x22
	bl	_printf
Ltmp128:
	.loc	1 0 36                          ; ./tp_utils.h:0:36
	b	LBB1_3
Ltmp129:
LBB1_6:
	.loc	1 51 1 is_stmt 1                ; ./tp_utils.h:51:1
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
Ltmp130:
	.loh AdrpAdd	Lloh72, Lloh73
	.loh AdrpAdd	Lloh70, Lloh71
	.loh AdrpAdd	Lloh68, Lloh69
Lfunc_end1:
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
Lfunc_begin2:
	.loc	2 141 0                         ; transpose.c:141:0
	.cfi_startproc
; %bb.0:
	stp	x28, x27, [sp, #-64]!           ; 16-byte Folded Spill
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
	.cfi_offset w27, -56
	.cfi_offset w28, -64
	sub	x9, sp, #704
	and	sp, x9, #0xffffffffffffff00
Lloh74:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh75:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh76:
	ldr	x8, [x8]
	str	x8, [sp, #696]
	mov	w8, #2
Ltmp131:
	.loc	2 132 13 prologue_end           ; transpose.c:132:13
	strb	w8, [sp, #320]
	mov	w8, #1
	.loc	2 133 14                        ; transpose.c:133:14
	strb	w8, [sp, #384]
	.loc	2 134 5                         ; transpose.c:134:5
	; InlineAsm Start
	nop
	nop
	nop
	.long	2101792
	; InlineAsm End
	mov	x8, #8070450532247928832
	add	x9, sp, #256
	.loc	2 135 5                         ; transpose.c:135:5
	add	x8, x9, x8
	; InlineAsm Start
	.long	2101256
	; InlineAsm End
	mov	x8, #144115188075855872
	.loc	2 136 5                         ; transpose.c:136:5
	add	x8, x9, x8
	; InlineAsm Start
	.long	2101320
	; InlineAsm End
	.loc	2 137 5                         ; transpose.c:137:5
	; InlineAsm Start
	nop
	nop
	nop
	.long	2101793
	; InlineAsm End
	.loc	2 138 16                        ; transpose.c:138:16
	ldrb	w8, [sp, #256]
	.loc	2 138 14 is_stmt 0              ; transpose.c:138:14
	add	w8, w8, #1
Ltmp132:
	.loc	2 142 13 is_stmt 1              ; transpose.c:142:13
Lloh77:
	adrp	x9, _AMX_VER@GOTPAGE
Lloh78:
	ldr	x9, [x9, _AMX_VER@GOTPAGEOFF]
Lloh79:
	str	w8, [x9]
Ltmp133:
	.loc	2 118 5                         ; transpose.c:118:5
	; InlineAsm Start
	mrs	x22, FPCR
	; InlineAsm End
Ltmp134:
	;DEBUG_VALUE: main:old_fpcr <- $x22
	;DEBUG_VALUE: fpcr_init:old_fpcr <- $x22
	.loc	2 119 34                        ; transpose.c:119:34
	orr	x8, x22, #0x2000000
Ltmp135:
	;DEBUG_VALUE: fpcr_init:new_fpcr <- $x8
	.loc	2 120 5                         ; transpose.c:120:5
	; InlineAsm Start
	msr	FPCR, x8
	; InlineAsm End
Ltmp136:
	.loc	2 22 43                         ; transpose.c:22:43
	mov	w0, #128
	mov	w1, #4096
	bl	_aligned_alloc
Ltmp137:
	mov	x21, x0
Ltmp138:
	;DEBUG_VALUE: transpose:original_matrix <- $x21
	.loc	2 23 45                         ; transpose.c:23:45
	mov	w0, #128
	mov	w1, #4096
	bl	_aligned_alloc
Ltmp139:
	;DEBUG_VALUE: transpose:transposed_matrix <- $x0
	.loc	2 24 9                          ; transpose.c:24:9
	cbz	x21, LBB2_8
Ltmp140:
; %bb.1:
	;DEBUG_VALUE: transpose:transposed_matrix <- $x0
	;DEBUG_VALUE: transpose:original_matrix <- $x21
	;DEBUG_VALUE: fpcr_init:old_fpcr <- $x22
	;DEBUG_VALUE: main:old_fpcr <- $x22
	.loc	2 0 9 is_stmt 0                 ; transpose.c:0:9
	mov	x20, x0
Ltmp141:
	;DEBUG_VALUE: transpose:transposed_matrix <- $x20
	mov	x8, #0
	mov	x9, x21
Ltmp142:
LBB2_2:                                 ; =>This Inner Loop Header: Depth=1
	;DEBUG_VALUE: transpose:transposed_matrix <- $x20
	;DEBUG_VALUE: transpose:original_matrix <- $x21
	;DEBUG_VALUE: main:old_fpcr <- $x22
	;DEBUG_VALUE: i <- [DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 32 7, DW_OP_stack_value] $x8
	;DEBUG_VALUE: j <- 0
	.loc	2 31 41 is_stmt 1               ; transpose.c:31:41
	dup.16b	v0, w8
	stp	q0, q0, [x9, #32]
	stp	q0, q0, [x9], #64
Ltmp143:
	;DEBUG_VALUE: j <- [DW_OP_plus_uconst 1, DW_OP_stack_value] undef
	.loc	2 29 5                          ; transpose.c:29:5
	add	x8, x8, #1
Ltmp144:
	;DEBUG_VALUE: i <- [DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 32 7, DW_OP_stack_value] $x8
	cmp	x8, #64
	b.ne	LBB2_2
Ltmp145:
; %bb.3:
	;DEBUG_VALUE: transpose:transposed_matrix <- $x20
	;DEBUG_VALUE: transpose:original_matrix <- $x21
	;DEBUG_VALUE: main:old_fpcr <- $x22
	;DEBUG_VALUE: transpose:extrv_operand <- 67109888
	.loc	2 67 5                          ; transpose.c:67:5
	; InlineAsm Start
	nop
	nop
	nop
	.long	2101792
	; InlineAsm End
	.loc	2 78 13                         ; transpose.c:78:13
	bl	_clock
Ltmp146:
	mov	x19, x0
Ltmp147:
	;DEBUG_VALUE: transpose:start <- $x19
	.loc	2 0 13 is_stmt 0                ; transpose.c:0:13
	mov	x8, #4611686018427387904
Ltmp148:
	;DEBUG_VALUE: transpose:row <- 0
	.loc	2 81 5 is_stmt 1                ; transpose.c:81:5
	add	x8, x21, x8
	mov	x9, #-2
	mov	x10, #128
	movk	x10, #512, lsl #48
Ltmp149:
LBB2_4:                                 ; =>This Inner Loop Header: Depth=1
	;DEBUG_VALUE: transpose:start <- $x19
	;DEBUG_VALUE: transpose:extrv_operand <- 67109888
	;DEBUG_VALUE: transpose:transposed_matrix <- $x20
	;DEBUG_VALUE: transpose:original_matrix <- $x21
	;DEBUG_VALUE: main:old_fpcr <- $x22
	;DEBUG_VALUE: transpose:row <- [DW_OP_LLVM_arg 0, DW_OP_consts 4611686018427387904, DW_OP_LLVM_arg 0, DW_OP_LLVM_convert 64 7, DW_OP_plus, DW_OP_minus, DW_OP_consts 144115188075856000, DW_OP_div, DW_OP_consts 2, DW_OP_mul, DW_OP_stack_value] undef
	.loc	2 82 9                          ; transpose.c:82:9
	; InlineAsm Start
	.long	2101384
	; InlineAsm End
Ltmp150:
	;DEBUG_VALUE: transpose:row <- [DW_OP_LLVM_arg 0, DW_OP_consts 4611686018427387904, DW_OP_LLVM_arg 0, DW_OP_LLVM_convert 64 7, DW_OP_plus, DW_OP_minus, DW_OP_consts 144115188075856000, DW_OP_div, DW_OP_consts 2, DW_OP_mul, DW_OP_consts 2, DW_OP_plus, DW_OP_stack_value] undef
	.loc	2 81 16                         ; transpose.c:81:16
	add	x8, x8, x10
	add	x9, x9, #2
Ltmp151:
	.loc	2 81 5 is_stmt 0                ; transpose.c:81:5
	cmp	x9, #62
	b.lo	LBB2_4
Ltmp152:
; %bb.5:
	;DEBUG_VALUE: transpose:start <- $x19
	;DEBUG_VALUE: transpose:extrv_operand <- 67109888
	;DEBUG_VALUE: transpose:transposed_matrix <- $x20
	;DEBUG_VALUE: transpose:original_matrix <- $x21
	;DEBUG_VALUE: main:old_fpcr <- $x22
	.loc	2 0 5                           ; transpose.c:0:5
	mov	x8, #0
	mov	x9, #4611686018427387904
Ltmp153:
	.loc	2 86 5 is_stmt 1                ; transpose.c:86:5
	add	x9, x20, x9
	mov	x10, #-2
	mov	w12, #67109888
	mov	w11, #64
	movk	w11, #16, lsl #16
Ltmp154:
LBB2_6:                                 ; =>This Inner Loop Header: Depth=1
	;DEBUG_VALUE: transpose:start <- $x19
	;DEBUG_VALUE: transpose:transposed_matrix <- $x20
	;DEBUG_VALUE: transpose:original_matrix <- $x21
	;DEBUG_VALUE: main:old_fpcr <- $x22
	;DEBUG_VALUE: transpose:extrv_operand <- $x12
	;DEBUG_VALUE: transpose:col <- [DW_OP_plus_uconst 2, DW_OP_stack_value] $x10
	.loc	2 87 23                         ; transpose.c:87:23
	and	x12, x12, #0xfffffffffc0fffff
Ltmp155:
	;DEBUG_VALUE: transpose:extrv_operand <- $x12
	.loc	2 88 23                         ; transpose.c:88:23
	orr	x12, x12, x8
Ltmp156:
	;DEBUG_VALUE: transpose:extrv_operand <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 0, DW_OP_consts 18446744073709551614, DW_OP_minus, DW_OP_consts 2, DW_OP_div, DW_OP_consts 2097152, DW_OP_mul, DW_OP_or, DW_OP_stack_value] undef
	.loc	2 90 9                          ; transpose.c:90:9
	; InlineAsm Start
	.long	2101548
	; InlineAsm End
Ltmp157:
	;DEBUG_VALUE: transpose:extrv_operand <- undef
	.loc	2 94 23                         ; transpose.c:94:23
	orr	x12, x12, x11
Ltmp158:
	;DEBUG_VALUE: transpose:extrv_operand <- $x12
	.loc	2 95 9                          ; transpose.c:95:9
	; InlineAsm Start
	.long	2101548
	; InlineAsm End
	.loc	2 96 9                          ; transpose.c:96:9
	; InlineAsm Start
	.long	2101353
	; InlineAsm End
Ltmp159:
	;DEBUG_VALUE: transpose:col <- [DW_OP_plus_uconst 4, DW_OP_stack_value] $x10
	.loc	2 86 16                         ; transpose.c:86:16
	add	x10, x10, #2
Ltmp160:
	add	x9, x9, #128
	add	x8, x8, #512, lsl #12           ; =2097152
Ltmp161:
	.loc	2 86 5 is_stmt 0                ; transpose.c:86:5
	cmp	x10, #62
	b.lo	LBB2_6
Ltmp162:
; %bb.7:
	;DEBUG_VALUE: transpose:extrv_operand <- $x12
	;DEBUG_VALUE: transpose:start <- $x19
	;DEBUG_VALUE: transpose:transposed_matrix <- $x20
	;DEBUG_VALUE: transpose:original_matrix <- $x21
	;DEBUG_VALUE: main:old_fpcr <- $x22
	.loc	2 99 11 is_stmt 1               ; transpose.c:99:11
	bl	_clock
Ltmp163:
	;DEBUG_VALUE: transpose:end <- $x0
	.loc	2 100 36                        ; transpose.c:100:36
	sub	x8, x0, x19
	.loc	2 100 22 is_stmt 0              ; transpose.c:100:22
	ucvtf	d0, x8
	mov	x8, #145685290680320
	movk	x8, #16686, lsl #48
	fmov	d1, x8
	.loc	2 100 46                        ; transpose.c:100:46
	fdiv	d0, d0, d1
Ltmp164:
	;DEBUG_VALUE: transpose:cpu_time_used <- $d0
	.loc	2 101 5 is_stmt 1               ; transpose.c:101:5
	str	d0, [sp]
Lloh80:
	adrp	x0, l_.str.13@PAGE
Ltmp165:
Lloh81:
	add	x0, x0, l_.str.13@PAGEOFF
	bl	_printf
Ltmp166:
	.loc	2 0 5 is_stmt 0                 ; transpose.c:0:5
	b	LBB2_9
Ltmp167:
LBB2_8:
	;DEBUG_VALUE: transpose:transposed_matrix <- $x0
	;DEBUG_VALUE: transpose:original_matrix <- $x21
	;DEBUG_VALUE: main:old_fpcr <- $x22
	.loc	2 25 17 is_stmt 1               ; transpose.c:25:17
Lloh82:
	adrp	x8, ___stderrp@GOTPAGE
Lloh83:
	ldr	x8, [x8, ___stderrp@GOTPAGEOFF]
Lloh84:
	ldr	x3, [x8]
	.loc	2 25 9 is_stmt 0                ; transpose.c:25:9
Lloh85:
	adrp	x0, l_.str.12@PAGE
Ltmp168:
Lloh86:
	add	x0, x0, l_.str.12@PAGEOFF
	mov	w1, #25
	mov	w2, #1
	bl	_fwrite
Ltmp169:
LBB2_9:
	;DEBUG_VALUE: main:old_fpcr <- $x22
	;DEBUG_VALUE: fpcr_restore:fpcr <- $x22
	.loc	2 125 5 is_stmt 1               ; transpose.c:125:5
	; InlineAsm Start
	msr	FPCR, x22
	; InlineAsm End
	ldr	x8, [sp, #696]
Lloh87:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh88:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh89:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB2_11
Ltmp170:
; %bb.10:
	;DEBUG_VALUE: main:old_fpcr <- $x22
	.loc	2 146 5                         ; transpose.c:146:5
	mov	w0, #0
	sub	sp, x29, #48
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
Ltmp171:
	ldp	x28, x27, [sp], #64             ; 16-byte Folded Reload
	ret
Ltmp172:
LBB2_11:
	;DEBUG_VALUE: fpcr_restore:fpcr <- $x22
	;DEBUG_VALUE: main:old_fpcr <- $x22
	.loc	2 0 5 is_stmt 0                 ; transpose.c:0:5
	bl	___stack_chk_fail
Ltmp173:
	.loh AdrpLdrGotStr	Lloh77, Lloh78, Lloh79
	.loh AdrpLdrGotLdr	Lloh74, Lloh75, Lloh76
	.loh AdrpAdd	Lloh80, Lloh81
	.loh AdrpAdd	Lloh85, Lloh86
	.loh AdrpLdrGotLdr	Lloh82, Lloh83, Lloh84
	.loh AdrpLdrGotLdr	Lloh87, Lloh88, Lloh89
Lfunc_end2:
	.cfi_endproc
	.file	8 "/Users/tarindujayatilaka/Documents/superopt/apple-amx" "./emulate.h"
	.file	9 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types" "_uint16_t.h"
	.file	10 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types" "_int8_t.h"
	.file	11 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types" "_int16_t.h"
	.file	12 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types" "_int32_t.h"
	.file	13 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include" "time.h"
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str.2:                               ; @.str.2
	.asciz	"X%d: "

l_.str.3:                               ; @.str.3
	.asciz	"%02d "

l_.str.4:                               ; @.str.4
	.asciz	"\n    "

l_.str.7:                               ; @.str.7
	.asciz	"Y%d: "

l_.str.9:                               ; @.str.9
	.asciz	"Z%d: "

l_.str.10:                              ; @.str.10
	.asciz	"Row %d: "

	.comm	_AMX_VER,4,2                    ; @AMX_VER
l_.str.12:                              ; @.str.12
	.asciz	"Memory allocation failed\n"

l_.str.13:                              ; @.str.13
	.asciz	"Time taken: %f seconds\n"

l_str:                                  ; @str
	.asciz	"AMX State:"

l_str.14:                               ; @str.14
	.asciz	"X Registers:"

l_str.15:                               ; @str.15
	.asciz	"Y Registers:"

l_str.16:                               ; @str.16
	.asciz	"Z Registers:"

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
.set Lset3, Ltmp100-Lfunc_begin0
	.quad	Lset3
	.short	1                               ; Loc expr size
	.byte	99                              ; DW_OP_reg19
.set Lset4, Ltmp100-Lfunc_begin0
	.quad	Lset4
.set Lset5, Lfunc_end0-Lfunc_begin0
	.quad	Lset5
	.short	4                               ; Loc expr size
	.byte	163                             ; DW_OP_entry_value
	.byte	1                               ; 1
	.byte	80                              ; DW_OP_reg0
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc1:
.set Lset6, Ltmp2-Lfunc_begin0
	.quad	Lset6
.set Lset7, Ltmp12-Lfunc_begin0
	.quad	Lset7
	.short	3                               ; Loc expr size
	.byte	17                              ; DW_OP_consts
	.byte	0                               ; 0
	.byte	159                             ; DW_OP_stack_value
.set Lset8, Ltmp12-Lfunc_begin0
	.quad	Lset8
.set Lset9, Ltmp22-Lfunc_begin0
	.quad	Lset9
	.short	3                               ; Loc expr size
	.byte	17                              ; DW_OP_consts
	.byte	1                               ; 1
	.byte	159                             ; DW_OP_stack_value
.set Lset10, Ltmp22-Lfunc_begin0
	.quad	Lset10
.set Lset11, Ltmp32-Lfunc_begin0
	.quad	Lset11
	.short	3                               ; Loc expr size
	.byte	17                              ; DW_OP_consts
	.byte	2                               ; 2
	.byte	159                             ; DW_OP_stack_value
.set Lset12, Ltmp32-Lfunc_begin0
	.quad	Lset12
.set Lset13, Ltmp42-Lfunc_begin0
	.quad	Lset13
	.short	3                               ; Loc expr size
	.byte	17                              ; DW_OP_consts
	.byte	3                               ; 3
	.byte	159                             ; DW_OP_stack_value
.set Lset14, Ltmp42-Lfunc_begin0
	.quad	Lset14
.set Lset15, Ltmp52-Lfunc_begin0
	.quad	Lset15
	.short	3                               ; Loc expr size
	.byte	17                              ; DW_OP_consts
	.byte	4                               ; 4
	.byte	159                             ; DW_OP_stack_value
.set Lset16, Ltmp52-Lfunc_begin0
	.quad	Lset16
.set Lset17, Ltmp62-Lfunc_begin0
	.quad	Lset17
	.short	3                               ; Loc expr size
	.byte	17                              ; DW_OP_consts
	.byte	5                               ; 5
	.byte	159                             ; DW_OP_stack_value
.set Lset18, Ltmp62-Lfunc_begin0
	.quad	Lset18
.set Lset19, Ltmp72-Lfunc_begin0
	.quad	Lset19
	.short	3                               ; Loc expr size
	.byte	17                              ; DW_OP_consts
	.byte	6                               ; 6
	.byte	159                             ; DW_OP_stack_value
.set Lset20, Ltmp72-Lfunc_begin0
	.quad	Lset20
.set Lset21, Ltmp82-Lfunc_begin0
	.quad	Lset21
	.short	3                               ; Loc expr size
	.byte	17                              ; DW_OP_consts
	.byte	7                               ; 7
	.byte	159                             ; DW_OP_stack_value
.set Lset22, Ltmp82-Lfunc_begin0
	.quad	Lset22
.set Lset23, Ltmp85-Lfunc_begin0
	.quad	Lset23
	.short	3                               ; Loc expr size
	.byte	17                              ; DW_OP_consts
	.byte	8                               ; 8
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc2:
.set Lset24, Ltmp4-Lfunc_begin0
	.quad	Lset24
.set Lset25, Ltmp7-Lfunc_begin0
	.quad	Lset25
	.short	1                               ; Loc expr size
	.byte	102                             ; DW_OP_reg22
.set Lset26, Ltmp14-Lfunc_begin0
	.quad	Lset26
.set Lset27, Ltmp17-Lfunc_begin0
	.quad	Lset27
	.short	1                               ; Loc expr size
	.byte	102                             ; DW_OP_reg22
.set Lset28, Ltmp24-Lfunc_begin0
	.quad	Lset28
.set Lset29, Ltmp27-Lfunc_begin0
	.quad	Lset29
	.short	1                               ; Loc expr size
	.byte	102                             ; DW_OP_reg22
.set Lset30, Ltmp34-Lfunc_begin0
	.quad	Lset30
.set Lset31, Ltmp37-Lfunc_begin0
	.quad	Lset31
	.short	1                               ; Loc expr size
	.byte	102                             ; DW_OP_reg22
.set Lset32, Ltmp44-Lfunc_begin0
	.quad	Lset32
.set Lset33, Ltmp47-Lfunc_begin0
	.quad	Lset33
	.short	1                               ; Loc expr size
	.byte	102                             ; DW_OP_reg22
.set Lset34, Ltmp54-Lfunc_begin0
	.quad	Lset34
.set Lset35, Ltmp57-Lfunc_begin0
	.quad	Lset35
	.short	1                               ; Loc expr size
	.byte	102                             ; DW_OP_reg22
.set Lset36, Ltmp64-Lfunc_begin0
	.quad	Lset36
.set Lset37, Ltmp67-Lfunc_begin0
	.quad	Lset37
	.short	1                               ; Loc expr size
	.byte	102                             ; DW_OP_reg22
.set Lset38, Ltmp74-Lfunc_begin0
	.quad	Lset38
.set Lset39, Ltmp77-Lfunc_begin0
	.quad	Lset39
	.short	1                               ; Loc expr size
	.byte	102                             ; DW_OP_reg22
	.quad	0
	.quad	0
Ldebug_loc3:
.set Lset40, Ltmp83-Lfunc_begin0
	.quad	Lset40
.set Lset41, Ltmp85-Lfunc_begin0
	.quad	Lset41
	.short	3                               ; Loc expr size
	.byte	17                              ; DW_OP_consts
	.byte	0                               ; 0
	.byte	159                             ; DW_OP_stack_value
.set Lset42, Ltmp85-Lfunc_begin0
	.quad	Lset42
.set Lset43, Ltmp97-Lfunc_begin0
	.quad	Lset43
	.short	1                               ; Loc expr size
	.byte	103                             ; DW_OP_reg23
	.quad	0
	.quad	0
Ldebug_loc4:
.set Lset44, Ltmp90-Lfunc_begin0
	.quad	Lset44
.set Lset45, Ltmp93-Lfunc_begin0
	.quad	Lset45
	.short	1                               ; Loc expr size
	.byte	105                             ; DW_OP_reg25
	.quad	0
	.quad	0
Ldebug_loc5:
.set Lset46, Ltmp98-Lfunc_begin0
	.quad	Lset46
.set Lset47, Ltmp101-Lfunc_begin0
	.quad	Lset47
	.short	3                               ; Loc expr size
	.byte	17                              ; DW_OP_consts
	.byte	0                               ; 0
	.byte	159                             ; DW_OP_stack_value
.set Lset48, Ltmp101-Lfunc_begin0
	.quad	Lset48
.set Lset49, Ltmp113-Lfunc_begin0
	.quad	Lset49
	.short	1                               ; Loc expr size
	.byte	102                             ; DW_OP_reg22
	.quad	0
	.quad	0
Ldebug_loc6:
.set Lset50, Ltmp106-Lfunc_begin0
	.quad	Lset50
.set Lset51, Ltmp109-Lfunc_begin0
	.quad	Lset51
	.short	1                               ; Loc expr size
	.byte	104                             ; DW_OP_reg24
	.quad	0
	.quad	0
Ldebug_loc7:
.set Lset52, Lfunc_begin1-Lfunc_begin0
	.quad	Lset52
.set Lset53, Ltmp115-Lfunc_begin0
	.quad	Lset53
	.short	1                               ; Loc expr size
	.byte	80                              ; DW_OP_reg0
.set Lset54, Ltmp115-Lfunc_begin0
	.quad	Lset54
.set Lset55, Ltmp116-Lfunc_begin0
	.quad	Lset55
	.short	1                               ; Loc expr size
	.byte	99                              ; DW_OP_reg19
.set Lset56, Ltmp119-Lfunc_begin0
	.quad	Lset56
.set Lset57, Ltmp120-Lfunc_begin0
	.quad	Lset57
	.short	4                               ; Loc expr size
	.byte	163                             ; DW_OP_entry_value
	.byte	1                               ; 1
	.byte	80                              ; DW_OP_reg0
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc8:
.set Lset58, Ltmp122-Lfunc_begin0
	.quad	Lset58
.set Lset59, Ltmp125-Lfunc_begin0
	.quad	Lset59
	.short	1                               ; Loc expr size
	.byte	104                             ; DW_OP_reg24
	.quad	0
	.quad	0
Ldebug_loc9:
.set Lset60, Ltmp134-Lfunc_begin0
	.quad	Lset60
.set Lset61, Ltmp171-Lfunc_begin0
	.quad	Lset61
	.short	1                               ; Loc expr size
	.byte	102                             ; DW_OP_reg22
.set Lset62, Ltmp172-Lfunc_begin0
	.quad	Lset62
.set Lset63, Lfunc_end2-Lfunc_begin0
	.quad	Lset63
	.short	1                               ; Loc expr size
	.byte	102                             ; DW_OP_reg22
	.quad	0
	.quad	0
Ldebug_loc10:
.set Lset64, Ltmp134-Lfunc_begin0
	.quad	Lset64
.set Lset65, Ltmp140-Lfunc_begin0
	.quad	Lset65
	.short	1                               ; Loc expr size
	.byte	102                             ; DW_OP_reg22
	.quad	0
	.quad	0
Ldebug_loc11:
.set Lset66, Ltmp135-Lfunc_begin0
	.quad	Lset66
.set Lset67, Ltmp137-Lfunc_begin0
	.quad	Lset67
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
	.quad	0
	.quad	0
Ldebug_loc12:
.set Lset68, Ltmp138-Lfunc_begin0
	.quad	Lset68
.set Lset69, Ltmp169-Lfunc_begin0
	.quad	Lset69
	.short	1                               ; Loc expr size
	.byte	101                             ; DW_OP_reg21
	.quad	0
	.quad	0
Ldebug_loc13:
.set Lset70, Ltmp139-Lfunc_begin0
	.quad	Lset70
.set Lset71, Ltmp141-Lfunc_begin0
	.quad	Lset71
	.short	1                               ; Loc expr size
	.byte	80                              ; DW_OP_reg0
.set Lset72, Ltmp141-Lfunc_begin0
	.quad	Lset72
.set Lset73, Ltmp167-Lfunc_begin0
	.quad	Lset73
	.short	1                               ; Loc expr size
	.byte	100                             ; DW_OP_reg20
.set Lset74, Ltmp167-Lfunc_begin0
	.quad	Lset74
.set Lset75, Ltmp168-Lfunc_begin0
	.quad	Lset75
	.short	1                               ; Loc expr size
	.byte	80                              ; DW_OP_reg0
	.quad	0
	.quad	0
Ldebug_loc14:
.set Lset76, Ltmp142-Lfunc_begin0
	.quad	Lset76
.set Lset77, Ltmp143-Lfunc_begin0
	.quad	Lset77
	.short	3                               ; Loc expr size
	.byte	17                              ; DW_OP_consts
	.byte	0                               ; 0
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc15:
.set Lset78, Ltmp145-Lfunc_begin0
	.quad	Lset78
.set Lset79, Ltmp154-Lfunc_begin0
	.quad	Lset79
	.short	6                               ; Loc expr size
	.byte	16                              ; DW_OP_constu
	.byte	128                             ; 67109888
	.byte	136                             ; 
	.byte	128                             ; 
	.byte	32                              ; 
	.byte	159                             ; DW_OP_stack_value
.set Lset80, Ltmp154-Lfunc_begin0
	.quad	Lset80
.set Lset81, Ltmp156-Lfunc_begin0
	.quad	Lset81
	.short	1                               ; Loc expr size
	.byte	92                              ; DW_OP_reg12
.set Lset82, Ltmp158-Lfunc_begin0
	.quad	Lset82
.set Lset83, Ltmp163-Lfunc_begin0
	.quad	Lset83
	.short	1                               ; Loc expr size
	.byte	92                              ; DW_OP_reg12
	.quad	0
	.quad	0
Ldebug_loc16:
.set Lset84, Ltmp147-Lfunc_begin0
	.quad	Lset84
.set Lset85, Ltmp167-Lfunc_begin0
	.quad	Lset85
	.short	1                               ; Loc expr size
	.byte	99                              ; DW_OP_reg19
	.quad	0
	.quad	0
Ldebug_loc17:
.set Lset86, Ltmp148-Lfunc_begin0
	.quad	Lset86
.set Lset87, Ltmp149-Lfunc_begin0
	.quad	Lset87
	.short	2                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc18:
.set Lset88, Ltmp154-Lfunc_begin0
	.quad	Lset88
.set Lset89, Ltmp159-Lfunc_begin0
	.quad	Lset89
	.short	3                               ; Loc expr size
	.byte	122                             ; DW_OP_breg10
	.byte	2                               ; 2
	.byte	159                             ; DW_OP_stack_value
.set Lset90, Ltmp159-Lfunc_begin0
	.quad	Lset90
.set Lset91, Ltmp160-Lfunc_begin0
	.quad	Lset91
	.short	3                               ; Loc expr size
	.byte	122                             ; DW_OP_breg10
	.byte	4                               ; 4
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc19:
.set Lset92, Ltmp163-Lfunc_begin0
	.quad	Lset92
.set Lset93, Ltmp165-Lfunc_begin0
	.quad	Lset93
	.short	1                               ; Loc expr size
	.byte	80                              ; DW_OP_reg0
	.quad	0
	.quad	0
Ldebug_loc20:
.set Lset94, Ltmp164-Lfunc_begin0
	.quad	Lset94
.set Lset95, Ltmp166-Lfunc_begin0
	.quad	Lset95
	.short	2                               ; Loc expr size
	.byte	144                             ; DW_OP_regx
	.byte	64                              ; 64
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
	.byte	52                              ; DW_TAG_variable
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	3                               ; Abbreviation Code
	.byte	1                               ; DW_TAG_array_type
	.byte	1                               ; DW_CHILDREN_yes
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	4                               ; Abbreviation Code
	.byte	33                              ; DW_TAG_subrange_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	55                              ; DW_AT_count
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
	.byte	7                               ; Abbreviation Code
	.byte	52                              ; DW_TAG_variable
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	2                               ; DW_AT_location
	.byte	24                              ; DW_FORM_exprloc
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	8                               ; Abbreviation Code
	.byte	52                              ; DW_TAG_variable
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	63                              ; DW_AT_external
	.byte	25                              ; DW_FORM_flag_present
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	2                               ; DW_AT_location
	.byte	24                              ; DW_FORM_exprloc
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	9                               ; Abbreviation Code
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
	.byte	10                              ; Abbreviation Code
	.byte	15                              ; DW_TAG_pointer_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	11                              ; Abbreviation Code
	.byte	15                              ; DW_TAG_pointer_type
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
	.byte	11                              ; DW_TAG_lexical_block
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
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
	.byte	11                              ; DW_TAG_lexical_block
	.byte	1                               ; DW_CHILDREN_yes
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	17                              ; Abbreviation Code
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
	.byte	18                              ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.ascii	"\341\177"                      ; DW_AT_APPLE_optimized
	.byte	25                              ; DW_FORM_flag_present
	.byte	32                              ; DW_AT_inline
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	19                              ; Abbreviation Code
	.byte	52                              ; DW_TAG_variable
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.ascii	"\210\001"                      ; DW_AT_alignment
	.byte	15                              ; DW_FORM_udata
	.byte	58                              ; DW_AT_decl_file
	.byte	11                              ; DW_FORM_data1
	.byte	59                              ; DW_AT_decl_line
	.byte	11                              ; DW_FORM_data1
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	20                              ; Abbreviation Code
	.byte	33                              ; DW_TAG_subrange_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	55                              ; DW_AT_count
	.byte	5                               ; DW_FORM_data2
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	21                              ; Abbreviation Code
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
	.byte	22                              ; Abbreviation Code
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
	.byte	23                              ; Abbreviation Code
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
	.byte	24                              ; Abbreviation Code
	.byte	11                              ; DW_TAG_lexical_block
	.byte	1                               ; DW_CHILDREN_yes
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	25                              ; Abbreviation Code
	.byte	38                              ; DW_TAG_const_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	26                              ; Abbreviation Code
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
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	28                              ; Abbreviation Code
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
	.byte	29                              ; Abbreviation Code
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
	.byte	30                              ; Abbreviation Code
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
	.byte	31                              ; Abbreviation Code
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
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	63                              ; DW_AT_external
	.byte	25                              ; DW_FORM_flag_present
	.ascii	"\341\177"                      ; DW_AT_APPLE_optimized
	.byte	25                              ; DW_FORM_flag_present
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	32                              ; Abbreviation Code
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
	.byte	52                              ; DW_TAG_variable
	.byte	0                               ; DW_CHILDREN_no
	.byte	2                               ; DW_AT_location
	.byte	23                              ; DW_FORM_sec_offset
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	35                              ; Abbreviation Code
	.byte	5                               ; DW_TAG_formal_parameter
	.byte	0                               ; DW_CHILDREN_no
	.byte	2                               ; DW_AT_location
	.byte	24                              ; DW_FORM_exprloc
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	36                              ; Abbreviation Code
	.byte	72                              ; DW_TAG_call_site
	.byte	0                               ; DW_CHILDREN_no
	.byte	127                             ; DW_AT_call_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	125                             ; DW_AT_call_return_pc
	.byte	1                               ; DW_FORM_addr
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	37                              ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	0                               ; DW_CHILDREN_no
	.byte	110                             ; DW_AT_linkage_name
	.byte	14                              ; DW_FORM_strp
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
	.byte	0                               ; EOM(3)
	.section	__DWARF,__debug_info,regular,debug
Lsection_info:
Lcu_begin0:
.set Lset96, Ldebug_info_end0-Ldebug_info_start0 ; Length of Unit
	.long	Lset96
Ldebug_info_start0:
	.short	4                               ; DWARF version number
.set Lset97, Lsection_abbrev-Lsection_abbrev ; Offset Into Abbrev. Section
	.long	Lset97
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x6c6 DW_TAG_compile_unit
	.long	0                               ; DW_AT_producer
	.short	12                              ; DW_AT_language
	.long	46                              ; DW_AT_name
	.long	58                              ; DW_AT_LLVM_sysroot
	.long	110                             ; DW_AT_APPLE_sdk
.set Lset98, Lline_table_start0-Lsection_line ; DW_AT_stmt_list
	.long	Lset98
	.long	121                             ; DW_AT_comp_dir
                                        ; DW_AT_APPLE_optimized
	.quad	Lfunc_begin0                    ; DW_AT_low_pc
.set Lset99, Lfunc_end2-Lfunc_begin0    ; DW_AT_high_pc
	.long	Lset99
	.byte	2                               ; Abbrev [2] 0x32:0x7 DW_TAG_variable
	.long	57                              ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	6                               ; DW_AT_decl_line
	.byte	3                               ; Abbrev [3] 0x39:0xc DW_TAG_array_type
	.long	69                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x3e:0x6 DW_TAG_subrange_type
	.long	76                              ; DW_AT_type
	.byte	12                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	5                               ; Abbrev [5] 0x45:0x7 DW_TAG_base_type
	.long	175                             ; DW_AT_name
	.byte	6                               ; DW_AT_encoding
	.byte	1                               ; DW_AT_byte_size
	.byte	6                               ; Abbrev [6] 0x4c:0x7 DW_TAG_base_type
	.long	180                             ; DW_AT_name
	.byte	8                               ; DW_AT_byte_size
	.byte	7                               ; DW_AT_encoding
	.byte	2                               ; Abbrev [2] 0x53:0x7 DW_TAG_variable
	.long	90                              ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	9                               ; DW_AT_decl_line
	.byte	3                               ; Abbrev [3] 0x5a:0xc DW_TAG_array_type
	.long	69                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x5f:0x6 DW_TAG_subrange_type
	.long	76                              ; DW_AT_type
	.byte	14                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	7                               ; Abbrev [7] 0x66:0x11 DW_TAG_variable
	.long	119                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	11                              ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	l_.str.2
	.byte	3                               ; Abbrev [3] 0x77:0xc DW_TAG_array_type
	.long	69                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x7c:0x6 DW_TAG_subrange_type
	.long	76                              ; DW_AT_type
	.byte	6                               ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	7                               ; Abbrev [7] 0x83:0x11 DW_TAG_variable
	.long	119                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	13                              ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	l_.str.3
	.byte	7                               ; Abbrev [7] 0x94:0x11 DW_TAG_variable
	.long	119                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	14                              ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	l_.str.4
	.byte	2                               ; Abbrev [2] 0xa5:0x7 DW_TAG_variable
	.long	172                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	16                              ; DW_AT_decl_line
	.byte	3                               ; Abbrev [3] 0xac:0xc DW_TAG_array_type
	.long	69                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0xb1:0x6 DW_TAG_subrange_type
	.long	76                              ; DW_AT_type
	.byte	2                               ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0xb8:0x7 DW_TAG_variable
	.long	90                              ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	20                              ; DW_AT_decl_line
	.byte	7                               ; Abbrev [7] 0xbf:0x11 DW_TAG_variable
	.long	119                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	22                              ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	l_.str.7
	.byte	2                               ; Abbrev [2] 0xd0:0x7 DW_TAG_variable
	.long	90                              ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	31                              ; DW_AT_decl_line
	.byte	7                               ; Abbrev [7] 0xd7:0x11 DW_TAG_variable
	.long	119                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	33                              ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	l_.str.9
	.byte	7                               ; Abbrev [7] 0xe8:0x11 DW_TAG_variable
	.long	249                             ; DW_AT_type
	.byte	1                               ; DW_AT_decl_file
	.byte	44                              ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	l_.str.10
	.byte	3                               ; Abbrev [3] 0xf9:0xc DW_TAG_array_type
	.long	69                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0xfe:0x6 DW_TAG_subrange_type
	.long	76                              ; DW_AT_type
	.byte	9                               ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x105:0x7 DW_TAG_variable
	.long	268                             ; DW_AT_type
	.byte	2                               ; DW_AT_decl_file
	.byte	144                             ; DW_AT_decl_line
	.byte	3                               ; Abbrev [3] 0x10c:0xc DW_TAG_array_type
	.long	69                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x111:0x6 DW_TAG_subrange_type
	.long	76                              ; DW_AT_type
	.byte	8                               ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x118:0x15 DW_TAG_variable
	.long	201                             ; DW_AT_name
	.long	301                             ; DW_AT_type
                                        ; DW_AT_external
	.byte	2                               ; DW_AT_decl_file
	.byte	128                             ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	_AMX_VER
	.byte	9                               ; Abbrev [9] 0x12d:0xb DW_TAG_typedef
	.long	312                             ; DW_AT_type
	.long	209                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	31                              ; DW_AT_decl_line
	.byte	5                               ; Abbrev [5] 0x138:0x7 DW_TAG_base_type
	.long	218                             ; DW_AT_name
	.byte	7                               ; DW_AT_encoding
	.byte	4                               ; DW_AT_byte_size
	.byte	7                               ; Abbrev [7] 0x13f:0x11 DW_TAG_variable
	.long	336                             ; DW_AT_type
	.byte	2                               ; DW_AT_decl_file
	.byte	25                              ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	l_.str.12
	.byte	3                               ; Abbrev [3] 0x150:0xc DW_TAG_array_type
	.long	69                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x155:0x6 DW_TAG_subrange_type
	.long	76                              ; DW_AT_type
	.byte	26                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	7                               ; Abbrev [7] 0x15c:0x11 DW_TAG_variable
	.long	365                             ; DW_AT_type
	.byte	2                               ; DW_AT_decl_file
	.byte	101                             ; DW_AT_decl_line
	.byte	9                               ; DW_AT_location
	.byte	3
	.quad	l_.str.13
	.byte	3                               ; Abbrev [3] 0x16d:0xc DW_TAG_array_type
	.long	69                              ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x172:0x6 DW_TAG_subrange_type
	.long	76                              ; DW_AT_type
	.byte	24                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	9                               ; Abbrev [9] 0x179:0xb DW_TAG_typedef
	.long	388                             ; DW_AT_type
	.long	231                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	31                              ; DW_AT_decl_line
	.byte	5                               ; Abbrev [5] 0x184:0x7 DW_TAG_base_type
	.long	240                             ; DW_AT_name
	.byte	7                               ; DW_AT_encoding
	.byte	8                               ; DW_AT_byte_size
	.byte	10                              ; Abbrev [10] 0x18b:0x5 DW_TAG_pointer_type
	.long	400                             ; DW_AT_type
	.byte	9                               ; Abbrev [9] 0x190:0xb DW_TAG_typedef
	.long	411                             ; DW_AT_type
	.long	259                             ; DW_AT_name
	.byte	5                               ; DW_AT_decl_file
	.byte	31                              ; DW_AT_decl_line
	.byte	5                               ; Abbrev [5] 0x19b:0x7 DW_TAG_base_type
	.long	267                             ; DW_AT_name
	.byte	8                               ; DW_AT_encoding
	.byte	1                               ; DW_AT_byte_size
	.byte	11                              ; Abbrev [11] 0x1a2:0x1 DW_TAG_pointer_type
	.byte	5                               ; Abbrev [5] 0x1a3:0x7 DW_TAG_base_type
	.long	281                             ; DW_AT_name
	.byte	4                               ; DW_AT_encoding
	.byte	8                               ; DW_AT_byte_size
	.byte	9                               ; Abbrev [9] 0x1aa:0xb DW_TAG_typedef
	.long	437                             ; DW_AT_type
	.long	288                             ; DW_AT_name
	.byte	7                               ; DW_AT_decl_file
	.byte	31                              ; DW_AT_decl_line
	.byte	9                               ; Abbrev [9] 0x1b5:0xb DW_TAG_typedef
	.long	448                             ; DW_AT_type
	.long	296                             ; DW_AT_name
	.byte	6                               ; DW_AT_decl_file
	.byte	95                              ; DW_AT_decl_line
	.byte	5                               ; Abbrev [5] 0x1c0:0x7 DW_TAG_base_type
	.long	313                             ; DW_AT_name
	.byte	7                               ; DW_AT_encoding
	.byte	8                               ; DW_AT_byte_size
	.byte	12                              ; Abbrev [12] 0x1c7:0xcb DW_TAG_subprogram
	.quad	Lfunc_begin0                    ; DW_AT_low_pc
.set Lset100, Lfunc_end0-Lfunc_begin0   ; DW_AT_high_pc
	.long	Lset100
	.byte	1                               ; DW_AT_frame_base
	.byte	109
                                        ; DW_AT_call_all_calls
	.long	327                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	5                               ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_external
                                        ; DW_AT_APPLE_optimized
	.byte	13                              ; Abbrev [13] 0x1dc:0xf DW_TAG_formal_parameter
.set Lset101, Ldebug_loc0-Lsection_debug_loc ; DW_AT_location
	.long	Lset101
	.long	706                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	5                               ; DW_AT_decl_line
	.long	1734                            ; DW_AT_type
	.byte	14                              ; Abbrev [14] 0x1eb:0x32 DW_TAG_lexical_block
	.quad	Ltmp2                           ; DW_AT_low_pc
.set Lset102, Ltmp82-Ltmp2              ; DW_AT_high_pc
	.long	Lset102
	.byte	15                              ; Abbrev [15] 0x1f8:0xf DW_TAG_variable
.set Lset103, Ldebug_loc1-Lsection_debug_loc ; DW_AT_location
	.long	Lset103
	.long	666                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	10                              ; DW_AT_decl_line
	.long	1327                            ; DW_AT_type
	.byte	16                              ; Abbrev [16] 0x207:0x15 DW_TAG_lexical_block
.set Lset104, Ldebug_ranges0-Ldebug_range ; DW_AT_ranges
	.long	Lset104
	.byte	15                              ; Abbrev [15] 0x20c:0xf DW_TAG_variable
.set Lset105, Ldebug_loc2-Lsection_debug_loc ; DW_AT_location
	.long	Lset105
	.long	668                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	12                              ; DW_AT_decl_line
	.long	1327                            ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	14                              ; Abbrev [14] 0x21d:0x3a DW_TAG_lexical_block
	.quad	Ltmp84                          ; DW_AT_low_pc
.set Lset106, Ltmp97-Ltmp84             ; DW_AT_high_pc
	.long	Lset106
	.byte	15                              ; Abbrev [15] 0x22a:0xf DW_TAG_variable
.set Lset107, Ldebug_loc3-Lsection_debug_loc ; DW_AT_location
	.long	Lset107
	.long	666                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	21                              ; DW_AT_decl_line
	.long	1327                            ; DW_AT_type
	.byte	14                              ; Abbrev [14] 0x239:0x1d DW_TAG_lexical_block
	.quad	Ltmp90                          ; DW_AT_low_pc
.set Lset108, Ltmp97-Ltmp90             ; DW_AT_high_pc
	.long	Lset108
	.byte	15                              ; Abbrev [15] 0x246:0xf DW_TAG_variable
.set Lset109, Ldebug_loc4-Lsection_debug_loc ; DW_AT_location
	.long	Lset109
	.long	668                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	23                              ; DW_AT_decl_line
	.long	1327                            ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	14                              ; Abbrev [14] 0x257:0x3a DW_TAG_lexical_block
	.quad	Ltmp99                          ; DW_AT_low_pc
.set Lset110, Ltmp113-Ltmp99            ; DW_AT_high_pc
	.long	Lset110
	.byte	15                              ; Abbrev [15] 0x264:0xf DW_TAG_variable
.set Lset111, Ldebug_loc5-Lsection_debug_loc ; DW_AT_location
	.long	Lset111
	.long	666                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	32                              ; DW_AT_decl_line
	.long	1327                            ; DW_AT_type
	.byte	14                              ; Abbrev [14] 0x273:0x1d DW_TAG_lexical_block
	.quad	Ltmp106                         ; DW_AT_low_pc
.set Lset112, Ltmp113-Ltmp106           ; DW_AT_high_pc
	.long	Lset112
	.byte	15                              ; Abbrev [15] 0x280:0xf DW_TAG_variable
.set Lset113, Ldebug_loc6-Lsection_debug_loc ; DW_AT_location
	.long	Lset113
	.long	668                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	34                              ; DW_AT_decl_line
	.long	1327                            ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	12                              ; Abbrev [12] 0x292:0x5d DW_TAG_subprogram
	.quad	Lfunc_begin1                    ; DW_AT_low_pc
.set Lset114, Lfunc_end1-Lfunc_begin1   ; DW_AT_high_pc
	.long	Lset114
	.byte	1                               ; DW_AT_frame_base
	.byte	109
                                        ; DW_AT_call_all_calls
	.long	343                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	42                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_external
                                        ; DW_AT_APPLE_optimized
	.byte	13                              ; Abbrev [13] 0x2a7:0xf DW_TAG_formal_parameter
.set Lset115, Ldebug_loc7-Lsection_debug_loc ; DW_AT_location
	.long	Lset115
	.long	437                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	42                              ; DW_AT_decl_line
	.long	395                             ; DW_AT_type
	.byte	14                              ; Abbrev [14] 0x2b6:0x38 DW_TAG_lexical_block
	.quad	Ltmp116                         ; DW_AT_low_pc
.set Lset116, Ltmp129-Ltmp116           ; DW_AT_high_pc
	.long	Lset116
	.byte	17                              ; Abbrev [17] 0x2c3:0xd DW_TAG_variable
	.byte	1                               ; DW_AT_location
	.byte	103
	.long	666                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	43                              ; DW_AT_decl_line
	.long	1327                            ; DW_AT_type
	.byte	14                              ; Abbrev [14] 0x2d0:0x1d DW_TAG_lexical_block
	.quad	Ltmp122                         ; DW_AT_low_pc
.set Lset117, Ltmp129-Ltmp122           ; DW_AT_high_pc
	.long	Lset117
	.byte	15                              ; Abbrev [15] 0x2dd:0xf DW_TAG_variable
.set Lset118, Ldebug_loc8-Lsection_debug_loc ; DW_AT_location
	.long	Lset118
	.long	668                             ; DW_AT_name
	.byte	1                               ; DW_AT_decl_file
	.byte	45                              ; DW_AT_decl_line
	.long	1327                            ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	18                              ; Abbrev [18] 0x2ef:0x1a DW_TAG_subprogram
	.long	356                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	130                             ; DW_AT_decl_line
	.long	301                             ; DW_AT_type
                                        ; DW_AT_APPLE_optimized
	.byte	1                               ; DW_AT_inline
	.byte	19                              ; Abbrev [19] 0x2fb:0xd DW_TAG_variable
	.long	384                             ; DW_AT_name
	.ascii	"\200\002"                      ; DW_AT_alignment
	.byte	2                               ; DW_AT_decl_file
	.byte	131                             ; DW_AT_decl_line
	.long	777                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	3                               ; Abbrev [3] 0x309:0xd DW_TAG_array_type
	.long	400                             ; DW_AT_type
	.byte	20                              ; Abbrev [20] 0x30e:0x7 DW_TAG_subrange_type
	.long	76                              ; DW_AT_type
	.short	256                             ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	18                              ; Abbrev [18] 0x316:0x23 DW_TAG_subprogram
	.long	388                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	116                             ; DW_AT_decl_line
	.long	377                             ; DW_AT_type
                                        ; DW_AT_APPLE_optimized
	.byte	1                               ; DW_AT_inline
	.byte	21                              ; Abbrev [21] 0x322:0xb DW_TAG_variable
	.long	398                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	117                             ; DW_AT_decl_line
	.long	377                             ; DW_AT_type
	.byte	21                              ; Abbrev [21] 0x32d:0xb DW_TAG_variable
	.long	407                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	119                             ; DW_AT_decl_line
	.long	377                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	22                              ; Abbrev [22] 0x339:0x95 DW_TAG_subprogram
	.long	416                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	21                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	974                             ; DW_AT_type
                                        ; DW_AT_APPLE_optimized
	.byte	1                               ; DW_AT_inline
	.byte	23                              ; Abbrev [23] 0x345:0xb DW_TAG_formal_parameter
	.long	432                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	21                              ; DW_AT_decl_line
	.long	981                             ; DW_AT_type
	.byte	21                              ; Abbrev [21] 0x350:0xb DW_TAG_variable
	.long	437                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	22                              ; DW_AT_decl_line
	.long	395                             ; DW_AT_type
	.byte	21                              ; Abbrev [21] 0x35b:0xb DW_TAG_variable
	.long	453                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	23                              ; DW_AT_decl_line
	.long	395                             ; DW_AT_type
	.byte	21                              ; Abbrev [21] 0x366:0xb DW_TAG_variable
	.long	471                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	43                              ; DW_AT_decl_line
	.long	377                             ; DW_AT_type
	.byte	21                              ; Abbrev [21] 0x371:0xb DW_TAG_variable
	.long	485                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	75                              ; DW_AT_decl_line
	.long	426                             ; DW_AT_type
	.byte	21                              ; Abbrev [21] 0x37c:0xb DW_TAG_variable
	.long	491                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	80                              ; DW_AT_decl_line
	.long	301                             ; DW_AT_type
	.byte	21                              ; Abbrev [21] 0x387:0xb DW_TAG_variable
	.long	495                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	85                              ; DW_AT_decl_line
	.long	301                             ; DW_AT_type
	.byte	21                              ; Abbrev [21] 0x392:0xb DW_TAG_variable
	.long	499                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	75                              ; DW_AT_decl_line
	.long	426                             ; DW_AT_type
	.byte	21                              ; Abbrev [21] 0x39d:0xb DW_TAG_variable
	.long	503                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	76                              ; DW_AT_decl_line
	.long	419                             ; DW_AT_type
	.byte	21                              ; Abbrev [21] 0x3a8:0xb DW_TAG_variable
	.long	517                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	40                              ; DW_AT_decl_line
	.long	991                             ; DW_AT_type
	.byte	24                              ; Abbrev [24] 0x3b3:0x1a DW_TAG_lexical_block
	.byte	21                              ; Abbrev [21] 0x3b4:0xb DW_TAG_variable
	.long	666                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	29                              ; DW_AT_decl_line
	.long	1327                            ; DW_AT_type
	.byte	24                              ; Abbrev [24] 0x3bf:0xd DW_TAG_lexical_block
	.byte	21                              ; Abbrev [21] 0x3c0:0xb DW_TAG_variable
	.long	668                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	30                              ; DW_AT_decl_line
	.long	1327                            ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	5                               ; Abbrev [5] 0x3ce:0x7 DW_TAG_base_type
	.long	426                             ; DW_AT_name
	.byte	2                               ; DW_AT_encoding
	.byte	1                               ; DW_AT_byte_size
	.byte	10                              ; Abbrev [10] 0x3d5:0x5 DW_TAG_pointer_type
	.long	986                             ; DW_AT_type
	.byte	25                              ; Abbrev [25] 0x3da:0x5 DW_TAG_const_type
	.long	69                              ; DW_AT_type
	.byte	9                               ; Abbrev [9] 0x3df:0xb DW_TAG_typedef
	.long	1002                            ; DW_AT_type
	.long	524                             ; DW_AT_name
	.byte	8                               ; DW_AT_decl_file
	.byte	22                              ; DW_AT_decl_line
	.byte	26                              ; Abbrev [26] 0x3ea:0x30 DW_TAG_structure_type
	.long	524                             ; DW_AT_name
	.short	5120                            ; DW_AT_byte_size
	.byte	8                               ; DW_AT_decl_file
	.byte	18                              ; DW_AT_decl_line
	.byte	27                              ; Abbrev [27] 0x3f3:0xc DW_TAG_member
	.long	534                             ; DW_AT_name
	.long	1050                            ; DW_AT_type
	.byte	8                               ; DW_AT_decl_file
	.byte	19                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	28                              ; Abbrev [28] 0x3ff:0xd DW_TAG_member
	.long	662                             ; DW_AT_name
	.long	1050                            ; DW_AT_type
	.byte	8                               ; DW_AT_decl_file
	.byte	20                              ; DW_AT_decl_line
	.short	512                             ; DW_AT_data_member_location
	.byte	28                              ; Abbrev [28] 0x40c:0xd DW_TAG_member
	.long	664                             ; DW_AT_name
	.long	1384                            ; DW_AT_type
	.byte	8                               ; DW_AT_decl_file
	.byte	21                              ; DW_AT_decl_line
	.short	1024                            ; DW_AT_data_member_location
	.byte	0                               ; End Of Children Mark
	.byte	3                               ; Abbrev [3] 0x41a:0xc DW_TAG_array_type
	.long	1062                            ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x41f:0x6 DW_TAG_subrange_type
	.long	76                              ; DW_AT_type
	.byte	8                               ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	9                               ; Abbrev [9] 0x426:0xb DW_TAG_typedef
	.long	1073                            ; DW_AT_type
	.long	536                             ; DW_AT_name
	.byte	8                               ; DW_AT_decl_file
	.byte	16                              ; DW_AT_decl_line
	.byte	29                              ; Abbrev [29] 0x431:0x75 DW_TAG_union_type
	.long	536                             ; DW_AT_name
	.byte	64                              ; DW_AT_byte_size
	.byte	8                               ; DW_AT_decl_file
	.byte	6                               ; DW_AT_decl_line
	.byte	27                              ; Abbrev [27] 0x439:0xc DW_TAG_member
	.long	544                             ; DW_AT_name
	.long	1190                            ; DW_AT_type
	.byte	8                               ; DW_AT_decl_file
	.byte	7                               ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	27                              ; Abbrev [27] 0x445:0xc DW_TAG_member
	.long	547                             ; DW_AT_name
	.long	1202                            ; DW_AT_type
	.byte	8                               ; DW_AT_decl_file
	.byte	8                               ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	27                              ; Abbrev [27] 0x451:0xc DW_TAG_member
	.long	575                             ; DW_AT_name
	.long	1232                            ; DW_AT_type
	.byte	8                               ; DW_AT_decl_file
	.byte	9                               ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	27                              ; Abbrev [27] 0x45d:0xc DW_TAG_member
	.long	579                             ; DW_AT_name
	.long	1244                            ; DW_AT_type
	.byte	8                               ; DW_AT_decl_file
	.byte	10                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	27                              ; Abbrev [27] 0x469:0xc DW_TAG_member
	.long	601                             ; DW_AT_name
	.long	1274                            ; DW_AT_type
	.byte	8                               ; DW_AT_decl_file
	.byte	11                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	27                              ; Abbrev [27] 0x475:0xc DW_TAG_member
	.long	619                             ; DW_AT_name
	.long	1304                            ; DW_AT_type
	.byte	8                               ; DW_AT_decl_file
	.byte	12                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	27                              ; Abbrev [27] 0x481:0xc DW_TAG_member
	.long	635                             ; DW_AT_name
	.long	1334                            ; DW_AT_type
	.byte	8                               ; DW_AT_decl_file
	.byte	13                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	27                              ; Abbrev [27] 0x48d:0xc DW_TAG_member
	.long	648                             ; DW_AT_name
	.long	1353                            ; DW_AT_type
	.byte	8                               ; DW_AT_decl_file
	.byte	14                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	27                              ; Abbrev [27] 0x499:0xc DW_TAG_member
	.long	658                             ; DW_AT_name
	.long	1372                            ; DW_AT_type
	.byte	8                               ; DW_AT_decl_file
	.byte	15                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	0                               ; End Of Children Mark
	.byte	3                               ; Abbrev [3] 0x4a6:0xc DW_TAG_array_type
	.long	400                             ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x4ab:0x6 DW_TAG_subrange_type
	.long	76                              ; DW_AT_type
	.byte	64                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	3                               ; Abbrev [3] 0x4b2:0xc DW_TAG_array_type
	.long	1214                            ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x4b7:0x6 DW_TAG_subrange_type
	.long	76                              ; DW_AT_type
	.byte	32                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	9                               ; Abbrev [9] 0x4be:0xb DW_TAG_typedef
	.long	1225                            ; DW_AT_type
	.long	551                             ; DW_AT_name
	.byte	9                               ; DW_AT_decl_file
	.byte	31                              ; DW_AT_decl_line
	.byte	5                               ; Abbrev [5] 0x4c9:0x7 DW_TAG_base_type
	.long	560                             ; DW_AT_name
	.byte	7                               ; DW_AT_encoding
	.byte	2                               ; DW_AT_byte_size
	.byte	3                               ; Abbrev [3] 0x4d0:0xc DW_TAG_array_type
	.long	301                             ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x4d5:0x6 DW_TAG_subrange_type
	.long	76                              ; DW_AT_type
	.byte	16                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	3                               ; Abbrev [3] 0x4dc:0xc DW_TAG_array_type
	.long	1256                            ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x4e1:0x6 DW_TAG_subrange_type
	.long	76                              ; DW_AT_type
	.byte	64                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	9                               ; Abbrev [9] 0x4e8:0xb DW_TAG_typedef
	.long	1267                            ; DW_AT_type
	.long	582                             ; DW_AT_name
	.byte	10                              ; DW_AT_decl_file
	.byte	30                              ; DW_AT_decl_line
	.byte	5                               ; Abbrev [5] 0x4f3:0x7 DW_TAG_base_type
	.long	589                             ; DW_AT_name
	.byte	6                               ; DW_AT_encoding
	.byte	1                               ; DW_AT_byte_size
	.byte	3                               ; Abbrev [3] 0x4fa:0xc DW_TAG_array_type
	.long	1286                            ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x4ff:0x6 DW_TAG_subrange_type
	.long	76                              ; DW_AT_type
	.byte	32                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	9                               ; Abbrev [9] 0x506:0xb DW_TAG_typedef
	.long	1297                            ; DW_AT_type
	.long	605                             ; DW_AT_name
	.byte	11                              ; DW_AT_decl_file
	.byte	30                              ; DW_AT_decl_line
	.byte	5                               ; Abbrev [5] 0x511:0x7 DW_TAG_base_type
	.long	613                             ; DW_AT_name
	.byte	5                               ; DW_AT_encoding
	.byte	2                               ; DW_AT_byte_size
	.byte	3                               ; Abbrev [3] 0x518:0xc DW_TAG_array_type
	.long	1316                            ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x51d:0x6 DW_TAG_subrange_type
	.long	76                              ; DW_AT_type
	.byte	16                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	9                               ; Abbrev [9] 0x524:0xb DW_TAG_typedef
	.long	1327                            ; DW_AT_type
	.long	623                             ; DW_AT_name
	.byte	12                              ; DW_AT_decl_file
	.byte	30                              ; DW_AT_decl_line
	.byte	5                               ; Abbrev [5] 0x52f:0x7 DW_TAG_base_type
	.long	631                             ; DW_AT_name
	.byte	5                               ; DW_AT_encoding
	.byte	4                               ; DW_AT_byte_size
	.byte	3                               ; Abbrev [3] 0x536:0xc DW_TAG_array_type
	.long	1346                            ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x53b:0x6 DW_TAG_subrange_type
	.long	76                              ; DW_AT_type
	.byte	32                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	5                               ; Abbrev [5] 0x542:0x7 DW_TAG_base_type
	.long	639                             ; DW_AT_name
	.byte	4                               ; DW_AT_encoding
	.byte	2                               ; DW_AT_byte_size
	.byte	3                               ; Abbrev [3] 0x549:0xc DW_TAG_array_type
	.long	1365                            ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x54e:0x6 DW_TAG_subrange_type
	.long	76                              ; DW_AT_type
	.byte	16                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	5                               ; Abbrev [5] 0x555:0x7 DW_TAG_base_type
	.long	652                             ; DW_AT_name
	.byte	4                               ; DW_AT_encoding
	.byte	4                               ; DW_AT_byte_size
	.byte	3                               ; Abbrev [3] 0x55c:0xc DW_TAG_array_type
	.long	419                             ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x561:0x6 DW_TAG_subrange_type
	.long	76                              ; DW_AT_type
	.byte	8                               ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	3                               ; Abbrev [3] 0x568:0xc DW_TAG_array_type
	.long	1062                            ; DW_AT_type
	.byte	4                               ; Abbrev [4] 0x56d:0x6 DW_TAG_subrange_type
	.long	76                              ; DW_AT_type
	.byte	64                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	30                              ; Abbrev [30] 0x574:0x14 DW_TAG_subprogram
	.long	670                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	124                             ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_APPLE_optimized
	.byte	1                               ; DW_AT_inline
	.byte	23                              ; Abbrev [23] 0x57c:0xb DW_TAG_formal_parameter
	.long	683                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	124                             ; DW_AT_decl_line
	.long	377                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	31                              ; Abbrev [31] 0x588:0x12f DW_TAG_subprogram
	.quad	Lfunc_begin2                    ; DW_AT_low_pc
.set Lset119, Lfunc_end2-Lfunc_begin2   ; DW_AT_high_pc
	.long	Lset119
	.byte	1                               ; DW_AT_frame_base
	.byte	109
                                        ; DW_AT_call_all_calls
	.long	688                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	141                             ; DW_AT_decl_line
	.long	1327                            ; DW_AT_type
                                        ; DW_AT_external
                                        ; DW_AT_APPLE_optimized
	.byte	15                              ; Abbrev [15] 0x5a1:0xf DW_TAG_variable
.set Lset120, Ldebug_loc9-Lsection_debug_loc ; DW_AT_location
	.long	Lset120
	.long	398                             ; DW_AT_name
	.byte	2                               ; DW_AT_decl_file
	.byte	143                             ; DW_AT_decl_line
	.long	377                             ; DW_AT_type
	.byte	32                              ; Abbrev [32] 0x5b0:0x1e DW_TAG_inlined_subroutine
	.long	751                             ; DW_AT_abstract_origin
	.quad	Ltmp131                         ; DW_AT_low_pc
.set Lset121, Ltmp132-Ltmp131           ; DW_AT_high_pc
	.long	Lset121
	.byte	2                               ; DW_AT_call_file
	.byte	142                             ; DW_AT_call_line
	.byte	15                              ; DW_AT_call_column
	.byte	33                              ; Abbrev [33] 0x5c4:0x9 DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	143
	.ascii	"\200\002"
	.long	763                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	32                              ; Abbrev [32] 0x5ce:0x27 DW_TAG_inlined_subroutine
	.long	790                             ; DW_AT_abstract_origin
	.quad	Ltmp133                         ; DW_AT_low_pc
.set Lset122, Ltmp136-Ltmp133           ; DW_AT_high_pc
	.long	Lset122
	.byte	2                               ; DW_AT_call_file
	.byte	143                             ; DW_AT_call_line
	.byte	25                              ; DW_AT_call_column
	.byte	34                              ; Abbrev [34] 0x5e2:0x9 DW_TAG_variable
.set Lset123, Ldebug_loc10-Lsection_debug_loc ; DW_AT_location
	.long	Lset123
	.long	802                             ; DW_AT_abstract_origin
	.byte	34                              ; Abbrev [34] 0x5eb:0x9 DW_TAG_variable
.set Lset124, Ldebug_loc11-Lsection_debug_loc ; DW_AT_location
	.long	Lset124
	.long	813                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	32                              ; Abbrev [32] 0x5f5:0x8b DW_TAG_inlined_subroutine
	.long	825                             ; DW_AT_abstract_origin
	.quad	Ltmp136                         ; DW_AT_low_pc
.set Lset125, Ltmp169-Ltmp136           ; DW_AT_high_pc
	.long	Lset125
	.byte	2                               ; DW_AT_call_file
	.byte	144                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	34                              ; Abbrev [34] 0x609:0x9 DW_TAG_variable
.set Lset126, Ldebug_loc12-Lsection_debug_loc ; DW_AT_location
	.long	Lset126
	.long	848                             ; DW_AT_abstract_origin
	.byte	34                              ; Abbrev [34] 0x612:0x9 DW_TAG_variable
.set Lset127, Ldebug_loc13-Lsection_debug_loc ; DW_AT_location
	.long	Lset127
	.long	859                             ; DW_AT_abstract_origin
	.byte	34                              ; Abbrev [34] 0x61b:0x9 DW_TAG_variable
.set Lset128, Ldebug_loc15-Lsection_debug_loc ; DW_AT_location
	.long	Lset128
	.long	870                             ; DW_AT_abstract_origin
	.byte	34                              ; Abbrev [34] 0x624:0x9 DW_TAG_variable
.set Lset129, Ldebug_loc16-Lsection_debug_loc ; DW_AT_location
	.long	Lset129
	.long	881                             ; DW_AT_abstract_origin
	.byte	34                              ; Abbrev [34] 0x62d:0x9 DW_TAG_variable
.set Lset130, Ldebug_loc17-Lsection_debug_loc ; DW_AT_location
	.long	Lset130
	.long	892                             ; DW_AT_abstract_origin
	.byte	34                              ; Abbrev [34] 0x636:0x9 DW_TAG_variable
.set Lset131, Ldebug_loc18-Lsection_debug_loc ; DW_AT_location
	.long	Lset131
	.long	903                             ; DW_AT_abstract_origin
	.byte	34                              ; Abbrev [34] 0x63f:0x9 DW_TAG_variable
.set Lset132, Ldebug_loc19-Lsection_debug_loc ; DW_AT_location
	.long	Lset132
	.long	914                             ; DW_AT_abstract_origin
	.byte	34                              ; Abbrev [34] 0x648:0x9 DW_TAG_variable
.set Lset133, Ldebug_loc20-Lsection_debug_loc ; DW_AT_location
	.long	Lset133
	.long	925                             ; DW_AT_abstract_origin
	.byte	14                              ; Abbrev [14] 0x651:0x2e DW_TAG_lexical_block
	.quad	Ltmp142                         ; DW_AT_low_pc
.set Lset134, Ltmp145-Ltmp142           ; DW_AT_high_pc
	.long	Lset134
	.byte	33                              ; Abbrev [33] 0x65e:0x9 DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	120
	.byte	0
	.byte	159
	.long	948                             ; DW_AT_abstract_origin
	.byte	14                              ; Abbrev [14] 0x667:0x17 DW_TAG_lexical_block
	.quad	Ltmp142                         ; DW_AT_low_pc
.set Lset135, Ltmp143-Ltmp142           ; DW_AT_high_pc
	.long	Lset135
	.byte	34                              ; Abbrev [34] 0x674:0x9 DW_TAG_variable
.set Lset136, Ldebug_loc14-Lsection_debug_loc ; DW_AT_location
	.long	Lset136
	.long	960                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	32                              ; Abbrev [32] 0x680:0x1c DW_TAG_inlined_subroutine
	.long	1396                            ; DW_AT_abstract_origin
	.quad	Ltmp169                         ; DW_AT_low_pc
.set Lset137, Ltmp170-Ltmp169           ; DW_AT_high_pc
	.long	Lset137
	.byte	2                               ; DW_AT_call_file
	.byte	145                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	35                              ; Abbrev [35] 0x694:0x7 DW_TAG_formal_parameter
	.byte	1                               ; DW_AT_location
	.byte	102
	.long	1404                            ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	36                              ; Abbrev [36] 0x69c:0xd DW_TAG_call_site
	.long	1719                            ; DW_AT_call_origin
	.quad	Ltmp146                         ; DW_AT_call_return_pc
	.byte	36                              ; Abbrev [36] 0x6a9:0xd DW_TAG_call_site
	.long	1719                            ; DW_AT_call_origin
	.quad	Ltmp163                         ; DW_AT_call_return_pc
	.byte	0                               ; End Of Children Mark
	.byte	37                              ; Abbrev [37] 0x6b7:0xf DW_TAG_subprogram
	.long	693                             ; DW_AT_linkage_name
	.long	700                             ; DW_AT_name
	.byte	13                              ; DW_AT_decl_file
	.byte	109                             ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	426                             ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
                                        ; DW_AT_APPLE_optimized
	.byte	10                              ; Abbrev [10] 0x6c6:0x5 DW_TAG_pointer_type
	.long	1739                            ; DW_AT_type
	.byte	25                              ; Abbrev [25] 0x6cb:0x5 DW_TAG_const_type
	.long	991                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
Ldebug_info_end0:
	.section	__DWARF,__debug_ranges,regular,debug
Ldebug_range:
Ldebug_ranges0:
.set Lset138, Ltmp4-Lfunc_begin0
	.quad	Lset138
.set Lset139, Ltmp11-Lfunc_begin0
	.quad	Lset139
.set Lset140, Ltmp14-Lfunc_begin0
	.quad	Lset140
.set Lset141, Ltmp21-Lfunc_begin0
	.quad	Lset141
.set Lset142, Ltmp24-Lfunc_begin0
	.quad	Lset142
.set Lset143, Ltmp31-Lfunc_begin0
	.quad	Lset143
.set Lset144, Ltmp34-Lfunc_begin0
	.quad	Lset144
.set Lset145, Ltmp41-Lfunc_begin0
	.quad	Lset145
.set Lset146, Ltmp44-Lfunc_begin0
	.quad	Lset146
.set Lset147, Ltmp51-Lfunc_begin0
	.quad	Lset147
.set Lset148, Ltmp54-Lfunc_begin0
	.quad	Lset148
.set Lset149, Ltmp61-Lfunc_begin0
	.quad	Lset149
.set Lset150, Ltmp64-Lfunc_begin0
	.quad	Lset150
.set Lset151, Ltmp71-Lfunc_begin0
	.quad	Lset151
.set Lset152, Ltmp74-Lfunc_begin0
	.quad	Lset152
.set Lset153, Ltmp81-Lfunc_begin0
	.quad	Lset153
	.quad	0
	.quad	0
	.section	__DWARF,__debug_str,regular,debug
Linfo_string:
	.asciz	"Apple clang version 15.0.0 (clang-1500.3.9.4)" ; string offset=0
	.asciz	"transpose.c"                   ; string offset=46
	.asciz	"/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk" ; string offset=58
	.asciz	"MacOSX.sdk"                    ; string offset=110
	.asciz	"/Users/tarindujayatilaka/Documents/superopt/apple-amx" ; string offset=121
	.asciz	"char"                          ; string offset=175
	.asciz	"__ARRAY_SIZE_TYPE__"           ; string offset=180
	.byte	0                               ; string offset=200
	.asciz	"AMX_VER"                       ; string offset=201
	.asciz	"uint32_t"                      ; string offset=209
	.asciz	"unsigned int"                  ; string offset=218
	.asciz	"uint64_t"                      ; string offset=231
	.asciz	"unsigned long long"            ; string offset=240
	.asciz	"uint8_t"                       ; string offset=259
	.asciz	"unsigned char"                 ; string offset=267
	.asciz	"double"                        ; string offset=281
	.asciz	"clock_t"                       ; string offset=288
	.asciz	"__darwin_clock_t"              ; string offset=296
	.asciz	"unsigned long"                 ; string offset=313
	.asciz	"print_amx_state"               ; string offset=327
	.asciz	"print_matrix"                  ; string offset=343
	.asciz	"detect_amx_hardware_version"   ; string offset=356
	.asciz	"buf"                           ; string offset=384
	.asciz	"fpcr_init"                     ; string offset=388
	.asciz	"old_fpcr"                      ; string offset=398
	.asciz	"new_fpcr"                      ; string offset=407
	.asciz	"transpose"                     ; string offset=416
	.asciz	"_Bool"                         ; string offset=426
	.asciz	"name"                          ; string offset=432
	.asciz	"original_matrix"               ; string offset=437
	.asciz	"transposed_matrix"             ; string offset=453
	.asciz	"extrv_operand"                 ; string offset=471
	.asciz	"start"                         ; string offset=485
	.asciz	"row"                           ; string offset=491
	.asciz	"col"                           ; string offset=495
	.asciz	"end"                           ; string offset=499
	.asciz	"cpu_time_used"                 ; string offset=503
	.asciz	"actual"                        ; string offset=517
	.asciz	"amx_state"                     ; string offset=524
	.asciz	"x"                             ; string offset=534
	.asciz	"amx_reg"                       ; string offset=536
	.asciz	"u8"                            ; string offset=544
	.asciz	"u16"                           ; string offset=547
	.asciz	"uint16_t"                      ; string offset=551
	.asciz	"unsigned short"                ; string offset=560
	.asciz	"u32"                           ; string offset=575
	.asciz	"i8"                            ; string offset=579
	.asciz	"int8_t"                        ; string offset=582
	.asciz	"signed char"                   ; string offset=589
	.asciz	"i16"                           ; string offset=601
	.asciz	"int16_t"                       ; string offset=605
	.asciz	"short"                         ; string offset=613
	.asciz	"i32"                           ; string offset=619
	.asciz	"int32_t"                       ; string offset=623
	.asciz	"int"                           ; string offset=631
	.asciz	"f16"                           ; string offset=635
	.asciz	"_Float16"                      ; string offset=639
	.asciz	"f32"                           ; string offset=648
	.asciz	"float"                         ; string offset=652
	.asciz	"f64"                           ; string offset=658
	.asciz	"y"                             ; string offset=662
	.asciz	"z"                             ; string offset=664
	.asciz	"i"                             ; string offset=666
	.asciz	"j"                             ; string offset=668
	.asciz	"fpcr_restore"                  ; string offset=670
	.asciz	"fpcr"                          ; string offset=683
	.asciz	"main"                          ; string offset=688
	.asciz	"_clock"                        ; string offset=693
	.asciz	"clock"                         ; string offset=700
	.asciz	"state"                         ; string offset=706
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
	.long	-1                              ; Bucket 2
	.long	1                               ; Bucket 3
	.long	-1                              ; Bucket 4
	.long	2                               ; Bucket 5
	.long	5                               ; Bucket 6
	.long	6                               ; Bucket 7
	.long	8                               ; Bucket 8
	.long	1230257719                      ; Hash in Bucket 1
	.long	-1987948045                     ; Hash in Bucket 3
	.long	597252452                       ; Hash in Bucket 5
	.long	-2143121210                     ; Hash in Bucket 5
	.long	-1074999275                     ; Hash in Bucket 5
	.long	-1510920169                     ; Hash in Bucket 6
	.long	2090499946                      ; Hash in Bucket 7
	.long	-1910319261                     ; Hash in Bucket 7
	.long	5381                            ; Hash in Bucket 8
.set Lset154, LNames7-Lnames_begin      ; Offset in Bucket 1
	.long	Lset154
.set Lset155, LNames3-Lnames_begin      ; Offset in Bucket 3
	.long	Lset155
.set Lset156, LNames1-Lnames_begin      ; Offset in Bucket 5
	.long	Lset156
.set Lset157, LNames6-Lnames_begin      ; Offset in Bucket 5
	.long	Lset157
.set Lset158, LNames8-Lnames_begin      ; Offset in Bucket 5
	.long	Lset158
.set Lset159, LNames5-Lnames_begin      ; Offset in Bucket 6
	.long	Lset159
.set Lset160, LNames2-Lnames_begin      ; Offset in Bucket 7
	.long	Lset160
.set Lset161, LNames0-Lnames_begin      ; Offset in Bucket 7
	.long	Lset161
.set Lset162, LNames4-Lnames_begin      ; Offset in Bucket 8
	.long	Lset162
LNames7:
	.long	201                             ; AMX_VER
	.long	1                               ; Num DIEs
	.long	280
	.long	0
LNames3:
	.long	670                             ; fpcr_restore
	.long	1                               ; Num DIEs
	.long	1664
	.long	0
LNames1:
	.long	416                             ; transpose
	.long	1                               ; Num DIEs
	.long	1525
	.long	0
LNames6:
	.long	343                             ; print_matrix
	.long	1                               ; Num DIEs
	.long	658
	.long	0
LNames8:
	.long	356                             ; detect_amx_hardware_version
	.long	1                               ; Num DIEs
	.long	1456
	.long	0
LNames5:
	.long	327                             ; print_amx_state
	.long	1                               ; Num DIEs
	.long	455
	.long	0
LNames2:
	.long	688                             ; main
	.long	1                               ; Num DIEs
	.long	1416
	.long	0
LNames0:
	.long	388                             ; fpcr_init
	.long	1                               ; Num DIEs
	.long	1486
	.long	0
LNames4:
	.long	200                             ; 
	.long	8                               ; Num DIEs
	.long	102
	.long	131
	.long	148
	.long	191
	.long	215
	.long	232
	.long	319
	.long	348
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
	.long	12                              ; Header Bucket Count
	.long	25                              ; Header Hash Count
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
	.long	6                               ; Bucket 3
	.long	8                               ; Bucket 4
	.long	11                              ; Bucket 5
	.long	13                              ; Bucket 6
	.long	16                              ; Bucket 7
	.long	17                              ; Bucket 8
	.long	-1                              ; Bucket 9
	.long	21                              ; Bucket 10
	.long	22                              ; Bucket 11
	.long	897873384                       ; Hash in Bucket 0
	.long	274395349                       ; Hash in Bucket 1
	.long	691577533                       ; Hash in Bucket 1
	.long	948621025                       ; Hash in Bucket 1
	.long	290821634                       ; Hash in Bucket 2
	.long	-1622611670                     ; Hash in Bucket 2
	.long	80989467                        ; Hash in Bucket 3
	.long	-1466705941                     ; Hash in Bucket 3
	.long	789719536                       ; Hash in Bucket 4
	.long	-863830716                      ; Hash in Bucket 4
	.long	-113419488                      ; Hash in Bucket 4
	.long	290711645                       ; Hash in Bucket 5
	.long	-1304652851                     ; Hash in Bucket 5
	.long	177647526                       ; Hash in Bucket 6
	.long	878862258                       ; Hash in Bucket 6
	.long	-103762318                      ; Hash in Bucket 6
	.long	259121563                       ; Hash in Bucket 7
	.long	193495088                       ; Hash in Bucket 8
	.long	249311216                       ; Hash in Bucket 8
	.long	-1622544152                     ; Hash in Bucket 8
	.long	-104093792                      ; Hash in Bucket 8
	.long	857652610                       ; Hash in Bucket 10
	.long	290644127                       ; Hash in Bucket 11
	.long	2090147939                      ; Hash in Bucket 11
	.long	-594775205                      ; Hash in Bucket 11
.set Lset163, Ltypes9-Ltypes_begin      ; Offset in Bucket 0
	.long	Lset163
.set Lset164, Ltypes15-Ltypes_begin     ; Offset in Bucket 1
	.long	Lset164
.set Lset165, Ltypes3-Ltypes_begin      ; Offset in Bucket 1
	.long	Lset165
.set Lset166, Ltypes24-Ltypes_begin     ; Offset in Bucket 1
	.long	Lset166
.set Lset167, Ltypes19-Ltypes_begin     ; Offset in Bucket 2
	.long	Lset167
.set Lset168, Ltypes0-Ltypes_begin      ; Offset in Bucket 2
	.long	Lset168
.set Lset169, Ltypes11-Ltypes_begin     ; Offset in Bucket 3
	.long	Lset169
.set Lset170, Ltypes10-Ltypes_begin     ; Offset in Bucket 3
	.long	Lset170
.set Lset171, Ltypes8-Ltypes_begin      ; Offset in Bucket 4
	.long	Lset171
.set Lset172, Ltypes1-Ltypes_begin      ; Offset in Bucket 4
	.long	Lset172
.set Lset173, Ltypes17-Ltypes_begin     ; Offset in Bucket 4
	.long	Lset173
.set Lset174, Ltypes14-Ltypes_begin     ; Offset in Bucket 5
	.long	Lset174
.set Lset175, Ltypes21-Ltypes_begin     ; Offset in Bucket 5
	.long	Lset175
.set Lset176, Ltypes16-Ltypes_begin     ; Offset in Bucket 6
	.long	Lset176
.set Lset177, Ltypes5-Ltypes_begin      ; Offset in Bucket 6
	.long	Lset177
.set Lset178, Ltypes12-Ltypes_begin     ; Offset in Bucket 6
	.long	Lset178
.set Lset179, Ltypes6-Ltypes_begin      ; Offset in Bucket 7
	.long	Lset179
.set Lset180, Ltypes2-Ltypes_begin      ; Offset in Bucket 8
	.long	Lset180
.set Lset181, Ltypes4-Ltypes_begin      ; Offset in Bucket 8
	.long	Lset181
.set Lset182, Ltypes20-Ltypes_begin     ; Offset in Bucket 8
	.long	Lset182
.set Lset183, Ltypes18-Ltypes_begin     ; Offset in Bucket 8
	.long	Lset183
.set Lset184, Ltypes13-Ltypes_begin     ; Offset in Bucket 10
	.long	Lset184
.set Lset185, Ltypes22-Ltypes_begin     ; Offset in Bucket 11
	.long	Lset185
.set Lset186, Ltypes7-Ltypes_begin      ; Offset in Bucket 11
	.long	Lset186
.set Lset187, Ltypes23-Ltypes_begin     ; Offset in Bucket 11
	.long	Lset187
Ltypes9:
	.long	536                             ; amx_reg
	.long	2                               ; Num DIEs
	.long	1062
	.short	22
	.byte	0
	.long	1073
	.short	23
	.byte	0
	.long	0
Ltypes15:
	.long	613                             ; short
	.long	1                               ; Num DIEs
	.long	1297
	.short	36
	.byte	0
	.long	0
Ltypes3:
	.long	589                             ; signed char
	.long	1                               ; Num DIEs
	.long	1267
	.short	36
	.byte	0
	.long	0
Ltypes24:
	.long	639                             ; _Float16
	.long	1                               ; Num DIEs
	.long	1346
	.short	36
	.byte	0
	.long	0
Ltypes19:
	.long	231                             ; uint64_t
	.long	1                               ; Num DIEs
	.long	377
	.short	22
	.byte	0
	.long	0
Ltypes0:
	.long	605                             ; int16_t
	.long	1                               ; Num DIEs
	.long	1286
	.short	22
	.byte	0
	.long	0
Ltypes11:
	.long	582                             ; int8_t
	.long	1                               ; Num DIEs
	.long	1256
	.short	22
	.byte	0
	.long	0
Ltypes10:
	.long	524                             ; amx_state
	.long	2                               ; Num DIEs
	.long	991
	.short	22
	.byte	0
	.long	1002
	.short	19
	.byte	0
	.long	0
Ltypes8:
	.long	259                             ; uint8_t
	.long	1                               ; Num DIEs
	.long	400
	.short	22
	.byte	0
	.long	0
Ltypes1:
	.long	288                             ; clock_t
	.long	1                               ; Num DIEs
	.long	426
	.short	22
	.byte	0
	.long	0
Ltypes17:
	.long	281                             ; double
	.long	1                               ; Num DIEs
	.long	419
	.short	36
	.byte	0
	.long	0
Ltypes14:
	.long	209                             ; uint32_t
	.long	1                               ; Num DIEs
	.long	301
	.short	22
	.byte	0
	.long	0
Ltypes21:
	.long	218                             ; unsigned int
	.long	1                               ; Num DIEs
	.long	312
	.short	36
	.byte	0
	.long	0
Ltypes16:
	.long	296                             ; __darwin_clock_t
	.long	1                               ; Num DIEs
	.long	437
	.short	22
	.byte	0
	.long	0
Ltypes5:
	.long	560                             ; unsigned short
	.long	1                               ; Num DIEs
	.long	1225
	.short	36
	.byte	0
	.long	0
Ltypes12:
	.long	313                             ; unsigned long
	.long	1                               ; Num DIEs
	.long	448
	.short	36
	.byte	0
	.long	0
Ltypes6:
	.long	652                             ; float
	.long	1                               ; Num DIEs
	.long	1365
	.short	36
	.byte	0
	.long	0
Ltypes2:
	.long	631                             ; int
	.long	1                               ; Num DIEs
	.long	1327
	.short	36
	.byte	0
	.long	0
Ltypes4:
	.long	426                             ; _Bool
	.long	1                               ; Num DIEs
	.long	974
	.short	36
	.byte	0
	.long	0
Ltypes20:
	.long	623                             ; int32_t
	.long	1                               ; Num DIEs
	.long	1316
	.short	22
	.byte	0
	.long	0
Ltypes18:
	.long	267                             ; unsigned char
	.long	1                               ; Num DIEs
	.long	411
	.short	36
	.byte	0
	.long	0
Ltypes13:
	.long	240                             ; unsigned long long
	.long	1                               ; Num DIEs
	.long	388
	.short	36
	.byte	0
	.long	0
Ltypes22:
	.long	551                             ; uint16_t
	.long	1                               ; Num DIEs
	.long	1214
	.short	22
	.byte	0
	.long	0
Ltypes7:
	.long	175                             ; char
	.long	1                               ; Num DIEs
	.long	69
	.short	36
	.byte	0
	.long	0
Ltypes23:
	.long	180                             ; __ARRAY_SIZE_TYPE__
	.long	1                               ; Num DIEs
	.long	76
	.short	36
	.byte	0
	.long	0
.subsections_via_symbols
	.section	__DWARF,__debug_line,regular,debug
Lsection_line:
Lline_table_start0:
