<%@ page language= "java" contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
	<head>
		<title>搜索结果</title>
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
			.default-card {
				margin: 5px;
			}

			.default-card .default-list-item {
				padding: 10px 0 10px;
				min-height: 145px;
			}

			.default-card .default-list-item .backup-color {
				background-color: #f4f4f4;
			}

			.default-card .default-list-item .list-item-pic {
				position: absolute;
				height: 125px;
				width: 220px;
			}

			.default-card {
				background: #FFF;
				border: 1px solid #E5E5E5;
				border-radius: 4px;
				color: #333;
				font-size: 14px;
				line-height: 20px;
			}

			.default-card .default-list-item .list-item-desc {
				margin-left: 220px;
				padding-left: 20px;
				font-size: 12px;
				color: #666;
			}

			.default-card .default-list-item .list-item-desc .list-item-desc-top {
				position: relative;
				padding-bottom: 10px;
			}

			.default-card .default-list-item .list-item-desc .list-item-desc-top .item-title {
				font-weight: 500;
				font-size: 20px;
				color: #333;
				display: block;
			}


			.default-card .default-list-item .list-item-desc .list-item-desc-top .item-eval-info {
				margin-top: 6px;
			}

			.default-card .default-list-item .list-item-pic span {
				background: #FB6433;
				border-radius: 2px;
				position: absolute;
				line-height: 13px;
				width: 20px;
				margin-left: -3px;
				margin-top: 3px;
				text-align: center;
				font-size: 12px;
				color: #fff;
			}

			.image {
				height: 125px;
				width: 220px;
			}

			.default-card {
				margin: 10px 5px;
			}

			.default-card .default-list-item .list-item-desc .list-item-desc-top .item-site-info {
				margin-top: 6px;
			}

			.default-card .default-list-item .list-item-desc .list-item-desc-top .item-site-info .address-info {
				float: left;
				margin-right: 10px;
			}

			.default-card .default-list-item .list-item-desc .list-item-desc-top .item-site-info .address-info .cate-info {
				float: left;
				margin-right: 10px;
				max-width: 110px;
			}

			.default-card .ellipsis {
				display: block;
				overflow: hidden;
				text-overflow: ellipsis;
				white-space: nowrap;
			}

			.default-card .default-list-item .list-item-desc .list-item-desc-top .item-site-info .address-info .address {
				max-width: 350px;
			}
			
			.shop-title{
				margin: 10px 0px;
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

						</ul>
					</div>


					<div class="clearfix"> </div>
				</div>
			</div>
		</div>


		<!--content-->
		<div class="container">
		<center><br/>
		<h1>搜索结果</h1>		
		<br/></center>
		
		<c:set var="index" value="0" />
		
		<c:forEach items="${requestScope.shops }" var="p">
			<c:set var="index" value="${index+1 }" />
			<div class="default-card account-pass">
				<div class="default-list-item clearfix">
					<a href="/shop/${p.shopId }" class="link list-item-pic backup-color" target="_blank">
						<span>${index}</span><img src="${p.shopPic}"
						 class="image">
					</a>
					<div class="list-item-desc">
						<div class="list-item-desc-top">
							<div class="shop-title">
								<a href="/shop/${p.shopId }" class="link item-title" target="_blank"> ${p.shopName} </a>
							</div>
							<div class="item-site-info clearfix">
								<div class="address-info clearfix">
									<span class="cate-info ellipsis">
										<span title="类型">${p.shopType }</span>
									</span>
									<span title="联系电话" class="address ellipsis">联系电话：${p.shopPhone}</span>
								</div>
							</div>
							<div class="item-site-info clearfix">
								<div class="address-info clearfix">
									<span title="介绍" class="ellipsis">${p.shopIntro}</span>
								</div>
							</div>
							<div class="item-site-info clearfix">
								<div class="address-info clearfix">
									<span class="cate-info ellipsis">
										<span title="市">${p.shopCity }</span>
										<span title="区县">|${p.shopCounty }</span>
									</span>
									<span title="详细地址" class="address ellipsis">${p.shopDetail}</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			
		</c:forEach>	
			
		</div>

		<!--//content-->
		<jsp:include page="/foot.jsp" flush="true"></jsp:include>
	</body>
</html>
