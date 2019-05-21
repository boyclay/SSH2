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
<script>
 function checklength(){
	
	 var checklength = document.forms[0].Username;
	 var checkbox=0;
	 for(var  i=0;i<checklength.length;i++){
		 if(document.forms[0].Username[i].checked){
			 checkbox++;
		 }
	 }
	 if(checkbox==0){
		 alert("请选择人员");
		 return false;
	 }else{
		 var form  = document.getElementById("form1");
		 form.submit();
	 }
 }
</script>
</head>
<body>
	<s:fielderror />
	<div class="container">
		<form action="Manange_newProjectCreate.action" method="post"
			class="form-horizontal" role="form" id="form1">
			<div class="row">
				<div class="col-md-8  col-md-offset-2">
					<div class="input-group">
						<span class="input-group-addon" id="sizing-addon2">项目Id</span> <input
							type="text" class="form-control" required name="pid"
							aria-describedby="sizing-addon2">
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-8  col-md-offset-2">
					<div class="input-group">
						<span class="input-group-addon " id="sizing-addon2">项目名称</span> <input
							type="text" class="form-control" required name="pname"
							aria-describedby="sizing-addon2">
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-8  col-md-offset-2">
					<div class="input-group">
						<span>请选择测试人员</span><br>
						<s:iterator value="#request.testList" id="testList">
							<input type="checkbox" name="Username"
								value="<s:property value="#testList.userName"/>" />
							<s:property value="#testList.userName" />
						</s:iterator>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-8  col-md-offset-2">
					<div class="input-group">
						<span>请选择开发人员</span><br>
						<s:iterator value="#request.developList" id="developList">
							<input type="checkbox" name="Username"
								value="<s:property value="#developList.userName"/>" />
							<s:property value="#developList.userName" />
						</s:iterator>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3 col-md-offset-8" style="margin-top: 10px">
					<button type="button" class="btn btn-default"
						onclick="checklength()">保存</button>
					<a href="returnManage.action"><button type="button"
							class="btn btn-default">返回</button></a>
				</div>
			</div>
		</form>
	</div>
</body>
</html>