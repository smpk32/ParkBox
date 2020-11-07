package com.thein.parkbox.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.thein.parkbox.service.MemCrudService;

@Controller
public class HomeController {
	private MemCrudService memService;
	
	@Autowired
	public HomeController(MemCrudService memService) {
		super();
		this.memService = memService;
	}

	//회원전체리스트 
	@RequestMapping("/test")
	public String memAllList(Model model) {
		model.addAttribute("memlist", memService.memAllList());
		return "home";
	}
	
}
