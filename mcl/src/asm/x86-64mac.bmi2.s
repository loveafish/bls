	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.globl	_makeNIST_P192Lbmi2     ## -- Begin function makeNIST_P192Lbmi2
	.p2align	4, 0x90
_makeNIST_P192Lbmi2:                    ## @makeNIST_P192Lbmi2
## %bb.0:
	movq	$-1, %rax
	movq	$-2, %rdx
	movq	$-1, %rcx
	retq
                                        ## -- End function
	.globl	_mcl_fpDbl_mod_NIST_P192Lbmi2 ## -- Begin function mcl_fpDbl_mod_NIST_P192Lbmi2
	.p2align	4, 0x90
_mcl_fpDbl_mod_NIST_P192Lbmi2:          ## @mcl_fpDbl_mod_NIST_P192Lbmi2
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
	.globl	_mcl_fp_sqr_NIST_P192Lbmi2 ## -- Begin function mcl_fp_sqr_NIST_P192Lbmi2
	.p2align	4, 0x90
_mcl_fp_sqr_NIST_P192Lbmi2:             ## @mcl_fp_sqr_NIST_P192Lbmi2
## %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	%rdi, -8(%rsp)          ## 8-byte Spill
	movq	16(%rsi), %r8
	movq	(%rsi), %rcx
	movq	8(%rsi), %rsi
	movq	%r8, %rdx
	mulxq	%rsi, %r14, %rbx
	movq	%rbx, -16(%rsp)         ## 8-byte Spill
	movq	%rsi, %rdx
	mulxq	%rsi, %r13, %r15
	mulxq	%rcx, %r12, %rsi
	addq	%rsi, %r13
	adcq	%r14, %r15
	adcq	$0, %rbx
	movq	%rcx, %rdx
	mulxq	%rcx, %r9, %rax
	addq	%r12, %rax
	movq	%r8, %rdx
	mulxq	%rcx, %rbp, %r11
	adcq	%rbp, %rsi
	movq	%r11, %r10
	adcq	$0, %r10
	addq	%r12, %rax
	adcq	%r13, %rsi
	adcq	%r15, %r10
	adcq	$0, %rbx
	mulxq	%r8, %rcx, %rdi
	addq	%r14, %r11
	adcq	-16(%rsp), %rcx         ## 8-byte Folded Reload
	adcq	$0, %rdi
	addq	%rbp, %rsi
	adcq	%r10, %r11
	adcq	%rbx, %rcx
	adcq	$0, %rdi
	addq	%rdi, %rax
	adcq	$0, %rsi
	setb	%dl
	movzbl	%dl, %edx
	addq	%r11, %r9
	adcq	%rcx, %rax
	adcq	%rdi, %rsi
	adcq	$0, %rdx
	addq	%rdi, %r9
	adcq	%r11, %rax
	adcq	%rcx, %rsi
	adcq	$0, %rdx
	addq	%rdx, %r9
	adcq	%rax, %rdx
	adcq	$0, %rsi
	setb	%al
	movzbl	%al, %eax
	movq	%r9, %rcx
	addq	$1, %rcx
	movq	%rdx, %rdi
	adcq	$1, %rdi
	movq	%rsi, %rbp
	adcq	$0, %rbp
	adcq	$-1, %rax
	testb	$1, %al
	cmovneq	%rdx, %rdi
	movq	-8(%rsp), %rax          ## 8-byte Reload
	movq	%rdi, 8(%rax)
	cmovneq	%r9, %rcx
	movq	%rcx, (%rax)
	cmovneq	%rsi, %rbp
	movq	%rbp, 16(%rax)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
                                        ## -- End function
	.globl	_mcl_fp_mulNIST_P192Lbmi2 ## -- Begin function mcl_fp_mulNIST_P192Lbmi2
	.p2align	4, 0x90
_mcl_fp_mulNIST_P192Lbmi2:              ## @mcl_fp_mulNIST_P192Lbmi2
## %bb.0:
	pushq	%r14
	pushq	%rbx
	subq	$56, %rsp
	movq	%rdi, %r14
	leaq	8(%rsp), %rdi
	callq	_mcl_fpDbl_mulPre3Lbmi2
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
	.globl	_mcl_fpDbl_mod_NIST_P521Lbmi2 ## -- Begin function mcl_fpDbl_mod_NIST_P521Lbmi2
	.p2align	4, 0x90
_mcl_fpDbl_mod_NIST_P521Lbmi2:          ## @mcl_fpDbl_mod_NIST_P521Lbmi2
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
	.globl	_mcl_fp_mulUnitPre1Lbmi2 ## -- Begin function mcl_fp_mulUnitPre1Lbmi2
	.p2align	4, 0x90
_mcl_fp_mulUnitPre1Lbmi2:               ## @mcl_fp_mulUnitPre1Lbmi2
## %bb.0:
	mulxq	(%rsi), %rcx, %rax
	movq	%rax, 8(%rdi)
	movq	%rcx, (%rdi)
	retq
                                        ## -- End function
	.globl	_mcl_fpDbl_mulPre1Lbmi2 ## -- Begin function mcl_fpDbl_mulPre1Lbmi2
	.p2align	4, 0x90
_mcl_fpDbl_mulPre1Lbmi2:                ## @mcl_fpDbl_mulPre1Lbmi2
## %bb.0:
	movq	(%rdx), %rdx
	mulxq	(%rsi), %rcx, %rax
	movq	%rax, 8(%rdi)
	movq	%rcx, (%rdi)
	retq
                                        ## -- End function
	.globl	_mcl_fpDbl_sqrPre1Lbmi2 ## -- Begin function mcl_fpDbl_sqrPre1Lbmi2
	.p2align	4, 0x90
_mcl_fpDbl_sqrPre1Lbmi2:                ## @mcl_fpDbl_sqrPre1Lbmi2
## %bb.0:
	movq	(%rsi), %rdx
	mulxq	%rdx, %rcx, %rax
	movq	%rax, 8(%rdi)
	movq	%rcx, (%rdi)
	retq
                                        ## -- End function
	.globl	_mcl_fp_mont1Lbmi2      ## -- Begin function mcl_fp_mont1Lbmi2
	.p2align	4, 0x90
_mcl_fp_mont1Lbmi2:                     ## @mcl_fp_mont1Lbmi2
## %bb.0:
	movq	%rdx, %rax
	movq	(%rsi), %rdx
	mulxq	(%rax), %rsi, %r8
	movq	-8(%rcx), %rdx
	imulq	%rsi, %rdx
	movq	(%rcx), %rcx
	mulxq	%rcx, %rdx, %rax
	addq	%rsi, %rdx
	adcq	%r8, %rax
	setb	%dl
	movzbl	%dl, %edx
	movq	%rax, %rsi
	subq	%rcx, %rsi
	sbbq	$0, %rdx
	testb	$1, %dl
	cmovneq	%rax, %rsi
	movq	%rsi, (%rdi)
	retq
                                        ## -- End function
	.globl	_mcl_fp_montNF1Lbmi2    ## -- Begin function mcl_fp_montNF1Lbmi2
	.p2align	4, 0x90
_mcl_fp_montNF1Lbmi2:                   ## @mcl_fp_montNF1Lbmi2
## %bb.0:
	movq	%rdx, %rax
	movq	(%rsi), %rdx
	mulxq	(%rax), %rsi, %r8
	movq	-8(%rcx), %rdx
	imulq	%rsi, %rdx
	movq	(%rcx), %rcx
	mulxq	%rcx, %rdx, %rax
	addq	%rsi, %rdx
	adcq	%r8, %rax
	movq	%rax, %rdx
	subq	%rcx, %rdx
	cmovsq	%rax, %rdx
	movq	%rdx, (%rdi)
	retq
                                        ## -- End function
	.globl	_mcl_fp_montRed1Lbmi2   ## -- Begin function mcl_fp_montRed1Lbmi2
	.p2align	4, 0x90
_mcl_fp_montRed1Lbmi2:                  ## @mcl_fp_montRed1Lbmi2
## %bb.0:
	movq	(%rsi), %rcx
	movq	-8(%rdx), %rax
	imulq	%rcx, %rax
	movq	(%rdx), %r8
	movq	%rax, %rdx
	mulxq	%r8, %rax, %rdx
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
	.globl	_mcl_fp_addPre1Lbmi2    ## -- Begin function mcl_fp_addPre1Lbmi2
	.p2align	4, 0x90
_mcl_fp_addPre1Lbmi2:                   ## @mcl_fp_addPre1Lbmi2
## %bb.0:
	movq	(%rdx), %rcx
	xorl	%eax, %eax
	addq	(%rsi), %rcx
	movq	%rcx, (%rdi)
	setb	%al
	retq
                                        ## -- End function
	.globl	_mcl_fp_subPre1Lbmi2    ## -- Begin function mcl_fp_subPre1Lbmi2
	.p2align	4, 0x90
_mcl_fp_subPre1Lbmi2:                   ## @mcl_fp_subPre1Lbmi2
## %bb.0:
	movq	(%rsi), %rcx
	xorl	%eax, %eax
	subq	(%rdx), %rcx
	movq	%rcx, (%rdi)
	sbbq	$0, %rax
	andl	$1, %eax
	retq
                                        ## -- End function
	.globl	_mcl_fp_shr1_1Lbmi2     ## -- Begin function mcl_fp_shr1_1Lbmi2
	.p2align	4, 0x90
_mcl_fp_shr1_1Lbmi2:                    ## @mcl_fp_shr1_1Lbmi2
## %bb.0:
	movq	(%rsi), %rax
	shrq	%rax
	movq	%rax, (%rdi)
	retq
                                        ## -- End function
	.globl	_mcl_fp_add1Lbmi2       ## -- Begin function mcl_fp_add1Lbmi2
	.p2align	4, 0x90
_mcl_fp_add1Lbmi2:                      ## @mcl_fp_add1Lbmi2
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
	.globl	_mcl_fp_addNF1Lbmi2     ## -- Begin function mcl_fp_addNF1Lbmi2
	.p2align	4, 0x90
_mcl_fp_addNF1Lbmi2:                    ## @mcl_fp_addNF1Lbmi2
## %bb.0:
	movq	(%rdx), %rax
	addq	(%rsi), %rax
	movq	%rax, %rdx
	subq	(%rcx), %rdx
	cmovsq	%rax, %rdx
	movq	%rdx, (%rdi)
	retq
                                        ## -- End function
	.globl	_mcl_fp_sub1Lbmi2       ## -- Begin function mcl_fp_sub1Lbmi2
	.p2align	4, 0x90
_mcl_fp_sub1Lbmi2:                      ## @mcl_fp_sub1Lbmi2
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
	.globl	_mcl_fp_subNF1Lbmi2     ## -- Begin function mcl_fp_subNF1Lbmi2
	.p2align	4, 0x90
_mcl_fp_subNF1Lbmi2:                    ## @mcl_fp_subNF1Lbmi2
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
	.globl	_mcl_fpDbl_add1Lbmi2    ## -- Begin function mcl_fpDbl_add1Lbmi2
	.p2align	4, 0x90
_mcl_fpDbl_add1Lbmi2:                   ## @mcl_fpDbl_add1Lbmi2
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
	.globl	_mcl_fpDbl_sub1Lbmi2    ## -- Begin function mcl_fpDbl_sub1Lbmi2
	.p2align	4, 0x90
_mcl_fpDbl_sub1Lbmi2:                   ## @mcl_fpDbl_sub1Lbmi2
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
	.globl	_mcl_fp_mulUnitPre2Lbmi2 ## -- Begin function mcl_fp_mulUnitPre2Lbmi2
	.p2align	4, 0x90
_mcl_fp_mulUnitPre2Lbmi2:               ## @mcl_fp_mulUnitPre2Lbmi2
## %bb.0:
	mulxq	8(%rsi), %rax, %rcx
	mulxq	(%rsi), %rdx, %rsi
	movq	%rdx, (%rdi)
	addq	%rax, %rsi
	movq	%rsi, 8(%rdi)
	adcq	$0, %rcx
	movq	%rcx, 16(%rdi)
	retq
                                        ## -- End function
	.globl	_mcl_fpDbl_mulPre2Lbmi2 ## -- Begin function mcl_fpDbl_mulPre2Lbmi2
	.p2align	4, 0x90
_mcl_fpDbl_mulPre2Lbmi2:                ## @mcl_fpDbl_mulPre2Lbmi2
## %bb.0:
	movq	%rdx, %rax
	movq	(%rsi), %rcx
	movq	8(%rsi), %rsi
	movq	(%rdx), %r8
	movq	%rcx, %rdx
	mulxq	%r8, %rdx, %r9
	movq	%rdx, (%rdi)
	movq	8(%rax), %rdx
	mulxq	%rsi, %r10, %rax
	mulxq	%rcx, %r11, %rcx
	addq	%r10, %rcx
	adcq	$0, %rax
	movq	%rsi, %rdx
	mulxq	%r8, %rdx, %rsi
	addq	%r9, %rdx
	adcq	$0, %rsi
	addq	%r11, %rdx
	movq	%rdx, 8(%rdi)
	adcq	%rcx, %rsi
	movq	%rsi, 16(%rdi)
	adcq	$0, %rax
	movq	%rax, 24(%rdi)
	retq
                                        ## -- End function
	.globl	_mcl_fpDbl_sqrPre2Lbmi2 ## -- Begin function mcl_fpDbl_sqrPre2Lbmi2
	.p2align	4, 0x90
_mcl_fpDbl_sqrPre2Lbmi2:                ## @mcl_fpDbl_sqrPre2Lbmi2
## %bb.0:
	movq	(%rsi), %r9
	movq	8(%rsi), %rcx
	movq	%r9, %rdx
	mulxq	%r9, %rdx, %rsi
	movq	%rdx, (%rdi)
	movq	%rcx, %rdx
	mulxq	%rcx, %r8, %rax
	mulxq	%r9, %rcx, %rdx
	addq	%rdx, %r8
	adcq	$0, %rax
	addq	%rcx, %rsi
	adcq	$0, %rdx
	addq	%rcx, %rsi
	movq	%rsi, 8(%rdi)
	adcq	%r8, %rdx
	movq	%rdx, 16(%rdi)
	adcq	$0, %rax
	movq	%rax, 24(%rdi)
	retq
                                        ## -- End function
	.globl	_mcl_fp_mont2Lbmi2      ## -- Begin function mcl_fp_mont2Lbmi2
	.p2align	4, 0x90
_mcl_fp_mont2Lbmi2:                     ## @mcl_fp_mont2Lbmi2
## %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	(%rsi), %r8
	movq	8(%rsi), %r9
	movq	(%rdx), %rax
	movq	8(%rdx), %r11
	movq	%r9, %rdx
	mulxq	%rax, %r10, %r13
	movq	%r8, %rdx
	mulxq	%rax, %r14, %rsi
	addq	%r10, %rsi
	adcq	$0, %r13
	movq	-8(%rcx), %rbp
	movq	(%rcx), %r10
	movq	%rbp, %rdx
	imulq	%r14, %rdx
	movq	8(%rcx), %r15
	mulxq	%r15, %r12, %rcx
	mulxq	%r10, %rdx, %rbx
	addq	%r12, %rbx
	adcq	$0, %rcx
	addq	%r14, %rdx
	adcq	%rsi, %rbx
	adcq	%r13, %rcx
	setb	%dl
	movzbl	%dl, %r14d
	movq	%r11, %rdx
	mulxq	%r9, %r9, %rsi
	movq	%r11, %rdx
	mulxq	%r8, %r8, %rax
	addq	%r9, %rax
	adcq	$0, %rsi
	addq	%rbx, %r8
	adcq	%rcx, %rax
	adcq	%r14, %rsi
	setb	%cl
	movzbl	%cl, %ecx
	imulq	%r8, %rbp
	movq	%rbp, %rdx
	mulxq	%r15, %r9, %rbx
	mulxq	%r10, %rdx, %rbp
	addq	%r9, %rbp
	adcq	$0, %rbx
	addq	%r8, %rdx
	adcq	%rax, %rbp
	adcq	%rsi, %rbx
	adcq	$0, %rcx
	movq	%rbp, %rax
	subq	%r10, %rax
	movq	%rbx, %rdx
	sbbq	%r15, %rdx
	sbbq	$0, %rcx
	testb	$1, %cl
	cmovneq	%rbx, %rdx
	movq	%rdx, 8(%rdi)
	cmovneq	%rbp, %rax
	movq	%rax, (%rdi)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
                                        ## -- End function
	.globl	_mcl_fp_montNF2Lbmi2    ## -- Begin function mcl_fp_montNF2Lbmi2
	.p2align	4, 0x90
_mcl_fp_montNF2Lbmi2:                   ## @mcl_fp_montNF2Lbmi2
## %bb.0:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	(%rsi), %r8
	movq	8(%rsi), %r9
	movq	(%rdx), %rax
	movq	8(%rdx), %r11
	movq	%r9, %rdx
	mulxq	%rax, %r10, %rsi
	movq	%r8, %rdx
	mulxq	%rax, %r14, %rbx
	addq	%r10, %rbx
	adcq	$0, %rsi
	movq	-8(%rcx), %r13
	movq	(%rcx), %r10
	movq	%r13, %rdx
	imulq	%r14, %rdx
	movq	8(%rcx), %r15
	mulxq	%r10, %rcx, %r12
	addq	%r14, %rcx
	mulxq	%r15, %rcx, %rdx
	adcq	%rbx, %rcx
	adcq	$0, %rsi
	addq	%r12, %rcx
	adcq	%rdx, %rsi
	movq	%r11, %rdx
	mulxq	%r9, %r9, %rbx
	movq	%r11, %rdx
	mulxq	%r8, %r8, %rax
	addq	%r9, %rax
	adcq	$0, %rbx
	addq	%rcx, %r8
	adcq	%rsi, %rax
	adcq	$0, %rbx
	imulq	%r8, %r13
	movq	%r13, %rdx
	mulxq	%r15, %rsi, %r9
	mulxq	%r10, %rcx, %rdx
	addq	%r8, %rcx
	adcq	%rax, %rsi
	adcq	$0, %rbx
	addq	%rdx, %rsi
	adcq	%r9, %rbx
	movq	%rsi, %rax
	subq	%r10, %rax
	movq	%rbx, %rcx
	sbbq	%r15, %rcx
	cmovsq	%rbx, %rcx
	movq	%rcx, 8(%rdi)
	cmovsq	%rsi, %rax
	movq	%rax, (%rdi)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
                                        ## -- End function
	.globl	_mcl_fp_montRed2Lbmi2   ## -- Begin function mcl_fp_montRed2Lbmi2
	.p2align	4, 0x90
_mcl_fp_montRed2Lbmi2:                  ## @mcl_fp_montRed2Lbmi2
## %bb.0:
	pushq	%r14
	pushq	%rbx
	movq	-8(%rdx), %rax
	movq	(%rdx), %r8
	movq	(%rsi), %r10
	movq	%r10, %rcx
	imulq	%rax, %rcx
	movq	8(%rdx), %r9
	movq	%rcx, %rdx
	mulxq	%r9, %r11, %r14
	mulxq	%r8, %rdx, %rcx
	addq	%r11, %rcx
	adcq	$0, %r14
	movq	24(%rsi), %r11
	addq	%r10, %rdx
	adcq	8(%rsi), %rcx
	adcq	16(%rsi), %r14
	adcq	$0, %r11
	setb	%dl
	movzbl	%dl, %esi
	imulq	%rcx, %rax
	movq	%rax, %rdx
	mulxq	%r9, %r10, %rbx
	mulxq	%r8, %rax, %rdx
	addq	%r10, %rdx
	adcq	$0, %rbx
	addq	%rcx, %rax
	adcq	%r14, %rdx
	adcq	%r11, %rbx
	adcq	$0, %rsi
	movq	%rdx, %rax
	subq	%r8, %rax
	movq	%rbx, %rcx
	sbbq	%r9, %rcx
	sbbq	$0, %rsi
	testb	$1, %sil
	cmovneq	%rbx, %rcx
	movq	%rcx, 8(%rdi)
	cmovneq	%rdx, %rax
	movq	%rax, (%rdi)
	popq	%rbx
	popq	%r14
	retq
                                        ## -- End function
	.globl	_mcl_fp_addPre2Lbmi2    ## -- Begin function mcl_fp_addPre2Lbmi2
	.p2align	4, 0x90
_mcl_fp_addPre2Lbmi2:                   ## @mcl_fp_addPre2Lbmi2
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
	.globl	_mcl_fp_subPre2Lbmi2    ## -- Begin function mcl_fp_subPre2Lbmi2
	.p2align	4, 0x90
_mcl_fp_subPre2Lbmi2:                   ## @mcl_fp_subPre2Lbmi2
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
	.globl	_mcl_fp_shr1_2Lbmi2     ## -- Begin function mcl_fp_shr1_2Lbmi2
	.p2align	4, 0x90
_mcl_fp_shr1_2Lbmi2:                    ## @mcl_fp_shr1_2Lbmi2
## %bb.0:
	movq	(%rsi), %rax
	movq	8(%rsi), %rcx
	shrdq	$1, %rcx, %rax
	shrq	%rcx
	movq	%rcx, 8(%rdi)
	movq	%rax, (%rdi)
	retq
                                        ## -- End function
	.globl	_mcl_fp_add2Lbmi2       ## -- Begin function mcl_fp_add2Lbmi2
	.p2align	4, 0x90
_mcl_fp_add2Lbmi2:                      ## @mcl_fp_add2Lbmi2
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
	.globl	_mcl_fp_addNF2Lbmi2     ## -- Begin function mcl_fp_addNF2Lbmi2
	.p2align	4, 0x90
_mcl_fp_addNF2Lbmi2:                    ## @mcl_fp_addNF2Lbmi2
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
	.globl	_mcl_fp_sub2Lbmi2       ## -- Begin function mcl_fp_sub2Lbmi2
	.p2align	4, 0x90
_mcl_fp_sub2Lbmi2:                      ## @mcl_fp_sub2Lbmi2
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
	.globl	_mcl_fp_subNF2Lbmi2     ## -- Begin function mcl_fp_subNF2Lbmi2
	.p2align	4, 0x90
_mcl_fp_subNF2Lbmi2:                    ## @mcl_fp_subNF2Lbmi2
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
	.globl	_mcl_fpDbl_add2Lbmi2    ## -- Begin function mcl_fpDbl_add2Lbmi2
	.p2align	4, 0x90
_mcl_fpDbl_add2Lbmi2:                   ## @mcl_fpDbl_add2Lbmi2
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
	.globl	_mcl_fpDbl_sub2Lbmi2    ## -- Begin function mcl_fpDbl_sub2Lbmi2
	.p2align	4, 0x90
_mcl_fpDbl_sub2Lbmi2:                   ## @mcl_fpDbl_sub2Lbmi2
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
	.globl	_mcl_fp_mulUnitPre3Lbmi2 ## -- Begin function mcl_fp_mulUnitPre3Lbmi2
	.p2align	4, 0x90
_mcl_fp_mulUnitPre3Lbmi2:               ## @mcl_fp_mulUnitPre3Lbmi2
## %bb.0:
	mulxq	16(%rsi), %r8, %rcx
	mulxq	8(%rsi), %r9, %rax
	mulxq	(%rsi), %rdx, %rsi
	movq	%rdx, (%rdi)
	addq	%r9, %rsi
	movq	%rsi, 8(%rdi)
	adcq	%r8, %rax
	movq	%rax, 16(%rdi)
	adcq	$0, %rcx
	movq	%rcx, 24(%rdi)
	retq
                                        ## -- End function
	.globl	_mcl_fpDbl_mulPre3Lbmi2 ## -- Begin function mcl_fpDbl_mulPre3Lbmi2
	.p2align	4, 0x90
_mcl_fpDbl_mulPre3Lbmi2:                ## @mcl_fpDbl_mulPre3Lbmi2
## %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	%rdx, %r10
	movq	(%rsi), %r8
	movq	8(%rsi), %r9
	movq	(%rdx), %r13
	movq	%r8, %rdx
	mulxq	%r13, %rdx, %rax
	movq	16(%rsi), %r12
	movq	%rdx, (%rdi)
	movq	8(%r10), %rdx
	mulxq	%r9, %rsi, %r15
	mulxq	%r8, %r14, %rbp
	addq	%rsi, %rbp
	mulxq	%r12, %r11, %rsi
	adcq	%r15, %r11
	adcq	$0, %rsi
	movq	%r9, %rdx
	mulxq	%r13, %rcx, %r15
	addq	%rax, %rcx
	movq	%r12, %rdx
	mulxq	%r13, %rbx, %r13
	adcq	%r15, %rbx
	adcq	$0, %r13
	addq	%r14, %rcx
	movq	%rcx, 8(%rdi)
	adcq	%rbp, %rbx
	adcq	%r11, %r13
	adcq	$0, %rsi
	movq	16(%r10), %rdx
	mulxq	%r12, %r10, %rbp
	mulxq	%r9, %r9, %rcx
	mulxq	%r8, %rdx, %rax
	addq	%r9, %rax
	adcq	%r10, %rcx
	adcq	$0, %rbp
	addq	%rbx, %rdx
	movq	%rdx, 16(%rdi)
	adcq	%r13, %rax
	movq	%rax, 24(%rdi)
	adcq	%rsi, %rcx
	movq	%rcx, 32(%rdi)
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
	.globl	_mcl_fpDbl_sqrPre3Lbmi2 ## -- Begin function mcl_fpDbl_sqrPre3Lbmi2
	.p2align	4, 0x90
_mcl_fpDbl_sqrPre3Lbmi2:                ## @mcl_fpDbl_sqrPre3Lbmi2
## %bb.0:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	16(%rsi), %r8
	movq	(%rsi), %rcx
	movq	8(%rsi), %rsi
	movq	%rcx, %rdx
	mulxq	%rcx, %rdx, %rax
	movq	%rdx, (%rdi)
	movq	%r8, %rdx
	mulxq	%rsi, %r10, %r9
	movq	%rsi, %rdx
	mulxq	%rsi, %r11, %r15
	mulxq	%rcx, %r14, %rsi
	addq	%rsi, %r11
	adcq	%r10, %r15
	movq	%r9, %r13
	adcq	$0, %r13
	addq	%r14, %rax
	movq	%r8, %rdx
	mulxq	%rcx, %r12, %rcx
	adcq	%r12, %rsi
	movq	%rcx, %rbx
	adcq	$0, %rbx
	addq	%r14, %rax
	movq	%rax, 8(%rdi)
	adcq	%r11, %rsi
	adcq	%r15, %rbx
	adcq	$0, %r13
	movq	%r8, %rdx
	mulxq	%r8, %rax, %rdx
	addq	%r10, %rcx
	adcq	%r9, %rax
	adcq	$0, %rdx
	addq	%r12, %rsi
	movq	%rsi, 16(%rdi)
	adcq	%rbx, %rcx
	movq	%rcx, 24(%rdi)
	adcq	%r13, %rax
	movq	%rax, 32(%rdi)
	adcq	$0, %rdx
	movq	%rdx, 40(%rdi)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
                                        ## -- End function
	.globl	_mcl_fp_mont3Lbmi2      ## -- Begin function mcl_fp_mont3Lbmi2
	.p2align	4, 0x90
_mcl_fp_mont3Lbmi2:                     ## @mcl_fp_mont3Lbmi2
## %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	%rdx, %r14
	movq	%rdi, -8(%rsp)          ## 8-byte Spill
	movq	16(%rsi), %rdi
	movq	%rdi, -48(%rsp)         ## 8-byte Spill
	movq	(%rdx), %rax
	movq	%rdx, -16(%rsp)         ## 8-byte Spill
	movq	%rdi, %rdx
	mulxq	%rax, %r11, %rbx
	movq	(%rsi), %rdi
	movq	%rdi, -56(%rsp)         ## 8-byte Spill
	movq	8(%rsi), %rdx
	movq	%rdx, -64(%rsp)         ## 8-byte Spill
	mulxq	%rax, %r15, %rbp
	movq	%rdi, %rdx
	mulxq	%rax, %r9, %r8
	addq	%r15, %r8
	adcq	%r11, %rbp
	adcq	$0, %rbx
	movq	-8(%rcx), %r13
	movq	%r13, %rdx
	imulq	%r9, %rdx
	movq	8(%rcx), %rax
	movq	%rax, -32(%rsp)         ## 8-byte Spill
	mulxq	%rax, %r12, %r10
	movq	(%rcx), %rax
	movq	%rax, -40(%rsp)         ## 8-byte Spill
	mulxq	%rax, %r11, %rax
	addq	%r12, %rax
	movq	16(%rcx), %rdi
	mulxq	%rdi, %rcx, %rsi
	movq	%rdi, %r15
	movq	%rdi, -24(%rsp)         ## 8-byte Spill
	adcq	%r10, %rcx
	adcq	$0, %rsi
	addq	%r9, %r11
	adcq	%r8, %rax
	movq	8(%r14), %rdx
	adcq	%rbp, %rcx
	adcq	%rbx, %rsi
	movq	-48(%rsp), %r14         ## 8-byte Reload
	mulxq	%r14, %r9, %r8
	mulxq	-64(%rsp), %rbp, %rbx   ## 8-byte Folded Reload
	mulxq	-56(%rsp), %r10, %rdi   ## 8-byte Folded Reload
	setb	%dl
	addq	%rbp, %rdi
	adcq	%r9, %rbx
	adcq	$0, %r8
	addq	%rax, %r10
	adcq	%rcx, %rdi
	movzbl	%dl, %eax
	adcq	%rsi, %rbx
	adcq	%rax, %r8
	setb	%r11b
	movq	%r13, %rdx
	imulq	%r10, %rdx
	mulxq	%r15, %r9, %rcx
	movq	-32(%rsp), %r12         ## 8-byte Reload
	mulxq	%r12, %rsi, %rbp
	movq	-40(%rsp), %r15         ## 8-byte Reload
	mulxq	%r15, %rdx, %rax
	addq	%rsi, %rax
	adcq	%r9, %rbp
	adcq	$0, %rcx
	addq	%r10, %rdx
	adcq	%rdi, %rax
	movzbl	%r11b, %r9d
	adcq	%rbx, %rbp
	adcq	%r8, %rcx
	adcq	$0, %r9
	movq	-16(%rsp), %rdx         ## 8-byte Reload
	movq	16(%rdx), %rdx
	mulxq	%r14, %r8, %rsi
	mulxq	-64(%rsp), %r10, %r14   ## 8-byte Folded Reload
	mulxq	-56(%rsp), %r11, %rdi   ## 8-byte Folded Reload
	addq	%r10, %rdi
	adcq	%r8, %r14
	adcq	$0, %rsi
	addq	%rax, %r11
	adcq	%rbp, %rdi
	adcq	%rcx, %r14
	adcq	%r9, %rsi
	setb	%r8b
	imulq	%r11, %r13
	movq	%r13, %rdx
	mulxq	%r15, %rax, %rbp
	movq	%r12, %r10
	mulxq	%r12, %rcx, %r9
	addq	%rbp, %rcx
	movq	-24(%rsp), %r12         ## 8-byte Reload
	mulxq	%r12, %rdx, %rbx
	adcq	%r9, %rdx
	adcq	$0, %rbx
	addq	%r11, %rax
	adcq	%rdi, %rcx
	adcq	%r14, %rdx
	movzbl	%r8b, %eax
	adcq	%rsi, %rbx
	adcq	$0, %rax
	movq	%rcx, %rsi
	subq	%r15, %rsi
	movq	%rdx, %rdi
	sbbq	%r10, %rdi
	movq	%rbx, %rbp
	sbbq	%r12, %rbp
	sbbq	$0, %rax
	testb	$1, %al
	cmovneq	%rdx, %rdi
	movq	-8(%rsp), %rax          ## 8-byte Reload
	movq	%rdi, 8(%rax)
	cmovneq	%rcx, %rsi
	movq	%rsi, (%rax)
	cmovneq	%rbx, %rbp
	movq	%rbp, 16(%rax)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
                                        ## -- End function
	.globl	_mcl_fp_montNF3Lbmi2    ## -- Begin function mcl_fp_montNF3Lbmi2
	.p2align	4, 0x90
_mcl_fp_montNF3Lbmi2:                   ## @mcl_fp_montNF3Lbmi2
## %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	%rcx, %r8
	movq	%rdx, %r10
	movq	%rdi, -8(%rsp)          ## 8-byte Spill
	movq	(%rsi), %rcx
	movq	8(%rsi), %rdi
	movq	%rdi, -32(%rsp)         ## 8-byte Spill
	movq	(%rdx), %rax
	movq	%rdx, -16(%rsp)         ## 8-byte Spill
	movq	%rdi, %rdx
	mulxq	%rax, %rbx, %r14
	movq	%rcx, %rdx
	movq	%rcx, -24(%rsp)         ## 8-byte Spill
	mulxq	%rax, %r15, %r12
	movq	16(%rsi), %r11
	addq	%rbx, %r12
	movq	%r11, %rdx
	mulxq	%rax, %rsi, %rbx
	adcq	%r14, %rsi
	adcq	$0, %rbx
	movq	-8(%r8), %r9
	movq	(%r8), %r14
	movq	%r9, %rdx
	imulq	%r15, %rdx
	mulxq	%r14, %rbp, %r13
	addq	%r15, %rbp
	movq	8(%r8), %r15
	mulxq	%r15, %rdi, %rbp
	adcq	%r12, %rdi
	movq	16(%r8), %r12
	mulxq	%r12, %rax, %r8
	adcq	%rsi, %rax
	adcq	$0, %rbx
	addq	%r13, %rdi
	movq	8(%r10), %rdx
	adcq	%rbp, %rax
	adcq	%r8, %rbx
	movq	-32(%rsp), %r10         ## 8-byte Reload
	mulxq	%r10, %rsi, %r8
	mulxq	%rcx, %r13, %rbp
	addq	%rsi, %rbp
	mulxq	%r11, %rcx, %rsi
	adcq	%r8, %rcx
	adcq	$0, %rsi
	addq	%rdi, %r13
	adcq	%rax, %rbp
	adcq	%rbx, %rcx
	adcq	$0, %rsi
	movq	%r9, %rdx
	imulq	%r13, %rdx
	mulxq	%r14, %rdi, %rbx
	addq	%r13, %rdi
	mulxq	%r15, %rax, %rdi
	adcq	%rbp, %rax
	mulxq	%r12, %rbp, %rdx
	adcq	%rcx, %rbp
	adcq	$0, %rsi
	addq	%rbx, %rax
	adcq	%rdi, %rbp
	adcq	%rdx, %rsi
	movq	-16(%rsp), %rcx         ## 8-byte Reload
	movq	16(%rcx), %rdx
	mulxq	%r10, %rbx, %r8
	mulxq	-24(%rsp), %r10, %rdi   ## 8-byte Folded Reload
	addq	%rbx, %rdi
	mulxq	%r11, %rcx, %rbx
	adcq	%r8, %rcx
	adcq	$0, %rbx
	addq	%rax, %r10
	adcq	%rbp, %rdi
	adcq	%rsi, %rcx
	adcq	$0, %rbx
	imulq	%r10, %r9
	movq	%r9, %rdx
	mulxq	%r14, %rdx, %r8
	addq	%r10, %rdx
	movq	%r9, %rdx
	mulxq	%r12, %rbp, %rsi
	mulxq	%r15, %rax, %rdx
	adcq	%rdi, %rax
	adcq	%rcx, %rbp
	adcq	$0, %rbx
	addq	%r8, %rax
	adcq	%rdx, %rbp
	adcq	%rsi, %rbx
	movq	%rax, %rcx
	subq	%r14, %rcx
	movq	%rbp, %rdx
	sbbq	%r15, %rdx
	movq	%rbx, %rsi
	sbbq	%r12, %rsi
	movq	%rsi, %rdi
	sarq	$63, %rdi
	cmovsq	%rbp, %rdx
	movq	-8(%rsp), %rdi          ## 8-byte Reload
	movq	%rdx, 8(%rdi)
	cmovsq	%rax, %rcx
	movq	%rcx, (%rdi)
	cmovsq	%rbx, %rsi
	movq	%rsi, 16(%rdi)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
                                        ## -- End function
	.globl	_mcl_fp_montRed3Lbmi2   ## -- Begin function mcl_fp_montRed3Lbmi2
	.p2align	4, 0x90
_mcl_fp_montRed3Lbmi2:                  ## @mcl_fp_montRed3Lbmi2
## %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	%rdx, %rcx
	movq	%rdi, -8(%rsp)          ## 8-byte Spill
	movq	-8(%rdx), %r15
	movq	(%rdx), %r8
	movq	(%rsi), %rbx
	movq	%rbx, %rdx
	imulq	%r15, %rdx
	movq	16(%rcx), %r9
	mulxq	%r9, %r14, %r11
	movq	8(%rcx), %r10
	mulxq	%r10, %rax, %r12
	mulxq	%r8, %rdx, %rcx
	addq	%rax, %rcx
	adcq	%r14, %r12
	adcq	$0, %r11
	movq	40(%rsi), %r14
	movq	32(%rsi), %r13
	addq	%rbx, %rdx
	adcq	8(%rsi), %rcx
	adcq	16(%rsi), %r12
	adcq	24(%rsi), %r11
	adcq	$0, %r13
	adcq	$0, %r14
	setb	-9(%rsp)                ## 1-byte Folded Spill
	movq	%r15, %rdx
	imulq	%rcx, %rdx
	mulxq	%r9, %rbp, %rdi
	mulxq	%r10, %rsi, %rbx
	mulxq	%r8, %rdx, %rax
	addq	%rsi, %rax
	adcq	%rbp, %rbx
	adcq	$0, %rdi
	addq	%rcx, %rdx
	movzbl	-9(%rsp), %esi          ## 1-byte Folded Reload
	adcq	%r12, %rax
	adcq	%r11, %rbx
	adcq	%r13, %rdi
	adcq	$0, %r14
	adcq	$0, %rsi
	imulq	%rax, %r15
	movq	%r15, %rdx
	movq	%r8, %rbp
	mulxq	%r8, %r12, %r11
	mulxq	%r10, %r13, %r8
	addq	%r11, %r13
	mulxq	%r9, %rdx, %rcx
	adcq	%r8, %rdx
	adcq	$0, %rcx
	addq	%rax, %r12
	adcq	%rbx, %r13
	adcq	%rdi, %rdx
	adcq	%r14, %rcx
	adcq	$0, %rsi
	movq	%r13, %rax
	subq	%rbp, %rax
	movq	%rdx, %rdi
	sbbq	%r10, %rdi
	movq	%rcx, %rbp
	sbbq	%r9, %rbp
	sbbq	$0, %rsi
	testb	$1, %sil
	cmovneq	%rdx, %rdi
	movq	-8(%rsp), %rdx          ## 8-byte Reload
	movq	%rdi, 8(%rdx)
	cmovneq	%r13, %rax
	movq	%rax, (%rdx)
	cmovneq	%rcx, %rbp
	movq	%rbp, 16(%rdx)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
                                        ## -- End function
	.globl	_mcl_fp_addPre3Lbmi2    ## -- Begin function mcl_fp_addPre3Lbmi2
	.p2align	4, 0x90
_mcl_fp_addPre3Lbmi2:                   ## @mcl_fp_addPre3Lbmi2
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
	.globl	_mcl_fp_subPre3Lbmi2    ## -- Begin function mcl_fp_subPre3Lbmi2
	.p2align	4, 0x90
_mcl_fp_subPre3Lbmi2:                   ## @mcl_fp_subPre3Lbmi2
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
	.globl	_mcl_fp_shr1_3Lbmi2     ## -- Begin function mcl_fp_shr1_3Lbmi2
	.p2align	4, 0x90
_mcl_fp_shr1_3Lbmi2:                    ## @mcl_fp_shr1_3Lbmi2
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
	.globl	_mcl_fp_add3Lbmi2       ## -- Begin function mcl_fp_add3Lbmi2
	.p2align	4, 0x90
_mcl_fp_add3Lbmi2:                      ## @mcl_fp_add3Lbmi2
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
	.globl	_mcl_fp_addNF3Lbmi2     ## -- Begin function mcl_fp_addNF3Lbmi2
	.p2align	4, 0x90
_mcl_fp_addNF3Lbmi2:                    ## @mcl_fp_addNF3Lbmi2
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
	.globl	_mcl_fp_sub3Lbmi2       ## -- Begin function mcl_fp_sub3Lbmi2
	.p2align	4, 0x90
_mcl_fp_sub3Lbmi2:                      ## @mcl_fp_sub3Lbmi2
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
	.globl	_mcl_fp_subNF3Lbmi2     ## -- Begin function mcl_fp_subNF3Lbmi2
	.p2align	4, 0x90
_mcl_fp_subNF3Lbmi2:                    ## @mcl_fp_subNF3Lbmi2
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
	.globl	_mcl_fpDbl_add3Lbmi2    ## -- Begin function mcl_fpDbl_add3Lbmi2
	.p2align	4, 0x90
_mcl_fpDbl_add3Lbmi2:                   ## @mcl_fpDbl_add3Lbmi2
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
	.globl	_mcl_fpDbl_sub3Lbmi2    ## -- Begin function mcl_fpDbl_sub3Lbmi2
	.p2align	4, 0x90
_mcl_fpDbl_sub3Lbmi2:                   ## @mcl_fpDbl_sub3Lbmi2
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
	.globl	_mcl_fp_mulUnitPre4Lbmi2 ## -- Begin function mcl_fp_mulUnitPre4Lbmi2
	.p2align	4, 0x90
_mcl_fp_mulUnitPre4Lbmi2:               ## @mcl_fp_mulUnitPre4Lbmi2
## %bb.0:
	mulxq	24(%rsi), %r8, %r11
	mulxq	16(%rsi), %r9, %rax
	mulxq	8(%rsi), %r10, %rcx
	mulxq	(%rsi), %rdx, %rsi
	movq	%rdx, (%rdi)
	addq	%r10, %rsi
	movq	%rsi, 8(%rdi)
	adcq	%r9, %rcx
	movq	%rcx, 16(%rdi)
	adcq	%r8, %rax
	movq	%rax, 24(%rdi)
	adcq	$0, %r11
	movq	%r11, 32(%rdi)
	retq
                                        ## -- End function
	.globl	_mcl_fpDbl_mulPre4Lbmi2 ## -- Begin function mcl_fpDbl_mulPre4Lbmi2
	.p2align	4, 0x90
_mcl_fpDbl_mulPre4Lbmi2:                ## @mcl_fpDbl_mulPre4Lbmi2
## %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	%rdi, %r9
	movq	(%rsi), %r14
	movq	8(%rsi), %rbp
	movq	(%rdx), %rax
	movq	%rdx, %rbx
	movq	%rdx, -16(%rsp)         ## 8-byte Spill
	movq	%r14, %rdx
	mulxq	%rax, %rcx, %r10
	movq	16(%rsi), %rdi
	movq	24(%rsi), %r11
	movq	%rcx, (%r9)
	movq	%r11, %rdx
	mulxq	%rax, %r12, %r15
	movq	%rbp, %rdx
	mulxq	%rax, %rsi, %r8
	addq	%r10, %rsi
	movq	%rdi, %rdx
	movq	%rdi, %r10
	mulxq	%rax, %rax, %rcx
	adcq	%r8, %rax
	adcq	%r12, %rcx
	adcq	$0, %r15
	movq	8(%rbx), %rdx
	mulxq	%r14, %r13, %r8
	movq	%r14, -8(%rsp)          ## 8-byte Spill
	addq	%rsi, %r13
	mulxq	%rbp, %rbx, %r12
	adcq	%rax, %rbx
	mulxq	%rdi, %rsi, %rax
	adcq	%rcx, %rsi
	mulxq	%r11, %rcx, %rdx
	adcq	%r15, %rcx
	setb	%r15b
	addq	%r8, %rbx
	adcq	%r12, %rsi
	movq	%r13, 8(%r9)
	movzbl	%r15b, %r8d
	adcq	%rax, %rcx
	adcq	%rdx, %r8
	movq	-16(%rsp), %rax         ## 8-byte Reload
	movq	16(%rax), %rdx
	mulxq	%rbp, %rdi, %r15
	mulxq	%r14, %rax, %r12
	addq	%rdi, %r12
	mulxq	%r10, %r13, %r14
	adcq	%r15, %r13
	mulxq	%r11, %rdi, %r15
	adcq	%r14, %rdi
	adcq	$0, %r15
	addq	%rbx, %rax
	adcq	%rsi, %r12
	movq	%rax, 16(%r9)
	adcq	%rcx, %r13
	adcq	%r8, %rdi
	adcq	$0, %r15
	movq	-16(%rsp), %rax         ## 8-byte Reload
	movq	24(%rax), %rdx
	mulxq	%rbp, %rcx, %r8
	mulxq	-8(%rsp), %rsi, %rbp    ## 8-byte Folded Reload
	addq	%rcx, %rbp
	mulxq	%r11, %rcx, %rbx
	mulxq	%r10, %rdx, %rax
	adcq	%r8, %rdx
	adcq	%rcx, %rax
	adcq	$0, %rbx
	addq	%r12, %rsi
	movq	%rsi, 24(%r9)
	adcq	%r13, %rbp
	movq	%rbp, 32(%r9)
	adcq	%rdi, %rdx
	movq	%rdx, 40(%r9)
	adcq	%r15, %rax
	movq	%rax, 48(%r9)
	adcq	$0, %rbx
	movq	%rbx, 56(%r9)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
                                        ## -- End function
	.globl	_mcl_fpDbl_sqrPre4Lbmi2 ## -- Begin function mcl_fpDbl_sqrPre4Lbmi2
	.p2align	4, 0x90
_mcl_fpDbl_sqrPre4Lbmi2:                ## @mcl_fpDbl_sqrPre4Lbmi2
## %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	24(%rsi), %r8
	movq	(%rsi), %rax
	movq	8(%rsi), %rcx
	movq	%r8, %rdx
	movq	%r8, -64(%rsp)          ## 8-byte Spill
	mulxq	%rcx, %r14, %r9
	movq	%r14, -8(%rsp)          ## 8-byte Spill
	movq	16(%rsi), %r12
	movq	%r12, %rdx
	mulxq	%rcx, %rbp, %rsi
	movq	%rbp, -40(%rsp)         ## 8-byte Spill
	movq	%rsi, -24(%rsp)         ## 8-byte Spill
	movq	%rcx, %rdx
	mulxq	%rcx, %r10, %r11
	mulxq	%rax, %r15, %rbx
	movq	%r15, -56(%rsp)         ## 8-byte Spill
	addq	%rbx, %r10
	adcq	%rbp, %r11
	movq	%rsi, %rbp
	adcq	%r14, %rbp
	movq	%r9, %r14
	adcq	$0, %r14
	movq	%rax, %rdx
	mulxq	%rax, %rcx, %rsi
	movq	%rcx, -48(%rsp)         ## 8-byte Spill
	addq	%r15, %rsi
	movq	%r12, %rdx
	mulxq	%rax, %rdx, %rcx
	movq	%rdx, -32(%rsp)         ## 8-byte Spill
	adcq	%rdx, %rbx
	movq	%r8, %rdx
	mulxq	%rax, %rax, %r15
	movq	%rax, -16(%rsp)         ## 8-byte Spill
	movq	%rcx, %r8
	adcq	%rax, %r8
	movq	%r15, %r13
	adcq	$0, %r13
	addq	-56(%rsp), %rsi         ## 8-byte Folded Reload
	adcq	%r10, %rbx
	adcq	%r11, %r8
	adcq	%rbp, %r13
	adcq	$0, %r14
	addq	-40(%rsp), %rcx         ## 8-byte Folded Reload
	movq	%r12, %rdx
	mulxq	%r12, %rbp, %r11
	adcq	-24(%rsp), %rbp         ## 8-byte Folded Reload
	movq	-48(%rsp), %rax         ## 8-byte Reload
	movq	%rax, (%rdi)
	movq	-64(%rsp), %rdx         ## 8-byte Reload
	mulxq	%r12, %rdx, %r10
	adcq	%rdx, %r11
	movq	%r10, %rax
	adcq	$0, %rax
	addq	-32(%rsp), %rbx         ## 8-byte Folded Reload
	movq	%rsi, 8(%rdi)
	adcq	%r8, %rcx
	movq	%rbx, 16(%rdi)
	adcq	%r13, %rbp
	adcq	%r14, %r11
	adcq	$0, %rax
	addq	-8(%rsp), %r15          ## 8-byte Folded Reload
	adcq	%rdx, %r9
	movq	-64(%rsp), %rdx         ## 8-byte Reload
	mulxq	%rdx, %rdx, %rsi
	adcq	%r10, %rdx
	adcq	$0, %rsi
	addq	-16(%rsp), %rcx         ## 8-byte Folded Reload
	movq	%rcx, 24(%rdi)
	adcq	%rbp, %r15
	movq	%r15, 32(%rdi)
	adcq	%r11, %r9
	movq	%r9, 40(%rdi)
	adcq	%rax, %rdx
	movq	%rdx, 48(%rdi)
	adcq	$0, %rsi
	movq	%rsi, 56(%rdi)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
                                        ## -- End function
	.globl	_mcl_fp_mont4Lbmi2      ## -- Begin function mcl_fp_mont4Lbmi2
	.p2align	4, 0x90
_mcl_fp_mont4Lbmi2:                     ## @mcl_fp_mont4Lbmi2
## %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	%rdx, -32(%rsp)         ## 8-byte Spill
	movq	%rdi, -8(%rsp)          ## 8-byte Spill
	movq	24(%rsi), %rdi
	movq	%rdi, -56(%rsp)         ## 8-byte Spill
	movq	(%rdx), %rax
	movq	%rdi, %rdx
	mulxq	%rax, %r14, %r11
	movq	16(%rsi), %rdx
	movq	%rdx, -88(%rsp)         ## 8-byte Spill
	mulxq	%rax, %rbx, %r10
	movq	(%rsi), %r12
	movq	8(%rsi), %rdx
	movq	%rdx, -48(%rsp)         ## 8-byte Spill
	mulxq	%rax, %rdi, %r8
	movq	%r12, %rdx
	movq	%r12, -16(%rsp)         ## 8-byte Spill
	mulxq	%rax, %r15, %r13
	addq	%rdi, %r13
	adcq	%rbx, %r8
	adcq	%r14, %r10
	adcq	$0, %r11
	movq	-8(%rcx), %rdx
	movq	%rdx, -72(%rsp)         ## 8-byte Spill
	imulq	%r15, %rdx
	movq	24(%rcx), %rax
	movq	%rax, -24(%rsp)         ## 8-byte Spill
	mulxq	%rax, %r14, %rbx
	movq	16(%rcx), %rax
	movq	%rax, -40(%rsp)         ## 8-byte Spill
	mulxq	%rax, %r9, %rdi
	movq	(%rcx), %rbp
	movq	%rbp, -80(%rsp)         ## 8-byte Spill
	movq	8(%rcx), %rax
	movq	%rax, -64(%rsp)         ## 8-byte Spill
	mulxq	%rax, %rsi, %rcx
	mulxq	%rbp, %rdx, %rax
	addq	%rsi, %rax
	adcq	%r9, %rcx
	adcq	%r14, %rdi
	adcq	$0, %rbx
	addq	%r15, %rdx
	adcq	%r13, %rax
	adcq	%r8, %rcx
	adcq	%r10, %rdi
	adcq	%r11, %rbx
	movq	-32(%rsp), %r13         ## 8-byte Reload
	movq	8(%r13), %rdx
	mulxq	-56(%rsp), %r11, %r10   ## 8-byte Folded Reload
	mulxq	-88(%rsp), %r14, %rbp   ## 8-byte Folded Reload
	mulxq	-48(%rsp), %r15, %r8    ## 8-byte Folded Reload
	mulxq	%r12, %r9, %rsi
	setb	%dl
	addq	%r15, %rsi
	adcq	%r14, %r8
	adcq	%r11, %rbp
	adcq	$0, %r10
	addq	%rax, %r9
	adcq	%rcx, %rsi
	adcq	%rdi, %r8
	adcq	%rbx, %rbp
	movzbl	%dl, %eax
	adcq	%rax, %r10
	setb	-89(%rsp)               ## 1-byte Folded Spill
	movq	-72(%rsp), %rdx         ## 8-byte Reload
	imulq	%r9, %rdx
	movq	-24(%rsp), %r12         ## 8-byte Reload
	mulxq	%r12, %r14, %rbx
	mulxq	-40(%rsp), %r15, %rcx   ## 8-byte Folded Reload
	mulxq	-64(%rsp), %r11, %rdi   ## 8-byte Folded Reload
	mulxq	-80(%rsp), %rdx, %rax   ## 8-byte Folded Reload
	addq	%r11, %rax
	adcq	%r15, %rdi
	adcq	%r14, %rcx
	adcq	$0, %rbx
	addq	%r9, %rdx
	adcq	%rsi, %rax
	adcq	%r8, %rdi
	adcq	%rbp, %rcx
	adcq	%r10, %rbx
	movzbl	-89(%rsp), %r11d        ## 1-byte Folded Reload
	adcq	$0, %r11
	movq	16(%r13), %rdx
	mulxq	-56(%rsp), %r14, %r8    ## 8-byte Folded Reload
	mulxq	-88(%rsp), %r15, %r10   ## 8-byte Folded Reload
	mulxq	-48(%rsp), %r13, %rbp   ## 8-byte Folded Reload
	mulxq	-16(%rsp), %r9, %rsi    ## 8-byte Folded Reload
	addq	%r13, %rsi
	adcq	%r15, %rbp
	adcq	%r14, %r10
	adcq	$0, %r8
	addq	%rax, %r9
	adcq	%rdi, %rsi
	adcq	%rcx, %rbp
	adcq	%rbx, %r10
	adcq	%r11, %r8
	setb	%r11b
	movq	-72(%rsp), %rdx         ## 8-byte Reload
	imulq	%r9, %rdx
	mulxq	%r12, %r14, %rbx
	mulxq	-40(%rsp), %r15, %rcx   ## 8-byte Folded Reload
	movq	-64(%rsp), %r12         ## 8-byte Reload
	mulxq	%r12, %r13, %rdi
	mulxq	-80(%rsp), %rdx, %rax   ## 8-byte Folded Reload
	addq	%r13, %rax
	adcq	%r15, %rdi
	adcq	%r14, %rcx
	adcq	$0, %rbx
	addq	%r9, %rdx
	adcq	%rsi, %rax
	adcq	%rbp, %rdi
	adcq	%r10, %rcx
	adcq	%r8, %rbx
	movzbl	%r11b, %r11d
	adcq	$0, %r11
	movq	-32(%rsp), %rdx         ## 8-byte Reload
	movq	24(%rdx), %rdx
	mulxq	-56(%rsp), %r14, %r8    ## 8-byte Folded Reload
	mulxq	-88(%rsp), %r15, %r9    ## 8-byte Folded Reload
	mulxq	-48(%rsp), %r13, %rbp   ## 8-byte Folded Reload
	mulxq	-16(%rsp), %r10, %rsi   ## 8-byte Folded Reload
	addq	%r13, %rsi
	adcq	%r15, %rbp
	adcq	%r14, %r9
	adcq	$0, %r8
	addq	%rax, %r10
	adcq	%rdi, %rsi
	adcq	%rcx, %rbp
	adcq	%rbx, %r9
	adcq	%r11, %r8
	setb	-88(%rsp)               ## 1-byte Folded Spill
	movq	-72(%rsp), %rdx         ## 8-byte Reload
	imulq	%r10, %rdx
	movq	-80(%rsp), %rdi         ## 8-byte Reload
	mulxq	%rdi, %rcx, %rax
	mulxq	%r12, %r13, %r14
	addq	%rax, %r13
	movq	-40(%rsp), %r11         ## 8-byte Reload
	mulxq	%r11, %rbx, %r15
	adcq	%r14, %rbx
	movq	-24(%rsp), %r12         ## 8-byte Reload
	mulxq	%r12, %rdx, %r14
	adcq	%r15, %rdx
	adcq	$0, %r14
	addq	%r10, %rcx
	adcq	%rsi, %r13
	adcq	%rbp, %rbx
	adcq	%r9, %rdx
	movzbl	-88(%rsp), %esi         ## 1-byte Folded Reload
	adcq	%r8, %r14
	adcq	$0, %rsi
	movq	%r13, %rcx
	subq	%rdi, %rcx
	movq	%rbx, %rdi
	sbbq	-64(%rsp), %rdi         ## 8-byte Folded Reload
	movq	%rdx, %rax
	sbbq	%r11, %rax
	movq	%r14, %rbp
	sbbq	%r12, %rbp
	sbbq	$0, %rsi
	testb	$1, %sil
	cmovneq	%rbx, %rdi
	movq	-8(%rsp), %rsi          ## 8-byte Reload
	movq	%rdi, 8(%rsi)
	cmovneq	%r13, %rcx
	movq	%rcx, (%rsi)
	cmovneq	%rdx, %rax
	movq	%rax, 16(%rsi)
	cmovneq	%r14, %rbp
	movq	%rbp, 24(%rsi)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
                                        ## -- End function
	.globl	_mcl_fp_montNF4Lbmi2    ## -- Begin function mcl_fp_montNF4Lbmi2
	.p2align	4, 0x90
_mcl_fp_montNF4Lbmi2:                   ## @mcl_fp_montNF4Lbmi2
## %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	%rdi, -8(%rsp)          ## 8-byte Spill
	movq	(%rsi), %rdi
	movq	%rdi, -56(%rsp)         ## 8-byte Spill
	movq	8(%rsi), %rbp
	movq	%rbp, -64(%rsp)         ## 8-byte Spill
	movq	(%rdx), %rax
	movq	%rdx, %r15
	movq	%rdx, -24(%rsp)         ## 8-byte Spill
	movq	%rbp, %rdx
	mulxq	%rax, %rbp, %r9
	movq	%rdi, %rdx
	mulxq	%rax, %r12, %rbx
	movq	16(%rsi), %rdx
	movq	%rdx, -72(%rsp)         ## 8-byte Spill
	addq	%rbp, %rbx
	mulxq	%rax, %r14, %rbp
	adcq	%r9, %r14
	movq	24(%rsi), %rdx
	movq	%rdx, -80(%rsp)         ## 8-byte Spill
	mulxq	%rax, %r8, %rdi
	adcq	%rbp, %r8
	adcq	$0, %rdi
	movq	-8(%rcx), %r13
	movq	(%rcx), %rax
	movq	%rax, -48(%rsp)         ## 8-byte Spill
	movq	%r13, %rdx
	imulq	%r12, %rdx
	mulxq	%rax, %rax, %r11
	addq	%r12, %rax
	movq	8(%rcx), %rax
	movq	%rax, -16(%rsp)         ## 8-byte Spill
	mulxq	%rax, %rbp, %r10
	adcq	%rbx, %rbp
	movq	16(%rcx), %rax
	movq	%rax, -32(%rsp)         ## 8-byte Spill
	mulxq	%rax, %rsi, %rbx
	adcq	%r14, %rsi
	movq	24(%rcx), %rax
	movq	%rax, -40(%rsp)         ## 8-byte Spill
	mulxq	%rax, %rcx, %rdx
	adcq	%r8, %rcx
	adcq	$0, %rdi
	addq	%r11, %rbp
	adcq	%r10, %rsi
	adcq	%rbx, %rcx
	adcq	%rdx, %rdi
	movq	8(%r15), %rdx
	movq	-64(%rsp), %r12         ## 8-byte Reload
	mulxq	%r12, %rbx, %r9
	movq	-56(%rsp), %r15         ## 8-byte Reload
	mulxq	%r15, %r10, %r11
	addq	%rbx, %r11
	mulxq	-72(%rsp), %rax, %r8    ## 8-byte Folded Reload
	adcq	%r9, %rax
	mulxq	-80(%rsp), %r9, %rbx    ## 8-byte Folded Reload
	adcq	%r8, %r9
	adcq	$0, %rbx
	addq	%rbp, %r10
	adcq	%rsi, %r11
	adcq	%rcx, %rax
	adcq	%rdi, %r9
	adcq	$0, %rbx
	movq	%r13, %rdx
	imulq	%r10, %rdx
	movq	-48(%rsp), %r14         ## 8-byte Reload
	mulxq	%r14, %rcx, %r8
	addq	%r10, %rcx
	mulxq	-16(%rsp), %r10, %rdi   ## 8-byte Folded Reload
	adcq	%r11, %r10
	mulxq	-32(%rsp), %rcx, %rsi   ## 8-byte Folded Reload
	adcq	%rax, %rcx
	mulxq	-40(%rsp), %rax, %rdx   ## 8-byte Folded Reload
	adcq	%r9, %rax
	adcq	$0, %rbx
	addq	%r8, %r10
	adcq	%rdi, %rcx
	adcq	%rsi, %rax
	adcq	%rdx, %rbx
	movq	-24(%rsp), %rdx         ## 8-byte Reload
	movq	16(%rdx), %rdx
	mulxq	%r12, %rsi, %r8
	mulxq	%r15, %r11, %rbp
	addq	%rsi, %rbp
	mulxq	-72(%rsp), %rdi, %r9    ## 8-byte Folded Reload
	adcq	%r8, %rdi
	mulxq	-80(%rsp), %r8, %rsi    ## 8-byte Folded Reload
	adcq	%r9, %r8
	adcq	$0, %rsi
	addq	%r10, %r11
	adcq	%rcx, %rbp
	adcq	%rax, %rdi
	adcq	%rbx, %r8
	adcq	$0, %rsi
	movq	%r13, %rdx
	imulq	%r11, %rdx
	mulxq	%r14, %rax, %r10
	addq	%r11, %rax
	movq	-16(%rsp), %r14         ## 8-byte Reload
	mulxq	%r14, %r9, %rbx
	adcq	%rbp, %r9
	movq	-32(%rsp), %r15         ## 8-byte Reload
	mulxq	%r15, %rax, %rbp
	adcq	%rdi, %rax
	movq	-40(%rsp), %r12         ## 8-byte Reload
	mulxq	%r12, %rcx, %rdx
	adcq	%r8, %rcx
	adcq	$0, %rsi
	addq	%r10, %r9
	adcq	%rbx, %rax
	adcq	%rbp, %rcx
	adcq	%rdx, %rsi
	movq	-24(%rsp), %rdx         ## 8-byte Reload
	movq	24(%rdx), %rdx
	mulxq	-64(%rsp), %rbx, %r8    ## 8-byte Folded Reload
	mulxq	-56(%rsp), %r11, %rbp   ## 8-byte Folded Reload
	addq	%rbx, %rbp
	mulxq	-72(%rsp), %rdi, %r10   ## 8-byte Folded Reload
	adcq	%r8, %rdi
	mulxq	-80(%rsp), %r8, %rbx    ## 8-byte Folded Reload
	adcq	%r10, %r8
	adcq	$0, %rbx
	addq	%r9, %r11
	adcq	%rax, %rbp
	adcq	%rcx, %rdi
	adcq	%rsi, %r8
	adcq	$0, %rbx
	imulq	%r11, %r13
	movq	%r13, %rdx
	movq	-48(%rsp), %rsi         ## 8-byte Reload
	mulxq	%rsi, %rcx, %r9
	addq	%r11, %rcx
	mulxq	%r14, %r11, %r10
	adcq	%rbp, %r11
	mulxq	%r15, %rax, %rcx
	adcq	%rdi, %rax
	mulxq	%r12, %rbp, %rdx
	adcq	%r8, %rbp
	adcq	$0, %rbx
	addq	%r9, %r11
	adcq	%r10, %rax
	adcq	%rcx, %rbp
	adcq	%rdx, %rbx
	movq	%r11, %rcx
	subq	%rsi, %rcx
	movq	%rax, %rdx
	sbbq	%r14, %rdx
	movq	%rbp, %rdi
	sbbq	%r15, %rdi
	movq	%rbx, %rsi
	sbbq	%r12, %rsi
	cmovsq	%rax, %rdx
	movq	-8(%rsp), %rax          ## 8-byte Reload
	movq	%rdx, 8(%rax)
	cmovsq	%r11, %rcx
	movq	%rcx, (%rax)
	cmovsq	%rbp, %rdi
	movq	%rdi, 16(%rax)
	cmovsq	%rbx, %rsi
	movq	%rsi, 24(%rax)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
                                        ## -- End function
	.globl	_mcl_fp_montRed4Lbmi2   ## -- Begin function mcl_fp_montRed4Lbmi2
	.p2align	4, 0x90
_mcl_fp_montRed4Lbmi2:                  ## @mcl_fp_montRed4Lbmi2
## %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	%rdx, %rcx
	movq	%rdi, -8(%rsp)          ## 8-byte Spill
	movq	-8(%rdx), %r13
	movq	(%rdx), %rbp
	movq	%rbp, -16(%rsp)         ## 8-byte Spill
	movq	(%rsi), %rax
	movq	%rax, %rdx
	imulq	%r13, %rdx
	movq	24(%rcx), %rdi
	mulxq	%rdi, %r9, %r15
	movq	%rdi, %r11
	movq	%rdi, -32(%rsp)         ## 8-byte Spill
	movq	16(%rcx), %rdi
	movq	%rdi, -64(%rsp)         ## 8-byte Spill
	mulxq	%rdi, %r10, %rbx
	movq	8(%rcx), %rcx
	mulxq	%rcx, %rdi, %r8
	movq	%rcx, %r12
	movq	%rcx, -56(%rsp)         ## 8-byte Spill
	mulxq	%rbp, %rdx, %rcx
	addq	%rdi, %rcx
	adcq	%r10, %r8
	adcq	%r9, %rbx
	adcq	$0, %r15
	movq	56(%rsi), %rdi
	movq	48(%rsi), %rbp
	addq	%rax, %rdx
	movq	40(%rsi), %r14
	adcq	8(%rsi), %rcx
	adcq	16(%rsi), %r8
	adcq	24(%rsi), %rbx
	adcq	32(%rsi), %r15
	adcq	$0, %r14
	adcq	$0, %rbp
	movq	%rbp, -40(%rsp)         ## 8-byte Spill
	adcq	$0, %rdi
	movq	%rdi, -48(%rsp)         ## 8-byte Spill
	setb	-72(%rsp)               ## 1-byte Folded Spill
	movq	%r13, %rdx
	imulq	%rcx, %rdx
	mulxq	%r11, %rax, %r10
	movq	%rax, -24(%rsp)         ## 8-byte Spill
	movq	-64(%rsp), %r11         ## 8-byte Reload
	mulxq	%r11, %r9, %rbp
	mulxq	%r12, %rsi, %rdi
	movq	-16(%rsp), %r12         ## 8-byte Reload
	mulxq	%r12, %rdx, %rax
	addq	%rsi, %rax
	adcq	%r9, %rdi
	adcq	-24(%rsp), %rbp         ## 8-byte Folded Reload
	adcq	$0, %r10
	addq	%rcx, %rdx
	adcq	%r8, %rax
	adcq	%rbx, %rdi
	movzbl	-72(%rsp), %esi         ## 1-byte Folded Reload
	adcq	%r15, %rbp
	adcq	%r14, %r10
	adcq	$0, -40(%rsp)           ## 8-byte Folded Spill
	adcq	$0, -48(%rsp)           ## 8-byte Folded Spill
	adcq	$0, %rsi
	movq	%r13, %rdx
	imulq	%rax, %rdx
	mulxq	-32(%rsp), %rcx, %r9    ## 8-byte Folded Reload
	movq	%rcx, -72(%rsp)         ## 8-byte Spill
	mulxq	%r11, %r15, %r8
	movq	-56(%rsp), %r11         ## 8-byte Reload
	mulxq	%r11, %r14, %rbx
	mulxq	%r12, %rdx, %rcx
	addq	%r14, %rcx
	adcq	%r15, %rbx
	adcq	-72(%rsp), %r8          ## 8-byte Folded Reload
	adcq	$0, %r9
	addq	%rax, %rdx
	adcq	%rdi, %rcx
	adcq	%rbp, %rbx
	adcq	%r10, %r8
	adcq	-40(%rsp), %r9          ## 8-byte Folded Reload
	movq	-48(%rsp), %rbp         ## 8-byte Reload
	adcq	$0, %rbp
	adcq	$0, %rsi
	imulq	%rcx, %r13
	movq	%r13, %rdx
	mulxq	%r12, %r14, %rdi
	mulxq	%r11, %r15, %r10
	addq	%rdi, %r15
	mulxq	-64(%rsp), %rax, %r11   ## 8-byte Folded Reload
	adcq	%r10, %rax
	movq	-32(%rsp), %r13         ## 8-byte Reload
	mulxq	%r13, %rdx, %r10
	adcq	%r11, %rdx
	adcq	$0, %r10
	addq	%rcx, %r14
	adcq	%rbx, %r15
	adcq	%r8, %rax
	adcq	%r9, %rdx
	adcq	%rbp, %r10
	adcq	$0, %rsi
	movq	%r15, %rcx
	subq	%r12, %rcx
	movq	%rax, %rbp
	sbbq	-56(%rsp), %rbp         ## 8-byte Folded Reload
	movq	%rdx, %rdi
	sbbq	-64(%rsp), %rdi         ## 8-byte Folded Reload
	movq	%r10, %rbx
	sbbq	%r13, %rbx
	sbbq	$0, %rsi
	testb	$1, %sil
	cmovneq	%rax, %rbp
	movq	-8(%rsp), %rax          ## 8-byte Reload
	movq	%rbp, 8(%rax)
	cmovneq	%r15, %rcx
	movq	%rcx, (%rax)
	cmovneq	%rdx, %rdi
	movq	%rdi, 16(%rax)
	cmovneq	%r10, %rbx
	movq	%rbx, 24(%rax)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
                                        ## -- End function
	.globl	_mcl_fp_addPre4Lbmi2    ## -- Begin function mcl_fp_addPre4Lbmi2
	.p2align	4, 0x90
_mcl_fp_addPre4Lbmi2:                   ## @mcl_fp_addPre4Lbmi2
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
	.globl	_mcl_fp_subPre4Lbmi2    ## -- Begin function mcl_fp_subPre4Lbmi2
	.p2align	4, 0x90
_mcl_fp_subPre4Lbmi2:                   ## @mcl_fp_subPre4Lbmi2
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
	.globl	_mcl_fp_shr1_4Lbmi2     ## -- Begin function mcl_fp_shr1_4Lbmi2
	.p2align	4, 0x90
_mcl_fp_shr1_4Lbmi2:                    ## @mcl_fp_shr1_4Lbmi2
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
	.globl	_mcl_fp_add4Lbmi2       ## -- Begin function mcl_fp_add4Lbmi2
	.p2align	4, 0x90
_mcl_fp_add4Lbmi2:                      ## @mcl_fp_add4Lbmi2
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
	.globl	_mcl_fp_addNF4Lbmi2     ## -- Begin function mcl_fp_addNF4Lbmi2
	.p2align	4, 0x90
_mcl_fp_addNF4Lbmi2:                    ## @mcl_fp_addNF4Lbmi2
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
	.globl	_mcl_fp_sub4Lbmi2       ## -- Begin function mcl_fp_sub4Lbmi2
	.p2align	4, 0x90
_mcl_fp_sub4Lbmi2:                      ## @mcl_fp_sub4Lbmi2
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
	.globl	_mcl_fp_subNF4Lbmi2     ## -- Begin function mcl_fp_subNF4Lbmi2
	.p2align	4, 0x90
_mcl_fp_subNF4Lbmi2:                    ## @mcl_fp_subNF4Lbmi2
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
	.globl	_mcl_fpDbl_add4Lbmi2    ## -- Begin function mcl_fpDbl_add4Lbmi2
	.p2align	4, 0x90
_mcl_fpDbl_add4Lbmi2:                   ## @mcl_fpDbl_add4Lbmi2
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
	.globl	_mcl_fpDbl_sub4Lbmi2    ## -- Begin function mcl_fpDbl_sub4Lbmi2
	.p2align	4, 0x90
_mcl_fpDbl_sub4Lbmi2:                   ## @mcl_fpDbl_sub4Lbmi2
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
	.globl	_mcl_fp_mulUnitPre5Lbmi2 ## -- Begin function mcl_fp_mulUnitPre5Lbmi2
	.p2align	4, 0x90
_mcl_fp_mulUnitPre5Lbmi2:               ## @mcl_fp_mulUnitPre5Lbmi2
## %bb.0:
	pushq	%r14
	pushq	%rbx
	mulxq	32(%rsi), %r8, %r11
	mulxq	24(%rsi), %r9, %rax
	mulxq	16(%rsi), %r10, %rcx
	mulxq	8(%rsi), %r14, %rbx
	mulxq	(%rsi), %rdx, %rsi
	movq	%rdx, (%rdi)
	addq	%r14, %rsi
	movq	%rsi, 8(%rdi)
	adcq	%r10, %rbx
	movq	%rbx, 16(%rdi)
	adcq	%r9, %rcx
	movq	%rcx, 24(%rdi)
	adcq	%r8, %rax
	movq	%rax, 32(%rdi)
	adcq	$0, %r11
	movq	%r11, 40(%rdi)
	popq	%rbx
	popq	%r14
	retq
                                        ## -- End function
	.globl	_mcl_fpDbl_mulPre5Lbmi2 ## -- Begin function mcl_fpDbl_mulPre5Lbmi2
	.p2align	4, 0x90
_mcl_fpDbl_mulPre5Lbmi2:                ## @mcl_fpDbl_mulPre5Lbmi2
## %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	%rdx, -64(%rsp)         ## 8-byte Spill
	movq	(%rsi), %r8
	movq	8(%rsi), %r13
	movq	(%rdx), %rax
	movq	%r8, %rdx
	movq	%r8, -32(%rsp)          ## 8-byte Spill
	mulxq	%rax, %rcx, %r9
	movq	16(%rsi), %rbp
	movq	%rbp, -56(%rsp)         ## 8-byte Spill
	movq	24(%rsi), %rbx
	movq	%rbx, -48(%rsp)         ## 8-byte Spill
	movq	32(%rsi), %rdx
	movq	%rcx, (%rdi)
	movq	%rdi, %r14
	movq	%rdi, -24(%rsp)         ## 8-byte Spill
	movq	%rdx, %r11
	mulxq	%rax, %r15, %r12
	movq	%rbx, %rdx
	mulxq	%rax, %r10, %rbx
	movq	%rbp, %rdx
	mulxq	%rax, %rsi, %rdi
	movq	%r13, %rdx
	movq	%r13, -40(%rsp)         ## 8-byte Spill
	mulxq	%rax, %rax, %rcx
	addq	%r9, %rax
	adcq	%rsi, %rcx
	adcq	%r10, %rdi
	adcq	%r15, %rbx
	adcq	$0, %r12
	movq	-64(%rsp), %r15         ## 8-byte Reload
	movq	8(%r15), %rdx
	mulxq	%r8, %rsi, %rbp
	movq	%rbp, -72(%rsp)         ## 8-byte Spill
	addq	%rax, %rsi
	movq	%rsi, 8(%r14)
	mulxq	%r11, %r8, %rax
	movq	%rax, -80(%rsp)         ## 8-byte Spill
	movq	%r11, %r14
	movq	-48(%rsp), %r11         ## 8-byte Reload
	mulxq	%r11, %rbp, %rax
	movq	%rax, -16(%rsp)         ## 8-byte Spill
	movq	-56(%rsp), %r9          ## 8-byte Reload
	mulxq	%r9, %rsi, %r10
	mulxq	%r13, %rax, %rdx
	adcq	%rcx, %rax
	adcq	%rdi, %rsi
	adcq	%rbx, %rbp
	adcq	%r12, %r8
	setb	%cl
	addq	-72(%rsp), %rax         ## 8-byte Folded Reload
	adcq	%rdx, %rsi
	movzbl	%cl, %r13d
	adcq	%r10, %rbp
	adcq	-16(%rsp), %r8          ## 8-byte Folded Reload
	adcq	-80(%rsp), %r13         ## 8-byte Folded Reload
	movq	16(%r15), %rdx
	movq	%r14, -8(%rsp)          ## 8-byte Spill
	mulxq	%r14, %rcx, %r12
	movq	%rcx, -80(%rsp)         ## 8-byte Spill
	mulxq	%r11, %rcx, %r10
	movq	%rcx, -72(%rsp)         ## 8-byte Spill
	mulxq	%r9, %r15, %rdi
	movq	-40(%rsp), %r11         ## 8-byte Reload
	mulxq	%r11, %r9, %rbx
	mulxq	-32(%rsp), %rdx, %rcx   ## 8-byte Folded Reload
	addq	%r9, %rcx
	adcq	%r15, %rbx
	adcq	-72(%rsp), %rdi         ## 8-byte Folded Reload
	adcq	-80(%rsp), %r10         ## 8-byte Folded Reload
	adcq	$0, %r12
	addq	%rax, %rdx
	movq	-24(%rsp), %rax         ## 8-byte Reload
	movq	%rdx, 16(%rax)
	adcq	%rsi, %rcx
	adcq	%rbp, %rbx
	adcq	%r8, %rdi
	adcq	%r13, %r10
	adcq	$0, %r12
	movq	-64(%rsp), %rax         ## 8-byte Reload
	movq	24(%rax), %rdx
	mulxq	%r14, %rax, %r13
	movq	%rax, -80(%rsp)         ## 8-byte Spill
	mulxq	-48(%rsp), %rbp, %r8    ## 8-byte Folded Reload
	mulxq	-56(%rsp), %r15, %r14   ## 8-byte Folded Reload
	mulxq	%r11, %r9, %rsi
	movq	-32(%rsp), %r11         ## 8-byte Reload
	mulxq	%r11, %rdx, %rax
	addq	%r9, %rax
	adcq	%r15, %rsi
	adcq	%rbp, %r14
	adcq	-80(%rsp), %r8          ## 8-byte Folded Reload
	adcq	$0, %r13
	addq	%rcx, %rdx
	movq	-24(%rsp), %rbp         ## 8-byte Reload
	movq	%rdx, 24(%rbp)
	adcq	%rbx, %rax
	adcq	%rdi, %rsi
	movq	-64(%rsp), %rcx         ## 8-byte Reload
	movq	32(%rcx), %rdx
	adcq	%r10, %r14
	mulxq	-40(%rsp), %rdi, %r10   ## 8-byte Folded Reload
	adcq	%r12, %r8
	mulxq	%r11, %r9, %r15
	adcq	$0, %r13
	addq	%rdi, %r15
	mulxq	-56(%rsp), %rcx, %r11   ## 8-byte Folded Reload
	adcq	%r10, %rcx
	mulxq	-48(%rsp), %rdi, %r10   ## 8-byte Folded Reload
	adcq	%r11, %rdi
	mulxq	-8(%rsp), %rdx, %rbx    ## 8-byte Folded Reload
	adcq	%r10, %rdx
	adcq	$0, %rbx
	addq	%r9, %rax
	movq	%rax, 32(%rbp)
	adcq	%rsi, %r15
	movq	%r15, 40(%rbp)
	adcq	%r14, %rcx
	movq	%rcx, 48(%rbp)
	adcq	%r8, %rdi
	movq	%rdi, 56(%rbp)
	adcq	%r13, %rdx
	movq	%rdx, 64(%rbp)
	adcq	$0, %rbx
	movq	%rbx, 72(%rbp)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
                                        ## -- End function
	.globl	_mcl_fpDbl_sqrPre5Lbmi2 ## -- Begin function mcl_fpDbl_sqrPre5Lbmi2
	.p2align	4, 0x90
_mcl_fpDbl_sqrPre5Lbmi2:                ## @mcl_fpDbl_sqrPre5Lbmi2
## %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	movq	%rdi, -96(%rsp)         ## 8-byte Spill
	movq	32(%rsi), %rdx
	movq	24(%rsi), %rcx
	mulxq	%rcx, %r9, %r11
	movq	16(%rsi), %rax
	mulxq	%rax, %rdi, %r8
	movq	%rdi, -128(%rsp)        ## 8-byte Spill
	movq	%r8, -120(%rsp)         ## 8-byte Spill
	movq	(%rsi), %r10
	movq	8(%rsi), %r13
	mulxq	%r13, %r14, %r15
	movq	%r14, -56(%rsp)         ## 8-byte Spill
	mulxq	%r10, %rsi, %rbx
	movq	%rsi, -112(%rsp)        ## 8-byte Spill
	mulxq	%rdx, %rbp, %rdx
	movq	%rbx, %rsi
	addq	%r14, %rsi
	movq	%rsi, -8(%rsp)          ## 8-byte Spill
	movq	%r15, %rsi
	adcq	%rdi, %rsi
	movq	%rsi, (%rsp)            ## 8-byte Spill
	movq	%r8, %rsi
	adcq	%r9, %rsi
	movq	%rsi, 8(%rsp)           ## 8-byte Spill
	adcq	%r11, %rbp
	movq	%rbp, 16(%rsp)          ## 8-byte Spill
	movq	%r11, %r14
	adcq	$0, %rdx
	movq	%rdx, 24(%rsp)          ## 8-byte Spill
	movq	%rcx, %rdx
	mulxq	%rax, %r11, %r12
	mulxq	%r13, %rdi, %r8
	mulxq	%r10, %rdx, %rbp
	movq	%rdx, -64(%rsp)         ## 8-byte Spill
	movq	%rcx, %rdx
	mulxq	%rcx, %rdx, %rcx
	movq	%rbp, %rsi
	addq	%rdi, %rsi
	movq	%rsi, -48(%rsp)         ## 8-byte Spill
	movq	%r8, %rsi
	adcq	%r11, %rsi
	movq	%rsi, -32(%rsp)         ## 8-byte Spill
	movq	%r12, %rsi
	adcq	%r12, %rdx
	movq	%rdx, -24(%rsp)         ## 8-byte Spill
	adcq	%r9, %rcx
	movq	%rcx, -16(%rsp)         ## 8-byte Spill
	adcq	$0, %r14
	movq	%r14, -40(%rsp)         ## 8-byte Spill
	movq	%rax, %rdx
	mulxq	%r13, %r14, %r12
	mulxq	%r10, %rcx, %r9
	movq	%rcx, -104(%rsp)        ## 8-byte Spill
	mulxq	%rax, %rdx, %rax
	movq	%r9, %rcx
	addq	%r14, %rcx
	movq	%rcx, -88(%rsp)         ## 8-byte Spill
	adcq	%r12, %rdx
	movq	%rdx, -80(%rsp)         ## 8-byte Spill
	adcq	%r11, %rax
	movq	%rax, -72(%rsp)         ## 8-byte Spill
	adcq	-128(%rsp), %rsi        ## 8-byte Folded Reload
	movq	%rsi, -128(%rsp)        ## 8-byte Spill
	adcq	$0, -120(%rsp)          ## 8-byte Folded Spill
	movq	%r13, %rdx
	mulxq	%r13, %r11, %rcx
	mulxq	%r10, %r13, %rsi
	addq	%rsi, %r11
	adcq	%r14, %rcx
	adcq	%rdi, %r12
	movq	%r8, %r14
	adcq	-56(%rsp), %r14         ## 8-byte Folded Reload
	movq	%r10, %rdx
	mulxq	%r10, %rax, %rdx
	movq	-96(%rsp), %rdi         ## 8-byte Reload
	movq	%rax, (%rdi)
	adcq	$0, %r15
	addq	%r13, %rdx
	movq	-104(%rsp), %rax        ## 8-byte Reload
	adcq	%rax, %rsi
	movq	-64(%rsp), %r8          ## 8-byte Reload
	adcq	%r8, %r9
	adcq	-112(%rsp), %rbp        ## 8-byte Folded Reload
	adcq	$0, %rbx
	addq	%r13, %rdx
	adcq	%r11, %rsi
	adcq	%rcx, %r9
	adcq	%r12, %rbp
	adcq	%r14, %rbx
	adcq	$0, %r15
	addq	%rax, %rsi
	adcq	-88(%rsp), %r9          ## 8-byte Folded Reload
	adcq	-80(%rsp), %rbp         ## 8-byte Folded Reload
	adcq	-72(%rsp), %rbx         ## 8-byte Folded Reload
	adcq	-128(%rsp), %r15        ## 8-byte Folded Reload
	movq	-120(%rsp), %rax        ## 8-byte Reload
	adcq	$0, %rax
	addq	%r8, %r9
	movq	%rdx, 8(%rdi)
	movq	%rsi, 16(%rdi)
	adcq	-48(%rsp), %rbp         ## 8-byte Folded Reload
	movq	%r9, 24(%rdi)
	adcq	-32(%rsp), %rbx         ## 8-byte Folded Reload
	adcq	-24(%rsp), %r15         ## 8-byte Folded Reload
	adcq	-16(%rsp), %rax         ## 8-byte Folded Reload
	movq	%rax, %rdx
	movq	-40(%rsp), %rax         ## 8-byte Reload
	adcq	$0, %rax
	addq	-112(%rsp), %rbp        ## 8-byte Folded Reload
	movq	%rbp, 32(%rdi)
	adcq	-8(%rsp), %rbx          ## 8-byte Folded Reload
	movq	%rbx, 40(%rdi)
	adcq	(%rsp), %r15            ## 8-byte Folded Reload
	movq	%r15, 48(%rdi)
	adcq	8(%rsp), %rdx           ## 8-byte Folded Reload
	movq	%rdx, 56(%rdi)
	adcq	16(%rsp), %rax          ## 8-byte Folded Reload
	movq	%rax, 64(%rdi)
	movq	24(%rsp), %rax          ## 8-byte Reload
	adcq	$0, %rax
	movq	%rax, 72(%rdi)
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
                                        ## -- End function
	.globl	_mcl_fp_mont5Lbmi2      ## -- Begin function mcl_fp_mont5Lbmi2
	.p2align	4, 0x90
_mcl_fp_mont5Lbmi2:                     ## @mcl_fp_mont5Lbmi2
## %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	%rdx, -96(%rsp)         ## 8-byte Spill
	movq	%rdi, -8(%rsp)          ## 8-byte Spill
	movq	32(%rsi), %rdi
	movq	%rdi, -104(%rsp)        ## 8-byte Spill
	movq	(%rdx), %rax
	movq	%rdi, %rdx
	mulxq	%rax, %r9, %rdi
	movq	24(%rsi), %rdx
	movq	%rdx, -24(%rsp)         ## 8-byte Spill
	mulxq	%rax, %r15, %r12
	movq	16(%rsi), %rdx
	movq	%rdx, -32(%rsp)         ## 8-byte Spill
	mulxq	%rax, %r8, %r14
	movq	(%rsi), %rbp
	movq	%rbp, -40(%rsp)         ## 8-byte Spill
	movq	8(%rsi), %rdx
	movq	%rdx, -48(%rsp)         ## 8-byte Spill
	mulxq	%rax, %rbx, %r11
	movq	%rbp, %rdx
	mulxq	%rax, %r13, %rbp
	addq	%rbx, %rbp
	adcq	%r8, %r11
	adcq	%r15, %r14
	adcq	%r9, %r12
	adcq	$0, %rdi
	movq	%rdi, -120(%rsp)        ## 8-byte Spill
	movq	-8(%rcx), %rdx
	movq	%rdx, -16(%rsp)         ## 8-byte Spill
	imulq	%r13, %rdx
	movq	32(%rcx), %rax
	movq	%rax, -56(%rsp)         ## 8-byte Spill
	mulxq	%rax, %rax, %r9
	movq	%rax, -112(%rsp)        ## 8-byte Spill
	movq	24(%rcx), %rax
	movq	%rax, -64(%rsp)         ## 8-byte Spill
	mulxq	%rax, %r15, %rdi
	movq	8(%rcx), %rax
	movq	%rax, -72(%rsp)         ## 8-byte Spill
	mulxq	%rax, %r8, %r10
	movq	(%rcx), %rax
	movq	%rax, -80(%rsp)         ## 8-byte Spill
	mulxq	%rax, %rsi, %rbx
	addq	%r8, %rbx
	movq	16(%rcx), %rax
	movq	%rax, -88(%rsp)         ## 8-byte Spill
	mulxq	%rax, %rax, %rcx
	adcq	%r10, %rax
	adcq	%r15, %rcx
	adcq	-112(%rsp), %rdi        ## 8-byte Folded Reload
	adcq	$0, %r9
	addq	%r13, %rsi
	adcq	%rbp, %rbx
	adcq	%r11, %rax
	adcq	%r14, %rcx
	adcq	%r12, %rdi
	adcq	-120(%rsp), %r9         ## 8-byte Folded Reload
	movq	-96(%rsp), %rdx         ## 8-byte Reload
	movq	8(%rdx), %rdx
	mulxq	-104(%rsp), %rsi, %r15  ## 8-byte Folded Reload
	movq	%rsi, -120(%rsp)        ## 8-byte Spill
	mulxq	-24(%rsp), %r13, %r11   ## 8-byte Folded Reload
	mulxq	-32(%rsp), %r12, %r10   ## 8-byte Folded Reload
	mulxq	-48(%rsp), %rsi, %r8    ## 8-byte Folded Reload
	mulxq	-40(%rsp), %r14, %rbp   ## 8-byte Folded Reload
	setb	%dl
	addq	%rsi, %rbp
	adcq	%r12, %r8
	adcq	%r13, %r10
	adcq	-120(%rsp), %r11        ## 8-byte Folded Reload
	adcq	$0, %r15
	addq	%rbx, %r14
	adcq	%rax, %rbp
	adcq	%rcx, %r8
	adcq	%rdi, %r10
	adcq	%r9, %r11
	movzbl	%dl, %eax
	adcq	%rax, %r15
	setb	-120(%rsp)              ## 1-byte Folded Spill
	movq	-16(%rsp), %rdx         ## 8-byte Reload
	imulq	%r14, %rdx
	mulxq	-56(%rsp), %rax, %rbx   ## 8-byte Folded Reload
	movq	%rax, -112(%rsp)        ## 8-byte Spill
	mulxq	-64(%rsp), %r13, %r9    ## 8-byte Folded Reload
	mulxq	-88(%rsp), %r12, %rdi   ## 8-byte Folded Reload
	mulxq	-72(%rsp), %rcx, %rsi   ## 8-byte Folded Reload
	mulxq	-80(%rsp), %rdx, %rax   ## 8-byte Folded Reload
	addq	%rcx, %rax
	adcq	%r12, %rsi
	adcq	%r13, %rdi
	adcq	-112(%rsp), %r9         ## 8-byte Folded Reload
	adcq	$0, %rbx
	addq	%r14, %rdx
	adcq	%rbp, %rax
	adcq	%r8, %rsi
	adcq	%r10, %rdi
	adcq	%r11, %r9
	adcq	%r15, %rbx
	movzbl	-120(%rsp), %r15d       ## 1-byte Folded Reload
	adcq	$0, %r15
	movq	-96(%rsp), %rcx         ## 8-byte Reload
	movq	16(%rcx), %rdx
	mulxq	-104(%rsp), %rcx, %r12  ## 8-byte Folded Reload
	movq	%rcx, -120(%rsp)        ## 8-byte Spill
	mulxq	-24(%rsp), %rcx, %r10   ## 8-byte Folded Reload
	movq	%rcx, -112(%rsp)        ## 8-byte Spill
	mulxq	-32(%rsp), %r13, %r11   ## 8-byte Folded Reload
	mulxq	-48(%rsp), %r8, %rbp    ## 8-byte Folded Reload
	mulxq	-40(%rsp), %r14, %rcx   ## 8-byte Folded Reload
	addq	%r8, %rcx
	adcq	%r13, %rbp
	adcq	-112(%rsp), %r11        ## 8-byte Folded Reload
	adcq	-120(%rsp), %r10        ## 8-byte Folded Reload
	adcq	$0, %r12
	addq	%rax, %r14
	adcq	%rsi, %rcx
	adcq	%rdi, %rbp
	adcq	%r9, %r11
	adcq	%rbx, %r10
	adcq	%r15, %r12
	setb	-120(%rsp)              ## 1-byte Folded Spill
	movq	-16(%rsp), %rdx         ## 8-byte Reload
	imulq	%r14, %rdx
	mulxq	-56(%rsp), %rax, %r9    ## 8-byte Folded Reload
	movq	%rax, -112(%rsp)        ## 8-byte Spill
	mulxq	-64(%rsp), %r13, %r15   ## 8-byte Folded Reload
	mulxq	-88(%rsp), %r8, %rsi    ## 8-byte Folded Reload
	mulxq	-72(%rsp), %rax, %rbx   ## 8-byte Folded Reload
	mulxq	-80(%rsp), %rdx, %rdi   ## 8-byte Folded Reload
	addq	%rax, %rdi
	adcq	%r8, %rbx
	adcq	%r13, %rsi
	adcq	-112(%rsp), %r15        ## 8-byte Folded Reload
	adcq	$0, %r9
	addq	%r14, %rdx
	adcq	%rcx, %rdi
	adcq	%rbp, %rbx
	adcq	%r11, %rsi
	adcq	%r10, %r15
	adcq	%r12, %r9
	movzbl	-120(%rsp), %r14d       ## 1-byte Folded Reload
	adcq	$0, %r14
	movq	-96(%rsp), %rax         ## 8-byte Reload
	movq	24(%rax), %rdx
	mulxq	-104(%rsp), %rax, %r12  ## 8-byte Folded Reload
	movq	%rax, -120(%rsp)        ## 8-byte Spill
	mulxq	-24(%rsp), %rax, %r10   ## 8-byte Folded Reload
	movq	%rax, -112(%rsp)        ## 8-byte Spill
	mulxq	-32(%rsp), %r13, %rcx   ## 8-byte Folded Reload
	mulxq	-48(%rsp), %r8, %rbp    ## 8-byte Folded Reload
	mulxq	-40(%rsp), %r11, %rax   ## 8-byte Folded Reload
	addq	%r8, %rax
	adcq	%r13, %rbp
	adcq	-112(%rsp), %rcx        ## 8-byte Folded Reload
	adcq	-120(%rsp), %r10        ## 8-byte Folded Reload
	adcq	$0, %r12
	addq	%rdi, %r11
	adcq	%rbx, %rax
	adcq	%rsi, %rbp
	adcq	%r15, %rcx
	adcq	%r9, %r10
	adcq	%r14, %r12
	setb	-120(%rsp)              ## 1-byte Folded Spill
	movq	-16(%rsp), %rdx         ## 8-byte Reload
	imulq	%r11, %rdx
	mulxq	-56(%rsp), %rsi, %r9    ## 8-byte Folded Reload
	movq	%rsi, -112(%rsp)        ## 8-byte Spill
	mulxq	-64(%rsp), %r13, %r14   ## 8-byte Folded Reload
	mulxq	-88(%rsp), %r15, %rsi   ## 8-byte Folded Reload
	mulxq	-72(%rsp), %r8, %rbx    ## 8-byte Folded Reload
	mulxq	-80(%rsp), %rdx, %rdi   ## 8-byte Folded Reload
	addq	%r8, %rdi
	adcq	%r15, %rbx
	adcq	%r13, %rsi
	adcq	-112(%rsp), %r14        ## 8-byte Folded Reload
	adcq	$0, %r9
	addq	%r11, %rdx
	adcq	%rax, %rdi
	adcq	%rbp, %rbx
	adcq	%rcx, %rsi
	adcq	%r10, %r14
	adcq	%r12, %r9
	movzbl	-120(%rsp), %r8d        ## 1-byte Folded Reload
	adcq	$0, %r8
	movq	-96(%rsp), %rax         ## 8-byte Reload
	movq	32(%rax), %rdx
	mulxq	-104(%rsp), %rax, %r12  ## 8-byte Folded Reload
	movq	%rax, -96(%rsp)         ## 8-byte Spill
	mulxq	-24(%rsp), %rax, %r10   ## 8-byte Folded Reload
	movq	%rax, -104(%rsp)        ## 8-byte Spill
	mulxq	-32(%rsp), %r13, %r15   ## 8-byte Folded Reload
	mulxq	-48(%rsp), %rcx, %rbp   ## 8-byte Folded Reload
	mulxq	-40(%rsp), %r11, %rax   ## 8-byte Folded Reload
	addq	%rcx, %rax
	adcq	%r13, %rbp
	adcq	-104(%rsp), %r15        ## 8-byte Folded Reload
	adcq	-96(%rsp), %r10         ## 8-byte Folded Reload
	adcq	$0, %r12
	addq	%rdi, %r11
	adcq	%rbx, %rax
	adcq	%rsi, %rbp
	adcq	%r14, %r15
	adcq	%r9, %r10
	adcq	%r8, %r12
	setb	%r8b
	movq	-16(%rsp), %rdx         ## 8-byte Reload
	imulq	%r11, %rdx
	mulxq	-80(%rsp), %r9, %rcx    ## 8-byte Folded Reload
	mulxq	-72(%rsp), %r13, %rdi   ## 8-byte Folded Reload
	addq	%rcx, %r13
	mulxq	-88(%rsp), %rcx, %rbx   ## 8-byte Folded Reload
	adcq	%rdi, %rcx
	mulxq	-64(%rsp), %rdi, %r14   ## 8-byte Folded Reload
	adcq	%rbx, %rdi
	mulxq	-56(%rsp), %rbx, %rdx   ## 8-byte Folded Reload
	adcq	%r14, %rbx
	adcq	$0, %rdx
	addq	%r11, %r9
	adcq	%rax, %r13
	adcq	%rbp, %rcx
	adcq	%r15, %rdi
	adcq	%r10, %rbx
	movzbl	%r8b, %r8d
	adcq	%r12, %rdx
	adcq	$0, %r8
	movq	%r13, %rsi
	subq	-80(%rsp), %rsi         ## 8-byte Folded Reload
	movq	%rcx, %rbp
	sbbq	-72(%rsp), %rbp         ## 8-byte Folded Reload
	movq	%rdi, %rax
	sbbq	-88(%rsp), %rax         ## 8-byte Folded Reload
	movq	%rbx, %r9
	sbbq	-64(%rsp), %r9          ## 8-byte Folded Reload
	movq	%rdx, %r10
	sbbq	-56(%rsp), %r10         ## 8-byte Folded Reload
	sbbq	$0, %r8
	testb	$1, %r8b
	cmovneq	%rcx, %rbp
	movq	-8(%rsp), %rcx          ## 8-byte Reload
	movq	%rbp, 8(%rcx)
	cmovneq	%r13, %rsi
	movq	%rsi, (%rcx)
	cmovneq	%rdi, %rax
	movq	%rax, 16(%rcx)
	cmovneq	%rbx, %r9
	movq	%r9, 24(%rcx)
	cmovneq	%rdx, %r10
	movq	%r10, 32(%rcx)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
                                        ## -- End function
	.globl	_mcl_fp_montNF5Lbmi2    ## -- Begin function mcl_fp_montNF5Lbmi2
	.p2align	4, 0x90
_mcl_fp_montNF5Lbmi2:                   ## @mcl_fp_montNF5Lbmi2
## %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	%rdi, -8(%rsp)          ## 8-byte Spill
	movq	(%rsi), %rdi
	movq	%rdi, -40(%rsp)         ## 8-byte Spill
	movq	8(%rsi), %rbp
	movq	%rbp, -96(%rsp)         ## 8-byte Spill
	movq	(%rdx), %rax
	movq	%rdx, %r12
	movq	%rdx, -24(%rsp)         ## 8-byte Spill
	movq	%rbp, %rdx
	mulxq	%rax, %rbp, %r9
	movq	%rdi, %rdx
	mulxq	%rax, %r8, %r10
	movq	16(%rsi), %rdx
	movq	%rdx, -104(%rsp)        ## 8-byte Spill
	addq	%rbp, %r10
	mulxq	%rax, %rbp, %rbx
	adcq	%r9, %rbp
	movq	24(%rsi), %rdx
	movq	%rdx, -64(%rsp)         ## 8-byte Spill
	mulxq	%rax, %r15, %r9
	adcq	%rbx, %r15
	movq	32(%rsi), %rdx
	movq	%rdx, -72(%rsp)         ## 8-byte Spill
	mulxq	%rax, %rax, %r11
	adcq	%r9, %rax
	adcq	$0, %r11
	movq	-8(%rcx), %rdx
	movq	%rdx, -80(%rsp)         ## 8-byte Spill
	imulq	%r8, %rdx
	movq	(%rcx), %rsi
	movq	%rsi, -32(%rsp)         ## 8-byte Spill
	mulxq	%rsi, %rbx, %r14
	addq	%r8, %rbx
	movq	8(%rcx), %rsi
	movq	%rsi, -16(%rsp)         ## 8-byte Spill
	mulxq	%rsi, %rbx, %r13
	adcq	%r10, %rbx
	movq	16(%rcx), %rsi
	movq	%rsi, -56(%rsp)         ## 8-byte Spill
	mulxq	%rsi, %r10, %rdi
	adcq	%rbp, %r10
	movq	24(%rcx), %rsi
	movq	%rsi, -48(%rsp)         ## 8-byte Spill
	mulxq	%rsi, %r9, %rbp
	adcq	%r15, %r9
	movq	32(%rcx), %rcx
	movq	%rcx, -88(%rsp)         ## 8-byte Spill
	mulxq	%rcx, %r8, %rcx
	adcq	%rax, %r8
	adcq	$0, %r11
	addq	%r14, %rbx
	adcq	%r13, %r10
	adcq	%rdi, %r9
	adcq	%rbp, %r8
	adcq	%rcx, %r11
	movq	8(%r12), %rdx
	mulxq	-96(%rsp), %rcx, %rsi   ## 8-byte Folded Reload
	movq	-40(%rsp), %r12         ## 8-byte Reload
	mulxq	%r12, %r14, %rax
	addq	%rcx, %rax
	mulxq	-104(%rsp), %rcx, %rdi  ## 8-byte Folded Reload
	adcq	%rsi, %rcx
	mulxq	-64(%rsp), %rsi, %r15   ## 8-byte Folded Reload
	adcq	%rdi, %rsi
	mulxq	-72(%rsp), %rdi, %rbp   ## 8-byte Folded Reload
	adcq	%r15, %rdi
	adcq	$0, %rbp
	addq	%rbx, %r14
	adcq	%r10, %rax
	adcq	%r9, %rcx
	adcq	%r8, %rsi
	adcq	%r11, %rdi
	adcq	$0, %rbp
	movq	-80(%rsp), %rdx         ## 8-byte Reload
	imulq	%r14, %rdx
	mulxq	-32(%rsp), %rbx, %r15   ## 8-byte Folded Reload
	addq	%r14, %rbx
	mulxq	-16(%rsp), %r8, %rbx    ## 8-byte Folded Reload
	adcq	%rax, %r8
	movq	-56(%rsp), %r13         ## 8-byte Reload
	mulxq	%r13, %r9, %rax
	adcq	%rcx, %r9
	mulxq	-48(%rsp), %r10, %rcx   ## 8-byte Folded Reload
	adcq	%rsi, %r10
	mulxq	-88(%rsp), %r11, %rdx   ## 8-byte Folded Reload
	adcq	%rdi, %r11
	adcq	$0, %rbp
	addq	%r15, %r8
	adcq	%rbx, %r9
	adcq	%rax, %r10
	adcq	%rcx, %r11
	adcq	%rdx, %rbp
	movq	-24(%rsp), %rax         ## 8-byte Reload
	movq	16(%rax), %rdx
	mulxq	-96(%rsp), %rcx, %rax   ## 8-byte Folded Reload
	mulxq	%r12, %r14, %rsi
	addq	%rcx, %rsi
	mulxq	-104(%rsp), %rbx, %rcx  ## 8-byte Folded Reload
	adcq	%rax, %rbx
	mulxq	-64(%rsp), %rdi, %r15   ## 8-byte Folded Reload
	adcq	%rcx, %rdi
	mulxq	-72(%rsp), %rcx, %rax   ## 8-byte Folded Reload
	adcq	%r15, %rcx
	adcq	$0, %rax
	addq	%r8, %r14
	adcq	%r9, %rsi
	adcq	%r10, %rbx
	adcq	%r11, %rdi
	adcq	%rbp, %rcx
	adcq	$0, %rax
	movq	-80(%rsp), %rdx         ## 8-byte Reload
	imulq	%r14, %rdx
	movq	-32(%rsp), %r12         ## 8-byte Reload
	mulxq	%r12, %rbp, %r15
	addq	%r14, %rbp
	mulxq	-16(%rsp), %r8, %rbp    ## 8-byte Folded Reload
	adcq	%rsi, %r8
	mulxq	%r13, %r9, %rsi
	adcq	%rbx, %r9
	movq	-48(%rsp), %r13         ## 8-byte Reload
	mulxq	%r13, %r10, %rbx
	adcq	%rdi, %r10
	mulxq	-88(%rsp), %r11, %rdx   ## 8-byte Folded Reload
	adcq	%rcx, %r11
	adcq	$0, %rax
	addq	%r15, %r8
	adcq	%rbp, %r9
	adcq	%rsi, %r10
	adcq	%rbx, %r11
	adcq	%rdx, %rax
	movq	-24(%rsp), %rcx         ## 8-byte Reload
	movq	24(%rcx), %rdx
	mulxq	-96(%rsp), %rdi, %rsi   ## 8-byte Folded Reload
	mulxq	-40(%rsp), %r14, %rcx   ## 8-byte Folded Reload
	addq	%rdi, %rcx
	mulxq	-104(%rsp), %rbx, %rdi  ## 8-byte Folded Reload
	adcq	%rsi, %rbx
	mulxq	-64(%rsp), %rsi, %r15   ## 8-byte Folded Reload
	adcq	%rdi, %rsi
	mulxq	-72(%rsp), %rdi, %rbp   ## 8-byte Folded Reload
	adcq	%r15, %rdi
	adcq	$0, %rbp
	addq	%r8, %r14
	adcq	%r9, %rcx
	adcq	%r10, %rbx
	adcq	%r11, %rsi
	adcq	%rax, %rdi
	adcq	$0, %rbp
	movq	-80(%rsp), %rdx         ## 8-byte Reload
	imulq	%r14, %rdx
	mulxq	%r12, %rax, %r11
	addq	%r14, %rax
	movq	-16(%rsp), %r12         ## 8-byte Reload
	mulxq	%r12, %r8, %r14
	adcq	%rcx, %r8
	mulxq	-56(%rsp), %r9, %rax    ## 8-byte Folded Reload
	adcq	%rbx, %r9
	mulxq	%r13, %r10, %rbx
	adcq	%rsi, %r10
	mulxq	-88(%rsp), %rcx, %rdx   ## 8-byte Folded Reload
	adcq	%rdi, %rcx
	adcq	$0, %rbp
	addq	%r11, %r8
	adcq	%r14, %r9
	adcq	%rax, %r10
	adcq	%rbx, %rcx
	adcq	%rdx, %rbp
	movq	-24(%rsp), %rax         ## 8-byte Reload
	movq	32(%rax), %rdx
	mulxq	-96(%rsp), %rdi, %rbx   ## 8-byte Folded Reload
	mulxq	-40(%rsp), %r14, %rsi   ## 8-byte Folded Reload
	addq	%rdi, %rsi
	mulxq	-104(%rsp), %rdi, %rax  ## 8-byte Folded Reload
	adcq	%rbx, %rdi
	mulxq	-64(%rsp), %rbx, %r15   ## 8-byte Folded Reload
	adcq	%rax, %rbx
	mulxq	-72(%rsp), %r11, %rax   ## 8-byte Folded Reload
	adcq	%r15, %r11
	adcq	$0, %rax
	addq	%r8, %r14
	adcq	%r9, %rsi
	adcq	%r10, %rdi
	adcq	%rcx, %rbx
	adcq	%rbp, %r11
	adcq	$0, %rax
	movq	-80(%rsp), %rdx         ## 8-byte Reload
	imulq	%r14, %rdx
	movq	-32(%rsp), %r13         ## 8-byte Reload
	mulxq	%r13, %rcx, %rbp
	movq	%rbp, -96(%rsp)         ## 8-byte Spill
	addq	%r14, %rcx
	movq	%r12, %r10
	mulxq	%r12, %r14, %rcx
	movq	%rcx, -104(%rsp)        ## 8-byte Spill
	adcq	%rsi, %r14
	movq	-56(%rsp), %r8          ## 8-byte Reload
	mulxq	%r8, %rcx, %rbp
	adcq	%rdi, %rcx
	movq	-48(%rsp), %r9          ## 8-byte Reload
	mulxq	%r9, %r15, %rdi
	adcq	%rbx, %r15
	movq	-88(%rsp), %rbx         ## 8-byte Reload
	mulxq	%rbx, %r12, %rdx
	adcq	%r11, %r12
	adcq	$0, %rax
	addq	-96(%rsp), %r14         ## 8-byte Folded Reload
	adcq	-104(%rsp), %rcx        ## 8-byte Folded Reload
	adcq	%rbp, %r15
	adcq	%rdi, %r12
	adcq	%rdx, %rax
	movq	%r14, %rdi
	subq	%r13, %rdi
	movq	%rcx, %rbp
	sbbq	%r10, %rbp
	movq	%r15, %rsi
	sbbq	%r8, %rsi
	movq	%r12, %r8
	sbbq	%r9, %r8
	movq	%rax, %rdx
	sbbq	%rbx, %rdx
	movq	%rdx, %rbx
	sarq	$63, %rbx
	cmovsq	%rcx, %rbp
	movq	-8(%rsp), %rcx          ## 8-byte Reload
	movq	%rbp, 8(%rcx)
	cmovsq	%r14, %rdi
	movq	%rdi, (%rcx)
	cmovsq	%r15, %rsi
	movq	%rsi, 16(%rcx)
	cmovsq	%r12, %r8
	movq	%r8, 24(%rcx)
	cmovsq	%rax, %rdx
	movq	%rdx, 32(%rcx)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
                                        ## -- End function
	.globl	_mcl_fp_montRed5Lbmi2   ## -- Begin function mcl_fp_montRed5Lbmi2
	.p2align	4, 0x90
_mcl_fp_montRed5Lbmi2:                  ## @mcl_fp_montRed5Lbmi2
## %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	%rdx, %rcx
	movq	%rdi, -8(%rsp)          ## 8-byte Spill
	movq	-8(%rdx), %r15
	movq	(%rsi), %r11
	movq	%r11, %rdx
	imulq	%r15, %rdx
	movq	32(%rcx), %rax
	movq	%rax, -80(%rsp)         ## 8-byte Spill
	mulxq	%rax, %r8, %r13
	movq	24(%rcx), %rax
	movq	%rax, -64(%rsp)         ## 8-byte Spill
	mulxq	%rax, %r10, %r14
	movq	16(%rcx), %rax
	movq	%rax, -88(%rsp)         ## 8-byte Spill
	mulxq	%rax, %rdi, %rbp
	movq	(%rcx), %rbx
	movq	%rbx, -56(%rsp)         ## 8-byte Spill
	movq	8(%rcx), %rax
	movq	%rax, -48(%rsp)         ## 8-byte Spill
	mulxq	%rax, %rax, %r9
	mulxq	%rbx, %rdx, %rcx
	addq	%rax, %rcx
	adcq	%rdi, %r9
	adcq	%r10, %rbp
	adcq	%r8, %r14
	adcq	$0, %r13
	addq	%r11, %rdx
	movq	72(%rsi), %rax
	movq	64(%rsi), %rdx
	adcq	8(%rsi), %rcx
	adcq	16(%rsi), %r9
	adcq	24(%rsi), %rbp
	adcq	32(%rsi), %r14
	adcq	40(%rsi), %r13
	movq	56(%rsi), %rdi
	movq	48(%rsi), %r12
	adcq	$0, %r12
	adcq	$0, %rdi
	movq	%rdi, -72(%rsp)         ## 8-byte Spill
	adcq	$0, %rdx
	movq	%rdx, -32(%rsp)         ## 8-byte Spill
	adcq	$0, %rax
	movq	%rax, -40(%rsp)         ## 8-byte Spill
	setb	-96(%rsp)               ## 1-byte Folded Spill
	movq	%r15, -24(%rsp)         ## 8-byte Spill
	movq	%r15, %rdx
	imulq	%rcx, %rdx
	mulxq	-80(%rsp), %rax, %r11   ## 8-byte Folded Reload
	movq	%rax, -104(%rsp)        ## 8-byte Spill
	mulxq	-64(%rsp), %rax, %r10   ## 8-byte Folded Reload
	movq	%rax, -16(%rsp)         ## 8-byte Spill
	mulxq	-88(%rsp), %rbx, %r8    ## 8-byte Folded Reload
	mulxq	-48(%rsp), %rsi, %rdi   ## 8-byte Folded Reload
	mulxq	-56(%rsp), %rdx, %rax   ## 8-byte Folded Reload
	addq	%rsi, %rax
	adcq	%rbx, %rdi
	adcq	-16(%rsp), %r8          ## 8-byte Folded Reload
	adcq	-104(%rsp), %r10        ## 8-byte Folded Reload
	adcq	$0, %r11
	addq	%rcx, %rdx
	adcq	%r9, %rax
	adcq	%rbp, %rdi
	adcq	%r14, %r8
	adcq	%r13, %r10
	adcq	%r12, %r11
	adcq	$0, -72(%rsp)           ## 8-byte Folded Spill
	adcq	$0, -32(%rsp)           ## 8-byte Folded Spill
	adcq	$0, -40(%rsp)           ## 8-byte Folded Spill
	movzbl	-96(%rsp), %esi         ## 1-byte Folded Reload
	adcq	$0, %rsi
	movq	%r15, %rdx
	imulq	%rax, %rdx
	mulxq	-80(%rsp), %rcx, %r13   ## 8-byte Folded Reload
	movq	%rcx, -96(%rsp)         ## 8-byte Spill
	movq	-64(%rsp), %r15         ## 8-byte Reload
	mulxq	%r15, %rcx, %r14
	movq	%rcx, -104(%rsp)        ## 8-byte Spill
	mulxq	-88(%rsp), %r12, %rbp   ## 8-byte Folded Reload
	mulxq	-48(%rsp), %r9, %rbx    ## 8-byte Folded Reload
	mulxq	-56(%rsp), %rdx, %rcx   ## 8-byte Folded Reload
	addq	%r9, %rcx
	adcq	%r12, %rbx
	adcq	-104(%rsp), %rbp        ## 8-byte Folded Reload
	adcq	-96(%rsp), %r14         ## 8-byte Folded Reload
	adcq	$0, %r13
	addq	%rax, %rdx
	adcq	%rdi, %rcx
	adcq	%r8, %rbx
	adcq	%r10, %rbp
	adcq	%r11, %r14
	adcq	-72(%rsp), %r13         ## 8-byte Folded Reload
	adcq	$0, -32(%rsp)           ## 8-byte Folded Spill
	adcq	$0, -40(%rsp)           ## 8-byte Folded Spill
	adcq	$0, %rsi
	movq	-24(%rsp), %rdx         ## 8-byte Reload
	imulq	%rcx, %rdx
	mulxq	-80(%rsp), %rax, %r12   ## 8-byte Folded Reload
	movq	%rax, -72(%rsp)         ## 8-byte Spill
	mulxq	%r15, %rax, %r10
	movq	%rax, -96(%rsp)         ## 8-byte Spill
	mulxq	-88(%rsp), %rax, %r11   ## 8-byte Folded Reload
	movq	%rax, -104(%rsp)        ## 8-byte Spill
	movq	-48(%rsp), %r9          ## 8-byte Reload
	mulxq	%r9, %r8, %r15
	movq	-56(%rsp), %rax         ## 8-byte Reload
	mulxq	%rax, %rdx, %rdi
	addq	%r8, %rdi
	adcq	-104(%rsp), %r15        ## 8-byte Folded Reload
	adcq	-96(%rsp), %r11         ## 8-byte Folded Reload
	adcq	-72(%rsp), %r10         ## 8-byte Folded Reload
	adcq	$0, %r12
	addq	%rcx, %rdx
	adcq	%rbx, %rdi
	adcq	%rbp, %r15
	adcq	%r14, %r11
	adcq	%r13, %r10
	adcq	-32(%rsp), %r12         ## 8-byte Folded Reload
	adcq	$0, -40(%rsp)           ## 8-byte Folded Spill
	adcq	$0, %rsi
	movq	-24(%rsp), %rdx         ## 8-byte Reload
	imulq	%rdi, %rdx
	mulxq	%rax, %r8, %rbp
	mulxq	%r9, %rcx, %rbx
	addq	%rbp, %rcx
	mulxq	-88(%rsp), %rax, %r14   ## 8-byte Folded Reload
	adcq	%rbx, %rax
	mulxq	-64(%rsp), %rbp, %r9    ## 8-byte Folded Reload
	adcq	%r14, %rbp
	mulxq	-80(%rsp), %r13, %r14   ## 8-byte Folded Reload
	adcq	%r9, %r13
	adcq	$0, %r14
	addq	%rdi, %r8
	adcq	%r15, %rcx
	adcq	%r11, %rax
	adcq	%r10, %rbp
	adcq	%r12, %r13
	adcq	-40(%rsp), %r14         ## 8-byte Folded Reload
	adcq	$0, %rsi
	movq	%rcx, %rdi
	subq	-56(%rsp), %rdi         ## 8-byte Folded Reload
	movq	%rax, %rdx
	sbbq	-48(%rsp), %rdx         ## 8-byte Folded Reload
	movq	%rbp, %rbx
	sbbq	-88(%rsp), %rbx         ## 8-byte Folded Reload
	movq	%r13, %r8
	sbbq	-64(%rsp), %r8          ## 8-byte Folded Reload
	movq	%r14, %r9
	sbbq	-80(%rsp), %r9          ## 8-byte Folded Reload
	sbbq	$0, %rsi
	testb	$1, %sil
	cmovneq	%rax, %rdx
	movq	-8(%rsp), %rax          ## 8-byte Reload
	movq	%rdx, 8(%rax)
	cmovneq	%rcx, %rdi
	movq	%rdi, (%rax)
	cmovneq	%rbp, %rbx
	movq	%rbx, 16(%rax)
	cmovneq	%r13, %r8
	movq	%r8, 24(%rax)
	cmovneq	%r14, %r9
	movq	%r9, 32(%rax)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
                                        ## -- End function
	.globl	_mcl_fp_addPre5Lbmi2    ## -- Begin function mcl_fp_addPre5Lbmi2
	.p2align	4, 0x90
_mcl_fp_addPre5Lbmi2:                   ## @mcl_fp_addPre5Lbmi2
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
	.globl	_mcl_fp_subPre5Lbmi2    ## -- Begin function mcl_fp_subPre5Lbmi2
	.p2align	4, 0x90
_mcl_fp_subPre5Lbmi2:                   ## @mcl_fp_subPre5Lbmi2
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
	.globl	_mcl_fp_shr1_5Lbmi2     ## -- Begin function mcl_fp_shr1_5Lbmi2
	.p2align	4, 0x90
_mcl_fp_shr1_5Lbmi2:                    ## @mcl_fp_shr1_5Lbmi2
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
	.globl	_mcl_fp_add5Lbmi2       ## -- Begin function mcl_fp_add5Lbmi2
	.p2align	4, 0x90
_mcl_fp_add5Lbmi2:                      ## @mcl_fp_add5Lbmi2
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
	.globl	_mcl_fp_addNF5Lbmi2     ## -- Begin function mcl_fp_addNF5Lbmi2
	.p2align	4, 0x90
_mcl_fp_addNF5Lbmi2:                    ## @mcl_fp_addNF5Lbmi2
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
	.globl	_mcl_fp_sub5Lbmi2       ## -- Begin function mcl_fp_sub5Lbmi2
	.p2align	4, 0x90
_mcl_fp_sub5Lbmi2:                      ## @mcl_fp_sub5Lbmi2
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
	.globl	_mcl_fp_subNF5Lbmi2     ## -- Begin function mcl_fp_subNF5Lbmi2
	.p2align	4, 0x90
_mcl_fp_subNF5Lbmi2:                    ## @mcl_fp_subNF5Lbmi2
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
	.globl	_mcl_fpDbl_add5Lbmi2    ## -- Begin function mcl_fpDbl_add5Lbmi2
	.p2align	4, 0x90
_mcl_fpDbl_add5Lbmi2:                   ## @mcl_fpDbl_add5Lbmi2
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
	.globl	_mcl_fpDbl_sub5Lbmi2    ## -- Begin function mcl_fpDbl_sub5Lbmi2
	.p2align	4, 0x90
_mcl_fpDbl_sub5Lbmi2:                   ## @mcl_fpDbl_sub5Lbmi2
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
	.globl	_mcl_fp_mulUnitPre6Lbmi2 ## -- Begin function mcl_fp_mulUnitPre6Lbmi2
	.p2align	4, 0x90
_mcl_fp_mulUnitPre6Lbmi2:               ## @mcl_fp_mulUnitPre6Lbmi2
## %bb.0:
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	mulxq	40(%rsi), %r8, %r11
	mulxq	32(%rsi), %r9, %r12
	mulxq	24(%rsi), %r10, %rcx
	mulxq	16(%rsi), %r14, %rbx
	mulxq	8(%rsi), %r15, %rax
	mulxq	(%rsi), %rdx, %rsi
	movq	%rdx, (%rdi)
	addq	%r15, %rsi
	movq	%rsi, 8(%rdi)
	adcq	%r14, %rax
	movq	%rax, 16(%rdi)
	adcq	%r10, %rbx
	movq	%rbx, 24(%rdi)
	adcq	%r9, %rcx
	movq	%rcx, 32(%rdi)
	adcq	%r8, %r12
	movq	%r12, 40(%rdi)
	adcq	$0, %r11
	movq	%r11, 48(%rdi)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
                                        ## -- End function
	.globl	_mcl_fpDbl_mulPre6Lbmi2 ## -- Begin function mcl_fpDbl_mulPre6Lbmi2
	.p2align	4, 0x90
_mcl_fpDbl_mulPre6Lbmi2:                ## @mcl_fpDbl_mulPre6Lbmi2
## %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	(%rsi), %r9
	movq	8(%rsi), %r13
	movq	(%rdx), %rcx
	movq	%rdx, %r12
	movq	%rdx, -40(%rsp)         ## 8-byte Spill
	movq	%r9, %rdx
	movq	%r9, -24(%rsp)          ## 8-byte Spill
	mulxq	%rcx, %r8, %rax
	movq	%rax, -112(%rsp)        ## 8-byte Spill
	movq	16(%rsi), %rax
	movq	%rax, -32(%rsp)         ## 8-byte Spill
	movq	24(%rsi), %rbx
	movq	%rbx, -80(%rsp)         ## 8-byte Spill
	movq	32(%rsi), %rbp
	movq	%rbp, -72(%rsp)         ## 8-byte Spill
	movq	40(%rsi), %rdx
	movq	%r8, (%rdi)
	movq	%rdi, %r15
	movq	%rdi, -16(%rsp)         ## 8-byte Spill
	movq	%rdx, %r8
	movq	%rdx, -48(%rsp)         ## 8-byte Spill
	mulxq	%rcx, %rdx, %rsi
	movq	%rdx, -104(%rsp)        ## 8-byte Spill
	movq	%rbp, %rdx
	mulxq	%rcx, %r10, %r14
	movq	%rbx, %rdx
	mulxq	%rcx, %r11, %rdi
	movq	%rax, %rdx
	mulxq	%rcx, %rbx, %rax
	movq	%r13, %rdx
	movq	%r13, -64(%rsp)         ## 8-byte Spill
	mulxq	%rcx, %rcx, %rbp
	addq	-112(%rsp), %rcx        ## 8-byte Folded Reload
	adcq	%rbx, %rbp
	adcq	%r11, %rax
	adcq	%r10, %rdi
	adcq	-104(%rsp), %r14        ## 8-byte Folded Reload
	adcq	$0, %rsi
	movq	%rsi, -96(%rsp)         ## 8-byte Spill
	movq	8(%r12), %rdx
	mulxq	%r9, %rbx, %rsi
	movq	%rsi, -88(%rsp)         ## 8-byte Spill
	addq	%rcx, %rbx
	movq	%rbx, 8(%r15)
	mulxq	%r8, %r10, %rcx
	movq	%rcx, -104(%rsp)        ## 8-byte Spill
	movq	-72(%rsp), %rcx         ## 8-byte Reload
	mulxq	%rcx, %r9, %rbx
	movq	%rbx, -112(%rsp)        ## 8-byte Spill
	movq	-80(%rsp), %r12         ## 8-byte Reload
	mulxq	%r12, %r11, %rsi
	mulxq	-32(%rsp), %r8, %r15    ## 8-byte Folded Reload
	mulxq	%r13, %rbx, %rdx
	adcq	%rbp, %rbx
	adcq	%rax, %r8
	adcq	%rdi, %r11
	adcq	%r14, %r9
	adcq	-96(%rsp), %r10         ## 8-byte Folded Reload
	setb	%al
	addq	-88(%rsp), %rbx         ## 8-byte Folded Reload
	adcq	%rdx, %r8
	adcq	%r15, %r11
	adcq	%rsi, %r9
	adcq	-112(%rsp), %r10        ## 8-byte Folded Reload
	movzbl	%al, %r13d
	adcq	-104(%rsp), %r13        ## 8-byte Folded Reload
	movq	-40(%rsp), %r15         ## 8-byte Reload
	movq	16(%r15), %rdx
	mulxq	-48(%rsp), %rsi, %rax   ## 8-byte Folded Reload
	movq	%rsi, -104(%rsp)        ## 8-byte Spill
	movq	%rax, -88(%rsp)         ## 8-byte Spill
	mulxq	%rcx, %rax, %r14
	movq	%rax, -112(%rsp)        ## 8-byte Spill
	mulxq	%r12, %rax, %rbp
	movq	%rax, -96(%rsp)         ## 8-byte Spill
	mulxq	-64(%rsp), %rcx, %r12   ## 8-byte Folded Reload
	mulxq	-24(%rsp), %rax, %rsi   ## 8-byte Folded Reload
	addq	%rcx, %rsi
	mulxq	-32(%rsp), %rcx, %rdi   ## 8-byte Folded Reload
	adcq	%r12, %rcx
	adcq	-96(%rsp), %rdi         ## 8-byte Folded Reload
	adcq	-112(%rsp), %rbp        ## 8-byte Folded Reload
	adcq	-104(%rsp), %r14        ## 8-byte Folded Reload
	movq	-88(%rsp), %r12         ## 8-byte Reload
	adcq	$0, %r12
	addq	%rbx, %rax
	movq	-16(%rsp), %rdx         ## 8-byte Reload
	movq	%rax, 16(%rdx)
	adcq	%r8, %rsi
	adcq	%r11, %rcx
	adcq	%r9, %rdi
	adcq	%r10, %rbp
	adcq	%r13, %r14
	adcq	$0, %r12
	movq	%r12, -88(%rsp)         ## 8-byte Spill
	movq	24(%r15), %rdx
	movq	-48(%rsp), %r15         ## 8-byte Reload
	mulxq	%r15, %rbx, %rax
	movq	%rbx, -96(%rsp)         ## 8-byte Spill
	movq	%rax, -104(%rsp)        ## 8-byte Spill
	mulxq	-72(%rsp), %rbx, %rax   ## 8-byte Folded Reload
	movq	%rbx, -56(%rsp)         ## 8-byte Spill
	movq	%rax, -112(%rsp)        ## 8-byte Spill
	mulxq	-80(%rsp), %rax, %r11   ## 8-byte Folded Reload
	movq	%rax, -8(%rsp)          ## 8-byte Spill
	mulxq	-64(%rsp), %r8, %r12    ## 8-byte Folded Reload
	mulxq	-24(%rsp), %rax, %rbx   ## 8-byte Folded Reload
	addq	%r8, %rbx
	movq	-32(%rsp), %r13         ## 8-byte Reload
	mulxq	%r13, %r9, %r10
	adcq	%r12, %r9
	adcq	-8(%rsp), %r10          ## 8-byte Folded Reload
	adcq	-56(%rsp), %r11         ## 8-byte Folded Reload
	movq	-112(%rsp), %r8         ## 8-byte Reload
	adcq	-96(%rsp), %r8          ## 8-byte Folded Reload
	movq	-104(%rsp), %r12        ## 8-byte Reload
	adcq	$0, %r12
	addq	%rsi, %rax
	movq	-16(%rsp), %rdx         ## 8-byte Reload
	movq	%rax, 24(%rdx)
	adcq	%rcx, %rbx
	adcq	%rdi, %r9
	adcq	%rbp, %r10
	adcq	%r14, %r11
	adcq	-88(%rsp), %r8          ## 8-byte Folded Reload
	movq	%r8, -112(%rsp)         ## 8-byte Spill
	adcq	$0, %r12
	movq	%r12, -104(%rsp)        ## 8-byte Spill
	movq	-40(%rsp), %rax         ## 8-byte Reload
	movq	32(%rax), %rdx
	mulxq	%r15, %rcx, %rax
	movq	%rcx, -88(%rsp)         ## 8-byte Spill
	mulxq	-72(%rsp), %rcx, %r14   ## 8-byte Folded Reload
	movq	%rcx, -96(%rsp)         ## 8-byte Spill
	mulxq	-80(%rsp), %rcx, %rbp   ## 8-byte Folded Reload
	movq	%rcx, -56(%rsp)         ## 8-byte Spill
	mulxq	-64(%rsp), %rdi, %r15   ## 8-byte Folded Reload
	movq	-24(%rsp), %r12         ## 8-byte Reload
	mulxq	%r12, %rcx, %rsi
	addq	%rdi, %rsi
	mulxq	%r13, %rdi, %r8
	adcq	%r15, %rdi
	adcq	-56(%rsp), %r8          ## 8-byte Folded Reload
	adcq	-96(%rsp), %rbp         ## 8-byte Folded Reload
	adcq	-88(%rsp), %r14         ## 8-byte Folded Reload
	adcq	$0, %rax
	addq	%rbx, %rcx
	movq	-16(%rsp), %r15         ## 8-byte Reload
	movq	%rcx, 32(%r15)
	adcq	%r9, %rsi
	adcq	%r10, %rdi
	adcq	%r11, %r8
	adcq	-112(%rsp), %rbp        ## 8-byte Folded Reload
	movq	-40(%rsp), %rcx         ## 8-byte Reload
	movq	40(%rcx), %rdx
	adcq	-104(%rsp), %r14        ## 8-byte Folded Reload
	mulxq	-64(%rsp), %rbx, %r9    ## 8-byte Folded Reload
	mulxq	%r12, %rcx, %r11
	adcq	$0, %rax
	addq	%rbx, %r11
	mulxq	%r13, %r12, %r10
	adcq	%r9, %r12
	mulxq	-80(%rsp), %r13, %r9    ## 8-byte Folded Reload
	adcq	%r10, %r13
	mulxq	-72(%rsp), %rbx, %r10   ## 8-byte Folded Reload
	adcq	%r9, %rbx
	mulxq	-48(%rsp), %rdx, %r9    ## 8-byte Folded Reload
	adcq	%r10, %rdx
	adcq	$0, %r9
	addq	%rcx, %rsi
	movq	%rsi, 40(%r15)
	adcq	%rdi, %r11
	movq	%r11, 48(%r15)
	adcq	%r8, %r12
	movq	%r12, 56(%r15)
	adcq	%rbp, %r13
	movq	%r13, 64(%r15)
	adcq	%r14, %rbx
	movq	%rbx, 72(%r15)
	adcq	%rax, %rdx
	movq	%rdx, 80(%r15)
	adcq	$0, %r9
	movq	%r9, 88(%r15)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
                                        ## -- End function
	.globl	_mcl_fpDbl_sqrPre6Lbmi2 ## -- Begin function mcl_fpDbl_sqrPre6Lbmi2
	.p2align	4, 0x90
_mcl_fpDbl_sqrPre6Lbmi2:                ## @mcl_fpDbl_sqrPre6Lbmi2
## %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$160, %rsp
	movq	%rdi, -56(%rsp)         ## 8-byte Spill
	movq	40(%rsi), %rdx
	movq	32(%rsi), %rcx
	mulxq	%rcx, %rax, %rbx
	movq	%rax, -128(%rsp)        ## 8-byte Spill
	movq	24(%rsi), %rax
	mulxq	%rax, %r8, %r14
	movq	%r8, -96(%rsp)          ## 8-byte Spill
	movq	%r14, -64(%rsp)         ## 8-byte Spill
	movq	16(%rsi), %r10
	mulxq	%r10, %r9, %r11
	movq	%r9, 16(%rsp)           ## 8-byte Spill
	movq	%r11, -72(%rsp)         ## 8-byte Spill
	movq	(%rsi), %rdi
	movq	%rdi, -80(%rsp)         ## 8-byte Spill
	movq	8(%rsi), %r12
	mulxq	%r12, %rsi, %r13
	movq	%rsi, 32(%rsp)          ## 8-byte Spill
	mulxq	%rdi, %rdi, %r15
	movq	%rdi, -48(%rsp)         ## 8-byte Spill
	mulxq	%rdx, %rbp, %rdx
	movq	%r15, %rdi
	addq	%rsi, %rdi
	movq	%rdi, 112(%rsp)         ## 8-byte Spill
	movq	%r13, %rdi
	adcq	%r9, %rdi
	movq	%rdi, 120(%rsp)         ## 8-byte Spill
	movq	%r11, %rdi
	adcq	%r8, %rdi
	movq	%rdi, 128(%rsp)         ## 8-byte Spill
	adcq	-128(%rsp), %r14        ## 8-byte Folded Reload
	movq	%r14, 136(%rsp)         ## 8-byte Spill
	adcq	%rbx, %rbp
	movq	%rbp, 144(%rsp)         ## 8-byte Spill
	movq	%rbx, %r11
	adcq	$0, %rdx
	movq	%rdx, 152(%rsp)         ## 8-byte Spill
	movq	%rcx, %rdx
	mulxq	%rax, %rdx, %r14
	movq	%rdx, -104(%rsp)        ## 8-byte Spill
	movq	%rcx, %rdx
	mulxq	%r10, %r9, %rbx
	movq	%rbx, -88(%rsp)         ## 8-byte Spill
	movq	%r9, -112(%rsp)         ## 8-byte Spill
	mulxq	%r12, %rsi, %rdi
	movq	%rsi, (%rsp)            ## 8-byte Spill
	movq	%rdi, 8(%rsp)           ## 8-byte Spill
	mulxq	-80(%rsp), %rdx, %r8    ## 8-byte Folded Reload
	movq	%rdx, 24(%rsp)          ## 8-byte Spill
	movq	%rcx, %rdx
	mulxq	%rcx, %rdx, %rcx
	movq	%r8, %rbp
	addq	%rsi, %rbp
	movq	%rbp, 88(%rsp)          ## 8-byte Spill
	adcq	%r9, %rdi
	movq	%rdi, 80(%rsp)          ## 8-byte Spill
	movq	%rbx, %rbp
	movq	-104(%rsp), %rbx        ## 8-byte Reload
	adcq	%rbx, %rbp
	movq	%rbp, 72(%rsp)          ## 8-byte Spill
	adcq	%r14, %rdx
	movq	%rdx, 96(%rsp)          ## 8-byte Spill
	adcq	-128(%rsp), %rcx        ## 8-byte Folded Reload
	movq	%rcx, 104(%rsp)         ## 8-byte Spill
	adcq	$0, %r11
	movq	%r11, 64(%rsp)          ## 8-byte Spill
	movq	%rax, %rdx
	mulxq	%r10, %rcx, %r9
	movq	%rcx, -120(%rsp)        ## 8-byte Spill
	mulxq	%r12, %rbp, %r11
	movq	%rbp, -32(%rsp)         ## 8-byte Spill
	movq	%r11, -128(%rsp)        ## 8-byte Spill
	movq	-80(%rsp), %rsi         ## 8-byte Reload
	mulxq	%rsi, %rcx, %rdi
	movq	%rcx, -16(%rsp)         ## 8-byte Spill
	mulxq	%rax, %rdx, %rax
	movq	%rdi, %rcx
	addq	%rbp, %rcx
	movq	%rcx, 48(%rsp)          ## 8-byte Spill
	movq	%r11, %rcx
	movq	-120(%rsp), %r11        ## 8-byte Reload
	adcq	%r11, %rcx
	movq	%rcx, 40(%rsp)          ## 8-byte Spill
	adcq	%r9, %rdx
	movq	%rdx, 56(%rsp)          ## 8-byte Spill
	movq	%r9, %rbp
	adcq	%rbx, %rax
	movq	%rax, -104(%rsp)        ## 8-byte Spill
	adcq	-96(%rsp), %r14         ## 8-byte Folded Reload
	movq	%r14, -96(%rsp)         ## 8-byte Spill
	adcq	$0, -64(%rsp)           ## 8-byte Folded Spill
	movq	%r10, %rdx
	mulxq	%r12, %rcx, %r9
	mulxq	%rsi, %rax, %r14
	movq	%rax, -40(%rsp)         ## 8-byte Spill
	movq	%rsi, %rbx
	mulxq	%r10, %rsi, %rdx
	movq	%r14, %rax
	addq	%rcx, %rax
	movq	%rax, -24(%rsp)         ## 8-byte Spill
	adcq	%r9, %rsi
	movq	%r9, %rax
	movq	%rsi, -8(%rsp)          ## 8-byte Spill
	adcq	%r11, %rdx
	movq	%rdx, -120(%rsp)        ## 8-byte Spill
	adcq	-112(%rsp), %rbp        ## 8-byte Folded Reload
	movq	%rbp, -112(%rsp)        ## 8-byte Spill
	movq	-88(%rsp), %rdx         ## 8-byte Reload
	adcq	16(%rsp), %rdx          ## 8-byte Folded Reload
	movq	%rdx, -88(%rsp)         ## 8-byte Spill
	adcq	$0, -72(%rsp)           ## 8-byte Folded Spill
	movq	%r12, %rdx
	mulxq	%r12, %r11, %rsi
	mulxq	%rbx, %r10, %r9
	addq	%r9, %r11
	adcq	%rcx, %rsi
	adcq	-32(%rsp), %rax         ## 8-byte Folded Reload
	movq	(%rsp), %rcx            ## 8-byte Reload
	adcq	%rcx, -128(%rsp)        ## 8-byte Folded Spill
	movq	8(%rsp), %rcx           ## 8-byte Reload
	adcq	32(%rsp), %rcx          ## 8-byte Folded Reload
	movq	%rbx, %rdx
	mulxq	%rbx, %rdx, %rbx
	movq	-56(%rsp), %rbp         ## 8-byte Reload
	movq	%rdx, (%rbp)
	adcq	$0, %r13
	addq	%r10, %rbx
	movq	-40(%rsp), %rbp         ## 8-byte Reload
	adcq	%rbp, %r9
	movq	-16(%rsp), %rdx         ## 8-byte Reload
	adcq	%rdx, %r14
	movq	24(%rsp), %r12          ## 8-byte Reload
	adcq	%r12, %rdi
	adcq	-48(%rsp), %r8          ## 8-byte Folded Reload
	adcq	$0, %r15
	addq	%r10, %rbx
	adcq	%r11, %r9
	adcq	%rsi, %r14
	adcq	%rax, %rdi
	adcq	-128(%rsp), %r8         ## 8-byte Folded Reload
	adcq	%rcx, %r15
	adcq	$0, %r13
	addq	%rbp, %r9
	adcq	-24(%rsp), %r14         ## 8-byte Folded Reload
	adcq	-8(%rsp), %rdi          ## 8-byte Folded Reload
	adcq	-120(%rsp), %r8         ## 8-byte Folded Reload
	adcq	-112(%rsp), %r15        ## 8-byte Folded Reload
	adcq	-88(%rsp), %r13         ## 8-byte Folded Reload
	movq	-72(%rsp), %rcx         ## 8-byte Reload
	adcq	$0, %rcx
	addq	%rdx, %r14
	adcq	48(%rsp), %rdi          ## 8-byte Folded Reload
	adcq	40(%rsp), %r8           ## 8-byte Folded Reload
	adcq	56(%rsp), %r15          ## 8-byte Folded Reload
	adcq	-104(%rsp), %r13        ## 8-byte Folded Reload
	adcq	-96(%rsp), %rcx         ## 8-byte Folded Reload
	movq	-64(%rsp), %rdx         ## 8-byte Reload
	adcq	$0, %rdx
	addq	%r12, %rdi
	adcq	88(%rsp), %r8           ## 8-byte Folded Reload
	adcq	80(%rsp), %r15          ## 8-byte Folded Reload
	adcq	72(%rsp), %r13          ## 8-byte Folded Reload
	adcq	96(%rsp), %rcx          ## 8-byte Folded Reload
	adcq	104(%rsp), %rdx         ## 8-byte Folded Reload
	movq	%rdx, %rsi
	movq	64(%rsp), %rdx          ## 8-byte Reload
	adcq	$0, %rdx
	addq	-48(%rsp), %r8          ## 8-byte Folded Reload
	movq	-56(%rsp), %rbp         ## 8-byte Reload
	movq	%rbx, 8(%rbp)
	movq	%r9, 16(%rbp)
	movq	%r14, 24(%rbp)
	movq	%rdi, 32(%rbp)
	movq	%r8, 40(%rbp)
	adcq	112(%rsp), %r15         ## 8-byte Folded Reload
	movq	%r15, 48(%rbp)
	adcq	120(%rsp), %r13         ## 8-byte Folded Reload
	movq	%r13, 56(%rbp)
	movq	%rcx, %rax
	adcq	128(%rsp), %rax         ## 8-byte Folded Reload
	movq	%rax, 64(%rbp)
	movq	%rsi, %rax
	adcq	136(%rsp), %rax         ## 8-byte Folded Reload
	movq	%rax, 72(%rbp)
	movq	%rdx, %rax
	adcq	144(%rsp), %rax         ## 8-byte Folded Reload
	movq	%rax, 80(%rbp)
	movq	152(%rsp), %rax         ## 8-byte Reload
	adcq	$0, %rax
	movq	%rax, 88(%rbp)
	addq	$160, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
                                        ## -- End function
	.globl	_mcl_fp_mont6Lbmi2      ## -- Begin function mcl_fp_mont6Lbmi2
	.p2align	4, 0x90
_mcl_fp_mont6Lbmi2:                     ## @mcl_fp_mont6Lbmi2
## %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	movq	%rdx, -88(%rsp)         ## 8-byte Spill
	movq	%rdi, 24(%rsp)          ## 8-byte Spill
	movq	40(%rsi), %rdi
	movq	%rdi, -96(%rsp)         ## 8-byte Spill
	movq	(%rdx), %rax
	movq	%rdi, %rdx
	mulxq	%rax, %r8, %rbx
	movq	32(%rsi), %rdx
	movq	%rdx, -72(%rsp)         ## 8-byte Spill
	mulxq	%rax, %r11, %r15
	movq	24(%rsi), %rdx
	movq	%rdx, -80(%rsp)         ## 8-byte Spill
	mulxq	%rax, %r12, %r14
	movq	16(%rsi), %rdx
	movq	%rdx, (%rsp)            ## 8-byte Spill
	mulxq	%rax, %r9, %r13
	movq	(%rsi), %rbp
	movq	%rbp, -8(%rsp)          ## 8-byte Spill
	movq	8(%rsi), %rdx
	movq	%rdx, -16(%rsp)         ## 8-byte Spill
	mulxq	%rax, %rdi, %r10
	movq	%rbp, %rdx
	mulxq	%rax, %rax, %rbp
	movq	%rax, -128(%rsp)        ## 8-byte Spill
	addq	%rdi, %rbp
	adcq	%r9, %r10
	adcq	%r12, %r13
	adcq	%r11, %r14
	adcq	%r8, %r15
	adcq	$0, %rbx
	movq	%rbx, -112(%rsp)        ## 8-byte Spill
	movq	-8(%rcx), %rdx
	movq	%rdx, 8(%rsp)           ## 8-byte Spill
	imulq	%rax, %rdx
	movq	40(%rcx), %rax
	movq	%rax, -24(%rsp)         ## 8-byte Spill
	mulxq	%rax, %rax, %r12
	movq	%rax, -120(%rsp)        ## 8-byte Spill
	movq	16(%rcx), %rax
	movq	%rax, -32(%rsp)         ## 8-byte Spill
	mulxq	%rax, %r8, %rbx
	movq	8(%rcx), %rax
	movq	%rax, -40(%rsp)         ## 8-byte Spill
	mulxq	%rax, %r9, %r11
	movq	(%rcx), %rax
	movq	%rax, -48(%rsp)         ## 8-byte Spill
	mulxq	%rax, %rsi, %rdi
	addq	%r9, %rdi
	adcq	%r8, %r11
	movq	24(%rcx), %rax
	movq	%rax, -56(%rsp)         ## 8-byte Spill
	mulxq	%rax, %rax, %r9
	adcq	%rbx, %rax
	movq	32(%rcx), %rcx
	movq	%rcx, -64(%rsp)         ## 8-byte Spill
	mulxq	%rcx, %r8, %rcx
	adcq	%r9, %r8
	adcq	-120(%rsp), %rcx        ## 8-byte Folded Reload
	adcq	$0, %r12
	addq	-128(%rsp), %rsi        ## 8-byte Folded Reload
	adcq	%rbp, %rdi
	adcq	%r10, %r11
	adcq	%r13, %rax
	adcq	%r14, %r8
	adcq	%r15, %rcx
	adcq	-112(%rsp), %r12        ## 8-byte Folded Reload
	movq	-88(%rsp), %rdx         ## 8-byte Reload
	movq	8(%rdx), %rdx
	mulxq	-96(%rsp), %rsi, %rbp   ## 8-byte Folded Reload
	movq	%rsi, -128(%rsp)        ## 8-byte Spill
	mulxq	-72(%rsp), %rsi, %r13   ## 8-byte Folded Reload
	movq	%rsi, -120(%rsp)        ## 8-byte Spill
	mulxq	-80(%rsp), %rsi, %r14   ## 8-byte Folded Reload
	movq	%rsi, -104(%rsp)        ## 8-byte Spill
	mulxq	-16(%rsp), %rsi, %r10   ## 8-byte Folded Reload
	mulxq	-8(%rsp), %r15, %rbx    ## 8-byte Folded Reload
	setb	-112(%rsp)              ## 1-byte Folded Spill
	addq	%rsi, %rbx
	mulxq	(%rsp), %rsi, %r9       ## 8-byte Folded Reload
	adcq	%r10, %rsi
	adcq	-104(%rsp), %r9         ## 8-byte Folded Reload
	adcq	-120(%rsp), %r14        ## 8-byte Folded Reload
	adcq	-128(%rsp), %r13        ## 8-byte Folded Reload
	adcq	$0, %rbp
	addq	%rdi, %r15
	adcq	%r11, %rbx
	adcq	%rax, %rsi
	adcq	%r8, %r9
	adcq	%rcx, %r14
	adcq	%r12, %r13
	movzbl	-112(%rsp), %eax        ## 1-byte Folded Reload
	adcq	%rax, %rbp
	setb	-112(%rsp)              ## 1-byte Folded Spill
	movq	8(%rsp), %rdx           ## 8-byte Reload
	imulq	%r15, %rdx
	mulxq	-24(%rsp), %rcx, %rax   ## 8-byte Folded Reload
	movq	%rcx, -120(%rsp)        ## 8-byte Spill
	movq	%rax, -128(%rsp)        ## 8-byte Spill
	mulxq	-64(%rsp), %rax, %r12   ## 8-byte Folded Reload
	movq	%rax, -104(%rsp)        ## 8-byte Spill
	mulxq	-40(%rsp), %rcx, %rax   ## 8-byte Folded Reload
	mulxq	-48(%rsp), %r10, %r8    ## 8-byte Folded Reload
	addq	%rcx, %r8
	mulxq	-32(%rsp), %rdi, %r11   ## 8-byte Folded Reload
	adcq	%rax, %rdi
	mulxq	-56(%rsp), %rax, %rcx   ## 8-byte Folded Reload
	adcq	%r11, %rax
	adcq	-104(%rsp), %rcx        ## 8-byte Folded Reload
	adcq	-120(%rsp), %r12        ## 8-byte Folded Reload
	movq	-128(%rsp), %rdx        ## 8-byte Reload
	adcq	$0, %rdx
	addq	%r15, %r10
	adcq	%rbx, %r8
	adcq	%rsi, %rdi
	adcq	%r9, %rax
	adcq	%r14, %rcx
	adcq	%r13, %r12
	adcq	%rbp, %rdx
	movq	%rdx, -128(%rsp)        ## 8-byte Spill
	movzbl	-112(%rsp), %r9d        ## 1-byte Folded Reload
	adcq	$0, %r9
	movq	-88(%rsp), %rdx         ## 8-byte Reload
	movq	16(%rdx), %rdx
	mulxq	-96(%rsp), %rbp, %rsi   ## 8-byte Folded Reload
	movq	%rbp, -120(%rsp)        ## 8-byte Spill
	movq	%rsi, -112(%rsp)        ## 8-byte Spill
	mulxq	-72(%rsp), %rsi, %r14   ## 8-byte Folded Reload
	movq	%rsi, -104(%rsp)        ## 8-byte Spill
	mulxq	-80(%rsp), %rsi, %r15   ## 8-byte Folded Reload
	movq	%rsi, 16(%rsp)          ## 8-byte Spill
	mulxq	-16(%rsp), %rsi, %r11   ## 8-byte Folded Reload
	mulxq	-8(%rsp), %r13, %rbp    ## 8-byte Folded Reload
	addq	%rsi, %rbp
	mulxq	(%rsp), %r10, %rbx      ## 8-byte Folded Reload
	adcq	%r11, %r10
	adcq	16(%rsp), %rbx          ## 8-byte Folded Reload
	adcq	-104(%rsp), %r15        ## 8-byte Folded Reload
	adcq	-120(%rsp), %r14        ## 8-byte Folded Reload
	movq	-112(%rsp), %rdx        ## 8-byte Reload
	adcq	$0, %rdx
	addq	%r8, %r13
	adcq	%rdi, %rbp
	adcq	%rax, %r10
	adcq	%rcx, %rbx
	adcq	%r12, %r15
	adcq	-128(%rsp), %r14        ## 8-byte Folded Reload
	adcq	%r9, %rdx
	movq	%rdx, -112(%rsp)        ## 8-byte Spill
	setb	-120(%rsp)              ## 1-byte Folded Spill
	movq	8(%rsp), %rdx           ## 8-byte Reload
	imulq	%r13, %rdx
	mulxq	-24(%rsp), %rcx, %rax   ## 8-byte Folded Reload
	movq	%rcx, -104(%rsp)        ## 8-byte Spill
	movq	%rax, -128(%rsp)        ## 8-byte Spill
	mulxq	-64(%rsp), %rax, %r11   ## 8-byte Folded Reload
	movq	%rax, 16(%rsp)          ## 8-byte Spill
	mulxq	-40(%rsp), %rdi, %rax   ## 8-byte Folded Reload
	mulxq	-48(%rsp), %rcx, %r12   ## 8-byte Folded Reload
	addq	%rdi, %r12
	mulxq	-32(%rsp), %rdi, %r8    ## 8-byte Folded Reload
	adcq	%rax, %rdi
	mulxq	-56(%rsp), %r9, %rsi    ## 8-byte Folded Reload
	adcq	%r8, %r9
	adcq	16(%rsp), %rsi          ## 8-byte Folded Reload
	adcq	-104(%rsp), %r11        ## 8-byte Folded Reload
	movq	-128(%rsp), %rax        ## 8-byte Reload
	adcq	$0, %rax
	addq	%r13, %rcx
	adcq	%rbp, %r12
	adcq	%r10, %rdi
	adcq	%rbx, %r9
	adcq	%r15, %rsi
	adcq	%r14, %r11
	adcq	-112(%rsp), %rax        ## 8-byte Folded Reload
	movq	%rax, -128(%rsp)        ## 8-byte Spill
	movzbl	-120(%rsp), %r8d        ## 1-byte Folded Reload
	adcq	$0, %r8
	movq	-88(%rsp), %rcx         ## 8-byte Reload
	movq	24(%rcx), %rdx
	mulxq	-96(%rsp), %rax, %r14   ## 8-byte Folded Reload
	movq	%rax, -112(%rsp)        ## 8-byte Spill
	mulxq	-72(%rsp), %rax, %rbp   ## 8-byte Folded Reload
	movq	%rax, -120(%rsp)        ## 8-byte Spill
	mulxq	-80(%rsp), %rax, %r15   ## 8-byte Folded Reload
	movq	%rax, -104(%rsp)        ## 8-byte Spill
	mulxq	-16(%rsp), %rcx, %r10   ## 8-byte Folded Reload
	mulxq	-8(%rsp), %rax, %r13    ## 8-byte Folded Reload
	addq	%rcx, %r13
	mulxq	(%rsp), %rcx, %rbx      ## 8-byte Folded Reload
	adcq	%r10, %rcx
	adcq	-104(%rsp), %rbx        ## 8-byte Folded Reload
	adcq	-120(%rsp), %r15        ## 8-byte Folded Reload
	adcq	-112(%rsp), %rbp        ## 8-byte Folded Reload
	adcq	$0, %r14
	addq	%r12, %rax
	movq	%rax, -120(%rsp)        ## 8-byte Spill
	adcq	%rdi, %r13
	adcq	%r9, %rcx
	adcq	%rsi, %rbx
	adcq	%r11, %r15
	adcq	-128(%rsp), %rbp        ## 8-byte Folded Reload
	adcq	%r8, %r14
	movq	%r14, -128(%rsp)        ## 8-byte Spill
	setb	-112(%rsp)              ## 1-byte Folded Spill
	movq	8(%rsp), %rdx           ## 8-byte Reload
	imulq	%rax, %rdx
	mulxq	-24(%rsp), %rax, %r14   ## 8-byte Folded Reload
	movq	%rax, -104(%rsp)        ## 8-byte Spill
	mulxq	-64(%rsp), %r12, %r11   ## 8-byte Folded Reload
	mulxq	-40(%rsp), %rsi, %rdi   ## 8-byte Folded Reload
	mulxq	-48(%rsp), %r9, %rax    ## 8-byte Folded Reload
	addq	%rsi, %rax
	mulxq	-32(%rsp), %rsi, %r10   ## 8-byte Folded Reload
	adcq	%rdi, %rsi
	mulxq	-56(%rsp), %r8, %rdi    ## 8-byte Folded Reload
	adcq	%r10, %r8
	adcq	%r12, %rdi
	adcq	-104(%rsp), %r11        ## 8-byte Folded Reload
	adcq	$0, %r14
	addq	-120(%rsp), %r9         ## 8-byte Folded Reload
	adcq	%r13, %rax
	adcq	%rcx, %rsi
	adcq	%rbx, %r8
	adcq	%r15, %rdi
	adcq	%rbp, %r11
	adcq	-128(%rsp), %r14        ## 8-byte Folded Reload
	movzbl	-112(%rsp), %ebp        ## 1-byte Folded Reload
	adcq	$0, %rbp
	movq	-88(%rsp), %rcx         ## 8-byte Reload
	movq	32(%rcx), %rdx
	mulxq	-96(%rsp), %rbx, %rcx   ## 8-byte Folded Reload
	movq	%rbx, -128(%rsp)        ## 8-byte Spill
	movq	%rcx, -112(%rsp)        ## 8-byte Spill
	mulxq	-72(%rsp), %rcx, %r10   ## 8-byte Folded Reload
	movq	%rcx, -120(%rsp)        ## 8-byte Spill
	mulxq	-80(%rsp), %rcx, %r15   ## 8-byte Folded Reload
	movq	%rcx, -104(%rsp)        ## 8-byte Spill
	mulxq	-16(%rsp), %rcx, %r9    ## 8-byte Folded Reload
	mulxq	-8(%rsp), %r13, %rbx    ## 8-byte Folded Reload
	addq	%rcx, %rbx
	mulxq	(%rsp), %rcx, %r12      ## 8-byte Folded Reload
	adcq	%r9, %rcx
	adcq	-104(%rsp), %r12        ## 8-byte Folded Reload
	adcq	-120(%rsp), %r15        ## 8-byte Folded Reload
	adcq	-128(%rsp), %r10        ## 8-byte Folded Reload
	movq	-112(%rsp), %rdx        ## 8-byte Reload
	adcq	$0, %rdx
	addq	%rax, %r13
	adcq	%rsi, %rbx
	adcq	%r8, %rcx
	adcq	%rdi, %r12
	adcq	%r11, %r15
	adcq	%r14, %r10
	adcq	%rbp, %rdx
	movq	%rdx, -112(%rsp)        ## 8-byte Spill
	setb	-120(%rsp)              ## 1-byte Folded Spill
	movq	8(%rsp), %rdx           ## 8-byte Reload
	imulq	%r13, %rdx
	mulxq	-24(%rsp), %rsi, %rax   ## 8-byte Folded Reload
	movq	%rsi, -104(%rsp)        ## 8-byte Spill
	movq	%rax, -128(%rsp)        ## 8-byte Spill
	mulxq	-64(%rsp), %r14, %r11   ## 8-byte Folded Reload
	mulxq	-40(%rsp), %rsi, %rdi   ## 8-byte Folded Reload
	mulxq	-48(%rsp), %r8, %rax    ## 8-byte Folded Reload
	addq	%rsi, %rax
	mulxq	-32(%rsp), %rsi, %r9    ## 8-byte Folded Reload
	adcq	%rdi, %rsi
	mulxq	-56(%rsp), %rbp, %rdi   ## 8-byte Folded Reload
	adcq	%r9, %rbp
	adcq	%r14, %rdi
	adcq	-104(%rsp), %r11        ## 8-byte Folded Reload
	movq	-128(%rsp), %rdx        ## 8-byte Reload
	adcq	$0, %rdx
	addq	%r13, %r8
	adcq	%rbx, %rax
	adcq	%rcx, %rsi
	adcq	%r12, %rbp
	adcq	%r15, %rdi
	adcq	%r10, %r11
	adcq	-112(%rsp), %rdx        ## 8-byte Folded Reload
	movq	%rdx, -128(%rsp)        ## 8-byte Spill
	movzbl	-120(%rsp), %r8d        ## 1-byte Folded Reload
	adcq	$0, %r8
	movq	-88(%rsp), %rcx         ## 8-byte Reload
	movq	40(%rcx), %rdx
	mulxq	-96(%rsp), %rbx, %rcx   ## 8-byte Folded Reload
	movq	%rbx, -96(%rsp)         ## 8-byte Spill
	movq	%rcx, -88(%rsp)         ## 8-byte Spill
	mulxq	-72(%rsp), %rcx, %r10   ## 8-byte Folded Reload
	movq	%rcx, -72(%rsp)         ## 8-byte Spill
	mulxq	-80(%rsp), %rcx, %r14   ## 8-byte Folded Reload
	movq	%rcx, -80(%rsp)         ## 8-byte Spill
	mulxq	(%rsp), %r9, %r15       ## 8-byte Folded Reload
	mulxq	-16(%rsp), %rcx, %r13   ## 8-byte Folded Reload
	mulxq	-8(%rsp), %r12, %rbx    ## 8-byte Folded Reload
	addq	%rcx, %rbx
	adcq	%r9, %r13
	adcq	-80(%rsp), %r15         ## 8-byte Folded Reload
	adcq	-72(%rsp), %r14         ## 8-byte Folded Reload
	adcq	-96(%rsp), %r10         ## 8-byte Folded Reload
	movq	-88(%rsp), %rcx         ## 8-byte Reload
	adcq	$0, %rcx
	addq	%rax, %r12
	adcq	%rsi, %rbx
	adcq	%rbp, %r13
	adcq	%rdi, %r15
	adcq	%r11, %r14
	adcq	-128(%rsp), %r10        ## 8-byte Folded Reload
	adcq	%r8, %rcx
	movq	%rcx, -88(%rsp)         ## 8-byte Spill
	setb	-96(%rsp)               ## 1-byte Folded Spill
	movq	8(%rsp), %rdx           ## 8-byte Reload
	imulq	%r12, %rdx
	mulxq	-48(%rsp), %r9, %rcx    ## 8-byte Folded Reload
	mulxq	-40(%rsp), %rax, %rsi   ## 8-byte Folded Reload
	addq	%rcx, %rax
	mulxq	-32(%rsp), %rbp, %rcx   ## 8-byte Folded Reload
	adcq	%rsi, %rbp
	mulxq	-56(%rsp), %rsi, %r11   ## 8-byte Folded Reload
	adcq	%rcx, %rsi
	mulxq	-64(%rsp), %rdi, %r8    ## 8-byte Folded Reload
	adcq	%r11, %rdi
	mulxq	-24(%rsp), %rcx, %r11   ## 8-byte Folded Reload
	adcq	%r8, %rcx
	adcq	$0, %r11
	addq	%r12, %r9
	adcq	%rbx, %rax
	adcq	%r13, %rbp
	adcq	%r15, %rsi
	adcq	%r14, %rdi
	adcq	%r10, %rcx
	adcq	-88(%rsp), %r11         ## 8-byte Folded Reload
	movzbl	-96(%rsp), %ebx         ## 1-byte Folded Reload
	adcq	$0, %rbx
	movq	%rax, %r8
	subq	-48(%rsp), %r8          ## 8-byte Folded Reload
	movq	%rbp, %rdx
	sbbq	-40(%rsp), %rdx         ## 8-byte Folded Reload
	movq	%rsi, %r9
	sbbq	-32(%rsp), %r9          ## 8-byte Folded Reload
	movq	%rdi, %r10
	sbbq	-56(%rsp), %r10         ## 8-byte Folded Reload
	movq	%rcx, %r14
	sbbq	-64(%rsp), %r14         ## 8-byte Folded Reload
	movq	%r11, %r15
	sbbq	-24(%rsp), %r15         ## 8-byte Folded Reload
	sbbq	$0, %rbx
	testb	$1, %bl
	cmovneq	%rbp, %rdx
	movq	24(%rsp), %rbx          ## 8-byte Reload
	movq	%rdx, 8(%rbx)
	cmovneq	%rax, %r8
	movq	%r8, (%rbx)
	cmovneq	%rsi, %r9
	movq	%r9, 16(%rbx)
	cmovneq	%rdi, %r10
	movq	%r10, 24(%rbx)
	cmovneq	%rcx, %r14
	movq	%r14, 32(%rbx)
	cmovneq	%r11, %r15
	movq	%r15, 40(%rbx)
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
                                        ## -- End function
	.globl	_mcl_fp_montNF6Lbmi2    ## -- Begin function mcl_fp_montNF6Lbmi2
	.p2align	4, 0x90
_mcl_fp_montNF6Lbmi2:                   ## @mcl_fp_montNF6Lbmi2
## %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	%rdx, -48(%rsp)         ## 8-byte Spill
	movq	%rdi, -8(%rsp)          ## 8-byte Spill
	movq	(%rsi), %rax
	movq	%rax, -128(%rsp)        ## 8-byte Spill
	movq	8(%rsi), %rdi
	movq	%rdi, -56(%rsp)         ## 8-byte Spill
	movq	(%rdx), %rbp
	movq	%rdi, %rdx
	mulxq	%rbp, %rdi, %rbx
	movq	%rax, %rdx
	mulxq	%rbp, %r9, %r14
	movq	16(%rsi), %rdx
	movq	%rdx, -64(%rsp)         ## 8-byte Spill
	addq	%rdi, %r14
	mulxq	%rbp, %rdi, %r8
	adcq	%rbx, %rdi
	movq	24(%rsi), %rdx
	movq	%rdx, -72(%rsp)         ## 8-byte Spill
	mulxq	%rbp, %rbx, %r10
	adcq	%r8, %rbx
	movq	32(%rsi), %rdx
	movq	%rdx, -80(%rsp)         ## 8-byte Spill
	mulxq	%rbp, %r8, %r11
	adcq	%r10, %r8
	movq	40(%rsi), %rdx
	movq	%rdx, -88(%rsp)         ## 8-byte Spill
	mulxq	%rbp, %rsi, %r15
	adcq	%r11, %rsi
	adcq	$0, %r15
	movq	-8(%rcx), %rdx
	movq	%rdx, -120(%rsp)        ## 8-byte Spill
	imulq	%r9, %rdx
	movq	(%rcx), %rax
	movq	%rax, -104(%rsp)        ## 8-byte Spill
	mulxq	%rax, %rbp, %rax
	movq	%rax, -96(%rsp)         ## 8-byte Spill
	addq	%r9, %rbp
	movq	8(%rcx), %rax
	movq	%rax, -16(%rsp)         ## 8-byte Spill
	mulxq	%rax, %r13, %r9
	adcq	%r14, %r13
	movq	16(%rcx), %rax
	movq	%rax, -112(%rsp)        ## 8-byte Spill
	mulxq	%rax, %r12, %rax
	adcq	%rdi, %r12
	movq	24(%rcx), %rdi
	movq	%rdi, -24(%rsp)         ## 8-byte Spill
	mulxq	%rdi, %r14, %rdi
	adcq	%rbx, %r14
	movq	32(%rcx), %rbp
	movq	%rbp, -32(%rsp)         ## 8-byte Spill
	mulxq	%rbp, %r11, %rbx
	adcq	%r8, %r11
	movq	40(%rcx), %rcx
	movq	%rcx, -40(%rsp)         ## 8-byte Spill
	mulxq	%rcx, %r10, %rcx
	adcq	%rsi, %r10
	adcq	$0, %r15
	addq	-96(%rsp), %r13         ## 8-byte Folded Reload
	adcq	%r9, %r12
	adcq	%rax, %r14
	adcq	%rdi, %r11
	adcq	%rbx, %r10
	adcq	%rcx, %r15
	movq	-48(%rsp), %rax         ## 8-byte Reload
	movq	8(%rax), %rdx
	mulxq	-56(%rsp), %rcx, %rsi   ## 8-byte Folded Reload
	mulxq	-128(%rsp), %rbx, %rax  ## 8-byte Folded Reload
	addq	%rcx, %rax
	mulxq	-64(%rsp), %rcx, %rdi   ## 8-byte Folded Reload
	adcq	%rsi, %rcx
	mulxq	-72(%rsp), %rsi, %r8    ## 8-byte Folded Reload
	adcq	%rdi, %rsi
	mulxq	-80(%rsp), %rdi, %rbp   ## 8-byte Folded Reload
	movq	%rbp, -96(%rsp)         ## 8-byte Spill
	adcq	%r8, %rdi
	mulxq	-88(%rsp), %r8, %r9     ## 8-byte Folded Reload
	adcq	-96(%rsp), %r8          ## 8-byte Folded Reload
	adcq	$0, %r9
	addq	%r13, %rbx
	adcq	%r12, %rax
	adcq	%r14, %rcx
	adcq	%r11, %rsi
	adcq	%r10, %rdi
	adcq	%r15, %r8
	adcq	$0, %r9
	movq	-120(%rsp), %rdx        ## 8-byte Reload
	imulq	%rbx, %rdx
	mulxq	-104(%rsp), %rbp, %r13  ## 8-byte Folded Reload
	addq	%rbx, %rbp
	mulxq	-16(%rsp), %r11, %rbx   ## 8-byte Folded Reload
	adcq	%rax, %r11
	mulxq	-112(%rsp), %r14, %rax  ## 8-byte Folded Reload
	adcq	%rcx, %r14
	mulxq	-24(%rsp), %r10, %rcx   ## 8-byte Folded Reload
	adcq	%rsi, %r10
	mulxq	-32(%rsp), %r15, %rsi   ## 8-byte Folded Reload
	adcq	%rdi, %r15
	mulxq	-40(%rsp), %r12, %rdx   ## 8-byte Folded Reload
	adcq	%r8, %r12
	adcq	$0, %r9
	addq	%r13, %r11
	adcq	%rbx, %r14
	adcq	%rax, %r10
	adcq	%rcx, %r15
	adcq	%rsi, %r12
	adcq	%rdx, %r9
	movq	-48(%rsp), %rax         ## 8-byte Reload
	movq	16(%rax), %rdx
	mulxq	-56(%rsp), %rcx, %rax   ## 8-byte Folded Reload
	mulxq	-128(%rsp), %r13, %rdi  ## 8-byte Folded Reload
	addq	%rcx, %rdi
	mulxq	-64(%rsp), %rbx, %rcx   ## 8-byte Folded Reload
	adcq	%rax, %rbx
	mulxq	-72(%rsp), %rsi, %rbp   ## 8-byte Folded Reload
	adcq	%rcx, %rsi
	mulxq	-80(%rsp), %rax, %rcx   ## 8-byte Folded Reload
	movq	%rcx, -96(%rsp)         ## 8-byte Spill
	adcq	%rbp, %rax
	mulxq	-88(%rsp), %r8, %rcx    ## 8-byte Folded Reload
	adcq	-96(%rsp), %r8          ## 8-byte Folded Reload
	adcq	$0, %rcx
	addq	%r11, %r13
	adcq	%r14, %rdi
	adcq	%r10, %rbx
	adcq	%r15, %rsi
	adcq	%r12, %rax
	adcq	%r9, %r8
	adcq	$0, %rcx
	movq	-120(%rsp), %rdx        ## 8-byte Reload
	imulq	%r13, %rdx
	mulxq	-104(%rsp), %rbp, %r12  ## 8-byte Folded Reload
	addq	%r13, %rbp
	mulxq	-16(%rsp), %r11, %rbp   ## 8-byte Folded Reload
	adcq	%rdi, %r11
	mulxq	-112(%rsp), %r9, %rdi   ## 8-byte Folded Reload
	adcq	%rbx, %r9
	mulxq	-24(%rsp), %r10, %rbx   ## 8-byte Folded Reload
	adcq	%rsi, %r10
	mulxq	-32(%rsp), %r14, %rsi   ## 8-byte Folded Reload
	adcq	%rax, %r14
	mulxq	-40(%rsp), %r15, %rax   ## 8-byte Folded Reload
	adcq	%r8, %r15
	adcq	$0, %rcx
	addq	%r12, %r11
	adcq	%rbp, %r9
	adcq	%rdi, %r10
	adcq	%rbx, %r14
	adcq	%rsi, %r15
	adcq	%rax, %rcx
	movq	-48(%rsp), %rax         ## 8-byte Reload
	movq	24(%rax), %rdx
	mulxq	-56(%rsp), %rsi, %rax   ## 8-byte Folded Reload
	mulxq	-128(%rsp), %r13, %rbx  ## 8-byte Folded Reload
	addq	%rsi, %rbx
	mulxq	-64(%rsp), %rdi, %rbp   ## 8-byte Folded Reload
	adcq	%rax, %rdi
	mulxq	-72(%rsp), %rsi, %r8    ## 8-byte Folded Reload
	adcq	%rbp, %rsi
	mulxq	-80(%rsp), %rax, %rbp   ## 8-byte Folded Reload
	adcq	%r8, %rax
	mulxq	-88(%rsp), %r8, %r12    ## 8-byte Folded Reload
	adcq	%rbp, %r8
	adcq	$0, %r12
	addq	%r11, %r13
	adcq	%r9, %rbx
	adcq	%r10, %rdi
	adcq	%r14, %rsi
	adcq	%r15, %rax
	adcq	%rcx, %r8
	adcq	$0, %r12
	movq	-120(%rsp), %rdx        ## 8-byte Reload
	imulq	%r13, %rdx
	mulxq	-104(%rsp), %rbp, %rcx  ## 8-byte Folded Reload
	addq	%r13, %rbp
	mulxq	-16(%rsp), %r11, %rbp   ## 8-byte Folded Reload
	adcq	%rbx, %r11
	mulxq	-112(%rsp), %r9, %rbx   ## 8-byte Folded Reload
	adcq	%rdi, %r9
	mulxq	-24(%rsp), %r10, %rdi   ## 8-byte Folded Reload
	adcq	%rsi, %r10
	mulxq	-32(%rsp), %r14, %rsi   ## 8-byte Folded Reload
	adcq	%rax, %r14
	mulxq	-40(%rsp), %r15, %rax   ## 8-byte Folded Reload
	adcq	%r8, %r15
	adcq	$0, %r12
	addq	%rcx, %r11
	adcq	%rbp, %r9
	adcq	%rbx, %r10
	adcq	%rdi, %r14
	adcq	%rsi, %r15
	adcq	%rax, %r12
	movq	-48(%rsp), %rax         ## 8-byte Reload
	movq	32(%rax), %rdx
	mulxq	-56(%rsp), %rsi, %rcx   ## 8-byte Folded Reload
	mulxq	-128(%rsp), %r13, %rax  ## 8-byte Folded Reload
	addq	%rsi, %rax
	mulxq	-64(%rsp), %rbx, %rsi   ## 8-byte Folded Reload
	adcq	%rcx, %rbx
	mulxq	-72(%rsp), %rdi, %rcx   ## 8-byte Folded Reload
	adcq	%rsi, %rdi
	mulxq	-80(%rsp), %rsi, %rbp   ## 8-byte Folded Reload
	adcq	%rcx, %rsi
	mulxq	-88(%rsp), %r8, %rcx    ## 8-byte Folded Reload
	adcq	%rbp, %r8
	adcq	$0, %rcx
	addq	%r11, %r13
	adcq	%r9, %rax
	adcq	%r10, %rbx
	adcq	%r14, %rdi
	adcq	%r15, %rsi
	adcq	%r12, %r8
	adcq	$0, %rcx
	movq	-120(%rsp), %rdx        ## 8-byte Reload
	imulq	%r13, %rdx
	mulxq	-104(%rsp), %rbp, %r15  ## 8-byte Folded Reload
	addq	%r13, %rbp
	mulxq	-16(%rsp), %r11, %rbp   ## 8-byte Folded Reload
	adcq	%rax, %r11
	mulxq	-112(%rsp), %r9, %rax   ## 8-byte Folded Reload
	adcq	%rbx, %r9
	mulxq	-24(%rsp), %r10, %rbx   ## 8-byte Folded Reload
	adcq	%rdi, %r10
	mulxq	-32(%rsp), %r14, %rdi   ## 8-byte Folded Reload
	adcq	%rsi, %r14
	mulxq	-40(%rsp), %rsi, %rdx   ## 8-byte Folded Reload
	adcq	%r8, %rsi
	adcq	$0, %rcx
	addq	%r15, %r11
	adcq	%rbp, %r9
	adcq	%rax, %r10
	adcq	%rbx, %r14
	adcq	%rdi, %rsi
	adcq	%rdx, %rcx
	movq	-48(%rsp), %rax         ## 8-byte Reload
	movq	40(%rax), %rdx
	mulxq	-56(%rsp), %rdi, %rax   ## 8-byte Folded Reload
	mulxq	-128(%rsp), %r13, %rbx  ## 8-byte Folded Reload
	addq	%rdi, %rbx
	mulxq	-64(%rsp), %rdi, %rbp   ## 8-byte Folded Reload
	adcq	%rax, %rdi
	mulxq	-72(%rsp), %r8, %rax    ## 8-byte Folded Reload
	adcq	%rbp, %r8
	mulxq	-80(%rsp), %r15, %rbp   ## 8-byte Folded Reload
	adcq	%rax, %r15
	mulxq	-88(%rsp), %r12, %rax   ## 8-byte Folded Reload
	adcq	%rbp, %r12
	adcq	$0, %rax
	addq	%r11, %r13
	adcq	%r9, %rbx
	adcq	%r10, %rdi
	adcq	%r14, %r8
	adcq	%rsi, %r15
	adcq	%rcx, %r12
	adcq	$0, %rax
	movq	-120(%rsp), %rdx        ## 8-byte Reload
	imulq	%r13, %rdx
	mulxq	-104(%rsp), %rcx, %rsi  ## 8-byte Folded Reload
	movq	%rsi, -120(%rsp)        ## 8-byte Spill
	addq	%r13, %rcx
	movq	-16(%rsp), %r11         ## 8-byte Reload
	mulxq	%r11, %r13, %rcx
	movq	%rcx, -128(%rsp)        ## 8-byte Spill
	adcq	%rbx, %r13
	mulxq	-112(%rsp), %rbp, %rbx  ## 8-byte Folded Reload
	adcq	%rdi, %rbp
	movq	-24(%rsp), %r9          ## 8-byte Reload
	mulxq	%r9, %rsi, %r10
	adcq	%r8, %rsi
	movq	-32(%rsp), %r14         ## 8-byte Reload
	mulxq	%r14, %rdi, %r8
	adcq	%r15, %rdi
	movq	-40(%rsp), %rcx         ## 8-byte Reload
	mulxq	%rcx, %r15, %rdx
	adcq	%r12, %r15
	adcq	$0, %rax
	addq	-120(%rsp), %r13        ## 8-byte Folded Reload
	adcq	-128(%rsp), %rbp        ## 8-byte Folded Reload
	adcq	%rbx, %rsi
	adcq	%r10, %rdi
	adcq	%r8, %r15
	adcq	%rdx, %rax
	movq	%r13, %r10
	subq	-104(%rsp), %r10        ## 8-byte Folded Reload
	movq	%rbp, %rbx
	sbbq	%r11, %rbx
	movq	%rsi, %r11
	sbbq	-112(%rsp), %r11        ## 8-byte Folded Reload
	movq	%rdi, %r8
	sbbq	%r9, %r8
	movq	%r15, %r9
	sbbq	%r14, %r9
	movq	%rax, %rdx
	sbbq	%rcx, %rdx
	movq	%rdx, %rcx
	sarq	$63, %rcx
	cmovsq	%rbp, %rbx
	movq	-8(%rsp), %rcx          ## 8-byte Reload
	movq	%rbx, 8(%rcx)
	cmovsq	%r13, %r10
	movq	%r10, (%rcx)
	cmovsq	%rsi, %r11
	movq	%r11, 16(%rcx)
	cmovsq	%rdi, %r8
	movq	%r8, 24(%rcx)
	cmovsq	%r15, %r9
	movq	%r9, 32(%rcx)
	cmovsq	%rax, %rdx
	movq	%rdx, 40(%rcx)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
                                        ## -- End function
	.globl	_mcl_fp_montRed6Lbmi2   ## -- Begin function mcl_fp_montRed6Lbmi2
	.p2align	4, 0x90
_mcl_fp_montRed6Lbmi2:                  ## @mcl_fp_montRed6Lbmi2
## %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movq	%rdx, %rcx
	movq	%rdi, 8(%rsp)           ## 8-byte Spill
	movq	-8(%rdx), %rax
	movq	%rax, -24(%rsp)         ## 8-byte Spill
	movq	(%rsi), %r9
	movq	%r9, %rdx
	imulq	%rax, %rdx
	movq	40(%rcx), %rax
	movq	%rax, -40(%rsp)         ## 8-byte Spill
	mulxq	%rax, %r15, %rbp
	movq	32(%rcx), %rax
	movq	%rax, -80(%rsp)         ## 8-byte Spill
	mulxq	%rax, %r10, %r8
	movq	24(%rcx), %rax
	movq	%rax, -56(%rsp)         ## 8-byte Spill
	mulxq	%rax, %r12, %r13
	movq	16(%rcx), %rax
	movq	%rax, -64(%rsp)         ## 8-byte Spill
	mulxq	%rax, %rdi, %r14
	movq	(%rcx), %rbx
	movq	%rbx, -32(%rsp)         ## 8-byte Spill
	movq	8(%rcx), %rax
	movq	%rax, -72(%rsp)         ## 8-byte Spill
	mulxq	%rax, %rcx, %r11
	mulxq	%rbx, %rdx, %rax
	addq	%rcx, %rax
	adcq	%rdi, %r11
	adcq	%r12, %r14
	adcq	%r10, %r13
	adcq	%r15, %r8
	adcq	$0, %rbp
	addq	%r9, %rdx
	adcq	8(%rsi), %rax
	adcq	16(%rsi), %r11
	adcq	24(%rsi), %r14
	adcq	32(%rsi), %r13
	adcq	40(%rsi), %r8
	movq	%r8, -48(%rsp)          ## 8-byte Spill
	adcq	48(%rsi), %rbp
	movq	%rbp, -120(%rsp)        ## 8-byte Spill
	movq	88(%rsi), %rcx
	movq	80(%rsi), %rdx
	movq	72(%rsi), %rdi
	movq	64(%rsi), %rbx
	movq	56(%rsi), %r8
	adcq	$0, %r8
	adcq	$0, %rbx
	movq	%rbx, -88(%rsp)         ## 8-byte Spill
	adcq	$0, %rdi
	movq	%rdi, -104(%rsp)        ## 8-byte Spill
	adcq	$0, %rdx
	movq	%rdx, -16(%rsp)         ## 8-byte Spill
	adcq	$0, %rcx
	movq	%rcx, -96(%rsp)         ## 8-byte Spill
	setb	-128(%rsp)              ## 1-byte Folded Spill
	movq	-24(%rsp), %rdx         ## 8-byte Reload
	imulq	%rax, %rdx
	movq	-40(%rsp), %r10         ## 8-byte Reload
	mulxq	%r10, %rsi, %rcx
	movq	%rsi, (%rsp)            ## 8-byte Spill
	movq	%rcx, -112(%rsp)        ## 8-byte Spill
	mulxq	-80(%rsp), %rcx, %r12   ## 8-byte Folded Reload
	movq	%rcx, -8(%rsp)          ## 8-byte Spill
	mulxq	-56(%rsp), %r15, %rbx   ## 8-byte Folded Reload
	mulxq	-64(%rsp), %rbp, %r9    ## 8-byte Folded Reload
	mulxq	-72(%rsp), %rcx, %rdi   ## 8-byte Folded Reload
	mulxq	-32(%rsp), %rdx, %rsi   ## 8-byte Folded Reload
	addq	%rcx, %rsi
	adcq	%rbp, %rdi
	adcq	%r15, %r9
	adcq	-8(%rsp), %rbx          ## 8-byte Folded Reload
	adcq	(%rsp), %r12            ## 8-byte Folded Reload
	movq	-112(%rsp), %rcx        ## 8-byte Reload
	adcq	$0, %rcx
	addq	%rax, %rdx
	adcq	%r11, %rsi
	adcq	%r14, %rdi
	adcq	%r13, %r9
	adcq	-48(%rsp), %rbx         ## 8-byte Folded Reload
	adcq	-120(%rsp), %r12        ## 8-byte Folded Reload
	adcq	%r8, %rcx
	movq	%rcx, -112(%rsp)        ## 8-byte Spill
	adcq	$0, -88(%rsp)           ## 8-byte Folded Spill
	adcq	$0, -104(%rsp)          ## 8-byte Folded Spill
	adcq	$0, -16(%rsp)           ## 8-byte Folded Spill
	adcq	$0, -96(%rsp)           ## 8-byte Folded Spill
	movzbl	-128(%rsp), %r15d       ## 1-byte Folded Reload
	adcq	$0, %r15
	movq	-24(%rsp), %rdx         ## 8-byte Reload
	imulq	%rsi, %rdx
	mulxq	%r10, %rcx, %rax
	movq	%rcx, -128(%rsp)        ## 8-byte Spill
	movq	%rax, -120(%rsp)        ## 8-byte Spill
	mulxq	-80(%rsp), %rax, %r13   ## 8-byte Folded Reload
	movq	%rax, -48(%rsp)         ## 8-byte Spill
	mulxq	-56(%rsp), %r8, %r14    ## 8-byte Folded Reload
	mulxq	-64(%rsp), %r10, %rbp   ## 8-byte Folded Reload
	mulxq	-72(%rsp), %rcx, %r11   ## 8-byte Folded Reload
	mulxq	-32(%rsp), %rdx, %rax   ## 8-byte Folded Reload
	addq	%rcx, %rax
	adcq	%r10, %r11
	adcq	%r8, %rbp
	adcq	-48(%rsp), %r14         ## 8-byte Folded Reload
	adcq	-128(%rsp), %r13        ## 8-byte Folded Reload
	movq	-120(%rsp), %rcx        ## 8-byte Reload
	adcq	$0, %rcx
	addq	%rsi, %rdx
	adcq	%rdi, %rax
	adcq	%r9, %r11
	adcq	%rbx, %rbp
	adcq	%r12, %r14
	adcq	-112(%rsp), %r13        ## 8-byte Folded Reload
	adcq	-88(%rsp), %rcx         ## 8-byte Folded Reload
	movq	%rcx, -120(%rsp)        ## 8-byte Spill
	adcq	$0, -104(%rsp)          ## 8-byte Folded Spill
	adcq	$0, -16(%rsp)           ## 8-byte Folded Spill
	adcq	$0, -96(%rsp)           ## 8-byte Folded Spill
	adcq	$0, %r15
	movq	-24(%rsp), %rdi         ## 8-byte Reload
	movq	%rdi, %rdx
	imulq	%rax, %rdx
	mulxq	-40(%rsp), %rsi, %rcx   ## 8-byte Folded Reload
	movq	%rsi, -128(%rsp)        ## 8-byte Spill
	movq	%rcx, -112(%rsp)        ## 8-byte Spill
	mulxq	-80(%rsp), %rsi, %rcx   ## 8-byte Folded Reload
	movq	%rsi, -48(%rsp)         ## 8-byte Spill
	movq	%rcx, -88(%rsp)         ## 8-byte Spill
	mulxq	-56(%rsp), %r9, %r10    ## 8-byte Folded Reload
	mulxq	-64(%rsp), %rsi, %r12   ## 8-byte Folded Reload
	mulxq	-72(%rsp), %rcx, %r8    ## 8-byte Folded Reload
	mulxq	-32(%rsp), %rdx, %rbx   ## 8-byte Folded Reload
	addq	%rcx, %rbx
	adcq	%rsi, %r8
	adcq	%r9, %r12
	adcq	-48(%rsp), %r10         ## 8-byte Folded Reload
	movq	-88(%rsp), %rsi         ## 8-byte Reload
	adcq	-128(%rsp), %rsi        ## 8-byte Folded Reload
	movq	-112(%rsp), %rcx        ## 8-byte Reload
	adcq	$0, %rcx
	addq	%rax, %rdx
	adcq	%r11, %rbx
	adcq	%rbp, %r8
	adcq	%r14, %r12
	adcq	%r13, %r10
	adcq	-120(%rsp), %rsi        ## 8-byte Folded Reload
	movq	%rsi, -88(%rsp)         ## 8-byte Spill
	adcq	-104(%rsp), %rcx        ## 8-byte Folded Reload
	movq	%rcx, -112(%rsp)        ## 8-byte Spill
	adcq	$0, -16(%rsp)           ## 8-byte Folded Spill
	movq	-96(%rsp), %rax         ## 8-byte Reload
	adcq	$0, %rax
	adcq	$0, %r15
	movq	%rdi, %rdx
	imulq	%rbx, %rdx
	mulxq	-40(%rsp), %rsi, %rcx   ## 8-byte Folded Reload
	movq	%rsi, -96(%rsp)         ## 8-byte Spill
	movq	%rcx, -104(%rsp)        ## 8-byte Spill
	mulxq	-80(%rsp), %rcx, %r14   ## 8-byte Folded Reload
	movq	%rcx, -120(%rsp)        ## 8-byte Spill
	mulxq	-56(%rsp), %rcx, %r13   ## 8-byte Folded Reload
	movq	%rcx, -128(%rsp)        ## 8-byte Spill
	mulxq	-64(%rsp), %rbp, %r11   ## 8-byte Folded Reload
	mulxq	-72(%rsp), %rsi, %rdi   ## 8-byte Folded Reload
	movq	-32(%rsp), %r9          ## 8-byte Reload
	mulxq	%r9, %rdx, %rcx
	addq	%rsi, %rcx
	adcq	%rbp, %rdi
	adcq	-128(%rsp), %r11        ## 8-byte Folded Reload
	adcq	-120(%rsp), %r13        ## 8-byte Folded Reload
	adcq	-96(%rsp), %r14         ## 8-byte Folded Reload
	movq	-104(%rsp), %rsi        ## 8-byte Reload
	adcq	$0, %rsi
	addq	%rbx, %rdx
	adcq	%r8, %rcx
	adcq	%r12, %rdi
	adcq	%r10, %r11
	adcq	-88(%rsp), %r13         ## 8-byte Folded Reload
	adcq	-112(%rsp), %r14        ## 8-byte Folded Reload
	adcq	-16(%rsp), %rsi         ## 8-byte Folded Reload
	movq	%rsi, -104(%rsp)        ## 8-byte Spill
	adcq	$0, %rax
	movq	%rax, -96(%rsp)         ## 8-byte Spill
	adcq	$0, %r15
	movq	-24(%rsp), %rdx         ## 8-byte Reload
	imulq	%rcx, %rdx
	mulxq	%r9, %rax, %rsi
	mulxq	-72(%rsp), %r8, %rbp    ## 8-byte Folded Reload
	addq	%rsi, %r8
	mulxq	-64(%rsp), %rsi, %rbx   ## 8-byte Folded Reload
	adcq	%rbp, %rsi
	mulxq	-56(%rsp), %r12, %r10   ## 8-byte Folded Reload
	adcq	%rbx, %r12
	mulxq	-80(%rsp), %rbx, %r9    ## 8-byte Folded Reload
	adcq	%r10, %rbx
	mulxq	-40(%rsp), %rdx, %r10   ## 8-byte Folded Reload
	adcq	%r9, %rdx
	adcq	$0, %r10
	addq	%rcx, %rax
	adcq	%rdi, %r8
	adcq	%r11, %rsi
	adcq	%r13, %r12
	adcq	%r14, %rbx
	adcq	-104(%rsp), %rdx        ## 8-byte Folded Reload
	adcq	-96(%rsp), %r10         ## 8-byte Folded Reload
	adcq	$0, %r15
	movq	%r8, %rax
	subq	-32(%rsp), %rax         ## 8-byte Folded Reload
	movq	%rsi, %rcx
	sbbq	-72(%rsp), %rcx         ## 8-byte Folded Reload
	movq	%r12, %rdi
	sbbq	-64(%rsp), %rdi         ## 8-byte Folded Reload
	movq	%rbx, %rbp
	sbbq	-56(%rsp), %rbp         ## 8-byte Folded Reload
	movq	%rdx, %r9
	sbbq	-80(%rsp), %r9          ## 8-byte Folded Reload
	movq	%r10, %r11
	sbbq	-40(%rsp), %r11         ## 8-byte Folded Reload
	sbbq	$0, %r15
	testb	$1, %r15b
	cmovneq	%rsi, %rcx
	movq	8(%rsp), %rsi           ## 8-byte Reload
	movq	%rcx, 8(%rsi)
	cmovneq	%r8, %rax
	movq	%rax, (%rsi)
	cmovneq	%r12, %rdi
	movq	%rdi, 16(%rsi)
	cmovneq	%rbx, %rbp
	movq	%rbp, 24(%rsi)
	cmovneq	%rdx, %r9
	movq	%r9, 32(%rsi)
	cmovneq	%r10, %r11
	movq	%r11, 40(%rsi)
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
                                        ## -- End function
	.globl	_mcl_fp_addPre6Lbmi2    ## -- Begin function mcl_fp_addPre6Lbmi2
	.p2align	4, 0x90
_mcl_fp_addPre6Lbmi2:                   ## @mcl_fp_addPre6Lbmi2
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
	.globl	_mcl_fp_subPre6Lbmi2    ## -- Begin function mcl_fp_subPre6Lbmi2
	.p2align	4, 0x90
_mcl_fp_subPre6Lbmi2:                   ## @mcl_fp_subPre6Lbmi2
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
	.globl	_mcl_fp_shr1_6Lbmi2     ## -- Begin function mcl_fp_shr1_6Lbmi2
	.p2align	4, 0x90
_mcl_fp_shr1_6Lbmi2:                    ## @mcl_fp_shr1_6Lbmi2
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
	.globl	_mcl_fp_add6Lbmi2       ## -- Begin function mcl_fp_add6Lbmi2
	.p2align	4, 0x90
_mcl_fp_add6Lbmi2:                      ## @mcl_fp_add6Lbmi2
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
	.globl	_mcl_fp_addNF6Lbmi2     ## -- Begin function mcl_fp_addNF6Lbmi2
	.p2align	4, 0x90
_mcl_fp_addNF6Lbmi2:                    ## @mcl_fp_addNF6Lbmi2
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
	.globl	_mcl_fp_sub6Lbmi2       ## -- Begin function mcl_fp_sub6Lbmi2
	.p2align	4, 0x90
_mcl_fp_sub6Lbmi2:                      ## @mcl_fp_sub6Lbmi2
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
	.globl	_mcl_fp_subNF6Lbmi2     ## -- Begin function mcl_fp_subNF6Lbmi2
	.p2align	4, 0x90
_mcl_fp_subNF6Lbmi2:                    ## @mcl_fp_subNF6Lbmi2
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
	.globl	_mcl_fpDbl_add6Lbmi2    ## -- Begin function mcl_fpDbl_add6Lbmi2
	.p2align	4, 0x90
_mcl_fpDbl_add6Lbmi2:                   ## @mcl_fpDbl_add6Lbmi2
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
	.globl	_mcl_fpDbl_sub6Lbmi2    ## -- Begin function mcl_fpDbl_sub6Lbmi2
	.p2align	4, 0x90
_mcl_fpDbl_sub6Lbmi2:                   ## @mcl_fpDbl_sub6Lbmi2
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
