<%@ page language= "java" contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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

			table {
				*border-collapse: collapse;
				/* IE7 and lower */
				border-spacing: 0;
				width: 100%;

				font-family: 'trebuchet MS', 'Lucida sans', Arial;
				font-size: 14px;
				color: #444;
			}

			/*========bordered table========*/
			.bordered {
				border: solid #ccc 1px;
				-moz-border-radius: 6px;
				-webkit-border-radius: 6px;
				border-radius: 6px;
				-webkit-box-shadow: 0 1px 1px #ccc;
				-moz-box-shadow: 0 1px 1px #ccc;
				box-shadow: 0 1px 1px #ccc;
			}

			.bordered tr {
				-o-transition: all 0.1s ease-in-out;
				-webkit-transition: all 0.1s ease-in-out;
				-moz-transition: all 0.1s ease-in-out;
				-ms-transition: all 0.1s ease-in-out;
				transition: all 0.1s ease-in-out;
			}

			.bordered .highlight,
			.bordered tr:hover {
				background: #fbf8e9;
			}

			.bordered td,
			.bordered th {
				border-left: 1px solid #ccc;
				border-top: 1px solid #ccc;
				padding: 10px;
				text-align: left;
			}

			.bordered th {
				background-color: #dce9f9;
				background-image: -webkit-gradient(linear, left top, left bottom, from(#ebf3fc), to(#dce9f9));
				background-image: -webkit-linear-gradient(top, #ebf3fc, #dce9f9);
				background-image: -moz-linear-gradient(top, #ebf3fc, #dce9f9);
				background-image: -ms-linear-gradient(top, #ebf3fc, #dce9f9);
				background-image: -o-linear-gradient(top, #ebf3fc, #dce9f9);
				background-image: linear-gradient(top, #ebf3fc, #dce9f9);
				filter: progid:DXImageTransform.Microsoft.gradient(GradientType=0, startColorstr=#ebf3fc, endColorstr=#dce9f9);
				-ms-filter: "progid:DXImageTransform.Microsoft.gradient (GradientType=0, startColorstr=#ebf3fc, endColorstr=#dce9f9)";
				-webkit-box-shadow: 0 1px 0 rgba(255, 255, 255, .8) inset;
				-moz-box-shadow: 0 1px 0 rgba(255, 255, 255, .8) inset;
				box-shadow: 0 1px 0 rgba(255, 255, 255, .8) inset;
				border-top: none;
				text-shadow: 0 1px 0 rgba(255, 255, 255, .5);
			}

			.bordered td:first-child,
			.bordered th:first-child {
				border-left: none;
			}

			.bordered th:first-child {
				-moz-border-radius: 6px 0 0 0;
				-webkit-border-radius: 6px 0 0 0;
				border-radius: 6px 0 0 0;
			}

			.bordered th:last-child {
				-moz-border-radius: 0 6px 0 0;
				-webkit-border-radius: 0 6px 0 0;
				border-radius: 0 6px 0 0;
			}

			.bordered tr:last-child td:first-child {
				-moz-border-radius: 0 0 0 6px;
				-webkit-border-radius: 0 0 0 6px;
				border-radius: 0 0 0 6px;
			}

			.bordered tr:last-child td:last-child {
				-moz-border-radius: 0 0 6px 0;
				-webkit-border-radius: 0 0 6px 0;
				border-radius: 0 0 6px 0;
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
					<h1 style=" margin-bottom: 20px;">消费查询</h1>
				</div>
				<div class="account-pass">
					<div class="col-md-8 account-top" style="width: 100%;">
						<div style="text-align:center;"><a href="../spendingLog/today" class="a-button">查询当日消费</a></div>
						<div style="margin-bottom: 20px; text-align:center;"><a href="../spendingLog/total" class="a-button">查询总计消费</a></div>
						<form action="../spendingLog/time" method="post">
							<div>
								<span style="display: inline;">开始日期</span>
								<input type="date" name="begin" />
							</div>
							<div>
								<span style="display: inline;">结束日期</span>
								<input type="date" name="end" />
							</div>
							<input type="submit" value="点击查询" style="width:100%">
						</form>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>

			<div class="account" style="width: 65%; display: inline-block; float: right;">
				<div style="margin-top: 15px; margin-bottom: 70px; text-align: center;">
					<h2>金额总计： ${requestScope.totalMoney}</h2>	
				</div>
				<div>
					<table class="bordered">
						<thead>
							<tr>
								<th>用户手机号</th>
								<th>商店名称</th>
								<th>消费时间</th>
								<th>消费金额</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${requestScope.spendingLogs}" var="s">
								<tr>
									<td>${s.userPhone }</td>
									<td>${s.shop.shopName }</td>
									<td>
										<fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${s.time }" />
									</td>
									<td>${s.money }元</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>

		</div>
<a href="../scoreLog" class="a-button">返回主页</a>
		<!--//content-->

		<jsp:include page="../foot.jsp" flush="true"></jsp:include>
	</body>
</html>
