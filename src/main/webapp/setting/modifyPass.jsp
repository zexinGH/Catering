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
			<li><i class="fa fa-home"></i> <a href="#">个人设置</a></li>
			<li class="active">修改密码</li>
		</ul>
	</div>
	<!-- /Page Breadcrumb -->
	<!-- Page Header -->
	<div class="page-header position-relative">
		<div class="header-title">
			<h1>修改密码</h1>
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
		<!--Header Buttons End-->
	</div>
	<!-- /Page Header -->
	<!-- Page Body -->
	<div class="page-body">
		<div class="col-lg-6 col-sm-6 col-xs-12">
			<div class="widget">
				<div class="widget-header bordered-bottom bordered-palegreen">
					<span class="col-sm-6 widget-caption">填写修改信息</span>
					<span class="col-sm-6 widget-caption text-danger">
						<s:property value="message"/>
					</span>
				</div>
				
				<div class="widget-body">
					<div>
						<form class="form-horizontal form-bordered" role="form" method="post"
							id="modifyPass" action="loginAction!modifyPass.action">
							<s:hidden name="empId" value="%{#session.employee.id}">
							</s:hidden>
							<div class="form-group">
								<label class="col-sm-2 control-label no-padding-right">原密码</label>
								<div class="col-sm-10">
									<input type="password" name="employee.empPassword" class="form-control" id="oldPassword">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label no-padding-right">新密码</label>
								<div class="col-sm-10">
									<input type="password" name="newPassword" class="form-control" id="newPassword">
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label no-padding-right">确定密码</label>
								<div class="col-sm-10">
									<input type="password" name="confirmPassword" class="form-control" id="confirmPassword">
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-offset-2 col-sm-10">
									<button type="submit" class="btn btn-palegreen">提交</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<s:include value="/footer.jsp"></s:include>

