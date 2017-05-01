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
    
    <title>会员</title>
    
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
    			<th>会员ID</th>
    			<th>会员流水号</th>
    			<th>会员名</th>
    			<th>会员号码</th>
    			<th>会员折扣率</th>
    			<th>操作</th>
    		</tr>
    		<s:iterator value="integrates">
    			<tr>
    				<td><s:property value="integrateId"/></td>
    				<td><s:property value="integrateSerial"/></td>
    				<td><s:property value="customerName"/></td>
    				<td><s:property value="customerPhone"/></td>
    				<td><s:property value="points"/></td>
    				<td>
    					
    					<s:url id="preOpenDill" action="preOpenDill">
    						<s:param name="integrateId" value="integrateId"/>
    					</s:url>
    					<s:a href="%{preOpenDill}">开单</s:a>
    				</td>
    			</tr>
    		</s:iterator>
    	</table>
  </body>
</html>
