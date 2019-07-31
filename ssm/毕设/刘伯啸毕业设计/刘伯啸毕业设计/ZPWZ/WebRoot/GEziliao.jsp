<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.bs.zp.bean.Seeker"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
Seeker sek = (Seeker)session.getAttribute("UserBean");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="keywords" content="">
<meta name="description" content="">
<title>基本资料</title>
<link rel="stylesheet" type="text/css" href="css/v2-reset.css">
<link rel="stylesheet" type="text/css" href="css/v2-header.css">
<link rel="stylesheet" type="text/css" href="css/perback.css">
<link rel="stylesheet" type="text/css" href="css/v2-widge.css">
<link rel="stylesheet" type="text/css" href="css/v2-resume.css">
<script type="text/javascript" src="css/version.js"></script>
<script type="text/javascript">
window.CONFIG = {
HOST: '/ZPWZ',
COMBOPATH: '/js/'
}
</script>
<script type="text/javascript" src="css/saved_resource"></script>

<script type="text/javascript" src="js/global.js"></script>
<script type="text/javascript">
jpjs.loadJS('js/common.js');
</script>
</head>
<body class="noResize minMain">


<div id="header" class="topHeader blankTopHeader">
	<div class="header_fix">
		<div class="header_cont">
		<div class="header_left">&lt;&nbsp; 
			<a class="logo" href="/ZPWZ" id="logo"><img src="images/p_logov2.jpg" alt=""></a>
			<div class="nav">
				<a href="/ZPWZ" id="indexpage">首页</a>
			</div>
		</div>
		<div class="header_right" id="userContainer">
	   		<a >PC:<%=sek.getAccount() %></a> |
			<a href="LoginOut" class="userOut" id="btnUserOut">退出</a>		
		</div>
	</div>

</div>


<script type="text/javascript">
function CheckDate2(strInputDate) {
  if (strInputDate == ""){
  	 return false;
  }
  strInputDate = strInputDate.replace(/-/g, "/");
  var d = new Date(strInputDate);
  if (isNaN(d)){ 
  alert('日期格式不对');
  document.getElementById("birthday").value="";
  return false;}
  var arr = strInputDate.split("/");
  return ((parseInt(arr[0], 10) == d.getFullYear()) && (parseInt(arr[1], 10) == (d.getMonth() + 1)) && (parseInt(arr[2], 10) == d.getDate()));
}

function regist(){
	var name = document.getElementById("name").value;
	var birthday = document.getElementById("birthday").value;
	if(name==""){
		alert('姓名必填');
		return false;
	}
	if(birthday==""){
		alert('出生年月日必填');
		return false;
	}
	if(birthday.length<10){
		alert('出生年月日格式不对，请以YYYY/MM/DD形式输入');
		return false;
	}
	document.getElementById("myform").submit();
}
function upload(){
	var name = document.getElementById("file").value;
	if(name==""){
		alert('必填输入');
		return false;
	}
	
	document.getElementById("fileform").submit();
}
</script>
<div class="w1000">	
<div class="step-box clearfix">
<h3 class="name">我的资料</h3>
</div>
<!--流程-->
<!--主体-->	
<form id="myform" method="post" action="SekEditServlet">
<input type="hidden" name="id" value="<%=sek.getId() %>">
<input type="hidden" name="account" value="<%=sek.getAccount() %>">
<input type="hidden" name="pwd" value="<%=sek.getPwd() %>">
<div class="found-main" style="position: relative;zoom: 1">
<!--基本资料-->
<p class="create-tit"><strong class="name">基本资料</strong></p><div class="create-item step1">
<div class="clearfix">
<div class="create-form">
<dl class="clearfix">
<dt>姓名<i class="red">*</i></dt>
<dd class="formRows"><!--状态 warning error success-->						
<!--<span class="def-text">您的姓名，2-6个汉字</span>-->
<input type="text" class="c-text" id="name" name="name" value="<%=sek.getName() %>">
<span data-for="txtUserName" class="prompt-msg msg"></span>
</dd>
</dl>
<dl class="clearfix">
<dt>性别<i class="red">*</i></dt>
<dd class="formRows">	
<% if("2".equals(sek.getSex())){%>
<label for="sex1" class="icon-sex" data-name="radSex" data-value="1" data-status="false">男<input name="sex" type="radio" value="1" ></label>
<label for="sex2" class="icon-sex" data-name="radSex" data-value="2" data-status="false">女<input name="sex" type="radio" value="2" checked="checked" ></label>					
<% }else{%>	
<label for="sex1" class="icon-sex" data-name="radSex" data-value="1" data-status="false">男<input name="sex" type="radio" value="1"  checked="checked"></label>
<label for="sex2" class="icon-sex" data-name="radSex" data-value="2" data-status="false">女<input name="sex" type="radio" value="2" ></label>
<%} %>				
<span data-for="radSex" class="prompt-msg msg"></span>
</dd>
</dl>
<dl class="clearfix">
<dt>出生日期<i class="red">*</i></dt>
<dd class="clearfix select-group-row birthday formRows" style="z-index:99">
<input type="text" class="c-text" id="birthday" name="birthday" onblur="CheckDate2(this.value);" maxlength="10" value="<%=sek.getAge() %>" style="width: 120px; "><span style="color:#ccc;font-size:12px; margin-left:10px;">(请以YYYY/MM/DD形式输入)</span>
<span class="formText dateText zIndex" style="z-index: 99;">
</dd>
</dl>

<dl class="clearfix">
<dt>工作经验<i class="red">*</i></dt>
<dd class="formRows">
	<% if("目前在读/应届生".equals(sek.getBackground())){%>
<em></em><input name="background" type="radio" value="已参加工作" >已参加工作
<em></em><input name="background" type="radio" value="目前在读/应届生"  checked="checked" >目前在读/应届生
<% }else{%>	
<em></em><input name="background" type="radio" value="已参加工作"  checked="checked" >已参加工作
<em></em><input name="background" type="radio" value="目前在读/应届生" >目前在读/应届生
<%} %>	
<span data-for="radWorkState" class="prompt-msg msg"></span>
</dd>
</dl>
<dl class="clearfix" style="position:relative;z-index:8">
<dt><span id="labelWorkState">求职状态</span><i class="red">*</i></dt>
<dd style="position:absolute;top:-30px;">
<BR>
<BR>
<DIV id="uboxstyle1">
  <SELECT id="state" name="state"  style="height:35px;width:120px; border: 1px solid #cfcfcf;">
    <OPTION value="1">在职</OPTION>
    <OPTION value="2">离职</OPTION>
    <OPTION value="3">实习</OPTION>
  </SELECT>
</DIV>
</dd>
</dl>

<dl class="clearfix" style="position:relative;z-index:8">
<dt><span id="labelWorkState">学历</span><i class="red">*</i></dt>
<dd style="position:absolute;top:0px;">
<DIV id="uboxstyle2">
	<SELECT id="education" name="education"  style="height:35px;width:120px; border: 1px solid #cfcfcf;">
    <OPTION value="中转">中专</OPTION>
    <OPTION value="大专">大专</OPTION>
    <OPTION value="本科">本科</OPTION>
    <OPTION value="双学位">双学位</OPTION>
    <OPTION value="硕士">硕士</OPTION>
    <OPTION value="博士">博士</OPTION>
  </SELECT>
 </DIV>
 </dd>
</dl>

<p align="center" class="moreInfor"><em class="hr"></em><span id="moreInforBtn">更多补充信息<i class="up jpFntWes" style="display:none"></i></span></p>
</div>
</div>
</div>
<div id="step1-more" class="create-item step1-more">
<dl class="clearfix">
<dt>身份证号码</dt>
<dd class="idcard formRows">
<input type="text" name="cardId" class="c-text" value="<%=sek.getCardId() %>" maxlength="18">
<span data-for="txtIDCardNumber" class="prompt-msg msg"></span>
<span style="color:#ccc;font-size:12px; margin-left:10px;" >身份证号可不填写，填写有利于提高面试机率</span>
</dd>
</dl>
<dl class="clearfix">
<dt>户口所在地</dt>
<dd class="idcard formRows">
<input type="text" name="addr" class="c-text" value="<%=sek.getAddr() %>">
<span data-for="txtIDCardNumber" class="prompt-msg msg"></span>
<span style="color:#ccc;font-size:12px; margin-left:10px;">户口所在地可不填写，填写有利于提高面试机率</span>
</dd>
</dl>

<dl class="clearfix" style="position:relative;z-index:8">
<dt><span id="labelWorkState">政治面貌</span></dt>
<dd style="position:absolute;top:0px;">
<DIV id="uboxstyle2">
	<SELECT id="political" name="political"  style="height:35px;width:120px; border: 1px solid #cfcfcf;">
    <OPTION value="普通群众">普通群众</OPTION>
    <OPTION value="共青团员">共青团员</OPTION>
    <OPTION value="预备党员">预备党员</OPTION>
    <OPTION value="中共党员">中共党员</OPTION>
  </SELECT>
 </DIV>
 </dd>
</dl>
<!-- 
<dl class="clearfix">
<dt>身高/体重</dt>
<dd class="formRows height">
<input type="text" id="txtStature" name="txtStature" value="" class="c-text">厘米 &nbsp;
<input type="text" id="txtAvoirdupois" name="txtAvoirdupois" value="" class="c-text box-item">公斤
<span class="prompt-msg msg" data-for="txtSheight"></span>
<p class="error-msg"><i></i>请填写真实姓名</p>
</dd>
</dl>
 -->		
</div>


<!--联系方式-->
<p class="create-tit" style="position:inherit;"><strong class="name">联系方式</strong> </p>
<div class="create-item step2" style="zoom:1">
<dl class="clearfix">
<dt>手机号码<i class="red">*</i></dt>
<dd class="formRows validRows">
 <i id="phone-status" class="upd-num" style=""></i><!--灰色:upd-num1;绿色:upd-num-->
 <input type="text" class="c-text" id="telPhone" name="telPhone" value="<%=sek.getTel() %>"  /><span data-for="txtMobilePhone" class="prompt-msg msg" disabled="disabled"></span><span id="spnConModMobile">
 </span>
</dd>
</dl>
<dl class="clearfix">
<dt>邮箱<i class="red">*</i></dt>
<dd class="formRows validRows">
 <i id="phone-status" class="upd-num" style=""></i><!--灰色:upd-num1;绿色:upd-num-->
 <input type="text" class="c-text" id="txtMobilePhone" name="email" value="<%=sek.getEmail() %>"  /><span data-for="txtMobilePhone" class="prompt-msg msg" disabled="disabled"></span><span id="spnConModMobile">
 </span>
</dd>
</dl>
<dl class="clearfix">
<dt>QQ</dt>
<dd class="formRows validRows">
<input type="text" id="qq" name="qq" value="<%=sek.getQq() %>" class="c-text">
<span data-for="qq" class="prompt-msg msg"></span>
</dd>
</dl>
<!--更多补充信息-->
<p align="center" class="moreInfor"><em class="hr"></em><span id="moreInforBtn">自我介绍<i class="up jpFntWes" style="display:none"></i></span></p>
<dl class="clearfix">
<!-- 
<dt>自我介绍</dt>
 -->
<dd class="formRows validRows">
<textarea  id="textarea" style="width:650px" name="text"  ><%=sek.getText() %></textarea>
<span data-for="txtQQ" class="prompt-msg msg"></span>
</dd>
</dl>
<!--/-->
<dl class="clearfix sub-item">
<dt>&nbsp;</dt>
<dd>
<button id="btnSubmit" type="button" onclick="regist();" class="sub-btn">保存</button>
</dd>
</dl>
</div>
<!--/-->
</div>
</form>
<div class="step-box clearfix">
<h3 class="name">我的简历</h3>
<div class="found-main" style="position: relative;zoom: 1">
<form name="uploadForm" method="POST"  enctype="MULTIPART/FORM-DATA" action="upload">
<div class="create-item step1">
word形式简历:<input type="file" name="file" id="file" size="30"/> 
<input type="hidden" name="id" value="<%=sek.getId() %>"> 
<input type="submit" name="submit" value="上传" > 
<input type="reset" name="reset" value="重置"> 
</div>
</form>
</div>
</div>	
<!--/主体 end-->
<div class="footer">©2015 大连人才网 版权所有</div>
<div style="display: none" id="wx_stats">
<script src="css/z_stat.php" language="JavaScript"></script><script src="css/core.php" charset="utf-8" type="text/javascript"></script><a href="http://www.cnzz.com/stat/website.php?web_id=1000320696" target="_blank" title="站长统计">站长统计</a>
</div>
<!-- 
右侧滑动栏
<section class="floatRT"><a href="http://bj.597.com/about/indexfeed.html" target="_blank" class="serviceLink">我有问题要反馈</a><b></b></section>
 -->
</div>

</body>
</html>