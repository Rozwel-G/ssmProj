<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="../test.jsp"> 添加员工</a>
	<ul>
		<c:forEach items="${requestScope.staffs}" var="a">
		<li>账号：${a.staffPhone}\密码：${a.staffPassword}<a href ="/shop/delete?account=${a.staffPhone}" name = "account">删除</a></li>	
		</c:forEach>
		<img src="/169057@1559207660@2.png">
	</ul>
	<img  src="/1.jpg">
</body>
</html>