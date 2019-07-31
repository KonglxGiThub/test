<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<meta name="Keywords" content="" />
		<meta name="Description" content="" />
		<title>大连人才网_个人注册</title>

		<link rel="stylesheet" type="text/css" href="css/base.css" />
		<link rel="stylesheet" type="text/css" href="css/login.css?v=20140416" />
		<link rel="stylesheet" type="text/css" href="css/icons.css?v=20140312" />
		<script type="text/javascript" language="javascript"
			src="js/jquery-1.8.3.js"></script>
		<script type="text/javascript" language="javascript"
			src="js/common.js"></script>
		<script type="text/javascript" language="javascript"
			src="js/dialog.js"></script>
		<script type="text/javascript" language="javascript"
			src="js/jquery.form.js"></script>
		<script type="text/javascript" language="javascript"
			src="js/ui_validate.js"></script>
		<script type="text/javascript" language="javascript"
			src="js/jquery.email.tip.js"></script>
		<script type="text/javascript" language="javascript"
			src='js/ui_dropdownlist.js'></script>
		<!--下拉控件-->
		<style>
.icon-chck em,.icon-chck-checked em,.icon-rad em,.icon-rad-checked em {
	display: inline-block;
	width: 16px;
	height: 16px;
	background: url(http://cdn.597.com/www/img/v2/resume/icon.jpg) 0 -180px
		no-repeat;
	margin-right: 5px;
	vertical-align: -4px; #
	vertical-align: -1px;
	_vertical-align: 1px
}

.icon-rad em,.icon-rad-checked em {
	width: 18px;
	height: 18px;
	background-position: -26px -180px
}

.icon-rad-checked em {
	background-position: -82px -180px
}

.icon-chck-checked em {
	background-position: -54px -180px;
	width: 18px;
	height: 18px
}

.create-item dt {
	float: left;
	width: 80px;
	color: #666;
	font-size: 14px;
	text-align: right;
	height: 35px;
	line-height: 35px;
	position: relative
}

.create-item .red {
	margin-left: 5px;
	vertical-align: middle
}

.create-item dd {
	font-size: 14px;
	position: relative;
	margin-left: 95px;
	padding-top: 7px
}

#imgGetImgSrc {
	position: relative;
	top: 8px; *
	top: 0;
}

.qqIcos img {
	position: relative;
	top: 7px;
}
</style>
	</head>
	<body>
		<header>
		<div class="headerCon">
			<div class="logo">
				<a href="<%=path%>/"></a>
				<b>求职者注册</b>
			</div>
		</div>
		</header>
		<section class="content" id="content">
		<div class="reg pReg">

			<div class="regL">

				<div class="thrdLogin">

					<p>
						注册方便又快捷！！！！！
					</p>
					<div class="link">
					</div>
				</div>

				<div class="box">
					<p class="tit" style="display: none">
						想有个人才网的真实身份?
					</p>
					<form id="formid" method="post" action="/ZPWZ/GRRegistAdd">
						<input type="hidden" name="origin" value='1' />
						<input type="hidden" name="txtAppType" value="1" />
						<div class="regForm" id="divEmail">
							<div class="formMod">
								<span class="formText"> <input type="text"
										style="width: 280px;" id="account" name="account"
										placeholder="输入登录名" class="text watermark"
										onblur="checkUser(this.value)" /> </span>
								<span class="tipPos"> <span class="tipLay"></span> </span>
								<span id="msg"></span>
								<div class="clear"></div>
							</div>
							<div class="formMod">
								<span class="formText"> <input type="text"
										style="width: 280px;" id="txtEmail" name="email"
										placeholder="输入有效的邮箱" class="text watermark"
										onblur="checkEmail(this.value)" /> </span>
								<span class="tipPos"> <span class="tipLay"></span> </span>
								<div class="clear"></div>
							</div>
							<div class="formMod">
								<span class="formText"> <input type="text"
										style="width: 280px;" id="txtPhone" name="tel"
										placeholder="输入有效的手机" class="text watermark" onblur="checkPhone(this.value)"/> </span>
								<div class="clear"></div>
							</div>
							<div class="formMod">
								<span class="formText"> <input type="password"
										style="width: 280px;" id="password1"
										name="password" autocomplete="off" placeholder="创建密码"
										class="text watermark" /> </span>
								<div class="clear"></div>
							</div>

							<div class="formMod">
								<span class="formText"> <input type="password"
										style="width: 280px;" id="password2"
										name="password" autocomplete="off" placeholder="确认密码"
										class="text watermark" onblur="checkPwd(this.value)"/> </span>
							</div>
							<div class="formMod">
								<span class="tipPos"> <span class="tipLay"></span> </span>
								<div class="clear"></div>
							</div>
							<div class="formMod">


							</div>

							<div class="formBtn">
								<a href="javascript:void(0);" id="btnSub"
									class="btn1 btnsF16" onclick="checkLogin();">立即注册</a>
							</div>
						</div>
					</form>
				</div>
			</div>
			<div class="regR">
				<div class="txt">
					<h4>
						在大连人才网找到好工作！
					</h4>
					<dl>
						<dt>
							极具影响力
						</dt>
						<dd>
							8年造就厦门极具影响力招聘品牌
						</dd>
					</dl>
					<dl>
						<dt>
							求职更安全
						</dt>
						<dd>
							唯一拒绝“保险/娱乐会所/直销”的招聘网站
						</dd>
					</dl>
					<dl>
						<dt>
							选择更多
						</dt>
						<dd>
							每天50万个真实职位供您选择
						</dd>
					</dl>
					<dl>
						<dt>
							更关注您的成长
						</dt>
						<dd>
							与您的亲人、朋友、同学、同事共同成长
						</dd>
					</dl>
					<dl>
						<dt>
							温馨提示
						</dt>
						<dd>
							如果您有任何疑问或在注册过程中遇到困难， 您都可以通过以下方式与我们联系：
							<br />
							电话：
							<span class="red">0411-62940125</span>
							<br />
							邮箱：
							<span class="green">826040412@qq.com</span>
							<br />

						</dd>

					</dl>
				</div>
			</div>
			<div class="clear"></div>
		</div>
		</section>
		<footer>
		<%@include file="pages/foot.jsp"%>
		</footer>
		<div id="sus" class="sus">
			<a class="backTop jpFntWes" title="返回顶部" href="javascript:void(0);"
				style="display: none;">&#xf0d8;</a>
		</div>
	<script type="text/javascript">
	var xmlHttp;
	var flag;
	function createXMLHttp(){
		if (window.XMLHttpRequest){						// 创建XMLHttpRequest核心对象
			xmlHttp = new XMLHttpRequest()					// 使用FireFox内核
		}else {
			xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");	// 使用IE内核的浏览器
		}
	}

	function checkUser(account){		// 显示信息
		if(account==""){
			alert('请输入用户名吧!');
			return;
		}
		createXMLHttp();	//
		// 设置请求,通过地址重写方式将userid传递到JSP中
		
		xmlHttp.open("POST","CheckServlet?account="+account);
		// 设置完请求后调用处理回调函数
		xmlHttp.onreadystatechange = checkUseridCallback;
		xmlHttp.send(null);	// 发送请求，不设置参数
	}
	function checkUseridCallback(){	// 回调函数
		if (xmlHttp.readyState == 4){			// 数据返回完毕
			if (xmlHttp.status == 200){			// HTTP操作正常
				var text = xmlHttp.responseText;// 接收返回内容
				if (text == "true"){
					flag = false;				// 无法提交表单
					document.getElementById("msg").innerHTML = "用户名ID重复，无法使用";
					$("#account").val("");
				}else {
					flag = true;				// 可以提交表单
					document.getElementById("msg").innerHTML = "恭喜！此用户ID可以注册";
				}
			}
		}
	}
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
	function checkEmail(str){ 
		var re = /^(\w-*\.*)+@(\w-?)+(\.\w{2,})+$/ ;
		if(str.length>0){
			if(re.test(str)){ 
				return; 
			}else{ 
				alert("重新输入邮箱"); 
				$("#txtEmail").val("");
				}
			}
		}
	function checkPhone(str){ 
		var re = /^1\d{10}$/; 
		if(str.length>0){
			if(re.test(str)){ 
				return; 
			}else{ 
				alert("手机号有错"); 
				$("#txtPhone").val("");
				}
			}
		}
		
	function checkPwd(str){ 
		var password1 = document.getElementById("password1").value;
		if(str.length>0){
			if(password1==str){ 
				return; 
			}else{ 
				alert("两次密码不一致"); 
				$("#password1").val("");
				$("#password2").val("");
				}
			}
		}
		
	
	function checkLogin(){
	   var account = document.getElementById("account").value;
	   var emial = document.getElementById("txtEmail").value;
	   var phone = document.getElementById("txtPhone").value;
	   var password1 = document.getElementById("password1").value;
	   var password2 = document.getElementById("password2").value;
	   if(account == ""  ){
	     alert("登录名不能为空");
	     return false;
	   }
	   if(emial == ""  ){
	     alert("邮箱不能为空");
	     return false;
	   }
	   if(phone == ""  ){
	    alert("电话不能为空");
	     return false;
	   }
	   if(password1 == ""  ){
	    alert("密码不能为空");
	     return false;
	   }
	   if(password2 == ""  ){
	    alert("确认密码不能为空");
	     return false;
	   }
	  document.getElementById("formid").submit();
	}
	function checkForm(){	// 对表单判断能否进行提交操作
		return flag;
	}
</script>



	</body>
</html>