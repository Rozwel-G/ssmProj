<%@ page language= "java" contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
		<meta charset="UTF-8">
		<title>Login</title>
	</head>
	<body>
		<!-- 已登录账号判断 -->
		<% if(session.getAttribute("user")==null){%>
			<jsp:include page="top2.jsp" flush="true"></jsp:include>
		<%}else {%>
			<jsp:include page="top3.jsp" flush="true"></jsp:include>
		<%} %> 

	</body>
</html>
