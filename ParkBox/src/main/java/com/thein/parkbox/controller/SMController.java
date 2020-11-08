package com.thein.parkbox.controller;




import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSessionFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.thein.parkbox.service.MemCrudService;
import com.thein.parkbox.service.SM_Service;
import com.thein.parkbox.testVo.MemVo;


@Controller
public class SMController{
	@Autowired
	private SqlSessionFactory factory;
	
	private SM_Service memService;
	
	@Autowired
	public SMController(SM_Service memService) {
		super();
		this.memService = memService;
	}
	

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String register(HttpServletRequest request,MemVo mvo , Model model) {
		 System.out.println(mvo.getBirth());
		 mvo.setStatus('y');
		 mvo.setLastLog(new Date());
		 mvo.setPoint(0);
		 mvo.setSigndate(new Date());
		 
		 //memService.memAdd(mvo);
		 //model.addAttribute("memlist",factory.openSession().selectList("mapper.sm.listUser"));
		return "home";
	}
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String test(Locale locale, Model model) {
		model.addAttribute("memlist",factory.openSession().selectList("mapper.sm.listUser"));
		return "home";
	}
	
}
