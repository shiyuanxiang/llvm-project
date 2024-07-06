	.text
	.file	"uaf.cc"
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$400, %edi                      # imm = 0x190
	callq	_Znam@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	cmpq	$0, %rax
	je	.LBB0_2
# %bb.1:                                # %delete.notnull
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	callq	_ZdaPv@PLT
.LBB0_2:                                # %delete.end
	movq	-24(%rbp), %rax
	movslq	-8(%rbp), %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	shrq	$3, %rax
	movb	2147450880(%rax), %al
	movb	%al, -33(%rbp)                  # 1-byte Spill
	cmpb	$0, %al
	je	.LBB0_5
# %bb.3:
	movb	-33(%rbp), %cl                  # 1-byte Reload
	movq	-48(%rbp), %rax                 # 8-byte Reload
	andq	$7, %rax
	addq	$3, %rax
                                        # kill: def $al killed $al killed $rax
	cmpb	%cl, %al
	jl	.LBB0_5
# %bb.4:
	movq	-48(%rbp), %rdi                 # 8-byte Reload
	callq	__asan_report_load4@PLT
.LBB0_5:
	movq	-48(%rbp), %rax                 # 8-byte Reload
	movl	(%rax), %eax
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.section	.text.asan.module_ctor,"axGR",@progbits,asan.module_ctor,comdat
	.p2align	4, 0x90                         # -- Begin function asan.module_ctor
	.type	asan.module_ctor,@function
asan.module_ctor:                       # @asan.module_ctor
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__asan_init@PLT
	callq	__asan_version_mismatch_check_v8@PLT
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	asan.module_ctor, .Lfunc_end1-asan.module_ctor
	.cfi_endproc
                                        # -- End function
	.section	.init_array.1,"aGw",@init_array,asan.module_ctor,comdat
	.p2align	3, 0x90
	.quad	asan.module_ctor
	.ident	"clang version 17.0.0 (https://github.com/shiyuanxiang/llvm-project.git 88bf774c565080e30e0a073676c316ab175303af)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _Znam
	.addrsig_sym _ZdaPv
	.addrsig_sym __asan_report_load4
	.addrsig_sym __asan_init
	.addrsig_sym asan.module_ctor
	.addrsig_sym __asan_version_mismatch_check_v8
