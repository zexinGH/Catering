package com.zeixin.restaurant.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Date;
import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;

import com.zeixin.restaurant.bean.Authority;
import com.zeixin.restaurant.bean.Employee;
import com.zeixin.restaurant.service.EmpService;
import com.zeixin.restaurant.service.RoleService;
import com.zeixin.restaurant.util.MD5Util;

@SuppressWarnings("serial")
@ParentPackage("basePackage")
@Action(value="loginAction",
results={@Result(name="modifyPass",location="/setting/modifyPass.jsp")})
@Namespace("/")
public class LoginAction extends BaseAction {
	@Autowired
    private EmpService empService;
    @Autowired
    private RoleService roleService;
    private Employee employee;
    
    private Integer empId;
    private String newPassword;
    private String pictureFileName;
    private String pictureContentType; 
	private File picture;
	public String checkUser(){
    	Employee checkEmployee = (Employee) session.get("employee");
    	if(checkEmployee == null){
    		return LOGIN; 
    	}else{
    		employee = empService.getEmployee2(
	    			checkEmployee.getEmpNo(),checkEmployee.getEmpPassword());
	    	
	    	if(employee != null){
	    		setMessage("欢迎使用本系统");
	    		return SUCCESS;
	    	}else{
	    		return LOGIN;
	    	}
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
				session.put("employee", employee);
				session.put("authorities", authorities);
				setMessage("欢迎使用本系统");
				return SUCCESS;
			} catch (Exception e) {
				setMessage(e.getMessage());
				return ERROR;
			}			
		}
    }
    public String initModifyPass(){
    	setTitle("修改个人密码");
    	return "modifyPass";
    }
    public String modifyPass(){
    	Employee modifyEmployee = empService.find(Employee.class, empId);
    	if(!MD5Util.calc(employee.getEmpPassword()).
    			equalsIgnoreCase(modifyEmployee.getEmpPassword())){
    		setMessage("原密码填写错误！");
    		return "modifyPass";
    	}else{
    		modifyEmployee.setEmpPassword(MD5Util.calc(newPassword));
    		modifyEmployee.setDateModified(new Date());
    		if(empService.update(modifyEmployee)){
    			setMessage("修改密码成功！");
    			return SUCCESS;
    		}else{
    			setMessage("修改密码失败！");
    			return ERROR;
    		}
    	}
    }
    
    public String modifyPic() throws IOException{
    	employee = empService.find(Employee.class, empId);
    	/*System.out.println(employee.getEmpAddress());
    	System.out.println("File: " + picture);

		System.out.println("imageName: " + pictureFileName);
		System.out.println("imageContentType:"+pictureContentType);*/
		long fileSize = (picture.length()/1024)/1024;
		if(fileSize>10){
			setMessage("上传文件过大！");
			return "addDish";
		}
		File saved = new File(ServletActionContext.getServletContext()
				.getRealPath("upload"),pictureFileName);		
		
		InputStream ins = null;
		OutputStream ous = null;

		try {
			saved.getParentFile().mkdirs();

			ins = new FileInputStream(picture);
			ous = new FileOutputStream(saved);

			byte[] b = new byte[1024];
			int len = 0;

			while ((len = ins.read(b)) != -1) {
				ous.write(b, 0, len);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (ous != null)
				ous.close();
			if (ins != null)
				ins.close();
		}
		employee.setEmpPic("upload/"+pictureFileName);
		employee.setDateModified(new Date());
		empService.update(employee);
		session.put("employee", employee);
    	return SUCCESS;
    }
    
    public String logout(){
    	session.remove("employee");
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

	public Integer getEmpId() {
		return empId;
	}

	public void setEmpId(Integer empId) {
		this.empId = empId;
	}

	public String getNewPassword() {
		return newPassword;
	}

	public void setNewPassword(String newPassword) {
		this.newPassword = newPassword;
	}

	public File getPicture() {
		return picture;
	}

	public void setPicture(File picture) {
		this.picture = picture;
	}


	public String getPictureFileName() {
		return pictureFileName;
	}

	public void setPictureFileName(String pictureFileName) {
		this.pictureFileName = pictureFileName;
	}

	public String getPictureContentType() {
		return pictureContentType;
	}

	public void setPictureContentType(String pictureContentType) {
		this.pictureContentType = pictureContentType;
	}

    
    
}
