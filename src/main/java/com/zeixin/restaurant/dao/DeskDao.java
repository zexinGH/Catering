package com.zeixin.restaurant.dao;

import java.util.List;

import com.zeixin.restaurant.bean.Desk;

public interface DeskDao extends BaseDao<Desk> {
	public Desk getDeskByNum(Integer deskNum);
	public List<Desk> getAllDesk();
}
