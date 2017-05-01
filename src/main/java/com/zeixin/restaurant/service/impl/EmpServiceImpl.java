package com.zeixin.restaurant.service.impl;

import java.io.Serializable;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zeixin.restaurant.bean.Employee;
import com.zeixin.restaurant.dao.EmployeeDao;
import com.zeixin.restaurant.service.EmpService;

@Service("empService")
public class EmpServiceImpl implements EmpService {
	
	@Autowired
	private EmployeeDao employeeDao;
	
	@Override
	public void test() {
		System.out.println("hello");
	}

	@Override
	public Serializable save(Employee employee) {	
		return employeeDao.save(employee);
	}

}
