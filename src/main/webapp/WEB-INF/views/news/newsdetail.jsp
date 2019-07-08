<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>新闻列表</title>
</head>
<body>
	<h2>${requestScope.news.newsTitle }</h2>
	<h4>作者：${requestScope.news.adminPhone }</h4>
	<h5>发布时间：<fmt:formatDate pattern = "yyyy-MM-dd HH:mm"  value = "${requestScope.news.newsTime}" /></h5>
	<p>${requestScope.news.newsContent }</p>
</body>
</html>