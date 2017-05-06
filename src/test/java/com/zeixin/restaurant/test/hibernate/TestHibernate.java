package com.zeixin.restaurant.test.hibernate;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.zeixin.restaurant.bean.Authority;
import com.zeixin.restaurant.service.RoleService;
import com.zeixin.restaurant.service.EmpService;

public class TestHibernate {

	private EmpService empService;
	private RoleService roleService;
	
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
		roleService = (RoleService) context.getBean("roleService");
		
	}
	
	@Test
	public void testSaveMethod(){
		List<Authority> authorities = HibernateUtils.getSessionFactory()
				.openSession().createQuery(" select r.authorities from Role r "
						+ "where r.id = :id")
				.setParameter("id", 1).list();	
		for(Authority a:authorities){
			System.out.println(a.getAuthorityName());
		}
	}
}
