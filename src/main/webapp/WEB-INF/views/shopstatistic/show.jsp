<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>商家流水展示</title>
</head>
<body>
	<h1>总计流水</h1>
	<h2>${requestScope.totalMoney}</h2>
	<h1>具体流水表</h1>
	<table>
		<thead>
			<tr>
				<th>顾客手机号</th>
				<th>时间</th>
				<th>金额</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${requestScope.spendingLogs }" var="p">
				<tr>
					<td>${p.userPhone }</td>
					<td><fmt:formatDate pattern = "yyyy-MM-dd HH:mm"  value = "${p.time }" /></td>
					<td>${p.money }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>