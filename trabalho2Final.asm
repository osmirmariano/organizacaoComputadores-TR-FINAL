
nome: .asciiz "Informe o nome: " 
idade: .asciiz "Informe a idade: "
numero: .asciiz "Informe o numero: "
cidade: .asciiz "Informe a cidade: "

	.text
	.globl inicio
	
	#Criando struct em Assembly
	struc agenda
		nome: resb 15 		#char nome[15]
		idade:resb 1 		#int idade
		numero: resb 1		#int numero
		cidade: resb 15 	#char cidade[15]
	endstruc
	
	struc: 
inicio:
	jal le_inteiro_do_teclado  # chama fun��o para ler
	#la  $t0, 0($v0)		   # carrega o inteiro lido em $t7
	#jal le_inteiro_do_teclado  # chama fun��o para ler
	#la  $t1, 0($v1)	
	j chama
	
	
le_inteiro_do_teclado:
	li $v0, 4
	la $a0, pergunta
	syscall
	li $v0, 5
	syscall
	add $t2, $zero, $v0
	li $v0, 5
	syscall
	add $t3, $zero, $v0
	j voltar
voltar: 
	jr $ra	
	
chama:
	
	ble $t2, $t3, Amaior #Maior
	la $a0, msg1
	li $v0, 4
	syscall
	#jr $ra
	
Amaior:
	ble $t3, $t2,  Bmaior#Maior
	la $a0, msg2
	li $v0, 4
    	syscall
    	#jr $ra
    	
Bmaior:
	bne $t2, $t3, encerra
	la $a0, msg3
	li $v0, 4
    	syscall
    	#jr $ra
encerra:
