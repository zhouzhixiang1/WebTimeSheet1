package com.timesheet.handler;

import java.util.List;
import java.util.Map;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.timesheet.entity.Manager;
import com.timesheet.entity.Ticket;
import com.timesheet.repository.TicketRepository;
import com.timesheet.service.ManagerService;

@Controller
public class ManagerHandler {
	
	@Autowired
	private ManagerService managerService;

	@Autowired
	private TicketRepository ticketRepository;
	/**
	 * manager(login , logut)
	 * @return
	 */

	// va alla pagina login
	@RequestMapping(value = "/loginM", method = RequestMethod.GET)
	public String toLogin() {
		return "login";
	}
	// login utente
	@RequestMapping(value = "/managerLogin", method = RequestMethod.POST)
	public String login(@RequestParam Integer idManager, @RequestParam String managerName,
			@RequestParam String managerPassword,HttpSession session,Model m) {
		Manager manager = managerService.loginManager(idManager, managerName, managerPassword);
		if(manager != null) {
			session.setAttribute("manager", manager);
			return "controlloM";
		}
		return "controlloM";
	}
	//logout
	@RequestMapping(value="/logout",method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.removeAttribute("manager");
		return "login";
		
	}
	
	//select table ticket by idManager
	@RequestMapping(value="/ticketsM/{idManager}")
	public String TicketlistByIdM(@PathVariable(value="idManager")Integer idManager,Map<String,Object>map) {
		Specification<Ticket> spec = new Specification<Ticket>() {

			@Override
			public Predicate toPredicate(Root<Ticket> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
				return cb.equal(root.get("idManager"), idManager);
			}
		};
		List<Ticket> tlistM =this.ticketRepository.findAll(spec);
		map.put("tlistM", tlistM);
		return "listTicket";
		
	}
	
	//select ticket by idTicket
	@RequestMapping(value="/listTicketM/{idTicket}",method = RequestMethod.GET)
	public String findOneTicketM(@PathVariable Integer idTicket,Map <String, Object> map){
		Ticket mticket = ticketRepository.findOne(idTicket);
		map.put("mticket", mticket);
		return "managerTicket";
		
	}

}
