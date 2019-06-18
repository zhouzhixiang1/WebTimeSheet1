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
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Table(name="WEB_TICKET")
@Entity
public class Ticket {
	
	
	private Integer idTicket ;
	private String cliente;
	private Date dataInserimento;
	private Date dataRilascio;
	private String applicazioneRiferimento;
	private Double stima;
	private String descrizione;
	private Integer totOreLavorate;
	private String commessa;
	private String note;
	private String sorgenteTicket;
	private String statoTicket;
	private String priorita;
	private String tipologia;
	private Manager idManager;
	
//	private Priorita priorita;
//	private StatoTicket statoTicket;
//	private SorgenteTicket sorgenteTicket;
//	private TipologiaTicket tipologiaTicket;
	
	
//	private Set<Dipendente> idDipendente = new HashSet<>();

	
//	@ManyToMany(mappedBy = "tickets")
//	public Set<Dipendente> getDipendenti() {
//		return dipendenti;
//	}
//	public void setDipendenti(Set<Dipendente> dipendenti) {
//		this.dipendenti = dipendenti;
//	}
	
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
	public Date getDataInserimento() {
		return dataInserimento;
	}
	public void setDataInserimento(Date dataInserimento) {
		this.dataInserimento = dataInserimento;
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

	public String getTipologia() {
		return tipologia;
	}
	public void setTipologia(String tipologia) {
		this.tipologia = tipologia;
	}
	public String getApplicazioneRiferimento() {
		return applicazioneRiferimento;
	}
	public void setApplicazioneRiferimento(String applicazioneRiferimento) {
		this.applicazioneRiferimento = applicazioneRiferimento;
	}
	@JoinColumn(name="idManager")
	@ManyToOne
	public Manager getIdManager() {
		return idManager;
	}
	public void setIdManager(Manager idManager) {
		this.idManager = idManager;
	}
	
//	@JoinTable(name="DIPENDENTI_TICKET",joinColumns = {@JoinColumn(name="idDipendente")},
//			inverseJoinColumns = {@JoinColumn(name="idTicket")})
//	@ManyToMany
//	public Set<Dipendente> getIdDipendente() {
//		return idDipendente;
//	}
//	public void setIdDipendente(Set<Dipendente> idDipendente) {
//		this.idDipendente = idDipendente;
//	}
//
//	

	
	
	
	
	
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
