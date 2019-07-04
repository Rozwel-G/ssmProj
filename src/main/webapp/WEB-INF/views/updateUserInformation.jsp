<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/user" method="post">
		用户头像：<input type="text" value="${requestScope.user.userPic}" name="userPic" ><br/>
		用户昵称：<input type="text" value="${requestScope.user.userNickName}" name="userNickName" ><br/>
		用户地址-区县：<input type="text" value="${requestScope.user.userProvince}" name="userProvince" ><br/>
		用户地址-城市：<input type="text" value="${requestScope.user.userCity}" name="userCity" ><br/>
		用户地址-地区：<input type="text" value="${requestScope.user.userCounty}" name="userCounty" ><br/>
		用户地址-详细：<input type="text" value="${requestScope.user.userDetial}" name="userDetial" ><br/>
		用户邮箱：<input type="text" value="${requestScope.user.userEmail}" name="userEmail" ><br/>
		<input type="submit" value="修改">
		<input type="hidden" value="${requestScope.user.userPhone}" name="userPhone"><br/>
		<input type="hidden" value="${requestScope.user.userPassword}" name="userPassword"><br/>
		<input type="hidden" value="${requestScope.user.userName}" name="userName"><br/>
		<input type="hidden" value="${requestScope.user.userSex}" name="userSex"><br/>
		<input type="hidden" value="${requestScope.user.userIdType}" name="userIdType"><br/>
		<input type="hidden" value="${requestScope.user.userIdNumber}" name="userIdNumber"><br/>
		<input type="hidden" value="${requestScope.user.userBalance}" name="userBalance"><br/>
		<input type="hidden" value="${requestScope.user.userScore}" name="userScore"><br/>
	</form>

</body>
</html>