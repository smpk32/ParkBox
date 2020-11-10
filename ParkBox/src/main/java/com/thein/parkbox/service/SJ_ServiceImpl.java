package com.thein.parkbox.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.thein.parkbox.DAO.SJ_DAO;
import com.thein.parkbox.testVo.MemVo;

@Service
public class SJ_ServiceImpl implements SJ_Service {
	@Autowired
	SJ_DAO dao;
	
	@Override
	public MemVo login(MemVo memvo) {
		// TODO Auto-generated method stub
		return dao.login(memvo);
	}

}
