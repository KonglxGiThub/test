<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
.add{
color: red;
background-color:yellow;}
.blue{
color:blue;
background-color:gray;
}
</style>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
$(function(){
	$("input").click(function(){
		//alert("xxxx");
		$("div").toggleClass("add");
	});
	$("h1").hover(function(){
		$(this).addClass("add");
	},function(){
		$(this).removeClass("add");
		});
	
	$("tr:even").addClass("add");
	$("tr:odd").addClass("blue");
	$("#dept").change(function(){
		$.ajax({
			url:'GetEmpByDeptIdServlet',
			data:{deptId:$('#dept').val()},
			dataType:'json',
			error:function(e){
				alert("失败");
				alert(e);
			},
			success:function(data){
				alert("成功");
				  $.each(data.emps,function(i){
					$.each(data.emps[i],function(k,v){
						$("#emp").append("<option value="+k+">"+v+"</option>");
					});
				});  
			},
		});
	});
});


</script>
</head>
<body>
<input type="button" class="b1" value="点击">
<h1>hhhh</h1>
<div>xxxxxxxxx</div>
<table>
<tr><td>111</td><td>222</td><td>333</td></tr>
<tr><td>444</td><td>555</td><td>666</td></tr>
<tr><td>777</td><td>888</td><td>999</td></tr>
</table>
<select id="dept">
<option value="1">财务部</option>
<option value="2">技术部</option>
<option value="3">后勤部</option>
<option>
</select>
<select id="emp">
</select>
</body>
</html>