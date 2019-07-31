<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" import="com.chinasofti.web1026.model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="ShowServlet" method="post">
<table border="1" align="center">
	<tr>
		<td>部门号</td>
		<td>部门名字</td>
		<td>城市</td>
	</tr>
<%String msg=(String)request.getAttribute("msg"); %>

<%if(request.getAttribute("list")!=null){
	List<DeptTable>list=(List<DeptTable>)request.getAttribute("list"); 
  for(DeptTable d:list){%>
 <tr>
	 <td> <%=d.getDeptNo()%></td>
	 <td> <%=d.getdName()%></td>
	 <td> <%=d.getCity()%></td>
 </tr> 
<%} } else{%>
</table>

<%=msg %>
<%} %>
</form>
</body>
</html>