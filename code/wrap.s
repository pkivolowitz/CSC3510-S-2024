	.arch armv8-a
	.file	"wrap.c"
	.text
	.align	2
	.p2align 4,,11
	.global	WrapAround
	.type	WrapAround, %function
WrapAround:
.LFB0:
	.cfi_startproc
	ldr	w2, [x0]
	cmp	w2, w1
	csinc	w2, wzr, w2, ge
	str	w2, [x0]
	ret
	.cfi_endproc
.LFE0:
	.size	WrapAround, .-WrapAround
	.align	2
	.p2align 4,,11
	.global	WrapAround2
	.type	WrapAround2, %function
WrapAround2:
.LFB1:
	.cfi_startproc
	ldr	w2, [x0]
	cmp	w2, w1
	csinc	w2, wzr, w2, ge
	str	w2, [x0]
	ret
	.cfi_endproc
.LFE1:
	.size	WrapAround2, .-WrapAround2
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
