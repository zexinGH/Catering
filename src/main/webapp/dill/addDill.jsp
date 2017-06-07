<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<s:include value="/header.jsp"></s:include>
<s:include value="/navbar.jsp"></s:include>
<s:include value="/sidebar.jsp"></s:include>

<script type="text/javascript">
 function keyup(){  
	     var quantity = document.getElementById("quantity").value;  
	     if(isNaN(quantity) ||  parseInt(quantity)!=quantity || parseInt(quantity)<1){  
	         quantity = 1;  
	         return;  
	     }  
	     if(quantity>=10){  
	         document.getElementById("quantity").value=quantity.substring(0,quantity.length-1);  
	        alert("商品数量不能大于10");  
	     }  
	 }  
	   
	 /*商品数量+1*/  
	 function numAdd(){  
	     var quantity = document.getElementById("quantity").value;  
	     var num_add = parseInt(quantity)+1;  
	     var price=document.getElementById("price").value;  
	     if(quantity==""){  
	         num_add = 1;  
	     }  
	     if(num_add>=10){  
	         document.getElementById("quantity").value=num_add-1;  
	         alert("商品数量不能大于10");  
	     }else{  
	        document.getElementById("quantity").value=num_add;  
	         var Num=price*num_add;  
	         document.getElementById("totalPrice").innerHTML=Num.toFixed(2);  
	     }  
	 }  
	 /*商品数量-1*/  
	 function numDec(){  
	     var quantity = document.getElementById("quantity").value;  
	     var price=document.getElementById("price").value;  
	     var num_dec = parseInt(quantity)-1;  
	     if(num_dec>0){  
	         document.getElementById("quantity").value=num_dec;  
	         var Num=price*num_dec;  
	          document.getElementById("totalPrice").innerHTML=Num.toFixed(2);  
	     }  
	 }  
	 function show()  
	 {  
	     document.getElementById("totalPrice").innerHTML=3.25*3;  
	 }  

	function showDish(targetId) {

		var target = document.getElementById(targetId);
		// alert(intd);

		if (target.style.display == "none") {
			document.getElementById(targetId).style.display = "";
		} else {
			document.getElementById(targetId).style.display = "none";
		}

	}
</script>
<!-- Page Content -->
<div class="page-content">
	<!-- Page Breadcrumb -->
	<div class="page-breadcrumbs">
		<ul class="breadcrumb">
			<li><i class="fa fa-home"></i> <a href="#">开台点菜管理</a></li>
			<li class="active">开单管理</li>
		</ul>
	</div>
	<!-- /Page Breadcrumb -->
	<!-- Page Header -->
	<div class="page-header position-relative">
		<div class="header-title">
			<h1>开单管理</h1>
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
		<h5 class="row-title">
			<i class="typcn typcn-tag"></i>开台表单
		</h5>

		<div class="row">
			<form class="form-inline" action="dillAction!addDill.action"
				method="post">
				<div class="col-sm-12 col-md-4">
					<div class="well with-header with-footer">
						<div class="header bg-warning">选择桌号</div>
						<p class="text-danger">${deskMessage }</p>
						<table class="table table-hover table-striped table-bordered">
							<thead class="bordered-blueberry">
								<tr class="text-center">
									<td>选号</td>
									<td>容纳人数</td>
								</tr>
							</thead>
							<tbody>
								<s:iterator value="desks">
									<tr class="text-center">

										<div class="control-group">
											
												<td><div class="radio">
													<label> <input name="deskId" type="radio"
														value="<s:property value="id"/>" class="form-control colored-blue" />
														<span class="text"> <s:property value="deskNum" />
														</span>
													</label></div>
												</td>
												<td><div class="radio">
														<label><span><s:property value="capacity" /></span>
														</label>
													</div>
												</td>
											
										</div>
									</tr>
								</s:iterator>
							</tbody>
						</table>


					</div>
				</div>
				<div class="col-xs-12 col-md-8">
					<div class="well with-header with-footer">
						<div class="header bg-palegreen">选择菜肴</div>
						<p class="text-danger">${dishMessage }</p>
						<table class="table table-hover table-striped table-bordered">
							<thead class="bordered-blueberry">
								<tr class="text-center">
									<td>菜类</td>
									<td>菜名</td>
									<td>价格</td>
								</tr>
							</thead>
							<tbody>
								<s:iterator value="categories">
									<s:iterator value="menuDishs">

										<tr>
											<td  class="text-center">
												<div class="checkbox">
													<label><span><s:property value="categoryName" /></span></label>
												</div>
											</td>
											<td>
													<label><input type="checkbox" name="dishIdList"
														value="<s:property value="id"/>" /> <span class="text"
														for="<s:property value="id"/>"> <s:property
																value="dishName" />
													</span> </label>
											
											</td>
											<td  class="text-center">
											<label>￥<s:property value="dishPrice" /></label>
											</td>
										</tr>
									</s:iterator>
								</s:iterator>

							</tbody>
						</table>
					</div>
					<p class="text-danger">${numMessage}</p>
					<div class="form-group">
						<input type="text" class="form-control" name="dillNum"
							placeholder="就餐人数">
					</div>
					<button type="submit" class="btn btn-success">开单</button>
				</div>
		</div>

		</form>
	</div>
</div>

<s:include value="/footer.jsp"></s:include>

