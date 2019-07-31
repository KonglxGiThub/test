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
    <td>品牌序号</td>
    <td>品牌名称</td>
    <td>品牌说明</td>
    <td>品牌排序</td>
    <td>操作 <a href="<%=path %>/brand/CarBrandAddView.action" id ="datil">添加</a> </td> 
  </tr>
  <!-- varStatus="state"生成序列号，从1开始 -->
  <c:forEach var ="brand" items="${list}" varStatus="state" >
    <tr align="center">
    <td>${state.count}</td>
    <td>${brand.brandName}</td>
    <td>${brand.brandDes}</td>
    <td>${brand.brandOder}</td>
    <td>
    
    <a href="deleteCarBrand.action?id=${brand.brandId }" id ="del">删除</a>
    <a href="updateManagerView.action" id ="update">更新</a>
    
    </td>
  </tr>
  </c:forEach>

</table>
</body>
</html>