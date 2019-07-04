<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>用户积分展示</title>
</head>
<body>
	<h1>总计积分</h1>
	<h2>${requestScope.totalScore}</h2>
	<h1>具体积分表</h1>
	<table>
		<thead>
			<tr>
				<th>顾客手机号</th>
				<th>时间</th>
				<th>积分</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${requestScope.scoreLogs }" var="c">
				<tr>
					<td>${c.userPhone }</td>
					<td><fmt:formatDate pattern = "yyyy-MM-dd HH:mm"  value = "${c.scoreLogTime }" /></td>
					<td>${c.scoreLogScore }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>