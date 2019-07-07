<%@ page language= "java" contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
		<meta charset="UTF-8">
		<title>top</title>
	</head>
	<body>
		<!-- 管理员登录 -->
		<div class="header-top" style="padding:0;">
			<div class="container">
					<div class="search" style="margin-top: 15px;">
						<form>
							<input type="text" value="Search " onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Search';}">
							<input type="submit" value="Go">
						</form>
					</div>
				<div class="header-left">
					<ul>
						<a href="/index">
						<div class="img-responsive5" style="background: url(${sessionScope.admin.adminPic});background-size: 100%;background-repeat:no-repeat;">
						</div>
						<div class="img-responsive5">
						<p> 欢迎您</p>
						</div>
						</a>
					</ul>
					<div class="clearfix"> </div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>

	</body>
</html>
