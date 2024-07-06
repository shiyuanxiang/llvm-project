	.text
	.file	"uum1.cc"
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
	subq	$64, %rsp
	movl	%edi, %r8d
	movq	__msan_param_tls@GOTTPOFF(%rip), %rax
	movl	%fs:(%rax), %r10d
	movq	%fs:8(%rax), %rdi
	movabsq	$87960930222080, %rdx           # imm = 0x500000000000
	leaq	-4(%rbp), %r11
	xorq	%rdx, %r11
	movl	$-1, (%r11)
	leaq	-8(%rbp), %r9
	xorq	%rdx, %r9
	movl	$-1, (%r9)
	leaq	-16(%rbp), %rcx
	xorq	%rdx, %rcx
	movq	$-1, (%rcx)
	movl	$0, (%r11)
	movl	$0, -4(%rbp)
	movl	%r10d, (%r9)
	movl	%r8d, -8(%rbp)
	movq	%rdi, (%rcx)
	movq	%rsi, -16(%rbp)
	leaq	-24(%rbp), %rcx
	xorq	%rdx, %rcx
	movq	$-1, (%rcx)
	movq	$0, %fs:(%rax)
	movq	__msan_retval_tls@GOTTPOFF(%rip), %rax
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	movq	$0, %fs:(%rax)
	movl	$40, %edi
	callq	_Znam@PLT
	movq	-48(%rbp), %rcx                 # 8-byte Reload
	movq	%fs:(%rcx), %rdx
	leaq	-24(%rbp), %rcx
	movabsq	$87960930222080, %rsi           # imm = 0x500000000000
	xorq	%rsi, %rcx
	movq	%rdx, (%rcx)
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rcx
	leaq	-24(%rbp), %rax
	movabsq	$87960930222080, %rdx           # imm = 0x500000000000
	xorq	%rdx, %rax
	movq	(%rax), %rax
	orq	$0, %rax
	addq	$20, %rcx
	movq	%rcx, -40(%rbp)                 # 8-byte Spill
	cmpq	$0, %rax
	je	.LBB0_2
# %bb.1:
	xorl	%edi, %edi
	callq	__msan_warning_with_origin_noreturn@PLT
.LBB0_2:
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movabsq	$87960930222080, %rdx           # imm = 0x500000000000
	movq	%rax, %rcx
	xorq	%rdx, %rcx
	movl	$0, (%rcx)
	movl	$0, (%rax)
	leaq	-28(%rbp), %rdi
	movabsq	$87960930222080, %rax           # imm = 0x500000000000
	xorq	%rax, %rdi
	movl	$255, %esi
	movl	$4, %edx
	callq	memset@PLT
	movq	-24(%rbp), %rcx
	leaq	-24(%rbp), %rax
	movabsq	$87960930222080, %rdx           # imm = 0x500000000000
	xorq	%rdx, %rax
	movq	(%rax), %rax
	movl	-8(%rbp), %edx
	leaq	-8(%rbp), %rsi
	movabsq	$87960930222080, %rdi           # imm = 0x500000000000
	xorq	%rdi, %rsi
	movslq	(%rsi), %rsi
	movslq	%edx, %rdx
	orq	%rsi, %rax
	shlq	$2, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -56(%rbp)                 # 8-byte Spill
	cmpq	$0, %rax
	je	.LBB0_4
# %bb.3:
	xorl	%edi, %edi
	callq	__msan_warning_with_origin_noreturn@PLT
.LBB0_4:
	movq	-56(%rbp), %rcx                 # 8-byte Reload
	movl	(%rcx), %eax
	movabsq	$87960930222080, %rdx           # imm = 0x500000000000
	xorq	%rdx, %rcx
	movl	(%rcx), %edx
	leaq	-28(%rbp), %rcx
	movabsq	$87960930222080, %rsi           # imm = 0x500000000000
	xorq	%rsi, %rcx
	movl	%edx, (%rcx)
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %ecx
	leaq	-28(%rbp), %rax
	movabsq	$87960930222080, %rdx           # imm = 0x500000000000
	xorq	%rdx, %rax
	movl	(%rax), %eax
	movl	%ecx, %esi
	xorl	$0, %esi
	orl	$0, %eax
	movl	%eax, %edx
	xorl	$-1, %edx
	andl	%esi, %edx
	cmpl	$0, %edx
	sete	%dl
	cmpl	$0, %eax
	setne	%al
	andb	%dl, %al
	cmpl	$0, %ecx
	setne	%cl
	movb	%cl, -57(%rbp)                  # 1-byte Spill
	testb	$1, %al
	jne	.LBB0_5
	jmp	.LBB0_6
.LBB0_5:
	xorl	%edi, %edi
	callq	__msan_warning_with_origin_noreturn@PLT
.LBB0_6:
	movb	-57(%rbp), %al                  # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_7
	jmp	.LBB0_8
.LBB0_7:                                # %if.then
	movq	__msan_param_tls@GOTTPOFF(%rip), %rax
	movq	$0, %fs:(%rax)
	movq	__msan_va_arg_overflow_size_tls@GOTTPOFF(%rip), %rax
	movq	$0, %fs:(%rax)
	movq	__msan_retval_tls@GOTTPOFF(%rip), %rax
	movl	$0, %fs:(%rax)
	leaq	.L.str(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
.LBB0_8:                                # %if.end
	movq	__msan_retval_tls@GOTTPOFF(%rip), %rax
	movl	$0, %fs:(%rax)
	xorl	%eax, %eax
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
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
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__msan_init@PLT
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	msan.module_ctor, .Lfunc_end1-msan.module_ctor
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"xx\n"
	.size	.L.str, 4

	.section	.init_array.0,"aw",@init_array
	.p2align	3
	.quad	msan.module_ctor
	.ident	"clang version 15.0.4 (https://github.com/shiyuanxiang/llvm-project.git 989152403a3be668bef11cfa62ad8b5035d462db)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _Znam
	.addrsig_sym printf
	.addrsig_sym __msan_init
	.addrsig_sym msan.module_ctor
	.addrsig_sym __msan_warning_with_origin_noreturn
