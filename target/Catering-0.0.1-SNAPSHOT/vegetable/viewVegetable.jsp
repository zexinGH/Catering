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
    
    <title>查看菜品类别名</title>
    
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
    			
    			<th>菜品类别名</th>
    			<th>操作</th>
    		</tr>
    	<s:iterator value="vegetables">
    			<tr>
    				<td><s:property value="vegetableName"/></td>
    				<td>
    					<s:url id="delete" action="deleteVegetable">
    						<s:param name="vegetableId" value="vegetableId"/>
    					</s:url>
    					<s:a href="%{delete}" onclick="return confirm('确定要删除吗？')"> 删除 </s:a>
    					<s:url id="update" action="modifyVegetable">
    						<s:param name="vegetableId" value="vegetableId"/>
    					</s:url>
    					<s:a href="%{update}">修改</s:a>
    				</td>
    			</tr>
    		</s:iterator>
    	
    	</table>
  </body>
</html>
