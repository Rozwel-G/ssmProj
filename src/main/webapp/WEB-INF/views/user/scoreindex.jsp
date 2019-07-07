<%@ page language= "java" contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
	<head>
		<title>管理系统</title>
		<link href="/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="/js/jquery.min.js"></script>
		<!-- Custom Theme files -->
		<!--theme-style-->
		<link href="/css/style.css" rel="stylesheet" type="text/css" media="all" />
		<!--//theme-style-->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="New Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
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
		<!--  
		<link href='http://fonts.useso.com/css?family=Lato:100,300,400,700,900' rel='stylesheet' type='text/css'>
		<link href='http://fonts.useso.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'>
		-->
		<!--//fonts-->
		<!-- start menu -->
		<link href="/css/memenu.css" rel="stylesheet" type="text/css" media="all" />
		<script type="text/javascript" src="/js/memenu.js"></script>
		<script>
			$(document).ready(function() {
				$(".memenu").memenu();
			});
		</script>
		<script src="/js/simpleCart.min.js"> </script>

		<style type="text/css">
			.a-button {
				outline: none;
				padding: 7px 15px;
				color: #FFF;
				cursor: pointer;
				background: #EF5F21;
				border: none;
				width: 100%;
				margin: 1em auto 0;
				transition: 0.5s all;
				-webkit-transition: 0.5s all;
				-o-transition: 0.5s all;
				-moz-transition: 0.5s all;
				-ms-transition: 0.5s all;
				font-size: 1.2em;
				display: block;
			}

			.a-button:hover {
				background-color: black;
				text-decoration: none;
				color: white;
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
						<a href="/index.html"><img src="/images/logo.png" alt=""></a>
					</div>

					<div class=" h_menu4">
						<ul class="memenu skyblue">
						</ul>
					</div>

					<div class="clearfix"> </div>
				</div>
			</div>
		</div>

		<!--content-->
		<div class="container">
			<div class="account" style="width: 242px; display: inline-block;">
				<div style="text-align: center">
					<h1 style=" margin-bottom: 20px;">积分查询</h1>
				</div>
				<div class="account-pass">
					<div class="col-md-8 account-top" style="width: 100%;">
						<div style="text-align:center;"><a href="../scoreLog/today" class="a-button">查询当日积分</a></div>
						<div style="margin-bottom: 20px; text-align:center;"><a href="../scoreLog/total" class="a-button">查询总计积分</a></div>
						<form action="../scoreLog/time" method="post">
							<div>
								<span style="display: inline;">开始日期</span>
								<input type="date" name="begin" required/>
							</div>
							<div>
								<span style="display: inline;">结束日期</span>
								<input type="date" name="end" required/>
							</div>
							<input type="submit" value="点击查询" style="width:100%">
						</form>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>

			<div class="account" style="width: 65%; height: 100%; display: inline-block; float: right;">
				<div style="text-align: center;">
					<img src="/img/shopstatright.jpg" />
				</div>
			</div>

		</div>
<a href="../scoreLog" class="a-button">返回主页</a>
		<!--//content-->

		<jsp:include page="../foot.jsp" flush="true"></jsp:include>
	</body>
</html>
