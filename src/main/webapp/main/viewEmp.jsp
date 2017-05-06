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
    
    <title>所有用户</title>
    
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
    	<table border=1>
    		<tr>
    		    
    			<th>员工号</th>
    			<th>员工姓名</th>
    			<th>员工密码</th>
    			<th>员工性别</th>
    			<th>员工年龄</th>
    			<th>联系电话</th>
    			<th>开户日期</th>
    			<th>角色</th>
    		
    			<th width="160">操作</th>
    			
    		</tr>
    		
    		<s:iterator value="users">
    			<tr>
    			   
    				<td><s:property value="userId"/></td>
    				<td><s:property value="userName"/></td>
    				<td><s:property value="password"/></td>
    				<td><s:property value="sex"/></td>
    				<td><s:property value="age"/></td>
    				<td><s:property value="tel"/></td>
    				<td><s:property value="workdate"/></td>
    				<td><s:property value="role.roleName"/></td>
    			
    				
    				
    				<td width="160">
    					<s:url id="deleteUser" action="deleteUser">
    						<s:param name="userId"><s:property value="userId"/></s:param>
    					</s:url>
    					<s:url id="preModifyUser" action="preModifyUser">
    						<s:param name="userId"><s:property value="userId"/></s:param>
    					</s:url>
    					<s:a href="%{deleteUser}" onclick="return confirm('确定要撤销吗？')">删除用户</s:a>
    					<s:a href="%{preModifyUser}">修改用户信息</s:a>
    				</td>
    			</tr>
    		</s:iterator>
    	</table>
    	
  </body>
</html>
