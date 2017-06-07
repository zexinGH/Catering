<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<s:include value="/header.jsp"></s:include>
<s:include value="/navbar.jsp"></s:include>
<s:include value="/sidebar.jsp"></s:include>
<!-- Page Content -->
<div class="page-content">
	<!-- Page Breadcrumb -->
	<div class="page-breadcrumbs">
		<ul class="breadcrumb">
			<li><i class="fa fa-home"></i> <a href="#">员工信息管理</a></li>
			<li class="active">注册新员工</li>
		</ul>
	</div>
	<!-- /Page Breadcrumb -->
	<!-- Page Header -->
	<div class="page-header position-relative">
		<div class="header-title">
			<h1>注册新员工</h1>
		</div>
		<!--Header Buttons-->
		<div class="header-buttons">
			<a class="sidebar-toggler"> <i class="fa fa-arrows-h"></i>
			</a> <a class="refresh" id="refresh-toggler" href="#"> <i
				class="glyphicon glyphicon-refresh"></i>
			</a> <a class="fullscreen" id="fullscreen-toggler"> <i
				class="glyphicon glyphicon-fullscreen"></i>
			</a>
		</div>
	</div>
	<!-- Page Body -->
	<div class="page-body">
		<div class="row">
			<div class="col-lg-12 col-sm-12 col-xs-12">
				<div class="widget flat radius-bordered">
					<div class="widget-header bg-blue">
						<span class="widget-caption">请填写注册信息</span>
					</div>
					<div class="widget-body">
						<div id="registration-form">
							<form id="empForm" role="form" action="employeeAction!addEmp.action" method="post">
								<div class="col-lg-6 col-sm-6 col-xs-6">
									<div class="form-title">职位信息</div>
									<div class="form-group">
										<span class="input-icon icon-right"> <input type="text"
											class="form-control" id="userameInput" placeholder="员工ID"
											name="employee.empNo"> <i
											class="glyphicon glyphicon-user circular"></i>
										</span>
									</div>
									<div class="form-group">
										<span class="input-icon icon-right"><label>请选择角色</label> 
											<s:select list="roleList" name="roleId" listKey="id"
											 id="roleInput" listValue="roleName" class="form-control"/>															
										</span>
									</div>
									<div class="form-group">
										<span class="input-icon icon-right"> <input type="password"
											class="form-control" id="passwordInput" 
											placeholder="密码" name="employee.empPassword"/>
											<i class="fa fa-lock circular"></i>
										</span>
									</div>
									<div class="form-group">
										<span class="input-icon icon-right"> <input type="password"
											class="form-control" id="confirmPasswordInput"
											placeholder="确认密码" name="checkPassword"> <i
											class="fa fa-lock circular"></i>
										</span>
									</div>
								</div>
								<div class="col-lg-6 col-sm-6 col-xs-6">
									<div class="form-title">个人信息</div>
									<div class="form-group">
										<span class="input-icon icon-right"> <input type="text" 
										class="form-control" placeholder="姓名" name="employee.empName">
											<i class="fa fa-user"></i>
										</span>
									</div>
									<div class="form-group">
										<span class="input-icon icon-right"> <input type="text" 
										class="form-control" placeholder="住址" name="employee.empAddress">
											<i class="fa fa-home"></i>
										</span>
									</div>
									<div class="form-group">
										<span class="input-icon icon-right"> <input type="text" 
										class="form-control" placeholder="联系方式" name="employee.empPhone"/>
											<i class="glyphicon glyphicon-phone"></i>
										</span>
									</div>
									<div class="form-group">
										<span class="input-icon icon-right"> <input type="text" 
										class="form-control" placeholder="年龄" name="employee.empAge"/>
										</span>
									</div>
									<div class="form-group">
										<span class="input-icon icon-right"> <s:select 
										list="#{'':'请选择性别','男':'男','女':'女'}" name="employee.empSex" 
									    id="sexInput" class="form-control" />  
									    </span>   
									</div>
								</div>
								<button type="submit" class="btn btn-blue">注册</button>							
								<div class="form-title">错误信息</div>
								<div class="col-sm-12">
									<div class="form-group text-danger">
										<s:property value="message"/>
									</div>
								</div>
								</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<s:include value="/footer.jsp"></s:include>







