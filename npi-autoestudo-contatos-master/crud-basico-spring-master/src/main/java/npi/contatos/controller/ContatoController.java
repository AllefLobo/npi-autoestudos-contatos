package npi.contatos.controller;

import javax.inject.Inject;
import javax.validation.Valid;

import npi.contatos.model.Contato;
import npi.contatos.service.ContatoService;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ContatoController {
	
	@Inject
	private ContatoService contatoService;
	
	@RequestMapping(value = "/")
	public String index() {
		return "redirect:/listar";
	}
	
	@RequestMapping(value = "/listar")
	public String listar(Model model) {
		model.addAttribute("contatos", contatoService.findAll());
		return "listar";
	}
	
	@RequestMapping(value = "/buscar")
	public String buscar(String nome, Model model) {
		int id = contatoService.encontrarPorNome(nome).getId();
		model.addAttribute("contato", contatoService.encontrarPorNome(nome));
		return "redirect:/detalharDados/"+id;
	}
	
	@RequestMapping(value = "/editarForm/{id}")
	public String editarForm(@PathVariable("id") Integer id, Model model) {
		model.addAttribute("contato", contatoService.encontrarPorId(id));
		return "editar";
	}
	
	@RequestMapping(value = "/editarContato")
	public String editarContato(@Valid Contato contato) {
		contatoService.atualizar(contato);
		return "redirect:/listar";
	}
	
	@RequestMapping(value = "/detalharDados/{id}")
	public String detalhar( @PathVariable("id") Integer id, Model model ){
		model.addAttribute("contato", contatoService.encontrarPorId(id));
		return "detalhar";
	}
	
	/*@RequestMapping(value = "/detalharContato")
	public String detalharContato( Model model ){
		model.addAttribute("contato", contatoService.encontrarPorId(id));
		return "detalhar";
	}*/
	
	
	@RequestMapping(value = "/adicionar", method = RequestMethod.GET)
	public String adicionarForm(Model model) {
		model.addAttribute("contato", new Contato());
		return "adicionar";
	}
	
	@RequestMapping(value = "/adicionar", method = RequestMethod.POST)
	public String adicionar(@ModelAttribute("contato") Contato contato) {
		contatoService.salvar(contato);
		return "redirect:/listar";
	}
	
	@RequestMapping(value = "/remover/{id}", method = RequestMethod.GET)
	public String remover(@PathVariable("id") Integer id) {
		contatoService.remover(id);
		return "redirect:/listar";
	}

}
