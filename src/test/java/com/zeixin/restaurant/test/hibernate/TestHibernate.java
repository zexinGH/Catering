package com.zeixin.restaurant.test.hibernate;

import java.util.Date;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.zeixin.restaurant.bean.Employee;
import com.zeixin.restaurant.service.EmpService;
import com.zeixin.restaurant.util.MD5Util;

public class TestHibernate {

	private EmpService empService;
	
	 /**
     * 这个before方法在所有的测试方法之前执行，并且只执行一次
     * 所有做Junit单元测试时一些初始化工作可以在这个方法里面进行
     * 比如在before方法里面初始化ApplicationContext和userService
     */
	@Before
	public void before(){
		ApplicationContext context = new 
				ClassPathXmlApplicationContext("spring.xml");
		empService = (EmpService) context.getBean("empService");
		
	}
	
	@Test
	public void testSaveMethod(){
		Employee employee = new Employee();
		employee.setEmpNo("10001");
		employee.setEmpPasswrod(MD5Util.calc("123"));
		employee.setEmpAddress("广州天河");
		employee.setEmpAge("26");
		employee.setEmpName("陈诚");
		employee.setEmpPhone("13967344708");
		employee.setEmpSex("男");
		employee.setDateCreated(new Date());
		employee.setDateModified(new Date());
		empService.save(employee);
	}
}
