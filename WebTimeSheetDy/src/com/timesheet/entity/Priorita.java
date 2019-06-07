package com.timesheet.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


@Table(name="WEB_PRIORITA")
@Entity
public class Priorita {

	
	private Integer idPriorita;
	private String livelloPriorita;
	private Ticket ticket;
	
	@GeneratedValue
	@Id
	public Integer getIdPriorita() {
		return idPriorita;
	}
	public void setIdPriorita(Integer idPriorita) {
		this.idPriorita = idPriorita;
	}
	public String getLivelloPriorita() {
		return livelloPriorita;
	}
	public void setLivelloPriorita(String livelloPriorita) {
		this.livelloPriorita = livelloPriorita;
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
