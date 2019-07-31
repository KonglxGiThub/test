<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.bs.zp.bean.Company"%>
<%@page import="com.bs.zp.bean.Job"%>
<%@page import="com.bs.zp.bean.ZXCPYJobBean"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
List<ZXCPYJobBean> beanList = (List)request.getAttribute("lists");
Company cpy = new Company();
Job job = new Job();
ZXCPYJobBean bean = new ZXCPYJobBean();
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head >
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta property="qc:admins" content="25424663065176375" />
<meta name="sogou_site_verification" content="W2tYPVJS1S"/>
<title>最新招聘信息</title>

<meta http-equiv="Content-Language" content="zh-CN" />
<!--[if lt IE9]  -->
<script src="http://cdn.597.com/js/html5.js?v=20140722"></script>
<!-- [endif] -->
<link rel="stylesheet" type="text/css" href="css/base.css" />
<link rel="stylesheet" type="text/css" href="css/597index.css" />
<link rel="stylesheet" type="text/css" href="css/v2-job.css" />
<script language="javascript" type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" language="javascript" src="js/jquery.cookie.js"></script>
<script language="javascript" type="text/javascript" src="js/jquery.lazyload.js"></script>
<script language="javascript" type="text/javascript" src="js/index.js"></script>
<style>
body{background: #fff;}
.top{font-size: 12px;}
.content {margin-top: 20px;}
.job_list_tab li {width: 161px; margin-left: 0;}
.job_list_tab { border-top: 1px solid #ff766f; border-bottom: 1px solid #ddd;}
.bread { font-size: 14px; border: 1px solid #ddd; padding: 15px 20px; background: #f2f2f2;  }
.fr {float: right;}
.regTime {color:#999; float: right; font-weight: normal;}
#newJobs {margin-top: 10px;}		
.firm-item a {color:#3D84B8;}
.firm-item a:hover {color:#0af;}
</style>
</head>
<body>
<!-- 顶部导航 -->
<div class="top">
<jsp:include  page="pages/topCon.jsp"/> 
<div class="clear"></div>
</div>

<!-- logo头部 -->
<div class="head auto">
<div class="logo"><a href="/ZPWZ/"><img src="images/logo.jpg" alt="大连人才网" /></a></div>
<div class="changeCity">
<br/>
<div class="cityMenu" id="cityMenu">
</div>
</div>
<div class="searchBox">
<span class="tSch" id="tSch">
<span id="inpBox">
<span>
<input type="text" class="text tSchText ac_input" id="tSchJobText" value="请输入职位名称或公司名称" autocomplete="off" style="color: rgb(153, 153, 153);">
<a href="javascript:void(0)" class="yahei tSchBtn" id="btnJobSearch">搜索</a>
</span>
</span>
<p class="hotWords"></p>
</span>
<!--<a class="adSearch" href="/jobSearch.html" style="color:#999;" target="_blank">高级搜索</a>-->
</div>
<!-- 
<div class="btns" id="btns">
<a href="/company/job/job.html?act=edit" target="_blank" class="fabu">发布招聘</a>
<a href="/person/" target="_blank">登记简历</a>
</div>
 -->
<div class="clear"></div>
</div>


<div class="auto content">
<h3 class="bread">
<span class="fr">搜索到 <%=beanList.size() %> 条记录</span>
<a href="/" class="aGray">首页</a> &gt; <span>最新招聘</span>
</h3>
<div class="firm_box" id="newJobs">
<!-- 循环 firm-item -->
<% for(int i = 0;i<beanList.size();i++){ 
		bean = (ZXCPYJobBean)beanList.get(i);
		cpy = bean.getCompany();
		List<Job> listJob = bean.getJobList();
%>
<div class="firm-item">				
<dl>
<dt class="comName"><span class="regTime">2015-10-14 22:21</span><a href="http://www.597.com/com-28c5c9399213/" target="_blank" ><%=cpy.getName_all() %></a>  ~  <em><%=cpy.getIndustry() %>  <em class="gray"> | </em>  规模：<%=cpy.getSize() %>人</em></dt>
<dd>
<% for(int j = 0;j<listJob.size();j++){ 
		job = (Job)listJob.get(j);
%>
<ul class="firm-list2 ">
<li class="firm-l ">
<a href="/job-b6213b2081677.html" target="_blank" class="fb"><%=job.getName() %></a>
</li>
<li><%=job.getAddr() %></li>
<li ><span class="gray">薪资：</span><%=job.getMoney() %></li>
<li><span class="gray">工作经验：</span><%=job.getWelfare() %></li>
<li class="firm-time"><span class="gray">学历：</span><%=job.getEducation() %></li>
</ul>
<%} %>
</dd></dl>
<div class="clear"></div>
</div>
<%} %>

<footer>
   <%@include file="pages/foot.jsp" %>
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
</script>
<div style="display: none" id="wx_stats">
<script src="http://s5.cnzz.com/z_stat.php?id=1000320696&web_id=1000320696" language="JavaScript"></script>
<link rel="logo1" href="/597logo/logo121x75.png" />
<link rel="logo2" href="/597logo/75px.png" />
</div>

<script type="text/javascript">
var currentCity="北京人才网";
var userType=$.cookie("userType");
var nickname = $.cookie("nickname");
if(nickname){
if(userType=='per'){
$('#topLoginStatus').hide();
$('#topPerLogin').show();
$('#topComLogin').hide();
$('#topPerLogin #topUsername').html(nickname);
$('#notLoginStatus').hide();
$('.logined').show();
$('.logined #perStatus').show();
$('.logined').find('#user_menu_name').html(nickname);
}
if(userType=='com'){
$('#topLoginStatus').hide();
$('#topPerLogin').hide();
$('#topComLogin').show();
$('#topComLogin #topUsername').html(nickname);				
$('#notLoginStatus').hide();
$('.logined').show();
$('.logined #comStatus').show();
$('.logined').find('#com_menu_name').html(nickname);
}
}
$('#currentCity').html(currentCity);

$('#qqLoginTop').click(function(){
qqBox=$.showModal("http://api.597.com/qq/login.api", {title:'QQ登录',contentType : 'iframe',width:'800', height:'410'});
});
$('#sinaLoginTop').click(function(){
sinaBox=$.showModal("http://api.597.com/weibo/login.api", {title:'微博登录',contentType : 'iframe',width:'800', height:'410'});
});
dateFormate(".dateFormate",1444833144);	

// 显示隐藏的职位
$('.showMore').find('a').each(function() {
var txt = $(this).text();
$(this).toggle(function() {
$(this).text('收起相关职位 ↑').parents('dl').find('.firm-more').show();
}, function() {
$(this).text(txt).parents('dl').find('.firm-more').hide();
});
});
</script>

</body>
</html>