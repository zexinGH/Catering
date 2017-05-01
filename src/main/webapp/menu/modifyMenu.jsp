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
    
    <title>修改</title>
    
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
    	<s:form action="updateMenu" method="POST">
    		<s:label value="%{#request.menu.menuId}" label="菜单ID"/>
    		<s:hidden name="menuId" value="%{#request.menu.menuId}"/>
    		<s:textfield name="menuName" value="%{#request.menu.menuName}" label="菜单名字"/>
    		<s:textfield name="uri" value="%{#request.menu.uri}" label="菜单uri"/>
    		<s:submit value="修改"/>
    	</s:form>
  </body>
</html>
