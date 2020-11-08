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

}
