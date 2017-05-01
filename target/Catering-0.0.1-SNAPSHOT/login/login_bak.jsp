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
    
    <title>用户登录</title>
    
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
        <s:form action="checkUser" method="POST" >
        		<s:textfield name="userName" label="用户名"/>
        		<s:textfield name="password" label="密码"/>
        		<s:select list="roleList" name="roleId" label="角色" listKey="roleId" listValue="roleName"/>
        		<s:a href="addUser.action">注册用户</s:a>
        		<s:submit value="登陆"/>
  
        </s:form> 
   
  </body>
</html>
