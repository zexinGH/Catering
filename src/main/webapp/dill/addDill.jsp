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
    
    <title>开单</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script>
	     function showDish(targetId){
	     
	    var  target= document.getElementById( targetId );
	   // alert(intd);
	 
	        if ( target.style.display == "none") {
	              document.getElementById( targetId ).style.display = ""; 
	         } else { 
	        document.getElementById( targetId ).style.display = "none";
	        }
       

	
	}
	
	</script>

  </head>
  
  <body>
  <s:form action="openDill" method="POST">

    <s:hidden name="integrateId" value="%{integrate.integrateId}"/>
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
    		  <table>
           <tr>
           <td bgcolor="#DC143C">就餐人数:</td>
           <td>
           <input type="text" name="dillSum"/>
           </td>
           </tr>
  </table>
    		<table border=1>
  	
    		<tr bgcolor="#00ddCC">
    			<th>选号</th>
    			<th>台编号</th>
    			<th>总座位</th>
    			
    		</tr>
    		
    		<s:iterator value="desks" >
    			<tr bgcolor="#A9A9A9">
    				<td><input type="radio" name="deskId" value="<s:property value="deskId"/>"/></td>
    				<td><s:property value="deskNum"/></td>
    				<td>&nbsp;<s:property value="deskSum"/></td>
    				
    			</tr>
    		</s:iterator>
    
    	</table>
    	
    	<div>
    	    <table>
    	    <tr bgcolor="#00bbCC">
	    	   <td width="100">菜类</td>
	    	    <td width="100">菜名</td>
	    	    <td width="50">价格</td>
	    	    </tr>
	       </table>
	       <div>
    	  <s:iterator value="vegetables" >
    	      <input type="text"  name="vegetableName" width="100" value="<s:property value="vegetableName"/>" readonly onclick="showDish('${vegetableName}');"/><br/>
	    	    <table id="${vegetableName}" style="display:none">
		    	     <s:iterator value="dishs">
		    	     <tr bgcolor="#A9A9A9">
		    	         <td width="100">${vegetableName}</td>
		    	         <td width="100">  <input type="checkbox" name="dishIdList" id="<s:property value="dishId"/>" value="<s:property value="dishId"/>" />
		    	         <label for="<s:property value="dishId"/>"><s:property value="dishName"/></label></td>
		    	         <td width="50">   <s:property value="price"/></td>
		    	     </tr>
		    	     </s:iterator>
	    	     </table>
    	</s:iterator>
    	</div>
    	</div>
    	<br/><br/><br/>
    	
       <input type="submit"  value="开单"/>
       
    	
    </s:form>
  </body>
</html>
