	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.globl	_makeNIST_P192L         ## -- Begin function makeNIST_P192L
	.p2align	4, 0x90
_makeNIST_P192L:                        ## @makeNIST_P192L
## %bb.0:
	movq	$-1, %rax
	movq	$-2, %rdx
	movq	$-1, %rcx
	retq
                                        ## -- End function
	.globl	_mcl_fpDbl_mod_NIST_P192L ## -- Begin function mcl_fpDbl_mod_NIST_P192L
	.p2align	4, 0x90
_mcl_fpDbl_mod_NIST_P192L:              ## @mcl_fpDbl_mod_NIST_P192L
## %bb.0:
	pushq	%rbx
	movq	16(%rsi), %r10
	movq	24(%rsi), %r8
	movq	40(%rsi), %r9
	movq	8(%rsi), %rax
	addq	%r9, %rax
	adcq	$0, %r10
	setb	%cl
	movzbl	%cl, %ebx
	movq	32(%rsi), %r11
	movq	(%rsi), %rcx
	addq	%r8, %rcx
	adcq	%r11, %rax
	adcq	%r9, %r10
	adcq	$0, %rbx
	addq	%r9, %rcx
	adcq	%r8, %rax
	adcq	%r11, %r10
	adcq	$0, %rbx
	addq	%rbx, %rcx
	adcq	%rax, %rbx
	adcq	$0, %r10
	setb	%al
	movzbl	%al, %r8d
	movq	%rcx, %rsi
	addq	$1, %rsi
	movq	%rbx, %rdx
	adcq	$1, %rdx
	movq	%r10, %rax
	adcq	$0, %rax
	adcq	$-1, %r8
	testb	$1, %r8b
	cmovneq	%rbx, %rdx
	movq	%rdx, 8(%rdi)
	cmovneq	%rcx, %rsi
	movq	%rsi, (%rdi)
	cmovneq	%r10, %rax
	movq	%rax, 16(%rdi)
	popq	%rbx
	retq
                                        ## -- End function
	.globl	_mcl_fp_sqr_NIST_P192L  ## -- Begin function mcl_fp_sqr_NIST_P192L
	.p2align	4, 0x90
_mcl_fp_sqr_NIST_P192L:                 ## @mcl_fp_sqr_NIST_P192L
## %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	%rdi, -8(%rsp)          ## 8-byte Spill
	movq	16(%rsi), %r11
	movq	(%rsi), %rbx
	movq	8(%rsi), %rcx
	movq	%r11, %rax
	mulq	%rcx
	movq	%rdx, %rdi
	movq	%rax, %r14
	movq	%rcx, %rax
	mulq	%rcx
	movq	%rdx, %r15
	movq	%rax, %r12
	movq	%rcx, %rax
	mulq	%rbx
	movq	%rax, %r13
	movq	%rdx, %rcx
	addq	%rdx, %r12
	adcq	%r14, %r15
	movq	%rdi, %r10
	adcq	$0, %r10
	movq	%r11, %rax
	mulq	%rbx
	movq	%rdx, %r9
	movq	%rax, %rbp
	movq	%rbx, %rax
	mulq	%rbx
	movq	%rax, %r8
	movq	%rdx, %rsi
	addq	%r13, %rsi
	adcq	%rbp, %rcx
	movq	%r9, %rbx
	adcq	$0, %rbx
	addq	%r13, %rsi
	adcq	%r12, %rcx
	adcq	%r15, %rbx
	adcq	$0, %r10
	movq	%r11, %rax
	mulq	%r11
	addq	%r14, %r9
	adcq	%rdi, %rax
	adcq	$0, %rdx
	addq	%rbp, %rcx
	adcq	%rbx, %r9
	adcq	%r10, %rax
	adcq	$0, %rdx
	addq	%rdx, %rsi
	adcq	$0, %rcx
	setb	%bl
	movzbl	%bl, %edi
	addq	%r9, %r8
	adcq	%rax, %rsi
	adcq	%rdx, %rcx
	adcq	$0, %rdi
	addq	%rdx, %r8
	adcq	%r9, %rsi
	adcq	%rax, %rcx
	adcq	$0, %rdi
	addq	%rdi, %r8
	adcq	%rsi, %rdi
	adcq	$0, %rcx
	setb	%al
	movzbl	%al, %eax
	movq	%r8, %rdx
	addq	$1, %rdx
	movq	%rdi, %rsi
	adcq	$1, %rsi
	movq	%rcx, %rbp
	adcq	$0, %rbp
	adcq	$-1, %rax
	testb	$1, %al
	cmovneq	%rdi, %rsi
	movq	-8(%rsp), %rax          ## 8-byte Reload
	movq	%rsi, 8(%rax)
	cmovneq	%r8, %rdx
	movq	%rdx, (%rax)
	cmovneq	%rcx, %rbp
	movq	%rbp, 16(%rax)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
                                        ## -- End function
	.globl	_mcl_fp_mulNIST_P192L   ## -- Begin function mcl_fp_mulNIST_P192L
	.p2align	4, 0x90
_mcl_fp_mulNIST_P192L:                  ## @mcl_fp_mulNIST_P192L
## %bb.0:
	pushq	%r14
	pushq	%rbx
	subq	$56, %rsp
	movq	%rdi, %r14
	leaq	8(%rsp), %rdi
	callq	_mcl_fpDbl_mulPre3L
	movq	24(%rsp), %r9
	movq	32(%rsp), %r8
	movq	48(%rsp), %rdi
	movq	16(%rsp), %rbx
	addq	%rdi, %rbx
	adcq	$0, %r9
	setb	%cl
	movzbl	%cl, %esi
	movq	40(%rsp), %rdx
	movq	8(%rsp), %rcx
	addq	%r8, %rcx
	adcq	%rdx, %rbx
	adcq	%rdi, %r9
	adcq	$0, %rsi
	addq	%rdi, %rcx
	adcq	%r8, %rbx
	adcq	%rdx, %r9
	adcq	$0, %rsi
	addq	%rsi, %rcx
	adcq	%rbx, %rsi
	adcq	$0, %r9
	setb	%bl
	movzbl	%bl, %ebx
	movq	%rcx, %rdi
	addq	$1, %rdi
	movq	%rsi, %rdx
	adcq	$1, %rdx
	movq	%r9, %rax
	adcq	$0, %rax
	adcq	$-1, %rbx
	testb	$1, %bl
	cmovneq	%rsi, %rdx
	movq	%rdx, 8(%r14)
	cmovneq	%rcx, %rdi
	movq	%rdi, (%r14)
	cmovneq	%r9, %rax
	movq	%rax, 16(%r14)
	addq	$56, %rsp
	popq	%rbx
	popq	%r14
	retq
                                        ## -- End function
	.globl	_mcl_fpDbl_mod_NIST_P521L ## -- Begin function mcl_fpDbl_mod_NIST_P521L
	.p2align	4, 0x90
_mcl_fpDbl_mod_NIST_P521L:              ## @mcl_fpDbl_mod_NIST_P521L
## %bb.0:
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	120(%rsi), %r9
	movq	128(%rsi), %r14
	movq	%r14, %r8
	shldq	$55, %r9, %r8
	movq	112(%rsi), %r10
	shldq	$55, %r10, %r9
	movq	104(%rsi), %r11
	shldq	$55, %r11, %r10
	movq	96(%rsi), %r15
	shldq	$55, %r15, %r11
	movq	88(%rsi), %r12
	shldq	$55, %r12, %r15
	movq	80(%rsi), %rbx
	shldq	$55, %rbx, %r12
	movq	72(%rsi), %rax
	shldq	$55, %rax, %rbx
	movq	64(%rsi), %rcx
	shldq	$55, %rcx, %rax
	shrq	$9, %r14
	andl	$511, %ecx              ## imm = 0x1FF
	addq	(%rsi), %rax
	adcq	8(%rsi), %rbx
	adcq	16(%rsi), %r12
	adcq	24(%rsi), %r15
	adcq	32(%rsi), %r11
	adcq	40(%rsi), %r10
	adcq	48(%rsi), %r9
	adcq	56(%rsi), %r8
	adcq	%r14, %rcx
	movl	%ecx, %esi
	shrl	$9, %esi
	andl	$1, %esi
	addq	%rax, %rsi
	adcq	$0, %rbx
	adcq	$0, %r12
	adcq	$0, %r15
	adcq	$0, %r11
	adcq	$0, %r10
	adcq	$0, %r9
	adcq	$0, %r8
	adcq	$0, %rcx
	movq	%rsi, %rax
	andq	%r12, %rax
	andq	%r15, %rax
	andq	%r11, %rax
	andq	%r10, %rax
	andq	%r9, %rax
	andq	%r8, %rax
	movq	%rcx, %rdx
	orq	$-512, %rdx             ## imm = 0xFE00
	andq	%rax, %rdx
	andq	%rbx, %rdx
	cmpq	$-1, %rdx
	je	LBB4_1
## %bb.3:                               ## %nonzero
	movq	%rbx, 8(%rdi)
	movq	%rsi, (%rdi)
	movq	%r12, 16(%rdi)
	movq	%r15, 24(%rdi)
	movq	%r11, 32(%rdi)
	movq	%r10, 40(%rdi)
	movq	%r9, 48(%rdi)
	movq	%r8, 56(%rdi)
	andl	$511, %ecx              ## imm = 0x1FF
	movq	%rcx, 64(%rdi)
	jmp	LBB4_2
LBB4_1:                                 ## %zero
	movq	$0, 64(%rdi)
	movq	$0, 56(%rdi)
	movq	$0, 48(%rdi)
	movq	$0, 40(%rdi)
	movq	$0, 32(%rdi)
	movq	$0, 24(%rdi)
	movq	$0, 16(%rdi)
	movq	$0, 8(%rdi)
	movq	$0, (%rdi)
LBB4_2:                                 ## %zero
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
                                        ## -- End function
	.globl	_mcl_fp_mulUnitPre1L    ## -- Begin function mcl_fp_mulUnitPre1L
	.p2align	4, 0x90
_mcl_fp_mulUnitPre1L:                   ## @mcl_fp_mulUnitPre1L
## %bb.0:
	movq	%rdx, %rax
	mulq	(%rsi)
	movq	%rdx, 8(%rdi)
	movq	%rax, (%rdi)
	retq
                                        ## -- End function
	.globl	_mcl_fpDbl_mulPre1L     ## -- Begin function mcl_fpDbl_mulPre1L
	.p2align	4, 0x90
_mcl_fpDbl_mulPre1L:                    ## @mcl_fpDbl_mulPre1L
## %bb.0:
	movq	(%rdx), %rax
	mulq	(%rsi)
	movq	%rdx, 8(%rdi)
	movq	%rax, (%rdi)
	retq
                                        ## -- End function
	.globl	_mcl_fpDbl_sqrPre1L     ## -- Begin function mcl_fpDbl_sqrPre1L
	.p2align	4, 0x90
_mcl_fpDbl_sqrPre1L:                    ## @mcl_fpDbl_sqrPre1L
## %bb.0:
	movq	(%rsi), %rax
	mulq	%rax
	movq	%rdx, 8(%rdi)
	movq	%rax, (%rdi)
	retq
                                        ## -- End function
	.globl	_mcl_fp_mont1L          ## -- Begin function mcl_fp_mont1L
	.p2align	4, 0x90
_mcl_fp_mont1L:                         ## @mcl_fp_mont1L
## %bb.0:
	movq	(%rsi), %rax
	mulq	(%rdx)
	movq	%rax, %rsi
	movq	%rdx, %r8
	movq	-8(%rcx), %rax
	imulq	%rsi, %rax
	movq	(%rcx), %rcx
	mulq	%rcx
	addq	%rsi, %rax
	adcq	%r8, %rdx
	setb	%al
	movzbl	%al, %eax
	movq	%rdx, %rsi
	subq	%rcx, %rsi
	sbbq	$0, %rax
	testb	$1, %al
	cmovneq	%rdx, %rsi
	movq	%rsi, (%rdi)
	retq
                                        ## -- End function
	.globl	_mcl_fp_montNF1L        ## -- Begin function mcl_fp_montNF1L
	.p2align	4, 0x90
_mcl_fp_montNF1L:                       ## @mcl_fp_montNF1L
## %bb.0:
	movq	(%rsi), %rax
	mulq	(%rdx)
	movq	%rax, %rsi
	movq	%rdx, %r8
	movq	-8(%rcx), %rax
	imulq	%rsi, %rax
	movq	(%rcx), %rcx
	mulq	%rcx
	addq	%rsi, %rax
	adcq	%r8, %rdx
	movq	%rdx, %rax
	subq	%rcx, %rax
	cmovsq	%rdx, %rax
	movq	%rax, (%rdi)
	retq
                                        ## -- End function
	.globl	_mcl_fp_montRed1L       ## -- Begin function mcl_fp_montRed1L
	.p2align	4, 0x90
_mcl_fp_montRed1L:                      ## @mcl_fp_montRed1L
## %bb.0:
	movq	(%rsi), %rcx
	movq	-8(%rdx), %rax
	imulq	%rcx, %rax
	movq	(%rdx), %r8
	mulq	%r8
	addq	%rcx, %rax
	adcq	8(%rsi), %rdx
	setb	%al
	movzbl	%al, %eax
	movq	%rdx, %rcx
	subq	%r8, %rcx
	sbbq	$0, %rax
	testb	$1, %al
	cmovneq	%rdx, %rcx
	movq	%rcx, (%rdi)
	retq
                                        ## -- End function
	.globl	_mcl_fp_addPre1L        ## -- Begin function mcl_fp_addPre1L
	.p2align	4, 0x90
_mcl_fp_addPre1L:                       ## @mcl_fp_addPre1L
## %bb.0:
	movq	(%rdx), %rcx
	xorl	%eax, %eax
	addq	(%rsi), %rcx
	movq	%rcx, (%rdi)
	setb	%al
	retq
                                        ## -- End function
	.globl	_mcl_fp_subPre1L        ## -- Begin function mcl_fp_subPre1L
	.p2align	4, 0x90
_mcl_fp_subPre1L:                       ## @mcl_fp_subPre1L
## %bb.0:
	movq	(%rsi), %rcx
	xorl	%eax, %eax
	subq	(%rdx), %rcx
	movq	%rcx, (%rdi)
	sbbq	$0, %rax
	andl	$1, %eax
	retq
                                        ## -- End function
	.globl	_mcl_fp_shr1_1L         ## -- Begin function mcl_fp_shr1_1L
	.p2align	4, 0x90
_mcl_fp_shr1_1L:                        ## @mcl_fp_shr1_1L
## %bb.0:
	movq	(%rsi), %rax
	shrq	%rax
	movq	%rax, (%rdi)
	retq
                                        ## -- End function
	.globl	_mcl_fp_add1L           ## -- Begin function mcl_fp_add1L
	.p2align	4, 0x90
_mcl_fp_add1L:                          ## @mcl_fp_add1L
## %bb.0:
	movq	(%rdx), %rax
	xorl	%edx, %edx
	addq	(%rsi), %rax
	movq	%rax, (%rdi)
	setb	%dl
	subq	(%rcx), %rax
	sbbq	$0, %rdx
	testb	$1, %dl
	jne	LBB14_2
## %bb.1:                               ## %nocarry
	movq	%rax, (%rdi)
LBB14_2:                                ## %carry
	retq
                                        ## -- End function
	.globl	_mcl_fp_addNF1L         ## -- Begin function mcl_fp_addNF1L
	.p2align	4, 0x90
_mcl_fp_addNF1L:                        ## @mcl_fp_addNF1L
## %bb.0:
	movq	(%rdx), %rax
	addq	(%rsi), %rax
	movq	%rax, %rdx
	subq	(%rcx), %rdx
	cmovsq	%rax, %rdx
	movq	%rdx, (%rdi)
	retq
                                        ## -- End function
	.globl	_mcl_fp_sub1L           ## -- Begin function mcl_fp_sub1L
	.p2align	4, 0x90
_mcl_fp_sub1L:                          ## @mcl_fp_sub1L
## %bb.0:
	movq	(%rsi), %rax
	xorl	%esi, %esi
	subq	(%rdx), %rax
	movq	%rax, (%rdi)
	sbbq	$0, %rsi
	testb	$1, %sil
	jne	LBB16_2
## %bb.1:                               ## %nocarry
	retq
LBB16_2:                                ## %carry
	addq	(%rcx), %rax
	movq	%rax, (%rdi)
	retq
                                        ## -- End function
	.globl	_mcl_fp_subNF1L         ## -- Begin function mcl_fp_subNF1L
	.p2align	4, 0x90
_mcl_fp_subNF1L:                        ## @mcl_fp_subNF1L
## %bb.0:
	movq	(%rsi), %rax
	subq	(%rdx), %rax
	jns	LBB17_1
## %bb.2:
	movq	(%rcx), %rcx
	addq	%rax, %rcx
	movq	%rcx, (%rdi)
	retq
LBB17_1:
	xorl	%ecx, %ecx
	addq	%rax, %rcx
	movq	%rcx, (%rdi)
	retq
                                        ## -- End function
	.globl	_mcl_fpDbl_add1L        ## -- Begin function mcl_fpDbl_add1L
	.p2align	4, 0x90
_mcl_fpDbl_add1L:                       ## @mcl_fpDbl_add1L
## %bb.0:
	movq	(%rdx), %rax
	movq	8(%rdx), %rdx
	addq	(%rsi), %rax
	adcq	8(%rsi), %rdx
	movq	%rax, (%rdi)
	setb	%al
	movzbl	%al, %eax
	movq	%rdx, %rsi
	subq	(%rcx), %rsi
	sbbq	$0, %rax
	testb	$1, %al
	cmovneq	%rdx, %rsi
	movq	%rsi, 8(%rdi)
	retq
                                        ## -- End function
	.globl	_mcl_fpDbl_sub1L        ## -- Begin function mcl_fpDbl_sub1L
	.p2align	4, 0x90
_mcl_fpDbl_sub1L:                       ## @mcl_fpDbl_sub1L
## %bb.0:
	movq	(%rsi), %rax
	movq	8(%rsi), %r8
	xorl	%esi, %esi
	subq	(%rdx), %rax
	sbbq	8(%rdx), %r8
	movq	%rax, (%rdi)
	sbbq	$0, %rsi
	andl	$1, %esi
	negq	%rsi
	andq	(%rcx), %rsi
	addq	%r8, %rsi
	movq	%rsi, 8(%rdi)
	retq
                                        ## -- End function
	.globl	_mcl_fp_mulUnitPre2L    ## -- Begin function mcl_fp_mulUnitPre2L
	.p2align	4, 0x90
_mcl_fp_mulUnitPre2L:                   ## @mcl_fp_mulUnitPre2L
## %bb.0:
	movq	%rdx, %r8
	movq	%rdx, %rax
	mulq	8(%rsi)
	movq	%rdx, %rcx
	movq	%rax, %r9
	movq	%r8, %rax
	mulq	(%rsi)
	movq	%rax, (%rdi)
	addq	%r9, %rdx
	movq	%rdx, 8(%rdi)
	adcq	$0, %rcx
	movq	%rcx, 16(%rdi)
	retq
                                        ## -- End function
	.globl	_mcl_fpDbl_mulPre2L     ## -- Begin function mcl_fpDbl_mulPre2L
	.p2align	4, 0x90
_mcl_fpDbl_mulPre2L:                    ## @mcl_fpDbl_mulPre2L
## %bb.0:
	pushq	%rbx
	movq	%rdx, %rcx
	movq	(%rsi), %r8
	movq	8(%rsi), %r10
	movq	(%rdx), %rbx
	movq	%r8, %rax
	mulq	%rbx
	movq	%rdx, %r9
	movq	%rax, (%rdi)
	movq	8(%rcx), %rcx
	movq	%rcx, %rax
	mulq	%r10
	movq	%rdx, %rsi
	movq	%rax, %r11
	movq	%rcx, %rax
	mulq	%r8
	movq	%rax, %r8
	movq	%rdx, %rcx
	addq	%r11, %rcx
	adcq	$0, %rsi
	movq	%r10, %rax
	mulq	%rbx
	addq	%r9, %rax
	adcq	$0, %rdx
	addq	%r8, %rax
	movq	%rax, 8(%rdi)
	adcq	%rcx, %rdx
	movq	%rdx, 16(%rdi)
	adcq	$0, %rsi
	movq	%rsi, 24(%rdi)
	popq	%rbx
	retq
                                        ## -- End function
	.globl	_mcl_fpDbl_sqrPre2L     ## -- Begin function mcl_fpDbl_sqrPre2L
	.p2align	4, 0x90
_mcl_fpDbl_sqrPre2L:                    ## @mcl_fpDbl_sqrPre2L
## %bb.0:
	movq	(%rsi), %r8
	movq	8(%rsi), %r9
	movq	%r8, %rax
	mulq	%r8
	movq	%rdx, %rcx
	movq	%rax, (%rdi)
	movq	%r9, %rax
	mulq	%r9
	movq	%rdx, %rsi
	movq	%rax, %r10
	movq	%r9, %rax
	mulq	%r8
	addq	%rdx, %r10
	adcq	$0, %rsi
	addq	%rax, %rcx
	adcq	$0, %rdx
	addq	%rax, %rcx
	movq	%rcx, 8(%rdi)
	adcq	%r10, %rdx
	movq	%rdx, 16(%rdi)
	adcq	$0, %rsi
	movq	%rsi, 24(%rdi)
	retq
                                        ## -- End function
	.globl	_mcl_fp_mont2L          ## -- Begin function mcl_fp_mont2L
	.p2align	4, 0x90
_mcl_fp_mont2L:                         ## @mcl_fp_mont2L
## %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	%rdi, -8(%rsp)          ## 8-byte Spill
	movq	(%rsi), %r8
	movq	8(%rsi), %r10
	movq	(%rdx), %rsi
	movq	8(%rdx), %r9
	movq	%r8, %rax
	mulq	%rsi
	movq	%rax, %r14
	movq	%rdx, %r15
	movq	-8(%rcx), %r11
	movq	(%rcx), %rbp
	movq	%r11, %rbx
	imulq	%rax, %rbx
	movq	8(%rcx), %rdi
	movq	%rbx, %rax
	mulq	%rdi
	movq	%rdx, %r13
	movq	%rax, %r12
	movq	%rbx, %rax
	mulq	%rbp
	movq	%rdx, %rbx
	movq	%rax, %rcx
	movq	%r10, %rax
	mulq	%rsi
	addq	%r15, %rax
	adcq	$0, %rdx
	addq	%r12, %rbx
	adcq	$0, %r13
	addq	%r14, %rcx
	adcq	%rax, %rbx
	adcq	%rdx, %r13
	setb	%al
	movzbl	%al, %r14d
	movq	%r9, %rax
	mulq	%r10
	movq	%rdx, %r15
	movq	%rax, %r10
	movq	%r9, %rax
	mulq	%r8
	movq	%rax, %r8
	movq	%rdx, %rsi
	addq	%r10, %rsi
	adcq	$0, %r15
	addq	%rbx, %r8
	adcq	%r13, %rsi
	adcq	%r14, %r15
	setb	%al
	movzbl	%al, %ecx
	imulq	%r8, %r11
	movq	%r11, %rax
	mulq	%rdi
	movq	%rdx, %rbx
	movq	%rax, %r9
	movq	%r11, %rax
	mulq	%rbp
	addq	%r9, %rdx
	adcq	$0, %rbx
	addq	%r8, %rax
	adcq	%rsi, %rdx
	adcq	%r15, %rbx
	adcq	$0, %rcx
	movq	%rdx, %rax
	subq	%rbp, %rax
	movq	%rbx, %rsi
	sbbq	%rdi, %rsi
	sbbq	$0, %rcx
	testb	$1, %cl
	cmovneq	%rbx, %rsi
	movq	-8(%rsp), %rcx          ## 8-byte Reload
	movq	%rsi, 8(%rcx)
	cmovneq	%rdx, %rax
	movq	%rax, (%rcx)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
                                        ## -- End function
	.globl	_mcl_fp_montNF2L        ## -- Begin function mcl_fp_montNF2L
	.p2align	4, 0x90
_mcl_fp_montNF2L:                       ## @mcl_fp_montNF2L
## %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	%rdi, -8(%rsp)          ## 8-byte Spill
	movq	(%rsi), %r8
	movq	8(%rsi), %r11
	movq	(%rdx), %rbp
	movq	8(%rdx), %r9
	movq	%r8, %rax
	mulq	%rbp
	movq	%rax, %rsi
	movq	%rdx, %r14
	movq	-8(%rcx), %r10
	movq	(%rcx), %r15
	movq	%r10, %rbx
	imulq	%rax, %rbx
	movq	8(%rcx), %rdi
	movq	%rbx, %rax
	mulq	%rdi
	movq	%rdx, -16(%rsp)         ## 8-byte Spill
	movq	%rax, %r13
	movq	%rbx, %rax
	mulq	%r15
	movq	%rdx, %r12
	movq	%rax, %rbx
	movq	%r11, %rax
	mulq	%rbp
	movq	%rdx, %rcx
	movq	%rax, %rbp
	addq	%r14, %rbp
	adcq	$0, %rcx
	addq	%rsi, %rbx
	adcq	%r13, %rbp
	adcq	$0, %rcx
	addq	%r12, %rbp
	adcq	-16(%rsp), %rcx         ## 8-byte Folded Reload
	movq	%r9, %rax
	mulq	%r11
	movq	%rdx, %rsi
	movq	%rax, %r11
	movq	%r9, %rax
	mulq	%r8
	movq	%rax, %r8
	movq	%rdx, %rbx
	addq	%r11, %rbx
	adcq	$0, %rsi
	addq	%rbp, %r8
	adcq	%rcx, %rbx
	adcq	$0, %rsi
	imulq	%r8, %r10
	movq	%r10, %rax
	mulq	%rdi
	movq	%rdx, %rcx
	movq	%rax, %rbp
	movq	%r10, %rax
	mulq	%r15
	addq	%r8, %rax
	adcq	%rbx, %rbp
	adcq	$0, %rsi
	addq	%rdx, %rbp
	adcq	%rcx, %rsi
	movq	%rbp, %rax
	subq	%r15, %rax
	movq	%rsi, %rcx
	sbbq	%rdi, %rcx
	cmovsq	%rsi, %rcx
	movq	-8(%rsp), %rdx          ## 8-byte Reload
	movq	%rcx, 8(%rdx)
	cmovsq	%rbp, %rax
	movq	%rax, (%rdx)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
                                        ## -- End function
	.globl	_mcl_fp_montRed2L       ## -- Begin function mcl_fp_montRed2L
	.p2align	4, 0x90
_mcl_fp_montRed2L:                      ## @mcl_fp_montRed2L
## %bb.0:
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	-8(%rdx), %r9
	movq	(%rdx), %r11
	movq	(%rsi), %r15
	movq	%r15, %rcx
	imulq	%r9, %rcx
	movq	8(%rdx), %r14
	movq	%rcx, %rax
	mulq	%r14
	movq	%rdx, %r8
	movq	%rax, %r10
	movq	%rcx, %rax
	mulq	%r11
	movq	%rdx, %rcx
	addq	%r10, %rcx
	adcq	$0, %r8
	movq	24(%rsi), %r12
	addq	%r15, %rax
	adcq	8(%rsi), %rcx
	adcq	16(%rsi), %r8
	adcq	$0, %r12
	setb	%al
	movzbl	%al, %ebx
	imulq	%rcx, %r9
	movq	%r9, %rax
	mulq	%r14
	movq	%rdx, %rsi
	movq	%rax, %r10
	movq	%r9, %rax
	mulq	%r11
	addq	%r10, %rdx
	adcq	$0, %rsi
	addq	%rcx, %rax
	adcq	%r8, %rdx
	adcq	%r12, %rsi
	adcq	$0, %rbx
	movq	%rdx, %rax
	subq	%r11, %rax
	movq	%rsi, %rcx
	sbbq	%r14, %rcx
	sbbq	$0, %rbx
	testb	$1, %bl
	cmovneq	%rsi, %rcx
	movq	%rcx, 8(%rdi)
	cmovneq	%rdx, %rax
	movq	%rax, (%rdi)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
                                        ## -- End function
	.globl	_mcl_fp_addPre2L        ## -- Begin function mcl_fp_addPre2L
	.p2align	4, 0x90
_mcl_fp_addPre2L:                       ## @mcl_fp_addPre2L
## %bb.0:
	movq	(%rdx), %rax
	movq	8(%rdx), %rcx
	addq	(%rsi), %rax
	adcq	8(%rsi), %rcx
	movq	%rcx, 8(%rdi)
	movq	%rax, (%rdi)
	setb	%al
	movzbl	%al, %eax
	retq
                                        ## -- End function
	.globl	_mcl_fp_subPre2L        ## -- Begin function mcl_fp_subPre2L
	.p2align	4, 0x90
_mcl_fp_subPre2L:                       ## @mcl_fp_subPre2L
## %bb.0:
	movq	(%rsi), %rcx
	movq	8(%rsi), %rsi
	xorl	%eax, %eax
	subq	(%rdx), %rcx
	sbbq	8(%rdx), %rsi
	movq	%rsi, 8(%rdi)
	movq	%rcx, (%rdi)
	sbbq	$0, %rax
	andl	$1, %eax
	retq
                                        ## -- End function
	.globl	_mcl_fp_shr1_2L         ## -- Begin function mcl_fp_shr1_2L
	.p2align	4, 0x90
_mcl_fp_shr1_2L:                        ## @mcl_fp_shr1_2L
## %bb.0:
	movq	(%rsi), %rax
	movq	8(%rsi), %rcx
	shrdq	$1, %rcx, %rax
	shrq	%rcx
	movq	%rcx, 8(%rdi)
	movq	%rax, (%rdi)
	retq
                                        ## -- End function
	.globl	_mcl_fp_add2L           ## -- Begin function mcl_fp_add2L
	.p2align	4, 0x90
_mcl_fp_add2L:                          ## @mcl_fp_add2L
## %bb.0:
	movq	(%rdx), %r8
	movq	8(%rdx), %rdx
	addq	(%rsi), %r8
	adcq	8(%rsi), %rdx
	movq	%rdx, 8(%rdi)
	movq	%r8, (%rdi)
	setb	%al
	movzbl	%al, %eax
	subq	(%rcx), %r8
	sbbq	8(%rcx), %rdx
	sbbq	$0, %rax
	testb	$1, %al
	jne	LBB29_2
## %bb.1:                               ## %nocarry
	movq	%r8, (%rdi)
	movq	%rdx, 8(%rdi)
LBB29_2:                                ## %carry
	retq
                                        ## -- End function
	.globl	_mcl_fp_addNF2L         ## -- Begin function mcl_fp_addNF2L
	.p2align	4, 0x90
_mcl_fp_addNF2L:                        ## @mcl_fp_addNF2L
## %bb.0:
	movq	(%rdx), %r8
	movq	8(%rdx), %rax
	addq	(%rsi), %r8
	adcq	8(%rsi), %rax
	movq	%r8, %rsi
	subq	(%rcx), %rsi
	movq	%rax, %rdx
	sbbq	8(%rcx), %rdx
	cmovsq	%rax, %rdx
	movq	%rdx, 8(%rdi)
	cmovsq	%r8, %rsi
	movq	%rsi, (%rdi)
	retq
                                        ## -- End function
	.globl	_mcl_fp_sub2L           ## -- Begin function mcl_fp_sub2L
	.p2align	4, 0x90
_mcl_fp_sub2L:                          ## @mcl_fp_sub2L
## %bb.0:
	movq	(%rsi), %rax
	movq	8(%rsi), %r8
	xorl	%esi, %esi
	subq	(%rdx), %rax
	sbbq	8(%rdx), %r8
	movq	%r8, 8(%rdi)
	movq	%rax, (%rdi)
	sbbq	$0, %rsi
	testb	$1, %sil
	jne	LBB31_2
## %bb.1:                               ## %nocarry
	retq
LBB31_2:                                ## %carry
	movq	8(%rcx), %rdx
	addq	(%rcx), %rax
	movq	%rax, (%rdi)
	adcq	%r8, %rdx
	movq	%rdx, 8(%rdi)
	retq
                                        ## -- End function
	.globl	_mcl_fp_subNF2L         ## -- Begin function mcl_fp_subNF2L
	.p2align	4, 0x90
_mcl_fp_subNF2L:                        ## @mcl_fp_subNF2L
## %bb.0:
	movq	(%rsi), %rax
	movq	8(%rsi), %rsi
	subq	(%rdx), %rax
	sbbq	8(%rdx), %rsi
	jns	LBB32_1
## %bb.2:
	movq	8(%rcx), %rdx
	movq	(%rcx), %rcx
	jmp	LBB32_3
LBB32_1:
	xorl	%edx, %edx
	xorl	%ecx, %ecx
LBB32_3:
	addq	%rax, %rcx
	movq	%rcx, (%rdi)
	adcq	%rsi, %rdx
	movq	%rdx, 8(%rdi)
	retq
                                        ## -- End function
	.globl	_mcl_fpDbl_add2L        ## -- Begin function mcl_fpDbl_add2L
	.p2align	4, 0x90
_mcl_fpDbl_add2L:                       ## @mcl_fpDbl_add2L
## %bb.0:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	movdqu	(%rsi), %xmm0
	movdqu	16(%rsi), %xmm1
	movq	%xmm1, %r8
	movq	%xmm0, %r10
	pshufd	$78, %xmm1, %xmm1       ## xmm1 = xmm1[2,3,0,1]
	movq	%xmm1, %r9
	movdqu	(%rdx), %xmm1
	movdqu	16(%rdx), %xmm2
	movq	%xmm2, %r14
	movq	%xmm1, %rax
	pshufd	$78, %xmm2, %xmm2       ## xmm2 = xmm2[2,3,0,1]
	movq	%xmm2, %r15
	pshufd	$78, %xmm0, %xmm0       ## xmm0 = xmm0[2,3,0,1]
	movq	%xmm0, %r11
	pshufd	$78, %xmm1, %xmm0       ## xmm0 = xmm1[2,3,0,1]
	movq	%xmm0, %rbx
	addq	%r10, %rax
	movq	%rax, (%rdi)
	adcq	%r11, %rbx
	movq	%rbx, 8(%rdi)
	adcq	%r8, %r14
	adcq	%r9, %r15
	setb	%al
	movzbl	%al, %eax
	movq	%r14, %rdx
	subq	(%rcx), %rdx
	movq	%r15, %rsi
	sbbq	8(%rcx), %rsi
	sbbq	$0, %rax
	testb	$1, %al
	cmovneq	%r15, %rsi
	movq	%rsi, 24(%rdi)
	cmovneq	%r14, %rdx
	movq	%rdx, 16(%rdi)
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
                                        ## -- End function
	.globl	_mcl_fpDbl_sub2L        ## -- Begin function mcl_fpDbl_sub2L
	.p2align	4, 0x90
_mcl_fpDbl_sub2L:                       ## @mcl_fpDbl_sub2L
## %bb.0:
	pushq	%r14
	pushq	%rbx
	movdqu	(%rdx), %xmm0
	movdqu	16(%rdx), %xmm1
	movq	%xmm1, %r8
	movq	%xmm0, %r10
	pshufd	$78, %xmm1, %xmm1       ## xmm1 = xmm1[2,3,0,1]
	movq	%xmm1, %r9
	movdqu	(%rsi), %xmm1
	movdqu	16(%rsi), %xmm2
	movq	%xmm2, %rsi
	movq	%xmm1, %rax
	pshufd	$78, %xmm2, %xmm2       ## xmm2 = xmm2[2,3,0,1]
	movq	%xmm2, %r14
	pshufd	$78, %xmm0, %xmm0       ## xmm0 = xmm0[2,3,0,1]
	movq	%xmm0, %r11
	pshufd	$78, %xmm1, %xmm0       ## xmm0 = xmm1[2,3,0,1]
	movq	%xmm0, %rbx
	xorl	%edx, %edx
	subq	%r10, %rax
	movq	%rax, (%rdi)
	sbbq	%r11, %rbx
	movq	%rbx, 8(%rdi)
	sbbq	%r8, %rsi
	sbbq	%r9, %r14
	sbbq	$0, %rdx
	andl	$1, %edx
	negq	%rdx
	movq	8(%rcx), %rax
	andq	%rdx, %rax
	andq	(%rcx), %rdx
	addq	%rsi, %rdx
	movq	%rdx, 16(%rdi)
	adcq	%r14, %rax
	movq	%rax, 24(%rdi)
	popq	%rbx
	popq	%r14
	retq
                                        ## -- End function
	.globl	_mcl_fp_mulUnitPre3L    ## -- Begin function mcl_fp_mulUnitPre3L
	.p2align	4, 0x90
_mcl_fp_mulUnitPre3L:                   ## @mcl_fp_mulUnitPre3L
## %bb.0:
	movq	%rdx, %rcx
	movq	%rdx, %rax
	mulq	16(%rsi)
	movq	%rdx, %r8
	movq	%rax, %r9
	movq	%rcx, %rax
	mulq	8(%rsi)
	movq	%rdx, %r10
	movq	%rax, %r11
	movq	%rcx, %rax
	mulq	(%rsi)
	movq	%rax, (%rdi)
	addq	%r11, %rdx
	movq	%rdx, 8(%rdi)
	adcq	%r9, %r10
	movq	%r10, 16(%rdi)
	adcq	$0, %r8
	movq	%r8, 24(%rdi)
	retq
                                        ## -- End function
	.globl	_mcl_fpDbl_mulPre3L     ## -- Begin function mcl_fpDbl_mulPre3L
	.p2align	4, 0x90
_mcl_fpDbl_mulPre3L:                    ## @mcl_fpDbl_mulPre3L
## %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	%rdx, %r11
	movq	(%rsi), %r8
	movq	8(%rsi), %r10
	movq	(%rdx), %rcx
	movq	%r8, %rax
	mulq	%rcx
	movq	%rdx, -8(%rsp)          ## 8-byte Spill
	movq	16(%rsi), %r12
	movq	%rax, (%rdi)
	movq	%r12, %rax
	mulq	%rcx
	movq	%rdx, %r9
	movq	%rax, -16(%rsp)         ## 8-byte Spill
	movq	%r10, %rax
	mulq	%rcx
	movq	%rax, %rbx
	movq	%rdx, %rcx
	movq	8(%r11), %rsi
	movq	%rsi, %rax
	mulq	%r12
	movq	%rdx, %r13
	movq	%rax, %rbp
	movq	%rsi, %rax
	mulq	%r10
	movq	%rdx, %r14
	movq	%rax, %r15
	movq	%rsi, %rax
	mulq	%r8
	addq	%r15, %rdx
	adcq	%rbp, %r14
	adcq	$0, %r13
	addq	-8(%rsp), %rbx          ## 8-byte Folded Reload
	adcq	-16(%rsp), %rcx         ## 8-byte Folded Reload
	adcq	$0, %r9
	addq	%rax, %rbx
	movq	%rbx, 8(%rdi)
	adcq	%rdx, %rcx
	adcq	%r14, %r9
	adcq	$0, %r13
	movq	16(%r11), %rsi
	movq	%rsi, %rax
	mulq	%r12
	movq	%rdx, %rbp
	movq	%rax, %r11
	movq	%rsi, %rax
	mulq	%r10
	movq	%rdx, %rbx
	movq	%rax, %r10
	movq	%rsi, %rax
	mulq	%r8
	addq	%r10, %rdx
	adcq	%r11, %rbx
	adcq	$0, %rbp
	addq	%rcx, %rax
	movq	%rax, 16(%rdi)
	adcq	%r9, %rdx
	movq	%rdx, 24(%rdi)
	adcq	%r13, %rbx
	movq	%rbx, 32(%rdi)
	adcq	$0, %rbp
	movq	%rbp, 40(%rdi)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
                                        ## -- End function
	.globl	_mcl_fpDbl_sqrPre3L     ## -- Begin function mcl_fpDbl_sqrPre3L
	.p2align	4, 0x90
_mcl_fpDbl_sqrPre3L:                    ## @mcl_fpDbl_sqrPre3L
## %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	16(%rsi), %r10
	movq	(%rsi), %r11
	movq	8(%rsi), %rsi
	movq	%r11, %rax
	mulq	%r11
	movq	%rdx, %rcx
	movq	%rax, (%rdi)
	movq	%r10, %rax
	mulq	%rsi
	movq	%rdx, %r8
	movq	%rax, %r9
	movq	%rsi, %rax
	mulq	%rsi
	movq	%rdx, %r14
	movq	%rax, %r12
	movq	%rsi, %rax
	mulq	%r11
	movq	%rax, %r15
	movq	%rdx, %rsi
	addq	%rdx, %r12
	adcq	%r9, %r14
	movq	%r8, %r13
	adcq	$0, %r13
	movq	%r10, %rax
	mulq	%r11
	movq	%rax, %r11
	movq	%rdx, %rbx
	addq	%r15, %rcx
	adcq	%rax, %rsi
	movq	%rdx, %rbp
	adcq	$0, %rbp
	addq	%r15, %rcx
	movq	%rcx, 8(%rdi)
	adcq	%r12, %rsi
	adcq	%r14, %rbp
	adcq	$0, %r13
	movq	%r10, %rax
	mulq	%r10
	addq	%r9, %rbx
	adcq	%r8, %rax
	adcq	$0, %rdx
	addq	%r11, %rsi
	movq	%rsi, 16(%rdi)
	adcq	%rbp, %rbx
	movq	%rbx, 24(%rdi)
	adcq	%r13, %rax
	movq	%rax, 32(%rdi)
	adcq	$0, %rdx
	movq	%rdx, 40(%rdi)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
                                        ## -- End function
	.globl	_mcl_fp_mont3L          ## -- Begin function mcl_fp_mont3L
	.p2align	4, 0x90
_mcl_fp_mont3L:                         ## @mcl_fp_mont3L
## %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	%rdi, -8(%rsp)          ## 8-byte Spill
	movq	16(%rsi), %r10
	movq	(%rdx), %rdi
	movq	%rdx, %r11
	movq	%rdx, -64(%rsp)         ## 8-byte Spill
	movq	%r10, %rax
	mulq	%rdi
	movq	%rax, %rbp
	movq	%rdx, %r15
	movq	(%rsi), %rbx
	movq	%rbx, -16(%rsp)         ## 8-byte Spill
	movq	8(%rsi), %r14
	movq	%r14, %rax
	movq	%r14, -72(%rsp)         ## 8-byte Spill
	mulq	%rdi
	movq	%rdx, %r8
	movq	%rax, %rsi
	movq	%rbx, %rax
	mulq	%rdi
	movq	%rax, %r12
	movq	%rdx, %rdi
	addq	%rsi, %rdi
	adcq	%rbp, %r8
	adcq	$0, %r15
	movq	-8(%rcx), %rbp
	movq	%rbp, -32(%rsp)         ## 8-byte Spill
	imulq	%rax, %rbp
	movq	16(%rcx), %rdx
	movq	%rdx, -56(%rsp)         ## 8-byte Spill
	movq	%rbp, %rax
	mulq	%rdx
	movq	%rax, %r13
	movq	%rdx, %r9
	movq	(%rcx), %rbx
	movq	%rbx, -48(%rsp)         ## 8-byte Spill
	movq	8(%rcx), %rcx
	movq	%rcx, -40(%rsp)         ## 8-byte Spill
	movq	%rbp, %rax
	mulq	%rcx
	movq	%rdx, %rsi
	movq	%rax, %rcx
	movq	%rbp, %rax
	mulq	%rbx
	movq	%rdx, %rbp
	addq	%rcx, %rbp
	adcq	%r13, %rsi
	adcq	$0, %r9
	addq	%r12, %rax
	adcq	%rdi, %rbp
	movq	8(%r11), %rcx
	adcq	%r8, %rsi
	adcq	%r15, %r9
	setb	%r11b
	movq	%rcx, %rax
	mulq	%r10
	movq	%rdx, %r15
	movq	%rax, %rdi
	movq	%rcx, %rax
	mulq	%r14
	movq	%rdx, %r13
	movq	%rax, %r8
	movq	%rcx, %rax
	movq	-16(%rsp), %rcx         ## 8-byte Reload
	mulq	%rcx
	movq	%rax, %r12
	movq	%rdx, %rbx
	addq	%r8, %rbx
	adcq	%rdi, %r13
	adcq	$0, %r15
	addq	%rbp, %r12
	adcq	%rsi, %rbx
	movzbl	%r11b, %eax
	adcq	%r9, %r13
	adcq	%rax, %r15
	setb	-73(%rsp)               ## 1-byte Folded Spill
	movq	-32(%rsp), %rsi         ## 8-byte Reload
	imulq	%r12, %rsi
	movq	%rsi, %rax
	mulq	-56(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r14
	movq	%rax, -24(%rsp)         ## 8-byte Spill
	movq	%rsi, %rax
	mulq	-48(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %rdi
	movq	%rax, %r11
	movq	%rsi, %rax
	mulq	-40(%rsp)               ## 8-byte Folded Reload
	movq	%rax, %rbp
	movq	%rdx, %rsi
	movq	-64(%rsp), %rax         ## 8-byte Reload
	movq	16(%rax), %r9
	movq	%r9, %rax
	mulq	%r10
	movq	%rdx, %r8
	movq	%rax, -64(%rsp)         ## 8-byte Spill
	movq	%r9, %rax
	mulq	-72(%rsp)               ## 8-byte Folded Reload
	movq	%rax, -72(%rsp)         ## 8-byte Spill
	movq	%rdx, %r10
	addq	%rdi, %rbp
	adcq	-24(%rsp), %rsi         ## 8-byte Folded Reload
	adcq	$0, %r14
	addq	%r12, %r11
	adcq	%rbx, %rbp
	adcq	%r13, %rsi
	adcq	%r15, %r14
	movzbl	-73(%rsp), %edi         ## 1-byte Folded Reload
	adcq	$0, %rdi
	movq	%r9, %rax
	mulq	%rcx
	movq	%rax, %r9
	movq	%rdx, %rcx
	addq	-72(%rsp), %rcx         ## 8-byte Folded Reload
	adcq	-64(%rsp), %r10         ## 8-byte Folded Reload
	adcq	$0, %r8
	addq	%rbp, %r9
	adcq	%rsi, %rcx
	adcq	%r14, %r10
	adcq	%rdi, %r8
	setb	%r11b
	movq	-32(%rsp), %rdi         ## 8-byte Reload
	imulq	%r9, %rdi
	movq	%rdi, %rax
	movq	-56(%rsp), %r14         ## 8-byte Reload
	mulq	%r14
	movq	%rdx, %rbx
	movq	%rax, %r12
	movq	%rdi, %rax
	movq	-40(%rsp), %r15         ## 8-byte Reload
	mulq	%r15
	movq	%rdx, %rbp
	movq	%rax, %rsi
	movq	%rdi, %rax
	movq	-48(%rsp), %rdi         ## 8-byte Reload
	mulq	%rdi
	addq	%rsi, %rdx
	adcq	%r12, %rbp
	adcq	$0, %rbx
	addq	%r9, %rax
	adcq	%rcx, %rdx
	adcq	%r10, %rbp
	movzbl	%r11b, %eax
	adcq	%r8, %rbx
	adcq	$0, %rax
	movq	%rdx, %rsi
	subq	%rdi, %rsi
	movq	%rbp, %rdi
	sbbq	%r15, %rdi
	movq	%rbx, %rcx
	sbbq	%r14, %rcx
	sbbq	$0, %rax
	testb	$1, %al
	cmovneq	%rbp, %rdi
	movq	-8(%rsp), %rax          ## 8-byte Reload
	movq	%rdi, 8(%rax)
	cmovneq	%rdx, %rsi
	movq	%rsi, (%rax)
	cmovneq	%rbx, %rcx
	movq	%rcx, 16(%rax)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
                                        ## -- End function
	.globl	_mcl_fp_montNF3L        ## -- Begin function mcl_fp_montNF3L
	.p2align	4, 0x90
_mcl_fp_montNF3L:                       ## @mcl_fp_montNF3L
## %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	%rdx, %r10
	movq	%rdi, -8(%rsp)          ## 8-byte Spill
	movq	16(%rsi), %r11
	movq	(%rdx), %rbp
	movq	%rdx, -16(%rsp)         ## 8-byte Spill
	movq	%r11, %rax
	movq	%r11, -24(%rsp)         ## 8-byte Spill
	mulq	%rbp
	movq	%rax, %r14
	movq	%rdx, %r15
	movq	(%rsi), %rbx
	movq	%rbx, -48(%rsp)         ## 8-byte Spill
	movq	8(%rsi), %rax
	movq	%rax, -64(%rsp)         ## 8-byte Spill
	mulq	%rbp
	movq	%rdx, %rdi
	movq	%rax, %r8
	movq	%rbx, %rax
	mulq	%rbp
	movq	%rax, %r13
	movq	%rdx, %rbp
	addq	%r8, %rbp
	adcq	%r14, %rdi
	adcq	$0, %r15
	movq	-8(%rcx), %r14
	movq	%r14, %rbx
	imulq	%rax, %rbx
	movq	16(%rcx), %rdx
	movq	%rdx, -56(%rsp)         ## 8-byte Spill
	movq	%rbx, %rax
	mulq	%rdx
	movq	%rax, %r12
	movq	%rdx, %r8
	movq	(%rcx), %rsi
	movq	%rsi, -32(%rsp)         ## 8-byte Spill
	movq	8(%rcx), %rcx
	movq	%rcx, -40(%rsp)         ## 8-byte Spill
	movq	%rbx, %rax
	mulq	%rcx
	movq	%rdx, %r9
	movq	%rax, %rcx
	movq	%rbx, %rax
	mulq	%rsi
	addq	%r13, %rax
	adcq	%rbp, %rcx
	adcq	%rdi, %r12
	adcq	$0, %r15
	addq	%rdx, %rcx
	movq	8(%r10), %rbp
	adcq	%r9, %r12
	adcq	%r8, %r15
	movq	%rbp, %rax
	mulq	%r11
	movq	%rdx, %rsi
	movq	%rax, %r8
	movq	%rbp, %rax
	mulq	-64(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %rbx
	movq	%rax, %r9
	movq	%rbp, %rax
	movq	-48(%rsp), %r10         ## 8-byte Reload
	mulq	%r10
	movq	%rax, %r13
	movq	%rdx, %rbp
	addq	%r9, %rbp
	adcq	%r8, %rbx
	adcq	$0, %rsi
	addq	%rcx, %r13
	adcq	%r12, %rbp
	adcq	%r15, %rbx
	adcq	$0, %rsi
	movq	%r14, %rcx
	imulq	%r13, %rcx
	movq	%rcx, %rax
	mulq	-56(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r8
	movq	%rax, %r15
	movq	%rcx, %rax
	movq	-40(%rsp), %rdi         ## 8-byte Reload
	mulq	%rdi
	movq	%rdx, %r9
	movq	%rax, %r12
	movq	%rcx, %rax
	movq	-32(%rsp), %r11         ## 8-byte Reload
	mulq	%r11
	addq	%r13, %rax
	adcq	%rbp, %r12
	adcq	%rbx, %r15
	adcq	$0, %rsi
	addq	%rdx, %r12
	adcq	%r9, %r15
	adcq	%r8, %rsi
	movq	-16(%rsp), %rax         ## 8-byte Reload
	movq	16(%rax), %rbx
	movq	%rbx, %rax
	mulq	-24(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %rbp
	movq	%rax, %r8
	movq	%rbx, %rax
	mulq	-64(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %rcx
	movq	%rax, %r9
	movq	%rbx, %rax
	mulq	%r10
	movq	%rax, %r10
	movq	%rdx, %rbx
	addq	%r9, %rbx
	adcq	%r8, %rcx
	adcq	$0, %rbp
	addq	%r12, %r10
	adcq	%r15, %rbx
	adcq	%rsi, %rcx
	adcq	$0, %rbp
	imulq	%r10, %r14
	movq	%r14, %rax
	movq	-56(%rsp), %r15         ## 8-byte Reload
	mulq	%r15
	movq	%rdx, %r8
	movq	%rax, %rsi
	movq	%r14, %rax
	movq	%rdi, %r12
	mulq	%rdi
	movq	%rdx, %r9
	movq	%rax, %rdi
	movq	%r14, %rax
	mulq	%r11
	addq	%r10, %rax
	adcq	%rbx, %rdi
	adcq	%rcx, %rsi
	adcq	$0, %rbp
	addq	%rdx, %rdi
	adcq	%r9, %rsi
	adcq	%r8, %rbp
	movq	%rdi, %rax
	subq	%r11, %rax
	movq	%rsi, %rcx
	sbbq	%r12, %rcx
	movq	%rbp, %rbx
	sbbq	%r15, %rbx
	movq	%rbx, %rdx
	sarq	$63, %rdx
	cmovsq	%rsi, %rcx
	movq	-8(%rsp), %rdx          ## 8-byte Reload
	movq	%rcx, 8(%rdx)
	cmovsq	%rdi, %rax
	movq	%rax, (%rdx)
	cmovsq	%rbp, %rbx
	movq	%rbx, 16(%rdx)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
                                        ## -- End function
	.globl	_mcl_fp_montRed3L       ## -- Begin function mcl_fp_montRed3L
	.p2align	4, 0x90
_mcl_fp_montRed3L:                      ## @mcl_fp_montRed3L
## %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	%rdx, %rcx
	movq	%rdi, -8(%rsp)          ## 8-byte Spill
	movq	-8(%rdx), %r9
	movq	(%rdx), %rdi
	movq	(%rsi), %r15
	movq	%r15, %rbx
	imulq	%r9, %rbx
	movq	16(%rdx), %rbp
	movq	%rbx, %rax
	mulq	%rbp
	movq	%rbp, %r12
	movq	%rbp, -32(%rsp)         ## 8-byte Spill
	movq	%rax, %r10
	movq	%rdx, %r8
	movq	8(%rcx), %rcx
	movq	%rcx, -16(%rsp)         ## 8-byte Spill
	movq	%rbx, %rax
	mulq	%rcx
	movq	%rdx, %r11
	movq	%rax, %r14
	movq	%rbx, %rax
	mulq	%rdi
	movq	%rdi, %rbp
	movq	%rdi, -24(%rsp)         ## 8-byte Spill
	movq	%rdx, %rcx
	addq	%r14, %rcx
	adcq	%r10, %r11
	adcq	$0, %r8
	movq	40(%rsi), %rdi
	movq	32(%rsi), %r13
	addq	%r15, %rax
	adcq	8(%rsi), %rcx
	adcq	16(%rsi), %r11
	adcq	24(%rsi), %r8
	adcq	$0, %r13
	adcq	$0, %rdi
	setb	-33(%rsp)               ## 1-byte Folded Spill
	movq	%r9, %rbx
	imulq	%rcx, %rbx
	movq	%rbx, %rax
	mulq	%r12
	movq	%rdx, %r10
	movq	%rax, %r14
	movq	%rbx, %rax
	movq	-16(%rsp), %rsi         ## 8-byte Reload
	mulq	%rsi
	movq	%rdx, %r12
	movq	%rax, %r15
	movq	%rbx, %rax
	mulq	%rbp
	movq	%rdx, %rbx
	addq	%r15, %rbx
	adcq	%r14, %r12
	movzbl	-33(%rsp), %r14d        ## 1-byte Folded Reload
	adcq	$0, %r10
	addq	%rcx, %rax
	adcq	%r11, %rbx
	adcq	%r8, %r12
	adcq	%r13, %r10
	adcq	$0, %rdi
	adcq	$0, %r14
	imulq	%rbx, %r9
	movq	%r9, %rax
	movq	-32(%rsp), %r13         ## 8-byte Reload
	mulq	%r13
	movq	%rdx, %r15
	movq	%rax, %r8
	movq	%r9, %rax
	mulq	%rsi
	movq	%rsi, %rbp
	movq	%rdx, %rsi
	movq	%rax, %r11
	movq	%r9, %rax
	movq	-24(%rsp), %rcx         ## 8-byte Reload
	mulq	%rcx
	addq	%r11, %rdx
	adcq	%r8, %rsi
	adcq	$0, %r15
	addq	%rbx, %rax
	adcq	%r12, %rdx
	adcq	%r10, %rsi
	adcq	%rdi, %r15
	adcq	$0, %r14
	movq	%rdx, %rax
	subq	%rcx, %rax
	movq	%rsi, %rdi
	sbbq	%rbp, %rdi
	movq	%r15, %rcx
	sbbq	%r13, %rcx
	sbbq	$0, %r14
	testb	$1, %r14b
	cmovneq	%rsi, %rdi
	movq	-8(%rsp), %rsi          ## 8-byte Reload
	movq	%rdi, 8(%rsi)
	cmovneq	%rdx, %rax
	movq	%rax, (%rsi)
	cmovneq	%r15, %rcx
	movq	%rcx, 16(%rsi)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
                                        ## -- End function
	.globl	_mcl_fp_addPre3L        ## -- Begin function mcl_fp_addPre3L
	.p2align	4, 0x90
_mcl_fp_addPre3L:                       ## @mcl_fp_addPre3L
## %bb.0:
	movq	16(%rsi), %xmm0         ## xmm0 = mem[0],zero
	pshufd	$78, %xmm0, %xmm1       ## xmm1 = xmm0[2,3,0,1]
	movq	%xmm1, %r8
	movq	16(%rdx), %xmm1         ## xmm1 = mem[0],zero
	pshufd	$78, %xmm1, %xmm2       ## xmm2 = xmm1[2,3,0,1]
	movq	%xmm2, %rax
	movq	%xmm0, %r9
	movq	%xmm1, %rcx
	movdqu	(%rsi), %xmm0
	pshufd	$78, %xmm0, %xmm1       ## xmm1 = xmm0[2,3,0,1]
	movq	%xmm1, %r10
	movdqu	(%rdx), %xmm1
	pshufd	$78, %xmm1, %xmm2       ## xmm2 = xmm1[2,3,0,1]
	movq	%xmm2, %rdx
	movq	%xmm0, %r11
	movq	%xmm1, %rsi
	addq	%r11, %rsi
	movq	%rsi, (%rdi)
	adcq	%r10, %rdx
	movq	%rdx, 8(%rdi)
	adcq	%r9, %rcx
	movq	%rcx, 16(%rdi)
	adcq	%r8, %rax
	retq
                                        ## -- End function
	.globl	_mcl_fp_subPre3L        ## -- Begin function mcl_fp_subPre3L
	.p2align	4, 0x90
_mcl_fp_subPre3L:                       ## @mcl_fp_subPre3L
## %bb.0:
	movq	16(%rdx), %xmm0         ## xmm0 = mem[0],zero
	pshufd	$78, %xmm0, %xmm1       ## xmm1 = xmm0[2,3,0,1]
	movq	%xmm1, %r8
	movq	16(%rsi), %xmm1         ## xmm1 = mem[0],zero
	pshufd	$78, %xmm1, %xmm2       ## xmm2 = xmm1[2,3,0,1]
	movq	%xmm2, %rax
	movq	%xmm0, %r9
	movq	%xmm1, %rcx
	movdqu	(%rdx), %xmm0
	pshufd	$78, %xmm0, %xmm1       ## xmm1 = xmm0[2,3,0,1]
	movq	%xmm1, %r10
	movdqu	(%rsi), %xmm1
	pshufd	$78, %xmm1, %xmm2       ## xmm2 = xmm1[2,3,0,1]
	movq	%xmm2, %rsi
	movq	%xmm0, %r11
	movq	%xmm1, %rdx
	subq	%r11, %rdx
	movq	%rdx, (%rdi)
	sbbq	%r10, %rsi
	movq	%rsi, 8(%rdi)
	sbbq	%r9, %rcx
	movq	%rcx, 16(%rdi)
	sbbq	%r8, %rax
	andl	$1, %eax
	retq
                                        ## -- End function
	.globl	_mcl_fp_shr1_3L         ## -- Begin function mcl_fp_shr1_3L
	.p2align	4, 0x90
_mcl_fp_shr1_3L:                        ## @mcl_fp_shr1_3L
## %bb.0:
	movq	(%rsi), %rax
	movq	8(%rsi), %rcx
	movq	16(%rsi), %rdx
	movq	%rdx, %rsi
	shldq	$63, %rcx, %rsi
	movq	%rsi, 8(%rdi)
	shrdq	$1, %rcx, %rax
	movq	%rax, (%rdi)
	shrq	%rdx
	movq	%rdx, 16(%rdi)
	retq
                                        ## -- End function
	.globl	_mcl_fp_add3L           ## -- Begin function mcl_fp_add3L
	.p2align	4, 0x90
_mcl_fp_add3L:                          ## @mcl_fp_add3L
## %bb.0:
	pushq	%rbx
	movq	16(%rsi), %xmm0         ## xmm0 = mem[0],zero
	pshufd	$78, %xmm0, %xmm1       ## xmm1 = xmm0[2,3,0,1]
	movq	%xmm1, %r8
	movq	16(%rdx), %xmm1         ## xmm1 = mem[0],zero
	pshufd	$78, %xmm1, %xmm2       ## xmm2 = xmm1[2,3,0,1]
	movq	%xmm2, %r9
	movq	%xmm0, %r10
	movq	%xmm1, %rax
	movdqu	(%rsi), %xmm0
	pshufd	$78, %xmm0, %xmm1       ## xmm1 = xmm0[2,3,0,1]
	movq	%xmm1, %r11
	movdqu	(%rdx), %xmm1
	pshufd	$78, %xmm1, %xmm2       ## xmm2 = xmm1[2,3,0,1]
	movq	%xmm2, %rdx
	movq	%xmm0, %rbx
	movq	%xmm1, %rsi
	addq	%rbx, %rsi
	movq	%rsi, (%rdi)
	adcq	%r11, %rdx
	movq	%rdx, 8(%rdi)
	adcq	%r10, %rax
	movq	%rax, 16(%rdi)
	adcq	%r8, %r9
	subq	(%rcx), %rsi
	sbbq	8(%rcx), %rdx
	sbbq	16(%rcx), %rax
	sbbq	$0, %r9
	testb	$1, %r9b
	jne	LBB44_2
## %bb.1:                               ## %nocarry
	movq	%rsi, (%rdi)
	movq	%rdx, 8(%rdi)
	movq	%rax, 16(%rdi)
LBB44_2:                                ## %carry
	popq	%rbx
	retq
                                        ## -- End function
	.globl	_mcl_fp_addNF3L         ## -- Begin function mcl_fp_addNF3L
	.p2align	4, 0x90
_mcl_fp_addNF3L:                        ## @mcl_fp_addNF3L
## %bb.0:
	movq	16(%rdx), %r8
	movq	(%rdx), %r9
	movq	8(%rdx), %r10
	addq	(%rsi), %r9
	adcq	8(%rsi), %r10
	adcq	16(%rsi), %r8
	movq	%r9, %rsi
	subq	(%rcx), %rsi
	movq	%r10, %rdx
	sbbq	8(%rcx), %rdx
	movq	%r8, %rax
	sbbq	16(%rcx), %rax
	movq	%rax, %rcx
	sarq	$63, %rcx
	cmovsq	%r10, %rdx
	movq	%rdx, 8(%rdi)
	cmovsq	%r9, %rsi
	movq	%rsi, (%rdi)
	cmovsq	%r8, %rax
	movq	%rax, 16(%rdi)
	retq
                                        ## -- End function
	.globl	_mcl_fp_sub3L           ## -- Begin function mcl_fp_sub3L
	.p2align	4, 0x90
_mcl_fp_sub3L:                          ## @mcl_fp_sub3L
## %bb.0:
	pushq	%rbx
	movq	16(%rdx), %xmm0         ## xmm0 = mem[0],zero
	pshufd	$78, %xmm0, %xmm1       ## xmm1 = xmm0[2,3,0,1]
	movq	%xmm1, %r8
	movq	16(%rsi), %xmm1         ## xmm1 = mem[0],zero
	pshufd	$78, %xmm1, %xmm2       ## xmm2 = xmm1[2,3,0,1]
	movq	%xmm2, %rax
	movq	%xmm0, %r10
	movq	%xmm1, %r9
	movdqu	(%rdx), %xmm0
	pshufd	$78, %xmm0, %xmm1       ## xmm1 = xmm0[2,3,0,1]
	movq	%xmm1, %r11
	movdqu	(%rsi), %xmm1
	pshufd	$78, %xmm1, %xmm2       ## xmm2 = xmm1[2,3,0,1]
	movq	%xmm2, %rdx
	movq	%xmm0, %rbx
	movq	%xmm1, %rsi
	subq	%rbx, %rsi
	movq	%rsi, (%rdi)
	sbbq	%r11, %rdx
	movq	%rdx, 8(%rdi)
	sbbq	%r10, %r9
	movq	%r9, 16(%rdi)
	sbbq	%r8, %rax
	testb	$1, %al
	jne	LBB46_2
## %bb.1:                               ## %nocarry
	popq	%rbx
	retq
LBB46_2:                                ## %carry
	movq	8(%rcx), %rax
	movq	16(%rcx), %rbx
	addq	(%rcx), %rsi
	movq	%rsi, (%rdi)
	adcq	%rdx, %rax
	movq	%rax, 8(%rdi)
	adcq	%r9, %rbx
	movq	%rbx, 16(%rdi)
	popq	%rbx
	retq
                                        ## -- End function
	.globl	_mcl_fp_subNF3L         ## -- Begin function mcl_fp_subNF3L
	.p2align	4, 0x90
_mcl_fp_subNF3L:                        ## @mcl_fp_subNF3L
## %bb.0:
	movq	16(%rsi), %rax
	movq	(%rsi), %r8
	movq	8(%rsi), %r9
	subq	(%rdx), %r8
	sbbq	8(%rdx), %r9
	sbbq	16(%rdx), %rax
	movq	%rax, %rdx
	sarq	$63, %rdx
	jns	LBB47_1
## %bb.2:
	movq	16(%rcx), %rdx
	movq	8(%rcx), %rsi
	movq	(%rcx), %rcx
	jmp	LBB47_3
LBB47_1:
	xorl	%edx, %edx
	xorl	%esi, %esi
	xorl	%ecx, %ecx
LBB47_3:
	addq	%r8, %rcx
	movq	%rcx, (%rdi)
	adcq	%r9, %rsi
	movq	%rsi, 8(%rdi)
	adcq	%rax, %rdx
	movq	%rdx, 16(%rdi)
	retq
                                        ## -- End function
	.globl	_mcl_fpDbl_add3L        ## -- Begin function mcl_fpDbl_add3L
	.p2align	4, 0x90
_mcl_fpDbl_add3L:                       ## @mcl_fpDbl_add3L
## %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movdqu	(%rdx), %xmm0
	movdqu	16(%rdx), %xmm1
	movdqu	32(%rdx), %xmm2
	movq	%xmm2, %r8
	movq	%xmm1, %r9
	movq	%xmm0, %r10
	pshufd	$78, %xmm0, %xmm0       ## xmm0 = xmm0[2,3,0,1]
	movdqu	(%rsi), %xmm3
	movdqu	16(%rsi), %xmm4
	movdqu	32(%rsi), %xmm5
	movq	%xmm5, %r11
	movq	%xmm4, %rax
	movq	%xmm3, %rbx
	pshufd	$78, %xmm3, %xmm3       ## xmm3 = xmm3[2,3,0,1]
	pshufd	$78, %xmm1, %xmm1       ## xmm1 = xmm1[2,3,0,1]
	pshufd	$78, %xmm4, %xmm4       ## xmm4 = xmm4[2,3,0,1]
	pshufd	$78, %xmm2, %xmm2       ## xmm2 = xmm2[2,3,0,1]
	pshufd	$78, %xmm5, %xmm5       ## xmm5 = xmm5[2,3,0,1]
	movq	%xmm5, %r14
	movq	%xmm2, %r13
	movq	%xmm4, %r15
	movq	%xmm1, %rbp
	movq	%xmm3, %r12
	addq	%r10, %rbx
	movq	%rbx, (%rdi)
	movq	%xmm0, %rbx
	adcq	%r12, %rbx
	movq	%rbx, 8(%rdi)
	adcq	%r9, %rax
	movq	%rax, 16(%rdi)
	adcq	%r15, %rbp
	adcq	%r8, %r11
	adcq	%r14, %r13
	setb	%al
	movzbl	%al, %eax
	movq	%rbp, %rsi
	subq	(%rcx), %rsi
	movq	%r11, %rbx
	sbbq	8(%rcx), %rbx
	movq	%r13, %rdx
	sbbq	16(%rcx), %rdx
	sbbq	$0, %rax
	testb	$1, %al
	cmovneq	%r11, %rbx
	movq	%rbx, 32(%rdi)
	cmovneq	%rbp, %rsi
	movq	%rsi, 24(%rdi)
	cmovneq	%r13, %rdx
	movq	%rdx, 40(%rdi)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
                                        ## -- End function
	.globl	_mcl_fpDbl_sub3L        ## -- Begin function mcl_fpDbl_sub3L
	.p2align	4, 0x90
_mcl_fpDbl_sub3L:                       ## @mcl_fpDbl_sub3L
## %bb.0:
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movdqu	(%rsi), %xmm0
	movdqu	16(%rsi), %xmm1
	movdqu	32(%rsi), %xmm2
	movq	%xmm2, %r8
	movq	%xmm1, %r10
	movq	%xmm0, %rsi
	pshufd	$78, %xmm0, %xmm0       ## xmm0 = xmm0[2,3,0,1]
	movdqu	(%rdx), %xmm3
	movdqu	16(%rdx), %xmm4
	movdqu	32(%rdx), %xmm5
	movq	%xmm5, %r11
	movq	%xmm4, %r14
	movq	%xmm3, %rbx
	pshufd	$78, %xmm3, %xmm3       ## xmm3 = xmm3[2,3,0,1]
	pshufd	$78, %xmm1, %xmm1       ## xmm1 = xmm1[2,3,0,1]
	pshufd	$78, %xmm4, %xmm4       ## xmm4 = xmm4[2,3,0,1]
	pshufd	$78, %xmm2, %xmm2       ## xmm2 = xmm2[2,3,0,1]
	pshufd	$78, %xmm5, %xmm5       ## xmm5 = xmm5[2,3,0,1]
	movq	%xmm5, %r15
	movq	%xmm2, %r9
	movq	%xmm4, %r12
	movq	%xmm1, %rdx
	xorl	%eax, %eax
	subq	%rbx, %rsi
	movq	%rsi, (%rdi)
	movq	%xmm3, %rsi
	movq	%xmm0, %rbx
	sbbq	%rsi, %rbx
	movq	%rbx, 8(%rdi)
	sbbq	%r14, %r10
	movq	%r10, 16(%rdi)
	sbbq	%r12, %rdx
	sbbq	%r11, %r8
	sbbq	%r15, %r9
	sbbq	$0, %rax
	andl	$1, %eax
	negq	%rax
	movq	16(%rcx), %rsi
	andq	%rax, %rsi
	movq	8(%rcx), %rbx
	andq	%rax, %rbx
	andq	(%rcx), %rax
	addq	%rdx, %rax
	movq	%rax, 24(%rdi)
	adcq	%r8, %rbx
	movq	%rbx, 32(%rdi)
	adcq	%r9, %rsi
	movq	%rsi, 40(%rdi)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
                                        ## -- End function
	.globl	_mcl_fp_mulUnitPre4L    ## -- Begin function mcl_fp_mulUnitPre4L
	.p2align	4, 0x90
_mcl_fp_mulUnitPre4L:                   ## @mcl_fp_mulUnitPre4L
## %bb.0:
	pushq	%r14
	pushq	%rbx
	movq	%rdx, %rcx
	movq	%rdx, %rax
	mulq	24(%rsi)
	movq	%rdx, %r8
	movq	%rax, %r9
	movq	%rcx, %rax
	mulq	16(%rsi)
	movq	%rdx, %r10
	movq	%rax, %r11
	movq	%rcx, %rax
	mulq	8(%rsi)
	movq	%rdx, %rbx
	movq	%rax, %r14
	movq	%rcx, %rax
	mulq	(%rsi)
	movq	%rax, (%rdi)
	addq	%r14, %rdx
	movq	%rdx, 8(%rdi)
	adcq	%r11, %rbx
	movq	%rbx, 16(%rdi)
	adcq	%r9, %r10
	movq	%r10, 24(%rdi)
	adcq	$0, %r8
	movq	%r8, 32(%rdi)
	popq	%rbx
	popq	%r14
	retq
                                        ## -- End function
	.globl	_mcl_fpDbl_mulPre4L     ## -- Begin function mcl_fpDbl_mulPre4L
	.p2align	4, 0x90
_mcl_fpDbl_mulPre4L:                    ## @mcl_fpDbl_mulPre4L
## %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	%rdx, %rbp
	movq	(%rsi), %rax
	movq	8(%rsi), %r9
	movq	(%rdx), %rbx
	movq	%rax, %r8
	movq	%rax, -8(%rsp)          ## 8-byte Spill
	mulq	%rbx
	movq	%rdx, -80(%rsp)         ## 8-byte Spill
	movq	16(%rsi), %r10
	movq	24(%rsi), %r13
	movq	%rax, (%rdi)
	movq	8(%rbp), %rcx
	movq	%rbp, %r11
	movq	%rbp, -48(%rsp)         ## 8-byte Spill
	movq	%rcx, %rax
	mulq	%r13
	movq	%rdx, -96(%rsp)         ## 8-byte Spill
	movq	%rax, -24(%rsp)         ## 8-byte Spill
	movq	%rcx, %rax
	mulq	%r10
	movq	%rdx, -16(%rsp)         ## 8-byte Spill
	movq	%rax, -40(%rsp)         ## 8-byte Spill
	movq	%rcx, %rax
	mulq	%r9
	movq	%rdx, -32(%rsp)         ## 8-byte Spill
	movq	%rax, %r14
	movq	%rcx, %rax
	mulq	%r8
	movq	%rdx, -88(%rsp)         ## 8-byte Spill
	movq	%rax, %r15
	movq	%r13, %rax
	movq	%r13, -72(%rsp)         ## 8-byte Spill
	mulq	%rbx
	movq	%rdx, %rsi
	movq	%rax, %r12
	movq	%r10, %rax
	movq	%r10, %r8
	movq	%r10, -56(%rsp)         ## 8-byte Spill
	mulq	%rbx
	movq	%rdx, %rcx
	movq	%rax, %rbp
	movq	%r9, %rax
	movq	%r9, %r10
	movq	%r9, -64(%rsp)          ## 8-byte Spill
	mulq	%rbx
	movq	%rdx, %rbx
	addq	-80(%rsp), %rax         ## 8-byte Folded Reload
	adcq	%rbp, %rbx
	adcq	%r12, %rcx
	adcq	$0, %rsi
	addq	%r15, %rax
	movq	%rax, 8(%rdi)
	adcq	%r14, %rbx
	adcq	-40(%rsp), %rcx         ## 8-byte Folded Reload
	adcq	-24(%rsp), %rsi         ## 8-byte Folded Reload
	setb	%al
	addq	-88(%rsp), %rbx         ## 8-byte Folded Reload
	adcq	-32(%rsp), %rcx         ## 8-byte Folded Reload
	movzbl	%al, %r14d
	adcq	-16(%rsp), %rsi         ## 8-byte Folded Reload
	adcq	-96(%rsp), %r14         ## 8-byte Folded Reload
	movq	16(%r11), %rbp
	movq	%rbp, %rax
	mulq	%r13
	movq	%rdx, %r15
	movq	%rax, -96(%rsp)         ## 8-byte Spill
	movq	%rbp, %rax
	mulq	%r8
	movq	%rdx, %r12
	movq	%rax, %r9
	movq	%rbp, %rax
	mulq	%r10
	movq	%rdx, %r13
	movq	%rax, %r10
	movq	%rbp, %rax
	movq	-8(%rsp), %r8           ## 8-byte Reload
	mulq	%r8
	movq	%rdx, %r11
	addq	%r10, %r11
	adcq	%r9, %r13
	adcq	-96(%rsp), %r12         ## 8-byte Folded Reload
	adcq	$0, %r15
	addq	%rbx, %rax
	adcq	%rcx, %r11
	movq	%rax, 16(%rdi)
	adcq	%rsi, %r13
	adcq	%r14, %r12
	adcq	$0, %r15
	movq	-48(%rsp), %rax         ## 8-byte Reload
	movq	24(%rax), %rsi
	movq	%rsi, %rax
	mulq	-72(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %rcx
	movq	%rax, %r14
	movq	%rsi, %rax
	mulq	-56(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %rbx
	movq	%rax, %r9
	movq	%rsi, %rax
	mulq	-64(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %rbp
	movq	%rax, %r10
	movq	%rsi, %rax
	mulq	%r8
	addq	%r10, %rdx
	adcq	%r9, %rbp
	adcq	%r14, %rbx
	adcq	$0, %rcx
	addq	%r11, %rax
	movq	%rax, 24(%rdi)
	adcq	%r13, %rdx
	movq	%rdx, 32(%rdi)
	adcq	%r12, %rbp
	movq	%rbp, 40(%rdi)
	adcq	%r15, %rbx
	movq	%rbx, 48(%rdi)
	adcq	$0, %rcx
	movq	%rcx, 56(%rdi)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
                                        ## -- End function
	.globl	_mcl_fpDbl_sqrPre4L     ## -- Begin function mcl_fpDbl_sqrPre4L
	.p2align	4, 0x90
_mcl_fpDbl_sqrPre4L:                    ## @mcl_fpDbl_sqrPre4L
## %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	%rdi, %r10
	movq	24(%rsi), %rbx
	movq	16(%rsi), %rcx
	movq	(%rsi), %r11
	movq	8(%rsi), %r12
	movq	%r11, %rax
	mulq	%r11
	movq	%rdx, %rbp
	movq	%rax, (%rdi)
	movq	%rbx, %rax
	mulq	%rcx
	movq	%rdx, -16(%rsp)         ## 8-byte Spill
	movq	%rax, -24(%rsp)         ## 8-byte Spill
	movq	%rbx, %rax
	movq	%rbx, -8(%rsp)          ## 8-byte Spill
	mulq	%r11
	movq	%rdx, -48(%rsp)         ## 8-byte Spill
	movq	%rax, -72(%rsp)         ## 8-byte Spill
	movq	%rcx, %rax
	mulq	%r11
	movq	%rdx, %rsi
	movq	%rax, %r15
	movq	%rax, -56(%rsp)         ## 8-byte Spill
	movq	%rbx, %rax
	mulq	%r12
	movq	%rdx, %r14
	movq	%rax, %rbx
	movq	%rax, -32(%rsp)         ## 8-byte Spill
	movq	%rcx, %rax
	mulq	%r12
	movq	%rdx, %r9
	movq	%rax, %rdi
	movq	%rax, -64(%rsp)         ## 8-byte Spill
	movq	%rcx, %rax
	mulq	%rcx
	movq	%rdx, -40(%rsp)         ## 8-byte Spill
	movq	%rax, %rcx
	movq	%r12, %rax
	mulq	%r12
	movq	%rdx, %r13
	movq	%rax, %r8
	movq	%r12, %rax
	mulq	%r11
	addq	%rdx, %r8
	adcq	%rdi, %r13
	movq	%r9, %r12
	adcq	%rbx, %r12
	movq	%r14, %r11
	adcq	$0, %r11
	addq	%rax, %rbp
	adcq	%r15, %rdx
	movq	%rsi, %rbx
	adcq	-72(%rsp), %rbx         ## 8-byte Folded Reload
	movq	-48(%rsp), %rdi         ## 8-byte Reload
	movq	%rdi, %r15
	adcq	$0, %r15
	addq	%rax, %rbp
	adcq	%r8, %rdx
	movq	%rbp, 8(%r10)
	adcq	%r13, %rbx
	adcq	%r12, %r15
	adcq	$0, %r11
	addq	-64(%rsp), %rsi         ## 8-byte Folded Reload
	adcq	%r9, %rcx
	movq	-24(%rsp), %r12         ## 8-byte Reload
	movq	-40(%rsp), %rax         ## 8-byte Reload
	adcq	%r12, %rax
	movq	-16(%rsp), %r8          ## 8-byte Reload
	movq	%r8, %rbp
	adcq	$0, %rbp
	addq	-56(%rsp), %rdx         ## 8-byte Folded Reload
	movq	%rdx, 16(%r10)
	adcq	%rbx, %rsi
	adcq	%r15, %rcx
	adcq	%r11, %rax
	movq	%rax, %r9
	adcq	$0, %rbp
	movq	-8(%rsp), %rax          ## 8-byte Reload
	mulq	%rax
	addq	-32(%rsp), %rdi         ## 8-byte Folded Reload
	adcq	%r12, %r14
	adcq	%r8, %rax
	adcq	$0, %rdx
	addq	-72(%rsp), %rsi         ## 8-byte Folded Reload
	movq	%rsi, 24(%r10)
	adcq	%rcx, %rdi
	movq	%rdi, 32(%r10)
	adcq	%r9, %r14
	movq	%r14, 40(%r10)
	adcq	%rbp, %rax
	movq	%rax, 48(%r10)
	adcq	$0, %rdx
	movq	%rdx, 56(%r10)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
                                        ## -- End function
	.globl	_mcl_fp_mont4L          ## -- Begin function mcl_fp_mont4L
	.p2align	4, 0x90
_mcl_fp_mont4L:                         ## @mcl_fp_mont4L
## %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	%rdx, -88(%rsp)         ## 8-byte Spill
	movq	%rdi, -8(%rsp)          ## 8-byte Spill
	movq	24(%rsi), %rax
	movq	%rax, -40(%rsp)         ## 8-byte Spill
	movq	(%rdx), %rdi
	mulq	%rdi
	movq	%rax, %r14
	movq	%rdx, %r8
	movq	16(%rsi), %rax
	movq	%rax, -48(%rsp)         ## 8-byte Spill
	mulq	%rdi
	movq	%rax, %r12
	movq	%rdx, %r9
	movq	(%rsi), %rbx
	movq	%rbx, -56(%rsp)         ## 8-byte Spill
	movq	8(%rsi), %rax
	movq	%rax, -64(%rsp)         ## 8-byte Spill
	mulq	%rdi
	movq	%rdx, %r10
	movq	%rax, %rbp
	movq	%rbx, %rax
	mulq	%rdi
	movq	%rax, %r11
	movq	%rdx, %r15
	addq	%rbp, %r15
	adcq	%r12, %r10
	adcq	%r14, %r9
	adcq	$0, %r8
	movq	-8(%rcx), %rdi
	movq	%rdi, -80(%rsp)         ## 8-byte Spill
	imulq	%rax, %rdi
	movq	24(%rcx), %rdx
	movq	%rdx, -72(%rsp)         ## 8-byte Spill
	movq	%rdi, %rax
	mulq	%rdx
	movq	%rax, %r12
	movq	%rdx, %r13
	movq	16(%rcx), %rdx
	movq	%rdx, -16(%rsp)         ## 8-byte Spill
	movq	%rdi, %rax
	mulq	%rdx
	movq	%rax, %r14
	movq	%rdx, %rbx
	movq	(%rcx), %rsi
	movq	%rsi, -24(%rsp)         ## 8-byte Spill
	movq	8(%rcx), %rcx
	movq	%rcx, -32(%rsp)         ## 8-byte Spill
	movq	%rdi, %rax
	mulq	%rcx
	movq	%rdx, %rbp
	movq	%rax, %rcx
	movq	%rdi, %rax
	mulq	%rsi
	movq	%rdx, %rdi
	addq	%rcx, %rdi
	adcq	%r14, %rbp
	adcq	%r12, %rbx
	adcq	$0, %r13
	addq	%r11, %rax
	adcq	%r15, %rdi
	adcq	%r10, %rbp
	adcq	%r9, %rbx
	adcq	%r8, %r13
	setb	-96(%rsp)               ## 1-byte Folded Spill
	movq	-88(%rsp), %rax         ## 8-byte Reload
	movq	8(%rax), %rcx
	movq	%rcx, %rax
	mulq	-40(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r12
	movq	%rax, %r8
	movq	%rcx, %rax
	mulq	-48(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r14
	movq	%rax, %r11
	movq	%rcx, %rax
	mulq	-64(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %rsi
	movq	%rax, %r15
	movq	%rcx, %rax
	mulq	-56(%rsp)               ## 8-byte Folded Reload
	movq	%rax, %r10
	movq	%rdx, %r9
	addq	%r15, %r9
	adcq	%r11, %rsi
	adcq	%r8, %r14
	adcq	$0, %r12
	addq	%rdi, %r10
	adcq	%rbp, %r9
	adcq	%rbx, %rsi
	adcq	%r13, %r14
	movzbl	-96(%rsp), %eax         ## 1-byte Folded Reload
	adcq	%rax, %r12
	setb	-96(%rsp)               ## 1-byte Folded Spill
	movq	-80(%rsp), %rcx         ## 8-byte Reload
	imulq	%r10, %rcx
	movq	%rcx, %rax
	mulq	-72(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r13
	movq	%rax, %r15
	movq	%rcx, %rax
	mulq	-16(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %rbx
	movq	%rax, %rbp
	movq	%rcx, %rax
	mulq	-32(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r8
	movq	%rax, %rdi
	movq	%rcx, %rax
	mulq	-24(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r11
	addq	%rdi, %r11
	adcq	%rbp, %r8
	adcq	%r15, %rbx
	adcq	$0, %r13
	addq	%r10, %rax
	adcq	%r9, %r11
	adcq	%rsi, %r8
	adcq	%r14, %rbx
	adcq	%r12, %r13
	movzbl	-96(%rsp), %r10d        ## 1-byte Folded Reload
	adcq	$0, %r10
	movq	-88(%rsp), %rax         ## 8-byte Reload
	movq	16(%rax), %rsi
	movq	%rsi, %rax
	mulq	-40(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r12
	movq	%rax, -96(%rsp)         ## 8-byte Spill
	movq	%rsi, %rax
	mulq	-48(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %rcx
	movq	%rax, %r14
	movq	%rsi, %rax
	mulq	-64(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %rbp
	movq	%rax, %r15
	movq	%rsi, %rax
	mulq	-56(%rsp)               ## 8-byte Folded Reload
	movq	%rax, %r9
	movq	%rdx, %rdi
	addq	%r15, %rdi
	adcq	%r14, %rbp
	adcq	-96(%rsp), %rcx         ## 8-byte Folded Reload
	adcq	$0, %r12
	addq	%r11, %r9
	adcq	%r8, %rdi
	adcq	%rbx, %rbp
	adcq	%r13, %rcx
	adcq	%r10, %r12
	setb	%r15b
	movq	-80(%rsp), %rbx         ## 8-byte Reload
	imulq	%r9, %rbx
	movq	%rbx, %rax
	mulq	-72(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r13
	movq	%rax, %r8
	movq	%rbx, %rax
	mulq	-16(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r11
	movq	%rax, %r10
	movq	%rbx, %rax
	mulq	-32(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %rsi
	movq	%rax, %r14
	movq	%rbx, %rax
	mulq	-24(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %rbx
	addq	%r14, %rbx
	adcq	%r10, %rsi
	adcq	%r8, %r11
	adcq	$0, %r13
	addq	%r9, %rax
	adcq	%rdi, %rbx
	adcq	%rbp, %rsi
	adcq	%rcx, %r11
	adcq	%r12, %r13
	movzbl	%r15b, %edi
	adcq	$0, %rdi
	movq	-88(%rsp), %rax         ## 8-byte Reload
	movq	24(%rax), %rcx
	movq	%rcx, %rax
	mulq	-40(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r8
	movq	%rax, %r14
	movq	%rcx, %rax
	mulq	-48(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r9
	movq	%rax, %r15
	movq	%rcx, %rax
	mulq	-64(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %rbp
	movq	%rax, %r12
	movq	%rcx, %rax
	mulq	-56(%rsp)               ## 8-byte Folded Reload
	movq	%rax, %r10
	movq	%rdx, %rcx
	addq	%r12, %rcx
	adcq	%r15, %rbp
	adcq	%r14, %r9
	adcq	$0, %r8
	addq	%rbx, %r10
	adcq	%rsi, %rcx
	adcq	%r11, %rbp
	adcq	%r13, %r9
	adcq	%rdi, %r8
	setb	-88(%rsp)               ## 1-byte Folded Spill
	movq	-80(%rsp), %r11         ## 8-byte Reload
	imulq	%r10, %r11
	movq	%r11, %rax
	mulq	-72(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r13
	movq	%rax, -80(%rsp)         ## 8-byte Spill
	movq	%r11, %rax
	movq	-16(%rsp), %r12         ## 8-byte Reload
	mulq	%r12
	movq	%rdx, %rdi
	movq	%rax, %rbx
	movq	%r11, %rax
	movq	-32(%rsp), %r14         ## 8-byte Reload
	mulq	%r14
	movq	%rdx, %rsi
	movq	%rax, %r15
	movq	%r11, %rax
	movq	-24(%rsp), %r11         ## 8-byte Reload
	mulq	%r11
	addq	%r15, %rdx
	adcq	%rbx, %rsi
	adcq	-80(%rsp), %rdi         ## 8-byte Folded Reload
	adcq	$0, %r13
	addq	%r10, %rax
	adcq	%rcx, %rdx
	adcq	%rbp, %rsi
	adcq	%r9, %rdi
	movzbl	-88(%rsp), %eax         ## 1-byte Folded Reload
	adcq	%r8, %r13
	adcq	$0, %rax
	movq	%rdx, %rcx
	subq	%r11, %rcx
	movq	%rsi, %rbx
	sbbq	%r14, %rbx
	movq	%rdi, %rbp
	sbbq	%r12, %rbp
	movq	%r13, %r8
	sbbq	-72(%rsp), %r8          ## 8-byte Folded Reload
	sbbq	$0, %rax
	testb	$1, %al
	cmovneq	%rsi, %rbx
	movq	-8(%rsp), %rax          ## 8-byte Reload
	movq	%rbx, 8(%rax)
	cmovneq	%rdx, %rcx
	movq	%rcx, (%rax)
	cmovneq	%rdi, %rbp
	movq	%rbp, 16(%rax)
	cmovneq	%r13, %r8
	movq	%r8, 24(%rax)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
                                        ## -- End function
	.globl	_mcl_fp_montNF4L        ## -- Begin function mcl_fp_montNF4L
	.p2align	4, 0x90
_mcl_fp_montNF4L:                       ## @mcl_fp_montNF4L
## %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	%rdx, %r15
	movq	%rdi, -8(%rsp)          ## 8-byte Spill
	movq	24(%rsi), %rax
	movq	%rax, -88(%rsp)         ## 8-byte Spill
	movq	(%rdx), %rdi
	movq	%rdx, -24(%rsp)         ## 8-byte Spill
	mulq	%rdi
	movq	%rax, %r8
	movq	%rdx, %r12
	movq	16(%rsi), %rax
	movq	%rax, -96(%rsp)         ## 8-byte Spill
	mulq	%rdi
	movq	%rax, %r14
	movq	%rdx, %r10
	movq	(%rsi), %rbp
	movq	%rbp, -56(%rsp)         ## 8-byte Spill
	movq	8(%rsi), %rax
	movq	%rax, -64(%rsp)         ## 8-byte Spill
	mulq	%rdi
	movq	%rdx, %rbx
	movq	%rax, %rsi
	movq	%rbp, %rax
	mulq	%rdi
	movq	%rax, %r11
	movq	%rdx, %r9
	addq	%rsi, %r9
	adcq	%r14, %rbx
	adcq	%r8, %r10
	adcq	$0, %r12
	movq	-8(%rcx), %rsi
	movq	%rsi, -80(%rsp)         ## 8-byte Spill
	imulq	%rax, %rsi
	movq	24(%rcx), %rdx
	movq	%rdx, -40(%rsp)         ## 8-byte Spill
	movq	%rsi, %rax
	mulq	%rdx
	movq	%rax, %r13
	movq	%rdx, -16(%rsp)         ## 8-byte Spill
	movq	16(%rcx), %rdx
	movq	%rdx, -48(%rsp)         ## 8-byte Spill
	movq	%rsi, %rax
	mulq	%rdx
	movq	%rax, %r8
	movq	%rdx, %r14
	movq	(%rcx), %rdi
	movq	%rdi, -72(%rsp)         ## 8-byte Spill
	movq	8(%rcx), %rcx
	movq	%rcx, -32(%rsp)         ## 8-byte Spill
	movq	%rsi, %rax
	mulq	%rcx
	movq	%rdx, %rcx
	movq	%rax, %rbp
	movq	%rsi, %rax
	mulq	%rdi
	addq	%r11, %rax
	adcq	%r9, %rbp
	adcq	%rbx, %r8
	adcq	%r10, %r13
	adcq	$0, %r12
	addq	%rdx, %rbp
	adcq	%rcx, %r8
	adcq	%r14, %r13
	adcq	-16(%rsp), %r12         ## 8-byte Folded Reload
	movq	8(%r15), %rdi
	movq	%rdi, %rax
	mulq	-88(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %rbx
	movq	%rax, %rsi
	movq	%rdi, %rax
	mulq	-96(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r10
	movq	%rax, %r11
	movq	%rdi, %rax
	mulq	-64(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %rcx
	movq	%rax, %r14
	movq	%rdi, %rax
	mulq	-56(%rsp)               ## 8-byte Folded Reload
	movq	%rax, %rdi
	movq	%rdx, %r9
	addq	%r14, %r9
	adcq	%r11, %rcx
	adcq	%rsi, %r10
	adcq	$0, %rbx
	addq	%rbp, %rdi
	adcq	%r8, %r9
	adcq	%r13, %rcx
	adcq	%r12, %r10
	adcq	$0, %rbx
	movq	-80(%rsp), %rsi         ## 8-byte Reload
	imulq	%rdi, %rsi
	movq	%rsi, %rax
	mulq	-40(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r8
	movq	%rax, %r12
	movq	%rsi, %rax
	mulq	-48(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r11
	movq	%rax, %r13
	movq	%rsi, %rax
	movq	-32(%rsp), %r15         ## 8-byte Reload
	mulq	%r15
	movq	%rdx, %r14
	movq	%rax, %rbp
	movq	%rsi, %rax
	mulq	-72(%rsp)               ## 8-byte Folded Reload
	addq	%rdi, %rax
	adcq	%r9, %rbp
	adcq	%rcx, %r13
	adcq	%r10, %r12
	adcq	$0, %rbx
	addq	%rdx, %rbp
	adcq	%r14, %r13
	adcq	%r11, %r12
	adcq	%r8, %rbx
	movq	-24(%rsp), %rax         ## 8-byte Reload
	movq	16(%rax), %rdi
	movq	%rdi, %rax
	mulq	-88(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %rsi
	movq	%rax, %r10
	movq	%rdi, %rax
	mulq	-96(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r8
	movq	%rax, %r11
	movq	%rdi, %rax
	mulq	-64(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %rcx
	movq	%rax, %r14
	movq	%rdi, %rax
	mulq	-56(%rsp)               ## 8-byte Folded Reload
	movq	%rax, %r9
	movq	%rdx, %rdi
	addq	%r14, %rdi
	adcq	%r11, %rcx
	adcq	%r10, %r8
	adcq	$0, %rsi
	addq	%rbp, %r9
	adcq	%r13, %rdi
	adcq	%r12, %rcx
	adcq	%rbx, %r8
	adcq	$0, %rsi
	movq	-80(%rsp), %rbx         ## 8-byte Reload
	imulq	%r9, %rbx
	movq	%rbx, %rax
	mulq	-40(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r10
	movq	%rax, %r12
	movq	%rbx, %rax
	mulq	-48(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r11
	movq	%rax, %r13
	movq	%rbx, %rax
	mulq	%r15
	movq	%rdx, %r14
	movq	%rax, %rbp
	movq	%rbx, %rax
	mulq	-72(%rsp)               ## 8-byte Folded Reload
	addq	%r9, %rax
	adcq	%rdi, %rbp
	adcq	%rcx, %r13
	adcq	%r8, %r12
	adcq	$0, %rsi
	addq	%rdx, %rbp
	adcq	%r14, %r13
	adcq	%r11, %r12
	adcq	%r10, %rsi
	movq	-24(%rsp), %rax         ## 8-byte Reload
	movq	24(%rax), %rdi
	movq	%rdi, %rax
	mulq	-88(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %rbx
	movq	%rax, %rcx
	movq	%rdi, %rax
	mulq	-96(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r8
	movq	%rax, %r11
	movq	%rdi, %rax
	mulq	-64(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r10
	movq	%rax, %r14
	movq	%rdi, %rax
	mulq	-56(%rsp)               ## 8-byte Folded Reload
	movq	%rax, %r9
	movq	%rdx, %rdi
	addq	%r14, %rdi
	adcq	%r11, %r10
	adcq	%rcx, %r8
	adcq	$0, %rbx
	addq	%rbp, %r9
	adcq	%r13, %rdi
	adcq	%r12, %r10
	adcq	%rsi, %r8
	adcq	$0, %rbx
	movq	-80(%rsp), %r15         ## 8-byte Reload
	imulq	%r9, %r15
	movq	%r15, %rax
	movq	-40(%rsp), %r12         ## 8-byte Reload
	mulq	%r12
	movq	%rdx, -88(%rsp)         ## 8-byte Spill
	movq	%rax, %r13
	movq	%r15, %rax
	movq	-48(%rsp), %r11         ## 8-byte Reload
	mulq	%r11
	movq	%rdx, -96(%rsp)         ## 8-byte Spill
	movq	%rax, %rbp
	movq	%r15, %rax
	movq	-72(%rsp), %rsi         ## 8-byte Reload
	mulq	%rsi
	movq	%rdx, %r14
	movq	%rax, %rcx
	movq	%r15, %rax
	movq	-32(%rsp), %r15         ## 8-byte Reload
	mulq	%r15
	addq	%r9, %rcx
	adcq	%rdi, %rax
	adcq	%r10, %rbp
	adcq	%r8, %r13
	adcq	$0, %rbx
	addq	%r14, %rax
	adcq	%rdx, %rbp
	adcq	-96(%rsp), %r13         ## 8-byte Folded Reload
	adcq	-88(%rsp), %rbx         ## 8-byte Folded Reload
	movq	%rax, %rcx
	subq	%rsi, %rcx
	movq	%rbp, %rdx
	sbbq	%r15, %rdx
	movq	%r13, %rdi
	sbbq	%r11, %rdi
	movq	%rbx, %rsi
	sbbq	%r12, %rsi
	cmovsq	%rbp, %rdx
	movq	-8(%rsp), %rbp          ## 8-byte Reload
	movq	%rdx, 8(%rbp)
	cmovsq	%rax, %rcx
	movq	%rcx, (%rbp)
	cmovsq	%r13, %rdi
	movq	%rdi, 16(%rbp)
	cmovsq	%rbx, %rsi
	movq	%rsi, 24(%rbp)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
                                        ## -- End function
	.globl	_mcl_fp_montRed4L       ## -- Begin function mcl_fp_montRed4L
	.p2align	4, 0x90
_mcl_fp_montRed4L:                      ## @mcl_fp_montRed4L
## %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	%rdx, %rcx
	movq	%rdi, -8(%rsp)          ## 8-byte Spill
	movq	-8(%rdx), %r8
	movq	(%rdx), %r11
	movq	(%rsi), %r13
	movq	%r13, %rbx
	imulq	%r8, %rbx
	movq	24(%rdx), %rdx
	movq	%rdx, -48(%rsp)         ## 8-byte Spill
	movq	%rbx, %rax
	mulq	%rdx
	movq	%rax, %rbp
	movq	%rdx, %r9
	movq	16(%rcx), %rdx
	movq	%rdx, -32(%rsp)         ## 8-byte Spill
	movq	%rbx, %rax
	mulq	%rdx
	movq	%rax, %r15
	movq	%rdx, %r10
	movq	8(%rcx), %rcx
	movq	%rcx, -40(%rsp)         ## 8-byte Spill
	movq	%rbx, %rax
	mulq	%rcx
	movq	%rdx, %r14
	movq	%rax, %r12
	movq	%rbx, %rax
	mulq	%r11
	movq	%r11, %rbx
	movq	%r11, -24(%rsp)         ## 8-byte Spill
	movq	%rdx, %rcx
	addq	%r12, %rcx
	adcq	%r15, %r14
	adcq	%rbp, %r10
	adcq	$0, %r9
	movq	56(%rsi), %rdx
	movq	48(%rsi), %rdi
	addq	%r13, %rax
	movq	40(%rsi), %rax
	adcq	8(%rsi), %rcx
	adcq	16(%rsi), %r14
	adcq	24(%rsi), %r10
	adcq	32(%rsi), %r9
	adcq	$0, %rax
	movq	%rax, -56(%rsp)         ## 8-byte Spill
	adcq	$0, %rdi
	movq	%rdi, -64(%rsp)         ## 8-byte Spill
	adcq	$0, %rdx
	movq	%rdx, -72(%rsp)         ## 8-byte Spill
	setb	-73(%rsp)               ## 1-byte Folded Spill
	movq	%r8, %rsi
	imulq	%rcx, %rsi
	movq	%rsi, %rax
	mulq	-48(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r11
	movq	%rax, -16(%rsp)         ## 8-byte Spill
	movq	%rsi, %rax
	movq	-32(%rsp), %rbp         ## 8-byte Reload
	mulq	%rbp
	movq	%rdx, %r15
	movq	%rax, %rdi
	movq	%rsi, %rax
	mulq	-40(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r12
	movq	%rax, %r13
	movq	%rsi, %rax
	mulq	%rbx
	movq	%rdx, %rbx
	addq	%r13, %rbx
	adcq	%rdi, %r12
	adcq	-16(%rsp), %r15         ## 8-byte Folded Reload
	adcq	$0, %r11
	addq	%rcx, %rax
	adcq	%r14, %rbx
	adcq	%r10, %r12
	movzbl	-73(%rsp), %edi         ## 1-byte Folded Reload
	adcq	%r9, %r15
	adcq	-56(%rsp), %r11         ## 8-byte Folded Reload
	adcq	$0, -64(%rsp)           ## 8-byte Folded Spill
	movq	-72(%rsp), %rsi         ## 8-byte Reload
	adcq	$0, %rsi
	adcq	$0, %rdi
	movq	%r8, %rcx
	imulq	%rbx, %rcx
	movq	%rcx, %rax
	movq	-48(%rsp), %r13         ## 8-byte Reload
	mulq	%r13
	movq	%rdx, %r9
	movq	%rax, -72(%rsp)         ## 8-byte Spill
	movq	%rcx, %rax
	mulq	%rbp
	movq	%rdx, %r10
	movq	%rax, -56(%rsp)         ## 8-byte Spill
	movq	%rcx, %rax
	mulq	-40(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r14
	movq	%rax, %rbp
	movq	%rcx, %rax
	mulq	-24(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %rcx
	addq	%rbp, %rcx
	adcq	-56(%rsp), %r14         ## 8-byte Folded Reload
	adcq	-72(%rsp), %r10         ## 8-byte Folded Reload
	adcq	$0, %r9
	addq	%rbx, %rax
	adcq	%r12, %rcx
	adcq	%r15, %r14
	adcq	%r11, %r10
	adcq	-64(%rsp), %r9          ## 8-byte Folded Reload
	adcq	$0, %rsi
	movq	%rsi, -72(%rsp)         ## 8-byte Spill
	adcq	$0, %rdi
	imulq	%rcx, %r8
	movq	%r8, %rax
	mulq	%r13
	movq	%rdx, %r11
	movq	%rax, -64(%rsp)         ## 8-byte Spill
	movq	%r8, %rax
	movq	-32(%rsp), %rbp         ## 8-byte Reload
	mulq	%rbp
	movq	%rdx, %r13
	movq	%rax, %r12
	movq	%r8, %rax
	movq	-40(%rsp), %r15         ## 8-byte Reload
	mulq	%r15
	movq	%rdx, %rbx
	movq	%rax, %rsi
	movq	%r8, %rax
	movq	-24(%rsp), %r8          ## 8-byte Reload
	mulq	%r8
	addq	%rsi, %rdx
	adcq	%r12, %rbx
	adcq	-64(%rsp), %r13         ## 8-byte Folded Reload
	adcq	$0, %r11
	addq	%rcx, %rax
	adcq	%r14, %rdx
	adcq	%r10, %rbx
	adcq	%r9, %r13
	adcq	-72(%rsp), %r11         ## 8-byte Folded Reload
	adcq	$0, %rdi
	movq	%rdx, %rax
	subq	%r8, %rax
	movq	%rbx, %rcx
	sbbq	%r15, %rcx
	movq	%r13, %rsi
	sbbq	%rbp, %rsi
	movq	%r11, %rbp
	sbbq	-48(%rsp), %rbp         ## 8-byte Folded Reload
	sbbq	$0, %rdi
	testb	$1, %dil
	cmovneq	%rbx, %rcx
	movq	-8(%rsp), %rdi          ## 8-byte Reload
	movq	%rcx, 8(%rdi)
	cmovneq	%rdx, %rax
	movq	%rax, (%rdi)
	cmovneq	%r13, %rsi
	movq	%rsi, 16(%rdi)
	cmovneq	%r11, %rbp
	movq	%rbp, 24(%rdi)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
                                        ## -- End function
	.globl	_mcl_fp_addPre4L        ## -- Begin function mcl_fp_addPre4L
	.p2align	4, 0x90
_mcl_fp_addPre4L:                       ## @mcl_fp_addPre4L
## %bb.0:
	movdqu	(%rsi), %xmm0
	movdqu	16(%rsi), %xmm1
	movq	%xmm1, %r8
	movq	%xmm0, %r10
	pshufd	$78, %xmm1, %xmm1       ## xmm1 = xmm1[2,3,0,1]
	movq	%xmm1, %r9
	movdqu	(%rdx), %xmm1
	movdqu	16(%rdx), %xmm2
	movq	%xmm2, %rdx
	movq	%xmm1, %rax
	pshufd	$78, %xmm2, %xmm2       ## xmm2 = xmm2[2,3,0,1]
	movq	%xmm2, %rsi
	pshufd	$78, %xmm0, %xmm0       ## xmm0 = xmm0[2,3,0,1]
	movq	%xmm0, %r11
	pshufd	$78, %xmm1, %xmm0       ## xmm0 = xmm1[2,3,0,1]
	movq	%xmm0, %rcx
	addq	%r10, %rax
	movq	%rax, (%rdi)
	adcq	%r11, %rcx
	movq	%rcx, 8(%rdi)
	adcq	%r8, %rdx
	movq	%rdx, 16(%rdi)
	adcq	%r9, %rsi
	movq	%rsi, 24(%rdi)
	setb	%al
	movzbl	%al, %eax
	retq
                                        ## -- End function
	.globl	_mcl_fp_subPre4L        ## -- Begin function mcl_fp_subPre4L
	.p2align	4, 0x90
_mcl_fp_subPre4L:                       ## @mcl_fp_subPre4L
## %bb.0:
	pushq	%rbx
	movdqu	(%rdx), %xmm0
	movdqu	16(%rdx), %xmm1
	movq	%xmm1, %r9
	movq	%xmm0, %r10
	pshufd	$78, %xmm1, %xmm1       ## xmm1 = xmm1[2,3,0,1]
	movq	%xmm1, %r8
	movdqu	(%rsi), %xmm1
	movdqu	16(%rsi), %xmm2
	movq	%xmm2, %rsi
	movq	%xmm1, %rcx
	pshufd	$78, %xmm2, %xmm2       ## xmm2 = xmm2[2,3,0,1]
	movq	%xmm2, %rdx
	pshufd	$78, %xmm0, %xmm0       ## xmm0 = xmm0[2,3,0,1]
	movq	%xmm0, %r11
	pshufd	$78, %xmm1, %xmm0       ## xmm0 = xmm1[2,3,0,1]
	movq	%xmm0, %rbx
	xorl	%eax, %eax
	subq	%r10, %rcx
	movq	%rcx, (%rdi)
	sbbq	%r11, %rbx
	movq	%rbx, 8(%rdi)
	sbbq	%r9, %rsi
	movq	%rsi, 16(%rdi)
	sbbq	%r8, %rdx
	movq	%rdx, 24(%rdi)
	sbbq	$0, %rax
	andl	$1, %eax
	popq	%rbx
	retq
                                        ## -- End function
	.globl	_mcl_fp_shr1_4L         ## -- Begin function mcl_fp_shr1_4L
	.p2align	4, 0x90
_mcl_fp_shr1_4L:                        ## @mcl_fp_shr1_4L
## %bb.0:
	movq	(%rsi), %rax
	movq	8(%rsi), %r8
	movq	16(%rsi), %rdx
	movq	%rdx, %rcx
	shldq	$63, %r8, %rcx
	movq	24(%rsi), %rsi
	movq	%rcx, 8(%rdi)
	shrdq	$1, %r8, %rax
	movq	%rax, (%rdi)
	shrdq	$1, %rsi, %rdx
	movq	%rdx, 16(%rdi)
	shrq	%rsi
	movq	%rsi, 24(%rdi)
	retq
                                        ## -- End function
	.globl	_mcl_fp_add4L           ## -- Begin function mcl_fp_add4L
	.p2align	4, 0x90
_mcl_fp_add4L:                          ## @mcl_fp_add4L
## %bb.0:
	pushq	%rbx
	movdqu	(%rsi), %xmm0
	movdqu	16(%rsi), %xmm1
	movq	%xmm1, %r9
	movq	%xmm0, %r10
	pshufd	$78, %xmm1, %xmm1       ## xmm1 = xmm1[2,3,0,1]
	movq	%xmm1, %r11
	movdqu	(%rdx), %xmm1
	movdqu	16(%rdx), %xmm2
	movq	%xmm2, %r8
	movq	%xmm1, %rsi
	pshufd	$78, %xmm2, %xmm2       ## xmm2 = xmm2[2,3,0,1]
	movq	%xmm2, %rdx
	pshufd	$78, %xmm0, %xmm0       ## xmm0 = xmm0[2,3,0,1]
	movq	%xmm0, %rbx
	pshufd	$78, %xmm1, %xmm0       ## xmm0 = xmm1[2,3,0,1]
	movq	%xmm0, %rax
	addq	%r10, %rsi
	movq	%rsi, (%rdi)
	adcq	%rbx, %rax
	movq	%rax, 8(%rdi)
	adcq	%r9, %r8
	movq	%r8, 16(%rdi)
	adcq	%r11, %rdx
	movq	%rdx, 24(%rdi)
	setb	%bl
	movzbl	%bl, %ebx
	subq	(%rcx), %rsi
	sbbq	8(%rcx), %rax
	sbbq	16(%rcx), %r8
	sbbq	24(%rcx), %rdx
	sbbq	$0, %rbx
	testb	$1, %bl
	jne	LBB59_2
## %bb.1:                               ## %nocarry
	movq	%rsi, (%rdi)
	movq	%rax, 8(%rdi)
	movq	%r8, 16(%rdi)
	movq	%rdx, 24(%rdi)
LBB59_2:                                ## %carry
	popq	%rbx
	retq
                                        ## -- End function
	.globl	_mcl_fp_addNF4L         ## -- Begin function mcl_fp_addNF4L
	.p2align	4, 0x90
_mcl_fp_addNF4L:                        ## @mcl_fp_addNF4L
## %bb.0:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movdqu	(%rsi), %xmm0
	movdqu	16(%rsi), %xmm1
	movq	%xmm1, %r8
	movq	%xmm0, %r10
	pshufd	$78, %xmm1, %xmm1       ## xmm1 = xmm1[2,3,0,1]
	movq	%xmm1, %r9
	movdqu	(%rdx), %xmm1
	movdqu	16(%rdx), %xmm2
	movq	%xmm2, %r14
	movq	%xmm1, %r12
	pshufd	$78, %xmm2, %xmm2       ## xmm2 = xmm2[2,3,0,1]
	movq	%xmm2, %r15
	pshufd	$78, %xmm0, %xmm0       ## xmm0 = xmm0[2,3,0,1]
	movq	%xmm0, %r11
	pshufd	$78, %xmm1, %xmm0       ## xmm0 = xmm1[2,3,0,1]
	movq	%xmm0, %r13
	addq	%r10, %r12
	adcq	%r11, %r13
	adcq	%r8, %r14
	adcq	%r9, %r15
	movq	%r12, %rax
	subq	(%rcx), %rax
	movq	%r13, %rbx
	sbbq	8(%rcx), %rbx
	movq	%r14, %rdx
	sbbq	16(%rcx), %rdx
	movq	%r15, %rsi
	sbbq	24(%rcx), %rsi
	cmovsq	%r13, %rbx
	movq	%rbx, 8(%rdi)
	cmovsq	%r12, %rax
	movq	%rax, (%rdi)
	cmovsq	%r14, %rdx
	movq	%rdx, 16(%rdi)
	cmovsq	%r15, %rsi
	movq	%rsi, 24(%rdi)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
                                        ## -- End function
	.globl	_mcl_fp_sub4L           ## -- Begin function mcl_fp_sub4L
	.p2align	4, 0x90
_mcl_fp_sub4L:                          ## @mcl_fp_sub4L
## %bb.0:
	pushq	%r14
	pushq	%rbx
	movdqu	(%rdx), %xmm0
	movdqu	16(%rdx), %xmm1
	movq	%xmm1, %r9
	movq	%xmm0, %r10
	pshufd	$78, %xmm1, %xmm1       ## xmm1 = xmm1[2,3,0,1]
	movq	%xmm1, %r11
	movdqu	(%rsi), %xmm1
	movdqu	16(%rsi), %xmm2
	movq	%xmm2, %r8
	movq	%xmm1, %rsi
	pshufd	$78, %xmm2, %xmm2       ## xmm2 = xmm2[2,3,0,1]
	movq	%xmm2, %rdx
	pshufd	$78, %xmm0, %xmm0       ## xmm0 = xmm0[2,3,0,1]
	movq	%xmm0, %r14
	pshufd	$78, %xmm1, %xmm0       ## xmm0 = xmm1[2,3,0,1]
	movq	%xmm0, %rax
	xorl	%ebx, %ebx
	subq	%r10, %rsi
	movq	%rsi, (%rdi)
	sbbq	%r14, %rax
	movq	%rax, 8(%rdi)
	sbbq	%r9, %r8
	movq	%r8, 16(%rdi)
	sbbq	%r11, %rdx
	movq	%rdx, 24(%rdi)
	sbbq	$0, %rbx
	testb	$1, %bl
	je	LBB61_2
## %bb.1:                               ## %carry
	movq	24(%rcx), %r9
	movq	8(%rcx), %rbx
	movq	16(%rcx), %r10
	addq	(%rcx), %rsi
	movq	%rsi, (%rdi)
	adcq	%rax, %rbx
	movq	%rbx, 8(%rdi)
	adcq	%r8, %r10
	movq	%r10, 16(%rdi)
	adcq	%rdx, %r9
	movq	%r9, 24(%rdi)
LBB61_2:                                ## %nocarry
	popq	%rbx
	popq	%r14
	retq
                                        ## -- End function
	.globl	_mcl_fp_subNF4L         ## -- Begin function mcl_fp_subNF4L
	.p2align	4, 0x90
_mcl_fp_subNF4L:                        ## @mcl_fp_subNF4L
## %bb.0:
	pushq	%rbx
	movdqu	(%rdx), %xmm0
	movdqu	16(%rdx), %xmm1
	movq	%xmm1, %rax
	movq	%xmm0, %rdx
	pshufd	$78, %xmm1, %xmm1       ## xmm1 = xmm1[2,3,0,1]
	movq	%xmm1, %rbx
	movdqu	(%rsi), %xmm1
	movdqu	16(%rsi), %xmm2
	movq	%xmm2, %r8
	movq	%xmm1, %r10
	pshufd	$78, %xmm2, %xmm2       ## xmm2 = xmm2[2,3,0,1]
	movq	%xmm2, %r9
	pshufd	$78, %xmm0, %xmm0       ## xmm0 = xmm0[2,3,0,1]
	movq	%xmm0, %rsi
	pshufd	$78, %xmm1, %xmm0       ## xmm0 = xmm1[2,3,0,1]
	movq	%xmm0, %r11
	subq	%rdx, %r10
	sbbq	%rsi, %r11
	sbbq	%rax, %r8
	sbbq	%rbx, %r9
	jns	LBB62_1
## %bb.2:
	movq	24(%rcx), %rdx
	movq	16(%rcx), %rsi
	movq	8(%rcx), %rax
	movq	(%rcx), %rcx
	jmp	LBB62_3
LBB62_1:
	xorl	%edx, %edx
	xorl	%esi, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
LBB62_3:
	addq	%r10, %rcx
	movq	%rcx, (%rdi)
	adcq	%r11, %rax
	movq	%rax, 8(%rdi)
	adcq	%r8, %rsi
	movq	%rsi, 16(%rdi)
	adcq	%r9, %rdx
	movq	%rdx, 24(%rdi)
	popq	%rbx
	retq
                                        ## -- End function
	.globl	_mcl_fpDbl_add4L        ## -- Begin function mcl_fpDbl_add4L
	.p2align	4, 0x90
_mcl_fpDbl_add4L:                       ## @mcl_fpDbl_add4L
## %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movdqu	(%rdx), %xmm0
	movdqu	16(%rdx), %xmm1
	movdqu	32(%rdx), %xmm2
	movdqu	48(%rdx), %xmm3
	movq	%xmm3, %r8
	movq	%xmm2, %r9
	movq	%xmm1, %r10
	movq	%xmm0, %r11
	pshufd	$78, %xmm1, %xmm1       ## xmm1 = xmm1[2,3,0,1]
	movdqu	(%rsi), %xmm4
	movdqu	16(%rsi), %xmm5
	movdqu	32(%rsi), %xmm6
	movdqu	48(%rsi), %xmm7
	movq	%xmm7, %r14
	movq	%xmm6, %r13
	movq	%xmm5, %rbx
	movq	%xmm4, %rax
	pshufd	$78, %xmm5, %xmm5       ## xmm5 = xmm5[2,3,0,1]
	pshufd	$78, %xmm2, %xmm2       ## xmm2 = xmm2[2,3,0,1]
	pshufd	$78, %xmm0, %xmm0       ## xmm0 = xmm0[2,3,0,1]
	pshufd	$78, %xmm4, %xmm4       ## xmm4 = xmm4[2,3,0,1]
	pshufd	$78, %xmm6, %xmm6       ## xmm6 = xmm6[2,3,0,1]
	pshufd	$78, %xmm3, %xmm3       ## xmm3 = xmm3[2,3,0,1]
	pshufd	$78, %xmm7, %xmm7       ## xmm7 = xmm7[2,3,0,1]
	movq	%xmm7, %r15
	movq	%xmm3, %rbp
	movq	%xmm6, %r12
	addq	%r11, %rax
	movq	%rax, (%rdi)
	movq	%xmm4, %rax
	movq	%xmm0, %rdx
	adcq	%rax, %rdx
	movq	%rdx, 8(%rdi)
	movq	%xmm2, %r11
	movq	%xmm5, %rdx
	adcq	%r10, %rbx
	movq	%rbx, 16(%rdi)
	movq	%xmm1, %rbx
	adcq	%rdx, %rbx
	movq	%rbx, 24(%rdi)
	adcq	%r9, %r13
	adcq	%r12, %r11
	adcq	%r8, %r14
	adcq	%r15, %rbp
	setb	%dl
	movzbl	%dl, %r8d
	movq	%r13, %rbx
	subq	(%rcx), %rbx
	movq	%r11, %rax
	sbbq	8(%rcx), %rax
	movq	%r14, %rsi
	sbbq	16(%rcx), %rsi
	movq	%rbp, %rdx
	sbbq	24(%rcx), %rdx
	sbbq	$0, %r8
	testb	$1, %r8b
	cmovneq	%r11, %rax
	movq	%rax, 40(%rdi)
	cmovneq	%r13, %rbx
	movq	%rbx, 32(%rdi)
	cmovneq	%r14, %rsi
	movq	%rsi, 48(%rdi)
	cmovneq	%rbp, %rdx
	movq	%rdx, 56(%rdi)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
                                        ## -- End function
	.globl	_mcl_fpDbl_sub4L        ## -- Begin function mcl_fpDbl_sub4L
	.p2align	4, 0x90
_mcl_fpDbl_sub4L:                       ## @mcl_fpDbl_sub4L
## %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movdqu	(%rsi), %xmm1
	movdqu	16(%rsi), %xmm0
	movdqu	32(%rsi), %xmm2
	movdqu	48(%rsi), %xmm3
	movq	%xmm3, %r8
	movq	%xmm2, %r9
	movq	%xmm0, %rsi
	movq	%xmm1, %rbx
	pshufd	$78, %xmm0, %xmm0       ## xmm0 = xmm0[2,3,0,1]
	movdqu	(%rdx), %xmm4
	movdqu	16(%rdx), %xmm5
	movdqu	32(%rdx), %xmm6
	movdqu	48(%rdx), %xmm7
	movq	%xmm7, %r10
	movq	%xmm6, %r14
	movq	%xmm5, %r15
	movq	%xmm4, %rdx
	pshufd	$78, %xmm5, %xmm5       ## xmm5 = xmm5[2,3,0,1]
	pshufd	$78, %xmm2, %xmm2       ## xmm2 = xmm2[2,3,0,1]
	pshufd	$78, %xmm6, %xmm6       ## xmm6 = xmm6[2,3,0,1]
	pshufd	$78, %xmm1, %xmm1       ## xmm1 = xmm1[2,3,0,1]
	pshufd	$78, %xmm4, %xmm4       ## xmm4 = xmm4[2,3,0,1]
	pshufd	$78, %xmm3, %xmm3       ## xmm3 = xmm3[2,3,0,1]
	pshufd	$78, %xmm7, %xmm7       ## xmm7 = xmm7[2,3,0,1]
	movq	%xmm7, %r12
	movq	%xmm3, %r11
	xorl	%eax, %eax
	subq	%rdx, %rbx
	movq	%rbx, (%rdi)
	movq	%xmm4, %rdx
	movq	%xmm1, %rbx
	sbbq	%rdx, %rbx
	movq	%rbx, 8(%rdi)
	movq	%xmm6, %r13
	movq	%xmm2, %rbp
	sbbq	%r15, %rsi
	movq	%rsi, 16(%rdi)
	movq	%xmm5, %rsi
	movq	%xmm0, %rbx
	sbbq	%rsi, %rbx
	movq	%rbx, 24(%rdi)
	sbbq	%r14, %r9
	sbbq	%r13, %rbp
	sbbq	%r10, %r8
	sbbq	%r12, %r11
	sbbq	$0, %rax
	andl	$1, %eax
	negq	%rax
	movq	24(%rcx), %rsi
	andq	%rax, %rsi
	movq	16(%rcx), %rbx
	andq	%rax, %rbx
	movq	8(%rcx), %rdx
	andq	%rax, %rdx
	andq	(%rcx), %rax
	addq	%r9, %rax
	movq	%rax, 32(%rdi)
	adcq	%rbp, %rdx
	movq	%rdx, 40(%rdi)
	adcq	%r8, %rbx
	movq	%rbx, 48(%rdi)
	adcq	%r11, %rsi
	movq	%rsi, 56(%rdi)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
                                        ## -- End function
	.globl	_mcl_fp_mulUnitPre5L    ## -- Begin function mcl_fp_mulUnitPre5L
	.p2align	4, 0x90
_mcl_fp_mulUnitPre5L:                   ## @mcl_fp_mulUnitPre5L
## %bb.0:
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdx, %rcx
	movq	%rdx, %rax
	mulq	32(%rsi)
	movq	%rdx, %r8
	movq	%rax, %r9
	movq	%rcx, %rax
	mulq	24(%rsi)
	movq	%rdx, %r10
	movq	%rax, %r11
	movq	%rcx, %rax
	mulq	16(%rsi)
	movq	%rdx, %r15
	movq	%rax, %r14
	movq	%rcx, %rax
	mulq	8(%rsi)
	movq	%rdx, %rbx
	movq	%rax, %r12
	movq	%rcx, %rax
	mulq	(%rsi)
	movq	%rax, (%rdi)
	addq	%r12, %rdx
	movq	%rdx, 8(%rdi)
	adcq	%r14, %rbx
	movq	%rbx, 16(%rdi)
	adcq	%r11, %r15
	movq	%r15, 24(%rdi)
	adcq	%r9, %r10
	movq	%r10, 32(%rdi)
	adcq	$0, %r8
	movq	%r8, 40(%rdi)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
                                        ## -- End function
	.globl	_mcl_fpDbl_mulPre5L     ## -- Begin function mcl_fpDbl_mulPre5L
	.p2align	4, 0x90
_mcl_fpDbl_mulPre5L:                    ## @mcl_fpDbl_mulPre5L
## %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	%rdx, %r12
	movq	%rdi, -48(%rsp)         ## 8-byte Spill
	movq	(%rsi), %rax
	movq	%rax, -56(%rsp)         ## 8-byte Spill
	movq	8(%rsi), %r9
	movq	(%rdx), %rcx
	mulq	%rcx
	movq	%rdx, -88(%rsp)         ## 8-byte Spill
	movq	16(%rsi), %r10
	movq	24(%rsi), %r14
	movq	32(%rsi), %r13
	movq	%rax, (%rdi)
	movq	%r13, %rax
	movq	%r13, -32(%rsp)         ## 8-byte Spill
	mulq	%rcx
	movq	%rdx, %r8
	movq	%rax, -72(%rsp)         ## 8-byte Spill
	movq	%r14, %rax
	movq	%r14, -24(%rsp)         ## 8-byte Spill
	mulq	%rcx
	movq	%rdx, %rdi
	movq	%rax, -80(%rsp)         ## 8-byte Spill
	movq	%r10, %rax
	movq	%r10, -16(%rsp)         ## 8-byte Spill
	mulq	%rcx
	movq	%rdx, %r11
	movq	%rax, %rsi
	movq	%r9, %rax
	movq	%r9, -40(%rsp)          ## 8-byte Spill
	mulq	%rcx
	movq	%rdx, %rbp
	movq	%rax, %rcx
	addq	-88(%rsp), %rcx         ## 8-byte Folded Reload
	adcq	%rsi, %rbp
	adcq	-80(%rsp), %r11         ## 8-byte Folded Reload
	adcq	-72(%rsp), %rdi         ## 8-byte Folded Reload
	adcq	$0, %r8
	movq	8(%r12), %rbx
	movq	%r12, -8(%rsp)          ## 8-byte Spill
	movq	%rbx, %rax
	mulq	%r13
	movq	%rdx, -88(%rsp)         ## 8-byte Spill
	movq	%rax, %r13
	movq	%rbx, %rax
	mulq	%r14
	movq	%rdx, -72(%rsp)         ## 8-byte Spill
	movq	%rax, %r15
	movq	%rbx, %rax
	mulq	%r10
	movq	%rdx, -80(%rsp)         ## 8-byte Spill
	movq	%rax, %r14
	movq	%rbx, %rax
	mulq	%r9
	movq	%rdx, %r10
	movq	%rax, %rsi
	movq	%rbx, %rax
	movq	-56(%rsp), %r9          ## 8-byte Reload
	mulq	%r9
	addq	%rcx, %rax
	movq	-48(%rsp), %rcx         ## 8-byte Reload
	movq	%rax, 8(%rcx)
	adcq	%rbp, %rsi
	adcq	%r11, %r14
	adcq	%rdi, %r15
	adcq	%r8, %r13
	setb	%al
	addq	%rdx, %rsi
	adcq	%r10, %r14
	movzbl	%al, %eax
	adcq	-80(%rsp), %r15         ## 8-byte Folded Reload
	adcq	-72(%rsp), %r13         ## 8-byte Folded Reload
	adcq	-88(%rsp), %rax         ## 8-byte Folded Reload
	movq	%rax, -88(%rsp)         ## 8-byte Spill
	movq	16(%r12), %rcx
	movq	%rcx, %rax
	mulq	-32(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r12
	movq	%rax, -72(%rsp)         ## 8-byte Spill
	movq	%rcx, %rax
	mulq	-24(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r10
	movq	%rax, -80(%rsp)         ## 8-byte Spill
	movq	%rcx, %rax
	movq	-16(%rsp), %rdi         ## 8-byte Reload
	mulq	%rdi
	movq	%rdx, %rbp
	movq	%rax, -64(%rsp)         ## 8-byte Spill
	movq	%rcx, %rax
	mulq	-40(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r8
	movq	%rax, %rbx
	movq	%rcx, %rax
	mulq	%r9
	movq	%rdx, %r11
	addq	%rbx, %r11
	adcq	-64(%rsp), %r8          ## 8-byte Folded Reload
	adcq	-80(%rsp), %rbp         ## 8-byte Folded Reload
	adcq	-72(%rsp), %r10         ## 8-byte Folded Reload
	adcq	$0, %r12
	addq	%rsi, %rax
	movq	-48(%rsp), %rbx         ## 8-byte Reload
	movq	%rax, 16(%rbx)
	adcq	%r14, %r11
	adcq	%r15, %r8
	adcq	%r13, %rbp
	adcq	-88(%rsp), %r10         ## 8-byte Folded Reload
	adcq	$0, %r12
	movq	%r12, -72(%rsp)         ## 8-byte Spill
	movq	-8(%rsp), %rax          ## 8-byte Reload
	movq	24(%rax), %rcx
	movq	%rcx, %rax
	mulq	-32(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, -88(%rsp)         ## 8-byte Spill
	movq	%rax, -80(%rsp)         ## 8-byte Spill
	movq	%rcx, %rax
	mulq	-24(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r14
	movq	%rax, -64(%rsp)         ## 8-byte Spill
	movq	%rcx, %rax
	mulq	%rdi
	movq	%rdx, %r13
	movq	%rax, %rsi
	movq	%rcx, %rax
	mulq	-40(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r9
	movq	%rax, %r15
	movq	%rcx, %rax
	mulq	-56(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r12
	addq	%r15, %r12
	adcq	%rsi, %r9
	adcq	-64(%rsp), %r13         ## 8-byte Folded Reload
	adcq	-80(%rsp), %r14         ## 8-byte Folded Reload
	movq	-88(%rsp), %rcx         ## 8-byte Reload
	adcq	$0, %rcx
	addq	%r11, %rax
	movq	%rax, 24(%rbx)
	adcq	%r8, %r12
	adcq	%rbp, %r9
	adcq	%r10, %r13
	adcq	-72(%rsp), %r14         ## 8-byte Folded Reload
	adcq	$0, %rcx
	movq	%rcx, -88(%rsp)         ## 8-byte Spill
	movq	-8(%rsp), %rax          ## 8-byte Reload
	movq	32(%rax), %rdi
	movq	%rdi, %rax
	mulq	-32(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %rbp
	movq	%rax, %r8
	movq	%rdi, %rax
	mulq	-24(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %rcx
	movq	%rax, %r10
	movq	%rdi, %rax
	mulq	-40(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r11
	movq	%rax, %r15
	movq	%rdi, %rax
	mulq	-16(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %rbx
	movq	%rax, %rsi
	movq	%rdi, %rax
	mulq	-56(%rsp)               ## 8-byte Folded Reload
	addq	%r15, %rdx
	adcq	%r11, %rsi
	adcq	%r10, %rbx
	adcq	%r8, %rcx
	adcq	$0, %rbp
	addq	%r12, %rax
	movq	-48(%rsp), %rdi         ## 8-byte Reload
	movq	%rax, 32(%rdi)
	adcq	%r9, %rdx
	movq	%rdx, 40(%rdi)
	adcq	%r13, %rsi
	movq	%rsi, 48(%rdi)
	adcq	%r14, %rbx
	movq	%rbx, 56(%rdi)
	adcq	-88(%rsp), %rcx         ## 8-byte Folded Reload
	movq	%rcx, 64(%rdi)
	adcq	$0, %rbp
	movq	%rbp, 72(%rdi)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
                                        ## -- End function
	.globl	_mcl_fpDbl_sqrPre5L     ## -- Begin function mcl_fpDbl_sqrPre5L
	.p2align	4, 0x90
_mcl_fpDbl_sqrPre5L:                    ## @mcl_fpDbl_sqrPre5L
## %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
	movq	%rdi, -40(%rsp)         ## 8-byte Spill
	movq	32(%rsi), %r13
	movq	(%rsi), %rbp
	movq	8(%rsi), %rcx
	movq	%r13, %rax
	mulq	%rbp
	movq	%rax, -72(%rsp)         ## 8-byte Spill
	movq	%rdx, -80(%rsp)         ## 8-byte Spill
	movq	24(%rsi), %r9
	movq	%r9, %rax
	mulq	%rbp
	movq	%rax, -88(%rsp)         ## 8-byte Spill
	movq	%rdx, -96(%rsp)         ## 8-byte Spill
	movq	16(%rsi), %r12
	movq	%r12, %rax
	mulq	%rbp
	movq	%rdx, 56(%rsp)          ## 8-byte Spill
	movq	%rax, 48(%rsp)          ## 8-byte Spill
	movq	%r13, %rax
	mulq	%rcx
	movq	%rdx, -104(%rsp)        ## 8-byte Spill
	movq	%rax, -112(%rsp)        ## 8-byte Spill
	movq	%r9, %rax
	mulq	%rcx
	movq	%rdx, -128(%rsp)        ## 8-byte Spill
	movq	%rax, %r11
	movq	%rax, -16(%rsp)         ## 8-byte Spill
	movq	%r12, %rax
	mulq	%rcx
	movq	%rdx, 8(%rsp)           ## 8-byte Spill
	movq	%rax, %r8
	movq	%rax, -56(%rsp)         ## 8-byte Spill
	movq	%rcx, %rax
	mulq	%rcx
	movq	%rdx, %r10
	movq	%rax, %rbx
	movq	%rcx, %rax
	mulq	%rbp
	movq	%rdx, %r15
	movq	%rax, (%rsp)            ## 8-byte Spill
	movq	%rbp, %rax
	mulq	%rbp
	movq	%rdx, %rsi
	movq	%rax, (%rdi)
	movq	%r13, 64(%rsp)          ## 8-byte Spill
	movq	%r13, %rax
	mulq	%r9
	movq	%rdx, 40(%rsp)          ## 8-byte Spill
	movq	%rax, 32(%rsp)          ## 8-byte Spill
	movq	%r9, %rax
	mulq	%r12
	movq	%rdx, -24(%rsp)         ## 8-byte Spill
	movq	%rax, -32(%rsp)         ## 8-byte Spill
	movq	%r9, %rax
	mulq	%r9
	movq	%rdx, 24(%rsp)          ## 8-byte Spill
	movq	%rax, 16(%rsp)          ## 8-byte Spill
	movq	%r13, %rax
	mulq	%r12
	movq	%rdx, -120(%rsp)        ## 8-byte Spill
	movq	%rax, %r14
	movq	%rax, -8(%rsp)          ## 8-byte Spill
	movq	%r12, %rax
	mulq	%r12
	movq	%rax, %rbp
	movq	%rdx, -48(%rsp)         ## 8-byte Spill
	addq	%r15, %rbx
	movq	%rbx, -64(%rsp)         ## 8-byte Spill
	adcq	%r8, %r10
	movq	8(%rsp), %r8            ## 8-byte Reload
	movq	%r8, %rcx
	adcq	%r11, %rcx
	movq	-128(%rsp), %r13        ## 8-byte Reload
	adcq	-112(%rsp), %r13        ## 8-byte Folded Reload
	movq	-104(%rsp), %r12        ## 8-byte Reload
	adcq	$0, %r12
	movq	(%rsp), %rdx            ## 8-byte Reload
	addq	%rdx, %rsi
	movq	48(%rsp), %r9           ## 8-byte Reload
	adcq	%r9, %r15
	movq	56(%rsp), %rdi          ## 8-byte Reload
	movq	%rdi, %rbx
	adcq	-88(%rsp), %rbx         ## 8-byte Folded Reload
	movq	-96(%rsp), %r11         ## 8-byte Reload
	adcq	-72(%rsp), %r11         ## 8-byte Folded Reload
	movq	-80(%rsp), %rax         ## 8-byte Reload
	adcq	$0, %rax
	addq	%rdx, %rsi
	adcq	-64(%rsp), %r15         ## 8-byte Folded Reload
	movq	-40(%rsp), %rdx         ## 8-byte Reload
	movq	%rsi, 8(%rdx)
	adcq	%r10, %rbx
	adcq	%rcx, %r11
	adcq	%r13, %rax
	adcq	$0, %r12
	movq	%rdi, %rcx
	addq	-56(%rsp), %rcx         ## 8-byte Folded Reload
	adcq	%r8, %rbp
	movq	-32(%rsp), %rsi         ## 8-byte Reload
	movq	-48(%rsp), %rdi         ## 8-byte Reload
	adcq	%rsi, %rdi
	movq	-24(%rsp), %r10         ## 8-byte Reload
	movq	%r10, %r13
	adcq	%r14, %r13
	movq	-120(%rsp), %r14        ## 8-byte Reload
	adcq	$0, %r14
	addq	%r9, %r15
	adcq	%rbx, %rcx
	movq	%r15, 16(%rdx)
	adcq	%r11, %rbp
	adcq	%rax, %rdi
	movq	%rdi, %r11
	adcq	%r12, %r13
	adcq	$0, %r14
	movq	-96(%rsp), %rax         ## 8-byte Reload
	addq	-16(%rsp), %rax         ## 8-byte Folded Reload
	movq	-128(%rsp), %rbx        ## 8-byte Reload
	adcq	%rsi, %rbx
	movq	16(%rsp), %r9           ## 8-byte Reload
	adcq	%r10, %r9
	movq	24(%rsp), %rsi          ## 8-byte Reload
	movq	32(%rsp), %r12          ## 8-byte Reload
	adcq	%r12, %rsi
	movq	40(%rsp), %r15          ## 8-byte Reload
	movq	%r15, %r10
	adcq	$0, %r10
	addq	-88(%rsp), %rcx         ## 8-byte Folded Reload
	adcq	%rbp, %rax
	movq	%rax, %rdi
	movq	%rcx, 24(%rdx)
	movq	%rdx, %rcx
	adcq	%r11, %rbx
	movq	%rbx, %r8
	adcq	%r13, %r9
	adcq	%r14, %rsi
	movq	%rsi, %r11
	adcq	$0, %r10
	movq	64(%rsp), %rax          ## 8-byte Reload
	mulq	%rax
	movq	-80(%rsp), %rsi         ## 8-byte Reload
	addq	-112(%rsp), %rsi        ## 8-byte Folded Reload
	movq	-104(%rsp), %rbx        ## 8-byte Reload
	adcq	-8(%rsp), %rbx          ## 8-byte Folded Reload
	movq	-120(%rsp), %rbp        ## 8-byte Reload
	adcq	%r12, %rbp
	adcq	%r15, %rax
	adcq	$0, %rdx
	addq	-72(%rsp), %rdi         ## 8-byte Folded Reload
	movq	%rdi, 32(%rcx)
	adcq	%r8, %rsi
	movq	%rsi, 40(%rcx)
	movq	%rbx, %rsi
	adcq	%r9, %rsi
	movq	%rsi, 48(%rcx)
	movq	%rbp, %rsi
	adcq	%r11, %rsi
	movq	%rsi, 56(%rcx)
	adcq	%r10, %rax
	movq	%rax, 64(%rcx)
	adcq	$0, %rdx
	movq	%rdx, 72(%rcx)
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
                                        ## -- End function
	.globl	_mcl_fp_mont5L          ## -- Begin function mcl_fp_mont5L
	.p2align	4, 0x90
_mcl_fp_mont5L:                         ## @mcl_fp_mont5L
## %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rdx, -88(%rsp)         ## 8-byte Spill
	movq	%rdi, (%rsp)            ## 8-byte Spill
	movq	32(%rsi), %rax
	movq	%rax, -96(%rsp)         ## 8-byte Spill
	movq	(%rdx), %rdi
	mulq	%rdi
	movq	%rax, %r9
	movq	%rdx, %r10
	movq	24(%rsi), %rax
	movq	%rax, -80(%rsp)         ## 8-byte Spill
	mulq	%rdi
	movq	%rax, %r11
	movq	%rdx, %rbx
	movq	16(%rsi), %rax
	movq	%rax, -16(%rsp)         ## 8-byte Spill
	mulq	%rdi
	movq	%rax, %r8
	movq	%rdx, %r14
	movq	(%rsi), %rbp
	movq	%rbp, -24(%rsp)         ## 8-byte Spill
	movq	8(%rsi), %rax
	movq	%rax, -32(%rsp)         ## 8-byte Spill
	mulq	%rdi
	movq	%rdx, %r12
	movq	%rax, %rsi
	movq	%rbp, %rax
	mulq	%rdi
	movq	%rax, -128(%rsp)        ## 8-byte Spill
	movq	%rdx, %rdi
	addq	%rsi, %rdi
	adcq	%r8, %r12
	adcq	%r11, %r14
	adcq	%r9, %rbx
	movq	%rbx, -120(%rsp)        ## 8-byte Spill
	adcq	$0, %r10
	movq	%r10, -112(%rsp)        ## 8-byte Spill
	movq	-8(%rcx), %rbp
	movq	%rbp, -72(%rsp)         ## 8-byte Spill
	imulq	%rax, %rbp
	movq	32(%rcx), %rdx
	movq	%rdx, -40(%rsp)         ## 8-byte Spill
	movq	%rbp, %rax
	mulq	%rdx
	movq	%rax, -104(%rsp)        ## 8-byte Spill
	movq	%rdx, %rbx
	movq	24(%rcx), %rdx
	movq	%rdx, -48(%rsp)         ## 8-byte Spill
	movq	%rbp, %rax
	mulq	%rdx
	movq	%rax, %r10
	movq	%rdx, %r13
	movq	16(%rcx), %rdx
	movq	%rdx, -56(%rsp)         ## 8-byte Spill
	movq	%rbp, %rax
	mulq	%rdx
	movq	%rax, %r8
	movq	%rdx, %r9
	movq	(%rcx), %rsi
	movq	%rsi, -8(%rsp)          ## 8-byte Spill
	movq	8(%rcx), %rcx
	movq	%rcx, -64(%rsp)         ## 8-byte Spill
	movq	%rbp, %rax
	mulq	%rcx
	movq	%rdx, %r11
	movq	%rax, %r15
	movq	%rbp, %rax
	mulq	%rsi
	movq	%rdx, %rcx
	addq	%r15, %rcx
	adcq	%r8, %r11
	adcq	%r10, %r9
	adcq	-104(%rsp), %r13        ## 8-byte Folded Reload
	adcq	$0, %rbx
	addq	-128(%rsp), %rax        ## 8-byte Folded Reload
	adcq	%rdi, %rcx
	adcq	%r12, %r11
	adcq	%r14, %r9
	adcq	-120(%rsp), %r13        ## 8-byte Folded Reload
	adcq	-112(%rsp), %rbx        ## 8-byte Folded Reload
	setb	-112(%rsp)              ## 1-byte Folded Spill
	movq	-88(%rsp), %rax         ## 8-byte Reload
	movq	8(%rax), %rdi
	movq	%rdi, %rax
	mulq	-96(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %rsi
	movq	%rax, -120(%rsp)        ## 8-byte Spill
	movq	%rdi, %rax
	mulq	-80(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r14
	movq	%rax, -128(%rsp)        ## 8-byte Spill
	movq	%rdi, %rax
	mulq	-16(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r8
	movq	%rax, -104(%rsp)        ## 8-byte Spill
	movq	%rdi, %rax
	mulq	-32(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r10
	movq	%rax, %r12
	movq	%rdi, %rax
	mulq	-24(%rsp)               ## 8-byte Folded Reload
	movq	%rax, %rbp
	movq	%rdx, %r15
	addq	%r12, %r15
	adcq	-104(%rsp), %r10        ## 8-byte Folded Reload
	adcq	-128(%rsp), %r8         ## 8-byte Folded Reload
	adcq	-120(%rsp), %r14        ## 8-byte Folded Reload
	adcq	$0, %rsi
	addq	%rcx, %rbp
	adcq	%r11, %r15
	adcq	%r9, %r10
	adcq	%r13, %r8
	adcq	%rbx, %r14
	movzbl	-112(%rsp), %eax        ## 1-byte Folded Reload
	adcq	%rax, %rsi
	movq	%rsi, %r13
	setb	-112(%rsp)              ## 1-byte Folded Spill
	movq	-72(%rsp), %rsi         ## 8-byte Reload
	imulq	%rbp, %rsi
	movq	%rsi, %rax
	mulq	-40(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r9
	movq	%rax, -120(%rsp)        ## 8-byte Spill
	movq	%rsi, %rax
	mulq	-48(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r11
	movq	%rax, -128(%rsp)        ## 8-byte Spill
	movq	%rsi, %rax
	mulq	-56(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %rdi
	movq	%rax, -104(%rsp)        ## 8-byte Spill
	movq	%rsi, %rax
	mulq	-64(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %rcx
	movq	%rax, %rbx
	movq	%rsi, %rax
	mulq	-8(%rsp)                ## 8-byte Folded Reload
	movq	%rdx, %r12
	addq	%rbx, %r12
	adcq	-104(%rsp), %rcx        ## 8-byte Folded Reload
	adcq	-128(%rsp), %rdi        ## 8-byte Folded Reload
	adcq	-120(%rsp), %r11        ## 8-byte Folded Reload
	adcq	$0, %r9
	addq	%rbp, %rax
	adcq	%r15, %r12
	adcq	%r10, %rcx
	adcq	%r8, %rdi
	adcq	%r14, %r11
	adcq	%r13, %r9
	movzbl	-112(%rsp), %r8d        ## 1-byte Folded Reload
	adcq	$0, %r8
	movq	-88(%rsp), %rax         ## 8-byte Reload
	movq	16(%rax), %rsi
	movq	%rsi, %rax
	mulq	-96(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, -112(%rsp)        ## 8-byte Spill
	movq	%rax, -120(%rsp)        ## 8-byte Spill
	movq	%rsi, %rax
	mulq	-80(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r10
	movq	%rax, -128(%rsp)        ## 8-byte Spill
	movq	%rsi, %rax
	mulq	-16(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r15
	movq	%rax, -104(%rsp)        ## 8-byte Spill
	movq	%rsi, %rax
	mulq	-32(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %rbx
	movq	%rax, %r13
	movq	%rsi, %rax
	mulq	-24(%rsp)               ## 8-byte Folded Reload
	movq	%rax, %r14
	movq	%rdx, %rbp
	addq	%r13, %rbp
	adcq	-104(%rsp), %rbx        ## 8-byte Folded Reload
	adcq	-128(%rsp), %r15        ## 8-byte Folded Reload
	adcq	-120(%rsp), %r10        ## 8-byte Folded Reload
	movq	-112(%rsp), %rax        ## 8-byte Reload
	adcq	$0, %rax
	addq	%r12, %r14
	adcq	%rcx, %rbp
	adcq	%rdi, %rbx
	adcq	%r11, %r15
	adcq	%r9, %r10
	adcq	%r8, %rax
	movq	%rax, %r8
	setb	-112(%rsp)              ## 1-byte Folded Spill
	movq	-72(%rsp), %rsi         ## 8-byte Reload
	imulq	%r14, %rsi
	movq	%rsi, %rax
	mulq	-40(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r9
	movq	%rax, -120(%rsp)        ## 8-byte Spill
	movq	%rsi, %rax
	mulq	-48(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r11
	movq	%rax, -128(%rsp)        ## 8-byte Spill
	movq	%rsi, %rax
	mulq	-56(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %rdi
	movq	%rax, %r12
	movq	%rsi, %rax
	mulq	-64(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %rcx
	movq	%rax, %r13
	movq	%rsi, %rax
	mulq	-8(%rsp)                ## 8-byte Folded Reload
	movq	%rdx, %rsi
	addq	%r13, %rsi
	adcq	%r12, %rcx
	adcq	-128(%rsp), %rdi        ## 8-byte Folded Reload
	adcq	-120(%rsp), %r11        ## 8-byte Folded Reload
	adcq	$0, %r9
	addq	%r14, %rax
	adcq	%rbp, %rsi
	adcq	%rbx, %rcx
	adcq	%r15, %rdi
	adcq	%r10, %r11
	adcq	%r8, %r9
	movzbl	-112(%rsp), %r12d       ## 1-byte Folded Reload
	adcq	$0, %r12
	movq	-88(%rsp), %rax         ## 8-byte Reload
	movq	24(%rax), %rbp
	movq	%rbp, %rax
	mulq	-96(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r8
	movq	%rax, -112(%rsp)        ## 8-byte Spill
	movq	%rbp, %rax
	mulq	-80(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r10
	movq	%rax, -120(%rsp)        ## 8-byte Spill
	movq	%rbp, %rax
	mulq	-16(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r15
	movq	%rax, -128(%rsp)        ## 8-byte Spill
	movq	%rbp, %rax
	mulq	-32(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %rbx
	movq	%rax, %r13
	movq	%rbp, %rax
	mulq	-24(%rsp)               ## 8-byte Folded Reload
	movq	%rax, %r14
	movq	%rdx, %rbp
	addq	%r13, %rbp
	adcq	-128(%rsp), %rbx        ## 8-byte Folded Reload
	adcq	-120(%rsp), %r15        ## 8-byte Folded Reload
	adcq	-112(%rsp), %r10        ## 8-byte Folded Reload
	adcq	$0, %r8
	addq	%rsi, %r14
	adcq	%rcx, %rbp
	adcq	%rdi, %rbx
	adcq	%r11, %r15
	adcq	%r9, %r10
	adcq	%r12, %r8
	setb	-112(%rsp)              ## 1-byte Folded Spill
	movq	-72(%rsp), %rsi         ## 8-byte Reload
	imulq	%r14, %rsi
	movq	%rsi, %rax
	mulq	-40(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r9
	movq	%rax, -120(%rsp)        ## 8-byte Spill
	movq	%rsi, %rax
	mulq	-48(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r11
	movq	%rax, -128(%rsp)        ## 8-byte Spill
	movq	%rsi, %rax
	mulq	-56(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r12
	movq	%rax, -104(%rsp)        ## 8-byte Spill
	movq	%rsi, %rax
	mulq	-64(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %rcx
	movq	%rax, %r13
	movq	%rsi, %rax
	mulq	-8(%rsp)                ## 8-byte Folded Reload
	movq	%rdx, %rdi
	addq	%r13, %rdi
	adcq	-104(%rsp), %rcx        ## 8-byte Folded Reload
	adcq	-128(%rsp), %r12        ## 8-byte Folded Reload
	adcq	-120(%rsp), %r11        ## 8-byte Folded Reload
	adcq	$0, %r9
	addq	%r14, %rax
	adcq	%rbp, %rdi
	adcq	%rbx, %rcx
	adcq	%r15, %r12
	adcq	%r10, %r11
	adcq	%r8, %r9
	movzbl	-112(%rsp), %ebx        ## 1-byte Folded Reload
	adcq	$0, %rbx
	movq	-88(%rsp), %rax         ## 8-byte Reload
	movq	32(%rax), %rsi
	movq	%rsi, %rax
	mulq	-96(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r8
	movq	%rax, -88(%rsp)         ## 8-byte Spill
	movq	%rsi, %rax
	mulq	-80(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r10
	movq	%rax, -96(%rsp)         ## 8-byte Spill
	movq	%rsi, %rax
	mulq	-16(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r14
	movq	%rax, -80(%rsp)         ## 8-byte Spill
	movq	%rsi, %rax
	mulq	-32(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r13
	movq	%rax, %rbp
	movq	%rsi, %rax
	mulq	-24(%rsp)               ## 8-byte Folded Reload
	movq	%rax, %r15
	movq	%rdx, %rsi
	addq	%rbp, %rsi
	adcq	-80(%rsp), %r13         ## 8-byte Folded Reload
	adcq	-96(%rsp), %r14         ## 8-byte Folded Reload
	adcq	-88(%rsp), %r10         ## 8-byte Folded Reload
	adcq	$0, %r8
	addq	%rdi, %r15
	adcq	%rcx, %rsi
	adcq	%r12, %r13
	adcq	%r11, %r14
	adcq	%r9, %r10
	adcq	%rbx, %r8
	setb	-88(%rsp)               ## 1-byte Folded Spill
	movq	-72(%rsp), %r11         ## 8-byte Reload
	imulq	%r15, %r11
	movq	%r11, %rax
	mulq	-40(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %rbp
	movq	%rax, -72(%rsp)         ## 8-byte Spill
	movq	%r11, %rax
	mulq	-48(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %rcx
	movq	%rax, -96(%rsp)         ## 8-byte Spill
	movq	%r11, %rax
	mulq	-56(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %rdi
	movq	%rax, %r12
	movq	%r11, %rax
	mulq	-64(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %rbx
	movq	%rax, %r9
	movq	%r11, %rax
	movq	-8(%rsp), %r11          ## 8-byte Reload
	mulq	%r11
	addq	%r9, %rdx
	adcq	%r12, %rbx
	adcq	-96(%rsp), %rdi         ## 8-byte Folded Reload
	adcq	-72(%rsp), %rcx         ## 8-byte Folded Reload
	adcq	$0, %rbp
	addq	%r15, %rax
	adcq	%rsi, %rdx
	adcq	%r13, %rbx
	adcq	%r14, %rdi
	adcq	%r10, %rcx
	movzbl	-88(%rsp), %r9d         ## 1-byte Folded Reload
	adcq	%r8, %rbp
	adcq	$0, %r9
	movq	%rdx, %r8
	subq	%r11, %r8
	movq	%rbx, %rax
	sbbq	-64(%rsp), %rax         ## 8-byte Folded Reload
	movq	%rdi, %rsi
	sbbq	-56(%rsp), %rsi         ## 8-byte Folded Reload
	movq	%rcx, %r10
	sbbq	-48(%rsp), %r10         ## 8-byte Folded Reload
	movq	%rbp, %r11
	sbbq	-40(%rsp), %r11         ## 8-byte Folded Reload
	sbbq	$0, %r9
	testb	$1, %r9b
	cmovneq	%rbx, %rax
	movq	(%rsp), %rbx            ## 8-byte Reload
	movq	%rax, 8(%rbx)
	cmovneq	%rdx, %r8
	movq	%r8, (%rbx)
	cmovneq	%rdi, %rsi
	movq	%rsi, 16(%rbx)
	cmovneq	%rcx, %r10
	movq	%r10, 24(%rbx)
	cmovneq	%rbp, %r11
	movq	%r11, 32(%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
                                        ## -- End function
	.globl	_mcl_fp_montNF5L        ## -- Begin function mcl_fp_montNF5L
	.p2align	4, 0x90
_mcl_fp_montNF5L:                       ## @mcl_fp_montNF5L
## %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	%rdx, -96(%rsp)         ## 8-byte Spill
	movq	%rdi, -8(%rsp)          ## 8-byte Spill
	movq	32(%rsi), %rax
	movq	%rax, -104(%rsp)        ## 8-byte Spill
	movq	(%rdx), %rbp
	mulq	%rbp
	movq	%rax, %r8
	movq	%rdx, %r13
	movq	24(%rsi), %rax
	movq	%rax, -112(%rsp)        ## 8-byte Spill
	mulq	%rbp
	movq	%rax, %r10
	movq	%rdx, %r11
	movq	16(%rsi), %rax
	movq	%rax, -40(%rsp)         ## 8-byte Spill
	mulq	%rbp
	movq	%rax, %r15
	movq	%rdx, %r9
	movq	(%rsi), %rdi
	movq	%rdi, -56(%rsp)         ## 8-byte Spill
	movq	8(%rsi), %rax
	movq	%rax, -64(%rsp)         ## 8-byte Spill
	mulq	%rbp
	movq	%rdx, %r12
	movq	%rax, %rbx
	movq	%rdi, %rax
	mulq	%rbp
	movq	%rax, %r14
	movq	%rdx, %rbp
	addq	%rbx, %rbp
	adcq	%r15, %r12
	adcq	%r10, %r9
	adcq	%r8, %r11
	adcq	$0, %r13
	movq	-8(%rcx), %rsi
	movq	%rsi, -88(%rsp)         ## 8-byte Spill
	imulq	%rax, %rsi
	movq	32(%rcx), %rdx
	movq	%rdx, -72(%rsp)         ## 8-byte Spill
	movq	%rsi, %rax
	mulq	%rdx
	movq	%rax, %r10
	movq	%rdx, -120(%rsp)        ## 8-byte Spill
	movq	24(%rcx), %rdx
	movq	%rdx, -80(%rsp)         ## 8-byte Spill
	movq	%rsi, %rax
	mulq	%rdx
	movq	%rax, %rbx
	movq	%rdx, -128(%rsp)        ## 8-byte Spill
	movq	16(%rcx), %rdx
	movq	%rdx, -32(%rsp)         ## 8-byte Spill
	movq	%rsi, %rax
	mulq	%rdx
	movq	%rax, %r8
	movq	%rdx, -16(%rsp)         ## 8-byte Spill
	movq	(%rcx), %rdi
	movq	%rdi, -48(%rsp)         ## 8-byte Spill
	movq	8(%rcx), %rcx
	movq	%rcx, -24(%rsp)         ## 8-byte Spill
	movq	%rsi, %rax
	mulq	%rcx
	movq	%rdx, %r15
	movq	%rax, %rcx
	movq	%rsi, %rax
	mulq	%rdi
	addq	%r14, %rax
	adcq	%rbp, %rcx
	adcq	%r12, %r8
	adcq	%r9, %rbx
	adcq	%r11, %r10
	adcq	$0, %r13
	addq	%rdx, %rcx
	adcq	%r15, %r8
	adcq	-16(%rsp), %rbx         ## 8-byte Folded Reload
	adcq	-128(%rsp), %r10        ## 8-byte Folded Reload
	adcq	-120(%rsp), %r13        ## 8-byte Folded Reload
	movq	-96(%rsp), %rax         ## 8-byte Reload
	movq	8(%rax), %rsi
	movq	%rsi, %rax
	mulq	-104(%rsp)              ## 8-byte Folded Reload
	movq	%rdx, %r12
	movq	%rax, -120(%rsp)        ## 8-byte Spill
	movq	%rsi, %rax
	mulq	-112(%rsp)              ## 8-byte Folded Reload
	movq	%rdx, %rbp
	movq	%rax, -128(%rsp)        ## 8-byte Spill
	movq	%rsi, %rax
	mulq	-40(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r9
	movq	%rax, %rdi
	movq	%rsi, %rax
	mulq	-64(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r11
	movq	%rax, %r14
	movq	%rsi, %rax
	mulq	-56(%rsp)               ## 8-byte Folded Reload
	movq	%rax, %rsi
	movq	%rdx, %r15
	addq	%r14, %r15
	adcq	%rdi, %r11
	adcq	-128(%rsp), %r9         ## 8-byte Folded Reload
	adcq	-120(%rsp), %rbp        ## 8-byte Folded Reload
	adcq	$0, %r12
	addq	%rcx, %rsi
	adcq	%r8, %r15
	adcq	%rbx, %r11
	adcq	%r10, %r9
	adcq	%r13, %rbp
	adcq	$0, %r12
	movq	-88(%rsp), %rdi         ## 8-byte Reload
	imulq	%rsi, %rdi
	movq	%rdi, %rax
	mulq	-72(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, -120(%rsp)        ## 8-byte Spill
	movq	%rax, %r13
	movq	%rdi, %rax
	mulq	-80(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, -128(%rsp)        ## 8-byte Spill
	movq	%rax, %r8
	movq	%rdi, %rax
	mulq	-32(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %rcx
	movq	%rax, %r14
	movq	%rdi, %rax
	mulq	-24(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %rbx
	movq	%rax, %r10
	movq	%rdi, %rax
	mulq	-48(%rsp)               ## 8-byte Folded Reload
	addq	%rsi, %rax
	adcq	%r15, %r10
	adcq	%r11, %r14
	adcq	%r9, %r8
	adcq	%rbp, %r13
	adcq	$0, %r12
	addq	%rdx, %r10
	adcq	%rbx, %r14
	adcq	%rcx, %r8
	adcq	-128(%rsp), %r13        ## 8-byte Folded Reload
	adcq	-120(%rsp), %r12        ## 8-byte Folded Reload
	movq	-96(%rsp), %rax         ## 8-byte Reload
	movq	16(%rax), %rsi
	movq	%rsi, %rax
	mulq	-104(%rsp)              ## 8-byte Folded Reload
	movq	%rdx, %r15
	movq	%rax, -120(%rsp)        ## 8-byte Spill
	movq	%rsi, %rax
	mulq	-112(%rsp)              ## 8-byte Folded Reload
	movq	%rdx, %r9
	movq	%rax, -128(%rsp)        ## 8-byte Spill
	movq	%rsi, %rax
	mulq	-40(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %rdi
	movq	%rax, %rbx
	movq	%rsi, %rax
	mulq	-64(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %rcx
	movq	%rax, %rbp
	movq	%rsi, %rax
	mulq	-56(%rsp)               ## 8-byte Folded Reload
	movq	%rax, %r11
	movq	%rdx, %rsi
	addq	%rbp, %rsi
	adcq	%rbx, %rcx
	adcq	-128(%rsp), %rdi        ## 8-byte Folded Reload
	adcq	-120(%rsp), %r9         ## 8-byte Folded Reload
	adcq	$0, %r15
	addq	%r10, %r11
	adcq	%r14, %rsi
	adcq	%r8, %rcx
	adcq	%r13, %rdi
	adcq	%r12, %r9
	adcq	$0, %r15
	movq	-88(%rsp), %rbx         ## 8-byte Reload
	imulq	%r11, %rbx
	movq	%rbx, %rax
	mulq	-72(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, -120(%rsp)        ## 8-byte Spill
	movq	%rax, %r13
	movq	%rbx, %rax
	mulq	-80(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, -128(%rsp)        ## 8-byte Spill
	movq	%rax, %r8
	movq	%rbx, %rax
	mulq	-32(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r14
	movq	%rax, %r10
	movq	%rbx, %rax
	mulq	-24(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r12
	movq	%rax, %rbp
	movq	%rbx, %rax
	mulq	-48(%rsp)               ## 8-byte Folded Reload
	addq	%r11, %rax
	adcq	%rsi, %rbp
	adcq	%rcx, %r10
	adcq	%rdi, %r8
	adcq	%r9, %r13
	adcq	$0, %r15
	addq	%rdx, %rbp
	adcq	%r12, %r10
	adcq	%r14, %r8
	adcq	-128(%rsp), %r13        ## 8-byte Folded Reload
	adcq	-120(%rsp), %r15        ## 8-byte Folded Reload
	movq	-96(%rsp), %rax         ## 8-byte Reload
	movq	24(%rax), %rsi
	movq	%rsi, %rax
	mulq	-104(%rsp)              ## 8-byte Folded Reload
	movq	%rdx, %r11
	movq	%rax, -120(%rsp)        ## 8-byte Spill
	movq	%rsi, %rax
	mulq	-112(%rsp)              ## 8-byte Folded Reload
	movq	%rdx, %r9
	movq	%rax, -128(%rsp)        ## 8-byte Spill
	movq	%rsi, %rax
	mulq	-40(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %rdi
	movq	%rax, %rbx
	movq	%rsi, %rax
	mulq	-64(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %rcx
	movq	%rax, %r12
	movq	%rsi, %rax
	mulq	-56(%rsp)               ## 8-byte Folded Reload
	movq	%rax, %r14
	movq	%rdx, %rsi
	addq	%r12, %rsi
	adcq	%rbx, %rcx
	adcq	-128(%rsp), %rdi        ## 8-byte Folded Reload
	adcq	-120(%rsp), %r9         ## 8-byte Folded Reload
	adcq	$0, %r11
	addq	%rbp, %r14
	adcq	%r10, %rsi
	adcq	%r8, %rcx
	adcq	%r13, %rdi
	adcq	%r15, %r9
	adcq	$0, %r11
	movq	-88(%rsp), %rbx         ## 8-byte Reload
	imulq	%r14, %rbx
	movq	%rbx, %rax
	mulq	-72(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, -120(%rsp)        ## 8-byte Spill
	movq	%rax, %r13
	movq	%rbx, %rax
	mulq	-80(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, -128(%rsp)        ## 8-byte Spill
	movq	%rax, %r8
	movq	%rbx, %rax
	mulq	-32(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r15
	movq	%rax, %r10
	movq	%rbx, %rax
	mulq	-24(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r12
	movq	%rax, %rbp
	movq	%rbx, %rax
	mulq	-48(%rsp)               ## 8-byte Folded Reload
	addq	%r14, %rax
	adcq	%rsi, %rbp
	adcq	%rcx, %r10
	adcq	%rdi, %r8
	adcq	%r9, %r13
	adcq	$0, %r11
	addq	%rdx, %rbp
	adcq	%r12, %r10
	adcq	%r15, %r8
	adcq	-128(%rsp), %r13        ## 8-byte Folded Reload
	adcq	-120(%rsp), %r11        ## 8-byte Folded Reload
	movq	-96(%rsp), %rax         ## 8-byte Reload
	movq	32(%rax), %rcx
	movq	%rcx, %rax
	mulq	-104(%rsp)              ## 8-byte Folded Reload
	movq	%rdx, %rbx
	movq	%rax, -96(%rsp)         ## 8-byte Spill
	movq	%rcx, %rax
	mulq	-112(%rsp)              ## 8-byte Folded Reload
	movq	%rdx, %r9
	movq	%rax, -104(%rsp)        ## 8-byte Spill
	movq	%rcx, %rax
	mulq	-40(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r14
	movq	%rax, -112(%rsp)        ## 8-byte Spill
	movq	%rcx, %rax
	mulq	-64(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r12
	movq	%rax, %rsi
	movq	%rcx, %rax
	mulq	-56(%rsp)               ## 8-byte Folded Reload
	movq	%rax, %r15
	movq	%rdx, %rdi
	addq	%rsi, %rdi
	adcq	-112(%rsp), %r12        ## 8-byte Folded Reload
	adcq	-104(%rsp), %r14        ## 8-byte Folded Reload
	adcq	-96(%rsp), %r9          ## 8-byte Folded Reload
	adcq	$0, %rbx
	addq	%rbp, %r15
	adcq	%r10, %rdi
	adcq	%r8, %r12
	adcq	%r13, %r14
	adcq	%r11, %r9
	adcq	$0, %rbx
	movq	-88(%rsp), %r10         ## 8-byte Reload
	imulq	%r15, %r10
	movq	%r10, %rax
	mulq	-72(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, -88(%rsp)         ## 8-byte Spill
	movq	%rax, %rcx
	movq	%r10, %rax
	mulq	-80(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, -96(%rsp)         ## 8-byte Spill
	movq	%rax, %rbp
	movq	%r10, %rax
	movq	-32(%rsp), %r13         ## 8-byte Reload
	mulq	%r13
	movq	%rdx, -104(%rsp)        ## 8-byte Spill
	movq	%rax, %rsi
	movq	%r10, %rax
	movq	-48(%rsp), %r11         ## 8-byte Reload
	mulq	%r11
	movq	%rdx, -112(%rsp)        ## 8-byte Spill
	movq	%rax, %r8
	movq	%r10, %rax
	movq	-24(%rsp), %r10         ## 8-byte Reload
	mulq	%r10
	addq	%r15, %r8
	adcq	%rdi, %rax
	adcq	%r12, %rsi
	adcq	%r14, %rbp
	adcq	%r9, %rcx
	adcq	$0, %rbx
	addq	-112(%rsp), %rax        ## 8-byte Folded Reload
	adcq	%rdx, %rsi
	adcq	-104(%rsp), %rbp        ## 8-byte Folded Reload
	adcq	-96(%rsp), %rcx         ## 8-byte Folded Reload
	adcq	-88(%rsp), %rbx         ## 8-byte Folded Reload
	movq	%rax, %r8
	subq	%r11, %r8
	movq	%rsi, %r11
	sbbq	%r10, %r11
	movq	%rbp, %r10
	sbbq	%r13, %r10
	movq	%rcx, %r9
	sbbq	-80(%rsp), %r9          ## 8-byte Folded Reload
	movq	%rbx, %rdi
	sbbq	-72(%rsp), %rdi         ## 8-byte Folded Reload
	movq	%rdi, %rdx
	sarq	$63, %rdx
	cmovsq	%rsi, %r11
	movq	-8(%rsp), %rdx          ## 8-byte Reload
	movq	%r11, 8(%rdx)
	cmovsq	%rax, %r8
	movq	%r8, (%rdx)
	cmovsq	%rbp, %r10
	movq	%r10, 16(%rdx)
	cmovsq	%rcx, %r9
	movq	%r9, 24(%rdx)
	cmovsq	%rbx, %rdi
	movq	%rdi, 32(%rdx)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
                                        ## -- End function
	.globl	_mcl_fp_montRed5L       ## -- Begin function mcl_fp_montRed5L
	.p2align	4, 0x90
_mcl_fp_montRed5L:                      ## @mcl_fp_montRed5L
## %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	%rdx, %rcx
	movq	%rdi, -8(%rsp)          ## 8-byte Spill
	movq	-8(%rdx), %rax
	movq	%rax, -104(%rsp)        ## 8-byte Spill
	movq	(%rsi), %r8
	movq	%r8, %rdi
	imulq	%rax, %rdi
	movq	32(%rdx), %rdx
	movq	%rdx, -48(%rsp)         ## 8-byte Spill
	movq	%rdi, %rax
	mulq	%rdx
	movq	%rax, %r12
	movq	%rdx, %r13
	movq	24(%rcx), %rdx
	movq	%rdx, -72(%rsp)         ## 8-byte Spill
	movq	%rdi, %rax
	mulq	%rdx
	movq	%rax, %r11
	movq	%rdx, %r10
	movq	16(%rcx), %rdx
	movq	%rdx, -56(%rsp)         ## 8-byte Spill
	movq	%rdi, %rax
	mulq	%rdx
	movq	%rax, %r14
	movq	%rdx, %r15
	movq	(%rcx), %rbx
	movq	%rbx, -32(%rsp)         ## 8-byte Spill
	movq	8(%rcx), %rcx
	movq	%rcx, -64(%rsp)         ## 8-byte Spill
	movq	%rdi, %rax
	mulq	%rcx
	movq	%rdx, %r9
	movq	%rax, %rbp
	movq	%rdi, %rax
	mulq	%rbx
	movq	%rdx, %rcx
	addq	%rbp, %rcx
	adcq	%r14, %r9
	adcq	%r11, %r15
	adcq	%r12, %r10
	adcq	$0, %r13
	addq	%r8, %rax
	movq	72(%rsi), %rax
	movq	64(%rsi), %rdx
	adcq	8(%rsi), %rcx
	adcq	16(%rsi), %r9
	adcq	24(%rsi), %r15
	adcq	32(%rsi), %r10
	adcq	40(%rsi), %r13
	movq	%r13, -88(%rsp)         ## 8-byte Spill
	movq	56(%rsi), %rdi
	movq	48(%rsi), %rbx
	adcq	$0, %rbx
	adcq	$0, %rdi
	movq	%rdi, -112(%rsp)        ## 8-byte Spill
	adcq	$0, %rdx
	movq	%rdx, -24(%rsp)         ## 8-byte Spill
	adcq	$0, %rax
	movq	%rax, -40(%rsp)         ## 8-byte Spill
	setb	-80(%rsp)               ## 1-byte Folded Spill
	movq	-104(%rsp), %rdi        ## 8-byte Reload
	imulq	%rcx, %rdi
	movq	%rdi, %rax
	mulq	-48(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r11
	movq	%rax, -96(%rsp)         ## 8-byte Spill
	movq	%rdi, %rax
	mulq	-72(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r14
	movq	%rax, -16(%rsp)         ## 8-byte Spill
	movq	%rdi, %rax
	mulq	-56(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r12
	movq	%rax, %r8
	movq	%rdi, %rax
	mulq	-64(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %rsi
	movq	%rax, %r13
	movq	%rdi, %rax
	mulq	-32(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %rbp
	addq	%r13, %rbp
	adcq	%r8, %rsi
	adcq	-16(%rsp), %r12         ## 8-byte Folded Reload
	adcq	-96(%rsp), %r14         ## 8-byte Folded Reload
	adcq	$0, %r11
	addq	%rcx, %rax
	adcq	%r9, %rbp
	adcq	%r15, %rsi
	adcq	%r10, %r12
	adcq	-88(%rsp), %r14         ## 8-byte Folded Reload
	adcq	%rbx, %r11
	adcq	$0, -112(%rsp)          ## 8-byte Folded Spill
	adcq	$0, -24(%rsp)           ## 8-byte Folded Spill
	adcq	$0, -40(%rsp)           ## 8-byte Folded Spill
	movzbl	-80(%rsp), %r9d         ## 1-byte Folded Reload
	adcq	$0, %r9
	movq	-104(%rsp), %rcx        ## 8-byte Reload
	imulq	%rbp, %rcx
	movq	%rcx, %rax
	mulq	-48(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, -80(%rsp)         ## 8-byte Spill
	movq	%rax, -88(%rsp)         ## 8-byte Spill
	movq	%rcx, %rax
	mulq	-72(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r15
	movq	%rax, -96(%rsp)         ## 8-byte Spill
	movq	%rcx, %rax
	mulq	-56(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r13
	movq	%rax, %r10
	movq	%rcx, %rax
	mulq	-64(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %rbx
	movq	%rax, %rdi
	movq	%rcx, %rax
	mulq	-32(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r8
	addq	%rdi, %r8
	adcq	%r10, %rbx
	adcq	-96(%rsp), %r13         ## 8-byte Folded Reload
	adcq	-88(%rsp), %r15         ## 8-byte Folded Reload
	movq	-80(%rsp), %rcx         ## 8-byte Reload
	adcq	$0, %rcx
	addq	%rbp, %rax
	adcq	%rsi, %r8
	adcq	%r12, %rbx
	adcq	%r14, %r13
	adcq	%r11, %r15
	adcq	-112(%rsp), %rcx        ## 8-byte Folded Reload
	movq	%rcx, -80(%rsp)         ## 8-byte Spill
	adcq	$0, -24(%rsp)           ## 8-byte Folded Spill
	adcq	$0, -40(%rsp)           ## 8-byte Folded Spill
	adcq	$0, %r9
	movq	-104(%rsp), %rcx        ## 8-byte Reload
	imulq	%r8, %rcx
	movq	%rcx, %rax
	movq	-48(%rsp), %r10         ## 8-byte Reload
	mulq	%r10
	movq	%rdx, -112(%rsp)        ## 8-byte Spill
	movq	%rax, -88(%rsp)         ## 8-byte Spill
	movq	%rcx, %rax
	mulq	-72(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r11
	movq	%rax, -96(%rsp)         ## 8-byte Spill
	movq	%rcx, %rax
	mulq	-56(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r14
	movq	%rax, %rsi
	movq	%rcx, %rax
	mulq	-64(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r12
	movq	%rax, %rbp
	movq	%rcx, %rax
	mulq	-32(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %rdi
	addq	%rbp, %rdi
	adcq	%rsi, %r12
	adcq	-96(%rsp), %r14         ## 8-byte Folded Reload
	adcq	-88(%rsp), %r11         ## 8-byte Folded Reload
	movq	-112(%rsp), %rcx        ## 8-byte Reload
	adcq	$0, %rcx
	addq	%r8, %rax
	adcq	%rbx, %rdi
	adcq	%r13, %r12
	adcq	%r15, %r14
	adcq	-80(%rsp), %r11         ## 8-byte Folded Reload
	adcq	-24(%rsp), %rcx         ## 8-byte Folded Reload
	movq	%rcx, -112(%rsp)        ## 8-byte Spill
	adcq	$0, -40(%rsp)           ## 8-byte Folded Spill
	adcq	$0, %r9
	movq	-104(%rsp), %rsi        ## 8-byte Reload
	imulq	%rdi, %rsi
	movq	%rsi, %rax
	mulq	%r10
	movq	%rdx, %rbx
	movq	%rax, -104(%rsp)        ## 8-byte Spill
	movq	%rsi, %rax
	mulq	-72(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %rbp
	movq	%rax, %r8
	movq	%rsi, %rax
	mulq	-56(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %rcx
	movq	%rax, %r15
	movq	%rsi, %rax
	movq	%rsi, %r10
	mulq	-64(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %rsi
	movq	%rax, %r13
	movq	%r10, %rax
	movq	-32(%rsp), %r10         ## 8-byte Reload
	mulq	%r10
	addq	%r13, %rdx
	adcq	%r15, %rsi
	adcq	%r8, %rcx
	adcq	-104(%rsp), %rbp        ## 8-byte Folded Reload
	adcq	$0, %rbx
	addq	%rdi, %rax
	adcq	%r12, %rdx
	adcq	%r14, %rsi
	adcq	%r11, %rcx
	adcq	-112(%rsp), %rbp        ## 8-byte Folded Reload
	adcq	-40(%rsp), %rbx         ## 8-byte Folded Reload
	adcq	$0, %r9
	movq	%rdx, %r8
	subq	%r10, %r8
	movq	%rsi, %rdi
	sbbq	-64(%rsp), %rdi         ## 8-byte Folded Reload
	movq	%rcx, %rax
	sbbq	-56(%rsp), %rax         ## 8-byte Folded Reload
	movq	%rbp, %r10
	sbbq	-72(%rsp), %r10         ## 8-byte Folded Reload
	movq	%rbx, %r11
	sbbq	-48(%rsp), %r11         ## 8-byte Folded Reload
	sbbq	$0, %r9
	testb	$1, %r9b
	cmovneq	%rsi, %rdi
	movq	-8(%rsp), %rsi          ## 8-byte Reload
	movq	%rdi, 8(%rsi)
	cmovneq	%rdx, %r8
	movq	%r8, (%rsi)
	cmovneq	%rcx, %rax
	movq	%rax, 16(%rsi)
	cmovneq	%rbp, %r10
	movq	%r10, 24(%rsi)
	cmovneq	%rbx, %r11
	movq	%r11, 32(%rsi)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
                                        ## -- End function
	.globl	_mcl_fp_addPre5L        ## -- Begin function mcl_fp_addPre5L
	.p2align	4, 0x90
_mcl_fp_addPre5L:                       ## @mcl_fp_addPre5L
## %bb.0:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	movq	32(%rsi), %xmm0         ## xmm0 = mem[0],zero
	pshufd	$78, %xmm0, %xmm1       ## xmm1 = xmm0[2,3,0,1]
	movq	%xmm1, %r8
	movq	32(%rdx), %xmm1         ## xmm1 = mem[0],zero
	pshufd	$78, %xmm1, %xmm2       ## xmm2 = xmm1[2,3,0,1]
	movq	%xmm2, %rax
	movq	%xmm0, %r9
	movq	%xmm1, %rcx
	movdqu	(%rsi), %xmm0
	movdqu	16(%rsi), %xmm1
	movq	%xmm1, %r10
	movq	%xmm0, %r14
	pshufd	$78, %xmm1, %xmm1       ## xmm1 = xmm1[2,3,0,1]
	movq	%xmm1, %r11
	movdqu	(%rdx), %xmm1
	movdqu	16(%rdx), %xmm2
	movq	%xmm2, %rdx
	movq	%xmm1, %rbx
	pshufd	$78, %xmm2, %xmm2       ## xmm2 = xmm2[2,3,0,1]
	movq	%xmm2, %rsi
	pshufd	$78, %xmm0, %xmm0       ## xmm0 = xmm0[2,3,0,1]
	movq	%xmm0, %r15
	pshufd	$78, %xmm1, %xmm0       ## xmm0 = xmm1[2,3,0,1]
	addq	%r14, %rbx
	movq	%rbx, (%rdi)
	movq	%xmm0, %rbx
	adcq	%r15, %rbx
	movq	%rbx, 8(%rdi)
	adcq	%r10, %rdx
	movq	%rdx, 16(%rdi)
	adcq	%r11, %rsi
	movq	%rsi, 24(%rdi)
	adcq	%r9, %rcx
	movq	%rcx, 32(%rdi)
	adcq	%r8, %rax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
                                        ## -- End function
	.globl	_mcl_fp_subPre5L        ## -- Begin function mcl_fp_subPre5L
	.p2align	4, 0x90
_mcl_fp_subPre5L:                       ## @mcl_fp_subPre5L
## %bb.0:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	movq	32(%rdx), %xmm0         ## xmm0 = mem[0],zero
	pshufd	$78, %xmm0, %xmm1       ## xmm1 = xmm0[2,3,0,1]
	movq	%xmm1, %r8
	movq	32(%rsi), %xmm1         ## xmm1 = mem[0],zero
	pshufd	$78, %xmm1, %xmm2       ## xmm2 = xmm1[2,3,0,1]
	movq	%xmm2, %rax
	movq	%xmm0, %r9
	movq	%xmm1, %rcx
	movdqu	(%rdx), %xmm0
	movdqu	16(%rdx), %xmm1
	movq	%xmm1, %r10
	movq	%xmm0, %r14
	pshufd	$78, %xmm1, %xmm1       ## xmm1 = xmm1[2,3,0,1]
	movq	%xmm1, %r11
	movdqu	(%rsi), %xmm1
	movdqu	16(%rsi), %xmm2
	movq	%xmm2, %rsi
	movq	%xmm1, %rbx
	pshufd	$78, %xmm2, %xmm2       ## xmm2 = xmm2[2,3,0,1]
	movq	%xmm2, %rdx
	pshufd	$78, %xmm0, %xmm0       ## xmm0 = xmm0[2,3,0,1]
	movq	%xmm0, %r15
	pshufd	$78, %xmm1, %xmm0       ## xmm0 = xmm1[2,3,0,1]
	subq	%r14, %rbx
	movq	%rbx, (%rdi)
	movq	%xmm0, %rbx
	sbbq	%r15, %rbx
	movq	%rbx, 8(%rdi)
	sbbq	%r10, %rsi
	movq	%rsi, 16(%rdi)
	sbbq	%r11, %rdx
	movq	%rdx, 24(%rdi)
	sbbq	%r9, %rcx
	movq	%rcx, 32(%rdi)
	sbbq	%r8, %rax
	andl	$1, %eax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
                                        ## -- End function
	.globl	_mcl_fp_shr1_5L         ## -- Begin function mcl_fp_shr1_5L
	.p2align	4, 0x90
_mcl_fp_shr1_5L:                        ## @mcl_fp_shr1_5L
## %bb.0:
	movq	(%rsi), %r9
	movq	8(%rsi), %r8
	movq	16(%rsi), %rdx
	movq	%rdx, %rcx
	shldq	$63, %r8, %rcx
	movq	32(%rsi), %rax
	movq	24(%rsi), %rsi
	movq	%rcx, 8(%rdi)
	shrdq	$1, %r8, %r9
	movq	%r9, (%rdi)
	shrdq	$1, %rsi, %rdx
	movq	%rdx, 16(%rdi)
	shrdq	$1, %rax, %rsi
	movq	%rsi, 24(%rdi)
	shrq	%rax
	movq	%rax, 32(%rdi)
	retq
                                        ## -- End function
	.globl	_mcl_fp_add5L           ## -- Begin function mcl_fp_add5L
	.p2align	4, 0x90
_mcl_fp_add5L:                          ## @mcl_fp_add5L
## %bb.0:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	32(%rsi), %xmm0         ## xmm0 = mem[0],zero
	pshufd	$78, %xmm0, %xmm1       ## xmm1 = xmm0[2,3,0,1]
	movq	%xmm1, %r10
	movq	32(%rdx), %xmm1         ## xmm1 = mem[0],zero
	pshufd	$78, %xmm1, %xmm2       ## xmm2 = xmm1[2,3,0,1]
	movq	%xmm2, %r8
	movq	%xmm0, %r14
	movq	%xmm1, %r9
	movdqu	(%rsi), %xmm0
	movdqu	16(%rsi), %xmm1
	movq	%xmm1, %r15
	movq	%xmm0, %r13
	pshufd	$78, %xmm1, %xmm1       ## xmm1 = xmm1[2,3,0,1]
	movq	%xmm1, %r12
	movdqu	(%rdx), %xmm1
	movdqu	16(%rdx), %xmm2
	movq	%xmm2, %r11
	movq	%xmm1, %rax
	pshufd	$78, %xmm2, %xmm2       ## xmm2 = xmm2[2,3,0,1]
	movq	%xmm2, %rsi
	pshufd	$78, %xmm0, %xmm0       ## xmm0 = xmm0[2,3,0,1]
	movq	%xmm0, %rbx
	pshufd	$78, %xmm1, %xmm0       ## xmm0 = xmm1[2,3,0,1]
	addq	%r13, %rax
	movq	%rax, (%rdi)
	movq	%xmm0, %rdx
	adcq	%rbx, %rdx
	movq	%rdx, 8(%rdi)
	adcq	%r15, %r11
	movq	%r11, 16(%rdi)
	adcq	%r12, %rsi
	movq	%rsi, 24(%rdi)
	adcq	%r14, %r9
	movq	%r9, 32(%rdi)
	adcq	%r10, %r8
	subq	(%rcx), %rax
	sbbq	8(%rcx), %rdx
	sbbq	16(%rcx), %r11
	sbbq	24(%rcx), %rsi
	sbbq	32(%rcx), %r9
	sbbq	$0, %r8
	testb	$1, %r8b
	jne	LBB74_2
## %bb.1:                               ## %nocarry
	movq	%rax, (%rdi)
	movq	%rdx, 8(%rdi)
	movq	%r11, 16(%rdi)
	movq	%rsi, 24(%rdi)
	movq	%r9, 32(%rdi)
LBB74_2:                                ## %carry
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
                                        ## -- End function
	.globl	_mcl_fp_addNF5L         ## -- Begin function mcl_fp_addNF5L
	.p2align	4, 0x90
_mcl_fp_addNF5L:                        ## @mcl_fp_addNF5L
## %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movdqu	(%rsi), %xmm0
	movdqu	16(%rsi), %xmm1
	movq	%xmm1, %r9
	movq	%xmm0, %r10
	pshufd	$78, %xmm1, %xmm1       ## xmm1 = xmm1[2,3,0,1]
	movq	%xmm1, %r11
	movdqu	(%rdx), %xmm1
	movdqu	16(%rdx), %xmm2
	movq	%xmm2, %r15
	movq	%xmm1, %r12
	pshufd	$78, %xmm2, %xmm2       ## xmm2 = xmm2[2,3,0,1]
	movq	%xmm2, %r8
	pshufd	$78, %xmm0, %xmm0       ## xmm0 = xmm0[2,3,0,1]
	movq	%xmm0, %r14
	pshufd	$78, %xmm1, %xmm0       ## xmm0 = xmm1[2,3,0,1]
	movq	%xmm0, %rbp
	movq	32(%rdx), %r13
	addq	%r10, %r12
	adcq	%r14, %rbp
	adcq	%r9, %r15
	adcq	%r11, %r8
	adcq	32(%rsi), %r13
	movq	%r12, %r9
	subq	(%rcx), %r9
	movq	%rbp, %rax
	sbbq	8(%rcx), %rax
	movq	%r15, %rdx
	sbbq	16(%rcx), %rdx
	movq	%r8, %rbx
	sbbq	24(%rcx), %rbx
	movq	%r13, %rsi
	sbbq	32(%rcx), %rsi
	movq	%rsi, %rcx
	sarq	$63, %rcx
	cmovsq	%rbp, %rax
	movq	%rax, 8(%rdi)
	cmovsq	%r12, %r9
	movq	%r9, (%rdi)
	cmovsq	%r15, %rdx
	movq	%rdx, 16(%rdi)
	cmovsq	%r8, %rbx
	movq	%rbx, 24(%rdi)
	cmovsq	%r13, %rsi
	movq	%rsi, 32(%rdi)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
                                        ## -- End function
	.globl	_mcl_fp_sub5L           ## -- Begin function mcl_fp_sub5L
	.p2align	4, 0x90
_mcl_fp_sub5L:                          ## @mcl_fp_sub5L
## %bb.0:
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	32(%rdx), %xmm0         ## xmm0 = mem[0],zero
	pshufd	$78, %xmm0, %xmm1       ## xmm1 = xmm0[2,3,0,1]
	movq	%xmm1, %r9
	movq	32(%rsi), %xmm1         ## xmm1 = mem[0],zero
	pshufd	$78, %xmm1, %xmm2       ## xmm2 = xmm1[2,3,0,1]
	movq	%xmm2, %r10
	movq	%xmm0, %r14
	movq	%xmm1, %r8
	movdqu	(%rdx), %xmm0
	movdqu	16(%rdx), %xmm1
	movq	%xmm1, %r12
	movq	%xmm0, %rdx
	pshufd	$78, %xmm1, %xmm1       ## xmm1 = xmm1[2,3,0,1]
	movq	%xmm1, %r15
	movdqu	(%rsi), %xmm1
	movdqu	16(%rsi), %xmm2
	movq	%xmm2, %r11
	movq	%xmm1, %rax
	pshufd	$78, %xmm2, %xmm2       ## xmm2 = xmm2[2,3,0,1]
	movq	%xmm2, %rsi
	pshufd	$78, %xmm0, %xmm0       ## xmm0 = xmm0[2,3,0,1]
	movq	%xmm0, %rbx
	pshufd	$78, %xmm1, %xmm0       ## xmm0 = xmm1[2,3,0,1]
	subq	%rdx, %rax
	movq	%rax, (%rdi)
	movq	%xmm0, %rdx
	sbbq	%rbx, %rdx
	movq	%rdx, 8(%rdi)
	sbbq	%r12, %r11
	movq	%r11, 16(%rdi)
	sbbq	%r15, %rsi
	movq	%rsi, 24(%rdi)
	sbbq	%r14, %r8
	movq	%r8, 32(%rdi)
	sbbq	%r9, %r10
	testb	$1, %r10b
	je	LBB76_2
## %bb.1:                               ## %carry
	movq	32(%rcx), %r9
	movq	24(%rcx), %r10
	movq	8(%rcx), %rbx
	movq	16(%rcx), %r14
	addq	(%rcx), %rax
	movq	%rax, (%rdi)
	adcq	%rdx, %rbx
	movq	%rbx, 8(%rdi)
	adcq	%r11, %r14
	movq	%r14, 16(%rdi)
	adcq	%rsi, %r10
	movq	%r10, 24(%rdi)
	adcq	%r8, %r9
	movq	%r9, 32(%rdi)
LBB76_2:                                ## %nocarry
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
                                        ## -- End function
	.globl	_mcl_fp_subNF5L         ## -- Begin function mcl_fp_subNF5L
	.p2align	4, 0x90
_mcl_fp_subNF5L:                        ## @mcl_fp_subNF5L
## %bb.0:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	movdqu	(%rdx), %xmm0
	movdqu	16(%rdx), %xmm1
	movq	%xmm1, %r14
	movq	%xmm0, %rbx
	pshufd	$78, %xmm1, %xmm1       ## xmm1 = xmm1[2,3,0,1]
	movq	%xmm1, %r15
	movdqu	(%rsi), %xmm1
	movdqu	16(%rsi), %xmm2
	movq	%xmm2, %r9
	movq	%xmm1, %r10
	pshufd	$78, %xmm2, %xmm2       ## xmm2 = xmm2[2,3,0,1]
	movq	%xmm2, %r8
	pshufd	$78, %xmm0, %xmm0       ## xmm0 = xmm0[2,3,0,1]
	movq	%xmm0, %rax
	pshufd	$78, %xmm1, %xmm0       ## xmm0 = xmm1[2,3,0,1]
	movq	%xmm0, %r11
	movq	32(%rsi), %rsi
	subq	%rbx, %r10
	sbbq	%rax, %r11
	sbbq	%r14, %r9
	sbbq	%r15, %r8
	sbbq	32(%rdx), %rsi
	movq	%rsi, %rax
	sarq	$63, %rax
	jns	LBB77_1
## %bb.2:
	movq	32(%rcx), %r14
	movq	24(%rcx), %rax
	movq	16(%rcx), %rbx
	movq	8(%rcx), %rdx
	movq	(%rcx), %rcx
	jmp	LBB77_3
LBB77_1:
	xorl	%r14d, %r14d
	xorl	%eax, %eax
	xorl	%ebx, %ebx
	xorl	%edx, %edx
	xorl	%ecx, %ecx
LBB77_3:
	addq	%r10, %rcx
	movq	%rcx, (%rdi)
	adcq	%r11, %rdx
	movq	%rdx, 8(%rdi)
	adcq	%r9, %rbx
	movq	%rbx, 16(%rdi)
	adcq	%r8, %rax
	movq	%rax, 24(%rdi)
	adcq	%rsi, %r14
	movq	%r14, 32(%rdi)
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
                                        ## -- End function
	.globl	_mcl_fpDbl_add5L        ## -- Begin function mcl_fpDbl_add5L
	.p2align	4, 0x90
_mcl_fpDbl_add5L:                       ## @mcl_fpDbl_add5L
## %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movdqu	(%rdx), %xmm2
	movdqu	16(%rdx), %xmm3
	movdqu	32(%rdx), %xmm0
	movdqu	48(%rdx), %xmm4
	movq	%xmm4, %r8
	movq	%xmm0, %r9
	movq	%xmm3, %r15
	movq	%xmm2, %r12
	pshufd	$78, %xmm0, %xmm8       ## xmm8 = xmm0[2,3,0,1]
	movdqu	(%rsi), %xmm5
	movdqu	16(%rsi), %xmm6
	movdqu	32(%rsi), %xmm1
	movdqu	48(%rsi), %xmm7
	movq	%xmm7, %r10
	movq	%xmm1, %r11
	movq	%xmm6, %rax
	movq	%xmm5, %rbx
	pshufd	$78, %xmm1, %xmm9       ## xmm9 = xmm1[2,3,0,1]
	pshufd	$78, %xmm4, %xmm10      ## xmm10 = xmm4[2,3,0,1]
	pshufd	$78, %xmm3, %xmm3       ## xmm3 = xmm3[2,3,0,1]
	pshufd	$78, %xmm6, %xmm6       ## xmm6 = xmm6[2,3,0,1]
	pshufd	$78, %xmm7, %xmm7       ## xmm7 = xmm7[2,3,0,1]
	pshufd	$78, %xmm2, %xmm2       ## xmm2 = xmm2[2,3,0,1]
	pshufd	$78, %xmm5, %xmm5       ## xmm5 = xmm5[2,3,0,1]
	movdqu	64(%rsi), %xmm0
	pshufd	$78, %xmm0, %xmm1       ## xmm1 = xmm0[2,3,0,1]
	movq	%xmm1, %r14
	movdqu	64(%rdx), %xmm1
	pshufd	$78, %xmm1, %xmm4       ## xmm4 = xmm1[2,3,0,1]
	movq	%xmm4, %rbp
	movq	%xmm0, %r13
	addq	%r12, %rbx
	movq	%rbx, (%rdi)
	movq	%xmm5, %rsi
	movq	%xmm2, %rbx
	adcq	%rsi, %rbx
	movq	%rbx, 8(%rdi)
	movq	%xmm1, %rsi
	movq	%xmm7, %r12
	adcq	%r15, %rax
	movq	%rax, 16(%rdi)
	movq	%xmm6, %rax
	movq	%xmm3, %rbx
	adcq	%rax, %rbx
	movq	%rbx, 24(%rdi)
	movq	%xmm10, %r15
	movq	%xmm9, %rbx
	adcq	%r9, %r11
	movq	%r11, 32(%rdi)
	movq	%xmm8, %r9
	adcq	%rbx, %r9
	adcq	%r8, %r10
	adcq	%r12, %r15
	adcq	%r13, %rsi
	adcq	%r14, %rbp
	setb	%bl
	movzbl	%bl, %r8d
	movq	%r9, %rdx
	subq	(%rcx), %rdx
	movq	%r10, %rax
	sbbq	8(%rcx), %rax
	movq	%r15, %rbx
	sbbq	16(%rcx), %rbx
	movq	%rsi, %r11
	sbbq	24(%rcx), %r11
	movq	%rbp, %r14
	sbbq	32(%rcx), %r14
	sbbq	$0, %r8
	testb	$1, %r8b
	cmovneq	%r10, %rax
	movq	%rax, 48(%rdi)
	cmovneq	%r9, %rdx
	movq	%rdx, 40(%rdi)
	cmovneq	%r15, %rbx
	movq	%rbx, 56(%rdi)
	cmovneq	%rsi, %r11
	movq	%r11, 64(%rdi)
	cmovneq	%rbp, %r14
	movq	%r14, 72(%rdi)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
                                        ## -- End function
	.globl	_mcl_fpDbl_sub5L        ## -- Begin function mcl_fpDbl_sub5L
	.p2align	4, 0x90
_mcl_fpDbl_sub5L:                       ## @mcl_fpDbl_sub5L
## %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movdqu	(%rsi), %xmm2
	movdqu	16(%rsi), %xmm3
	movdqu	32(%rsi), %xmm0
	movdqu	48(%rsi), %xmm4
	movq	%xmm4, %r8
	movq	%xmm0, %r12
	movq	%xmm3, %rbx
	movq	%xmm2, %rax
	pshufd	$78, %xmm0, %xmm8       ## xmm8 = xmm0[2,3,0,1]
	movdqu	(%rdx), %xmm5
	movdqu	16(%rdx), %xmm6
	movdqu	32(%rdx), %xmm1
	movdqu	48(%rdx), %xmm7
	movq	%xmm7, %r10
	movq	%xmm1, %r15
	movq	%xmm6, %r13
	movq	%xmm5, %r11
	pshufd	$78, %xmm1, %xmm9       ## xmm9 = xmm1[2,3,0,1]
	pshufd	$78, %xmm4, %xmm10      ## xmm10 = xmm4[2,3,0,1]
	pshufd	$78, %xmm7, %xmm7       ## xmm7 = xmm7[2,3,0,1]
	pshufd	$78, %xmm3, %xmm3       ## xmm3 = xmm3[2,3,0,1]
	pshufd	$78, %xmm6, %xmm6       ## xmm6 = xmm6[2,3,0,1]
	pshufd	$78, %xmm2, %xmm2       ## xmm2 = xmm2[2,3,0,1]
	pshufd	$78, %xmm5, %xmm5       ## xmm5 = xmm5[2,3,0,1]
	movdqu	64(%rdx), %xmm0
	pshufd	$78, %xmm0, %xmm1       ## xmm1 = xmm0[2,3,0,1]
	movq	%xmm1, %r14
	movdqu	64(%rsi), %xmm1
	pshufd	$78, %xmm1, %xmm4       ## xmm4 = xmm1[2,3,0,1]
	movq	%xmm4, %r9
	xorl	%esi, %esi
	subq	%r11, %rax
	movq	%rax, (%rdi)
	movq	%xmm5, %rax
	movq	%xmm2, %rdx
	sbbq	%rax, %rdx
	movq	%rdx, 8(%rdi)
	movq	%xmm0, %rbp
	movq	%xmm1, %r11
	sbbq	%r13, %rbx
	movq	%rbx, 16(%rdi)
	movq	%xmm6, %rdx
	movq	%xmm3, %rbx
	sbbq	%rdx, %rbx
	movq	%rbx, 24(%rdi)
	movq	%xmm7, %r13
	movq	%xmm10, %rdx
	sbbq	%r15, %r12
	movq	%r12, 32(%rdi)
	movq	%xmm9, %rax
	movq	%xmm8, %r15
	sbbq	%rax, %r15
	sbbq	%r10, %r8
	sbbq	%r13, %rdx
	sbbq	%rbp, %r11
	sbbq	%r14, %r9
	sbbq	$0, %rsi
	andl	$1, %esi
	negq	%rsi
	movq	32(%rcx), %r10
	andq	%rsi, %r10
	movq	24(%rcx), %rbp
	andq	%rsi, %rbp
	movq	16(%rcx), %rbx
	andq	%rsi, %rbx
	movq	8(%rcx), %rax
	andq	%rsi, %rax
	andq	(%rcx), %rsi
	addq	%r15, %rsi
	movq	%rsi, 40(%rdi)
	adcq	%r8, %rax
	movq	%rax, 48(%rdi)
	adcq	%rdx, %rbx
	movq	%rbx, 56(%rdi)
	adcq	%r11, %rbp
	movq	%rbp, 64(%rdi)
	adcq	%r9, %r10
	movq	%r10, 72(%rdi)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
                                        ## -- End function
	.globl	_mcl_fp_mulUnitPre6L    ## -- Begin function mcl_fp_mulUnitPre6L
	.p2align	4, 0x90
_mcl_fp_mulUnitPre6L:                   ## @mcl_fp_mulUnitPre6L
## %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	%rdx, %rcx
	movq	%rdx, %rax
	mulq	40(%rsi)
	movq	%rdx, %r9
	movq	%rax, %r8
	movq	%rcx, %rax
	mulq	32(%rsi)
	movq	%rdx, %r10
	movq	%rax, %r11
	movq	%rcx, %rax
	mulq	24(%rsi)
	movq	%rdx, %r15
	movq	%rax, %r14
	movq	%rcx, %rax
	mulq	16(%rsi)
	movq	%rdx, %r13
	movq	%rax, %r12
	movq	%rcx, %rax
	mulq	8(%rsi)
	movq	%rdx, %rbx
	movq	%rax, %rbp
	movq	%rcx, %rax
	mulq	(%rsi)
	movq	%rax, (%rdi)
	addq	%rbp, %rdx
	movq	%rdx, 8(%rdi)
	adcq	%r12, %rbx
	movq	%rbx, 16(%rdi)
	adcq	%r14, %r13
	movq	%r13, 24(%rdi)
	adcq	%r11, %r15
	movq	%r15, 32(%rdi)
	adcq	%r8, %r10
	movq	%r10, 40(%rdi)
	adcq	$0, %r9
	movq	%r9, 48(%rdi)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
                                        ## -- End function
	.globl	_mcl_fpDbl_mulPre6L     ## -- Begin function mcl_fpDbl_mulPre6L
	.p2align	4, 0x90
_mcl_fpDbl_mulPre6L:                    ## @mcl_fpDbl_mulPre6L
## %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	%rdx, -64(%rsp)         ## 8-byte Spill
	movq	%rdi, -48(%rsp)         ## 8-byte Spill
	movq	(%rsi), %rax
	movq	%rax, -56(%rsp)         ## 8-byte Spill
	movq	8(%rsi), %r14
	movq	(%rdx), %rbx
	mulq	%rbx
	movq	%rdx, %r12
	movq	16(%rsi), %r13
	movq	24(%rsi), %r8
	movq	32(%rsi), %r10
	movq	40(%rsi), %rdx
	movq	%rdx, -72(%rsp)         ## 8-byte Spill
	movq	%rax, (%rdi)
	movq	%rdx, %rax
	mulq	%rbx
	movq	%rdx, %rcx
	movq	%rax, -104(%rsp)        ## 8-byte Spill
	movq	%r10, %rax
	mulq	%rbx
	movq	%rdx, %rbp
	movq	%rax, -112(%rsp)        ## 8-byte Spill
	movq	%r8, %rax
	mulq	%rbx
	movq	%rdx, %r11
	movq	%rax, -88(%rsp)         ## 8-byte Spill
	movq	%r13, %rax
	movq	%r13, %r9
	movq	%r13, -32(%rsp)         ## 8-byte Spill
	mulq	%rbx
	movq	%rdx, %r13
	movq	%rax, %r15
	movq	%r14, %rax
	movq	%r14, -40(%rsp)         ## 8-byte Spill
	mulq	%rbx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	addq	%r12, %rdi
	adcq	%r15, %rsi
	adcq	-88(%rsp), %r13         ## 8-byte Folded Reload
	adcq	-112(%rsp), %r11        ## 8-byte Folded Reload
	adcq	-104(%rsp), %rbp        ## 8-byte Folded Reload
	movq	%rbp, -24(%rsp)         ## 8-byte Spill
	adcq	$0, %rcx
	movq	%rcx, -80(%rsp)         ## 8-byte Spill
	movq	-64(%rsp), %rax         ## 8-byte Reload
	movq	8(%rax), %r15
	movq	%r15, %rax
	mulq	-72(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, -104(%rsp)        ## 8-byte Spill
	movq	%rax, -112(%rsp)        ## 8-byte Spill
	movq	%r15, %rax
	mulq	%r10
	movq	%r10, -16(%rsp)         ## 8-byte Spill
	movq	%rdx, -88(%rsp)         ## 8-byte Spill
	movq	%rax, %r12
	movq	%r15, %rax
	mulq	%r8
	movq	%r8, -8(%rsp)           ## 8-byte Spill
	movq	%rdx, -96(%rsp)         ## 8-byte Spill
	movq	%rax, %rbp
	movq	%r15, %rax
	mulq	%r9
	movq	%rdx, %r9
	movq	%rax, %rcx
	movq	%r15, %rax
	mulq	%r14
	movq	%rdx, %r14
	movq	%rax, %rbx
	movq	%r15, %rax
	mulq	-56(%rsp)               ## 8-byte Folded Reload
	addq	%rdi, %rax
	movq	-48(%rsp), %rdi         ## 8-byte Reload
	movq	%rax, 8(%rdi)
	adcq	%rsi, %rbx
	adcq	%r13, %rcx
	adcq	%r11, %rbp
	adcq	-24(%rsp), %r12         ## 8-byte Folded Reload
	movq	-112(%rsp), %rsi        ## 8-byte Reload
	adcq	-80(%rsp), %rsi         ## 8-byte Folded Reload
	setb	%al
	addq	%rdx, %rbx
	adcq	%r14, %rcx
	adcq	%r9, %rbp
	adcq	-96(%rsp), %r12         ## 8-byte Folded Reload
	adcq	-88(%rsp), %rsi         ## 8-byte Folded Reload
	movq	%rsi, -112(%rsp)        ## 8-byte Spill
	movzbl	%al, %r9d
	adcq	-104(%rsp), %r9         ## 8-byte Folded Reload
	movq	-64(%rsp), %rax         ## 8-byte Reload
	movq	16(%rax), %rsi
	movq	%rsi, %rax
	mulq	-72(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, -104(%rsp)        ## 8-byte Spill
	movq	%rax, -88(%rsp)         ## 8-byte Spill
	movq	%rsi, %rax
	mulq	%r10
	movq	%rdx, %r10
	movq	%rax, -96(%rsp)         ## 8-byte Spill
	movq	%rsi, %rax
	mulq	%r8
	movq	%rdx, %r8
	movq	%rax, -80(%rsp)         ## 8-byte Spill
	movq	%rsi, %rax
	mulq	-32(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r11
	movq	%rax, %r13
	movq	%rsi, %rax
	mulq	-40(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r15
	movq	%rax, %r14
	movq	%rsi, %rax
	mulq	-56(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %rdi
	addq	%r14, %rdi
	adcq	%r13, %r15
	adcq	-80(%rsp), %r11         ## 8-byte Folded Reload
	adcq	-96(%rsp), %r8          ## 8-byte Folded Reload
	adcq	-88(%rsp), %r10         ## 8-byte Folded Reload
	movq	-104(%rsp), %rsi        ## 8-byte Reload
	adcq	$0, %rsi
	addq	%rbx, %rax
	movq	-48(%rsp), %rdx         ## 8-byte Reload
	movq	%rax, 16(%rdx)
	adcq	%rcx, %rdi
	adcq	%rbp, %r15
	adcq	%r12, %r11
	adcq	-112(%rsp), %r8         ## 8-byte Folded Reload
	adcq	%r9, %r10
	adcq	$0, %rsi
	movq	%rsi, -104(%rsp)        ## 8-byte Spill
	movq	-64(%rsp), %rax         ## 8-byte Reload
	movq	24(%rax), %rsi
	movq	%rsi, %rax
	mulq	-72(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, -88(%rsp)         ## 8-byte Spill
	movq	%rax, -112(%rsp)        ## 8-byte Spill
	movq	%rsi, %rax
	mulq	-16(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %rcx
	movq	%rax, -96(%rsp)         ## 8-byte Spill
	movq	%rsi, %rax
	mulq	-8(%rsp)                ## 8-byte Folded Reload
	movq	%rdx, %r9
	movq	%rax, -80(%rsp)         ## 8-byte Spill
	movq	%rsi, %rax
	mulq	-32(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r14
	movq	%rax, %rbp
	movq	%rsi, %rax
	mulq	-40(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r12
	movq	%rax, %rbx
	movq	%rsi, %rax
	mulq	-56(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r13
	addq	%rbx, %r13
	adcq	%rbp, %r12
	adcq	-80(%rsp), %r14         ## 8-byte Folded Reload
	adcq	-96(%rsp), %r9          ## 8-byte Folded Reload
	adcq	-112(%rsp), %rcx        ## 8-byte Folded Reload
	movq	-88(%rsp), %rdx         ## 8-byte Reload
	adcq	$0, %rdx
	addq	%rdi, %rax
	movq	-48(%rsp), %rdi         ## 8-byte Reload
	movq	%rax, 24(%rdi)
	adcq	%r15, %r13
	adcq	%r11, %r12
	adcq	%r8, %r14
	adcq	%r10, %r9
	adcq	-104(%rsp), %rcx        ## 8-byte Folded Reload
	adcq	$0, %rdx
	movq	%rdx, -88(%rsp)         ## 8-byte Spill
	movq	-64(%rsp), %rax         ## 8-byte Reload
	movq	32(%rax), %rsi
	movq	%rsi, %rax
	mulq	-72(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, -104(%rsp)        ## 8-byte Spill
	movq	%rax, -96(%rsp)         ## 8-byte Spill
	movq	%rsi, %rax
	mulq	-16(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, -112(%rsp)        ## 8-byte Spill
	movq	%rax, -80(%rsp)         ## 8-byte Spill
	movq	%rsi, %rax
	mulq	-8(%rsp)                ## 8-byte Folded Reload
	movq	%rdx, %rbx
	movq	%rax, -24(%rsp)         ## 8-byte Spill
	movq	%rsi, %rax
	mulq	-32(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r15
	movq	%rax, %rbp
	movq	%rsi, %rax
	mulq	-40(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r10
	movq	%rax, %r8
	movq	%rsi, %rax
	mulq	-56(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r11
	addq	%r8, %r11
	adcq	%rbp, %r10
	adcq	-24(%rsp), %r15         ## 8-byte Folded Reload
	adcq	-80(%rsp), %rbx         ## 8-byte Folded Reload
	movq	-112(%rsp), %rsi        ## 8-byte Reload
	adcq	-96(%rsp), %rsi         ## 8-byte Folded Reload
	movq	-104(%rsp), %rdx        ## 8-byte Reload
	adcq	$0, %rdx
	addq	%r13, %rax
	movq	%rax, 32(%rdi)
	adcq	%r12, %r11
	adcq	%r14, %r10
	adcq	%r9, %r15
	adcq	%rcx, %rbx
	movq	%rbx, -96(%rsp)         ## 8-byte Spill
	adcq	-88(%rsp), %rsi         ## 8-byte Folded Reload
	movq	%rsi, -112(%rsp)        ## 8-byte Spill
	adcq	$0, %rdx
	movq	%rdx, -104(%rsp)        ## 8-byte Spill
	movq	-64(%rsp), %rax         ## 8-byte Reload
	movq	40(%rax), %rbx
	movq	%rbx, %rax
	mulq	-72(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %rcx
	movq	%rax, -72(%rsp)         ## 8-byte Spill
	movq	%rbx, %rax
	mulq	-16(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %rbp
	movq	%rax, %r9
	movq	%rbx, %rax
	mulq	-8(%rsp)                ## 8-byte Folded Reload
	movq	%rdx, %rsi
	movq	%rax, %r14
	movq	%rbx, %rax
	mulq	-56(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r12
	movq	%rax, %rdi
	movq	%rbx, %rax
	mulq	-40(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r13
	movq	%rax, %r8
	movq	%rbx, %rax
	mulq	-32(%rsp)               ## 8-byte Folded Reload
	addq	%r12, %r8
	adcq	%r13, %rax
	adcq	%r14, %rdx
	adcq	%r9, %rsi
	adcq	-72(%rsp), %rbp         ## 8-byte Folded Reload
	adcq	$0, %rcx
	addq	%r11, %rdi
	movq	-48(%rsp), %rbx         ## 8-byte Reload
	movq	%rdi, 40(%rbx)
	adcq	%r10, %r8
	movq	%r8, 48(%rbx)
	adcq	%r15, %rax
	movq	%rax, 56(%rbx)
	adcq	-96(%rsp), %rdx         ## 8-byte Folded Reload
	movq	%rdx, 64(%rbx)
	adcq	-112(%rsp), %rsi        ## 8-byte Folded Reload
	movq	%rsi, 72(%rbx)
	adcq	-104(%rsp), %rbp        ## 8-byte Folded Reload
	movq	%rbp, 80(%rbx)
	adcq	$0, %rcx
	movq	%rcx, 88(%rbx)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
                                        ## -- End function
	.globl	_mcl_fpDbl_sqrPre6L     ## -- Begin function mcl_fpDbl_sqrPre6L
	.p2align	4, 0x90
_mcl_fpDbl_sqrPre6L:                    ## @mcl_fpDbl_sqrPre6L
## %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$168, %rsp
	movq	%rdi, -96(%rsp)         ## 8-byte Spill
	movq	40(%rsi), %r9
	movq	(%rsi), %r10
	movq	8(%rsi), %rcx
	movq	%r9, %rax
	mulq	%r10
	movq	%rax, 56(%rsp)          ## 8-byte Spill
	movq	%rdx, 48(%rsp)          ## 8-byte Spill
	movq	32(%rsi), %r8
	movq	%r8, %rax
	mulq	%r10
	movq	%rax, 40(%rsp)          ## 8-byte Spill
	movq	%rdx, 32(%rsp)          ## 8-byte Spill
	movq	24(%rsi), %r11
	movq	%r11, %rax
	mulq	%r10
	movq	%rax, 16(%rsp)          ## 8-byte Spill
	movq	%rdx, -48(%rsp)         ## 8-byte Spill
	movq	16(%rsi), %r14
	movq	%r14, %rax
	mulq	%r10
	movq	%rdx, 144(%rsp)         ## 8-byte Spill
	movq	%rax, -40(%rsp)         ## 8-byte Spill
	movq	%r9, %rax
	mulq	%rcx
	movq	%rdx, 24(%rsp)          ## 8-byte Spill
	movq	%rax, 8(%rsp)           ## 8-byte Spill
	movq	%r8, %rax
	mulq	%rcx
	movq	%rdx, (%rsp)            ## 8-byte Spill
	movq	%rax, -56(%rsp)         ## 8-byte Spill
	movq	%r11, %rax
	mulq	%rcx
	movq	%rdx, -64(%rsp)         ## 8-byte Spill
	movq	%rax, -72(%rsp)         ## 8-byte Spill
	movq	%r14, %rax
	mulq	%rcx
	movq	%rdx, %rsi
	movq	%rdx, 72(%rsp)          ## 8-byte Spill
	movq	%rax, %r13
	movq	%rcx, %rax
	mulq	%rcx
	movq	%rdx, 120(%rsp)         ## 8-byte Spill
	movq	%rax, %rbp
	movq	%rcx, %rax
	mulq	%r10
	movq	%rdx, %rbx
	movq	%rax, %r15
	movq	%r10, %rax
	mulq	%r10
	movq	%rdx, %rcx
	movq	%rax, (%rdi)
	movq	%r9, %rax
	mulq	%r8
	movq	%rdx, 136(%rsp)         ## 8-byte Spill
	movq	%rax, 128(%rsp)         ## 8-byte Spill
	movq	%r9, %rax
	mulq	%r11
	movq	%rdx, -8(%rsp)          ## 8-byte Spill
	movq	%rax, -16(%rsp)         ## 8-byte Spill
	movq	%r9, %rax
	mulq	%r14
	movq	%rdx, -24(%rsp)         ## 8-byte Spill
	movq	%rax, -32(%rsp)         ## 8-byte Spill
	movq	%r9, %rax
	mulq	%r9
	movq	%rdx, 160(%rsp)         ## 8-byte Spill
	movq	%rax, 152(%rsp)         ## 8-byte Spill
	movq	%r8, %rax
	mulq	%r11
	movq	%rdx, 104(%rsp)         ## 8-byte Spill
	movq	%rax, 96(%rsp)          ## 8-byte Spill
	movq	%r8, %rax
	mulq	%r14
	movq	%rdx, -88(%rsp)         ## 8-byte Spill
	movq	%rax, -80(%rsp)         ## 8-byte Spill
	movq	%r8, %rax
	mulq	%r8
	movq	%rdx, -104(%rsp)        ## 8-byte Spill
	movq	%rax, 112(%rsp)         ## 8-byte Spill
	movq	%r11, %rax
	mulq	%r14
	movq	%rdx, 80(%rsp)          ## 8-byte Spill
	movq	%rax, 88(%rsp)          ## 8-byte Spill
	movq	%r11, %rax
	mulq	%r11
	movq	%rdx, -112(%rsp)        ## 8-byte Spill
	movq	%rax, -120(%rsp)        ## 8-byte Spill
	movq	%r14, %rax
	mulq	%r14
	movq	%rax, %r12
	movq	%rdx, -128(%rsp)        ## 8-byte Spill
	addq	%rbx, %rbp
	movq	%rbp, 64(%rsp)          ## 8-byte Spill
	movq	120(%rsp), %r11         ## 8-byte Reload
	adcq	%r13, %r11
	movq	%rsi, %r8
	adcq	-72(%rsp), %r8          ## 8-byte Folded Reload
	movq	-64(%rsp), %r14         ## 8-byte Reload
	adcq	-56(%rsp), %r14         ## 8-byte Folded Reload
	movq	(%rsp), %r9             ## 8-byte Reload
	adcq	8(%rsp), %r9            ## 8-byte Folded Reload
	movq	24(%rsp), %r10          ## 8-byte Reload
	adcq	$0, %r10
	movq	%r15, %rdi
	addq	%r15, %rcx
	adcq	-40(%rsp), %rbx         ## 8-byte Folded Reload
	movq	144(%rsp), %r15         ## 8-byte Reload
	movq	%r15, %rbp
	adcq	16(%rsp), %rbp          ## 8-byte Folded Reload
	movq	-48(%rsp), %rax         ## 8-byte Reload
	adcq	40(%rsp), %rax          ## 8-byte Folded Reload
	movq	32(%rsp), %rdx          ## 8-byte Reload
	adcq	56(%rsp), %rdx          ## 8-byte Folded Reload
	movq	48(%rsp), %rsi          ## 8-byte Reload
	adcq	$0, %rsi
	addq	%rdi, %rcx
	adcq	64(%rsp), %rbx          ## 8-byte Folded Reload
	movq	-96(%rsp), %rdi         ## 8-byte Reload
	movq	%rcx, 8(%rdi)
	adcq	%r11, %rbp
	adcq	%r8, %rax
	adcq	%r14, %rdx
	adcq	%r9, %rsi
	adcq	$0, %r10
	movq	%r15, %r9
	addq	%r13, %r9
	adcq	72(%rsp), %r12          ## 8-byte Folded Reload
	movq	-128(%rsp), %rcx        ## 8-byte Reload
	movq	88(%rsp), %r15          ## 8-byte Reload
	adcq	%r15, %rcx
	movq	80(%rsp), %rdi          ## 8-byte Reload
	movq	%rdi, %r11
	adcq	-80(%rsp), %r11         ## 8-byte Folded Reload
	movq	-88(%rsp), %r8          ## 8-byte Reload
	adcq	-32(%rsp), %r8          ## 8-byte Folded Reload
	movq	-24(%rsp), %r13         ## 8-byte Reload
	adcq	$0, %r13
	addq	-40(%rsp), %rbx         ## 8-byte Folded Reload
	adcq	%rbp, %r9
	movq	-96(%rsp), %rbp         ## 8-byte Reload
	movq	%rbx, 16(%rbp)
	adcq	%rax, %r12
	adcq	%rdx, %rcx
	movq	%rcx, -128(%rsp)        ## 8-byte Spill
	adcq	%rsi, %r11
	adcq	%r10, %r8
	adcq	$0, %r13
	movq	-48(%rsp), %rax         ## 8-byte Reload
	addq	-72(%rsp), %rax         ## 8-byte Folded Reload
	movq	-64(%rsp), %rsi         ## 8-byte Reload
	adcq	%r15, %rsi
	movq	-120(%rsp), %rbx        ## 8-byte Reload
	adcq	%rdi, %rbx
	movq	-112(%rsp), %rdi        ## 8-byte Reload
	movq	96(%rsp), %rdx          ## 8-byte Reload
	adcq	%rdx, %rdi
	movq	104(%rsp), %r10         ## 8-byte Reload
	movq	%r10, %r14
	adcq	-16(%rsp), %r14         ## 8-byte Folded Reload
	movq	-8(%rsp), %rcx          ## 8-byte Reload
	adcq	$0, %rcx
	addq	16(%rsp), %r9           ## 8-byte Folded Reload
	adcq	%r12, %rax
	movq	%rax, %r12
	movq	%r9, 24(%rbp)
	movq	%rbp, %r9
	adcq	-128(%rsp), %rsi        ## 8-byte Folded Reload
	movq	%rsi, %r15
	adcq	%r11, %rbx
	movq	%rbx, -120(%rsp)        ## 8-byte Spill
	adcq	%r8, %rdi
	movq	%rdi, -112(%rsp)        ## 8-byte Spill
	adcq	%r13, %r14
	adcq	$0, %rcx
	movq	32(%rsp), %rsi          ## 8-byte Reload
	addq	-56(%rsp), %rsi         ## 8-byte Folded Reload
	movq	(%rsp), %rbp            ## 8-byte Reload
	adcq	-80(%rsp), %rbp         ## 8-byte Folded Reload
	movq	-88(%rsp), %rbx         ## 8-byte Reload
	adcq	%rdx, %rbx
	movq	112(%rsp), %rdi         ## 8-byte Reload
	adcq	%r10, %rdi
	movq	-104(%rsp), %rax        ## 8-byte Reload
	movq	128(%rsp), %r11         ## 8-byte Reload
	adcq	%r11, %rax
	movq	136(%rsp), %r13         ## 8-byte Reload
	movq	%r13, %r8
	adcq	$0, %r8
	addq	40(%rsp), %r12          ## 8-byte Folded Reload
	adcq	%r15, %rsi
	movq	%rsi, %r15
	movq	%r12, 32(%r9)
	adcq	-120(%rsp), %rbp        ## 8-byte Folded Reload
	movq	%rbp, %rdx
	adcq	-112(%rsp), %rbx        ## 8-byte Folded Reload
	movq	%rbx, %r12
	adcq	%r14, %rdi
	movq	%rdi, %r14
	adcq	%rcx, %rax
	movq	%rax, -104(%rsp)        ## 8-byte Spill
	adcq	$0, %r8
	movq	48(%rsp), %rsi          ## 8-byte Reload
	addq	8(%rsp), %rsi           ## 8-byte Folded Reload
	movq	24(%rsp), %rbp          ## 8-byte Reload
	adcq	-32(%rsp), %rbp         ## 8-byte Folded Reload
	movq	-24(%rsp), %rax         ## 8-byte Reload
	adcq	-16(%rsp), %rax         ## 8-byte Folded Reload
	movq	-8(%rsp), %rbx          ## 8-byte Reload
	adcq	%r11, %rbx
	movq	152(%rsp), %r11         ## 8-byte Reload
	adcq	%r13, %r11
	movq	160(%rsp), %r10         ## 8-byte Reload
	adcq	$0, %r10
	movq	%r15, %rdi
	addq	56(%rsp), %rdi          ## 8-byte Folded Reload
	movq	%rdi, 40(%r9)
	adcq	%rdx, %rsi
	movq	%rsi, 48(%r9)
	movq	%rbp, %rdx
	adcq	%r12, %rdx
	movq	%rdx, 56(%r9)
	movq	%rax, %rdx
	adcq	%r14, %rdx
	movq	%rdx, 64(%r9)
	movq	%rbx, %rdx
	adcq	-104(%rsp), %rdx        ## 8-byte Folded Reload
	movq	%rdx, 72(%r9)
	movq	%r11, %rdx
	adcq	%r8, %rdx
	movq	%rdx, 80(%r9)
	movq	%r10, %rax
	adcq	$0, %rax
	movq	%rax, 88(%r9)
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
                                        ## -- End function
	.globl	_mcl_fp_mont6L          ## -- Begin function mcl_fp_mont6L
	.p2align	4, 0x90
_mcl_fp_mont6L:                         ## @mcl_fp_mont6L
## %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
	movq	%rdx, -48(%rsp)         ## 8-byte Spill
	movq	%rdi, 40(%rsp)          ## 8-byte Spill
	movq	40(%rsi), %rax
	movq	%rax, -56(%rsp)         ## 8-byte Spill
	movq	(%rdx), %rbp
	mulq	%rbp
	movq	%rax, %r8
	movq	%rdx, %r10
	movq	32(%rsi), %rax
	movq	%rax, -64(%rsp)         ## 8-byte Spill
	mulq	%rbp
	movq	%rax, %r11
	movq	%rdx, %r13
	movq	24(%rsi), %rax
	movq	%rax, -72(%rsp)         ## 8-byte Spill
	mulq	%rbp
	movq	%rax, %r15
	movq	%rdx, %rdi
	movq	16(%rsi), %rax
	movq	%rax, -40(%rsp)         ## 8-byte Spill
	mulq	%rbp
	movq	%rax, %r9
	movq	%rdx, %r14
	movq	(%rsi), %rbx
	movq	%rbx, 24(%rsp)          ## 8-byte Spill
	movq	8(%rsi), %rax
	movq	%rax, 16(%rsp)          ## 8-byte Spill
	mulq	%rbp
	movq	%rdx, %r12
	movq	%rax, %rsi
	movq	%rbx, %rax
	mulq	%rbp
	movq	%rax, -96(%rsp)         ## 8-byte Spill
	movq	%rdx, %rbp
	addq	%rsi, %rbp
	adcq	%r9, %r12
	adcq	%r15, %r14
	adcq	%r11, %rdi
	movq	%rdi, -88(%rsp)         ## 8-byte Spill
	adcq	%r8, %r13
	movq	%r13, -128(%rsp)        ## 8-byte Spill
	adcq	$0, %r10
	movq	%r10, -112(%rsp)        ## 8-byte Spill
	movq	-8(%rcx), %r8
	movq	%r8, -32(%rsp)          ## 8-byte Spill
	imulq	%rax, %r8
	movq	40(%rcx), %rdx
	movq	%rdx, 8(%rsp)           ## 8-byte Spill
	movq	%r8, %rax
	mulq	%rdx
	movq	%rax, -104(%rsp)        ## 8-byte Spill
	movq	%rdx, -120(%rsp)        ## 8-byte Spill
	movq	32(%rcx), %rdx
	movq	%rdx, (%rsp)            ## 8-byte Spill
	movq	%r8, %rax
	mulq	%rdx
	movq	%rax, -80(%rsp)         ## 8-byte Spill
	movq	%rdx, %r11
	movq	24(%rcx), %rdx
	movq	%rdx, -8(%rsp)          ## 8-byte Spill
	movq	%r8, %rax
	mulq	%rdx
	movq	%rax, %r13
	movq	%rdx, %r15
	movq	16(%rcx), %rdx
	movq	%rdx, -16(%rsp)         ## 8-byte Spill
	movq	%r8, %rax
	mulq	%rdx
	movq	%rax, %r9
	movq	%rdx, %rsi
	movq	(%rcx), %rbx
	movq	%rbx, -24(%rsp)         ## 8-byte Spill
	movq	8(%rcx), %rcx
	movq	%rcx, 32(%rsp)          ## 8-byte Spill
	movq	%r8, %rax
	mulq	%rcx
	movq	%rdx, %rdi
	movq	%rax, %r10
	movq	%r8, %rax
	mulq	%rbx
	movq	%rdx, %rcx
	addq	%r10, %rcx
	adcq	%r9, %rdi
	adcq	%r13, %rsi
	adcq	-80(%rsp), %r15         ## 8-byte Folded Reload
	adcq	-104(%rsp), %r11        ## 8-byte Folded Reload
	movq	-120(%rsp), %rdx        ## 8-byte Reload
	adcq	$0, %rdx
	addq	-96(%rsp), %rax         ## 8-byte Folded Reload
	adcq	%rbp, %rcx
	adcq	%r12, %rdi
	adcq	%r14, %rsi
	adcq	-88(%rsp), %r15         ## 8-byte Folded Reload
	adcq	-128(%rsp), %r11        ## 8-byte Folded Reload
	adcq	-112(%rsp), %rdx        ## 8-byte Folded Reload
	movq	%rdx, -120(%rsp)        ## 8-byte Spill
	setb	-128(%rsp)              ## 1-byte Folded Spill
	movq	-48(%rsp), %rax         ## 8-byte Reload
	movq	8(%rax), %rbx
	movq	%rbx, %rax
	mulq	-56(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, -112(%rsp)        ## 8-byte Spill
	movq	%rax, -88(%rsp)         ## 8-byte Spill
	movq	%rbx, %rax
	mulq	-64(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r10
	movq	%rax, -96(%rsp)         ## 8-byte Spill
	movq	%rbx, %rax
	mulq	-72(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r14
	movq	%rax, -104(%rsp)        ## 8-byte Spill
	movq	%rbx, %rax
	mulq	-40(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r8
	movq	%rax, %r13
	movq	%rbx, %rax
	mulq	16(%rsp)                ## 8-byte Folded Reload
	movq	%rdx, %rbp
	movq	%rax, %r12
	movq	%rbx, %rax
	mulq	24(%rsp)                ## 8-byte Folded Reload
	movq	%rax, %r9
	movq	%rdx, %rbx
	addq	%r12, %rbx
	adcq	%r13, %rbp
	adcq	-104(%rsp), %r8         ## 8-byte Folded Reload
	adcq	-96(%rsp), %r14         ## 8-byte Folded Reload
	adcq	-88(%rsp), %r10         ## 8-byte Folded Reload
	movq	-112(%rsp), %rdx        ## 8-byte Reload
	adcq	$0, %rdx
	addq	%rcx, %r9
	adcq	%rdi, %rbx
	adcq	%rsi, %rbp
	adcq	%r15, %r8
	adcq	%r11, %r14
	adcq	-120(%rsp), %r10        ## 8-byte Folded Reload
	movzbl	-128(%rsp), %eax        ## 1-byte Folded Reload
	adcq	%rax, %rdx
	movq	%rdx, -112(%rsp)        ## 8-byte Spill
	setb	-120(%rsp)              ## 1-byte Folded Spill
	movq	-32(%rsp), %rsi         ## 8-byte Reload
	imulq	%r9, %rsi
	movq	%rsi, %rax
	mulq	8(%rsp)                 ## 8-byte Folded Reload
	movq	%rdx, -128(%rsp)        ## 8-byte Spill
	movq	%rax, -96(%rsp)         ## 8-byte Spill
	movq	%rsi, %rax
	mulq	(%rsp)                  ## 8-byte Folded Reload
	movq	%rdx, -88(%rsp)         ## 8-byte Spill
	movq	%rax, -104(%rsp)        ## 8-byte Spill
	movq	%rsi, %rax
	mulq	-8(%rsp)                ## 8-byte Folded Reload
	movq	%rdx, %r13
	movq	%rax, -80(%rsp)         ## 8-byte Spill
	movq	%rsi, %rax
	mulq	-16(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %rcx
	movq	%rax, %rdi
	movq	%rsi, %rax
	mulq	32(%rsp)                ## 8-byte Folded Reload
	movq	%rdx, %r12
	movq	%rax, %r15
	movq	%rsi, %rax
	mulq	-24(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r11
	addq	%r15, %r11
	adcq	%rdi, %r12
	adcq	-80(%rsp), %rcx         ## 8-byte Folded Reload
	adcq	-104(%rsp), %r13        ## 8-byte Folded Reload
	movq	-88(%rsp), %rsi         ## 8-byte Reload
	adcq	-96(%rsp), %rsi         ## 8-byte Folded Reload
	movq	-128(%rsp), %rdx        ## 8-byte Reload
	adcq	$0, %rdx
	addq	%r9, %rax
	adcq	%rbx, %r11
	adcq	%rbp, %r12
	adcq	%r8, %rcx
	adcq	%r14, %r13
	adcq	%r10, %rsi
	movq	%rsi, -88(%rsp)         ## 8-byte Spill
	adcq	-112(%rsp), %rdx        ## 8-byte Folded Reload
	movq	%rdx, -128(%rsp)        ## 8-byte Spill
	movzbl	-120(%rsp), %ebx        ## 1-byte Folded Reload
	adcq	$0, %rbx
	movq	-48(%rsp), %rax         ## 8-byte Reload
	movq	16(%rax), %rsi
	movq	%rsi, %rax
	mulq	-56(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, -112(%rsp)        ## 8-byte Spill
	movq	%rax, -96(%rsp)         ## 8-byte Spill
	movq	%rsi, %rax
	mulq	-64(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, -120(%rsp)        ## 8-byte Spill
	movq	%rax, -104(%rsp)        ## 8-byte Spill
	movq	%rsi, %rax
	mulq	-72(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %rdi
	movq	%rax, %r9
	movq	%rsi, %rax
	mulq	-40(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r10
	movq	%rax, %r14
	movq	%rsi, %rax
	mulq	16(%rsp)                ## 8-byte Folded Reload
	movq	%rdx, %r15
	movq	%rax, %rbp
	movq	%rsi, %rax
	mulq	24(%rsp)                ## 8-byte Folded Reload
	movq	%rax, %rsi
	movq	%rdx, %r8
	addq	%rbp, %r8
	adcq	%r14, %r15
	adcq	%r9, %r10
	adcq	-104(%rsp), %rdi        ## 8-byte Folded Reload
	movq	-120(%rsp), %rdx        ## 8-byte Reload
	adcq	-96(%rsp), %rdx         ## 8-byte Folded Reload
	movq	-112(%rsp), %rax        ## 8-byte Reload
	adcq	$0, %rax
	addq	%r11, %rsi
	adcq	%r12, %r8
	adcq	%rcx, %r15
	adcq	%r13, %r10
	adcq	-88(%rsp), %rdi         ## 8-byte Folded Reload
	adcq	-128(%rsp), %rdx        ## 8-byte Folded Reload
	movq	%rdx, -120(%rsp)        ## 8-byte Spill
	adcq	%rbx, %rax
	movq	%rax, -112(%rsp)        ## 8-byte Spill
	setb	-88(%rsp)               ## 1-byte Folded Spill
	movq	-32(%rsp), %rcx         ## 8-byte Reload
	imulq	%rsi, %rcx
	movq	%rcx, %rax
	mulq	8(%rsp)                 ## 8-byte Folded Reload
	movq	%rdx, -128(%rsp)        ## 8-byte Spill
	movq	%rax, -96(%rsp)         ## 8-byte Spill
	movq	%rcx, %rax
	mulq	(%rsp)                  ## 8-byte Folded Reload
	movq	%rdx, %r12
	movq	%rax, -104(%rsp)        ## 8-byte Spill
	movq	%rcx, %rax
	mulq	-8(%rsp)                ## 8-byte Folded Reload
	movq	%rdx, %rbx
	movq	%rax, -80(%rsp)         ## 8-byte Spill
	movq	%rcx, %rax
	mulq	-16(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r14
	movq	%rax, %r13
	movq	%rcx, %rax
	mulq	32(%rsp)                ## 8-byte Folded Reload
	movq	%rdx, %rbp
	movq	%rax, %r9
	movq	%rcx, %rax
	mulq	-24(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r11
	addq	%r9, %r11
	adcq	%r13, %rbp
	adcq	-80(%rsp), %r14         ## 8-byte Folded Reload
	adcq	-104(%rsp), %rbx        ## 8-byte Folded Reload
	adcq	-96(%rsp), %r12         ## 8-byte Folded Reload
	movq	-128(%rsp), %rdx        ## 8-byte Reload
	adcq	$0, %rdx
	addq	%rsi, %rax
	adcq	%r8, %r11
	adcq	%r15, %rbp
	adcq	%r10, %r14
	adcq	%rdi, %rbx
	adcq	-120(%rsp), %r12        ## 8-byte Folded Reload
	movq	%r12, -96(%rsp)         ## 8-byte Spill
	adcq	-112(%rsp), %rdx        ## 8-byte Folded Reload
	movq	%rdx, -128(%rsp)        ## 8-byte Spill
	movzbl	-88(%rsp), %r12d        ## 1-byte Folded Reload
	adcq	$0, %r12
	movq	-48(%rsp), %rax         ## 8-byte Reload
	movq	24(%rax), %rsi
	movq	%rsi, %rax
	mulq	-56(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, -112(%rsp)        ## 8-byte Spill
	movq	%rax, -88(%rsp)         ## 8-byte Spill
	movq	%rsi, %rax
	mulq	-64(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, -120(%rsp)        ## 8-byte Spill
	movq	%rax, -104(%rsp)        ## 8-byte Spill
	movq	%rsi, %rax
	mulq	-72(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r13
	movq	%rax, -80(%rsp)         ## 8-byte Spill
	movq	%rsi, %rax
	mulq	-40(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r10
	movq	%rax, %r8
	movq	%rsi, %rax
	mulq	16(%rsp)                ## 8-byte Folded Reload
	movq	%rdx, %rcx
	movq	%rax, %r15
	movq	%rsi, %rax
	mulq	24(%rsp)                ## 8-byte Folded Reload
	movq	%rax, %r9
	movq	%rdx, %rdi
	addq	%r15, %rdi
	adcq	%r8, %rcx
	adcq	-80(%rsp), %r10         ## 8-byte Folded Reload
	adcq	-104(%rsp), %r13        ## 8-byte Folded Reload
	movq	-120(%rsp), %rdx        ## 8-byte Reload
	adcq	-88(%rsp), %rdx         ## 8-byte Folded Reload
	movq	-112(%rsp), %rax        ## 8-byte Reload
	adcq	$0, %rax
	addq	%r11, %r9
	adcq	%rbp, %rdi
	adcq	%r14, %rcx
	adcq	%rbx, %r10
	adcq	-96(%rsp), %r13         ## 8-byte Folded Reload
	adcq	-128(%rsp), %rdx        ## 8-byte Folded Reload
	movq	%rdx, -120(%rsp)        ## 8-byte Spill
	adcq	%r12, %rax
	movq	%rax, -112(%rsp)        ## 8-byte Spill
	setb	-128(%rsp)              ## 1-byte Folded Spill
	movq	-32(%rsp), %rsi         ## 8-byte Reload
	imulq	%r9, %rsi
	movq	%rsi, %rax
	mulq	8(%rsp)                 ## 8-byte Folded Reload
	movq	%rdx, %r12
	movq	%rax, -88(%rsp)         ## 8-byte Spill
	movq	%rsi, %rax
	mulq	(%rsp)                  ## 8-byte Folded Reload
	movq	%rdx, %r8
	movq	%rax, -96(%rsp)         ## 8-byte Spill
	movq	%rsi, %rax
	mulq	-8(%rsp)                ## 8-byte Folded Reload
	movq	%rdx, %r14
	movq	%rax, -104(%rsp)        ## 8-byte Spill
	movq	%rsi, %rax
	mulq	-16(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %rbp
	movq	%rax, %r15
	movq	%rsi, %rax
	mulq	32(%rsp)                ## 8-byte Folded Reload
	movq	%rdx, %rbx
	movq	%rax, %r11
	movq	%rsi, %rax
	mulq	-24(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %rsi
	addq	%r11, %rsi
	adcq	%r15, %rbx
	adcq	-104(%rsp), %rbp        ## 8-byte Folded Reload
	adcq	-96(%rsp), %r14         ## 8-byte Folded Reload
	adcq	-88(%rsp), %r8          ## 8-byte Folded Reload
	adcq	$0, %r12
	addq	%r9, %rax
	adcq	%rdi, %rsi
	adcq	%rcx, %rbx
	adcq	%r10, %rbp
	adcq	%r13, %r14
	adcq	-120(%rsp), %r8         ## 8-byte Folded Reload
	adcq	-112(%rsp), %r12        ## 8-byte Folded Reload
	movq	%r12, -88(%rsp)         ## 8-byte Spill
	movzbl	-128(%rsp), %r11d       ## 1-byte Folded Reload
	adcq	$0, %r11
	movq	-48(%rsp), %rax         ## 8-byte Reload
	movq	32(%rax), %rcx
	movq	%rcx, %rax
	mulq	-56(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, -112(%rsp)        ## 8-byte Spill
	movq	%rax, -128(%rsp)        ## 8-byte Spill
	movq	%rcx, %rax
	mulq	-64(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, -120(%rsp)        ## 8-byte Spill
	movq	%rax, -96(%rsp)         ## 8-byte Spill
	movq	%rcx, %rax
	mulq	-72(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r15
	movq	%rax, -104(%rsp)        ## 8-byte Spill
	movq	%rcx, %rax
	mulq	-40(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r13
	movq	%rax, %r10
	movq	%rcx, %rax
	mulq	16(%rsp)                ## 8-byte Folded Reload
	movq	%rdx, %rdi
	movq	%rax, %r12
	movq	%rcx, %rax
	mulq	24(%rsp)                ## 8-byte Folded Reload
	movq	%rax, %r9
	movq	%rdx, %rcx
	addq	%r12, %rcx
	adcq	%r10, %rdi
	adcq	-104(%rsp), %r13        ## 8-byte Folded Reload
	adcq	-96(%rsp), %r15         ## 8-byte Folded Reload
	movq	-120(%rsp), %rdx        ## 8-byte Reload
	adcq	-128(%rsp), %rdx        ## 8-byte Folded Reload
	movq	-112(%rsp), %rax        ## 8-byte Reload
	adcq	$0, %rax
	addq	%rsi, %r9
	adcq	%rbx, %rcx
	adcq	%rbp, %rdi
	adcq	%r14, %r13
	adcq	%r8, %r15
	adcq	-88(%rsp), %rdx         ## 8-byte Folded Reload
	movq	%rdx, -120(%rsp)        ## 8-byte Spill
	adcq	%r11, %rax
	movq	%rax, -112(%rsp)        ## 8-byte Spill
	setb	-88(%rsp)               ## 1-byte Folded Spill
	movq	-32(%rsp), %rbp         ## 8-byte Reload
	imulq	%r9, %rbp
	movq	%rbp, %rax
	mulq	8(%rsp)                 ## 8-byte Folded Reload
	movq	%rdx, -128(%rsp)        ## 8-byte Spill
	movq	%rax, -96(%rsp)         ## 8-byte Spill
	movq	%rbp, %rax
	mulq	(%rsp)                  ## 8-byte Folded Reload
	movq	%rdx, %r14
	movq	%rax, -104(%rsp)        ## 8-byte Spill
	movq	%rbp, %rax
	mulq	-8(%rsp)                ## 8-byte Folded Reload
	movq	%rdx, %r12
	movq	%rax, -80(%rsp)         ## 8-byte Spill
	movq	%rbp, %rax
	mulq	-16(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %rbx
	movq	%rax, %r10
	movq	%rbp, %rax
	mulq	32(%rsp)                ## 8-byte Folded Reload
	movq	%rdx, %rsi
	movq	%rax, %r11
	movq	%rbp, %rax
	mulq	-24(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r8
	addq	%r11, %r8
	adcq	%r10, %rsi
	adcq	-80(%rsp), %rbx         ## 8-byte Folded Reload
	adcq	-104(%rsp), %r12        ## 8-byte Folded Reload
	adcq	-96(%rsp), %r14         ## 8-byte Folded Reload
	movq	-128(%rsp), %rbp        ## 8-byte Reload
	adcq	$0, %rbp
	addq	%r9, %rax
	adcq	%rcx, %r8
	adcq	%rdi, %rsi
	adcq	%r13, %rbx
	adcq	%r15, %r12
	adcq	-120(%rsp), %r14        ## 8-byte Folded Reload
	movq	%r14, -120(%rsp)        ## 8-byte Spill
	adcq	-112(%rsp), %rbp        ## 8-byte Folded Reload
	movq	%rbp, -128(%rsp)        ## 8-byte Spill
	movzbl	-88(%rsp), %r9d         ## 1-byte Folded Reload
	adcq	$0, %r9
	movq	-48(%rsp), %rax         ## 8-byte Reload
	movq	40(%rax), %rcx
	movq	%rcx, %rax
	mulq	-56(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, -48(%rsp)         ## 8-byte Spill
	movq	%rax, -112(%rsp)        ## 8-byte Spill
	movq	%rcx, %rax
	mulq	-64(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, -56(%rsp)         ## 8-byte Spill
	movq	%rax, -64(%rsp)         ## 8-byte Spill
	movq	%rcx, %rax
	mulq	-72(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r11
	movq	%rax, -72(%rsp)         ## 8-byte Spill
	movq	%rcx, %rax
	mulq	-40(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r15
	movq	%rax, %rdi
	movq	%rcx, %rax
	mulq	16(%rsp)                ## 8-byte Folded Reload
	movq	%rdx, %r10
	movq	%rax, %r14
	movq	%rcx, %rax
	mulq	24(%rsp)                ## 8-byte Folded Reload
	movq	%rax, %r13
	movq	%rdx, %rbp
	addq	%r14, %rbp
	adcq	%rdi, %r10
	adcq	-72(%rsp), %r15         ## 8-byte Folded Reload
	adcq	-64(%rsp), %r11         ## 8-byte Folded Reload
	movq	-56(%rsp), %rcx         ## 8-byte Reload
	adcq	-112(%rsp), %rcx        ## 8-byte Folded Reload
	movq	-48(%rsp), %rax         ## 8-byte Reload
	adcq	$0, %rax
	addq	%r8, %r13
	adcq	%rsi, %rbp
	adcq	%rbx, %r10
	adcq	%r12, %r15
	adcq	-120(%rsp), %r11        ## 8-byte Folded Reload
	adcq	-128(%rsp), %rcx        ## 8-byte Folded Reload
	movq	%rcx, -56(%rsp)         ## 8-byte Spill
	adcq	%r9, %rax
	movq	%rax, -48(%rsp)         ## 8-byte Spill
	setb	-64(%rsp)               ## 1-byte Folded Spill
	movq	-32(%rsp), %r12         ## 8-byte Reload
	imulq	%r13, %r12
	movq	%r12, %rax
	mulq	8(%rsp)                 ## 8-byte Folded Reload
	movq	%rdx, %r8
	movq	%rax, -32(%rsp)         ## 8-byte Spill
	movq	%r12, %rax
	mulq	(%rsp)                  ## 8-byte Folded Reload
	movq	%rdx, %rsi
	movq	%rax, -72(%rsp)         ## 8-byte Spill
	movq	%r12, %rax
	mulq	-8(%rsp)                ## 8-byte Folded Reload
	movq	%rdx, %rbx
	movq	%rax, -40(%rsp)         ## 8-byte Spill
	movq	%r12, %rax
	mulq	-16(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %rdi
	movq	%rax, %r14
	movq	%r12, %rax
	mulq	-24(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r9
	movq	%rax, %rcx
	movq	%r12, %rax
	movq	32(%rsp), %r12          ## 8-byte Reload
	mulq	%r12
	addq	%r9, %rax
	adcq	%r14, %rdx
	adcq	-40(%rsp), %rdi         ## 8-byte Folded Reload
	adcq	-72(%rsp), %rbx         ## 8-byte Folded Reload
	adcq	-32(%rsp), %rsi         ## 8-byte Folded Reload
	adcq	$0, %r8
	addq	%r13, %rcx
	adcq	%rbp, %rax
	adcq	%r10, %rdx
	adcq	%r15, %rdi
	adcq	%r11, %rbx
	adcq	-56(%rsp), %rsi         ## 8-byte Folded Reload
	adcq	-48(%rsp), %r8          ## 8-byte Folded Reload
	movzbl	-64(%rsp), %ecx         ## 1-byte Folded Reload
	adcq	$0, %rcx
	movq	%rax, %r9
	subq	-24(%rsp), %r9          ## 8-byte Folded Reload
	movq	%rdx, %rbp
	sbbq	%r12, %rbp
	movq	%rdi, %r10
	sbbq	-16(%rsp), %r10         ## 8-byte Folded Reload
	movq	%rbx, %r11
	sbbq	-8(%rsp), %r11          ## 8-byte Folded Reload
	movq	%rsi, %r14
	sbbq	(%rsp), %r14            ## 8-byte Folded Reload
	movq	%r8, %r15
	sbbq	8(%rsp), %r15           ## 8-byte Folded Reload
	sbbq	$0, %rcx
	testb	$1, %cl
	cmovneq	%rdx, %rbp
	movq	40(%rsp), %rcx          ## 8-byte Reload
	movq	%rbp, 8(%rcx)
	cmovneq	%rax, %r9
	movq	%r9, (%rcx)
	cmovneq	%rdi, %r10
	movq	%r10, 16(%rcx)
	cmovneq	%rbx, %r11
	movq	%r11, 24(%rcx)
	cmovneq	%rsi, %r14
	movq	%r14, 32(%rcx)
	cmovneq	%r8, %r15
	movq	%r15, 40(%rcx)
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
                                        ## -- End function
	.globl	_mcl_fp_montNF6L        ## -- Begin function mcl_fp_montNF6L
	.p2align	4, 0x90
_mcl_fp_montNF6L:                       ## @mcl_fp_montNF6L
## %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movq	%rdx, -72(%rsp)         ## 8-byte Spill
	movq	%rdi, 32(%rsp)          ## 8-byte Spill
	movq	40(%rsi), %rax
	movq	%rax, -80(%rsp)         ## 8-byte Spill
	movq	(%rdx), %rdi
	mulq	%rdi
	movq	%rax, -64(%rsp)         ## 8-byte Spill
	movq	%rdx, %r12
	movq	32(%rsi), %rax
	movq	%rax, -88(%rsp)         ## 8-byte Spill
	mulq	%rdi
	movq	%rax, %r14
	movq	%rdx, %r10
	movq	24(%rsi), %rax
	movq	%rax, -56(%rsp)         ## 8-byte Spill
	mulq	%rdi
	movq	%rax, %r15
	movq	%rdx, %r9
	movq	16(%rsi), %rax
	movq	%rax, 16(%rsp)          ## 8-byte Spill
	mulq	%rdi
	movq	%rax, %r11
	movq	%rdx, %r8
	movq	(%rsi), %rbx
	movq	%rbx, 8(%rsp)           ## 8-byte Spill
	movq	8(%rsi), %rax
	movq	%rax, (%rsp)            ## 8-byte Spill
	mulq	%rdi
	movq	%rdx, %rbp
	movq	%rax, %rsi
	movq	%rbx, %rax
	mulq	%rdi
	movq	%rax, %r13
	movq	%rdx, %rdi
	addq	%rsi, %rdi
	adcq	%r11, %rbp
	adcq	%r15, %r8
	adcq	%r14, %r9
	adcq	-64(%rsp), %r10         ## 8-byte Folded Reload
	movq	%r10, -128(%rsp)        ## 8-byte Spill
	adcq	$0, %r12
	movq	%r12, -112(%rsp)        ## 8-byte Spill
	movq	-8(%rcx), %rbx
	movq	%rbx, -48(%rsp)         ## 8-byte Spill
	imulq	%rax, %rbx
	movq	40(%rcx), %rdx
	movq	%rdx, -64(%rsp)         ## 8-byte Spill
	movq	%rbx, %rax
	mulq	%rdx
	movq	%rax, %r14
	movq	%rdx, -120(%rsp)        ## 8-byte Spill
	movq	32(%rcx), %rdx
	movq	%rdx, -16(%rsp)         ## 8-byte Spill
	movq	%rbx, %rax
	mulq	%rdx
	movq	%rax, %r15
	movq	%rdx, -96(%rsp)         ## 8-byte Spill
	movq	24(%rcx), %rdx
	movq	%rdx, -24(%rsp)         ## 8-byte Spill
	movq	%rbx, %rax
	mulq	%rdx
	movq	%rax, %r12
	movq	%rdx, -104(%rsp)        ## 8-byte Spill
	movq	16(%rcx), %rdx
	movq	%rdx, -40(%rsp)         ## 8-byte Spill
	movq	%rbx, %rax
	mulq	%rdx
	movq	%rax, %r10
	movq	%rdx, -8(%rsp)          ## 8-byte Spill
	movq	(%rcx), %rsi
	movq	%rsi, -32(%rsp)         ## 8-byte Spill
	movq	8(%rcx), %rcx
	movq	%rcx, 24(%rsp)          ## 8-byte Spill
	movq	%rbx, %rax
	mulq	%rcx
	movq	%rdx, %r11
	movq	%rax, %rcx
	movq	%rbx, %rax
	mulq	%rsi
	addq	%r13, %rax
	adcq	%rdi, %rcx
	adcq	%rbp, %r10
	adcq	%r8, %r12
	adcq	%r9, %r15
	adcq	-128(%rsp), %r14        ## 8-byte Folded Reload
	movq	-112(%rsp), %rax        ## 8-byte Reload
	adcq	$0, %rax
	addq	%rdx, %rcx
	adcq	%r11, %r10
	adcq	-8(%rsp), %r12          ## 8-byte Folded Reload
	adcq	-104(%rsp), %r15        ## 8-byte Folded Reload
	adcq	-96(%rsp), %r14         ## 8-byte Folded Reload
	movq	%r14, -128(%rsp)        ## 8-byte Spill
	adcq	-120(%rsp), %rax        ## 8-byte Folded Reload
	movq	%rax, -112(%rsp)        ## 8-byte Spill
	movq	-72(%rsp), %rax         ## 8-byte Reload
	movq	8(%rax), %rdi
	movq	%rdi, %rax
	mulq	-80(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r8
	movq	%rax, -120(%rsp)        ## 8-byte Spill
	movq	%rdi, %rax
	mulq	-88(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r9
	movq	%rax, -96(%rsp)         ## 8-byte Spill
	movq	%rdi, %rax
	mulq	-56(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r13
	movq	%rax, -104(%rsp)        ## 8-byte Spill
	movq	%rdi, %rax
	mulq	16(%rsp)                ## 8-byte Folded Reload
	movq	%rdx, %rsi
	movq	%rax, %r14
	movq	%rdi, %rax
	mulq	(%rsp)                  ## 8-byte Folded Reload
	movq	%rdx, %rbx
	movq	%rax, %r11
	movq	%rdi, %rax
	mulq	8(%rsp)                 ## 8-byte Folded Reload
	movq	%rax, %rdi
	movq	%rdx, %rbp
	addq	%r11, %rbp
	adcq	%r14, %rbx
	adcq	-104(%rsp), %rsi        ## 8-byte Folded Reload
	adcq	-96(%rsp), %r13         ## 8-byte Folded Reload
	adcq	-120(%rsp), %r9         ## 8-byte Folded Reload
	adcq	$0, %r8
	addq	%rcx, %rdi
	adcq	%r10, %rbp
	adcq	%r12, %rbx
	adcq	%r15, %rsi
	adcq	-128(%rsp), %r13        ## 8-byte Folded Reload
	adcq	-112(%rsp), %r9         ## 8-byte Folded Reload
	adcq	$0, %r8
	movq	-48(%rsp), %r11         ## 8-byte Reload
	imulq	%rdi, %r11
	movq	%r11, %rax
	mulq	-64(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, -128(%rsp)        ## 8-byte Spill
	movq	%rax, -112(%rsp)        ## 8-byte Spill
	movq	%r11, %rax
	mulq	-16(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, -96(%rsp)         ## 8-byte Spill
	movq	%rax, %r15
	movq	%r11, %rax
	mulq	-24(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, -120(%rsp)        ## 8-byte Spill
	movq	%rax, %rcx
	movq	%r11, %rax
	mulq	-40(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, -104(%rsp)        ## 8-byte Spill
	movq	%rax, %r10
	movq	%r11, %rax
	mulq	24(%rsp)                ## 8-byte Folded Reload
	movq	%rdx, %r12
	movq	%rax, %r14
	movq	%r11, %rax
	mulq	-32(%rsp)               ## 8-byte Folded Reload
	addq	%rdi, %rax
	adcq	%rbp, %r14
	adcq	%rbx, %r10
	adcq	%rsi, %rcx
	adcq	%r13, %r15
	movq	-112(%rsp), %rax        ## 8-byte Reload
	adcq	%r9, %rax
	adcq	$0, %r8
	addq	%rdx, %r14
	adcq	%r12, %r10
	adcq	-104(%rsp), %rcx        ## 8-byte Folded Reload
	adcq	-120(%rsp), %r15        ## 8-byte Folded Reload
	movq	%r15, -120(%rsp)        ## 8-byte Spill
	adcq	-96(%rsp), %rax         ## 8-byte Folded Reload
	movq	%rax, -112(%rsp)        ## 8-byte Spill
	adcq	-128(%rsp), %r8         ## 8-byte Folded Reload
	movq	-72(%rsp), %rax         ## 8-byte Reload
	movq	16(%rax), %rdi
	movq	%rdi, %rax
	mulq	-80(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r13
	movq	%rax, -128(%rsp)        ## 8-byte Spill
	movq	%rdi, %rax
	mulq	-88(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r15
	movq	%rax, -96(%rsp)         ## 8-byte Spill
	movq	%rdi, %rax
	mulq	-56(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r11
	movq	%rax, -104(%rsp)        ## 8-byte Spill
	movq	%rdi, %rax
	mulq	16(%rsp)                ## 8-byte Folded Reload
	movq	%rdx, %r12
	movq	%rax, -8(%rsp)          ## 8-byte Spill
	movq	%rdi, %rax
	mulq	(%rsp)                  ## 8-byte Folded Reload
	movq	%rdx, %rsi
	movq	%rax, %r9
	movq	%rdi, %rax
	mulq	8(%rsp)                 ## 8-byte Folded Reload
	movq	%rax, %rbp
	movq	%rdx, %rbx
	addq	%r9, %rbx
	adcq	-8(%rsp), %rsi          ## 8-byte Folded Reload
	adcq	-104(%rsp), %r12        ## 8-byte Folded Reload
	adcq	-96(%rsp), %r11         ## 8-byte Folded Reload
	adcq	-128(%rsp), %r15        ## 8-byte Folded Reload
	adcq	$0, %r13
	addq	%r14, %rbp
	adcq	%r10, %rbx
	adcq	%rcx, %rsi
	adcq	-120(%rsp), %r12        ## 8-byte Folded Reload
	adcq	-112(%rsp), %r11        ## 8-byte Folded Reload
	adcq	%r8, %r15
	adcq	$0, %r13
	movq	-48(%rsp), %rcx         ## 8-byte Reload
	imulq	%rbp, %rcx
	movq	%rcx, %rax
	mulq	-64(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, -120(%rsp)        ## 8-byte Spill
	movq	%rax, -112(%rsp)        ## 8-byte Spill
	movq	%rcx, %rax
	mulq	-16(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, -128(%rsp)        ## 8-byte Spill
	movq	%rax, %r9
	movq	%rcx, %rax
	mulq	-24(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, -96(%rsp)         ## 8-byte Spill
	movq	%rax, %r10
	movq	%rcx, %rax
	mulq	-40(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, -104(%rsp)        ## 8-byte Spill
	movq	%rax, %r14
	movq	%rcx, %rax
	mulq	24(%rsp)                ## 8-byte Folded Reload
	movq	%rdx, %r8
	movq	%rax, %rdi
	movq	%rcx, %rax
	mulq	-32(%rsp)               ## 8-byte Folded Reload
	addq	%rbp, %rax
	adcq	%rbx, %rdi
	adcq	%rsi, %r14
	adcq	%r12, %r10
	adcq	%r11, %r9
	movq	-112(%rsp), %rax        ## 8-byte Reload
	adcq	%r15, %rax
	adcq	$0, %r13
	addq	%rdx, %rdi
	adcq	%r8, %r14
	adcq	-104(%rsp), %r10        ## 8-byte Folded Reload
	adcq	-96(%rsp), %r9          ## 8-byte Folded Reload
	adcq	-128(%rsp), %rax        ## 8-byte Folded Reload
	movq	%rax, -112(%rsp)        ## 8-byte Spill
	adcq	-120(%rsp), %r13        ## 8-byte Folded Reload
	movq	-72(%rsp), %rax         ## 8-byte Reload
	movq	24(%rax), %rbp
	movq	%rbp, %rax
	mulq	-80(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r15
	movq	%rax, -120(%rsp)        ## 8-byte Spill
	movq	%rbp, %rax
	mulq	-88(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r11
	movq	%rax, -128(%rsp)        ## 8-byte Spill
	movq	%rbp, %rax
	mulq	-56(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %rcx
	movq	%rax, -96(%rsp)         ## 8-byte Spill
	movq	%rbp, %rax
	mulq	16(%rsp)                ## 8-byte Folded Reload
	movq	%rdx, %rsi
	movq	%rax, -104(%rsp)        ## 8-byte Spill
	movq	%rbp, %rax
	mulq	(%rsp)                  ## 8-byte Folded Reload
	movq	%rdx, %rbx
	movq	%rax, %r12
	movq	%rbp, %rax
	mulq	8(%rsp)                 ## 8-byte Folded Reload
	movq	%rax, %r8
	movq	%rdx, %rbp
	addq	%r12, %rbp
	adcq	-104(%rsp), %rbx        ## 8-byte Folded Reload
	adcq	-96(%rsp), %rsi         ## 8-byte Folded Reload
	adcq	-128(%rsp), %rcx        ## 8-byte Folded Reload
	adcq	-120(%rsp), %r11        ## 8-byte Folded Reload
	adcq	$0, %r15
	addq	%rdi, %r8
	adcq	%r14, %rbp
	adcq	%r10, %rbx
	adcq	%r9, %rsi
	adcq	-112(%rsp), %rcx        ## 8-byte Folded Reload
	adcq	%r13, %r11
	adcq	$0, %r15
	movq	-48(%rsp), %r14         ## 8-byte Reload
	imulq	%r8, %r14
	movq	%r14, %rax
	mulq	-64(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, -128(%rsp)        ## 8-byte Spill
	movq	%rax, %r9
	movq	%r14, %rax
	mulq	-16(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, -112(%rsp)        ## 8-byte Spill
	movq	%rax, %r13
	movq	%r14, %rax
	mulq	-24(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, -120(%rsp)        ## 8-byte Spill
	movq	%rax, %r10
	movq	%r14, %rax
	mulq	-40(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, -96(%rsp)         ## 8-byte Spill
	movq	%rax, %r12
	movq	%r14, %rax
	mulq	24(%rsp)                ## 8-byte Folded Reload
	movq	%rdx, -104(%rsp)        ## 8-byte Spill
	movq	%rax, %rdi
	movq	%r14, %rax
	mulq	-32(%rsp)               ## 8-byte Folded Reload
	addq	%r8, %rax
	adcq	%rbp, %rdi
	adcq	%rbx, %r12
	adcq	%rsi, %r10
	adcq	%rcx, %r13
	adcq	%r11, %r9
	adcq	$0, %r15
	addq	%rdx, %rdi
	adcq	-104(%rsp), %r12        ## 8-byte Folded Reload
	adcq	-96(%rsp), %r10         ## 8-byte Folded Reload
	adcq	-120(%rsp), %r13        ## 8-byte Folded Reload
	movq	%r13, -120(%rsp)        ## 8-byte Spill
	adcq	-112(%rsp), %r9         ## 8-byte Folded Reload
	movq	%r9, -112(%rsp)         ## 8-byte Spill
	adcq	-128(%rsp), %r15        ## 8-byte Folded Reload
	movq	-72(%rsp), %rax         ## 8-byte Reload
	movq	32(%rax), %rcx
	movq	%rcx, %rax
	mulq	-80(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r14
	movq	%rax, -128(%rsp)        ## 8-byte Spill
	movq	%rcx, %rax
	mulq	-88(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r9
	movq	%rax, -96(%rsp)         ## 8-byte Spill
	movq	%rcx, %rax
	mulq	-56(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r8
	movq	%rax, -104(%rsp)        ## 8-byte Spill
	movq	%rcx, %rax
	mulq	16(%rsp)                ## 8-byte Folded Reload
	movq	%rdx, %rsi
	movq	%rax, -8(%rsp)          ## 8-byte Spill
	movq	%rcx, %rax
	mulq	(%rsp)                  ## 8-byte Folded Reload
	movq	%rdx, %rbx
	movq	%rax, %r13
	movq	%rcx, %rax
	mulq	8(%rsp)                 ## 8-byte Folded Reload
	movq	%rax, %r11
	movq	%rdx, %rbp
	addq	%r13, %rbp
	adcq	-8(%rsp), %rbx          ## 8-byte Folded Reload
	adcq	-104(%rsp), %rsi        ## 8-byte Folded Reload
	adcq	-96(%rsp), %r8          ## 8-byte Folded Reload
	adcq	-128(%rsp), %r9         ## 8-byte Folded Reload
	adcq	$0, %r14
	addq	%rdi, %r11
	adcq	%r12, %rbp
	adcq	%r10, %rbx
	adcq	-120(%rsp), %rsi        ## 8-byte Folded Reload
	adcq	-112(%rsp), %r8         ## 8-byte Folded Reload
	adcq	%r15, %r9
	adcq	$0, %r14
	movq	-48(%rsp), %rcx         ## 8-byte Reload
	imulq	%r11, %rcx
	movq	%rcx, %rax
	mulq	-64(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, -96(%rsp)         ## 8-byte Spill
	movq	%rax, -112(%rsp)        ## 8-byte Spill
	movq	%rcx, %rax
	mulq	-16(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, -104(%rsp)        ## 8-byte Spill
	movq	%rax, %r12
	movq	%rcx, %rax
	mulq	-24(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, -120(%rsp)        ## 8-byte Spill
	movq	%rax, %r10
	movq	%rcx, %rax
	mulq	-40(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, -128(%rsp)        ## 8-byte Spill
	movq	%rax, %r15
	movq	%rcx, %rax
	mulq	24(%rsp)                ## 8-byte Folded Reload
	movq	%rdx, %r13
	movq	%rax, %rdi
	movq	%rcx, %rax
	mulq	-32(%rsp)               ## 8-byte Folded Reload
	addq	%r11, %rax
	adcq	%rbp, %rdi
	adcq	%rbx, %r15
	adcq	%rsi, %r10
	adcq	%r8, %r12
	movq	-112(%rsp), %rcx        ## 8-byte Reload
	adcq	%r9, %rcx
	adcq	$0, %r14
	addq	%rdx, %rdi
	adcq	%r13, %r15
	adcq	-128(%rsp), %r10        ## 8-byte Folded Reload
	movq	%r10, -128(%rsp)        ## 8-byte Spill
	adcq	-120(%rsp), %r12        ## 8-byte Folded Reload
	movq	%r12, -120(%rsp)        ## 8-byte Spill
	adcq	-104(%rsp), %rcx        ## 8-byte Folded Reload
	movq	%rcx, -112(%rsp)        ## 8-byte Spill
	adcq	-96(%rsp), %r14         ## 8-byte Folded Reload
	movq	-72(%rsp), %rax         ## 8-byte Reload
	movq	40(%rax), %rcx
	movq	%rcx, %rax
	mulq	-80(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %rbx
	movq	%rax, -72(%rsp)         ## 8-byte Spill
	movq	%rcx, %rax
	mulq	-88(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r11
	movq	%rax, -80(%rsp)         ## 8-byte Spill
	movq	%rcx, %rax
	mulq	-56(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r12
	movq	%rax, -88(%rsp)         ## 8-byte Spill
	movq	%rcx, %rax
	mulq	16(%rsp)                ## 8-byte Folded Reload
	movq	%rdx, %r13
	movq	%rax, %rbp
	movq	%rcx, %rax
	mulq	(%rsp)                  ## 8-byte Folded Reload
	movq	%rdx, %r10
	movq	%rax, %rsi
	movq	%rcx, %rax
	mulq	8(%rsp)                 ## 8-byte Folded Reload
	movq	%rax, %r9
	movq	%rdx, %r8
	addq	%rsi, %r8
	adcq	%rbp, %r10
	adcq	-88(%rsp), %r13         ## 8-byte Folded Reload
	adcq	-80(%rsp), %r12         ## 8-byte Folded Reload
	adcq	-72(%rsp), %r11         ## 8-byte Folded Reload
	adcq	$0, %rbx
	addq	%rdi, %r9
	adcq	%r15, %r8
	adcq	-128(%rsp), %r10        ## 8-byte Folded Reload
	adcq	-120(%rsp), %r13        ## 8-byte Folded Reload
	adcq	-112(%rsp), %r12        ## 8-byte Folded Reload
	adcq	%r14, %r11
	adcq	$0, %rbx
	movq	-48(%rsp), %rsi         ## 8-byte Reload
	imulq	%r9, %rsi
	movq	%rsi, %rax
	mulq	-64(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, -48(%rsp)         ## 8-byte Spill
	movq	%rax, %r15
	movq	%rsi, %rax
	mulq	-16(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, -72(%rsp)         ## 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, %rax
	mulq	-24(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, -80(%rsp)         ## 8-byte Spill
	movq	%rax, %rbp
	movq	%rsi, %rax
	mulq	-32(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, -88(%rsp)         ## 8-byte Spill
	movq	%rax, %r14
	movq	%rsi, %rax
	mulq	-40(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, -56(%rsp)         ## 8-byte Spill
	movq	%rax, %rcx
	movq	%rsi, %rax
	movq	24(%rsp), %rsi          ## 8-byte Reload
	mulq	%rsi
	addq	%r9, %r14
	adcq	%r8, %rax
	adcq	%r10, %rcx
	adcq	%r13, %rbp
	adcq	%r12, %rdi
	adcq	%r11, %r15
	adcq	$0, %rbx
	addq	-88(%rsp), %rax         ## 8-byte Folded Reload
	adcq	%rdx, %rcx
	adcq	-56(%rsp), %rbp         ## 8-byte Folded Reload
	adcq	-80(%rsp), %rdi         ## 8-byte Folded Reload
	adcq	-72(%rsp), %r15         ## 8-byte Folded Reload
	adcq	-48(%rsp), %rbx         ## 8-byte Folded Reload
	movq	%rax, %r8
	subq	-32(%rsp), %r8          ## 8-byte Folded Reload
	movq	%rcx, %rdx
	sbbq	%rsi, %rdx
	movq	%rbp, %r9
	sbbq	-40(%rsp), %r9          ## 8-byte Folded Reload
	movq	%rdi, %r10
	sbbq	-24(%rsp), %r10         ## 8-byte Folded Reload
	movq	%r15, %r11
	sbbq	-16(%rsp), %r11         ## 8-byte Folded Reload
	movq	%rbx, %r14
	sbbq	-64(%rsp), %r14         ## 8-byte Folded Reload
	movq	%r14, %rsi
	sarq	$63, %rsi
	cmovsq	%rcx, %rdx
	movq	32(%rsp), %rcx          ## 8-byte Reload
	movq	%rdx, 8(%rcx)
	cmovsq	%rax, %r8
	movq	%r8, (%rcx)
	cmovsq	%rbp, %r9
	movq	%r9, 16(%rcx)
	cmovsq	%rdi, %r10
	movq	%r10, 24(%rcx)
	cmovsq	%r15, %r11
	movq	%r11, 32(%rcx)
	cmovsq	%rbx, %r14
	movq	%r14, 40(%rcx)
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
                                        ## -- End function
	.globl	_mcl_fp_montRed6L       ## -- Begin function mcl_fp_montRed6L
	.p2align	4, 0x90
_mcl_fp_montRed6L:                      ## @mcl_fp_montRed6L
## %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdx, %rcx
	movq	%rdi, 16(%rsp)          ## 8-byte Spill
	movq	-8(%rdx), %rax
	movq	%rax, -72(%rsp)         ## 8-byte Spill
	movq	(%rsi), %r9
	movq	%r9, %rbp
	imulq	%rax, %rbp
	movq	40(%rdx), %rdx
	movq	%rdx, -48(%rsp)         ## 8-byte Spill
	movq	%rbp, %rax
	mulq	%rdx
	movq	%rax, -80(%rsp)         ## 8-byte Spill
	movq	%rdx, -128(%rsp)        ## 8-byte Spill
	movq	32(%rcx), %rdx
	movq	%rdx, -8(%rsp)          ## 8-byte Spill
	movq	%rbp, %rax
	mulq	%rdx
	movq	%rax, %r14
	movq	%rdx, %r11
	movq	24(%rcx), %rdx
	movq	%rdx, -24(%rsp)         ## 8-byte Spill
	movq	%rbp, %rax
	mulq	%rdx
	movq	%rax, %r13
	movq	%rdx, %r15
	movq	16(%rcx), %rdx
	movq	%rdx, -40(%rsp)         ## 8-byte Spill
	movq	%rbp, %rax
	mulq	%rdx
	movq	%rax, %r10
	movq	%rdx, %r12
	movq	(%rcx), %rbx
	movq	%rbx, -16(%rsp)         ## 8-byte Spill
	movq	8(%rcx), %rcx
	movq	%rcx, (%rsp)            ## 8-byte Spill
	movq	%rbp, %rax
	mulq	%rcx
	movq	%rdx, %r8
	movq	%rax, %rdi
	movq	%rbp, %rax
	mulq	%rbx
	movq	%rdx, %rcx
	addq	%rdi, %rcx
	adcq	%r10, %r8
	adcq	%r13, %r12
	adcq	%r14, %r15
	adcq	-80(%rsp), %r11         ## 8-byte Folded Reload
	movq	-128(%rsp), %rdx        ## 8-byte Reload
	adcq	$0, %rdx
	addq	%r9, %rax
	adcq	8(%rsi), %rcx
	adcq	16(%rsi), %r8
	adcq	24(%rsi), %r12
	adcq	32(%rsi), %r15
	adcq	40(%rsi), %r11
	movq	%r11, -104(%rsp)        ## 8-byte Spill
	adcq	48(%rsi), %rdx
	movq	%rdx, -128(%rsp)        ## 8-byte Spill
	movq	88(%rsi), %rax
	movq	80(%rsi), %rdx
	movq	72(%rsi), %rdi
	movq	64(%rsi), %rbp
	movq	56(%rsi), %r11
	adcq	$0, %r11
	adcq	$0, %rbp
	movq	%rbp, -64(%rsp)         ## 8-byte Spill
	adcq	$0, %rdi
	movq	%rdi, -88(%rsp)         ## 8-byte Spill
	adcq	$0, %rdx
	movq	%rdx, -56(%rsp)         ## 8-byte Spill
	adcq	$0, %rax
	movq	%rax, -80(%rsp)         ## 8-byte Spill
	setb	-96(%rsp)               ## 1-byte Folded Spill
	movq	-72(%rsp), %rsi         ## 8-byte Reload
	imulq	%rcx, %rsi
	movq	%rsi, %rax
	mulq	-48(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, -120(%rsp)        ## 8-byte Spill
	movq	%rax, -112(%rsp)        ## 8-byte Spill
	movq	%rsi, %rax
	mulq	-8(%rsp)                ## 8-byte Folded Reload
	movq	%rdx, %r14
	movq	%rax, -32(%rsp)         ## 8-byte Spill
	movq	%rsi, %rax
	mulq	-24(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r13
	movq	%rax, 8(%rsp)           ## 8-byte Spill
	movq	%rsi, %rax
	mulq	-40(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %rbx
	movq	%rax, %r10
	movq	%rsi, %rax
	mulq	(%rsp)                  ## 8-byte Folded Reload
	movq	%rdx, %rbp
	movq	%rax, %r9
	movq	%rsi, %rax
	mulq	-16(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %rdi
	addq	%r9, %rdi
	adcq	%r10, %rbp
	adcq	8(%rsp), %rbx           ## 8-byte Folded Reload
	adcq	-32(%rsp), %r13         ## 8-byte Folded Reload
	adcq	-112(%rsp), %r14        ## 8-byte Folded Reload
	movq	-120(%rsp), %rdx        ## 8-byte Reload
	adcq	$0, %rdx
	addq	%rcx, %rax
	adcq	%r8, %rdi
	adcq	%r12, %rbp
	adcq	%r15, %rbx
	adcq	-104(%rsp), %r13        ## 8-byte Folded Reload
	adcq	-128(%rsp), %r14        ## 8-byte Folded Reload
	adcq	%r11, %rdx
	movq	%rdx, -120(%rsp)        ## 8-byte Spill
	adcq	$0, -64(%rsp)           ## 8-byte Folded Spill
	adcq	$0, -88(%rsp)           ## 8-byte Folded Spill
	adcq	$0, -56(%rsp)           ## 8-byte Folded Spill
	adcq	$0, -80(%rsp)           ## 8-byte Folded Spill
	movzbl	-96(%rsp), %r15d        ## 1-byte Folded Reload
	adcq	$0, %r15
	movq	-72(%rsp), %rsi         ## 8-byte Reload
	imulq	%rdi, %rsi
	movq	%rsi, %rax
	mulq	-48(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, -128(%rsp)        ## 8-byte Spill
	movq	%rax, -104(%rsp)        ## 8-byte Spill
	movq	%rsi, %rax
	mulq	-8(%rsp)                ## 8-byte Folded Reload
	movq	%rdx, -96(%rsp)         ## 8-byte Spill
	movq	%rax, -112(%rsp)        ## 8-byte Spill
	movq	%rsi, %rax
	mulq	-24(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r12
	movq	%rax, -32(%rsp)         ## 8-byte Spill
	movq	%rsi, %rax
	mulq	-40(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r8
	movq	%rax, %r10
	movq	%rsi, %rax
	mulq	(%rsp)                  ## 8-byte Folded Reload
	movq	%rdx, %rcx
	movq	%rax, %r11
	movq	%rsi, %rax
	mulq	-16(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r9
	addq	%r11, %r9
	adcq	%r10, %rcx
	adcq	-32(%rsp), %r8          ## 8-byte Folded Reload
	adcq	-112(%rsp), %r12        ## 8-byte Folded Reload
	movq	-96(%rsp), %rsi         ## 8-byte Reload
	adcq	-104(%rsp), %rsi        ## 8-byte Folded Reload
	movq	-128(%rsp), %rdx        ## 8-byte Reload
	adcq	$0, %rdx
	addq	%rdi, %rax
	adcq	%rbp, %r9
	adcq	%rbx, %rcx
	adcq	%r13, %r8
	adcq	%r14, %r12
	adcq	-120(%rsp), %rsi        ## 8-byte Folded Reload
	movq	%rsi, -96(%rsp)         ## 8-byte Spill
	adcq	-64(%rsp), %rdx         ## 8-byte Folded Reload
	movq	%rdx, -128(%rsp)        ## 8-byte Spill
	adcq	$0, -88(%rsp)           ## 8-byte Folded Spill
	adcq	$0, -56(%rsp)           ## 8-byte Folded Spill
	adcq	$0, -80(%rsp)           ## 8-byte Folded Spill
	adcq	$0, %r15
	movq	-72(%rsp), %rbp         ## 8-byte Reload
	imulq	%r9, %rbp
	movq	%rbp, %rax
	mulq	-48(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, -120(%rsp)        ## 8-byte Spill
	movq	%rax, -104(%rsp)        ## 8-byte Spill
	movq	%rbp, %rax
	mulq	-8(%rsp)                ## 8-byte Folded Reload
	movq	%rdx, -64(%rsp)         ## 8-byte Spill
	movq	%rax, -112(%rsp)        ## 8-byte Spill
	movq	%rbp, %rax
	movq	-24(%rsp), %r11         ## 8-byte Reload
	mulq	%r11
	movq	%rdx, %r14
	movq	%rax, -32(%rsp)         ## 8-byte Spill
	movq	%rbp, %rax
	mulq	-40(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r13
	movq	%rax, %r10
	movq	%rbp, %rax
	mulq	(%rsp)                  ## 8-byte Folded Reload
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movq	%rbp, %rax
	mulq	-16(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %rbx
	addq	%rdi, %rbx
	adcq	%r10, %rsi
	adcq	-32(%rsp), %r13         ## 8-byte Folded Reload
	adcq	-112(%rsp), %r14        ## 8-byte Folded Reload
	movq	-64(%rsp), %rdi         ## 8-byte Reload
	adcq	-104(%rsp), %rdi        ## 8-byte Folded Reload
	movq	-120(%rsp), %rdx        ## 8-byte Reload
	adcq	$0, %rdx
	addq	%r9, %rax
	adcq	%rcx, %rbx
	adcq	%r8, %rsi
	adcq	%r12, %r13
	adcq	-96(%rsp), %r14         ## 8-byte Folded Reload
	adcq	-128(%rsp), %rdi        ## 8-byte Folded Reload
	movq	%rdi, -64(%rsp)         ## 8-byte Spill
	adcq	-88(%rsp), %rdx         ## 8-byte Folded Reload
	movq	%rdx, -120(%rsp)        ## 8-byte Spill
	adcq	$0, -56(%rsp)           ## 8-byte Folded Spill
	adcq	$0, -80(%rsp)           ## 8-byte Folded Spill
	adcq	$0, %r15
	movq	-72(%rsp), %rcx         ## 8-byte Reload
	imulq	%rbx, %rcx
	movq	%rcx, %rax
	mulq	-48(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, -88(%rsp)         ## 8-byte Spill
	movq	%rax, -96(%rsp)         ## 8-byte Spill
	movq	%rcx, %rax
	movq	-8(%rsp), %r9           ## 8-byte Reload
	mulq	%r9
	movq	%rdx, -128(%rsp)        ## 8-byte Spill
	movq	%rax, -104(%rsp)        ## 8-byte Spill
	movq	%rcx, %rax
	mulq	%r11
	movq	%rdx, %r11
	movq	%rax, -112(%rsp)        ## 8-byte Spill
	movq	%rcx, %rax
	mulq	-40(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %r12
	movq	%rax, %rbp
	movq	%rcx, %rax
	mulq	(%rsp)                  ## 8-byte Folded Reload
	movq	%rdx, %r10
	movq	%rax, %rdi
	movq	%rcx, %rax
	movq	-16(%rsp), %r8          ## 8-byte Reload
	mulq	%r8
	movq	%rdx, %rcx
	addq	%rdi, %rcx
	adcq	%rbp, %r10
	adcq	-112(%rsp), %r12        ## 8-byte Folded Reload
	adcq	-104(%rsp), %r11        ## 8-byte Folded Reload
	movq	-128(%rsp), %rdi        ## 8-byte Reload
	adcq	-96(%rsp), %rdi         ## 8-byte Folded Reload
	movq	-88(%rsp), %rdx         ## 8-byte Reload
	adcq	$0, %rdx
	addq	%rbx, %rax
	adcq	%rsi, %rcx
	adcq	%r13, %r10
	adcq	%r14, %r12
	adcq	-64(%rsp), %r11         ## 8-byte Folded Reload
	adcq	-120(%rsp), %rdi        ## 8-byte Folded Reload
	movq	%rdi, -128(%rsp)        ## 8-byte Spill
	adcq	-56(%rsp), %rdx         ## 8-byte Folded Reload
	movq	%rdx, -88(%rsp)         ## 8-byte Spill
	adcq	$0, -80(%rsp)           ## 8-byte Folded Spill
	adcq	$0, %r15
	movq	-72(%rsp), %r13         ## 8-byte Reload
	imulq	%rcx, %r13
	movq	%r13, %rax
	mulq	-48(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %rbx
	movq	%rax, -72(%rsp)         ## 8-byte Spill
	movq	%r13, %rax
	mulq	%r9
	movq	%rdx, %rsi
	movq	%rax, -56(%rsp)         ## 8-byte Spill
	movq	%r13, %rax
	mulq	-24(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %rbp
	movq	%rax, -120(%rsp)        ## 8-byte Spill
	movq	%r13, %rax
	mulq	-40(%rsp)               ## 8-byte Folded Reload
	movq	%rdx, %rdi
	movq	%rax, %r14
	movq	%r13, %rax
	mulq	%r8
	movq	%rdx, %r9
	movq	%rax, %r8
	movq	%r13, %rax
	movq	(%rsp), %r13            ## 8-byte Reload
	mulq	%r13
	addq	%r9, %rax
	adcq	%r14, %rdx
	adcq	-120(%rsp), %rdi        ## 8-byte Folded Reload
	adcq	-56(%rsp), %rbp         ## 8-byte Folded Reload
	adcq	-72(%rsp), %rsi         ## 8-byte Folded Reload
	adcq	$0, %rbx
	addq	%rcx, %r8
	adcq	%r10, %rax
	adcq	%r12, %rdx
	adcq	%r11, %rdi
	adcq	-128(%rsp), %rbp        ## 8-byte Folded Reload
	adcq	-88(%rsp), %rsi         ## 8-byte Folded Reload
	adcq	-80(%rsp), %rbx         ## 8-byte Folded Reload
	adcq	$0, %r15
	movq	%rax, %r8
	subq	-16(%rsp), %r8          ## 8-byte Folded Reload
	movq	%rdx, %rcx
	sbbq	%r13, %rcx
	movq	%rdi, %r9
	sbbq	-40(%rsp), %r9          ## 8-byte Folded Reload
	movq	%rbp, %r10
	sbbq	-24(%rsp), %r10         ## 8-byte Folded Reload
	movq	%rsi, %r11
	sbbq	-8(%rsp), %r11          ## 8-byte Folded Reload
	movq	%rbx, %r14
	sbbq	-48(%rsp), %r14         ## 8-byte Folded Reload
	sbbq	$0, %r15
	testb	$1, %r15b
	cmovneq	%rdx, %rcx
	movq	16(%rsp), %rdx          ## 8-byte Reload
	movq	%rcx, 8(%rdx)
	cmovneq	%rax, %r8
	movq	%r8, (%rdx)
	cmovneq	%rdi, %r9
	movq	%r9, 16(%rdx)
	cmovneq	%rbp, %r10
	movq	%r10, 24(%rdx)
	cmovneq	%rsi, %r11
	movq	%r11, 32(%rdx)
	cmovneq	%rbx, %r14
	movq	%r14, 40(%rdx)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
                                        ## -- End function
	.globl	_mcl_fp_addPre6L        ## -- Begin function mcl_fp_addPre6L
	.p2align	4, 0x90
_mcl_fp_addPre6L:                       ## @mcl_fp_addPre6L
## %bb.0:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	movdqu	(%rdx), %xmm0
	movdqu	16(%rdx), %xmm1
	movdqu	32(%rdx), %xmm2
	movq	%xmm2, %r8
	movq	%xmm1, %r9
	movq	%xmm0, %r11
	pshufd	$78, %xmm0, %xmm0       ## xmm0 = xmm0[2,3,0,1]
	movdqu	(%rsi), %xmm3
	movdqu	16(%rsi), %xmm4
	movdqu	32(%rsi), %xmm5
	movq	%xmm5, %rsi
	movq	%xmm4, %rax
	movq	%xmm3, %rcx
	pshufd	$78, %xmm3, %xmm3       ## xmm3 = xmm3[2,3,0,1]
	pshufd	$78, %xmm1, %xmm1       ## xmm1 = xmm1[2,3,0,1]
	pshufd	$78, %xmm4, %xmm4       ## xmm4 = xmm4[2,3,0,1]
	pshufd	$78, %xmm2, %xmm2       ## xmm2 = xmm2[2,3,0,1]
	pshufd	$78, %xmm5, %xmm5       ## xmm5 = xmm5[2,3,0,1]
	movq	%xmm5, %r10
	movq	%xmm2, %rdx
	movq	%xmm4, %r14
	movq	%xmm1, %rbx
	movq	%xmm3, %r15
	addq	%r11, %rcx
	movq	%rcx, (%rdi)
	movq	%xmm0, %rcx
	adcq	%r15, %rcx
	movq	%rcx, 8(%rdi)
	adcq	%r9, %rax
	movq	%rax, 16(%rdi)
	adcq	%r14, %rbx
	movq	%rbx, 24(%rdi)
	adcq	%r8, %rsi
	movq	%rsi, 32(%rdi)
	adcq	%r10, %rdx
	movq	%rdx, 40(%rdi)
	setb	%al
	movzbl	%al, %eax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
                                        ## -- End function
	.globl	_mcl_fp_subPre6L        ## -- Begin function mcl_fp_subPre6L
	.p2align	4, 0x90
_mcl_fp_subPre6L:                       ## @mcl_fp_subPre6L
## %bb.0:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	movdqu	(%rsi), %xmm0
	movdqu	16(%rsi), %xmm1
	movdqu	32(%rsi), %xmm2
	movq	%xmm2, %r8
	movq	%xmm1, %rsi
	movq	%xmm0, %rcx
	pshufd	$78, %xmm0, %xmm0       ## xmm0 = xmm0[2,3,0,1]
	movdqu	(%rdx), %xmm3
	movdqu	16(%rdx), %xmm4
	movdqu	32(%rdx), %xmm5
	movq	%xmm5, %r9
	movq	%xmm4, %r10
	movq	%xmm3, %r15
	pshufd	$78, %xmm3, %xmm3       ## xmm3 = xmm3[2,3,0,1]
	pshufd	$78, %xmm1, %xmm1       ## xmm1 = xmm1[2,3,0,1]
	pshufd	$78, %xmm4, %xmm4       ## xmm4 = xmm4[2,3,0,1]
	pshufd	$78, %xmm2, %xmm2       ## xmm2 = xmm2[2,3,0,1]
	pshufd	$78, %xmm5, %xmm5       ## xmm5 = xmm5[2,3,0,1]
	movq	%xmm5, %r11
	movq	%xmm2, %rbx
	movq	%xmm4, %r14
	movq	%xmm1, %rdx
	xorl	%eax, %eax
	subq	%r15, %rcx
	movq	%rcx, (%rdi)
	movq	%xmm3, %r15
	movq	%xmm0, %rcx
	sbbq	%r15, %rcx
	movq	%rcx, 8(%rdi)
	sbbq	%r10, %rsi
	movq	%rsi, 16(%rdi)
	sbbq	%r14, %rdx
	movq	%rdx, 24(%rdi)
	sbbq	%r9, %r8
	movq	%r8, 32(%rdi)
	sbbq	%r11, %rbx
	movq	%rbx, 40(%rdi)
	sbbq	$0, %rax
	andl	$1, %eax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
                                        ## -- End function
	.globl	_mcl_fp_shr1_6L         ## -- Begin function mcl_fp_shr1_6L
	.p2align	4, 0x90
_mcl_fp_shr1_6L:                        ## @mcl_fp_shr1_6L
## %bb.0:
	movq	(%rsi), %r9
	movq	8(%rsi), %r8
	movq	16(%rsi), %rdx
	movq	%rdx, %rcx
	shldq	$63, %r8, %rcx
	movq	40(%rsi), %r10
	movq	32(%rsi), %rax
	movq	24(%rsi), %rsi
	movq	%rcx, 8(%rdi)
	shrdq	$1, %r8, %r9
	movq	%r9, (%rdi)
	shrdq	$1, %rsi, %rdx
	movq	%rdx, 16(%rdi)
	shrdq	$1, %rax, %rsi
	movq	%rsi, 24(%rdi)
	shrdq	$1, %r10, %rax
	movq	%rax, 32(%rdi)
	shrq	%r10
	movq	%r10, 40(%rdi)
	retq
                                        ## -- End function
	.globl	_mcl_fp_add6L           ## -- Begin function mcl_fp_add6L
	.p2align	4, 0x90
_mcl_fp_add6L:                          ## @mcl_fp_add6L
## %bb.0:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movdqu	(%rdx), %xmm0
	movdqu	16(%rdx), %xmm1
	movdqu	32(%rdx), %xmm2
	movq	%xmm2, %r11
	movq	%xmm1, %r14
	movq	%xmm0, %r12
	pshufd	$78, %xmm0, %xmm0       ## xmm0 = xmm0[2,3,0,1]
	movdqu	(%rsi), %xmm3
	movdqu	16(%rsi), %xmm4
	movdqu	32(%rsi), %xmm5
	movq	%xmm5, %r8
	movq	%xmm4, %r9
	movq	%xmm3, %r10
	pshufd	$78, %xmm3, %xmm3       ## xmm3 = xmm3[2,3,0,1]
	pshufd	$78, %xmm1, %xmm1       ## xmm1 = xmm1[2,3,0,1]
	pshufd	$78, %xmm4, %xmm4       ## xmm4 = xmm4[2,3,0,1]
	pshufd	$78, %xmm2, %xmm2       ## xmm2 = xmm2[2,3,0,1]
	pshufd	$78, %xmm5, %xmm5       ## xmm5 = xmm5[2,3,0,1]
	movq	%xmm5, %r15
	movq	%xmm2, %rax
	movq	%xmm4, %r13
	movq	%xmm1, %rdx
	movq	%xmm3, %rbx
	addq	%r12, %r10
	movq	%r10, (%rdi)
	movq	%xmm0, %rsi
	adcq	%rbx, %rsi
	movq	%rsi, 8(%rdi)
	adcq	%r14, %r9
	movq	%r9, 16(%rdi)
	adcq	%r13, %rdx
	movq	%rdx, 24(%rdi)
	adcq	%r11, %r8
	movq	%r8, 32(%rdi)
	adcq	%r15, %rax
	movq	%rax, 40(%rdi)
	setb	%bl
	movzbl	%bl, %ebx
	subq	(%rcx), %r10
	sbbq	8(%rcx), %rsi
	sbbq	16(%rcx), %r9
	sbbq	24(%rcx), %rdx
	sbbq	32(%rcx), %r8
	sbbq	40(%rcx), %rax
	sbbq	$0, %rbx
	testb	$1, %bl
	jne	LBB89_2
## %bb.1:                               ## %nocarry
	movq	%r10, (%rdi)
	movq	%rsi, 8(%rdi)
	movq	%r9, 16(%rdi)
	movq	%rdx, 24(%rdi)
	movq	%r8, 32(%rdi)
	movq	%rax, 40(%rdi)
LBB89_2:                                ## %carry
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
                                        ## -- End function
	.globl	_mcl_fp_addNF6L         ## -- Begin function mcl_fp_addNF6L
	.p2align	4, 0x90
_mcl_fp_addNF6L:                        ## @mcl_fp_addNF6L
## %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movdqu	(%rdx), %xmm0
	movdqu	16(%rdx), %xmm1
	movdqu	32(%rdx), %xmm2
	movq	%xmm2, %r10
	movq	%xmm1, %r11
	movq	%xmm0, %r14
	pshufd	$78, %xmm0, %xmm0       ## xmm0 = xmm0[2,3,0,1]
	movdqu	(%rsi), %xmm3
	movdqu	16(%rsi), %xmm4
	movdqu	32(%rsi), %xmm5
	movq	%xmm5, %r8
	movq	%xmm4, %rsi
	movq	%xmm3, %rbp
	pshufd	$78, %xmm3, %xmm3       ## xmm3 = xmm3[2,3,0,1]
	pshufd	$78, %xmm1, %xmm1       ## xmm1 = xmm1[2,3,0,1]
	pshufd	$78, %xmm4, %xmm4       ## xmm4 = xmm4[2,3,0,1]
	pshufd	$78, %xmm2, %xmm2       ## xmm2 = xmm2[2,3,0,1]
	pshufd	$78, %xmm5, %xmm5       ## xmm5 = xmm5[2,3,0,1]
	movq	%xmm5, %r15
	movq	%xmm2, %r9
	movq	%xmm4, %r12
	movq	%xmm1, %rdx
	movq	%xmm3, %r13
	movq	%xmm0, %rbx
	addq	%r14, %rbp
	adcq	%r13, %rbx
	adcq	%r11, %rsi
	adcq	%r12, %rdx
	adcq	%r10, %r8
	adcq	%r15, %r9
	movq	%rbp, %r10
	subq	(%rcx), %r10
	movq	%rbx, %rax
	sbbq	8(%rcx), %rax
	movq	%rsi, %r11
	sbbq	16(%rcx), %r11
	movq	%rdx, %r14
	sbbq	24(%rcx), %r14
	movq	%r8, %r15
	sbbq	32(%rcx), %r15
	movq	%r9, %r12
	sbbq	40(%rcx), %r12
	movq	%r12, %rcx
	sarq	$63, %rcx
	cmovsq	%rbx, %rax
	movq	%rax, 8(%rdi)
	cmovsq	%rbp, %r10
	movq	%r10, (%rdi)
	cmovsq	%rsi, %r11
	movq	%r11, 16(%rdi)
	cmovsq	%rdx, %r14
	movq	%r14, 24(%rdi)
	cmovsq	%r8, %r15
	movq	%r15, 32(%rdi)
	cmovsq	%r9, %r12
	movq	%r12, 40(%rdi)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
                                        ## -- End function
	.globl	_mcl_fp_sub6L           ## -- Begin function mcl_fp_sub6L
	.p2align	4, 0x90
_mcl_fp_sub6L:                          ## @mcl_fp_sub6L
## %bb.0:
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movdqu	(%rsi), %xmm0
	movdqu	16(%rsi), %xmm1
	movdqu	32(%rsi), %xmm2
	movq	%xmm2, %r8
	movq	%xmm1, %r9
	movq	%xmm0, %rax
	pshufd	$78, %xmm1, %xmm1       ## xmm1 = xmm1[2,3,0,1]
	pshufd	$78, %xmm0, %xmm0       ## xmm0 = xmm0[2,3,0,1]
	movdqu	(%rdx), %xmm3
	movdqu	16(%rdx), %xmm4
	movdqu	32(%rdx), %xmm5
	movq	%xmm5, %r11
	movq	%xmm4, %r15
	movq	%xmm3, %rdx
	pshufd	$78, %xmm3, %xmm3       ## xmm3 = xmm3[2,3,0,1]
	pshufd	$78, %xmm4, %xmm4       ## xmm4 = xmm4[2,3,0,1]
	pshufd	$78, %xmm2, %xmm2       ## xmm2 = xmm2[2,3,0,1]
	pshufd	$78, %xmm5, %xmm5       ## xmm5 = xmm5[2,3,0,1]
	movq	%xmm5, %r14
	movq	%xmm2, %r10
	movq	%xmm4, %r12
	movq	%xmm3, %rsi
	xorl	%ebx, %ebx
	subq	%rdx, %rax
	movq	%rax, (%rdi)
	movq	%xmm0, %rdx
	sbbq	%rsi, %rdx
	movq	%rdx, 8(%rdi)
	movq	%xmm1, %rsi
	sbbq	%r15, %r9
	movq	%r9, 16(%rdi)
	sbbq	%r12, %rsi
	movq	%rsi, 24(%rdi)
	sbbq	%r11, %r8
	movq	%r8, 32(%rdi)
	sbbq	%r14, %r10
	movq	%r10, 40(%rdi)
	sbbq	$0, %rbx
	testb	$1, %bl
	je	LBB91_2
## %bb.1:                               ## %carry
	movq	40(%rcx), %r11
	movq	32(%rcx), %r14
	movq	24(%rcx), %r15
	movq	8(%rcx), %rbx
	movq	16(%rcx), %r12
	addq	(%rcx), %rax
	movq	%rax, (%rdi)
	adcq	%rdx, %rbx
	movq	%rbx, 8(%rdi)
	adcq	%r9, %r12
	movq	%r12, 16(%rdi)
	adcq	%rsi, %r15
	movq	%r15, 24(%rdi)
	adcq	%r8, %r14
	movq	%r14, 32(%rdi)
	adcq	%r10, %r11
	movq	%r11, 40(%rdi)
LBB91_2:                                ## %nocarry
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
                                        ## -- End function
	.globl	_mcl_fp_subNF6L         ## -- Begin function mcl_fp_subNF6L
	.p2align	4, 0x90
_mcl_fp_subNF6L:                        ## @mcl_fp_subNF6L
## %bb.0:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movdqu	(%rsi), %xmm0
	movdqu	16(%rsi), %xmm1
	movdqu	32(%rsi), %xmm2
	movq	%xmm2, %r8
	movq	%xmm1, %r9
	movq	%xmm0, %r10
	pshufd	$78, %xmm0, %xmm0       ## xmm0 = xmm0[2,3,0,1]
	movdqu	(%rdx), %xmm3
	movdqu	16(%rdx), %xmm4
	movdqu	32(%rdx), %xmm5
	movq	%xmm5, %r12
	movq	%xmm4, %r13
	movq	%xmm3, %rsi
	pshufd	$78, %xmm3, %xmm3       ## xmm3 = xmm3[2,3,0,1]
	pshufd	$78, %xmm1, %xmm1       ## xmm1 = xmm1[2,3,0,1]
	pshufd	$78, %xmm4, %xmm4       ## xmm4 = xmm4[2,3,0,1]
	pshufd	$78, %xmm2, %xmm2       ## xmm2 = xmm2[2,3,0,1]
	pshufd	$78, %xmm5, %xmm5       ## xmm5 = xmm5[2,3,0,1]
	movq	%xmm5, %rbx
	movq	%xmm2, %r15
	movq	%xmm4, %rax
	movq	%xmm1, %r11
	movq	%xmm3, %rdx
	movq	%xmm0, %r14
	subq	%rsi, %r10
	sbbq	%rdx, %r14
	sbbq	%r13, %r9
	sbbq	%rax, %r11
	sbbq	%r12, %r8
	sbbq	%rbx, %r15
	movq	%r15, %rax
	sarq	$63, %rax
	jns	LBB92_1
## %bb.2:
	movq	40(%rcx), %r12
	movq	32(%rcx), %rbx
	movq	24(%rcx), %rax
	movq	16(%rcx), %rdx
	movq	8(%rcx), %rsi
	movq	(%rcx), %rcx
	jmp	LBB92_3
LBB92_1:
	xorl	%r12d, %r12d
	xorl	%ebx, %ebx
	xorl	%eax, %eax
	xorl	%edx, %edx
	xorl	%esi, %esi
	xorl	%ecx, %ecx
LBB92_3:
	addq	%r10, %rcx
	movq	%rcx, (%rdi)
	adcq	%r14, %rsi
	movq	%rsi, 8(%rdi)
	adcq	%r9, %rdx
	movq	%rdx, 16(%rdi)
	adcq	%r11, %rax
	movq	%rax, 24(%rdi)
	adcq	%r8, %rbx
	movq	%rbx, 32(%rdi)
	adcq	%r15, %r12
	movq	%r12, 40(%rdi)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
                                        ## -- End function
	.globl	_mcl_fpDbl_add6L        ## -- Begin function mcl_fpDbl_add6L
	.p2align	4, 0x90
_mcl_fpDbl_add6L:                       ## @mcl_fpDbl_add6L
## %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movdqu	(%rdx), %xmm4
	movdqu	16(%rdx), %xmm5
	movdqu	32(%rdx), %xmm2
	movdqu	48(%rdx), %xmm0
	movq	%xmm0, -8(%rsp)         ## 8-byte Folded Spill
	movq	%xmm2, %rbp
	movq	%xmm5, %r15
	movq	%xmm4, %r14
	pshufd	$78, %xmm0, %xmm8       ## xmm8 = xmm0[2,3,0,1]
	movdqu	(%rsi), %xmm6
	movdqu	16(%rsi), %xmm7
	movdqu	32(%rsi), %xmm3
	movdqu	48(%rsi), %xmm1
	movq	%xmm1, %r8
	movq	%xmm3, %r13
	movq	%xmm7, %rax
	movq	%xmm6, %rbx
	pshufd	$78, %xmm1, %xmm9       ## xmm9 = xmm1[2,3,0,1]
	pshufd	$78, %xmm2, %xmm10      ## xmm10 = xmm2[2,3,0,1]
	pshufd	$78, %xmm3, %xmm3       ## xmm3 = xmm3[2,3,0,1]
	pshufd	$78, %xmm5, %xmm5       ## xmm5 = xmm5[2,3,0,1]
	pshufd	$78, %xmm7, %xmm7       ## xmm7 = xmm7[2,3,0,1]
	pshufd	$78, %xmm4, %xmm4       ## xmm4 = xmm4[2,3,0,1]
	pshufd	$78, %xmm6, %xmm6       ## xmm6 = xmm6[2,3,0,1]
	movdqu	80(%rsi), %xmm0
	pshufd	$78, %xmm0, %xmm1       ## xmm1 = xmm0[2,3,0,1]
	movq	%xmm1, %r11
	movdqu	80(%rdx), %xmm1
	pshufd	$78, %xmm1, %xmm2       ## xmm2 = xmm1[2,3,0,1]
	movq	%xmm2, %r12
	addq	%r14, %rbx
	movq	%xmm0, %r14
	movdqu	64(%rdx), %xmm0
	movdqu	64(%rsi), %xmm2
	movq	%rbx, (%rdi)
	movq	%xmm6, %rdx
	movq	%xmm4, %rsi
	adcq	%rdx, %rsi
	movq	%rsi, 8(%rdi)
	movq	%xmm1, %r10
	pshufd	$78, %xmm2, %xmm1       ## xmm1 = xmm2[2,3,0,1]
	movq	%xmm1, %r9
	adcq	%r15, %rax
	movq	%rax, 16(%rdi)
	movq	%xmm7, %rax
	movq	%xmm5, %rsi
	adcq	%rax, %rsi
	movq	%rsi, 24(%rdi)
	pshufd	$78, %xmm0, %xmm1       ## xmm1 = xmm0[2,3,0,1]
	movq	%xmm1, %rsi
	movq	%xmm2, %r15
	adcq	%rbp, %r13
	movq	%r13, 32(%rdi)
	movq	%xmm3, %rbx
	movq	%xmm10, %rbp
	adcq	%rbx, %rbp
	movq	%rbp, 40(%rdi)
	movq	%xmm0, %r13
	movq	%xmm9, %rbp
	adcq	-8(%rsp), %r8           ## 8-byte Folded Reload
	movq	%xmm8, %rbx
	adcq	%rbp, %rbx
	adcq	%r15, %r13
	adcq	%r9, %rsi
	adcq	%r14, %r10
	adcq	%r11, %r12
	setb	%dl
	movzbl	%dl, %r9d
	movq	%r8, %rbp
	subq	(%rcx), %rbp
	movq	%rbx, %rax
	sbbq	8(%rcx), %rax
	movq	%r13, %rdx
	sbbq	16(%rcx), %rdx
	movq	%rsi, %r11
	sbbq	24(%rcx), %r11
	movq	%r10, %r14
	sbbq	32(%rcx), %r14
	movq	%r12, %r15
	sbbq	40(%rcx), %r15
	sbbq	$0, %r9
	testb	$1, %r9b
	cmovneq	%rbx, %rax
	movq	%rax, 56(%rdi)
	cmovneq	%r8, %rbp
	movq	%rbp, 48(%rdi)
	cmovneq	%r13, %rdx
	movq	%rdx, 64(%rdi)
	cmovneq	%rsi, %r11
	movq	%r11, 72(%rdi)
	cmovneq	%r10, %r14
	movq	%r14, 80(%rdi)
	cmovneq	%r12, %r15
	movq	%r15, 88(%rdi)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
                                        ## -- End function
	.globl	_mcl_fpDbl_sub6L        ## -- Begin function mcl_fpDbl_sub6L
	.p2align	4, 0x90
_mcl_fpDbl_sub6L:                       ## @mcl_fpDbl_sub6L
## %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movdqu	(%rsi), %xmm4
	movdqu	16(%rsi), %xmm5
	movdqu	32(%rsi), %xmm2
	movdqu	48(%rsi), %xmm0
	movq	%xmm0, %r10
	movq	%xmm2, %r12
	movq	%xmm5, %rbp
	movq	%xmm4, %rbx
	pshufd	$78, %xmm0, %xmm8       ## xmm8 = xmm0[2,3,0,1]
	movdqu	(%rdx), %xmm6
	movdqu	16(%rdx), %xmm7
	movdqu	32(%rdx), %xmm3
	movdqu	48(%rdx), %xmm1
	movq	%xmm1, -8(%rsp)         ## 8-byte Folded Spill
	movq	%xmm3, %r14
	movq	%xmm7, %r8
	movq	%xmm6, %r9
	pshufd	$78, %xmm1, %xmm9       ## xmm9 = xmm1[2,3,0,1]
	pshufd	$78, %xmm2, %xmm10      ## xmm10 = xmm2[2,3,0,1]
	pshufd	$78, %xmm3, %xmm11      ## xmm11 = xmm3[2,3,0,1]
	pshufd	$78, %xmm5, %xmm5       ## xmm5 = xmm5[2,3,0,1]
	pshufd	$78, %xmm7, %xmm7       ## xmm7 = xmm7[2,3,0,1]
	pshufd	$78, %xmm4, %xmm0       ## xmm0 = xmm4[2,3,0,1]
	pshufd	$78, %xmm6, %xmm6       ## xmm6 = xmm6[2,3,0,1]
	movdqu	80(%rdx), %xmm1
	pshufd	$78, %xmm1, %xmm4       ## xmm4 = xmm1[2,3,0,1]
	movq	%xmm4, %r11
	xorl	%eax, %eax
	subq	%r9, %rbx
	movdqu	80(%rsi), %xmm2
	pshufd	$78, %xmm2, %xmm4       ## xmm4 = xmm2[2,3,0,1]
	movq	%xmm4, %r9
	movdqu	64(%rsi), %xmm4
	movdqu	64(%rdx), %xmm3
	movq	%rbx, (%rdi)
	movq	%xmm6, %rdx
	movq	%xmm0, %rsi
	sbbq	%rdx, %rsi
	movq	%rsi, 8(%rdi)
	movq	%xmm1, %r13
	movq	%xmm2, %r15
	sbbq	%r8, %rbp
	movq	%rbp, 16(%rdi)
	movq	%xmm7, %rdx
	movq	%xmm5, %rsi
	sbbq	%rdx, %rsi
	movq	%rsi, 24(%rdi)
	pshufd	$78, %xmm3, %xmm0       ## xmm0 = xmm3[2,3,0,1]
	movq	%xmm0, %r8
	pshufd	$78, %xmm4, %xmm0       ## xmm0 = xmm4[2,3,0,1]
	movq	%xmm0, %rsi
	sbbq	%r14, %r12
	movq	%r12, 32(%rdi)
	movq	%xmm11, %rdx
	movq	%xmm10, %rbx
	sbbq	%rdx, %rbx
	movq	%rbx, 40(%rdi)
	movq	%xmm3, %rbp
	movq	%xmm9, %rdx
	sbbq	-8(%rsp), %r10          ## 8-byte Folded Reload
	movq	%xmm8, %r12
	sbbq	%rdx, %r12
	movq	%xmm4, %r14
	sbbq	%rbp, %r14
	sbbq	%r8, %rsi
	sbbq	%r13, %r15
	sbbq	%r11, %r9
	sbbq	$0, %rax
	andl	$1, %eax
	negq	%rax
	movq	40(%rcx), %r8
	andq	%rax, %r8
	movq	32(%rcx), %r11
	andq	%rax, %r11
	movq	24(%rcx), %rbx
	andq	%rax, %rbx
	movq	16(%rcx), %rbp
	andq	%rax, %rbp
	movq	8(%rcx), %rdx
	andq	%rax, %rdx
	andq	(%rcx), %rax
	addq	%r10, %rax
	movq	%rax, 48(%rdi)
	adcq	%r12, %rdx
	movq	%rdx, 56(%rdi)
	adcq	%r14, %rbp
	movq	%rbp, 64(%rdi)
	adcq	%rsi, %rbx
	movq	%rbx, 72(%rdi)
	adcq	%r15, %r11
	movq	%r11, 80(%rdi)
	adcq	%r9, %r8
	movq	%r8, 88(%rdi)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
                                        ## -- End function

.subsections_via_symbols
