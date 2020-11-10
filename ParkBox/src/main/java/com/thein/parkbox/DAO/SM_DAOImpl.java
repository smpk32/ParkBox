package com.thein.parkbox.DAO;

import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;

import com.thein.parkbox.testVo.MemVo;

@Repository
public class SM_DAOImpl implements SM_DAO {

	@Autowired
	private SqlSessionFactory factory;
	
	@Override
	public int MemAdd(MemVo mvo) {
		
		return factory.openSession().insert("mapper.sm.addUser",mvo);
	}

	@Override
	public String MemCheck(String email) {
		
		return factory.openSession().selectOne("mapper.sm.memCheck",email);
	}

	@Override
	public int MemDel(String email) {
		return factory.openSession().delete("mapper.sm.memDel",email);
	}

}
