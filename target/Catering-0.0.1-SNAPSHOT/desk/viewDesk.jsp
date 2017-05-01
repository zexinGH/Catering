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
    
    <title>查看台号</title>
    
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
    			
    			<th>台编号</th>
    			<th>座位数</th>
    			<th>台号状态</th>
    			<th>操作</th>
    		</tr>
    		<tr>
    		<s:iterator value="desks">
    			<tr>
    				<td><s:property value="deskNum"/></td>
    				<td><s:property value="deskSum"/></td>
    				<td><s:property value="deskStatus"/></td>
    				<td>
    					<s:url id="delete" action="deleteDesk">
    						<s:param name="deskId" value="deskId"/>
    					</s:url>
    					<s:a href="%{delete}" onclick="return confirm('确定要删除吗？')" > 删除 </s:a>
    					<s:url id="update" action="preUpdateDesk">
    						<s:param name="deskId" value="deskId"/>
    					</s:url>
    					<s:a href="%{update}">修改</s:a>
    				</td>
    			</tr>
    		</s:iterator>
    		
    	
    	</table>
  </body>
</html>
