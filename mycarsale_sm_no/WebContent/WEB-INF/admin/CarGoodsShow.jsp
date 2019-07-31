<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- java脚本，抓的是项目名 -->
<%
String path = request.getContextPath();
%>
<!-- /* 需要导入js包 */ -->
<script type="text/javascript" src="<%=path %>/js/jquery.js"></script> 
<script type="text/javascript" src="<%=path %>/js/menu.js"></script> 
<script type="text/javascript">
$(function(){
	$("tr:odd").css("background","blue")
	
	/* ===============firstpage========================= */
	$("#firstpage").click(function(){
		
		var nowpage = $("#nowpage").val();
		var firstpage = 1;
		var countpage = $("#countpage").val();
		$("#beforepage").attr("disabled",false);
		if(firstpage>0 && firstpage<=countpage){
			$.ajax({
				url:"<%=path %>/car/page.action",
				data:{nextpage:firstpage},
				dataType:"json",
				error:function(){
					alert("error");
				},
				success:function(data){
					$("#nextpage").attr("disabled",false);	
					$("#tbpage").empty();
					$("#nowpage").val(firstpage);
					$("#tbpage").append(
					"<tr> <td width='80' height='49'>商品id</td><td width='80'>系列名</td><td width='80'>品牌名</td><td width='100'>图片</td><td width='80'>价格</td><td width='80'>商品名</td><td width='80'>商品描述</td><td width='80'>商品参数1</td><td width='80'>商品参数2</td><td width='80'>商品参数3</td><td width='80'>商品参数4</td><td width='80'>商品参数5</td><td width='80'>商品参数6</td><td width='80'>商品排序</td><td width='100'>日期</td><td width='80'>商品等级</td><td width='40'>操作<a href='<%=path %>/car/addCarGoodsView.action'>添加</a></td></tr>");

					$.each(data.list, function(key,goods) {
						/* 显示时间格式 */
						var jsonDate = new Date(goods.lastdate);
						var text = jsonDate.toLocaleString();
						$("#tbpage").append("<tr><td>"
								+goods.carName +"</td><td>"
								+goods.carType.typeName +"</td><td>"
								+goods.carBrand.brandName +"</td><td><img src='<%=path %>"
								+goods.carImg.imgPath + "'></td><td>"
							    +goods.price +"</td><td>"
							    +goods.carName +"</td><td>"
							    +goods.carDes +"</td><td>"
							    +goods.carparam1 +" </td><td>"
							    +goods.carparam2 +"</td><td>"
							    +goods.carparam3 +"</td> <td>"
							    +goods.carparam4 +"</td><td>"
							    +goods.carparam5 +"</td><td>"
							    +goods.carparam6 +"</td><td>"
							    +goods.goodsDel +"</td><td>"
							    +text+"</td><td>"
							    +goods.gorder+"</td><td width='40'><a href='<%=path %>/car/deleteById.action?id="
							    +goods.carId+"'>删除</a><a href='#'>修改</a></td></tr>");
					}); 	$("tr:odd").css("background","red")
					
				}
			});
		}

	});
	/* ==========nextpage============================== */
	$("#nextpage").click(function(){
		var nowpage = $("#nowpage").val();
		var nextpage = parseInt(nowpage)+1;
		var countpage = $("#countpage").val();
		
		$("#beforepage").attr("disabled",false);	
		 if(nextpage==countpage ||nextpage>countpage ){
			 /* 这俩效果一样 */
			$("#nextpage").attr("disabled",true);	
			/* $("#nextpage").attr({"disabled":"disabled"}); */
		} 
		/* alert(countpage+" "+nextpage); */
		if(nextpage<=countpage){
			$.ajax({
				url:"<%=path %>/car/page.action",
				data:{nextpage:nextpage},
				dataType:"json",
				error:function(){
					alert("error");
				},
				success:function(data){
					$("#nowpage").val("");
					$("#nowpage").val(nextpage);
					$("#tbpage").empty();
					
					$("#tbpage").append(
					"<tr> <td width='80' height='49'>商品id</td><td width='80'>系列名</td><td width='80'>品牌名</td><td width='100'>图片</td><td width='80'>价格</td><td width='80'>商品名</td><td width='80'>商品描述</td><td width='80'>商品参数1</td><td width='80'>商品参数2</td><td width='80'>商品参数3</td><td width='80'>商品参数4</td><td width='80'>商品参数5</td><td width='80'>商品参数6</td><td width='80'>商品排序</td><td width='100'>日期</td><td width='80'>商品等级</td><td width='40'>操作<a href='<%=path %>/car/addCarGoodsView.action'>添加</a></td></tr>");
				
					$.each(data.list, function(key,goods) {
						/* 显示时间格式 */
						var jsonDate = new Date(goods.lastdate);
						var text = jsonDate.toLocaleString();
						$("#tbpage").append("<tr><td>"
								+goods.carName +"</td><td>"
								+goods.carType.typeName +"</td><td>"
								+goods.carBrand.brandName +"</td><td><img src='<%=path %>"
								+goods.carImg.imgPath + "'></td><td>"
							    +goods.price +"</td><td>"
							    +goods.carName +"</td><td>"
							    +goods.carDes +"</td><td>"
							    +goods.carparam1 +" </td><td>"
							    +goods.carparam2 +"</td><td>"
							    +goods.carparam3 +"</td> <td>"
							    +goods.carparam4 +"</td><td>"
							    +goods.carparam5 +"</td><td>"
							    +goods.carparam6 +"</td><td>"
							    +goods.goodsDel +"</td><td>"
							    +text+"</td><td>"
							    +goods.gorder+"</td><td width='40'><a href='<%=path %>/car/deleteById.action?id="
							    +goods.carId+"'>删除</a><a href='#'>修改</a></td></tr>");
					}); 	$("tr:odd").css("background","red")
					
				}
			});
		}

	});
	
	/* ==========beforepage============================== */
	$("#beforepage").click(function(){
		var nowpage = $("#nowpage").val();
		var beforepage = parseInt(nowpage)-1;
		var countpage = $("#countpage").val();
		$("#nextpage").attr("disabled",false);	
		 if(beforepage==0){
			 /* 这俩效果一样 */
			$("#beforepage").attr("disabled",true);	
			/* $("#nextpage").attr({"disabled":"disabled"}); */
		} 
		/* alert(countpage+" "+nextpage); */
		if(beforepage<=countpage && beforepage>0){
			$.ajax({
				url:"<%=path %>/car/page.action",
				data:{nextpage:beforepage},
				dataType:"json",
				error:function(){
					alert("error");
				},
				success:function(data){
					$("#nowpage").val("");
					$("#nowpage").val(beforepage);
					$("#tbpage").empty();				
					$("#tbpage").append(
					"<tr><td width='80' height='49'>商品id</td><td width='80'>系列名</td><td width='80'>品牌名</td><td width='100'>图片</td><td width='80'>价格</td><td width='80'>商品名</td><td width='80'>商品描述</td><td width='80'>商品参数1</td><td width='80'>商品参数2</td><td width='80'>商品参数3</td><td width='80'>商品参数4</td><td width='80'>商品参数5</td><td width='80'>商品参数6</td><td width='80'>商品排序</td><td width='100'>日期</td><td width='80'>商品等级</td><td width='40'>操作<a href='<%=path %>/car/addCarGoodsView.action'>添加</a></td></tr>");

					$.each(data.list, function(key,goods) {
						/* 显示时间格式 */
						var jsonDate = new Date(goods.lastdate);
						var text = jsonDate.toLocaleString();
						$("#tbpage").append("<tr><td>"
								+goods.carName +"</td><td>"
								+goods.carType.typeName +"</td><td>"
								+goods.carBrand.brandName +"</td><td><img src='<%=path %>"
								+goods.carImg.imgPath + "'></td><td>"
							    +goods.price +"</td><td>"
							    +goods.carName +"</td><td>"
							    +goods.carDes +"</td><td>"
							    +goods.carparam1 +" </td><td>"
							    +goods.carparam2 +"</td><td>"
							    +goods.carparam3 +"</td> <td>"
							    +goods.carparam4 +"</td><td>"
							    +goods.carparam5 +"</td><td>"
							    +goods.carparam6 +"</td><td>"
							    +goods.goodsDel +"</td><td>"
							    +text+"</td><td>"
							    +goods.gorder+"</td><td width='40'><a href='<%=path %>/car/deleteById.action?id="
							    +goods.carId+"'>删除</a><a href='#'>修改</a></td></tr>");
					}); 	$("tr:odd").css("background","red")
					
				}
			});
		}

	});
	
	

	/* ===============lastpage========================= */
	$("#lastpage").click(function(){
		var nowpage = $("#nowpage").val();
		var countpage = $("#countpage").val();
		var lastpage = countpage;
		
		$("#beforepage").attr("disabled",false);
		if(lastpage>0){
			$.ajax({
				url:"<%=path %>/car/page.action",
				data:{nextpage:lastpage},
				dataType:"json",
				error:function(){
					alert("error");
				},
				success:function(data){
					$("#nextpage").attr("disabled",false);	
					$("#tbpage").empty();
					$("#nowpage").val(lastpage);
					$("#tbpage").append(
					"<tr> <td width='80' height='49'>商品id</td><td width='80'>系列名</td><td width='80'>品牌名</td><td width='100'>图片</td><td width='80'>价格</td><td width='80'>商品名</td><td width='80'>商品描述</td><td width='80'>商品参数1</td><td width='80'>商品参数2</td><td width='80'>商品参数3</td><td width='80'>商品参数4</td><td width='80'>商品参数5</td><td width='80'>商品参数6</td><td width='80'>商品排序</td><td width='100'>日期</td><td width='80'>商品等级</td><td width='40'>操作<a href='<%=path %>/car/addCarGoodsView.action'>添加</a></td></tr>");

					$.each(data.list, function(key,goods) {
						/* 显示时间格式 */
						var jsonDate = new Date(goods.lastdate);
						var text = jsonDate.toLocaleString();
						$("#tbpage").append("<tr><td>"
								+goods.carName +"</td><td>"
								+goods.carType.typeName +"</td><td>"
								+goods.carBrand.brandName +"</td><td><img src='/S/"
								+goods.carImg.imgName + "'></td><td>"
							    +goods.price +"</td><td>"
							    +goods.carName +"</td><td>"
							    +goods.carDes +"</td><td>"
							    +goods.carparam1 +" </td><td>"
							    +goods.carparam2 +"</td><td>"
							    +goods.carparam3 +"</td> <td>"
							    +goods.carparam4 +"</td><td>"
							    +goods.carparam5 +"</td><td>"
							    +goods.carparam6 +"</td><td>"
							    +goods.goodsDel +"</td><td>"
							    +text+"</td><td>"
							    +goods.gorder+"</td><td width='40'><a href='<%=path %>/car/deleteById.action?id="
							    +goods.carId+"'>删除</a><a href='#'>修改</a></td></tr>");
					}); 	$("tr:odd").css("background","red")
					
				}
			});
		}

	});
	
	
	
	
	
	/* ===============end========================= */	
});

</script> 


<title>Insert title here</title>
</head>
<body>
		<%-- <input type="hidden" id="nowpageindex" value="${nowpageindex}"> --%>
		<input type="hidden" id="countpage" value="${requestScope.page}">
	
		<h3>共${count }条数据，每页显示3条，共${requestScope.page }页，
		当前是第<input type="text"  id="nowpage" value="${nowpage}" disabled="disabled">页
			<input type="button" value="首页" id="firstpage">
			<input type="button" value="上页" id="beforepage">
			<input type="button" value="下页" id="nextpage">
			<input type="button" value="末页" id="lastpage">
			                跳到第<input type="text" id="jumppage" name="jumppage"/>页
                <input type="button" class="clickbutton"  onclick="jump()"value="跳转"/></h3>
	
<table border="1" align="center"  id="tbpage">
 
  <tr>
    <td width="80" height="49">商品id</td>
    <td width="80">系列名</td>
    <td width="80">品牌名</td>
    <td width="100">图片</td>
    <td width="80">价格</td>
    <td width="80">商品名</td>
    <td width="80">商品描述</td>
    <td width="80">商品参数1</td>
    <td width="80">商品参数2</td>
    <td width="80">商品参数3</td>
    <td width="80">商品参数4</td>
    <td width="80">商品参数5</td>
    <td width="80">商品参数6</td>
    <td width="80">商品排序</td>
    <td width="100">日期</td>
    <td width="80">商品等级</td>
    <td width="40">操作<a href="<%=path %>/car/addCarGoodsView.action">添加</a></td>
  </tr>
  
  
  <!-- 虚拟路径，在servers里配置<Context crossContext="true" 
  docBase="E:\MyWorkSpace\mycarsale_sm_no\WebContent\XXX" path="/S" 
  reloadable="true"/>
  E:\MyWorkSpace\mycarsale_sm_no\WebContent\XXX表示项目图片的绝度路径 ，
  path="/S"的S随便起，改名后要重启tomcat，否则不好用-->
  <!-- =================== -->
   <%-- <td width="51"><img src="/S/${goods.carImg.imgName}"></td>
   /S是本地图片的地址，需要加上图片名/${goods.carImg.imgName}才可以访问
    --%>
  
  <c:forEach var ="goods" items="${list }" varStatus="state">
  <tr>
    <td width="73" height="28">${state.count }</td>
    <td width="60">${goods.carType.typeName }</td>
    <td width="48">${goods.carBrand.brandName }</td>
    <td width="51"><img src="/S/${goods.carImg.imgName}"></td>
    <td width="53">${goods.price }</td>
    <td width="60">${goods.carName }</td>
    <td width="72">${goods.carDes }</td>
    <td width="74">${goods.carparam1 }</td>
    <td width="92">${goods.carparam2 }</td>
    <td width="92">${goods.carparam3 }</td>
    <td width="92">${goods.carparam4 }</td>
    <td width="92">${goods.carparam5 }</td>
    <td width="92">${goods.carparam6 }</td>
    <td width="64">${goods.goodsDel }</td>
    <td width="72"><spring:eval expression="goods.lastdate" />
    </td>
    <td width="100">${goods.gorder }</td>
     <td width="40"><a href="<%=path %>/car/deleteById.action?id=${goods.carId }">删除</a><a href="#">修改</a></td>
  </tr>
  </c:forEach>
	
</table>
</body>
</html>