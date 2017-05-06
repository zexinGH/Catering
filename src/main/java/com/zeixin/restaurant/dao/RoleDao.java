package com.zeixin.restaurant.dao;

import java.util.List;

import com.zeixin.restaurant.bean.Authority;
import com.zeixin.restaurant.bean.Role;

public interface RoleDao{
	
	public void addRole(Role role);
	
	public List<Authority> getAuthorityByRoleId(Integer roleId);
	
	public List<Role> getRoleList();
	
}
