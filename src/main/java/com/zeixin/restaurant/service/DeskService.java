package com.zeixin.restaurant.service;

import java.util.List;

import com.zeixin.restaurant.bean.Desk;

public interface DeskService extends BaseService<Desk> {
	public Desk getDeskByNum(Integer deskNum);
	public List<Desk> getAllDesk();
}
