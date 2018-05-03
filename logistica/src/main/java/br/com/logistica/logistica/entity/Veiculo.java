package br.com.logistica.logistica.entity;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;

@Entity
public class Veiculo extends GenericEntity {
	
	private String placa;
	@ManyToOne
	private Motorista motorista;

	public String getPlaca() {
		return placa;
	}

	public void setPlaca(String placa) {
		this.placa = placa;
	}

	public Motorista getMotorista() {
		return motorista;
	}

	public void setMotorista(Motorista motorista) {
		this.motorista = motorista;
	}
	
}