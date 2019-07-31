<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<title>欢迎登录校友通讯录管理系统</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Student Login Form Widget Responsive, Login form web template,Flat Pricing tables,Flat Drop downs  Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="stuCss/style.css" rel='stylesheet' type='text/css' media="all"/>
</head>
<body>
	<div class="content">
		<form action="LoginServlet" method="post">
		<div class="row1">
			<h1>欢迎登录校友通讯录管理系统</h1>
			<p>时光可以改变面容，无法改变我们之间的情谊</p>
				<input type="text" name="username" value="学工号" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '学工号';}"/>
				<input type="password" name="pwd" value="密码******" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '密码******';}"/>
		</div>
		<div class="row2">
			<a href="index.jsp">后台登录</a>
			<input type="submit" value="登录"/>
		</div>
		</form>
	</div>
	<div class="footer">
		<p>版权所有 © 2016 光华学院 </p>
	</div>
</body>
</html>