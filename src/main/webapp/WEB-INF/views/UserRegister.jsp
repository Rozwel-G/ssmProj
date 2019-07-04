<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js">
</script>
</head>
<body>
	<form action="/register/user" method="post" enctype = "multipart/form-data">
		手机号码:<input type = "text" name = "userPhone"/><br/>
		密码:<input type = "password" name = "userPassword"/><br/>
		昵称:<input type = "text" name = "userNickName"/><br/>
		姓名:<input type = "text" name = "userName"/><br/>
		性别:<input type = "text" name = "userSex"/><br/>
		<select name = "userIdType">
  			<option value ="身份证">身份证</option>
  			<option value ="港澳通行证">港澳通行证</option>
  			<option value="驾驶证">驾驶证</option>
		</select>
		证件号码:<input type = "text" name = "UserIdNumber"/><br/>
		省:<input type = "text" name = "userProvince"/><br/>
		市:<input type = "text" name = "userCity"/><br/>
		县:<input type = "text" name = "userCounty"/><br/>
		具体地址:<input type = "text" name = "userDetial"/><br/>
		邮箱:<input type = "text" name = "userEmail"/><br/>
		<input type = "file" name = "file"/>
		<input type = "submit" name = "提交"/>
	</form>
	
</body>
</html>