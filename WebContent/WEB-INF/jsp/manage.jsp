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
	padding-bottom: -12px;
}

.changdu {
	width: 110px !important;
}

.changdu1 {
	width: 200px !important;
}

.center1 {
	text-align: center !important;
	padding-top: 15px !important;
}

.left {
	margin-left: 20px;
}

.top {
	padding-top: 5px;
}

.center {
	text-align: center !important;
}

.ut {
	padding-top: 0px;
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
			$("#AAB006").val("");
			$("#AAB010").val("");
			$("#AAB011").val("");
			$("#AAB013").val("");
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
	function b(AAA000) {
			$.ajax({
				type : "post",
				url : "rejectAjaxJsonAction",//需要用来处理ajax请求的
				data : {//设置数据源
					AAA000 : AAA000
				},
				dataType : "json",//设置需要返回的数据类型
				success : function(data) {
					$("#rejectTable tbody").html("");
					var tmp = eval("(" + data + ")");
					$.each(tmp,function(i,resultList){ 
						var _tr = "<tr><td>"+ 
								resultList.AAA000+"</td><td>"+resultList.username+ 
						"</td><td>"+resultList.time+"</td><td>"+resultList.reason+"</td></tr>"; 
						$("#rejectTable").append(_tr); 
					}) 
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
		<form action="" method="post" class="form-horizontal" role="form">
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
								<ul class="nav navbar-nav navbar-right">
									<li><a href="Manange_newPoject.action">新建项目</a></li>
									<li><a href="Manange_newUser.action">新建用户</a></li>
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
						<input type="text" id="AAB002" name="AAB002"
							class="form-control changdu1" aria-describedby="sizing-addon2"
							value="${AAB002}">
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
			<div class="row left top ">
				<div class="col-md-4">
					<div class="input-group">
						<span class="input-group-addon  changdu" id="sizing-addon2">分配情况</span>
						<select class="form-control changdu1" id="AAB006" name="AAB006"
							aria-describedby="sizing-addon2">
							<option value="">---所有情况---</option>
							<option value="未分配" ${AAB006=="未分配"?'selected':''}>未分配</option>
							<option value="已分配" ${AAB006=="已分配"?'selected':''}>已分配</option>
						</select>
					</div>
				</div>
				<div class="col-md-4">
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
						<span class="input-group-addon changdu">提交时间</span> <input
							type="date" id="AAB013" name="AAB013"
							class="form-control changdu1"
							aria-label="Amount (to the nearest dollar)" value="${time}">
					</div>
				</div>
			</div>
			<div class="row top">
				<div class="col-md-3 col-md-offset-9" style="padding-left: 30px;">
					<button type="submit" class="btn btn-default"
						formaction="Bug_down.action">Excel导出</button>
					<button type="submit" class="btn btn-default"
						formaction="Manage_search.action">查询</button>
					<button type="button" class="btn btn-default" id="reset">重置</button>
				</div>
			</div>

			<div class="row" style="padding-top: 30px;">
				<div class="col-md-12">
					<table class="table table-hover">
						<thead>
							<tr>
								<th style="width: 10%" class="center"><input
									type="checkbox" name="all" value="" /></th>
								<th style="width: 16%" class="center">项目名称</th>
								<th style="width: 10%" class="center">业务名称</th>
								<th style="width: 10%" class="center">测试系统</th>
								<th style="width: 7%" class="center">分配情况</th>
								<th style="width: 7%" class="center">严重性</th>
								<th style="width: 10%" class="center">提交时间</th>
								<th style="width: 30%" class="center">操作</th>
							</tr>
						</thead>
						<tbody>
							<s:iterator value="#request.Managelist" id="Managelist">
								<tr>
									<td class="center1"><input type="checkbox" name="CheckBox"
										value='<s:property value="AAA000"/>' /></td>
									<td class="center1"><s:property value="#Managelist.AAB001" /></td>
									<td class="center1"><s:property value="#Managelist.AAB002" /></td>
									<td class="center1"><s:property value="#Managelist.AAB011" /></td>
									<td class="center1"><s:property value="#Managelist.AAB006" /></td>
									<td class="center1"><s:property value="#Managelist.AAB010" /></td>
									<td class="center1"><s:date name="AAB013"
											format="yyyy-MM-dd " /></td>
									<td class="center"><button type="button"
											class="btn btn-primary" data-toggle="modal"
											data-target="#myModalxiangxi"
											onclick="a(<s:property value="AAA000"/>)">详细</button> <s:if
											test='AAB006.equals("已分配")'>
											<button type="button" class="btn btn-default"
												data-toggle="tooltip" data-placement="left"
												title="已分配不能重新分配">分配</button>
										</s:if> <s:else>
											<button type="submit" class="btn btn-primary"
												formaction="Manage_delivery.action?AAA000=<s:property value="AAA000"/>">分配</button>
										</s:else> <s:if test='AAB008.equals("关闭")'>
											<button type="button" class="btn btn-default"
												data-toggle="tooltip" data-placement="left"
												title="已关闭bug不能删除">删除</button>
										</s:if> <s:else>
											<button type="submit" class="btn btn-warning"
												onclick="javascript: return confirm('您确定删除吗？');">删除</button>
										</s:else>
										<button type="button" class="btn btn-primary"
											data-toggle="modal" data-target="#myModalreject"
											onclick="b(<s:property value="AAA000"/>)">驳回记录</button> <%-- 											onclick="a(<s:property value="AAA000"/>)" --%>
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
					<h4 class="modal-title" id="myModalLabel">驳回信息</h4>
				</div>
				<div class="modal-body">
					<form action="Bug_revise.action" id="form102" method="post"
						class="form-horizontal" role="form">
						<table id="rejectTable" class="table table-hover">
							<thead>
								<tr>
									<th style="width: 20%" class="center">bug流水号</th>
									<th style="width: 20%" class="center">驳回人员</th>
									<th style="width: 30%" class="center">驳回时间</th>
									<th style="width: 30%" class="center">驳回原因</th>

								</tr>
							</thead>
							<tbody class="center">
							</tbody>
						</table>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="myModalxiangxi" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
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
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>