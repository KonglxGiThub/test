<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.bs.zp.bean.Company"%>
<%@page import="com.bs.zp.bean.Job"%>
<%@page import="com.bs.zp.bean.Position"%>
<%@page import="com.bs.zp.bean.Seeker"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
Job job = (Job)request.getAttribute("JobBean");
Company cpy = (Company)request.getAttribute("CompanyBean");
Position pos = (Position)request.getAttribute("PositionBean");
Seeker sek = (Seeker)session.getAttribute("UserBean");
String role = (String)session.getAttribute("role");
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="Content-Language" content="zh-CN" />
<title>招聘信息</title>
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
<script type="text/javascript" src="http://cdn1.597.com/min/??/js/v2/jpjs.js,/js/v2/jquery.min.js,/js/v2/base/util.js,/js/v2/base/class.js,/js/v2/base/shape.js,/js/v2/base/event.js,/js/v2/base/aspect.js,/js/v2/base/attribute.js,/js/v2/tools/cookie.js"></script>
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
<a href="/ZPWZ/">首页</a>&gt;<a href="/search/">所有职位</a>&gt;<a href='/ZPWZ/FindJobByJid?industry=<%=job.getId() %>' ><%=job.getName() %></a>
</div>
<div class="newJobBg">
<div class="newJobLf">
<div class="newJobtop">
<p class="newtop1">
<span>
<a href='/ZPWZ/ViewCpy?id=<%=cpy.getId() %>' ><%=cpy.getName_all() %></a>
</p>
<div class="newtopTit">
<h2><%=job.getName() %></h2>
</div>

</div>
<div class="newJobCot">
<div class="newJobDtl"><p>
<i class="iconNew01"></i>
<span class="f60">
￥<%=job.getMoney() %>/月</span>
</p><div class="newWelfare">
<!-- 
<img src="images/welfare.png" width="24" height="24"></img>
<ul class="newtopLit"><li>五险</li><li>住房公积金</li><li>包吃</li><li>包住</li></ul>
 -->
</div><p>
<i class="iconNew02"></i>
<span><%=job.getEducation() %> / <%=job.getWelfare() %> / <%=job.getLanguage() %> </span><span class="gary">（可接收应届毕业生）</span></p>
<p>
<i class="iconNew03"></i>
<span><a><%=job.getAddr() %></a></span>
</p>
<p>
<i class="iconNew04"></i>
<span>招聘<%=job.getNum() %>人</span>

</p>
<div class="jobNewPhone" id="contactWayContainer"><div class="subPhonex">
<i class="iconNew05"></i>
<em>010***13</em>
<span>周</span>
<span>(联系我时请说明是在汇博人才网上看到的)</span>

</div>					

<div class="subPhonez subPhonezN" id="phonetip">
<img src="images/newJob_83.png" width="14" height="7" />
<p>打电话前先投个简历，获得面试的成功率增加30%</p>
</div></div>
<% if("".equals(role)||null==role){%>
<a class="btn5 btnsF14" id="btnApplyJob" href="#" onclick="alert('您还没有登录！！！！')"> 投个简历 </a>
<% }else{%>
<a class="btn5 btnsF14" id="btnApplyJob" href="/ZPWZ/ResAdd?id=<%=job.getId() %>&cid=<%=cpy.getId() %>&sid=<%=sek.getId() %>&type=1&jid=<%=job.getId() %>" > 投个简历 </a>
<% }%>
</div>

<p class="tips">人才网提示您：用人单位以任何名义向应聘者收取费用都属违法行为（如押金、资料费、代收体检费、代收淘宝信誉等），请提高警惕并注意保护个人信息！</p>
<div class="clear"></div>
</div>
<div class="newJDuty">

<ul class="newJDutyList">
<li class="cut"><a href="javascript:void(0)" class="index-1">职位描述</a></li>
<li><a href="javascript:void(0)" class="index-2">公司简介</a></li>
</ul>			


<div class="newTytit hide">
<h2>公司简介</h2>
<div id="info" class="njmTit">
<%=cpy.getProfile() %>
</div>
</div>


<div class="newTytit">
<h2>岗位职责</h2>
<%=job.getDescription() %>
</div>
</div>
<div class="clear"></div>
</div>
<div class="newJobRt">
<div class="nrtTop">
<dl>
<dt>
<a  ><img src="images/15091112344764640.png" width="78" height="78" /></a>
</dt>
<dd>
<div>
<p class="nrtTopt" >
<a href="/ZPWZ/ViewCpy?id=<%=cpy.getId() %>" style="padding-right:0px;">
<%=cpy.getName_all() %><img title="企业认证" src="images/newjob_10.png" width="15" height="18" /></a>
</p>
<p>
<span><%=cpy.getName() %></span>
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
<span>行业</span><em title='<%=pos.getN1() %>' ><%=pos.getN1() %></em>
</li>
<li>
<span>性质</span><em><%=cpy.getProperty() %></em>
</li>
<li>
<span>规模</span><em><%=cpy.getSize() %>人</em>
</li><li>
<span>网址</span><a rel="nofollow" href="<%=cpy.getWeb() %>" ><%=cpy.getWeb() %></a>
</li></ul><div class="nrtBanner">
<div class="infopicBg">
<div class="infopic">
</div>
<div class="pic_prev"></div>
<div class="pic_next"></div>
</div>
<script type="text/javascript">
jpjs.use('@jobPrettyPhoto', function(m){
var $ = m['jpjob.jobPrettyPhoto'];
$(".gallery:first a[rel^='prettyPhoto']").prettyPhoto({animation_speed:'fast',slideshow:3000, hideflash: true});
var liw = 0, ml, r, s;
$('.piclist li').each(function(){
liw += $(this).width()+0;
$(this).css('width',$(this).width()+'px');
})
$('.piclist').width( liw + 'px');

$('.pic_next').click(function(){

if($('.piclist').is(':animated')){
$('.piclist').stop(true,true);
}/* 避免点击事件重复 */

ml = parseInt($('.piclist').css('left'));
r = liw - (208 - ml);  /* 700为外部区块.infopic的宽度，15为li之间的距离，即.piclist li的margin-right的值 */
if(r<208){
s = r - 0;
}else{
s = 208;
}
$('.piclist').animate({left: ml - s + 'px'},'slow');			
})

$('.pic_prev').click(function(){

if($('.piclist').is(':animated')){
$('.piclist').stop(true,true);
}/* 避免点击事件重复 */

ml = parseInt($('.piclist').css('left'));
if(ml>-208){
s = ml;
} else {
s = -208;
}
$('.piclist').animate({left: ml - s + 'px'},'slow');			
});

});
</script>
</div><div class="newJobPdt">
<ul class="nPdtLit">
<a class="cur" href="javascript:;">相似职位</a>
</ul>
<div class="nPdtbg">
<div class="nPdtL" style="display:block;">
<div id="announcement">
<div class="grayline" id="announcementbody" style="height:250px;">
<% for(int i=0;i<10;i++){ %>
<ul class="nPdt1">
<li class="subNpd01"><a ><img src="http://pic.597.com/logo/jobdefaultlogo.png" width="60" height="60" /></a></li>
<li class="subNpd02">
<a  clss='station' >
<span>电梯维保员（山东）</span>
</a> <b></b>
<a >
<em>东芝电梯(中国)有限公司</em>
</a>
</li>
</ul>
<%} %>
</div>
</div>
<a href="/search/?txtKeyWord=招跟单员" target='_blank' class="newJobBtn">搜索更多相似职位</a>
</div>
</div>
</div>
</div>
</div>
</div>
<div id="announcement">
</div>
<script src="http://cdn.597.com/js/ScrollText.js" language="javascript"></script>
<script>
  if(document.getElementById("announcementbody")){
    var scrollup = new ScrollText("announcementbody");
    scrollup.Amount = 1;
    scrollup.Delay = 20;
    scrollup.Start();
  }
</script>
<div class="tips2" style="display:none;">
<p class="mgb5"><span class="tipClose">&times;</span>防诈骗提示</p>
人才网提示您：用人单位以任何名义向应聘者收取费用都属违法行为<span style="color:red;">（如押金、资料费、代收体检费、代收淘宝信誉等）</span>，请提高警惕并注意保护个人信息！
</div>
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
<div style="display: none" id="wx_stats">
<script src="http://s5.cnzz.com/z_stat.php?id=1000320696&web_id=1000320696" language="JavaScript"></script>
<link rel="logo1" href="/597logo/logo121x75.png" />
<link rel="logo2" href="/597logo/75px.png" />
</div>
<script>
$(document).ready(function(){

removeNullTag("info","p");
checkAll("info","p",5);

$(document).on('click','.checkAllContent',function(){
if($(this).attr('id') == 'gather'){
$("#info").find("p").eq(5).nextAll("p").hide();
$('.checkAllContent').attr("id","check").html("[查看全部]");
}else{
$("#info").find("p").show();
$('.checkAllContent').attr("id","gather").html("[收起]");
}
})

});

function removeNullTag(id,tag){
var obj = $("#"+id);
for(var i=0;i<obj.find(tag).length;i++){
if(obj.find(tag).eq(i).html().replace(/^\s*$/g,'')  == ''){
obj.find(tag).eq(i).remove();
}
}
}


function checkAll(id,tag,num){
var obj = $("#"+id);
if(obj.find(tag).length>num){
obj.find(tag).eq(num-1).nextAll().hide();
obj.append("<span class='checkAllContent' id='check' style='cursor:pointer;color:#149c95; position:relative;left:570px;'>[查看全部]</span>");
}	
}

//公司简介的标签切换
$(".newJDutyList li a").click(function(){
if($(this).parent().hasClass('cut')){
return false;
}else{
$(this).parent().addClass('cut').siblings().removeClass('cut');
if($(this).attr('class') == 'index-1'){
$('.newTytit').first().addClass('hide');
$('.newTytit').not(":first").removeClass('hide');
}else{
$('.newTytit').first().removeClass('hide');
$('.newTytit').not(":first").addClass('hide');
}
}
})





</script>

</body>
</html>
