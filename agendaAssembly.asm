
	.data
	.align 2
#define max 4
tamMax 	.word 4

vetor_nome:	.space 80
nome_tam:	.word  20
	.align 2
vetor_cidade:	.space 80
cidade_tam:	.word  20
	.align 2
vetor_telefone:	.space 80
telefone_tam:	.word  20
	.align 2
vetor_idade:	.space 80
idade_tam:	.word  20
	.text
	.globl inicio

inicio:
	