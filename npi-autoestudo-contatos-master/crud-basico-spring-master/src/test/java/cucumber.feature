# language: pt
	Funcionalidade: Contatos

	  Cenario: Na tela de formulário de cadastro de novo contato
	    Dado Eu sou um contato logado
	    Quando Eu adiciono um novo contato com o nome Allef email allef.lobo@example.com endereço x telefone 1234
	    Entao Um novo contato com o nome Allef é adicionado
		      