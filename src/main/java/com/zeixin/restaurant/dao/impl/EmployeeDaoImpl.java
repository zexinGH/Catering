package com.zeixin.restaurant.dao.impl;

import java.io.Serializable;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.zeixin.restaurant.bean.Employee;
import com.zeixin.restaurant.dao.EmployeeDao;

@Repository("employeeDao")
public class EmployeeDaoImpl implements EmployeeDao {
	
	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	public Serializable save(Employee employee) {
		return sessionFactory.getCurrentSession().save(employee);
	}

}
