<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<%@ taglib uri="/struts-tags" prefix="s"%>

<head>
<meta name="decorator" content="login">
<title><s:property value="title"/></title>


<link rel="stylesheet" type="text/css" href="styles/style.css" />
<link rel="stylesheet" type="text/css" href="css/main.css" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<script type="text/javascript">
	document.onkeydown = function() {
		if (event.keyCode == 13) {
			document.getElementById("login").click();
			return false;
		}
	};
</head>
</script>
<body id="bodyLogin">
	<form method="post" id="loginForm" name="loginForm" 
		action="loginAction!login.action">
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
							<!--Logo区开始-->
							<div id="loginLogo">
								<lable>
								<font color="blue" size="8" face="楷体">龙湖餐饮</font> </lable>
							</div>
							<!--Logo区结束-->

							<!--登录信息输入开始-->
							<div id="conForm">
								<div class="userName">
									<label class="fB"> 员工号： </label> 
									<input name="employee.empNo"
										type="text" class="midinput" maxlength="20">
								</div>
								<%--<div class="password" id="center" >
									<label class="fB">
										角色：
									</label>
									<select name="roleId" class="selectmiddle" >
									    <s:iterator value="roleList">
										<option value="<s:property value="roleId"/>" selected="selected"><s:property value="roleName"/>
										</s:iterator>
									</select>
								</div> --%>
								<div class="userPass">
									<label id="passwordPrompt" class="fB"> 密码： </label> 
									<input name="employee.empPassword" type="password" 
									class="midinput" maxlength="20">
								</div>
								<div class="login">
									<input name="login" id="login" value="登录" class="loginBtn"
										type="submit"
										onmouseover="this.style.backgroundPosition='left -24px'"
										onmouseout="this.style.backgroundPosition='left 0px'">
									<input name="reset" id="reset" value="重置" class="loginBtn"
										type="reset"
										onmouseover="this.style.backgroundPosition='left -24px'"
										onmouseout="this.style.backgroundPosition='left 0px'">
								</div>
							</div>
							<!--登录信息输入结束-->
							<div id="infoLogin" style="display: none;">
								<div class="infoBorder">
									<span></span> <font id="hint"></font>
								</div>
							</div>
							<!--登陆失败提示信息结束-->
							<div id="j_role_tr" style="display:none;">
								<select id="j_role" name="j_role" class="selectmiddle">
									<option value="A1" />
								</select>
							</div>


						</div>
					</div>
				</div>
			</center>
		</div>
	</form>
</body>