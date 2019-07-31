<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <!-- java脚本，抓的是项目名 -->
<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- /* 需要导入js包 */ -->

<script type="text/javascript" src="<%=path %>/My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript" src="<%=path %>/js/jquery.js"></script> 
<script type="text/javascript" src="<%=path %>/js/menu.js"></script> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="<%=path %>/car/addCarGoodsSubmit.action">
<table width="1100" border="1">
  <tr>
    <td colspan="6"><div align="center">商品添加</div></td>
  </tr>
  <tr>
    <td width="105">系列名${typelist.size() }</td>
    <td width="247">
		<select id="typeid" name="typeId">
			<option value="0">请选择</option>
				<c:forEach var="type" items="${typelist }">
					<option value="${type.typeId}">${type.typeName}</option>
				</c:forEach>
		</select>
	</td>
    <td width="103">品牌名</td>
    <td width="249">
		<select id="brandid" name="brandId">
		<option value="0">请选择</option>
			<c:forEach var ="brand" items="${brandlist }">
				<option value="${brand.brandId }">${brand.brandName }</option>
			</c:forEach>
		</select>
	</td>
    <td width="113">价格</td>
    <td width="243">
    	<input type="text" name="price">
    </td>
  </tr>
  <tr>
    <td>商品名</td>
    <td><input type="text" name="carName"></td>
    <td>商品参数1</td>
    <td><input type="text" name="carparam1"></td>
    <td>商品参数2</td>
    <td><input type="text" name="carparam2"></td>
  </tr>
  <tr>
    <td>商品参数3</td>
    <td><input type="text" name="carparam3"></td>
    <td>商品参数4</td>
    <td><input type="text" name="carparam4"></td>
    <td>商品参数5</td>
    <td><input type="text" name="carparam5"></td>
  </tr>
  <tr>
    <td>商品参数6</td>
    <td><input type="text" name="carparam6"></td>
    <td>商品描述</td>
    <td><input type="text" name="carDes"></td>
    <td>商品排序</td>
    <td><input type="text" name="goodsDel"></td>
  </tr>
  <tr>
    <td>商品等级</td>
    <td><input type="text" name="gorder"></td>
    <td>日期</td>
    <td>
    <input type="text" id ="end" name="lastdate" onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})"></td>

  </tr>
  <tr>
    <td colspan="14"><input type="submit" value="提交"></td>
   
  </tr>
</table></form>
</body>
</html>