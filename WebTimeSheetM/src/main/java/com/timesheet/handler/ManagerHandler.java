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
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.timesheet.entity.DipendenteTicket;
import com.timesheet.entity.Manager;
import com.timesheet.entity.Ticket;
import com.timesheet.repository.TicketRepository;
import com.timesheet.service.DipendenteService;
import com.timesheet.service.DipendenteTicketService;
import com.timesheet.service.ManagerService;
import com.timesheet.service.TicketService;

@Controller
public class ManagerHandler {
	
	@Autowired
	private ManagerService managerService;

	@Autowired
	private TicketRepository ticketRepository;
	
	@Autowired
	private TicketService ticketService;
	
	@Autowired
	private DipendenteTicketService dipendenteTicketService;
	
	@Autowired
	private DipendenteService dipendenteService;
	
	
	
	
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
			return "redirect:/main";
		}
		m.addAttribute("msg","Nome Manager o password errato!");
		return "login";
	}
	 @RequestMapping(value = "/main")
	    public String toMain(){
	        return "controlloM";
	    }
	//logout
	@RequestMapping(value="/logout")
	public String logout(HttpSession session) {
		session.removeAttribute("manager");
		return "redirect:/loginM";
		
	}
	
	//delete ticket by id ticket
	@RequestMapping(value="/ticketsM/{idTicket}",method = RequestMethod.DELETE)
	public String deleteTicketById(@PathVariable("idTicket")Integer idTicket) {
		ticketService.deleteT(idTicket);
		return "redirect:/main";
		
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
		return "listTicketM";
		
	}
	
	//select ticket by idTicket
	@RequestMapping(value="/listTicketM/{idTicket}",method = RequestMethod.GET)
	public String findOneTicketM(@PathVariable Integer idTicket,Map <String, Object> map){
		Ticket mticket = ticketRepository.findOne(idTicket);
		map.put("mticket", mticket);
		return "managerTicket";
		
	}
	//go to add ticket page
	@RequestMapping(value="/listTicketMt/{idManager}",method = RequestMethod.GET)
	public String addTicket(@PathVariable Integer idManager,Map<String , Object>map){
//		map.put("managers", managerService.getAll());
		Ticket ticketm = ticketRepository.findOne(idManager);
		map.put("ticketm",ticketm);
		map.put("ticket", new Ticket());
		return "addTicket";
		
	}
	//add ticket and return listTicket
	@RequestMapping(value="/listTicketM",method = RequestMethod.POST)
	public String save(Ticket ticket){
		ticketService.save(ticket);
		return "redirect:/main";
		
	}
	//select ticket by id (per modificare)
	@RequestMapping(value="listTicketMt2/{idTicket}", method = RequestMethod.GET)
	public String input(@PathVariable("idTicket")Integer idTicket, Map<String , Object>map) {
		Ticket ticket = ticketService.get(idTicket);
		map.put("ticket",ticket);
		return "editTicket";
	}
	//edit ticket and return listTicket
		@RequestMapping(value="/listTicketM/{idTicket}",method = RequestMethod.PUT)
		public String edit(Ticket ticket){
			ticketService.save(ticket);
			return "redirect:/main";
			
		}
	@ModelAttribute
	public void getTicket(@RequestParam(value="idTicket",required=false)Integer idTicket,
			Map<String, Object>map) {
		if(idTicket != null) {
			Ticket ticket = ticketService.get(idTicket);
			map.put("ticket",ticket);
		}
	}
	//find all dipendete-ticket
	@RequestMapping(value="/listDipenTicket",method = RequestMethod.GET)
	public String findAll(Map<String, Object>map){
		List<DipendenteTicket> listDT = dipendenteTicketService.getAll();
		map.put("listDT", listDT);
		return "listDipendenteTicket";
		
	}
	
	//go to page add dipendente-ticket
	@RequestMapping(value="/addDipenTicket",method = RequestMethod.GET)
	public String addDT(Map<String, Object>map) {
		map.put("tickets",ticketService.getAllT());
		map.put("dipendenti", dipendenteService.getAllD());
		map.put("listDT", new DipendenteTicket());
		return "addDT";
		
	}
	//add dipendete-ticket and return main
	@RequestMapping(value="/addDipenTicket",method = RequestMethod.POST)
	public String saveDT(DipendenteTicket dipendenteTicket){
		dipendenteTicketService.saveDT(dipendenteTicket);
		return "redirect:/main";
				
			}
	// go to page edit dipendente ticket
	@RequestMapping(value="editDipenTicket/{id}", method = RequestMethod.GET)
	public String inputDT(@PathVariable("id")Integer id, Map<String , Object>map) {
		DipendenteTicket listDT = dipendenteTicketService.getOneDT(id);
		map.put("tickets",ticketService.getAllT());
		map.put("dipendenti", dipendenteService.getAllD());
		map.put("listDT",listDT);
		return "addDT";
	}
	//edit dipendete-ticket and return main
	@RequestMapping(value="/editDipenTicket/{id}",method = RequestMethod.PUT)
	public String editDT(DipendenteTicket dipendenteTicket){
		dipendenteTicketService.saveDT(dipendenteTicket);
		return "redirect:/main";
					
			}
	//delete dipendente-ticket by id 
		@RequestMapping(value="/deleteDipenTicket/{id}",method = RequestMethod.DELETE)
		public String deleteDT(@PathVariable("id")Integer id) {
			dipendenteTicketService.deleteDT(id);
			return "redirect:/main";
			
		}	

}
