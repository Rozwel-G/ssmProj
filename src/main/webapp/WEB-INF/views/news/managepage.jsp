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
	<table>
		<thead>
			<tr>
				<th>标题</th>
				<th>发帖人</th>
				<th>时间</th>
				<th>操作<th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${requestScope.news }" var="p">
				<tr>
					<td>${p.newsTitle }</td>
					<td>${p.adminPhone }</td>
					<td>
					<fmt:formatDate pattern = "yyyy-MM-dd HH:mm"  value = "${p.newsTime}" />
					</td>
					<td><a href = "/news/view/${p.newsId}">查看</a> | 
						<a href = "/news/manage/${p.newsId }?_method=DELETE">删除</a> | 
						<a href = "/news/manage/edit/${p.newsId }">修改</a>
					 </td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>