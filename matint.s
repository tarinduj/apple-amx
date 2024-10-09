	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 14, 4
	.file	1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types" "_uint64_t.h"
	.file	2 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types" "_uint8_t.h"
	.globl	_emulate_AMX_MATINT             ; -- Begin function emulate_AMX_MATINT
	.p2align	2
_emulate_AMX_MATINT:                    ; @emulate_AMX_MATINT
Lfunc_begin0:
	.file	3 "/Users/tarindujayatilaka/Documents/superopt/apple-amx" "matint.c"
	.loc	3 17 0                          ; matint.c:17:0
	.cfi_startproc
; %bb.0:
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- $x0
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x1
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x1
	sub	sp, sp, #416
	.cfi_def_cfa_offset 416
	stp	x28, x27, [sp, #320]            ; 16-byte Folded Spill
	stp	x26, x25, [sp, #336]            ; 16-byte Folded Spill
	stp	x24, x23, [sp, #352]            ; 16-byte Folded Spill
	stp	x22, x21, [sp, #368]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #384]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #400]            ; 16-byte Folded Spill
	add	x29, sp, #400
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
	str	x0, [sp, #88]                   ; 8-byte Folded Spill
Ltmp0:
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
Lloh0:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh1:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh2:
	ldr	x8, [x8]
	stur	x8, [x29, #-96]
Ltmp1:
	.loc	3 18 25 prologue_end            ; matint.c:18:25
	tst	x1, #0x180000000000000
Ltmp2:
	.loc	3 18 9 is_stmt 0                ; matint.c:18:9
	b.ne	LBB0_2
Ltmp3:
; %bb.1:
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x1
	.loc	3 0 9                           ; matint.c:0:9
	mov	x20, x1
Ltmp4:
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	.loc	3 21 34 is_stmt 1               ; matint.c:21:34
	and	x8, x1, #0x60000000000000
	mov	x9, #18014398509481984
	cmp	x8, x9
	b.ne	LBB0_4
Ltmp5:
LBB0_2:
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	.loc	3 0 34 is_stmt 0                ; matint.c:0:34
	ldur	x8, [x29, #-96]
Lloh3:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh4:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh5:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB0_99
Ltmp6:
; %bb.3:
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	.loc	3 138 1 is_stmt 1               ; matint.c:138:1
	ldp	x29, x30, [sp, #400]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #384]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #368]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #352]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #336]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #320]            ; 16-byte Folded Reload
	add	sp, sp, #416
Ltmp7:
	ret
LBB0_4:
Ltmp8:
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	.loc	3 25 38                         ; matint.c:25:38
	ubfx	x28, x20, #20, #2
Ltmp9:
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	.loc	3 26 48                         ; matint.c:26:48
	and	x8, x20, #0x1ff00000000
Ltmp10:
	;DEBUG_VALUE: emulate_AMX_MATINT:omask <- [DW_OP_LLVM_convert 1 5, DW_OP_LLVM_convert 32 5, DW_OP_stack_value] undef
	.loc	3 0 48 is_stmt 0                ; matint.c:0:48
	str	x8, [sp, #104]                  ; 8-byte Folded Spill
	.loc	3 27 19 is_stmt 1               ; matint.c:27:19
	lsr	x8, x20, #51
	and	w8, w8, #0x8
	ubfx	x9, x20, #47, #6
	tst	x20, #0x20000000000000
	csel	w11, w9, w8, eq
Ltmp11:
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:shift <- undef
	;DEBUG_VALUE: emulate_AMX_MATINT:alumode <- $w11
	.loc	3 31 9                          ; matint.c:31:9
	cmp	w11, #4
	b.ne	LBB0_7
Ltmp12:
; %bb.5:
	;DEBUG_VALUE: emulate_AMX_MATINT:alumode <- $w11
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	.loc	3 32 33                         ; matint.c:32:33
	ubfx	x8, x20, #42, #4
	.loc	3 32 9 is_stmt 0                ; matint.c:32:9
	sub	x8, x8, #3
	cmp	x8, #9
	b.hs	LBB0_9
Ltmp13:
; %bb.6:
	;DEBUG_VALUE: emulate_AMX_MATINT:alumode <- $w11
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	lsl	x8, x8, #2
Lloh6:
	adrp	x9, l_switch.table.emulate_AMX_MATINT@PAGE
Lloh7:
	add	x9, x9, l_switch.table.emulate_AMX_MATINT@PAGEOFF
	ldr	w21, [x9, x8]
Lloh8:
	adrp	x9, l_switch.table.emulate_AMX_MATINT.1@PAGE
Lloh9:
	add	x9, x9, l_switch.table.emulate_AMX_MATINT.1@PAGEOFF
	ldr	w10, [x9, x8]
	b	LBB0_10
Ltmp14:
LBB0_7:
	;DEBUG_VALUE: emulate_AMX_MATINT:alumode <- $w11
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATINT:shift <- undef
	.loc	3 39 29 is_stmt 1               ; matint.c:39:29
	sub	w8, w11, #5
	cmp	w8, #2
	b.hs	LBB0_16
Ltmp15:
; %bb.8:
	;DEBUG_VALUE: emulate_AMX_MATINT:alumode <- $w11
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	.loc	3 0 29 is_stmt 0                ; matint.c:0:29
	mov	w8, #15
	str	x8, [sp, #64]                   ; 8-byte Folded Spill
	mov	w10, #16
	mov	w23, #16
	mov	w25, #16
	b	LBB0_45
Ltmp16:
LBB0_9:
	;DEBUG_VALUE: emulate_AMX_MATINT:alumode <- $w11
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	mov	w21, #16
	mov	w10, #16
Ltmp17:
LBB0_10:
	;DEBUG_VALUE: emulate_AMX_MATINT:alumode <- $w11
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATINT:shift <- undef
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:zbits <- $w10
	;DEBUG_VALUE: emulate_AMX_MATINT:satbits <- $w21
	;DEBUG_VALUE: emulate_AMX_MATINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	.loc	3 63 29 is_stmt 1               ; matint.c:63:29
	lsr	w22, w10, #3
Ltmp18:
	;DEBUG_VALUE: emulate_AMX_MATINT:zbytes <- $w22
	;DEBUG_VALUE: load_int:nbytes <- $w22
	;DEBUG_VALUE: store_int:nbytes <- $w22
	.loc	3 0 29 is_stmt 0                ; matint.c:0:29
	mov	w8, #64
Ltmp19:
	.loc	3 68 29 is_stmt 1               ; matint.c:68:29
	sub	w8, w8, w10
Ltmp20:
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: parse_writemask:g <- $w22
	;DEBUG_VALUE: parse_writemask:val <- undef
	;DEBUG_VALUE: zsignext <- undef
	.file	4 "/Users/tarindujayatilaka/Documents/superopt/apple-amx" "./emulate.h"
	.loc	4 66 44                         ; ./emulate.h:66:44
	lsr	x9, x20, #38
	.loc	4 67 9                          ; ./emulate.h:67:9
	ands	w11, w9, #0x7
Ltmp21:
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	csinc	w9, w22, wzr, ne
Ltmp22:
	;DEBUG_VALUE: parse_writemask:all <- -1
	.loc	4 70 5                          ; ./emulate.h:70:5
	cmp	w11, #5
	b.hi	LBB0_25
Ltmp23:
; %bb.11:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:g <- $w22
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: store_int:nbytes <- $w22
	;DEBUG_VALUE: load_int:nbytes <- $w22
	;DEBUG_VALUE: emulate_AMX_MATINT:zbytes <- $w22
	;DEBUG_VALUE: emulate_AMX_MATINT:satbits <- $w21
	;DEBUG_VALUE: emulate_AMX_MATINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:zbits <- $w10
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	.loc	4 0 5 is_stmt 0                 ; ./emulate.h:0:5
	lsr	x12, x20, #32
	mul	w12, w9, w12
	and	w9, w12, #0x3f
Ltmp24:
	;DEBUG_VALUE: parse_writemask:val <- $w9
Lloh10:
	adrp	x13, lJTI0_2@PAGE
Lloh11:
	add	x13, x13, lJTI0_2@PAGEOFF
	adr	x14, LBB0_12
	ldrb	w15, [x13, x11]
	add	x14, x14, x15, lsl #2
	br	x14
Ltmp25:
LBB0_12:
	;DEBUG_VALUE: parse_writemask:val <- $w9
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:g <- $w22
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_MATINT:zbytes <- $w22
	;DEBUG_VALUE: emulate_AMX_MATINT:satbits <- $w21
	;DEBUG_VALUE: emulate_AMX_MATINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:zbits <- $w10
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	.loc	4 72 22 is_stmt 1               ; ./emulate.h:72:22
	sub	w13, w9, #1
	mov	x11, #-1
Ltmp26:
	cmp	w13, #1
	b.hi	LBB0_15
Ltmp27:
; %bb.13:
	;DEBUG_VALUE: parse_writemask:val <- $w9
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:g <- $w22
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_MATINT:zbytes <- $w22
	;DEBUG_VALUE: emulate_AMX_MATINT:satbits <- $w21
	;DEBUG_VALUE: emulate_AMX_MATINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:zbits <- $w10
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	.loc	4 74 25                         ; ./emulate.h:74:25
	lsl	x11, x11, x22
	.loc	4 74 19 is_stmt 0               ; ./emulate.h:74:19
	mvn	x11, x11
	.loc	4 74 45                         ; ./emulate.h:74:45
	sbfx	w12, w12, #0, #1
	.loc	4 74 37                         ; ./emulate.h:74:37
	and	w12, w12, w22
	.loc	4 74 31                         ; ./emulate.h:74:31
	lsl	x11, x11, x12
Ltmp28:
	;DEBUG_VALUE: parse_writemask:all <- $x11
	;DEBUG_VALUE: parse_writemask:g <- $w22
	.loc	4 75 23 is_stmt 1               ; ./emulate.h:75:23
	lsr	w10, w10, #2
Ltmp29:
	;DEBUG_VALUE: parse_writemask:g <- $w10
LBB0_14:                                ; =>This Inner Loop Header: Depth=1
	;DEBUG_VALUE: parse_writemask:g <- $w10
	;DEBUG_VALUE: parse_writemask:all <- $x11
	;DEBUG_VALUE: parse_writemask:val <- $w9
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_MATINT:zbytes <- $w22
	;DEBUG_VALUE: emulate_AMX_MATINT:satbits <- $w21
	;DEBUG_VALUE: emulate_AMX_MATINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	;DEBUG_VALUE: parse_writemask:all <- $x11
	.loc	4 76 28                         ; ./emulate.h:76:28
	lsl	x12, x11, x10
	.loc	4 76 21 is_stmt 0               ; ./emulate.h:76:21
	orr	x11, x12, x11
Ltmp30:
	;DEBUG_VALUE: parse_writemask:all <- $x11
	;DEBUG_VALUE: parse_writemask:g <- $w10
	.loc	4 75 23 is_stmt 1               ; ./emulate.h:75:23
	lsl	w12, w10, #1
Ltmp31:
	;DEBUG_VALUE: parse_writemask:g <- $w12
	.loc	4 75 13 is_stmt 0               ; ./emulate.h:75:13
	cmp	w10, #32
	mov	x10, x12
Ltmp32:
	;DEBUG_VALUE: parse_writemask:g <- $w10
	b.lo	LBB0_14
Ltmp33:
LBB0_15:
	;DEBUG_VALUE: parse_writemask:val <- $w9
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_MATINT:zbytes <- $w22
	;DEBUG_VALUE: emulate_AMX_MATINT:satbits <- $w21
	;DEBUG_VALUE: emulate_AMX_MATINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	;DEBUG_VALUE: parse_writemask:all <- $x11
	.loc	4 83 16 is_stmt 1               ; ./emulate.h:83:16
	cmp	w9, #6
	csel	x19, x11, xzr, lo
	b	LBB0_32
Ltmp34:
LBB0_16:
	;DEBUG_VALUE: emulate_AMX_MATINT:alumode <- $w11
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATINT:shift <- undef
	.loc	3 42 16                         ; matint.c:42:16
	cmp	w11, #9
	b.eq	LBB0_21
Ltmp35:
; %bb.17:
	;DEBUG_VALUE: emulate_AMX_MATINT:alumode <- $w11
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	.loc	3 0 0 is_stmt 0                 ; matint.c:0:0
	ubfx	x8, x20, #58, #5
Ltmp36:
	;DEBUG_VALUE: emulate_AMX_MATINT:shift <- $w8
	str	x8, [sp, #64]                   ; 8-byte Folded Spill
Ltmp37:
	;DEBUG_VALUE: emulate_AMX_MATINT:shift <- [DW_OP_plus_uconst 64] [$sp+0]
	.loc	3 42 16                         ; matint.c:42:16
	cmp	w11, #8
	b.ne	LBB0_24
Ltmp38:
; %bb.18:
	;DEBUG_VALUE: emulate_AMX_MATINT:shift <- [DW_OP_plus_uconst 64] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATINT:alumode <- $w11
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	.loc	3 43 33 is_stmt 1               ; matint.c:43:33
	ubfx	x8, x20, #42, #4
	.loc	3 43 9 is_stmt 0                ; matint.c:43:9
	cmp	x8, #10
	b.eq	LBB0_39
Ltmp39:
; %bb.19:
	;DEBUG_VALUE: emulate_AMX_MATINT:shift <- [DW_OP_plus_uconst 64] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATINT:alumode <- $w11
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	cmp	x8, #12
	b.ne	LBB0_40
Ltmp40:
; %bb.20:
	;DEBUG_VALUE: emulate_AMX_MATINT:shift <- [DW_OP_plus_uconst 64] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATINT:alumode <- $w11
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 8
	.loc	3 45 33 is_stmt 1               ; matint.c:45:33
Lloh12:
	adrp	x8, _AMX_VER@GOTPAGE
Lloh13:
	ldr	x8, [x8, _AMX_VER@GOTPAGEOFF]
Lloh14:
	ldr	w8, [x8]
	mov	w9, #16
	mov	w10, #32
	cmp	w8, #2
	csel	w10, w10, w9, hi
	mov	w25, #8
	csel	w23, w9, w25, hi
	b	LBB0_45
Ltmp41:
LBB0_21:
	;DEBUG_VALUE: emulate_AMX_MATINT:alumode <- $w11
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	.loc	3 49 33                         ; matint.c:49:33
	ubfx	x8, x20, #42, #4
	.loc	3 49 9 is_stmt 0                ; matint.c:49:9
	cmp	x8, #3
	b.eq	LBB0_42
Ltmp42:
; %bb.22:
	;DEBUG_VALUE: emulate_AMX_MATINT:alumode <- $w11
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	cmp	x8, #4
	b.ne	LBB0_43
Ltmp43:
; %bb.23:
	;DEBUG_VALUE: emulate_AMX_MATINT:alumode <- $w11
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	.loc	3 0 9                           ; matint.c:0:9
	mov	w10, #32
Ltmp44:
	;DEBUG_VALUE: emulate_AMX_MATINT:zbits <- 32
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 32
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 32
	mov	w23, #32
	b	LBB0_44
Ltmp45:
LBB0_24:
	;DEBUG_VALUE: emulate_AMX_MATINT:shift <- [DW_OP_plus_uconst 64] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATINT:alumode <- $w11
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	.loc	3 56 9 is_stmt 1                ; matint.c:56:9
	and	x8, x20, #0x3c0000000000
	mov	x9, #13194139533312
Ltmp46:
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 16
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 16
	.loc	3 0 0 is_stmt 0                 ; matint.c:0:0
	cmp	x8, x9
	mov	w23, #16
	mov	w8, #32
	csel	w10, w8, w23, eq
	mov	w25, #16
	b	LBB0_45
Ltmp47:
LBB0_25:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:g <- $w22
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: store_int:nbytes <- $w22
	;DEBUG_VALUE: load_int:nbytes <- $w22
	;DEBUG_VALUE: emulate_AMX_MATINT:zbytes <- $w22
	;DEBUG_VALUE: emulate_AMX_MATINT:satbits <- $w21
	;DEBUG_VALUE: emulate_AMX_MATINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:zbits <- $w10
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	mov	x19, #0
	b	LBB0_32
Ltmp48:
LBB0_26:
	;DEBUG_VALUE: parse_writemask:val <- $w9
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:g <- $w22
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_MATINT:zbytes <- $w22
	;DEBUG_VALUE: emulate_AMX_MATINT:satbits <- $w21
	;DEBUG_VALUE: emulate_AMX_MATINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:zbits <- $w10
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	mov	x10, #-1
Ltmp49:
	.loc	4 86 23 is_stmt 1               ; ./emulate.h:86:23
	lsl	x10, x10, x22
	.loc	4 86 17 is_stmt 0               ; ./emulate.h:86:17
	mvn	x10, x10
	.loc	4 86 30                         ; ./emulate.h:86:30
	lsl	x19, x10, x9
	b	LBB0_32
Ltmp50:
LBB0_27:
	;DEBUG_VALUE: parse_writemask:val <- $w9
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:g <- $w22
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_MATINT:zbytes <- $w22
	;DEBUG_VALUE: emulate_AMX_MATINT:satbits <- $w21
	;DEBUG_VALUE: emulate_AMX_MATINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:zbits <- $w10
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	.loc	4 88 13 is_stmt 1               ; ./emulate.h:88:13
	cbz	w9, LBB0_38
Ltmp51:
LBB0_28:
	;DEBUG_VALUE: parse_writemask:val <- $w9
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:g <- $w22
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_MATINT:zbytes <- $w22
	;DEBUG_VALUE: emulate_AMX_MATINT:satbits <- $w21
	;DEBUG_VALUE: emulate_AMX_MATINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:zbits <- $w10
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	.loc	4 0 13 is_stmt 0                ; ./emulate.h:0:13
	mov	x10, #-1
Ltmp52:
	.loc	4 91 22 is_stmt 1               ; ./emulate.h:91:22
	lsl	x9, x10, x9
Ltmp53:
	.loc	4 0 22 is_stmt 0                ; ./emulate.h:0:22
	b	LBB0_31
Ltmp54:
LBB0_29:
	;DEBUG_VALUE: parse_writemask:val <- $w9
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:g <- $w22
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_MATINT:zbytes <- $w22
	;DEBUG_VALUE: emulate_AMX_MATINT:satbits <- $w21
	;DEBUG_VALUE: emulate_AMX_MATINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:zbits <- $w10
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	.loc	4 93 13 is_stmt 1               ; ./emulate.h:93:13
	cbz	w9, LBB0_38
Ltmp55:
LBB0_30:
	;DEBUG_VALUE: parse_writemask:val <- $w9
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:g <- $w22
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_MATINT:zbytes <- $w22
	;DEBUG_VALUE: emulate_AMX_MATINT:satbits <- $w21
	;DEBUG_VALUE: emulate_AMX_MATINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:zbits <- $w10
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	.loc	4 0 13 is_stmt 0                ; ./emulate.h:0:13
	mov	x10, #-1
Ltmp56:
	.loc	4 96 22 is_stmt 1               ; ./emulate.h:96:22
	lsr	x9, x10, x9
Ltmp57:
LBB0_31:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:g <- $w22
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_MATINT:zbytes <- $w22
	;DEBUG_VALUE: emulate_AMX_MATINT:satbits <- $w21
	;DEBUG_VALUE: emulate_AMX_MATINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	.loc	4 0 0 is_stmt 0                 ; ./emulate.h:0:0
	mvn	x19, x9
Ltmp58:
LBB0_32:
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_MATINT:zbytes <- $w22
	;DEBUG_VALUE: emulate_AMX_MATINT:satbits <- $w21
	;DEBUG_VALUE: emulate_AMX_MATINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	;DEBUG_VALUE: col_enable <- $x19
	;DEBUG_VALUE: j <- 0
	mov	w24, #0
	sub	w9, w22, #1
	neg	w10, w22
	str	w10, [sp, #96]                  ; 4-byte Folded Spill
	and	x9, x28, x9
	str	x9, [sp, #80]                   ; 8-byte Folded Spill
	and	x27, x8, x20, asr #63
	mov	x28, #12884901888
Ltmp59:
	b	LBB0_34
Ltmp60:
LBB0_33:                                ;   in Loop: Header=BB0_34 Depth=1
	;DEBUG_VALUE: j <- $w24
	;DEBUG_VALUE: col_enable <- $x19
	;DEBUG_VALUE: emulate_AMX_MATINT:zbytes <- $w22
	;DEBUG_VALUE: emulate_AMX_MATINT:satbits <- $w21
	;DEBUG_VALUE: emulate_AMX_MATINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	.loc	3 70 40 is_stmt 1               ; matint.c:70:40
	add	w24, w24, w22
Ltmp61:
	;DEBUG_VALUE: j <- $w24
	.loc	3 70 9 is_stmt 0                ; matint.c:70:9
	cmp	w24, #64
	b.hs	LBB0_2
Ltmp62:
LBB0_34:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_36 Depth 2
	;DEBUG_VALUE: col_enable <- $x19
	;DEBUG_VALUE: emulate_AMX_MATINT:zbytes <- $w22
	;DEBUG_VALUE: emulate_AMX_MATINT:satbits <- $w21
	;DEBUG_VALUE: emulate_AMX_MATINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	;DEBUG_VALUE: j <- $w24
	;DEBUG_VALUE: i <- 0
	.loc	3 0 9                           ; matint.c:0:9
	mov	x25, #0
	ldr	w8, [sp, #96]                   ; 4-byte Folded Reload
	and	w8, w24, w8
	ldr	x9, [sp, #80]                   ; 8-byte Folded Reload
	orr	x8, x9, x8
	ldr	x9, [sp, #88]                   ; 8-byte Folded Reload
	add	x8, x9, x8, lsl #6
	add	x26, x8, #1024
	b	LBB0_36
Ltmp63:
LBB0_35:                                ;   in Loop: Header=BB0_36 Depth=2
	;DEBUG_VALUE: i <- $x25
	;DEBUG_VALUE: j <- $w24
	;DEBUG_VALUE: col_enable <- $x19
	;DEBUG_VALUE: emulate_AMX_MATINT:zbytes <- $w22
	;DEBUG_VALUE: emulate_AMX_MATINT:satbits <- $w21
	;DEBUG_VALUE: emulate_AMX_MATINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	.loc	3 71 44 is_stmt 1               ; matint.c:71:44
	add	x25, x25, x22
Ltmp64:
	;DEBUG_VALUE: i <- $x25
	.loc	3 71 13 is_stmt 0               ; matint.c:71:13
	cmp	x25, #64
	b.hs	LBB0_33
Ltmp65:
LBB0_36:                                ;   Parent Loop BB0_34 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	;DEBUG_VALUE: j <- $w24
	;DEBUG_VALUE: col_enable <- $x19
	;DEBUG_VALUE: emulate_AMX_MATINT:zbytes <- $w22
	;DEBUG_VALUE: emulate_AMX_MATINT:satbits <- $w21
	;DEBUG_VALUE: emulate_AMX_MATINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	;DEBUG_VALUE: i <- $x25
	.loc	3 72 39 is_stmt 1               ; matint.c:72:39
	tst	x20, #0x2000000
	csel	w8, w25, w24, eq
Ltmp66:
	.loc	3 72 21 is_stmt 0               ; matint.c:72:21
	lsr	x8, x19, x8
	tbz	w8, #0, LBB0_35
Ltmp67:
; %bb.37:                               ;   in Loop: Header=BB0_36 Depth=2
	;DEBUG_VALUE: i <- $x25
	;DEBUG_VALUE: j <- $w24
	;DEBUG_VALUE: col_enable <- $x19
	;DEBUG_VALUE: emulate_AMX_MATINT:zbytes <- $w22
	;DEBUG_VALUE: emulate_AMX_MATINT:satbits <- $w21
	;DEBUG_VALUE: emulate_AMX_MATINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	;DEBUG_VALUE: z <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $x26, $x25
	;DEBUG_VALUE: load_int:src <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $x26, $x25
	;DEBUG_VALUE: load_int:nbytes <- $w22
	;DEBUG_VALUE: load_int:signext <- undef
	.loc	4 32 5 is_stmt 1                ; ./emulate.h:32:5
	add	x23, x26, x25
Ltmp68:
	;DEBUG_VALUE: load_int:val <- 0
	.loc	4 32 13 is_stmt 0               ; ./emulate.h:32:13
	stur	xzr, [x29, #-160]
Ltmp69:
	;DEBUG_VALUE: load_int:val <- [DW_OP_constu 160, DW_OP_minus, DW_OP_deref] $fp
	.loc	4 33 5 is_stmt 1                ; ./emulate.h:33:5
	sub	x0, x29, #160
	mov	x1, x23
	mov	x2, x22
	mov	w3, #8
	bl	___memcpy_chk
Ltmp70:
	.loc	4 34 13                         ; ./emulate.h:34:13
	ldur	x8, [x29, #-160]
Ltmp71:
	;DEBUG_VALUE: load_int:val <- $x8
	.loc	4 34 17 is_stmt 0               ; ./emulate.h:34:17
	lsl	x8, x8, x27
Ltmp72:
	.loc	4 34 29                         ; ./emulate.h:34:29
	asr	x0, x8, x27
Ltmp73:
	;DEBUG_VALUE: val <- $x0
	.loc	3 75 23 is_stmt 1               ; matint.c:75:23
	mov	x1, x21
	mov	x2, x20
	bl	_vecint_alu_mode4
Ltmp74:
	;DEBUG_VALUE: val <- $x0
	.loc	3 0 23 is_stmt 0                ; matint.c:0:23
	ldr	x8, [sp, #104]                  ; 8-byte Folded Reload
	.loc	3 76 42 is_stmt 1               ; matint.c:76:42
	cmp	x8, x28
	csel	x8, xzr, x0, eq
	;DEBUG_VALUE: store_int:val <- $x8
	stur	x8, [x29, #-160]
Ltmp75:
	;DEBUG_VALUE: store_int:nbytes <- $w22
	;DEBUG_VALUE: store_int:dst <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_constu 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value] $x26, $x25
	;DEBUG_VALUE: store_int:val <- [DW_OP_constu 160, DW_OP_minus, DW_OP_deref] $fp
	.loc	4 38 5                          ; ./emulate.h:38:5
	sub	x1, x29, #160
	mov	x0, x23
Ltmp76:
	mov	x2, x22
	bl	_memcpy
Ltmp77:
	.loc	4 0 5 is_stmt 0                 ; ./emulate.h:0:5
	b	LBB0_35
Ltmp78:
LBB0_38:
	;DEBUG_VALUE: parse_writemask:val <- $w9
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w11
	;DEBUG_VALUE: parse_writemask:g <- $w22
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_MATINT:zbytes <- $w22
	;DEBUG_VALUE: emulate_AMX_MATINT:satbits <- $w21
	;DEBUG_VALUE: emulate_AMX_MATINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:zbits <- $w10
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	mov	x19, #-1
	b	LBB0_32
Ltmp79:
LBB0_39:
	;DEBUG_VALUE: emulate_AMX_MATINT:shift <- [DW_OP_plus_uconst 64] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATINT:alumode <- $w11
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	mov	w23, #8
	mov	w10, #32
	b	LBB0_41
Ltmp80:
LBB0_40:
	;DEBUG_VALUE: emulate_AMX_MATINT:shift <- [DW_OP_plus_uconst 64] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATINT:alumode <- $w11
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	mov	w23, #8
	mov	w10, #16
Ltmp81:
	;DEBUG_VALUE: emulate_AMX_MATINT:zbits <- 16
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 8
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 8
LBB0_41:
	;DEBUG_VALUE: emulate_AMX_MATINT:shift <- [DW_OP_plus_uconst 64] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATINT:alumode <- $w11
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	mov	w25, #8
	b	LBB0_45
Ltmp82:
LBB0_42:
	;DEBUG_VALUE: emulate_AMX_MATINT:alumode <- $w11
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	mov	w23, #16
	mov	w10, #32
	b	LBB0_44
Ltmp83:
LBB0_43:
	;DEBUG_VALUE: emulate_AMX_MATINT:alumode <- $w11
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	mov	w10, #16
Ltmp84:
	;DEBUG_VALUE: emulate_AMX_MATINT:zbits <- 16
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 16
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 16
	mov	w23, #16
Ltmp85:
LBB0_44:
	;DEBUG_VALUE: emulate_AMX_MATINT:alumode <- $w11
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- $w23
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- $w23
	;DEBUG_VALUE: emulate_AMX_MATINT:zbits <- $w10
	mov	w8, #64
Ltmp86:
	.loc	3 54 20 is_stmt 1               ; matint.c:54:20
	sub	w8, w8, w23
Ltmp87:
	;DEBUG_VALUE: emulate_AMX_MATINT:shift <- $w8
	.loc	3 0 20 is_stmt 0                ; matint.c:0:20
	str	x8, [sp, #64]                   ; 8-byte Folded Spill
Ltmp88:
	;DEBUG_VALUE: emulate_AMX_MATINT:shift <- [DW_OP_plus_uconst 64] [$sp+0]
	mov	x25, x23
Ltmp89:
LBB0_45:
	;DEBUG_VALUE: emulate_AMX_MATINT:alumode <- $w11
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATINT:shift <- undef
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	.loc	3 80 29 is_stmt 1               ; matint.c:80:29
	cmp	w11, #7
	b.eq	LBB0_2
Ltmp90:
; %bb.46:
	;DEBUG_VALUE: emulate_AMX_MATINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:alumode <- $w11
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	cmp	w11, #9
	b.hi	LBB0_2
Ltmp91:
; %bb.47:
	;DEBUG_VALUE: emulate_AMX_MATINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:alumode <- $w11
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	.loc	3 0 29 is_stmt 0                ; matint.c:0:29
	stp	w10, w11, [sp, #56]             ; 8-byte Folded Spill
	.loc	3 86 46 is_stmt 1               ; matint.c:86:46
	ubfx	x8, x20, #10, #9
	mov	w19, #512
Ltmp92:
	;DEBUG_VALUE: load_xy_reg:src <- [DW_OP_plus_uconst 88] [$sp+0]
	;DEBUG_VALUE: load_xy_reg:dst <- [DW_OP_plus_uconst 176, DW_OP_stack_value] $sp
	;DEBUG_VALUE: load_xy_reg:offset <- $x8
	.loc	4 42 26                         ; ./emulate.h:42:26
	sub	x9, x19, x8
Ltmp93:
	;DEBUG_VALUE: load_xy_reg:avail <- $x9
	.loc	4 0 26 is_stmt 0                ; ./emulate.h:0:26
	ldr	x22, [sp, #88]                  ; 8-byte Folded Reload
	.loc	4 43 5 is_stmt 1                ; ./emulate.h:43:5
	add	x1, x22, x8
	.loc	4 44 5                          ; ./emulate.h:44:5
	sub	x10, x8, #448
	mov	w21, #64
	.loc	4 43 5                          ; ./emulate.h:43:5
	cmp	x8, #449
	csel	x2, x21, x9, lo
	add	x8, sp, #176
Ltmp94:
	.loc	4 44 5                          ; ./emulate.h:44:5
	add	x24, x8, x9
	csel	x26, xzr, x10, lo
	.loc	4 43 5                          ; ./emulate.h:43:5
	add	x0, sp, #176
	mov	w3, #64
	bl	___memcpy_chk
Ltmp95:
	.loc	4 44 5                          ; ./emulate.h:44:5
	mov	x0, x24
	mov	x1, x22
	mov	x2, x26
	bl	_memcpy
Ltmp96:
	.loc	3 87 27                         ; matint.c:87:27
	add	x24, x22, #512
	.loc	3 87 38 is_stmt 0               ; matint.c:87:38
	and	x8, x20, #0x1ff
Ltmp97:
	;DEBUG_VALUE: load_xy_reg:src <- $x24
	;DEBUG_VALUE: load_xy_reg:dst <- [DW_OP_plus_uconst 112, DW_OP_stack_value] $sp
	;DEBUG_VALUE: load_xy_reg:offset <- $x8
	.loc	4 42 26 is_stmt 1               ; ./emulate.h:42:26
	sub	x9, x19, x8
Ltmp98:
	;DEBUG_VALUE: load_xy_reg:avail <- $x9
	.loc	4 43 5                          ; ./emulate.h:43:5
	add	x1, x24, x8
	.loc	4 44 5                          ; ./emulate.h:44:5
	sub	x10, x8, #448
	.loc	4 43 5                          ; ./emulate.h:43:5
	cmp	x8, #449
	csel	x2, x21, x9, lo
	add	x8, sp, #112
Ltmp99:
	.loc	4 44 5                          ; ./emulate.h:44:5
	add	x26, x8, x9
	csel	x27, xzr, x10, lo
	.loc	4 43 5                          ; ./emulate.h:43:5
	add	x0, sp, #112
	mov	w3, #64
	bl	___memcpy_chk
Ltmp100:
	.loc	4 44 5                          ; ./emulate.h:44:5
	mov	x0, x26
	mov	x1, x24
	mov	x2, x27
	bl	_memcpy
Ltmp101:
	.loc	3 88 9                          ; matint.c:88:9
	tbz	x20, #53, LBB0_52
Ltmp102:
; %bb.48:
	;DEBUG_VALUE: emulate_AMX_MATINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	.loc	3 89 28                         ; matint.c:89:28
	ubfx	x8, x20, #49, #3
Ltmp103:
	;DEBUG_VALUE: src_reg <- [DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 32 7, DW_OP_constu 7, DW_OP_and, DW_OP_stack_value] undef
	.loc	3 90 26                         ; matint.c:90:26
	tst	x20, #0x1000000000000
	mov	w9, #4
	mov	w10, #2
	csel	w2, w10, w9, eq
Ltmp104:
	;DEBUG_VALUE: ibits <- $w2
	.loc	3 91 13                         ; matint.c:91:13
	tbnz	x20, #47, LBB0_50
Ltmp105:
; %bb.49:
	;DEBUG_VALUE: ibits <- $w2
	;DEBUG_VALUE: emulate_AMX_MATINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	.loc	3 0 13 is_stmt 0                ; matint.c:0:13
	ldr	x9, [sp, #88]                   ; 8-byte Folded Reload
Ltmp106:
	.loc	3 94 36 is_stmt 1               ; matint.c:94:36
	add	x1, x9, x8, lsl #6
	.loc	3 94 13 is_stmt 0               ; matint.c:94:13
	add	x0, sp, #176
	mov	x3, x25
	b	LBB0_51
Ltmp107:
LBB0_50:
	;DEBUG_VALUE: ibits <- $w2
	;DEBUG_VALUE: emulate_AMX_MATINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	.loc	3 0 13                          ; matint.c:0:13
	ldr	x9, [sp, #88]                   ; 8-byte Folded Reload
Ltmp108:
	.loc	3 92 36 is_stmt 1               ; matint.c:92:36
	add	x8, x9, x8, lsl #6
	add	x1, x8, #512
	.loc	3 92 13 is_stmt 0               ; matint.c:92:13
	add	x0, sp, #112
	mov	x3, x23
Ltmp109:
LBB0_51:
	;DEBUG_VALUE: ibits <- $w2
	;DEBUG_VALUE: emulate_AMX_MATINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	.loc	3 0 0                           ; matint.c:0:0
	bl	_load_xy_reg_indexed
Ltmp110:
LBB0_52:
	;DEBUG_VALUE: emulate_AMX_MATINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	lsr	w8, w25, #3
	str	x8, [sp, #72]                   ; 8-byte Folded Spill
	.loc	3 97 19 is_stmt 1               ; matint.c:97:19
	ubfx	w8, w20, #29, #2
Ltmp111:
	;DEBUG_VALUE: xy_shuffle:ebytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: xy_shuffle:dst <- [DW_OP_plus_uconst 176, DW_OP_stack_value] $sp
	;DEBUG_VALUE: xy_shuffle:shuffle <- $w8
	.loc	4 50 9                          ; ./emulate.h:50:9
	cbz	w8, LBB0_56
Ltmp112:
; %bb.53:
	;DEBUG_VALUE: xy_shuffle:shuffle <- $w8
	;DEBUG_VALUE: xy_shuffle:dst <- [DW_OP_plus_uconst 176, DW_OP_stack_value] $sp
	;DEBUG_VALUE: xy_shuffle:ebytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	.loc	4 0 9 is_stmt 0                 ; ./emulate.h:0:9
	str	w23, [sp, #96]                  ; 4-byte Folded Spill
	mov	x23, x28
Ltmp113:
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x23
	mov	x28, x25
	mov	x19, #0
	mov	w21, #0
Ltmp114:
	.loc	4 52 9 is_stmt 1                ; ./emulate.h:52:9
	ldp	q0, q1, [sp, #176]
	stp	q0, q1, [x29, #-160]
	ldp	q0, q1, [sp, #208]
	stp	q0, q1, [x29, #-128]
	mov	w22, #64
	lsr	w24, w22, w8
Ltmp115:
	;DEBUG_VALUE: step <- $w24
	.loc	4 0 9 is_stmt 0                 ; ./emulate.h:0:9
	add	x26, sp, #176
	sub	x27, x29, #160
	ldr	x25, [sp, #72]                  ; 8-byte Folded Reload
	;DEBUG_VALUE: soff <- 0
	;DEBUG_VALUE: doff <- 0
Ltmp116:
LBB0_54:                                ; =>This Inner Loop Header: Depth=1
	;DEBUG_VALUE: step <- $w24
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x23
	;DEBUG_VALUE: xy_shuffle:dst <- [DW_OP_plus_uconst 176, DW_OP_stack_value] $sp
	;DEBUG_VALUE: xy_shuffle:ebytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	;DEBUG_VALUE: doff <- $x19
	;DEBUG_VALUE: soff <- $w21
	.loc	4 55 13 is_stmt 1               ; ./emulate.h:55:13
	add	x0, x26, x19
	add	x1, x27, w21, uxtw
	mov	x2, x25
	bl	_memcpy
Ltmp117:
	.loc	4 56 18                         ; ./emulate.h:56:18
	add	w8, w21, w24
Ltmp118:
	;DEBUG_VALUE: soff <- $w8
	.loc	4 57 17                         ; ./emulate.h:57:17
	cmp	w8, #64
	csel	w9, w22, w25, lo
Ltmp119:
	;DEBUG_VALUE: soff <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $w9, $w8
	add	w8, w9, w8
Ltmp120:
	.loc	4 60 18                         ; ./emulate.h:60:18
	and	w21, w8, #0x3f
Ltmp121:
	;DEBUG_VALUE: soff <- $w21
	.loc	4 54 59                         ; ./emulate.h:54:59
	add	x19, x19, x25
Ltmp122:
	;DEBUG_VALUE: doff <- $x19
	.loc	4 54 9 is_stmt 0                ; ./emulate.h:54:9
	cmp	x19, #64
	b.lo	LBB0_54
Ltmp123:
; %bb.55:
	;DEBUG_VALUE: soff <- $w21
	;DEBUG_VALUE: doff <- $x19
	;DEBUG_VALUE: step <- $w24
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x23
	;DEBUG_VALUE: xy_shuffle:dst <- [DW_OP_plus_uconst 176, DW_OP_stack_value] $sp
	;DEBUG_VALUE: xy_shuffle:ebytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	.loc	4 0 9                           ; ./emulate.h:0:9
	mov	x25, x28
	mov	x28, x23
Ltmp124:
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	ldr	w23, [sp, #96]                  ; 4-byte Folded Reload
Ltmp125:
LBB0_56:
	;DEBUG_VALUE: emulate_AMX_MATINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	lsr	w2, w23, #3
	.loc	3 98 19 is_stmt 1               ; matint.c:98:19
	ubfx	w8, w20, #27, #2
	str	x2, [sp, #80]                   ; 8-byte Folded Spill
Ltmp126:
	;DEBUG_VALUE: xy_shuffle:ebytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: xy_shuffle:dst <- [DW_OP_plus_uconst 112, DW_OP_stack_value] $sp
	;DEBUG_VALUE: xy_shuffle:shuffle <- $w8
	.loc	4 50 9                          ; ./emulate.h:50:9
	cbz	w8, LBB0_59
Ltmp127:
; %bb.57:
	;DEBUG_VALUE: xy_shuffle:shuffle <- $w8
	;DEBUG_VALUE: xy_shuffle:dst <- [DW_OP_plus_uconst 112, DW_OP_stack_value] $sp
	;DEBUG_VALUE: xy_shuffle:ebytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	.loc	4 0 9 is_stmt 0                 ; ./emulate.h:0:9
	mov	w21, #0
	mov	w19, #0
Ltmp128:
	.loc	4 52 9 is_stmt 1                ; ./emulate.h:52:9
	ldp	q0, q1, [sp, #112]
	stp	q0, q1, [x29, #-160]
	ldp	q0, q1, [sp, #144]
	stp	q0, q1, [x29, #-128]
	mov	w22, #64
	lsr	w24, w22, w8
Ltmp129:
	;DEBUG_VALUE: step <- $w24
	.loc	4 0 9 is_stmt 0                 ; ./emulate.h:0:9
	add	x26, sp, #112
	sub	x27, x29, #160
	;DEBUG_VALUE: soff <- 0
	;DEBUG_VALUE: doff <- 0
Ltmp130:
LBB0_58:                                ; =>This Inner Loop Header: Depth=1
	;DEBUG_VALUE: step <- $w24
	;DEBUG_VALUE: xy_shuffle:dst <- [DW_OP_plus_uconst 112, DW_OP_stack_value] $sp
	;DEBUG_VALUE: xy_shuffle:ebytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	;DEBUG_VALUE: doff <- $w19
	;DEBUG_VALUE: soff <- $w21
	.loc	4 55 13 is_stmt 1               ; ./emulate.h:55:13
	add	x0, x26, w19, uxtw
	add	x1, x27, w21, uxtw
	bl	_memcpy
Ltmp131:
	.loc	4 0 13 is_stmt 0                ; ./emulate.h:0:13
	ldr	x2, [sp, #80]                   ; 8-byte Folded Reload
	.loc	4 56 18 is_stmt 1               ; ./emulate.h:56:18
	add	w8, w21, w24
Ltmp132:
	;DEBUG_VALUE: soff <- $w8
	.loc	4 57 17                         ; ./emulate.h:57:17
	cmp	w8, #64
	csel	w9, w22, w2, lo
Ltmp133:
	;DEBUG_VALUE: soff <- [DW_OP_LLVM_arg 0, DW_OP_LLVM_arg 1, DW_OP_plus, DW_OP_stack_value] $w9, $w8
	add	w8, w9, w8
Ltmp134:
	.loc	4 60 18                         ; ./emulate.h:60:18
	and	w21, w8, #0x3f
Ltmp135:
	;DEBUG_VALUE: soff <- $w21
	.loc	4 54 59                         ; ./emulate.h:54:59
	add	w19, w19, w2
Ltmp136:
	;DEBUG_VALUE: doff <- $w19
	.loc	4 54 9 is_stmt 0                ; ./emulate.h:54:9
	cmp	w19, #64
	b.lo	LBB0_58
Ltmp137:
LBB0_59:
	;DEBUG_VALUE: emulate_AMX_MATINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	.loc	3 26 32 is_stmt 1               ; matint.c:26:32
	lsr	x8, x20, #32
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
Ltmp138:
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: parse_writemask:g <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: parse_writemask:g <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: parse_writemask:val <- $w8
	;DEBUG_VALUE: parse_writemask:val <- $w8
	.loc	3 0 0 is_stmt 0                 ; matint.c:0:0
	ubfx	x9, x20, #38, #3
	;DEBUG_VALUE: parse_writemask:mode <- $w9
Ltmp139:
	;DEBUG_VALUE: parse_writemask:mode <- $w9
	.loc	4 67 9 is_stmt 1                ; ./emulate.h:67:9
	cmp	w9, #0
Ltmp140:
	.loc	3 107 9                         ; matint.c:107:9
	tbnz	w20, #25, LBB0_66
Ltmp141:
; %bb.60:
	;DEBUG_VALUE: parse_writemask:mode <- $w9
	;DEBUG_VALUE: parse_writemask:val <- $w8
	;DEBUG_VALUE: parse_writemask:g <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_MATINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	.loc	3 0 9 is_stmt 0                 ; matint.c:0:9
	ldr	x10, [sp, #72]                  ; 8-byte Folded Reload
Ltmp142:
	.loc	4 67 9 is_stmt 1                ; ./emulate.h:67:9
	csinc	w10, w10, wzr, ne
Ltmp143:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:val <- undef
	.loc	4 70 5                          ; ./emulate.h:70:5
	cmp	w9, #5
	b.hi	LBB0_72
Ltmp144:
; %bb.61:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w9
	;DEBUG_VALUE: parse_writemask:g <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_MATINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	.loc	4 0 5 is_stmt 0                 ; ./emulate.h:0:5
	mul	w10, w10, w8
	and	w8, w10, #0x3f
Ltmp145:
	;DEBUG_VALUE: parse_writemask:val <- $w8
	mov	w9, w9
Ltmp146:
Lloh15:
	adrp	x11, lJTI0_1@PAGE
Lloh16:
	add	x11, x11, lJTI0_1@PAGEOFF
	adr	x12, LBB0_62
	ldrb	w13, [x11, x9]
	add	x12, x12, x13, lsl #2
	br	x12
Ltmp147:
LBB0_62:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:val <- $w8
	;DEBUG_VALUE: parse_writemask:g <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_MATINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	.loc	4 72 22 is_stmt 1               ; ./emulate.h:72:22
	sub	w11, w8, #1
	mov	x9, #-1
	cmp	w11, #1
	ldr	w13, [sp, #56]                  ; 4-byte Folded Reload
	b.hi	LBB0_65
Ltmp148:
; %bb.63:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:val <- $w8
	;DEBUG_VALUE: parse_writemask:g <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_MATINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	.loc	4 0 22 is_stmt 0                ; ./emulate.h:0:22
	ldr	x11, [sp, #72]                  ; 8-byte Folded Reload
Ltmp149:
	.loc	4 74 25 is_stmt 1               ; ./emulate.h:74:25
	lsl	x9, x9, x11
	.loc	4 74 19 is_stmt 0               ; ./emulate.h:74:19
	mvn	x9, x9
	.loc	4 74 45                         ; ./emulate.h:74:45
	sbfx	w10, w10, #0, #1
	.loc	4 74 37                         ; ./emulate.h:74:37
	and	w10, w10, w11
	.loc	4 74 31                         ; ./emulate.h:74:31
	lsl	x9, x9, x10
Ltmp150:
	;DEBUG_VALUE: parse_writemask:all <- $x9
	;DEBUG_VALUE: parse_writemask:g <- [DW_OP_plus_uconst 72, DW_OP_deref_size 8, DW_OP_constu 1, DW_OP_shl, DW_OP_stack_value] $sp
	.loc	4 0 31                          ; ./emulate.h:0:31
	mov	x10, x11
Ltmp151:
LBB0_64:                                ; =>This Inner Loop Header: Depth=1
	;DEBUG_VALUE: parse_writemask:all <- $x9
	;DEBUG_VALUE: parse_writemask:val <- $w8
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_MATINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	.loc	4 75 23 is_stmt 1               ; ./emulate.h:75:23
	lsl	w11, w10, #1
	;DEBUG_VALUE: parse_writemask:all <- $x9
Ltmp152:
	.loc	4 76 28                         ; ./emulate.h:76:28
	lsl	x12, x9, x11
	.loc	4 76 21 is_stmt 0               ; ./emulate.h:76:21
	orr	x9, x12, x9
Ltmp153:
	;DEBUG_VALUE: parse_writemask:all <- $x9
	;DEBUG_VALUE: parse_writemask:g <- [DW_OP_constu 1, DW_OP_shl, DW_OP_stack_value] $w11
	.loc	4 75 13 is_stmt 1               ; ./emulate.h:75:13
	cmp	w10, #16
	mov	x10, x11
	b.lo	LBB0_64
Ltmp154:
LBB0_65:
	;DEBUG_VALUE: parse_writemask:val <- $w8
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_MATINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	;DEBUG_VALUE: parse_writemask:all <- $x9
	.loc	4 83 16                         ; ./emulate.h:83:16
	cmp	w8, #6
	csel	x8, x9, xzr, lo
Ltmp155:
	.loc	4 0 16 is_stmt 0                ; ./emulate.h:0:16
	str	x8, [sp, #96]                   ; 8-byte Folded Spill
	mov	x8, #-1
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	b	LBB0_90
Ltmp156:
LBB0_66:
	;DEBUG_VALUE: parse_writemask:mode <- $w9
	;DEBUG_VALUE: parse_writemask:val <- $w8
	;DEBUG_VALUE: parse_writemask:g <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_MATINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	.loc	4 67 9 is_stmt 1                ; ./emulate.h:67:9
	csinc	w10, w2, wzr, ne
Ltmp157:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:val <- undef
	.loc	4 70 5                          ; ./emulate.h:70:5
	cmp	w9, #5
	b.hi	LBB0_79
Ltmp158:
; %bb.67:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w9
	;DEBUG_VALUE: parse_writemask:g <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_MATINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	.loc	4 0 5 is_stmt 0                 ; ./emulate.h:0:5
	mul	w10, w10, w8
	and	w8, w10, #0x3f
Ltmp159:
	;DEBUG_VALUE: parse_writemask:val <- $w8
	mov	w9, w9
Ltmp160:
Lloh17:
	adrp	x11, lJTI0_0@PAGE
Lloh18:
	add	x11, x11, lJTI0_0@PAGEOFF
	adr	x12, LBB0_68
	ldrb	w13, [x11, x9]
	add	x12, x12, x13, lsl #2
	br	x12
Ltmp161:
LBB0_68:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:val <- $w8
	;DEBUG_VALUE: parse_writemask:g <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_MATINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	.loc	4 72 22 is_stmt 1               ; ./emulate.h:72:22
	sub	w11, w8, #1
	mov	x9, #-1
	cmp	w11, #1
	ldr	w13, [sp, #56]                  ; 4-byte Folded Reload
	b.hi	LBB0_71
Ltmp162:
; %bb.69:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:val <- $w8
	;DEBUG_VALUE: parse_writemask:g <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_MATINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	.loc	4 74 25                         ; ./emulate.h:74:25
	lsl	x9, x9, x2
	.loc	4 74 19 is_stmt 0               ; ./emulate.h:74:19
	mvn	x9, x9
	.loc	4 74 45                         ; ./emulate.h:74:45
	sbfx	w10, w10, #0, #1
	.loc	4 74 37                         ; ./emulate.h:74:37
	and	w10, w10, w2
	.loc	4 74 31                         ; ./emulate.h:74:31
	lsl	x9, x9, x10
Ltmp163:
	;DEBUG_VALUE: parse_writemask:all <- $x9
	;DEBUG_VALUE: parse_writemask:g <- [DW_OP_plus_uconst 80, DW_OP_deref_size 8, DW_OP_constu 1, DW_OP_shl, DW_OP_stack_value] $sp
	.loc	4 0 31                          ; ./emulate.h:0:31
	mov	x10, x2
Ltmp164:
LBB0_70:                                ; =>This Inner Loop Header: Depth=1
	;DEBUG_VALUE: parse_writemask:all <- $x9
	;DEBUG_VALUE: parse_writemask:val <- $w8
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_MATINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	.loc	4 75 23 is_stmt 1               ; ./emulate.h:75:23
	lsl	w11, w10, #1
	;DEBUG_VALUE: parse_writemask:all <- $x9
Ltmp165:
	.loc	4 76 28                         ; ./emulate.h:76:28
	lsl	x12, x9, x11
	.loc	4 76 21 is_stmt 0               ; ./emulate.h:76:21
	orr	x9, x12, x9
Ltmp166:
	;DEBUG_VALUE: parse_writemask:all <- $x9
	;DEBUG_VALUE: parse_writemask:g <- [DW_OP_constu 1, DW_OP_shl, DW_OP_stack_value] $w11
	.loc	4 75 13 is_stmt 1               ; ./emulate.h:75:13
	cmp	w10, #16
	mov	x10, x11
	b.lo	LBB0_70
Ltmp167:
LBB0_71:
	;DEBUG_VALUE: parse_writemask:val <- $w8
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_MATINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	;DEBUG_VALUE: parse_writemask:all <- $x9
	.loc	4 83 16                         ; ./emulate.h:83:16
	cmp	w8, #6
	csel	x8, x9, xzr, lo
Ltmp168:
	.loc	4 0 16 is_stmt 0                ; ./emulate.h:0:16
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	mov	x8, #-1
	str	x8, [sp, #96]                   ; 8-byte Folded Spill
	b	LBB0_90
Ltmp169:
LBB0_72:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w9
	;DEBUG_VALUE: parse_writemask:g <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_MATINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	str	xzr, [sp, #96]                  ; 8-byte Folded Spill
	mov	x8, #-1
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	b	LBB0_89
Ltmp170:
LBB0_73:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:val <- $w8
	;DEBUG_VALUE: parse_writemask:g <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_MATINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	mov	x11, #-1
	ldr	x9, [sp, #72]                   ; 8-byte Folded Reload
	mov	x10, #-1
	str	x10, [sp, #24]                  ; 8-byte Folded Spill
Ltmp171:
	.loc	4 86 23 is_stmt 1               ; ./emulate.h:86:23
	lsl	x9, x11, x9
	.loc	4 86 17 is_stmt 0               ; ./emulate.h:86:17
	mvn	x9, x9
	.loc	4 86 30                         ; ./emulate.h:86:30
	lsl	x8, x9, x8
Ltmp172:
	.loc	4 0 30                          ; ./emulate.h:0:30
	b	LBB0_88
Ltmp173:
LBB0_74:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:val <- $w8
	;DEBUG_VALUE: parse_writemask:g <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_MATINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	.loc	4 88 13 is_stmt 1               ; ./emulate.h:88:13
	cbz	w8, LBB0_86
Ltmp174:
LBB0_75:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:val <- $w8
	;DEBUG_VALUE: parse_writemask:g <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_MATINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	.loc	4 0 13 is_stmt 0                ; ./emulate.h:0:13
	mov	x10, #-1
	mov	x9, #-1
	str	x9, [sp, #24]                   ; 8-byte Folded Spill
	.loc	4 91 22 is_stmt 1               ; ./emulate.h:91:22
	lsl	x8, x10, x8
Ltmp175:
	.loc	4 0 22 is_stmt 0                ; ./emulate.h:0:22
	b	LBB0_78
Ltmp176:
LBB0_76:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:val <- $w8
	;DEBUG_VALUE: parse_writemask:g <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_MATINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	.loc	4 93 13 is_stmt 1               ; ./emulate.h:93:13
	cbz	w8, LBB0_86
Ltmp177:
LBB0_77:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:val <- $w8
	;DEBUG_VALUE: parse_writemask:g <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_MATINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	.loc	4 0 13 is_stmt 0                ; ./emulate.h:0:13
	mov	x10, #-1
	mov	x9, #-1
	str	x9, [sp, #24]                   ; 8-byte Folded Spill
	.loc	4 96 22 is_stmt 1               ; ./emulate.h:96:22
	lsr	x8, x10, x8
Ltmp178:
LBB0_78:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:g <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_MATINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	.loc	4 0 0 is_stmt 0                 ; ./emulate.h:0:0
	mvn	x8, x8
	b	LBB0_88
Ltmp179:
LBB0_79:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:mode <- $w9
	;DEBUG_VALUE: parse_writemask:g <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_MATINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	str	xzr, [sp, #24]                  ; 8-byte Folded Spill
	b	LBB0_87
Ltmp180:
LBB0_80:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:val <- $w8
	;DEBUG_VALUE: parse_writemask:g <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_MATINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	mov	x10, #-1
	mov	x9, #-1
	str	x9, [sp, #96]                   ; 8-byte Folded Spill
Ltmp181:
	.loc	4 86 23 is_stmt 1               ; ./emulate.h:86:23
	lsl	x9, x10, x2
	.loc	4 86 17 is_stmt 0               ; ./emulate.h:86:17
	mvn	x9, x9
	.loc	4 86 30                         ; ./emulate.h:86:30
	lsl	x8, x9, x8
Ltmp182:
	.loc	4 0 30                          ; ./emulate.h:0:30
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	b	LBB0_89
Ltmp183:
LBB0_81:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:val <- $w8
	;DEBUG_VALUE: parse_writemask:g <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_MATINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	.loc	4 88 13 is_stmt 1               ; ./emulate.h:88:13
	cbz	w8, LBB0_86
Ltmp184:
LBB0_82:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:val <- $w8
	;DEBUG_VALUE: parse_writemask:g <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_MATINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	.loc	4 0 13 is_stmt 0                ; ./emulate.h:0:13
	mov	x10, #-1
	mov	x9, #-1
	str	x9, [sp, #96]                   ; 8-byte Folded Spill
	.loc	4 91 22 is_stmt 1               ; ./emulate.h:91:22
	lsl	x8, x10, x8
Ltmp185:
	.loc	4 0 22 is_stmt 0                ; ./emulate.h:0:22
	b	LBB0_85
Ltmp186:
LBB0_83:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:val <- $w8
	;DEBUG_VALUE: parse_writemask:g <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_MATINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	.loc	4 93 13 is_stmt 1               ; ./emulate.h:93:13
	cbz	w8, LBB0_86
Ltmp187:
LBB0_84:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:val <- $w8
	;DEBUG_VALUE: parse_writemask:g <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_MATINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	.loc	4 0 13 is_stmt 0                ; ./emulate.h:0:13
	mov	x10, #-1
	mov	x9, #-1
	str	x9, [sp, #96]                   ; 8-byte Folded Spill
	.loc	4 96 22 is_stmt 1               ; ./emulate.h:96:22
	lsr	x8, x10, x8
Ltmp188:
LBB0_85:
	;DEBUG_VALUE: parse_writemask:all <- -1
	;DEBUG_VALUE: parse_writemask:g <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: parse_writemask:maskbits <- 9
	;DEBUG_VALUE: emulate_AMX_MATINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	.loc	4 0 0 is_stmt 0                 ; ./emulate.h:0:0
	mvn	x8, x8
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	b	LBB0_89
Ltmp189:
LBB0_86:
	;DEBUG_VALUE: emulate_AMX_MATINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	mov	x8, #-1
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
Ltmp190:
LBB0_87:
	;DEBUG_VALUE: emulate_AMX_MATINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	mov	x8, #-1
Ltmp191:
LBB0_88:
	;DEBUG_VALUE: emulate_AMX_MATINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	str	x8, [sp, #96]                   ; 8-byte Folded Spill
Ltmp192:
LBB0_89:
	;DEBUG_VALUE: emulate_AMX_MATINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	ldr	w13, [sp, #56]                  ; 4-byte Folded Reload
Ltmp193:
LBB0_90:
	;DEBUG_VALUE: emulate_AMX_MATINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	lsr	w27, w13, #3
Ltmp194:
	;DEBUG_VALUE: emulate_AMX_MATINT:y_enable <- [DW_OP_plus_uconst 24] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATINT:x_enable <- [DW_OP_plus_uconst 96] [$sp+0]
	.loc	3 114 9 is_stmt 1               ; matint.c:114:9
	and	x8, x20, #0x1fe00000000
	mov	x9, #17179869184
	;DEBUG_VALUE: val <- [DW_OP_constu 32, DW_OP_shr, DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 32 7, DW_OP_constu 62, DW_OP_and, DW_OP_stack_value] $x20
	cmp	x8, x9
	b.ne	LBB0_92
Ltmp195:
; %bb.91:
	;DEBUG_VALUE: val <- [DW_OP_constu 32, DW_OP_shr, DW_OP_LLVM_convert 64 7, DW_OP_LLVM_convert 32 7, DW_OP_constu 62, DW_OP_and, DW_OP_stack_value] $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:x_enable <- [DW_OP_plus_uconst 96] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATINT:y_enable <- [DW_OP_plus_uconst 24] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	.loc	3 117 13                        ; matint.c:117:13
	tst	x20, #0x2000000
	add	x8, sp, #112
	add	x9, sp, #176
	csel	x8, x9, x8, eq
	movi.2d	v0, #0000000000000000
	stp	q0, q0, [x8, #32]
	stp	q0, q0, [x8]
Ltmp196:
LBB0_92:
	;DEBUG_VALUE: emulate_AMX_MATINT:x_enable <- [DW_OP_plus_uconst 96] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATINT:y_enable <- [DW_OP_plus_uconst 24] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:z_row <- $x28
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- $x20
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	.loc	3 0 13 is_stmt 0                ; matint.c:0:13
	mov	w8, #0
	ldr	x14, [sp, #72]                  ; 8-byte Folded Reload
	.loc	3 124 30 is_stmt 1              ; matint.c:124:30
	udiv	w9, w27, w14
	mov	w10, #64
	.loc	3 121 25                        ; matint.c:121:25
	sub	w11, w10, w25
Ltmp197:
	;DEBUG_VALUE: emulate_AMX_MATINT:xsignext <- undef
	.loc	3 0 25 is_stmt 0                ; matint.c:0:25
	and	x22, x11, x20, asr #63
	.loc	3 122 34 is_stmt 1              ; matint.c:122:34
	lsl	x11, x20, #37
	.loc	3 122 25 is_stmt 0              ; matint.c:122:25
	sub	w12, w10, w23
Ltmp198:
	;DEBUG_VALUE: emulate_AMX_MATINT:ysignext <- undef
	.loc	3 123 28 is_stmt 1              ; matint.c:123:28
	sub	w26, w10, w13
Ltmp199:
	;DEBUG_VALUE: emulate_AMX_MATINT:zsignext <- $w26
	.loc	3 124 40                        ; matint.c:124:40
	sub	w10, w9, #1
Ltmp200:
	;DEBUG_VALUE: emulate_AMX_MATINT:zmask <- $w10
	.loc	3 0 40 is_stmt 0                ; matint.c:0:40
	str	w10, [sp, #56]                  ; 4-byte Folded Spill
Ltmp201:
	;DEBUG_VALUE: emulate_AMX_MATINT:zmask <- [DW_OP_plus_uconst 56] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATINT:zmask <- [DW_OP_plus_uconst 56] [$sp+0]
	.loc	3 125 21 is_stmt 1              ; matint.c:125:21
	subs	w10, w14, #1
	csel	w13, w27, w14, eq
	;DEBUG_VALUE: j <- 0
Ltmp202:
	;DEBUG_VALUE: emulate_AMX_MATINT:step <- $w13
	.loc	3 0 21 is_stmt 0                ; matint.c:0:21
	str	w13, [sp, #36]                  ; 4-byte Folded Spill
Ltmp203:
	;DEBUG_VALUE: emulate_AMX_MATINT:step <- [DW_OP_plus_uconst 36] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATINT:step <- [DW_OP_plus_uconst 36] [$sp+0]
	and	x21, x12, x11, asr #63
	neg	w11, w14
	str	w11, [sp, #20]                  ; 4-byte Folded Spill
	and	x10, x28, x10
	mov	x28, x14
Ltmp204:
	neg	w9, w9
	stp	x9, x10, [sp]                   ; 16-byte Folded Spill
	neg	w9, w27
	str	w9, [sp, #52]                   ; 4-byte Folded Spill
	b	LBB0_94
Ltmp205:
LBB0_93:                                ;   in Loop: Header=BB0_94 Depth=1
	;DEBUG_VALUE: emulate_AMX_MATINT:step <- [DW_OP_plus_uconst 36] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATINT:zmask <- [DW_OP_plus_uconst 56] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATINT:zsignext <- $w26
	;DEBUG_VALUE: emulate_AMX_MATINT:x_enable <- [DW_OP_plus_uconst 96] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATINT:y_enable <- [DW_OP_plus_uconst 24] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	ldr	w8, [sp, #36]                   ; 4-byte Folded Reload
	ldr	x9, [sp, #40]                   ; 8-byte Folded Reload
Ltmp206:
	.loc	3 126 36 is_stmt 1              ; matint.c:126:36
	add	w8, w9, w8
Ltmp207:
	;DEBUG_VALUE: j <- $w8
	.loc	3 126 5 is_stmt 0               ; matint.c:126:5
	cmp	w8, #64
	b.hs	LBB0_2
Ltmp208:
LBB0_94:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_97 Depth 2
	;DEBUG_VALUE: emulate_AMX_MATINT:step <- [DW_OP_plus_uconst 36] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATINT:zmask <- [DW_OP_plus_uconst 56] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATINT:zsignext <- $w26
	;DEBUG_VALUE: emulate_AMX_MATINT:x_enable <- [DW_OP_plus_uconst 96] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATINT:y_enable <- [DW_OP_plus_uconst 24] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	;DEBUG_VALUE: j <- $w8
	.loc	3 0 5                           ; matint.c:0:5
	ldr	x9, [sp, #24]                   ; 8-byte Folded Reload
Ltmp209:
	.loc	3 127 13 is_stmt 1              ; matint.c:127:13
	lsr	x9, x9, x8
Ltmp210:
	.loc	3 127 25 is_stmt 0              ; matint.c:127:25
	mov	w8, w8
Ltmp211:
	.loc	3 0 25                          ; matint.c:0:25
	str	x8, [sp, #40]                   ; 8-byte Folded Spill
Ltmp212:
	.loc	3 127 13                        ; matint.c:127:13
	tbz	w9, #0, LBB0_93
Ltmp213:
; %bb.95:                               ;   in Loop: Header=BB0_94 Depth=1
	;DEBUG_VALUE: emulate_AMX_MATINT:step <- [DW_OP_plus_uconst 36] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATINT:zmask <- [DW_OP_plus_uconst 56] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATINT:zsignext <- $w26
	;DEBUG_VALUE: emulate_AMX_MATINT:x_enable <- [DW_OP_plus_uconst 96] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATINT:y_enable <- [DW_OP_plus_uconst 24] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	;DEBUG_VALUE: i <- 0
	.loc	3 0 13                          ; matint.c:0:13
	mov	x19, #0
	add	x8, sp, #112
	ldr	x9, [sp, #40]                   ; 8-byte Folded Reload
	add	x20, x8, x9
Ltmp214:
	;DEBUG_VALUE: emulate_AMX_MATINT:operand <- [DW_OP_LLVM_entry_value 1] $x1
	ldr	w8, [sp, #20]                   ; 4-byte Folded Reload
	and	w8, w9, w8
	ldr	x9, [sp, #8]                    ; 8-byte Folded Reload
	orr	w8, w9, w8
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	and	x24, x8, x9
	b	LBB0_97
Ltmp215:
LBB0_96:                                ;   in Loop: Header=BB0_97 Depth=2
	;DEBUG_VALUE: i <- $x19
	;DEBUG_VALUE: emulate_AMX_MATINT:step <- [DW_OP_plus_uconst 36] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATINT:zmask <- [DW_OP_plus_uconst 56] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATINT:zsignext <- $w26
	;DEBUG_VALUE: emulate_AMX_MATINT:x_enable <- [DW_OP_plus_uconst 96] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATINT:y_enable <- [DW_OP_plus_uconst 24] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	.loc	3 128 40 is_stmt 1              ; matint.c:128:40
	add	x19, x19, x28
Ltmp216:
	;DEBUG_VALUE: i <- $x19
	.loc	3 128 9 is_stmt 0               ; matint.c:128:9
	cmp	x19, #64
	b.hs	LBB0_93
Ltmp217:
LBB0_97:                                ;   Parent Loop BB0_94 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	;DEBUG_VALUE: emulate_AMX_MATINT:step <- [DW_OP_plus_uconst 36] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATINT:zmask <- [DW_OP_plus_uconst 56] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATINT:zsignext <- $w26
	;DEBUG_VALUE: emulate_AMX_MATINT:x_enable <- [DW_OP_plus_uconst 96] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATINT:y_enable <- [DW_OP_plus_uconst 24] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	;DEBUG_VALUE: i <- $x19
	.loc	3 0 9                           ; matint.c:0:9
	ldr	x8, [sp, #96]                   ; 8-byte Folded Reload
Ltmp218:
	.loc	3 129 17 is_stmt 1              ; matint.c:129:17
	lsr	x8, x8, x19
	tbz	w8, #0, LBB0_96
Ltmp219:
; %bb.98:                               ;   in Loop: Header=BB0_97 Depth=2
	;DEBUG_VALUE: i <- $x19
	;DEBUG_VALUE: emulate_AMX_MATINT:step <- [DW_OP_plus_uconst 36] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATINT:zmask <- [DW_OP_plus_uconst 56] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATINT:zsignext <- $w26
	;DEBUG_VALUE: emulate_AMX_MATINT:x_enable <- [DW_OP_plus_uconst 96] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATINT:y_enable <- [DW_OP_plus_uconst 24] [$sp+0]
	;DEBUG_VALUE: emulate_AMX_MATINT:ybytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: emulate_AMX_MATINT:xbits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:ybits <- 0
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	.loc	3 130 37                        ; matint.c:130:37
	add	x8, sp, #176
	add	x1, x8, x19
Ltmp220:
	;DEBUG_VALUE: load_int:val <- 0
	;DEBUG_VALUE: load_int:signext <- undef
	;DEBUG_VALUE: load_int:nbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: load_int:src <- $x1
	.loc	4 32 13                         ; ./emulate.h:32:13
	stur	xzr, [x29, #-160]
Ltmp221:
	;DEBUG_VALUE: load_int:val <- [DW_OP_constu 160, DW_OP_minus, DW_OP_deref] $fp
	.loc	4 33 5                          ; ./emulate.h:33:5
	sub	x0, x29, #160
	mov	x2, x28
	mov	w3, #8
	bl	___memcpy_chk
Ltmp222:
	.loc	4 34 13                         ; ./emulate.h:34:13
	ldur	x8, [x29, #-160]
Ltmp223:
	;DEBUG_VALUE: load_int:val <- $x8
	.loc	4 34 17 is_stmt 0               ; ./emulate.h:34:17
	lsl	x8, x8, x22
Ltmp224:
	.loc	4 34 29                         ; ./emulate.h:34:29
	asr	x23, x8, x22
Ltmp225:
	;DEBUG_VALUE: load_int:val <- 0
	;DEBUG_VALUE: load_int:signext <- undef
	;DEBUG_VALUE: load_int:nbytes <- [DW_OP_constu 3, DW_OP_shr, DW_OP_stack_value] 0
	;DEBUG_VALUE: load_int:src <- $x20
	;DEBUG_VALUE: xv <- $x23
	.loc	4 32 13 is_stmt 1               ; ./emulate.h:32:13
	stur	xzr, [x29, #-160]
Ltmp226:
	;DEBUG_VALUE: load_int:val <- [DW_OP_constu 160, DW_OP_minus, DW_OP_deref] $fp
	.loc	4 33 5                          ; ./emulate.h:33:5
	sub	x0, x29, #160
	mov	x1, x20
	ldr	x2, [sp, #80]                   ; 8-byte Folded Reload
	mov	w3, #8
	bl	___memcpy_chk
Ltmp227:
	.loc	4 34 13                         ; ./emulate.h:34:13
	ldur	x8, [x29, #-160]
Ltmp228:
	;DEBUG_VALUE: load_int:val <- $x8
	.loc	4 34 17 is_stmt 0               ; ./emulate.h:34:17
	lsl	x8, x8, x21
Ltmp229:
	.loc	4 34 29                         ; ./emulate.h:34:29
	asr	x25, x8, x21
Ltmp230:
	;DEBUG_VALUE: yv <- $x25
	.loc	3 132 33 is_stmt 1              ; matint.c:132:33
	udiv	w8, w19, w28
	ldr	w9, [sp, #56]                   ; 4-byte Folded Reload
	and	w8, w8, w9
	orr	x8, x24, x8
	ldr	x9, [sp, #88]                   ; 8-byte Folded Reload
	.loc	3 132 24 is_stmt 0              ; matint.c:132:24
	add	x8, x9, x8, lsl #6
	ldr	w9, [sp, #52]                   ; 4-byte Folded Reload
	.loc	3 132 103                       ; matint.c:132:103
	and	w9, w19, w9
	.loc	3 132 24                        ; matint.c:132:24
	add	x8, x8, x9
	add	x28, x8, #1024
Ltmp231:
	;DEBUG_VALUE: load_int:val <- 0
	;DEBUG_VALUE: load_int:src <- $x28
	;DEBUG_VALUE: z <- $x28
	.loc	4 32 13 is_stmt 1               ; ./emulate.h:32:13
	stur	xzr, [x29, #-160]
Ltmp232:
	;DEBUG_VALUE: load_int:val <- [DW_OP_constu 160, DW_OP_minus, DW_OP_deref] $fp
	.loc	4 33 5                          ; ./emulate.h:33:5
	sub	x0, x29, #160
	mov	x1, x28
	mov	x2, x27
	mov	w3, #8
	bl	___memcpy_chk
Ltmp233:
	.loc	4 34 13                         ; ./emulate.h:34:13
	ldur	x8, [x29, #-160]
Ltmp234:
	;DEBUG_VALUE: load_int:val <- $x8
	.loc	4 34 17 is_stmt 0               ; ./emulate.h:34:17
	lsl	x8, x8, x26
Ltmp235:
	.loc	4 34 29                         ; ./emulate.h:34:29
	asr	x2, x8, x26
Ltmp236:
	;DEBUG_VALUE: zv <- $x2
	.loc	3 134 30 is_stmt 1              ; matint.c:134:30
	mov	x0, x23
	mov	x1, x25
	ldr	w3, [sp, #60]                   ; 4-byte Folded Reload
	ldr	x4, [sp, #64]                   ; 8-byte Folded Reload
                                        ; kill: def $w4 killed $w4 killed $x4
	bl	_vecint_alu
Ltmp237:
	.loc	3 0 30 is_stmt 0                ; matint.c:0:30
	ldr	x8, [sp, #104]                  ; 8-byte Folded Reload
	.loc	3 134 69                        ; matint.c:134:69
	mov	x9, #12884901888
	cmp	x8, x9
	csel	x8, xzr, x0, eq
	;DEBUG_VALUE: store_int:val <- $x8
Ltmp238:
	;DEBUG_VALUE: result <- $x8
	.loc	3 0 69                          ; matint.c:0:69
	stur	x8, [x29, #-160]
Ltmp239:
	;DEBUG_VALUE: store_int:dst <- $x28
	;DEBUG_VALUE: store_int:val <- [DW_OP_constu 160, DW_OP_minus, DW_OP_deref] $fp
	.loc	4 38 5 is_stmt 1                ; ./emulate.h:38:5
	sub	x1, x29, #160
	mov	x0, x28
	ldr	x28, [sp, #72]                  ; 8-byte Folded Reload
Ltmp240:
	mov	x2, x27
	bl	_memcpy
Ltmp241:
	;DEBUG_VALUE: load_int:signext <- undef
	.loc	4 0 5 is_stmt 0                 ; ./emulate.h:0:5
	b	LBB0_96
Ltmp242:
LBB0_99:
	;DEBUG_VALUE: emulate_AMX_MATINT:state <- [DW_OP_plus_uconst 88] [$sp+0]
	bl	___stack_chk_fail
Ltmp243:
	.loh AdrpLdrGotLdr	Lloh0, Lloh1, Lloh2
	.loh AdrpLdrGotLdr	Lloh3, Lloh4, Lloh5
	.loh AdrpAdd	Lloh8, Lloh9
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpAdd	Lloh10, Lloh11
	.loh AdrpLdrGotLdr	Lloh12, Lloh13, Lloh14
	.loh AdrpAdd	Lloh15, Lloh16
	.loh AdrpAdd	Lloh17, Lloh18
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__const
lJTI0_0:
	.byte	(LBB0_68-LBB0_68)>>2
	.byte	(LBB0_80-LBB0_68)>>2
	.byte	(LBB0_81-LBB0_68)>>2
	.byte	(LBB0_83-LBB0_68)>>2
	.byte	(LBB0_82-LBB0_68)>>2
	.byte	(LBB0_84-LBB0_68)>>2
lJTI0_1:
	.byte	(LBB0_62-LBB0_62)>>2
	.byte	(LBB0_73-LBB0_62)>>2
	.byte	(LBB0_74-LBB0_62)>>2
	.byte	(LBB0_76-LBB0_62)>>2
	.byte	(LBB0_75-LBB0_62)>>2
	.byte	(LBB0_77-LBB0_62)>>2
lJTI0_2:
	.byte	(LBB0_12-LBB0_12)>>2
	.byte	(LBB0_26-LBB0_12)>>2
	.byte	(LBB0_27-LBB0_12)>>2
	.byte	(LBB0_29-LBB0_12)>>2
	.byte	(LBB0_28-LBB0_12)>>2
	.byte	(LBB0_30-LBB0_12)>>2
	.file	5 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types" "_uint32_t.h"
	.file	6 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types" "_int64_t.h"
                                        ; -- End function
	.p2align	2, 0x0                          ; @switch.table.emulate_AMX_MATINT
l_switch.table.emulate_AMX_MATINT:
	.long	16                              ; 0x10
	.long	32                              ; 0x20
	.long	16                              ; 0x10
	.long	16                              ; 0x10
	.long	16                              ; 0x10
	.long	16                              ; 0x10
	.long	16                              ; 0x10
	.long	8                               ; 0x8
	.long	8                               ; 0x8

	.p2align	2, 0x0                          ; @switch.table.emulate_AMX_MATINT.1
l_switch.table.emulate_AMX_MATINT.1:
	.long	32                              ; 0x20
	.long	32                              ; 0x20
	.long	16                              ; 0x10
	.long	16                              ; 0x10
	.long	16                              ; 0x10
	.long	16                              ; 0x10
	.long	16                              ; 0x10
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
.set Lset1, Ltmp0-Lfunc_begin0
	.quad	Lset1
	.short	1                               ; Loc expr size
	.byte	80                              ; DW_OP_reg0
.set Lset2, Ltmp0-Lfunc_begin0
	.quad	Lset2
.set Lset3, Ltmp7-Lfunc_begin0
	.quad	Lset3
	.short	3                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	216                             ; 88
	.byte	0                               ; 
.set Lset4, Ltmp8-Lfunc_begin0
	.quad	Lset4
.set Lset5, Lfunc_end0-Lfunc_begin0
	.quad	Lset5
	.short	3                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	216                             ; 88
	.byte	0                               ; 
	.quad	0
	.quad	0
Ldebug_loc1:
.set Lset6, Lfunc_begin0-Lfunc_begin0
	.quad	Lset6
.set Lset7, Ltmp4-Lfunc_begin0
	.quad	Lset7
	.short	1                               ; Loc expr size
	.byte	81                              ; DW_OP_reg1
.set Lset8, Ltmp4-Lfunc_begin0
	.quad	Lset8
.set Lset9, Ltmp5-Lfunc_begin0
	.quad	Lset9
	.short	1                               ; Loc expr size
	.byte	100                             ; DW_OP_reg20
.set Lset10, Ltmp8-Lfunc_begin0
	.quad	Lset10
.set Lset11, Ltmp205-Lfunc_begin0
	.quad	Lset11
	.short	1                               ; Loc expr size
	.byte	100                             ; DW_OP_reg20
.set Lset12, Ltmp214-Lfunc_begin0
	.quad	Lset12
.set Lset13, Ltmp215-Lfunc_begin0
	.quad	Lset13
	.short	4                               ; Loc expr size
	.byte	163                             ; DW_OP_entry_value
	.byte	1                               ; 1
	.byte	81                              ; DW_OP_reg1
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc2:
.set Lset14, Ltmp9-Lfunc_begin0
	.quad	Lset14
.set Lset15, Ltmp59-Lfunc_begin0
	.quad	Lset15
	.short	1                               ; Loc expr size
	.byte	108                             ; DW_OP_reg28
.set Lset16, Ltmp78-Lfunc_begin0
	.quad	Lset16
.set Lset17, Ltmp113-Lfunc_begin0
	.quad	Lset17
	.short	1                               ; Loc expr size
	.byte	108                             ; DW_OP_reg28
.set Lset18, Ltmp113-Lfunc_begin0
	.quad	Lset18
.set Lset19, Ltmp124-Lfunc_begin0
	.quad	Lset19
	.short	1                               ; Loc expr size
	.byte	103                             ; DW_OP_reg23
.set Lset20, Ltmp124-Lfunc_begin0
	.quad	Lset20
.set Lset21, Ltmp204-Lfunc_begin0
	.quad	Lset21
	.short	1                               ; Loc expr size
	.byte	108                             ; DW_OP_reg28
	.quad	0
	.quad	0
Ldebug_loc3:
.set Lset22, Ltmp11-Lfunc_begin0
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
	.short	3                               ; Loc expr size
	.byte	16                              ; DW_OP_constu
	.byte	32                              ; 32
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
	.byte	64                              ; DW_OP_lit16
	.byte	159                             ; DW_OP_stack_value
.set Lset30, Ltmp47-Lfunc_begin0
	.quad	Lset30
.set Lset31, Ltmp81-Lfunc_begin0
	.quad	Lset31
	.short	2                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	159                             ; DW_OP_stack_value
.set Lset32, Ltmp82-Lfunc_begin0
	.quad	Lset32
.set Lset33, Ltmp84-Lfunc_begin0
	.quad	Lset33
	.short	2                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	159                             ; DW_OP_stack_value
.set Lset34, Ltmp84-Lfunc_begin0
	.quad	Lset34
.set Lset35, Ltmp85-Lfunc_begin0
	.quad	Lset35
	.short	2                               ; Loc expr size
	.byte	64                              ; DW_OP_lit16
	.byte	159                             ; DW_OP_stack_value
.set Lset36, Ltmp85-Lfunc_begin0
	.quad	Lset36
.set Lset37, Ltmp89-Lfunc_begin0
	.quad	Lset37
	.short	1                               ; Loc expr size
	.byte	103                             ; DW_OP_reg23
.set Lset38, Ltmp89-Lfunc_begin0
	.quad	Lset38
.set Lset39, Ltmp242-Lfunc_begin0
	.quad	Lset39
	.short	2                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc4:
.set Lset40, Ltmp11-Lfunc_begin0
	.quad	Lset40
.set Lset41, Ltmp40-Lfunc_begin0
	.quad	Lset41
	.short	2                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	159                             ; DW_OP_stack_value
.set Lset42, Ltmp40-Lfunc_begin0
	.quad	Lset42
.set Lset43, Ltmp41-Lfunc_begin0
	.quad	Lset43
	.short	2                               ; Loc expr size
	.byte	56                              ; DW_OP_lit8
	.byte	159                             ; DW_OP_stack_value
.set Lset44, Ltmp41-Lfunc_begin0
	.quad	Lset44
.set Lset45, Ltmp44-Lfunc_begin0
	.quad	Lset45
	.short	2                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	159                             ; DW_OP_stack_value
.set Lset46, Ltmp44-Lfunc_begin0
	.quad	Lset46
.set Lset47, Ltmp45-Lfunc_begin0
	.quad	Lset47
	.short	3                               ; Loc expr size
	.byte	16                              ; DW_OP_constu
	.byte	32                              ; 32
	.byte	159                             ; DW_OP_stack_value
.set Lset48, Ltmp45-Lfunc_begin0
	.quad	Lset48
.set Lset49, Ltmp46-Lfunc_begin0
	.quad	Lset49
	.short	2                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	159                             ; DW_OP_stack_value
.set Lset50, Ltmp46-Lfunc_begin0
	.quad	Lset50
.set Lset51, Ltmp47-Lfunc_begin0
	.quad	Lset51
	.short	2                               ; Loc expr size
	.byte	64                              ; DW_OP_lit16
	.byte	159                             ; DW_OP_stack_value
.set Lset52, Ltmp47-Lfunc_begin0
	.quad	Lset52
.set Lset53, Ltmp81-Lfunc_begin0
	.quad	Lset53
	.short	2                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	159                             ; DW_OP_stack_value
.set Lset54, Ltmp82-Lfunc_begin0
	.quad	Lset54
.set Lset55, Ltmp84-Lfunc_begin0
	.quad	Lset55
	.short	2                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	159                             ; DW_OP_stack_value
.set Lset56, Ltmp84-Lfunc_begin0
	.quad	Lset56
.set Lset57, Ltmp85-Lfunc_begin0
	.quad	Lset57
	.short	2                               ; Loc expr size
	.byte	64                              ; DW_OP_lit16
	.byte	159                             ; DW_OP_stack_value
.set Lset58, Ltmp85-Lfunc_begin0
	.quad	Lset58
.set Lset59, Ltmp89-Lfunc_begin0
	.quad	Lset59
	.short	1                               ; Loc expr size
	.byte	103                             ; DW_OP_reg23
.set Lset60, Ltmp89-Lfunc_begin0
	.quad	Lset60
.set Lset61, Ltmp242-Lfunc_begin0
	.quad	Lset61
	.short	2                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc5:
.set Lset62, Ltmp36-Lfunc_begin0
	.quad	Lset62
.set Lset63, Ltmp37-Lfunc_begin0
	.quad	Lset63
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
.set Lset64, Ltmp37-Lfunc_begin0
	.quad	Lset64
.set Lset65, Ltmp41-Lfunc_begin0
	.quad	Lset65
	.short	3                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	192                             ; 64
	.byte	0                               ; 
.set Lset66, Ltmp45-Lfunc_begin0
	.quad	Lset66
.set Lset67, Ltmp47-Lfunc_begin0
	.quad	Lset67
	.short	3                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	192                             ; 64
	.byte	0                               ; 
.set Lset68, Ltmp79-Lfunc_begin0
	.quad	Lset68
.set Lset69, Ltmp82-Lfunc_begin0
	.quad	Lset69
	.short	3                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	192                             ; 64
	.byte	0                               ; 
.set Lset70, Ltmp87-Lfunc_begin0
	.quad	Lset70
.set Lset71, Ltmp88-Lfunc_begin0
	.quad	Lset71
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
.set Lset72, Ltmp88-Lfunc_begin0
	.quad	Lset72
.set Lset73, Ltmp89-Lfunc_begin0
	.quad	Lset73
	.short	3                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	192                             ; 64
	.byte	0                               ; 
	.quad	0
	.quad	0
Ldebug_loc6:
.set Lset74, Ltmp11-Lfunc_begin0
	.quad	Lset74
.set Lset75, Ltmp21-Lfunc_begin0
	.quad	Lset75
	.short	1                               ; Loc expr size
	.byte	91                              ; DW_OP_reg11
.set Lset76, Ltmp34-Lfunc_begin0
	.quad	Lset76
.set Lset77, Ltmp47-Lfunc_begin0
	.quad	Lset77
	.short	1                               ; Loc expr size
	.byte	91                              ; DW_OP_reg11
.set Lset78, Ltmp79-Lfunc_begin0
	.quad	Lset78
.set Lset79, Ltmp95-Lfunc_begin0
	.quad	Lset79
	.short	1                               ; Loc expr size
	.byte	91                              ; DW_OP_reg11
	.quad	0
	.quad	0
Ldebug_loc7:
.set Lset80, Ltmp17-Lfunc_begin0
	.quad	Lset80
.set Lset81, Ltmp29-Lfunc_begin0
	.quad	Lset81
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
.set Lset82, Ltmp44-Lfunc_begin0
	.quad	Lset82
.set Lset83, Ltmp45-Lfunc_begin0
	.quad	Lset83
	.short	3                               ; Loc expr size
	.byte	16                              ; DW_OP_constu
	.byte	32                              ; 32
	.byte	159                             ; DW_OP_stack_value
.set Lset84, Ltmp47-Lfunc_begin0
	.quad	Lset84
.set Lset85, Ltmp49-Lfunc_begin0
	.quad	Lset85
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
.set Lset86, Ltmp50-Lfunc_begin0
	.quad	Lset86
.set Lset87, Ltmp52-Lfunc_begin0
	.quad	Lset87
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
.set Lset88, Ltmp54-Lfunc_begin0
	.quad	Lset88
.set Lset89, Ltmp56-Lfunc_begin0
	.quad	Lset89
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
.set Lset90, Ltmp78-Lfunc_begin0
	.quad	Lset90
.set Lset91, Ltmp79-Lfunc_begin0
	.quad	Lset91
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
.set Lset92, Ltmp84-Lfunc_begin0
	.quad	Lset92
.set Lset93, Ltmp85-Lfunc_begin0
	.quad	Lset93
	.short	2                               ; Loc expr size
	.byte	64                              ; DW_OP_lit16
	.byte	159                             ; DW_OP_stack_value
.set Lset94, Ltmp85-Lfunc_begin0
	.quad	Lset94
.set Lset95, Ltmp89-Lfunc_begin0
	.quad	Lset95
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
	.quad	0
	.quad	0
Ldebug_loc8:
.set Lset96, Ltmp17-Lfunc_begin0
	.quad	Lset96
.set Lset97, Ltmp34-Lfunc_begin0
	.quad	Lset97
	.short	1                               ; Loc expr size
	.byte	101                             ; DW_OP_reg21
.set Lset98, Ltmp47-Lfunc_begin0
	.quad	Lset98
.set Lset99, Ltmp79-Lfunc_begin0
	.quad	Lset99
	.short	1                               ; Loc expr size
	.byte	101                             ; DW_OP_reg21
	.quad	0
	.quad	0
Ldebug_loc9:
.set Lset100, Ltmp17-Lfunc_begin0
	.quad	Lset100
.set Lset101, Ltmp34-Lfunc_begin0
	.quad	Lset101
	.short	4                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	51                              ; DW_OP_lit3
	.byte	37                              ; DW_OP_shr
	.byte	159                             ; DW_OP_stack_value
.set Lset102, Ltmp47-Lfunc_begin0
	.quad	Lset102
.set Lset103, Ltmp79-Lfunc_begin0
	.quad	Lset103
	.short	4                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	51                              ; DW_OP_lit3
	.byte	37                              ; DW_OP_shr
	.byte	159                             ; DW_OP_stack_value
.set Lset104, Ltmp89-Lfunc_begin0
	.quad	Lset104
.set Lset105, Ltmp242-Lfunc_begin0
	.quad	Lset105
	.short	4                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	51                              ; DW_OP_lit3
	.byte	37                              ; DW_OP_shr
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc10:
.set Lset106, Ltmp17-Lfunc_begin0
	.quad	Lset106
.set Lset107, Ltmp34-Lfunc_begin0
	.quad	Lset107
	.short	4                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	51                              ; DW_OP_lit3
	.byte	37                              ; DW_OP_shr
	.byte	159                             ; DW_OP_stack_value
.set Lset108, Ltmp47-Lfunc_begin0
	.quad	Lset108
.set Lset109, Ltmp79-Lfunc_begin0
	.quad	Lset109
	.short	4                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	51                              ; DW_OP_lit3
	.byte	37                              ; DW_OP_shr
	.byte	159                             ; DW_OP_stack_value
.set Lset110, Ltmp89-Lfunc_begin0
	.quad	Lset110
.set Lset111, Ltmp242-Lfunc_begin0
	.quad	Lset111
	.short	4                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	51                              ; DW_OP_lit3
	.byte	37                              ; DW_OP_shr
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc11:
.set Lset112, Ltmp18-Lfunc_begin0
	.quad	Lset112
.set Lset113, Ltmp34-Lfunc_begin0
	.quad	Lset113
	.short	1                               ; Loc expr size
	.byte	102                             ; DW_OP_reg22
.set Lset114, Ltmp47-Lfunc_begin0
	.quad	Lset114
.set Lset115, Ltmp79-Lfunc_begin0
	.quad	Lset115
	.short	1                               ; Loc expr size
	.byte	102                             ; DW_OP_reg22
	.quad	0
	.quad	0
Ldebug_loc12:
.set Lset116, Ltmp20-Lfunc_begin0
	.quad	Lset116
.set Lset117, Ltmp34-Lfunc_begin0
	.quad	Lset117
	.short	2                               ; Loc expr size
	.byte	57                              ; DW_OP_lit9
	.byte	159                             ; DW_OP_stack_value
.set Lset118, Ltmp48-Lfunc_begin0
	.quad	Lset118
.set Lset119, Ltmp58-Lfunc_begin0
	.quad	Lset119
	.short	2                               ; Loc expr size
	.byte	57                              ; DW_OP_lit9
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc13:
.set Lset120, Ltmp20-Lfunc_begin0
	.quad	Lset120
.set Lset121, Ltmp29-Lfunc_begin0
	.quad	Lset121
	.short	1                               ; Loc expr size
	.byte	102                             ; DW_OP_reg22
.set Lset122, Ltmp29-Lfunc_begin0
	.quad	Lset122
.set Lset123, Ltmp31-Lfunc_begin0
	.quad	Lset123
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
.set Lset124, Ltmp31-Lfunc_begin0
	.quad	Lset124
.set Lset125, Ltmp32-Lfunc_begin0
	.quad	Lset125
	.short	1                               ; Loc expr size
	.byte	92                              ; DW_OP_reg12
.set Lset126, Ltmp32-Lfunc_begin0
	.quad	Lset126
.set Lset127, Ltmp33-Lfunc_begin0
	.quad	Lset127
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
.set Lset128, Ltmp48-Lfunc_begin0
	.quad	Lset128
.set Lset129, Ltmp58-Lfunc_begin0
	.quad	Lset129
	.short	1                               ; Loc expr size
	.byte	102                             ; DW_OP_reg22
	.quad	0
	.quad	0
Ldebug_loc14:
.set Lset130, Ltmp24-Lfunc_begin0
	.quad	Lset130
.set Lset131, Ltmp34-Lfunc_begin0
	.quad	Lset131
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
.set Lset132, Ltmp48-Lfunc_begin0
	.quad	Lset132
.set Lset133, Ltmp53-Lfunc_begin0
	.quad	Lset133
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
.set Lset134, Ltmp54-Lfunc_begin0
	.quad	Lset134
.set Lset135, Ltmp57-Lfunc_begin0
	.quad	Lset135
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
	.quad	0
	.quad	0
Ldebug_loc15:
.set Lset136, Ltmp21-Lfunc_begin0
	.quad	Lset136
.set Lset137, Ltmp26-Lfunc_begin0
	.quad	Lset137
	.short	1                               ; Loc expr size
	.byte	91                              ; DW_OP_reg11
.set Lset138, Ltmp48-Lfunc_begin0
	.quad	Lset138
.set Lset139, Ltmp58-Lfunc_begin0
	.quad	Lset139
	.short	1                               ; Loc expr size
	.byte	91                              ; DW_OP_reg11
	.quad	0
	.quad	0
Ldebug_loc16:
.set Lset140, Ltmp22-Lfunc_begin0
	.quad	Lset140
.set Lset141, Ltmp28-Lfunc_begin0
	.quad	Lset141
	.short	3                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	32                              ; DW_OP_not
	.byte	159                             ; DW_OP_stack_value
.set Lset142, Ltmp28-Lfunc_begin0
	.quad	Lset142
.set Lset143, Ltmp34-Lfunc_begin0
	.quad	Lset143
	.short	1                               ; Loc expr size
	.byte	91                              ; DW_OP_reg11
.set Lset144, Ltmp48-Lfunc_begin0
	.quad	Lset144
.set Lset145, Ltmp58-Lfunc_begin0
	.quad	Lset145
	.short	3                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	32                              ; DW_OP_not
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc17:
.set Lset146, Ltmp58-Lfunc_begin0
	.quad	Lset146
.set Lset147, Ltmp78-Lfunc_begin0
	.quad	Lset147
	.short	1                               ; Loc expr size
	.byte	99                              ; DW_OP_reg19
	.quad	0
	.quad	0
Ldebug_loc18:
.set Lset148, Ltmp67-Lfunc_begin0
	.quad	Lset148
.set Lset149, Ltmp78-Lfunc_begin0
	.quad	Lset149
	.short	8                               ; Loc expr size
	.byte	138                             ; DW_OP_breg26
	.byte	0                               ; 0
	.byte	137                             ; DW_OP_breg25
	.byte	0                               ; 0
	.byte	49                              ; DW_OP_lit1
	.byte	30                              ; DW_OP_mul
	.byte	34                              ; DW_OP_plus
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc19:
.set Lset150, Ltmp68-Lfunc_begin0
	.quad	Lset150
.set Lset151, Ltmp69-Lfunc_begin0
	.quad	Lset151
	.short	2                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	159                             ; DW_OP_stack_value
.set Lset152, Ltmp69-Lfunc_begin0
	.quad	Lset152
.set Lset153, Ltmp71-Lfunc_begin0
	.quad	Lset153
	.short	3                               ; Loc expr size
	.byte	141                             ; DW_OP_breg29
	.byte	224                             ; -160
	.byte	126                             ; 
.set Lset154, Ltmp71-Lfunc_begin0
	.quad	Lset154
.set Lset155, Ltmp72-Lfunc_begin0
	.quad	Lset155
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
	.quad	0
	.quad	0
Ldebug_loc20:
.set Lset156, Ltmp73-Lfunc_begin0
	.quad	Lset156
.set Lset157, Ltmp76-Lfunc_begin0
	.quad	Lset157
	.short	1                               ; Loc expr size
	.byte	80                              ; DW_OP_reg0
	.quad	0
	.quad	0
Ldebug_loc21:
.set Lset158, Ltmp92-Lfunc_begin0
	.quad	Lset158
.set Lset159, Ltmp94-Lfunc_begin0
	.quad	Lset159
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
	.quad	0
	.quad	0
Ldebug_loc22:
.set Lset160, Ltmp93-Lfunc_begin0
	.quad	Lset160
.set Lset161, Ltmp95-Lfunc_begin0
	.quad	Lset161
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
	.quad	0
	.quad	0
Ldebug_loc23:
.set Lset162, Ltmp97-Lfunc_begin0
	.quad	Lset162
.set Lset163, Ltmp99-Lfunc_begin0
	.quad	Lset163
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
	.quad	0
	.quad	0
Ldebug_loc24:
.set Lset164, Ltmp98-Lfunc_begin0
	.quad	Lset164
.set Lset165, Ltmp100-Lfunc_begin0
	.quad	Lset165
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
	.quad	0
	.quad	0
Ldebug_loc25:
.set Lset166, Ltmp104-Lfunc_begin0
	.quad	Lset166
.set Lset167, Ltmp110-Lfunc_begin0
	.quad	Lset167
	.short	1                               ; Loc expr size
	.byte	82                              ; DW_OP_reg2
	.quad	0
	.quad	0
Ldebug_loc26:
.set Lset168, Ltmp111-Lfunc_begin0
	.quad	Lset168
.set Lset169, Ltmp116-Lfunc_begin0
	.quad	Lset169
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
	.quad	0
	.quad	0
Ldebug_loc27:
.set Lset170, Ltmp115-Lfunc_begin0
	.quad	Lset170
.set Lset171, Ltmp123-Lfunc_begin0
	.quad	Lset171
	.short	1                               ; Loc expr size
	.byte	104                             ; DW_OP_reg24
	.quad	0
	.quad	0
Ldebug_loc28:
.set Lset172, Ltmp116-Lfunc_begin0
	.quad	Lset172
.set Lset173, Ltmp118-Lfunc_begin0
	.quad	Lset173
	.short	1                               ; Loc expr size
	.byte	101                             ; DW_OP_reg21
.set Lset174, Ltmp118-Lfunc_begin0
	.quad	Lset174
.set Lset175, Ltmp119-Lfunc_begin0
	.quad	Lset175
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
.set Lset176, Ltmp119-Lfunc_begin0
	.quad	Lset176
.set Lset177, Ltmp120-Lfunc_begin0
	.quad	Lset177
	.short	6                               ; Loc expr size
	.byte	121                             ; DW_OP_breg9
	.byte	0                               ; 0
	.byte	120                             ; DW_OP_breg8
	.byte	0                               ; 0
	.byte	34                              ; DW_OP_plus
	.byte	159                             ; DW_OP_stack_value
.set Lset178, Ltmp121-Lfunc_begin0
	.quad	Lset178
.set Lset179, Ltmp123-Lfunc_begin0
	.quad	Lset179
	.short	1                               ; Loc expr size
	.byte	101                             ; DW_OP_reg21
	.quad	0
	.quad	0
Ldebug_loc29:
.set Lset180, Ltmp126-Lfunc_begin0
	.quad	Lset180
.set Lset181, Ltmp130-Lfunc_begin0
	.quad	Lset181
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
	.quad	0
	.quad	0
Ldebug_loc30:
.set Lset182, Ltmp129-Lfunc_begin0
	.quad	Lset182
.set Lset183, Ltmp137-Lfunc_begin0
	.quad	Lset183
	.short	1                               ; Loc expr size
	.byte	104                             ; DW_OP_reg24
	.quad	0
	.quad	0
Ldebug_loc31:
.set Lset184, Ltmp130-Lfunc_begin0
	.quad	Lset184
.set Lset185, Ltmp132-Lfunc_begin0
	.quad	Lset185
	.short	1                               ; Loc expr size
	.byte	101                             ; DW_OP_reg21
.set Lset186, Ltmp132-Lfunc_begin0
	.quad	Lset186
.set Lset187, Ltmp133-Lfunc_begin0
	.quad	Lset187
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
.set Lset188, Ltmp133-Lfunc_begin0
	.quad	Lset188
.set Lset189, Ltmp134-Lfunc_begin0
	.quad	Lset189
	.short	6                               ; Loc expr size
	.byte	121                             ; DW_OP_breg9
	.byte	0                               ; 0
	.byte	120                             ; DW_OP_breg8
	.byte	0                               ; 0
	.byte	34                              ; DW_OP_plus
	.byte	159                             ; DW_OP_stack_value
.set Lset190, Ltmp135-Lfunc_begin0
	.quad	Lset190
.set Lset191, Ltmp137-Lfunc_begin0
	.quad	Lset191
	.short	1                               ; Loc expr size
	.byte	101                             ; DW_OP_reg21
	.quad	0
	.quad	0
Ldebug_loc32:
.set Lset192, Ltmp156-Lfunc_begin0
	.quad	Lset192
.set Lset193, Ltmp169-Lfunc_begin0
	.quad	Lset193
	.short	2                               ; Loc expr size
	.byte	57                              ; DW_OP_lit9
	.byte	159                             ; DW_OP_stack_value
.set Lset194, Ltmp180-Lfunc_begin0
	.quad	Lset194
.set Lset195, Ltmp189-Lfunc_begin0
	.quad	Lset195
	.short	2                               ; Loc expr size
	.byte	57                              ; DW_OP_lit9
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc33:
.set Lset196, Ltmp138-Lfunc_begin0
	.quad	Lset196
.set Lset197, Ltmp156-Lfunc_begin0
	.quad	Lset197
	.short	2                               ; Loc expr size
	.byte	57                              ; DW_OP_lit9
	.byte	159                             ; DW_OP_stack_value
.set Lset198, Ltmp170-Lfunc_begin0
	.quad	Lset198
.set Lset199, Ltmp179-Lfunc_begin0
	.quad	Lset199
	.short	2                               ; Loc expr size
	.byte	57                              ; DW_OP_lit9
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc34:
.set Lset200, Ltmp156-Lfunc_begin0
	.quad	Lset200
.set Lset201, Ltmp163-Lfunc_begin0
	.quad	Lset201
	.short	4                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	51                              ; DW_OP_lit3
	.byte	37                              ; DW_OP_shr
	.byte	159                             ; DW_OP_stack_value
.set Lset202, Ltmp163-Lfunc_begin0
	.quad	Lset202
.set Lset203, Ltmp164-Lfunc_begin0
	.quad	Lset203
	.short	8                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	208                             ; 80
	.byte	0                               ; 
	.byte	148                             ; DW_OP_deref_size
	.byte	8                               ; 
	.byte	49                              ; DW_OP_lit1
	.byte	36                              ; DW_OP_shl
	.byte	159                             ; DW_OP_stack_value
.set Lset204, Ltmp166-Lfunc_begin0
	.quad	Lset204
.set Lset205, Ltmp167-Lfunc_begin0
	.quad	Lset205
	.short	5                               ; Loc expr size
	.byte	123                             ; DW_OP_breg11
	.byte	0                               ; 0
	.byte	49                              ; DW_OP_lit1
	.byte	36                              ; DW_OP_shl
	.byte	159                             ; DW_OP_stack_value
.set Lset206, Ltmp180-Lfunc_begin0
	.quad	Lset206
.set Lset207, Ltmp189-Lfunc_begin0
	.quad	Lset207
	.short	4                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	51                              ; DW_OP_lit3
	.byte	37                              ; DW_OP_shr
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc35:
.set Lset208, Ltmp138-Lfunc_begin0
	.quad	Lset208
.set Lset209, Ltmp150-Lfunc_begin0
	.quad	Lset209
	.short	4                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	51                              ; DW_OP_lit3
	.byte	37                              ; DW_OP_shr
	.byte	159                             ; DW_OP_stack_value
.set Lset210, Ltmp150-Lfunc_begin0
	.quad	Lset210
.set Lset211, Ltmp151-Lfunc_begin0
	.quad	Lset211
	.short	8                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	200                             ; 72
	.byte	0                               ; 
	.byte	148                             ; DW_OP_deref_size
	.byte	8                               ; 
	.byte	49                              ; DW_OP_lit1
	.byte	36                              ; DW_OP_shl
	.byte	159                             ; DW_OP_stack_value
.set Lset212, Ltmp153-Lfunc_begin0
	.quad	Lset212
.set Lset213, Ltmp154-Lfunc_begin0
	.quad	Lset213
	.short	5                               ; Loc expr size
	.byte	123                             ; DW_OP_breg11
	.byte	0                               ; 0
	.byte	49                              ; DW_OP_lit1
	.byte	36                              ; DW_OP_shl
	.byte	159                             ; DW_OP_stack_value
.set Lset214, Ltmp170-Lfunc_begin0
	.quad	Lset214
.set Lset215, Ltmp179-Lfunc_begin0
	.quad	Lset215
	.short	4                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	51                              ; DW_OP_lit3
	.byte	37                              ; DW_OP_shr
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc36:
.set Lset216, Ltmp156-Lfunc_begin0
	.quad	Lset216
.set Lset217, Ltmp157-Lfunc_begin0
	.quad	Lset217
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
.set Lset218, Ltmp159-Lfunc_begin0
	.quad	Lset218
.set Lset219, Ltmp168-Lfunc_begin0
	.quad	Lset219
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
.set Lset220, Ltmp180-Lfunc_begin0
	.quad	Lset220
.set Lset221, Ltmp182-Lfunc_begin0
	.quad	Lset221
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
.set Lset222, Ltmp183-Lfunc_begin0
	.quad	Lset222
.set Lset223, Ltmp185-Lfunc_begin0
	.quad	Lset223
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
.set Lset224, Ltmp186-Lfunc_begin0
	.quad	Lset224
.set Lset225, Ltmp188-Lfunc_begin0
	.quad	Lset225
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
	.quad	0
	.quad	0
Ldebug_loc37:
.set Lset226, Ltmp138-Lfunc_begin0
	.quad	Lset226
.set Lset227, Ltmp143-Lfunc_begin0
	.quad	Lset227
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
.set Lset228, Ltmp145-Lfunc_begin0
	.quad	Lset228
.set Lset229, Ltmp155-Lfunc_begin0
	.quad	Lset229
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
.set Lset230, Ltmp170-Lfunc_begin0
	.quad	Lset230
.set Lset231, Ltmp172-Lfunc_begin0
	.quad	Lset231
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
.set Lset232, Ltmp173-Lfunc_begin0
	.quad	Lset232
.set Lset233, Ltmp175-Lfunc_begin0
	.quad	Lset233
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
.set Lset234, Ltmp176-Lfunc_begin0
	.quad	Lset234
.set Lset235, Ltmp178-Lfunc_begin0
	.quad	Lset235
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
	.quad	0
	.quad	0
Ldebug_loc38:
.set Lset236, Ltmp156-Lfunc_begin0
	.quad	Lset236
.set Lset237, Ltmp160-Lfunc_begin0
	.quad	Lset237
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
	.quad	0
	.quad	0
Ldebug_loc39:
.set Lset238, Ltmp139-Lfunc_begin0
	.quad	Lset238
.set Lset239, Ltmp146-Lfunc_begin0
	.quad	Lset239
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
	.quad	0
	.quad	0
Ldebug_loc40:
.set Lset240, Ltmp143-Lfunc_begin0
	.quad	Lset240
.set Lset241, Ltmp150-Lfunc_begin0
	.quad	Lset241
	.short	3                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	32                              ; DW_OP_not
	.byte	159                             ; DW_OP_stack_value
.set Lset242, Ltmp150-Lfunc_begin0
	.quad	Lset242
.set Lset243, Ltmp156-Lfunc_begin0
	.quad	Lset243
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
.set Lset244, Ltmp170-Lfunc_begin0
	.quad	Lset244
.set Lset245, Ltmp179-Lfunc_begin0
	.quad	Lset245
	.short	3                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	32                              ; DW_OP_not
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc41:
.set Lset246, Ltmp157-Lfunc_begin0
	.quad	Lset246
.set Lset247, Ltmp163-Lfunc_begin0
	.quad	Lset247
	.short	3                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	32                              ; DW_OP_not
	.byte	159                             ; DW_OP_stack_value
.set Lset248, Ltmp163-Lfunc_begin0
	.quad	Lset248
.set Lset249, Ltmp169-Lfunc_begin0
	.quad	Lset249
	.short	1                               ; Loc expr size
	.byte	89                              ; DW_OP_reg9
.set Lset250, Ltmp180-Lfunc_begin0
	.quad	Lset250
.set Lset251, Ltmp189-Lfunc_begin0
	.quad	Lset251
	.short	3                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	32                              ; DW_OP_not
	.byte	159                             ; DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc42:
.set Lset252, Ltmp194-Lfunc_begin0
	.quad	Lset252
.set Lset253, Ltmp242-Lfunc_begin0
	.quad	Lset253
	.short	2                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	24                              ; 24
	.quad	0
	.quad	0
Ldebug_loc43:
.set Lset254, Ltmp194-Lfunc_begin0
	.quad	Lset254
.set Lset255, Ltmp242-Lfunc_begin0
	.quad	Lset255
	.short	3                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	224                             ; 96
	.byte	0                               ; 
	.quad	0
	.quad	0
Ldebug_loc44:
.set Lset256, Ltmp199-Lfunc_begin0
	.quad	Lset256
.set Lset257, Ltmp242-Lfunc_begin0
	.quad	Lset257
	.short	1                               ; Loc expr size
	.byte	106                             ; DW_OP_reg26
	.quad	0
	.quad	0
Ldebug_loc45:
.set Lset258, Ltmp200-Lfunc_begin0
	.quad	Lset258
.set Lset259, Ltmp201-Lfunc_begin0
	.quad	Lset259
	.short	1                               ; Loc expr size
	.byte	90                              ; DW_OP_reg10
.set Lset260, Ltmp201-Lfunc_begin0
	.quad	Lset260
.set Lset261, Ltmp242-Lfunc_begin0
	.quad	Lset261
	.short	2                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	56                              ; 56
	.quad	0
	.quad	0
Ldebug_loc46:
.set Lset262, Ltmp207-Lfunc_begin0
	.quad	Lset262
.set Lset263, Ltmp211-Lfunc_begin0
	.quad	Lset263
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
	.quad	0
	.quad	0
Ldebug_loc47:
.set Lset264, Ltmp202-Lfunc_begin0
	.quad	Lset264
.set Lset265, Ltmp203-Lfunc_begin0
	.quad	Lset265
	.short	1                               ; Loc expr size
	.byte	93                              ; DW_OP_reg13
.set Lset266, Ltmp203-Lfunc_begin0
	.quad	Lset266
.set Lset267, Ltmp242-Lfunc_begin0
	.quad	Lset267
	.short	2                               ; Loc expr size
	.byte	143                             ; DW_OP_breg31
	.byte	36                              ; 36
	.quad	0
	.quad	0
Ldebug_loc48:
.set Lset268, Ltmp220-Lfunc_begin0
	.quad	Lset268
.set Lset269, Ltmp221-Lfunc_begin0
	.quad	Lset269
	.short	2                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	159                             ; DW_OP_stack_value
.set Lset270, Ltmp221-Lfunc_begin0
	.quad	Lset270
.set Lset271, Ltmp223-Lfunc_begin0
	.quad	Lset271
	.short	3                               ; Loc expr size
	.byte	141                             ; DW_OP_breg29
	.byte	224                             ; -160
	.byte	126                             ; 
.set Lset272, Ltmp223-Lfunc_begin0
	.quad	Lset272
.set Lset273, Ltmp224-Lfunc_begin0
	.quad	Lset273
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
	.quad	0
	.quad	0
Ldebug_loc49:
.set Lset274, Ltmp220-Lfunc_begin0
	.quad	Lset274
.set Lset275, Ltmp222-Lfunc_begin0
	.quad	Lset275
	.short	1                               ; Loc expr size
	.byte	81                              ; DW_OP_reg1
	.quad	0
	.quad	0
Ldebug_loc50:
.set Lset276, Ltmp225-Lfunc_begin0
	.quad	Lset276
.set Lset277, Ltmp226-Lfunc_begin0
	.quad	Lset277
	.short	2                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	159                             ; DW_OP_stack_value
.set Lset278, Ltmp226-Lfunc_begin0
	.quad	Lset278
.set Lset279, Ltmp228-Lfunc_begin0
	.quad	Lset279
	.short	3                               ; Loc expr size
	.byte	141                             ; DW_OP_breg29
	.byte	224                             ; -160
	.byte	126                             ; 
.set Lset280, Ltmp228-Lfunc_begin0
	.quad	Lset280
.set Lset281, Ltmp229-Lfunc_begin0
	.quad	Lset281
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
	.quad	0
	.quad	0
Ldebug_loc51:
.set Lset282, Ltmp225-Lfunc_begin0
	.quad	Lset282
.set Lset283, Ltmp242-Lfunc_begin0
	.quad	Lset283
	.short	1                               ; Loc expr size
	.byte	103                             ; DW_OP_reg23
	.quad	0
	.quad	0
Ldebug_loc52:
.set Lset284, Ltmp230-Lfunc_begin0
	.quad	Lset284
.set Lset285, Ltmp242-Lfunc_begin0
	.quad	Lset285
	.short	1                               ; Loc expr size
	.byte	105                             ; DW_OP_reg25
	.quad	0
	.quad	0
Ldebug_loc53:
.set Lset286, Ltmp231-Lfunc_begin0
	.quad	Lset286
.set Lset287, Ltmp232-Lfunc_begin0
	.quad	Lset287
	.short	2                               ; Loc expr size
	.byte	48                              ; DW_OP_lit0
	.byte	159                             ; DW_OP_stack_value
.set Lset288, Ltmp232-Lfunc_begin0
	.quad	Lset288
.set Lset289, Ltmp234-Lfunc_begin0
	.quad	Lset289
	.short	3                               ; Loc expr size
	.byte	141                             ; DW_OP_breg29
	.byte	224                             ; -160
	.byte	126                             ; 
.set Lset290, Ltmp234-Lfunc_begin0
	.quad	Lset290
.set Lset291, Ltmp235-Lfunc_begin0
	.quad	Lset291
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
	.quad	0
	.quad	0
Ldebug_loc54:
.set Lset292, Ltmp231-Lfunc_begin0
	.quad	Lset292
.set Lset293, Ltmp240-Lfunc_begin0
	.quad	Lset293
	.short	1                               ; Loc expr size
	.byte	108                             ; DW_OP_reg28
	.quad	0
	.quad	0
Ldebug_loc55:
.set Lset294, Ltmp236-Lfunc_begin0
	.quad	Lset294
.set Lset295, Ltmp237-Lfunc_begin0
	.quad	Lset295
	.short	1                               ; Loc expr size
	.byte	82                              ; DW_OP_reg2
	.quad	0
	.quad	0
Ldebug_loc56:
.set Lset296, Ltmp238-Lfunc_begin0
	.quad	Lset296
.set Lset297, Ltmp241-Lfunc_begin0
	.quad	Lset297
	.short	1                               ; Loc expr size
	.byte	88                              ; DW_OP_reg8
	.quad	0
	.quad	0
Ldebug_loc57:
.set Lset298, Ltmp239-Lfunc_begin0
	.quad	Lset298
.set Lset299, Ltmp240-Lfunc_begin0
	.quad	Lset299
	.short	1                               ; Loc expr size
	.byte	108                             ; DW_OP_reg28
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
	.byte	38                              ; DW_TAG_const_type
	.byte	0                               ; DW_CHILDREN_no
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
	.byte	11                              ; DW_TAG_lexical_block
	.byte	1                               ; DW_CHILDREN_yes
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	13                              ; Abbreviation Code
	.byte	1                               ; DW_TAG_array_type
	.byte	1                               ; DW_CHILDREN_yes
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	14                              ; Abbreviation Code
	.byte	33                              ; DW_TAG_subrange_type
	.byte	0                               ; DW_CHILDREN_no
	.byte	73                              ; DW_AT_type
	.byte	19                              ; DW_FORM_ref4
	.byte	55                              ; DW_AT_count
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	15                              ; Abbreviation Code
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
	.byte	11                              ; DW_TAG_lexical_block
	.byte	1                               ; DW_CHILDREN_yes
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	21                              ; Abbreviation Code
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
	.byte	26                              ; Abbreviation Code
	.byte	5                               ; DW_TAG_formal_parameter
	.byte	0                               ; DW_CHILDREN_no
	.byte	2                               ; DW_AT_location
	.byte	24                              ; DW_FORM_exprloc
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	27                              ; Abbreviation Code
	.byte	52                              ; DW_TAG_variable
	.byte	0                               ; DW_CHILDREN_no
	.byte	2                               ; DW_AT_location
	.byte	24                              ; DW_FORM_exprloc
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
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
	.byte	60                              ; DW_AT_declaration
	.byte	25                              ; DW_FORM_flag_present
	.byte	63                              ; DW_AT_external
	.byte	25                              ; DW_FORM_flag_present
	.ascii	"\341\177"                      ; DW_AT_APPLE_optimized
	.byte	25                              ; DW_FORM_flag_present
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	34                              ; Abbreviation Code
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
	.byte	37                              ; Abbreviation Code
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
.set Lset300, Ldebug_info_end0-Ldebug_info_start0 ; Length of Unit
	.long	Lset300
Ldebug_info_start0:
	.short	4                               ; DWARF version number
.set Lset301, Lsection_abbrev-Lsection_abbrev ; Offset Into Abbrev. Section
	.long	Lset301
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x9cd DW_TAG_compile_unit
	.long	0                               ; DW_AT_producer
	.short	12                              ; DW_AT_language
	.long	46                              ; DW_AT_name
	.long	55                              ; DW_AT_LLVM_sysroot
	.long	107                             ; DW_AT_APPLE_sdk
.set Lset302, Lline_table_start0-Lsection_line ; DW_AT_stmt_list
	.long	Lset302
	.long	118                             ; DW_AT_comp_dir
                                        ; DW_AT_APPLE_optimized
	.quad	Lfunc_begin0                    ; DW_AT_low_pc
.set Lset303, Lfunc_end0-Lfunc_begin0   ; DW_AT_high_pc
	.long	Lset303
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
	.byte	6                               ; Abbrev [6] 0x65:0x44 DW_TAG_subprogram
	.long	222                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	65                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	50                              ; DW_AT_type
                                        ; DW_AT_APPLE_optimized
	.byte	1                               ; DW_AT_inline
	.byte	7                               ; Abbrev [7] 0x71:0xb DW_TAG_formal_parameter
	.long	238                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	65                              ; DW_AT_decl_line
	.long	169                             ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0x7c:0xb DW_TAG_formal_parameter
	.long	264                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	65                              ; DW_AT_decl_line
	.long	169                             ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0x87:0xb DW_TAG_formal_parameter
	.long	266                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	65                              ; DW_AT_decl_line
	.long	169                             ; DW_AT_type
	.byte	8                               ; Abbrev [8] 0x92:0xb DW_TAG_variable
	.long	275                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	66                              ; DW_AT_decl_line
	.long	169                             ; DW_AT_type
	.byte	8                               ; Abbrev [8] 0x9d:0xb DW_TAG_variable
	.long	280                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	69                              ; DW_AT_decl_line
	.long	50                              ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0xa9:0xb DW_TAG_typedef
	.long	180                             ; DW_AT_type
	.long	242                             ; DW_AT_name
	.byte	5                               ; DW_AT_decl_file
	.byte	31                              ; DW_AT_decl_line
	.byte	3                               ; Abbrev [3] 0xb4:0x7 DW_TAG_base_type
	.long	251                             ; DW_AT_name
	.byte	7                               ; DW_AT_encoding
	.byte	4                               ; DW_AT_byte_size
	.byte	6                               ; Abbrev [6] 0xbb:0x39 DW_TAG_subprogram
	.long	284                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	31                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	244                             ; DW_AT_type
                                        ; DW_AT_APPLE_optimized
	.byte	1                               ; DW_AT_inline
	.byte	7                               ; Abbrev [7] 0xc7:0xb DW_TAG_formal_parameter
	.long	311                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	31                              ; DW_AT_decl_line
	.long	262                             ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0xd2:0xb DW_TAG_formal_parameter
	.long	315                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	31                              ; DW_AT_decl_line
	.long	169                             ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0xdd:0xb DW_TAG_formal_parameter
	.long	322                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	31                              ; DW_AT_decl_line
	.long	169                             ; DW_AT_type
	.byte	8                               ; Abbrev [8] 0xe8:0xb DW_TAG_variable
	.long	238                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	32                              ; DW_AT_decl_line
	.long	244                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0xf4:0xb DW_TAG_typedef
	.long	255                             ; DW_AT_type
	.long	293                             ; DW_AT_name
	.byte	6                               ; DW_AT_decl_file
	.byte	30                              ; DW_AT_decl_line
	.byte	3                               ; Abbrev [3] 0xff:0x7 DW_TAG_base_type
	.long	301                             ; DW_AT_name
	.byte	5                               ; DW_AT_encoding
	.byte	8                               ; DW_AT_byte_size
	.byte	4                               ; Abbrev [4] 0x106:0x5 DW_TAG_pointer_type
	.long	267                             ; DW_AT_type
	.byte	9                               ; Abbrev [9] 0x10b:0x1 DW_TAG_const_type
	.byte	10                              ; Abbrev [10] 0x10c:0x2a DW_TAG_subprogram
	.long	330                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	37                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_APPLE_optimized
	.byte	1                               ; DW_AT_inline
	.byte	7                               ; Abbrev [7] 0x114:0xb DW_TAG_formal_parameter
	.long	340                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	37                              ; DW_AT_decl_line
	.long	310                             ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0x11f:0xb DW_TAG_formal_parameter
	.long	315                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	37                              ; DW_AT_decl_line
	.long	169                             ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0x12a:0xb DW_TAG_formal_parameter
	.long	238                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	37                              ; DW_AT_decl_line
	.long	244                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	11                              ; Abbrev [11] 0x136:0x1 DW_TAG_pointer_type
	.byte	10                              ; Abbrev [10] 0x137:0x35 DW_TAG_subprogram
	.long	344                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	41                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_APPLE_optimized
	.byte	1                               ; DW_AT_inline
	.byte	7                               ; Abbrev [7] 0x13f:0xb DW_TAG_formal_parameter
	.long	340                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	41                              ; DW_AT_decl_line
	.long	310                             ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0x14a:0xb DW_TAG_formal_parameter
	.long	311                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	41                              ; DW_AT_decl_line
	.long	262                             ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0x155:0xb DW_TAG_formal_parameter
	.long	356                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	41                              ; DW_AT_decl_line
	.long	50                              ; DW_AT_type
	.byte	8                               ; Abbrev [8] 0x160:0xb DW_TAG_variable
	.long	363                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	42                              ; DW_AT_decl_line
	.long	50                              ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	10                              ; Abbrev [10] 0x16c:0x5a DW_TAG_subprogram
	.long	369                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	49                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_APPLE_optimized
	.byte	1                               ; DW_AT_inline
	.byte	7                               ; Abbrev [7] 0x174:0xb DW_TAG_formal_parameter
	.long	340                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	49                              ; DW_AT_decl_line
	.long	96                              ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0x17f:0xb DW_TAG_formal_parameter
	.long	380                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	49                              ; DW_AT_decl_line
	.long	169                             ; DW_AT_type
	.byte	7                               ; Abbrev [7] 0x18a:0xb DW_TAG_formal_parameter
	.long	388                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	49                              ; DW_AT_decl_line
	.long	169                             ; DW_AT_type
	.byte	12                              ; Abbrev [12] 0x195:0x30 DW_TAG_lexical_block
	.byte	8                               ; Abbrev [8] 0x196:0xb DW_TAG_variable
	.long	311                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	51                              ; DW_AT_decl_line
	.long	454                             ; DW_AT_type
	.byte	8                               ; Abbrev [8] 0x1a1:0xb DW_TAG_variable
	.long	415                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	53                              ; DW_AT_decl_line
	.long	169                             ; DW_AT_type
	.byte	12                              ; Abbrev [12] 0x1ac:0x18 DW_TAG_lexical_block
	.byte	8                               ; Abbrev [8] 0x1ad:0xb DW_TAG_variable
	.long	420                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	54                              ; DW_AT_decl_line
	.long	169                             ; DW_AT_type
	.byte	8                               ; Abbrev [8] 0x1b8:0xb DW_TAG_variable
	.long	425                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	54                              ; DW_AT_decl_line
	.long	169                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	13                              ; Abbrev [13] 0x1c6:0xc DW_TAG_array_type
	.long	78                              ; DW_AT_type
	.byte	14                              ; Abbrev [14] 0x1cb:0x6 DW_TAG_subrange_type
	.long	466                             ; DW_AT_type
	.byte	64                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	15                              ; Abbrev [15] 0x1d2:0x7 DW_TAG_base_type
	.long	395                             ; DW_AT_name
	.byte	8                               ; DW_AT_byte_size
	.byte	7                               ; DW_AT_encoding
	.byte	16                              ; Abbrev [16] 0x1d9:0x60d DW_TAG_subprogram
	.quad	Lfunc_begin0                    ; DW_AT_low_pc
.set Lset304, Lfunc_end0-Lfunc_begin0   ; DW_AT_high_pc
	.long	Lset304
	.byte	1                               ; DW_AT_frame_base
	.byte	109
                                        ; DW_AT_call_all_calls
	.long	430                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	17                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_external
                                        ; DW_AT_APPLE_optimized
	.byte	17                              ; Abbrev [17] 0x1ee:0xf DW_TAG_formal_parameter
.set Lset305, Ldebug_loc0-Lsection_debug_loc ; DW_AT_location
	.long	Lset305
	.long	505                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	17                              ; DW_AT_decl_line
	.long	2121                            ; DW_AT_type
	.byte	17                              ; Abbrev [17] 0x1fd:0xf DW_TAG_formal_parameter
.set Lset306, Ldebug_loc1-Lsection_debug_loc ; DW_AT_location
	.long	Lset306
	.long	652                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	17                              ; DW_AT_decl_line
	.long	50                              ; DW_AT_type
	.byte	18                              ; Abbrev [18] 0x20c:0xf DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	143
	.ascii	"\260\001"
	.long	501                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	84                              ; DW_AT_decl_line
	.long	454                             ; DW_AT_type
	.byte	18                              ; Abbrev [18] 0x21b:0xf DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	143
	.asciz	"\360"
	.long	503                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	85                              ; DW_AT_decl_line
	.long	454                             ; DW_AT_type
	.byte	19                              ; Abbrev [19] 0x22a:0xf DW_TAG_variable
.set Lset307, Ldebug_loc2-Lsection_debug_loc ; DW_AT_location
	.long	Lset307
	.long	660                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	25                              ; DW_AT_decl_line
	.long	50                              ; DW_AT_type
	.byte	19                              ; Abbrev [19] 0x239:0xf DW_TAG_variable
.set Lset308, Ldebug_loc3-Lsection_debug_loc ; DW_AT_location
	.long	Lset308
	.long	666                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	30                              ; DW_AT_decl_line
	.long	169                             ; DW_AT_type
	.byte	19                              ; Abbrev [19] 0x248:0xf DW_TAG_variable
.set Lset309, Ldebug_loc4-Lsection_debug_loc ; DW_AT_location
	.long	Lset309
	.long	672                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	30                              ; DW_AT_decl_line
	.long	169                             ; DW_AT_type
	.byte	19                              ; Abbrev [19] 0x257:0xf DW_TAG_variable
.set Lset310, Ldebug_loc5-Lsection_debug_loc ; DW_AT_location
	.long	Lset310
	.long	678                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	28                              ; DW_AT_decl_line
	.long	169                             ; DW_AT_type
	.byte	19                              ; Abbrev [19] 0x266:0xf DW_TAG_variable
.set Lset311, Ldebug_loc6-Lsection_debug_loc ; DW_AT_location
	.long	Lset311
	.long	684                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	27                              ; DW_AT_decl_line
	.long	2114                            ; DW_AT_type
	.byte	19                              ; Abbrev [19] 0x275:0xf DW_TAG_variable
.set Lset312, Ldebug_loc7-Lsection_debug_loc ; DW_AT_location
	.long	Lset312
	.long	692                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	30                              ; DW_AT_decl_line
	.long	169                             ; DW_AT_type
	.byte	19                              ; Abbrev [19] 0x284:0xf DW_TAG_variable
.set Lset313, Ldebug_loc8-Lsection_debug_loc ; DW_AT_location
	.long	Lset313
	.long	698                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	30                              ; DW_AT_decl_line
	.long	169                             ; DW_AT_type
	.byte	19                              ; Abbrev [19] 0x293:0xf DW_TAG_variable
.set Lset314, Ldebug_loc9-Lsection_debug_loc ; DW_AT_location
	.long	Lset314
	.long	706                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	61                              ; DW_AT_decl_line
	.long	169                             ; DW_AT_type
	.byte	19                              ; Abbrev [19] 0x2a2:0xf DW_TAG_variable
.set Lset315, Ldebug_loc10-Lsection_debug_loc ; DW_AT_location
	.long	Lset315
	.long	713                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	62                              ; DW_AT_decl_line
	.long	169                             ; DW_AT_type
	.byte	19                              ; Abbrev [19] 0x2b1:0xf DW_TAG_variable
.set Lset316, Ldebug_loc11-Lsection_debug_loc ; DW_AT_location
	.long	Lset316
	.long	720                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	63                              ; DW_AT_decl_line
	.long	169                             ; DW_AT_type
	.byte	19                              ; Abbrev [19] 0x2c0:0xf DW_TAG_variable
.set Lset317, Ldebug_loc42-Lsection_debug_loc ; DW_AT_location
	.long	Lset317
	.long	748                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	106                             ; DW_AT_decl_line
	.long	50                              ; DW_AT_type
	.byte	19                              ; Abbrev [19] 0x2cf:0xf DW_TAG_variable
.set Lset318, Ldebug_loc43-Lsection_debug_loc ; DW_AT_location
	.long	Lset318
	.long	757                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	106                             ; DW_AT_decl_line
	.long	50                              ; DW_AT_type
	.byte	19                              ; Abbrev [19] 0x2de:0xf DW_TAG_variable
.set Lset319, Ldebug_loc44-Lsection_debug_loc ; DW_AT_location
	.long	Lset319
	.long	766                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	123                             ; DW_AT_decl_line
	.long	169                             ; DW_AT_type
	.byte	19                              ; Abbrev [19] 0x2ed:0xf DW_TAG_variable
.set Lset320, Ldebug_loc45-Lsection_debug_loc ; DW_AT_location
	.long	Lset320
	.long	775                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	124                             ; DW_AT_decl_line
	.long	169                             ; DW_AT_type
	.byte	19                              ; Abbrev [19] 0x2fc:0xf DW_TAG_variable
.set Lset321, Ldebug_loc47-Lsection_debug_loc ; DW_AT_location
	.long	Lset321
	.long	415                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	125                             ; DW_AT_decl_line
	.long	169                             ; DW_AT_type
	.byte	8                               ; Abbrev [8] 0x30b:0xb DW_TAG_variable
	.long	797                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	26                              ; DW_AT_decl_line
	.long	2439                            ; DW_AT_type
	.byte	8                               ; Abbrev [8] 0x316:0xb DW_TAG_variable
	.long	811                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	121                             ; DW_AT_decl_line
	.long	169                             ; DW_AT_type
	.byte	8                               ; Abbrev [8] 0x321:0xb DW_TAG_variable
	.long	820                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	122                             ; DW_AT_decl_line
	.long	169                             ; DW_AT_type
	.byte	20                              ; Abbrev [20] 0x32c:0x122 DW_TAG_lexical_block
.set Lset322, Ldebug_ranges0-Ldebug_range ; DW_AT_ranges
	.long	Lset322
	.byte	19                              ; Abbrev [19] 0x331:0xf DW_TAG_variable
.set Lset323, Ldebug_loc17-Lsection_debug_loc ; DW_AT_location
	.long	Lset323
	.long	727                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	69                              ; DW_AT_decl_line
	.long	50                              ; DW_AT_type
	.byte	8                               ; Abbrev [8] 0x340:0xb DW_TAG_variable
	.long	766                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	68                              ; DW_AT_decl_line
	.long	169                             ; DW_AT_type
	.byte	21                              ; Abbrev [21] 0x34b:0x3a DW_TAG_inlined_subroutine
	.long	101                             ; DW_AT_abstract_origin
.set Lset324, Ldebug_ranges1-Ldebug_range ; DW_AT_ranges
	.long	Lset324
	.byte	3                               ; DW_AT_call_file
	.byte	69                              ; DW_AT_call_line
	.byte	31                              ; DW_AT_call_column
	.byte	22                              ; Abbrev [22] 0x357:0x9 DW_TAG_formal_parameter
.set Lset325, Ldebug_loc14-Lsection_debug_loc ; DW_AT_location
	.long	Lset325
	.long	113                             ; DW_AT_abstract_origin
	.byte	22                              ; Abbrev [22] 0x360:0x9 DW_TAG_formal_parameter
.set Lset326, Ldebug_loc13-Lsection_debug_loc ; DW_AT_location
	.long	Lset326
	.long	124                             ; DW_AT_abstract_origin
	.byte	22                              ; Abbrev [22] 0x369:0x9 DW_TAG_formal_parameter
.set Lset327, Ldebug_loc12-Lsection_debug_loc ; DW_AT_location
	.long	Lset327
	.long	135                             ; DW_AT_abstract_origin
	.byte	23                              ; Abbrev [23] 0x372:0x9 DW_TAG_variable
.set Lset328, Ldebug_loc15-Lsection_debug_loc ; DW_AT_location
	.long	Lset328
	.long	146                             ; DW_AT_abstract_origin
	.byte	23                              ; Abbrev [23] 0x37b:0x9 DW_TAG_variable
.set Lset329, Ldebug_loc16-Lsection_debug_loc ; DW_AT_location
	.long	Lset329
	.long	157                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	24                              ; Abbrev [24] 0x385:0xc8 DW_TAG_lexical_block
	.quad	Ltmp60                          ; DW_AT_low_pc
.set Lset330, Ltmp78-Ltmp60             ; DW_AT_high_pc
	.long	Lset330
	.byte	18                              ; Abbrev [18] 0x392:0xd DW_TAG_variable
	.byte	1                               ; DW_AT_location
	.byte	104
	.long	738                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	70                              ; DW_AT_decl_line
	.long	169                             ; DW_AT_type
	.byte	24                              ; Abbrev [24] 0x39f:0xad DW_TAG_lexical_block
	.quad	Ltmp63                          ; DW_AT_low_pc
.set Lset331, Ltmp78-Ltmp63             ; DW_AT_high_pc
	.long	Lset331
	.byte	18                              ; Abbrev [18] 0x3ac:0xd DW_TAG_variable
	.byte	1                               ; DW_AT_location
	.byte	105
	.long	740                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	71                              ; DW_AT_decl_line
	.long	169                             ; DW_AT_type
	.byte	24                              ; Abbrev [24] 0x3b9:0x92 DW_TAG_lexical_block
	.quad	Ltmp65                          ; DW_AT_low_pc
.set Lset332, Ltmp78-Ltmp65             ; DW_AT_high_pc
	.long	Lset332
	.byte	19                              ; Abbrev [19] 0x3c6:0xf DW_TAG_variable
.set Lset333, Ldebug_loc18-Lsection_debug_loc ; DW_AT_location
	.long	Lset333
	.long	650                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	73                              ; DW_AT_decl_line
	.long	310                             ; DW_AT_type
	.byte	19                              ; Abbrev [19] 0x3d5:0xf DW_TAG_variable
.set Lset334, Ldebug_loc20-Lsection_debug_loc ; DW_AT_location
	.long	Lset334
	.long	238                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	74                              ; DW_AT_decl_line
	.long	244                             ; DW_AT_type
	.byte	25                              ; Abbrev [25] 0x3e4:0x33 DW_TAG_inlined_subroutine
	.long	187                             ; DW_AT_abstract_origin
	.quad	Ltmp67                          ; DW_AT_low_pc
.set Lset335, Ltmp73-Ltmp67             ; DW_AT_high_pc
	.long	Lset335
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	31                              ; DW_AT_call_column
	.byte	26                              ; Abbrev [26] 0x3f8:0xe DW_TAG_formal_parameter
	.byte	8                               ; DW_AT_location
	.byte	138
	.byte	0
	.byte	137
	.byte	0
	.byte	49
	.byte	30
	.byte	34
	.byte	159
	.long	199                             ; DW_AT_abstract_origin
	.byte	26                              ; Abbrev [26] 0x406:0x7 DW_TAG_formal_parameter
	.byte	1                               ; DW_AT_location
	.byte	102
	.long	210                             ; DW_AT_abstract_origin
	.byte	23                              ; Abbrev [23] 0x40d:0x9 DW_TAG_variable
.set Lset336, Ldebug_loc19-Lsection_debug_loc ; DW_AT_location
	.long	Lset336
	.long	232                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	25                              ; Abbrev [25] 0x417:0x33 DW_TAG_inlined_subroutine
	.long	268                             ; DW_AT_abstract_origin
	.quad	Ltmp75                          ; DW_AT_low_pc
.set Lset337, Ltmp78-Ltmp75             ; DW_AT_high_pc
	.long	Lset337
	.byte	3                               ; DW_AT_call_file
	.byte	76                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	26                              ; Abbrev [26] 0x42b:0xe DW_TAG_formal_parameter
	.byte	8                               ; DW_AT_location
	.byte	138
	.byte	0
	.byte	137
	.byte	0
	.byte	49
	.byte	30
	.byte	34
	.byte	159
	.long	276                             ; DW_AT_abstract_origin
	.byte	26                              ; Abbrev [26] 0x439:0x7 DW_TAG_formal_parameter
	.byte	1                               ; DW_AT_location
	.byte	102
	.long	287                             ; DW_AT_abstract_origin
	.byte	26                              ; Abbrev [26] 0x440:0x9 DW_TAG_formal_parameter
	.byte	3                               ; DW_AT_location
	.byte	145
	.ascii	"\340~"
	.long	298                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	25                              ; Abbrev [25] 0x44e:0x3a DW_TAG_inlined_subroutine
	.long	311                             ; DW_AT_abstract_origin
	.quad	Ltmp92                          ; DW_AT_low_pc
.set Lset338, Ltmp96-Ltmp92             ; DW_AT_high_pc
	.long	Lset338
	.byte	3                               ; DW_AT_call_file
	.byte	86                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	26                              ; Abbrev [26] 0x462:0xa DW_TAG_formal_parameter
	.byte	4                               ; DW_AT_location
	.byte	143
	.ascii	"\260\001"
	.byte	159
	.long	319                             ; DW_AT_abstract_origin
	.byte	26                              ; Abbrev [26] 0x46c:0x9 DW_TAG_formal_parameter
	.byte	3                               ; DW_AT_location
	.byte	143
	.asciz	"\330"
	.long	330                             ; DW_AT_abstract_origin
	.byte	22                              ; Abbrev [22] 0x475:0x9 DW_TAG_formal_parameter
.set Lset339, Ldebug_loc21-Lsection_debug_loc ; DW_AT_location
	.long	Lset339
	.long	341                             ; DW_AT_abstract_origin
	.byte	23                              ; Abbrev [23] 0x47e:0x9 DW_TAG_variable
.set Lset340, Ldebug_loc22-Lsection_debug_loc ; DW_AT_location
	.long	Lset340
	.long	352                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	25                              ; Abbrev [25] 0x488:0x38 DW_TAG_inlined_subroutine
	.long	311                             ; DW_AT_abstract_origin
	.quad	Ltmp97                          ; DW_AT_low_pc
.set Lset341, Ltmp101-Ltmp97            ; DW_AT_high_pc
	.long	Lset341
	.byte	3                               ; DW_AT_call_file
	.byte	87                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	26                              ; Abbrev [26] 0x49c:0xa DW_TAG_formal_parameter
	.byte	4                               ; DW_AT_location
	.byte	143
	.asciz	"\360"
	.byte	159
	.long	319                             ; DW_AT_abstract_origin
	.byte	26                              ; Abbrev [26] 0x4a6:0x7 DW_TAG_formal_parameter
	.byte	1                               ; DW_AT_location
	.byte	104
	.long	330                             ; DW_AT_abstract_origin
	.byte	22                              ; Abbrev [22] 0x4ad:0x9 DW_TAG_formal_parameter
.set Lset342, Ldebug_loc23-Lsection_debug_loc ; DW_AT_location
	.long	Lset342
	.long	341                             ; DW_AT_abstract_origin
	.byte	23                              ; Abbrev [23] 0x4b6:0x9 DW_TAG_variable
.set Lset343, Ldebug_loc24-Lsection_debug_loc ; DW_AT_location
	.long	Lset343
	.long	352                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	24                              ; Abbrev [24] 0x4c0:0x28 DW_TAG_lexical_block
	.quad	Ltmp102                         ; DW_AT_low_pc
.set Lset344, Ltmp110-Ltmp102           ; DW_AT_high_pc
	.long	Lset344
	.byte	19                              ; Abbrev [19] 0x4cd:0xf DW_TAG_variable
.set Lset345, Ldebug_loc25-Lsection_debug_loc ; DW_AT_location
	.long	Lset345
	.long	742                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	90                              ; DW_AT_decl_line
	.long	169                             ; DW_AT_type
	.byte	8                               ; Abbrev [8] 0x4dc:0xb DW_TAG_variable
	.long	803                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	89                              ; DW_AT_decl_line
	.long	169                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	25                              ; Abbrev [25] 0x4e8:0x70 DW_TAG_inlined_subroutine
	.long	364                             ; DW_AT_abstract_origin
	.quad	Ltmp111                         ; DW_AT_low_pc
.set Lset346, Ltmp123-Ltmp111           ; DW_AT_high_pc
	.long	Lset346
	.byte	3                               ; DW_AT_call_file
	.byte	97                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	26                              ; Abbrev [26] 0x4fc:0xa DW_TAG_formal_parameter
	.byte	4                               ; DW_AT_location
	.byte	143
	.ascii	"\260\001"
	.byte	159
	.long	372                             ; DW_AT_abstract_origin
	.byte	22                              ; Abbrev [22] 0x506:0x9 DW_TAG_formal_parameter
.set Lset347, Ldebug_loc26-Lsection_debug_loc ; DW_AT_location
	.long	Lset347
	.long	383                             ; DW_AT_abstract_origin
	.byte	26                              ; Abbrev [26] 0x50f:0xa DW_TAG_formal_parameter
	.byte	4                               ; DW_AT_location
	.byte	48
	.byte	51
	.byte	37
	.byte	159
	.long	394                             ; DW_AT_abstract_origin
	.byte	24                              ; Abbrev [24] 0x519:0x3e DW_TAG_lexical_block
	.quad	Ltmp114                         ; DW_AT_low_pc
.set Lset348, Ltmp123-Ltmp114           ; DW_AT_high_pc
	.long	Lset348
	.byte	27                              ; Abbrev [27] 0x526:0x9 DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	145
	.ascii	"\340~"
	.long	406                             ; DW_AT_abstract_origin
	.byte	23                              ; Abbrev [23] 0x52f:0x9 DW_TAG_variable
.set Lset349, Ldebug_loc27-Lsection_debug_loc ; DW_AT_location
	.long	Lset349
	.long	417                             ; DW_AT_abstract_origin
	.byte	24                              ; Abbrev [24] 0x538:0x1e DW_TAG_lexical_block
	.quad	Ltmp116                         ; DW_AT_low_pc
.set Lset350, Ltmp123-Ltmp116           ; DW_AT_high_pc
	.long	Lset350
	.byte	23                              ; Abbrev [23] 0x545:0x9 DW_TAG_variable
.set Lset351, Ldebug_loc28-Lsection_debug_loc ; DW_AT_location
	.long	Lset351
	.long	429                             ; DW_AT_abstract_origin
	.byte	27                              ; Abbrev [27] 0x54e:0x7 DW_TAG_variable
	.byte	1                               ; DW_AT_location
	.byte	99
	.long	440                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	25                              ; Abbrev [25] 0x558:0x70 DW_TAG_inlined_subroutine
	.long	364                             ; DW_AT_abstract_origin
	.quad	Ltmp126                         ; DW_AT_low_pc
.set Lset352, Ltmp137-Ltmp126           ; DW_AT_high_pc
	.long	Lset352
	.byte	3                               ; DW_AT_call_file
	.byte	98                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	26                              ; Abbrev [26] 0x56c:0xa DW_TAG_formal_parameter
	.byte	4                               ; DW_AT_location
	.byte	143
	.asciz	"\360"
	.byte	159
	.long	372                             ; DW_AT_abstract_origin
	.byte	22                              ; Abbrev [22] 0x576:0x9 DW_TAG_formal_parameter
.set Lset353, Ldebug_loc29-Lsection_debug_loc ; DW_AT_location
	.long	Lset353
	.long	383                             ; DW_AT_abstract_origin
	.byte	26                              ; Abbrev [26] 0x57f:0xa DW_TAG_formal_parameter
	.byte	4                               ; DW_AT_location
	.byte	48
	.byte	51
	.byte	37
	.byte	159
	.long	394                             ; DW_AT_abstract_origin
	.byte	24                              ; Abbrev [24] 0x589:0x3e DW_TAG_lexical_block
	.quad	Ltmp128                         ; DW_AT_low_pc
.set Lset354, Ltmp137-Ltmp128           ; DW_AT_high_pc
	.long	Lset354
	.byte	27                              ; Abbrev [27] 0x596:0x9 DW_TAG_variable
	.byte	3                               ; DW_AT_location
	.byte	145
	.ascii	"\340~"
	.long	406                             ; DW_AT_abstract_origin
	.byte	23                              ; Abbrev [23] 0x59f:0x9 DW_TAG_variable
.set Lset355, Ldebug_loc30-Lsection_debug_loc ; DW_AT_location
	.long	Lset355
	.long	417                             ; DW_AT_abstract_origin
	.byte	24                              ; Abbrev [24] 0x5a8:0x1e DW_TAG_lexical_block
	.quad	Ltmp130                         ; DW_AT_low_pc
.set Lset356, Ltmp137-Ltmp130           ; DW_AT_high_pc
	.long	Lset356
	.byte	23                              ; Abbrev [23] 0x5b5:0x9 DW_TAG_variable
.set Lset357, Ldebug_loc31-Lsection_debug_loc ; DW_AT_location
	.long	Lset357
	.long	429                             ; DW_AT_abstract_origin
	.byte	27                              ; Abbrev [27] 0x5be:0x7 DW_TAG_variable
	.byte	1                               ; DW_AT_location
	.byte	99
	.long	440                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	21                              ; Abbrev [21] 0x5c8:0x3a DW_TAG_inlined_subroutine
	.long	101                             ; DW_AT_abstract_origin
.set Lset358, Ldebug_ranges2-Ldebug_range ; DW_AT_ranges
	.long	Lset358
	.byte	3                               ; DW_AT_call_file
	.byte	111                             ; DW_AT_call_line
	.byte	20                              ; DW_AT_call_column
	.byte	22                              ; Abbrev [22] 0x5d4:0x9 DW_TAG_formal_parameter
.set Lset359, Ldebug_loc37-Lsection_debug_loc ; DW_AT_location
	.long	Lset359
	.long	113                             ; DW_AT_abstract_origin
	.byte	22                              ; Abbrev [22] 0x5dd:0x9 DW_TAG_formal_parameter
.set Lset360, Ldebug_loc35-Lsection_debug_loc ; DW_AT_location
	.long	Lset360
	.long	124                             ; DW_AT_abstract_origin
	.byte	22                              ; Abbrev [22] 0x5e6:0x9 DW_TAG_formal_parameter
.set Lset361, Ldebug_loc33-Lsection_debug_loc ; DW_AT_location
	.long	Lset361
	.long	135                             ; DW_AT_abstract_origin
	.byte	23                              ; Abbrev [23] 0x5ef:0x9 DW_TAG_variable
.set Lset362, Ldebug_loc39-Lsection_debug_loc ; DW_AT_location
	.long	Lset362
	.long	146                             ; DW_AT_abstract_origin
	.byte	23                              ; Abbrev [23] 0x5f8:0x9 DW_TAG_variable
.set Lset363, Ldebug_loc40-Lsection_debug_loc ; DW_AT_location
	.long	Lset363
	.long	157                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	21                              ; Abbrev [21] 0x602:0x3a DW_TAG_inlined_subroutine
	.long	101                             ; DW_AT_abstract_origin
.set Lset364, Ldebug_ranges3-Ldebug_range ; DW_AT_ranges
	.long	Lset364
	.byte	3                               ; DW_AT_call_file
	.byte	109                             ; DW_AT_call_line
	.byte	20                              ; DW_AT_call_column
	.byte	22                              ; Abbrev [22] 0x60e:0x9 DW_TAG_formal_parameter
.set Lset365, Ldebug_loc36-Lsection_debug_loc ; DW_AT_location
	.long	Lset365
	.long	113                             ; DW_AT_abstract_origin
	.byte	22                              ; Abbrev [22] 0x617:0x9 DW_TAG_formal_parameter
.set Lset366, Ldebug_loc34-Lsection_debug_loc ; DW_AT_location
	.long	Lset366
	.long	124                             ; DW_AT_abstract_origin
	.byte	22                              ; Abbrev [22] 0x620:0x9 DW_TAG_formal_parameter
.set Lset367, Ldebug_loc32-Lsection_debug_loc ; DW_AT_location
	.long	Lset367
	.long	135                             ; DW_AT_abstract_origin
	.byte	23                              ; Abbrev [23] 0x629:0x9 DW_TAG_variable
.set Lset368, Ldebug_loc38-Lsection_debug_loc ; DW_AT_location
	.long	Lset368
	.long	146                             ; DW_AT_abstract_origin
	.byte	23                              ; Abbrev [23] 0x632:0x9 DW_TAG_variable
.set Lset369, Ldebug_loc41-Lsection_debug_loc ; DW_AT_location
	.long	Lset369
	.long	157                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	24                              ; Abbrev [24] 0x63c:0x23 DW_TAG_lexical_block
	.quad	Ltmp195                         ; DW_AT_low_pc
.set Lset370, Ltmp196-Ltmp195           ; DW_AT_high_pc
	.long	Lset370
	.byte	18                              ; Abbrev [18] 0x649:0x15 DW_TAG_variable
	.byte	9                               ; DW_AT_location
	.byte	132
	.byte	0
	.byte	16
	.byte	32
	.byte	37
	.byte	16
	.byte	62
	.byte	26
	.byte	159
	.long	238                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	115                             ; DW_AT_decl_line
	.long	169                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	24                              ; Abbrev [24] 0x65f:0x13d DW_TAG_lexical_block
	.quad	Ltmp206                         ; DW_AT_low_pc
.set Lset371, Ltmp242-Ltmp206           ; DW_AT_high_pc
	.long	Lset371
	.byte	19                              ; Abbrev [19] 0x66c:0xf DW_TAG_variable
.set Lset372, Ldebug_loc46-Lsection_debug_loc ; DW_AT_location
	.long	Lset372
	.long	738                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	126                             ; DW_AT_decl_line
	.long	169                             ; DW_AT_type
	.byte	24                              ; Abbrev [24] 0x67b:0x120 DW_TAG_lexical_block
	.quad	Ltmp215                         ; DW_AT_low_pc
.set Lset373, Ltmp242-Ltmp215           ; DW_AT_high_pc
	.long	Lset373
	.byte	18                              ; Abbrev [18] 0x688:0xd DW_TAG_variable
	.byte	1                               ; DW_AT_location
	.byte	99
	.long	740                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	128                             ; DW_AT_decl_line
	.long	169                             ; DW_AT_type
	.byte	24                              ; Abbrev [24] 0x695:0x105 DW_TAG_lexical_block
	.quad	Ltmp218                         ; DW_AT_low_pc
.set Lset374, Ltmp242-Ltmp218           ; DW_AT_high_pc
	.long	Lset374
	.byte	19                              ; Abbrev [19] 0x6a2:0xf DW_TAG_variable
.set Lset375, Ldebug_loc51-Lsection_debug_loc ; DW_AT_location
	.long	Lset375
	.long	781                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	130                             ; DW_AT_decl_line
	.long	244                             ; DW_AT_type
	.byte	19                              ; Abbrev [19] 0x6b1:0xf DW_TAG_variable
.set Lset376, Ldebug_loc52-Lsection_debug_loc ; DW_AT_location
	.long	Lset376
	.long	784                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	131                             ; DW_AT_decl_line
	.long	244                             ; DW_AT_type
	.byte	19                              ; Abbrev [19] 0x6c0:0xf DW_TAG_variable
.set Lset377, Ldebug_loc54-Lsection_debug_loc ; DW_AT_location
	.long	Lset377
	.long	650                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	132                             ; DW_AT_decl_line
	.long	310                             ; DW_AT_type
	.byte	19                              ; Abbrev [19] 0x6cf:0xf DW_TAG_variable
.set Lset378, Ldebug_loc55-Lsection_debug_loc ; DW_AT_location
	.long	Lset378
	.long	787                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	133                             ; DW_AT_decl_line
	.long	244                             ; DW_AT_type
	.byte	19                              ; Abbrev [19] 0x6de:0xf DW_TAG_variable
.set Lset379, Ldebug_loc56-Lsection_debug_loc ; DW_AT_location
	.long	Lset379
	.long	790                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	134                             ; DW_AT_decl_line
	.long	244                             ; DW_AT_type
	.byte	25                              ; Abbrev [25] 0x6ed:0x31 DW_TAG_inlined_subroutine
	.long	187                             ; DW_AT_abstract_origin
	.quad	Ltmp220                         ; DW_AT_low_pc
.set Lset380, Ltmp225-Ltmp220           ; DW_AT_high_pc
	.long	Lset380
	.byte	3                               ; DW_AT_call_file
	.byte	130                             ; DW_AT_call_line
	.byte	26                              ; DW_AT_call_column
	.byte	22                              ; Abbrev [22] 0x701:0x9 DW_TAG_formal_parameter
.set Lset381, Ldebug_loc49-Lsection_debug_loc ; DW_AT_location
	.long	Lset381
	.long	199                             ; DW_AT_abstract_origin
	.byte	26                              ; Abbrev [26] 0x70a:0xa DW_TAG_formal_parameter
	.byte	4                               ; DW_AT_location
	.byte	48
	.byte	51
	.byte	37
	.byte	159
	.long	210                             ; DW_AT_abstract_origin
	.byte	23                              ; Abbrev [23] 0x714:0x9 DW_TAG_variable
.set Lset382, Ldebug_loc48-Lsection_debug_loc ; DW_AT_location
	.long	Lset382
	.long	232                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	25                              ; Abbrev [25] 0x71e:0x2f DW_TAG_inlined_subroutine
	.long	187                             ; DW_AT_abstract_origin
	.quad	Ltmp225                         ; DW_AT_low_pc
.set Lset383, Ltmp230-Ltmp225           ; DW_AT_high_pc
	.long	Lset383
	.byte	3                               ; DW_AT_call_file
	.byte	131                             ; DW_AT_call_line
	.byte	26                              ; DW_AT_call_column
	.byte	26                              ; Abbrev [26] 0x732:0x7 DW_TAG_formal_parameter
	.byte	1                               ; DW_AT_location
	.byte	100
	.long	199                             ; DW_AT_abstract_origin
	.byte	26                              ; Abbrev [26] 0x739:0xa DW_TAG_formal_parameter
	.byte	4                               ; DW_AT_location
	.byte	48
	.byte	51
	.byte	37
	.byte	159
	.long	210                             ; DW_AT_abstract_origin
	.byte	23                              ; Abbrev [23] 0x743:0x9 DW_TAG_variable
.set Lset384, Ldebug_loc50-Lsection_debug_loc ; DW_AT_location
	.long	Lset384
	.long	232                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	25                              ; Abbrev [25] 0x74d:0x25 DW_TAG_inlined_subroutine
	.long	187                             ; DW_AT_abstract_origin
	.quad	Ltmp231                         ; DW_AT_low_pc
.set Lset385, Ltmp236-Ltmp231           ; DW_AT_high_pc
	.long	Lset385
	.byte	3                               ; DW_AT_call_file
	.byte	133                             ; DW_AT_call_line
	.byte	26                              ; DW_AT_call_column
	.byte	26                              ; Abbrev [26] 0x761:0x7 DW_TAG_formal_parameter
	.byte	1                               ; DW_AT_location
	.byte	108
	.long	199                             ; DW_AT_abstract_origin
	.byte	23                              ; Abbrev [23] 0x768:0x9 DW_TAG_variable
.set Lset386, Ldebug_loc53-Lsection_debug_loc ; DW_AT_location
	.long	Lset386
	.long	232                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	25                              ; Abbrev [25] 0x772:0x27 DW_TAG_inlined_subroutine
	.long	268                             ; DW_AT_abstract_origin
	.quad	Ltmp239                         ; DW_AT_low_pc
.set Lset387, Ltmp242-Ltmp239           ; DW_AT_high_pc
	.long	Lset387
	.byte	3                               ; DW_AT_call_file
	.byte	135                             ; DW_AT_call_line
	.byte	13                              ; DW_AT_call_column
	.byte	22                              ; Abbrev [22] 0x786:0x9 DW_TAG_formal_parameter
.set Lset388, Ldebug_loc57-Lsection_debug_loc ; DW_AT_location
	.long	Lset388
	.long	276                             ; DW_AT_abstract_origin
	.byte	26                              ; Abbrev [26] 0x78f:0x9 DW_TAG_formal_parameter
	.byte	3                               ; DW_AT_location
	.byte	145
	.ascii	"\340~"
	.long	298                             ; DW_AT_abstract_origin
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	28                              ; Abbrev [28] 0x79c:0x1a DW_TAG_call_site
	.long	2022                            ; DW_AT_call_origin
	.quad	Ltmp74                          ; DW_AT_call_return_pc
	.byte	29                              ; Abbrev [29] 0x7a9:0x6 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	82
	.byte	2                               ; DW_AT_call_value
	.byte	132
	.byte	0
	.byte	29                              ; Abbrev [29] 0x7af:0x6 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	81
	.byte	2                               ; DW_AT_call_value
	.byte	133
	.byte	0
	.byte	0                               ; End Of Children Mark
	.byte	30                              ; Abbrev [30] 0x7b6:0xd DW_TAG_call_site
	.long	2049                            ; DW_AT_call_origin
	.quad	Ltmp110                         ; DW_AT_call_return_pc
	.byte	28                              ; Abbrev [28] 0x7c3:0x22 DW_TAG_call_site
	.long	2077                            ; DW_AT_call_origin
	.quad	Ltmp237                         ; DW_AT_call_return_pc
	.byte	29                              ; Abbrev [29] 0x7d0:0x8 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	83
	.byte	4                               ; DW_AT_call_value
	.byte	143
	.byte	60
	.byte	148
	.byte	4
	.byte	29                              ; Abbrev [29] 0x7d8:0x6 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	81
	.byte	2                               ; DW_AT_call_value
	.byte	137
	.byte	0
	.byte	29                              ; Abbrev [29] 0x7de:0x6 DW_TAG_call_site_parameter
	.byte	1                               ; DW_AT_location
	.byte	80
	.byte	2                               ; DW_AT_call_value
	.byte	135
	.byte	0
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	31                              ; Abbrev [31] 0x7e6:0x1b DW_TAG_subprogram
	.long	449                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	14                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	244                             ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
                                        ; DW_AT_APPLE_optimized
	.byte	32                              ; Abbrev [32] 0x7f1:0x5 DW_TAG_formal_parameter
	.long	244                             ; DW_AT_type
	.byte	32                              ; Abbrev [32] 0x7f6:0x5 DW_TAG_formal_parameter
	.long	169                             ; DW_AT_type
	.byte	32                              ; Abbrev [32] 0x7fb:0x5 DW_TAG_formal_parameter
	.long	50                              ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	33                              ; Abbrev [33] 0x801:0x1c DW_TAG_subprogram
	.long	466                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	47                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
                                        ; DW_AT_declaration
                                        ; DW_AT_external
                                        ; DW_AT_APPLE_optimized
	.byte	32                              ; Abbrev [32] 0x808:0x5 DW_TAG_formal_parameter
	.long	96                              ; DW_AT_type
	.byte	32                              ; Abbrev [32] 0x80d:0x5 DW_TAG_formal_parameter
	.long	68                              ; DW_AT_type
	.byte	32                              ; Abbrev [32] 0x812:0x5 DW_TAG_formal_parameter
	.long	169                             ; DW_AT_type
	.byte	32                              ; Abbrev [32] 0x817:0x5 DW_TAG_formal_parameter
	.long	169                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	31                              ; Abbrev [31] 0x81d:0x25 DW_TAG_subprogram
	.long	486                             ; DW_AT_name
	.byte	3                               ; DW_AT_decl_file
	.byte	15                              ; DW_AT_decl_line
                                        ; DW_AT_prototyped
	.long	244                             ; DW_AT_type
                                        ; DW_AT_declaration
                                        ; DW_AT_external
                                        ; DW_AT_APPLE_optimized
	.byte	32                              ; Abbrev [32] 0x828:0x5 DW_TAG_formal_parameter
	.long	244                             ; DW_AT_type
	.byte	32                              ; Abbrev [32] 0x82d:0x5 DW_TAG_formal_parameter
	.long	244                             ; DW_AT_type
	.byte	32                              ; Abbrev [32] 0x832:0x5 DW_TAG_formal_parameter
	.long	244                             ; DW_AT_type
	.byte	32                              ; Abbrev [32] 0x837:0x5 DW_TAG_formal_parameter
	.long	2114                            ; DW_AT_type
	.byte	32                              ; Abbrev [32] 0x83c:0x5 DW_TAG_formal_parameter
	.long	169                             ; DW_AT_type
	.byte	0                               ; End Of Children Mark
	.byte	3                               ; Abbrev [3] 0x842:0x7 DW_TAG_base_type
	.long	497                             ; DW_AT_name
	.byte	5                               ; DW_AT_encoding
	.byte	4                               ; DW_AT_byte_size
	.byte	4                               ; Abbrev [4] 0x849:0x5 DW_TAG_pointer_type
	.long	2126                            ; DW_AT_type
	.byte	2                               ; Abbrev [2] 0x84e:0xb DW_TAG_typedef
	.long	2137                            ; DW_AT_type
	.long	511                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	22                              ; DW_AT_decl_line
	.byte	34                              ; Abbrev [34] 0x859:0x30 DW_TAG_structure_type
	.long	511                             ; DW_AT_name
	.short	5120                            ; DW_AT_byte_size
	.byte	4                               ; DW_AT_decl_file
	.byte	18                              ; DW_AT_decl_line
	.byte	35                              ; Abbrev [35] 0x862:0xc DW_TAG_member
	.long	501                             ; DW_AT_name
	.long	2185                            ; DW_AT_type
	.byte	4                               ; DW_AT_decl_file
	.byte	19                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	36                              ; Abbrev [36] 0x86e:0xd DW_TAG_member
	.long	503                             ; DW_AT_name
	.long	2185                            ; DW_AT_type
	.byte	4                               ; DW_AT_decl_file
	.byte	20                              ; DW_AT_decl_line
	.short	512                             ; DW_AT_data_member_location
	.byte	36                              ; Abbrev [36] 0x87b:0xd DW_TAG_member
	.long	650                             ; DW_AT_name
	.long	2507                            ; DW_AT_type
	.byte	4                               ; DW_AT_decl_file
	.byte	21                              ; DW_AT_decl_line
	.short	1024                            ; DW_AT_data_member_location
	.byte	0                               ; End Of Children Mark
	.byte	13                              ; Abbrev [13] 0x889:0xc DW_TAG_array_type
	.long	2197                            ; DW_AT_type
	.byte	14                              ; Abbrev [14] 0x88e:0x6 DW_TAG_subrange_type
	.long	466                             ; DW_AT_type
	.byte	8                               ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x895:0xb DW_TAG_typedef
	.long	2208                            ; DW_AT_type
	.long	521                             ; DW_AT_name
	.byte	4                               ; DW_AT_decl_file
	.byte	16                              ; DW_AT_decl_line
	.byte	37                              ; Abbrev [37] 0x8a0:0x75 DW_TAG_union_type
	.long	521                             ; DW_AT_name
	.byte	64                              ; DW_AT_byte_size
	.byte	4                               ; DW_AT_decl_file
	.byte	6                               ; DW_AT_decl_line
	.byte	35                              ; Abbrev [35] 0x8a8:0xc DW_TAG_member
	.long	529                             ; DW_AT_name
	.long	454                             ; DW_AT_type
	.byte	4                               ; DW_AT_decl_file
	.byte	7                               ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	35                              ; Abbrev [35] 0x8b4:0xc DW_TAG_member
	.long	532                             ; DW_AT_name
	.long	2325                            ; DW_AT_type
	.byte	4                               ; DW_AT_decl_file
	.byte	8                               ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	35                              ; Abbrev [35] 0x8c0:0xc DW_TAG_member
	.long	560                             ; DW_AT_name
	.long	2355                            ; DW_AT_type
	.byte	4                               ; DW_AT_decl_file
	.byte	9                               ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	35                              ; Abbrev [35] 0x8cc:0xc DW_TAG_member
	.long	564                             ; DW_AT_name
	.long	2367                            ; DW_AT_type
	.byte	4                               ; DW_AT_decl_file
	.byte	10                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	35                              ; Abbrev [35] 0x8d8:0xc DW_TAG_member
	.long	586                             ; DW_AT_name
	.long	2397                            ; DW_AT_type
	.byte	4                               ; DW_AT_decl_file
	.byte	11                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	35                              ; Abbrev [35] 0x8e4:0xc DW_TAG_member
	.long	604                             ; DW_AT_name
	.long	2427                            ; DW_AT_type
	.byte	4                               ; DW_AT_decl_file
	.byte	12                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	35                              ; Abbrev [35] 0x8f0:0xc DW_TAG_member
	.long	616                             ; DW_AT_name
	.long	2450                            ; DW_AT_type
	.byte	4                               ; DW_AT_decl_file
	.byte	13                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	35                              ; Abbrev [35] 0x8fc:0xc DW_TAG_member
	.long	629                             ; DW_AT_name
	.long	2469                            ; DW_AT_type
	.byte	4                               ; DW_AT_decl_file
	.byte	14                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	35                              ; Abbrev [35] 0x908:0xc DW_TAG_member
	.long	639                             ; DW_AT_name
	.long	2488                            ; DW_AT_type
	.byte	4                               ; DW_AT_decl_file
	.byte	15                              ; DW_AT_decl_line
	.byte	0                               ; DW_AT_data_member_location
	.byte	0                               ; End Of Children Mark
	.byte	13                              ; Abbrev [13] 0x915:0xc DW_TAG_array_type
	.long	2337                            ; DW_AT_type
	.byte	14                              ; Abbrev [14] 0x91a:0x6 DW_TAG_subrange_type
	.long	466                             ; DW_AT_type
	.byte	32                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x921:0xb DW_TAG_typedef
	.long	2348                            ; DW_AT_type
	.long	536                             ; DW_AT_name
	.byte	7                               ; DW_AT_decl_file
	.byte	31                              ; DW_AT_decl_line
	.byte	3                               ; Abbrev [3] 0x92c:0x7 DW_TAG_base_type
	.long	545                             ; DW_AT_name
	.byte	7                               ; DW_AT_encoding
	.byte	2                               ; DW_AT_byte_size
	.byte	13                              ; Abbrev [13] 0x933:0xc DW_TAG_array_type
	.long	169                             ; DW_AT_type
	.byte	14                              ; Abbrev [14] 0x938:0x6 DW_TAG_subrange_type
	.long	466                             ; DW_AT_type
	.byte	16                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	13                              ; Abbrev [13] 0x93f:0xc DW_TAG_array_type
	.long	2379                            ; DW_AT_type
	.byte	14                              ; Abbrev [14] 0x944:0x6 DW_TAG_subrange_type
	.long	466                             ; DW_AT_type
	.byte	64                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x94b:0xb DW_TAG_typedef
	.long	2390                            ; DW_AT_type
	.long	567                             ; DW_AT_name
	.byte	8                               ; DW_AT_decl_file
	.byte	30                              ; DW_AT_decl_line
	.byte	3                               ; Abbrev [3] 0x956:0x7 DW_TAG_base_type
	.long	574                             ; DW_AT_name
	.byte	6                               ; DW_AT_encoding
	.byte	1                               ; DW_AT_byte_size
	.byte	13                              ; Abbrev [13] 0x95d:0xc DW_TAG_array_type
	.long	2409                            ; DW_AT_type
	.byte	14                              ; Abbrev [14] 0x962:0x6 DW_TAG_subrange_type
	.long	466                             ; DW_AT_type
	.byte	32                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x969:0xb DW_TAG_typedef
	.long	2420                            ; DW_AT_type
	.long	590                             ; DW_AT_name
	.byte	9                               ; DW_AT_decl_file
	.byte	30                              ; DW_AT_decl_line
	.byte	3                               ; Abbrev [3] 0x974:0x7 DW_TAG_base_type
	.long	598                             ; DW_AT_name
	.byte	5                               ; DW_AT_encoding
	.byte	2                               ; DW_AT_byte_size
	.byte	13                              ; Abbrev [13] 0x97b:0xc DW_TAG_array_type
	.long	2439                            ; DW_AT_type
	.byte	14                              ; Abbrev [14] 0x980:0x6 DW_TAG_subrange_type
	.long	466                             ; DW_AT_type
	.byte	16                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x987:0xb DW_TAG_typedef
	.long	2114                            ; DW_AT_type
	.long	608                             ; DW_AT_name
	.byte	10                              ; DW_AT_decl_file
	.byte	30                              ; DW_AT_decl_line
	.byte	13                              ; Abbrev [13] 0x992:0xc DW_TAG_array_type
	.long	2462                            ; DW_AT_type
	.byte	14                              ; Abbrev [14] 0x997:0x6 DW_TAG_subrange_type
	.long	466                             ; DW_AT_type
	.byte	32                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	3                               ; Abbrev [3] 0x99e:0x7 DW_TAG_base_type
	.long	620                             ; DW_AT_name
	.byte	4                               ; DW_AT_encoding
	.byte	2                               ; DW_AT_byte_size
	.byte	13                              ; Abbrev [13] 0x9a5:0xc DW_TAG_array_type
	.long	2481                            ; DW_AT_type
	.byte	14                              ; Abbrev [14] 0x9aa:0x6 DW_TAG_subrange_type
	.long	466                             ; DW_AT_type
	.byte	16                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	3                               ; Abbrev [3] 0x9b1:0x7 DW_TAG_base_type
	.long	633                             ; DW_AT_name
	.byte	4                               ; DW_AT_encoding
	.byte	4                               ; DW_AT_byte_size
	.byte	13                              ; Abbrev [13] 0x9b8:0xc DW_TAG_array_type
	.long	2500                            ; DW_AT_type
	.byte	14                              ; Abbrev [14] 0x9bd:0x6 DW_TAG_subrange_type
	.long	466                             ; DW_AT_type
	.byte	8                               ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	3                               ; Abbrev [3] 0x9c4:0x7 DW_TAG_base_type
	.long	643                             ; DW_AT_name
	.byte	4                               ; DW_AT_encoding
	.byte	8                               ; DW_AT_byte_size
	.byte	13                              ; Abbrev [13] 0x9cb:0xc DW_TAG_array_type
	.long	2197                            ; DW_AT_type
	.byte	14                              ; Abbrev [14] 0x9d0:0x6 DW_TAG_subrange_type
	.long	466                             ; DW_AT_type
	.byte	64                              ; DW_AT_count
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
Ldebug_info_end0:
	.section	__DWARF,__debug_ranges,regular,debug
Ldebug_range:
Ldebug_ranges0:
.set Lset389, Ltmp19-Lfunc_begin0
	.quad	Lset389
.set Lset390, Ltmp34-Lfunc_begin0
	.quad	Lset390
.set Lset391, Ltmp49-Lfunc_begin0
	.quad	Lset391
.set Lset392, Ltmp78-Lfunc_begin0
	.quad	Lset392
	.quad	0
	.quad	0
Ldebug_ranges1:
.set Lset393, Ltmp20-Lfunc_begin0
	.quad	Lset393
.set Lset394, Ltmp34-Lfunc_begin0
	.quad	Lset394
.set Lset395, Ltmp49-Lfunc_begin0
	.quad	Lset395
.set Lset396, Ltmp58-Lfunc_begin0
	.quad	Lset396
	.quad	0
	.quad	0
Ldebug_ranges2:
.set Lset397, Ltmp139-Lfunc_begin0
	.quad	Lset397
.set Lset398, Ltmp140-Lfunc_begin0
	.quad	Lset398
.set Lset399, Ltmp142-Lfunc_begin0
	.quad	Lset399
.set Lset400, Ltmp156-Lfunc_begin0
	.quad	Lset400
.set Lset401, Ltmp171-Lfunc_begin0
	.quad	Lset401
.set Lset402, Ltmp179-Lfunc_begin0
	.quad	Lset402
	.quad	0
	.quad	0
Ldebug_ranges3:
.set Lset403, Ltmp156-Lfunc_begin0
	.quad	Lset403
.set Lset404, Ltmp169-Lfunc_begin0
	.quad	Lset404
.set Lset405, Ltmp181-Lfunc_begin0
	.quad	Lset405
.set Lset406, Ltmp189-Lfunc_begin0
	.quad	Lset406
	.quad	0
	.quad	0
	.section	__DWARF,__debug_str,regular,debug
Linfo_string:
	.asciz	"Apple clang version 15.0.0 (clang-1500.3.9.4)" ; string offset=0
	.asciz	"matint.c"                      ; string offset=46
	.asciz	"/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk" ; string offset=55
	.asciz	"MacOSX.sdk"                    ; string offset=107
	.asciz	"/Users/tarindujayatilaka/Documents/superopt/apple-amx" ; string offset=118
	.asciz	"uint64_t"                      ; string offset=172
	.asciz	"unsigned long long"            ; string offset=181
	.asciz	"uint8_t"                       ; string offset=200
	.asciz	"unsigned char"                 ; string offset=208
	.asciz	"parse_writemask"               ; string offset=222
	.asciz	"val"                           ; string offset=238
	.asciz	"uint32_t"                      ; string offset=242
	.asciz	"unsigned int"                  ; string offset=251
	.asciz	"g"                             ; string offset=264
	.asciz	"maskbits"                      ; string offset=266
	.asciz	"mode"                          ; string offset=275
	.asciz	"all"                           ; string offset=280
	.asciz	"load_int"                      ; string offset=284
	.asciz	"int64_t"                       ; string offset=293
	.asciz	"long long"                     ; string offset=301
	.asciz	"src"                           ; string offset=311
	.asciz	"nbytes"                        ; string offset=315
	.asciz	"signext"                       ; string offset=322
	.asciz	"store_int"                     ; string offset=330
	.asciz	"dst"                           ; string offset=340
	.asciz	"load_xy_reg"                   ; string offset=344
	.asciz	"offset"                        ; string offset=356
	.asciz	"avail"                         ; string offset=363
	.asciz	"xy_shuffle"                    ; string offset=369
	.asciz	"shuffle"                       ; string offset=380
	.asciz	"ebytes"                        ; string offset=388
	.asciz	"__ARRAY_SIZE_TYPE__"           ; string offset=395
	.asciz	"step"                          ; string offset=415
	.asciz	"soff"                          ; string offset=420
	.asciz	"doff"                          ; string offset=425
	.asciz	"emulate_AMX_MATINT"            ; string offset=430
	.asciz	"vecint_alu_mode4"              ; string offset=449
	.asciz	"load_xy_reg_indexed"           ; string offset=466
	.asciz	"vecint_alu"                    ; string offset=486
	.asciz	"int"                           ; string offset=497
	.asciz	"x"                             ; string offset=501
	.asciz	"y"                             ; string offset=503
	.asciz	"state"                         ; string offset=505
	.asciz	"amx_state"                     ; string offset=511
	.asciz	"amx_reg"                       ; string offset=521
	.asciz	"u8"                            ; string offset=529
	.asciz	"u16"                           ; string offset=532
	.asciz	"uint16_t"                      ; string offset=536
	.asciz	"unsigned short"                ; string offset=545
	.asciz	"u32"                           ; string offset=560
	.asciz	"i8"                            ; string offset=564
	.asciz	"int8_t"                        ; string offset=567
	.asciz	"signed char"                   ; string offset=574
	.asciz	"i16"                           ; string offset=586
	.asciz	"int16_t"                       ; string offset=590
	.asciz	"short"                         ; string offset=598
	.asciz	"i32"                           ; string offset=604
	.asciz	"int32_t"                       ; string offset=608
	.asciz	"f16"                           ; string offset=616
	.asciz	"_Float16"                      ; string offset=620
	.asciz	"f32"                           ; string offset=629
	.asciz	"float"                         ; string offset=633
	.asciz	"f64"                           ; string offset=639
	.asciz	"double"                        ; string offset=643
	.asciz	"z"                             ; string offset=650
	.asciz	"operand"                       ; string offset=652
	.asciz	"z_row"                         ; string offset=660
	.asciz	"ybits"                         ; string offset=666
	.asciz	"xbits"                         ; string offset=672
	.asciz	"shift"                         ; string offset=678
	.asciz	"alumode"                       ; string offset=684
	.asciz	"zbits"                         ; string offset=692
	.asciz	"satbits"                       ; string offset=698
	.asciz	"xbytes"                        ; string offset=706
	.asciz	"ybytes"                        ; string offset=713
	.asciz	"zbytes"                        ; string offset=720
	.asciz	"col_enable"                    ; string offset=727
	.asciz	"j"                             ; string offset=738
	.asciz	"i"                             ; string offset=740
	.asciz	"ibits"                         ; string offset=742
	.asciz	"y_enable"                      ; string offset=748
	.asciz	"x_enable"                      ; string offset=757
	.asciz	"zsignext"                      ; string offset=766
	.asciz	"zmask"                         ; string offset=775
	.asciz	"xv"                            ; string offset=781
	.asciz	"yv"                            ; string offset=784
	.asciz	"zv"                            ; string offset=787
	.asciz	"result"                        ; string offset=790
	.asciz	"omask"                         ; string offset=797
	.asciz	"src_reg"                       ; string offset=803
	.asciz	"xsignext"                      ; string offset=811
	.asciz	"ysignext"                      ; string offset=820
	.section	__DWARF,__apple_names,regular,debug
Lnames_begin:
	.long	1212240712                      ; Header Magic
	.short	1                               ; Header Version
	.short	0                               ; Header Hash Function
	.long	6                               ; Header Bucket Count
	.long	6                               ; Header Hash Count
	.long	12                              ; Header Data Length
	.long	0                               ; HeaderData Die Offset Base
	.long	1                               ; HeaderData Atom Count
	.short	1                               ; DW_ATOM_die_offset
	.short	6                               ; DW_FORM_data4
	.long	0                               ; Bucket 0
	.long	-1                              ; Bucket 1
	.long	1                               ; Bucket 2
	.long	2                               ; Bucket 3
	.long	3                               ; Bucket 4
	.long	5                               ; Bucket 5
	.long	-979516516                      ; Hash in Bucket 0
	.long	-224174954                      ; Hash in Bucket 2
	.long	1904561487                      ; Hash in Bucket 3
	.long	226778194                       ; Hash in Bucket 4
	.long	1700920738                      ; Hash in Bucket 4
	.long	308622179                       ; Hash in Bucket 5
.set Lset407, LNames5-Lnames_begin      ; Offset in Bucket 0
	.long	Lset407
.set Lset408, LNames0-Lnames_begin      ; Offset in Bucket 2
	.long	Lset408
.set Lset409, LNames4-Lnames_begin      ; Offset in Bucket 3
	.long	Lset409
.set Lset410, LNames3-Lnames_begin      ; Offset in Bucket 4
	.long	Lset410
.set Lset411, LNames1-Lnames_begin      ; Offset in Bucket 4
	.long	Lset411
.set Lset412, LNames2-Lnames_begin      ; Offset in Bucket 5
	.long	Lset412
LNames5:
	.long	330                             ; store_int
	.long	2                               ; Num DIEs
	.long	1047
	.long	1906
	.long	0
LNames0:
	.long	222                             ; parse_writemask
	.long	3                               ; Num DIEs
	.long	843
	.long	1480
	.long	1538
	.long	0
LNames4:
	.long	284                             ; load_int
	.long	4                               ; Num DIEs
	.long	996
	.long	1773
	.long	1822
	.long	1869
	.long	0
LNames3:
	.long	344                             ; load_xy_reg
	.long	2                               ; Num DIEs
	.long	1102
	.long	1160
	.long	0
LNames1:
	.long	369                             ; xy_shuffle
	.long	2                               ; Num DIEs
	.long	1256
	.long	1368
	.long	0
LNames2:
	.long	430                             ; emulate_AMX_MATINT
	.long	1                               ; Num DIEs
	.long	473
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
.set Lset413, Ltypes18-Ltypes_begin     ; Offset in Bucket 0
	.long	Lset413
.set Lset414, Ltypes14-Ltypes_begin     ; Offset in Bucket 1
	.long	Lset414
.set Lset415, Ltypes0-Ltypes_begin      ; Offset in Bucket 1
	.long	Lset415
.set Lset416, Ltypes12-Ltypes_begin     ; Offset in Bucket 1
	.long	Lset416
.set Lset417, Ltypes17-Ltypes_begin     ; Offset in Bucket 2
	.long	Lset417
.set Lset418, Ltypes15-Ltypes_begin     ; Offset in Bucket 4
	.long	Lset418
.set Lset419, Ltypes1-Ltypes_begin      ; Offset in Bucket 4
	.long	Lset419
.set Lset420, Ltypes9-Ltypes_begin      ; Offset in Bucket 4
	.long	Lset420
.set Lset421, Ltypes8-Ltypes_begin      ; Offset in Bucket 4
	.long	Lset421
.set Lset422, Ltypes2-Ltypes_begin      ; Offset in Bucket 6
	.long	Lset422
.set Lset423, Ltypes3-Ltypes_begin      ; Offset in Bucket 6
	.long	Lset423
.set Lset424, Ltypes10-Ltypes_begin     ; Offset in Bucket 6
	.long	Lset424
.set Lset425, Ltypes21-Ltypes_begin     ; Offset in Bucket 6
	.long	Lset425
.set Lset426, Ltypes16-Ltypes_begin     ; Offset in Bucket 7
	.long	Lset426
.set Lset427, Ltypes13-Ltypes_begin     ; Offset in Bucket 8
	.long	Lset427
.set Lset428, Ltypes5-Ltypes_begin      ; Offset in Bucket 8
	.long	Lset428
.set Lset429, Ltypes11-Ltypes_begin     ; Offset in Bucket 8
	.long	Lset429
.set Lset430, Ltypes19-Ltypes_begin     ; Offset in Bucket 9
	.long	Lset430
.set Lset431, Ltypes4-Ltypes_begin      ; Offset in Bucket 9
	.long	Lset431
.set Lset432, Ltypes20-Ltypes_begin     ; Offset in Bucket 9
	.long	Lset432
.set Lset433, Ltypes6-Ltypes_begin      ; Offset in Bucket 9
	.long	Lset433
.set Lset434, Ltypes7-Ltypes_begin      ; Offset in Bucket 10
	.long	Lset434
Ltypes18:
	.long	620                             ; _Float16
	.long	1                               ; Num DIEs
	.long	2462
	.short	36
	.byte	0
	.long	0
Ltypes14:
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
Ltypes12:
	.long	521                             ; amx_reg
	.long	2                               ; Num DIEs
	.long	2197
	.short	22
	.byte	0
	.long	2208
	.short	23
	.byte	0
	.long	0
Ltypes17:
	.long	395                             ; __ARRAY_SIZE_TYPE__
	.long	1                               ; Num DIEs
	.long	466
	.short	36
	.byte	0
	.long	0
Ltypes15:
	.long	536                             ; uint16_t
	.long	1                               ; Num DIEs
	.long	2337
	.short	22
	.byte	0
	.long	0
Ltypes1:
	.long	242                             ; uint32_t
	.long	1                               ; Num DIEs
	.long	169
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
	.long	497                             ; int
	.long	1                               ; Num DIEs
	.long	2114
	.short	36
	.byte	0
	.long	0
Ltypes3:
	.long	590                             ; int16_t
	.long	1                               ; Num DIEs
	.long	2409
	.short	22
	.byte	0
	.long	0
Ltypes10:
	.long	608                             ; int32_t
	.long	1                               ; Num DIEs
	.long	2439
	.short	22
	.byte	0
	.long	0
Ltypes21:
	.long	293                             ; int64_t
	.long	1                               ; Num DIEs
	.long	244
	.short	22
	.byte	0
	.long	0
Ltypes16:
	.long	511                             ; amx_state
	.long	2                               ; Num DIEs
	.long	2126
	.short	22
	.byte	0
	.long	2137
	.short	19
	.byte	0
	.long	0
Ltypes13:
	.long	633                             ; float
	.long	1                               ; Num DIEs
	.long	2481
	.short	36
	.byte	0
	.long	0
Ltypes5:
	.long	598                             ; short
	.long	1                               ; Num DIEs
	.long	2420
	.short	36
	.byte	0
	.long	0
Ltypes11:
	.long	251                             ; unsigned int
	.long	1                               ; Num DIEs
	.long	180
	.short	36
	.byte	0
	.long	0
Ltypes19:
	.long	567                             ; int8_t
	.long	1                               ; Num DIEs
	.long	2379
	.short	22
	.byte	0
	.long	0
Ltypes4:
	.long	574                             ; signed char
	.long	1                               ; Num DIEs
	.long	2390
	.short	36
	.byte	0
	.long	0
Ltypes20:
	.long	301                             ; long long
	.long	1                               ; Num DIEs
	.long	255
	.short	36
	.byte	0
	.long	0
Ltypes6:
	.long	643                             ; double
	.long	1                               ; Num DIEs
	.long	2500
	.short	36
	.byte	0
	.long	0
Ltypes7:
	.long	545                             ; unsigned short
	.long	1                               ; Num DIEs
	.long	2348
	.short	36
	.byte	0
	.long	0
.subsections_via_symbols
	.section	__DWARF,__debug_line,regular,debug
Lsection_line:
Lline_table_start0:
