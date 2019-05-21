<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>登录页面</title>
<link rel="stylesheet" href="style/bootstrap.min.css">
<style>
#sysdate {
	margin-bottom: -12px;
}

.changdu {
	width: 110px !important;
}

.changdu1 {
	width: 200px !important;
}

.left {
	margin-left: 15px;
}

.top {
	margin-top: 5px;
}

.center {
	text-align: center !important;
}

.center1 {
	text-align: center !important;
	padding-top: 15px !important;
}

.ut {
	margin-top: 0px;
}
</style>
<script src="js/jquery-3.2.1.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/highcharts.js"></script>
<script>
	function changPS() {
		$("#form101").action = "Bug_revise.action";
		$("#form101").submit();
	}
	$(function() {
		$("#reset").click(function() {
			$("#AAB001").val("");
			$("#AAB002").val("");
			$("#AAB009").val("");
			$("#AAB010").val("");
			$("#AAB011").val("");
			$("#AAB014").val("");
		})
		$("input[name = 'all']").click(function() {
			if ($(this).is(":checked")) {
				$("input[name ='CheckBox']").prop("checked", true);

			} else {
				$("input[name='CheckBox']").prop("checked", false);
			}
		})
		$("[data-toggle='tooltip']").tooltip();
		$("[data-toggle='popover']").popover();
		$("#AAB001 option[value='${AAB001}']").attr("selected", true);
		//根据值去除选中状态
	})
	
	function c(AAA000){
		$("#rejectAAA000").val(AAA000);
	}
	function d(){
		$("#form102").action = "Bug_reject.action";
		$("#form102").submit();
	}
	function a(AAA000) {
			$.ajax({
				type : "post",
				url : "excuteAjaxJsonAction",//需要用来处理ajax请求的
				data : {//设置数据源
					AAA000 : AAA000
				},
				dataType : "json",//设置需要返回的数据类型
				success : function(data) {
					var d = eval("(" + data + ")");//将数据转换成json类型，可以把data用alert()输出出来看看到底是什么样的结构
					  $("#dAAB001").val(""+d.AAB001+"");
					  $("#dAAB002").val(""+d.AAB002+"");
					  $("#dAAB003").val(""+d.AAB003+"");
					  $("#dAAB004").val(""+d.AAB004+"");
					  $("#dAAB005").val(""+d.AAB005+"");
					  $("#dAAB006").val(""+d.AAB006+"");
					  $("#dAAB007").val(""+d.AAB007+"");
					  $("#dAAB008").val(""+d.AAB008+"");
					  $("#dAAB009").val(""+d.AAB009+"");
					  $("#dAAB010").val(""+d.AAB010+"");
					  $("#dAAB011").val(""+d.AAB011+"");
					  $("#dAAB012").val(""+d.AAB012+"");
					  $("#dAAB013").val(""+d.AAB013+"");
					  $("#dAAB014").val(""+d.AAB014+"");
					  $("#dAAB015").val(""+d.AAB015+"");
					  $("#dAAB016").val(""+d.AAB016+"");
					  $("#dAAB017").val(""+d.AAB017+"");
				},
				error : function() {
					alert("系统异常，请稍后重试！");
				}//这里不要加","
			});
	}
</script>

</head>
<body>
	<div class="container">
		<form action="" method="post" class="form-horizontal" role="form"
			id="form1">
			<div class="row">
				<div class="col-md-12">
					<nav class="navbar navbar-default" id="top">
						<div class="container-fluid">
							<div class="navbar-header" style="padding-top: 3px;">
								<span id="username">用户姓名：${username}</span><br /> <span
									id="sysdate"> 当前时间：${date}</span><br />
							</div>
							<div class="collapse navbar-collapse"
								id="bs-example-navbar-collapse-6">
								<ul class="nav navbar-nav navbar-right" id="lianjie">
									<li><a data-toggle="modal" data-target="#myModal"
										id="changePs">修改密码</a></li>
									<li><a href="loginout">注销</a></li>
								</ul>
							</div>
						</div>
					</nav>
				</div>
			</div>
			<div class="row left ">
				<div class="col-md-4">
					<div class="input-group">
						<span class="input-group-addon changdu" id="sizing-addon2">项目名称</span>
						<select class="form-control changdu1" id="AAB001" name="AAB001"
							aria-describedby="sizing-addon2">
							<option value="">---查询全部项目---</option>
							<s:iterator value="#session.plist">
								<option value="${pname}">${pname}</option>
							</s:iterator>
						</select>
					</div>
				</div>
				<div class="col-md-4">
					<div class="input-group">
						<span class="input-group-addon changdu" id="sizing-addon2">业务名称</span>
						<input type="text" name="AAB002" class="form-control changdu1"
							id="AAB002" aria-describedby="sizing-addon2">
					</div>
				</div>
				<div class="col-md-4">
					<div class="input-group">
						<span class="input-group-addon  changdu" id="sizing-addon2">测试系统</span>
						<select class="form-control changdu1" id="AAB011" name="AAB011"
							aria-describedby="sizing-addon2">
							<option value="">---所有系统---</option>
							<option value="windows" ${AAB011=="windows"?'selected':''}>windows</option>
							<option value="linux" ${AAB011=="linux"?'selected':''}>linux</option>
						</select>
					</div>
				</div>
			</div>
			<div class="row left top">
				<div class="col-md-4 ">
					<div class="input-group">
						<span class="input-group-addon changdu" id="sizing-addon2">严重性</span>
						<select class="form-control changdu1" name="AAB010" id="AAB010"
							aria-describedby="sizing-addon2">
							<option value="">---全部---</option>
							<option value="严重" ${AAB010=="严重"?'selected':''}>严重</option>
							<option value="一般" ${AAB010=="一般"?'selected':''}>一般</option>
							<option value="普通" ${AAB010=="普通"?'selected':''}>普通</option>
						</select>
					</div>
				</div>
				<div class="col-md-4">
					<div class="input-group">
						<span class="input-group-addon changdu" id="sizing-addon2">bug优先级</span>
						<select class="form-control changdu1" name="AAB009" id="AAB009"
							aria-describedby="sizing-addon2">
							<option value="">---全部---</option>
							<option value="优" ${AAB009=="优"?'selected':''}>优</option>
							<option value="良" ${AAB009=="良"?'selected':''}>良</option>
							<option value="中" ${AAB009=="中"?'selected':''}>中</option>
						</select>
					</div>
				</div>
				<div class="col-md-4">
					<div class="input-group">
						<span class="input-group-addon changdu">期待完成时间</span> <input
							type="date" id="AAB014" name="AAB014"
							class="form-control changdu1"
							aria-label="Amount (to the nearest dollar)" value="${time}">
					</div>
				</div>
			</div>
			<div class="row " style="padding-left: 550px;; padding-top: 8px;">
				<div class="col-md-4  col-md-offset-8">
					<button type="submit" class="btn btn-default"
						formaction="Develop_search.action">查询</button>
					<button type="button" class="btn btn-default" id="reset">重置</button>
				</div>
			</div>
			<div class="row" style="margin-top: 30px;">
				<div class="col-md-12">
					<table class="table table-hover">
						<thead>
							<tr>
								<th style="width: 10%" class="center"><input
									type="checkbox" name="all" value="" /></th>
								<th style="width: 16%" class="center">项目名称</th>
								<th style="width: 10%" class="center">业务名称</th>
								<th style="width: 10%" class="center">测试系统</th>
								<th style="width: 8%" class="center">bug严重性</th>
								<th style="width: 8%" class="center">bug优先级</th>
								<th style="width: 10%" class="center">期待完成时间</th>
								<th style="width: 28%" class="center">操作</th>
							</tr>
						</thead>
						<tbody>
							<s:iterator value="#request.dlist">
								<tr>
									<td class="center"><input type="checkbox" name="CheckBox"
										value='<s:property value="AAA000" />' /></td>
									<td class="center1"><s:property value="AAB001" /></td>
									<td class="center1"><s:property value="AAB002" /></td>
									<td class="center1"><s:property value="AAB011" /></td>
									<td class="center1"><s:property value="AAB010" /></td>
									<td class="center1"><s:property value="AAB009" /></td>
									<td class="center1"><s:date name="AAB014"
											format="yyyy-MM-dd" /></td>
									<td class="center"><button type="button" id="detail"
											class="btn btn-primary" data-toggle="modal"
											data-target="#myModalxiangxi"
											onclick="a(<s:property value="AAA000"/>)">详细</button> <s:if
											test='AAB007.equals("已处理")'>
											<button type="button" class="btn btn-default"
												data-toggle="tooltip" data-placement="left" title="已处理不能修改">修改</button>
											<button type="button" class="btn btn-default"
												data-toggle="tooltip" data-placement="left" title="已处理不能驳回">驳回</button>
										</s:if> <s:else>
											<button type="submit" class="btn btn-success"
												formaction="Develop_change.action?AAA000=<s:property value="AAA000"/>">修改</button>
											<button type="button" class="btn btn-primary"
												data-toggle="modal" data-target="#myModalreject"
												onclick="c(<s:property value="AAA000"/>)">驳回</button>
										</s:else>
								</tr>
							</s:iterator>
						</tbody>
					</table>
				</div>
			</div>
		</form>
		<!-- 表格 End -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">修改密码</h4>
					</div>
					<div class="modal-body">
						<form action="Bug_revise.action" id="form101" method="post"
							class="form-horizontal" role="form">
							<div class="row">
								<input type="hidden" id="us" name="us" value="${username}" />
								<div class="col-md-8  col-md-offset-2">
									<div class="input-group">
										<span class="input-group-addon" id="sizing-addon2">新密码</span>
										<input type="text" class="form-control"
											aria-describedby="sizing-addon2" required name="newPs">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-8  col-md-offset-2">
									<span
										style="font-size: 15px; font-weight: bolder; padding-left: 3px;">请回答下面的验证问题</span>
								</div>
							</div>
							<div class="row">
								<div class="col-md-8  col-md-offset-2">
									<span
										style="font-size: 15px; font-weight: bolder; padding-left: 3px;">您身份证的后四位</span>
									<input type="radio" name="optionsRadiosinline"
										id="optionsRadios3" value="1234"> 1234 <input
										type="radio" name="optionsRadiosinline" id="optionsRadios3"
										value="5256"> 5256 <input type="radio"
										name="optionsRadiosinline" id="optionsRadios3" value="5019">
									5019 <input type="radio" name="optionsRadiosinline"
										id="optionsRadios3" value="0513"> 0513
								</div>
							</div>
						</form>
					</div>
					<div class="modal-footer">
						<button type="submit" class="btn btn-primary" data-dismiss="modal"
							onclick="changPS()">提交</button>
						<button type="button" class="btn btn-default" data-dismiss="modal">退出</button>
					</div>
				</div>
			</div>
		</div>

		<div class="modal fade" id="myModalreject" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">驳回详细</h4>
					</div>
					<div class="modal-body">
						<form action="Bug_reject.action" id="form102" method="post"
							class="form-horizontal" role="form">
							<div class="row">
								<div class="col-md-8  col-md-offset-2">
									<div class="input-group">
										<span class="input-group-addon changdu" id="sizing-addon2">驳回人员</span>
										<input type="text" name="rejectUsername"
											class="form-control changdu1"
											aria-describedby="sizing-addon2" value="${username}"
											readOnly="readOnly">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-8  col-md-offset-2">
									<div class="input-group">
										<span class="input-group-addon changdu" id="sizing-addon2">bug流水号</span>
										<input type="text" name="rejectAAA000"
											class="form-control changdu1" id="rejectAAA000"
											aria-describedby="sizing-addon2" readOnly="readOnly">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-8  col-md-offset-2">
									<div class="input-group">
										<span class="input-group-addon changdu" id="sizing-addon2">驳回时间</span>
										<input type="text" name="rejectTime"
											class="form-control changdu1" value="${date}"
											aria-describedby="sizing-addon2" readOnly="readOnly">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-8  col-md-offset-2">
									<div class="input-group">
										<span class="input-group-addon changdu" id="sizing-addon2">驳回原因</span>
										<select class="form-control changdu1"
											aria-describedby="sizing-addon2" name="rejectReason">
											<option value="不认为是bug">不认为是bug</option>
											<option value="规定时间内完成不了">规定时间内完成不了</option>
										</select>
									</div>
								</div>
							</div>
						</form>
					</div>
					<div class="modal-footer">
						<button type="submit" class="btn btn-primary" data-dismiss="modal"
							onclick="d()">提交</button>
						<button type="button" class="btn btn-default" data-dismiss="modal">退出</button>
					</div>
				</div>
			</div>
		</div>

		<div class="modal fade" id="myModalxiangxi" tabindex="-1"
			role="dialog" aria-labelledby="myModalLabel">
			<div class="modal-dialog" role="document" style="width: 550px;">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">详细信息</h4>
					</div>
					<div class="modal-body">
						<form action="" method="post" class="form-horizontal" role="form">
							<div class="row">
								<div class="col-md-8  col-md-offset-2">
									<div class="input-group">
										<span class="input-group-addon changdu" id="sizing-addon2">项目名称</span>
										<input type="text" class="form-control changdu1" name="AAB001"
											id="dAAB001" readOnly="readOnly"
											aria-describedby="sizing-addon2">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-8  col-md-offset-2">
									<div class="input-group">
										<span class="input-group-addon changdu" id="sizing-addon2">业务名称</span>
										<input type="text" class="form-control changdu1" name="AAB002"
											id="dAAB002" aria-describedby="sizing-addon2"
											readOnly="readOnly">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-8  col-md-offset-2">
									<div class="input-group">
										<span class="input-group-addon changdu" id="sizing-addon2">开发人员</span>
										<input type="text" class="form-control changdu1" name="AAB003"
											id="dAAB003" aria-describedby="sizing-addon2"
											readOnly="readOnly">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-8  col-md-offset-2">
									<div class="input-group">
										<span class="input-group-addon changdu" id="sizing-addon2">测试人员</span>
										<input type="text" class="form-control changdu1" name="AAB004"
											id="dAAB004" readOnly="readOnly"
											aria-describedby="sizing-addon2">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-8  col-md-offset-2">
									<div class="input-group">
										<span class="input-group-addon changdu" id="sizing-addon2">修改人员</span>
										<input type="text" class="form-control changdu1" name="AAB005"
											id="dAAB005" readOnly="readOnly"
											aria-describedby="sizing-addon2">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-8  col-md-offset-2">
									<div class="input-group">
										<span class="input-group-addon changdu" id="sizing-addon2">分配状态</span>
										<input type="text" class="form-control changdu1" name="AAB006"
											id="dAAB006" readOnly="readOnly"
											aria-describedby="sizing-addon2">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-8  col-md-offset-2">
									<div class="input-group">
										<span class="input-group-addon changdu" id="sizing-addon2">处理状态</span>
										<input type="text" class="form-control changdu1" name="AAB007"
											id="dAAB007" readOnly="readOnly"
											aria-describedby="sizing-addon2">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-8  col-md-offset-2">
									<div class="input-group">
										<span class="input-group-addon changdu " id="sizing-addon2">bug状态</span>
										<input type="text" class="form-control changdu1" name="AAB008"
											id="dAAB008" readOnly="readOnly"
											aria-describedby="sizing-addon2">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-8  col-md-offset-2">
									<div class="input-group">
										<span class="input-group-addon changdu" id="sizing-addon2">bug优先级</span>
										<input type="text" class="form-control changdu1" name="AAB009"
											id="dAAB009" readOnly="readOnly"
											aria-describedby="sizing-addon2">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-8  col-md-offset-2">
									<div class="input-group">
										<span class="input-group-addon changdu" id="sizing-addon2">bug严重性</span>
										<input type="text" class="form-control changdu1" name="AAB010"
											id="dAAB010" readOnly="readOnly"
											aria-describedby="sizing-addon2">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-8  col-md-offset-2">
									<div class="input-group">
										<span class="input-group-addon changdu" id="sizing-addon2">测试系统</span>
										<input type="text" class="form-control changdu1" name="AAB011"
											id="dAAB011" readOnly="readOnly"
											aria-describedby="sizing-addon2">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-8  col-md-offset-2">
									<div class="input-group">
										<span class="input-group-addon changdu" id="sizing-addon2">测试用例</span>
										<input type="text" class="form-control changdu1" name="AAB012"
											id="dAAB012" readOnly="readOnly"
											aria-describedby="sizing-addon2">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-8  col-md-offset-2">
									<div class="input-group">
										<span class="input-group-addon changdu" id="sizing-addon2">提交时间</span>
										<input type="text" class="form-control changdu1" name="AAB013"
											id="dAAB013" readOnly="readOnly"
											aria-describedby="sizing-addon2">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-8  col-md-offset-2">
									<div class="input-group">
										<span class="input-group-addon changdu " id="sizing-addon2">期待完成时间</span>
										<input type="text" class="form-control changdu1" name="AAB014"
											id="dAAB014" readOnly="readOnly"
											aria-describedby="sizing-addon2">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-8  col-md-offset-2">
									<div class="input-group">
										<span class="input-group-addon  changdu" id="sizing-addon2">实际完成时间</span>
										<input type="text" class="form-control changdu1" name="AAB015"
											id="dAAB015" readOnly="readOnly"
											aria-describedby="sizing-addon2">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-8  col-md-offset-2">
									<div class="input-group">
										<span class="input-group-addon changdu" id="sizing-addon2">bug关闭时间</span>
										<input type="text" class="form-control changdu1" name="AAB016"
											id="dAAB016" readOnly="readOnly"
											aria-describedby="sizing-addon2">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-8  col-md-offset-2">
									<div class="input-group">
										<span class="input-group-addon changdu" id="sizing-addon2">bug描述</span>
										<textarea class="form-control changdu1" readOnly="readOnly"
											rows="3" id="dAAB017" name="AAB017"></textarea>
									</div>
								</div>
							</div>
						</form>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">关闭</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>