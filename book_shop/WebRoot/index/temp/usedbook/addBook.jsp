<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%
	String path = request.getContextPath() + "/";
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>添加二手书</title>
<link href="<%=basePath%>index/temp/style/all.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath%>index/temp/style/ty.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=basePath %>resource/commons/utils.js"></script>
<script type="text/javascript" src="<%=basePath %>resource/admin/js/jquery.js"></script>
	  <script type="text/javascript">
	  	function seek(){
	  	     $("#seek").submit();
	  	}
	  </script>
</head>
<body>
<div id="xiugai">
	<div class="header">
		<h1 class="fl"><img src="<%=basePath%>index/temp/img/logo.png" alt="" /></h1>
		<a href=""></a>
		<a href=""></a>
		<div class="ss fl">
			<form action="<%=basePath%>web/goods/search" method="post" id="seek" >
				<input  class="fl " type="text" name="sname" id="sname" placeholder="请输入商品名" />
				<a class="fl pl6" href="javascript:void(0);" onclick="seek();">搜索</a>
			</form>
			
		 </div>
		<a href="<%=basePath%>web/user/userZx" class="fl a">退出登录</a> <a href="<%=basePath%>web/goods/home" class="fl a1">返回主页</a> </div>
	<div class="content">
		<div class="left">
			<ul>
				<li><a href="<%=basePath%>index/temp/usedbook/addBook.jsp">添加二手书</a></li>
				<li><a href="<%=basePath%>web/oper/selMyBook">我的二手书</a></li>
				<li><a href="<%=basePath%>web/oper/showUser">个人主页</a></li>
				
			</ul>
		</div>
		<div class="mid">
			<div class="xg">
				<p>添加二手书</p>
			</div>
			<form action="<%=basePath%>upload.do?method=saveMyBook" enctype="multipart/form-data" method="post">
				<label>书名</label>
				<input  type="text" name="sname"  />
				<br />
				<label>价格</label>
				<input type="text" name="price"  />
				<br />
				<label>数量</label>
				<input  type="text" name="number"   />
				<br />
				<label>作者</label>
				<input  type="text" name="writer"   />
				<br />
				<label>出版社</label>
				<input  type="text" name="press"   />
				<br />
				<label>描述</label>
				<input  type="text" name="miaoshu"   />
				<br />
				<label >图片</label>
				<input  type="file" name="photo"   />
				<br />
				<input type="submit"  value="提交"  class="submit" />
				<input type="reset"  value="重置"  class="submit" />
			</form>
		</div>
		<div class="right">
			<div class="top">
				<div class="title">
					<p>我的日历</p>
				</div>
				<div class="con">
					<p><span class="p">26</span><br />
						星期二<br />
						2015年12月8日</p>
				</div>
			</div>
			<div class="top1">
				<div class="title">
					<p>便民服务</p>
				</div>
				<div class="con">
					<ul>
						<li class="li1"><a href="#this">手机</a></li>
						<li class="li2"><a href="#this">点卡</a></li>
						<li class="li3"><a href="#this">机票</a></li>
						<li class="li4"><a href="#this">彩票</a></li>
						<li class="li5"><a href="#this">保险</a></li>
						<li class="li6"><a href="#this">转账</a></li>
						<li class="li7"><a href="#this">还款</a></li>
						<li class="li8"><a href="#this">快递</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<div id="footer">
	<ul>
		<li><a href="gywm.html">关于我们</a><>
		<li><a href="#this">合作伙伴</a><>
		<li><a href="#this">营销中心</a><>
		<li><a href="#this">廉政举报</a><>
		<li><a href="#this">联系客服</a><>
		<li><a href="#this">开放平台</a><>
		<li><a href="#this">诚信英才</a><>
		<li><a href="#this">联系我们</a><>
		<li><a href="#this">网站地图</a><>
		<li><a href="#this">法律声明</a><>
	</ul>
	<div class="copyright">2003-2015 圆桌阅读，All Rights Reserved</div>
</div>
</body>
</html>
