package com.thein.parkbox.DAO;

import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.thein.parkbox.testVo.MemVo;
@Repository
public class SJ_DAOImpl implements SJ_DAO{
	@Autowired
	private SqlSessionFactory factory;

	//mapper 네임스페이스
	private final String SJ = "mapper.sj.";

	@Override
	public MemVo login(MemVo memvo) {
		// TODO Auto-generated method stub
		return factory.openSession().selectOne(SJ +"login",memvo);
	}

	
	

}
