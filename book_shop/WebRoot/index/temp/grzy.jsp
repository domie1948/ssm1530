<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%
	String path = request.getContextPath() + "/";
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>个人主页</title>
<link href="<%=basePath%>index/temp/style/all.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath%>index/temp/style/ty.css" rel="stylesheet" type="text/css" />
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
		<a href="grzy.html"></a><a href="<%=basePath%>index/temp/xiugai.jsp"></a>
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
				<li><a href="<%=basePath%>web/oper/selMyInfo">我的信息</a></li>
				<li><a href="<%=basePath%>web/oper/selMyGwc">我的购物车</a></li>
				<li><a href="<%=basePath%>web/oper/selMyDd">我的订单</a></li>
				<li><a href="<%=basePath%>web/user/selMyAdd">我的收货地址</a></li>
				<li><a href="<%=basePath%>web/oper/selMyBook">我的二手书</a></li>
			</ul>
		</div>
		<div class="mid1">
			<div class="xg">
				<dl>
					<dt class="pl"><img src="<%=basePath%>image/${user.photo}" width="20%" height="20%" alt=""  class="fl"/>
					</dt>
					<dd class="pl">
						<table cellpadding="0" cellspacing="0">
							<tr>
								<td><font color="blue" size="2">${user.name }</font></td>
								<td><a href="<%=basePath%>web/oper/selMyDdXx?state=0">待发货  <span>${countDfh }</span></a></td>
								<td><a href="<%=basePath%>web/oper/selMyDdXx?state=1">待收货  <span>${countDsh }</span></a></td>
								<td><a href="<%=basePath%>web/oper/selMyDdXx?state=2">待评价  <span>${countDpj}</span></a></td>
							</tr>
						</table>
					</dd>
				</dl>
			</div>
			<div class="xg1">猜你喜欢</div>
			<ul>
				<li>
					<dl>
						<dt><img src="<%=basePath%>index/temp/img/x.jpg" alt="" /></dt>
						<dd><a href="<%=basePath%>index/temp/sp.jsp"><span>¥199</span><br />
							寻找时机的人</a></dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt><img src="<%=basePath%>index/temp/img/mei.jpg" alt="" /></dt>
						<dd><a href="sp.html"><span>¥89</span><br />
							高效能人士</a></dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt><img src="<%=basePath%>index/temp/img/tao.jpg" alt="" /></dt>
						<dd><a href="sp.html"><span>¥1399</span><br />
							如何从新手到大师</a></dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt><img src="<%=basePath%>index/temp/img/y.jpg" alt="" /></dt>
						<dd><a href="sp.html"><span>¥66</span><br />
							我的小小忧伤</a></dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt><img src="<%=basePath%>index/temp/img/d.jpg" alt="" /></dt>
						<dd><a href="sp.html"><span>¥1399</span><br />
							家庭教育</a></dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt><img src="<%=basePath%>index/temp/img/brand1.jpg" alt="" /></dt>
						<dd><a href="sp.html"><span>¥1399</span><br />
							从你的全世界路过</a></dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt><img src="<%=basePath%>index/temp/img/brand5.jpg" alt="" /></dt>
						<dd><a href="sp.html"><span>¥1399</span><br />
							爱你</dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt><img src="<%=basePath%>index/temp/img/h.jpg" alt="" /></dt>
						<dd><a href="sp.html"><span>¥1399</span><br />
							活着</a></dd>
					</dl>
				</li>
			</ul>
		</div>
		<div class="right">
			<div class="top">
				<div class="title">
					<p>我的日历</p>
				</div>
				<div class="con">
					<p><span class="p">19</span><br />
						星期一<br />
						2018年3月19日</p>
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
