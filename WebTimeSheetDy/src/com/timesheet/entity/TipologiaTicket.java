package com.timesheet.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;



@Table(name="WEB_TIPOLOGIA")
@Entity
public class TipologiaTicket {

	
	private Integer idTipologiaTicket;
	private String tipologia;
	private Ticket ticket;
	
	@Id
	@GeneratedValue
	public Integer getIdTipologiaTicket() {
		return idTipologiaTicket;
	}
	public void setIdTipologiaTicket(Integer idTipologiaTicket) {
		this.idTipologiaTicket = idTipologiaTicket;
	}
	public String getTipologia() {
		return tipologia;
	}
	public void setTipologia(String tipologia) {
		this.tipologia = tipologia;
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
