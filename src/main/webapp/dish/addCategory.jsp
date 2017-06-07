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
			<li class="active">添加菜品分类</li>
		</ul>
	</div>
	<!-- /Page Breadcrumb -->
	<!-- Page Header -->
	<div class="page-header position-relative">
		<div class="header-title">
			<h1>添加菜品分类</h1>
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
				<div class="widget">
					<div class="widget-header bg-success">
						<span class="widget-caption">添加分类</span>
					</div>
					<div class="widget-body">
						<form class="form" role="form" id="addCateForm"
						action="dishAction!addCategory.action">
							<div class="form-group">
								<input type="text" class="form-control" placeholder="菜品分类"
								  name="menuCategory.categoryName">
							</div>
							<div class="form-group">
								<label>描述</label> 
								<span class="input-icon icon-right"> 
									<textarea class="form-control" rows="10" 
									name="menuCategory.categoryDescription"></textarea> 
									<i class="glyphicon glyphicon-briefcase success"></i>
								</span>
								<p class="help-block">请输入菜品分类描述</p>
							</div>
							<button type="submit" class="btn btn-success">提交</button>
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







