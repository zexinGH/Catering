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
			<li><i class="fa fa-home"></i> <a href="#">订单信息管理</a></li>
			<li class="active">订单查询</li>
		</ul>
	</div>
	<!-- /Page Breadcrumb -->
	<!-- Page Header -->
	<div class="page-header position-relative">
		<div class="header-title">
			<h1>订单查询</h1>
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
					<div class="widget-header">
						<span class="widget-caption">历史订单列表</span>
						<span class="widget-caption text-danger">
							<s:property value="message"/>
						</span>
						<div class="widget-buttons">
							<a href="#" data-toggle="maximize"> <i class="fa fa-expand"></i>
							</a> <a href="#" data-toggle="collapse"> <i class="fa fa-minus"></i>
							</a> <a href="#" data-toggle="dispose"> <i class="fa fa-times"></i>
							</a>
						</div>
					</div>
					<div class="widget-body">
						<div class="table-toolbar">
							

						</div>
						
						<table class="table table-striped table-hover table-bordered default"
							id="editabledatatable">
							<thead>
								<tr role="row">
									<th>开单号</th>
									<th>桌号</th>
									<th>人数</th>
									<th>开单人员</th>
									<th>总额</th>
									<th>开单时间</th>
									<th>状态</th>
									<th>操作</th>
								</tr>
							</thead>

							<tbody>
								<s:iterator value="orderForms">
									<tr>
										<td><s:property value="orderNumber" /></td>
										<td><s:property value="desk.deskNum" /></td>
										<td><s:property value="dillNum" /></td>
										<td><s:property value="employee.empName" /></td>
										<td><s:property value="orderPayment" /></td>
										<td><s:property value="dateCreated" /></td>
										<td>
											<s:if test="%{status==0}">
												未付款
											</s:if>
											<s:else>
												已付款
											</s:else>
										</td>
										<td>
										<s:if test="%{status==0}">
											<a href="dillAction!initAccountDill.action?
											dillId=<s:property value="id"/>" 
											class="btn btn-warning btn-xs edit"> <i
											class="fa fa-dollar"></i> 结账
											</a>
										</s:if>
										 
										<a href="dillAction!viewOneOrder.action?dillId=<s:property value="id"/>" 
											   class="btn btn-info btn-xs edit"> <i
												class="fa fa-edit"></i> 详情
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

