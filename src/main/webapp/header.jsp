<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title><s:property value="title"/></title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta name="description" content="Dashboard" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link rel="shortcut icon" href="assets/img/catering.png" type="image/x-icon">

	<!--Basic Styles-->
	<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
	<link id="bootstrap-rtl-link" href="" rel="stylesheet" />
	<link href="assets/css/font-awesome.min.css" rel="stylesheet" />
	<link href="assets/css/weather-icons.min.css" rel="stylesheet" />

	<!--Beyond styles-->
	<link id="beyond-link" href="assets/css/beyond.min.css" rel="stylesheet" type="text/css" />
	<link href="assets/css/demo.min.css" rel="stylesheet" />
	<link href="assets/css/typicons.min.css" rel="stylesheet" />
	<link href="assets/css/animate.min.css" rel="stylesheet" />
	<link rel="stylesheet" href="assets/css/cropper/cropper.min.css" >
	<link rel="stylesheet" href="assets/css/sitelogo/sitelogo.css">
	<link id="skin-link" href="" rel="stylesheet" type="text/css" />

	<!--Skin Script: Place this script in head to load scripts for skins and rtl support-->
	<script src="assets/js/skins.min.js"></script>

  </head>

