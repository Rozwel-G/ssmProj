<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>好吃街</title>
<link href="/css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<!-- <script src="js/jquery.min.js"></script>-->
<script src="https://cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
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
<!-- <link href='http://fonts.useso.com/css?family=Lato:100,300,400,700,900'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.useso.com/css?family=Roboto:400,100,300,500,700,900'
	rel='stylesheet' type='text/css'> -->
<!--//fonts-->
<!-- start menu -->
<link href="/css/memenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="/js/memenu.js"></script>
<script>
	$(document).ready(function() {
		$(".memenu").memenu();
	});
</script>
<script src="/js/simpleCart.min.js">
	
</script>
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
				<div class="clearfix"></div>
			</div>
		</div>

	</div>

	<div class="banner">
		<div class="container2">
			<script src="js/responsiveslides.min.js"></script>
			<script>
				$(function() {
					$("#slider").responsiveSlides({
						auto : true,
						nav : true,
						speed : 500,
						namespace : "callbacks",
						pager : true,
					});
				});
			</script>
			<div id="top" class="callbacks_container">
				<ul class="rslides" id="slider">
					<li>
						<div class="banner"
							style="background: url(${requestScope.news1.newsPic}) no-repeat; background-size: cover">
							<div class="banner-text">
								<h3>${requestScope.news1.newsTitle}</h3>
								<p>${requestScope.news1.newsContent}</p>
								<a href="/news/view/${requestScope.news1.newsId}.html">了解更多</a>
							</div>
						</div>
					</li>
					<li>
						<div class="banner"
							style="background: url(${requestScope.news2.newsPic}) no-repeat; background-size: cover">
							<div class="banner-text">
								<h3>${requestScope.news2.newsTitle}</h3>
								<p>${requestScope.news2.newsContent}</p>
								<a href="/news/view/${requestScope.news2.newsId}.html">了解更多</a>
							</div>
						</div>
					</li>
					<li>
						<div class="banner"
							style="background: url(${requestScope.news3.newsPic}) no-repeat; background-size: cover">
							<div class="banner-text">
								<h3>${requestScope.news3.newsTitle}</h3>
								<p>${requestScope.news3.newsContent}</p>
								<a href="/news/view/${requestScope.news3.newsId}.html">了解更多</a>
							</div>
						</div>
					</li>
					<li>
						<div class="banner"
							style="background: url(${requestScope.news4.newsPic}) no-repeat; background-size: cover">
							<div class="banner-text">
								<h3>${requestScope.news4.newsTitle}</h3>
								<p>${requestScope.news4.newsContent}</p>
								<a href="/news/view/${requestScope.news4.newsId}.html">了解更多</a>
							</div>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<!--content-->
	<div class="content">
		<div class="container">
			<div class="content-top">
				<h1>精选商家</h1>
				<center>
					<div class="grid-in">
						<div class="col-md-4 grid-top">
							<div class="img-responsive2"
								style="background: url(${requestScope.shop1.shopPic});background-size: 100%;background-repeat:no-repeat;">
								<a href="/shop/${requestScope.shop1.shopId}"
									class="b-link-stripe b-animate-go  thickbox">
									<div class="b-wrapper">
										<h3 class="b-animate b-from-left    b-delay03 ">
											<span>${requestScope.shop1.shopName}</span>
										</h3>
									</div>
									<div class="img-responsive2"></div>
								</a>
								<p>
									<a href="/shop/${requestScope.shop1.shopId}">${requestScope.shop1.shopName}</a>
								</p>
							</div>
						</div>
						<div class="col-md-4 grid-top">
							<div class="img-responsive2"
								style="background: url(${requestScope.shop2.shopPic});background-size: 100%;background-repeat:no-repeat;">
								<a href="/shop/${requestScope.shop2.shopId}"
									class="b-link-stripe b-animate-go  thickbox">
									<div class="b-wrapper">
										<h3 class="b-animate b-from-left    b-delay03 ">
											<span>${requestScope.shop2.shopName}</span>
										</h3>
									</div>
									<div class="img-responsive2"></div>
								</a>
								<p>
									<a href="/shop/${requestScope.shop2.shopId}">${requestScope.shop2.shopName}</a>
								</p>
							</div>
						</div>
						<div class="col-md-4 grid-top">
							<div class="img-responsive2"
								style="background: url(${requestScope.shop3.shopPic});background-size: 100%;background-repeat:no-repeat;">
								<a href="/shop/${requestScope.shop3.shopId}"
									class="b-link-stripe b-animate-go  thickbox">
									<div class="b-wrapper">
										<h3 class="b-animate b-from-left    b-delay03 ">
											<span>${requestScope.shop3.shopName}</span>
										</h3>
									</div>
									<div class="img-responsive2"></div>
								</a>
								<p>
									<a href="/shop/${requestScope.shop3.shopId}">${requestScope.shop3.shopName}</a>
								</p>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
				</center>
				<br />
				<center>
					<div class="grid-in">
						<div class="col-md-4 grid-top">
							<div class="img-responsive2"
								style="background: url(${requestScope.shop4.shopPic});background-size: 100%;background-repeat:no-repeat;">
								<a href="/shop/${requestScope.shop4.shopId}"
									class="b-link-stripe b-animate-go  thickbox">
									<div class="b-wrapper">
										<h3 class="b-animate b-from-left    b-delay03 ">
											<span>${requestScope.shop4.shopName}</span>
										</h3>
									</div>
									<div class="img-responsive2"></div>
								</a>
								<p>
									<a href="/shop/${requestScope.shop4.shopId}">${requestScope.shop4.shopName}</a>
								</p>
							</div>
						</div>
						<div class="col-md-4 grid-top">
							<div class="img-responsive2"
								style="background: url(${requestScope.shop5.shopPic});background-size: 100%;background-repeat:no-repeat;">
								<a href="/shop/${requestScope.shop5.shopId}"
									class="b-link-stripe b-animate-go  thickbox">
									<div class="b-wrapper">
										<h3 class="b-animate b-from-left    b-delay03 ">
											<span>${requestScope.shop5.shopName}</span>
										</h3>
									</div>
									<div class="img-responsive2"></div>
								</a>
								<p>
									<a href="/shop/${requestScope.shop5.shopId}">${requestScope.shop5.shopName}</a>
								</p>
							</div>
						</div>
						<div class="col-md-4 grid-top">
							<div class="img-responsive2"
								style="background: url(${requestScope.shop6.shopPic});background-size: 100%;background-repeat:no-repeat;">
								<a href="/shop/${requestScope.shop6.shopId}"
									class="b-link-stripe b-animate-go  thickbox">
									<div class="b-wrapper">
										<h3 class="b-animate b-from-left    b-delay03 ">
											<span>${requestScope.shop6.shopName}</span>
										</h3>
									</div>
									<div class="img-responsive2"></div>
								</a>
								<p>
									<a href="/shop/${requestScope.shop6.shopId}">${requestScope.shop6.shopName}</a>
								</p>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
				</center>
			</div>
			</br>
			<!----->

			<div class="content-top-bottom">
				<h2>精选美食</h2>
				<center>
					<div class="grid-in">
						<div class="col-md-2 grid-top">
							<div class="img-responsive4"
								style="background: url(${requestScope.comm1.comPic});background-size: 100%;background-repeat:no-repeat;">
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
								style="background: url(${requestScope.comm2.comPic});background-size: 100%;background-repeat:no-repeat;">
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
								style="background: url(${requestScope.comm3.comPic});background-size: 100%;background-repeat:no-repeat;">
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
								style="background: url(${requestScope.comm4.comPic});background-size: 100%;background-repeat:no-repeat;">
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
									<a href="/shop/${requestScope.comm4.shopId}">${requestScope.comm4.comName}</a>
								</p>
							</div>
						</div>

						<div class="col-md-2 grid-top">
							<div class="img-responsive4"
								style="background: url(${requestScope.comm5.comPic});background-size: 100%;background-repeat:no-repeat;">
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
								style="background: url(${requestScope.comm6.comPic});background-size: 100%;background-repeat:no-repeat;">
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
				<center>
					<div class="grid-in">
						<div class="col-md-2 grid-top">
							<div class="img-responsive4"
								style="background: url(${requestScope.comm7.comPic});background-size: 100%;background-repeat:no-repeat;">
								<a href="/shop/${requestScope.comm7.shopId}"
									class="b-link-stripe b-animate-go  thickbox">
									<div class="b-wrapper">
										<h3 class="b-animate b-from-left    b-delay03 ">
											<p>${requestScope.comm7.comName}</p>
										</h3>
									</div>
									<div class="img-responsive4"></div>
								</a>
								<p>
									<a href="/shop/${requestScope.comm7.shopId}">${requestScope.comm7.comName}</a>
								</p>
							</div>
						</div>
						<div class="col-md-2 grid-top">
							<div class="img-responsive4"
								style="background: url(${requestScope.comm8.comPic});background-size: 100%;background-repeat:no-repeat;">
								<a href="/shop/${requestScope.comm8.shopId}"
									class="b-link-stripe b-animate-go  thickbox">
									<div class="b-wrapper">
										<h3 class="b-animate b-from-left    b-delay03 ">
											<p>${requestScope.comm8.comName}</p>
										</h3>
									</div>
									<div class="img-responsive4"></div>
								</a>
								<p>
									<a href="/shop/${requestScope.comm8.shopId}">${requestScope.comm8.comName}</a>
								</p>
							</div>
						</div>
						<div class="col-md-2 grid-top">
							<div class="img-responsive4"
								style="background: url(${requestScope.comm9.comPic});background-size: 100%;background-repeat:no-repeat;">
								<a href="/shop/${requestScope.comm9.shopId}"
									class="b-link-stripe b-animate-go  thickbox">
									<div class="b-wrapper">
										<h3 class="b-animate b-from-left    b-delay03 ">
											<p>${requestScope.comm9.comName}</p>
										</h3>
									</div>
									<div class="img-responsive4"></div>
								</a>
								<p>
									<a href="/shop/${requestScope.comm9.shopId}">${requestScope.comm9.comName}</a>
								</p>
							</div>
						</div>

						<div class="col-md-2 grid-top">
							<div class="img-responsive4"
								style="background: url(${requestScope.comm10.comPic});background-size: 100%;background-repeat:no-repeat;">
								<a href="/shop/${requestScope.comm10.shopId}"
									class="b-link-stripe b-animate-go  thickbox">
									<div class="b-wrapper">
										<h3 class="b-animate b-from-left    b-delay03 ">
											<p>${requestScope.comm10.comName}</p>
										</h3>
									</div>
									<div class="img-responsive4"></div>
								</a>
								<p>
									<a href="/shop/${requestScope.comm10.shopId}">${requestScope.comm10.comName}</a>
								</p>
							</div>
						</div>

						<div class="col-md-2 grid-top">
							<div class="img-responsive4"
								style="background: url(${requestScope.comm11.comPic});background-size: 100%;background-repeat:no-repeat;">
								<a href="/shop/${requestScope.comm11.shopId}"
									class="b-link-stripe b-animate-go  thickbox">
									<div class="b-wrapper">
										<h3 class="b-animate b-from-left    b-delay03 ">
											<p>${requestScope.comm11.comName}</p>
										</h3>
									</div>
									<div class="img-responsive4"></div>
								</a>
								<p>
									<a href="/shop/${requestScope.comm11.shopId}">${requestScope.comm11.comName}</a>
								</p>
							</div>
						</div>

						<div class="col-md-2 grid-top">
							<div class="img-responsive4"
								style="background: url(${requestScope.comm12.comPic});background-size: 100%;background-repeat:no-repeat;">
								<a href="/shop/${requestScope.comm12.shopId}"
									class="b-link-stripe b-animate-go  thickbox">
									<div class="b-wrapper">
										<h3 class="b-animate b-from-left    b-delay03 ">
											<p>${requestScope.comm12.comName}</p>
										</h3>
									</div>
									<div class="img-responsive4"></div>
								</a>
								<p>
									<a href="/shop/${requestScope.comm12.shopId}">${requestScope.comm12.comName}</a>
								</p>
							</div>
						</div>

						<div class="clearfix"></div>
					</div>
				</center>
				<div class="clearfix"></div>
			</div>
		</div>
		<!---->
		<div class="content-bottom"></div>
	</div>
	<jsp:include page="foot.jsp" flush="true"></jsp:include>

</body>
</html>
