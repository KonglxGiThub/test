<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.bs.zp.bean.ResumeBean"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
ResumeBean rb = (ResumeBean)request.getAttribute("ResumeBean");
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="Content-Language" content="zh-CN" />
<title>求职者信息</title>
<!–[if lt IE9]>
<script type="text/javascript" language="javascript" src="js/html5.js" ></script>
<![endif]–>
<link rel="stylesheet" type="text/css" href="css/base.css" />
<link rel="stylesheet" type="text/css" href="css/v2-reset.css" />
<link rel="stylesheet" type="text/css" href="css/v2-header.css" />
<link rel="stylesheet" type="text/css" href="css/v2-widge.css" />
<link rel="stylesheet" type="text/css" href="css/v2-resume.css" />

<link rel="stylesheet" type="text/css" href="css/front.css" />
<link rel="stylesheet" type="text/css" href="css/job.css" />
<link rel="stylesheet" type="text/css" href="css/jobnew.css" />
<link rel="stylesheet" type="text/css" href="css/prettyPhoto.css" />
<link rel="stylesheet" type="text/css" href="css/login.css" />
<link rel="stylesheet" type="text/css" href="css/icons.css" />
<script type="text/javascript" language="javascript" src="js/jquery-1.8.3.min.js"></script>	
<script type="text/javascript" src="js/version.js"></script>
<script type="text/javascript" src="js/global.js"></script>
<style>
.person_dialog {padding:0;border-radius:4px;border:0;}
.person_dialog .ui_dialog_container {padding:0;}
.person_dialog .ui_dialog_close{
position: absolute;overflow:hidden;border-radius: 0 4px 0 0;
display: block;width: 37px;height: 37px;line-height:200px;right:0;top:0;
background: url(images/steel05.png) center 9px no-repeat;cursor: pointer;
}
.validate_dialog {border:6px solid #9e9e9e;}
.newTytit a {color: #666;cursor: text;}
footer{padding-bottom:85px;}
textarea{font-color:#000;}
.newJDutyList{width:100%; height:40px; border-bottom:1px solid #ccc; margin-top:20px;}
.newJDutyList li{ float:left;}
.newJDutyList li a{ display:block; padding:0px 30px; height:40px; line-height:40px; text-align:center; color:#666; font-size:16px;}
.newJDutyList li.cut a{ height:39px; border-bottom:2px solid #2abbb4; color:#149c95; font-weight:bold;}
.hide{display:none;}
.tips {background: #FFFFCC; border: 1px solid #FFCC99; padding: 10px 15px; font-size: 12px; margin: 10px 30px; text-align: left;  }
.tipClose {font-size: 20px; cursor: pointer; position: absolute; right: 10px; top: 2px;}
footer{padding-bottom:40px;}
.tips2{width: 208px; font-size: 12px; border: 1px solid #ffca08;padding: 10px 15px;background-color: #ffffe5;z-index: 1000;position: fixed;left: 50%;margin-left: 253px;bottom: 10px; text-align: left;}
#announcement {background: #fff; padding:5px 20px;width: 960px;margin:0 auto; margin-bottom: 10px;}
#announcement div {
  overflow-y: hidden;
  line-height: 20px;
  height: 20px;
  border:none;
}
.grayline {
  border-right-width: 1px;
  border-left-width: 1px;
  border-right-style: solid;
  border-left-style: solid;
  border-right-color: #c8c8c8;
  border-left-color: #c8c8c8;
}
#announcement li {
  font-size: 12px;
  float: left;
  list-style-type: none;
  margin-right: 11px;
  margin-left: 5px;
  white-space: nowrap;
}
#announcementbody ul {
  margin: 0px;
  padding: 0px;
  clear: both;
}
#btns span:hover p {display: block;}
</style>
</head>
<body id="body" class="minBody">
<jsp:include  page="pages/topNav.jsp"/> 

<div class="bread">
<a href="/ZPWZ/">首页</a>&gt;<a>职位</a>&gt;<a href='/ZPWZ/FindJobByJid?industry=1' >招聘者信息</a>
</div>
<div class="newJobBg">
<div class="newJobLf">
<div class="newJobtop">
<p class="newtop1">
<span>
<a href='/ZPWZ/FindJobByJid?industry=1' >招聘者信息</a>
</p>
<div class="newtopTit">
<h2><%=rb.getSek().getName() %></h2>
</div>

</div>
<div class="newJobCot">
<div class="newJobDtl">
<div class="newWelfare">
<ul class="newtopLit" style="position:relative;left:-35px"><li>性别：</li><%=rb.getSek().getSex()%></ul>
</div>
<div class="newWelfare">
<ul class="newtopLit" style="position:relative;left:-35px"><li>生日：</li><%=rb.getSek().getAge() %></ul>
</div>
<div class="newWelfare">
<ul class="newtopLit" style="position:relative;left:-35px"><li>工作经验：</li><%=rb.getSek().getBackground() %></ul>
</div>
<div class="newWelfare">
<ul class="newtopLit" style="position:relative;left:-35px"><li>学历：</li><%=rb.getSek().getEducation() %></ul>
</div>
<div class="newWelfare">
<ul class="newtopLit" style="position:relative;left:-35px"><li>政治面貌：</li><%=rb.getSek().getPolitical() %></ul>
</div>
<div class="newWelfare">
<ul class="newtopLit" style="position:relative;left:-35px"><li>联系电话：</li><%=rb.getSek().getTel() %></ul>
</div>
<div class="newWelfare">
<ul class="newtopLit" style="position:relative;left:-35px"><li>联系地址：</li><%=rb.getSek().getAddr() %></ul>
</div>
<div class="newWelfare">
<ul class="newtopLit" style="position:relative;left:-35px"><li>联系邮箱：</li><%=rb.getSek().getEmail() %></ul>
</div>
<div class="newWelfare">
<ul class="newtopLit" style="position:relative;left:-35px"><li>QQ：</li><%=rb.getSek().getQq() %></ul>
</div>


</div>

<div class="clear"></div>
</div>
<div class="newJDuty">

</div>
<div class="clear"></div>
</div>
<div class="newJobRt">
<div class="nrtTop">
<dl>
<dt>
<a href="" ><img src="images/15091112344764640.png" width="78" height="78" /></a>
</dt>
<dd>
<div>
<p class="nrtTopt" >
</p>
</div>
</dd>
</dl><div class="nrtTopt">
<img style="margin-right:8px;" src="images/newjob_58.png" width="11" height="10" />
仓储城市配送、长途货物运输、零担货物运输<img style="margin-left:8px;" src="images/newjob_59.png" width="11" height="10" />
</div></div>
<div class="nrtTopLit">
<ul class="nrtLit">
<li>
<span>职位</span><em><%=rb.getJob().getName() %></em>
</li>
</ul><div class="nrtBanner">
<div class="infopicBg">
<div class="infopic">
</div>
<div class="pic_prev"></div>
<div class="pic_next"></div>
</div>
</div>

</div>
</div>
</div>
<footer>
	<%@include file="pages/foot.jsp" %>
</footer>
<div style="display: none" id="wx_stats">
</div>

</body>
</html>
