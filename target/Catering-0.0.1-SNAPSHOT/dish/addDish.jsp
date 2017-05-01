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
    
    <title>添加菜品</title>
    
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
    	<s:form action="addDish" method="POST">
    	   <s:textfield name="dishNum" label="菜品编号"/>
    		<s:textfield name="dishName" label="菜品名"/>
    		<s:textfield name="price" label="价格"/>
    		<s:select list="vegetables" name="vegetableId" label="菜品类别" listKey="vegetableId" listValue="vegetableName"/>
    		<s:submit value="添加"/>
    	</s:form>
  </body>
</html>
