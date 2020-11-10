package com.thein.parkbox.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.thein.parkbox.service.SJ_Service;
import com.thein.parkbox.testVo.MemVo;

@Controller
public class SJController {
	
	private SJ_Service service;
	
	@Autowired
	public SJController(SJ_Service service) {
		super();
		this.service = service;
	}
	

	
	@RequestMapping(value = "/login", method={RequestMethod.GET,RequestMethod.POST})
	@ResponseBody
	public String login(HttpSession session, MemVo memvo) {
		MemVo loginvo = service.login(memvo);
		String str = "";
		
		if (loginvo == null) {
			str = "fail";
		} else {
			session.setAttribute("loginvo", loginvo);
			str = "ok";
		}
		
		return str;
	}
	
	@RequestMapping("/gologin")
	public String loginjsp(HttpSession session, MemVo memvo, Model model) {
		return "login";
	}

}
