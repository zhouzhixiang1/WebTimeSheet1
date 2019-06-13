package com.timesheet.handler;

import java.util.List;
import java.util.Map;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Path;
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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.timesheet.entity.Dipendente;
import com.timesheet.repository.DipendenteRepository;
import com.timesheet.service.DipendenteService;

@Controller
public class DipendenteHandler {

	@Autowired
	private DipendenteService dipendenteService;

	@Autowired
	private DipendenteRepository dipendenteRepository;
	
	@RequestMapping(value="/loginD",method = RequestMethod.GET)
	public String tologinD() {
		return "loginD";
		
	}
	@RequestMapping(value="/dipendenteLogin", method = RequestMethod.POST)
	public String loginD(@RequestParam Integer idDipendente,@RequestParam String nomeDipendente,@RequestParam String passwordDipendente,
						HttpSession session,Model m) {
		Dipendente dipendente = dipendenteService.dipendenteLogin(idDipendente, nomeDipendente, passwordDipendente);
		if(dipendente != null) {
			session.setAttribute("dipendente", dipendente);
			return "controlloD";
		}
		return "controlloD";
		
	}
	
	@RequestMapping(value="/logoutD",method=RequestMethod.GET)
	public String logoutD(HttpSession session) {
		session.removeAttribute("dipendente");
		return "loginD";
	}
	
//	// find all dipendenti
//	@RequestMapping(value = "/dipens", method = RequestMethod.GET)
//	public String input(Map<String, Object> map) {
//		List<Dipendente> listD = dipendenteService.findAll();
//		map.put("list", listD);
//		return "listDipendenti";
//
//	}

	@RequestMapping(value = "/dipen/{idDipendente}", method = RequestMethod.PUT)
	public String update(Dipendente dipendente) {
		dipendenteService.put(dipendente);
		return "redirect:/dipens";
	}

	// select dipendete by id
	@RequestMapping(value = "/dipen/{idDipendente}", method = RequestMethod.GET)
	public String input(@PathVariable("idDipendente") Integer idDipendente, Map<String, Object> map) {
		Dipendente dipendente = dipendenteService.get(idDipendente);
		map.put("dipendente", dipendente);
		return "editDipendenti";

	}

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
//			// TODO: handle exception
//		}
//		Page<Dipendente> page = dipendenteService.getPage(pageNo, 5);
//
//		map.put("page", page);
//
//		return "listDipendenti";
//
//	}

	@RequestMapping("/dipens/{idManager}")
	public String listById(@PathVariable(value="idManager")Integer idManager, Map<String, Object> map) {
		Specification<Dipendente> spec = new Specification<Dipendente>() {

			@Override
			public Predicate toPredicate(Root<Dipendente> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
				return cb.equal(root.get("idManager"), idManager);
			}
		};
		Pageable pageable = new PageRequest(0, 5);
		Page<Dipendente> page = this.dipendenteRepository.findAll(spec, pageable);
		map.put("page", page);
		
		return"listDipendenti";
	}
	

	
}
