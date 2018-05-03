package br.com.logistica.logistica.entity;

import javax.persistence.Entity;

@Entity
public class Cliente extends GenericEntity {
	
	private String nome;

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}
	
}
