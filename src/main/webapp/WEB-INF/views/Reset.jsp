<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/reset" method = "post">
		请输入旧密码:<input type = "password" name = "oldPassword"/><br/>
		请输入新密码:<input type = "password" name = "firstNewPassword"/><br/>
		请再次输入新密码:<input type = "password" name = "secondNewPassword"/><br/>
		<input type = "submit" name = "提交"/>
	</form>
</body>
</html>