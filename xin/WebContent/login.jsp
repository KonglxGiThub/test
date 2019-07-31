<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="/xin/css/css.css" />
<% String na =null;
   String pa =null;
   Cookie[] cook = request.getCookies();
   if(cook!=null){
   for(Cookie c:cook){
   if(c.getName().equals("userName")){
	   na = c.getValue();
	   }
   if(c.getName().equals("userPass")){
	  pa=c.getValue();
   }
   if(na!=null&&pa!=null){
	  request.getRequestDispatcher("LoginServlet?name="+na+"&pass="+pa).forward(request, response);
	  //request.getRequestDispatcher("GetAllUserServlet").forward(request, response);
   }
   }
   }
   %>
</head>
<body>
<%String msg = (String)request.getAttribute("msg"); %>
<%if (msg!=null){ %>
<%=msg %>
<%}%>
<form action="/Xin/LoginServlet">
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
	<c:choose>
		<c:when test="${13>4}">
		hello!
		</c:when>
		<c:when test="${4<5}">
			hi!
		</c:when>
		<c:otherwise>
		how are u?
		</c:otherwise>
	</c:choose>

</body>
</html>