<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
	$(function(){
		$("#all").click(function(){
			//获得all控件的checked属性,一个参数取值，两个参数，赋值，取属性用attr（），取值用val（）；
			if($("#all").attr("checked")==true){
				//为所有class为like的控件赋值
				$(".like").attr("checked","true")
			}else{
				//移除所有的class为like的控件checked属性
				$(".like").removeAttr("checked");
			}
		})
		
		
		//设置向右按钮单击事件
		$("#bleft").click(function(){
			//获得所有被选中的值，左边的select,用each遍历
			//"#left option:selected"表示left标签里的option被选中的option
			$("#left option:selected").each(function(){
				//向右边追加option,给value赋值，文本赋值
				$("#right").append("<option value="+$(this).val()+">"+$(this).text()+"</option>");
				//移除当前控件option
				$(this).remove();
			})
		})
		
		//设置向zuo按钮单击事件
		$("#bright").click(function(){
			$("#right option:selected").each(function(){
				$("#left").append("<option value="+$(this).val()+">"+$(this).text()+"</option>");
				$(this).remove();
			})
		})
		
		//all left
				$("#a").click(function(){
					if($("#a").attr("checked")==true){
			//获得所有被选中的值，左边的select,用each遍历
			//"#left option:selected"表示left标签里的option被选中的option
			$("#left option").each(function(){
				//向右边追加option,给value赋值，文本赋值就是body里没有控件包围 的值
				$("#right").append("<option value="+$(this).val()+">"+$(this).text()+"</option>");
				//移除当前控件option
				$(this).remove();
			})}
		})
		
				//all right
				$("#b").click(function(){
					if($("#b").attr("checked")==true){
			//获得所有被选中的值，左边的select,用each遍历
			//"#left option:selected"表示left标签里的option被选中的option
			$("#right option").each(function(){
				//向右边追加option,给value赋值，文本赋值
				$("#left").append("<option value="+$(this).val()+">"+$(this).text()+"</option>");
				//移除当前控件option
				$(this).remove();
			})}
		})
	})
</script>
<title>Insert title here</title>
</head>
<body>
<input type="checkbox" id="all">all<br>
<!-- //id唯一class归为一类 -->
<input type="checkbox" id="1" class="like">1<br>
<input type="checkbox" id="2" class="like">2<br>
<input type="checkbox" id="3" class="like">3<br>
<input type="checkbox" id="4" class="like">4<br>

<input type="checkbox" id="a">rall<br>
<input type="checkbox" id="b">all<br>

	<table align="center">
		<tr>
		<td>
		<select id="left" multiple>
			<!-- <option value="all">all</option> -->
			<option value="1122">11</option>
			<option value="22">22</option>
			<option value="33">33</option>
			<option value="44">44</option>
		</select>
		</td>
		<td>
			 <input type="button" id="bleft" value="&gt;" />
			 <input type="button" id="bright" value="&lt;"/>
		</td>
		<td>
			<select id="right" multiple>
			</select>
		</td>
		</tr>
	</table>

</body>
</html>