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
			<li><i class="fa fa-home"></i> <a href="#">菜单信息维护</a></li>
			<li class="active">添加菜品</li>
		</ul>
	</div>
	<!-- /Page Breadcrumb -->
	<!-- Page Header -->
	<div class="page-header position-relative">
		<div class="header-title">
			<h1>添加菜品</h1>
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
		<div class="col-lg-6 col-sm-6 col-xs-12">
			<div class="widget flat radius-bordered">
				<div class="widget-header bg-success">
					<span class="widget-caption">添加菜品</span>
				</div>
				<div class="widget-body">
					<div id="addDish-form">
						<form role="form" action="dishAction!addDish.action" enctype="multipart/form-data" 
						 method="post" validate="true">
							<div class="form-group">
								<span class="input-icon icon-right"> <input type="text"
									class="form-control" id="dishNameInput" 
									placeholder="菜名" name="menuDish.dishName"> 
								</span>
							</div>
							<div class="form-group">
								<span class="input-icon icon-right"> <input type="text"
									class="form-control" id="dishPriceInput" 
									placeholder="单价" name="menuDish.dishPrice"> 
								</span>
							</div>
							<div class="form-group">
								<span class="input-icon icon-right"><label>请选择分类</label><s:select
										list="categories" name="categoryId" listKey="id" id="categoryInput"
										listValue="categoryName" class="form-control"/>															
								</span>
							</div>
							<div class="form-group">
								<span class="input-icon icon-right"><label>请上传菜品图</label><input type="file"
									class="form-control" id="dishPicInput" name="picture"/> 														
								</span>
							</div>
							<div class="form-group">
								<label>描述</label> 
								<span class="input-icon icon-right"> 
									<textarea class="form-control" rows="10" 
									name="menuDish.dishDescription"></textarea> 
									<i class="glyphicon glyphicon-briefcase success"></i>
								</span>
								<p class="help-block">请输入主配料、功效、口感等信息</p>
							</div>
							<button type="submit" class="btn btn-success">添加</button>
							<span class="text-danger">
								<s:property value="message"/>
							</span>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<s:include value="/footer.jsp"></s:include>







