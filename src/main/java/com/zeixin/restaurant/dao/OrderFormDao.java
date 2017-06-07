package com.zeixin.restaurant.dao;

import java.util.List;

import com.zeixin.restaurant.bean.OrderForm;

public interface OrderFormDao extends BaseDao<OrderForm> {
	public String getMaxOrderNo();
	public List<OrderForm> getAllUnpaid();
	public List<OrderForm> getAllOrder();
}
