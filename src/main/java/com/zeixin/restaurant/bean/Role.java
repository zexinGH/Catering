package com.zeixin.restaurant.bean;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="role_info")
public class Role extends BaseBean{
	
	private String roleName;
	private Integer roleLevel;
	private String roleIcon;
	private Set<Employee> employees = new HashSet<Employee>();
	private Set<Authority> authorities = new HashSet<Authority>();
	
	@Column(name="ROLE_NAME")
	public String getRoleName() {
		return roleName;
	}
	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}
		
	@OneToMany(mappedBy="empRole")
	public Set<Employee> getEmployees() {
		return employees;
	}
	public void setEmployees(Set<Employee> employees) {
		this.employees = employees;
	}
	
	@ManyToMany(fetch=FetchType.EAGER,cascade={CascadeType.PERSIST})
	@JoinTable(
		name="role_authority",
		joinColumns=@JoinColumn(name="ROLE_ID",referencedColumnName="id"),
		inverseJoinColumns=@JoinColumn(name="AUTHORITY_ID",referencedColumnName="id"))
	public Set<Authority> getAuthorities() {
		return authorities;
	}
	public void setAuthorities(Set<Authority> authorities) {
		this.authorities = authorities;
	}
	@Column(name="ROLE_LEVEL")
	public Integer getRoleLevel() {
		return roleLevel;
	}
	public void setRoleLevel(Integer roleLevel) {
		this.roleLevel = roleLevel;
	}
	@Column(name="ROLE_ICON")
	public String getRoleIcon() {
		return roleIcon;
	}
	public void setRoleIcon(String roleIcon) {
		this.roleIcon = roleIcon;
	}
	
	
}
