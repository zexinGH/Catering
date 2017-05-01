<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'register.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
		.errorMessage
		{
			color:red;
		}
		
	</style>
  </head>
  
  <body>
    	<s:form action="saveUser" method="POST" >
        		<s:textfield name="userName" label="用户名"/>
        		<s:password name="password" label="密码"/>
        		<s:password name="checkPassword" label="确认密码"/>
        		<s:radio list="#{'男':'男','女':'女'}" name="sex" label="性别"/>
        		<s:textfield name="age" label="年龄"/>
        		<s:textfield name="tel" label="联系方式"/>
        		<s:select list="roleList" name="roleId" label="角色" listKey="roleId" listValue="roleName"/>
        		<s:a href="login.action">返回登录界面</s:a>>
        		<s:submit value="提交"/>
        		
        		
        </s:form> 
  </body>
</html>
