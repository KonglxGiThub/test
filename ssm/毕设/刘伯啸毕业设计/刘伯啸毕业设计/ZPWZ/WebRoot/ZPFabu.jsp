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
<title>企业招聘信息发布</title>
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
<script src="js/jquery-1.8.3.js" type="text/javascript"></script>
<script type="text/javascript" src="js/global.js"></script>
<script type="text/javascript">
       $(document).ready(function(){
           $("#province").change(function(){
               $("#province option").each(function(i,o){
                   if($(this).attr("selected"))
                   {
                       $(".city").hide();
                       $(".city").eq(i).show();
                   }
               });
           });
           $("#province").change();
       });
</script>
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
	var money = document.getElementById("money").value;
	var addr = document.getElementById("addr").value;
	var education = document.getElementById("education").value;
	var language = document.getElementById("language").value;
	var description = document.getElementById("description").value;
	var num = document.getElementById("num").value;
	var province = document.getElementById("province").value;
	if(name==""){
		alert('公司名必填');
		return false;
	}
	if(money==""){
		alert('职位薪资必填');
		return false;
	}
	if(addr==""){
		alert('职位工作地址');
		return false;
	}
	if(education==""){
		alert('请选择学历');
		return false;
	}
	if(num==""){
		alert('招聘人数是？');
		return false;
	}
	if(province==""){
		alert('请选择职位类别');
		return false;
	}
	if(description==""){
		alert('请对该职位进行描述');
		return false;
	}
	document.getElementById("myform").submit();
}
function add(){
	post('ZPFabu.jsp', {html :prnhtml,id:'<%=cpy.getId()%>'}); 
}
</script>
<div class="w1000">	
<!--流程-->
<div class="step-box clearfix">
<h3 class="name">招聘信息</h3>
</div>	
<!--主体-->	
<form id="myform" method="post" action="JobAddServlet">
<input type="hidden" name="cid" value="<%=cpy.getId() %>">
<input type="hidden" name="cName" value="<%=cpy.getName_all() %>">
<input type="hidden" name="tel" value="<%=cpy.getTel() %>">
<input type="hidden" name="account" value="<%=cpy.getAccount() %>">
<input type="hidden" name="password" value="<%=cpy.getPwd() %>">
<input type="hidden" name="logo" value="1">
<div class="found-main" style="position: relative;zoom: 1">
<!--基本资料-->
<p class="create-tit"><strong class="name">基本资料</strong></p>
<div class="create-item step1">
<div class="clearfix">
<div class="create-form">
<dl class="clearfix">
<dt>职位名称<i class="red">*</i></dt>
<dd class="formRows"><!--状态 warning error success-->						
<input type="text" class="c-text" id="name" name="name" value="" >
</dd>
</dl>
<dl class="clearfix">
<dt>薪资<i class="red">*</i></dt>
<dd class="formRows"><!--状态 warning error success-->						
<input type="text" class="c-text" style="width:100px;" id="money" name="money" value="">
</dd>
</dl>
<dl class="clearfix">
<dt>工作地点<i class="red">*</i></dt>
<dd class="formRows"><!--状态 warning error success-->						
<input type="text" class="c-text" style="width:200px;" id="addr" name="addr" value="">
</dd>
</dl>
<dl class="clearfix">
<dt>福利<i class="red">*</i></dt>
<dd class="formRows"><!--状态 warning error success-->						
<input type="text" class="c-text" style="width:100px;" id="welfare" name="welfare" value="">
</dd>
</dl>
<dl class="clearfix" style="position:relative;z-index:8">
<dt><span id="labelWorkState">学历</span><i class="red">*</i></dt>
<dd style="position:absolute;top:0px;">
<DIV id="uboxstyle2">
	<SELECT id="education" name="education"  style="height:35px;width:120px; border: 1px solid #cfcfcf;">
    <OPTION value="中转">中转</OPTION>
    <OPTION value="大专">大专</OPTION>
    <OPTION value="本科">本科</OPTION>
    <OPTION value="双学位">双学位</OPTION>
    <OPTION value="硕士">硕士</OPTION>
    <OPTION value="博士">博士</OPTION>
  </SELECT>
 </DIV>
 </dd>
</dl>
<dl class="clearfix">
<dt>工作经验<i class="red">*</i></dt>
<dd class="formRows">
<input type="text" class="c-text" style="width:100px;" id="background" name="background" value="不限">
</dd>
</dl>
<dl class="clearfix" style="position:relative;z-index:8">
<dt><span id="labelWorkState">语言</span><i class="red">*</i></dt>
<dd style="position:absolute;top:0px;">
<DIV id="uboxstyle2">
	<SELECT id="language" name="language"  style="height:35px;width:120px; border: 1px solid #cfcfcf;">
    <OPTION value="英语">英语</OPTION>
    <OPTION value="日语">日语</OPTION>
    <OPTION value="其他">其他</OPTION>
  </SELECT>
 </DIV>
 </dd>
</dl>
<dl class="clearfix">
<dt>人数<i class="red">*</i></dt>
<dd class="idcard formRows">
<input type="text" id="num" name="num" style="width:100px" class="c-text" value="" maxlength="18">
</dd>
</dl>

<dl class="clearfix" style="position:relative;z-index:8">
<dt><span id="labelWorkState">种类</span><i class="red">*</i></dt>
<dd style="position:absolute;top:0px;">
<DIV id="uboxstyle2">
	<SELECT id="province" name="c1"  style="height:35px;width:120px; border: 1px solid #cfcfcf;">
   		<option value="">----请选择种类----</option>
       	<option value="12">计算机硬件</option>
       	<option value="13">计算机软件</option>
       	<option value="14">互联网/网游</option>
  	</SELECT>
  	<select class="city" style="height:35px;width:120px; border: 1px solid #cfcfcf;">
           <option>----请选择城市----</option>
   </select>
   <select class="city" name="c2" style="height:35px;width:120px; border: 1px solid #cfcfcf;">
       <option value="10">计算机硬件</option>
       <option value="11">高级硬件工程师</option>
       <option value="12">硬件工程师</option>
       <option value="13">其他</option>
   </select>  
   <select class="city" name="c2" style="height:35px;width:120px; border: 1px solid #cfcfcf;">
       <option value="11">计算机软件</option>
       <option value="12">高级软件工程师</option>
       <option value="13">软件工程师</option>
       <option value="14">软件UI设计师/工程师</option>
       <option value="15">仿真应用工程师</option>
   </select>  
   <select class="city" name="c2" style="height:35px;width:120px; border: 1px solid #cfcfcf;">
       <option value="11"> 互联网软件开发工程师</option>
       <option value="12">语音/视频开发工程师</option>
       <option value="13">多媒体/游戏开发工程师</option>
       <option value="14">网站营运经理/主管</option>
       <option value="15">网站营运专员</option>
   </select> 
 </DIV>
 </dd>
</dl>
</div>
</div>



<!--联系方式-->

<!--更多补充信息-->
<p align="center" class="moreInfor"><em class="hr"></em><span id="moreInforBtn">职位描述<i class="up jpFntWes" style="display:none"></i></span></p>
<dl class="clearfix">
<dd class="formRows validRows">
<textarea  id="description" style="width:650px;height:250px" name="description"  >有经验者优先，男女不限，有较强的责任心和管理能力。</textarea>
</dd>
</dl>
<!--/-->
<dl class="clearfix sub-item">
<dt>&nbsp;</dt>
<dd>
<button id="btnSubmit" type="button" onclick="regist();" class="sub-btn">发布招聘信息</button>
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