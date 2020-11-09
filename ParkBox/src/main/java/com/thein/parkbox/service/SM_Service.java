package com.thein.parkbox.service;

import org.springframework.ui.Model;

import com.thein.parkbox.testVo.MemVo;


public interface SM_Service {
	public int memAdd(MemVo mvo);
	public String memCheck(String email);
	public int MemDel(String email);
}
