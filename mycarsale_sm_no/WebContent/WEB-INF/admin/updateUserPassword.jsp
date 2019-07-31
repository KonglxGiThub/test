<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- java脚本，抓的是项目名 -->
<%
String path = request.getContextPath();
%>
<!-- /* 需要导入js包 */ -->
<script type="text/javascript" src="<%=path %>/js/jquery.js"></script> 
<script type="text/javascript" src="<%=path %>/js/menu.js"></script> 
<script type="text/javascript">

$(function(){
	
	var falg = false;
	/* *通过juquery获取文本的值，val（） 
		修改密码验证，验证是否是原密码，新密码是否一致
	*/

	//字符串需要加双引号
	var pass2 = "${sessionScope.caruser.password}";
	
	$("#password").blur(function(){
		var pass = $("#password").val();
		if(pass.length>0 && pass==pass2){
			falg = true;
			
			//alert("原密码正确");
			
		}else{
		/* 	在文本框提示密码错误信息--原密码不对 */
			$("#msg").html("原密码不对");
			//alert("原密码不对");
		}
	});
	$("#newpassword").blur(function (){
		var newpass= $("#newpassword").val();
		if(newpass.length>0 && newpass!=""){
			
		}else{
			$("#msg").html("密码不能为空");
			//alert("密码不能为空");
		}
	});
	
	$("#newpassword2").blur(function (){
		var newpass2= $("#newpassword2").val();
		var newpass= $("#newpassword").val();
		var pass = $("#password").val();
		if(newpass.length>0 && newpass2==newpass && pass.length>0){
			falg = true;
		}else{
			falg = false;
			$("#msg").html("新密码为空或密码不一致");
			//alert("新密码为空或密码不一致");
		}
	});
	

	$("#Submit").click(function (){
	if(falg){
		/* input type的类型只能是button，不能是submit */
	
		document.form1.submit();}
	});
/* 	结========================================尾 */
});
 	
</script>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>用户登陆</title>
		<link href="<%=path %>/css/style.css" rel="stylesheet" type="text/css">
	</head>
	<body>
		<form name="form1" method="post" action="<%=path %>/user/updatepassview.action">
			<table width="300" border="0" align="center" cellpadding="4"
				cellspacing="1" bgcolor="#FF9900">
				<tr>
					<td height="24" colspan="2" align="center" bgcolor="#FFCC66">
						密码修改
					</td>
				</tr>
				<tr>
					<td width="77" height="24" align="center" bgcolor="#FFFFFF">
						原密码${sessionScope.caruser.password}
					</td>
					<td width="204" height="24" bgcolor="#FFFFFF">
						<input name="password" type="text" id="password" class="input1">
						
					</td>
				</tr>
				<tr>
					<td height="24" align="center" bgcolor="#FFFFFF">
						新密码
					</td>
					<td height="24" bgcolor="#FFFFFF">
						<input type="text" name="newpassword" id="newpassword"
							class="input1">
					</td>
				</tr>
						<tr>
					<td height="24" align="center" bgcolor="#FFFFFF">
						确认密码
					</td>
					<td height="24" bgcolor="#FFFFFF">
						<input  type="text" name="newpassword2" id="newpassword2"
							class="input1">
					</td>
				</tr>
			
				<tr>
					<td height="24" colspan="2" align="center" bgcolor="#FFFFFF">
					  
  <!--  可以用button+onclick实现 提交-->
<!-- <input type="button" name="Submit" value="进入系统" onClick="location.href='admin/index/index.action'">-->

						&nbsp;&nbsp; 
						<input type="button" id="Submit" value="进入系统">
						&nbsp;&nbsp;
						<input type="reset" name="reset" value="重置">
					</td>
				</tr>
				<tr>
					<td height="24" align="center" bgcolor="#FFFFFF" colspan="2">
					<div id="msg"></div>
					</td>
				
				</tr>
			</table>
			
		</form>
	</body>
</html>