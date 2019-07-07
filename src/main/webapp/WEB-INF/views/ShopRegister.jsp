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
	<form action="/join" method="post" enctype = "multipart/form-data">
		商店名称:<input type = "text" name = "shopName"/><br/>
		类型:<input type = "text" name = "shopType"/><br/>
		介绍:<input type = "text" name = "shopIntro"/><br/>
		省:<input type = "text" name = "shopProvince"/><br/>
		市:<input type = "text" name = "shopCity"/><br/>
		县:<input type = "text" name = "shopCounty"/><br/>
		地址细节:<input type = "text" name = "shopDetail"/><br/>
		电话:<input type = "text" name = "shopPhone"/><br/>
		称谓:<input type = "text" name = "ownerTitle"/><br/>
		姓名:<input type = "text" name = "ownerName"/><br/>
		手机:<input type = "text" name = "ownerPhone"/><br/>
		邮箱:<input type = "text" name = "ownerEmail"/><br/>
		<input type = "file" name = "file"/>
		<input type = "submit" name = "提交"/> 
	</form>
	
</body>
</html>