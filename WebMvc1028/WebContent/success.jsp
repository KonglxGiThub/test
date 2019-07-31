<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" import="com.xin.vo.User"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="css/css.css" />
<script type="text/javascript">
   function del(i){
   var falg = confirm("delete ture or false");
   if(falg){
	window.location.href="DelServlet?id="+i;
}
}
</script>
</head>
<body>
  <table border="1">
  <tr>
  <td width="80">用户id</td>
  <td width="80">用户</td>
  <td width="80">密码</td>
  <td width="80">状态</td>  
  <td width="120">操作</td>

<%ArrayList<User> list = (ArrayList<User>)request.getAttribute("list");
  String msg = (String)request.getAttribute("msg");

  if(list!=null){
	  for(User u:list){ %>
		<tr>
		 <td><%= u.getId()%> </td>
		 <td><%= u.getName()%> </td>
		 <td><%= u.getPass()%> </td>
		 <td><%= u.getStatus()%> </td>
		 <td>
		    <a href="addUser.jsp">增</a>
		 	<a href="updateUser.jsp">改</a>
		 	<%-- <a href="DelServlet?id=<%= u.getId()%>">删</a> --%>
		 	<input type="button" value="del" onclick="del(<%=u.getId()%>)">
		 </td>
		</tr>
<% }}%>
</table>

</body>
</html>