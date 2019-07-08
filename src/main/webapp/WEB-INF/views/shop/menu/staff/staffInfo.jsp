<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
		<title>Products</title>
		<link href="/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="/js/jquery.min.js"></script>
		<!-- Custom Theme files -->
		<!--theme-style-->
		<link href="/css/style.css" rel="stylesheet" type="text/css" media="all" />
		<!--//theme-style-->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="New Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
		<script type="application/x-javascript">
			addEventListener("load", function() {
				setTimeout(hideURLbar, 0);
			}, false);

			function hideURLbar() {
				window.scrollTo(0, 1);
			}
		</script>
		
		<!--fonts
		<link href='http://fonts.useso.com/css?family=Lato:100,300,400,700,900' rel='stylesheet' type='text/css'>
		<link href='http://fonts.useso.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'>
		fonts-->
		<!-- start menu -->
		<link href="/css/memenu.css" rel="stylesheet" type="text/css" media="all" />
		<script type="text/javascript" src="/js/memenu.js"></script>
		<script>$(document).ready(function(){$(".memenu").memenu();});</script>
		<script src="/js/simpleCart.min.js"> </script>
	</head>
<body>
	<div class="header">
		<jsp:include page="/top.jsp"></jsp:include>
		<div class="container">
			<div class="head-top">
				<div class="logo">
					<a href="index.html"><img src="/images/logo.png" alt=""></a>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	
	<div class="staffinfo">
			<form action="/shop/menu/staff/addStaffAccount" method="post" enctype="multipart/form-data" onsubmit="return checkForm()">
			<!--  staffinfo -->
				<div class="inputdiv">
					<div>
						<span>手机号码：</span><input value="${requestScope.staff.staffPhone }" placeholder = "请输入手机号" name="staffPhone" id="mobile" required />
					</div>
					<div>
						<span>密码：</span><input type="password" name="staffPassword" id="msg2" required />
					</div>
					<div>
						<span>确认密码：</span><input type="password" id="msg" required /><span id="tips"></span>
					</div>
					<div style="margin-left:24px">
						<select name = "staffType" id="staffType">
							<option>经理</option>
							<option>员工</option>
						</select>
					</div>
				</div>
				<div class="imgdiv">
					<div style="height:90%"> <img src="" id="img0" class="imageauto"> </div>
					<input type="file" id="file" name="file" accept=".jpg,.png">
				</div>
				
			<!-- shopinfo -->
				<div class="shopinfo">
					<span>商家名称：${requestScope.shop.shopName }</span>
					<span>商家位置：${requestScope.shop.shopCity }${requestScope.shop.shopCounty }</span>
				</div>
				
				<div class="btn" style="text-align:center">
					<input type="submit" value="提交" />
					<input type="button" value="取消"" onclick="window.location.href = 'list'" />
				</div>
				
			</form>
	</div>
	<script type="text/javascript">
	function checkForm(){
		console.log("jinruhanshu");
		var word1= document.getElementById("msg").value;
		var word2 = document.getElementById("msg2").value;
		var mobile = document.getElementById("mobile").value;
		
		if(mobile.length==0)
        {
           alert('请输入手机号码！');
           return false;
        }    
        if(mobile.length!=11)
        {
            alert('请输入有效的手机号码！');
            return false;
        }
        
        var myreg = /^(((13[0-9]{1})|159|153)+\d{8})$/;
        if(!myreg.test(mobile))
        {
            alert('请输入有效的手机号码！');
            return false;
        }
		if(word1 != word2){
		  window.alert("两次输入的密码不一致！");
		  return false;
		}
		else
		{
			return true;
		}
	 	
	}
	$("#msg").change(function(){
		var word1= document.getElementById("msg").value;
		var word2 = document.getElementById("msg2").value;
		check(word1,word2);
	});
	function check(word1,word2)
	{
		if(word1 != word2)
		{
			$("#tips").text("两次输入密码不一致");
		}
		else{
			$("#tips").text("密码一致！");
		}
	}
	$("#file").change(function(){  
		 var objUrl = getObjectURL(this.files[0]) ;//获取文件信息  
		 console.log("objUrl = "+objUrl);  
		  if (objUrl) {  
		  $("#img0").attr("src", objUrl);  
		 }   
	}) ;  
		function getObjectURL(file) {  
			 var url = null;   
			 if (window.createObjectURL!=undefined) {  
			  url = window.createObjectURL(file) ;  
			 } else if (window.URL!=undefined) { // mozilla(firefox)  
			  url = window.URL.createObjectURL(file) ;  
			 } else if (window.webkitURL!=undefined) { // webkit or chrome  
			  url = window.webkitURL.createObjectURL(file) ;  
			 }  
			 return url ;  
		} 
	</script>
		<div class="clearfix"></div>
		<jsp:include page="/foot.jsp" flush="true"></jsp:include>

</body>
</html>