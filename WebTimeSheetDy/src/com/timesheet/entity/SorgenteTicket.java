package com.timesheet.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


@Table(name="WEB_SORGENTE")
@Entity
public class SorgenteTicket {

	private Integer idSorgente;
	private String tipoSorgente;
	private Ticket ticket;
	
	@Id
	@GeneratedValue
	public Integer getIdSorgente() {
		return idSorgente;
	}
	public void setIdSorgente(Integer idSorgente) {
		this.idSorgente = idSorgente;
	}
	public String getTipoSorgente() {
		return tipoSorgente;
	}
	public void setTipoSorgente(String tipoSorgente) {
		this.tipoSorgente = tipoSorgente;
	}
	@JoinColumn(name="TICKET_ID")
	@ManyToOne
	public Ticket getTicket() {
		return ticket;
	}
	public void setTicket(Ticket ticket) {
		this.ticket = ticket;
	}
	
	
	
}
