package com.zeixin.restaurant.service.impl;

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
	public void addEmp(Employee employee) {	
		employeeDao.addEmp(employee);
	}

	@Override
	public Employee getEmployee(String empNO, String empPassword) {
		
		return employeeDao.getEmployee(empNO, empPassword);
	}

	@Override
	public boolean getEmployeeByEmpNo(String empNo) {
		return employeeDao.getEmployeeByEmpNo(empNo);
	}

}
