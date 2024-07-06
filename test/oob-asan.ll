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
	leaq	_ZStL8__ioinit(%rip), %rdi
	callq	_ZNSt8ios_base4InitC1Ev@PLT
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	leaq	_ZStL8__ioinit(%rip), %rsi
	leaq	__dso_handle(%rip), %rdx
	callq	__cxa_atexit@PLT
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	__cxx_global_var_init, .Lfunc_end0-__cxx_global_var_init
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function __cxx_global_var_init.1
	.type	__cxx_global_var_init.1,@function
__cxx_global_var_init.1:                # @__cxx_global_var_init.1
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$120, %edi
	callq	malloc@PLT
	movq	%rax, -8(%rbp)                  # 8-byte Spill
	leaq	global_array_malloc(%rip), %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	je	.LBB1_2
# %bb.1:
	leaq	global_array_malloc(%rip), %rdi
	callq	__asan_report_store8@PLT
.LBB1_2:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	movq	%rax, global_array_malloc(%rip)
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	__cxx_global_var_init.1, .Lfunc_end1-__cxx_global_var_init.1
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function __cxx_global_var_init.2
	.type	__cxx_global_var_init.2,@function
__cxx_global_var_init.2:                # @__cxx_global_var_init.2
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$56, %edi
	callq	_Znam@PLT
	movq	%rax, -8(%rbp)                  # 8-byte Spill
	leaq	global_array(%rip), %rax
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	je	.LBB2_2
# %bb.1:
	leaq	global_array(%rip), %rdi
	callq	__asan_report_store8@PLT
.LBB2_2:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	movq	%rax, global_array(%rip)
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	__cxx_global_var_init.2, .Lfunc_end2-__cxx_global_var_init.2
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
	subq	$48, %rsp
	movl	$0, -4(%rbp)
	movl	$120, %edi
	callq	malloc@PLT
	movq	%rax, -16(%rbp)
	movl	$48, %edi
	callq	_Znam@PLT
	movq	%rax, -24(%rbp)
	movl	$0, -28(%rbp)
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	leaq	.str(%rip), %rsi
	callq	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rax
	addq	$40000, %rax                    # imm = 0x9C40
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	shrq	$3, %rax
	movb	2147450880(%rax), %al
	movb	%al, -29(%rbp)                  # 1-byte Spill
	cmpb	$0, %al
	je	.LBB3_3
# %bb.1:
	movb	-29(%rbp), %cl                  # 1-byte Reload
	movq	-40(%rbp), %rax                 # 8-byte Reload
	andq	$7, %rax
	addq	$3, %rax
                                        # kill: def $al killed $al killed $rax
	cmpb	%cl, %al
	jl	.LBB3_3
# %bb.2:
	movq	-40(%rbp), %rdi                 # 8-byte Reload
	callq	__asan_report_load4@PLT
.LBB3_3:
	movq	-48(%rbp), %rdi                 # 8-byte Reload
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movl	(%rax), %esi
	callq	_ZNSolsEi@PLT
	movq	%rax, %rdi
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rsi
	callq	_ZNSolsEPFRSoS_E@PLT
	movq	-16(%rbp), %rdi
	callq	free@PLT
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end3:
	.size	main, .Lfunc_end3-main
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
	leaq	.L___asan_gen_(%rip), %rdi
	callq	__asan_before_dynamic_init@PLT
	callq	__cxx_global_var_init
	callq	__cxx_global_var_init.1
	callq	__cxx_global_var_init.2
	callq	__asan_after_dynamic_init@PLT
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end4:
	.size	_GLOBAL__sub_I_oob.cc, .Lfunc_end4-_GLOBAL__sub_I_oob.cc
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
	movl	$4, %esi
	callq	__asan_register_globals@PLT
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end5:
	.size	asan.module_ctor, .Lfunc_end5-asan.module_ctor
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
	movl	$4, %esi
	callq	__asan_unregister_globals@PLT
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end6:
	.size	asan.module_dtor, .Lfunc_end6-asan.module_dtor
	.cfi_endproc
                                        # -- End function
	.type	_ZStL8__ioinit,@object          # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,32,32
	.hidden	__dso_handle
	.type	global_array_malloc,@object     # @global_array_malloc
	.bss
	.globl	global_array_malloc
	.p2align	5
global_array_malloc:
	.zero	32
	.size	global_array_malloc, 32

	.type	global_array,@object            # @global_array
	.globl	global_array
	.p2align	5
global_array:
	.zero	32
	.size	global_array, 32

	.type	.str,@object                    # @.str
	.section	.rodata,"a",@progbits
	.p2align	5
.str:
	.asciz	"Out-of-bounds stack_array_malloc[10000]: "
	.zero	54
	.size	.str, 96

	.type	.L___asan_gen_,@object          # @___asan_gen_
.L___asan_gen_:
	.asciz	"oob.cc"
	.size	.L___asan_gen_, 7

	.type	.L___asan_gen_.3,@object        # @___asan_gen_.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L___asan_gen_.3:
	.asciz	"std::__ioinit"
	.size	.L___asan_gen_.3, 14

	.type	.L___asan_gen_.4,@object        # @___asan_gen_.4
.L___asan_gen_.4:
	.asciz	"global_array_malloc"
	.size	.L___asan_gen_.4, 20

	.type	.L___asan_gen_.5,@object        # @___asan_gen_.5
.L___asan_gen_.5:
	.asciz	"global_array"
	.size	.L___asan_gen_.5, 13

	.type	.L___asan_gen_.6,@object        # @___asan_gen_.6
.L___asan_gen_.6:
	.asciz	".str"
	.size	.L___asan_gen_.6, 5

	.type	__unnamed_1,@object             # @0
	.data
	.p2align	4
__unnamed_1:
	.quad	_ZStL8__ioinit
	.quad	1                               # 0x1
	.quad	32                              # 0x20
	.quad	.L___asan_gen_.3
	.quad	.L___asan_gen_
	.quad	1                               # 0x1
	.quad	0                               # 0x0
	.quad	-1                              # 0xffffffffffffffff
	.quad	global_array_malloc
	.quad	8                               # 0x8
	.quad	32                              # 0x20
	.quad	.L___asan_gen_.4
	.quad	.L___asan_gen_
	.quad	1                               # 0x1
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	global_array
	.quad	8                               # 0x8
	.quad	32                              # 0x20
	.quad	.L___asan_gen_.5
	.quad	.L___asan_gen_
	.quad	1                               # 0x1
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	.str
	.quad	42                              # 0x2a
	.quad	96                              # 0x60
	.quad	.L___asan_gen_.6
	.quad	.L___asan_gen_
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	-1                              # 0xffffffffffffffff
	.size	__unnamed_1, 256

	.section	.init_array.1,"aw",@init_array
	.p2align	3
	.quad	asan.module_ctor
	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	_GLOBAL__sub_I_oob.cc
	.section	.fini_array.1,"aw",@fini_array
	.p2align	3
	.quad	asan.module_dtor
	.ident	"clang version 15.0.4 (https://github.com/shiyuanxiang/llvm-project.git c82e0d0f5b2b538e954f35a56aa551392e60f4ca)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __cxx_global_var_init
	.addrsig_sym __cxa_atexit
	.addrsig_sym __cxx_global_var_init.1
	.addrsig_sym malloc
	.addrsig_sym __cxx_global_var_init.2
	.addrsig_sym _Znam
	.addrsig_sym _ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	.addrsig_sym _ZNSolsEi
	.addrsig_sym _ZNSolsEPFRSoS_E
	.addrsig_sym _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	.addrsig_sym free
	.addrsig_sym _GLOBAL__sub_I_oob.cc
	.addrsig_sym __asan_report_load4
	.addrsig_sym __asan_report_store8
	.addrsig_sym __asan_before_dynamic_init
	.addrsig_sym __asan_after_dynamic_init
	.addrsig_sym __asan_register_globals
	.addrsig_sym __asan_unregister_globals
	.addrsig_sym __asan_init
	.addrsig_sym asan.module_ctor
	.addrsig_sym __asan_version_mismatch_check_v8
	.addrsig_sym asan.module_dtor
	.addrsig_sym _ZStL8__ioinit
	.addrsig_sym __dso_handle
	.addrsig_sym global_array_malloc
	.addrsig_sym global_array
	.addrsig_sym _ZSt4cout
	.addrsig_sym .str
	.addrsig_sym .L___asan_gen_
	.addrsig_sym __unnamed_1
