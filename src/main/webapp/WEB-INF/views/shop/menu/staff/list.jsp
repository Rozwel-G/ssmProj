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
		
		<!--fonts
		<link href='http://fonts.useso.com/css?family=Lato:100,300,400,700,900' rel='stylesheet' type='text/css'>
		<link href='http://fonts.useso.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'>
		fonts-->
		<!-- start menu -->
		<link href="/css/memenu.css" rel="stylesheet" type="text/css" media="all" />
		<script type="text/javascript" src="/js/memenu.js"></script>
		<script>$(document).ready(function(){$(".memenu").memenu();});</script>
		<script src="/js/simpleCart.min.js"> </script>
	</head>
	<body>
		<!--header-->
		<div class="header">
			<jsp:include page="/top.jsp"></jsp:include>
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

					<div class=" rsidebar span_1_of_right" style="height:400px">
						<div class="of-left">
							<h3 class="cate of-left-reol">员工列表</h3>
							<div class="of-right-reol">
							<a href="staffInfo?staff=new">添加员工</a>
							</div>
						</div>
						
						<ul class="m-menu">
							<c:forEach items="${requestScope.staffs}" var="a">
								<li> <a href="staffInfoUpdate?staff=${a.staffPhone }">${a.staffPhone }</a><a class="input" onclick="return confirm('你确定要删除吗？');" href="/shop/menu/staff/delete?account=${a}">删除</a></li>
							</c:forEach>
							
						</ul>
					</div>

					<!--initiate accordion-->
					
					<!---->
				</div>
				<div class="clearfix"></div>
				<div class="center">
					<ul class="divide">
						<li id = "sel">
							
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
						num  = (num<=0)?1:num;
						var nums = Math.ceil(items / 10); ;
						num = (num>nums)?nums:num;
						console.log(num);
						var startRow = (num-1)*10+1;
						var endRow = num*10;

						endRow = (endRow>items)?items:endRow;

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
						var tempStr = "<a href=\"#\" onclick=\"goPage("+(num-1)+")\" class=\"tag\"><<</a><a href=\"#\" class=\"";
						if(num==1)
						{
							tempStr+="active";
						}
						
						tempStr+="\" onclick=\"goPage(1)\">1</a>";
						for(var i=1;i<=nums-1;i++)
						{
							tempStr+="<a href=\"#\" onclick=\"goPage("+(i+1)+")\" class=\"";
							if(num==i+1)
								tempStr+="active";
							
							tempStr+="\">"+(i+1)+"</a>";
						}
						tempStr+="<a href=\"#\" onclick=\"goPage("+(num+1)+")\" class=\"tag\">>></a>";
						document.getElementById("sel").innerHTML=tempStr;
					};
				</script>
				<script type="text/javascript">
					window.onload = goPage(1);
				</script>
			<div class="clearfix"></div>
			<jsp:include page="/foot.jsp" flush="true"></jsp:include>
			</div>
		</div>
		
	</body>
</html>
