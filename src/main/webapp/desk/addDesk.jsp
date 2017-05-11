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
			<li class="active">添加桌台</li>
		</ul>
	</div>
	<!-- /Page Breadcrumb -->
	<!-- Page Header -->
	<div class="page-header position-relative">
		<div class="header-title">
			<h1>添加桌台</h1>
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
			<div class="col-lg-6 col-sm-6 col-xs-12">
				<div class="widget flat radius-bordered">
					<div class="widget-header bg-warning">
						<span class="widget-caption">请填写信息</span>
					</div>
					<div class="widget-body">
						<div id="registration-form">
							<form role="form" action="deskAction!addDesk.action" method="post">
								<div class="form-title">桌台信息</div>
								<div class="form-group">
									<span class="input-icon icon-right"> <input type="text"
										class="form-control" id="userameInput" placeholder="桌台编号"
										name="desk.deskNum">
									</span>
								</div>
								<div class="form-group">
									<span class="input-icon icon-right"><s:select 
										list="#{'':'请选择分类','包间':'包间','大厅':'大厅'}" name="desk.deskType" 
									    id="typeInput" class="form-control" />
									</span>
								</div>
								<div class="form-group">
									<span class="input-icon icon-right"> <input type="text"
										class="form-control" id="userameInput" placeholder="位置描述"
										name="desk.position">
									</span>
								</div>
								<div class="form-group">
									<span class="input-icon icon-right"> <input type="text"
										class="form-control" id="userameInput" placeholder="可容纳人数"
										name="desk.capacity">
									</span>
								</div>
								<button type="submit" class="btn btn-warning">添加</button>							
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







