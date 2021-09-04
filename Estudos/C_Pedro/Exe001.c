// Online C compiler to run C program online
#include <stdio.h>
#include <string.h>

int main()
{
    
    //Variaveis de entrada do usuário
    char foro[30];
    char local[30];
    char advogado[30];
    char cliente[30];
    int processo, opcao;
    //Listas de cada dado cadastrado
    char *lista_foro[50];
    char *lista_advogado[50];
    char *lista_cliente[50];
    //contador de posição
    int cont = 0;

    
    //Laço para pedir novos dados
    do {
    //Menu de opções
    printf("\n0-Sair do sistema\n1-Cadastrar novo processo\n2-Exibir processo existente\n3-Editar processo\n4-Remoção\n");
        printf("\nDigite o numero da opção e aperte ENTER: ");
        scanf("%d", &opcao);
        
        switch(opcao) {
            case 0:
                printf("SAINDO DO SISTEMA\n");
                continue;
            
            case 1:
                
                printf("%d", cont);
                printf("\nInforme o Foro: ");
                scanf("%s", &foro);
                lista_foro[cont] = foro ;
                
                printf("\nInforme o nome do advogado: ");
                scanf("%s", &advogado);
                lista_advogado[cont] = advogado;
                
                printf("\nInforme o nome do cliente: ");
                scanf("%s", &cliente);
                lista_cliente[cont] = cliente;
                
                cont++;


                break;
                
            case 2:
                printf("\nInforme o número do processo que deseja visualizar: ");
                scanf("%d", &processo);
                
                printf("\nNumero: ");
                printf("%d", processo);
                printf("\nForo: ");
                printf("%s", lista_foro[processo - 1]);
                printf("\nAdvogado: ");
                printf("%s", lista_advogado[processo - 1]);
                printf("\nCliente: ");
                printf("%s", lista_cliente[processo - 1]);
                printf("\n");

                break;
            
            case 3:
                printf("\nInforme o número do processo que deseja editar: ");
                scanf("%d", &processo);

                printf("\nProcesso que será editado:\n");
                printf("\nNumero: ");
                printf("%d", processo);
                printf("\nForo: ");
                printf("%s", lista_foro[processo - 1]);
                printf("\nAdvogado: ");
                printf("%s", lista_advogado[processo - 1]);
                printf("\nCliente: ");
                printf("%s", lista_cliente[processo - 1]);
                printf("\n");
                
                printf("Informe o novo Foro: ");
                scanf("%s", &foro);
                lista_foro[processo - 1] = foro ;
                
                printf("\nInforme o nome do novo advogado: ");
                scanf("%s", &advogado);
                lista_advogado[processo - 1] = advogado;
                
                printf("\nInforme o nome do novo cliente: ");
                scanf("%s", &cliente);
                lista_cliente[processo - 1] = cliente;

                break;
    
        }
            
    }  while(opcao != 0);
        
   printf("FIM DO PROGRAMA\n");

    return 0;

}