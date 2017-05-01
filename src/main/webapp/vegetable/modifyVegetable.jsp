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
    
    <title>修改菜品类别</title>
    
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
   		 <s:form action="updateVegetable" method="POST">
    		<s:label value="%{vegetable.vegetableId}" label="菜品类别ID"/>
    		<s:hidden name="vegetableId" value="%{vegetable.vegetableId}"/>
    		<s:textfield name="vegetableName" value="%{vegetable.vegetableName}" label="菜品类别名"/>
    		<s:submit value="修改"/>
    	</s:form>
  </body>
</html>
