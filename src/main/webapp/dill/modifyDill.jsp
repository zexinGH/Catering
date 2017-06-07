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
    	<s:form action="modifyDill" method="POST">
    		<label>单号ID: <s:property value="%{dillId}" /> </label><BR/>
    		<s:hidden name="dillId" value="%{dillId}"/>
    		<label>当前桌号：<s:property value="%{desk.deskNum}"/></label>
    	<table border=1>
    		<tr>
    			<th>选号</th>
    			<th>台编号</th>
    			<th>总座位</th>
    			
    		</tr>
    		
    		<s:iterator value="desks" >
    			<tr>
    				<td><input type="radio" id="deskId" name="deskId" value="<s:property value="deskId"/>"/></td>
    				<td><label for="deskId"><s:property value="deskNum"/></label></td>
    				<td>&nbsp;<s:property value="deskSum"/></td>
    				
    			</tr>
    		</s:iterator>
    
    	</table>
    		<s:submit value="修改"/>
    	</s:form>
  </body>
</html>
