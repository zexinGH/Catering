package com.zeixin.restaurant.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zeixin.restaurant.bean.OrderForm;
import com.zeixin.restaurant.dao.OrderFormDao;
import com.zeixin.restaurant.service.OrderFormService;

@Service("orderFormService")
public class OrderFormServiceImpl extends BaseServiceImpl<OrderForm> implements
		OrderFormService {	

	@Autowired
	private OrderFormDao orderFormDao;
	@Override
	public String getMaxOrderNo() {
		return orderFormDao.getMaxOrderNo();
	}
	@Override
	public List<OrderForm> getAllUnpaid() {
		return orderFormDao.getAllUnpaid();
	}
	@Override
	public List<OrderForm> getAllOrder() {
		return orderFormDao.getAllOrder();
	}

}
