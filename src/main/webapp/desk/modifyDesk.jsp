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
			<li class="active">编辑桌台信息</li>
		</ul>
	</div>
	<!-- /Page Breadcrumb -->
	<!-- Page Header -->
	<div class="page-header position-relative">
		<div class="header-title">
			<h1>编辑桌台信息</h1>
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
					<div class="widget-header bordered-bottom bordered-warning">
						<span class="col-sm-6 widget-caption">编辑桌台信息</span>
						<span class="col-sm-6 widget-caption text-success">
							<s:property value="message"/>
						</span>
					</div>
					<div class="widget-body">
						<div id="horizontal-form">
							<form class="form-horizontal" role="form" method="post" 
								action="deskAction!modifyDesk.action">								
								<div class="form-group">
									<label class="col-sm-2 control-label no-padding-right">桌台编号</label>
									<div class="col-sm-10">
										<span class="input-icon icon-right"> 
											<input type="text" class="form-control" 
											name="desk.deskNum"
											value="<s:property value="desk.deskNum"/>"> 											
										</span>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-2 control-label no-padding-right">桌台类型</label>
									<div class="col-sm-10">
										<span class="input-icon icon-right">
											<s:select list="#{'':'请选择分类','包间':'包间','大厅':'大厅'}" 
											name="desk.deskType" 
									    	id="typeInput" class="form-control" />
										</span>
									</div>
								</div>
								
								<div class="form-group">
									<label class="col-sm-2 control-label no-padding-right">具体位置</label>
									<div class="col-sm-10">
										<span class="input-icon icon-right"> 
											<input type="text" class="form-control"
											name="desk.position"
											value="<s:property value="desk.position"/>"/> 						
										</span>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-2 control-label no-padding-right">容纳人数</label>
									<div class="col-sm-10">
										<span class="input-icon icon-right"> 
											<input type="text" class="form-control" 
											name="desk.capacity"
											value="<s:property value="desk.capacity"/>"/>
										</span>	
									</div>
								</div>								
								<div class="form-group">
                                    <div class="col-sm-offset-2 col-sm-10">
                                    	<button type="submit" class="btn btn-warning" 
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







