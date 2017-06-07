<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<s:include value="/header.jsp"></s:include>
<body>
    <div class="login-container animated fadeInDown">
        <div class="loginbox bg-white">
        	<div class="loginbox-title"></div>
            <div class="loginbox-social">
            	<div class="social-title ">
                	<h2>餐饮管理系统</h2>
                </div>
            </div>
            <div class="loginbox-or">
                <div class="or-line"></div>
                <div class="or">登录</div>
            </div>
            <form id="loginForm" action="loginAction!login.action" method="post">
	            <div class="loginbox-textbox">
	                <input type="text" class="form-control" placeholder="员工号" name="employee.empNo"/>
	            </div>
	            <div class="loginbox-textbox">
	                <input type="password" class="form-control" placeholder="密码" name="employee.empPassword"/>
	            </div>
	            <div class="loginbox-submit">
	                <input type="submit" class="btn btn-primary btn-block" value="提交">
	            </div>
	            <div class="loginbox-textbox">
	            	<span class="text-danger">
	            		<s:property value="#request.loginMessage"/>
	            		<s:property value="#request.noMessage"/>
	            		<s:property value="#request.passMessage"/>
	            	</span>
	            </div>
            </form>
        </div>
    </div>

    <!--Basic Scripts-->
    <script src="assets/js/jquery-2.0.3.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>

    <!--Beyond Scripts-->
    <script src="assets/js/beyond.js"></script>

    <!--Google Analytics::Demo Only-->
    <script>
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date(); a = s.createElement(o),
            m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
        })(window, document, 'script', 'http://www.google-analytics.com/analytics.js', 'ga');

        ga('create', 'UA-52103994-1', 'auto');
        ga('send', 'pageview');

    </script>
</body>
<!--Body Ends-->
</html>