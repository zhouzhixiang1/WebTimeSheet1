package com.timesheet.handler;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.timesheet.entity.Dipendente;
import com.timesheet.service.DipendenteService;

@Controller
public class DipendenteHandler {

	@Autowired
	private DipendenteService dipendenteService;

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
	@RequestMapping("/dipens")
	public String list(@RequestParam(value = "pageNo", required = false, defaultValue = "1") String pageNoStr,
			Map<String, Object> map) {
		int pageNo = 1;
		
		try {
			pageNo = Integer.parseInt(pageNoStr);
			if (pageNo < 1) {
				pageNo = 1;
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		Page<Dipendente> page = dipendenteService.getPage(pageNo, 5);

		map.put("page", page);

		return "listDipendenti";

	}

}
