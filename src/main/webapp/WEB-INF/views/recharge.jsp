<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/recharge" method="post">
		金额：<input type="text" name="money"> 卡号：<input type="text"
			name="userPhone"> <input type="hidden" name="_method"
			value="PUT"> <input type="submit" name="充值" value="充值">
	</form>
</body>
</html>