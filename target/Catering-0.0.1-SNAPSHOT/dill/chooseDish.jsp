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
    
    <title>加菜</title>
    
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
            var cash=document.getElementById("kehuCash").value-document.getElementById("dillCash").value;
            document.getElementById("change").value=cash;
          
          
          }
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
  	<s:form action="chooseDill" method="POST">
  		
  		<table>
	  		<tr>
	  		    <td><lable >结账单号: </lable><s:property value="dillId"/></td>
	  		</tr>
	  		<tr>
	  			<td><lable >就餐桌号: </lable><s:property value="dill.desk.deskNum"/></td>
	  		</tr>
  		    <tr>
	  			<td><lable >当前已点菜：</lable><s:property value="dill.dillDishes"/></td>
	  		</tr>
	  		</table>
	  	<div>
    	    <table>
    	    <tr>
	    	   <td width="50">菜类</td>
	    	    <td width="150">菜名</td>
	    	    <td width="50">价格</td>
	    	    </tr>
	       </table>
	       <div>
    	  <s:iterator value="vegetables" >
    	      <input type="button" name="vegetableName" value="<s:property value="vegetableName"/>" onclick="showDish('${vegetableName}');"/><br/>
    	      <div id="${vegetableName}">
	    	    <table >
		    	     <s:iterator value="dishs">
	                        <s:if test="dishName in dishNames">
				    		  <tr>
				    		     <td width="50"></td>
				    			  <td width="150"><input type="checkbox" name="dishIdList" id="<s:property value="dishId"/>" value="<s:property value="dishId"/>" checked="checked"/>
		    	                  <label for="<s:property value="dishId"/>"><s:property value="dishName"/></label></td>
				    		       <td width="50"><s:property value="price"/></td>
				    		 </tr>
				    		</s:if>
				    		<s:else>
				    		     <tr>
				    		     <td width="50"></td>
				    			  <td width="150"><input type="checkbox" name="dishIdList" id="<s:property value="dishId"/>" value="<s:property value="dishId"/>" />
		    	                  <label for="<s:property value="dishId"/>"><s:property value="dishName"/></label></td>
				    		       <td width="50"><s:property value="price"/></td>
				    		 </tr>
				    		</s:else>
		    	     </s:iterator>
	    	     </table>
	    	     </div>
    	</s:iterator>
    	</div>
    	</div>
	  		
	  	
    	<input type="hidden" name="dillId" value="<s:property value="dillId"/>"/>
    	<input type="submit" value="提交"/>
    </s:form>
  </body>
</html>


