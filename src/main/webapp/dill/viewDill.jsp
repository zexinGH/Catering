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
    
    <title>所有开台单号</title>
    
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
    			<th>就餐台号</th>
    			<th>就餐人数</th>
    			<th>点菜单</th>
    			<th width="160">操作</th>
    		</tr>
    		
    		<s:iterator value="dills">
    			<tr>
    			   
    				<td><s:property value="dillSerial"/></td>
    				<td><s:property value="desk.deskNum"/></td>
    				<td><s:property value="dillSum"/></td>
    				<td><s:property value="dillDishes"/></td>
    				<td width="160">
    				    <s:url id="chooseDish" action="chooseDish">
    						<s:param name="dillId"><s:property value="dillId"/></s:param>
    					</s:url>
    					<s:url id="deleteDill" action="deleteDill">
    						<s:param name="dillId"><s:property value="dillId"/></s:param>
    					</s:url>
    					<s:url id="preModifyDill" action="preModifyDill">
    						<s:param name="dillId"><s:property value="dillId"/></s:param>
    					</s:url>
    					<s:url id="account" action="account">
    						<s:param name="dillId" value="dillId"/>
    					</s:url>
    					<s:a href="%{chooseDish}">加菜</s:a>
    					<s:a href="%{deleteDill}" onclick="return confirm('确定要撤销？')">撤销</s:a>
    					<s:a href="%{preModifyDill}">换台</s:a>
    					<s:a href="%{account}">结账</s:a>
    				</td>
    			</tr>
    		</s:iterator>
    	</table>
    	
  </body>
</html>
