	.file	"ContactManager.c"
	.text
	.p2align 4
	.globl	CompareContactsByName
	.def	CompareContactsByName;	.scl	2;	.type	32;	.endef
	.seh_proc	CompareContactsByName
CompareContactsByName:
	.seh_endprologue
	rex.W jmp	*__imp__stricmp(%rip)
	.seh_endproc
	.p2align 4
	.globl	CompareContactsByPhone
	.def	CompareContactsByPhone;	.scl	2;	.type	32;	.endef
	.seh_proc	CompareContactsByPhone
CompareContactsByPhone:
	.seh_endprologue
	addq	$100, %rdx
	addq	$100, %rcx
	rex.W jmp	*__imp__stricmp(%rip)
	.seh_endproc
	.section .rdata,"dr"
.LC0:
	.ascii "%s|%s|%s|%s\12\0"
	.text
	.p2align 4
	.def	snprintf.constprop.0;	.scl	3;	.type	32;	.endef
	.seh_proc	snprintf.constprop.0
snprintf.constprop.0:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	leaq	.LC0(%rip), %r8
	movl	$512, %edx
	movq	%r9, 88(%rsp)
	leaq	88(%rsp), %r9
	movq	%r9, 40(%rsp)
	call	__mingw_vsnprintf
	addq	$56, %rsp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC2:
	.ascii "ContactManagerClass\0"
.LC3:
	.ascii "Error\0"
.LC4:
	.ascii "Window Registration Failed!\0"
.LC5:
	.ascii "Contact Management System\0"
.LC6:
	.ascii "Window Creation Failed!\0"
	.text
	.p2align 4
	.globl	WinMain
	.def	WinMain;	.scl	2;	.type	32;	.endef
	.seh_proc	WinMain
WinMain:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$248, %rsp
	.seh_stackalloc	248
	.seh_endprologue
	movq	.LC1(%rip), %rax
	leaq	.LC2(%rip), %rdi
	movq	%rcx, %rbx
	movl	%r9d, %esi
	leaq	104(%rsp), %rcx
	movq	%rax, 104(%rsp)
	call	*__imp_InitCommonControlsEx(%rip)
	pxor	%xmm0, %xmm0
	xorl	%ecx, %ecx
	movl	$32512, %edx
	leaq	WndProc(%rip), %rax
	movups	%xmm0, 196(%rsp)
	movups	%xmm0, 164(%rsp)
	movups	%xmm0, 180(%rsp)
	movups	%xmm0, 208(%rsp)
	movl	$3, 160(%rsp)
	movq	%rax, 168(%rsp)
	movq	%rbx, 184(%rsp)
	movq	%rdi, 224(%rsp)
	movq	$6, 208(%rsp)
	call	*__imp_LoadCursorA(%rip)
	leaq	160(%rsp), %rcx
	movq	%rax, 200(%rsp)
	call	*__imp_RegisterClassA(%rip)
	testw	%ax, %ax
	je	.L12
	xorl	%ecx, %ecx
	movq	%rbx, 80(%rsp)
	movl	$13565952, %r9d
	movq	%rdi, %rdx
	movq	$0, 88(%rsp)
	leaq	.LC5(%rip), %r8
	movq	$0, 72(%rsp)
	movq	$0, 64(%rsp)
	movl	$500, 56(%rsp)
	movl	$700, 48(%rsp)
	movl	$-2147483648, 40(%rsp)
	movl	$-2147483648, 32(%rsp)
	call	*__imp_CreateWindowExA(%rip)
	movq	%rax, g_hMainWnd(%rip)
	movq	%rax, %rcx
	testq	%rax, %rax
	je	.L13
	movl	%esi, %edx
	leaq	112(%rsp), %rbx
	call	*__imp_ShowWindow(%rip)
	movq	g_hMainWnd(%rip), %rcx
	call	*__imp_UpdateWindow(%rip)
	movq	__imp_GetMessageA(%rip), %rsi
	movq	__imp_TranslateMessage(%rip), %rbp
	movq	__imp_DispatchMessageA(%rip), %rdi
	jmp	.L10
	.p2align 4,,10
	.p2align 3
.L11:
	movq	%rbx, %rcx
	call	*%rbp
	movq	%rbx, %rcx
	call	*%rdi
.L10:
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	xorl	%edx, %edx
	movq	%rbx, %rcx
	call	*%rsi
	testl	%eax, %eax
	jne	.L11
	movl	128(%rsp), %eax
	addq	$248, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
	.p2align 3
.L12:
	movl	$16, %r9d
	leaq	.LC3(%rip), %r8
	leaq	.LC4(%rip), %rdx
	xorl	%ecx, %ecx
	call	*__imp_MessageBoxA(%rip)
	xorl	%eax, %eax
.L14:
	addq	$248, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
	.p2align 3
.L13:
	movl	$16, %r9d
	leaq	.LC3(%rip), %r8
	leaq	.LC6(%rip), %rdx
	call	*__imp_MessageBoxA(%rip)
	xorl	%eax, %eax
	jmp	.L14
	.seh_endproc
	.section .rdata,"dr"
.LC8:
	.ascii "Name\0"
.LC9:
	.ascii "Phone\0"
.LC10:
	.ascii "Email\0"
.LC11:
	.ascii "Date\0"
	.text
	.p2align 4
	.globl	InitializeListViewColumns
	.def	InitializeListViewColumns;	.scl	2;	.type	32;	.endef
	.seh_proc	InitializeListViewColumns
InitializeListViewColumns:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$96, %rsp
	.seh_stackalloc	96
	.seh_endprologue
	pxor	%xmm0, %xmm0
	leaq	.LC8(%rip), %rax
	xorl	%r8d, %r8d
	movq	__imp_SendMessageA(%rip), %rsi
	movl	$4123, %edx
	leaq	32(%rsp), %rdi
	movups	%xmm0, 36(%rsp)
	movq	%rcx, %rbx
	movups	%xmm0, 52(%rsp)
	movq	%rdi, %r9
	movups	%xmm0, 68(%rsp)
	movl	$0, 84(%rsp)
	movl	$14, 32(%rsp)
	movq	%rax, 48(%rsp)
	movl	$150, 40(%rsp)
	call	*%rsi
	leaq	.LC9(%rip), %rax
	movq	%rdi, %r9
	movq	%rbx, %rcx
	movq	%rax, 48(%rsp)
	movl	$1, %r8d
	movl	$4123, %edx
	movl	$100, 40(%rsp)
	call	*%rsi
	leaq	.LC10(%rip), %rax
	movq	%rdi, %r9
	movq	%rbx, %rcx
	movq	%rax, 48(%rsp)
	movl	$2, %r8d
	movl	$4123, %edx
	movl	$200, 40(%rsp)
	call	*%rsi
	leaq	.LC11(%rip), %rax
	movq	%rdi, %r9
	movq	%rbx, %rcx
	movq	%rax, 48(%rsp)
	movl	$3, %r8d
	movl	$4123, %edx
	movl	$100, 40(%rsp)
	call	*%rsi
	nop
	addq	$96, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.seh_endproc
	.p2align 4
	.globl	DisplayContacts
	.def	DisplayContacts;	.scl	2;	.type	32;	.endef
	.seh_proc	DisplayContacts
DisplayContacts:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$232, %rsp
	.seh_stackalloc	232
	.seh_endprologue
	movq	__imp_SendMessageA(%rip), %rbp
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movq	%rcx, %rsi
	movq	%rdx, %r14
	leaq	40(%rsp), %rdi
	movl	$4105, %edx
	call	*%rbp
	movl	$10, %ecx
	xorl	%eax, %eax
	movq	$0, 36(%rsp)
	movq	$0, 112(%rsp)
	rep stosq
	movl	$1, 32(%rsp)
	movl	g_contactCount(%rip), %edi
	testl	%edi, %edi
	jle	.L16
	leaq	g_contacts(%rip), %rbx
	xorl	%r12d, %r12d
	leaq	32(%rsp), %r15
	leaq	128(%rsp), %r13
	testq	%r14, %r14
	je	.L31
	.p2align 4,,10
	.p2align 3
.L23:
	cmpb	$0, (%r14)
	je	.L21
	movq	%r14, %rdx
	movq	%rbx, %rcx
	call	strstr
	testq	%rax, %rax
	je	.L22
.L21:
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movl	$4100, %edx
	movq	%rsi, %rcx
	call	*%rbp
	movq	%r15, %r9
	xorl	%r8d, %r8d
	movl	$4103, %edx
	movq	%rsi, %rcx
	movl	%eax, 36(%rsp)
	movl	$0, 40(%rsp)
	movq	%rbx, 56(%rsp)
	call	*%rbp
	leaq	100(%rbx), %rdx
	movq	%r13, %r9
	movq	%rsi, %rcx
	movslq	%eax, %rdi
	movq	%rdx, 152(%rsp)
	movl	$4142, %edx
	movl	$1, 136(%rsp)
	movq	%rdi, %r8
	call	*%rbp
	leaq	130(%rbx), %rax
	movq	%rdi, %r8
	movq	%r13, %r9
	movl	$4142, %edx
	movq	%rsi, %rcx
	movl	$2, 136(%rsp)
	movq	%rax, 152(%rsp)
	call	*%rbp
	leaq	230(%rbx), %rax
	movq	%rdi, %r8
	movq	%r13, %r9
	movq	%rax, 152(%rsp)
	movl	$4142, %edx
	movq	%rsi, %rcx
	movl	$3, 136(%rsp)
	call	*%rbp
	movl	g_contactCount(%rip), %edi
.L22:
	addl	$1, %r12d
	addq	$241, %rbx
	cmpl	%edi, %r12d
	jl	.L23
.L16:
	addq	$232, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,10
	.p2align 3
.L31:
	xorl	%r13d, %r13d
	movq	%r15, %r14
	leaq	128(%rsp), %r12
	.p2align 4,,10
	.p2align 3
.L19:
	xorl	%r9d, %r9d
	xorl	%r8d, %r8d
	movl	$4100, %edx
	movq	%rsi, %rcx
	call	*%rbp
	xorl	%r8d, %r8d
	movq	%rbx, 56(%rsp)
	movq	%r14, %r9
	movl	$4103, %edx
	movq	%rsi, %rcx
	movl	%eax, 36(%rsp)
	addl	$1, %r13d
	movl	$0, 40(%rsp)
	call	*%rbp
	leaq	100(%rbx), %rdx
	movq	%r12, %r9
	movq	%rsi, %rcx
	movslq	%eax, %rdi
	movq	%rdx, 152(%rsp)
	movl	$4142, %edx
	movl	$1, 136(%rsp)
	movq	%rdi, %r8
	call	*%rbp
	leaq	130(%rbx), %rax
	movq	%r12, %r9
	movq	%rdi, %r8
	movl	$4142, %edx
	movq	%rsi, %rcx
	movl	$2, 136(%rsp)
	movq	%rax, 152(%rsp)
	call	*%rbp
	leaq	230(%rbx), %rax
	movq	%r12, %r9
	movq	%rdi, %r8
	movq	%rax, 152(%rsp)
	movl	$4142, %edx
	movq	%rsi, %rcx
	addq	$241, %rbx
	movl	$3, 136(%rsp)
	call	*%rbp
	cmpl	%r13d, g_contactCount(%rip)
	jg	.L19
	jmp	.L16
	.seh_endproc
	.p2align 4
	.globl	ShowAddContactDialog
	.def	ShowAddContactDialog;	.scl	2;	.type	32;	.endef
	.seh_proc	ShowAddContactDialog
ShowAddContactDialog:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movl	$-1, g_editIndex(%rip)
	movq	%rcx, %rbx
	xorl	%ecx, %ecx
	call	*__imp_GetModuleHandleA(%rip)
	leaq	ContactDlgProc(%rip), %r9
	movq	%rbx, %r8
	movq	$0, 32(%rsp)
	movq	%rax, %rcx
	movl	$101, %edx
	call	*__imp_DialogBoxParamA(%rip)
	nop
	addq	$48, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.p2align 4
	.globl	ShowEditContactDialog
	.def	ShowEditContactDialog;	.scl	2;	.type	32;	.endef
	.seh_proc	ShowEditContactDialog
ShowEditContactDialog:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, %rbx
	xorl	%ecx, %ecx
	call	*__imp_GetModuleHandleA(%rip)
	leaq	ContactDlgProc(%rip), %r9
	movq	%rbx, %r8
	movq	$0, 32(%rsp)
	movq	%rax, %rcx
	movl	$101, %edx
	call	*__imp_DialogBoxParamA(%rip)
	nop
	addq	$48, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC12:
	.ascii "Contact list is full!\0"
	.text
	.p2align 4
	.globl	AddNewContact
	.def	AddNewContact;	.scl	2;	.type	32;	.endef
	.seh_proc	AddNewContact
AddNewContact:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$296, %rsp
	.seh_stackalloc	296
	.seh_endprologue
	movslq	g_contactCount(%rip), %rbx
	movq	%rdx, %rbp
	movq	%r8, %rdi
	movq	%r9, %rsi
	cmpl	$999, %ebx
	jg	.L36
	leaq	32(%rsp), %rax
	movq	%rcx, %rdx
	movl	$99, %r8d
	movq	%rax, %rcx
	call	strncpy
	leaq	132(%rsp), %rcx
	movq	%rbp, %rdx
	movl	$29, %r8d
	movb	$0, 131(%rsp)
	call	strncpy
	leaq	162(%rsp), %rcx
	movq	%rdi, %rdx
	movl	$99, %r8d
	movb	$0, 161(%rsp)
	call	strncpy
	leaq	262(%rsp), %rcx
	movq	%rsi, %rdx
	movl	$10, %r8d
	movb	$0, 261(%rsp)
	call	strncpy
	leal	1(%rbx), %eax
	movdqa	32(%rsp), %xmm0
	movdqa	48(%rsp), %xmm1
	imulq	$241, %rbx, %rbx
	movdqa	64(%rsp), %xmm2
	movl	%eax, g_contactCount(%rip)
	leaq	g_contacts(%rip), %rax
	movdqa	80(%rsp), %xmm3
	movdqa	96(%rsp), %xmm4
	movdqa	112(%rsp), %xmm5
	addq	%rbx, %rax
	movups	%xmm0, (%rax)
	movdqa	128(%rsp), %xmm0
	movups	%xmm1, 16(%rax)
	movdqa	144(%rsp), %xmm1
	movups	%xmm2, 32(%rax)
	movdqa	160(%rsp), %xmm2
	movups	%xmm3, 48(%rax)
	movdqa	176(%rsp), %xmm3
	movups	%xmm4, 64(%rax)
	movdqa	192(%rsp), %xmm4
	movups	%xmm5, 80(%rax)
	movdqa	208(%rsp), %xmm5
	movups	%xmm0, 96(%rax)
	movdqa	224(%rsp), %xmm0
	movups	%xmm1, 112(%rax)
	movdqa	240(%rsp), %xmm1
	movups	%xmm2, 128(%rax)
	movdqa	256(%rsp), %xmm2
	movb	$0, 240(%rax)
	movups	%xmm3, 144(%rax)
	movups	%xmm4, 160(%rax)
	movups	%xmm5, 176(%rax)
	movups	%xmm0, 192(%rax)
	movups	%xmm1, 208(%rax)
	movups	%xmm2, 224(%rax)
	addq	$296, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
	.p2align 3
.L36:
	movq	g_hMainWnd(%rip), %rcx
	movl	$16, %r9d
	leaq	.LC3(%rip), %r8
	leaq	.LC12(%rip), %rdx
	addq	$296, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	rex.W jmp	*__imp_MessageBoxA(%rip)
	.seh_endproc
	.p2align 4
	.globl	UpdateExistingContact
	.def	UpdateExistingContact;	.scl	2;	.type	32;	.endef
	.seh_proc	UpdateExistingContact
UpdateExistingContact:
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%r8, %rdi
	movq	%r9, %rsi
	testl	%ecx, %ecx
	js	.L37
	cmpl	%ecx, g_contactCount(%rip)
	jg	.L39
.L37:
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
	.p2align 3
.L39:
	movslq	%ecx, %rcx
	leaq	g_contacts(%rip), %r12
	movl	$100, %r8d
	imulq	$241, %rcx, %rbx
	leaq	(%rbx,%r12), %rbp
	movq	%rbp, %rcx
	call	strncpy
	leaq	100(%r12,%rbx), %rcx
	movq	%rdi, %rdx
	movb	$0, 99(%rbp)
	movl	$30, %r8d
	call	strncpy
	leaq	130(%r12,%rbx), %rcx
	movq	%rsi, %rdx
	movl	$100, %r8d
	movb	$0, 129(%rbp)
	call	strncpy
	movq	112(%rsp), %rdx
	leaq	230(%r12,%rbx), %rcx
	movl	$11, %r8d
	movb	$0, 229(%rbp)
	call	strncpy
	movb	$0, 240(%rbp)
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC13:
	.ascii "Info\0"
.LC14:
	.ascii "No contact selected!\0"
.LC15:
	.ascii "Confirm\0"
	.align 8
.LC16:
	.ascii "Are you sure you want to delete this contact?\0"
	.text
	.p2align 4
	.globl	DeleteSelectedContact
	.def	DeleteSelectedContact;	.scl	2;	.type	32;	.endef
	.seh_proc	DeleteSelectedContact
DeleteSelectedContact:
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movl	$2, %r9d
	movq	$-1, %r8
	movl	$4108, %edx
	movq	%rcx, %rsi
	call	*__imp_SendMessageA(%rip)
	movq	%rax, %rbx
	cmpl	$-1, %eax
	je	.L44
	movq	g_hMainWnd(%rip), %rcx
	movl	$36, %r9d
	leaq	.LC15(%rip), %r8
	leaq	.LC16(%rip), %rdx
	call	*__imp_MessageBoxA(%rip)
	cmpl	$6, %eax
	je	.L45
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
	.p2align 4,,10
	.p2align 3
.L45:
	movl	g_contactCount(%rip), %eax
	leal	-1(%rax), %edi
	cmpl	%edi, %ebx
	jge	.L43
	leal	-2(%rax), %r8d
	movslq	%ebx, %rcx
	movl	%r8d, %eax
	imulq	$241, %rcx, %rcx
	subl	%ebx, %eax
	leaq	1(%rax), %r8
	leaq	g_contacts(%rip), %rax
	imulq	$241, %r8, %r8
	leaq	241(%rax,%rcx), %rdx
	addq	%rax, %rcx
	call	memmove
.L43:
	xorl	%edx, %edx
	movq	%rsi, %rcx
	movl	%edi, g_contactCount(%rip)
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	jmp	DisplayContacts
	.p2align 4,,10
	.p2align 3
.L44:
	movq	g_hMainWnd(%rip), %rcx
	movl	$64, %r9d
	leaq	.LC13(%rip), %r8
	leaq	.LC14(%rip), %rdx
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	rex.W jmp	*__imp_MessageBoxA(%rip)
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC17:
	.ascii "Contact data too large to save!\0"
.LC18:
	.ascii "wb\0"
	.align 8
.LC19:
	.ascii "Failed to open file for writing.\0"
.LC20:
	.ascii "File write error.\0"
	.align 8
.LC21:
	.ascii "Contacts saved (RSA encrypted) to contacts.txt!\0"
	.text
	.p2align 4
	.globl	SaveContactsRSA
	.def	SaveContactsRSA;	.scl	2;	.type	32;	.endef
	.seh_proc	SaveContactsRSA
SaveContactsRSA:
	pushq	%r15
	.seh_pushreg	%r15
	movl	$100584, %eax
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	call	___chkstk_ms
	subq	%rax, %rsp
	.seh_stackalloc	100584
	.seh_endprologue
	movl	g_contactCount(%rip), %eax
	movb	$0, 576(%rsp)
	movq	%rcx, %r12
	testl	%eax, %eax
	jle	.L47
	leaq	g_contacts(%rip), %r15
	xorl	%r14d, %r14d
	leaq	64(%rsp), %r13
	leaq	576(%rsp), %rbx
	leaq	.LC0(%rip), %rbp
	jmp	.L53
	.p2align 4,,10
	.p2align 3
.L67:
	testb	$4, %al
	jne	.L65
	testl	%eax, %eax
	je	.L50
	movzbl	0(%r13), %ecx
	movb	%cl, (%rdx)
	testb	$2, %al
	jne	.L66
.L50:
	addl	$1, %r14d
	addq	$241, %r15
	cmpl	%r14d, g_contactCount(%rip)
	jle	.L47
.L53:
	leaq	230(%r15), %rax
	movq	%r15, %r9
	movq	%rbp, %r8
	movq	%r13, %rcx
	movq	%rax, 48(%rsp)
	leaq	130(%r15), %rax
	movl	$512, %edx
	movq	%rax, 40(%rsp)
	leaq	100(%r15), %rax
	movq	%rax, 32(%rsp)
	call	snprintf.constprop.0
	movq	%rbx, %rcx
	call	strlen
	movq	%r13, %rcx
	movq	%rax, %rsi
	call	strlen
	leaq	(%rsi,%rax), %rdx
	cmpq	$99999, %rdx
	ja	.L48
	addq	$1, %rax
	leaq	(%rbx,%rsi), %rdx
	cmpl	$8, %eax
	jb	.L67
	movq	0(%r13), %rcx
	leaq	8(%rdx), %rdi
	movq	%r13, %rsi
	andq	$-8, %rdi
	movq	%rcx, (%rdx)
	movl	%eax, %ecx
	movq	-8(%r13,%rcx), %r8
	movq	%r8, -8(%rdx,%rcx)
	subq	%rdi, %rdx
	leal	(%rax,%rdx), %ecx
	subq	%rdx, %rsi
	movl	%ecx, %eax
	shrl	$3, %eax
	movl	%eax, %ecx
	rep movsq
	jmp	.L50
	.p2align 4,,10
	.p2align 3
.L47:
	leaq	.LC18(%rip), %rdx
	movq	%r12, %rcx
	xorl	%esi, %esi
	movabsq	$5842705206148648579, %r12
	call	fopen
	leaq	64(%rsp), %rbp
	leaq	576(%rsp), %rbx
	movl	$16, %r9d
	movq	%rax, %rdi
	leaq	.LC3(%rip), %r8
	leaq	.LC19(%rip), %rdx
	testq	%rax, %rax
	je	.L64
	movq	%rbx, %rcx
	call	strlen
	cmpq	%rax, %rsi
	jnb	.L68
	.p2align 4,,10
	.p2align 3
.L57:
	movzbl	(%rbx,%rsi), %r9d
	movq	%r9, %rcx
	imulq	%r9, %rcx
	movq	%rcx, %rax
	imulq	%r12
	sarq	$10, %rdx
	imulq	$3233, %rdx, %rax
	subq	%rax, %rcx
	imulq	%rcx, %rcx
	movq	%rcx, %rax
	movq	%rcx, %r8
	imulq	%r12
	sarq	$63, %r8
	sarq	$10, %rdx
	movq	%rdx, %rax
	subq	%r8, %rax
	imulq	$3233, %rax, %rdx
	movq	%rcx, %rax
	subq	%rdx, %rax
	imulq	%rax, %rax
	movq	%rax, %rcx
	imulq	%r12
	movq	%rcx, %rax
	sarq	$63, %rax
	sarq	$10, %rdx
	subq	%rax, %rdx
	imulq	$3233, %rdx, %rax
	subq	%rax, %rcx
	movq	%rcx, %rdx
	imulq	%rcx, %rdx
	movq	%rbp, %rcx
	movq	%rdx, %rax
	movq	%rdx, %r8
	imulq	%r12
	movq	%r8, %rax
	sarq	$63, %rax
	sarq	$10, %rdx
	subq	%rax, %rdx
	imulq	$3233, %rdx, %rdx
	subq	%rdx, %r8
	imulq	%r9, %r8
	movq	%rdi, %r9
	movq	%r8, %rax
	imulq	%r12
	movq	%r8, %rax
	sarq	$63, %rax
	sarq	$10, %rdx
	subq	%rax, %rdx
	imulq	$3233, %rdx, %rdx
	subq	%rdx, %r8
	movl	$4, %edx
	movl	%r8d, 64(%rsp)
	movl	$1, %r8d
	call	fwrite
	cmpq	$1, %rax
	jne	.L69
	movq	%rbx, %rcx
	addq	$1, %rsi
	call	strlen
	cmpq	%rax, %rsi
	jb	.L57
.L68:
	movq	%rdi, %rcx
	call	fclose
	movl	$64, %r9d
	leaq	.LC13(%rip), %r8
	leaq	.LC21(%rip), %rdx
.L64:
	movq	g_hMainWnd(%rip), %rcx
	addq	$100584, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	rex.W jmp	*__imp_MessageBoxA(%rip)
	.p2align 4,,10
	.p2align 3
.L48:
	movq	g_hMainWnd(%rip), %rcx
	movl	$16, %r9d
	leaq	.LC3(%rip), %r8
	leaq	.LC17(%rip), %rdx
	call	*__imp_MessageBoxA(%rip)
	nop
.L46:
	addq	$100584, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,10
	.p2align 3
.L65:
	movl	0(%r13), %ecx
	movl	%ecx, (%rdx)
	movl	%eax, %ecx
	movl	-4(%r13,%rcx), %eax
	movl	%eax, -4(%rdx,%rcx)
	jmp	.L50
.L69:
	movq	g_hMainWnd(%rip), %rcx
	movl	$16, %r9d
	leaq	.LC3(%rip), %r8
	leaq	.LC20(%rip), %rdx
	call	*__imp_MessageBoxA(%rip)
	movq	%rdi, %rcx
	call	fclose
	jmp	.L46
.L66:
	movl	%eax, %eax
	movzwl	-2(%r13,%rax), %ecx
	movw	%cx, -2(%rdx,%rax)
	jmp	.L50
	.seh_endproc
	.section .rdata,"dr"
.LC22:
	.ascii "rb\0"
.LC23:
	.ascii "No file found to load.\0"
	.align 8
.LC24:
	.ascii "Buffer overflow while loading data!\0"
.LC25:
	.ascii "\12\0"
.LC26:
	.ascii "|\0"
.LC27:
	.ascii "Too many contacts loaded!\0"
	.align 8
.LC28:
	.ascii "No valid contacts found in the file. Existing contacts remain unchanged.\0"
	.align 8
.LC29:
	.ascii "Contacts loaded and decrypted from contacts.txt!\0"
	.text
	.p2align 4
	.globl	LoadContactsRSA
	.def	LoadContactsRSA;	.scl	2;	.type	32;	.endef
	.seh_proc	LoadContactsRSA
LoadContactsRSA:
	pushq	%r15
	.seh_pushreg	%r15
	movl	$341352, %eax
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	call	___chkstk_ms
	subq	%rax, %rsp
	.seh_stackalloc	341352
	.seh_endprologue
	leaq	.LC22(%rip), %rdx
	xorl	%ebp, %ebp
	movabsq	$5842705206148648579, %rbx
	call	fopen
	leaq	60(%rsp), %rdi
	movq	%rax, %rsi
	testq	%rax, %rax
	jne	.L71
	jmp	.L106
	.p2align 4,,10
	.p2align 3
.L74:
	movslq	60(%rsp), %rax
	movq	%rax, %r8
	imulq	$680180407, %rax, %rax
	movl	%r8d, %edx
	sarl	$31, %edx
	sarq	$41, %rax
	subl	%edx, %eax
	imull	$3233, %eax, %eax
	subl	%eax, %r8d
	movslq	%r8d, %r8
	movq	%r8, %rcx
	imulq	%r8, %rcx
	movq	%rcx, %rax
	imulq	%rbx
	movq	%rcx, %rax
	sarq	$63, %rax
	sarq	$10, %rdx
	subq	%rax, %rdx
	imulq	$3233, %rdx, %rax
	subq	%rax, %rcx
	imulq	%rcx, %rcx
	movq	%rcx, %rax
	imulq	%rbx
	movq	%rcx, %rax
	sarq	$63, %rax
	sarq	$10, %rdx
	subq	%rax, %rdx
	imulq	$3233, %rdx, %rax
	subq	%rax, %rcx
	imulq	%rcx, %rcx
	movq	%rcx, %rax
	imulq	%rbx
	movq	%rcx, %rax
	sarq	$63, %rax
	sarq	$10, %rdx
	subq	%rax, %rdx
	imulq	$3233, %rdx, %rax
	subq	%rax, %rcx
	imulq	%rcx, %rcx
	movq	%rcx, %rax
	imulq	%rbx
	movq	%rcx, %rax
	sarq	$63, %rax
	sarq	$10, %rdx
	subq	%rax, %rdx
	imulq	$3233, %rdx, %rax
	subq	%rax, %rcx
	imulq	%rcx, %rcx
	movq	%rcx, %rax
	imulq	%rbx
	movq	%rcx, %rax
	sarq	$63, %rax
	sarq	$10, %rdx
	subq	%rax, %rdx
	imulq	$3233, %rdx, %rax
	subq	%rax, %rcx
	imulq	%rcx, %rcx
	movq	%rcx, %rax
	imulq	%rbx
	movq	%rcx, %rax
	sarq	$63, %rax
	sarq	$10, %rdx
	subq	%rax, %rdx
	imulq	$3233, %rdx, %rax
	subq	%rax, %rcx
	movq	%rcx, %r10
	movq	%rcx, %r9
	imulq	%rcx, %r10
	imulq	%r9, %r8
	movq	%r10, %rax
	imulq	%rbx
	movq	%r10, %rax
	sarq	$63, %rax
	sarq	$10, %rdx
	movq	%rdx, %rcx
	subq	%rax, %rcx
	imulq	$3233, %rcx, %rax
	movq	%r10, %rcx
	subq	%rax, %rcx
	movq	%r8, %rax
	imulq	%rbx
	movq	%r8, %rax
	sarq	$63, %rax
	sarq	$10, %rdx
	subq	%rax, %rdx
	imulq	$3233, %rdx, %rdx
	subq	%rdx, %r8
	imulq	%rcx, %r8
	imulq	%rcx, %rcx
	movq	%rcx, %rax
	imulq	%rbx
	movq	%rcx, %rax
	sarq	$63, %rax
	sarq	$10, %rdx
	subq	%rax, %rdx
	imulq	$3233, %rdx, %rax
	subq	%rax, %rcx
	imulq	%rcx, %rcx
	movq	%rcx, %rax
	imulq	%rbx
	movq	%rcx, %rax
	sarq	$63, %rax
	sarq	$10, %rdx
	subq	%rax, %rdx
	imulq	$3233, %rdx, %rax
	subq	%rax, %rcx
	movq	%r8, %rax
	imulq	%rbx
	movq	%r8, %rax
	movq	%rcx, %r9
	sarq	$63, %rax
	imulq	%rcx, %r9
	sarq	$10, %rdx
	subq	%rax, %rdx
	movq	%r9, %rax
	imulq	$3233, %rdx, %rdx
	subq	%rdx, %r8
	imulq	%rbx
	movq	%r9, %rax
	sarq	$63, %rax
	imulq	%rcx, %r8
	sarq	$10, %rdx
	subq	%rax, %rdx
	imulq	$3233, %rdx, %rax
	movq	%r9, %rdx
	subq	%rax, %rdx
	movq	%r8, %rax
	movq	%rdx, %rcx
	imulq	%rdx, %rcx
	imulq	%rbx
	movq	%r8, %rax
	sarq	$63, %rax
	sarq	$10, %rdx
	subq	%rax, %rdx
	movq	%rcx, %rax
	imulq	$3233, %rdx, %rdx
	subq	%rdx, %r8
	imulq	%rbx
	movq	%rcx, %rax
	sarq	$63, %rax
	sarq	$10, %rdx
	subq	%rax, %rdx
	imulq	$3233, %rdx, %r9
	subq	%r9, %rcx
	imulq	%rcx, %r8
	movq	%r8, %rax
	imulq	%rbx
	movq	%r8, %rax
	sarq	$63, %rax
	sarq	$10, %rdx
	movq	%rdx, %r9
	subq	%rax, %r9
	imulq	$3233, %r9, %rax
	movq	%r8, %r9
	subq	%rax, %r9
	cmpq	$99999, %rbp
	je	.L72
	movb	%r9b, 336(%rsp,%rbp)
	addq	$1, %rbp
.L71:
	movq	%rsi, %r9
	movl	$1, %r8d
	movl	$4, %edx
	movq	%rdi, %rcx
	call	fread
	cmpq	$1, %rax
	je	.L74
	movq	%rsi, %rcx
	movslq	%ebp, %rbp
	leaq	.LC25(%rip), %r12
	movb	$0, 336(%rsp,%rbp)
	call	fclose
	leaq	64(%rsp), %rax
	leaq	336(%rsp), %rcx
	movq	%r12, %rdx
	movq	%rax, %r8
	movq	%rax, 32(%rsp)
	movq	$0, 64(%rsp)
	call	strtok_r
	movq	%rax, %rcx
	testq	%rax, %rax
	je	.L75
	leaq	80(%rsp), %rax
	xorl	%edi, %edi
	leaq	72(%rsp), %rsi
	movq	%rax, 40(%rsp)
	leaq	.LC26(%rip), %rbx
	jmp	.L85
	.p2align 4,,10
	.p2align 3
.L76:
	movq	32(%rsp), %r8
	xorl	%ecx, %ecx
	movq	%r12, %rdx
	call	strtok_r
	movq	%rax, %rcx
	testq	%rax, %rax
	je	.L107
.L85:
	movq	$0, 72(%rsp)
	movq	%rsi, %r8
	movq	%rbx, %rdx
	call	strtok_r
	movq	%rsi, %r8
	movq	%rbx, %rdx
	xorl	%ecx, %ecx
	movq	%rax, %rbp
	call	strtok_r
	movq	%rsi, %r8
	movq	%rbx, %rdx
	xorl	%ecx, %ecx
	movq	%rax, %r15
	call	strtok_r
	movq	%rsi, %r8
	movq	%rbx, %rdx
	xorl	%ecx, %ecx
	movq	%rax, %r14
	call	strtok_r
	movq	%rax, %r13
	testq	%rbp, %rbp
	je	.L76
	cmpb	$0, 0(%rbp)
	je	.L76
	movq	40(%rsp), %rcx
	movl	$99, %r8d
	movq	%rbp, %rdx
	call	strncpy
	movb	$0, 179(%rsp)
	testq	%r15, %r15
	je	.L77
	cmpb	$0, (%r15)
	jne	.L108
.L77:
	movb	$0, 180(%rsp)
.L78:
	movb	$0, 209(%rsp)
	testq	%r14, %r14
	je	.L79
	cmpb	$0, (%r14)
	jne	.L109
.L79:
	movb	$0, 210(%rsp)
.L80:
	movb	$0, 309(%rsp)
	testq	%r13, %r13
	je	.L81
	cmpb	$0, 0(%r13)
	jne	.L110
.L81:
	movb	$0, 310(%rsp)
	movb	$0, 320(%rsp)
	cmpl	$999, %edi
	jg	.L83
.L111:
	movslq	%edi, %rdx
	movdqa	80(%rsp), %xmm0
	movdqa	96(%rsp), %xmm1
	addl	$1, %edi
	imulq	$241, %rdx, %rdx
	movdqa	112(%rsp), %xmm2
	movdqa	128(%rsp), %xmm3
	movdqa	144(%rsp), %xmm4
	movdqa	160(%rsp), %xmm5
	leaq	100336(%rsp,%rdx), %rax
	movups	%xmm0, 100336(%rsp,%rdx)
	movdqa	176(%rsp), %xmm0
	movups	%xmm1, 16(%rax)
	movdqa	192(%rsp), %xmm1
	movups	%xmm2, 32(%rax)
	movdqa	208(%rsp), %xmm2
	movups	%xmm3, 48(%rax)
	movdqa	224(%rsp), %xmm3
	movups	%xmm4, 64(%rax)
	movdqa	240(%rsp), %xmm4
	movups	%xmm5, 80(%rax)
	movdqa	256(%rsp), %xmm5
	movups	%xmm0, 96(%rax)
	movdqa	272(%rsp), %xmm0
	movups	%xmm1, 112(%rax)
	movdqa	288(%rsp), %xmm1
	movups	%xmm2, 128(%rax)
	movdqa	304(%rsp), %xmm2
	movb	$0, 240(%rax)
	movups	%xmm3, 144(%rax)
	movups	%xmm4, 160(%rax)
	movups	%xmm5, 176(%rax)
	movups	%xmm0, 192(%rax)
	movups	%xmm1, 208(%rax)
	movups	%xmm2, 224(%rax)
	jmp	.L76
.L108:
	leaq	180(%rsp), %rcx
	movl	$29, %r8d
	movq	%r15, %rdx
	call	strncpy
	jmp	.L78
.L109:
	leaq	210(%rsp), %rcx
	movl	$99, %r8d
	movq	%r14, %rdx
	call	strncpy
	jmp	.L80
.L110:
	leaq	310(%rsp), %rcx
	movl	$10, %r8d
	movq	%r13, %rdx
	call	strncpy
	movb	$0, 320(%rsp)
	cmpl	$999, %edi
	jle	.L111
.L83:
	movq	g_hMainWnd(%rip), %rcx
	movq	__imp_MessageBoxA(%rip), %rbx
	movl	$16, %r9d
	leaq	.LC3(%rip), %r8
	leaq	.LC27(%rip), %rdx
	call	*%rbx
	jmp	.L84
.L107:
	testl	%edi, %edi
	jle	.L75
	movq	__imp_MessageBoxA(%rip), %rbx
.L84:
	movl	%edi, %r8d
	leaq	100336(%rsp), %rdx
	leaq	g_contacts(%rip), %rcx
	movl	%edi, g_contactCount(%rip)
	imulq	$241, %r8, %r8
	call	memcpy
	movq	g_hMainWnd(%rip), %rcx
	movl	$64, %r9d
	leaq	.LC13(%rip), %r8
	leaq	.LC29(%rip), %rdx
	call	*%rbx
	nop
.L70:
	addq	$341352, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L75:
	movq	g_hMainWnd(%rip), %rcx
	movl	$64, %r9d
	leaq	.LC13(%rip), %r8
	leaq	.LC28(%rip), %rdx
	call	*__imp_MessageBoxA(%rip)
	jmp	.L70
.L72:
	movq	g_hMainWnd(%rip), %rcx
	movl	$16, %r9d
	leaq	.LC3(%rip), %r8
	leaq	.LC24(%rip), %rdx
	call	*__imp_MessageBoxA(%rip)
	movq	%rsi, %rcx
	call	fclose
	jmp	.L70
.L106:
	movq	g_hMainWnd(%rip), %rcx
	movl	$64, %r9d
	leaq	.LC13(%rip), %r8
	leaq	.LC23(%rip), %rdx
	addq	$341352, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	rex.W jmp	*__imp_MessageBoxA(%rip)
	.seh_endproc
	.section .rdata,"dr"
.LC30:
	.ascii "Failed to create menu.\0"
.LC31:
	.ascii "Add Contact\0"
.LC32:
	.ascii "Edit Contact\0"
.LC33:
	.ascii "Delete Contact\0"
.LC34:
	.ascii "Sort by Name\0"
.LC35:
	.ascii "Sort by Phone\0"
.LC36:
	.ascii "Save (RSA Encrypted)\0"
.LC37:
	.ascii "Load (RSA Decrypted)\0"
.LC38:
	.ascii "Exit\0"
.LC39:
	.ascii "Menu\0"
.LC40:
	.ascii "Search by name:\0"
.LC41:
	.ascii "STATIC\0"
.LC42:
	.ascii "\0"
.LC43:
	.ascii "EDIT\0"
.LC44:
	.ascii "Go\0"
.LC45:
	.ascii "BUTTON\0"
.LC46:
	.ascii "Clear\0"
.LC47:
	.ascii "SysListView32\0"
.LC48:
	.ascii "Failed to create ListView.\0"
.LC49:
	.ascii "No contact selected to edit.\0"
.LC50:
	.ascii "No contacts to delete.\0"
.LC51:
	.ascii "No contacts to save.\0"
.LC52:
	.ascii "contacts.txt\0"
.LC53:
	.ascii "Not enough contacts to sort.\0"
	.text
	.p2align 4
	.globl	WndProc
	.def	WndProc;	.scl	2;	.type	32;	.endef
	.seh_proc	WndProc
WndProc:
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$352, %rsp
	.seh_stackalloc	352
	.seh_endprologue
	movq	%rcx, %rbp
	movl	%edx, %ebx
	movq	%r8, %rsi
	movq	%r9, %rdi
	cmpl	$5, %edx
	je	.L113
	ja	.L114
	cmpl	$1, %edx
	je	.L115
	cmpl	$2, %edx
	jne	.L117
.L116:
	xorl	%ecx, %ecx
	call	*__imp_PostQuitMessage(%rip)
.L117:
	movq	%rdi, %r9
	movq	%rsi, %r8
	movl	%ebx, %edx
	movq	%rbp, %rcx
	addq	$352, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	rex.W jmp	*__imp_DefWindowProcA(%rip)
	.p2align 4,,10
	.p2align 3
.L114:
	cmpl	$273, %edx
	jne	.L117
	cmpw	$8, %r8w
	ja	.L121
	testw	%r8w, %r8w
	je	.L117
	cmpw	$8, %r8w
	ja	.L122
	leaq	.L123(%rip), %rdx
	movzwl	%r8w, %eax
	movslq	(%rdx,%rax,4), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L123:
	.long	.L122-.L123
	.long	.L122-.L123
	.long	.L129-.L123
	.long	.L128-.L123
	.long	.L127-.L123
	.long	.L126-.L123
	.long	.L125-.L123
	.long	.L124-.L123
	.long	.L116-.L123
	.text
	.p2align 4,,10
	.p2align 3
.L115:
	call	*__imp_CreateMenu(%rip)
	movq	%rax, hMenu.4(%rip)
	testq	%rax, %rax
	je	.L141
	call	*__imp_CreatePopupMenu(%rip)
	movq	__imp_AppendMenuA(%rip), %r13
	xorl	%edx, %edx
	leaq	.LC31(%rip), %r9
	movq	%rax, %r12
	movl	$1, %r8d
	movq	%rax, %rcx
	call	*%r13
	xorl	%edx, %edx
	movq	%r12, %rcx
	leaq	.LC32(%rip), %r9
	movl	$2, %r8d
	leaq	.LC45(%rip), %r14
	call	*%r13
	xorl	%edx, %edx
	movq	%r12, %rcx
	leaq	.LC33(%rip), %r9
	movl	$3, %r8d
	call	*%r13
	xorl	%edx, %edx
	movq	%r12, %rcx
	leaq	.LC34(%rip), %r9
	movl	$6, %r8d
	call	*%r13
	xorl	%edx, %edx
	movq	%r12, %rcx
	leaq	.LC35(%rip), %r9
	movl	$7, %r8d
	call	*%r13
	xorl	%edx, %edx
	movq	%r12, %rcx
	leaq	.LC36(%rip), %r9
	movl	$4, %r8d
	call	*%r13
	xorl	%edx, %edx
	movq	%r12, %rcx
	leaq	.LC37(%rip), %r9
	movl	$5, %r8d
	call	*%r13
	xorl	%edx, %edx
	movq	%r12, %rcx
	leaq	.LC38(%rip), %r9
	movl	$8, %r8d
	call	*%r13
	movq	%r12, %r8
	leaq	.LC39(%rip), %r9
	movq	hMenu.4(%rip), %rcx
	movl	$16, %edx
	call	*%r13
	movq	hMenu.4(%rip), %rdx
	movq	%rbp, %rcx
	call	*__imp_SetMenu(%rip)
	movq	__imp_GetModuleHandleA(%rip), %r13
	xorl	%ecx, %ecx
	call	*%r13
	movl	$1342177280, %r9d
	xorl	%ecx, %ecx
	movq	%rbp, 64(%rsp)
	movq	__imp_CreateWindowExA(%rip), %r12
	leaq	.LC40(%rip), %r8
	leaq	.LC41(%rip), %rdx
	movq	$0, 88(%rsp)
	movq	%rax, 80(%rsp)
	movq	$110, 72(%rsp)
	movl	$20, 56(%rsp)
	movl	$100, 48(%rsp)
	movl	$10, 40(%rsp)
	movl	$10, 32(%rsp)
	call	*%r12
	xorl	%ecx, %ecx
	call	*%r13
	movl	$1350565888, %r9d
	xorl	%ecx, %ecx
	movq	%rbp, 64(%rsp)
	leaq	.LC42(%rip), %r8
	leaq	.LC43(%rip), %rdx
	movq	$0, 88(%rsp)
	movq	%rax, 80(%rsp)
	movq	$111, 72(%rsp)
	movl	$20, 56(%rsp)
	movl	$200, 48(%rsp)
	movl	$10, 40(%rsp)
	movl	$120, 32(%rsp)
	call	*%r12
	xorl	%ecx, %ecx
	call	*%r13
	movl	$1342177280, %r9d
	movq	%r14, %rdx
	xorl	%ecx, %ecx
	leaq	.LC44(%rip), %r8
	movq	%rax, 80(%rsp)
	movq	$0, 88(%rsp)
	movq	$112, 72(%rsp)
	movq	%rbp, 64(%rsp)
	movl	$20, 56(%rsp)
	movl	$40, 48(%rsp)
	movl	$10, 40(%rsp)
	movl	$330, 32(%rsp)
	call	*%r12
	xorl	%ecx, %ecx
	call	*%r13
	movl	$1342177280, %r9d
	movq	%r14, %rdx
	xorl	%ecx, %ecx
	leaq	.LC46(%rip), %r8
	movq	%rax, 80(%rsp)
	movq	$0, 88(%rsp)
	movq	$113, 72(%rsp)
	movq	%rbp, 64(%rsp)
	movl	$20, 56(%rsp)
	movl	$50, 48(%rsp)
	movl	$10, 40(%rsp)
	movl	$380, 32(%rsp)
	call	*%r12
	xorl	%ecx, %ecx
	call	*%r13
	xorl	%ecx, %ecx
	movq	%rbp, 64(%rsp)
	movl	$1342177285, %r9d
	movq	$0, 88(%rsp)
	leaq	.LC42(%rip), %r8
	leaq	.LC47(%rip), %rdx
	movq	%rax, 80(%rsp)
	movq	$100, 72(%rsp)
	movl	$400, 56(%rsp)
	movl	$660, 48(%rsp)
	movl	$40, 40(%rsp)
	movl	$10, 32(%rsp)
	call	*%r12
	movq	%rax, g_hListView(%rip)
	movq	%rax, %rcx
	testq	%rax, %rax
	je	.L142
	call	InitializeListViewColumns
	jmp	.L117
	.p2align 4,,10
	.p2align 3
.L113:
	movl	%r9d, %edx
	movzwl	%r9w, %eax
	movl	$1, 40(%rsp)
	movq	g_hListView(%rip), %rcx
	shrl	$16, %edx
	leal	-20(%rax), %r9d
	movl	$40, %r8d
	subl	$50, %edx
	movl	%edx, 32(%rsp)
	movl	$10, %edx
	call	*__imp_MoveWindow(%rip)
	jmp	.L117
	.p2align 4,,10
	.p2align 3
.L141:
	movq	g_hMainWnd(%rip), %rcx
	movl	$16, %r9d
	leaq	.LC3(%rip), %r8
	leaq	.LC30(%rip), %rdx
	call	*__imp_MessageBoxA(%rip)
	movl	$1, %ecx
	call	*__imp_PostQuitMessage(%rip)
	jmp	.L117
	.p2align 4,,10
	.p2align 3
.L121:
	cmpw	$112, %r8w
	je	.L130
	cmpw	$113, %r8w
	jne	.L117
	movq	g_hMainWnd(%rip), %rcx
	movl	$111, %edx
	call	*__imp_GetDlgItem(%rip)
	leaq	.LC42(%rip), %rdx
	movq	%rax, %rcx
	call	*__imp_SetWindowTextA(%rip)
	movq	g_hListView(%rip), %rcx
	xorl	%edx, %edx
	call	DisplayContacts
	jmp	.L117
	.p2align 4,,10
	.p2align 3
.L124:
	movl	g_contactCount(%rip), %eax
	cmpl	$1, %eax
	jle	.L135
	movslq	%eax, %rdx
	leaq	CompareContactsByPhone(%rip), %r9
.L140:
	movl	$241, %r8d
	leaq	g_contacts(%rip), %rcx
	call	qsort
	movq	g_hListView(%rip), %rcx
	xorl	%edx, %edx
	call	DisplayContacts
	jmp	.L117
	.p2align 4,,10
	.p2align 3
.L127:
	movl	g_contactCount(%rip), %eax
	testl	%eax, %eax
	jne	.L134
	movq	g_hMainWnd(%rip), %rcx
	movl	$64, %r9d
	leaq	.LC13(%rip), %r8
	leaq	.LC51(%rip), %rdx
	call	*__imp_MessageBoxA(%rip)
	jmp	.L117
	.p2align 4,,10
	.p2align 3
.L125:
	movl	g_contactCount(%rip), %eax
	leaq	CompareContactsByName(%rip), %r9
	movslq	%eax, %rdx
	cmpl	$1, %eax
	jg	.L140
.L135:
	movq	g_hMainWnd(%rip), %rcx
	movl	$64, %r9d
	leaq	.LC13(%rip), %r8
	leaq	.LC53(%rip), %rdx
	call	*__imp_MessageBoxA(%rip)
	jmp	.L117
	.p2align 4,,10
	.p2align 3
.L129:
	movq	g_hListView(%rip), %rcx
	movl	$2, %r9d
	movl	$4108, %edx
	movq	$-1, %r8
	call	*__imp_SendMessageA(%rip)
	cmpl	$-1, %eax
	je	.L143
	movl	%eax, g_editIndex(%rip)
.L139:
	xorl	%ecx, %ecx
	call	*__imp_GetModuleHandleA(%rip)
	leaq	ContactDlgProc(%rip), %r9
	movq	%rbp, %r8
	movq	$0, 32(%rsp)
	movq	%rax, %rcx
	movl	$101, %edx
	call	*__imp_DialogBoxParamA(%rip)
	jmp	.L117
	.p2align 4,,10
	.p2align 3
.L128:
	movl	g_contactCount(%rip), %edx
	testl	%edx, %edx
	jne	.L133
	movq	g_hMainWnd(%rip), %rcx
	movl	$64, %r9d
	leaq	.LC13(%rip), %r8
	leaq	.LC50(%rip), %rdx
	call	*__imp_MessageBoxA(%rip)
	jmp	.L117
	.p2align 4,,10
	.p2align 3
.L126:
	leaq	.LC52(%rip), %rcx
	call	LoadContactsRSA
	movq	g_hListView(%rip), %rcx
	xorl	%edx, %edx
	call	DisplayContacts
	jmp	.L117
	.p2align 4,,10
	.p2align 3
.L122:
	movl	$-1, g_editIndex(%rip)
	jmp	.L139
	.p2align 4,,10
	.p2align 3
.L142:
	movq	g_hMainWnd(%rip), %rcx
	movl	$16, %r9d
	leaq	.LC3(%rip), %r8
	leaq	.LC48(%rip), %rdx
	call	*__imp_MessageBoxA(%rip)
	movl	$1, %ecx
	call	*__imp_PostQuitMessage(%rip)
	jmp	.L117
	.p2align 4,,10
	.p2align 3
.L130:
	leaq	96(%rsp), %r12
	movq	g_hMainWnd(%rip), %rcx
	movl	$111, %edx
	call	*__imp_GetDlgItem(%rip)
	movq	%r12, %rdx
	movl	$256, %r8d
	movq	%rax, %rcx
	call	*__imp_GetWindowTextA(%rip)
	movq	g_hListView(%rip), %rcx
	movq	%r12, %rdx
	call	DisplayContacts
	jmp	.L117
.L134:
	leaq	.LC52(%rip), %rcx
	call	SaveContactsRSA
	jmp	.L117
.L133:
	movq	g_hListView(%rip), %rcx
	call	DeleteSelectedContact
	jmp	.L117
.L143:
	movq	g_hMainWnd(%rip), %rcx
	movl	$64, %r9d
	leaq	.LC13(%rip), %r8
	leaq	.LC49(%rip), %rdx
	call	*__imp_MessageBoxA(%rip)
	jmp	.L117
	.seh_endproc
	.p2align 4
	.globl	ValidateName
	.def	ValidateName;	.scl	2;	.type	32;	.endef
	.seh_proc	ValidateName
ValidateName:
	.seh_endprologue
	xorl	%eax, %eax
	cmpb	$0, (%rcx)
	setne	%al
	ret
	.seh_endproc
	.p2align 4
	.globl	ValidatePhone
	.def	ValidatePhone;	.scl	2;	.type	32;	.endef
	.seh_proc	ValidatePhone
ValidatePhone:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rbx
	call	strlen
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L146:
	cmpl	%edx, %eax
	jle	.L160
	movzbl	(%rbx,%rdx), %r8d
	addq	$1, %rdx
	leal	-43(%r8), %r9d
	andl	$253, %r9d
	je	.L146
	subl	$48, %r8d
	cmpb	$9, %r8b
	jbe	.L146
	xorl	%eax, %eax
.L145:
	addq	$32, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
	.p2align 3
.L160:
	cmpb	$43, (%rbx)
	movl	$1, %eax
	jne	.L145
	movzbl	1(%rbx), %edx
	cmpl	$52, %edx
	je	.L161
.L155:
	movzbl	(%rbx), %eax
	subl	$43, %eax
	jne	.L151
	movl	%edx, %eax
	subl	$54, %eax
	je	.L162
.L151:
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbx
	ret
.L161:
	cmpb	$52, 2(%rbx)
	je	.L145
	jmp	.L155
.L162:
	movzbl	2(%rbx), %eax
	subl	$48, %eax
	jmp	.L151
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC54:
	.ascii "Invalid name! Must not be empty.\0"
	.align 8
.LC55:
	.ascii "Invalid phone! Must be digits, '+' and '-' only and follow basic rules.\0"
	.align 8
.LC56:
	.ascii "Invalid email! Must contain '@' if not empty.\0"
	.text
	.p2align 4
	.globl	ContactDlgProc
	.def	ContactDlgProc;	.scl	2;	.type	32;	.endef
	.seh_proc	ContactDlgProc
ContactDlgProc:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	%rcx, %rbx
	cmpl	$272, %edx
	je	.L164
	xorl	%eax, %eax
	cmpl	$273, %edx
	jne	.L163
	cmpw	$1, %r8w
	je	.L245
	cmpw	$2, %r8w
	je	.L246
.L168:
	movl	$1, %eax
.L163:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
	.p2align 4,,10
	.p2align 3
.L164:
	movslq	g_editIndex(%rip), %r8
	cmpl	$-1, %r8d
	je	.L167
	imulq	$241, %r8, %r8
	leaq	g_contacts(%rip), %rdi
	movl	$1001, %edx
	movq	__imp_SetDlgItemTextA(%rip), %rsi
	addq	%rdi, %r8
	call	*%rsi
	movslq	g_editIndex(%rip), %rax
	movq	%rbx, %rcx
	movl	$1002, %edx
	imulq	$241, %rax, %rax
	leaq	100(%rdi,%rax), %r8
	call	*%rsi
	movslq	g_editIndex(%rip), %rax
	movq	%rbx, %rcx
	movl	$1003, %edx
	imulq	$241, %rax, %rax
	leaq	130(%rdi,%rax), %r8
	call	*%rsi
	movslq	g_editIndex(%rip), %rax
	movl	$1004, %edx
	movq	%rbx, %rcx
	imulq	$241, %rax, %rax
	leaq	230(%rdi,%rax), %r8
	call	*%rsi
	jmp	.L168
	.p2align 4,,10
	.p2align 3
.L167:
	movq	__imp_SetDlgItemTextA(%rip), %rsi
	leaq	.LC42(%rip), %r8
	movl	$1001, %edx
	call	*%rsi
	movq	%rbx, %rcx
	leaq	.LC42(%rip), %r8
	movl	$1002, %edx
	call	*%rsi
	movq	%rbx, %rcx
	leaq	.LC42(%rip), %r8
	movl	$1003, %edx
	call	*%rsi
	leaq	.LC42(%rip), %r8
	movl	$1004, %edx
	movq	%rbx, %rcx
	call	*%rsi
	jmp	.L168
	.p2align 4,,10
	.p2align 3
.L245:
	leaq	nameBuffer.3(%rip), %r12
	movq	__imp_GetDlgItemTextA(%rip), %rsi
	movl	$100, %r9d
	leaq	nameBuffer.3(%rip), %r8
	movl	$1001, %edx
	call	*%rsi
	movl	$30, %r9d
	movl	$1002, %edx
	movq	%rbx, %rcx
	leaq	phoneBuffer.2(%rip), %r8
	call	*%rsi
	movl	$100, %r9d
	movl	$1003, %edx
	movq	%rbx, %rcx
	leaq	emailBuffer.1(%rip), %r8
	call	*%rsi
	movq	%rbx, %rcx
	movl	$11, %r9d
	movl	$1004, %edx
	leaq	dateBuffer.0(%rip), %r8
	call	*%rsi
	movq	%r12, %rcx
	call	strlen
	testl	%eax, %eax
	je	.L170
	leaq	-1(%r12), %rbp
	leaq	(%r12,%rax), %rsi
	movq	__imp_isspace(%rip), %rdi
	addq	%rax, %rbp
	subl	$1, %eax
	subq	%rax, %rbp
	jmp	.L171
	.p2align 4,,10
	.p2align 3
.L174:
	movb	$0, -1(%rsi)
	subq	$1, %rsi
	cmpq	%rbp, %rsi
	je	.L170
.L171:
	movzbl	-1(%rsi), %ecx
	call	*%rdi
	testl	%eax, %eax
	jne	.L174
.L170:
	leaq	phoneBuffer.2(%rip), %r13
	movq	%r13, %rcx
	call	strlen
	testl	%eax, %eax
	je	.L172
	leaq	-1(%r13), %rbp
	leaq	0(%r13,%rax), %rsi
	movq	__imp_isspace(%rip), %rdi
	addq	%rax, %rbp
	subl	$1, %eax
	subq	%rax, %rbp
	jmp	.L173
	.p2align 4,,10
	.p2align 3
.L177:
	movb	$0, -1(%rsi)
	subq	$1, %rsi
	cmpq	%rbp, %rsi
	je	.L172
.L173:
	movzbl	-1(%rsi), %ecx
	call	*%rdi
	testl	%eax, %eax
	jne	.L177
.L172:
	leaq	emailBuffer.1(%rip), %r14
	movq	%r14, %rcx
	call	strlen
	testl	%eax, %eax
	je	.L175
	leaq	-1(%r14), %rbp
	leaq	(%r14,%rax), %rsi
	movq	__imp_isspace(%rip), %rdi
	addq	%rax, %rbp
	subl	$1, %eax
	subq	%rax, %rbp
	jmp	.L176
	.p2align 4,,10
	.p2align 3
.L182:
	movb	$0, -1(%rsi)
	subq	$1, %rsi
	cmpq	%rsi, %rbp
	je	.L175
.L176:
	movzbl	-1(%rsi), %ecx
	call	*%rdi
	testl	%eax, %eax
	jne	.L182
.L175:
	leaq	dateBuffer.0(%rip), %rbp
	movq	%rbp, %rcx
	call	strlen
	movq	%rax, %rsi
	leal	-1(%rax), %r15d
	testl	%eax, %eax
	je	.L178
	movslq	%r15d, %r15
	movq	__imp_isspace(%rip), %rdi
	movzbl	0(%rbp,%r15), %ecx
	call	*%rdi
	testl	%eax, %eax
	je	.L178
	movb	$0, 0(%rbp,%r15)
	leal	-2(%rsi), %r15d
	cmpl	$1, %esi
	je	.L178
	movslq	%r15d, %r15
	movzbl	0(%rbp,%r15), %ecx
	call	*%rdi
	testl	%eax, %eax
	je	.L178
	movb	$0, 0(%rbp,%r15)
	leal	-3(%rsi), %r15d
	cmpl	$2, %esi
	je	.L178
	movslq	%r15d, %r15
	movzbl	0(%rbp,%r15), %ecx
	call	*%rdi
	testl	%eax, %eax
	je	.L178
	movb	$0, 0(%rbp,%r15)
	leal	-4(%rsi), %r15d
	cmpl	$3, %esi
	je	.L178
	movslq	%r15d, %r15
	movzbl	0(%rbp,%r15), %ecx
	call	*%rdi
	testl	%eax, %eax
	je	.L178
	movb	$0, 0(%rbp,%r15)
	leal	-5(%rsi), %r15d
	cmpl	$4, %esi
	je	.L178
	movslq	%r15d, %r15
	movzbl	0(%rbp,%r15), %ecx
	call	*%rdi
	testl	%eax, %eax
	je	.L178
	movb	$0, 0(%rbp,%r15)
	leal	-6(%rsi), %r15d
	cmpl	$5, %esi
	je	.L178
	movslq	%r15d, %r15
	movzbl	0(%rbp,%r15), %ecx
	call	*%rdi
	testl	%eax, %eax
	je	.L178
	movb	$0, 0(%rbp,%r15)
	leal	-7(%rsi), %r15d
	cmpl	$6, %esi
	je	.L178
	movslq	%r15d, %r15
	movzbl	0(%rbp,%r15), %ecx
	call	*%rdi
	testl	%eax, %eax
	je	.L178
	movb	$0, 0(%rbp,%r15)
	leal	-8(%rsi), %r15d
	cmpl	$7, %esi
	je	.L178
	movslq	%r15d, %r15
	movzbl	0(%rbp,%r15), %ecx
	call	*%rdi
	testl	%eax, %eax
	je	.L178
	movb	$0, 0(%rbp,%r15)
	leal	-9(%rsi), %r15d
	cmpl	$8, %esi
	je	.L178
	movslq	%r15d, %r15
	movzbl	0(%rbp,%r15), %ecx
	call	*%rdi
	testl	%eax, %eax
	je	.L178
	movb	$0, 0(%rbp,%r15)
	cmpl	$9, %esi
	je	.L178
	movzbl	dateBuffer.0(%rip), %ecx
	call	*%rdi
	testl	%eax, %eax
	je	.L178
	movb	$0, dateBuffer.0(%rip)
.L178:
	cmpb	$0, nameBuffer.3(%rip)
	je	.L247
	movq	%r13, %rcx
	call	ValidatePhone
	testl	%eax, %eax
	je	.L248
	cmpb	$0, emailBuffer.1(%rip)
	je	.L187
	movl	$64, %edx
	movq	%r14, %rcx
	call	strchr
	testq	%rax, %rax
	je	.L249
.L187:
	movslq	g_editIndex(%rip), %rax
	cmpl	$-1, %eax
	je	.L250
	testl	%eax, %eax
	js	.L189
	cmpl	g_contactCount(%rip), %eax
	jge	.L189
	imulq	$241, %rax, %rsi
	leaq	g_contacts(%rip), %r15
	movl	$100, %r8d
	movq	%r12, %rdx
	leaq	(%rsi,%r15), %rdi
	movq	%rdi, %rcx
	call	strncpy
	leaq	100(%r15,%rsi), %rcx
	movq	%r13, %rdx
	movb	$0, 99(%rdi)
	movl	$30, %r8d
	call	strncpy
	leaq	130(%r15,%rsi), %rcx
	movq	%r14, %rdx
	movl	$100, %r8d
	movb	$0, 129(%rdi)
	call	strncpy
	leaq	230(%r15,%rsi), %rcx
	movq	%rbp, %rdx
	movl	$11, %r8d
	movb	$0, 229(%rdi)
	call	strncpy
	movb	$0, 240(%rdi)
.L189:
	movq	g_hListView(%rip), %rcx
	xorl	%edx, %edx
	call	DisplayContacts
	movl	$1, %edx
	movq	%rbx, %rcx
	call	*__imp_EndDialog(%rip)
	jmp	.L168
	.p2align 4,,10
	.p2align 3
.L246:
	movl	$2, %edx
	call	*__imp_EndDialog(%rip)
	jmp	.L168
	.p2align 4,,10
	.p2align 3
.L248:
	movl	$16, %r9d
	leaq	.LC3(%rip), %r8
	leaq	.LC55(%rip), %rdx
	movq	%rbx, %rcx
	call	*__imp_MessageBoxA(%rip)
	jmp	.L168
	.p2align 4,,10
	.p2align 3
.L247:
	movl	$16, %r9d
	leaq	.LC3(%rip), %r8
	leaq	.LC54(%rip), %rdx
	movq	%rbx, %rcx
	call	*__imp_MessageBoxA(%rip)
	jmp	.L168
.L250:
	leaq	dateBuffer.0(%rip), %r9
	leaq	emailBuffer.1(%rip), %r8
	movq	%r13, %rdx
	movq	%r12, %rcx
	call	AddNewContact
	jmp	.L189
.L249:
	movl	$16, %r9d
	leaq	.LC3(%rip), %r8
	leaq	.LC56(%rip), %rdx
	movq	%rbx, %rcx
	call	*__imp_MessageBoxA(%rip)
	jmp	.L168
	.seh_endproc
	.p2align 4
	.globl	ValidateEmail
	.def	ValidateEmail;	.scl	2;	.type	32;	.endef
	.seh_proc	ValidateEmail
ValidateEmail:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movl	$1, %eax
	cmpb	$0, (%rcx)
	je	.L251
	movl	$64, %edx
	call	strchr
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
.L251:
	addq	$40, %rsp
	ret
	.seh_endproc
	.p2align 4
	.globl	SortContactsByName
	.def	SortContactsByName;	.scl	2;	.type	32;	.endef
	.seh_proc	SortContactsByName
SortContactsByName:
	.seh_endprologue
	movslq	g_contactCount(%rip), %rdx
	leaq	CompareContactsByName(%rip), %r9
	movl	$241, %r8d
	leaq	g_contacts(%rip), %rcx
	jmp	qsort
	.seh_endproc
	.p2align 4
	.globl	SortContactsByPhone
	.def	SortContactsByPhone;	.scl	2;	.type	32;	.endef
	.seh_proc	SortContactsByPhone
SortContactsByPhone:
	.seh_endprologue
	movslq	g_contactCount(%rip), %rdx
	leaq	CompareContactsByPhone(%rip), %r9
	movl	$241, %r8d
	leaq	g_contacts(%rip), %rcx
	jmp	qsort
	.seh_endproc
	.p2align 4
	.globl	ShowError
	.def	ShowError;	.scl	2;	.type	32;	.endef
	.seh_proc	ShowError
ShowError:
	.seh_endprologue
	movl	$16, %r9d
	leaq	.LC3(%rip), %r8
	movq	%rcx, %rdx
	movq	g_hMainWnd(%rip), %rcx
	rex.W jmp	*__imp_MessageBoxA(%rip)
	.seh_endproc
	.p2align 4
	.globl	ShowInfo
	.def	ShowInfo;	.scl	2;	.type	32;	.endef
	.seh_proc	ShowInfo
ShowInfo:
	.seh_endprologue
	movl	$64, %r9d
	leaq	.LC13(%rip), %r8
	movq	%rcx, %rdx
	movq	g_hMainWnd(%rip), %rcx
	rex.W jmp	*__imp_MessageBoxA(%rip)
	.seh_endproc
	.p2align 4
	.globl	PerformSearch
	.def	PerformSearch;	.scl	2;	.type	32;	.endef
	.seh_proc	PerformSearch
PerformSearch:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$288, %rsp
	.seh_stackalloc	288
	.seh_endprologue
	movq	g_hMainWnd(%rip), %rcx
	movl	$111, %edx
	call	*__imp_GetDlgItem(%rip)
	movl	$256, %r8d
	movq	%rax, %rcx
	leaq	32(%rsp), %rbx
	movq	%rbx, %rdx
	call	*__imp_GetWindowTextA(%rip)
	movq	g_hListView(%rip), %rcx
	movq	%rbx, %rdx
	call	DisplayContacts
	nop
	addq	$288, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.p2align 4
	.globl	ClearSearchFilter
	.def	ClearSearchFilter;	.scl	2;	.type	32;	.endef
	.seh_proc	ClearSearchFilter
ClearSearchFilter:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	g_hMainWnd(%rip), %rcx
	movl	$111, %edx
	call	*__imp_GetDlgItem(%rip)
	leaq	.LC42(%rip), %rdx
	movq	%rax, %rcx
	call	*__imp_SetWindowTextA(%rip)
	movq	g_hListView(%rip), %rcx
	xorl	%edx, %edx
	addq	$40, %rsp
	jmp	DisplayContacts
	.seh_endproc
	.p2align 4
	.globl	RSA_EncryptChar
	.def	RSA_EncryptChar;	.scl	2;	.type	32;	.endef
	.seh_proc	RSA_EncryptChar
RSA_EncryptChar:
	.seh_endprologue
	movabsq	$5842705206148648579, %r8
	movslq	%ecx, %rax
	movq	%rax, %r9
	imulq	$680180407, %rax, %rax
	movl	%r9d, %edx
	sarl	$31, %edx
	sarq	$41, %rax
	subl	%edx, %eax
	imull	$3233, %eax, %eax
	subl	%eax, %r9d
	movslq	%r9d, %r9
	movq	%r9, %rcx
	imulq	%r9, %rcx
	movq	%rcx, %rax
	imulq	%r8
	movq	%rcx, %rax
	sarq	$63, %rax
	sarq	$10, %rdx
	subq	%rax, %rdx
	imulq	$3233, %rdx, %rax
	subq	%rax, %rcx
	imulq	%rcx, %rcx
	movq	%rcx, %rax
	imulq	%r8
	movq	%rcx, %rax
	sarq	$63, %rax
	sarq	$10, %rdx
	subq	%rax, %rdx
	imulq	$3233, %rdx, %rax
	subq	%rax, %rcx
	imulq	%rcx, %rcx
	movq	%rcx, %rax
	imulq	%r8
	movq	%rcx, %rax
	sarq	$63, %rax
	sarq	$10, %rdx
	subq	%rax, %rdx
	imulq	$3233, %rdx, %rax
	subq	%rax, %rcx
	imulq	%rcx, %rcx
	movq	%rcx, %rax
	imulq	%r8
	movq	%rcx, %rax
	sarq	$63, %rax
	sarq	$10, %rdx
	subq	%rax, %rdx
	imulq	$3233, %rdx, %rdx
	subq	%rdx, %rcx
	imulq	%r9, %rcx
	movq	%rcx, %rax
	imulq	%r8
	movq	%rcx, %rax
	sarq	$63, %rax
	sarq	$10, %rdx
	subq	%rax, %rdx
	movl	%ecx, %eax
	imulq	$3233, %rdx, %rdx
	subl	%edx, %eax
	ret
	.seh_endproc
	.p2align 4
	.globl	RSA_DecryptChar
	.def	RSA_DecryptChar;	.scl	2;	.type	32;	.endef
	.seh_proc	RSA_DecryptChar
RSA_DecryptChar:
	.seh_endprologue
	movabsq	$5842705206148648579, %r8
	movslq	%ecx, %rax
	movl	%ecx, %edx
	imulq	$680180407, %rax, %rax
	sarl	$31, %edx
	sarq	$41, %rax
	subl	%edx, %eax
	imull	$3233, %eax, %eax
	subl	%eax, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, %r9
	imulq	%rcx, %r9
	movq	%r9, %rax
	imulq	%r8
	movq	%r9, %rax
	sarq	$63, %rax
	sarq	$10, %rdx
	subq	%rax, %rdx
	imulq	$3233, %rdx, %rax
	movq	%r9, %rdx
	subq	%rax, %rdx
	imulq	%rdx, %rdx
	movq	%rdx, %rax
	movq	%rdx, %r9
	imulq	%r8
	movq	%r9, %rax
	sarq	$63, %rax
	sarq	$10, %rdx
	subq	%rax, %rdx
	imulq	$3233, %rdx, %rax
	movq	%r9, %rdx
	subq	%rax, %rdx
	imulq	%rdx, %rdx
	movq	%rdx, %rax
	movq	%rdx, %r9
	imulq	%r8
	movq	%r9, %rax
	sarq	$63, %rax
	sarq	$10, %rdx
	subq	%rax, %rdx
	imulq	$3233, %rdx, %rax
	movq	%r9, %rdx
	subq	%rax, %rdx
	imulq	%rdx, %rdx
	movq	%rdx, %rax
	movq	%rdx, %r9
	imulq	%r8
	movq	%r9, %rax
	sarq	$63, %rax
	sarq	$10, %rdx
	subq	%rax, %rdx
	imulq	$3233, %rdx, %rax
	movq	%r9, %rdx
	subq	%rax, %rdx
	imulq	%rdx, %rdx
	movq	%rdx, %rax
	movq	%rdx, %r9
	imulq	%r8
	movq	%r9, %rax
	sarq	$63, %rax
	sarq	$10, %rdx
	subq	%rax, %rdx
	imulq	$3233, %rdx, %rax
	movq	%r9, %rdx
	subq	%rax, %rdx
	imulq	%rdx, %rdx
	movq	%rdx, %rax
	movq	%rdx, %r9
	imulq	%r8
	movq	%r9, %rax
	movq	%r9, %r10
	sarq	$63, %rax
	sarq	$10, %rdx
	subq	%rax, %rdx
	imulq	$3233, %rdx, %rax
	subq	%rax, %r10
	movq	%r10, %r11
	imulq	%r10, %rcx
	imulq	%r10, %r11
	movq	%r11, %rax
	imulq	%r8
	movq	%r11, %rax
	sarq	$63, %rax
	sarq	$10, %rdx
	movq	%rdx, %r9
	subq	%rax, %r9
	imulq	$3233, %r9, %rax
	subq	%rax, %r11
	movq	%rcx, %rax
	imulq	%r8
	movq	%rcx, %rax
	movq	%r11, %r9
	sarq	$63, %rax
	imulq	%r11, %r9
	sarq	$10, %rdx
	subq	%rax, %rdx
	imulq	$3233, %rdx, %rax
	subq	%rax, %rcx
	movq	%r9, %rax
	imulq	%r11, %rcx
	imulq	%r8
	movq	%r9, %rax
	sarq	$63, %rax
	sarq	$10, %rdx
	subq	%rax, %rdx
	imulq	$3233, %rdx, %rax
	movq	%r9, %rdx
	subq	%rax, %rdx
	imulq	%rdx, %rdx
	movq	%rdx, %rax
	movq	%rdx, %r10
	imulq	%r8
	movq	%r10, %rax
	sarq	$63, %rax
	sarq	$10, %rdx
	subq	%rax, %rdx
	imulq	$3233, %rdx, %rax
	subq	%rax, %r10
	movq	%rcx, %rax
	imulq	%r8
	movq	%rcx, %rax
	movq	%r10, %r9
	sarq	$63, %rax
	imulq	%r10, %r9
	sarq	$10, %rdx
	subq	%rax, %rdx
	movq	%r9, %rax
	imulq	$3233, %rdx, %rdx
	subq	%rdx, %rcx
	imulq	%r8
	movq	%r9, %rax
	sarq	$63, %rax
	imulq	%r10, %rcx
	sarq	$10, %rdx
	subq	%rax, %rdx
	imulq	$3233, %rdx, %rax
	movq	%r9, %rdx
	subq	%rax, %rdx
	movq	%rcx, %rax
	imulq	%rdx, %rdx
	movq	%rdx, %r10
	imulq	%r8
	movq	%rcx, %rax
	sarq	$63, %rax
	sarq	$10, %rdx
	subq	%rax, %rdx
	movq	%r10, %rax
	imulq	$3233, %rdx, %r9
	imulq	%r8
	movq	%r10, %rax
	sarq	$63, %rax
	subq	%r9, %rcx
	sarq	$10, %rdx
	subq	%rax, %rdx
	imulq	$3233, %rdx, %r9
	movq	%r10, %rdx
	subq	%r9, %rdx
	imulq	%rdx, %rcx
	movq	%rcx, %rax
	imulq	%r8
	movq	%rcx, %rax
	sarq	$63, %rax
	sarq	$10, %rdx
	subq	%rax, %rdx
	movl	%ecx, %eax
	imulq	$3233, %rdx, %rdx
	subl	%edx, %eax
	ret
	.seh_endproc
	.p2align 4
	.globl	modExp
	.def	modExp;	.scl	2;	.type	32;	.endef
	.seh_proc	modExp
modExp:
	.seh_endprologue
	movl	%ecx, %eax
	movslq	%edx, %r9
	cltd
	idivl	%r8d
	movslq	%edx, %rcx
	testq	%r9, %r9
	jle	.L266
	movslq	%r8d, %r8
	movl	$1, %r10d
	.p2align 4,,10
	.p2align 3
.L265:
	testb	$1, %r9b
	je	.L264
	movq	%r10, %rax
	imulq	%rcx, %rax
	cqto
	idivq	%r8
	movq	%rdx, %r10
.L264:
	imulq	%rcx, %rcx
	movq	%rcx, %rax
	cqto
	idivq	%r8
	sarq	%r9
	movq	%rdx, %rcx
	jne	.L265
	movl	%r10d, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L266:
	movl	$1, %eax
	ret
	.seh_endproc
.lcomm dateBuffer.0,11,8
.lcomm emailBuffer.1,100,32
.lcomm phoneBuffer.2,30,16
.lcomm nameBuffer.3,100,32
.lcomm hMenu.4,8,8
	.data
	.align 4
g_editIndex:
	.long	-1
.lcomm g_hListView,8,8
.lcomm g_hMainWnd,8,8
.lcomm g_contactCount,4,4
.lcomm g_contacts,241000,32
	.section .rdata,"dr"
	.align 8
.LC1:
	.long	8
	.long	1
	.ident	"GCC: (GNU) 13.2.0"
	.def	__mingw_vsnprintf;	.scl	2;	.type	32;	.endef
	.def	strstr;	.scl	2;	.type	32;	.endef
	.def	strncpy;	.scl	2;	.type	32;	.endef
	.def	memmove;	.scl	2;	.type	32;	.endef
	.def	strlen;	.scl	2;	.type	32;	.endef
	.def	fopen;	.scl	2;	.type	32;	.endef
	.def	fwrite;	.scl	2;	.type	32;	.endef
	.def	fclose;	.scl	2;	.type	32;	.endef
	.def	fread;	.scl	2;	.type	32;	.endef
	.def	strtok_r;	.scl	2;	.type	32;	.endef
	.def	memcpy;	.scl	2;	.type	32;	.endef
	.def	qsort;	.scl	2;	.type	32;	.endef
	.def	strchr;	.scl	2;	.type	32;	.endef
