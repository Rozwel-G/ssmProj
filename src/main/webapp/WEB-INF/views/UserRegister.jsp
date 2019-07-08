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
	<form action="/register" method="post" enctype = "multipart/form-data">
		手机号码:<input type = "text" name = "userPhone"/><br/>
		密码:<input type = "password" name = "userPassword"/><br/>
		昵称:<input type = "text" name = "userNickName"/><br/>
		姓名:<input type = "text" name = "userName"/><br/>
		性别:<input type = "text" name = "userSex"/><br/>
		<select name = "userIdType">
  			<option value ="身份证">身份证</option>
  			<option value ="港澳通行证">港澳通行证</option>
  			<option value="驾驶证">驾驶证</option>
		</select>
		证件号码:<input type = "text" name = "UserIdNumber"/><br/>
		省:<input type = "text" name = "userProvince"/><br/>
		市:<input type = "text" name = "userCity"/><br/>
		县:<input type = "text" name = "userCounty"/><br/>
		具体地址:<input type = "text" name = "userDetial"/><br/>
		邮箱:<input type = "text" name = "userEmail"/><br/>
		<input type = "file" name = "file"/>
		<input type = "submit" name = "提交"/>
	</form>
	<input type = "text" id = "mobile" name = "mobile"/>
	<input type = "text"/>
	<input type="button" id="btn" class="btn btn-primary" value="获取短信验证码" onclick="send(this)" />
	
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
