<%@ page language= "java" contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Login</title>
		<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="js/jquery.min.js"></script>
		<!-- Custom Theme files -->
		<!--theme-style-->
		<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
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
		<link href='http://fonts.useso.com/css?family=Lato:100,300,400,700,900' rel='stylesheet' type='text/css'>
		<link href='http://fonts.useso.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'>
		<!--//fonts-->
		<!-- start menu -->
		<link href="css/memenu.css" rel="stylesheet" type="text/css" media="all" />
		<script type="text/javascript" src="js/memenu.js"></script>
		<script>
			$(document).ready(function() {
				$(".memenu").memenu();
			});
		</script>
		<script src="js/simpleCart.min.js"> </script>
	</head>
	<body>
		<!--header-->
		<div class="header">
			<jsp:include page="top.jsp" flush="true"></jsp:include>
			<div class="container">
				<div class="head-top">
					<div class="logo">
						<a href="index.html"><img src="images/logo.png" alt=""></a>
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
								</div>
							</li>
							<li class="grid"><a class="color2" href="#">查询积分记录</a></li>
							<li><a class="color4" href="blog.html">查询消费记录</a></li>
							<li><a class="color6" href="contact.html">充值</a></li>
						</ul>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>

		</div>


		<!--content-->
		<div class="container">
			<div class="clearfix">
			</div>
		</div>

		<!--//content-->
		<jsp:include page="foot.jsp" flush="true"></jsp:include>

	</body>
</html>
