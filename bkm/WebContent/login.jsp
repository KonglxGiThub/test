<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="/bkm/css/css.css" />
</head>

<body>
${requestScope.msg}

<form action="/bkm/LoginServlet">
<table border="1">
  <tr>
	  <td width="80">用户</td>
	  <td width="80"><input type="text" name="name"></td>
  </tr>
  <tr>
	  <td width="80">密码</td> 
	  <td width="80"><input type="text" name="pass"></td>
  </tr>
    <tr>
     <td width="80">
	      时限<select name="time">
			   <option value="0"></option>
			   <option value="3">3天免登陆</option>
			   <option value="7">7天免登陆</option>
		  </select>
	  </td>
	  <td width="80">
			  <input type="submit" value="登录">&nbsp;
			  <input type="reset" value="重置">
	</td>
  </tr>
  </table>
  
</form>
</body>
</html>