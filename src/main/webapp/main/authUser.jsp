<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>修改用户信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
      
           	<s:form action="modifyUser" method="POST">
    		<s:label value="%{user.userId}" label="用户Id"/>
    		<s:hidden name="userId" value="%{user.userId}"/>
    		<s:textfield name="userName" label="用户名" value="%{user.userName}"/>
    		<s:textfield name="password" label="用户密码" value="%{user.password}"/>
    		<s:textfield name="sex" label="用户性别" value="%{user.sex}"/>
    		<s:textfield name="price" label="用户年龄" value="%{user.age}"/>
    		<s:textfield name="workdate" label="注册日期" value="%{user.workdate}"/>
    		<s:textfield name="tel" label="联系电话" value="%{user.tel}"/>
    		<s:textfield name="role.roleName" label="当前角色" value="%{user.role.roleName}"/>
    		<s:select list="roleList" name="roleId" label="角色" listKey="roleId" listValue="roleName"/>
    		<s:submit value="添加"/>
    	</s:form>
        
  
  </body>
</html>
