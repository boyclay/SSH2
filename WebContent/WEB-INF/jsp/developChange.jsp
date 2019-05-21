<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>登录页面</title>
<link rel="stylesheet" href="style/bootstrap.min.css" />
<link rel="stylesheet" href="style/fileinput.min.css" />
<script src="js/jquery-3.2.1.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/fileinput.min.js"></script>
<script>
	function c() {
		$("#form1").submit();
	}
</script>
</head>
<body>
	<div class="container">
		<form action="develop_update.action" method="post"
			class="form-horizontal" role="form" id="form1">
			<input type="hidden" id="AAA000" name="AAA000" value="${bug.AAA000}" />
			<div class="row">
				<div class="col-md-8  col-md-offset-2">
					<div class="input-group">
						<span class="input-group-addon" id="sizing-addon2">项目名称</span> <input
							type="text" class="form-control changdu1" name="AAB001"
							aria-describedby="sizing-addon2" readOnly="readOnly"
							value="${bug.AAB001}">
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-8  col-md-offset-2">
					<div class="input-group">
						<span class="input-group-addon " id="sizing-addon2">业务名称</span> <input
							type="text" class="form-control" name="AAB002"
							value="${bug.AAB002}" readOnly="readOnly"
							aria-describedby="sizing-addon2">
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-8  col-md-offset-2">
					<div class="input-group">
						<span class="input-group-addon " id="sizing-addon2">测试人员</span> <input
							type="text" class="form-control" readOnly="readOnly"
							name="AAB004" value="${bug.AAB004}"
							aria-describedby="sizing-addon2">
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-8  col-md-offset-2">
					<div class="input-group">
						<span class="input-group-addon " id="sizing-addon2">处理情况</span> <select
							class="form-control" aria-describedby="sizing-addon2"
							name="AAB007">
							<option value="未处理" ${bug.AAB007=="未处理"?'selected':''}>未处理</option>
							<option value="已处理" ${bug.AAB007=="已处理"?'selected':''}>已处理</option>
						</select>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-8  col-md-offset-2">
					<div class="input-group">
						<span class="input-group-addon">实际完成时间</span> <input type="date"
							class="form-control" required name="AAB015" value="${date}"
							aria-label="Amount (to the nearest dollar)" readOnly="readOnly">
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3 col-md-offset-8" style="margin-top: 10px">
					<button type="submit" id="tijiao" class="btn btn-default">提交</button>
					<a href="returndevelop.action"><button type="button"
							class="btn btn-default">返回</button></a>
				</div>
			</div>
		</form>
	</div>
</body>
</html>