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
	subq	$48, %rsp
	movq	%rdi, -32(%rbp)                 # 8-byte Spill
	movl	%esi, -20(%rbp)                 # 4-byte Spill
	leaq	-8(%rbp), %rdi
	movabsq	$87960930222080, %rax           # imm = 0x500000000000
	xorq	%rax, %rdi
	movl	$255, %esi
	movl	$8, %edx
	callq	memset@PLT
	leaq	-12(%rbp), %rdi
	movabsq	$87960930222080, %rax           # imm = 0x500000000000
	xorq	%rax, %rdi
	movl	$255, %esi
	movl	$4, %edx
	callq	memset@PLT
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movl	-20(%rbp), %esi                 # 4-byte Reload
	leaq	-8(%rbp), %rax
	movabsq	$87960930222080, %rcx           # imm = 0x500000000000
	xorq	%rcx, %rax
	movq	$0, (%rax)
	movq	%rdi, -8(%rbp)
	leaq	-12(%rbp), %rax
	movabsq	$87960930222080, %rcx           # imm = 0x500000000000
	xorq	%rcx, %rax
	movl	$0, (%rax)
	movl	%esi, -12(%rbp)
	leaq	-16(%rbp), %rdi
	movabsq	$87960930222080, %rax           # imm = 0x500000000000
	xorq	%rax, %rdi
	movl	$255, %esi
	movl	$4, %edx
	callq	memset@PLT
	leaq	-16(%rbp), %rax
	movabsq	$87960930222080, %rcx           # imm = 0x500000000000
	xorq	%rcx, %rax
	movl	$0, (%rax)
	movl	$0, -16(%rbp)
.LBB0_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %ecx
	leaq	-16(%rbp), %rax
	movabsq	$87960930222080, %rdx           # imm = 0x500000000000
	xorq	%rdx, %rax
	movl	(%rax), %eax
	movl	-12(%rbp), %edx
	leaq	-12(%rbp), %rsi
	movabsq	$87960930222080, %rdi           # imm = 0x500000000000
	xorq	%rdi, %rsi
	orl	(%rsi), %eax
	cmpl	%edx, %ecx
	setl	%cl
	movb	%cl, -33(%rbp)                  # 1-byte Spill
	cmpl	$0, %eax
	je	.LBB0_3
# %bb.2:
	callq	__msan_warning_noreturn@PLT
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	movb	-33(%rbp), %al                  # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_5
	jmp	.LBB0_4
.LBB0_4:                                # %for.cond.cleanup
	jmp	.LBB0_7
.LBB0_5:                                # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_6
.LBB0_6:                                # %for.inc
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-16(%rbp), %eax
	leaq	-16(%rbp), %rcx
	movabsq	$87960930222080, %rdx           # imm = 0x500000000000
	xorq	%rdx, %rcx
	movl	(%rcx), %edx
	orl	$0, %edx
	addl	$1, %eax
	leaq	-16(%rbp), %rcx
	movabsq	$87960930222080, %rsi           # imm = 0x500000000000
	xorq	%rsi, %rcx
	movl	%edx, (%rcx)
	movl	%eax, -16(%rbp)
	jmp	.LBB0_1
.LBB0_7:                                # %for.end
	addq	$48, %rsp
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
	subq	$80, %rsp
	movq	%rdi, -48(%rbp)                 # 8-byte Spill
	leaq	-8(%rbp), %rdi
	movabsq	$87960930222080, %rax           # imm = 0x500000000000
	xorq	%rax, %rdi
	movl	$255, %esi
	movl	$8, %edx
	callq	memset@PLT
	movq	-48(%rbp), %rdi                 # 8-byte Reload
	leaq	-8(%rbp), %rax
	movabsq	$87960930222080, %rcx           # imm = 0x500000000000
	xorq	%rcx, %rax
	movq	$0, (%rax)
	movq	%rdi, -8(%rbp)
	leaq	-18(%rbp), %rdi
	movabsq	$87960930222080, %rax           # imm = 0x500000000000
	xorq	%rax, %rdi
	movl	$255, %esi
	movl	$10, %edx
	callq	memset@PLT
	leaq	-24(%rbp), %rdi
	movabsq	$87960930222080, %rax           # imm = 0x500000000000
	xorq	%rax, %rdi
	movl	$255, %esi
	movl	$4, %edx
	callq	memset@PLT
	callq	_Z9read_sizev
	leaq	-24(%rbp), %rcx
	movabsq	$87960930222080, %rdx           # imm = 0x500000000000
	xorq	%rdx, %rcx
	movl	$0, (%rcx)
	movl	%eax, -24(%rbp)
	leaq	-18(%rbp), %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movl	-24(%rbp), %eax
	movl	%eax, -28(%rbp)                 # 4-byte Spill
	leaq	-24(%rbp), %rax
	movabsq	$87960930222080, %rcx           # imm = 0x500000000000
	xorq	%rcx, %rax
	cmpl	$0, (%rax)
	je	.LBB2_2
# %bb.1:
	callq	__msan_warning_noreturn@PLT
.LBB2_2:
	movl	-28(%rbp), %esi                 # 4-byte Reload
	movq	-40(%rbp), %rdi                 # 8-byte Reload
	callq	_Z9read_dataPci
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)                 # 8-byte Spill
	leaq	-8(%rbp), %rax
	movabsq	$87960930222080, %rcx           # imm = 0x500000000000
	xorq	%rcx, %rax
	movq	(%rax), %rax
	leaq	-18(%rbp), %rcx
	movq	%rcx, -64(%rbp)                 # 8-byte Spill
	movl	-24(%rbp), %ecx
	movl	%ecx, -52(%rbp)                 # 4-byte Spill
	leaq	-24(%rbp), %rcx
	movabsq	$87960930222080, %rdx           # imm = 0x500000000000
	xorq	%rdx, %rcx
	movl	(%rcx), %ecx
	cmpq	$0, %rax
	setne	%al
	cmpl	$0, %ecx
	setne	%cl
	orb	%cl, %al
	testb	$1, %al
	jne	.LBB2_3
	jmp	.LBB2_4
.LBB2_3:
	callq	__msan_warning_noreturn@PLT
.LBB2_4:
	movl	-52(%rbp), %edx                 # 4-byte Reload
	movq	-64(%rbp), %rsi                 # 8-byte Reload
	movq	-72(%rbp), %rdi                 # 8-byte Reload
	callq	_ZN6Buffer5writeEPKci
	addq	$80, %rsp
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
	subq	$144, %rsp
	movq	%rdi, -80(%rbp)                 # 8-byte Spill
	movq	%rsi, -72(%rbp)                 # 8-byte Spill
	movl	%edx, -60(%rbp)                 # 4-byte Spill
	leaq	-8(%rbp), %rdi
	movabsq	$87960930222080, %rax           # imm = 0x500000000000
	xorq	%rax, %rdi
	movl	$255, %esi
	movl	$8, %edx
	callq	memset@PLT
	leaq	-16(%rbp), %rdi
	movabsq	$87960930222080, %rax           # imm = 0x500000000000
	xorq	%rax, %rdi
	movl	$255, %esi
	movl	$8, %edx
	callq	memset@PLT
	leaq	-20(%rbp), %rdi
	movabsq	$87960930222080, %rax           # imm = 0x500000000000
	xorq	%rax, %rdi
	movl	$255, %esi
	movl	$4, %edx
	callq	memset@PLT
	movq	-80(%rbp), %rdi                 # 8-byte Reload
	movq	-72(%rbp), %rsi                 # 8-byte Reload
	movl	-60(%rbp), %edx                 # 4-byte Reload
	leaq	-8(%rbp), %rax
	movabsq	$87960930222080, %rcx           # imm = 0x500000000000
	xorq	%rcx, %rax
	movq	$0, (%rax)
	movq	%rdi, -8(%rbp)
	leaq	-16(%rbp), %rax
	movabsq	$87960930222080, %rcx           # imm = 0x500000000000
	xorq	%rcx, %rax
	movq	$0, (%rax)
	movq	%rsi, -16(%rbp)
	leaq	-20(%rbp), %rax
	movabsq	$87960930222080, %rcx           # imm = 0x500000000000
	xorq	%rcx, %rax
	movl	$0, (%rax)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -56(%rbp)                 # 8-byte Spill
	leaq	-8(%rbp), %rax
	movabsq	$87960930222080, %rdx           # imm = 0x500000000000
	xorq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	movl	-20(%rbp), %edx
	movl	%edx, -40(%rbp)                 # 4-byte Spill
	leaq	-20(%rbp), %rdx
	movabsq	$87960930222080, %rsi           # imm = 0x500000000000
	xorq	%rsi, %rdx
	movl	(%rdx), %edx
	movl	%edx, -36(%rbp)                 # 4-byte Spill
	orq	$0, %rax
	orq	$0, %rax
	addq	$8, %rcx
	movq	%rcx, -32(%rbp)                 # 8-byte Spill
	cmpq	$0, %rax
	je	.LBB3_2
# %bb.1:
	callq	__msan_warning_noreturn@PLT
.LBB3_2:
	movl	-40(%rbp), %ecx                 # 4-byte Reload
	movl	-36(%rbp), %eax                 # 4-byte Reload
	movq	-32(%rbp), %rsi                 # 8-byte Reload
	movl	(%rsi), %edx
	movabsq	$87960930222080, %rdi           # imm = 0x500000000000
	xorq	%rdi, %rsi
	orl	(%rsi), %eax
	cmpl	%edx, %ecx
	setg	%cl
	movb	%cl, -81(%rbp)                  # 1-byte Spill
	cmpl	$0, %eax
	je	.LBB3_4
# %bb.3:
	callq	__msan_warning_noreturn@PLT
.LBB3_4:
	movb	-81(%rbp), %al                  # 1-byte Reload
	testb	$1, %al
	jne	.LBB3_5
	jmp	.LBB3_20
.LBB3_5:                                # %if.then
	movq	-48(%rbp), %rax                 # 8-byte Reload
	orq	$0, %rax
	orq	$0, %rax
	cmpq	$0, %rax
	je	.LBB3_7
# %bb.6:
	callq	__msan_warning_noreturn@PLT
.LBB3_7:
	movq	-56(%rbp), %rax                 # 8-byte Reload
	movq	(%rax), %rcx
	movq	%rcx, -104(%rbp)                # 8-byte Spill
	movabsq	$87960930222080, %rdx           # imm = 0x500000000000
	xorq	%rdx, %rax
	movq	(%rax), %rdx
	movq	%rdx, -96(%rbp)                 # 8-byte Spill
	movq	%rcx, %rsi
	xorq	$0, %rsi
	orq	$0, %rdx
	cmpq	$0, %rdx
	setne	%al
	xorq	$-1, %rdx
	andq	%rsi, %rdx
	cmpq	$0, %rdx
	sete	%dl
	andb	%dl, %al
	cmpq	$0, %rcx
	sete	%cl
	movb	%cl, -82(%rbp)                  # 1-byte Spill
	testb	$1, %al
	jne	.LBB3_8
	jmp	.LBB3_9
.LBB3_8:
	callq	__msan_warning_noreturn@PLT
.LBB3_9:
	movb	-82(%rbp), %al                  # 1-byte Reload
	testb	$1, %al
	jne	.LBB3_13
	jmp	.LBB3_10
.LBB3_10:                               # %delete.notnull
	movq	-96(%rbp), %rax                 # 8-byte Reload
	cmpq	$0, %rax
	je	.LBB3_12
# %bb.11:
	callq	__msan_warning_noreturn@PLT
.LBB3_12:
	movq	-104(%rbp), %rdi                # 8-byte Reload
	callq	_ZdaPv@PLT
.LBB3_13:                               # %delete.end
	movl	-20(%rbp), %ecx
	leaq	-20(%rbp), %rax
	movabsq	$87960930222080, %rdx           # imm = 0x500000000000
	xorq	%rdx, %rax
	movslq	(%rax), %rax
	movslq	%ecx, %rcx
	movq	%rcx, -112(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	je	.LBB3_15
# %bb.14:
	callq	__msan_warning_noreturn@PLT
.LBB3_15:
	movq	-112(%rbp), %rdi                # 8-byte Reload
	callq	_Znam@PLT
	movq	%rax, %rcx
	movq	-48(%rbp), %rax                 # 8-byte Reload
	movq	%rcx, -120(%rbp)                # 8-byte Spill
	orq	$0, %rax
	orq	$0, %rax
	cmpq	$0, %rax
	je	.LBB3_17
# %bb.16:
	callq	__msan_warning_noreturn@PLT
.LBB3_17:
	movq	-56(%rbp), %rcx                 # 8-byte Reload
	movq	-48(%rbp), %rax                 # 8-byte Reload
	movq	-120(%rbp), %rdx                # 8-byte Reload
	movabsq	$87960930222080, %rdi           # imm = 0x500000000000
	movq	%rcx, %rsi
	xorq	%rdi, %rsi
	movq	$0, (%rsi)
	movq	%rdx, (%rcx)
	movl	-20(%rbp), %edx
	movl	%edx, -136(%rbp)                # 4-byte Spill
	leaq	-20(%rbp), %rdx
	movabsq	$87960930222080, %rsi           # imm = 0x500000000000
	xorq	%rsi, %rdx
	movl	(%rdx), %edx
	movl	%edx, -132(%rbp)                # 4-byte Spill
	orq	$0, %rax
	orq	$0, %rax
	addq	$8, %rcx
	movq	%rcx, -128(%rbp)                # 8-byte Spill
	cmpq	$0, %rax
	je	.LBB3_19
# %bb.18:
	callq	__msan_warning_noreturn@PLT
.LBB3_19:
	movq	-128(%rbp), %rax                # 8-byte Reload
	movl	-136(%rbp), %ecx                # 4-byte Reload
	movl	-132(%rbp), %esi                # 4-byte Reload
	movabsq	$87960930222080, %rdi           # imm = 0x500000000000
	movq	%rax, %rdx
	xorq	%rdi, %rdx
	movl	%esi, (%rdx)
	movl	%ecx, (%rax)
.LBB3_20:                               # %if.end
	movq	-48(%rbp), %rax                 # 8-byte Reload
	orq	$0, %rax
	orq	$0, %rax
	cmpq	$0, %rax
	je	.LBB3_22
# %bb.21:
	callq	__msan_warning_noreturn@PLT
.LBB3_22:
	movq	-56(%rbp), %rax                 # 8-byte Reload
	movq	(%rax), %rdi
	movq	-16(%rbp), %rsi
	movslq	-20(%rbp), %rdx
	callq	__msan_memcpy@PLT
	addq	$144, %rsp
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
	subq	$80, %rsp
	movabsq	$87960930222080, %rcx           # imm = 0x500000000000
	leaq	-24(%rbp), %rax
	xorq	%rcx, %rax
	movq	$-1, (%rax)
	leaq	-28(%rbp), %rax
	xorq	%rcx, %rax
	movl	$-1, (%rax)
	leaq	-16(%rbp), %rdi
	movq	%rdi, -48(%rbp)                 # 8-byte Spill
	movq	%rdi, %rax
	xorq	%rcx, %rax
	pcmpeqd	%xmm0, %xmm0
	movups	%xmm0, (%rax)
	movl	$100, %esi
	callq	_ZN6BufferC2Ei
	movq	-48(%rbp), %rdi                 # 8-byte Reload
.Ltmp0:
	callq	_Z3fooR6Buffer
.Ltmp1:
	jmp	.LBB4_1
.LBB4_1:                                # %invoke.cont
	leaq	-40(%rbp), %rdi
	movabsq	$87960930222080, %rax           # imm = 0x500000000000
	xorq	%rax, %rdi
	movl	$255, %esi
	movl	$8, %edx
	callq	memset@PLT
	leaq	-16(%rbp), %rdi
	callq	_ZN6Buffer4readEv
	movq	%rax, -56(%rbp)                 # 8-byte Spill
# %bb.2:                                # %invoke.cont2
	movq	-56(%rbp), %rax                 # 8-byte Reload
	leaq	-40(%rbp), %rcx
	movabsq	$87960930222080, %rdx           # imm = 0x500000000000
	xorq	%rdx, %rcx
	movq	$0, (%rcx)
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)                 # 8-byte Spill
	leaq	-40(%rbp), %rax
	movabsq	$87960930222080, %rcx           # imm = 0x500000000000
	xorq	%rcx, %rax
	movq	(%rax), %rax
	orq	$0, %rax
	cmpq	$0, %rax
	je	.LBB4_4
# %bb.3:
	callq	__msan_warning_noreturn@PLT
.LBB4_4:
	movq	-64(%rbp), %rcx                 # 8-byte Reload
	movb	(%rcx), %al
	movabsq	$87960930222080, %rdx           # imm = 0x500000000000
	xorq	%rdx, %rcx
	movsbl	(%rcx), %edx
	movsbl	%al, %ecx
	movl	%ecx, %esi
	xorl	$65, %esi
	orl	$0, %edx
	cmpl	$0, %edx
	setne	%al
	xorl	$-1, %edx
	andl	%esi, %edx
	cmpl	$0, %edx
	sete	%dl
	andb	%dl, %al
	cmpl	$65, %ecx
	sete	%cl
	movb	%cl, -65(%rbp)                  # 1-byte Spill
	testb	$1, %al
	jne	.LBB4_5
	jmp	.LBB4_6
.LBB4_5:
	callq	__msan_warning_noreturn@PLT
.LBB4_6:
	movb	-65(%rbp), %al                  # 1-byte Reload
	testb	$1, %al
	jne	.LBB4_7
	jmp	.LBB4_11
.LBB4_7:                                # %if.then
	movq	__msan_va_arg_overflow_size_tls@GOTTPOFF(%rip), %rax
	movq	$0, %fs:(%rax)
.Ltmp5:
	leaq	.L.str(%rip), %rdi
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	callq	printf@PLT
.Ltmp6:
	jmp	.LBB4_8
.LBB4_8:                                # %invoke.cont3
	jmp	.LBB4_13
.LBB4_9:                                # %lpad
.Ltmp2:
	movq	%rax, %rcx
	movl	%edx, %eax
	leaq	-24(%rbp), %rdx
	movabsq	$87960930222080, %rsi           # imm = 0x500000000000
	xorq	%rsi, %rdx
	movq	$0, (%rdx)
	movq	%rcx, -24(%rbp)
	leaq	-28(%rbp), %rcx
	movabsq	$87960930222080, %rdx           # imm = 0x500000000000
	xorq	%rdx, %rcx
	movl	$0, (%rcx)
	movl	%eax, -28(%rbp)
	jmp	.LBB4_14
.LBB4_10:                               # %lpad1
.Ltmp7:
	movq	%rax, %rcx
	movl	%edx, %eax
	leaq	-24(%rbp), %rdx
	movabsq	$87960930222080, %rsi           # imm = 0x500000000000
	xorq	%rsi, %rdx
	movq	$0, (%rdx)
	movq	%rcx, -24(%rbp)
	leaq	-28(%rbp), %rcx
	movabsq	$87960930222080, %rdx           # imm = 0x500000000000
	xorq	%rdx, %rcx
	movl	$0, (%rcx)
	movl	%eax, -28(%rbp)
	jmp	.LBB4_14
.LBB4_11:                               # %if.else
	movq	__msan_va_arg_overflow_size_tls@GOTTPOFF(%rip), %rax
	movq	$0, %fs:(%rax)
.Ltmp3:
	leaq	.L.str.1(%rip), %rdi
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	callq	printf@PLT
.Ltmp4:
	jmp	.LBB4_12
.LBB4_12:                               # %invoke.cont5
	jmp	.LBB4_13
.LBB4_13:                               # %if.end
	leaq	-16(%rbp), %rdi
	callq	_ZN6BufferD2Ev
	addq	$80, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB4_14:                               # %ehcleanup
	.cfi_def_cfa %rbp, 16
	leaq	-16(%rbp), %rdi
	callq	_ZN6BufferD2Ev
# %bb.15:                               # %eh.resume
	movq	-24(%rbp), %rdi
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
	.uleb128 .Ltmp1-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp5-.Ltmp1                  #   Call between .Ltmp1 and .Ltmp5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp5-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp4-.Ltmp5                  #   Call between .Ltmp5 and .Ltmp4
	.uleb128 .Ltmp7-.Lfunc_begin0           #     jumps to .Ltmp7
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp4-.Lfunc_begin0           # >> Call Site 5 <<
	.uleb128 .Lfunc_end4-.Ltmp4             #   Call between .Ltmp4 and .Lfunc_end4
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
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)                 # 8-byte Spill
	movl	%esi, -44(%rbp)                 # 4-byte Spill
	leaq	-8(%rbp), %rdi
	movabsq	$87960930222080, %rax           # imm = 0x500000000000
	xorq	%rax, %rdi
	movl	$255, %esi
	movl	$8, %edx
	callq	memset@PLT
	leaq	-12(%rbp), %rdi
	movabsq	$87960930222080, %rax           # imm = 0x500000000000
	xorq	%rax, %rdi
	movl	$255, %esi
	movl	$4, %edx
	callq	memset@PLT
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	movl	-44(%rbp), %esi                 # 4-byte Reload
	leaq	-8(%rbp), %rax
	movabsq	$87960930222080, %rcx           # imm = 0x500000000000
	xorq	%rcx, %rax
	movq	$0, (%rax)
	movq	%rdi, -8(%rbp)
	leaq	-12(%rbp), %rax
	movabsq	$87960930222080, %rcx           # imm = 0x500000000000
	xorq	%rcx, %rax
	movl	$0, (%rax)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	leaq	-8(%rbp), %rax
	movabsq	$87960930222080, %rcx           # imm = 0x500000000000
	xorq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	movl	-12(%rbp), %ecx
	leaq	-12(%rbp), %rax
	movabsq	$87960930222080, %rdx           # imm = 0x500000000000
	xorq	%rdx, %rax
	movslq	(%rax), %rax
	movslq	%ecx, %rcx
	movq	%rcx, -24(%rbp)                 # 8-byte Spill
	cmpq	$0, %rax
	je	.LBB5_2
# %bb.1:
	callq	__msan_warning_noreturn@PLT
.LBB5_2:
	movq	-24(%rbp), %rdi                 # 8-byte Reload
	callq	_Znam@PLT
	movq	%rax, %rcx
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movq	%rcx, -64(%rbp)                 # 8-byte Spill
	orq	$0, %rax
	orq	$0, %rax
	cmpq	$0, %rax
	je	.LBB5_4
# %bb.3:
	callq	__msan_warning_noreturn@PLT
.LBB5_4:
	movq	-40(%rbp), %rcx                 # 8-byte Reload
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movq	-64(%rbp), %rdx                 # 8-byte Reload
	movabsq	$87960930222080, %rdi           # imm = 0x500000000000
	movq	%rcx, %rsi
	xorq	%rdi, %rsi
	movq	$0, (%rsi)
	movq	%rdx, (%rcx)
	movl	-12(%rbp), %edx
	movl	%edx, -80(%rbp)                 # 4-byte Spill
	leaq	-12(%rbp), %rdx
	movabsq	$87960930222080, %rsi           # imm = 0x500000000000
	xorq	%rsi, %rdx
	movl	(%rdx), %edx
	movl	%edx, -76(%rbp)                 # 4-byte Spill
	orq	$0, %rax
	orq	$0, %rax
	addq	$8, %rcx
	movq	%rcx, -72(%rbp)                 # 8-byte Spill
	cmpq	$0, %rax
	je	.LBB5_6
# %bb.5:
	callq	__msan_warning_noreturn@PLT
.LBB5_6:
	movq	-72(%rbp), %rax                 # 8-byte Reload
	movl	-80(%rbp), %ecx                 # 4-byte Reload
	movl	-76(%rbp), %esi                 # 4-byte Reload
	movabsq	$87960930222080, %rdi           # imm = 0x500000000000
	movq	%rax, %rdx
	xorq	%rdi, %rdx
	movl	%esi, (%rdx)
	movl	%ecx, (%rax)
	addq	$80, %rsp
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
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)                 # 8-byte Spill
	leaq	-8(%rbp), %rdi
	movabsq	$87960930222080, %rax           # imm = 0x500000000000
	xorq	%rax, %rdi
	movl	$255, %esi
	movl	$8, %edx
	callq	memset@PLT
	movq	-24(%rbp), %rdi                 # 8-byte Reload
	leaq	-8(%rbp), %rax
	movabsq	$87960930222080, %rcx           # imm = 0x500000000000
	xorq	%rcx, %rax
	movq	$0, (%rax)
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)                 # 8-byte Spill
	leaq	-8(%rbp), %rax
	movabsq	$87960930222080, %rcx           # imm = 0x500000000000
	xorq	%rcx, %rax
	movq	(%rax), %rax
	orq	$0, %rax
	orq	$0, %rax
	cmpq	$0, %rax
	je	.LBB6_2
# %bb.1:
	callq	__msan_warning_noreturn@PLT
.LBB6_2:
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movq	(%rax), %rcx
	movq	%rcx, -32(%rbp)                 # 8-byte Spill
	movabsq	$87960930222080, %rcx           # imm = 0x500000000000
	xorq	%rcx, %rax
	cmpq	$0, (%rax)
	je	.LBB6_4
# %bb.3:
	callq	__msan_warning_noreturn@PLT
.LBB6_4:
	movq	-32(%rbp), %rax                 # 8-byte Reload
	addq	$32, %rsp
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
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)                 # 8-byte Spill
	leaq	-8(%rbp), %rdi
	movabsq	$87960930222080, %rax           # imm = 0x500000000000
	xorq	%rax, %rdi
	movl	$255, %esi
	movl	$8, %edx
	callq	memset@PLT
	movq	-24(%rbp), %rdi                 # 8-byte Reload
	leaq	-8(%rbp), %rax
	movabsq	$87960930222080, %rcx           # imm = 0x500000000000
	xorq	%rcx, %rax
	movq	$0, (%rax)
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)                 # 8-byte Spill
	leaq	-8(%rbp), %rax
	movabsq	$87960930222080, %rcx           # imm = 0x500000000000
	xorq	%rcx, %rax
	movq	(%rax), %rax
	orq	$0, %rax
	orq	$0, %rax
	cmpq	$0, %rax
	je	.LBB7_2
# %bb.1:
	callq	__msan_warning_noreturn@PLT
.LBB7_2:
	movq	-16(%rbp), %rax                 # 8-byte Reload
	movq	(%rax), %rcx
	movq	%rcx, -48(%rbp)                 # 8-byte Spill
	movabsq	$87960930222080, %rdx           # imm = 0x500000000000
	xorq	%rdx, %rax
	movq	(%rax), %rdx
	movq	%rdx, -40(%rbp)                 # 8-byte Spill
	movq	%rcx, %rsi
	xorq	$0, %rsi
	orq	$0, %rdx
	cmpq	$0, %rdx
	setne	%al
	xorq	$-1, %rdx
	andq	%rsi, %rdx
	cmpq	$0, %rdx
	sete	%dl
	andb	%dl, %al
	cmpq	$0, %rcx
	sete	%cl
	movb	%cl, -25(%rbp)                  # 1-byte Spill
	testb	$1, %al
	jne	.LBB7_3
	jmp	.LBB7_4
.LBB7_3:
	callq	__msan_warning_noreturn@PLT
.LBB7_4:
	movb	-25(%rbp), %al                  # 1-byte Reload
	testb	$1, %al
	jne	.LBB7_8
	jmp	.LBB7_5
.LBB7_5:                                # %delete.notnull
	movq	-40(%rbp), %rax                 # 8-byte Reload
	cmpq	$0, %rax
	je	.LBB7_7
# %bb.6:
	callq	__msan_warning_noreturn@PLT
.LBB7_7:
	movq	-48(%rbp), %rdi                 # 8-byte Reload
	callq	_ZdaPv@PLT
.LBB7_8:                                # %delete.end
	movq	-16(%rbp), %rdi                 # 8-byte Reload
	movl	$12, %esi
	callq	__sanitizer_dtor_callback_fields@PLT
	addq	$48, %rsp
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
	leaq	-4(%rbp), %rdi
	movabsq	$87960930222080, %rax           # imm = 0x500000000000
	xorq	%rax, %rdi
	movl	$255, %esi
	movl	$4, %edx
	callq	memset@PLT
	leaq	-4(%rbp), %rax
	movabsq	$87960930222080, %rcx           # imm = 0x500000000000
	xorq	%rcx, %rax
	movl	$0, (%rax)
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
.Lfunc_end9:
	.size	msan.module_ctor, .Lfunc_end9-msan.module_ctor
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"data starts with A\n"
	.size	.L.str, 20

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"data does not start with A\n"
	.size	.L.str.1, 28

	.section	.init_array.0,"aw",@init_array
	.p2align	3, 0x90
	.quad	msan.module_ctor
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.DW.ref.__gxx_personality_v0,"aGw",@progbits,DW.ref.__gxx_personality_v0,comdat
	.p2align	3, 0x0
	.type	DW.ref.__gxx_personality_v0,@object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
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
	.addrsig_sym __sanitizer_dtor_callback_fields
	.addrsig_sym __msan_init
	.addrsig_sym msan.module_ctor
	.addrsig_sym __msan_memcpy
	.addrsig_sym __msan_warning_noreturn
	.addrsig_sym _Unwind_Resume
