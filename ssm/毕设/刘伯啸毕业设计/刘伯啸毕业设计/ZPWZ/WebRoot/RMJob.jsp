<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.bs.zp.bean.Company"%>
<%@page import="com.bs.zp.bean.Job"%>
<%@page import="com.bs.zp.bean.Position"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
Company cpy = (Company)request.getAttribute("company");
List<Job> list = (List)request.getAttribute("list");
Position pos = (Position)request.getAttribute("position");
%>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>人才网RMJob.jsp</title> 
<link rel="stylesheet" type="text/css" href="css/base.css" />
<link rel="stylesheet" type="text/css" href="css/v2-reset.css" />
<link rel="stylesheet" type="text/css" href="css/v2-header.css" />
<link rel="stylesheet" type="text/css" href="css/v2-widge.css" />
<link rel="stylesheet" type="text/css" href="css/front.css" />
<link rel="stylesheet" type="text/css" href="css/job.css" />
<link rel="stylesheet" type="text/css" href="css/jobnew.css" />
<link rel="stylesheet" type="text/css" href="css/mainPhoto.css" />

<script type="text/javascript" src="js/version.js"></script>


<script type="text/javascript" language="javascript" src="js/jquery-1.8.3.js"></script>
<script type="text/javascript" language="javascript" src="js/common.js"></script>
<script type="text/javascript" language="javascript" src="js/dialog.js"></script>
<script type="text/javascript" language="javascript" src="js/jquery.form.js"></script>
<script type="text/javascript" language="javascript" src="js/ui_validate.js"></script>
<script type="text/javascript" language="javascript" src="js/ui_inputFocus.js"></script>

<script type="text/javascript" src="js/new.js"></script>
<script type="text/javascript" src="js/global.js"></script>
<script type="text/javascript">
jpjs.loadJS('js/common.js');
</script>
</head>
<body>

<jsp:include  page="pages/topNav.jsp"/> 


<style type="text/css">
.ui_company_dialog .iduatopBtnbg{margin:0 0 40px 0;}
.dropImage{
width: 660px;height: 330px;background: #f1f1f1;overflow:hidden;margin-bottom:20px;
}
.iduaTionImgList:after{content:".";display:block;height:0;clear:both;visibility:hidden;}
.iduaTionImgList{zoom:1;margin:0 -10px;}
.iduaTionImgList li{
float:left;width:320px;padding:0 10px 20px;
}
.iduaTionImgList li p{
display:block;height:96px;overflow:hidden;
}
.iduaTionImgList .iduaTionLit{
height:30px;line-height:30px;border-top:1px #fff solid;
background:#f5f5f5;overflow:hidden;text-align:right;
}
.iduaTionImgList .iduaTionLit em{
float:left;height:16px;line-height:16px;color:#fff;
padding:0 8px;border-radius:8px;background:#ccc;font-size: 12px;
margin:7px 0 0 7px;font-family: Arial, Helvetica, sans-serif;
}
.iduaTionImgList .iduaTionLit a{
width: 50px;height: 30px;line-height: 30px;text-align: center;display:inline-block;
color: #3d84ba;font-size: 12px;font-family: "宋体";border-left: 1px solid #fefefe;
}
.iduaTionImgList .iduaTionLit .red{
color:#f36865
}
.iduaTionImgList .iduaTionLit a:hover{
background:#3e84ba;color:#fff;
}
.iduaTionImgList .iduaTionLit a.red:hover{
background:#f36865;color:#fff;
}

.notPopMaster{top:108px}
.njmNameImg .njmNameXbox{
width:160px;
height:160px;
overflow:hidden;
position:relative;
display:table-cell;
text-align:center;
vertical-align:middle;
}
.njmNameImg .njmNameXbox p {
position:static;
+position:absolute;
top:50%
}
.njmNameMge{
width: 160px;
height: 160px;
overflow: hidden;
}
.njmNameImg .njmNameXbox p img{
position:static;
+position:relative;
top:-50%;left:-50%;
max-width:160px;
  	max-height:160px;
}
.topHeader .header_fix {width: 1000px;}
.njmNameBtn { *text-indent: 50px;}
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
</style>

<div style="box-shadow:0 0 6px #dbdbdb;width:1000px;height:auto; margin: 20px auto; text-align:left;">
<div class="njmName">
<div class="njmName01">
<div class="njmNameImg">
<div class="njmNameMge">
<div class="njmNameXbox">
<p><img src="images/15091112344764640.png"></p>
</div>
</div>
</div>
<div class="njmNameRt">
<p class="njmNametit1">
<a><%=cpy.getName() %></a>
</p>
<span>
<%=cpy.getName_all() %>&nbsp;<img src="http://cdn.597.com/img/job/newjob/newjob_100.png" width="15" height="18" /></span><p class="njmNametit2">
<img style="margin-right:8px;" src="http://cdn.597.com/img/job/newjob/newjob_58.png" width="11" height="10" />
仓储城市配送、长途货物运输、零担货物运输<img style="margin-left:8px;" src="http://cdn.597.com/img/job/newjob/newjob_59.png" width="11" height="10" />
</p></div>

</div>
<div class="clear">
</div>
</div>


<div class="nJobMainBg">
<div class="nJobMainCont">
<div class="newTytit" style="padding-top:0px;">
<h2 style="margin-bottom:5px;">公司简介</h2>
<div class="njmTit" id="info"><%=cpy.getProfile() %></div>
</div>
<div class="nJobmcLf">				
<div class="newTytit" style="margin-bottom:30px;">
<h2 style="margin-bottom:5px;">详细地址</h2>
<p class="njmTit2">
<span><%=cpy.getAddr() %></span>
</p>
</div>
<div class="newTytit" style="float:left;padding-top:0;">
<h2 style="margin-bottom:5px;" class="newTyClock">
招聘职位
<span>（共有<%=list.size() %>个职位正在招聘中）</span>
</h2>
<div class="njmJoinUs">
<ul>
<% 
if(list.size()>0){
for(int i=0;i<list.size();i++){ 
	Job job = new Job();
	job = list.get(i);
%>
<li>
<a href="/ZPWZ/ViewJobWork?id=<%=job.getId() %>&cid=<%=cpy.getId() %>" >
<p>
<span><%=job.getName() %></span> <i><%=job.getTime() %></i>
</p>
<span class="nUcolor"><%=job.getMoney() %>/月  &nbsp;  <%=job.getEducation() %> / <%=job.getBackground() %> / <%=job.getAddr() %></span>
</a>
</li>
<%}
}else{ %>
<li>还没有发布任何招聘信息</li>
<%} %>
</ul>
</div>
</div></div>
<div class="nJobmcRt">
<ul class="nrtLit nrtLitMain">
<li>
<span>行业</span><em title="<%=pos.getN1() %>"><%=pos.getN1() %></em>
</li>
<li>
<span>性质</span><em><%=cpy.getProperty() %></em>
</li>
<li>
<span>规模</span><em><%=cpy.getSize() %>人</em>
</li><li>
<span>网址</span><a rel="nofollow" href="<%=cpy.getWeb() %>" ><%=cpy.getWeb() %></a>
</li></ul>


</div>
</div>
</div>
</div>
<script src="js/ScrollText.js" language="javascript"></script>
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
</div>

</body>
</html>