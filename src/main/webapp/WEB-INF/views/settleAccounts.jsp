<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/settle" method="post">
		金额：<input type="text" name="price">
		卡号：<input type="text" name="userPhone">
		<input type="hidden" name="_method" value="PUT">
		<input type="submit" name="结算">
	</form>
</body>
</html>