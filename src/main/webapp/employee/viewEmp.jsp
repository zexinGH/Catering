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
			<li class="active">人事管理</li>
		</ul>
	</div>
	<!-- /Page Breadcrumb -->
	<!-- Page Header -->
	<div class="page-header position-relative">
		<div class="header-title">
			<h1>人事管理</h1>
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
			<div class="col-xs-12 col-md-12">
				<div class="widget">
					<div class="widget-header ">
						<span class="widget-caption">Editable DataTable</span>
						<div class="widget-buttons">
							<a href="#" data-toggle="maximize"> <i class="fa fa-expand"></i>
							</a> <a href="#" data-toggle="collapse"> <i class="fa fa-minus"></i>
							</a> <a href="#" data-toggle="dispose"> <i class="fa fa-times"></i>
							</a>
						</div>
					</div>
					<div class="widget-body">
						<div class="table-toolbar">
							<a id="editabledatatable_new"
								href="employeeAction!initAddEmp.action" class="btn btn-default">
								注册新员工 </a>

						</div>
						<table class="table table-striped table-hover table-bordered"
							id="editabledatatable">
							<thead>
								<tr role="row">
									<th>员工号</th>
									<th>姓名</th>
									<th>联系方式</th>
									<th>职位</th>
									<th>操作</th>
								</tr>
							</thead>

							<tbody>
								<s:iterator value="employeeList">
									<tr>
										<td><s:property value="empNo" /></td>
										<td><s:property value="empName" /></td>
										<td><s:property value="empPhone" /></td>
										<td class="center "><s:property value="empRole.roleName" /></td>
										<td><a href="employeeAction!initModifyEmp.action?empId=<s:property value="id"/>" 
											   class="btn btn-info btn-xs edit"> <i
												class="fa fa-edit"></i> 编辑
										</a> <a
											href="employeeAction!deleteEmp.action?empId=<s:property value="id"/>"
											class="btn btn-danger btn-xs delete"
											onclick="return confirm('确定要删除吗？')"> <i
												class="fa fa-trash-o"></i> 删除
										</a></td>
									</tr>
								</s:iterator>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<s:include value="/footer.jsp"></s:include>







