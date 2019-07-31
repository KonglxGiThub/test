<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="js/jquery.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
$(function(){
	$("#dept").change(function(){
		$.ajax({
		url:"GetEmpListServlet",
		data:{deptid:$("#dept").val()},
		dataType:"json",
		error:function(){
			alert("false");
		},
		success:function(data){
			$("#emp").empty();
			$.each(data.emps,function(index){
			$.each(data.emps[index],function(id,name){
				$("#emp").append("<option value="+id+">"+name+"</option>");
			})
			})	
			
		}
	    
		});
	});
});
</script>
</head>
<body>

	<select id="dept">
		<option value="1">技术部</option>
		<option value="2">销售部</option>
		
	</select><br>
	
	<select id="emp"></select>

</body>
</html>