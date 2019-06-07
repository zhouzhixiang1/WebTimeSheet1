package com.timesheet.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Table(name="STATO_TICKET")
@Entity
public class StatoTicket {

	private Integer idStatoTicket;
	private String statoTicket;
	private Ticket ticket;
	
	@GeneratedValue
	@Id
	public Integer getIdStatoTicket() {
		return idStatoTicket;
	}
	public void setIdStatoTicket(Integer idStatoTicket) {
		this.idStatoTicket = idStatoTicket;
	}
	public String getStatoTicket() {
		return statoTicket;
	}
	public void setStatoTicket(String statoTicket) {
		this.statoTicket = statoTicket;
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
