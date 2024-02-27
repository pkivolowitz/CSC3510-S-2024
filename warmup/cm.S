# 1 "change_me.S"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 417 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "change_me.S" 2
# 1 "./apple-linux-convergence.S" 1








  

.macro  GLD_PTR     xreg, label

        adrp	    \xreg, _\label@GOTPAGE
        ldr	        \xreg, [\xreg, _\label@GOTPAGEOFF]




.endm

.macro  GLD_ADDR    xreg, label     // Get a global address

        adrp	    \xreg, _\label@GOTPAGE
        add         \xreg, \xreg, _\label@GOTPAGEOFF



.endm

.macro  LLD_ADDR xreg, label

        adrp    \xreg, \label@PAGE
        add     \xreg, \xreg, \label@PAGEOFF



.endm

.macro  LLD_DBL xreg, dreg, label

        adrp    \xreg, \label@PAGE
        add     \xreg, \xreg, \label@PAGEOFF
        ldur    \dreg, [\xreg]
//      fmov    \dreg, \xreg




.endm

.macro  LLD_FLT xreg, sreg, label

        adrp    \xreg, \label@PAGE
        add     \xreg, \xreg, \label@PAGEOFF
        ldur    \sreg, [\xreg]




.endm

.macro GLABEL label

        .global _\label



.endm

.macro MAIN

_main:



.endm




  
.macro  ERRNO_ADDR

        bl      ___error



.endm

.macro  CRT label

        bl  _\label



.endm

.macro  START_PROC          // after starting label
        .cfi_startproc
.endm

.macro  END_PROC            // after the return
        .cfi_endproc
.endm

.macro  PUSH_P  a, b 
        stp     \a, \b, [sp, -16]!
.endm

.macro  PUSH_R  a 
        str     \a, [sp, -16]!
.endm

.macro  POP_P   a, b 
        ldp     \a, \b, [sp], 16
.endm

.macro  POP_R   a 
        ldr     \a, [sp], 16
.endm







  

.macro  MIN     src_a, src_b, dest
        cmp     \src_a, \src_b
        csel    \dest, \src_a, \src_b, LT
.endm







  

.macro  MAX     src_a, src_b, dest
        cmp     \src_a, \src_b
        csel    \dest, \src_a, \src_b, GT
.endm

.macro  AASCIZ      label, string
        .p2align    2
\label: .asciz      "\string"
.endm

.macro  MOD         src_a, src_b, dest, scratch
        sdiv        \scratch, \src_a, \src_b
        msub        \dest, \scratch, \src_b, \src_a
.endm

# 2 "change_me.S" 2

            .p2align    2
            GLABEL      main
            .text

MAIN
            START_PROC

            // Preserve link register and initialize frame pointer.
            // NOTE: this is done with a macro from the convergence
            // macro suite included above. This macro is a shortcut
            // for "stp   x29, x30, [sp, -16]!".

            PUSH_P      x29, x30
            mov         x29, sp

            // load the address of the string to be printed as the
            // first and only argument to the CRTL call "puts" which
            // takes the address of a null terminated string and prints
            // it followed by a new line.

            LLD_ADDR    x0, change_me
            CRT         puts

            // Restore x29 and x30 to incoming values and return 0
            // from main().
            // NOTE: This code uses the macro suite for apple / linux
            // convergence.

            POP_P       x29, x30
            mov         w0, wzr
            ret
            END_PROC

            .data

change_me:  .asciz       "Replace This With Your Name"

            .end
