package com.zeixin.restaurant.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zeixin.restaurant.bean.Employee;
import com.zeixin.restaurant.dao.EmployeeDao;
import com.zeixin.restaurant.service.EmpService;

@Service("empService")
public class EmpServiceImpl extends BaseServiceImpl<Employee> implements EmpService {
	
	@Autowired
	private EmployeeDao employeeDao;
	
	@Override
	public void test() {
		System.out.println("hello");
	}

/*	@Override
	public void addEmp(Employee employee) {	
		employeeDao.addEmp(employee);
	}*/

	@Override
	public Employee getEmployee(String empNo, String empPassword) {
		
		return employeeDao.getEmployee(empNo, empPassword);
	}
	@Override
	public Employee getEmployee2(String empNo, String empPassword) {
		
		return employeeDao.getEmployee2(empNo, empPassword);
	}

	@Override
	public Employee getEmployeeByEmpNo(String empNo) {
		return employeeDao.getEmployeeByEmpNo(empNo);
	}

	@Override
	public List<Employee> getAllEmp() {
		return employeeDao.getAllEmp();
	}

}
