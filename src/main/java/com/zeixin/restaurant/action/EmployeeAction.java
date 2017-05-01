package com.zeixin.restaurant.action;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.springframework.beans.factory.annotation.Autowired;

import com.zeixin.restaurant.service.EmpService;

@ParentPackage("basePackage")
@Action(value="employeeAction")//使用convention-plugin插件提供的@Action注解将一个普通java类标注为一个可以处理用户请求的Action，Action的名字为employeeAction
@Namespace("/")//使用convention-plugin插件提供的@Namespace注解为这个Action指定一个命名空间
public class EmployeeAction {
    
    /**
     * 注入userService
     */
    @Autowired
    private EmpService empService;

    /**
     * http://localhost:8080/Catering/employeeAction!test.action
     * MethodName: test
     * Description: 
     * @author SONY
     */
    public void test(){
        System.out.println("进入TestAction");
        empService.test();
    }
}
