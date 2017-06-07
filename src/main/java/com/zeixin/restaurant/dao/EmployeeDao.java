package com.zeixin.restaurant.dao;

import java.util.List;

import com.zeixin.restaurant.bean.Employee;

public interface EmployeeDao extends BaseDao<Employee>{
		
	public Employee getEmployee(String empNO, String empPassword);
	
	public Employee getEmployee2(String empNO, String empPassword);
	
	public Employee getEmployeeByEmpNo(String empNo);
	
	public List<Employee> getAllEmp();
}
