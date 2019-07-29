<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script type="text/javascript" src="js/jquery.js"></script> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="styles/common.css" />
 <script type="text/javascript">
 $(function(){
		var flag=true;
		$("#slename").blur(function(){
				$.ajax({
					url:"RegisterEmpCheckName",
					data:{name:$("#slename").val()},
					dataType:"json",
					error:function(){
						falg=false;
						alert("name is flase!!!");
					},
					success:function(data){
						var checkname = data.msg;
						if(checkname=="登录名重复"){
							falg=false;
							alert("登录名重复!!!");
							//$("#msg").html(checkname);	
						}
						if(checkname=="登录名可用"){
							falg=true;
							//alert("登录名重复!!!");
							$("#msg").html(checkname)
						}
					
					}
				});
			
		})
		$("#check").click(function (){	
		 	var ename =$("#sename").val();
			var elname = $("#slename").val();
			var epass = $("#sepass").val();
			var epass1 = $("#sepass1").val();
			var ephone = $("#sephone").val();
			var email = $("#semail").val(); 
				//姓名长度为4-16个字符，并且以英文字母开头
				if(ename.length>0){
					var rn = /^[A-Za-z]\w{3,15}$/;
					if(!rn.test(ename)||!rn.test(elname)){
						$("#msg").html("false 姓名长度为4-16个字符，并且以英文字母开头!!!");
						falg = false;
					}
				}else{
					$("#msg").html(" text null!!!");
					falg = false;
				}
				//密码只能由英文字母和数字组成，长度为4-10个字符
				var rp =/^(\d|[A-Za-z]){4,10}$/;
				if(epass.length>0&&epass1.length>0){
					if(!rp.test(epass)){
						$("#msg").html("false 密码只能由英文字母和数字组成，长度为4-10个字符!!!");
						falg = false;
					}
				}else{
					$("#msg").html("pass is null!!!");
					falg = false;	
				}
				//1开头，后面可以使35784人一个，一共 11位 
				if(ephone.length>0){
					var rt = /^[1][34578]\d{9}$/;
					if(!rt.test(ephone)){
						$("#msg").html("1开头，后面可以使35784，一共 11位 !!!");
						falg = false;
					}
				}else{
					$("#msg").html("phone is null!!!");
					falg = false;
				}
				//字母下划线数字任意3到8位@
				if(email.length>0){
					var rm=/^\w{3,9}@([A-Za-z]{2,6}|163).(cn|com)$/;
					if(!rm.test(email)){
						$("#msg").html("mail is false!!!");
						falg = false;	
					}
				}else{
					$("#msg").html("mail is null !!!");
					falg = false;
				}
				//如果验证通过，提交form表单name为f1里的button
				 if(falg){
						document.f1.submit();
						}
				 else{
					 $("#msg").html("登录名重复不能提交!!!");
				 }
		})

		
		
})
	 
</script> 
</head>
<body>
<div class="page-content">
   <div class="content-nav">
       人员管理 > 员工注册${requestScope.msg }
   </div>
   <form action="AddRegisterEmpServlet" name="f1">
       <fieldset>
           <legend>员工信息</legend>
           <table class="formtable" style="width:50%">
                <tr>
                    <td>姓名：</td>
                    <td>
                        <input type="text" name="sename" id="sename" maxlength="20"/>
                    </td>
                </tr>
                <tr>
                    <td>账户名：</td>
                    <td>
                        <input type="text" name="selname" id="slename" maxlength="20"/>
                    </td>
                </tr>
                <tr>
                    <td>密码：</td>
                    <td>
                        <input type="password" name="sepass" id="sepass" maxlength="20" placeholder="请输入6位以上的密码"/>
                    </td>
                </tr>
                <tr>
                    <td>确认密码：</td>
                    <td>
                        <input type="password" name="sepass1" id="sepass1" maxlength="20"/>
                    </td>
                </tr>
                <tr>
                    <td>联系电话：</td>
                    <td>
                        <input type="text" name="sephone" id="sephone" maxlength="20"/>
                    </td>
                </tr>
                <tr>
                    <td>电子邮件：</td>
                    <td>
                        <input type="text" name="semail" id="semail" maxlength="20"/>
                    </td>
                </tr>
                <tr>
                    <td>部门编号：</td>
                    <td>
                    <select name="deptname">
                    <c:forEach var="dept" items="${deptList}">
                        
                        <option selected value="${dept.did }">${dept.dname}</option>
                        
                     </c:forEach>
                     </select>
                    </td>
                </tr>
                <tr>
                    <td colspan="6" class="command">
                        <input type="button" class="clickbutton" id="check" value="注册"/>
                        <input type="reset" class="clickbutton" value="重置"/>
                        <div id="msg"></div>
                    </td>
                </tr>
            </table>
        </fieldset>
    </form>
</div>
</body>
</html>