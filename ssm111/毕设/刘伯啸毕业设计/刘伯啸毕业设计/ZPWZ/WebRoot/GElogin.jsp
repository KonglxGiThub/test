<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<meta name="Keywords" content="" />
		<meta name="Description" content="" />
		<title>求职者登录</title>

		<!--[if lt IE 9]>
    <script src="js/html5.js?v=20140722"></script>
    <![endif]-->
		<link rel="stylesheet" type="text/css" href="css/base.css" />
		<link rel="stylesheet" type="text/css" href="css/login.css" />
		<link rel="stylesheet" type="text/css" href="css/icons.css?v=20140312" />
		<script language="javascript" type="text/javascript"
			src="js/jquery.js"></script>
		<script type="text/javascript" language="javascript"
			src="js/common.js"></script>
		<script type="text/javascript" language="javascript"
			src="js/dialog.js"></script>
		<script type="text/javascript" language="javascript"
			src="js/jquery.form.js"></script>
		<script type="text/javascript" language="javascript"
			src="js/ui_validate.js"></script>
	</head>
	<body>
		<header>
		<div class="headerCon">
			<div class="logo">
				<a href="/ZPWZ/"></a>
				<b>求职者登录</b>
			</div>
		</div>
		</header>
		<section class="contentBg" id="content">
		<div class="content" style="width: 945px;">

			<div class="lng">
				<div class="lngL">
					<img src="images/dljt.jpg" width="250" height="250" align="left"
						style="position: relative; bottom: -35px; right: -15px" />
				</div>
				<div class="lngR">
					<div class="lngBox" style="padding-top: 15px;">
						<h2
							style="text-align: left; font: 18px 微软雅黑; margin-bottom: 15px;">
							个人登录
						</h2>
						<form method="post" id="formid" action="<%=path%>/SekLogin">
							<div id="tipError">
								<div class="testTxt" style="display: none;">
									<i class="jpFntWes">&#xf057;</i>
									<div class="clear"></div>
								</div>
							</div>

							<div class="lngForm">
								<div class="formMod">
									<span class="formText"> <label for="txtUsername">
											手机/邮箱/用户名
										</label> <input type="text" style="width: 265px;" id="txtUsername"
											name="account" class="text" placeholder="手机/邮箱/用户名" />
										</span>
									<div class="clear"></div>
								</div>

								<div class="formMod">
									<span class="formText"> <label for="password">
											密码
										</label> <input type="password" name="password" autocomplete="off"
											style="width: 265px;" id="password" name="pwd"
											class="text" placeholder="密码" />
										<div class="errTxt"></div> </span>
									<div class="clear"></div>
								</div>
								<div class="formMod" id="verifycode"
									style="margin-bottom: 5px; display: none">
									<span class="formText"> <input type="text"
											style="width: 80px;" id="catcha" name="catcha" class="text" />
										<div class="errTxt" style="width: 83px;"></div> </span>
									<span class="yzImg"> <img id="imgCode" src='' /> </span>
								</div>

								<div class="btn">
									<a href="javascript:void(0);" id="btnSub" name="btnSub"
										class="btn4" onclick="checkUser();">登&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;录</a>
								</div>
								<p class="forgetPwd">
									<a href="#" class="forget aGray2 ">忘记密码？</a>还没有账号，
									<a href="<%=path %>/GEzhuce.jsp" class="font14">立即注册</a>
								</p>
							</div>
						</form>
					</div>
				</div>
				<div class="clear"></div>
			</div>
		</div>
		</section>
		<footer>
		<%@include file="pages/foot.jsp"%>
		</footer>
		<script type="text/javascript">
	    $(document).ready(function() {
	        $(window).scroll(function() {
	            if ($(document).scrollTop() > 120) {
	                $('#sus').find('a.backTop').css({
	                    'display': 'inline-block'
	                });
	            } else {
	                $('#sus').find('a.backTop').css({
	                    'display': 'none'
	                });
	            }
	        });
	
	        $('#sus').find('a.backTop').click(function() {
	            $('html,body').animate({
	                scrollTop: 0
	            });
	        });
	    });
		function checkUser(){
		   var result = document.getElementById("txtUsername").value;
		   var password = document.getElementById("password").value;
		   if(result == ""  ){
		     alert("用户名不能为空");
		     return false;
		   }
		   if(password == ""  ){
		    alert("密码不能为空");
		     return false;
		   }
		  document.getElementById("formid").submit();
		}
</script>
		<div style="display: none" id="wx_stats">
			<link rel="logo1" href="images/logo121x75.png" />
			<link rel="logo2" href="images/75px.png" />
		</div>

	</body>
</html>
