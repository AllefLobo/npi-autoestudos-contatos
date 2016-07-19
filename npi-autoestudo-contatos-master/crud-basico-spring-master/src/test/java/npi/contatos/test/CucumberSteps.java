package npi.contatos.test;

import javax.validation.constraints.AssertTrue;

import cucumber.api.java.pt.Dado;
import cucumber.api.java.pt.Quando;
import npi.contatos.model.Contato;
import npi.contatos.service.ContatoService;
import cucumber.api.java.pt.Entao;

public class CucumberSteps {

	
	
	@Dado("^Eu sou um contato logado$")
    public void sou_um_contato_logado() throws Throwable {

		
    }

    @Quando("^Eu adiciono um novo contato com o nome (.*) email (.*) endereço (.*) telefone (.*)$")
    public void eu_adiciono_novo_contato(String nome, String email, String endereco, String telefone ) throws Throwable {
   
    	System.out.println("nome: "+nome);
    	System.out.println("email: "+email);
    	System.out.println("endereco: "+endereco);
    	System.out.println("telefone: "+telefone);   	
    	
    }

    @Entao("^Um novo contato com o nome (.*) é adicionado$")
    public void novo_contato_adicionado(String nome) throws Throwable {
    	 
    	
    }
	
}