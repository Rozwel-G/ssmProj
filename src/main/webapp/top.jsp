<%@ page language= "java" contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<link href="/css/style.css" rel="stylesheet" type="text/css" media="all" />
		<meta charset="UTF-8">
		<title>top</title>
	</head>
	<body>
		<div class="header-top">
			<div class="container">
				<div class="search">
					<form action="/search" method="GET">
						<input type="text" value=" 美食 " name="keyword" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = '美食';}"  required/>
						<input type="submit" value="搜索" />
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
	</body>
</html>
