package com.zeixin.restaurant.service;

import java.util.List;

import com.zeixin.restaurant.bean.OrderForm;

public interface OrderFormService extends BaseService<OrderForm> {
	public String getMaxOrderNo();
	public List<OrderForm> getAllUnpaid();
	public List<OrderForm> getAllOrder();
}
