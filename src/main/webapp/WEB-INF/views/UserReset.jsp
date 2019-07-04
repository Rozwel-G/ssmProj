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
	<form action="/reset/user" method = "post">
		请输入旧密码:<input type = "password" name = "oldPassword" required/><br/>
		请输入新密码:<input id = "psw1" type = "password" name = "firstNewPassword"/><br/>
		请再次输入新密码:<input id = "psw2" type = "password" name = "secondNewPassword"/><span id = "tishi">两次密码不一致</span><br/>
		<input id = "tijiao"  type = "submit" name = "提交"/>
	</form>
	
	<script>
		$(document).ready(function(){
			$("#tishi").hide();
			$("#psw2").blur(function(){
				if($("#psw1").val() != $("#psw2").val()){
					$("#tishi").show();
					$("#tijiao").attr("disabled", true);
				}
				else{
					$("#tishi").hide();
					$("#tijiao").attr("disabled", false);
				}
			})
		})
	</script>
	
</body>
</html>