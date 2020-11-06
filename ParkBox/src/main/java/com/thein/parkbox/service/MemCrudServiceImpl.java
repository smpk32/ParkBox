package com.thein.parkbox.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.thein.parkbox.DAO.MemCrudDAO;
import com.thein.parkbox.testVo.MemVo;

@Service
public class MemCrudServiceImpl implements MemCrudService {

	@Autowired
	MemCrudDAO memDao;
	
	@Override
	public int memAdd(MemVo mVo) {
		return memDao.MemAdd(mVo);
		
	}


	@Override
	public int memUpdate(MemVo mVo) {
		// TODO Auto-generated method stub
		return 0;
	}

}
