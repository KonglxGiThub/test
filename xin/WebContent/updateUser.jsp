<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="css/css.css" />
</head>
<body>

<form action="UpdateUserServlet">
<table width="360" border="1">
  <tr>
    <td>姓名</td>
    <td>密码</td>
  </tr>
  <tr>
    <td><input type="text" name="uname" value="<%=request.getParameter("uname")%>" ></td>
    <td><input type="text" name="upass" value="<%=request.getParameter("upass")%>" ></td>
  </tr>
    <tr>
    <td colspan="4" align="center">
	<input type="hidden" name="uid" value="<%=request.getParameter("uid")%>">
	<input type="submit" value="修改">
    </td>
  </tr>
</table></form>
</body>
</html>