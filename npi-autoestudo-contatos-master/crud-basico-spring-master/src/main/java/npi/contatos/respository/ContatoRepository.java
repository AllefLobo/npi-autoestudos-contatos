package npi.contatos.respository;

import java.util.List;

import npi.contatos.model.Contato;

public interface ContatoRepository {
	
	List<Contato> findAll();
	
	void salvar(Contato contato);
	
	Contato findById(Integer id);
	
	Contato findByName(String nome);
	
	void remover(Contato contato);
	
	void atualizar(Contato contato);

}
