	.text
	.file	"tmp.cc"
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	$72, %edi
	callq	putchar@PLT
	xorl	%eax, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.section	.text.msan.module_ctor,"axR",@progbits
	.p2align	4, 0x90                         # -- Begin function msan.module_ctor
	.type	msan.module_ctor,@function
msan.module_ctor:                       # @msan.module_ctor
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	__msan_init@PLT
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	msan.module_ctor, .Lfunc_end1-msan.module_ctor
	.cfi_endproc
                                        # -- End function
	.section	.init_array.0,"aw",@init_array
	.p2align	3, 0x90
	.quad	msan.module_ctor
	.ident	"clang version 17.0.0 (https://github.com/llvm/llvm-project.git 88bf774c565080e30e0a073676c316ab175303af)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __msan_init
	.addrsig_sym msan.module_ctor
