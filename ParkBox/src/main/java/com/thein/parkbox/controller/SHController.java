package com.thein.parkbox.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class SHController {

//	  private SH_Service service;
//	  
//	  @Autowired 
//	  public SHController(SH_Service service) { 
//		  super(); this.service=service; 
//	  }
	
	 
	//로그아웃
	@RequestMapping(value="/logout",method=RequestMethod.GET)
	public String logout(HttpSession session, Model model) {
		session.invalidate(); 
		return "redirect:/";
	}
	
}
