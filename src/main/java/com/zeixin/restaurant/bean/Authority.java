package com.zeixin.restaurant.bean;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="authority_info")
public class Authority extends BaseBean{
	
	
	private String authorityName;	
	private List<Function> functions =new ArrayList<Function>();
	
	
	@OneToMany(fetch=FetchType.EAGER,mappedBy="authority",cascade=CascadeType.ALL)
	public List<Function> getFunctions() {
		return functions;
	}
	public void setFunctions(List<Function> functions) {
		this.functions = functions;
	}
	
	@Column(name="AUTH_NAME")
	public String getAuthorityName() {
		return authorityName;
	}
	public void setAuthorityName(String authorityName) {
		this.authorityName = authorityName;
	}
	
	 
}
