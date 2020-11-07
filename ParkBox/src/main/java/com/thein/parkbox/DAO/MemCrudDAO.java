package com.thein.parkbox.DAO;

import java.util.List;

import com.thein.parkbox.testVo.MemVo;

public interface MemCrudDAO {
	public int MemAdd(MemVo mVo);

	public List<MemVo> memAllList();
}
