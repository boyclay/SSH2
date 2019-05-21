<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="style/bootstrap.min.css" />
<link rel="stylesheet" href="style/fileinput.min.css" />
<script src="js/jquery-3.2.1.js"></script>
<script src="js/bootstrap.min.js"></script>
<script>
	$(function() {
		$("#AAB001 option[value='${bug.AAB001}']").attr("selected", true);
		$("#AAB003 option[value='${bug.AAB003}']").attr("selected", true);
		$("#AAB005 option[value='${bug.AAB005}']").attr("selected", true);
		if($("#title").val()=='2'){
			$("#tijiao").css('display','none');
			var form = document.forms[0];
			for(var i=0;i<form.length-1;i++){
				form.elements[i].disabled = "true";
			}
		}
	})
</script>
</head>
<body>
	<div class="container">
		<form action="" method="post" class="form-horizontal" role="form">
			<input type="hidden" id="title" value="${title}" /> <input
				type="hidden" id="c" value="${bug.AAB003}" /> <input type="hidden"
				id="AAA000" name="AAA000" value="${bug.AAA000}" />
			<div class="row">
				<div class="col-md-8  col-md-offset-2">
					<div class="input-group">
						<span class="input-group-addon" id="sizing-addon2">项目名称</span> <select
							class="form-control changdu1" id="AAB001" name="AAB001"
							aria-describedby="sizing-addon2" disabled="disabled">
							<s:iterator value="#session.plist" id="plist">
								<option value="<s:property value="#plist.pname"/>"><s:property
										value="#plist.pname" /></option>
								<%-- 								<option value="${pname}">${pname}</option> --%>
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
							value="${bug.AAB002}" aria-describedby="sizing-addon2"
							disabled="disabled">
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-8  col-md-offset-2">
					<div class="input-group">
						<span class="input-group-addon " id="sizing-addon2">开发人员</span> <select
							class="form-control" aria-describedby="sizing-addon2"
							name="AAB003" id="AAB003">
							<s:iterator value="#request.developList" id="developList">
								<option value="<s:property value="#developList.userName"/>"><s:property
										value="#developList.userName" /></option>
							</s:iterator>
						</select>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-8  col-md-offset-2">
					<div class="input-group">
						<span class="input-group-addon " id="sizing-addon2">测试人员</span> <input
							type="text" class="form-control" name="AAB004"
							value="${bug.AAB004}" disabled="disabled"
							aria-describedby="sizing-addon2">
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-8  col-md-offset-2">
					<div class="input-group">
						<span class="input-group-addon " id="sizing-addon2">修改人员</span> <select
							class="form-control" aria-describedby="sizing-addon2"
							name="AAB005" id="AAB005">
							<s:iterator value="#request.developList" id="developList">
								<option value="<s:property value="#developList.userName"/>"><s:property
										value="#developList.userName" /></option>
							</s:iterator>
						</select>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-8  col-md-offset-2">
					<div class="input-group">
						<span class="input-group-addon " id="sizing-addon2">分配情况</span> <select
							class="form-control" aria-describedby="sizing-addon2"
							name="AAB006">
							<option value="未分配" ${bug.AAB006=="未分配"?'selected':''}>未分配</option>
							<option value="已分配" ${bug.AAB006=="已分配"?'selected':''}>已分配</option>
						</select>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-8  col-md-offset-2">
					<div class="input-group">
						<span class="input-group-addon " id="sizing-addon2">处理情况</span> <select
							class="form-control" aria-describedby="sizing-addon2"
							disabled="disabled">
							<option value="未处理" ${bug.AAB007=="未处理"?'selected':''}>未处理</option>
							<option value="已处理" ${bug.AAB007=="已处理"?'selected':''}>已处理</option>
						</select>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-8  col-md-offset-2">
					<div class="input-group">
						<span class="input-group-addon " id="sizing-addon2">bug状态</span> <select
							class="form-control" aria-describedby="sizing-addon2"
							name="AAB008" disabled="disabled">
							<option value="开启" ${bug.AAB008=="开启"?'selected':''}>开启</option>
							<option value="关闭" ${bug.AAB008=="关闭"?'selected':''}>关闭</option>
						</select>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-8  col-md-offset-2">
					<div class="input-group">
						<span class="input-group-addon " id="sizing-addon2">bug优先级</span>
						<select class="form-control" aria-describedby="sizing-addon2"
							name="AAB009">
							<option value="优" ${bug.AAB009=="优"?'selected':''}>优</option>
							<option value="良" ${bug.AAB009=="良"?'selected':''}>良</option>
							<option value="中" ${bug.AAB009=="中"?'selected':''}>中</option>
						</select>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-8  col-md-offset-2">
					<div class="input-group">
						<span class="input-group-addon " id="sizing-addon2">bug严重性</span>
						<select class="form-control" aria-describedby="sizing-addon2"
							name="AAB010" disabled="disabled">
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
						<span class="input-group-addon " id="sizing-addon2">测试系统</span> <select
							class="form-control changdu1" id="AAB011" name="AAB011"
							aria-describedby="sizing-addon2" disabled="disabled">
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
							value="${bug.AAB012}" disabled="disabled"
							aria-describedby="sizing-addon2">
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-8  col-md-offset-2">
					<div class="input-group">
						<span class="input-group-addon">提交时间</span> <input type="date"
							class="form-control" required name="AAB013" value="${bug.AAB013}"
							disabled="disabled" aria-label="Amount (to the nearest dollar)">
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-8  col-md-offset-2">
					<div class="input-group">
						<span class="input-group-addon">期待完成时间</span> <input type="date"
							class="form-control" required name="AAB014" value="${bug.AAB014}"
							aria-label="Amount (to the nearest dollar)">
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-8  col-md-offset-2">
					<div class="input-group">
						<span class="input-group-addon">实际完成时间</span> <input type="date"
							class="form-control" required name="AAB015" value="${bug.AAB015}"
							disabled="disabled" aria-label="Amount (to the nearest dollar)">
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-8  col-md-offset-2">
					<div class="input-group">
						<span class="input-group-addon">bug关闭时间</span> <input type="date"
							class="form-control" required name="AAB016" value="${bug.AAB016}"
							disabled="disabled" aria-label="Amount (to the nearest dollar)">
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-8  col-md-offset-2">
					<div class="input-group">
						<span class="input-group-addon " id="sizing-addon2">bug描述</span>
						<textarea class="form-control" disabled="disabled" rows="3"
							name="AAB017">${bug.AAB017}</textarea>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3 col-md-offset-8" style="margin-top: 10px">
					<button type="submit" id="tijiao" class="btn btn-default"
						formaction="bug_ManageTiJiao.action">提交</button>
					<a href="returnManage.action"><button type="button"
							class="btn btn-default">返回</button></a>
				</div>
			</div>
		</form>
	</div>
</body>
</html>