<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="decorator" content="blank" />
<link rel="stylesheet" type="text/css" href="styles/style.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<title>桂林著名餐饮系统</title>
<script language="javascript" type="text/javascript">
	var visible = true;
	//预载图像
	var left = new Image();
	var right = new Image();
	left.src = "<c:url value='/images/arrow_left.gif'/>";
	right.src = "<c:url value='/images/arrow_right.gif'/>";

	/*
	 * 功能: 显示或隐藏左侧区
	 * 输入: 无
	 * 输出: 无
	 */
	function showLeftArea() {
		if (visible) {
			document.getElementById("leftAreaWindow").style.display = "none";
			// document.all.leftAreaWindow.style.display = "none";
			document.getElementById("id_splitter").src = right.src;
			visible = false;
		} else {
			document.getElementById("leftAreaWindow").style.display = "block";
			document.getElementById("id_splitter").src = left.src;
			visible = true;
		}
	}
	function showDish(targetId) {
		var target = document.getElementById(targetId);
		// alert(intd);
		if (target.style.display == "none") {
			document.getElementById(targetId).style.display = "";
		} else {
			document.getElementById(targetId).style.display = "none";
		}
	}
</SCRIPT>

</HEAD>
<BODY>
	<table width="100%" height="100%" border="0" cellspacing="0"
		cellpadding="0">
		<%--Logo, 座席信息区: 开始--%>
		<tr height="70">
			<td height="70" colspan="3">
				<div id="header">
					<!--Logo区开始-->
					<div id="logo"></div>
					<!--Logo区结束-->

					<!--快捷菜单区开始-->
					<div id="shortCut">
						<div class="shortCut_setup">
							<div class="floatRight"></div>
						</div>
					</div>
					<!--快捷菜单区结束-->
					<!--登录信息区开始-->
					<div id="agentInfo" class="floatLeft">
						<ul>
							<li><lable> <font color="blue" size="8" face="楷体">龙湖餐饮</font>
								</lable></li>
							<li><span>欢迎您，<em class="cDRed"><s:property
											value="employee.empName" /></em> 角色：<s:property
										value="employee.empRole.roleName" /> [<a
									href="employeeAction!logout.action">退出系统</a>]
							</span></li>
						</ul>
					</div>
					<!--登录信息区结束-->
				</div>
			</td>
		</tr>

		<%--Logo, 座席信息区: 结束--%>
		<tr height="100%">
			<td colspan="2" valign="top" bgcolor="#d5ebfd">
				<table width="100%" height="100%" border="0" cellspacing="0"
					cellpadding="0">
					<tr>
						<%--左区: 开始--%>
						<td width="1">
							<div id="left">
								<div class="leftTitle">功能菜单</div>
								<div class="leftContent">
									<div class="leftTree">
										<s:iterator id="auth" value="authorities">
											<table>
												<tr>
													<td
														onclick="showDish('<s:property value="#auth.authorityName"/>');">
														<s:property value="#auth.authorityName" />
													</td>
												</tr>
											</table>
											<div id="<s:property value="#auth.authorityName"/>"
												style="display: none;">
												<s:iterator id="fun" value="#auth.functions">
													<a href="<s:property value="#fun.url"/>"
														target="mainWorkSpace"> &nbsp&nbsp&nbsp&nbsp<s:property
															value="#fun.funName" /></a>
													<br />
												</s:iterator>
											</div>
										</s:iterator>
									</div>
								</div>
							</div>
						</td>
						<%--左区: 结束--%>
						
						<%--主工作区: 开始--%>
						<td width="85%" HEIGHT="100%" valign="top">
							<!-- <IFRAME name="reloadBlankPageWindow" BORDER="0" FRAMEBORDER="NO" HEIGHT="0" width="0" style="display:none" src="../../../../../page/refreshPage.jsp"></IFRAME> -->
							<iframe name="mainWorkSpace" BORDER="0" FRAMEBORDER="NO"
								HEIGHT="100%" width="100%"
								src="employeeAction!mainWorkSpace.action"></iframe>
						</td>
						<%--主工作区: 结束--%>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</BODY>
</html>