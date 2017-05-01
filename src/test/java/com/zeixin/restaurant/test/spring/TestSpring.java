package com.zeixin.restaurant.test.spring;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.zeixin.restaurant.service.EmpService;


public class TestSpring {
	
	@Test
	public void test(){
		//通过spring.xml配置文件创建Spring的应用上下文环境
		ApplicationContext context = 
				new ClassPathXmlApplicationContext("classpath:spring.xml");		
		//从Spring的IOC容器中获取bean对象
		EmpService empService = (EmpService) context.getBean("empService");
		
		empService.test();
	}
	
}
