package com.thein.parkbox.DAO;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.thein.parkbox.testVo.MemVo;

@Repository
public class MemCrudDAOImpl implements MemCrudDAO{
	@Autowired
	private SqlSessionFactory factory;

	//MAPPER 네임스페이스
	private final String TEST = "mapper.test.";
	private final String SM = "mapper.sm.";
	
	@Override
	public int MemAdd(MemVo mVo) {
		return factory.openSession().update(SM+"addUser",mVo);
		
	}

	//회원전체보기
	@Override
	public List<MemVo> memAllList() {
		return factory.openSession().selectList(TEST+"memAllList");
	}

}
