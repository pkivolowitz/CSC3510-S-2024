    .p2align    2
    .text     
    .global     main

main:   stp     x29, x30, [sp, -16]!
        mov     x29, sp
        mov     w0, 0xFFFF
        cls     w0, w0
        brk     0
        clz     w0, w0
        brk     0
        ldp     x29, x30, [sp], 16
        mov     w0, wzr
        ret

    .end
