<%@ page language= "java" contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
	<head>
		<title>申请加盟</title>
		<link href="/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="/js/jquery-3.2.0.min.js"></script>
		<script src="/js/registerDress.js"></script>
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
		<!--fonts-->
		<link href='http://fonts.useso.com/css?family=Lato:100,300,400,700,900' rel='stylesheet' type='text/css'>
		<link href='http://fonts.useso.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'>
		<!--//fonts-->
		<!-- start menu -->
		<link href="/css/memenu.css" rel="stylesheet" type="text/css" media="all" />
		<script type="text/javascript" src="js/memenu.js"></script>
		<script>$(document).ready(function(){$(".memenu").memenu();});</script>
		<script src="/js/simpleCart.min.js"> </script>
	</head>
	<body>
		<!--header-->
		<div class="header">
			<jsp:include page="top.jsp" flush="true"></jsp:include>

			<div class="container">
				<div class="head-top">
					<div class="logo">
						<a href="index.html"><img src="/images/logo.png" alt=""></a>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>

		</div>


		<!--content-->
		<div class=" container">
			<div class=" register">
				<h1>加盟</h1>
				<form action="/shop/join" method = "post" enctype = "multipart/form-data">
					<div class="col-md-6 register-top-grid">
						<div>
							<span>商家名称</span>
							<input type = "text" name = "shopName"/>
						</div>
						<div>
							<span>商家类型</span>
							<input type = "text" name = "shopType"/>
						</div>
						<div>
							<span>商家介绍</span>
							<input type = "text" name = "shopIntro"/>
						</div>
						<div>
							<span>商家图片</span>
							<input type = "file" name = "shopFile" style="width:100%; margin: 1em; padding: 1em;border: 1px;"/>
						</div>
						<div>
							<span>商家电话</span>
							<input type = "text" name = "shopPhone"/><br/>
						</div>
						<div id="registerDress">
							<div>
								<span>地址-省份</span>
								<select class="select" id="province" name="shopProvince" style="width:100%; padding: 1em;border: 1px;">
									<option value>选择省份</option>
								</select>
							</div>
							<div>
								<span>地址-城市</span>
								<!-- <input type="text" value="${requestScope.shop.shopCity}" name="shopCity" style="width: 100%;padding: 1em;margin: 1em 0;background: none;outline: none;border: 1px solid #A09F9F;-webkit-appearance: none;"> -->
								<select id="city" name="shopCity" style="width:100%; padding: 1em;border: 1px;">
									<option value>选择城市</option>
								</select>
							</div>
							<div>
								<span>地址-区县</span>
								<!-- <input type="text" value="${requestScope.shop.shopCounty}" name="shopCounty" style="width: 100%;padding: 1em;margin: 1em 0;background: none;outline: none;border: 1px solid #A09F9F;-webkit-appearance: none;"> -->
								<select id="town" name="shopCounty" style="width:100%; padding: 1em;border: 1px;">
									<option value>选择区域</option>
								</select>
							</div>
						</div>
						<div>
							<span>地址-详细</span>
							<input type="text"name="shopDetail">
						</div>
						<a class="news-letter" href="#">
							<label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i> </i>Sign Up for Newsletter</label>
						</a>
					</div>
					<div class="col-md-6 register-top-grid">
						<div>
							<span>所有人姓名</span>
							<input type = "text" name = "ownerName"/>
						</div>
						<div>
							<span>所有人电话</span>
							<input type = "text" id = "mobile" name = "ownerPhone"/>
							<span>请输入验证码</span>
							<input type = "text"/>
							<input type="button" id="btn" class="btn btn-primary" value="获取短信验证码" onclick="send(this)" />
						</div>
						<div>
							<span>所有人邮箱</span>
							<input type = "text" name = "ownerEmail"/>
						</div>
						<div>
							<span>所有人邮箱</span>
							<input type = "text" name = "ownerTitle"/>
						</div>
						<input type="submit" value="submit">

					</div>
					<div class="clearfix"> </div>
				</form>
			</div>
		</div>
		<!--//content-->
		<jsp:include page="foot.jsp" flush="true"></jsp:include>
		<script type="text/javascript">
			$(function(){
				var address = $("#registerDress");
				address.selectAddress({
					arr: [
						'${requestScope.shop.shopProvince}',
						"${requestScope.shop.shopCity}",
						"${requestScope.shop.shopCounty}"
					]
				});
				
				$("#town").focusout(function(){
					var province = $("#province option:selected").html()
					var city = $("#city option:selected").html()
					var town = $("#town option:selected").html()
					if(province!="选择省份"&&city!="选择城市"&&town!="选择区域"){
						console.log("省份/直辖市：" + prvince + "\n城市：" + city + "\n区/县：" + town)
					}
				})
			})
		</script>
		
	<script type="text/javascript">
		function send(obj){
			var mobileReg = /^1[3|4|5|6|7|8|9][0-9]\d{8}$/
		    var countdown = 60, timerTag;
		    var mobile=$("#mobile").val().trim();
			$.ajax({
				url:"/verifyCode",
				type:"post",
				dataType:"json",
				async:"false",
				data: {mobile:mobile},
				beforeSend: function (){
                    $("#sendSms").attr("disabled","disabled");
                    $(obj).css("background-color","#999");
                },
				success:function(data){
					 if(data.result=="success"){
                         alert("验证码发送成功，请注意查收！")
                         setTime(obj,countdown,timerTag);
                     }else{
                         countdown = -1;
                     }
                 },
                 complete: function () {
                     $("#sendSms").removeAttr("disabled");
                 },
             });
		}
		function setTime(obj,countdown,timerTag) {
	        if (countdown <= 0) {
	            $(obj).removeAttr("disabled").css("background-color","rgb(24, 197, 133)");
	            $("#btn").attr("onclick","sendValidateCode(this)");
//	            $(obj).html("重新发送");
	            $("#btn").val("点击重新获取验证码").removeAttr("disabled").removeClass(
	                "disabled");
	            countdown = 60;
	            clearTimeout(timerTag);
	        } else {
	            $("#btn").attr("disabled", true);//点击了"发送"按钮后，点击失效。
	            $("#btn").addClass("disabled");//置灰
//	            $(obj).html("重新发送(" + countdown + ")");
	            $("#btn").attr("value","" + countdown + "秒后重新获取验证码");
	            countdown--;
	            timerTag = setTimeout(function() {
	                setTime(obj,countdown,timerTag);
	            }, 1000);
	        }
	    }
	</script>
	</body>
</html>
