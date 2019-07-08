<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>添加商品</title>
<link href="/css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="/js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="/css/style.css" rel="stylesheet" type="text/css" media="all" />
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="New Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
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
<link href='http://fonts.useso.com/css?family=Lato:100,300,400,700,900'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.useso.com/css?family=Roboto:400,100,300,500,700,900'
	rel='stylesheet' type='text/css'>
<!--//fonts-->
<!-- start menu -->
<link href="/css/memenu.css" rel="stylesheet" type="text/css"
	media="all" />
<script type="text/javascript" src="/js/memenu.js"></script>
<script>
	$(document).ready(function() {
		$(".memenu").memenu();
	});
</script>
<script src="/js/simpleCart.min.js">
	
</script>
<script
	src="https://static.runoob.com/assets/jquery-validation-1.14.0/lib/jquery.js"></script>
<script
	src="https://static.runoob.com/assets/jquery-validation-1.14.0/dist/jquery.validate.min.js"></script>
<script
	src="https://static.runoob.com/assets/jquery-validation-1.14.0/dist/localization/messages_zh.js"></script>
<script src="http://www.cnblogs.com/Scripts/jquery.form.js"
	type="text/javascript"></script>
<script>

jQuery.validator.addMethod("price", function(value, element) {
	var tel = /^(([1-9]\d*)|\d)(\.\d{1,2})?$/;
    return this.optional(element) || (tel.test(value));
}, "格式错误");

	$().ready(function() {
		// 在键盘按下并释放及提交后验证提交表单
		$("#add").validate({
			rules : {
				comName : {
					required : true,
					remote: {
					    url: "/check",     //后台处理程序
					    type: "post",               //数据发送方式
					    data: {                     //要传递的数据
					    	shopId: function () { return $("#shopId").val(); },
					    	comName: function () { return $("#comName").val(); },
					    }
					} 
				},
		
				
				
				comPrice : {
					required : true,
					price : true,
 					
				}
			},
			messages : {
				comName : {
					required : "请输入商品名称",
					remote : "该商品已存在"

				},
				comPrice : {
					required : "请输入价格",
					price :"请输入正确的价格"
					
				}
			},
		
		});
	});
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
<style>
.error {
	color: red;
}
</style>
</head>
<body>
	<!--header-->
	<div class="header">
		<jsp:include page="../../top.jsp" flush="true"></jsp:include>

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
		<div class="cominfo">
			<h1 style="text-align: center">新增商品</h1>
			<form id="add" name="form" action="/shop/menu/commodity/add" method="post" enctype="multipart/form-data">
				<div class="col-md-6 register-top-grid">
					<h3></h3>
					<div>
					<input type="hidden" id="shopId" name="shopId" value="${requestScope.shopId}" readonly="readonly">
						<span>商品名称</span> <input type="text" id="comName" name="comName"
							style="width: 100%; padding: 1em; margin: 1em 0; background: none; outline: none; border: 1px solid #A09F9F; -webkit-appearance: none;">
					</div>
					<div>
						<span>商品类型</span> <select name="comType" id="comType"
							style="width: 100%; padding: 1em; margin: 1em 0; background: none;">
							<option>食品保健</option>
							<option>特色菜</option>
							<option>福建菜</option>
							<option>日本菜</option>
							<option>饮品</option>
							<option>面包甜点</option>
							<option>火锅</option>
							<option>小吃快餐</option>
							<option>日韩料理</option>
							<option>西餐</option>
							<option>生鲜蔬果</option>
							<option>烧烤烤肉</option>
							<option>川菜</option>
							<option>粤菜</option>
							<option>西北菜</option>
							<option>徽菜</option>
							<option>湘菜</option>
							<option>江河湖海鲜</option>
							<option>台湾/客家菜</option>
							<option>其他美食</option>
						</select>
					</div>
					<div>
						<span>商品价格（元）</span> <input type="text" name="comPrice"
							style="width: 100%; padding: 1em; margin: 1em 0; background: none; outline: none; border: 1px solid #A09F9F; -webkit-appearance: none;">
					</div>
					<div>
						<span>商品图片</span> 
							
							</div> -->
							<div style="width:300px; height:300px;border:1px solid #000;background:no-repeat">
							<img src="" width="300px" height="300px" id="img-change">
							</div>
							<input type="file" name="file" id="file" style="display:none;" onChange="filechange(event)">
							<input type="button" value="选择图片" onclick="document.form.file.click()" style="margin: 1em 0">
					</div>
				</div>
				<div class="col-md-6 register-bottom-grid">
					<h3></h3>
					<div>
						<span>商品介绍</span>
						<textarea rows="10" cols="20" name="comIntro"
							style="width: 100%; padding: 1em; margin: 1em 0; background: none; outline: none; border: 1px solid #A09F9F; -webkit-appearance: none;">${requestScope.shop.shopIntro}</textarea>
					</div>
					<input type="submit" value="添加" style="margin: 1em 0">
				</div>
				<div class="clearfix"></div>
			</form>
		</div>
	</div>
	<!--//content-->
	<jsp:include page="../../foot.jsp" flush="true"></jsp:include>
</body>
</html>
