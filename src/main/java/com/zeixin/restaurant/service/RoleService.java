package com.zeixin.restaurant.service;

import java.util.List;

import com.zeixin.restaurant.bean.Authority;
import com.zeixin.restaurant.bean.Employee;
import com.zeixin.restaurant.bean.Role;


public interface RoleService extends BaseService<Role>{
	
	/*public void addRole(Role role);*/
	
	public List<Authority> getAuthorityByRoleId(Integer roleId) ;
	
	public List<Role> getRoleList(Employee employee);
	
	public Role getRoleById(Integer roleId);
}
