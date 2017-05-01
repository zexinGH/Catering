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
    
    <title>所有功能</title>
    
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
    			<th>功能ID</th>
    			<th>功能名</th>
    			<th>URI</th>
    			<th>操作</th>
    		</tr>
    		<s:iterator value="funList">
    			<tr>
    				<td><s:property value="funId"/></td>
    				<td><s:property value="funName"/></td>
    				<td><s:property value="uri"/></td>
    				<td>
    					<s:url id="deleteFun" action="deleteFun">
    						<s:param name="funId" value="funId"/>
    					</s:url>
    					<s:a href="%{deleteFun}" onclick="return confirm('确定要删除吗？')" >删除</s:a>
    					<s:url id="modifyFun" action="modifyFun">
    						<s:param name="funId" value="funId"/>
    					</s:url>
    					<s:a href="%{modifyFun}">修改</s:a>
    				</td>
    			</tr>
    		</s:iterator>
    	</table>
  </body>
</html>
