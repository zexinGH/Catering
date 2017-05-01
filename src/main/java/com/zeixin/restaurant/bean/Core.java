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
@Table(name="core_info")
public class Core extends BaseBean{
	
	private String coreName;
	private Set<Employee> employees = new HashSet<Employee>();
	private Set<Authority> authorities = new HashSet<Authority>();
	
	@Column(name="CORE_NAME")
	public String getCoreName() {
		return coreName;
	}
	public void setCoreName(String coreName) {
		this.coreName = coreName;
	}
	
	@OneToMany(mappedBy="empCore")
	public Set<Employee> getEmployees() {
		return employees;
	}
	public void setEmployees(Set<Employee> employees) {
		this.employees = employees;
	}
	
	@ManyToMany(fetch=FetchType.EAGER,cascade={CascadeType.PERSIST})
	@JoinTable(
		name="core_authority",
		joinColumns=@JoinColumn(name="CORE_ID",referencedColumnName="id"),
		inverseJoinColumns=@JoinColumn(name="AUTHORITY_ID",referencedColumnName="id"))
	public Set<Authority> getAuthorities() {
		return authorities;
	}
	public void setAuthorities(Set<Authority> authorities) {
		this.authorities = authorities;
	}
	
	
}
