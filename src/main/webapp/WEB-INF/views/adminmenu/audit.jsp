<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>audit</title>
<link href="/css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="/js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="/css/style.css" rel="stylesheet" type="text/css" media="all" />
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="New Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript">
	
	
	
	
	
	
	
	
	
	
	
			addEventListener("load", function() {
				setTimeout(hideURLbar, 0);
			}, false);

			function hideURLbar() {
				window.scrollTo(0, 1);
			}
		










</script>
<!--fonts-->
<link href='http://fonts.useso.com/css?family=Lato:100,300,400,700,900'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.useso.com/css?family=Roboto:400,100,300,500,700,900'
	rel='stylesheet' type='text/css'>
<!--//fonts-->
<!-- start menu -->
<link href="/css/memenu.css" rel="stylesheet" type="text/css"
	media="all" />
<script type="text/javascript" src="/js/memenu.js"></script>
<script>
	$(document).ready(function() {
		$(".memenu").memenu();
	});
</script>
<script src="/js/simpleCart.min.js">
	
</script>

<script type="text/javascript">
	function altRows(id) {
		if (document.getElementsByTagName) {

			var table = document.getElementById(id);
			var rows = table.getElementsByTagName("tr");

			for (i = 0; i < rows.length; i++) {
				if (i % 2 == 0) {
					rows[i].className = "evenrowcolor";
				} else {
					rows[i].className = "oddrowcolor";
				}
			}
		}
	}

	window.onload = function() {
		altRows('alternatecolor');
	}
</script>


<!-- CSS goes in the document HEAD or added to your external stylesheet -->
<style type="text/css">
table.altrowstable {
	font-family: verdana, arial, sans-serif;
	font-size: 11px;
	color: #333333;
	border-width: 1px;
	border-color: #a9c6c9;
	border-collapse: collapse;
}

table.altrowstable th {
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #a9c6c9;
}

table.altrowstable td {
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #a9c6c9;
}

.oddrowcolor {
	background-color: #d4e3e5;
}

.evenrowcolor {
	background-color: #c3dde0;
}
</style>


</head>
<body>
	<!--header-->
	<div class="header">
		<jsp:include page="../top.jsp" flush="true"></jsp:include>
		<div class="container">
			<div class="head-top">
				<div class="logo">
					<a href="index.html"><img src="/images/logo.png" alt=""></a>
				</div>

				<div class=" h_menu4">
					<ul class="memenu skyblue">
						<li class="active grid"><a class="color8" href="index.html">用户</a></li>
						<li><a class="color1" href="#">修改信息</a>
							<div class="mepanel">
								<div class="row">
									<div class="col1">
										<div class="h_nav">
											<ul>
												<li><a href="products.html">修改个人信息</a></li>
											</ul>
										</div>
									</div>
									<div class="col1">
										<div class="h_nav">
											<ul>
												<li><a href="products.html">修改密码</a></li>
											</ul>
										</div>
									</div>
								</div>
							</div></li>
						<li class="grid"><a class="color2" href="#">查询积分记录</a></li>
						<li><a class="color4" href="blog.html">查询消费记录</a></li>
						<li><a class="color6" href="/admin/menu/audit">审核</a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>

	</div>
	<div class="container">
		<div class="account">
			<div class="account-pass">
				<c:if test="${ not empty requestScope.notAuditedShops }">

					<table class="altrowstable" id="alternatecolor">
						<thead>
							<tr>
								<th>申请ID</th>
								<th>商店名</th>
								<th>商店类型</th>
								<th>商店介绍</th>
								<th>省份</th>
								<th>城市</th>
								<th>区/县</th>
								<th>详细地址</th>
								<th>店铺号码</th>
								<th>拥有者称谓</th>
								<th>拥有者姓名</th>
								<th>联系方式</th>
								<th>邮箱</th>
								<th>是否通过审核</th>

							</tr>
						</thead>
						<tbody>
							<c:forEach items="${requestScope.notAuditedShops }" var="n">
								<tr>
									<td>${n.auditedId }</td>
									<td>${n.shopName }</td>
									<td>${n.shopType}</td>
									<td>${n.shopIntro }</td>
									<td>${n.shopProvince }</td>
									<td>${n.shopCity }</td>
									<td>${n.shopCounty }</td>
									<td>${n.shopDetail }</td>
									<td>${n.shopPhone }</td>
									<td>${n.ownerTitle }</td>
									<td>${n.ownerName }</td>
									<td>${n.ownerPhone }</td>
									<td>${n.ownerEmail }</td>
									<td><form action="/audit/${n.auditedId}" method="POST">
											<input type="radio" name="result" value="pass"
												checked="checked">通过 <input type="radio"
												name="result" value="fail">不通过 <input type="hidden"
												name="_method" value="PUT"> <input type=submit>

										</form></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</c:if>

				<c:if test="${empty requestScope.notAuditedShops }">
					<h1>没有待审核的信息！</h1>
				</c:if>



				<div class="clearfix"></div>
			</div>
		</div>
	</div>



	<!--content-->
	<div class="container">
		<div class="clearfix"></div>
	</div>

	<!--//content-->
	<div class="footer">
		<div class="container">
			<div class="footer-top-at">

				<div class="col-md-4 amet-sed">
					<h4>MORE INFO</h4>
					<ul class="nav-bottom">
						<li><a href="#">How to order</a></li>
						<li><a href="#">FAQ</a></li>
						<li><a href="contact.html">Location</a></li>
						<li><a href="#">Shipping</a></li>
						<li><a href="#">Membership</a></li>
					</ul>
				</div>
				<div class="col-md-4 amet-sed ">
					<h4>CONTACT US</h4>

					<p>Contrary to popular belief</p>
					<p>The standard chunk</p>
					<p>office: +12 34 995 0792</p>
					<ul class="social">
						<li><a href="#"><i> </i></a></li>
						<li><a href="#"><i class="twitter"> </i></a></li>
						<li><a href="#"><i class="rss"> </i></a></li>
						<li><a href="#"><i class="gmail"> </i></a></li>

					</ul>
				</div>
				<div class="col-md-4 amet-sed">
					<h4>Newsletter</h4>
					<p>Sign Up to get all news update and promo</p>
					<form>
						<input type="text" value="" onfocus="this.value='';"
							onblur="if (this.value == '') {this.value ='';}"> <input
							type="submit" value="Sign up">
					</form>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="footer-class">
			<p>Copyright &copy; 2019. Haochijie All rights reserved.</p>
		</div>
	</div>
	<c:if test="${param.code eq 100 }">

		<script type="text/javascript">
			alert("操作成功！");
		</script>
	</c:if>
</body>
</html>
