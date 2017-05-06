package com.zeixin.restaurant.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.zeixin.restaurant.bean.Employee;
import com.zeixin.restaurant.dao.EmployeeDao;
import com.zeixin.restaurant.util.MD5Util;

@Transactional
@Repository("employeeDao")
public class EmployeeDaoImpl implements EmployeeDao {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void addEmp(Employee employee) {
		sessionFactory.getCurrentSession().save(employee);
	}

	@SuppressWarnings("deprecation")
	@Override
	public Employee getEmployee(String empNo, String empPassword) {
		@SuppressWarnings("unchecked")	
		List<Employee> employees = sessionFactory
				.getCurrentSession()
				.createQuery(
						" select e from Employee e where e.empNo = :empNo "
								+ " and e.empPassword = :empPassword ")
				.setParameter("empNo", empNo)
				.setParameter("empPassword", MD5Util.calc(empPassword)).list();
		if (employees.size() > 0) {
			return employees.get(0);
		}
		return null;
	}

	@Override
	public boolean getEmployeeByEmpNo(String empNo) {
		@SuppressWarnings({ "unchecked", "deprecation" })	
		List<Employee> employees = sessionFactory
				.getCurrentSession().createQuery(
				" select e from Employee e where e.empNo = :empNo ")
				.setParameter("empNo", empNo).list();
		if (employees.size() > 0) {
			return false;
		}
		return true;
	}

	@Override
	public List<Employee> getAllEmp() {
		@SuppressWarnings({ "deprecation", "unchecked" })
		List<Employee> employees =sessionFactory.getCurrentSession()
				.createQuery(" from Employee ").list();
		return employees;
	}

}
