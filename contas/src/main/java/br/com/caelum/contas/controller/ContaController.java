package br.com.caelum.contas.controller;

import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.caelum.contas.dao.ContaDAO;
import br.com.caelum.contas.modelo.Conta;

@Controller
public class ContaController {

	private ContaDAO contaDAO;
	
	@Autowired
	public ContaController(ContaDAO contaDAO) {
		this.contaDAO = contaDAO;
	}

	@RequestMapping("/form")
	public String formulario() {
		return "conta/formulario";
	}
	
	@RequestMapping("/adicionaConta")
	public String adiciona(@Valid Conta conta, BindingResult bindingResult) {
		
		if (bindingResult.hasErrors()) {
			return "conta/formulario";
		}
		
		contaDAO.adiciona(conta);
		
		return "conta/conta-adicionada";
	}
	
	@RequestMapping("/listaContas")
	public String listar(Model mv) {

		List<Conta> listaDeConta = contaDAO.lista();
		
		mv.addAttribute("listaDeConta", listaDeConta);
		
		return "conta/lista";
	}
	
	@RequestMapping("/removeConta")
	public String remove(Conta conta) {
		contaDAO.remove(conta);
		
		return "redirect:listaContas";
	}
	
	@RequestMapping("/pagaConta")
	public void pagar(Long id, HttpServletResponse response) {
		contaDAO.paga(id);
		
		response.setStatus(200);
	}
	
	@RequestMapping("/mostraConta")
	public String mostrar(Long id, Model model) {
		
		model.addAttribute("conta", contaDAO.buscaPorId(id));
		
		return "conta/mostra";
	}
	
	@RequestMapping("/alteraConta")
	public String alterar(Conta conta) {
		
		contaDAO.altera(conta);
		
		return "redirect:listaContas";
	}
	
}
