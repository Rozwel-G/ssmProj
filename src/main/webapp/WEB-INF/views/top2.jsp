<%@ page language= "java" contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<link href="/css/style.css" rel="stylesheet" type="text/css" media="all" />
		<meta charset="UTF-8">
		<title>top</title>
	</head>
	<body>
		<!-- 无账号登录 -->
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
						<li><a href="/user/login">会员登录</a></li>
						<li><a href="/user/register">会员注册</a></li>
						<li><a href="/shop/login">商家登录</a></li>
						<li><a href="/shop/join">申请加盟</a></li>
					</ul>
					<div class="clearfix"> </div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</body>
</html>
