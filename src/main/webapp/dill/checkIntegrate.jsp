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
    
    <title>餐饮报表</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>

  <body><br>          
      <s:form action="checkIntegrate" method="POST">
             <table>
    	           <tr><td> 会员名查询：<input type="text" id="customerName"  name="customerName"/></td> </tr>
    	           <tr><td> 会员联系方式查询：<input type="text" id="customerPhone"  name="customerPhone"/></td> </tr>
    	      </table>
    	      <br/><br/>&nbsp&nbsp
    	       
              <input type="submit" value="查询"/>
      </s:form>
    	
    
  </body>
</html>

