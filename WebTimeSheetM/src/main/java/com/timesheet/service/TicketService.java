package com.timesheet.service;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.timesheet.entity.Ticket;
import com.timesheet.repository.TicketRepository;

@Service
public class TicketService {
	
	@Autowired
	private TicketRepository ticketRepository;
	
	@Transactional
	public void save(Ticket ticket) {
		ticket.setDataInserimento(new Date());
		ticketRepository.saveAndFlush(ticket);
	}
}
