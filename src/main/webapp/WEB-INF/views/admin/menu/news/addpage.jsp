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
		<div class="container">
			<div class="account">
				<h1>发布新闻</h1>
				<div class="account-pass">
					<div class="account-top">
						<form action="/admin/menu/news/addnews" method="post" enctype="multipart/form-data">
							<div>
								<span>新闻标题</span>
								<input type="text" name="title" required>
							</div>
							<div>
								<span>新闻正文</span>
								<div><textarea name="content" style="resize: none; height: 400px;" required></textarea></div>
							</div>
							<div>
								<span>新闻配图</span>
								<input type="file" name="upfile" required/>
							</div>
							<input type="submit" value="点击发布">
						</form>
					</div>

					<div class="clearfix"> </div>
				</div>
			</div>
		</div>

		<!--//content-->

		<jsp:include page="/foot.jsp" flush="true"></jsp:include>
	</body>
</html>





