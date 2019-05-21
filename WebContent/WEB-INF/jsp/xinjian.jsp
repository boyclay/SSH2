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
		$("#form121").submit();
	}
	function d() {
		$("#form121").submit();
	}
	$(function() {
		if($("#title").val()=='2'){
			$("#tijiao").css('display','none');
			$("#shangchuan").css('display','none');
			var form = document.forms[0];
			for(var i=0;i<form.length-1;i++){
				form.elements[i].disabled = "true";
			}
		}else if($("#title").val()=='1'){
			$("#shangchuan").css('display','none');
		}else if($("#title").val()==""){
			$("#shangchuan").css('display','none');
		}
		$("#AAB001 option[value='${bug.AAB001}']").attr("selected", true);
		
	})
</script>
</head>
<body>
	<div class="container">
		<form action="Bug_create.action" method="post" class="form-horizontal"
			role="form">
			<input type="hidden" id="title" value="${title}" /> <input
				type="hidden" id="c" value="${bug.AAB001}" /> <input type="hidden"
				id="AAA000" name="AAA000" value="${bug.AAA000}" />
			<div class="row">
				<div class="col-md-8  col-md-offset-2">
					<div class="input-group">
						<span class="input-group-addon" id="sizing-addon2">项目名称</span> <select
							class="form-control changdu1" id="AAB001" name="AAB001"
							aria-describedby="sizing-addon2">
							<s:iterator value="#session.plist">
								<option value="${pname}">${pname}</option>
							</s:iterator>
						</select>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-8  col-md-offset-2">
					<div class="input-group">
						<span class="input-group-addon " id="sizing-addon2">业务名称</span> <input
							type="text" class="form-control" required name="AAB002"
							value="${bug.AAB002}" aria-describedby="sizing-addon2">
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-8  col-md-offset-2">
					<div class="input-group">
						<span class="input-group-addon " id="sizing-addon2">测试人员</span> <input
							type="text" class="form-control" readOnly="readOnly"
							name="AAB004" value="${username}"
							aria-describedby="sizing-addon2">
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-8  col-md-offset-2">
					<div class="input-group">
						<span class="input-group-addon " id="sizing-addon2">测试系统</span> <select
							class="form-control changdu1" id="AAB011" name="AAB011"
							aria-describedby="sizing-addon2">
							<option value="windows" ${bug.AAB011=="windows"?'selected':''}>windows</option>
							<option value="linux" ${bug.AAB011=="linux"?'selected':''}>linux</option>
						</select>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-8  col-md-offset-2">
					<div class="input-group">
						<span class="input-group-addon " id="sizing-addon2">测试用例</span> <input
							type="text" class="form-control" name="AAB012"
							value="${bug.AAB012}" aria-describedby="sizing-addon2">
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-8  col-md-offset-2">
					<div class="input-group">
						<span class="input-group-addon">提交时间</span> <input type="date"
							class="form-control" required name="AAB013" value="${date}"
							readOnly="readOnly" aria-label="Amount (to the nearest dollar)">
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-8  col-md-offset-2">
					<div class="input-group">
						<span class="input-group-addon " id="sizing-addon2">bug严重性</span>
						<select class="form-control changdu1" aria-describedby="sizing-addon2"
							name="AAB010" required>
							<option value="严重" ${bug.AAB010=="严重"?'selected':''}>严重</option>
							<option value="一般" ${bug.AAB010=="一般"?'selected':''}>一般</option>
							<option value="普通" ${bug.AAB010=="普通"?'selected':''}>普通</option>
						</select>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-8  col-md-offset-2">
					<div class="input-group">
						<span class="input-group-addon " id="sizing-addon2">bug描述</span>
						<textarea class="form-control" rows="3" name="AAB017">${bug.AAB017}</textarea>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3 col-md-offset-8" style="margin-top: 10px">
					<button type="button"  id="shangchuan" class="btn btn-primary" data-toggle="modal" data-target="#myModal">上传文件</button>
					<button type="submit" id="tijiao" class="btn btn-default">提交</button>
					<a href="returnxinjian.action"><button type="button"
							class="btn btn-default">返回</button></a>
				</div>
			</div>
			
		</form>
	</div>
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">上传文件</h4>
				</div>
				<div class="modal-body">
					<form action="Bug_upload.action" id="form121" method="post"
						class="form-horizontal" role="form" enctype="multipart/form-data">
						<input type="file" name="file">
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" onclick="d()" class="btn btn-primary"
						data-dismiss="modal">提交</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">退出</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>