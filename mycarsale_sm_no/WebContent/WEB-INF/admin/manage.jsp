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
    <td>序号</td>
    <td>姓名</td>
    <td>年龄</td>
    <td>性别</td>
    <td>类型</td>
    <td>操作</td>
  </tr>
  <!-- varStatus="state"生成序列号，从1开始 -->
  <c:forEach var ="user" items="${manageList}" varStatus="state" >
    <tr align="center">
    <td>${state.count}</td>
    <td>${user.username}</td>
    <td>${user.age}</td>
    <td>${user.sex}</td>
    
	<!-- 根据type判断用户级别 -->
    <td>
    <c:if test="${user.type == '0'}">
	<c:set var="use" value="超级管理员"></c:set>
    </c:if>
    
   <c:if test="${user.type == '1'}">       
    <c:set var="use" value="管理员"></c:set>
    </c:if>
   ${use}
    </td>
    
    <td>
    <c:if test="${sessionScope.caruser.type == '1'}">
     <a href="#" id ="datil">详情</a>  
     </c:if>
     <c:if test="${sessionScope.caruser.type == '0'}">
    <a href="addManagerView.action" id ="datil">添加</a>  
    <a href="deleteManager.action?id=${user.loginid }" id ="del">删除</a>
    <a href="updateManagerView.action?id=${user.loginid }&name=${user.username}&age=${user.age}&sex=${user.sex}&pass=${user.password}&type=${user.type}" id ="update">更新</a>
     </c:if>
    </td>
  </tr>
  </c:forEach>

</table>
</body>
</html>