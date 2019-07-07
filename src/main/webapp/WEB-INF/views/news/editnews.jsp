<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/news/manage/update" method="post">
		<input type="hidden" name="_method" value="PUT"/>
		<input type="hidden" name="newsId" value="${requestScope.news.newsId} "/>
		标题：<input type="text" name="newsTitle" value="${news.newsTitle }" /><br>
		内容：<textarea name="newsContent" rows="10" cols="20">${news.newsContent }</textarea><br/>
		<input type="submit" value="提交"/>
	</form>
</body>
</html>