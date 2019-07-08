<%@ page language= "java" contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<title>本店商品列表</title>
		<link /href="/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
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
			<jsp:include page="../../top.jsp" flush="true"></jsp:include>

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
		
		<div class="blog">
			<div class="container">
				<h1 style="text-align:center">商品列表</h1>
				<c:forEach items="${requestScope.commodities }" var="c">
				<div class="col-md-6 grid_3">
						<h3>${c.comName }</h3>
						<div style="width:381px; height:381px;background:url(/comPic/${c.comPic}) no-repeat;background-size:100% 100%" ></div>
						<div class="blog-poast-info">
							<ul>
								<li><span><i> </i>${c.comId }</span></li>
								<li><span><i class="comment"> </i>${c.comType }</span></li>
								<li><span><i class="date"> </i>${c.comPrice }元</span></li>
							</ul>
						</div>
						<p>${c.comIntro }</p>
						<div class="button"><a href="/shop/menu/commodity/change/${c.comId }?_method=DELETE">删除</a></div>
					</div>
				</c:forEach>
					<div class="clearfix"> </div>
				 </div>
			</div>
			<div class="center">
					<ul class="divide">
						<li id = "sel">
							
						</li>
					</ul>	
				</div>
		<script type="text/javascript">
					function goPage(num){
						var items = $(".container .col-md-6").length;
						num  = (num<=0)?1:num;
						var nums = Math.ceil(items / 4); ;
						num = (num>nums)?nums:num;
						console.log(num);
						var startRow = (num-1)*4+1;
						var endRow = num*4;

						endRow = (endRow>items)?items:endRow;

						for(var i=1;i<(items+1);i++)
						{
							var irow = $('.container .col-md-6').get(i-1);
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
		<!--//content-->
		<jsp:include page="../../foot.jsp" flush="true"></jsp:include>
	</body>
</html>
