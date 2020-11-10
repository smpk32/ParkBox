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
import org.springframework.web.bind.annotation.ResponseBody;

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
	
	//페이지 이동
	@RequestMapping(value = "/register")
	public String goRegister() {
		return "register";
	}
	
	@RequestMapping(value = "/mypage")
	public String goMypage() {
		return "myPage";
	}
	
	@RequestMapping(value = "/boxoffice")
	public String goBoxoffice() {
		return "boxoffice";
	}
	
	@RequestMapping(value = "/book")
	public String goBook() {
		return "book";
	}
	
	@RequestMapping(value = "/theaterList")
	public String gotheaterList() {
		return "theaterList";
	}
	
	@RequestMapping(value = "/movieStory")
	public String goMovieStory() {
		return "movieStory";
	}
	
	@RequestMapping(value = "/ask")
	public String goAsk() {
		return "ask";
	}
	
	@RequestMapping(value = "/memUpdate")
	public String goMemUpdate() {
		return "memUpdate";
	}
	
	@RequestMapping(value = "/myTicket")
	public String goMyTicket() {
		return "myTicket";
	}
	//페이지 이동 끝

	@RequestMapping(value = "/memRegister", method = {RequestMethod.GET,RequestMethod.POST})
	public String register(HttpServletRequest request,MemVo mvo , Model model) {
		 mvo.setStatus('y');
		 mvo.setLastLog(new Date());
		 mvo.setPoint(0);
		 mvo.setSigndate(new Date());
		 
		 memService.memAdd(mvo);
		 //model.addAttribute("memlist",factory.openSession().selectList("mapper.sm.listUser"));
		return "home";
	}
	
	@ResponseBody
	@RequestMapping(value="/memDel", method={RequestMethod.GET,RequestMethod.POST})
	public String memDel(String email) {
		memService.MemDel(email);
		return "main";
	}
	
	@ResponseBody
	@RequestMapping(value="/memCheck")
	public String memCheck(String email) {
		String s = memService.memCheck(email);
		return s;
	}
	
	@RequestMapping(value="/findEmail", method={RequestMethod.GET,RequestMethod.POST})
	public String findEmail(String phone) {
		String email = memService.findEmail(phone);
		return email;
	}
	
	@RequestMapping(value="/findPw", method={RequestMethod.GET,RequestMethod.POST})
	public String findPw(String email) {
		String pw = memService.findPw(email);
		return pw;
	}
	
	@RequestMapping(value="/updatePw", method={RequestMethod.GET,RequestMethod.POST})
	public String updatePw(MemVo mvo) {
		int result = memService.updatePw(mvo);
		return "home";
	}
	
	@RequestMapping(value="/memUpdate", method={RequestMethod.GET,RequestMethod.POST})
	public String memUpdate(MemVo mvo) {
		int result = memService.memUpdate(mvo);
		return "home";
	}
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String test(Locale locale, Model model) {
		model.addAttribute("memlist",factory.openSession().selectList("mapper.sm.listUser"));
		return "home";
	}
	@RequestMapping(value = "/home2", method = RequestMethod.GET)
	public String test2(Locale locale, Model model) {
		model.addAttribute("memlist",factory.openSession().selectList("mapper.sm.listUser"));
		return "home2";
	}
	
}
