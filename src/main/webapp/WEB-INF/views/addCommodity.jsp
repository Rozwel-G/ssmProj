<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/addCommodity" method="post">
		商家编号：<input type="text" name="shopId" value="${requestScope.shopId}" readonly="true"><br/>
		商品名称：<input type="text" name="comName"><br/>
		商品类型：<input type="text" name="comType"><br/>
		商品介绍：<input type="text" name="comIntro"><br/>
		商品价格：<input type="text" name="comPrice"><br/>
		商品图片：<input type="text" name="comPic"><br/>
		<input type="submit" value="添加">
	</form>
</body>
</html>