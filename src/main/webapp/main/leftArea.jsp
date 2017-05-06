<%@ page language="java"  pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<head>
	<meta name="decorator" content="blank" />
	<link rel="stylesheet" type="text/css" href="styles/style.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<!-- 
	<script type="text/javascript" src="/scripts/menuExpandable.js"></script>
	 -->
	
	<script type="text/javascript">

		//chenjialong
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

<div id="left">
	<div class="leftTitle">
		功能菜单
	</div>
	<div class="leftContent">
		<div class="leftTree">
		    
    	  <s:iterator value="menus" >
    	     <table>
    	        <tr> <td onclick="showDish('${menuName}');"><s:property value="menuName"/> </td> </tr>
    	      </table>
    	     
    	      <div id="${menuName}" style="display: none;">
	    	     
		    	     <s:iterator value="funs">
		    	  
                                <a href="<s:property value="uri"/>" target="mainWorkSpace">&nbsp&nbsp&nbsp&nbsp<s:property value="funName"/></a><br/>	
				      
		    	     </s:iterator>
	    	     
	    	     </div>
	    	       
	    	     
    	</s:iterator>
    	
    	</div>
		</div>
	</div>

