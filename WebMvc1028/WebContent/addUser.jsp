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
<form action="AddUserServlet">
<table width="360" border="1">
  <tr>
    <td>姓名</td>
    <td>密码</td>
    <td>状态</td>
  </tr>
  <tr>
    <td><input type="text" name="aname"></td>
    <td><input type="password" name="apass"></td>
    
    <td>    
	    <select name="astate">
		    <option value="0">正在审核</option>
		    <option value="1">审核通过</option>
		    <option value="2">审核未过</option>
   			 </select>
    </td>
  </tr>
    <tr>
    <td colspan="3" align="center">
	<input type="submit" value="add">
    </td>
  </tr>
</table></form>
</body>
</html>