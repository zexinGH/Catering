<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<div class="main-container container-fluid">
	<!-- Page Container -->
	<div class="page-container">
		<!-- Page Sidebar -->
		<div class="page-sidebar" id="sidebar">
			<!-- Sidebar Menu -->
			<ul class="nav sidebar-menu">
				<s:iterator id="auth" value="#session.authorities">
					<li>
						<a href="#" class="menu-dropdown"> 
							<i class="<s:property value='#auth.menuIcon'/>"></i> 
							<span class="menu-text">
								<s:property value="#auth.authorityName"/>
							</span> 
							<i class="menu-expand"></i>
						</a>
						<ul class="submenu">
							<s:iterator id="fun" value="#auth.functions">
								<li><a href="<s:property value="#fun.url"/>"> 
									<span class="menu-text">
										<s:property value="#fun.funName"/>
									</span>
								</a></li>
							</s:iterator>
						</ul>
					</li>
				</s:iterator>
			</ul>
		</div>