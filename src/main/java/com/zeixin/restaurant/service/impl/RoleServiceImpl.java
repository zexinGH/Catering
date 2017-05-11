package com.zeixin.restaurant.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zeixin.restaurant.bean.Authority;
import com.zeixin.restaurant.bean.Employee;
import com.zeixin.restaurant.bean.Role;
import com.zeixin.restaurant.dao.RoleDao;
import com.zeixin.restaurant.service.RoleService;

@Service("roleService")
public class RoleServiceImpl extends BaseServiceImpl<Role> implements RoleService {
	
	@Autowired
	private RoleDao roleDao;
	
	/*@Override
	public void addRole(Role role) {	
		roleDao.addRole(role);
	}*/

	@Override
	public List<Authority> getAuthorityByRoleId(Integer roleId) {
		return roleDao.getAuthorityByRoleId(roleId);
	}

	@Override
	public List<Role> getRoleList(Employee employee) {
		return roleDao.getRoleList(employee);
	}

	@Override
	public Role getRoleById(Integer roleId) {		
		return roleDao.getRoleById(roleId);
	}


}
