package com.zeixin.restaurant.dao;

import java.io.Serializable;

import com.zeixin.restaurant.bean.Employee;

public interface EmployeeDao {
	
	Serializable save(Employee employee);
	
}
