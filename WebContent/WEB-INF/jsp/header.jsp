<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="style/bootstrap.min.css">
<style>
#sysdate {
	margin-bottom: -12px;
}
</style>
<script type="text/javascript">

	
	$(function(){
		$("#lianjie li").click(function(){
			$(this).addClass("active").siblings().removeClass("active");
		})
	});

</script>
</head>
<body>
	<div class="row">
		<div class="col-md-12">
			<nav class="navbar navbar-default" id="top">
				<div class="container-fluid">
					<div class="navbar-header">
						<span id="username">用户姓名：${username}</span><br /> <span
							id="sysdate"> 当前时间：${date}</span><br />
					</div>
					<div class="collapse navbar-collapse"
						id="bs-example-navbar-collapse-6">
						<ul class="nav navbar-nav navbar-right" id="lianjie">
							<li><a href="Test_xinjian.action">新建bug</a></li>
							<li><a href="#">bug查询</a></li>
							<li><a href="#">Link</a></li>
						</ul>
					</div>
				</div>
			</nav>
		</div>
	</div>
</body>
</html>