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
		商家编号：<input type="text" id="shopID" name="shopId" value="${requestScope.shopId}" readonly="true"><br/>
		商品名称：<input type="text" id="Name" name="comName"><span></span><br/>
		商品类型：<input type="text" name="comType"><br/>
		商品介绍：<input type="text" name="comIntro"><br/>
		商品价格：<input type="text" name="comPrice"><br/>
		商品图片：<input type="text" name="comPic"><br/>
		<input type="submit" value="添加">
	</form>
	<script src="https://cdn.bootcss.com/jquery/2.2.4/jquery.min.js"></script>
	<script type="text/javascript">
		
		$(function(){
			
			$("form > input[name=comName]").blur(function( e ){
				var input1 = $( "#shopID" );
				var input2 = $("#Name");
				$.get("/check",{shopId:input1.val(),comName: input2.val(), t : new Date().getTime()}, function( data ){
					
					if( data == true ){
						input2.next("span").html("该商品本店已存在").css("color", "red");
					} 
				}, "json");
				
			});
			
		});
	</script>
</body>
</html>