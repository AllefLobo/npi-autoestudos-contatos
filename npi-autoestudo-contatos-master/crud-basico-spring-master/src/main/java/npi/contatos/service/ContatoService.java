package npi.contatos.service;

import java.util.List;

import npi.contatos.model.Contato;

public interface ContatoService {
	
	List<Contato> findAll();
	
	void salvar(Contato contato);
	
	void remover(Integer id);
	
	Contato encontrarPorId(Integer id);
	
	Contato encontrarPorNome(String nome);
	
	void atualizar(Contato contato);
	

}
