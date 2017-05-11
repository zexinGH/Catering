package com.zeixin.restaurant.dao;

import java.util.List;

import com.zeixin.restaurant.bean.Employee;

public interface EmployeeDao extends BaseDao<Employee>{
		
	public Employee getEmployee(Object empNO, Object empPassword);
	
	public Employee getEmployeeByEmpNo(Object empNo);
	
	public List<Employee> getAllEmp();
}
