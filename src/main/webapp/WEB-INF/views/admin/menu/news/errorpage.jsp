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
			
			.h2-title{
				margin: 20px 0px;
			}
			
			.p-content{
				margin: 20px 0px;
			}
			
			.error-container{
				height: 300px;
			}
			
		</style>

	</head>
	<body>
		<!--header-->
		<div class="header">
			<jsp:include page="/top.jsp" flush="true"></jsp:include>

			<div class="container">
				<div class="head-top">
					<div class="logo">
						<a href="/index.html"><img src="/images/logo.png" alt=""></a>
					</div>
					
					<div class=" h_menu4">
						<ul class="memenu skyblue">
							<li><a class="color4" href="/admin/menu/news">新闻列表</a></li>
							<li><a class="color6" href="/admin/menu/news/add">发布新闻</a></li>
						</ul>
					</div>									
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>

		<!--content-->
		<div class="container" style="text-align: center;">
			<div class="error-container">
				<div class="h2-title" >
					<h2>✘出错了✘</h2>
				</div>
				<div class="p-content">
					<p>请检查提交的图片，支持jpg, jpeg, png, gif格式</p>
				</div>
				<div style="text-align:center;">
					<input type="button" class="a-button" onclick="javascript:window.history.back()" value="点击返回上一页面"/> 
				</div>
			</div>
		</div>

		<!--//content-->

		<jsp:include page="/foot.jsp" flush="true"></jsp:include>
	</body>
</html>





