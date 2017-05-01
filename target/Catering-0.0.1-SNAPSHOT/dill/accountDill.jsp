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
    
    <title>结账</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <script type="text/javascript">
          function showChange(){
            var cash=document.getElementById("kehuCash").value-document.getElementById("realCash").value;
            document.getElementById("change").value=cash;
            if(cash<0)
            alert('金额不够');
            else
            document.getElementById("submits").style.display = "block";
          
      
          }
    
    </script>
  </head>
  
  <body>
  	<s:form action="accountDill" method="POST" >
  		<table border=1>
  	       <tr bgcolor="#44eeCC">
    			<th>会员ID</th>
    			<th>会员流水号</th>
    			<th>会员名</th>
    			<th>会员号码</th>
    			<th>会员折扣率</th>
    			
    		</tr>
    		
    			<tr bgcolor="#A9A9A9">
    				<td><s:property value="integrate.integrateId"/></td>
    				<td><s:property value="integrate.integrateSerial"/></td>
    				<td><s:property value="integrate.customerName"/></td>
    				<td><s:property value="integrate.customerPhone"/></td>
    				<td><s:property value="integrate.points"/></td>
    			</tr>
    		
    		</table>
  		<table border=1 bgcolor="#F0F8FF">
	  		<tr>
	  		    <td>结账单号: </td><td><s:property value="dillId"/></td>
	  		</tr>
	  		<tr>
	  			<td>就餐桌号: </td><td><s:property value="dill.desk.deskNum"/></td>
	  		</tr>
  		    
	  		<tr>
	  			<table border=1>
	  			 
	  			   <tr bgcolor="#00eecc">
		  			      <td>菜名</td>
		  			       <td>价格</td>
	  			   </tr>
	  			 <s:iterator value="dishes">
	  			    <tr bgcolor="#FOFFFF">
	  			        <td><s:property value="dishName"/></td>
	  			        <td><s:property value="price"/></td>
	  			    </tr>   
	  		     </s:iterator>
	  			</table>
	  		</tr>
	  		<tr>
	  		   <table>
	  		       <tr>
	  		          <td>该单消费总金额：<input type="text" id="dillCash" disabled value="<s:property value="dill.dillCash"/>"/></td>
	  		          <td>是否有会员打折：<input type="text" id="dillCash" disabled value="<s:property value="integrate.points"/>"/></td>
	  		           </tr>
	  		           <tr>
	  		          <td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp应收金额：<input type="text" disabled id="realCash" value="<s:property value="dill.realCash"/>"/></td>
	  		          </tr>
	  		          <tr>
	  		          <td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp实收金额：<input type="text" id="kehuCash" value="0.00"/></td><td><input type="button" value="找零" onclick="showChange()"/></td>
	  		          </tr>
	  		          <tr>
	  		          <td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp找回金额：<input type="text" disabled id="change" value="0.00" /></td>
	  		       </tr>
	  		   
	  		   </table>
	  		</tr>
    	</table>
    	<div id="submits" style="display: none;">
    	<input type="hidden" name="dillId" value="<s:property value="dillId"/>"/>
    	<input type="submit" value="提交" />
    	</div>
    </s:form>
  </body>
</html>
