package com.timesheet.handler;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.timesheet.entity.Manager;
import com.timesheet.service.ManagerService;

@Controller
public class ManagerHandler {
	
	@Autowired
	private ManagerService managerService;

//	// va alla pagina home
//	@RequestMapping(value = "/login", method = RequestMethod.GET)
//	public String toLogin() {
//		return "redirect:/login";
//
//	}

	// login utente
	@RequestMapping(value = "/managerLogin", method = RequestMethod.POST)
	public String login(@RequestParam Integer idManager, @RequestParam String managerName,
			@RequestParam String managerPassword,HttpSession session,Model m) {
		Manager manager = managerService.loginManager(idManager, managerName, managerPassword);
		if(manager != null) {
			session.setAttribute("manager", manager);
			return "index";
		}
		return "index";
	}
	@RequestMapping(value="/logout",method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.removeAttribute("manager");
		return "login";
		
	}

}
