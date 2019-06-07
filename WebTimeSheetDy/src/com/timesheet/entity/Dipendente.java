package com.timesheet.entity;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Table(name="WEB_DIPENDENTI")
@Entity
public class Dipendente {
	
	private Integer idDipendente;
	private String nomeDipendente;
	private Date oreLavorate;

	private Set<Ticket> tickets = new HashSet<>();

	@GeneratedValue
	@Id
	public Integer getIdDipendente() {
		return idDipendente;
	}
	public void setIdDipendente(Integer idDipendente) {
		this.idDipendente = idDipendente;
	}
	public String getNomeDipendente() {
		return nomeDipendente;
	}
	public void setNomeDipendente(String nomeDipendente) {
		this.nomeDipendente = nomeDipendente;
	}
	
	@Temporal(TemporalType.TIME)
	public Date getOreLavorate() {
		return oreLavorate;
	}
	public void setOreLavorate(Date oreLavorate) {
		this.oreLavorate = oreLavorate;
	}
	@JoinTable(name="DIPENDENTI_TICKET",joinColumns = {@JoinColumn(name="TICKET_ID")},
			inverseJoinColumns = {@JoinColumn(name="DIPENDENTE_ID")})
	@ManyToMany
	public Set<Ticket> getTickets() {
		return tickets;
	}
	public void setTickets(Set<Ticket> tickets) {
		this.tickets = tickets;
	}

	

	

	

}
