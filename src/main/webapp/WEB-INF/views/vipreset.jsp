<%@ page language= "java" contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Login</title>
		<link href="/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="/js/jquery.min.js"></script>
		<!-- Custom Theme files -->
		<!--theme-style-->
		<link href="/css/style.css" rel="stylesheet" type="text/css" media="all" />
		<!--//theme-style-->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
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
		<script type="text/javascript" src="js/memenu.js"></script>
		<script>$(document).ready(function(){$(".memenu").memenu();});</script>
		<script src="/js/simpleCart.min.js"> </script>
	</head>
	<body>
		<!--header-->
		<div class="header">
			<jsp:include page="top.jsp" flush="true"></jsp:include>

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
		<div class="container">
			<div class="account">
				<h1>Account</h1>
				<div class="account-pass">
					<div class="col-md-8 account-top">
						<form action = "/user/menu/changepsw" method = "post">
							<div>
								<span>请输入旧密码</span>
								<input type = "password" name = "oldPassword" required/>
							</div>
							<div>
								<span>请输入新密码</span>
								<input id = "psw1" type = "password" name = "firstNewPassword"/>
							</div>
							<div>
								<span>确认新密码</span>
								<input id = "psw2" type = "password" name = "secondNewPassword"/><span id = "tishi">两次密码不一致</span>
							</div>
							<input type="submit" value="Login">
						</form>
					</div>

					<div class="clearfix"> </div>
				</div>
			</div>

		</div>

		<!--//content-->
		<jsp:include page="foot.jsp" flush="true"></jsp:include>
		<script>
		$(document).ready(function(){
			$("#tishi").hide();
			$("#psw2").blur(function(){
				if($("#psw1").val() != $("#psw2").val()){
					$("#tishi").show();
					$("#tijiao").attr("disabled", true);
				}
				else{
					$("#tishi").hide();
					$("#tijiao").attr("disabled", false);
				}
			})
		})
	</script>
	</body>
</html>