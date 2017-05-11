package com.zeixin.restaurant.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zeixin.restaurant.bean.Desk;
import com.zeixin.restaurant.dao.DeskDao;
import com.zeixin.restaurant.service.DeskService;

@Service("deskService")
public class DeskServiceImpl extends BaseServiceImpl<Desk> implements
		DeskService {
	@Autowired
	private DeskDao deskDao;
	
	@Override
	public Desk getDeskByNum(Integer deskNum) {
		return deskDao.getDeskByNum(deskNum);
	}

	@Override
	public List<Desk> getAllDesk() {
		return deskDao.getAllDesk();
	}


}
