package br.com.logistica.logistica.entity;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
public class Pedido extends GenericEntity {
	
	@ManyToOne
	private Cliente cliente;
	@OneToMany
	private List<Item> itens;
	@ManyToMany
	@JoinTable(name = "pedido_localizacao", 
		joinColumns = { @JoinColumn(name = "pedido_id") }, 
		inverseJoinColumns = { @JoinColumn(name = "localizacao_id") })
	private List<Localizacao> localizacoes;

	public Cliente getCliente() {
		return cliente;
	}

	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}

	public List<Item> getItens() {
		return itens;
	}

	public void setItens(List<Item> itens) {
		this.itens = itens;
	}
	
}