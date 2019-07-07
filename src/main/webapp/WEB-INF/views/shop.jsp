<%@page import="cn.edu.cqu.card.model.User"%>
<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>好吃街</title>
<link href="../css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="../js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="../css/style.css" rel="stylesheet" type="text/css" media="all" />
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
<!-- <link href='http://fonts.useso.com/css?family=Lato:100,300,400,700,900'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.useso.com/css?family=Roboto:400,100,300,500,700,900'
	rel='stylesheet' type='text/css'> -->
<!--//fonts-->
<!-- start menu -->
<link href="../css/memenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="../js/memenu.js"></script>
<script>
	$(document).ready(function() {
		$(".memenu").memenu();
	});
</script>
<script src="../js/simpleCart.min.js">
	
</script>
</head>
<body>
	<!--header-->
	<div class="header">


 		<jsp:include page="top.jsp" flush="true"></jsp:include>
 

		<div class="container">
			<div class="head-top">
				<div class="logo">
					<a href="index.html"><img src="../images/logo.png" alt=""></a>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>

	</div>

	<!--content-->
	<div class="content">
		<div class=" container">
				<div class=" register">
					<h1>商家介紹</h1>

					<div class="col-md-6 register-top-grid">
						<div class="grid-in">
							<div class="col-md-4 grid-top">
								<div class="img-responsive3" style="background: url(../${requestScope.shop.shopPic});background-size: 100%;background-repeat:no-repeat;">
								</div>
							</div>
						</div>
					</div>

					<div class="col-md-6 ">
						</br></br>
						<h2>${requestScope.shop.shopName}</h2>
						<br /><br /><br />
						<h3>简介</h3>
						<br />
						<p>${requestScope.shop.shopIntro}</p>
						<br><br></br>
						<h3>地址</h3>
						<br>
						<p>${requestScope.shop.shopProvince} ${requestScope.shop.shopCity} ${requestScope.shop.shopCounty} ${requestScope.shop.shopDetail}</p>
						<br><br></br>
						<h3>联系电话</h3>
						<br />
						<p>${requestScope.shop.shopPhone}</p>

					</div>

					<div class="clearfix"> </div>

				</div>
			</div>
			<div class="container">
				<div class="content-top">
					<h1>商家美食</h1>
					<center>
					<div class="grid-in">
						<div class="col-md-2 grid-top">
							<div class="img-responsive4"
								style="background: url(../${requestScope.comm1.comPic});background-size: 100%;background-repeat:no-repeat;">
								<a href="/shop/${requestScope.comm1.shopId}"
									class="b-link-stripe b-animate-go  thickbox">
									<div class="b-wrapper">
										<h3 class="b-animate b-from-left    b-delay03 ">
											<p>${requestScope.comm1.comName}</p>
										</h3>
									</div>
									<div class="img-responsive4"></div>
								</a>
								<p>
									<a href="/shop/${requestScope.comm1.shopId}">${requestScope.comm1.comName}</a>
								</p>
							</div>
						</div>

						<div class="col-md-2 grid-top">
							<div class="img-responsive4"
								style="background: url(../${requestScope.comm2.comPic});background-size: 100%;background-repeat:no-repeat;">
								<a href="/shop/${requestScope.comm2.shopId}"
									class="b-link-stripe b-animate-go  thickbox">
									<div class="b-wrapper">
										<h3 class="b-animate b-from-left    b-delay03 ">
											<p>${requestScope.comm2.comName}</p>
										</h3>
									</div>
									<div class="img-responsive4"></div>
								</a>
								<p>
									<a href="/shop/${requestScope.comm2.shopId}">${requestScope.comm2.comName}</a>
								</p>
							</div>
						</div>
						<div class="col-md-2 grid-top">
							<div class="img-responsive4"
								style="background: url(../${requestScope.comm3.comPic});background-size: 100%;background-repeat:no-repeat;">
								<a href="/shop/${requestScope.comm3.shopId}"
									class="b-link-stripe b-animate-go  thickbox">
									<div class="b-wrapper">
										<h3 class="b-animate b-from-left    b-delay03 ">
											<p>${requestScope.comm3.comName}</p>
										</h3>
									</div>
									<div class="img-responsive4"></div>
								</a>
								<p>
									<a href="/shop/${requestScope.comm3.shopId}">${requestScope.comm3.comName}</a>
								</p>
							</div>
						</div>
						<div class="col-md-2 grid-top">
							<div class="img-responsive4"
								style="background: url(../${requestScope.comm4.comPic});background-size: 100%;background-repeat:no-repeat;">
								<a href="/shop/${requestScope.comm4.shopId}"
									class="b-link-stripe b-animate-go  thickbox">
									<div class="b-wrapper">
										<h3 class="b-animate b-from-left    b-delay03 ">
											<p>${requestScope.comm4.comName}</p>
										</h3>
									</div>
									<div class="img-responsive4"></div>
								</a>
								<p>
									<a href="/shop/${requestScope.comm14.shopId}">${requestScope.comm4.comName}</a>
								</p>
							</div>
						</div>

						<div class="col-md-2 grid-top">
							<div class="img-responsive4"
								style="background: url(../${requestScope.comm5.comPic});background-size: 100%;background-repeat:no-repeat;">
								<a href="/shop/${requestScope.comm5.shopId}"
									class="b-link-stripe b-animate-go  thickbox">
									<div class="b-wrapper">
										<h3 class="b-animate b-from-left    b-delay03 ">
											<p>${requestScope.comm5.comName}</p>
										</h3>
									</div>
									<div class="img-responsive4"></div>
								</a>
								<p>
									<a href="/shop/${requestScope.comm5.shopId}">${requestScope.comm5.comName}</a>
								</p>
							</div>
						</div>
						<div class="col-md-2 grid-top">
							<div class="img-responsive4"
								style="background: url(../${requestScope.comm6.comPic});background-size: 100%;background-repeat:no-repeat;">
								<a href="/shop/${requestScope.comm6.shopId}"
									class="b-link-stripe b-animate-go  thickbox">
									<div class="b-wrapper">
										<h3 class="b-animate b-from-left    b-delay03 ">
											<p>${requestScope.comm6.comName}</p>
										</h3>
									</div>
									<div class="img-responsive4"></div>
								</a>
								<p>
									<a href="/shop/${requestScope.comm6.shopId}">${requestScope.comm6.comName}</a>
								</p>
							</div>
						</div>						
						<div class="clearfix"></div>
					</div>
				</center>
				<br />
				</div>
			</div>
		<!---->
		<div class="content-bottom"></div>
	</div>
	<jsp:include page="foot.jsp" flush="true"></jsp:include>

</body>
</html>
