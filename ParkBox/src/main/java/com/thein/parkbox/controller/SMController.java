package com.thein.parkbox.controller;




import java.util.Date;
import java.util.Locale;

import org.apache.ibatis.session.SqlSessionFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.thein.parkbox.service.MemCrudService;
import com.thein.parkbox.testVo.MemVo;


@Controller
public class SMController{
	@Autowired
	private SqlSessionFactory factory;
	
	private MemCrudService memService;
	
	@Autowired
	public SMController(MemCrudService memService) {
		super();
		this.memService = memService;
	}
	
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String register(Locale locale, Model model) {
		 MemVo mvo = new MemVo();
		 mvo.setEmail("example2@naver.com");
		 mvo.setPw("example12342");
		 mvo.setName("example2");
		 mvo.setStatus('y');
		 mvo.setBirth(new Date());
		 mvo.setLastLog(new Date());
		 mvo.setPhone("010-5555-4444");
		 mvo.setPoint(0);
		 mvo.setSigndate(new Date());
		 
		 memService.memAdd(mvo);
		 model.addAttribute("memlist",factory.openSession().selectList("crud.mapper.listUser"));
		return "home";
	}
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String test(Locale locale, Model model) {
		model.addAttribute("memlist",factory.openSession().selectList("crud.mapper.listUser"));
		return "home";
	}
	
}
