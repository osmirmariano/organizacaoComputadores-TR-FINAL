	.data
escreveNome: 	.asciiz "\nInforme o nome: " 	#Chamada para usuário informar o nome
escreveIdade: 	.asciiz "\nInforme a idade: "	#Chamada para usuário informar o idade
escreveNumero: 	.asciiz "\nInforme o numero: " 	#Chamada para usuário informar o telefone
escreveCidade: 	.asciiz "\nInforme a cidade: "	#Chamada para usuário informar o cidade

#VARIÁVEIS PARA MOSTRAR 
mostrarNome:	.asciiz "\nNome: %s"
mostrarIdade	.asciiz "\nIdade: %d"
#mostrarNumero	.asciiz	"\nTelefone: %d"
#mostrarCidade	.asciiz	"\nCidade: %d"

paraString	.asciiz "%s"
paraInteiro	.asciiz "%d"
paraEnter	.asciiz "\n"

nome:	.space 44
idade:	.space	4
numero:	.space	24
cidade:	.space 44

	.text
	.globl inicio
	 
inicio:
	jal lerDadosTeclado  # chama a função para ler
	j chama
	
	
lerDadosTeclado:
	li $v0, 8
	la $a1, nome
	syscall
	
	li $v0, 4
	la $a0, idade
	syscall
	
	li $v0, 4
	la $a0, numero
	syscall
	
	li $v0, 8
	la $a1, cidade
	syscall
	
	j voltar
voltar: 
	jr $ra	
	
chama:
	
	
