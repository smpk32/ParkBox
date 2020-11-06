package com.thein.parkbox.controller;




import java.util.Locale;

import org.apache.ibatis.session.SqlSessionFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class SHController {
	@Autowired
	private SqlSessionFactory factory;
	
	@RequestMapping(value = "/2", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		 model.addAttribute("memlist",factory.openSession().selectList("crud.mapper.listUser"));
		return "home";
	}
	
}
