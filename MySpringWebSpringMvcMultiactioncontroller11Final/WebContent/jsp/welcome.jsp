<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
welcome
	<!-- login与LoginController类里的类名的login对应，fangfa是springmvc-servlet的fangfa，
	login11sss对应类里的方法名 -->
	<form action="login.action?fangfa=login11sss" method="post">
		name<input type="text" name="name">
		pass<input type="text" name="pass">
		<input type="submit" value="sub">
	</form>
</body>
</html>