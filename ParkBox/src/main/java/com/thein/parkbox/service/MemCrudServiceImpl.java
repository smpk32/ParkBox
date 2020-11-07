package com.thein.parkbox.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.thein.parkbox.DAO.MemCrudDAO;
import com.thein.parkbox.testVo.MemVo;

@Service
public class MemCrudServiceImpl implements MemCrudService {

	@Autowired
	private MemCrudDAO memDao;
	
	@Override
	public int memAdd(MemVo mVo) {
		return memDao.MemAdd(mVo);
		
	}

	@Override
	public int memUpdate(MemVo mVo) {
		return 0;
	}

	//회원전체보기
	@Override
	public List<MemVo> memAllList() {
		return memDao.memAllList();
	}

}
