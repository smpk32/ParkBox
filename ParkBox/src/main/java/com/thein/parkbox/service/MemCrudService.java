package com.thein.parkbox.service;

import java.util.List;

import com.thein.parkbox.testVo.MemVo;

public interface MemCrudService {
	public int memAdd(MemVo mVo);
	public int memUpdate(MemVo mVo);
	public List<MemVo> memAllList();

}
