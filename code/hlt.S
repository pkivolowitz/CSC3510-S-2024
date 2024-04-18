    .p2align    2
    .text     
    .global     main

main:   stp     x29, x30, [sp, -16]!
        mov     x29, sp
        hlt     15
        ldp     x29, x30, [sp], 16
        mov     w0, wzr
        ret

    .end
