<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.bs.zp.bean.Company"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
Company cpy = (Company)session.getAttribute("CpyBean");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="keywords" content="">
<meta name="description" content="">
<title>企业基本资料</title>
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
		<div class="header_left">
			<a class="logo" href="/ZPWZ" id="logo"><img src="images/p_logov2.jpg" alt=""></a>
			<div class="nav">
				<a href="/ZPWZ" id="indexpage">首页</a>
			</div>
		</div>
		<div class="header_right" id="userContainer">
	   		<a >CPY:<%=cpy.getAccount() %></a> |
			<a href="LoginOut" class="userOut" id="btnUserOut">退出</a>		
		</div>
	</div>

</div>


<script type="text/javascript">

function regist(){
	var name = document.getElementById("name").value;
	var nameAll = document.getElementById("name_all").value;
	if(name==""){
		alert('公司名必填');
		return false;
	}
	if(nameAll==""){
		alert('公司全名必填');
		return false;
	}
	document.getElementById("myform").submit();
}
function addZP(){
	var postUrl = 'CpyZLSerrvlet2?id=<%=cpy.getId() %>'; 
    var ExportForm = document.createElement("FORM");  
    document.body.appendChild(ExportForm);  
    ExportForm.method = "POST";  
    var newElement = document.createElement("input");  
    newElement.setAttribute("type", "hidden");  
    ExportForm.appendChild(newElement);  
    ExportForm.action = postUrl;  
    ExportForm.submit();  
}
</script>
<div class="w1000">	
<!--流程-->
<div class="step-box clearfix">
<h3 class="name">公司资料</h3>
</div>	
<!--主体-->	
<form id="myform" method="post" action="CpyEditServlet">
<input type="hidden" name="id" value="<%=cpy.getId() %>">
<input type="hidden" name="account" value="<%=cpy.getAccount() %>">
<input type="hidden" name="password" value="<%=cpy.getPwd() %>">
<input type="hidden" name="logo" value="1">
<div class="found-main" style="position: relative;zoom: 1">
<%if(1==cpy.getState()){ %>
<div class="btns" id="btns">
        <a target="_blank" onclick="addZP();" class="sub-btn">发布招聘</a>
</div>
<%} %>
<!--基本资料-->
<p class="create-tit"><strong class="name">基本资料</strong></p>
<div class="create-item step1">
<div class="clearfix">
<div class="create-form">
<dl class="clearfix">
<dt>公司简称<i class="red">*</i></dt>
<dd class="formRows"><!--状态 warning error success-->						
<input type="text" class="c-text" id="name" name="name" value="<%=cpy.getName() %>">
<span data-for="txtUserName" class="prompt-msg msg"></span>
</dd>
</dl>
<dl class="clearfix">
<dt>公司全称<i class="red">*</i></dt>
<dd class="formRows"><!--状态 warning error success-->						
<input type="text" class="c-text" style="width:400px;" id="name_all" name="name_all" value="<%=cpy.getName_all() %>">
</dd>
</dl>
<dl class="clearfix">
<dt>公司性质<i class="red">*</i></dt>
<dd class="formRows"><!--状态 warning error success-->						
<input type="text" class="c-text" style="width:100px;" id="property" name="property" value="<%=cpy.getProperty() %>">
</dd>
</dl>
<dl class="clearfix">
<dt>所处行业<i class="red">*</i></dt>
<dd class="formRows"><!--状态 warning error success-->						
<input type="text" class="c-text" style="width:100px;" id="industry" name="industry" value="<%=cpy.getIndustry() %>">
</dd>
</dl>
<dl class="clearfix">
<dt>公司规模<i class="red">*</i></dt>
<dd class="formRows"><!--状态 warning error success-->						
<input type="text" class="c-text" style="width:100px;" id="size" name="size" value="<%=cpy.getSize() %>">&nbsp;&nbsp; 人 
</dd>
</dl>


<p align="center" class="moreInfor"><em class="hr"></em><span id="moreInforBtn">更多补充信息<i class="up jpFntWes" style="display:none"></i></span></p>
</div>
</div>
</div>
<div id="step1-more" class="create-item step1-more">
<dl class="clearfix">
<dt>公司负责人</dt>
<dd class="idcard formRows">
<input type="text" name="linkman" class="c-text" value="<%=cpy.getLinkman() %>" maxlength="18">
<span data-for="txtIDCardNumber" class="prompt-msg msg"></span>
</dd>
</dl>
<dl class="clearfix">
<dt>公司地址</dt>
<dd class="idcard formRows">
<input type="text" name="addr" class="c-text" value="<%=cpy.getAddr() %>">
<span data-for="txtIDCardNumber" class="prompt-msg msg"></span>
</dd>
</dl>
</div>


<!--联系方式-->
<p class="create-tit" style="position:inherit;"><strong class="name">联系方式</strong> </p>
<div class="create-item step2" style="zoom:1">
<dl class="clearfix">
<dt>手机号码<i class="red">*</i></dt>
<dd class="formRows validRows">
 <i id="phone-status" class="upd-num" style=""></i><!--灰色:upd-num1;绿色:upd-num-->
 <input type="text" class="c-text" id="telPhone" name="tel" value="<%=cpy.getTel() %>"  /><span data-for="txtMobilePhone" class="prompt-msg msg" disabled="disabled"></span><span id="spnConModMobile">
 </span>
</dd>
</dl>
<dl class="clearfix">
<dt>邮箱<i class="red">*</i></dt>
<dd class="formRows validRows">
 <i id="phone-status" class="upd-num" style=""></i><!--灰色:upd-num1;绿色:upd-num-->
 <input type="text" class="c-text" id="txtMobilePhone" name="email" value="<%=cpy.getEmail() %>"  /><span data-for="txtMobilePhone" class="prompt-msg msg" disabled="disabled"></span><span id="spnConModMobile">
 </span>
</dd>
</dl>
<dl class="clearfix">
<dt>公司网址</dt>
<dd class="formRows validRows">
<input type="text" id="web" name="web" value="<%=cpy.getWeb() %>" class="c-text">
<span data-for="qq" class="prompt-msg msg"></span>
</dd>
</dl>
<!--更多补充信息-->
<p align="center" class="moreInfor"><em class="hr"></em><span id="moreInforBtn">公司介绍<i class="up jpFntWes" style="display:none"></i></span></p>
<dl class="clearfix">
<dd class="formRows validRows">
<textarea  id="textarea" style="width:650px;height:250px" name="profile"  ><%=cpy.getProfile() %></textarea>
<span data-for="txtQQ" class="prompt-msg msg"></span>
</dd>
</dl>
<!--/-->
<dl class="clearfix sub-item">
<dt>&nbsp;</dt>
<dd>
<button id="btnSubmit" type="button" onclick="regist();" class="sub-btn">保存到首页</button>
</dd>
</dl>
</div>
<!--/-->
</div>
</form>
<!--/主体 end-->
<div class="footer">©2015 大连人才网 版权所有</div>
<div style="display: none" id="wx_stats">
<script src="css/z_stat.php" language="JavaScript"></script><script src="css/core.php" charset="utf-8" type="text/javascript"></script><a href="http://www.cnzz.com/stat/website.php?web_id=1000320696" target="_blank" title="站长统计">站长统计</a>
</div>
</div>

</div>
</body>
</html>