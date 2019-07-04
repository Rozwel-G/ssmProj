<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/login/user" method="post">
		text<input type = "text" name = "telephone"/>
		password<input type = "password" name = "password"/>
		<input type = "submit" name = "提交"/>
	</form>
	<a href="/register/user">注册</a>
	<a href = "/login/shop">商家登录</a>
</body>
</html>