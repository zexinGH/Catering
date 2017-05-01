<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%@ page language="java" contentType="text/html; charset=GBK"
	pageEncoding="GBK"%>
<head>
	<meta name="decorator" content="login">
	<title>Login</title>


	<link rel="stylesheet" type="text/css" href="styles/style.css"/>
	<link rel="stylesheet" type="text/css" href="css/main.css" />
	<link rel="stylesheet" type="text/css" href="css/style.css"/>
	<script type="text/javascript">
		function document.onkeydown() {
	     	if(event.keyCode==13) {
	     	
               document.getElementById("login").click(); 
               return false;     
        	}
	    }
	     function jiaoyan(form){
		        
		       if(form.userName.value.trim() == ""){
		           alert("��������������");
		           return false;
		       }
		   
		       if(form.password.value.trim() == ""){
		           alert("��������������");
		           return false;
		       }
		       return true;
		   }
	    function check() {
	    	var username = document.all("userName").value;
	    	var password = document.all("password").value;
	    	var ret = false;
	   
	    	if(isBlank(username)) {
	    	    alert('ab�û�������Ϊ��cd');
	    		document.getElementById("infoLogin").style.display = "block";
	    		document.getElementById("hint").innerHTML = "�û�������Ϊ��"
	    		document.all('userName').focus();
	    		alert('ab������Ϊ��Ϊ��cd');
	    		return false;
	    	}
	    	 alert('ab�û���cd');
	    	
	    	if(isBlank(password)) {
	    	 alert('ab���벻��Ϊ��Ϊ��cd');
	    		document.getElementById("infoLogin").style.display = "block";
	    		document.getElementById("hint").innerHTML = "���벻��Ϊ��"
	    		document.all('password').focus();
	    		return false;
	    	}
	    
	    	if(ret) {
	    		document.getElementById("login").disabled = true;
	    		document.getElementById("reset").disabled = true;
	    		return doCommand(this, 9, '', true);
	    	}
	    	return false;
	    }
	  
	    
	</script>
</head>

<body id="bodyLogin" onload="document.all('userName').focus();">
<form method="post" id="loginForm" name="loginForm" action="checkUser" onsubmit="return check()">
<div class="logoLogin"></div>
	<div id="loginContainer">
		<center>
			<div id="loginContent">
				<div id="loginWrapper">
					<div class="borderLeft"></div>
					<div class="borderRight"></div>
					<div class="borderTop">
						<div class="topL1">
							<div class="topL2">
								<div class="topL3"></div>
							</div>
						</div>
					</div>
					<div class="borderBottom">
						<div class="bottomL1">
							<div class="bottomL2">
								<div class="bottomL3"></div>
							</div>
						</div>
					</div>

					<div id="centerCon">
						<!--Logo����ʼ-->
						<div id="loginLogo"><lable><font color="blue" size="8" face="����" >��������</font> </lable></div>
						<!--Logo������-->

						<!--��¼��Ϣ���뿪ʼ-->
							<div id="conForm">
								<div class="userPass">
									<label class="fB">
										�û�����
									</label>
									<input name="userName" type="text" class="midinput" maxlength="20" >
								</div>
								<div class="password" id="center" >
									<label class="fB">
										��ɫ��
									</label>
									<select name="roleId" class="selectmiddle" >
									    <s:iterator value="roleList">
										<option value="<s:property value="roleId"/>" selected="selected"><s:property value="roleName"/>
										</s:iterator>
									</select>
								</div>
								<div class="userPass">
									<label id="passwordPrompt" class="fB">
										���룺
									</label>
									<input name="password" type="password" class="midinput" maxlength="20">
								</div>
								<div class="login">
									<input name="login" id="login" value="��¼" class="loginBtn" type="submit"
										  onmouseover="this.style.backgroundPosition='left -24px'"
										onmouseout="this.style.backgroundPosition='left 0px'">
									<input name="reset" id="reset" value="����" class="loginBtn"
										type="reset" onmouseover="this.style.backgroundPosition='left -24px'"
										onmouseout="this.style.backgroundPosition='left 0px'">
								</div>
							</div>
							<!--��¼��Ϣ�������-->
								<div id="infoLogin" style="display: none;">
							<div class="infoBorder">
								<span></span>
								<font id="hint"></font>
							</div>
						</div>
						<!--��½ʧ����ʾ��Ϣ����-->
						<div id="j_role_tr" style="display:none;">
							<select id="j_role" name="j_role" class="selectmiddle">
								<option value="A1" />
							</select>
						</div>
						
					
					</div>
				</div>
			</div>
		</center>
		<!-- 
		<div class="loginBottom">
			<span id="copyright"><fmt:message key="ac.system.login.bank" /></span>
		</div>
		 -->
	</div>
	</form>
</body>