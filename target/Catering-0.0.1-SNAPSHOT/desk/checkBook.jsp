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
    
    <title>查找图书</title>
    
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
    <s:form action="searchBook" method="POST">
    		<s:textfield name="bookName" label="书名"/>
    		<s:radio list="#{'是':'是','否':'否'}" name="isBT" label="按图书类别查找"/>
    		<s:select list="btList" name="bookTypeId" label="图书类别" listKey="bookTypeid" listValue="typeName"/>
	    			
    		<s:submit value="查找"/>
    	</s:form>
  </body>
</html>
