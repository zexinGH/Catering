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
			<li><i class="fa fa-home"></i> <a>菜品信息维护</a></li>
			<li class="active">菜品管理</li>
			<li class="active">修改菜品信息</li>
		</ul>
	</div>
	<!-- /Page Breadcrumb -->
	<!-- Page Header -->
	<div class="page-header position-relative">
		<div class="header-title">
			<h1>修改菜品信息</h1>
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
					<div class="widget-header bordered-bottom bordered-success">
						<span class="col-sm-6 widget-caption">请编辑菜品信息</span>
						<span class="col-sm-6 widget-caption text-success">
							<s:property value="message"/>
						</span>
					</div>
					<div class="widget-body">
						<div id="horizontal-form">
							<form class="form-horizontal" role="form" method="post" 
								action="dishAction!modifyDish.action">
								<div class="form-group">
									<label class="col-sm-2 control-label no-padding-right">所属分类</label>
									<div class="col-sm-10">
										<span class="input-icon icon-right"> 
											<input type="text" class="form-control"
											value="<s:property value="menuDish.menuCategory.categoryName"/>"/> 
										</span>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-2 control-label no-padding-right">选择分类</label>
									<div class="col-sm-10">
										<span class="input-icon icon-right">
											<s:select list="categories" name="categoryId" 
											listKey="id" id="roleInput"
											listValue="categoryName" class="form-control" /> 
										</span>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-2 control-label no-padding-right">菜品名称</label>
									<div class="col-sm-10">
										<span class="input-icon icon-right"> 
											<input type="text" class="form-control" 
											name="menuDish.dishName"
											value="<s:property value="menuDish.dishName"/>"/> 
										</span>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-2 control-label no-padding-right">价格</label>
									<div class="col-sm-10">
										<span class="input-icon icon-right">
											<input type="text" class="form-control"
											name="menuDish.dishPrice"
											value="<s:property value="menuDish.dishPrice"/>"/>
										</span>
									</div>
								</div>
								
								<div class="form-group">
									<label class="col-sm-2 control-label no-padding-right">描述</label>
									<div class="col-sm-10">
										<span class="input-icon icon-right"> 
											<textarea type="text" class="form-control" rows="10" 
											name="menuDish.dishDescription"><s:property value="menuDish.dishDescription"/>
											</textarea>
										</span>
									</div>
								</div>
								
								<div class="form-group">
                                    <div class="col-sm-offset-2 col-sm-10">
                                    	<button type="submit" class="btn btn-success" 
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







