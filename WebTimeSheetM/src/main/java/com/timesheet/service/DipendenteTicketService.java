package com.timesheet.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.timesheet.entity.DipendenteTicket;
import com.timesheet.repository.DipendenteTicketRepository;

@Service
public class DipendenteTicketService {
	
	@Autowired
	private DipendenteTicketRepository dipendenteTicketRepository;
	
	@Transactional
	public List<DipendenteTicket> getAll(){
		return dipendenteTicketRepository.findAll();
		
	}
	@Transactional
	public DipendenteTicket getOneDT(Integer id) {
		return dipendenteTicketRepository.findOne(id);
		
	}
	@Transactional
	public DipendenteTicket saveDT(DipendenteTicket dipendenteTicket) {
		return dipendenteTicketRepository.saveAndFlush(dipendenteTicket);
		
	}
	@Transactional
	public void deleteDT(Integer id) {
		dipendenteTicketRepository.delete(id);
	}
	

	}
	

