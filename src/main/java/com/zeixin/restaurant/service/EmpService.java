package com.zeixin.restaurant.service;

import java.util.List;

import com.zeixin.restaurant.bean.Employee;

public interface EmpService extends BaseService<Employee>{

	void test();
	
	/*public void addEmp(Employee employee);*/

	public Employee getEmployee(String empNO, String empPassword);
	
	public Employee getEmployee2(String empNO, String empPassword);
	
	public Employee getEmployeeByEmpNo(String empNo);
	
	public List<Employee> getAllEmp();
}
