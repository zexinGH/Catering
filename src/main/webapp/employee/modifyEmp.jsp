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
			<li><i class="fa fa-home"></i> <a>员工信息管理</a></li>
			<li class="active">人事管理</li>
			<li class="active">修改员工信息</li>
		</ul>
	</div>
	<!-- /Page Breadcrumb -->
	<!-- Page Header -->
	<div class="page-header position-relative">
		<div class="header-title">
			<h1>修改员工信息</h1>
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
		<div class="row">			
			<div class="col-lg-6 col-sm-6 col-xs-12">
				<div class="widget">
					<div class="widget-header bordered-bottom bordered-blue">
						<span class="col-sm-6 widget-caption">请编辑员工信息</span>
						<span class="col-sm-6 widget-caption text-success">
							<s:property value="message"/>
						</span>
					</div>
					<div class="widget-body">
						<div id="horizontal-form">
							<form class="form-horizontal" role="form" method="post" 
								action="employeeAction!modifyEmp.action">
								<div class="form-group">
									<label class="col-sm-2 control-label no-padding-right">目前职位</label>
									<div class="col-sm-10">
										<span class="input-icon icon-right">
											<input type="text" class="form-control" 
											value="<s:property value="employee.empRole.roleName"/>"/>				
										</span>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-2 control-label no-padding-right">调整职位</label>
									<div class="col-sm-10">
										<span class="input-icon icon-right">
											<s:select list="roleList" name="roleId" 
											listKey="id" id="roleInput"
											listValue="roleName" class="form-control" /> 
										</span>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-2 control-label no-padding-right">姓名</label>
									<div class="col-sm-10">
										<span class="input-icon icon-right"> 
											<input type="text" class="form-control" 
											name="employee.empName"
											value="<s:property value="employee.empName"/>"> 
											<i class="fa fa-user"></i>
										</span>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-2 control-label no-padding-right">住址</label>
									<div class="col-sm-10">
										<span class="input-icon icon-right">
											<input type="text" class="form-control"
											name="employee.empAddress"
											value="<s:property value="employee.empAddress"/>"/>
											<i class="glyphicon glyphicon-home"></i>
										</span>
									</div>
								</div>
								
								<div class="form-group">
									<label class="col-sm-2 control-label no-padding-right">联系方式</label>
									<div class="col-sm-10">
										<span class="input-icon icon-right"> 
											<input type="text" class="form-control"
											name="employee.empPhone"
											value="<s:property value="employee.empPhone"/>"/> 
											<i class="glyphicon glyphicon-phone"></i>
										</span>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-2 control-label no-padding-right">年龄</label>
									<div class="col-sm-10">
										<span class="input-icon icon-right"> 
											<input type="text" class="form-control" 
											name="employee.empAge"
											value="<s:property value="employee.empAge"/>" />
										</span>	
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-2 control-label no-padding-right">性别</label>
									<div class="col-sm-10">
										<span class="input-icon icon-right"> 
										<s:select list="#{'':'请选择性别','男':'男','女':'女'}" 
											name="employee.empSex"
											id="sexInput" class="form-control" />
										</span>
									</div>
								</div>
								<div class="form-group">
                                    <div class="col-sm-offset-2 col-sm-10">
                                    	<button type="submit" class="btn btn-info" 
                                    	onclick="return confirm('确定要修改吗？')">提交</button>
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







