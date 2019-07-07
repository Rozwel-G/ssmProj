<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>checkout</title>
<link href="/css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="/js/jquery.min.js"></script>
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
<link href='http://fonts.useso.com/css?family=Lato:100,300,400,700,900'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.useso.com/css?family=Roboto:400,100,300,500,700,900'
	rel='stylesheet' type='text/css'>
<!--//fonts-->
<!-- start menu -->
<link href="/css/memenu.css" rel="stylesheet" type="text/css"
	media="all" />
<script type="text/javascript" src="/js/memenu.js"></script>
<script>
	$(document).ready(function() {
		$(".memenu").memenu();
	});
</script>
<script src="/js/simpleCart.min.js">
	
</script>

<!--验证  -->
<script
	src="https://static.runoob.com/assets/jquery-validation-1.14.0/lib/jquery.js"></script>
<script
	src="https://static.runoob.com/assets/jquery-validation-1.14.0/dist/jquery.validate.min.js"></script>
<script
	src="https://static.runoob.com/assets/jquery-validation-1.14.0/dist/localization/messages_zh.js"></script>
	<script src="http://www.cnblogs.com/Scripts/jquery.form.js" type="text/javascript"></script>
<script>

jQuery.validator.addMethod("price", function(value, element) {
	var tel = /^(([1-9]\d*)|\d)(\.\d{1,2})?$/;
    return this.optional(element) || (tel.test(value));
}, "格式错误");
jQuery.validator.addMethod("mobile", function(value, element) {
    var length = value.length;
    var mobile =  /^1(3|4|5|6|7|8|9)\d{9}$/
    return this.optional(element) || (length == 11 && mobile.test(value));
}, "手机号码格式错误"); 

	$().ready(function() {
		// 在键盘按下并释放及提交后验证提交表单
		$("#commentForm").validate({
			rules : {
				price : {
					required : true,
					price:true

				},
				userPhone : {
					required : true,
					mobile : true,
 					remote: {
					    url: "/check",     //后台处理程序
					    type: "post",               //数据发送方式
					    data: {                     //要传递的数据
					    	userPhone: function () { return $("#userPhone").val(); },
					    }
					} 
				}
			},
			messages : {
				price : {
					required : "请输入价格",
					price : "请输入正确的金额"

				},
				userPhone : {
					required : "请输入卡号",
					mobile:"电话号码错误",
					remote:"账号不存在"
					
				}
			},
		
		});
	});
	$(function(){
		
		$("form > input[name=userPhone]").blur(function( e ){
			var input = $( "#userPhone" );
			$.get("/checkScore",{userPhone: input.val(), t : new Date().getTime()}, function( data ){
				
					input.next("span").html("(可用积分)："+data).css("color", "black");
		

				
			}, "json");
			
		});
		
	});
</script>
<style>
.error {
	color: red;
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
					<a href="index.html"><img src="/images/logo.png" alt=""></a>
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
							</div></li>
						<li class="grid"><a class="color2" href="#">查询积分记录</a></li>
						<li><a class="color4" href="blog.html">查询消费记录</a></li>
						<li><a class="color6" href="/user/menu/recharge">充值</a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>

	</div>
	<div class="container">
		<div class="account">
			<div class="account-pass">
				<div class="col-md-8 account-top">
					<form action="/checkout" method="post" class="cmxform"
						id="commentForm">
						金额：<input type="text" name="price" id="price"><br/>
						卡号：<input type="text" name="userPhone" id="userPhone"> 
						使用积分抵扣:<span></span>
						<input type="text" name="score" id="score">
						<input type="hidden" name="_method" value="PUT"> 
						<input type="submit"
							name="结算">
					</form>
				</div>

				<div class="clearfix"></div>
			</div>
		</div>
	</div>



	<!--content-->
	<div class="container">
		<div class="clearfix"></div>
	</div>

	<!--//content-->
	<div class="footer">
		<div class="container">
			<div class="footer-top-at">

				<div class="col-md-4 amet-sed">
					<h4>MORE INFO</h4>
					<ul class="nav-bottom">
						<li><a href="#">How to order</a></li>
						<li><a href="#">FAQ</a></li>
						<li><a href="contact.html">Location</a></li>
						<li><a href="#">Shipping</a></li>
						<li><a href="#">Membership</a></li>
					</ul>
				</div>
				<div class="col-md-4 amet-sed ">
					<h4>CONTACT US</h4>

					<p>Contrary to popular belief</p>
					<p>The standard chunk</p>
					<p>office: +12 34 995 0792</p>
					<ul class="social">
						<li><a href="#"><i> </i></a></li>
						<li><a href="#"><i class="twitter"> </i></a></li>
						<li><a href="#"><i class="rss"> </i></a></li>
						<li><a href="#"><i class="gmail"> </i></a></li>

					</ul>
				</div>
				<div class="col-md-4 amet-sed">
					<h4>Newsletter</h4>
					<p>Sign Up to get all news update and promo</p>
					<form>
						<input type="text" value="" onfocus="this.value='';"
							onblur="if (this.value == '') {this.value ='';}"> <input
							type="submit" value="Sign up">
					</form>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="footer-class">
			<p>Copyright &copy; 2019. Haochijie All rights reserved.</p>
		</div>
	</div>
	<c:if test="${param.code eq 0 }">

		<script type="text/javascript">
			alert("支付失败！");
		</script>
	</c:if>
	<c:if test="${param.code eq 1 }">

		<script type="text/javascript">
			alert("支付成功！");
		</script>
	</c:if>
</body>
</html>
