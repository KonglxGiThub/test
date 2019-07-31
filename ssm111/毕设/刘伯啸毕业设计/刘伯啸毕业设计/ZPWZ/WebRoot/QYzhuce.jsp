<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="mobile-agent" content="format=xhtml; url=http://m.597.com/company/register.html">
    <meta name="mobile-agent" content="format=html5; url=http://m.597.com/company/register.html">
    <meta name="mobile-agent" content="format=wml; url=http://m.597.com/company/register.html">
    <title>人才网_企业注册</title>
    <!--[if lt IE9] -->
    <script src="js/html5.js?v=20140722"></script>
    <!-- [endif] -->

    <link rel="stylesheet" type="text/css" href="css/base.css" />
    <link rel="stylesheet" type="text/css" href="css/login.css" />

    <script type="text/javascript" language="javascript" src="js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" language="javascript" src="js/common.js"></script>
    <script type="text/javascript" language="javascript" src="js/jquery.form.js"></script>
    <script type="text/javascript" language="javascript" src="js/dialog.js"></script>
    <script type="text/javascript" language="javascript" src="js/ui_validate.js"></script>
    <script type="text/javascript" language="javascript" src="js/ui_inputFocus.js"></script>
    <script type="text/javascript" language="javascript" src="js/ui_area.js"></script>
    <!--输入框获取焦点-->
</head>
<style type="text/css">
    .regL .addressMod .formText input.text {
        height: 26px;
        line-height: 26px;
        padding: 0 5px 0 10px;
    }
    .addressMod .drop {
        height: 36px;
        cursor: default;
        background: #fff;
        margin-left: 6px;
    }
</style>
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
<body>
<header>
    <div class="headerCon">
        <div class="logo">
            <a href="/ZPWZ/"></a> <b>企业注册</b>
        </div>
    </div>
</header>
<section class="content" id="content">
    <form id="formid" action="QYRegistAdd" method="post">
        <div class="reg cReg">
            <div class="regL">

                <div class="box">
                    <p class="tit">账号信息</p>
                    <div class="regForm">
                        <div class="formMod">
								<span class="formText"> <input type="text"
										style="width: 280px;" id="account" name="account"
										placeholder="输入登录名" class="text watermark"
										onblur="checkUser(this.value)" /> </span>
								<span class="tipPos"> <span class="tipLay"></span> </span>
								<span id="msg"></span>
								<div class="clear"></div>
							</div>

                        <div class="formMod addressMod clearfix" style="z-index:98;position: relative">
                            <a id="area" name="area"></a>
                            <div class="l">联系方式<i>&nbsp;</i></div>
                            <div class="r">
							<span class="formText zIndex" id="curarea">
							</span>
							<span class="tipPos">
							<span class="tipLay "></span>
							</span>
                            </div>
                            <div class="clear"></div>
                        </div>

                        <div class="formMod">
							<span class="formText"> <input type="text"
										style="width: 280px;" id="txtPhone" name="tel"
										placeholder="输入有效的手机" class="text watermark" onblur="checkPhone(this.value)"/> </span>
							<span class="tipPos">
							<span class="tipLay"></span>
							</span>
                            <div class="clear"></div>
                        </div>
                        
                        <div class="formMod">
							<span class="formText"> <input type="text"
										style="width: 280px;" id="txtEmail" name="email"
										placeholder="输入有效的邮箱" class="text watermark"
										onblur="checkEmail(this.value)" /> </span>
							<span class="tipPos">
							<span class="tipLay"></span>
							</span>
                            <div class="clear"></div>
                        </div>

                </div>     
				<div class="regForm">
						<p class="tit">密码</p>
                        <div class="formMod">
							<span class="formText"> <input type="password"
										style="width: 280px;" id="password1"
										name="password" autocomplete="off" placeholder="创建密码"
										class="text watermark" /> </span>
							<span class="tipPos">
							<span class="tipLay"></span>
							</span>
                            <div class="clear"></div>
                        </div>

                        <div class="formMod">
							<span class="formText"> <input type="password"
										style="width: 280px;" id="password2"
										name="password" autocomplete="off" placeholder="确认密码"
										class="text watermark" onblur="checkPwd(this.value)"/> </span>
							<span class="tipPos">
							<span class="tipLay"></span>
							</span>
                            <div class="clear"></div>
                        </div>
                        <div class="formMod">
						<span class="tipPos">
						<span class="tipLay"></span>
						</span>
                        </div>
                        <div class="formBtn">
                            <a href="javascript:void(0)" id="btnRegister" onclick="checkLogin();" class="btn1 btnsF16">立即注册</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="regR">
                <div class="txt">
                    <h4>在人才网找到优秀人才！</h4>
                    <dl>
                        <dd>百年造就大连人才招聘领导品牌</dd>
                    </dl>
                    <dl>
                        <dd>这里拥有超过2600万名人才，满足您的多元招聘需求</dd>
                    </dl>
                </div>
            </div>
            <div class="clear"></div>
        </div>
    </form>
</section>
<footer>
    <%@include file="pages/foot.jsp" %>
</footer>
<!-- <section class="floatRT">
<a href="/about/message" target="_blank" class="serviceLink">我有问题要反馈</a> <b></b>
</section> -->
<div id="sus" class="sus">
    <a class="backTop jpFntWes" title="返回顶部" href="javascript:void(0);" style="display: none;">&#xf0d8;</a>
</div>
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
</script>
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
		
		xmlHttp.open("POST","CheckServlet2?account="+account);
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
	   var emial = document.getElementById("txtEmail").value;
	   var phone = document.getElementById("txtPhone").value;
	   var password1 = document.getElementById("password1").value;
	   var password2 = document.getElementById("password2").value;
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
