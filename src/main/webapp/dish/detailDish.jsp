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
			<li><i class="fa fa-home"></i> <a href="#">开台结账管理</a></li>
			<li class="active">菜单一览表</li>
		</ul>
	</div>
	<!-- /Page Breadcrumb -->
	<!-- Page Header -->
	<div class="page-header position-relative">
		<div class="header-title">
			<h1>菜单一览表</h1>
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
		<div class="tab-content tabs-flat">
			<div id="overview" class="tab-pane active">
				<div class="row profile-overview">
					<s:iterator value="categories">
						<h6 class="row-title before-orange">
							<s:property value="categoryName" /></h6>
						<div class="row">
							<s:iterator value="menuDishs">	
								<div class="col-md-offset-1 col-lg-3 col-md-4 col-sm-6 col-xs-12">
									<div class="databox">
										<div class="databox-left no-padding">
											<img src="<s:property value="dishPic" />"
												style="width:70px; height:70px; ">
										</div>
										<div class="databox-right">
											<div class="databox-text darkgray">
											<span class="text-info">
												<s:property value="dishName" /></div>
											</span>
											<div class="databox-text darkgray">
											<s:property value="dishDescription" /></div>
										</div>
									</div>
								</div>
							</s:iterator>	
						</div>
						
					</s:iterator>
				</div>
			</div>
		</div>
	</div>
	<s:include value="/footer.jsp"></s:include>