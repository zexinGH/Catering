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
    
    <title>查询结果</title>
    
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
    		    
    			<th>开单流水号</th>
    			<th>就餐桌号</th>
    		    <th>就餐时间</th>
    			<th>就餐人数</th>
    			<th>所有点菜</th>
    			<th>消费金额</th>
    			<th>实收金额</th>
    			
    		</tr>
    		
    		<s:iterator value="dills">
    			<tr>
    				<td><s:property value="dillSerial"/></td>
    				<td><s:property value="desk.deskNum"/></td>
    				<td><s:property value="dillDate"/></td>
    				<td><s:property value="dillSum"/></td>
    				<td><s:property value="dillDishes"/></td>
    				<td><s:property value="dillCash"/></td>
    				<td><s:property value="realCash"/></td>
    			</tr>
    		</s:iterator>
    		<tr bgcolor="#aaffee"><td>桌台使用次数：</td><td><s:property value="deskNumber"/></td><td>就餐人数：</td><td><s:property value="userNumber"/></td><td>实收营业金额：</td><td><s:property value="allRealCash"/></td></tr>
    	</table>
    	
  </body>
</html>
