<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-1.4.2.js"></script>
<script type="text/javascript"> 
$(function(){ 
$('.tabPanel ul li').click(function(){ 
$(this).addClass('hit').siblings().removeClass('hit'); 
$('.panes>div:eq('+$(this).index()+')').show().siblings().hide(); 
}) 
}) 
</script>
</head>
<body>
	<div>
		<div class="tabPanel">
			<ul>
				<li class="hit">企业方</li>
				<li>供应方</li>
				<li>京体网</li>
			</ul>
			<div class="panes">
				<div class="pane" style="display: block;">

					<div align="center">
						<div id="Main">
							<div class="form_div1">
								<span class="span1">用户名：</span><input type="text"
									class="Textbox" />
							</div>
							<div class="form_div1">
								<span class="span1">密 码：</span><input type="password"
									class="Textbox" />
							</div>
							<div>
								<div class="form_div1">
									<span class="span1"> </span> <input type="submit"
										name="btnLogin" value="登 录" class="Button"
										style="margin-top: 8px" /> <a href="#">忘记密码</a>
								</div>

							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
</body>
</html>
