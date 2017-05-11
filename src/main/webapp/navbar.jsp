<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<div class="navbar">
	<div class="navbar-inner">
		<div class="navbar-container">
			<!-- Navbar Barnd -->
			<div class="navbar-header pull-left">
				<a href="#" class="navbar-brand"> 
				<!-- <small>
					<img src="assets/img/Catering_logo.png" alt="" />
                </small> -->
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

						<li><a class="wave in dropdown-toggle" data-toggle="dropdown"
							title="Help" href="#"> <i class="icon fa fa-bell"></i> <span
								class="badge">3</span>
						</a> <!--Messages Dropdown-->
							<ul
								class="pull-right dropdown-menu dropdown-arrow dropdown-messages">
								<li><a href="#"> <img
										src="assets/img/avatars/divyia.jpg" class="message-avatar"
										alt="Divyia Austin">
										<div class="message">
											<span class="message-sender"> Divyia Austin </span> <span
												class="message-time"> 2 minutes ago </span> <span
												class="message-subject"> Here's the recipe for apple
												pie </span> <span class="message-body"> to identify the
												sending application when the senders image is shown for the
												main icon </span>
										</div>
								</a></li>
								<li><a href="#"> <img src="assets/img/avatars/bing.png"
										class="message-avatar" alt="Microsoft Bing">
										<div class="message">
											<span class="message-sender"> Bing.com </span> <span
												class="message-time"> Yesterday </span> <span
												class="message-subject"> Bing Newsletter: The January
												Issue‏ </span> <span class="message-body"> Discover new
												music just in time for the Grammy® Awards. </span>
										</div>
								</a></li>
								<li><a href="#"> <img
										src="assets/img/avatars/adam-jansen.jpg"
										class="message-avatar" alt="Divyia Austin">
										<div class="message">
											<span class="message-sender"> Nicolas </span> <span
												class="message-time"> Friday, September 22 </span> <span
												class="message-subject"> New 4K Cameras </span> <span
												class="message-body"> The 4K revolution has come over
												the horizon and is reaching the general populous </span>
										</div>
								</a></li>
							</ul> <!--/Messages Dropdown--></li>

						<li><a class="dropdown-toggle" data-toggle="dropdown"
							title="Tasks" href="#"> <i class="icon fa fa-tasks"></i> <span
								class="badge">4</span>
						</a> <!--Tasks Dropdown-->
							<ul
								class="pull-right dropdown-menu dropdown-tasks dropdown-arrow ">
								<li class="dropdown-header bordered-darkorange"><i
									class="fa fa-tasks"></i> 4 Tasks In Progress</li>
								<li><a href="#">
										<div class="clearfix">
											<span class="pull-left">Account Creation</span> <span
												class="pull-right">65%</span>
										</div>

										<div class="progress progress-xs">
											<div style="width:65%" class="progress-bar"></div>
										</div>
								</a></li>
								<li><a href="#">
										<div class="clearfix">
											<span class="pull-left">Profile Data</span> <span
												class="pull-right">35%</span>
										</div>

										<div class="progress progress-xs">
											<div style="width:35%"
												class="progress-bar progress-bar-success"></div>
										</div>
								</a></li>
								<li><a href="#">
										<div class="clearfix">
											<span class="pull-left">Updating Resume</span> <span
												class="pull-right">75%</span>
										</div>

										<div class="progress progress-xs">
											<div style="width:75%"
												class="progress-bar progress-bar-darkorange"></div>
										</div>
								</a></li>
								<li><a href="#">
										<div class="clearfix">
											<span class="pull-left">Adding Contacts</span> <span
												class="pull-right">10%</span>
										</div>

										<div class="progress progress-xs">
											<div style="width:10%"
												class="progress-bar progress-bar-warning"></div>
										</div>
								</a></li>
								<li class="dropdown-footer"><a href="#"> See All Tasks
								</a>
									<button
										class="btn btn-xs btn-default shiny darkorange icon-only pull-right">
										<i class="fa fa-check"></i>
									</button></li>
							</ul> <!--/Tasks Dropdown--></li>
						<li>
							<div class="login-area dropdown-toggle" data-toggle="dropdown">
								<s:if test="#session.loginEmployee.empRole.roleName=='店长'">
									<div class="avatar">
                                        <img src="assets/img/avatars/icon_boss.png" class="">
                                   	</div>
								</s:if>
								<s:elseif test="#session.loginEmployee.empRole.roleName=='管理员'">
									<div class="avatar">
										<img src="assets/img/avatars/icon_admin.png" class="">
									</div>
								</s:elseif>
								<s:elseif test="#session.loginEmployee.empRole.roleName=='收银员'">
									<div class="avatar">
										<img src="assets/img/avatars/icon_checker.png" class="">
									</div>
								</s:elseif>
								
								<section>
									<h2><span>
										<s:property value="#session.loginEmployee.empName"/>
									</span></h2>
								</section>
							</div> <!--Login Area Dropdown-->
							<ul
								class="pull-right dropdown-menu dropdown-arrow dropdown-login-area">

								<li class="text-center">
									<a>职位 ：<s:property value="#session.loginEmployee.empRole.roleName"/></a>
								</li>
								<!--Avatar Area-->
								<li>
									<div id="crop-avatar">
										<div class="avatar-view">
											<div class="avatar-area">
												<img src="assets/img/avatars/adam-jansen.jpg" class="avatar">
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
								<li class="dropdown-footer">
									<a href="loginAction!logout.action">退出系统</a>
								</li>
							</ul> <!--/Login Area Dropdown-->
						</li>

					</ul>

				</div>
			</div>
		</div>
	</div>
</div>