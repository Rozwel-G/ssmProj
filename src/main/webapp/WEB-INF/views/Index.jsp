<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	welcome:<span>${sessionScope.user.userName } </span>
	<a href = "/reset">修改密码</a>
</body>
</html>