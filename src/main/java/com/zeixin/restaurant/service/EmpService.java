package com.zeixin.restaurant.service;


import com.zeixin.restaurant.bean.Employee;

public interface EmpService {

	void test();
	
	public void addEmp(Employee employee);

	public Employee getEmployee(String empNO, String empPassword);
	
	public boolean getEmployeeByEmpNo(String empNo);
}
