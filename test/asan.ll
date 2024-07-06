	.text
	.file	"test.cc"
	.globl	_Z9read_dataPci                 # -- Begin function _Z9read_dataPci
	.p2align	4, 0x90
	.type	_Z9read_dataPci,@function
_Z9read_dataPci:                        # @_Z9read_dataPci
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$0, -16(%rbp)
.LBB0_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jl	.LBB0_3
# %bb.2:                                # %for.cond.cleanup
	jmp	.LBB0_5
.LBB0_3:                                # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_4
.LBB0_4:                                # %for.inc
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB0_1
.LBB0_5:                                # %for.end
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	_Z9read_dataPci, .Lfunc_end0-_Z9read_dataPci
	.cfi_endproc
                                        # -- End function
	.globl	_Z9read_sizev                   # -- Begin function _Z9read_sizev
	.p2align	4, 0x90
	.type	_Z9read_sizev,@function
_Z9read_sizev:                          # @_Z9read_sizev
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	$12, %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	_Z9read_sizev, .Lfunc_end1-_Z9read_sizev
	.cfi_endproc
                                        # -- End function
	.globl	_Z3fooR6Buffer                  # -- Begin function _Z3fooR6Buffer
	.p2align	4, 0x90
	.type	_Z3fooR6Buffer,@function
_Z3fooR6Buffer:                         # @_Z3fooR6Buffer
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	andq	$-32, %rsp
	subq	$128, %rsp
	movq	%rsp, %rbx
	.cfi_offset %rbx, -24
	movq	%rdi, 96(%rbx)
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	__asan_option_detect_stack_use_after_return@GOTPCREL(%rip), %rcx
	cmpl	$0, (%rcx)
	movq	%rax, 56(%rbx)                  # 8-byte Spill
	je	.LBB2_2
# %bb.1:
	movl	$64, %edi
	callq	__asan_stack_malloc_0@PLT
	movq	%rax, 56(%rbx)                  # 8-byte Spill
.LBB2_2:
	movq	56(%rbx), %rax                  # 8-byte Reload
	movq	%rax, 40(%rbx)                  # 8-byte Spill
	cmpq	$0, %rax
	movq	%rax, 48(%rbx)                  # 8-byte Spill
	jne	.LBB2_4
# %bb.3:
	movq	%rsp, %rax
	addq	$-64, %rax
	andq	$-32, %rax
	movq	%rax, %rsp
	movq	%rax, 48(%rbx)                  # 8-byte Spill
.LBB2_4:
	movq	48(%rbx), %rax                  # 8-byte Reload
	movq	%rax, 32(%rbx)                  # 8-byte Spill
	movq	%rax, 80(%rbx)
	movq	%rax, %rcx
	addq	$32, %rcx
	movq	%rcx, 16(%rbx)                  # 8-byte Spill
	movq	$1102416563, (%rax)             # imm = 0x41B58AB3
	leaq	.L___asan_gen_(%rip), %rcx
	movq	%rcx, 8(%rax)
	leaq	_Z3fooR6Buffer(%rip), %rcx
	movq	%rcx, 16(%rax)
	shrq	$3, %rax
	movq	%rax, 24(%rbx)                  # 8-byte Spill
	movq	%rax, %rcx
	addq	$2147450880, %rcx               # imm = 0x7FFF8000
	movq	%rcx, 8(%rbx)                   # 8-byte Spill
	movabsq	$-868076555057630735, %rcx      # imm = 0xF3F3F8F8F1F1F1F1
	movq	%rcx, 2147450880(%rax)
	movw	$512, 2147450884(%rax)          # imm = 0x200
	callq	_Z9read_sizev
	movq	16(%rbx), %rdi                  # 8-byte Reload
	movl	%eax, 92(%rbx)
	movl	92(%rbx), %esi
	callq	_Z9read_dataPci
	movq	16(%rbx), %rsi                  # 8-byte Reload
	movq	96(%rbx), %rdi
	movl	92(%rbx), %edx
	callq	_ZN6Buffer5writeEPKci
	movq	24(%rbx), %rdx                  # 8-byte Reload
	movq	32(%rbx), %rcx                  # 8-byte Reload
	movq	40(%rbx), %rax                  # 8-byte Reload
	movw	$-1800, 2147450884(%rdx)        # imm = 0xF8F8
	movq	$1172321806, (%rcx)             # imm = 0x45E0360E
	cmpq	$0, %rax
	je	.LBB2_6
# %bb.5:
	movq	40(%rbx), %rax                  # 8-byte Reload
	movq	8(%rbx), %rcx                   # 8-byte Reload
	movabsq	$-723401728380766731, %rdx      # imm = 0xF5F5F5F5F5F5F5F5
	movq	%rdx, (%rcx)
	movq	56(%rax), %rax
	movb	$0, (%rax)
	jmp	.LBB2_7
.LBB2_6:
	movq	8(%rbx), %rax                   # 8-byte Reload
	movq	$0, (%rax)
.LBB2_7:
	leaq	-8(%rbp), %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	_Z3fooR6Buffer, .Lfunc_end2-_Z3fooR6Buffer
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6Buffer5writeEPKci,"axG",@progbits,_ZN6Buffer5writeEPKci,comdat
	.weak	_ZN6Buffer5writeEPKci           # -- Begin function _ZN6Buffer5writeEPKci
	.p2align	4, 0x90
	.type	_ZN6Buffer5writeEPKci,@function
_ZN6Buffer5writeEPKci:                  # @_ZN6Buffer5writeEPKci
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	movl	-20(%rbp), %ecx
	movl	%ecx, -36(%rbp)                 # 4-byte Spill
	addq	$8, %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	shrq	$3, %rax
	movb	2147450880(%rax), %al
	movb	%al, -21(%rbp)                  # 1-byte Spill
	cmpb	$0, %al
	je	.LBB3_3
# %bb.1:
	movb	-21(%rbp), %cl                  # 1-byte Reload
	movq	-32(%rbp), %rax                 # 8-byte Reload
	andq	$7, %rax
	addq	$3, %rax
                                        # kill: def $al killed $al killed $rax
	cmpb	%cl, %al
	jl	.LBB3_3
# %bb.2:
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	callq	__asan_report_load4@PLT
.LBB3_3:
	movl	-36(%rbp), %eax                 # 4-byte Reload
	movq	-32(%rbp), %rcx                 # 8-byte Reload
	cmpl	(%rcx), %eax
	jle	.LBB3_14
# %bb.4:                                # %if.then
	movq	-48(%rbp), %rax                 # 8-byte Reload
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	je	.LBB3_6
# %bb.5:
	movq	-48(%rbp), %rdi                 # 8-byte Reload
	callq	__asan_report_load8@PLT
.LBB3_6:
	movq	-48(%rbp), %rax                 # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	cmpq	$0, %rax
	je	.LBB3_8
# %bb.7:                                # %delete.notnull
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	callq	_ZdaPv@PLT
.LBB3_8:                                # %delete.end
	movslq	-20(%rbp), %rdi
	callq	_Znam@PLT
	movq	%rax, %rcx
	movq	-48(%rbp), %rax                 # 8-byte Reload
	movq	%rcx, -64(%rbp)                 # 8-byte Spill
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	je	.LBB3_10
# %bb.9:
	movq	-48(%rbp), %rdi                 # 8-byte Reload
	callq	__asan_report_store8@PLT
.LBB3_10:
	movq	-48(%rbp), %rax                 # 8-byte Reload
	movq	-64(%rbp), %rcx                 # 8-byte Reload
	movq	%rcx, (%rax)
	movl	-20(%rbp), %ecx
	movl	%ecx, -84(%rbp)                 # 4-byte Spill
	addq	$8, %rax
	movq	%rax, -80(%rbp)                 # 8-byte Spill
	shrq	$3, %rax
	movb	2147450880(%rax), %al
	movb	%al, -65(%rbp)                  # 1-byte Spill
	cmpb	$0, %al
	je	.LBB3_13
# %bb.11:
	movb	-65(%rbp), %cl                  # 1-byte Reload
	movq	-80(%rbp), %rax                 # 8-byte Reload
	andq	$7, %rax
	addq	$3, %rax
                                        # kill: def $al killed $al killed $rax
	cmpb	%cl, %al
	jl	.LBB3_13
# %bb.12:
	movq	-80(%rbp), %rdi                 # 8-byte Reload
	callq	__asan_report_store4@PLT
.LBB3_13:
	movq	-80(%rbp), %rax                 # 8-byte Reload
	movl	-84(%rbp), %ecx                 # 4-byte Reload
	movl	%ecx, (%rax)
.LBB3_14:                               # %if.end
	movq	-48(%rbp), %rax                 # 8-byte Reload
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	je	.LBB3_16
# %bb.15:
	movq	-48(%rbp), %rdi                 # 8-byte Reload
	callq	__asan_report_load8@PLT
.LBB3_16:
	movq	-48(%rbp), %rax                 # 8-byte Reload
	movq	(%rax), %rdi
	movq	-16(%rbp), %rsi
	movslq	-20(%rbp), %rdx
	callq	__asan_memcpy@PLT
	addq	$96, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end3:
	.size	_ZN6Buffer5writeEPKci, .Lfunc_end3-_ZN6Buffer5writeEPKci
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_Z3barv                         # -- Begin function _Z3barv
	.p2align	4, 0x90
	.type	_Z3barv,@function
_Z3barv:                                # @_Z3barv
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
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
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	__asan_option_detect_stack_use_after_return@GOTPCREL(%rip), %rcx
	cmpl	$0, (%rcx)
	movq	%rax, 88(%rbx)                  # 8-byte Spill
	je	.LBB4_2
# %bb.1:
	movl	$64, %edi
	callq	__asan_stack_malloc_0@PLT
	movq	%rax, 88(%rbx)                  # 8-byte Spill
.LBB4_2:
	movq	88(%rbx), %rax                  # 8-byte Reload
	movq	%rax, 72(%rbx)                  # 8-byte Spill
	cmpq	$0, %rax
	movq	%rax, 80(%rbx)                  # 8-byte Spill
	jne	.LBB4_4
# %bb.3:
	movq	%rsp, %rax
	addq	$-64, %rax
	andq	$-32, %rax
	movq	%rax, %rsp
	movq	%rax, 80(%rbx)                  # 8-byte Spill
.LBB4_4:
	movq	80(%rbx), %rax                  # 8-byte Reload
	movq	%rax, 104(%rbx)
	movq	%rax, %rdi
	addq	$32, %rdi
	movq	%rdi, 64(%rbx)                  # 8-byte Spill
	movq	%rax, %rcx
	movq	%rcx, 48(%rbx)                  # 8-byte Spill
	movq	$1102416563, (%rax)             # imm = 0x41B58AB3
	leaq	.L___asan_gen_.2(%rip), %rcx
	movq	%rcx, 8(%rax)
	leaq	_Z3barv(%rip), %rcx
	movq	%rcx, 16(%rax)
	shrq	$3, %rax
	movq	%rax, %rcx
	addq	$2147450880, %rcx               # imm = 0x7FFF8000
	movq	%rcx, 56(%rbx)                  # 8-byte Spill
	movabsq	$-868076555057630735, %rcx      # imm = 0xF3F3F8F8F1F1F1F1
	movq	%rcx, 2147450880(%rax)
	movw	$0, 2147450884(%rax)
	movl	$100, %esi
	callq	_ZN6BufferC2Ei
	movq	64(%rbx), %rdi                  # 8-byte Reload
.Ltmp0:
	callq	_Z3fooR6Buffer
.Ltmp1:
	jmp	.LBB4_5
.LBB4_5:                                # %invoke.cont
.Ltmp3:
	movq	64(%rbx), %rdi                  # 8-byte Reload
	callq	_ZN6Buffer4readEv
.Ltmp4:
	movq	%rax, 40(%rbx)                  # 8-byte Spill
	jmp	.LBB4_6
.LBB4_6:                                # %invoke.cont2
	movq	40(%rbx), %rax                  # 8-byte Reload
	movq	%rax, 112(%rbx)
	movq	112(%rbx), %rax
	movq	%rax, 24(%rbx)                  # 8-byte Spill
	shrq	$3, %rax
	movb	2147450880(%rax), %al
	movb	%al, 39(%rbx)                   # 1-byte Spill
	cmpb	$0, %al
	je	.LBB4_9
# %bb.7:
	movb	39(%rbx), %cl                   # 1-byte Reload
	movq	24(%rbx), %rax                  # 8-byte Reload
	andq	$7, %rax
                                        # kill: def $al killed $al killed $rax
	cmpb	%cl, %al
	jl	.LBB4_9
# %bb.8:
	movq	24(%rbx), %rdi                  # 8-byte Reload
	callq	__asan_report_load1@PLT
.LBB4_9:
	movq	24(%rbx), %rax                  # 8-byte Reload
	movsbl	(%rax), %eax
	cmpl	$65, %eax
	jne	.LBB4_14
# %bb.10:                               # %if.then
.Ltmp7:
	leaq	.str(%rip), %rdi
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	callq	printf@PLT
.Ltmp8:
	jmp	.LBB4_11
.LBB4_11:                               # %invoke.cont3
	jmp	.LBB4_16
.LBB4_12:                               # %lpad
.Ltmp2:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 128(%rbx)
	movl	%eax, 124(%rbx)
	jmp	.LBB4_20
.LBB4_13:                               # %lpad1
.Ltmp9:
	movq	%rax, %rcx
	movl	%edx, %eax
	movq	%rcx, 128(%rbx)
	movl	%eax, 124(%rbx)
	jmp	.LBB4_20
.LBB4_14:                               # %if.else
.Ltmp5:
	leaq	.str.1(%rip), %rdi
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	callq	printf@PLT
.Ltmp6:
	jmp	.LBB4_15
.LBB4_15:                               # %invoke.cont5
	jmp	.LBB4_16
.LBB4_16:                               # %if.end
	movq	64(%rbx), %rdi                  # 8-byte Reload
	callq	_ZN6BufferD2Ev
	movq	56(%rbx), %rdx                  # 8-byte Reload
	movq	48(%rbx), %rcx                  # 8-byte Reload
	movq	72(%rbx), %rax                  # 8-byte Reload
	movw	$-1800, 4(%rdx)                 # imm = 0xF8F8
	movq	$1172321806, (%rcx)             # imm = 0x45E0360E
	cmpq	$0, %rax
	je	.LBB4_18
# %bb.17:
	movq	72(%rbx), %rax                  # 8-byte Reload
	movq	56(%rbx), %rcx                  # 8-byte Reload
	movabsq	$-723401728380766731, %rdx      # imm = 0xF5F5F5F5F5F5F5F5
	movq	%rdx, (%rcx)
	movq	56(%rax), %rax
	movb	$0, (%rax)
	jmp	.LBB4_19
.LBB4_18:
	movq	56(%rbx), %rax                  # 8-byte Reload
	movq	$0, (%rax)
.LBB4_19:
	leaq	-8(%rbp), %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB4_20:                               # %ehcleanup
	.cfi_def_cfa %rbp, 16
	movq	64(%rbx), %rdi                  # 8-byte Reload
	callq	_ZN6BufferD2Ev
	movq	56(%rbx), %rax                  # 8-byte Reload
	movw	$-1800, 4(%rax)                 # imm = 0xF8F8
# %bb.21:                               # %eh.resume
	movq	72(%rbx), %rax                  # 8-byte Reload
	movq	48(%rbx), %rcx                  # 8-byte Reload
	movq	128(%rbx), %rdx
	movq	%rdx, 16(%rbx)                  # 8-byte Spill
	movq	$1172321806, (%rcx)             # imm = 0x45E0360E
	cmpq	$0, %rax
	je	.LBB4_23
# %bb.22:
	movq	72(%rbx), %rax                  # 8-byte Reload
	movq	56(%rbx), %rcx                  # 8-byte Reload
	movabsq	$-723401728380766731, %rdx      # imm = 0xF5F5F5F5F5F5F5F5
	movq	%rdx, (%rcx)
	movq	56(%rax), %rax
	movb	$0, (%rax)
	jmp	.LBB4_24
.LBB4_23:
	movq	56(%rbx), %rax                  # 8-byte Reload
	movq	$0, (%rax)
.LBB4_24:
	movq	16(%rbx), %rdi                  # 8-byte Reload
	callq	_Unwind_Resume@PLT
.Lfunc_end4:
	.size	_Z3barv, .Lfunc_end4-_Z3barv
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table4:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    # >> Call Site 1 <<
	.uleb128 .Ltmp0-.Lfunc_begin0           #   Call between .Lfunc_begin0 and .Ltmp0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0           #     jumps to .Ltmp2
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp9-.Lfunc_begin0           #     jumps to .Ltmp9
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp4-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp7-.Ltmp4                  #   Call between .Ltmp4 and .Ltmp7
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp7-.Lfunc_begin0           # >> Call Site 5 <<
	.uleb128 .Ltmp6-.Ltmp7                  #   Call between .Ltmp7 and .Ltmp6
	.uleb128 .Ltmp9-.Lfunc_begin0           #     jumps to .Ltmp9
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 6 <<
	.uleb128 .Lfunc_end4-.Ltmp6             #   Call between .Ltmp6 and .Lfunc_end4
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN6BufferC2Ei,"axG",@progbits,_ZN6BufferC2Ei,comdat
	.weak	_ZN6BufferC2Ei                  # -- Begin function _ZN6BufferC2Ei
	.p2align	4, 0x90
	.type	_ZN6BufferC2Ei,@function
_ZN6BufferC2Ei:                         # @_ZN6BufferC2Ei
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	movslq	-12(%rbp), %rdi
	callq	_Znam@PLT
	movq	%rax, %rcx
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movq	%rcx, -24(%rbp)                 # 8-byte Spill
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	je	.LBB5_2
# %bb.1:
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	callq	__asan_report_store8@PLT
.LBB5_2:
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movq	-24(%rbp), %rcx                 # 8-byte Reload
	movq	%rcx, (%rax)
	movl	-12(%rbp), %ecx
	movl	%ecx, -52(%rbp)                 # 4-byte Spill
	addq	$8, %rax
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	shrq	$3, %rax
	movb	2147450880(%rax), %al
	movb	%al, -33(%rbp)                  # 1-byte Spill
	cmpb	$0, %al
	je	.LBB5_5
# %bb.3:
	movb	-33(%rbp), %cl                  # 1-byte Reload
	movq	-48(%rbp), %rax                 # 8-byte Reload
	andq	$7, %rax
	addq	$3, %rax
                                        # kill: def $al killed $al killed $rax
	cmpb	%cl, %al
	jl	.LBB5_5
# %bb.4:
	movq	-48(%rbp), %rdi                 # 8-byte Reload
	callq	__asan_report_store4@PLT
.LBB5_5:
	movq	-48(%rbp), %rax                 # 8-byte Reload
	movl	-52(%rbp), %ecx                 # 4-byte Reload
	movl	%ecx, (%rax)
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end5:
	.size	_ZN6BufferC2Ei, .Lfunc_end5-_ZN6BufferC2Ei
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6Buffer4readEv,"axG",@progbits,_ZN6Buffer4readEv,comdat
	.weak	_ZN6Buffer4readEv               # -- Begin function _ZN6Buffer4readEv
	.p2align	4, 0x90
	.type	_ZN6Buffer4readEv,@function
_ZN6Buffer4readEv:                      # @_ZN6Buffer4readEv
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)                 # 8-byte Spill
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	je	.LBB6_2
# %bb.1:
	movq	-16(%rbp), %rdi                 # 8-byte Reload
	callq	__asan_report_load8@PLT
.LBB6_2:
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movq	(%rax), %rax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end6:
	.size	_ZN6Buffer4readEv, .Lfunc_end6-_ZN6Buffer4readEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6BufferD2Ev,"axG",@progbits,_ZN6BufferD2Ev,comdat
	.weak	_ZN6BufferD2Ev                  # -- Begin function _ZN6BufferD2Ev
	.p2align	4, 0x90
	.type	_ZN6BufferD2Ev,@function
_ZN6BufferD2Ev:                         # @_ZN6BufferD2Ev
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)                 # 8-byte Spill
	shrq	$3, %rax
	cmpb	$0, 2147450880(%rax)
	je	.LBB7_2
# %bb.1:
	movq	-16(%rbp), %rdi                 # 8-byte Reload
	callq	__asan_report_load8@PLT
.LBB7_2:
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	cmpq	$0, %rax
	je	.LBB7_4
# %bb.3:                                # %delete.notnull
	movq	-24(%rbp), %rdi                 # 8-byte Reload
	callq	_ZdaPv@PLT
.LBB7_4:                                # %delete.end
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end7:
	.size	_ZN6BufferD2Ev, .Lfunc_end7-_ZN6BufferD2Ev
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
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	callq	_Z3barv
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end8:
	.size	main, .Lfunc_end8-main
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
	leaq	___asan_globals_registered(%rip), %rdi
	movq	__start_asan_globals@GOTPCREL(%rip), %rsi
	movq	__stop_asan_globals@GOTPCREL(%rip), %rdx
	callq	__asan_register_elf_globals@PLT
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end9:
	.size	asan.module_ctor, .Lfunc_end9-asan.module_ctor
	.cfi_endproc
                                        # -- End function
	.section	.text.asan.module_dtor,"axGR",@progbits,asan.module_dtor,comdat
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
	leaq	___asan_globals_registered(%rip), %rdi
	movq	__start_asan_globals@GOTPCREL(%rip), %rsi
	movq	__stop_asan_globals@GOTPCREL(%rip), %rdx
	callq	__asan_unregister_elf_globals@PLT
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end10:
	.size	asan.module_dtor, .Lfunc_end10-asan.module_dtor
	.cfi_endproc
                                        # -- End function
	.type	.str,@object                    # @.str
	.section	.rodata..str,"aG",@progbits,.str.ede155a1b0c04c423a290d881e5f0b48,comdat
	.p2align	5, 0x0
.str:
	.asciz	"data starts with A\n"
	.zero	44
	.size	.str, 64

	.type	.str.1,@object                  # @.str.1
	.section	.rodata..str.1,"aG",@progbits,.str.1.ede155a1b0c04c423a290d881e5f0b48,comdat
	.p2align	5, 0x0
.str.1:
	.asciz	"data does not start with A\n"
	.zero	36
	.size	.str.1, 64

	.type	.L___asan_gen_,@object          # @___asan_gen_
	.section	.rodata.str1.1,"aMS",@progbits,1
.L___asan_gen_:
	.asciz	"1 32 10 3 tmp"
	.size	.L___asan_gen_, 14

	.type	.L___asan_gen_.2,@object        # @___asan_gen_.2
.L___asan_gen_.2:
	.asciz	"1 32 16 3 buf"
	.size	.L___asan_gen_.2, 14

	.type	.L___asan_gen_.3,@object        # @___asan_gen_.3
	.section	.rodata,"a",@progbits
.L___asan_gen_.3:
	.asciz	"test.cc"
	.size	.L___asan_gen_.3, 8

	.type	.L___asan_gen_.4,@object        # @___asan_gen_.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L___asan_gen_.4:
	.asciz	".str"
	.size	.L___asan_gen_.4, 5

	.type	.L___asan_gen_.5,@object        # @___asan_gen_.5
.L___asan_gen_.5:
	.asciz	".str.1"
	.size	.L___asan_gen_.5, 7

	.type	.L__asan_global_.str,@object    # @__asan_global_.str
	.section	asan_globals,"aGwo",@progbits,.str.ede155a1b0c04c423a290d881e5f0b48,comdat,.str,unique,1
	.p2align	4, 0x90
.L__asan_global_.str:
	.quad	.L__unnamed_1
	.quad	20                              # 0x14
	.quad	64                              # 0x40
	.quad	.L___asan_gen_.4
	.quad	.L___asan_gen_.3
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	-1                              # 0xffffffffffffffff
	.size	.L__asan_global_.str, 64

	.type	.L__asan_global_.str.1,@object  # @__asan_global_.str.1
	.section	asan_globals,"aGwo",@progbits,.str.1.ede155a1b0c04c423a290d881e5f0b48,comdat,.str.1,unique,2
	.p2align	4, 0x90
.L__asan_global_.str.1:
	.quad	.L__unnamed_2
	.quad	28                              # 0x1c
	.quad	64                              # 0x40
	.quad	.L___asan_gen_.5
	.quad	.L___asan_gen_.3
	.quad	0                               # 0x0
	.quad	0                               # 0x0
	.quad	-1                              # 0xffffffffffffffff
	.size	.L__asan_global_.str.1, 64

	.hidden	___asan_globals_registered      # @___asan_globals_registered
	.type	___asan_globals_registered,@object
	.comm	___asan_globals_registered,8,8
	.hidden	__start_asan_globals
	.hidden	__stop_asan_globals
	.section	.init_array.1,"aGw",@init_array,asan.module_ctor,comdat
	.p2align	3, 0x90
	.quad	asan.module_ctor
	.section	.fini_array.1,"aGw",@fini_array,asan.module_dtor,comdat
	.p2align	3, 0x90
	.quad	asan.module_dtor
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.DW.ref.__gxx_personality_v0,"aGw",@progbits,DW.ref.__gxx_personality_v0,comdat
	.p2align	3, 0x0
	.type	DW.ref.__gxx_personality_v0,@object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.weak	__start_asan_globals
	.weak	__stop_asan_globals
.set .L__unnamed_1, .str
.set .L__unnamed_2, .str.1
	.ident	"clang version 17.0.0 (https://github.com/shiyuanxiang/llvm-project.git 88bf774c565080e30e0a073676c316ab175303af)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _Z9read_dataPci
	.addrsig_sym _Z9read_sizev
	.addrsig_sym _Z3fooR6Buffer
	.addrsig_sym _ZN6Buffer5writeEPKci
	.addrsig_sym _Z3barv
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _ZN6Buffer4readEv
	.addrsig_sym printf
	.addrsig_sym _ZdaPv
	.addrsig_sym _Znam
	.addrsig_sym __asan_report_load1
	.addrsig_sym __asan_report_load4
	.addrsig_sym __asan_report_load8
	.addrsig_sym __asan_report_store4
	.addrsig_sym __asan_report_store8
	.addrsig_sym __asan_memcpy
	.addrsig_sym __asan_stack_malloc_0
	.addrsig_sym __asan_register_elf_globals
	.addrsig_sym __asan_unregister_elf_globals
	.addrsig_sym __asan_init
	.addrsig_sym asan.module_ctor
	.addrsig_sym __asan_version_mismatch_check_v8
	.addrsig_sym asan.module_dtor
	.addrsig_sym _Unwind_Resume
	.addrsig_sym .str
	.addrsig_sym .str.1
	.addrsig_sym __asan_option_detect_stack_use_after_return
	.addrsig_sym .L___asan_gen_.3
	.addrsig_sym .L__asan_global_.str
	.addrsig_sym .L__asan_global_.str.1
	.addrsig_sym ___asan_globals_registered
	.addrsig_sym __start_asan_globals
	.addrsig_sym __stop_asan_globals
	.addrsig_sym .L__unnamed_1
	.addrsig_sym .L__unnamed_2
