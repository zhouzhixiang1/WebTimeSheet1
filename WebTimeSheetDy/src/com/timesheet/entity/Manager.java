package com.timesheet.entity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;


@Table(name="WEB_MANAGER")
@Entity
public class Manager {
	 
	private Integer idManager;
	

	private String nomeManager;
	
	private Set<Ticket> tickets = new HashSet<>();
	
	private Set<Dipendente> dipendenti = new HashSet<>();

	private Set<Cliente> clienti = new HashSet<>();

 
	@GeneratedValue
	@Id
	public Integer getIdManager() {
		return idManager;
	}
	public void setIdManager(Integer idManager) {
		this.idManager = idManager;
	}
	public String getNomeManager() {
		return nomeManager;
	}
	public void setNomeManager(String nomeManager) {
		this.nomeManager = nomeManager;
	}
	@JoinColumn(name="MANAGER_ID")
	@OneToMany
	public Set<Ticket> getTickets() {
		return tickets;
	}
	public void setTickets(Set<Ticket> tickets) {
		this.tickets = tickets;
	}
	@JoinColumn(name="MANAGER_ID")
	@OneToMany
	public Set<Dipendente> getDipendenti() {
		return dipendenti;
	}
	public void setDipendenti(Set<Dipendente> dipendenti) {
		this.dipendenti = dipendenti;
	}
	@JoinColumn(name="MANAGER_ID")
	@OneToMany
	public Set<Cliente> getClienti() {
		return clienti;
	}
	public void setClienti(Set<Cliente> clienti) {
		this.clienti = clienti;
	}
	
	

}
