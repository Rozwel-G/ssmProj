<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="/shop" method="post">
	商家编号：<input type="text" value="${requestScope.shop.shopId}" name="shopId" readonly="true"><br/>
	商家名称：<input type="text" value="${requestScope.shop.shopName}" name="shopName" readonly="true"><br/>
	商家类型：<input type="text" value="${requestScope.shop.shopType}" name="shopType" readonly="true"><br/> 
	<!-- 商家介绍：<input type="text" value="${requestScope.shop.shopIntro}" name="shopIntro"><br/> -->
	商家介绍：<textarea rows="5" cols="20" style=OVERFLOW:visible name="shopIntro">${requestScope.shop.shopIntro}</textarea><br/>
	商家图片：<input type="text" value="${requestScope.shop.shopPic}" name="shopPic"><br/>
	商家地址-省份：<input type="text" value="${requestScope.shop.shopProvince}" name="shopProvince"><br/>
	商家地址-城市：<input type="text" value="${requestScope.shop.shopCity}" name="shopCity"><br/>
	商家地址-区县：<input type="text" value="${requestScope.shop.shopCounty}" name="shopCounty"><br/>
	商家地址-详细：<input type="text" value="${requestScope.shop.shopDetail}" name="shopDetail"><br/>
	商家电话：<input type="text" value="${requestScope.shop.shopPhone}" name="shopPhone"><br/>
	所有人称谓：<input type="text" value="${requestScope.shop.ownerTitle}" name="ownerTitle"><br/>
	所有人姓名：<input type="text" value="${requestScope.shop.ownerName}" name="ownerName"><br/>
	所有人电话：<input type="text" value="${requestScope.shop.ownerPhone}" name="ownerPhone"><br/>
	所有人邮箱：<input type="text" value="${requestScope.shop.ownerEmail}" name="ownerEmail"><br/>
	<input type="submit" value="修改">
	</form>
</body>
</html>