package com.zeixin.restaurant.struts.interceptor;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;
import com.zeixin.restaurant.bean.Authority;
import com.zeixin.restaurant.bean.Employee;
import com.zeixin.restaurant.bean.Function;

public class AuthorityInterceptor extends MethodFilterInterceptor{
	@Override
	protected String doIntercept(ActionInvocation invocation) throws Exception {
		ActionContext context = invocation.getInvocationContext();
		HttpServletRequest request = ServletActionContext.getRequest();
		Map<String, Object> session = context.getSession();
		Employee employee = (Employee) session.get("employee");
		String strBackUrl = "http://" + request.getServerName()         
				+ ":"+ request.getServerPort()+ request.getContextPath()      		                     
				+ request.getServletPath()      				                 
				+ "?" + (request.getQueryString());
		List<Authority> authorities = (List<Authority>) session.get("authorities");
		List<Function> functions = null;
		List<List<Function>> listFunctions = null;
		Function function = null;
		for(Authority auth:authorities){
			listFunctions.add(auth.getFunctions());
		}
		for(int i=0;i<listFunctions.size();i++){
			functions = listFunctions.get(i);
			for(int j=0;j<functions.size();j++){
				function = functions.get(j);
				System.out.println(strBackUrl);
				System.out.println(function.getUrl());
				if(strBackUrl==function.getUrl()
						||strBackUrl.contains(function.getUrl())){
					return invocation.invoke();
				}
			}
		}
		return "failure";
	}
}
