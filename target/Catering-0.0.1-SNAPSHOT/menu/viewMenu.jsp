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
    
    <title>所有菜单</title>
    
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
    			<th>菜单ID</th>
    			<th>菜单名字</th>
    			<th>URI</th>
    			<th>父ID</th>
    			<th>操作</th>
    		</tr>
    		<s:iterator value="%{#request.page.list}">
    			<tr>
    				<td><s:property value="menuId"/></td>
    				<td><s:property value="menuName"/></td>
    				<td><s:property value="uri"/></td>
    				<td><s:property value="fatherId"/></td>
    				<td>
    					<s:url id="deleteMenu" action="deleteMenu">
    						<s:param name="menuId"><s:property value="menuId"/></s:param>
    					</s:url>
    					<s:url id="modifyMenu" action="modifyMenu">
    						<s:param name="menuId"><s:property value="menuId"/></s:param>
    					</s:url>
    					<s:url id="authMenu" action="authMenu">
    						<s:param name="menuId" value="menuId"/>
    					</s:url>
    					<s:a href="%{deleteMenu}" onclick="return confirm('确定要删除吗？')" >删除</s:a>
    					<s:a href="%{modifyMenu}">修改</s:a>
    					<s:a href="%{authMenu}">授权</s:a>
    				</td>
    			</tr>
    		</s:iterator>
    	</table>
    	<s:a href="menu/viewMenu.action?currentPage=1">首页</s:a>
    	<s:if test="%{#request.currentPage<2}">
    		上一页
    	</s:if>
    	<s:else>
    		<s:a href="menu/viewMenu.action?currentPage=%{#request.currentPage-1}">上一页</s:a>
    	</s:else>
    	<s:if test="%{#request.currentPage>=#request.page.totalPagesCount}">
    		下一页
    	</s:if>
    	<s:else>
    		<s:a href="menu/viewMenu.action?currentPage=%{#request.currentPage+1}">下一页</s:a>
    	</s:else>
    	<s:a href="menu/viewMenu.action?currentPage=%{#request.page.totalPagesCount}">尾页</s:a>
    	
  </body>
</html>
