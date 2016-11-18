	.file	"agendaAssemblyLista.c"
	.text
	.globl	criarLista
	.type	criarLista, @function
criarLista:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, 272(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	criarLista, .-criarLista
	.section	.rodata
.LC0:
	.string	"Agenda est\303\241 cheia"
.LC1:
	.string	"Inserir Nome: "
.LC2:
	.string	"%s"
.LC3:
	.string	"Inserir Cidade: "
.LC4:
	.string	"Inserir Idade: "
.LC5:
	.string	"%d"
.LC6:
	.string	"Inserir Telefone: "
	.text
	.globl	inserir
	.type	inserir, @function
inserir:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	272(%rax), %eax
	cmpl	$3, %eax
	jle	.L3
	movl	$.LC0, %edi
	call	puts
	jmp	.L5
.L3:
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	movq	-8(%rbp), %rax
	movl	272(%rax), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	-8(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, %rsi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	__isoc99_scanf
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
	movq	-8(%rbp), %rax
	movl	272(%rax), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	leaq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	addq	$14, %rax
	movq	%rax, %rsi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	__isoc99_scanf
	movl	$.LC4, %edi
	movl	$0, %eax
	call	printf
	movq	-8(%rbp), %rax
	movl	272(%rax), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	leaq	48(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	addq	$12, %rax
	movq	%rax, %rsi
	movl	$.LC5, %edi
	movl	$0, %eax
	call	__isoc99_scanf
	movl	$.LC6, %edi
	movl	$0, %eax
	call	printf
	movq	-8(%rbp), %rax
	movl	272(%rax), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	leaq	64(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rsi
	movl	$.LC5, %edi
	movl	$0, %eax
	call	__isoc99_scanf
	movq	-8(%rbp), %rax
	movl	272(%rax), %eax
	leal	1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 272(%rax)
.L5:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	inserir, .-inserir
	.section	.rodata
	.align 8
.LC7:
	.string	"Nao existe contatos para ser removido"
	.align 8
.LC8:
	.string	"Informe o numero do Telefone: "
	.text
	.globl	remover
	.type	remover, @function
remover:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rax
	movl	272(%rax), %eax
	testl	%eax, %eax
	jne	.L7
	movl	$.LC7, %edi
	call	puts
	jmp	.L15
.L7:
	movl	$.LC8, %edi
	movl	$0, %eax
	call	printf
	leaq	-20(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC5, %edi
	movl	$0, %eax
	call	__isoc99_scanf
	movl	$0, -16(%rbp)
	jmp	.L9
.L13:
	movq	-40(%rbp), %rdx
	movl	-16(%rbp), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rcx
	salq	$4, %rcx
	addq	%rcx, %rax
	addq	%rdx, %rax
	addq	$64, %rax
	movl	(%rax), %edx
	movl	-20(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L10
	movl	-16(%rbp), %eax
	movl	%eax, -12(%rbp)
	jmp	.L11
.L12:
	movl	-12(%rbp), %eax
	leal	1(%rax), %esi
	movq	-40(%rbp), %rdx
	movl	-12(%rbp), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rcx
	salq	$4, %rcx
	addq	%rcx, %rax
	addq	%rdx, %rax
	movq	-40(%rbp), %rcx
	movslq	%esi, %rdx
	salq	$2, %rdx
	movq	%rdx, %rsi
	salq	$4, %rsi
	addq	%rsi, %rdx
	addq	%rcx, %rdx
	movq	(%rdx), %rcx
	movq	%rcx, (%rax)
	movq	8(%rdx), %rcx
	movq	%rcx, 8(%rax)
	movq	16(%rdx), %rcx
	movq	%rcx, 16(%rax)
	movq	24(%rdx), %rcx
	movq	%rcx, 24(%rax)
	movq	32(%rdx), %rcx
	movq	%rcx, 32(%rax)
	movq	40(%rdx), %rcx
	movq	%rcx, 40(%rax)
	movq	48(%rdx), %rcx
	movq	%rcx, 48(%rax)
	movq	56(%rdx), %rcx
	movq	%rcx, 56(%rax)
	movl	64(%rdx), %edx
	movl	%edx, 64(%rax)
	addl	$1, -12(%rbp)
.L11:
	movq	-40(%rbp), %rax
	movl	272(%rax), %eax
	cmpl	-12(%rbp), %eax
	jg	.L12
	movq	-40(%rbp), %rax
	movl	272(%rax), %eax
	leal	-1(%rax), %edx
	movq	-40(%rbp), %rax
	movl	%edx, 272(%rax)
.L10:
	addl	$1, -16(%rbp)
.L9:
	movq	-40(%rbp), %rax
	movl	272(%rax), %eax
	cmpl	-16(%rbp), %eax
	jg	.L13
.L15:
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L14
	call	__stack_chk_fail
.L14:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	remover, .-remover
	.section	.rodata
.LC9:
	.string	"TAMANHO: %d"
	.text
	.globl	tamanho
	.type	tamanho, @function
tamanho:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	272(%rax), %eax
	movl	%eax, %esi
	movl	$.LC9, %edi
	movl	$0, %eax
	call	printf
	movl	$10, %edi
	call	putchar
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	tamanho, .-tamanho
	.section	.rodata
.LC10:
	.string	"Agenda Vazia"
.LC11:
	.string	"Nome: %s\n"
.LC12:
	.string	"Cidade: %s\n"
.LC13:
	.string	"Idade: %d\n"
.LC14:
	.string	"Telefone: %d\n"
	.text
	.globl	mostrarEspecifico
	.type	mostrarEspecifico, @function
mostrarEspecifico:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	movl	272(%rax), %eax
	testl	%eax, %eax
	jne	.L18
	movl	$.LC10, %edi
	call	puts
	jmp	.L24
.L18:
	movl	$.LC8, %edi
	movl	$0, %eax
	call	printf
	leaq	-16(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC5, %edi
	movl	$0, %eax
	call	__isoc99_scanf
	movl	$0, -12(%rbp)
	jmp	.L20
.L22:
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rcx
	salq	$4, %rcx
	addq	%rcx, %rax
	addq	%rdx, %rax
	addq	$64, %rax
	movl	(%rax), %edx
	movl	-16(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L21
	movl	-12(%rbp), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	-24(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, %rsi
	movl	$.LC11, %edi
	movl	$0, %eax
	call	printf
	movl	-12(%rbp), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	leaq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	addq	$14, %rax
	movq	%rax, %rsi
	movl	$.LC12, %edi
	movl	$0, %eax
	call	printf
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rcx
	salq	$4, %rcx
	addq	%rcx, %rax
	addq	%rdx, %rax
	addq	$60, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movl	$.LC13, %edi
	movl	$0, %eax
	call	printf
	movq	-24(%rbp), %rdx
	movl	-12(%rbp), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rcx
	salq	$4, %rcx
	addq	%rcx, %rax
	addq	%rdx, %rax
	addq	$64, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movl	$.LC14, %edi
	movl	$0, %eax
	call	printf
	movl	$10, %edi
	call	putchar
.L21:
	addl	$1, -12(%rbp)
.L20:
	movq	-24(%rbp), %rax
	movl	272(%rax), %eax
	cmpl	-12(%rbp), %eax
	jg	.L22
.L24:
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L23
	call	__stack_chk_fail
.L23:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	mostrarEspecifico, .-mostrarEspecifico
	.globl	mostrarTodos
	.type	mostrarTodos, @function
mostrarTodos:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	272(%rax), %eax
	testl	%eax, %eax
	jne	.L26
	movl	$.LC10, %edi
	call	puts
	jmp	.L30
.L26:
	movl	$0, -4(%rbp)
	jmp	.L28
.L29:
	movl	-4(%rbp), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	movq	-24(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, %rsi
	movl	$.LC11, %edi
	movl	$0, %eax
	call	printf
	movl	-4(%rbp), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdx
	salq	$4, %rdx
	addq	%rdx, %rax
	leaq	16(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	addq	$14, %rax
	movq	%rax, %rsi
	movl	$.LC12, %edi
	movl	$0, %eax
	call	printf
	movq	-24(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rcx
	salq	$4, %rcx
	addq	%rcx, %rax
	addq	%rdx, %rax
	addq	$60, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movl	$.LC13, %edi
	movl	$0, %eax
	call	printf
	movq	-24(%rbp), %rdx
	movl	-4(%rbp), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rcx
	salq	$4, %rcx
	addq	%rcx, %rax
	addq	%rdx, %rax
	addq	$64, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movl	$.LC14, %edi
	movl	$0, %eax
	call	printf
	movl	$10, %edi
	call	putchar
	addl	$1, -4(%rbp)
.L28:
	movq	-24(%rbp), %rax
	movl	272(%rax), %eax
	cmpl	-4(%rbp), %eax
	jg	.L29
.L30:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	mostrarTodos, .-mostrarTodos
	.section	.rodata
	.align 8
.LC15:
	.string	"\n----------------------------------------------"
.LC16:
	.string	" 1 -- INSERIR CONTATOS "
.LC17:
	.string	" 2 -- REMOVER CONTATOS "
.LC18:
	.string	" 3 -- LISTAR TODOS CONTATOS "
	.align 8
.LC19:
	.string	" 4 -- MOSTRAR CONTATOS ESPECIFICO"
.LC20:
	.string	" 5 -- TAMANHO "
.LC21:
	.string	" 0 -- SAIR"
	.align 8
.LC22:
	.string	"----------------------------------------------"
.LC23:
	.string	" OPCAO: "
.LC24:
	.string	"Opcao Invalida"
	.text
	.globl	main
	.type	main, @function
main:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$320, %rsp
	movl	%edi, -308(%rbp)
	movq	%rsi, -320(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-288(%rbp), %rax
	movq	%rax, %rdi
	call	criarLista
.L41:
	movl	$.LC15, %edi
	call	puts
	movl	$.LC16, %edi
	call	puts
	movl	$.LC17, %edi
	call	puts
	movl	$.LC18, %edi
	call	puts
	movl	$.LC19, %edi
	call	puts
	movl	$.LC20, %edi
	call	puts
	movl	$.LC21, %edi
	call	puts
	movl	$.LC22, %edi
	call	puts
	movl	$.LC23, %edi
	movl	$0, %eax
	call	printf
	leaq	-292(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC5, %edi
	movl	$0, %eax
	call	__isoc99_scanf
	movl	$.LC22, %edi
	call	puts
	movl	-292(%rbp), %eax
	cmpl	$5, %eax
	ja	.L32
	movl	%eax, %eax
	movq	.L34(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L34:
	.quad	.L33
	.quad	.L35
	.quad	.L36
	.quad	.L37
	.quad	.L38
	.quad	.L39
	.text
.L35:
	leaq	-288(%rbp), %rax
	movq	%rax, %rdi
	call	inserir
	jmp	.L40
.L36:
	leaq	-288(%rbp), %rax
	movq	%rax, %rdi
	call	remover
	jmp	.L40
.L37:
	leaq	-288(%rbp), %rax
	movq	%rax, %rdi
	call	mostrarTodos
	jmp	.L40
.L38:
	leaq	-288(%rbp), %rax
	movq	%rax, %rdi
	call	mostrarEspecifico
	jmp	.L40
.L39:
	leaq	-288(%rbp), %rax
	movq	%rax, %rdi
	call	tamanho
	jmp	.L40
.L33:
	movl	$0, %edi
	call	exit
.L32:
	movl	$.LC24, %edi
	call	puts
.L40:
	movl	-292(%rbp), %eax
	testl	%eax, %eax
	jne	.L41
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L43
	call	__stack_chk_fail
.L43:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.1-2ubuntu1~16.04) 5.4.1 20160904"
	.section	.note.GNU-stack,"",@progbits
