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
        <s:form action="employeeAction!addEmp" method="POST" >
        		<s:textfield name="employee.empNo" label="员工号"/>
        		<s:textfield name="employee.empName" label="姓名"/>
        		<s:password name="employee.empPassword" label="密码"/>
        		<s:password name="checkPassword" label="确认密码"/>
        		<s:radio list="#{'男':'男','女':'女'}" name="employee.empSex" label="性别"/>
        		<s:select list="roleList" name="role" label="角色" listKey="id" listValue="roleName"/>     		
        		<s:textfield name="employee.empage" label="年龄"/>
        		<s:textfield name="employee.empPhone" label="联系方式"/>
        		<s:textfield name="employee.empAddress" label="住址"/>
        		<s:property value="message"/><s:submit value="提交"/>
        		
        		
        </s:form>
  </body>
</html>
