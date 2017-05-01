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
    
    <title>修改菜品</title>
    
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
    	<s:form action="updateDish" method="POST">
    		<s:label value="%{dish.dishId}" label="菜品ID"/>
    		<s:hidden name="dishId" value="%{dish.dishId}"/>
    		<s:textfield name="dishName" label="菜品名" value="%{dish.dishName}"/>
    		<s:textfield name="dishNum" label="菜品编号" value="%{dish.dishNum}"/>
    		<s:textfield name="dishStatus" label="状态0为启用1为停用" value="%{dish.dishStatus}"/>
    		<s:textfield name="price" label="价格" value="%{dish.price}"/>
    		<s:textfield name="vegetableName" label="当前菜品类别" value="%{dish.vegetable.vegetableName}"/>
    		<s:select list="vegetables" name="vegetableId" label="菜品类别" listKey="vegetableId" listValue="vegetableName"/>
    		<s:submit value="添加"/>
    	</s:form>
  </body>
</html>
