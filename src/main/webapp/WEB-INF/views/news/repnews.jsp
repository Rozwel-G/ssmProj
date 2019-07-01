<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>发布新闻</title>
</head>
<body>
	<form action="/news/add" method="post">
		标题：<input type="text" name="title"/><br>
		内容：<input type="text" name="content"/><br>
		<input type="submit" value="提交"/>
	</form>
</body>
</html>