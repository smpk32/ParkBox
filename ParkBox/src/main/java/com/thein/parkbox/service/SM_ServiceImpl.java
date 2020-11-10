package com.thein.parkbox.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.thein.parkbox.DAO.SM_DAO;
import com.thein.parkbox.testVo.MemVo;

@Service
public class SM_ServiceImpl implements SM_Service {

	@Autowired
	private SM_DAO smDao;
	
	@Override
	public int memAdd(MemVo mvo) {
		
		return smDao.MemAdd(mvo);
	}

	@Override
	public String memCheck(String email) {
		
		return smDao.MemCheck(email);
	}

	@Override
	public int MemDel(String email) {
		return smDao.MemDel(email);
	}

	@Override
	public String findEmail(String phone) {
		
		return smDao.findEmail(phone);
	}

	@Override
	public String findPw(String email) {
		return smDao.findPw(email);
	}

	@Override
	public int updatePw(MemVo mvo) {
		return smDao.updatePw(mvo);
	}

	@Override
	public int memUpdate(MemVo mvo) {
		
		return smDao.memUpadte(mvo);
	}

}
