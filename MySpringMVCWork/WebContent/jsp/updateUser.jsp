<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="updateUser.action">
		name<input type="text" name="name" value="${param.name }"><br>
		age<input type="text" name="age" value=${param.age }><br>
		location<input type="text" name="loc" value=${param.loc }>
		<input type="hidden" name ="id" value="${param.id }">
		<input type="submit" value="sub">
	</form>
</body>
</html>