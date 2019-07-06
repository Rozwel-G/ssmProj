<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Products</title>
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
		<link href='http://fonts.useso.com/css?family=Lato:100,300,400,700,900' rel='stylesheet' type='text/css'>
		<link href='http://fonts.useso.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'>
		<!--//fonts-->
		<!-- start menu -->
		<link href="/css/memenu.css" rel="stylesheet" type="text/css" media="all" />
		<script type="text/javascript" src="/js/memenu.js"></script>
		<script>$(document).ready(function(){$(".memenu").memenu();});</script>
		<script src="/js/simpleCart.min.js"> </script>
	</head>
	<body>
		<!--header-->
		<div class="header">
			<div class="header-top">
				<div class="container">
					<div class="search">
						<form>
							<input type="text" value="Search " onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Search';}">
							<input type="submit" value="Go">
						</form>
					</div>
					<div class="header-left">
						<ul>
							<li><a href="viplogin.html">会员登录</a></li>
							<li><a href="register.html">会员注册</a></li>
							<li><a href="shoplogin.html">商家登录</a></li>
							<li><a href="join.html">申请加盟</a></li>
						</ul>
						<div class="clearfix"> </div>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
			<div class="container">
				<div class="head-top">
					<div class="logo">
						<a href="index.html"><img src="/images/logo.png" alt=""></a>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>

		</div>


		<!--content-->
		<!---->
		<div class="product">
			<div class="container">
				<div class="col-md-reol product-price">

					<div class=" rsidebar span_1_of_right" onload="goPage(1)">
						<div class="of-left">
							<h3 class="cate">Categories</h3>
						</div>
						<ul class="m-menu">
							<li class=""><a href="#">Men </a><input type="button" value="删除" /></li>
							<li class=""><a href="#">Women </a><input type="button" name="delete"/></li>
							<li class=""><a href="#">Kids</a><input type="button" name="delete"/></li>
							<li class=""><a href="#">Accesories</a><input type="button" name="delete"/></li>
							<li class=""><a href="#">Shoes</a><input type="button" name="delete"/></li>
							<li><a href="">test</a></li>
							<li><a href="">test2</a></li>
							<li><a href="">test3</a></li>
							<li><a href="">test4</a></li>
							<li><a href="">test5</a></li>
							<c:forEach items="${requestScope.staffs}" var="a">
								<li> <a>${a.staffPhone }</a><input type="button" value="删除" /></li>
							</c:forEach>
							
						</ul>
					</div>

					<!--initiate accordion-->
					
					<!---->
				</div>
				<div class="clearfix"></div>
				<div class="center">
					<ul class="divide">
						<li>
							<a href="#" class="tag"><<</a>
							<a href="#" class="active" onclick="goPage(1)">1</a>
							<a href="#" onclick="goPage(2)">2</a>
							<a href="#" onclick="goPage(3)">3</a>
							<a href="#" onclick="goPage(4)">4</a>
							<a href="#" onclick="goPage(6)">5</a>
							<a href="#" class="tag">>></a>
						</li>
					</ul>	
				</div>
				<script type="text/javascript">
				$(function() {
					var menu_a = $('.divide  > li > a');
					menu_a.click(function(e) {
						e.preventDefault();
						if (!$(this).hasClass('active') && !$(this).hasClass('tag')) {
							menu_a.removeClass('active');
							$(this).addClass('active').next().stop(true, true).slideDown('normal');
						}
					});

				});
				</script>
				<script type="text/javascript">
					function goPage(num){
						var items = $(".m-menu li").length;
						var startRow = (num-1)*5+1;
						var endRow = num*5;


						endRow = (endRow>items)?items:endRow;
						console.log(endRow);

						for(var i=1;i<(items+1);i++)
						{
							var irow = $('.m-menu li').get(i-1);
							if(i>=startRow&&i<=endRow)
							{
								irow.style.display = "block";
							}
							else{
								irow.style.display = "none";
							}

						}
					};
				</script>
				<script type="text/javascript">
					window.onload = goPage(1);
				</script>
			<div class="clearfix"></div>
			<div class="footer-class">
				<p>Copyright &copy; 2019. Haochijie All rights reserved.</p>

			</div>
		</div>
	</body>
</html>
