<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="Keywords" content="" />
<meta name="Description" content="" />
<title>人才网-企业登录</title>
<!–[if lt IE9]>
<script type="text/javascript" language="javascript" src="/js/html5.js"></script>
<![endif]–>
<link rel="stylesheet" type="text/css" href="css/base.css" />
<link rel="stylesheet" type="text/css" href="css/icons.css" />
<link rel="stylesheet" type="text/css" href="css/comlogin.css" />

<script type="text/javascript" language="javascript" src="js/jquery-1.8.3.js"></script>
<script type="text/javascript" language="javascript" src="js/common.js"></script>
<script type="text/javascript" language="javascript" src="js/dialog.js"></script>
<script type="text/javascript" language="javascript" src="js/jquery.form.js"></script>
<script type="text/javascript" language="javascript" src="js/ui_validate.js"></script>
<script type="text/javascript" language="javascript" src="js/ui_inputFocus.js"></script>

</head>
<body id="body">
<header id="header">
<div class="hdCon">
<div class="logo">
<a href="/ZPWZ/"></a>
</div>
</div>
</header>
<hgroup class="banner">
<div class="bannerBox">
<div class="txt">
<p class="t1"> <em>1000万</em>
+企业
</p>
<p class="t2"> <em>2600万</em>
<span>求职者</span>
共同的选择
</p>
<p class="t3">
<!-- 597人才网是西南地区规模大、成立早、访问量高、服务客户多的专业人才招聘网站， -->
大连交大人才服务网是面向社会的专业求职招聘网站。网站现有有效简历逾2600万份，单位会员100万余家，每日提供有效职位超过50万+，日均页面浏览量1000万+。
</p>
</div>
<form method="post" action="<%=path%>/CpyLogin" id="frmLogin">
<input type="hidden" name="act" value="login" />
<input type="hidden" name="txtUserType" value="2">
<input type="hidden" name="txtAppType" value="1">
<div class="logBox">
<div class="con logBef" id="divLogin" >
<div class="hd">
<h3>企业登录</h3>
<div class="err" id="loginMsg" ></div>
</div>
<div class="logForm">
<div class="formMod">
<span class="formText zindex">
<label for="txtUsername" class="txtLabel">请输入用户名</label>
<input id="account" type="text" class="text" maxlength="30" id="txtUsername" name="account" onkeydown="if(event.keyCode==13)return false;" placeholder="请输入用户名"></span>
<div class="clear"></div>
</div>
<div class="formMod">
<span class="formText zindex">
<label for="txtPassword" class="txtLabel">请输入密码</label>
<input id="password" type="password" class="text" maxlength="16" id="txtPassword" name="password"  onkeydown="if(event.keyCode==13)return false;" placeholder="请输入密码"></span>
<div class="clear"></div>
</div>
<div class="formMod" id="divcode" style="display:none;">
<span class="formText zindex">
<input type="text" id="txtAuthCode"  class="text" name="txtAuthCode" style="width:80px;"  />
</span>
<span class="yzImg">
<div class="clear"></div>
</div>
<div class="formBtn">
<a href="javascript:void(0)" class="btn4 btnsF16" id="btnLogin" onclick="checkUser();">
<span> <i class="jpFntWes">&#xf007;</i>
登&nbsp;录
</span>
</a>
<a href="/company/register.html" class="btn3 btnsF16">注册企业会员</a>
</div>
</div>
<div class="bot"> <i class="jpFntWes">&#xf095;</i>
<em>400-8060-597</em>
</div>
<div class="leftTip" id="loginHelpDiv" style="display:none">
<div class="bd"> <b class="arr"></b>
<p class="tit" >登录小提示</p>
<dl>
<dt>您是否锁定了键盘的大写功能？</dt>
<dd>请检查您键盘上的"Caps Lock"或"A"灯是否亮着，如果是，请先按一下"Caps Lock"键然后重新输入。</dd>
</dl>
<dl>
<dt>您是否忘记或不小心输入了错误的密码？</dt>
<dd>您可以通过拨打客服电话（400-8060-597）找回密码。</dd>
</dl>
<div class="errTip orange" id="boxTipErr">
5分钟内密码输错4次，您的账号将被禁用30分钟，您还有
<span class="strong">3</span>
次机会
</div>
</div>
</div>
</div>
<div class="con logAft" id="divLoginInfo" style="display:none">
<div class="bot">
<i class="jpFntWes">&#xf095;</i>
<em>400-8060-597</em>
</div>
</div>
</div>
</form>
</div>
</hgroup>
<section>

<hgroup>
<h2>我们能为您提供什么服务</h2>
<div class="tab" id="tab">
<div class="tabT">
<ul>
<li class="cu">
<a href="javascript:void(0);" class="lnk1">
网络招聘 <b></b>
</a>
</li>
<li>
<a href="javascript:void(0);" class="lnk2">
现场招聘会
<b></b>
</a>
</li>
<li>
<a href="javascript:void(0);" class="lnk3">
校园招聘
<b></b>
</a>
</li>
<li>
<a href="javascript:void(0);" class="lnk4">
HR活动
<b></b>
</a>
</li>
</ul>
<div class="clear"></div>
</div>
<div class="tabC">
<div class="tabCon lst1">
<div class="txt">
<p>企业注册用户100万，有效简历逾2600万份</p>
<p>每日提供有效职位50万+条，浏览量1000万+</p>
</div>
</div>
<div class="tabCon lst2" style="display:none;">
<div class="txt">
<p>每场到场求职者20000人次</p>
<p>3000个国际标准展位</p>
<p>
<!-- <a href="/zhaopinhui/">了解更多</a> -->
</p>
</div>
</div>
<div class="tabCon lst3" style="display:none;">
<div class="txt">
<p>合作伙伴：大连交通大学</p>
<p>
<!-- <a href="/xiaoyuan/">了解更多</a> -->
</p>
</div>
</div>
<div class="tabCon lst4" style="display:none;">
<div class="txt">
<p class="strong">【03月21日】内训师的演说技巧</p>
<p>讲师：张勇</p>
<p>本课程能够帮助您熟练应用各种授课方式，从而有效的促进培训现场互动、提升控场能力、达成培训目的。</p>
<!-- <p>
<a href="/hrcollege/activitydetail?activity_id=7"/}>查看详情</a>
</p> -->
</div>
</div>
</div>
</div>
</hgroup>
<hgroup style="padding-bottom:30px;">
<div class="clear"></div>
</hgroup>
</section>
<footer>
	<%@include file="pages/foot.jsp"%>
</footer>
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
	function checkUser(){
		   var result = document.getElementById("account").value;
		   var password = document.getElementById("password").value;
		   if(result == ""  ){
		     alert("用户名不能为空");
		     return false;
		   }
		   if(password == ""  ){
		    alert("密码不能为空");
		     return false;
		   }
		  document.getElementById("frmLogin").submit();
		}
</script>
<div style="display: none" id="wx_stats">
</div>
</body>
</html>