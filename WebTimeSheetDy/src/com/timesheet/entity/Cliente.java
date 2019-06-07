package com.timesheet.entity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Table(name="WEB_CLIENTE")
@Entity
public class Cliente {
	
	//Un cliente può avere commissionato più lavori(quindi vanno associati più IDTicket)
	
	private Integer IdCliente;
	private String nomeCliente;
	
	private Set<Ticket> tickets = new HashSet<>();

	@GeneratedValue
	@Id
	public Integer getIdCliente() {
		return IdCliente;
	}

	public void setIdCliente(Integer idCliente) {
		IdCliente = idCliente;
	}

	public String getNomeCliente() {
		return nomeCliente;
	}

	public void setNomeCliente(String nomeCliente) {
		this.nomeCliente = nomeCliente;
	}
	@JoinColumn(name="CLIENTE_ID")
	@OneToMany
	public Set<Ticket> getTickets() {
		return tickets;
	}

	public void setTickets(Set<Ticket> tickets) {
		this.tickets = tickets;
	}
	
	

}
