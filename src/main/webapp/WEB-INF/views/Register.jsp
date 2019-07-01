<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/register" method="post">
		密码:<input type = "password" name = "password"/><br/>
		昵称:<input type = "text" name = "nickName"/><br/>
		姓名:<input type = "text" name = "userName"/><br/>
		性别:<input type = "text" name = "userSex"/><br/>
		<select name = "idType">
  			<option value ="身份证">身份证</option>
  			<option value ="港澳通行证">港澳通行证</option>
  			<option value="驾驶证">驾驶证</option>
		</select>
		证件号码:<input type = "text" name = "idNumber"/><br/>
		手机号码:<input type = "text" name = "userPhone"/><br/>
		邮箱:<input type = "text" name = "userEmail"/><br/>
		<input type = "submit" name = "提交"/>
	</form>
</body>
</html>