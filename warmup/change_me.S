#include    "apple-linux-convergence.S"

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

            POP_P       x29, x30
            mov         w0, wzr
            ret
            END_PROC

            .data

change_me:  .asciz       "Replace This With Your Name"

        
            .end