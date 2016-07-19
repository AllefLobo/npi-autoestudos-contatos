package npi.contatos.service;

import java.util.List;

import javax.inject.Inject;
import javax.inject.Named;

import npi.contatos.model.Contato;
import npi.contatos.respository.ContatoRepository;

@Named
public class ContatoServiceImpl implements ContatoService {
	
	@Inject
	private ContatoRepository contatoRepository;

	@Override
	public List<Contato> findAll() {
		return contatoRepository.findAll();
	}

	@Override
	public void salvar(Contato contato) {
		contatoRepository.salvar(contato);
		
	}

	@Override
	public void remover(Integer id) {
		Contato contato = contatoRepository.findById(id);
		contatoRepository.remover(contato);
	}

	@Override
	public Contato encontrarPorId(Integer id) {
		Contato contato = contatoRepository.findById(id);
		return contato;
	}
	
	@Override
	public Contato encontrarPorNome(String nome) {
		Contato contato = contatoRepository.findByName(nome);
		return contato;
	}

	@Override
	public void atualizar(Contato contato) {
		contatoRepository.atualizar(contato);		
	}

	

	


}
