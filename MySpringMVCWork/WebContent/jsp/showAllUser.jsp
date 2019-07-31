<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form>
	<table align="center">
		<tr>
		 <td>人员id</td>
		 <td>姓名</td>
		 <td>年龄</td> 
		<!--  需要绝对路径，没经过controller得加.jsp -->
		 <td>地址   <a href="/MySpringMVCWork/jsp/login.jsp">添加</a></td>
		</tr>
	<c:forEach var="user" items="${list }">
	<tr>
		 <td>${user.id }</td>
		 <td>${user.name }</td>
		 <td>${user.age }</td> 
		 <td>${user.location}<a href="delUser.action?id=${user.id }">del</a>
		 <a href="update.action?name=${user.name }&age=${user.age }&loc=${user.location}&id=${user.id }">update</a></td>
	</tr>
	</c:forEach>
	</table>
	</form>
</body>
</html>