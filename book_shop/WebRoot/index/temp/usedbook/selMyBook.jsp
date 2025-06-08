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
<link href="<%=basePath%>index/temp/style/all.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath%>index/temp/style/ty.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=basePath %>resource/admin/js/jquery.js"></script>
	  <script type="text/javascript">
	  	function seek(){
	  	     $("#seek").submit();
	  	}
	  </script>
<title>我的二手书</title>
</head>
<body>
<div id="xiugai">
	<div class="header">
		<h1 class="fl"><img src="<%=basePath%>index/temp/img/logo.png" alt="" /></h1>
		<a href="grzy.html"></a><a href="xiugai.html"></a>
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
				<li><a href="<%=basePath%>web/user/selMyBook">我的二手书</a></li>
				<li><a href="<%=basePath%>web/oper/showUser">个人主页</a></li>
				
			</ul>
		</div>
		<div class="mid2">
			<div class="xg1">我的二手书</div>
			<ul>
				<li>
					<table cellpadding="0" cellspacing="0">
						<tr style="height:24px">
							<td style="border-right:none">图片</td>
							<td style="border-right:none">书名</td>
							<td style="border-right:none">价格</td>
							<td style="border-right:none">数量</td>
							<td style="border-right:none">作者</td>
							<td style="border-right:none">出版社</td>
							<td style="border-right:none">描述</td>
							<td >操作</td>
						</tr>
						
					<c:if test="${!empty selectMybook}">
						<c:forEach items="${selectMybook}" var="list" >
						<tr>
							<td style="border-right:none"><img src="<%=basePath%>image/${list.photo}" width="80" height="50" alt="" /></td>
							<td style="border-right:none">${list.sname}</td>
							<td style="border-right:none">${list.price}</td>
							<td style="border-right:none">${list.number}</td>
							<td style="border-right:none">${list.writer}</td>
							<td style="border-right:none">${list.press}</td>
							<td style="border-right:none">${list.miaoshu}</td>
							<td>
				                 <a href="<%=basePath%>web/user/deleteMyBook?id=${list.id}" >删除</a>
							</td>
						</tr>
						</c:forEach>
				  </c:if>
			      <c:if test="${empty selectMybook}">
					<tr>
						<td colspan="8" align="center">
							<strong><font color="red">暂时没有信息</font></strong>
						</td>
					</tr>
				   </c:if>
					</table>
					<div class="xg2">
						<a href="<%=basePath%>index/temp/usedbook/addBook.jsp" class="fl">添加二手书信息</a>
					</div>
				</li>
			</ul>
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
