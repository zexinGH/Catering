package com.zeixin.restaurant.action;

import java.util.Date;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.springframework.beans.factory.annotation.Autowired;

import com.zeixin.restaurant.bean.Role;
import com.zeixin.restaurant.service.RoleService;

@ParentPackage("basePackage")
@Action(value="roleAction")
@Namespace("/")
public class RoleAction {
	@Autowired
	private RoleService roleService;
	
	public void addRole(){
		Role role = new Role();
		role.setRoleName("服务生");
		role.setDateCreated(new Date());
		role.setDateModified(new Date());
		roleService.create(role);;
	}
	
}
