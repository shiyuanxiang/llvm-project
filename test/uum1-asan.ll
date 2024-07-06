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
	pushq	%rbx
	andq	$-32, %rsp
	subq	$160, %rsp
	movq	%rsp, %rbx
	.cfi_offset %rbx, -24
	movl	%edi, 128(%rbx)
	movq	%rsi, 120(%rbx)
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	__asan_option_detect_stack_use_after_return@GOTPCREL(%rip), %rcx
	cmpl	$0, (%rcx)
	movq	%rax, 88(%rbx)                  # 8-byte Spill
	je	.LBB0_2
# %bb.1:
	movl	$64, %edi
	callq	__asan_stack_malloc_0@PLT
	movq	%rax, 88(%rbx)                  # 8-byte Spill
.LBB0_2:
	movq	88(%rbx), %rax                  # 8-byte Reload
	movq	%rax, 72(%rbx)                  # 8-byte Spill
	cmpq	$0, %rax
	movq	%rax, 80(%rbx)                  # 8-byte Spill
	jne	.LBB0_4
# %bb.3:
	movq	%rsp, %rax
	addq	$-64, %rax
	andq	$-32, %rax
	movq	%rax, %rsp
	movq	%rax, 80(%rbx)                  # 8-byte Spill
.LBB0_4:
	movq	80(%rbx), %rax                  # 8-byte Reload
	movq	%rax, 32(%rbx)                  # 8-byte Spill
	movq	%rax, 104(%rbx)
	movq	%rax, %rcx
	addq	$32, %rcx
	movq	%rcx, 40(%rbx)                  # 8-byte Spill
	movq	$1102416563, (%rax)             # imm = 0x41B58AB3
	leaq	.L___asan_gen_(%rip), %rcx
	movq	%rcx, 8(%rax)
	leaq	main(%rip), %rcx
	movq	%rcx, 16(%rax)
	shrq	$3, %rax
	movq	%rax, %rcx
	addq	$2147450880, %rcx               # imm = 0x7FFF8000
	movq	%rcx, 48(%rbx)                  # 8-byte Spill
	movabsq	$-868082052615769615, %rcx      # imm = 0xF3F3F3F8F1F1F1F1
	movq	%rcx, 2147450880(%rax)
	movl	$0, 132(%rbx)
	movl	$40, %edi
	callq	_Znam@PLT
	movq	%rax, 112(%rbx)
	movq	112(%rbx), %rax
	addq	$20, %rax
	movq	%rax, 56(%rbx)                  # 8-byte Spill
	shrq	$3, %rax
	movb	2147450880(%rax), %al
	movb	%al, 71(%rbx)                   # 1-byte Spill
	cmpb	$0, %al
	je	.LBB0_7
# %bb.5:
	movb	71(%rbx), %cl                   # 1-byte Reload
	movq	56(%rbx), %rax                  # 8-byte Reload
	andq	$7, %rax
	addq	$3, %rax
                                        # kill: def $al killed $al killed $rax
	cmpb	%cl, %al
	jl	.LBB0_7
# %bb.6:
	movq	56(%rbx), %rdi                  # 8-byte Reload
	callq	__asan_report_store4@PLT
.LBB0_7:
	movq	48(%rbx), %rax                  # 8-byte Reload
	movq	56(%rbx), %rcx                  # 8-byte Reload
	movl	$0, (%rcx)
	movb	$4, 4(%rax)
	movq	112(%rbx), %rax
	movslq	128(%rbx), %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, 16(%rbx)                  # 8-byte Spill
	shrq	$3, %rax
	movb	2147450880(%rax), %al
	movb	%al, 31(%rbx)                   # 1-byte Spill
	cmpb	$0, %al
	je	.LBB0_10
# %bb.8:
	movb	31(%rbx), %cl                   # 1-byte Reload
	movq	16(%rbx), %rax                  # 8-byte Reload
	andq	$7, %rax
	addq	$3, %rax
                                        # kill: def $al killed $al killed $rax
	cmpb	%cl, %al
	jl	.LBB0_10
# %bb.9:
	movq	16(%rbx), %rdi                  # 8-byte Reload
	callq	__asan_report_load4@PLT
.LBB0_10:
	movq	40(%rbx), %rax                  # 8-byte Reload
	movq	16(%rbx), %rcx                  # 8-byte Reload
	movl	(%rcx), %ecx
	movl	%ecx, 8(%rbx)                   # 4-byte Spill
	shrq	$3, %rax
	movb	2147450880(%rax), %al
	movb	%al, 15(%rbx)                   # 1-byte Spill
	cmpb	$0, %al
	je	.LBB0_13
# %bb.11:
	movb	15(%rbx), %cl                   # 1-byte Reload
	movq	40(%rbx), %rax                  # 8-byte Reload
	andq	$7, %rax
	addq	$3, %rax
                                        # kill: def $al killed $al killed $rax
	cmpb	%cl, %al
	jl	.LBB0_13
# %bb.12:
	movq	40(%rbx), %rdi                  # 8-byte Reload
	callq	__asan_report_store4@PLT
.LBB0_13:
	movq	40(%rbx), %rax                  # 8-byte Reload
	movl	8(%rbx), %ecx                   # 4-byte Reload
	movl	%ecx, (%rax)
	movl	(%rax), %eax
	cmpl	$0, %eax
	je	.LBB0_15
# %bb.14:                               # %if.then
	leaq	.str(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
.LBB0_15:                               # %if.end
	movq	72(%rbx), %rax                  # 8-byte Reload
	movq	32(%rbx), %rcx                  # 8-byte Reload
	movq	48(%rbx), %rdx                  # 8-byte Reload
	movb	$-8, 4(%rdx)
	movq	$1172321806, (%rcx)             # imm = 0x45E0360E
	cmpq	$0, %rax
	je	.LBB0_17
# %bb.16:
	movq	72(%rbx), %rax                  # 8-byte Reload
	movq	48(%rbx), %rcx                  # 8-byte Reload
	movabsq	$-723401728380766731, %rdx      # imm = 0xF5F5F5F5F5F5F5F5
	movq	%rdx, (%rcx)
	movq	56(%rax), %rax
	movb	$0, (%rax)
	jmp	.LBB0_18
.LBB0_17:
	movq	48(%rbx), %rax                  # 8-byte Reload
	movq	$0, (%rax)
.LBB0_18:
	xorl	%eax, %eax
	leaq	-8(%rbp), %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.section	.text.asan.module_ctor,"axR",@progbits
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
	leaq	__unnamed_1(%rip), %rdi
	movl	$1, %esi
	callq	__asan_register_globals@PLT
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	asan.module_ctor, .Lfunc_end1-asan.module_ctor
	.cfi_endproc
                                        # -- End function
	.section	.text.asan.module_dtor,"axR",@progbits
	.p2align	4, 0x90                         # -- Begin function asan.module_dtor
	.type	asan.module_dtor,@function
asan.module_dtor:                       # @asan.module_dtor
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	leaq	__unnamed_1(%rip), %rdi
	movl	$1, %esi
	callq	__asan_unregister_globals@PLT
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	asan.module_dtor, .Lfunc_end2-asan.module_dtor
	.cfi_endproc
                                        # -- End function
	.type	.str,@object                    # @.str
	.section	.rodata,"a",@progbits
	.p2align	5
.str:
	.asciz	"xx\n"
	.zero	28
	.size	.str, 32

	.type	.L___asan_gen_,@object          # @___asan_gen_
	.section	.rodata.str1.1,"aMS",@progbits,1
.L___asan_gen_:
	.asciz	"1 32 4 1 b"
	.size	.L___asan_gen_, 11

	.type	.L___asan_gen_.1,@object        # @___asan_gen_.1
	.section	.rodata,"a",@progbits
.L___asan_gen_.1:
	.asciz	"uum1.cc"
	.size	.L___asan_gen_.1, 8

	.type	.L___asan_gen_.2,@object        # @___asan_gen_.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L___asan_gen_.2:
	.asciz	".str"
	.size	.L___asan_gen_.2, 5

	.type	__unnamed_1,@object             # @0
	.data
	.p2align	4
__unnamed_1:
	.quad	.str
	.quad	4                               # 0x4
	.quad	32                              # 0x20
	.quad	.L___asan_gen_.2
	.quad	.L___asan_gen_.1
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	-1                              # 0xffffffffffffffff
	.size	__unnamed_1, 64

	.section	.init_array.1,"aw",@init_array
	.p2align	3
	.quad	asan.module_ctor
	.section	.fini_array.1,"aw",@fini_array
	.p2align	3
	.quad	asan.module_dtor
	.ident	"clang version 15.0.4 (https://github.com/shiyuanxiang/llvm-project.git c82e0d0f5b2b538e954f35a56aa551392e60f4ca)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym main
	.addrsig_sym _Znam
	.addrsig_sym printf
	.addrsig_sym __asan_report_load4
	.addrsig_sym __asan_report_store4
	.addrsig_sym __asan_stack_malloc_0
	.addrsig_sym __asan_register_globals
	.addrsig_sym __asan_unregister_globals
	.addrsig_sym __asan_init
	.addrsig_sym asan.module_ctor
	.addrsig_sym __asan_version_mismatch_check_v8
	.addrsig_sym asan.module_dtor
	.addrsig_sym .str
	.addrsig_sym __asan_option_detect_stack_use_after_return
	.addrsig_sym .L___asan_gen_.1
	.addrsig_sym __unnamed_1
