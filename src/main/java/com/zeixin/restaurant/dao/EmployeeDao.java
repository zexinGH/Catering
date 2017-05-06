package com.zeixin.restaurant.dao;


import java.util.List;

import com.zeixin.restaurant.bean.Employee;

public interface EmployeeDao {
	
	public void addEmp(Employee employee);
	
	public Employee getEmployee(String empNO, String empPassword);
	
	public boolean getEmployeeByEmpNo(String empNo);
	
	public List<Employee> getAllEmp();
	
}
