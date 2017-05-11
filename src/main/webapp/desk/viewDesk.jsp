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
			<li><i class="fa fa-home"></i> <a href="#">桌台信息管理</a></li>
			<li class="active">桌台管理</li>
		</ul>
	</div>
	<!-- /Page Breadcrumb -->
	<!-- Page Header -->
	<div class="page-header position-relative">
		<div class="header-title">
			<h1>桌台管理</h1>
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
					<div class="widget-header bg-warning">
						<span class="widget-caption">桌台列表</span>
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
								href="deskAction!initAddDesk.action" class="btn btn-default">
								添加桌台</a>

						</div>
						<table class="table table-striped table-hover table-bordered"
							id="editabledatatable">
							<thead>
								<tr role="row">
									<th>桌台编号</th>
									<th>桌台类型</th>
									<th>具体位置</th>
									<th>容纳人数</th>
									<th>目前状态</th>
									<th>操作</th>
								</tr>
							</thead>

							<tbody>
								<s:iterator value="deskList">
									<tr>
										<td><s:property value="deskNum" /></td>
										<td><s:property value="deskType" /></td>
										<td><s:property value="position" /></td>
										<td><s:property value="capacity" /></td>
										<td>
											<s:if test="status==0">
												空闲
											</s:if>
											<s:elseif test="status==1">
												预订
											</s:elseif>
											<s:else>
												就餐
											</s:else>
										</td>
										<td><a href="deskAction!initModifyDesk.action?deskId=<s:property value="id"/>" 
											   class="btn btn-info btn-xs edit"> <i
												class="fa fa-edit"></i> 编辑
										</a> <a
											href="deskAction!deleteDesk.action?deskId=<s:property value="id"/>"
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







