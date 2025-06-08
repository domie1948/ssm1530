<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%
	String path = request.getContextPath() + "/";
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<base href="<%=basePath%>" target="rightFrame"/>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>无标题文档</title>
	<link href="<%=basePath %>resource/admin/css/style.css" rel="stylesheet" type="text/css" />
</head>

<body style="background:#f0f9fd;">

<div class="lefttop"><span></span>管理信息</div>
<dl class="leftmenu">
	<dd>
		<div class="title">
			<span><img src="<%=basePath %>resource/admin/images/leftico01.png" /></span>用户管理
		</div>
		<ul class="menuson">
			<li><cite></cite><a href="web/user/selUser">用户管理</a><i></i></li>
		</ul>   
	</dd>
	<dd>
		<div class="title">
			<span><img src="<%=basePath %>resource/admin/images/leftico01.png"/></span>类别管理
		</div>
		<ul class="menuson">
			<li><cite></cite><a href="shangpin/selLb">类别信息</a><i></i></li>
		</ul> 
	</dd>
	<dd>
		<div class="title">
			<span><img src="<%=basePath %>resource/admin/images/leftico01.png"/></span>图书管理
		</div>
		<ul class="menuson">
			<li><cite></cite><a href="shangpin/selSp">图书信息</a><i></i></li>
		</ul> 
	</dd>
	<dd>
		<div class="title">
			<span><img src="<%=basePath %>resource/admin/images/leftico01.png"/></span>订单管理
		</div>
		<ul class="menuson">
			<li><cite></cite><a href="dingdan/selDd">订单信息</a><i></i></li>
		</ul> 
	</dd>
	<dd>
		<div class="title">
			<span><img src="<%=basePath %>resource/admin/images/leftico01.png" /></span> 评价管理
		</div>
		<ul class="menuson">
			<li><cite></cite><a href="shangpin/selPl">查看用户评价</a><i></i></li>
		</ul>   
	</dd>
	
</dl>

<script type="text/javascript" src="<%=basePath %>plugins/jQuery/jquery.js"></script>
<script type="text/javascript">
$(function(){	
	//导航切换
	$(".menuson li").click(function(){
		$(".menuson li.active").removeClass("active")
		$(this).addClass("active");
	});
	
	$('.title').click(function(){
		var $ul = $(this).next('ul');
		$('dd').find('ul').slideUp();
		if($ul.is(':visible')){
			$(this).next('ul').slideUp();
		}else{
			$(this).next('ul').slideDown();
		}
	});
})	
</script>
</body>
</html>
