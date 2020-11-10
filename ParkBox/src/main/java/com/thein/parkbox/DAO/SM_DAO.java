package com.thein.parkbox.DAO;

import org.springframework.ui.Model;

import com.thein.parkbox.testVo.MemVo;

public interface SM_DAO {
	public int MemAdd(MemVo mvo);
	public String MemCheck(String email);
	public int MemDel(String email);
	public String findEmail(String phone);
	public String findPw(String email);
	public int updatePw(MemVo mvo);
	public int memUpadte(MemVo mvo);

}
