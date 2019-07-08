<%@ page language= "java" contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
	<head>
		<title>用户修改信息</title>
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
<script src="jQuery.1.8.3.js" type="text/javascript"></script> <script src="jquery.validate.js" type="text/javascript"></script> <script src="messages_zh.js" type="text/javascript"></script>
		<script>
	$().ready(function() {
		// 在键盘按下并释放及提交后验证提交表单
		$("#form").validate({
			rules : {
				userNickName :{
			        required: true,
			        minlength: 2
			      },
				userEmail : {
			        required: true,
			        email: true
			      }
				
			},
			messages : {
				userNickName :{
			        required: "请输入用户名",
			        minlength: "用户名必需由两个字母组成"
			      },
				userEmail:{
					email:"请输入一个正确的邮箱"
				}
			}
		
		});
	});
</script>
<style>
.error {
	color: red;
}
</style>
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
			<div class="userinfo">
				<h1 style="text-align:center">用户信息</h1>
				<form name="form" id="form" action="/user/menu/changeinfo" method="post" enctype="multipart/form-data">
					<div class="col-md-6 register-top-grid">
						<h3></h3>
						<div>
							<span>姓名（不可修改）</span>
							<input type="text" value="${requestScope.user.userName}" name="userName" readonly="readonly" style="width: 100%;padding: 1em;margin: 1em 0;background: none;outline: none;border: 1px solid #A09F9F;-webkit-appearance: none;">
						</div>
						<div>
							<span>注册手机号（不可修改）</span>
							<input type="text" value="${requestScope.user.userPhone}" name="userPhone" readonly="readonly" style="width: 100%;padding: 1em;margin: 1em 0;background: none;outline: none;border: 1px solid #A09F9F;-webkit-appearance: none;">
						</div>
						<div>
							<span>性别（不可修改）</span>
							<input type="text" value="${requestScope.user.userSex}" name="userSex" readonly="readonly" style="width: 100%;padding: 1em;margin: 1em 0;background: none;outline: none;border: 1px solid #A09F9F;-webkit-appearance: none;">
						</div>
						<div>
							<span>证件类型（不可修改）</span>
							<input type="text" value="${requestScope.user.userIdType}" name="userIdType" readonly="readonly" style="width: 100%;padding: 1em;margin: 1em 0;background: none;outline: none;border: 1px solid #A09F9F;-webkit-appearance: none;">
						</div>
						<div>
							<span>证件号（不可修改）</span>
							<input type="text" value="${requestScope.user.userIdNumber}" name="userIdNumber" readonly="readonly" style="width: 100%;padding: 1em;margin: 1em 0;background: none;outline: none;border: 1px solid #A09F9F;-webkit-appearance: none;">
						</div>
						<input type="hidden" value="${requestScope.user.userPassword}" name="userPassword" readonly="readonly"><br/>
						<input type="hidden" value="${requestScope.user.userBalance}" name="userBalance" readonly="readonly"><br/>
						<input type="hidden" value="${requestScope.user.userScore}" name="userScore" readonly="readonly"><br/>
					</div>
					<div class="col-md-6 register-bottom-grid">
						<h3></h3>
						<div>
							<span>头像</span>
							<input type="hidden" name="userPic" value="${requestScope.user.userPic}">
							<div style="width:139px; height:139px;background:no-repeat;background-size:100% 100%" >
								<img src="/userPic/${requestScope.user.userPic}" width="139px" height="139px" id="img-change">
							</div>
							<input type="file" name="file" id="file" style="display:none;" onChange="filechange(event)">
							<input type="button" value="修改头像" onclick="document.form.file.click()" style="margin: 1em 0">
						</div>
						<div>
							<span>昵称</span>
							<input type="text" value="${requestScope.user.userNickName}" name="userNickName" id="userNickName" style="width: 100%;padding: 1em;margin: 1em 0;background: none;outline: none;border: 1px solid #A09F9F;-webkit-appearance: none;">
						</div>
						<div id="adress">
							<div>
								<span>地址-省份</span>
								<!-- <input type="text" value="${requestScope.user.userProvince}" name="userProvince" style="width: 100%;padding: 1em;margin: 1em 0;background: none;outline: none;border: 1px solid #A09F9F;-webkit-appearance: none;"> -->
								<select class="select" id="province" name="userProvince" style="width: 100%;padding: 1em;margin: 1em 0;">
									<option value>选择省份</option>
								</select>
							</div>
							<div>
								<span>地址-城市</span>
								<!-- <input type="text" value="${requestScope.user.userCity}" name="userCity" style="width: 100%;padding: 1em;margin: 1em 0;background: none;outline: none;border: 1px solid #A09F9F;-webkit-appearance: none;"> -->
								<select id="city" name="userCity" style="width: 100%;padding: 1em;margin: 1em 0;">
									<option value>选择城市</option>
								</select>
							</div>
							<div>
								<span>地址-区县</span>
								<!-- <input type="text" value="${requestScope.user.userCounty}" name="userCounty" style="width: 100%;padding: 1em;margin: 1em 0;background: none;outline: none;border: 1px solid #A09F9F;-webkit-appearance: none;"> -->
								<select id="town" name="userCounty" style="width: 100%;padding: 1em;margin: 1em 0;">
									<option value>选择区域</option>
								</select>
							</div>
						</div>
						<div>
							<span>地址-详细</span>
							<input type="text" value="${requestScope.user.userDetial}" name="userDetial" style="width: 100%;padding: 1em;margin: 1em 0;background: none;outline: none;border: 1px solid #A09F9F;-webkit-appearance: none;">
						</div>
						<div>
							<span>邮箱</span>
							<input type="text" value="${requestScope.user.userEmail}" name="userEmail" id="userEmail" style="width: 100%;padding: 1em;margin: 1em 0;background: none;outline: none;border: 1px solid #A09F9F;-webkit-appearance: none;">
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
						'${requestScope.user.userProvince}',
						"${requestScope.user.userCity}",
						"${requestScope.user.userCounty}"
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
