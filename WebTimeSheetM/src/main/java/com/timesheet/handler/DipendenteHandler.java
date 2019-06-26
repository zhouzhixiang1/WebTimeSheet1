package com.timesheet.handler;

import java.util.List;
import java.util.Map;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.timesheet.entity.Dipendente;
import com.timesheet.entity.DipendenteTicket;
import com.timesheet.entity.Ticket;
import com.timesheet.repository.DipendenteRepository;
import com.timesheet.repository.DipendenteTicketRepository;
import com.timesheet.repository.TicketRepository;
import com.timesheet.service.DipendenteService;
import com.timesheet.service.DipendenteTicketService;
import com.timesheet.service.ManagerService;
import com.timesheet.service.TicketService;

@Controller
public class DipendenteHandler {

	@Autowired
	private DipendenteService dipendenteService;

	@Autowired
	private DipendenteRepository dipendenteRepository;
	
	@Autowired
	private DipendenteTicketRepository dipendenteTicketRepository;
	
	@Autowired
	private DipendenteTicketService dipendenteTicketService;
	
	@Autowired
	private TicketRepository ticketRepository;
	
	@Autowired
	private ManagerService managerService;
	
	@Autowired
	private TicketService ticketService;
	
	

	/**
	 * dipendente(login , logout)
	 * @return
	 */
	
	//go to login page 
	@RequestMapping(value="/loginD",method = RequestMethod.GET)
	public String tologinD() {
		return "loginD";
		
	}
	//login
	@RequestMapping(value="/dipendenteLogin", method = RequestMethod.POST)
	public String loginD(@RequestParam Integer idDipendente,@RequestParam String nomeDipendente,@RequestParam String passwordDipendente,
			@RequestParam String ruolo, HttpSession session,Model m) {
		Dipendente dipendente = dipendenteService.dipendenteLogin(idDipendente, nomeDipendente, passwordDipendente, ruolo);
		if(dipendente != null) {
			session.setAttribute("dipendente", dipendente);
			return "redirect:/main1";
		}
		
		m.addAttribute("msg","Nome Dipendente o password errato!");
		return "loginD";
		
	}
	 @RequestMapping(value = "/main1")
	    public String toMain(){
	        return "controlloD";
	    }
	//logout
	@RequestMapping(value="/logoutD",method=RequestMethod.GET)
	public String logoutD(HttpSession session) {
		session.invalidate();
		return "loginD";
	}

	
	/**
	 * manager ----> dipendente (find , update)
	 * @param idManager
	 * @param dipendente
	 * @return
	 */
	//pagina aggiungi dipendente
	@RequestMapping(value="/addDipen/{idManager}",method = RequestMethod .GET)
	public String saveDipen(@PathVariable Integer idManager,Map <String ,Object>map) {
		Dipendente adipendente = dipendenteRepository.findOne(idManager);
		map.put("adipendente", adipendente);
		map.put("dipendente",new Dipendente());
		return "addDipendente";
		
	}
	//add dipendente and return main 
	@RequestMapping(value="/addDipen",method = RequestMethod.POST)
	public String saveDipen(Dipendente dipendente) {
		dipendenteService.save(dipendente);
		return "redirect:/main";
		
	}
	//delete by id dipendente
	@RequestMapping(value="/dipen/{idDipendente}",method = RequestMethod.DELETE)
	public String delete(@PathVariable("idDipendente")Integer idDipendente) {
		dipendenteService.delete(idDipendente);
		return "redirect:/main";
		
	}
	//update dipendente
	@RequestMapping(value = "/dipen/{idDipendente}", method = RequestMethod.PUT)
	public String update(Dipendente dipendente) {
		dipendenteService.put(dipendente);
		return "redirect:/main";
	}
//	@RequestMapping(value="/success")
//	public String success() {
//		return "modificaDSuccess";
//	}
	

	// select dipendete by id (Manager)
	@RequestMapping(value = "/dipen/{idDipendente}", method = RequestMethod.GET)
	public String input(@PathVariable("idDipendente") Integer idDipendente, Map<String, Object> map) {
		Dipendente dipendente = dipendenteService.get(idDipendente);
		map.put("dipendente", dipendente);
		return "editDipendenti";
	}
	
	//select table dipendente by idManager
	@RequestMapping("/dipens/{idManager}")
	public String listById(@PathVariable(value="idManager")Integer idManager, Map<String, Object> map) {
		Specification<Dipendente> spec = new Specification<Dipendente>() {

			@Override
			public Predicate toPredicate(Root<Dipendente> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
				return cb.equal(root.get("idManager"), idManager);
			}
		};
//		Pageable pageable = new PageRequest(0, 3);
		List<Dipendente> listd = this.dipendenteRepository.findAll(spec);
		map.put("listd", listd);
		return"listDipendenti";
	}
	
	
	
	/**
	 * dipendente ----> ticket (find , add hours)
	 * @param idDipendente
	 * @param map
	 * @return
	 */
	
	//select table ticket by idDipendente
	@RequestMapping(value="/ticketsD/{idDipendente}")
	public String TicketlistById(@PathVariable(value="idDipendente")Integer idDipendente,Map<String,Object>map) {
		Specification<DipendenteTicket> spec = new Specification<DipendenteTicket>() {

			@Override
			public Predicate toPredicate(Root<DipendenteTicket> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
				return cb.equal(root.get("idDipendente"), idDipendente);
			}
		};
		List<DipendenteTicket> tlist = this.dipendenteTicketRepository.findAll(spec);
		map.put("tlist", tlist);
		return "listTicketD";
		
	}
	//select table ticket by idDipendente
		@RequestMapping(value="/ticketsD2/{idDipendente}")
		public String TicketlistById2(@PathVariable(value="idDipendente")Integer idDipendente,Map<String,Object>map) {
			Specification<DipendenteTicket> spec = new Specification<DipendenteTicket>() {

				@Override
				public Predicate toPredicate(Root<DipendenteTicket> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
					return cb.equal(root.get("idDipendente"), idDipendente);
				}
			};
			List<DipendenteTicket> tlist = this.dipendenteTicketRepository.findAll(spec);
			map.put("tlist", tlist);
			return "listTicketD2";
			
		}
	
	//select ticket by idTicket
	@RequestMapping(value="/listTicket/{idTicket}",method = RequestMethod.GET)
	public String findOneTicket(@PathVariable Integer idTicket,Map <String, Object> map) {
		Ticket dticket = ticketRepository.findOne(idTicket);
		map.put("dticket", dticket);
		return "dipendenteTicket";
		
	}
	
	//select ticket by idTicket
		@RequestMapping(value="/listTicket2/{idTicket}",method = RequestMethod.GET)
		public String findOneTicket2(@PathVariable Integer idTicket,Map <String, Object> map) {
			Ticket dticket = ticketRepository.findOne(idTicket);
			map.put("dticket", dticket);
			return "dipendenteTicket2";
			
		}
		
		//go to add ticket page
		@RequestMapping(value="/listTicketDt",method = RequestMethod.GET)
		public String addTicket(Map<String , Object>map){
			map.put("managers", managerService.getAll());
			map.put("ticket", new Ticket());
			return "addTicketD";	
		}
		
		//add ticket and return listTicket
		@RequestMapping(value="/listTicketD",method = RequestMethod.POST)
		public String save(Ticket ticket){
			ticketService.save(ticket);
			return "redirect:/main1";
			
		}
		//select ticket by id (per modificare)
		@RequestMapping(value="listTicketDt/{idTicket}", method = RequestMethod.GET)
		public String inputD(@PathVariable("idTicket")Integer idTicket, Map<String , Object>map) {
			Ticket ticket = ticketService.get(idTicket);
			map.put("ticket",ticket);
			return "editTicketD";
		}
		
		//update ticket and return listTicket
		@RequestMapping(value="/listTicketD/{idTicket}",method = RequestMethod.PUT)
		public String edit(Ticket ticket){
			ticketService.save(ticket);
			return "redirect:/main1";	
				}
		//data inserimento != null
		@ModelAttribute
		public void getTicket(@RequestParam(value="idTicket",required=false)Integer idTicket,
				Map<String, Object>map) {
			if(idTicket != null) {
				Ticket ticket = ticketService.get(idTicket);
				map.put("ticket",ticket);
			}
		}
		// select dipendete by id (Dipendente)
		@RequestMapping(value="/datiDipen/{idDipendente}",method = RequestMethod.GET)
		public String getOneD(@PathVariable("idDipendente") Integer idDipendente,Map<String, Object>map) {
			Dipendente dipendente = dipendenteService.get(idDipendente);
			map.put("dipendente", dipendente);
			return "datiDipen";
			
		}
		// select modifica ore dipendete by id (Dipendente)
		@RequestMapping(value = "/dipen2/{idDipendente}", method = RequestMethod.GET)
		public String input2(@PathVariable("idDipendente") Integer idDipendente, Map<String, Object> map) {
			Dipendente dipendente = dipendenteService.get(idDipendente);
			map.put("dipendente", dipendente);
			return "editDipendenti2";
		}
		
		//update dipendente
		@RequestMapping(value = "/dipen2/{idDipendente}", method = RequestMethod.PUT)
		public String update2(Dipendente dipendente) {
			dipendenteService.put(dipendente);
			return "redirect:/main1";
		}
		
		
//		//delete ticket by id ticket
//		@RequestMapping(value="/ticketsD/{idTicket}",method = RequestMethod.DELETE)
//		public String deleteTicketByIdD(@PathVariable("idTicket")Integer idTicket) {
//			ticketService.deleteT(idTicket);
//			return "redirect:/main1";
//			
//		}
//		
	

	
	
//	//select table ticket by idDipendente
//	@RequestMapping(value="/ticketsD/{idDipendente}", method = RequestMethod.GET)
//	public String getTicketById(@PathVariable(value="idDipendente") Integer idDipendente,Map<String ,Object> map) {
//		List<DipendenteTicket> tlist = dipendenteTicketRepository.getTicketByIdDipendente(idDipendente);
//		map.put("tlist", tlist);
//		return "listTicket2";	
//	}
	
	
//  //select all dipendente (pageable)
//	@RequestMapping("/dipens")
//	public String list(@RequestParam(value = "pageNo", required = false, defaultValue = "1") String pageNoStr,
//			Map<String, Object> map) {
//		int pageNo = 1;
//
//		try {
//			pageNo = Integer.parseInt(pageNoStr);
//			if (pageNo < 1) {
//				pageNo = 1;
//			}
//		} catch (Exception e) {
//		}
//		Page<Dipendente> page = dipendenteService.getPage(pageNo, 5);
//
//		map.put("page", page);
//
//		return "listDipendenti";
//
//	}
	
	
//	// find all dipendenti
//	@RequestMapping(value = "/dipens", method = RequestMethod.GET)
//	public String input(Map<String, Object> map) {
//		List<Dipendente> listD = dipendenteService.findAll();
//		map.put("list", listD);
//		return "listDipendenti";
//
//	}
	

	
}
