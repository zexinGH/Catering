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
      <s:form action="checkReport" method="POST">
             <table>
                   <tr><td> 营业额查询</td> </tr>
                   <tr><td> 日期格式：2013年5月22日则输入20130522</td> </tr>
    	           <tr><td> 选择开始查询日期：<input type="text" id="dateStart"  name="checkStartDate"/></td> </tr>
    	           <tr><td> 选择结束查询日期：<input type="text" id="dateEnd"  name="checkEndDate"/></td> </tr>
    	      </table>
    	      <br/><br/>&nbsp&nbsp
              <input type="submit" value="查询"/>
      </s:form>
    	
    
  </body>
</html>

