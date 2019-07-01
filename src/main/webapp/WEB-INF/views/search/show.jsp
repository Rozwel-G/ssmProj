<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>搜索结果</title>
</head>
<body>
	<h1>商铺结果</h1>
	<table>
		<thead>
			<tr>
				<th>商铺名称</th>
				<th>商铺类型</th>
				<th>商铺介绍</th>
				<th>商铺地址</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${requestScope.shops }" var="p">
				<tr>
					<td>${p.shopName }</td>
					<td>${p.shopType }</td>
					<td>${p.shopIntro }</td>
					<td>${p.shopCity } ${ p.shopCounty } ${ p.shopDetail }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<h1>商品结果</h1>
	<table>
		<thead>
			<tr>
				<th>商品名称</th>
				<th>商品类型</th>
				<th>商品价格</th>
				<th>商品介绍</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${requestScope.commodities }" var="p">
				<tr>
					<td>${p.comName }</td>
					<td>${p.comType }</td>
					<td>${p.comPrice }</td>
					<td>${p.comType }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>