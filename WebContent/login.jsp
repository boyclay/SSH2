<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>登录页面</title>
<link rel="stylesheet" href="style/bootstrap.min.css">
<script src="js/jquery-3.2.1.js"></script>
<script src="js/bootstrap.min.js"></script>
</head>
<body id="body"
	style="background: url(images/c.jpg) no-repeat; background-size: cover;">
	<div class="container">
		<form action="User_login.action" method="post" class="form-horizontal"
			role="form" style="padding-top: 250px;">
			<div class="form-group">
				<label for="userName" class="col-md-5 control-label"
					style="font-size: 15px;">账&nbsp;号</label>
				<div class="col-md-3">
					<input type="text" class="form-control" required id="userName"
						name="userName" autofocus placeholder="请输入账号" style="opacity: 0.9">
				</div>
			</div>
			<div class="form-group">
				<label for="passWord" class="col-md-5 control-label"
					style="font-size: 15px;">密&nbsp;码</label>
				<div class="col-md-3">
					<input type="password" required class="form-control" id="passWord"
						name="passWord" placeholder="请输入密码" style="opacity: 0.9">
				</div>
				<div style="padding-top: 8px; padding-left: 2px; color: red">
					<s:fielderror />
					<!--struts的标签库显示出错信息  -->
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-5 col-md-5"
					style="padding-left: 75px; padding-top: 5px;">
					<button type="submit" class="btn btn-primary">登录</button>
					<button type="reset" class="btn btn-primary">重置</button>
				</div>
			</div>
		</form>
	</div>
</body>
</html>