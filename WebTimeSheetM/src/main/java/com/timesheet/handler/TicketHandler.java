package com.timesheet.handler;

import java.util.Map;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.timesheet.entity.Ticket;
import com.timesheet.repository.TicketRepository;
import com.timesheet.service.TicketService;

@Controller
public class TicketHandler {
	
	
	
	
	
//	@Autowired
//	private TicketRepository ticketRepository;
//	
//	@RequestMapping(value="/tickets/{idManager}")
//	public String TicketlistById(@PathVariable(value="idManager")Integer idManager,Map<String, Object> map) {
//		
//		Specification<Ticket> spec = new Specification<Ticket>() {
//
//			@Override
//			public Predicate toPredicate(Root<Ticket> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
//				return cb.equal(root.get("idManager"), idManager);
//			}
//		};
//		Pageable pageable = new PageRequest(0, 5);
//		Page<Ticket> tpage = this.ticketRepository.findAll(spec,pageable);
//		map.put("tpage",tpage);
//		return "listTicket";
//		
//	}

	
//	@RequestMapping(value="/ticketsD/{idDipendente}")
//	public String TicketlistByIdD(@PathVariable(value="idDipendente")Integer idDipendente,Map<String, Object> map) {
//		
//		Specification<Ticket> spec = new Specification<Ticket>() {
//
//			@Override
//			public Predicate toPredicate(Root<Ticket> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
//				return cb.equal(root.get("idDipendente"),idDipendente);
//			}
//		};
//		Pageable pageable = new PageRequest(0, 5);
//		Page<Ticket> tpage = this.ticketRepository.findAll(spec, pageable);
//		map.put("tpage",tpage);
//		return "listTicket";
//		
//	}

}
