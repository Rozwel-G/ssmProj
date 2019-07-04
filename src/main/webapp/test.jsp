<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="/shop/addStaffAccount" method="post" enctype="multipart/form-data">
staffPhone<input name="staffPhone"/><br/>
password<input name="staffPassword"/><br/>
<input type="file" name="file" id="file" />
<input type="submit" value="加入">
</form>
</body>
</html>