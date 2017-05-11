package com.zeixin.restaurant.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.zeixin.restaurant.bean.Desk;
import com.zeixin.restaurant.dao.DeskDao;

@Transactional
@Repository("deskDao")
public class DeskDaoImpl extends BaseDaoImpl<Desk> implements DeskDao {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public Desk getDeskByNum(Integer deskNum) {
		@SuppressWarnings({ "unchecked", "deprecation" })	
		List<Desk> desks = sessionFactory
				.getCurrentSession().createQuery(
				" select d from Desk d where d.deskNum = :deskNum ")
				.setParameter("deskNum", deskNum).list();
		if (desks.size() > 0) {
			return desks.get(0);
		}
		return null;
	}

	@Override
	public List<Desk> getAllDesk() {
		@SuppressWarnings({ "unchecked", "deprecation" })
		List<Desk> desks = sessionFactory
				.getCurrentSession().createQuery(
				" from Desk ").list();
		if(desks.size()>0){
			return desks;
		}
		return null;
	}

	
}
