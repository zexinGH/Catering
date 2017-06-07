package com.zeixin.restaurant.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.zeixin.restaurant.bean.OrderForm;
import com.zeixin.restaurant.dao.OrderFormDao;

@Transactional
@Repository("orderFormDao")
public class OrderFormDaoImpl extends BaseDaoImpl<OrderForm> implements
		OrderFormDao {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public String getMaxOrderNo() {
		@SuppressWarnings({ "unchecked", "deprecation" })
		List<OrderForm> orderForms = (List<OrderForm>) sessionFactory.getCurrentSession()
				.createQuery(" from OrderForm order by dateCreated desc ").list();
		if(orderForms.size()>0){
			return orderForms.get(0).getOrderNumber();
		}
		return null;
	}

	@Override
	public List<OrderForm> getAllUnpaid() {
		@SuppressWarnings({ "unchecked", "deprecation" })
		List<OrderForm> orderForms = (List<OrderForm>) sessionFactory.getCurrentSession()
				.createQuery(" from OrderForm o where o.status = 0 ").list();
		if(orderForms.size()>0){
			return orderForms;
		}
		return null;
	}

	@Override
	public List<OrderForm> getAllOrder() {
		@SuppressWarnings({ "unchecked", "deprecation" })
		List<OrderForm> orderForms = (List<OrderForm>) sessionFactory.getCurrentSession()
				.createQuery(" from OrderForm ").list();
		if(orderForms.size()>0){
			return orderForms;
		}
		return null;
	}
}
