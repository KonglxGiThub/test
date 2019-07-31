<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" import="com.xin.vo.User"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="css/css.css" />
<script type="text/javascript">
	function del(did){
		if(confirm("delete is ture or false")){
			window.location.href="DelUserServlet?id="+did;
		}
	}
</script>

</head>
<body>
<%String msg = (String)request.getAttribute("msg"); %>
<%-- <%List<User> list=(List)request.getAttribute("list"); %> --%>
<%-- <%if (msg!=null){ %>
<%=msg %>
<%} %> --%>
${requestScope.msg}
<%-- <%=application.getInitParameter("xx")%> --%>
${sessionScope.name }
欢迎您，您是第<%=application.getAttribute("personCount") %>位用户
<form action="GetByIdShowServlet">
  <table border="1">
    <tr>
	  <td colspan="2">id查询</td> 
	  <td ><input type="text" name="sid"></td>
	  <td colspan="2"><input type="submit" value="查询">
	  <a href="LoginOutServlet">注销</a>
	  </td>
  </tr>
  <tr>
	  <td width="80">用户id</td>
	  <td width="80">用户</td>
	  <td width="80">密码</td>
	  <td width="80">状态</td>  
	  <td width="120">操作</td>
  </tr>
 <c:forEach var="u" items="${list }">
    <tr>
 <!--    id是vo里的类的属性名 -->
    	<td>${u.id}</td>
    	<td>${u.name }</td>
    	<td>${u.pass }</td>
    	<td>${u.status }</td>
    	<td> 
    	<a href="addUser.jsp">添加</a>
	  <a href="DelUserServlet?id=${u.id }">删除</a>
	  <input type="button" value="删除" onclick="del(${u.id})">
	  <a href="updateUser.jsp?uid=${u.id }&uname=${u.name }&upass=${u.pass }">更新</a>
	  </td>
    </tr>
 
 </c:forEach>
<%--   <%if(list!=null){for(User user:list){ %>
    <tr>
	  <td width="80"><%=user.getId() %></td>
	  <td width="80"><%=user.getName() %></td>
	  <td width="80"><%=user.getPass() %></td>
	  <td width="80"><%=user.getStatus() %></td>  
	  <td width="120">
	  <a href="addUser.jsp">添加</a>
	  <a href="DelUserServlet?id=<%=user.getId() %>">删除</a>
	  <input type="button" value="删除" onclick="del(<%=user.getId() %>)">
	  <a href="updateUser.jsp?uid=<%=user.getId() %>&uname=<%=user.getName() %>&upass=<%=user.getPass() %>">更新</a>
	  </td>
  </tr>
  <%}} %> --%>
</table>
</form>
</body>
</html>