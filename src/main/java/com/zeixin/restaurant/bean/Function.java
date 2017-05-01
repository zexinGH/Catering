package com.zeixin.restaurant.bean;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="function_info")
public class Function extends BaseBean{

		
	private String funName;

	private String url;
	
	private Authority authority;
	
	
	@Column(name="FUN_NAME")
	public String getFunName() {
		return funName;
	}
	public void setFunName(String funName) {
		this.funName = funName;
	}
	
	@Column(name="FUN_URL")
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}

	@ManyToOne(fetch=FetchType.EAGER,cascade={CascadeType.PERSIST})
	@JoinColumn(name="AUTH_ID")	
	public Authority getAuthority() {
		return authority;
	}
	public void setAuthority(Authority authority) {
		this.authority = authority;
	}
	
	
}
