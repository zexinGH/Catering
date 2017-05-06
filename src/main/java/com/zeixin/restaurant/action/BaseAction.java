package com.zeixin.restaurant.action;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public abstract class BaseAction extends ActionSupport 
	implements SessionAware,ServletRequestAware{
	
/*	public static final String REGISTER = "register";
	public static final String ERROR = "error";
	public static final String LOGOUT = "logout";*/
	
	protected String title;
	protected String message;
	
	
	protected HttpServletRequest request;
	protected  Map<String, Object> session;

	
	public void setTitle(String title) {
		this.title = title;
	}
	public String getTitle() {
		return title;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
	
	public void setSession(Map<String, Object> session) {
		this.session = session;		
	}

	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
		
	}

}
