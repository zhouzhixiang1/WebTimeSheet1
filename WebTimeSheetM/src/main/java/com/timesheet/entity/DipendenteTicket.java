package com.timesheet.entity;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="DIPENDENTE_TICKET")
public class DipendenteTicket {
	
	private Integer id;
	private Dipendente idDipendente;
	private Ticket idTicket;
	
	@Id
	@GeneratedValue
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	@JoinColumn(name="idDipendente")
	@ManyToOne(cascade = CascadeType.REMOVE)
	public Dipendente getIdDipendente() {
		return idDipendente;
	}
	public void setIdDipendente(Dipendente idDipendente) {
		this.idDipendente = idDipendente;
	}
	@JoinColumn(name="idTicket")
	@ManyToOne(cascade = CascadeType.REMOVE)
	public Ticket getIdTicket() {
		return idTicket;
	}
	public void setIdTicket(Ticket idTicket) {
		this.idTicket = idTicket;
	}
	
	

}