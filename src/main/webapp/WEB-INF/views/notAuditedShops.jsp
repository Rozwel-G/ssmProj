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


	<table>
		<thead>
			<tr>
				<th>申请ID</th>
				<th>商店名</th>
				<th>商店类型</th>
				<th>商店介绍</th>
				<th>省份</th>
				<th>城市</th>
				<th>区/县</th>
				<th>详细地址</th>
				<th>店铺号码</th>
				<th>拥有者称谓</th>
				<th>拥有者姓名</th>
				<th>联系方式</th>
				<th>邮箱</th>

			</tr>
		</thead>
		<tbody>
			<c:forEach items="${requestScope.notAuditedShops }" var="n">
				<tr>
					<td>${n.auditedId }</td>
					<td>${n.shopName }</td>
					<td>${n.shopType}</td>
					<td>${n.shopIntro }</td>
					<td>${n.shopProvince }</td>
					<td>${n.shopCity }</td>
					<td>${n.shopCounty }</td>
					<td>${n.shopDetail }</td>
					<td>${n.shopPhone }</td>
					<td>${n.ownerTitle }</td>
					<td>${n.ownerName }</td>
					<td>${n.ownerPhone }</td>
					<td>${n.ownerEmail }</td>
					<td><form action="/audit/${n.auditedId }">
							<input type="radio" name="result" value="pass" checked="checked">同意 <input
								type="radio" name="result" value="fail">不同意 <input
								type="hidden" name="_method" value="PUT">
								<input type=submit>

						</form></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

</body>
</html>