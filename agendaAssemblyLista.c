#include <stdio.h>
#include <stdlib.h>
#define max 4

typedef struct{
	char nome[30];
	char cidade[30];
	int idade;
	int telefone;
}AGENDA;

typedef struct{
	AGENDA conteudo[max];
	int numElementos;
}LISTA;

void criarLista(LISTA *lista){
	lista->numElementos = 0;
}

void inserir(LISTA *lista){
	if(lista->numElementos >= max)
		printf("Agenda está cheia\n");
	else{
		printf("Inserir Nome: ");
		scanf("%s", lista->conteudo[lista->numElementos].nome);
		printf("Inserir Cidade: ");
		scanf("%s", lista->conteudo[lista->numElementos].cidade);
		printf("Inserir Idade: ");
		scanf("%d", &lista->conteudo[lista->numElementos].idade);
		printf("Inserir Telefone: ");
		scanf("%d", &lista->conteudo[lista->numElementos].telefone);
		lista->numElementos = lista->numElementos+1;
	}
}

void remover(LISTA *lista){
	int fone;
	if(lista->numElementos == 0)
		printf("Nao existe contatos para ser removido\n");
	else{
		printf("Informe o numero do Telefone: ");
		scanf("%d", &fone);
		for(int x = 0; x < lista->numElementos; x++){
			if(lista->conteudo[x].telefone == fone){
				int b = x;
				while(b < lista->numElementos){
					lista->conteudo[b] = lista->conteudo[b+1];
					b++;
				}
				lista->numElementos--;
			}
		}
	}
}


void tamanho(LISTA *lista){
	printf("TAMANHO: %d", lista->numElementos);
	printf("\n");
}

void mostrarEspecifico(LISTA *lista){
	int fone;
	if(lista->numElementos == 0)
		printf("Agenda Vazia\n");
	else{
		printf("Informe o numero do Telefone: ");
		scanf("%d", &fone);
		for(int x = 0; x < lista->numElementos; x++){
			if(lista->conteudo[x].telefone == fone){
				printf("Nome: %s\n", lista->conteudo[x].nome);
				printf("Cidade: %s\n", lista->conteudo[x].cidade);
				printf("Idade: %d\n", lista->conteudo[x].idade);
				printf("Telefone: %d\n", lista->conteudo[x].telefone);
				printf("\n");
			}
		}
	}
}

void mostrarTodos(LISTA *lista){
	if(lista->numElementos == 0)
		printf("Agenda Vazia\n");
	else{
		for(int x = 0; x < lista->numElementos; x++){
			printf("Nome: %s\n", lista->conteudo[x].nome);
			printf("Cidade: %s\n", lista->conteudo[x].cidade);
			printf("Idade: %d\n", lista->conteudo[x].idade);
			printf("Telefone: %d\n", lista->conteudo[x].telefone);
			printf("\n");
		}
	}
}

int main(int argc, char const *argv[]){
	int op;
	LISTA lista;

	criarLista(&lista);

	do{
		printf(" 1 -- INSERIR CONTATOS \n");
		printf(" 2 -- REMOVER CONTATOS \n");
		printf(" 3 -- LISTAR TODOS CONTATOS \n");
		printf(" 4 -- MOSTRAR CONTATOS ESPECIFICO\n");
		printf(" 5 -- TAMANHO \n");
		printf(" 0 -- SAIR\n");
		scanf("%d", &op);
		switch(op){
			case 1:

				inserir(&lista);
				break;
			case 2:
				remover(&lista);
				break;
			case 3:
				mostrarTodos(&lista);
				break;
			case 4:
				mostrarEspecifico(&lista);
				break;
			case 5:
				tamanho(&lista);
				break;
			case 0:
			 	exit(0);
			default:
				printf("Opcao Invalida\n");
		}
	}while(op != 0);

	return 0;
}