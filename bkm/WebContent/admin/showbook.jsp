<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" import="bkm.xin.vo.BKM"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" rel="stylesheet" href="/bkm/css/css.css" />
<title>Insert title here</title>
</head>
<body>
<%ArrayList<BKM> list= (ArrayList)request.getAttribute("list"); %>
${param.name }你好
${requestScope.msg}
<form action="ShowBookServlet">
<table width="360" border="1">
  <tr>
    <td width="98">&nbsp;</td>
    <td width="116"><input type="text" name="bname"></td>
    <td width="124"><input type="submit" value="借阅"></td>
  </tr>
  <tr>
    <td>id</td>
    <td>图书名称</td>
    <td>是否可借</td>
  </tr>
  <%if(list!=null){ for(BKM b:list){ %>
    <tr>
    <td><%=b.getBid() %></td>
    <td><%=b.getBname() %></td>
    <td><%=b.getBstatus() %></td>
  </tr>
  
  <%}} %>

</table></form>
</body>
</html>