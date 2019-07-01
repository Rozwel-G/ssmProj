<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>欢迎来到商家流水统计功能</h1>
	<ul>
		<li> <a href="../shop_statistic/today">当日流水</a> </li>
		<li> <a href="../shop_statistic/total">总共流水</a> </li>
	</ul>
	
	<h4>查询给定日期流水</h4>
	<form action="../shop_statistic/time" Method="post">
		开始日期：<input type="date" name="begin"/><br/>
		结束日期：<input type="date" name="end" /><br/>
		<input type="submit" value="提交" /><br/>
	</form>
</body>
</html>