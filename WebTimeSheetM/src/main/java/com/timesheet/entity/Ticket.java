package com.timesheet.entity;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Table(name="WEB_TICKET")
@Entity
public class Ticket {
	
	
	private Integer idTicket ;
	private String cliente;
	private Date dataInserimente;
	private Date dataRilascio;
	private Double stima;
	private String descrizione;
	private Integer totOreLavorate;
	private String commessa;
	private String note;
	private String sorgenteTicket;
	private String statoTicket;
	private String priorita;
	private String tipologiaTicket;
	
//	private Priorita priorita;
//	private StatoTicket statoTicket;
//	private SorgenteTicket sorgenteTicket;
//	private TipologiaTicket tipologiaTicket;
	
	
	private Set<Dipendente> dipendenti = new HashSet<>();

	
	@ManyToMany(mappedBy = "tickets")
	public Set<Dipendente> getDipendenti() {
		return dipendenti;
	}
	public void setDipendenti(Set<Dipendente> dipendenti) {
		this.dipendenti = dipendenti;
	}
	
	@GeneratedValue
	@Id
	public Integer getIdTicket() {
		return idTicket;
	}
	public void setIdTicket(Integer idTicket) {
		this.idTicket = idTicket;
	}
	public String getCliente() {
		return cliente;
	}
	public void setCliente(String cliente) {
		this.cliente = cliente;
	}
	
	@Temporal(TemporalType.DATE)
	public Date getDataInserimente() {
		return dataInserimente;
	}
	public void setDataInserimente(Date dataInserimente) {
		this.dataInserimente = dataInserimente;
	}
	
	@Temporal(TemporalType.DATE)
	public Date getDataRilascio() {
		return dataRilascio;
	}
	public void setDataRilascio(Date dataRilascio) {
		this.dataRilascio = dataRilascio;
	}
	public Double getStima() {
		return stima;
	}
	public void setStima(Double stima) {
		this.stima = stima;
	}
	public String getDescrizione() {
		return descrizione;
	}
	public void setDescrizione(String descrizione) {
		this.descrizione = descrizione;
	}
	public Integer getTotOreLavorate() {
		return totOreLavorate;
	}
	public void setTotOreLavorate(Integer totOreLavorate) {
		this.totOreLavorate = totOreLavorate;
	}
	public String getCommessa() {
		return commessa;
	}
	public void setCommessa(String commessa) {
		this.commessa = commessa;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	public String getSorgenteTicket() {
		return sorgenteTicket;
	}
	public void setSorgenteTicket(String sorgenteTicket) {
		this.sorgenteTicket = sorgenteTicket;
	}
	public String getStatoTicket() {
		return statoTicket;
	}
	public void setStatoTicket(String statoTicket) {
		this.statoTicket = statoTicket;
	}
	public String getPriorita() {
		return priorita;
	}
	public void setPriorita(String priorita) {
		this.priorita = priorita;
	}
	public String getTipologiaTicket() {
		return tipologiaTicket;
	}
	public void setTipologiaTicket(String tipologiaTicket) {
		this.tipologiaTicket = tipologiaTicket;
	}
	
	
	
//	@JoinColumn(name="TICKET_ID")
//	@OneToMany
//	public Priorita getPriorita() {
//		return priorita;
//	}
//	public void setPriorita(Priorita priorita) {
//		this.priorita = priorita;
//	}
//	
//	@JoinColumn(name="TICKET_ID")
//	@OneToMany
//	public StatoTicket getStatoTicket() {
//		return statoTicket;
//	}
//	public void setStatoTicket(StatoTicket statoTicket) {
//		this.statoTicket = statoTicket;
//	}
//	
//	@JoinColumn(name="TICKET_ID")
//	@OneToMany
//	public SorgenteTicket getSorgenteTicket() {
//		return sorgenteTicket;
//	}
//	public void setSorgenteTicket(SorgenteTicket sorgenteTicket) {
//		this.sorgenteTicket = sorgenteTicket;
//	}
//	
//	@JoinColumn(name="TICKET_ID")
//	@OneToMany
//	public TipologiaTicket getTipologiaTicket() {
//		return tipologiaTicket;
//	}
//	public void setTipologiaTicket(TipologiaTicket tipologiaTicket) {
//		this.tipologiaTicket = tipologiaTicket;
//	}

	
	

}
