package com.timesheet.handler;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.timesheet.entity.Dipendente;
import com.timesheet.service.DipendenteService;

@Controller
public class DipendenteHandler {

	@Autowired
	private DipendenteService dipendenteService;

	// find all dipendenti
	@RequestMapping(value = "/dipen", method = RequestMethod.GET)
	public String input(Map<String, Object> map) {
		List<Dipendente> listD = dipendenteService.findAll();
		map.put("list", listD);
		return "listDipendenti";

	}

	@RequestMapping(value = "/dipen/{idDipendente}", method = RequestMethod.PUT)
	public String update(Dipendente dipendente) {
		dipendenteService.put(dipendente);
		return "redirect:/listDipendenti";
	}

	// select dipendete by id
	@RequestMapping(value = "/dipen/{idDipendente}", method = RequestMethod.GET)
	public String input(@PathVariable("idDipendente") Integer idDipendente, Map<String, Object> map) {
		Dipendente dipendente = dipendenteService.get(idDipendente);
		map.put("dipendente", dipendente);
		return "editDipendenti";

	}

}
