<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<div class="navbar">
	<div class="navbar-inner">
		<div class="navbar-container">
			<!-- Navbar Barnd -->
			<div class="navbar-header pull-left">
				<a href="#" class="navbar-brand"> <small>
					<img src="assets/img/Catering_logo.png" alt="" />
                </small>
				</a>
			</div>
			<!-- /Navbar Barnd -->

			<!-- Sidebar Collapse -->
			<div class="sidebar-collapse" id="sidebar-collapse">
				<i class="collapse-icon fa fa-bars"></i>
			</div>
			<!-- /Sidebar Collapse -->
			<!-- Account Area--->
			<div class="navbar-header pull-right">
				<div class="navbar-account">
					<ul class="account-area">
						<li>
							<div class="login-area dropdown-toggle" data-toggle="dropdown">
								<div class="avatar">
									<img src="<s:property value="#session.employee.empRole.roleIcon"/>"
									 class="img-circle">
								</div>
								<section>
									<h2><span><s:property
									value="#session.employee.empName" />
									</span></h2>
								</section>
							</div> <!--Login Area Dropdown-->
							<ul
								class="pull-right dropdown-menu dropdown-arrow dropdown-login-area">

								<li class="text-center"><a>职位 ：<s:property
											value="#session.employee.empRole.roleName" /></a></li>
								<!--Avatar Area-->
								<li>
									<div id="crop-avatar">
										<div class="avatar-view">
											<div class="avatar-area avatar-view">
												<img src="<s:property value="#session.employee.empPic"/>" class="avatar">
												<span class="caption">上传照片</span>
											</div>
										</div>
									</div>
								</li>
								<!--Avatar Area-->
								<li class="edit"><a href="#" class="pull-left">调色板</a></li>
								<!--Theme Selector Area-->
								<li class="theme-area">
									<ul class="colorpicker" id="skin-changer">
										<li><a class="colorpick-btn"
											style="background-color:#5DB2FF;"
											rel="assets/css/skins/blue.min.css"></a></li>
										<li><a class="colorpick-btn"
											style="background-color:#2dc3e8;"
											rel="assets/css/skins/azure.min.css"></a></li>
										<li><a class="colorpick-btn"
											style="background-color:#03B3B2;"
											rel="assets/css/skins/teal.min.css"></a></li>
										<li><a class="colorpick-btn"
											style="background-color:#53a93f;"
											rel="assets/css/skins/green.min.css"></a></li>
										<li><a class="colorpick-btn"
											style="background-color:#FF8F32;"
											rel="assets/css/skins/orange.min.css"></a></li>
										<li><a class="colorpick-btn"
											style="background-color:#cc324b;"
											rel="assets/css/skins/pink.min.css"></a></li>
										<li><a class="colorpick-btn"
											style="background-color:#AC193D;"
											rel="assets/css/skins/darkred.min.css"></a></li>
										<li><a class="colorpick-btn"
											style="background-color:#8C0095;"
											rel="assets/css/skins/purple.min.css"></a></li>
										<li><a class="colorpick-btn"
											style="background-color:#0072C6;"
											rel="assets/css/skins/darkblue.min.css"></a></li>
										<li><a class="colorpick-btn"
											style="background-color:#585858;"
											rel="assets/css/skins/gray.min.css"></a></li>
										<li><a class="colorpick-btn"
											style="background-color:#474544;"
											rel="assets/css/skins/black.min.css"></a></li>
										<li><a class="colorpick-btn"
											style="background-color:#001940;"
											rel="assets/css/skins/deepblue.min.css"></a></li>
									</ul>
								</li>
								<!--/Theme Selector Area-->
								<li class="dropdown-footer"><a
									href="loginAction!logout.action">退出系统</a></li>
							</ul> <!--/Login Area Dropdown-->
						</li>

					</ul>

				</div>
			</div>
		</div>
	</div>
</div>