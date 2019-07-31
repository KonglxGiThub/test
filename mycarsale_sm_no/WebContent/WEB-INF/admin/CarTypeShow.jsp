<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- java脚本，抓的是项目名 -->
<%
String path = request.getContextPath();
%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="<%=path %>/js/jquery.js"></script>
<script type="text/javascript" src="<%=path %>/js/menu.js"></script>
<script type="text/javascript">
</script>


<title>Insert title here</title>
</head>
<body>
<table width="900" border="1" align="center">
  <tr align="center">
    <td>系列序号</td>
    <td>系列名称</td>
    <td>系列说明</td>
    <td>系列排序</td>
    <td>操作 <a href="CarTypeAddView.action" id ="datil">添加</a> </td> 
  </tr>
  <!-- varStatus="state"生成序列号，从1开始 -->
  <c:forEach var ="type" items="${list}" varStatus="state" >
    <tr align="center">
    <td>${state.count}</td>
    <td>${type.typeName}</td>
    <td>${type.typeDes}</td>
    <td>${type.typeOder}</td>
    <td>
    
    <a href="deleteCarType.action?id=${type.typeId }" id ="del">删除</a>
    <a href="updateManagerView.action?id=${user.loginid }&name=${user.username}&age=${user.age}&sex=${user.sex}&pass=${user.password}&type=${user.type}" id ="update">更新</a>
    
    </td>
  </tr>
  </c:forEach>

</table>
</body>
</html>