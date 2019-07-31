<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.bs.zp.bean.Seeker"%>
<%@page import="com.bs.zp.bean.Company"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
Seeker sek = (Seeker)request.getAttribute("UserBean");
Company cpy = (Company)request.getAttribute("CpyBean");
String role = (String)request.getAttribute("role");
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head >
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>人才网</title>

    <meta http-equiv="Content-Language" content="zh-CN" />
    <link rel="shortcut icon" href="../images/favicon.ico" />
    <link rel="logo" href="../images/logo121x75.png" />
    <!--[if lt IE9]  -->
    <script src="js/html5.js?v=20140722"></script>
    <!-- [endif] -->
    <link rel="stylesheet" type="text/css" href="css/base.css" />
    <link rel="stylesheet" type="text/css" href="css/597index.css" />
    <script language="javascript" type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" language="javascript" src="js/jquery.cookie.js"></script>
    <script language="javascript" type="text/javascript" src="js/index.js"></script>
</head>
<body>

<!-- 顶部导航 -->
<div class="top">
    <div class="topCon">
        <ul id="topLoginStatus">
        <jsp:include page="pages/header_1.jsp"/>
        </ul>
        <div class="wel">
            <ul>
                <li><a href="/ZPWZ/">大连招聘网</a> - </li>
                <li><a href="/ZPWZ/">大连找工作</a>首选 </li>
            </ul>
        </div>
    </div>
    <div class="clear"></div>
</div>

<!-- logo头部 -->
<div class="head auto">
    <div class="logo"><a href="/ZPWZ/"><img src="images/logo.jpg" alt="大连人才网" /></a></div>
    <div class="changeCity">
        <strong><span id="currentCity"></span></strong><br />

    </div>
    <div class="searchBox">
<span class="tSch" id="tSch">
<span id="inpBox">
<span>
<form>
<input type="text" class="text tSchText ac_input" id="tSchJobText" value="请输入职位名称或公司名称" autocomplete="off" style="color: rgb(153, 153, 153);">
<a href="javascript:void(0)" class="yahei tSchBtn" id="btnJobSearch">搜索</a>
</form>
</span>
</span>
</span>
    </div>
    <div class="clear"></div>
</div>

<!-- 导航条 -->
<div class="nav">
    <jsp:include page="pages/position.jsp"/>
    <div class="clear"></div>
</div>


<!-- banner广告 -->
<div class="banner">
    <div id="focus">
        <div class="adv1"></div>
        <div class="adv2" style="display:none;"></div>
    </div>
    <div id="focusArr">
        <ul >
            <li class="cu">1</li>
            <li>2</li>
            <!-- <li>3</li> -->
        </ul>
    </div>

</div>

<!-- 行业招聘 -->
<jsp:include page="pages/hangye.jsp"/>

<!-- 热门招聘 -->
<!-- 金牌企业招聘 -->
<!-- 金牌企业招聘2 中图标 -->
<!-- 推荐企业招聘 -->
<!-- 品牌企业招聘 -->
<!-- 城市频道招聘 --><!-- 最新企业招聘 --><!-- 最新职位招聘信息 --><!-- 行业热门招聘 -->
<div class="hot" id="hotTrade">
    <h3 class="hd2"><a href="/ZPWZ/FindAllJob" class="more" >更多&gt;&gt;</a><span>大连行业招聘</span></h3>
<div class="hyTitle"><a href="#trade1">IT/互联网/通信/电子</a><a href="#trade2">金融/银行/保险</a><a href="#trade3">房产/建筑建设/物业</a><a href="#trade4">广告/传媒/印刷出版</a><a href="#trade5">消费零售/贸易/交通物流</a><a href="#trade6">加工制造/设备仪表</a><a href="#trade7">咨询中介/教育科研/专业服务</a><a href="#trade8">医药生物/医疗保健</a><a href="#trade9">服务业</a><a href="#trade10">能源/矿产/石油化工</a><a href="#trade11">政府/非赢利机构/其他</a></div><div class="jobModel" id="trade1">
</div>
<jsp:include page="pages/zhaopin.jsp"/>

<!-- 友情链接 -->
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
    <link rel="logo1" href="/images/logo121x75.png" />
    <link rel="logo2" href="/images/75px.png" />
</div>

<script type="text/javascript">
    var currentCity="大连人才网";
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

    dateFormate(".dateFormate",1441429020);


</script>

</body>
</html>