programa
{
	//https://github.com/UNIVALI-LITE-BACKUP/Portugol-Studio-Recursos/tree/master/exemplos/bibliotecas/arquivos
	inclua biblioteca Arquivos --> a 
	//Agenda Telefônica
	//Desenvolva um programa que funcione como uma agenda telefônica
	//Permita ao usuário adicionar, editar e excluir contatos com nome, telefone , endereço
	const cadeia CAMINHO =  "./bd.txt"
     cadeia agenda[5][3]
//problema só está inserindo um aquivo por vez
     funcao inserir(){
        limpa()
        inteiro arquivo = a.abrir_arquivo(CAMINHO, a.MODO_ACRESCENTAR)
        cadeia nome ,numero ,endereco
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
	        listar()
	        agendaPreenchida()
     	   opcoes()
     	}
// só lista uma única linha
    funcao listar(){
	 limpa()
	 inteiro linha = 1
	 cadeia separacao = "------------------------------\n"
	 inteiro arquivo = a.abrir_arquivo(CAMINHO, a.MODO_LEITURA)
	 escreva("---------Contatos------------\n")
	 enquanto( nao a.fim_arquivo(arquivo)){
	   escreva(a.ler_linha(arquivo),"\n")
	   se(linha == 3){
	     escreva(separacao)
	     linha = 0
	   }
	   linha ++
	 }
	 a.fechar_arquivo(arquivo)
    }

    funcao agendaPreenchida(){
    	 inteiro arquivo = a.abrir_arquivo(CAMINHO, a.MODO_LEITURA)
	 enquanto(nao a.fim_arquivo(arquivo)){
	   para(inteiro i =0; i<5;i++){
	     para(inteiro c= 0; c<3; c++){
	     	agenda[i][c] = a.ler_linha(arquivo)
	     }
	   }	
	 }
	 a.fechar_arquivo(arquivo)
	 opcoes()
    }
	     
     funcao editar(){  
         cadeia pesquisa , substituto 
         inteiro arquivo = a.abrir_arquivo(CAMINHO, a.MODO_ESCRITA)
         escreva("Digite o nome para editar os dados\n")
         leia(pesquisa)
         escreva("Digite o nome  correto\n")
         leia(substituto)
         //a.substituir_texto(CAMINHO, pesquisa, substituto, verdadeiro)

	    a.fechar_arquivo(arquivo)
	    escreva("Alterado com Sucesso")
	    agendaPreenchida()
	    opcoes()
     }

    funcao remover(){
         cadeia pesquisa 
         inteiro arquivo = a.abrir_arquivo(CAMINHO, a.MODO_ESCRITA)
         escreva("Digite o nome para editar os dados\n")
         leia(pesquisa)
         escreva("Digite o numero correto\n")
         a.substituir_texto(CAMINHO, pesquisa, " ", verdadeiro)
	    a.fechar_arquivo(arquivo)
	    escreva("Alterado com Sucesso")
	    listar()
	    opcoes()
     }

   funcao  sair(){
   	 escreva("Até mais .....")
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
	     	listar() pare

	     caso 3:
	     	editar()
	     	pare
	     	
	     caso 4:remover() pare
	     caso contrario:sair() pare
	     }
	}

	funcao inicio(){
		agendaPreenchida()
	     opcoes()
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1019; 
 * @DOBRAMENTO-CODIGO = [88, 92];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {agenda, 9, 12, 6};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */