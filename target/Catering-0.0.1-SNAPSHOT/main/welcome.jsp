<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>欢迎你！</title>
    
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
    	欢迎你 :  <s:property value="userName"/><br></>当前角色 <s:property value="roleName"/>
    	
    		
    		<table>
    		<s:iterator value="%{#session.menus}">
    			<br>
    				<s:url id="menudd" action="menudd">
    						<s:param name="menuId"><s:property value="menuId"/></s:param>
   					</s:url>
   					<a href="<s:property value="uri"/>" target="main"><s:property value="menuName"/></a>
   				<div id="${menuName}">
	    	      
		    	     <s:iterator value="%{#menus.funs}">
				    	 <li>  <label><s:property value="funName"/></label></li>
		    	     </s:iterator>
	    	       
	    	     </div>
    		</s:iterator>
    		
			</table>
  </body>
</html>
