<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
	$(function(){
		//点击事件
		$("#all").click(function(){
			//获得all控件的checked属性
			if($("#all").attr("checked")==true){
				//为所有的class为like的控件赋属性
				$(".like").attr("checked","true");
			}else{
				//移除所有的class为like的控件checked属性
				$(".like").removeAttr("checked");
			}
		});
		//设置向右按钮的单击事件
		$("#bRight").click(function(){
			//获得左边select所有被选中的值,使用each函数遍历
			$("#left option:selected").each(function(){
				//向右边select追加option
				$("#right").append("<option value="+$(this).val()+">"+$(this).text()+"</option>");
				//当前控件移除
				$(this).remove();
			});
		});
		
		$("#allRight").click(function(){
			//获得左边select所有被选中的值,使用each函数遍历
			$("#left option").each(function(){
				//向右边select追加option
				$("#right").append("<option value="+$(this).val()+">"+$(this).text()+"</option>");
				//当前控件移除
				$(this).remove();
			});
		});
	});
</script>
<title>Insert title here</title>
</head>
<body>
<input type="checkbox" id="all">全选<br>
<input type="checkbox" id="a1" class="like">1<br>
<input type="checkbox" id="a2" class="like">2<br>
<input type="checkbox" id="a3" class="like">3<br>
<input type="checkbox" id="a4" class="like">4<br>
<table width="300" height="200">
<tr>
<td align="right">
<select id="left" multiple>
<option value="1">张三</option>
<option value="2">李四</option>
<option value="3">王五</option>
</select>
</td>
<td align="center">
<input type="button" id="bRight" value="->"><br><input type="button" id="bLeft" value="<-"><br>
<input type="button" id="allRight" value=">>"><br><input type="button" id="allLeft" value="<<">
</td>
<td><select id="right" multiple></select></td>
</tr>
</table>
</body>
</html>