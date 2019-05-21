<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>新建用户</title>
<link rel="stylesheet" href="style/bootstrap.min.css" />
<link rel="stylesheet" href="style/fileinput.min.css" />
<script src="js/jquery-3.2.1.js"></script>
<script src="js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<form action="Manange_newUserCreate.action" method="post"
			class="form-horizontal" role="form">
			<div class="row">
				<div class="col-md-8  col-md-offset-2">
					<div class="input-group">
						<span class="input-group-addon" id="sizing-addon2">用户Id</span> <input
							type="text" class="form-control" required name="userId"
							aria-describedby="sizing-addon2">
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-8  col-md-offset-2">
					<div class="input-group">
						<span class="input-group-addon " id="sizing-addon2">用户姓名</span> <input
							type="text" class="form-control" required name="userName"
							aria-describedby="sizing-addon2">
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-8  col-md-offset-2">
					<div class="input-group">
						<span class="input-group-addon " id="sizing-addon2">用户密码</span> <input
							type="text" class="form-control" name="passWord"
							aria-describedby="sizing-addon2">
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-8  col-md-offset-2">
					<div class="input-group">
						<span class="input-group-addon " id="sizing-addon2">用户部门</span> <input
							type="text" class="form-control" name="department"
							aria-describedby="sizing-addon2">
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-8  col-md-offset-2">
					<div class="input-group">
						<span class="input-group-addon " id="sizing-addon2">用户种类</span> <select
							class="form-control changdu1" name="kind"
							aria-describedby="sizing-addon2">
							<option value="1">测试人员</option>
							<option value="2">开发人员</option>
						</select>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3 col-md-offset-8" style="margin-top: 10px">
					<button type="submit" class="btn btn-default">保存</button>
					<a href="returnManage.action"><button type="button"
							class="btn btn-default">返回</button></a>
				</div>
			</div>
		</form>
	</div>
</body>
</html>