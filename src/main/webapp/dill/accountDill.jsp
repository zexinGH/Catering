<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<s:include value="/header.jsp"></s:include>
<s:include value="/navbar.jsp"></s:include>
<s:include value="/sidebar.jsp"></s:include>
<!-- Page Content -->
<script type="text/javascript">
          function showChange(){
        	var kehuCash = document.getElementById("kehuCash").value;
        	var realCash = document.getElementById("realCash").value;
            if(kehuCash < realCash-0.0001){
            	alert('金额不够');
            }	
            else{
            	var cash = kehuCash - realCash ;
            	document.getElementById("change").value=cash;
            	document.getElementById("submits").style.display = "block";
            }
            	     
          }
    
</script>
<div class="page-content">
	<!-- Page Breadcrumb -->
	<div class="page-breadcrumbs">
		<ul class="breadcrumb">
			<li><i class="fa fa-home"></i> <a href="#">系统主界面</a></li>
			<li class="active">开单管理</li>
			<li class="active">开单结账</li>
		</ul>
	</div>
	<!-- /Page Breadcrumb -->
	<!-- Page Header -->
	<div class="page-header position-relative">
		<div class="header-title">
			<h1>开单结账</h1>
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
		<div class="row pricing-container">
			<div class="col-md-offset-2 col-xs-12 col-sm-6 col-md-6">
				<form id="accountForm" action="dillAction!accountDill.action" method="post"
				 class="form-horizontal">
				<div class="plan">
					<div class="header bordered-yellow">
						单号：<s:property value="orderForm.orderNumber"/>
					</div>
					<div class="price yellow">
						￥<s:property value="orderForm.orderPayment"/>
					</div>
					<div class="monthly">
						<s:property value="orderForm.dateCreated"/>
					</div>
					<ul class="col-md-6">
						<s:iterator value="dishes">
			  			    <li><s:property value="dishName"/>
			  			    	<b>￥<s:property value="dishPrice"/></b>
			  			    </li>   
			  		     </s:iterator>
					</ul>
					<ul class="col-md-6">
						<li class="text-left">
							<div class="form-group">
							    <label class="col-sm-4 control-label">应收金额：</label>
							    <div class="col-sm-4">
							      <input type="text" class="form-control" id="realCash" name="realCash"
							       disabled value="<s:property value="orderForm.orderPayment"/>"/>
							    </div>
							</div>
						</li>
						<li class="text-left">
							<div class="form-group">
							    <label class="col-sm-4 control-label">实收金额：</label>
							    <div class="col-sm-4">
							      <input type="text" class="form-control" id="kehuCash" 
							      name="dillCash" />
							      <p class="text-danger small"><s:property value="message"/></p>
							    </div>
							    <input class="btn" type="button" value="找零" onclick="showChange()"/>
							</div>						
						</li>
						<li class="text-left">
							<div class="form-group">
							    <label class="col-sm-4 control-label">找回金额：</label>
							    <div class="col-sm-4">
							      <input type="text" class="form-control" name="dillChange"
							      disabled id="change" value="0.00"/>
							    </div>
							</div>						
						</li>
						<button type="submit" class="btn signup bg-red">结算</button>
					</ul>
					
				</div>
				</form>
			</div>

		</div>
	</div>

<s:include value="/footer.jsp"></s:include>
    