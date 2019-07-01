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
	<table>
		<thead>
			<tr>
				<th>商品编号</th>
				<th>商品名称</th>
				<th>商品类型</th>
				<th>商品价格</th>
				<th>商品图片</th>
				<th>商品介绍</th>
				<th>操作</th>
			</tr>
		</thead>

		<tbody>
		<c:forEach items="${requestScope.commodities }" var="c">
		<tr>
			<td>${c.comId }</td>
			<td>${c.comName }</td>
			<td>${c.comType }</td>
			<td>${c.comPrice }</td>
			<td>${c.comPic }</td>
			<td>${c.comIntro }</td>
			<td><a href="/comList/${c.comId }?_method=DELETE">删除</a></td>
		</tr>
		</c:forEach>
		</tbody>
	</table>
</body>
</html>