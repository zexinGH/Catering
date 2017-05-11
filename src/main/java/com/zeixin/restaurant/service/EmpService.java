package com.zeixin.restaurant.service;

import java.util.List;

import com.zeixin.restaurant.bean.Employee;

public interface EmpService extends BaseService<Employee>{

	void test();
	
	/*public void addEmp(Employee employee);*/

	public Employee getEmployee(Object empNO, Object empPassword);
	
	public Employee getEmployeeByEmpNo(Object empNo);
	
	public List<Employee> getAllEmp();
}
