<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%
	String path = request.getContextPath() + "/";
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<base href="<%=basePath%>"/>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<title>无标题文档</title>
	<link href="<%=basePath %>resource/admin/css/style.css" rel="stylesheet" type="text/css" />
	 <link href="<%=basePath %>resource/admin/css/style.css" rel="stylesheet" type="text/css"/>
    <!-- 引入JQuery支持的库 -->
    <script type="text/javascript" src="<%=basePath %>resource/admin/js/jquery.js"></script>
  
</head>
		

<body>
<form action="dingdan/selDd" method="post" rel="page">
<div class="place">
	<span>位置：</span>
	<ul class="placeul">
		<li><a href="#">首页</a></li>
		<li><a href="#">查看订单信息</a></li>
	</ul>
</div>
<div class="formbody">
	<div class="formtitle" style="cursor: pointer;" id="formtitle"><span>条件查询</span></div>
	<ul class="forminfo" style="display: none;" id="forminfo">
		<li>
			<label>商品名</label>
			<input name="sname"  type="text" class="dfinput" placeholder="请输入商品名称" />
		</li>
		<li>
			<label>用户名</label>
			<input name="uname"  type="text" class="dfinput" placeholder="请输入用户名" />
		</li>
		<li>
			<label>&nbsp;</label>
			<input name="" type="submit" class="btn" value="查询"/>
			<input name="" type="reset" class="btn" value="重置"/>
		</li>
	</ul>
</div>

		<table class="imgtable"border = "5" >
			<thead>
			<tr>
				<th>id</th>
				<th>用户名称</th>
				<th>订单编号</th>
				<th>商品名称</th>
				<th>商品单价</th>
				<th>购买数量</th>
				<th>付款金额（元）</th>
				<th>下单时间</th>
				<th>状态</th>
				<th>操作</th>
			</tr>
			</thead>
			<tbody>
		<c:if test="${!empty ddList}">
			<c:forEach items="${ddList}" var="list" varStatus="vs">
			<tr>
				<td>${vs.index+1}</td>
				<td>${list.uname}</td>
				<td>${list.id}000010</td>
				<td>${list.sname}</td>
				<td>${list.sprice}</td>
				<td>${list.number}</td>
				<td>${list.tPrice}</td>
				<td>${list.date}</td>
				<td>
				<font color="red"><c:if test="${list.state==0}">未发货</c:if></font>
				<font color="blue"><c:if test="${list.state==1}">已发货</c:if></font>
				<font color="blue"><c:if test="${list.state==2}">交易完成</c:if></font>
				</td>
				<td>
				<c:if test="${list.state==0}">
					<a href = "dingdan/fahuo?id=${list.id}"><font color="blue">发货</font></a>
				</c:if>
				<c:if test="${list.state==1}"><a href = ""><font color="black">暂无操作</font></a></c:if>
				<c:if test="${list.state==2}"><a href = ""><font color="black">暂无操作</font></a></c:if>
				<c:if test="${list.state==3}"><a href = ""><font color="black">暂无操作</font></a></c:if>
					
				
				</td>	
			</tr>
			</c:forEach>
		</c:if>
		<c:if test="${empty ddList}">
			<tr>
				<td colspan="8" align="center">
					<strong><font color="red">暂时没有数据，请添加</font></strong>
				</td>
			</tr>
		</c:if>
		</tbody>
		</table>
		<div class="rightinfo">
			<div class="tools">
				<ul class="toolbar1">
				</ul>
			</div>
		</div>
	<jsp:include page="/plugins/page/page.jsp"></jsp:include>
</form>

<script type="text/javascript" src="<%=basePath %>resource/admin/jQuery/jquery.js"></script>
<script type="text/javascript">
	/**
	 * 这个使用的单选框选择判断
	 */
	  function deleteUser(){
		alert("删除成功");
		}
	function toUpdate(){
		var id = $("input[name='id']:checked").val();
		if(!id){
			alert("请选择要操作的记录");
			return false;
		}else{
			alert( "您操作的值为："+$("input[name='id']:checked").val())
		}
	}
	$(function(){
		$('.tablelist tbody tr:odd').addClass('odd');
		
		$("#formtitle").click(function(){
			$("#forminfo").slideToggle("slow");
		});
	});
</script>
<script type="text/javascript">
	$(function(){
		$('.imgtable tbody tr:odd').addClass('odd');
	});
    
</script>

</body>

</html>

