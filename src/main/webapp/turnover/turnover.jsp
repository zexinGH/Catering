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
			<li><i class="fa fa-home"></i> <a href="#">营业额统计</a></li>
			<li class="active">统计日营业额</li>
		</ul>
	</div>
	<!-- /Page Breadcrumb -->
	<!-- Page Header -->
	<div class="page-header position-relative">
		<div class="header-title">
			<h1>统计日营业额</h1>
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
		<h5 class="row-title before-red">
			<i class="glyphicon glyphicon-time red"></i>Date and Time Pickers
		</h5>
		<div class="row">
			<div class="col-lg-6 col-sm-6 col-xs-12">
				<div class="well with-header">
					<div class="header bordered-pink">Bootstrap Date Picker</div>
					<div>
						<form action="turnoverAction!dayTurnover.action" method="post">
						<div class="input-group">
							<input class="form-control date-picker" id="id-date-picker-1"
								type="text" name="day" data-date-format="yyyy-mm-dd"> <span
								class="input-group-addon"> <i class="fa fa-calendar"></i>
							</span>
						</div>
						<div class="input-group">
							<button type="submit" class="btn">提交</button>
						</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
	<s:include value="/footer.jsp"></s:include>