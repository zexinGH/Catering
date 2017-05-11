package com.zeixin.restaurant.action;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;

import com.zeixin.restaurant.bean.Employee;
import com.zeixin.restaurant.bean.Role;
import com.zeixin.restaurant.service.EmpService;
import com.zeixin.restaurant.service.RoleService;
import com.zeixin.restaurant.util.MD5Util;

@SuppressWarnings("serial")
@ParentPackage("basePackage")
//使用convention-plugin插件提供的@Action注解将一个普通java类标注为一个可以处理用户请求的Action，Action的名字为employeeAction
@Action(value="employeeAction", 
results={@Result(name="addEmp",location="/employee/addEmp.jsp"),
		 @Result(name="viewEmp",location="/employee/viewEmp.jsp"),
		 @Result(name="modifyEmp",location="/employee/modifyEmp.jsp")})
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
    private List<Role> roleList = new ArrayList<Role>();
    private List<Employee> employeeList = new ArrayList<Employee>();
    private Integer roleId;
    private Integer empId;
    
    
    public String initAddEmp(){
    	setTitle("注册新员工");
    	Employee logiEemployee = (Employee) session.get("loginEmployee");
    	roleList = roleService.getRoleList(logiEemployee);
    	return "addEmp";
    }
       
    public String addEmp(){
    	Employee logiEemployee = (Employee) session.get("loginEmployee");
    	roleList = roleService.getRoleList(logiEemployee);
    	if(empService.getEmployeeByEmpNo(employee.getEmpNo()) != null){
    		setMessage("该员工号已被注册");
    		return "addEmp";
    	}
		employee.setDateCreated(new Date());
		employee.setDateModified(new Date());
		employee.setEmpRole(roleService.getRoleById(roleId));
		employee.setEmpPassword(MD5Util.calc(employee.getEmpPassword()));
		if(empService.save(employee)){
			setMessage("注册员工成功！");
			return SUCCESS;
		}else{
			setMessage("注册失败!");
			return ERROR;
		}
    }
    
    public String initModifyEmp(){
    	setTitle("修改员工信息");
    	Employee logiEemployee = (Employee) session.get("loginEmployee");
    	employee = empService.find(Employee.class, empId);  	
    	roleList = roleService.getRoleList(logiEemployee);
    	session.put("empId", empId);
    	return "modifyEmp";
    }
    
    public String modifyEmp(){
    	setTitle("修改员工信息");
    	Employee logiEemployee = (Employee) session.get("loginEmployee");
    	roleList = roleService.getRoleList(logiEemployee);
    	
    	Employee modifyEmployee = empService.find(Employee.class, 
    			(Integer) session.get("empId"));
    	modifyEmployee.setEmpName(employee.getEmpName());
    	modifyEmployee.setEmpAddress(employee.getEmpAddress());
    	modifyEmployee.setEmpPhone(employee.getEmpPhone());
    	modifyEmployee.setEmpSex(employee.getEmpSex());
    	modifyEmployee.setEmpAge(employee.getEmpAge());
    	modifyEmployee.setDateModified(new Date());
    	modifyEmployee.setEmpRole(roleService.getRoleById(roleId));
    	employee = modifyEmployee;
		if(empService.update(modifyEmployee)){
			setMessage("员工信息修改成功！");
		}else{
			setMessage("员工信息修改失败");
		}
		return "modifyEmp";
    }
    
    public String deleteEmp(){
    	employee = empService.find(Employee.class, empId);
    	if(empService.delete(employee)){
    		return this.viewEmp();
    	}else{
    		setMessage("删除员工时出现错误！");
    		return "error";
    	}
    }
    
    public String viewEmp(){
    	employeeList = empService.getAllEmp();
    	return "viewEmp";
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
	
	public Integer getRoleId() {
		return roleId;
	}

	public void setRoleId(Integer roleId) {
		this.roleId = roleId;
	}
	
	public Integer getEmpId() {
		return empId;
	}

	public void setEmpId(Integer empId) {
		this.empId = empId;
	}


	public List<Employee> getEmployeeList() {
		return employeeList;
	}

	public void setEmployeeList(List<Employee> employeeList) {
		this.employeeList = employeeList;
	}
	
}
