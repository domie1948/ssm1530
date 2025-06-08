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
<title>网站首页</title>
<link href="<%=basePath%>index/temp/style/all.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath%>index/temp/style/ty.css" rel="stylesheet" type="text/css" />
<script src="<%=basePath%>index/temp/Scripts/AC_RunActiveContent.js" type="text/javascript"></script>
<script type="text/javascript" src="<%=basePath %>resource/admin/js/jquery.js"></script>
	  <script type="text/javascript">
	  	function seek(){
	  	     $("#seek").submit();
	  	}
	  </script>
</head>
<body>
<div id="header">
	<div class="link">
		 <p class="fl pl8">您好  <font color="blue" size="2">${sessionScope.name}</font>,欢迎来到圆桌阅读</p>
		<%-- <a href="#this" class="fr mr24">加入收藏夹</a> --%>
		 <a href="<%=basePath%>web/oper/selMyGwc" class="fr mr24">购物车</a> 
		 <a href="<%=basePath%>web/oper/showUser" class="fr mr24">个人主页</a> 
		 <a href="<%=basePath%>index/temp/zc.jsp" class="fr mr24">免费注册</a> 
		 <a href="<%=basePath%>index/temp/login.jsp" class="fr mr24">请登录</a> 
	 </div>
	<div class="mid">
		<h1 class="fl"><img src="<%=basePath%>index/temp/img/logo.png"  alt="" /></h1>
		<div class="right fl">
			<div class="ss">
			<form action="<%=basePath%>web/goods/search" method="post" id="seek" >
				<input  class="fl input" type="text" name="sname" id="sname" placeholder="请输入商品名" />
				<a class="fl pl8" href="javascript:void(0);" onclick="seek();">搜索</a>
			</form>
			</div>
		</div>
	</div>
	<div class="menu fl">
		<div class="left">
			<p class="font14">全部商品分类</p>
		</div>
		<ul class="fl">
			<li><a href="<%=basePath%>web/goods/home"><span>网站首页</span></a></li>
			<li><a href="<%=basePath%>web/goods/selUsedBook"><span>二手书商品</span></a></li>
			<li><a href="#this"><span>联系我们</span></a></li>
			<li><a href="<%=basePath%>index/temp/gywm.jsp"><span>关于我们</span></a></li>
			<li><a href="<%=basePath%>web/oper/selMyBook"><span>二手书交易</span></a></li>
		</ul>
	</div>
</div>
<div id="main">
	<div id="banner">
		<ul>
			<c:forEach items="${lbList}" var="list" >
				<li class="li1"><a href="<%=basePath%>web/goods/selWebSp?id=${list.id}">${list.mname}</a></li>
			</c:forEach>
		</ul>
		<div class="banner">
		<img src="<%=basePath%>index/temp/img/pit_show1.jpg" alt="" width="95%" hight="60%"/>
		</div>
		<div class="right">
			<div class="tj">
				<div class="tit">
					<h2>今日推荐</h2>
					<h3>每天我们都有新的推荐</h3>
				</div>
				<img src="<%=basePath%>index/temp/img/class_1.jpg" alt="" /> <a href="#this">
				<p>新品上市<br/>
					《纽约时报》仅售800元<br />
					<strong>恒盛旗舰店</strong></p>
				</a> </div>
			<div class="bk pt16" style="clear:both;">
				<div class="tit">
					<h2>圆桌阅读百科</h2>
					<h3>有不懂的问圆桌阅读</h3>
				</div>
				<ul>
					<li><a href="#this">如何选购性价比高的书籍</a></li>
					<li><a href="#this">不喜欢商品该怎么退货</a></li>
					<li><a href="#this">怎么把商品加入购物车</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div id="phb">
		<div class="phb">
			<div class="tit">
				<h2>销售<span >排行榜</span></h2>
				<h3>我们有最好的商品</h3>
			</div>
			<ul>
				<li class="li1">
					<dl>
						<dt class="fl"><img src="<%=basePath%>index/temp/img/class_1.jpg" alt="" width="100%" height="50%" /></dt>
						<dd class="fl">
							<p ><a href="sp.html">【蔡康永推荐】<br/>
								<span>¥59</span></a></p>
						</dd>
					</dl>
				</li>
				<li class="li2">
					<dl>
						<dt class="fl"><img src="<%=basePath%>index/temp/img/class_2.jpg" alt="" /></dt>
						<dd class="fl">
							<p ><a href="sp.html">双语阅读<br/>
								<span>¥49</span></a></p>
						</dd>
					</dl>
				</li>
				<li class="li3">
					<dl>
						<dt class="fl"><img  src="<%=basePath%>index/temp/img/class_3.jpg" alt="" /></dt>
						<dd class="fl">
							<p class="fl"style="clear:both"><a href="sp.html">迪士尼推荐<br/>
								<span>¥59</span></a></p>
						</dd>
					</dl>
				</li>
				<li class="li4"style="clear:both">
					<dl>
						<dt class="fl"><img  src="<%=basePath%>index/temp/img/class_4.jpg" alt="" /></dt>
						<dd class="fl">
							<p class="fl"><a href="sp.html">特种兵学校<br/>
								<span>¥59</span></a></p>
						</dd>
					</dl>
				</li>
				<li class="li5">
					<dl>
						<dt class="fl"><img src="<%=basePath%>index/temp/img/class_5.jpg" alt="" /></dt>
						<dd class="fl">
							<p ><a href="sp.html">长大了<br/>
								<span>¥58</span></a></p>
						</dd>
					</dl>
				</li>
			</ul>
		</div>
		<div  class="xpss">
			<div class="tit">
				<h2><span >新品</span>上市</h2>
				<h3>新品到货，不来看看嘛</h3>
			</div>
			<ul>
				<li>
					<dl>
						<dt> <img src="<%=basePath%>index/temp/img/t.jpg" alt=""	 /> </dt>
						<dd> <a href="sp.html">今天<br />
							<span class="colorlan">¥69</span></a> </dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt> <img src="<%=basePath%>index/temp/img/t1.jpg" alt=""	 /> </dt>
						<dd> <a href="sp.html">酒鬼一家<br />
							<span class="colorlan">¥48</span></a> </dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt> <img src="<%=basePath%>index/temp/img/n.jpg" alt=""	 /> </dt>
						<dd> <a href="sp.html">管理精进指南<br />
							<span class="colorlan">¥59</span></a> </dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt> <img src="<%=basePath%>index/temp/img/x.jpg" alt=""	 /> </dt>
						<dd> <a href="sp.html">寻找时机的人<br />
							<span class="colorlan">¥35</span></a> </dd>
					</dl>
				</li>
				<li style="clear:left">
					<dl>
						<dt> <img src="<%=basePath%>index/temp/img/qk.jpg" alt=""	 /> </dt>
						<dd> <a href="sp.html">Go语言实战<br />
							<span class="colorlan">¥89</span></a> </dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt> <img src="<%=basePath%>index/temp/img/gu.jpg" alt=""	 /> </dt>
						<dd> <a href="sp.html">Excel效率手册<br />
							<span class="colorlan">¥59</span></a> </dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt> <img src="<%=basePath%>index/temp/img/sa.jpg" alt=""	 /> </dt>
						<dd> <a href="sp.html">精进<br />
							<span class="colorlan">¥67</span></a> </dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt> <img src="<%=basePath%>index/temp/img/tao.jpg" alt=""	 /> </dt>
						<dd> <a href="sp.html">如何从新手到大师<br />
							<span class="colorlan">¥59</span></a> </dd>
					</dl>
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
