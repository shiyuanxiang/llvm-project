	.text
	.file	"oob.cc"
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function __cxx_global_var_init
	.type	__cxx_global_var_init,@function
__cxx_global_var_init:                  # @__cxx_global_var_init
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	__msan_param_tls@GOTTPOFF(%rip), %rax
	movq	%rax, -8(%rbp)                  # 8-byte Spill
	movq	$0, %fs:(%rax)
	leaq	_ZStL8__ioinit(%rip), %rdi
	callq	_ZNSt8ios_base4InitC1Ev@PLT
	movq	-8(%rbp), %rax                  # 8-byte Reload
	movq	$0, %fs:(%rax)
	movq	$0, %fs:8(%rax)
	movq	$0, %fs:16(%rax)
	movq	__msan_retval_tls@GOTTPOFF(%rip), %rax
	movl	$0, %fs:(%rax)
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	leaq	_ZStL8__ioinit(%rip), %rsi
	leaq	__dso_handle(%rip), %rdx
	callq	__cxa_atexit@PLT
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	__cxx_global_var_init, .Lfunc_end0-__cxx_global_var_init
	.cfi_endproc
                                        # -- End function
	.text
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
	subq	$160, %rsp
	movabsq	$87960930222080, %rcx           # imm = 0x500000000000
	movq	%rcx, -64(%rbp)                 # 8-byte Spill
	leaq	-4(%rbp), %rax
	xorq	%rcx, %rax
	movl	$-1, (%rax)
	movl	$0, (%rax)
	movl	$0, -4(%rbp)
	leaq	-16(%rbp), %rax
	xorq	%rcx, %rax
	movq	%rax, -72(%rbp)                 # 8-byte Spill
	movq	$-1, (%rax)
	movq	__msan_param_tls@GOTTPOFF(%rip), %rax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	movq	$0, %fs:(%rax)
	movq	__msan_retval_tls@GOTTPOFF(%rip), %rax
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	movq	$0, %fs:(%rax)
	movl	$120, %edi
	callq	malloc@PLT
	movq	-72(%rbp), %rdi                 # 8-byte Reload
	movq	-64(%rbp), %rsi                 # 8-byte Reload
	movq	-56(%rbp), %rcx                 # 8-byte Reload
	movq	%rax, %rdx
	movq	-48(%rbp), %rax                 # 8-byte Reload
	movq	%fs:(%rax), %r8
	movq	%r8, (%rdi)
	movq	%rdx, -16(%rbp)
	leaq	-24(%rbp), %rdx
	xorq	%rsi, %rdx
	movq	$-1, (%rdx)
	movq	$0, %fs:(%rcx)
	movq	$0, %fs:(%rax)
	movl	$10, %edi
	callq	malloc@PLT
	movq	-48(%rbp), %rcx                 # 8-byte Reload
	movq	%fs:(%rcx), %rdx
	leaq	-24(%rbp), %rcx
	movabsq	$87960930222080, %rsi           # imm = 0x500000000000
	xorq	%rsi, %rcx
	movq	%rdx, (%rcx)
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	movl	$1, %esi
	movl	$120, %edx
	callq	__msan_memset@PLT
	leaq	-28(%rbp), %rdi
	movabsq	$87960930222080, %rax           # imm = 0x500000000000
	xorq	%rax, %rdi
	movl	$255, %esi
	movl	$4, %edx
	callq	memset@PLT
	leaq	-28(%rbp), %rax
	movabsq	$87960930222080, %rcx           # imm = 0x500000000000
	xorq	%rcx, %rax
	movl	$0, (%rax)
	movl	$0, -28(%rbp)
.LBB1_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %ecx
	leaq	-28(%rbp), %rax
	movabsq	$87960930222080, %rdx           # imm = 0x500000000000
	xorq	%rdx, %rax
	movl	(%rax), %eax
	orl	$0, %eax
	cmpl	$5, %ecx
	setl	%cl
	movb	%cl, -73(%rbp)                  # 1-byte Spill
	cmpl	$0, %eax
	je	.LBB1_3
# %bb.2:
	xorl	%edi, %edi
	callq	__msan_warning_with_origin_noreturn@PLT
.LBB1_3:                                #   in Loop: Header=BB1_1 Depth=1
	movb	-73(%rbp), %al                  # 1-byte Reload
	testb	$1, %al
	jne	.LBB1_5
	jmp	.LBB1_4
.LBB1_4:                                # %for.cond.cleanup
	jmp	.LBB1_9
.LBB1_5:                                # %for.body
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-28(%rbp), %eax
	movl	%eax, -96(%rbp)                 # 4-byte Spill
	leaq	-28(%rbp), %rax
	movabsq	$87960930222080, %rcx           # imm = 0x500000000000
	xorq	%rcx, %rax
	movl	(%rax), %eax
	movl	%eax, -92(%rbp)                 # 4-byte Spill
	movq	-16(%rbp), %rcx
	leaq	-16(%rbp), %rax
	movabsq	$87960930222080, %rdx           # imm = 0x500000000000
	xorq	%rdx, %rax
	movq	(%rax), %rax
	movl	-28(%rbp), %edx
	leaq	-28(%rbp), %rsi
	movabsq	$87960930222080, %rdi           # imm = 0x500000000000
	xorq	%rdi, %rsi
	movslq	(%rsi), %rsi
	movslq	%edx, %rdx
	orq	%rsi, %rax
	shlq	$2, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -88(%rbp)                 # 8-byte Spill
	cmpq	$0, %rax
	je	.LBB1_7
# %bb.6:
	xorl	%edi, %edi
	callq	__msan_warning_with_origin_noreturn@PLT
.LBB1_7:                                #   in Loop: Header=BB1_1 Depth=1
	movq	-88(%rbp), %rax                 # 8-byte Reload
	movl	-96(%rbp), %ecx                 # 4-byte Reload
	movl	-92(%rbp), %esi                 # 4-byte Reload
	movabsq	$87960930222080, %rdi           # imm = 0x500000000000
	movq	%rax, %rdx
	xorq	%rdi, %rdx
	movl	%esi, (%rdx)
	movl	%ecx, (%rax)
# %bb.8:                                # %for.inc
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	-28(%rbp), %eax
	leaq	-28(%rbp), %rcx
	movabsq	$87960930222080, %rdx           # imm = 0x500000000000
	xorq	%rdx, %rcx
	movl	(%rcx), %edx
	orl	$0, %edx
	addl	$1, %eax
	leaq	-28(%rbp), %rcx
	movabsq	$87960930222080, %rsi           # imm = 0x500000000000
	xorq	%rsi, %rcx
	movl	%edx, (%rcx)
	movl	%eax, -28(%rbp)
	jmp	.LBB1_1
.LBB1_9:                                # %for.end
	leaq	-32(%rbp), %rdi
	movabsq	$87960930222080, %rax           # imm = 0x500000000000
	xorq	%rax, %rdi
	movl	$255, %esi
	movl	$4, %edx
	callq	memset@PLT
	leaq	-32(%rbp), %rax
	movabsq	$87960930222080, %rcx           # imm = 0x500000000000
	xorq	%rcx, %rax
	movl	$0, (%rax)
	movl	$0, -32(%rbp)
.LBB1_10:                               # %for.cond3
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %ecx
	leaq	-32(%rbp), %rax
	movabsq	$87960930222080, %rdx           # imm = 0x500000000000
	xorq	%rdx, %rax
	movl	(%rax), %eax
	orl	$0, %eax
	cmpl	$5, %ecx
	setl	%cl
	movb	%cl, -97(%rbp)                  # 1-byte Spill
	cmpl	$0, %eax
	je	.LBB1_12
# %bb.11:
	xorl	%edi, %edi
	callq	__msan_warning_with_origin_noreturn@PLT
.LBB1_12:                               #   in Loop: Header=BB1_10 Depth=1
	movb	-97(%rbp), %al                  # 1-byte Reload
	testb	$1, %al
	jne	.LBB1_14
	jmp	.LBB1_13
.LBB1_13:                               # %for.cond.cleanup5
	jmp	.LBB1_18
.LBB1_14:                               # %for.body6
                                        #   in Loop: Header=BB1_10 Depth=1
	movl	-32(%rbp), %eax
	leaq	-32(%rbp), %rcx
	movabsq	$87960930222080, %rdx           # imm = 0x500000000000
	xorq	%rdx, %rcx
	movl	(%rcx), %ecx
	orl	$0, %ecx
	addl	$97, %eax
                                        # kill: def $cl killed $cl killed $ecx
	movb	%cl, -114(%rbp)                 # 1-byte Spill
                                        # kill: def $al killed $al killed $eax
	movb	%al, -113(%rbp)                 # 1-byte Spill
	movq	-24(%rbp), %rcx
	leaq	-24(%rbp), %rax
	movabsq	$87960930222080, %rdx           # imm = 0x500000000000
	xorq	%rdx, %rax
	movq	(%rax), %rax
	movl	-32(%rbp), %edx
	leaq	-32(%rbp), %rsi
	movabsq	$87960930222080, %rdi           # imm = 0x500000000000
	xorq	%rdi, %rsi
	movslq	(%rsi), %rsi
	movslq	%edx, %rdx
	orq	%rsi, %rax
	addq	%rdx, %rcx
	movq	%rcx, -112(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	je	.LBB1_16
# %bb.15:
	xorl	%edi, %edi
	callq	__msan_warning_with_origin_noreturn@PLT
.LBB1_16:                               #   in Loop: Header=BB1_10 Depth=1
	movq	-112(%rbp), %rax                # 8-byte Reload
	movb	-113(%rbp), %cl                 # 1-byte Reload
	movb	-114(%rbp), %sil                # 1-byte Reload
	movabsq	$87960930222080, %rdi           # imm = 0x500000000000
	movq	%rax, %rdx
	xorq	%rdi, %rdx
	movb	%sil, (%rdx)
	movb	%cl, (%rax)
# %bb.17:                               # %for.inc9
                                        #   in Loop: Header=BB1_10 Depth=1
	movl	-32(%rbp), %eax
	leaq	-32(%rbp), %rcx
	movabsq	$87960930222080, %rdx           # imm = 0x500000000000
	xorq	%rdx, %rcx
	movl	(%rcx), %edx
	orl	$0, %edx
	addl	$1, %eax
	leaq	-32(%rbp), %rcx
	movabsq	$87960930222080, %rsi           # imm = 0x500000000000
	xorq	%rsi, %rcx
	movl	%edx, (%rcx)
	movl	%eax, -32(%rbp)
	jmp	.LBB1_10
.LBB1_18:                               # %for.end11
	leaq	-33(%rbp), %rdi
	movabsq	$87960930222080, %rax           # imm = 0x500000000000
	xorq	%rax, %rdi
	movl	$255, %esi
	movl	$1, %edx
	callq	memset@PLT
	movq	-24(%rbp), %rcx
	leaq	-24(%rbp), %rax
	movabsq	$87960930222080, %rdx           # imm = 0x500000000000
	xorq	%rdx, %rax
	movq	(%rax), %rax
	orq	$0, %rax
	addq	$20, %rcx
	movq	%rcx, -128(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	je	.LBB1_20
# %bb.19:
	xorl	%edi, %edi
	callq	__msan_warning_with_origin_noreturn@PLT
.LBB1_20:
	movq	-128(%rbp), %rcx                # 8-byte Reload
	movb	(%rcx), %al
	movabsq	$87960930222080, %rsi           # imm = 0x500000000000
	movq	%rsi, -152(%rbp)                # 8-byte Spill
	xorq	%rsi, %rcx
	movb	(%rcx), %dl
	leaq	-33(%rbp), %rcx
	xorq	%rsi, %rcx
	movq	%rcx, -160(%rbp)                # 8-byte Spill
	movb	%dl, (%rcx)
	movb	%al, -33(%rbp)
	movq	__msan_param_tls@GOTTPOFF(%rip), %rax
	movq	%rax, -144(%rbp)                # 8-byte Spill
	movq	$0, %fs:(%rax)
	movq	$0, %fs:8(%rax)
	movq	__msan_retval_tls@GOTTPOFF(%rip), %rax
	movq	%rax, -136(%rbp)                # 8-byte Spill
	movq	$0, %fs:(%rax)
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	leaq	.L.str(%rip), %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	-160(%rbp), %rdx                # 8-byte Reload
	movq	-144(%rbp), %rcx                # 8-byte Reload
	movq	%rax, %rdi
	movq	-136(%rbp), %rax                # 8-byte Reload
	movq	%fs:(%rax), %r8
	movsbl	-33(%rbp), %esi
	movb	(%rdx), %dl
	movq	%r8, %fs:(%rcx)
	movb	%dl, %fs:8(%rcx)
	movq	$0, %fs:(%rax)
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
	movq	-144(%rbp), %rcx                # 8-byte Reload
	movq	%rax, %rdi
	movq	-136(%rbp), %rax                # 8-byte Reload
	movq	%fs:(%rax), %rdx
	movq	%rdx, %fs:(%rcx)
	movq	$0, %fs:8(%rcx)
	movq	$0, %fs:(%rax)
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rsi
	callq	_ZNSolsEPFRSoS_E@PLT
	movq	-152(%rbp), %rdx                # 8-byte Reload
                                        # kill: def $rcx killed $rax
	movq	-144(%rbp), %rax                # 8-byte Reload
	movq	-16(%rbp), %rdi
	leaq	-16(%rbp), %rcx
	xorq	%rdx, %rcx
	movq	(%rcx), %rcx
	movq	%rcx, %fs:(%rax)
	callq	free@PLT
	movq	-152(%rbp), %rdx                # 8-byte Reload
	movq	-144(%rbp), %rax                # 8-byte Reload
	movq	-24(%rbp), %rdi
	leaq	-24(%rbp), %rcx
	xorq	%rdx, %rcx
	movq	(%rcx), %rcx
	movq	%rcx, %fs:(%rax)
	callq	free@PLT
	movq	-136(%rbp), %rax                # 8-byte Reload
	movl	$0, %fs:(%rax)
	xorl	%eax, %eax
	addq	$160, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function _GLOBAL__sub_I_oob.cc
	.type	_GLOBAL__sub_I_oob.cc,@function
_GLOBAL__sub_I_oob.cc:                  # @_GLOBAL__sub_I_oob.cc
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__cxx_global_var_init
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	_GLOBAL__sub_I_oob.cc, .Lfunc_end2-_GLOBAL__sub_I_oob.cc
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
.Lfunc_end3:
	.size	msan.module_ctor, .Lfunc_end3-msan.module_ctor
	.cfi_endproc
                                        # -- End function
	.type	_ZStL8__ioinit,@object          # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Out-of-bounds char_value: "
	.size	.L.str, 27

	.section	.init_array.0,"aw",@init_array
	.p2align	3
	.quad	msan.module_ctor
	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	_GLOBAL__sub_I_oob.cc
	.ident	"clang version 15.0.4 (https://github.com/shiyuanxiang/llvm-project.git c82e0d0f5b2b538e954f35a56aa551392e60f4ca)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __cxx_global_var_init
	.addrsig_sym __cxa_atexit
	.addrsig_sym malloc
	.addrsig_sym _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
	.addrsig_sym _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	.addrsig_sym _ZNSolsEPFRSoS_E
	.addrsig_sym _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	.addrsig_sym free
	.addrsig_sym _GLOBAL__sub_I_oob.cc
	.addrsig_sym __msan_init
	.addrsig_sym msan.module_ctor
	.addrsig_sym __msan_memset
	.addrsig_sym __msan_warning_with_origin_noreturn
	.addrsig_sym _ZStL8__ioinit
	.addrsig_sym __dso_handle
	.addrsig_sym _ZSt4cout
