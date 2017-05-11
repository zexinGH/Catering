package com.zeixin.restaurant.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.zeixin.restaurant.bean.Authority;
import com.zeixin.restaurant.bean.Employee;
import com.zeixin.restaurant.bean.Role;
import com.zeixin.restaurant.dao.RoleDao;


@Transactional
@Repository("roleDao")
public class RoleDaoImpl extends BaseDaoImpl<Role> implements RoleDao{
	
	@Autowired
	private SessionFactory sessionFactory;
	
	/*@Override
	public void addRole(Role role) {
		sessionFactory.getCurrentSession().save(role);

	}*/
	@Override
	public List<Authority> getAuthorityByRoleId(Integer roleId) {	
		@SuppressWarnings({ "deprecation", "unchecked" })
		List<Authority> authorities = sessionFactory.getCurrentSession()
				.createQuery(" select r.authorities from Role r where "
				+ " r.id = :id ").setParameter("id", roleId).list();
		return authorities;
	}
	@Override
	public List<Role> getRoleList(Employee employee) {
		@SuppressWarnings({ "unchecked", "deprecation" })
		List<Role> roles = sessionFactory.getCurrentSession()
				.createQuery("select r from Role r where r.roleLevel < :roleLevel ")
				.setParameter("roleLevel", employee.getEmpRole().getRoleLevel()).list();
		return roles;
	}
	@Override
	public Role getRoleById(Integer roleId) {
		@SuppressWarnings({ "deprecation", "unchecked" })
		List<Role> roles = sessionFactory.getCurrentSession()
				.createQuery("select r from Role r where r.id = :id ")
				.setParameter("id", roleId).list();
		if (roles.size()>0){
			return roles.get(0);
		}
		return null;
	}

}
