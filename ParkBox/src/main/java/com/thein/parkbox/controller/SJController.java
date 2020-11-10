package com.thein.parkbox.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
	

	@RequestMapping("/login")
	public String login(HttpSession session, MemVo memvo, Model model) {
		MemVo loginvo = service.login(memvo);
		System.out.println(loginvo.getEmail());
		System.out.println(loginvo.getPw());
		
		if (loginvo == null) {
			model.addAttribute("result", "로그인에 실패했습니다.");
			return "login";
		} else {
			model.addAttribute("result", "로그인에 성공했습니다.");
			session.setAttribute("loginvo", loginvo);
		}
		return "home";

		/* model.addAttribute("memlist", ); */

	}
	
	@RequestMapping("/loginjsp")
	public String loginjsp(HttpSession session, MemVo memvo, Model model) {
		return "login";
	}

}
