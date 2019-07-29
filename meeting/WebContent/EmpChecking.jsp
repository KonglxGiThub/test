<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="styles/common.css" />
</head>
<body>
<form action="ShowCheckingEmpServlet">
<div class="page-content">
	    <div class="content-nav">
	        人员管理 > 注册审批${requestScope.msg} 
	    </div>
	    <table class="listtable">
	        <caption>所有待审批注册信息：</caption>
	        <tr class="listheader">
	            <th>姓名</th>
	            <th>账号名</th>
	            <th>联系电话</th>
	            <th>电子邮件</th>
	            <th>操作</th>
	        </tr>
<c:forEach var="emp" items="${checkingEmpList }">	        
	       	 <tr>
	            <td>${emp.ename }</td>
	            <td>${emp.elname }</td>
	            <td>${emp.ephone }</td>
	            <td>${emp.email }</td>
	            <td>
	                <input type="button" class="clickbutton" value="通过"
	                onclick="window.location.href='CheckEmpPassServlet?eid=${emp.eid}&estatus=1'"/>
	                <input type="button" class="clickbutton" value="拒绝"
	                 onclick="window.location.href='CheckEmpPassServlet?eid=${emp.eid}&estatus=2'"/>
	            </td>
	        </tr>
</c:forEach>	      
	    </table>
	</div>
</form>
</body>
</html>