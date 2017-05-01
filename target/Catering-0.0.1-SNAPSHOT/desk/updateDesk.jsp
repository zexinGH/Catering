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
    
    <title>修改桌号</title>
    
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
    	<s:form action="updateDesk" method="POST">
    	
    		<s:hidden name="deskId" value="%{deskId}"/>
    		
    	     <table>
    	         <tr><s:label value="%{deskId}" label="桌号ID"/></tr>
    	         <tr>
    	         	 <td>桌号：</td>
    	          	<td> <input type="text" name="deskNum" value="<s:property value='desk.deskNum'/>"/></td>
    	         </tr>
    	         <tr>
    	         	<td>座号数：</td>
    	         	<td> <input type="text" name="deskSum" value="<s:property value="desk.deskSum"/>"/></td>
    	         </tr>
    	          <tr>
    	         	<td>当前状态：</td>
    	         	<td> <input type="text" name="deskStatusSS" value="<s:property value="desk.deskStatus"/>" disabled/></td>
    	         </tr>
    	         <tr>
    	         	<td>状态：</td>
    	         	<td>   
	    	         	<select name="deskStatus" id="checkUser_roleId">
			                 <option value="闲" selected> &nbsp 闲&nbsp</option>
			                  <option value="忙" >&nbsp 忙 &nbsp</option>
	              		 </select>
              		 </td>
    	         </tr>
    	     </table>
    	     <br/><br/>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    		<input type="submit" value="修改"/>
    	</s:form>
  </body>
</html>
