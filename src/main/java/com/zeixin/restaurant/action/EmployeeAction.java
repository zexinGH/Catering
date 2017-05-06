package com.zeixin.restaurant.action;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;

import com.zeixin.restaurant.bean.Authority;
import com.zeixin.restaurant.bean.Employee;
import com.zeixin.restaurant.bean.Role;
import com.zeixin.restaurant.service.EmpService;
import com.zeixin.restaurant.service.RoleService;
import com.zeixin.restaurant.util.MD5Util;

@SuppressWarnings("serial")
@ParentPackage("basePackage")
//使用convention-plugin插件提供的@Action注解将一个普通java类标注为一个可以处理用户请求的Action，Action的名字为employeeAction
@Action(value="employeeAction", 
results={@Result(name="addEmp",location="/login/register.jsp")})
@Namespace("/")//使用convention-plugin插件提供的@Namespace注解为这个Action指定一个命名空间
public class EmployeeAction extends BaseAction{  
    /**
     * 注入userService
     */
    @Autowired
    private EmpService empService;
    @Autowired
    private RoleService roleService;
    private Employee employee;
    private String checkPassword;
    private List<Authority> authorities = new ArrayList<Authority>();
    private List<Role> roleList = new ArrayList<Role>();
    
    public String initLogin(){
    	setTitle("员工登录");
    	return LOGIN;
    }
    
    public String login(){
    	if(empService.getEmployeeByEmpNo(employee.getEmpNo())){
    		setMessage("该员工号不存在");
    		return LOGIN;
    	}
    	employee = empService.getEmployee(
    			employee.getEmpNo().trim(),employee.getEmpPassword().trim());
    	if(employee == null){
    		setMessage("用户名或密码错误");
			return LOGIN;
    	}else{
			try {
				authorities = roleService.getAuthorityByRoleId(employee.getEmpRole().getId());
				session.put("employee", employee);
				return SUCCESS;
			} catch (Exception e) {
				setMessage(e.getMessage());
				return ERROR;
			}			
		}
    }
    
    public String logout(){
    	session.put("employee", null);		
		return LOGIN;
    }
    
    public String initAddEmp(){
    	setTitle("注册新员工");
    	roleList = roleService.getRoleList();
    	return "addEmp";
    }
       
    public String addEmp(){
    	if(!empService.getEmployeeByEmpNo(employee.getEmpNo())){
    		setMessage("该员工号已被注册");
    		return "addEmp";
    	}
    	try {
			employee.setDateCreated(new Date());
			employee.setDateModified(new Date());
			empService.addEmp(employee);
			setMessage("注册员工成功！");
			return SUCCESS;
		} catch (Exception e) {
			setMessage("注册失败："+e.getMessage());
		}
    	return ERROR;
    }
    
    public String mainWorkSpace(){
    	return "mainWorkSpace";
    }
    
    public void addUser(){
    	Employee employee = new Employee();
    	employee.setEmpNo("10005");
		employee.setEmpPassword(MD5Util.calc("321"));
		employee.setEmpAddress("广州天河");
		employee.setEmpAge("24");
		employee.setEmpName("孙兴");
		employee.setEmpPhone("13389549843");
		employee.setEmpSex("男");
		employee.setDateCreated(new Date());
		employee.setDateModified(new Date());
		empService.addEmp(employee);
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

	public List<Authority> getAuthorities() {
		return authorities;
	}

	public void setAuthorities(List<Authority> authorities) {
		this.authorities = authorities;
	}
	
	
	public String getCheckPassword() {
		return checkPassword;
	}

	public void setCheckPassword(String checkPassword) {
		this.checkPassword = checkPassword;
	}

	public List<Role> getRoleList() {
		return roleList;
	}

	public void setRoleList(List<Role> roleList) {
		this.roleList = roleList;
	}
	 
}
