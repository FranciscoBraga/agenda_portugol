programa
{
	inclua biblioteca Arquivos --> a 
	//Agenda Telefônica
	//Desenvolva um programa que funcione como uma agenda telefônica
	//Permita ao usuário adicionar, editar e excluir contatos com nome, telefone , endereço
	
	cadeia lista[100][3] 
	
	inteiro  n =1
//problema só está inserindo um aquivo por vez
funcao inserir(){
    inteiro arquivo = a.abrir_arquivo("./bd.txt", a.MODO_ACRESCENTAR)
    cadeia nome ,numero ,endereco
    
	    /*para(inteiro i = 0; i < valor; i++){
	     	para(inteiro c = 0; c < 3; c++){
	     	    se (lista[i][c] == "" e c == 0){
	     	     			escreva("\nEscreva o Contato:\n")
     	   					leia(nome)
     	   					lista[i][c] = nome
	     	     		}
	     	     	se (lista[i][c] == "" e c == 1){
	     	     			escreva("\nEscreva o Telefone:\n")
     	 					leia(numero)
     	 					lista[i][c] = numero
	     	     		}
	     	     	se (lista[i][c] == "" e c == 2){
	     	     			escreva("\nEscreva o Endereço:\n")
     	 					leia(endereco)
     	 					lista[i][c] = endereco
     	 					
	     	     		}
		
	     	     }
	          }*/
	         escreva("\nEscreva o Contato:\n")
     	    leia(nome)
     	    escreva("\nEscreva o Telefone:\n")
     	    leia(numero)
     	    escreva("\nEscreva o Endereço:\n")
     	    leia(endereco)
            
	        a.escrever_linha(nome, arquivo)
	        a.escrever_linha(numero, arquivo)
	        a.escrever_linha(endereco, arquivo)
	        a.fechar_arquivo(arquivo)
     	   opcoes()
     	}
// só lista uma única linha
funcao listar(){
	 limpa()
	 inteiro linha = 1
	 cadeia separacao = "------------------------------\n"
	 inteiro arquivo = a.abrir_arquivo("./bd.txt", a.MODO_LEITURA)
	 escreva("---------Contatos------------\n")
	 enquanto( nao a.fim_arquivo(arquivo)){
	   escreva(a.ler_linha(arquivo),"\n")
	   se(linha == 3){
	     escreva(separacao)
	     linha = 0
	   }
	   linha ++
	 }
	/*para(inteiro l = 0; l< 100; l++){
		se(lista[l][0] != ""){
	     	escreva("\n Listar\n-Nome: " , lista[l][0] +"\n-Numero: ", lista[l][1] +"\n-Endereço: ", lista[l][2])
		}
	   }*/

	   
	}
     
funcao editar(){
 	    
	    para(inteiro l = 0; l< 100; l++){
	     	se(lista[l][0] == nome){
	     		escreva("Atualize o Nome:\n")
	        		leia(lista[l][0])
	
	     }}
	     
     	}

funcao remover(){
         cadeia nome
	    escreva("Escolha qual número do convidado para remover:")
	    listar()
		escreva("\nEscreva o Nome do Contato:\n")
		leia(nome)
		para(inteiro l = 0;l < 100; l++){
		 se (lista[l][0] == nome){
		 	escreva(" nome"+ lista[l][0] + "\n")
		 	lista[l][0] = " "
		 	lista[l][1] = " "
		 	lista[l][2] = " "
		 }
	   }
	  listar()
	  opcoes()
     }
     
funcao opcoes(){

	cadeia nome , numero , endereco
	inteiro opcao

	     escreva("MENU DE OPÇÕES:\n")
	     escreva("1) Adicionar Contato\n")
	     escreva("2) Listar os Contatos\n")
	     escreva("3) Editar Contato\n")
	     escreva("4) Remover Nome\n")
	     escreva("0) Sair\n")
	     escreva("Escolha sua Opção:\n")
	     leia(opcao)
	     
	     escolha(opcao){
	     	caso 1: inserir() pare
	     	    
	     caso 2:
	     	listar()
	     	pare

	     caso 3:leia(nome) 
	     	leia(numero) 
	    		leia(endereco)
	     	editar(nome,numero,endereco)
	     	pare
	     	
	     caso 4:remover()
	     }
	}

	funcao inicio(){
	     opcoes()
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2109; 
 * @DOBRAMENTO-CODIGO = [15, 11, 50];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */