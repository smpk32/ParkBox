package com.thein.parkbox.DAO;

import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.thein.parkbox.testVo.MemVo;

@Repository
public class MemCrudDAOImpl implements MemCrudDAO{

	@Autowired
	private SqlSessionFactory factory;

	@Override
	public int MemAdd(MemVo mVo) {
		return factory.openSession().update("crud.mapper.addUser",mVo);
		
	}

}
