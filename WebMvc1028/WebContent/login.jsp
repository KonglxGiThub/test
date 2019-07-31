<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" rel="stylesheet" href="css/css.css" />
<title>Insert title here</title>
</head>
<body>
<%if(request.getAttribute("msg")!=null) {%>

<%=(String)request.getAttribute("msg") %>

<%} %>
	<form action="LoginServlet" method="post">
		姓名<input type="text" name="user"><br>
		密码<input type="password" name="pass"><br>
		   <input type="submit" value="login">
	</form>
</body>
</html>