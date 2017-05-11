package com.zeixin.restaurant.action;

import java.util.List;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.springframework.beans.factory.annotation.Autowired;

import com.zeixin.restaurant.bean.Authority;
import com.zeixin.restaurant.bean.Employee;
import com.zeixin.restaurant.service.EmpService;
import com.zeixin.restaurant.service.RoleService;

@SuppressWarnings("serial")
@ParentPackage("basePackage")
//使用convention-plugin插件提供的@Action注解将一个普通java类标注为一个可以处理用户请求的Action，Action的名字为employeeAction
@Action(value="loginAction")
@Namespace("/")
public class LoginAction extends BaseAction {
	@Autowired
    private EmpService empService;
    @Autowired
    private RoleService roleService;
    private Employee employee;
	
	
	public String checkUser(){
    	Employee checkEmployee = (Employee) session.get("loginEmployee");
    	employee = empService.getEmployee(
    			checkEmployee.getEmpNo(),checkEmployee.getEmpPassword());
    	if(employee != null){
    		return SUCCESS;
    	}else{
    		return this.initLogin();
    	}  	
    }
    
    public String initLogin(){
    	setTitle("员工登录");
    	return LOGIN;
    }
    
    public String login(){
    	if(empService.getEmployeeByEmpNo(employee.getEmpNo()) == null){
    		request.setAttribute("noMessage", "该员工号不存在");
    		return LOGIN;
    	}
    	employee = empService.getEmployee(
    			employee.getEmpNo(),employee.getEmpPassword());
    	if(employee == null){
    		request.setAttribute("passMessage", "密码错误");
			return LOGIN;
    	}else{
			try {
				List<Authority> authorities = 
					roleService.getAuthorityByRoleId(employee.getEmpRole().getId());
				session.put("loginEmployee", employee);
				session.put("authorities", authorities);
				setMessage("欢迎使用本系统");
				return SUCCESS;
			} catch (Exception e) {
				setMessage(e.getMessage());
				return ERROR;
			}			
		}
    }
    
    public String logout(){
    	session.remove("loginEmployee");
/*    	session.remove("empNo");
    	session.remove("empPassword");*/
    	session.remove("authorities");
		return LOGIN;
    }

	public EmpService getEmpService() {
		return empService;
	}

	public void setEmpService(EmpService empService) {
		this.empService = empService;
	}

	public RoleService getRoleService() {
		return roleService;
	}

	public void setRoleService(RoleService roleService) {
		this.roleService = roleService;
	}

	public Employee getEmployee() {
		return employee;
	}

	public void setEmployee(Employee employee) {
		this.employee = employee;
	}
    
    
}
