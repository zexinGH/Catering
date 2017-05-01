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
    
    <title>My JSP 'updateFun.jsp' starting page</title>
    
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
    	<s:form action="modifyIntegrate" method="POST">
    		<s:label value="%{integrateId}" label="会员ID"/>
    		<s:hidden name="integrateId" value="%{integrateId}"/>
    		<s:textfield name="integrateSerial" value="%{integrate.integrateSerial}" label="会员流水号"/>
    		<s:textfield name="customerName" value="%{integrate.customerName}" label="会员名"/>
    		<s:textfield name="customerPhone" value="%{integrate.customerPhone}" label="会员号码"/>
    		<s:textfield name="points" value="%{integrate.points}" label="会员折扣率"/>
    		<s:submit value="修改"/>
    	</s:form>
  </body>
</html>
