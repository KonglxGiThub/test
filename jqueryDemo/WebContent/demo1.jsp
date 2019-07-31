<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src=js/jquery.js></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#dept").change(function(){
		$.ajax({
			url:"AjaxServlet",
			data:{deptId:$("#dept").val()},
			dataType:"json",
			error:function(){
				alert("失败");
			},
			success:function(data){
				$("#emp").empty();
				$.each(data.emps,function(i){
					$.each(data.emps[i],function(key,value){					
						$("#emp").append("<option value="+key+">"+value+"</option>");
					})	
				});
			}
		});
	});
	$("#right").click(function(){
		$("#ls option:selected").each(function(){
			$("#rs").append("<option value="+$(this).val()+">"+$(this).text()+"</option>");
			$(this).remove();
		})
	});
	$("#left").click(function(){
		$("#rs option:selected").each(function(){
			$("#ls").append("<option value="+$(this).val()+">"+$(this).text()+"</option>");
			$(this).remove();
		})
	});
	$("#allRight").click(function(){
		$("#ls option").each(function(){
			$("#rs").append("<option value="+$(this).val()+">"+$(this).text()+"</option>");
			$(this).remove();
		})
	});
	$("#allLeft").click(function(){
		$("#rs option").each(function(){
			$("#ls").append("<option value="+$(this).val()+">"+$(this).text()+"</option>");
			$(this).remove();
		})
	});
});
</script>
</head>
<body>
<select name="dept" id="dept">
	<option value="1">技术部</option>
	<option value="2">质检部</option>
</select>
<select id="emp"></select>
<br>
<table width="400" height="200"  >
<tr>
<td width="70">与会人员</td>
<td align="center">
<select id="ls" multiple="multiple">
<option value="1">加1</option>
<option value="2">加2</option>
<option value="3">加3</option>
<option value="4">加4</option>
</select>
</td><td align="center">
<input type="button" id="right" value=">">
<br>
<input type="button" id="left" value="<">
<br>
<input type="button" id="allRight" value=">>">
<br>
<input type="button" id="allLeft" value="<<">
</td><td align="center">
<select id="rs" multiple="multiple">
</select></td>
</tr>
</table>
</body>
</html>