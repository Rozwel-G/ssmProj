<%@ page language= "java" contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
	<head>
		<title>商家修改信息</title>
		<link href="/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="/js/jquery-3.2.0.min.js"></script>
		<script src="/js/addres.js"></script>
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
		<script>
	$("#img-change").click(function () {
	    $("#file").click();
	})
	
	/*$("#file").change(function (event) {*/
	var filechange=function(event){
	    var files = event.target.files, file;
	    if (files && files.length > 0) {
	        // 获取目前上传的文件
	        file = files[0];
	        // 获取 window 的 URL 工具
	        var URL = window.URL || window.webkitURL;
	        // 通过 file 生成目标 url
	        var imgURL = URL.createObjectURL(file);
	        //用attr将img的src属性改成获得的url
	        $("#img-change").attr("src",imgURL);
	        // 使用下面这句可以在内存中释放对此 url 的伺服，跑了之后那个 URL 就无效了
	        // URL.revokeObjectURL(imgURL);
	    }
	};
</script>
		<!--fonts-->
		<link href='http://fonts.useso.com/css?family=Lato:100,300,400,700,900' rel='stylesheet' type='text/css'>
		<link href='http://fonts.useso.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'>
		<!--//fonts-->
		<!-- start menu -->
		<link href="/css/memenu.css" rel="stylesheet" type="text/css" media="all" />
		<script type="text/javascript" src="/js/memenu.js"></script>
		<script>$(document).ready(function(){$(".memenu").memenu();});</script>
		<script src="/js/simpleCart.min.js"> </script>
		<script
	src="https://static.runoob.com/assets/jquery-validation-1.14.0/lib/jquery.js"></script>
<script
	src="https://static.runoob.com/assets/jquery-validation-1.14.0/dist/jquery.validate.min.js"></script>
<script
	src="https://static.runoob.com/assets/jquery-validation-1.14.0/dist/localization/messages_zh.js"></script>
<script src="http://www.cnblogs.com/Scripts/jquery.form.js"
	type="text/javascript"></script>
		<script>
		jQuery.validator.addMethod("mobile", function(value, element) {
		    var length = value.length;
		    var mobile =  /^1(3|4|5|6|7|8|9)\d{9}$/
		    return this.optional(element) || (length == 11 && mobile.test(value));
		}, "手机号码格式错误"); 

			$().ready(function() {
				// 在键盘按下并释放及提交后验证提交表单
				$("#form").validate({
					rules : {
						ownerName : {
							required : true,
						},
						ownerEmail : {
							required : true,
							email: true
						},
						shopPhone : {
							required : true,
							mobile : true
						}
					
						ownerPhone : {
							required : true,
							mobile : true
							} 
						}
					},
					messages : {
						ownerName : {
							required : "请输入所有人姓名"
						},
						ownerEmail : {
							required : "请输入所有人邮箱",
							email:"请输入一个正确的邮箱"
						},
						shopPhone : {
							required : "请输入商家电话",
							mobile:"电话号码错误"
						},
						ownerPhone : {
							required : "请输入所有人电话",
							mobile:"电话号码错误"
						}
					},
				
				});
			});
		</script>
	</head>
	<body>
		<!--header-->
		<div class="header">
			<jsp:include page="../top.jsp" flush="true"></jsp:include>

			<div class="container">
				<div class="head-top">
					<div class="logo">
						<a href="index.html"><img src="images/logo.png" alt=""></a>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>

		</div>


		<!--content-->
		<div class=" container">
			<div class="shopinfo">
				<h1 style="text-align:center">商家信息</h1>
				<form name="form" id="form" action="/shop/menu/changeinfo" method="post" enctype="multipart/form-data">
					<div class="col-md-6 register-top-grid">
						<h3></h3>
						<div>
							<span>商家编号（不可修改）</span>
							<input type="text" value="${requestScope.shop.shopId}" name="shopId" readonly="readonly" style="width: 100%;padding: 1em;margin: 1em 0;background: none;outline: none;border: 1px solid #A09F9F;-webkit-appearance: none;">
						</div>
						<div>
							<span>商家名称（不可修改）</span>
							<input type="text" value="${requestScope.shop.shopName}" name="shopName" readonly="readonly" style="width: 100%;padding: 1em;margin: 1em 0;background: none;outline: none;border: 1px solid #A09F9F;-webkit-appearance: none;">
						</div>
						<div>
							<span>商家类型（不可修改）</span>
							<input type="text" value="${requestScope.shop.shopType}" name="shopType" readonly="readonly" style="width: 100%;padding: 1em;margin: 1em 0;background: none;outline: none;border: 1px solid #A09F9F;-webkit-appearance: none;">
						</div>
						<div>
							<span>商家介绍</span>
							<textarea rows="10" cols="20" name="shopIntro" style="width: 100%;padding: 1em;margin: 1em 0;background: none;outline: none;border: 1px solid #A09F9F;-webkit-appearance: none;">${requestScope.shop.shopIntro}</textarea>
						</div>
					</div>
					<div class="col-md-6 register-bottom-grid">
						<h3></h3>
						<div>
							<span>商家图片</span>
							<input type="hidden" name="shopPic" value="${requestScope.shop.shopPic}">
							<div style="width:300px; height:300px;background:no-repeat;background-size:100% 100%" >
								<img src="/shopPic/${requestScope.shop.shopPic}"width="300px" height="300px" id="img-change">
							</div>
							<input type="file" name="file" id="file" style="display:none;" onChange="filechange(event)">
							<input type="button" value="修改图片" onclick="document.form.file.click()" style="margin: 1em 0">
						</div>
						<div id="adress">
							<div>
								<span>地址-省份</span>
								<select class="select" id="province" name="shopProvince" style="width: 100%;padding: 1em;margin: 1em 0;">
									<option value>选择省份</option>
								</select>
							</div>
							<div>
								<span>地址-城市</span>
								<select id="city" name="shopCity" style="width: 100%;padding: 1em;margin: 1em 0;">
									<option value>选择城市</option>
								</select>
							</div>
							<div>
								<span>地址-区县</span>
								<select id="town" name="shopCounty" style="width: 100%;padding: 1em;margin: 1em 0;">
									<option value>选择区域</option>
								</select>
							</div>
						</div>
						<div>
							<span>地址-详细</span>
							<input type="text" value="${requestScope.shop.shopDetail}" name="shopDetail" style="width: 100%;padding: 1em;margin: 1em 0;background: none;outline: none;border: 1px solid #A09F9F;-webkit-appearance: none;">
						</div>
						<div>
							<span>商家电话</span>
							<input type="text" value="${requestScope.shop.shopPhone}" name="shopPhone" id="shopPhone" style="width: 100%;padding: 1em;margin: 1em 0;background: none;outline: none;border: 1px solid #A09F9F;-webkit-appearance: none;">
						</div>
						<div>
							<span>所有人称谓</span>
							<select  name="ownerTitle" id="ownerTitle" style="width: 100%;padding: 1em;margin: 1em 0;background: none;">
								<option ${requestScope.shop.ownerTitle eq '先生' ? ' selected="selected"' : ''}>先生</option>
								<option ${requestScope.shop.ownerTitle eq '女士' ? ' selected="selected"' : ''}>女士</option>
							</select>
						</div>
						<div>
							<span>所有人姓名</span>
							<input type="text" value="${requestScope.shop.ownerName}" name="ownerName" id="ownerName" style="width: 100%;padding: 1em;margin: 1em 0;background: none;outline: none;border: 1px solid #A09F9F;-webkit-appearance: none;">
						</div>
						<div>
							<span>所有人电话</span>
							<input type="text" value="${requestScope.shop.ownerPhone}" name="ownerPhone" id="ownerPhone" style="width: 100%;padding: 1em;margin: 1em 0;background: none;outline: none;border: 1px solid #A09F9F;-webkit-appearance: none;">
						</div>
						<div>
							<span>所有人邮箱</span>
							<input type="text" value="${requestScope.shop.ownerEmail}" name="ownerEmail" id="ownerEmail" style="width: 100%;padding: 1em;margin: 1em 0;background: none;outline: none;border: 1px solid #A09F9F;-webkit-appearance: none;">
						</div>
						<input type="submit" value="修改" style="margin: 1em 0">
					</div>
					<div class="clearfix"> </div>
				</form>
			</div>
		</div>
		<!--//content-->
		<jsp:include page="../foot.jsp" flush="true"></jsp:include>

		<script type="text/javascript">
			$(function(){
				var address = $("#address");
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
	</body>
</html>
