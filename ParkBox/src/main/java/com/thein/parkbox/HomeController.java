package com.thein.parkbox;



import java.util.List;
import java.util.Locale;

import org.apache.ibatis.session.SqlSessionFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.thein.parkbox.testVo.vo;

@Controller
public class HomeController {
	@Autowired
	private SqlSessionFactory factory;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView home(Locale locale, Model model) {
		List<vo> vo =  factory.openSession().selectList("crud.mapper.listUser");
		System.out.println(vo);
		
		return new ModelAndView("home","memlist",vo);
		
	}
	
}
