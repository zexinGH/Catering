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
    
    <title>授权</title>
    
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
  	<s:form action="saveAuthRole" method="POST">
  		<s:hidden name="roleId" value="%{role.roleId}"/>
    	<s:iterator value="#request.allMenuList">
    		<s:if test="menuId in #request.currentMenuIdSet">
    			<s:checkbox name="menuIdList" label="%{menuName}" fieldValue="%{menuId}" value="true"/>
    		</s:if>
    		<s:else>
    			<s:checkbox name="menuIdList" label="%{menuName}" fieldValue="%{menuId}" value="false"/>
    		</s:else>
    	</s:iterator>
    	<s:submit value="授权"/>
    </s:form>
  </body>
</html>
