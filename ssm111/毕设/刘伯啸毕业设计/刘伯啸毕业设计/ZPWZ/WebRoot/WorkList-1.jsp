<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.bs.zp.bean.Seeker"%>
<%@page import="com.bs.zp.bean.Company"%>
<jsp:include page="pages/header.jsp"/>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="mobile-agent" content="format=xhtml; url=http://m.597.com/search/o0g1100/">
    <meta name="mobile-agent" content="format=html5; url=http://m.597.com/search/o0g1100/">
    <meta name="mobile-agent" content="format=wml; url=http://m.597.com/search/o0g1100/">
    <title>人才网</title>
    <!--[if lt IE9]  -->
    <script src="http://cdn.597.com/js/html5.js"></script>
    <!-- [endif] -->
    <link rel="stylesheet" type="text/css" href="css/base.css" />
    <link rel="stylesheet" type="text/css" href="css/v2-reset.css" />
    <link rel="stylesheet" type="text/css" href="css/v2-header.css" />
    <link rel="stylesheet" type="text/css" href="css/v2-icons.css" />
    <link rel="stylesheet" type="text/css" href="css/v2-widge.css" />
    <link rel="stylesheet" type="text/css" href="css/v2-job.css" />
    <script type="text/javascript" language="javascript" src="js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="js/version.js"></script>
    <script type="text/javascript" src="js/new.js"></script>
    <script type="text/javascript" src="js/global.js"></script>
    <style>
        .topHeader,.topNav,footer { min-width: 1172px; }
        .ptCheck {margin-right: 10px;}
    </style>
</head>
<body class="job">
<jsp:include  page="pages/topNav.jsp"/> 
<div id="header" class="topHeader " style="height:80px;padding-top:10px;">
    <div class="header_fix">
        <div class="header_cont">
            <div class="header_left">
                <a class="logo" href="/ZPWZ"><img src="images/logo.jpg" alt="" /></a>
                <div class="nav" >
                    <div class="changeCity">
                        <span id="currentCity"></span><br />
                    </div>
                </div>
                <div id="search_box_a" class="search_box_a mgt5" >
                    <form action="">
                        <div class="selecter">
                            <div class="label">
                                <label>职位/公司</label>
                            </div>
                        </div>
                        <div class="searchInput">
                            <input id="searchInput" class="keys" type="text" value='' />
                            <div id="ui_hbsug" class="ui_hbsug"></div>
                        </div>
                        <button id="search">搜 索</button>
                    </form>
                </div>
            </div>
            <div class="btns" id="btns">
            </div>
        </div>
    </div>

</div>



<div class="job_main mgb20">
    <div id="job_filter_box" class="job_filter_box mgb10 mgt15">
        <div class="job_nav">
        </div>
        <div id="side_menu_items" class="side_menu_items">
            <div class="side_menu_items_arrow"></div>
        </div>
        <table cellpadding="0">
            <tr class="first" style="display:none">
                <th>招聘行业</th>
                <td>
                    <div class="one_sort">
                        <ul>
                            <li class="first">
                                <a class="sub_link dft_checked cur" href="/search/&g=1100/">不限</a>
                            </li>   </ul>
                    </div>
                </td>
            </tr>
            <tr class="jobadd">
                <th>工作地点</th>
                <td>
                    <div class="one_sort">
                        <ul>
                            <li class="current">
                                <a class="" href="/search/g1/">全国</a>
                            </li><li class="current">
                            <a class="cur" href="/search/g1100/" data-value="1100">北京</a>
                            <li class="current">
                                <a class="" href="/search/g1200/" data-value="1200">天津</a>
                            <li class="current">
                                <a class="" href="/search/g1300/" data-value="1300">河北</a>
                            <li class="current">
                                <a class="" href="/search/g1400/" data-value="1400">山西</a>
                            <li class="current">
                                <a class="" href="/search/g1500/" data-value="1500">内蒙古</a>
                            <li class="current">
                                <a class="" href="/search/g2100/" data-value="2100">辽宁</a>
                            <li class="current">
                                <a class="" href="/search/g2200/" data-value="2200">吉林</a>
                            <li class="current">
                                <a class="" href="/search/g2300/" data-value="2300">黑龙江</a>
                            <li class="current">
                                <a class="" href="/search/g3100/" data-value="3100">上海</a>
                            <li class="current">
                                <a class="" href="/search/g3200/" data-value="3200">江苏</a>
                            <li class="current">
                                <a class="" href="/search/g3300/" data-value="3300">浙江</a>
                            <li class="current">
                                <a class="" href="/search/g3400/" data-value="3400">安徽</a>
                            <li class="current">
                                <a class="" href="/search/g3500/" data-value="3500">福建</a>
                            <li class="current">
                                <a class="" href="/search/g3600/" data-value="3600">江西</a>
                            <li class="current">
                                <a class="" href="/search/g3700/" data-value="3700">山东</a>
                            <li class="current">
                                <a class="" href="/search/g4100/" data-value="4100">河南</a>
                            <li class="current">
                                <a class="" href="/search/g4200/" data-value="4200">湖北</a>
                            <li class="current">
                                <a class="" href="/search/g4300/" data-value="4300">湖南</a>
                            <li class="current">
                                <a class="" href="/search/g4400/" data-value="4400">广东</a>
                            <li class="current">
                                <a class="" href="/search/g4500/" data-value="4500">广西</a>
                            <li class="current">
                                <a class="" href="/search/g4600/" data-value="4600">海南</a>
                            <li class="current">
                                <a class="" href="/search/g5000/" data-value="5000">重庆</a>
                            <li class="current">
                                <a class="" href="/search/g5100/" data-value="5100">四川</a>
                            <li class="current">
                                <a class="" href="/search/g5200/" data-value="5200">贵州</a>
                            <li class="current">
                                <a class="" href="/search/g5300/" data-value="5300">云南</a>
                            <li class="current">
                                <a class="" href="/search/g5400/" data-value="5400">西藏</a>
                            <li class="current">
                                <a class="" href="/search/g6100/" data-value="6100">陕西</a>
                            <li class="current">
                                <a class="" href="/search/g6200/" data-value="6200">甘肃</a>
                            <li class="current">
                                <a class="" href="/search/g6300/" data-value="6300">青海</a>
                            <li class="current">
                                <a class="" href="/search/g6400/" data-value="6400">宁夏</a>
                            <li class="current">
                                <a class="" href="/search/g6500/" data-value="6500">新疆</a>
                            <li class="current">
                                <a class="" href="/search/g7100/" data-value="7100">台湾</a>
                            <li class="current">
                                <a class="" href="/search/g8100/" data-value="8100">香港</a>
                            <li class="current">
                                <a class="" href="/search/g8200/" data-value="8200">澳门</a>
                            <li class="current">
                                <a class="" href="/search/g8300/" data-value="8300">国外</a>
                            <li class="current">
                                <a class="" href="/search/g8400/" data-value="8400">其它</a>
                            </li>
                        </ul>
                    </div>
                </td>
            </tr>
        </table>
    </div>

    <!-- 职位搜索结果部分 -->
    <div class="job_list_container mgb10">
        <div class="postSearchBg">
            <!-- 搜索结果左半部分 -->
            <div class="postSearchLeft" id="job_list_main">
                <!-- 结果tab页 -->
                <!-- <div class="postSchList">
                <div class="zList">

                <a href="/kuaiji/n01_0/" class="cut">刷新时间</a>

                <a href="/kuaiji/n02_0/" class="">发布时间</a>
                </div>
                <a data-urgent-src="/kuaiji/m01/" data-src="/kuaiji/" class="zwPost" href="javascript:void(0)" id="urgentSelect"> <i class=""></i>
                <img src="/img/company/jobimg.png" width="9" height="16">
                <span>急聘职位</span>
                </a>
                </div> -->
                <div class="job_list_tab">
                    <ul>
                        <li class="current">
                            <a href="javascript:;" title="所有职位" class="one"></a>
                        </li>

                    </ul>
                </div>
                <div id="job_list" class="job_list_subtab mgb20">
					<span class="tit"> <i></i>
					排序
					</span>
                    <ul>
                        <li>
                            <a href="/search/o0g1100/" class="red">
                                更新时间 <i class="jpIconMoon"></i>
                            </a>
                        </li>
                        <li><a href="/search/o8g1100/">
                            相关度
                            <i class="jpIconMoon"></i>
                        </a></li>
                        <li><a href="/search/o6g1100/">
                            首发时间
                            <i class="jpIconMoon"></i>
                        </a></li>
                        <li><a href="/search/o2g1100/">
                            薪资
                            <i class="jpIconMoon"></i>
                        </a></li>
                        <li><a href="/search/o4g1100/">
                            工龄
                            <i class="jpIconMoon"></i>
                        </a></li>
                    </ul>
					<span class="tit">
					<i></i>
					筛选
					</span>
		           <div class="actions" id="shieldContainer"><a href="/search/c1g1100/" title="" class="check-default" style="width:70px" id="shield">只搜公司名</a></div>
                    <div class="pagebox">
                        <label>搜索到&nbsp;<b id="totalJobCount">100000+</b>个职位<span id="spanTotalJob">，为您筛选前&nbsp;<b id="totalJob">2000</b>&nbsp;个职位　</label>
                        <!--
                        <a class="jpFntWes disabled" href="javascript:void(0);"></a>
                        <span>1</span>
                        /86
                        <a class="jpFntWes" href="/kehufuwu/p2/#list"></a>
                        -->
                    </div>

                </div>
                <div class="firm_box" id="firm_box"><!--循环 firm-item-->
                    <div class="firm-item fb" style="padding:10px 0 5px;color:#333;background:#f8f8f8;">
                        <ul class="firm-list2">
                            <li class="firm-l " style="text-indent:30px;">职位名称</li>
                            <li class="firm-md">公司名称</li>
                            <li >薪资</li>
                            <li class="firm-md2">工作地区</li>
                            <li class="firm-time" style="color:#444;">更新时间</li>
                        </ul>
                        <div class="clear"></div>
                    </div><div class="firm-item">
                        <ul class="firm-list2">
                            <li class="firm-l">
                                <label class="pos check-default ptCheck" data-value="3a40892463957" data-name="pos"></label>
                                <a href="/job-3a40892463957.html" target="_blank" class="fb des_title" style="" rel="hello">销售经理</a>
                            </li>
                            <li class="firm-md"><a href="/com-bca1402165075/" target="_blank">北京红澳卓越投资管理有限公司</a></li>
                            <li >5000-8000元</li>
                            <li class="firm-md2">北京市-房山区</li>
                            <li class="firm-time">09-05 </li>
                        </ul>
                        <div class="clear"></div>
                    </div>
                    <!-- 职位浮动层 -->
                    <div class="pos_overlay job-pop">
                        <div class="job-tit">
                            <p class="right" style="margin-top: 7px">
                                <a class="btn5 btnsF12 btnApply"  data-value="3a40892463957" data-autofilter="false" href="javascript:void(0)">投递职位</a>
                                <a class="btn3 btnsF12" target="_blank" href="/job-3a40892463957.html">查看详情</a>
                            </p>
                            <span class="f14c9">北京红澳卓越投资管理有限公司</span>
                            <h3 class="name">
                                销售经理<span></span>
                            </h3>
                        </div>
                        <div class="clearfix job-detail">
                            <ul class="one">
                                <li>
                                    <label>薪资待遇：</label>
                                    <!--<span style="ax_pushR" style="display:none">（底薪：2500-3000元/月+提成）</span>-->
                                    <span class='ax_pushL' >5000-8000元</span>
                                </li>
                                <li>
                                    <label>工作地点：</label>
                                    北京市-房山区</li>
                                <li>
                                    <label>工作经验：</label>
                                    2年以上</li>
                            </ul>
                            <ul>
                                <li>
                                    <label>语言要求：</label>
                                    不限</li>
                                <!--
                                <li>
                                <label>所属行业：</label>
                                </li>
                                -->
                                <li>
                                    <label>学历要求：</label>
                                    专科</li>
                                <li>
                                    <label>年龄性别：</label>
                                    25岁到35岁(性别不限)
                                </li>
                                <li>
                                    <label>招聘人数：</label>
                                    2人
                                </li>
                            </ul>
                        </div><p class="job-welf"><span>五险</span><span>住房公积金</span><span>包吃</span><span>包住</span></p><strong class="job-detTit">岗位职责：</strong>
                        <div class="job-detList">
                            有经验者优先，男女不限，有较强的责任心和管理能力。</div>
                    </div><div class="firm-item">
                        <ul class="firm-list2">
                            <li class="firm-l">
                                <label class="pos check-default ptCheck" data-value="644b642463960" data-name="pos"></label>
                                <a href="/job-644b642463960.html" target="_blank" class="fb des_title" style="" rel="hello">销售顾问</a>
                            </li>
                            <li class="firm-md"><a href="/com-bca1402165075/" target="_blank">北京红澳卓越投资管理有限公司</a></li>
                            <li >底薪:2500-5000元+提成</li>
                            <li class="firm-md2">北京市-海淀区</li>
                            <li class="firm-time">09-05 </li>
                        </ul>
                        <div class="clear"></div>
                    </div>
                    <!-- 职位浮动层 -->
                    <div class="pos_overlay job-pop">
                        <div class="job-tit">
                            <p class="right" style="margin-top: 7px">
                                <a class="btn5 btnsF12 btnApply"  data-value="644b642463960" data-autofilter="false" href="javascript:void(0)">投递职位</a>
                                <a class="btn3 btnsF12" target="_blank" href="/job-644b642463960.html">查看详情</a>
                            </p>
                            <span class="f14c9">北京红澳卓越投资管理有限公司</span>
                            <h3 class="name">
                                销售顾问<span></span>
                            </h3>
                        </div>
                        <div class="clearfix job-detail">
                            <ul class="one">
                                <li>
                                    <label>薪资待遇：</label>
                                    <!--<span style="ax_pushR" style="display:none">（底薪：2500-3000元/月+提成）</span>-->
                                    <span class='ax_pushL' >底薪:2500-5000元+提成</span>
                                </li>
                                <li>
                                    <label>工作地点：</label>
                                    北京市-海淀区</li>
                                <li>
                                    <label>工作经验：</label>
                                    不限</li>
                            </ul>
                            <ul>
                                <li>
                                    <label>语言要求：</label>
                                    不限</li>
                                <!--
                                <li>
                                <label>所属行业：</label>
                                </li>
                                -->
                                <li>
                                    <label>学历要求：</label>
                                    高中</li>
                                <li>
                                    <label>年龄性别：</label>
                                    18岁到30岁(性别不限)
                                </li>
                                <li>
                                    <label>招聘人数：</label>
                                    30人
                                </li>
                            </ul>
                        </div><p class="job-welf"><span>五险</span><span>住房公积金</span><span>包住</span></p><strong class="job-detTit">岗位职责：</strong>
                        <div class="job-detList">
                            有经验者优先，乐观、积极、有责任心，吃苦耐劳。</div>
                    </div><div class="firm-item">
                        <ul class="firm-list2">
                            <li class="firm-l">
                                <label class="pos check-default ptCheck" data-value="92f5141514466" data-name="pos"></label>
                                <a href="/job-92f5141514466.html" target="_blank" class="fb des_title" style="" rel="hello">高端营销顾问</a>
                            </li>
                            <li class="firm-md"><a href="/com-e59d67377352/" target="_blank">麦田房产</a></li>
                            <li >6000-8000元</li>
                            <li class="firm-md2">北京市</li>
                            <li class="firm-time">09-05 </li>
                        </ul>
                        <div class="clear"></div>
                    </div>
                    <!-- 职位浮动层 -->
                    <div class="pos_overlay job-pop">
                        <div class="job-tit">
                            <p class="right" style="margin-top: 7px">
                                <a class="btn5 btnsF12 btnApply"  data-value="92f5141514466" data-autofilter="false" href="javascript:void(0)">投递职位</a>
                                <a class="btn3 btnsF12" target="_blank" href="/job-92f5141514466.html">查看详情</a>
                            </p>
                            <span class="f14c9">麦田房产</span>
                            <h3 class="name">
                                高端营销顾问<span></span>
                            </h3>
                        </div>
                        <div class="clearfix job-detail">
                            <ul class="one">
                                <li>
                                    <label>薪资待遇：</label>
                                    <!--<span style="ax_pushR" style="display:none">（底薪：2500-3000元/月+提成）</span>-->
                                    <span class='ax_pushL' >6000-8000元</span>
                                </li>
                                <li>
                                    <label>工作地点：</label>
                                    北京市</li>
                                <li>
                                    <label>工作经验：</label>
                                    不限</li>
                            </ul>
                            <ul>
                                <li>
                                    <label>语言要求：</label>
                                    不限</li>
                                <!--
                                <li>
                                <label>所属行业：</label>
                                </li>
                                -->
                                <li>
                                    <label>学历要求：</label>
                                    专科</li>
                                <li>
                                    <label>年龄性别：</label>
                                    21岁到30岁(性别不限)
                                </li>
                                <li>
                                    <label>招聘人数：</label>
                                    10人
                                </li>
                            </ul>
                        </div><strong class="job-detTit">岗位职责：</strong>
                        <div class="job-detList">
                            岗位职责：<br />1、开发和评估所辖地区重点行业的潜在客户；<br />2、制定大客户销售计划，分派销售任务，评估销售业绩；<br />3、制定可行的客户维护和开拓方案，提高客户满意度，确保完成团队既定目标；<br />4、参与重点客户的开拓，关系维持；<br /><br /><br />任职资格： <br />1、专科及以上学历，21-30岁； <br />2、具备敏锐的观察力、分析判断能力；<br />3、具备较强的市场开拓、客户沟通能力，较强的沟通技巧和团队管理能力；<br />4、能承受较大的......</div>
                    </div><div class="firm-item">
                        <ul class="firm-list2">
                            <li class="firm-l">
                                <label class="pos check-default ptCheck" data-value="f1e4091514467" data-name="pos"></label>
                                <a href="/job-f1e4091514467.html" target="_blank" class="fb des_title" style="" rel="hello">高端涉外顾问（英语、韩语专业优先）</a>
                            </li>
                            <li class="firm-md"><a href="/com-e59d67377352/" target="_blank">麦田房产</a></li>
                            <li >5000-6000元</li>
                            <li class="firm-md2">北京市</li>
                            <li class="firm-time">09-05 </li>
                        </ul>
                        <div class="clear"></div>
                    </div>
                    <!-- 职位浮动层 -->
                    <div class="pos_overlay job-pop">
                        <div class="job-tit">
                            <p class="right" style="margin-top: 7px">
                                <a class="btn5 btnsF12 btnApply"  data-value="f1e4091514467" data-autofilter="false" href="javascript:void(0)">投递职位</a>
                                <a class="btn3 btnsF12" target="_blank" href="/job-f1e4091514467.html">查看详情</a>
                            </p>
                            <span class="f14c9">麦田房产</span>
                            <h3 class="name">
                                高端涉外顾问（英语、韩语专业优先）<span></span>
                            </h3>
                        </div>
                        <div class="clearfix job-detail">
                            <ul class="one">
                                <li>
                                    <label>薪资待遇：</label>
                                    <!--<span style="ax_pushR" style="display:none">（底薪：2500-3000元/月+提成）</span>-->
                                    <span class='ax_pushL' >5000-6000元</span>
                                </li>
                                <li>
                                    <label>工作地点：</label>
                                    北京市</li>
                                <li>
                                    <label>工作经验：</label>
                                    不限</li>
                            </ul>
                            <ul>
                                <li>
                                    <label>语言要求：</label>
                                    不限</li>
                                <!--
                                <li>
                                <label>所属行业：</label>
                                </li>
                                -->
                                <li>
                                    <label>学历要求：</label>
                                    专科</li>
                                <li>
                                    <label>年龄性别：</label>
                                    21岁到29岁(性别不限)
                                </li>
                                <li>
                                    <label>招聘人数：</label>
                                    10人
                                </li>
                            </ul>
                        </div><strong class="job-detTit">岗位职责：</strong>
                        <div class="job-detList">
                            用你的努力去经营一份属于自己的事业！<br />赚50块，赚500块，赚5000块……同样都是销售，你只需要推销一套价格最便宜的房子就可以赚更多<br />为什么不选择回报率最高，但价值被低估的二手房销售行业？ <br />同样是二手房销售，为何不选择麦田房地产经纪有限公司！ <br /><br />加入我们，您将拥有： <br />1. 优越的薪酬<br />无责任高底薪4200元+高额提成（通提）+带薪培训+全套保险（社保+商保） = 全公司近4000名置业专家......</div>
                    </div><div class="firm-item">
                        <ul class="firm-list2">
                            <li class="firm-l">
                                <label class="pos check-default ptCheck" data-value="76c9141514468" data-name="pos"></label>
                                <a href="/job-76c9141514468.html" target="_blank" class="fb des_title" style="" rel="hello">高端商业地产顾问</a>
                            </li>
                            <li class="firm-md"><a href="/com-e59d67377352/" target="_blank">麦田房产</a></li>
                            <li >4000-5000元</li>
                            <li class="firm-md2">北京市</li>
                            <li class="firm-time">09-05 </li>
                        </ul>
                        <div class="clear"></div>
                    </div>
                    <!-- 职位浮动层 -->
                    <div class="pos_overlay job-pop">
                        <div class="job-tit">
                            <p class="right" style="margin-top: 7px">
                                <a class="btn5 btnsF12 btnApply"  data-value="76c9141514468" data-autofilter="false" href="javascript:void(0)">投递职位</a>
                                <a class="btn3 btnsF12" target="_blank" href="/job-76c9141514468.html">查看详情</a>
                            </p>
                            <span class="f14c9">麦田房产</span>
                            <h3 class="name">
                                高端商业地产顾问<span></span>
                            </h3>
                        </div>
                        <div class="clearfix job-detail">
                            <ul class="one">
                                <li>
                                    <label>薪资待遇：</label>
                                    <!--<span style="ax_pushR" style="display:none">（底薪：2500-3000元/月+提成）</span>-->
                                    <span class='ax_pushL' >4000-5000元</span>
                                </li>
                                <li>
                                    <label>工作地点：</label>
                                    北京市</li>
                                <li>
                                    <label>工作经验：</label>
                                    不限</li>
                            </ul>
                            <ul>
                                <li>
                                    <label>语言要求：</label>
                                    不限</li>
                                <!--
                                <li>
                                <label>所属行业：</label>
                                </li>
                                -->
                                <li>
                                    <label>学历要求：</label>
                                    专科</li>
                                <li>
                                    <label>年龄性别：</label>
                                    20岁到29岁(性别不限)
                                </li>
                                <li>
                                    <label>招聘人数：</label>
                                    10人
                                </li>
                            </ul>
                        </div><strong class="job-detTit">岗位职责：</strong>
                        <div class="job-detList">
                            用你的努力去经营一份属于自己的事业！<br />赚50块，赚500块，赚5000块……同样都是销售，你只需要推销一套价格最便宜的房子就可以赚更多<br />为什么不选择回报率最高，但价值被低估的二手房销售行业？ <br />同样是二手房销售，为何不选择麦田房地产经纪有限公司！ <br /><br />加入我们，您将拥有： <br />1. 优越的薪酬<br />无责任高底薪4200元+高额提成（通提）+带薪培训+全套保险（社保+商保） = 全公司近4000名置业专家......</div>
                    </div><div class="firm-item">
                        <ul class="firm-list2">
                            <li class="firm-l">
                                <label class="pos check-default ptCheck" data-value="e1b0ff1514470" data-name="pos"></label>
                                <a href="/job-e1b0ff1514470.html" target="_blank" class="fb des_title" style="" rel="hello">高端置业顾问+底薪4200</a>
                            </li>
                            <li class="firm-md"><a href="/com-e59d67377352/" target="_blank">麦田房产</a></li>
                            <li >8000-10000元</li>
                            <li class="firm-md2">北京市</li>
                            <li class="firm-time">09-05 </li>
                        </ul>
                        <div class="clear"></div>
                    </div>
                    <!-- 职位浮动层 -->
                    <div class="pos_overlay job-pop">
                        <div class="job-tit">
                            <p class="right" style="margin-top: 7px">
                                <a class="btn5 btnsF12 btnApply"  data-value="e1b0ff1514470" data-autofilter="false" href="javascript:void(0)">投递职位</a>
                                <a class="btn3 btnsF12" target="_blank" href="/job-e1b0ff1514470.html">查看详情</a>
                            </p>
                            <span class="f14c9">麦田房产</span>
                            <h3 class="name">
                                高端置业顾问+底薪4200<span></span>
                            </h3>
                        </div>
                        <div class="clearfix job-detail">
                            <ul class="one">
                                <li>
                                    <label>薪资待遇：</label>
                                    <!--<span style="ax_pushR" style="display:none">（底薪：2500-3000元/月+提成）</span>-->
                                    <span class='ax_pushL' >8000-10000元</span>
                                </li>
                                <li>
                                    <label>工作地点：</label>
                                    北京市</li>
                                <li>
                                    <label>工作经验：</label>
                                    不限</li>
                            </ul>
                            <ul>
                                <li>
                                    <label>语言要求：</label>
                                    不限</li>
                                <!--
                                <li>
                                <label>所属行业：</label>
                                </li>
                                -->
                                <li>
                                    <label>学历要求：</label>
                                    专科</li>
                                <li>
                                    <label>年龄性别：</label>
                                    20岁到30岁(性别不限)
                                </li>
                                <li>
                                    <label>招聘人数：</label>
                                    5人
                                </li>
                            </ul>
                        </div><strong class="job-detTit">岗位职责：</strong>
                        <div class="job-detList">
                            岗位职责： <br />1、负责房源和客户的开发和维护，接待与咨询，提供全方位、专业的房地产置业服务；<br />2、详细了解客户的需求，做信息的合理匹配；<br />3、陪同客户实地看房，进行商务谈判，签订三方合同，促成房地产经纪买卖和租赁业务；<br />4、负责业务进展及房屋缴税过户手续办理等服务工作；<br />5、客户的开发与积累，经营与维系。<br /><br />任职资格： <br />1、大专以上学历（军人退伍条件可以适当放宽），年龄21岁以上，男女不限； <br />......</div>
                    </div><div class="firm-item">
                        <ul class="firm-list2">
                            <li class="firm-l">
                                <label class="pos check-default ptCheck" data-value="23aaa31514473" data-name="pos"></label>
                                <a href="/job-23aaa31514473.html" target="_blank" class="fb des_title" style="" rel="hello">无责底薪4200+高端租赁顾问（丰台区）</a>
                            </li>
                            <li class="firm-md"><a href="/com-e59d67377352/" target="_blank">麦田房产</a></li>
                            <li >6000-8000元</li>
                            <li class="firm-md2">北京市</li>
                            <li class="firm-time">09-05 </li>
                        </ul>
                        <div class="clear"></div>
                    </div>
                    <!-- 职位浮动层 -->
                    <div class="pos_overlay job-pop">
                        <div class="job-tit">
                            <p class="right" style="margin-top: 7px">
                                <a class="btn5 btnsF12 btnApply"  data-value="23aaa31514473" data-autofilter="false" href="javascript:void(0)">投递职位</a>
                                <a class="btn3 btnsF12" target="_blank" href="/job-23aaa31514473.html">查看详情</a>
                            </p>
                            <span class="f14c9">麦田房产</span>
                            <h3 class="name">
                                无责底薪4200+高端租赁顾问（丰台区）<span></span>
                            </h3>
                        </div>
                        <div class="clearfix job-detail">
                            <ul class="one">
                                <li>
                                    <label>薪资待遇：</label>
                                    <!--<span style="ax_pushR" style="display:none">（底薪：2500-3000元/月+提成）</span>-->
                                    <span class='ax_pushL' >6000-8000元</span>
                                </li>
                                <li>
                                    <label>工作地点：</label>
                                    北京市</li>
                                <li>
                                    <label>工作经验：</label>
                                    不限</li>
                            </ul>
                            <ul>
                                <li>
                                    <label>语言要求：</label>
                                    不限</li>
                                <!--
                                <li>
                                <label>所属行业：</label>
                                </li>
                                -->
                                <li>
                                    <label>学历要求：</label>
                                    专科</li>
                                <li>
                                    <label>年龄性别：</label>
                                    20岁到30岁(性别不限)
                                </li>
                                <li>
                                    <label>招聘人数：</label>
                                    5人
                                </li>
                            </ul>
                        </div><strong class="job-detTit">岗位职责：</strong>
                        <div class="job-detList">
                            用你的努力去经营一份属于自己的事业！<br />赚50块，赚500块，赚5000块……同样都是销售，你只需要推销一套价格最便宜的房子就可以赚更多<br />为什么不选择回报率最高，但价值被低估的二手房销售行业？ <br />同样是二手房销售，为何不选择麦田房地产经纪有限公司！ <br /><br />加入我们，您将拥有： <br />1. 优越的薪酬<br />无责任高底薪4200元+高额提成（通提）+带薪培训+全套保险（社保+商保） = 全公司近4000名置业专家......</div>
                    </div><div class="firm-item">
                        <ul class="firm-list2">
                            <li class="firm-l">
                                <label class="pos check-default ptCheck" data-value="3c677a1514474" data-name="pos"></label>
                                <a href="/job-3c677a1514474.html" target="_blank" class="fb des_title" style="" rel="hello">无责底薪4200+高端销售培训生（石景山区）</a>
                            </li>
                            <li class="firm-md"><a href="/com-e59d67377352/" target="_blank">麦田房产</a></li>
                            <li >6000-8000元</li>
                            <li class="firm-md2">北京市</li>
                            <li class="firm-time">09-05 </li>
                        </ul>
                        <div class="clear"></div>
                    </div>
                    <!-- 职位浮动层 -->
                    <div class="pos_overlay job-pop">
                        <div class="job-tit">
                            <p class="right" style="margin-top: 7px">
                                <a class="btn5 btnsF12 btnApply"  data-value="3c677a1514474" data-autofilter="false" href="javascript:void(0)">投递职位</a>
                                <a class="btn3 btnsF12" target="_blank" href="/job-3c677a1514474.html">查看详情</a>
                            </p>
                            <span class="f14c9">麦田房产</span>
                            <h3 class="name">
                                无责底薪4200+高端销售培训生（石景山区）<span></span>
                            </h3>
                        </div>
                        <div class="clearfix job-detail">
                            <ul class="one">
                                <li>
                                    <label>薪资待遇：</label>
                                    <!--<span style="ax_pushR" style="display:none">（底薪：2500-3000元/月+提成）</span>-->
                                    <span class='ax_pushL' >6000-8000元</span>
                                </li>
                                <li>
                                    <label>工作地点：</label>
                                    北京市</li>
                                <li>
                                    <label>工作经验：</label>
                                    不限</li>
                            </ul>
                            <ul>
                                <li>
                                    <label>语言要求：</label>
                                    不限</li>
                                <!--
                                <li>
                                <label>所属行业：</label>
                                </li>
                                -->
                                <li>
                                    <label>学历要求：</label>
                                    专科</li>
                                <li>
                                    <label>年龄性别：</label>
                                    20岁到30岁(性别不限)
                                </li>
                                <li>
                                    <label>招聘人数：</label>
                                    5人
                                </li>
                            </ul>
                        </div><strong class="job-detTit">岗位职责：</strong>
                        <div class="job-detList">
                            岗位职责：<br />1、通过电话进行产品销售，完成公司制定销售目标；<br />2、开发新客户，拓展与老客户的业务，建立和维护客户档案；<br />3、统计销售数据，并做好报表提交。<br /> <br />任职资格：<br />1、大专以上学历，专业不限，熟悉使用办公软件；<br />2、普通话标准流利，有一定的销售技巧、沟通技巧和语言表达技巧；<br />3、富有开拓精神，良好的团队意识，良好的协调能力。<br /><br />无责任底薪4200元+提成（11％-29％）通提+带薪培训+社......</div>
                    </div><div class="firm-item">
                        <ul class="firm-list2">
                            <li class="firm-l">
                                <label class="pos check-default ptCheck" data-value="8363c21514475" data-name="pos"></label>
                                <a href="/job-8363c21514475.html" target="_blank" class="fb des_title" style="" rel="hello">高端置业顾问（石景山区）</a>
                            </li>
                            <li class="firm-md"><a href="/com-e59d67377352/" target="_blank">麦田房产</a></li>
                            <li >5000-6000元</li>
                            <li class="firm-md2">北京市</li>
                            <li class="firm-time">09-05 </li>
                        </ul>
                        <div class="clear"></div>
                    </div>
                    <!-- 职位浮动层 -->
                    <div class="pos_overlay job-pop">
                        <div class="job-tit">
                            <p class="right" style="margin-top: 7px">
                                <a class="btn5 btnsF12 btnApply"  data-value="8363c21514475" data-autofilter="false" href="javascript:void(0)">投递职位</a>
                                <a class="btn3 btnsF12" target="_blank" href="/job-8363c21514475.html">查看详情</a>
                            </p>
                            <span class="f14c9">麦田房产</span>
                            <h3 class="name">
                                高端置业顾问（石景山区）<span></span>
                            </h3>
                        </div>
                        <div class="clearfix job-detail">
                            <ul class="one">
                                <li>
                                    <label>薪资待遇：</label>
                                    <!--<span style="ax_pushR" style="display:none">（底薪：2500-3000元/月+提成）</span>-->
                                    <span class='ax_pushL' >5000-6000元</span>
                                </li>
                                <li>
                                    <label>工作地点：</label>
                                    北京市</li>
                                <li>
                                    <label>工作经验：</label>
                                    不限</li>
                            </ul>
                            <ul>
                                <li>
                                    <label>语言要求：</label>
                                    不限</li>
                                <!--
                                <li>
                                <label>所属行业：</label>
                                </li>
                                -->
                                <li>
                                    <label>学历要求：</label>
                                    专科</li>
                                <li>
                                    <label>年龄性别：</label>
                                    21岁到30岁(性别不限)
                                </li>
                                <li>
                                    <label>招聘人数：</label>
                                    10人
                                </li>
                            </ul>
                        </div><strong class="job-detTit">岗位职责：</strong>
                        <div class="job-detList">
                            选择比努力更重要，选对一个行业，进对一家公司，跟对人——你已经成功了一大半。麦田房产——全国最具影响力房产经纪机构，至今唯一一家持续稳步增长、盈利的公司。面对高端租赁市场，一片广袤……<br /> <br />北京城市人口2500万按50％居民租房、平均每户5人计算，北京市常年有250万套/年的租房需求；按2000元/套/月的价格计算则北京是一年的住宅佣金约为50亿商业写字楼和商铺尚不计算在其中，潜力更大共约100亿......</div>
                    </div><div class="firm-item">
                        <ul class="firm-list2">
                            <li class="firm-l">
                                <label class="pos check-default ptCheck" data-value="179b0a1548643" data-name="pos"></label>
                                <a href="/job-179b0a1548643.html" target="_blank" class="fb des_title" style="" rel="hello">跟组演员</a>
                            </li>
                            <li class="firm-md"><a href="/com-6952ac391929/" target="_blank">北京聚宝影视传媒文化中心</a></li>
                            <li >5000-8000元</li>
                            <li class="firm-md2">北京市</li>
                            <li class="firm-time">09-05 </li>
                        </ul>
                        <div class="clear"></div>
                    </div>
                    <!-- 职位浮动层 -->
                    <div class="pos_overlay job-pop">
                        <div class="job-tit">
                            <p class="right" style="margin-top: 7px">
                                <a class="btn5 btnsF12 btnApply"  data-value="179b0a1548643" data-autofilter="false" href="javascript:void(0)">投递职位</a>
                                <a class="btn3 btnsF12" target="_blank" href="/job-179b0a1548643.html">查看详情</a>
                            </p>
                            <span class="f14c9">北京聚宝影视传媒文化中心</span>
                            <h3 class="name">
                                跟组演员<span></span>
                            </h3>
                        </div>
                        <div class="clearfix job-detail">
                            <ul class="one">
                                <li>
                                    <label>薪资待遇：</label>
                                    <!--<span style="ax_pushR" style="display:none">（底薪：2500-3000元/月+提成）</span>-->
                                    <span class='ax_pushL' >5000-8000元</span>
                                </li>
                                <li>
                                    <label>工作地点：</label>
                                    北京市</li>
                                <li>
                                    <label>工作经验：</label>
                                    不限</li>
                            </ul>
                            <ul>
                                <li>
                                    <label>语言要求：</label>
                                    不限</li>
                                <!--
                                <li>
                                <label>所属行业：</label>
                                </li>
                                -->
                                <li>
                                    <label>学历要求：</label>
                                    不限</li>
                                <li>
                                    <label>年龄性别：</label>
                                    18岁到35岁(性别不限)
                                </li>
                                <li>
                                    <label>招聘人数：</label>
                                    50人
                                </li>
                            </ul>
                        </div><p class="job-welf"><span>五险</span><span>住房公积金</span><span>包吃</span><span>包住</span><span>周末双休</span></p><strong class="job-detTit">岗位职责：</strong>
                        <div class="job-detList">
                            招聘要求： <br />本组郑重承诺面试合格，当天进组拍戏 ，为每位进组人员员签订《演出劳务合同》，工资发放有保障，望各位艺员谨慎选择。<br /><br />1.热爱影视事业，具有进取精神。身体健康，道德品质优良，遵守片场纪律。，创新能力强，拥有足够的自信和热爱演艺事业的心。<br />2、有一定的表演天赋、敢于表现自我、勇于表演。 <br />3、谈吐幽雅、普通话标准（也需要各地方言）。 <br />4、能吃苦耐劳，无不良嗜好，上进心强。 <br />5、有自信......</div>
                    </div><div class="firm-item">
                        <ul class="firm-list2">
                            <li class="firm-l">
                                <label class="pos check-default ptCheck" data-value="1c0f4d1548644" data-name="pos"></label>
                                <a href="/job-1c0f4d1548644.html" target="_blank" class="fb des_title" style="" rel="hello">化妆师助理</a>
                            </li>
                            <li class="firm-md"><a href="/com-6952ac391929/" target="_blank">北京聚宝影视传媒文化中心</a></li>
                            <li >5000-6000元</li>
                            <li class="firm-md2">北京市</li>
                            <li class="firm-time">09-05 </li>
                        </ul>
                        <div class="clear"></div>
                    </div>
                    <!-- 职位浮动层 -->
                    <div class="pos_overlay job-pop">
                        <div class="job-tit">
                            <p class="right" style="margin-top: 7px">
                                <a class="btn5 btnsF12 btnApply"  data-value="1c0f4d1548644" data-autofilter="false" href="javascript:void(0)">投递职位</a>
                                <a class="btn3 btnsF12" target="_blank" href="/job-1c0f4d1548644.html">查看详情</a>
                            </p>
                            <span class="f14c9">北京聚宝影视传媒文化中心</span>
                            <h3 class="name">
                                化妆师助理<span></span>
                            </h3>
                        </div>
                        <div class="clearfix job-detail">
                            <ul class="one">
                                <li>
                                    <label>薪资待遇：</label>
                                    <!--<span style="ax_pushR" style="display:none">（底薪：2500-3000元/月+提成）</span>-->
                                    <span class='ax_pushL' >5000-6000元</span>
                                </li>
                                <li>
                                    <label>工作地点：</label>
                                    北京市</li>
                                <li>
                                    <label>工作经验：</label>
                                    不限</li>
                            </ul>
                            <ul>
                                <li>
                                    <label>语言要求：</label>
                                    不限</li>
                                <!--
                                <li>
                                <label>所属行业：</label>
                                </li>
                                -->
                                <li>
                                    <label>学历要求：</label>
                                    不限</li>
                                <li>
                                    <label>年龄性别：</label>
                                    16岁到35岁(性别不限)
                                </li>
                                <li>
                                    <label>招聘人数：</label>
                                    20人
                                </li>
                            </ul>
                        </div><p class="job-welf"><span>五险</span><span>住房公积金</span><span>包吃</span><span>包住</span><span>周末双休</span></p><strong class="job-detTit">岗位职责：</strong>
                        <div class="job-detList">
                            招聘要求： <br />本组郑重承诺面试合格，当天进组拍戏 ，为每位进组人员员签订《演出劳务合同》，工资发放有保障，望各位艺员谨慎选择。<br /><br />1.热爱影视事业，具有进取精神。身体健康，道德品质优良，遵守片场纪律。，创新能力强，拥有足够的自信和热爱演艺事业的心。<br />2、有一定的表演天赋、敢于表现自我、勇于表演。 <br />3、谈吐幽雅、普通话标准（也需要各地方言）。 <br />4、能吃苦耐劳，无不良嗜好，上进心强。 <br />5、有自信......</div>
                    </div><div class="firm-item">
                        <ul class="firm-list2">
                            <li class="firm-l">
                                <label class="pos check-default ptCheck" data-value="8f328b1548645" data-name="pos"></label>
                                <a href="/job-8f328b1548645.html" target="_blank" class="fb des_title" style="" rel="hello">摄影师</a>
                            </li>
                            <li class="firm-md"><a href="/com-6952ac391929/" target="_blank">北京聚宝影视传媒文化中心</a></li>
                            <li >8000-10000元</li>
                            <li class="firm-md2">北京市</li>
                            <li class="firm-time">09-05 </li>
                        </ul>
                        <div class="clear"></div>
                    </div>
                    <!-- 职位浮动层 -->
                    <div class="pos_overlay job-pop">
                        <div class="job-tit">
                            <p class="right" style="margin-top: 7px">
                                <a class="btn5 btnsF12 btnApply"  data-value="8f328b1548645" data-autofilter="false" href="javascript:void(0)">投递职位</a>
                                <a class="btn3 btnsF12" target="_blank" href="/job-8f328b1548645.html">查看详情</a>
                            </p>
                            <span class="f14c9">北京聚宝影视传媒文化中心</span>
                            <h3 class="name">
                                摄影师<span></span>
                            </h3>
                        </div>
                        <div class="clearfix job-detail">
                            <ul class="one">
                                <li>
                                    <label>薪资待遇：</label>
                                    <!--<span style="ax_pushR" style="display:none">（底薪：2500-3000元/月+提成）</span>-->
                                    <span class='ax_pushL' >8000-10000元</span>
                                </li>
                                <li>
                                    <label>工作地点：</label>
                                    北京市</li>
                                <li>
                                    <label>工作经验：</label>
                                    不限</li>
                            </ul>
                            <ul>
                                <li>
                                    <label>语言要求：</label>
                                    不限</li>
                                <!--
                                <li>
                                <label>所属行业：</label>
                                </li>
                                -->
                                <li>
                                    <label>学历要求：</label>
                                    不限</li>
                                <li>
                                    <label>年龄性别：</label>
                                    16岁到35岁(性别不限)
                                </li>
                                <li>
                                    <label>招聘人数：</label>
                                    20人
                                </li>
                            </ul>
                        </div><p class="job-welf"><span>五险</span><span>住房公积金</span><span>包吃</span><span>包住</span><span>周末双休</span></p><strong class="job-detTit">岗位职责：</strong>
                        <div class="job-detList">
                            招聘要求： <br />本组郑重承诺面试合格，当天进组拍戏 ，为每位进组人员员签订《演出劳务合同》，工资发放有保障，望各位艺员谨慎选择。<br /><br />1.热爱影视事业，具有进取精神。身体健康，道德品质优良，遵守片场纪律。，创新能力强，拥有足够的自信和热爱演艺事业的心。<br />2、有一定的表演天赋、敢于表现自我、勇于表演。 <br />3、谈吐幽雅、普通话标准（也需要各地方言）。 <br />4、能吃苦耐劳，无不良嗜好，上进心强。 <br />5、有自信......</div>
                    </div><div class="firm-item">
                        <ul class="firm-list2">
                            <li class="firm-l">
                                <label class="pos check-default ptCheck" data-value="1cbc631548646" data-name="pos"></label>
                                <a href="/job-1cbc631548646.html" target="_blank" class="fb des_title" style="" rel="hello">诚聘艺人助理</a>
                            </li>
                            <li class="firm-md"><a href="/com-6952ac391929/" target="_blank">北京聚宝影视传媒文化中心</a></li>
                            <li >5000-8000元</li>
                            <li class="firm-md2">北京市</li>
                            <li class="firm-time">09-05 </li>
                        </ul>
                        <div class="clear"></div>
                    </div>
                    <!-- 职位浮动层 -->
                    <div class="pos_overlay job-pop">
                        <div class="job-tit">
                            <p class="right" style="margin-top: 7px">
                                <a class="btn5 btnsF12 btnApply"  data-value="1cbc631548646" data-autofilter="false" href="javascript:void(0)">投递职位</a>
                                <a class="btn3 btnsF12" target="_blank" href="/job-1cbc631548646.html">查看详情</a>
                            </p>
                            <span class="f14c9">北京聚宝影视传媒文化中心</span>
                            <h3 class="name">
                                诚聘艺人助理<span></span>
                            </h3>
                        </div>
                        <div class="clearfix job-detail">
                            <ul class="one">
                                <li>
                                    <label>薪资待遇：</label>
                                    <!--<span style="ax_pushR" style="display:none">（底薪：2500-3000元/月+提成）</span>-->
                                    <span class='ax_pushL' >5000-8000元</span>
                                </li>
                                <li>
                                    <label>工作地点：</label>
                                    北京市</li>
                                <li>
                                    <label>工作经验：</label>
                                    不限</li>
                            </ul>
                            <ul>
                                <li>
                                    <label>语言要求：</label>
                                    不限</li>
                                <!--
                                <li>
                                <label>所属行业：</label>
                                </li>
                                -->
                                <li>
                                    <label>学历要求：</label>
                                    不限</li>
                                <li>
                                    <label>年龄性别：</label>
                                    16岁到35岁(性别不限)
                                </li>
                                <li>
                                    <label>招聘人数：</label>
                                    20人
                                </li>
                            </ul>
                        </div><p class="job-welf"><span>五险</span><span>住房公积金</span><span>包吃</span><span>包住</span><span>周末双休</span></p><strong class="job-detTit">岗位职责：</strong>
                        <div class="job-detList">
                            招聘要求： <br />本组郑重承诺面试合格，当天进组拍戏 ，为每位进组人员员签订《演出劳务合同》，工资发放有保障，望各位艺员谨慎选择。<br /><br />1.热爱影视事业，具有进取精神。身体健康，道德品质优良，遵守片场纪律。，创新能力强，拥有足够的自信和热爱演艺事业的心。<br />2、有一定的表演天赋、敢于表现自我、勇于表演。 <br />3、谈吐幽雅、普通话标准（也需要各地方言）。 <br />4、能吃苦耐劳，无不良嗜好，上进心强。 <br />5、有自信......</div>
                    </div><div class="firm-item">
                        <ul class="firm-list2">
                            <li class="firm-l">
                                <label class="pos check-default ptCheck" data-value="a1b61c1548648" data-name="pos"></label>
                                <a href="/job-a1b61c1548648.html" target="_blank" class="fb des_title" style="" rel="hello">服装助理</a>
                            </li>
                            <li class="firm-md"><a href="/com-6952ac391929/" target="_blank">北京聚宝影视传媒文化中心</a></li>
                            <li >6000-8000元</li>
                            <li class="firm-md2">北京市</li>
                            <li class="firm-time">09-05 </li>
                        </ul>
                        <div class="clear"></div>
                    </div>
                    <!-- 职位浮动层 -->
                    <div class="pos_overlay job-pop">
                        <div class="job-tit">
                            <p class="right" style="margin-top: 7px">
                                <a class="btn5 btnsF12 btnApply"  data-value="a1b61c1548648" data-autofilter="false" href="javascript:void(0)">投递职位</a>
                                <a class="btn3 btnsF12" target="_blank" href="/job-a1b61c1548648.html">查看详情</a>
                            </p>
                            <span class="f14c9">北京聚宝影视传媒文化中心</span>
                            <h3 class="name">
                                服装助理<span></span>
                            </h3>
                        </div>
                        <div class="clearfix job-detail">
                            <ul class="one">
                                <li>
                                    <label>薪资待遇：</label>
                                    <!--<span style="ax_pushR" style="display:none">（底薪：2500-3000元/月+提成）</span>-->
                                    <span class='ax_pushL' >6000-8000元</span>
                                </li>
                                <li>
                                    <label>工作地点：</label>
                                    北京市</li>
                                <li>
                                    <label>工作经验：</label>
                                    不限</li>
                            </ul>
                            <ul>
                                <li>
                                    <label>语言要求：</label>
                                    不限</li>
                                <!--
                                <li>
                                <label>所属行业：</label>
                                </li>
                                -->
                                <li>
                                    <label>学历要求：</label>
                                    不限</li>
                                <li>
                                    <label>年龄性别：</label>
                                    16岁到35岁(性别不限)
                                </li>
                                <li>
                                    <label>招聘人数：</label>
                                    20人
                                </li>
                            </ul>
                        </div><p class="job-welf"><span>五险</span><span>住房公积金</span><span>包吃</span><span>包住</span><span>周末双休</span></p><strong class="job-detTit">岗位职责：</strong>
                        <div class="job-detList">
                            招聘要求： <br />本组郑重承诺面试合格，当天进组拍戏 ，为每位进组人员员签订《演出劳务合同》，工资发放有保障，望各位艺员谨慎选择。<br /><br />1.热爱影视事业，具有进取精神。身体健康，道德品质优良，遵守片场纪律。，创新能力强，拥有足够的自信和热爱演艺事业的心。<br />2、有一定的表演天赋、敢于表现自我、勇于表演。 <br />3、谈吐幽雅、普通话标准（也需要各地方言）。 <br />4、能吃苦耐劳，无不良嗜好，上进心强。 <br />5、有自信......</div>
                    </div><div class="firm-item">
                        <ul class="firm-list2">
                            <li class="firm-l">
                                <label class="pos check-default ptCheck" data-value="7dd97f1548650" data-name="pos"></label>
                                <a href="/job-7dd97f1548650.html" target="_blank" class="fb des_title" style="" rel="hello">灯光助理</a>
                            </li>
                            <li class="firm-md"><a href="/com-6952ac391929/" target="_blank">北京聚宝影视传媒文化中心</a></li>
                            <li >6000-8000元</li>
                            <li class="firm-md2">北京市</li>
                            <li class="firm-time">09-05 </li>
                        </ul>
                        <div class="clear"></div>
                    </div>
                    <!-- 职位浮动层 -->
                    <div class="pos_overlay job-pop">
                        <div class="job-tit">
                            <p class="right" style="margin-top: 7px">
                                <a class="btn5 btnsF12 btnApply"  data-value="7dd97f1548650" data-autofilter="false" href="javascript:void(0)">投递职位</a>
                                <a class="btn3 btnsF12" target="_blank" href="/job-7dd97f1548650.html">查看详情</a>
                            </p>
                            <span class="f14c9">北京聚宝影视传媒文化中心</span>
                            <h3 class="name">
                                灯光助理<span></span>
                            </h3>
                        </div>
                        <div class="clearfix job-detail">
                            <ul class="one">
                                <li>
                                    <label>薪资待遇：</label>
                                    <!--<span style="ax_pushR" style="display:none">（底薪：2500-3000元/月+提成）</span>-->
                                    <span class='ax_pushL' >6000-8000元</span>
                                </li>
                                <li>
                                    <label>工作地点：</label>
                                    北京市</li>
                                <li>
                                    <label>工作经验：</label>
                                    不限</li>
                            </ul>
                            <ul>
                                <li>
                                    <label>语言要求：</label>
                                    不限</li>
                                <!--
                                <li>
                                <label>所属行业：</label>
                                </li>
                                -->
                                <li>
                                    <label>学历要求：</label>
                                    不限</li>
                                <li>
                                    <label>年龄性别：</label>
                                    16岁到35岁(性别不限)
                                </li>
                                <li>
                                    <label>招聘人数：</label>
                                    20人
                                </li>
                            </ul>
                        </div><p class="job-welf"><span>五险</span><span>住房公积金</span><span>包吃</span><span>包住</span><span>周末双休</span></p><strong class="job-detTit">岗位职责：</strong>
                        <div class="job-detList">
                            招聘要求： <br />本组郑重承诺面试合格，当天进组拍戏 ，为每位进组人员员签订《演出劳务合同》，工资发放有保障，望各位艺员谨慎选择。<br /><br />1.热爱影视事业，具有进取精神。身体健康，道德品质优良，遵守片场纪律。，创新能力强，拥有足够的自信和热爱演艺事业的心。<br />2、有一定的表演天赋、敢于表现自我、勇于表演。 <br />3、谈吐幽雅、普通话标准（也需要各地方言）。 <br />4、能吃苦耐劳，无不良嗜好，上进心强。 <br />5、有自信......</div>
                    </div><div class="firm-item">
                        <ul class="firm-list2">
                            <li class="firm-l">
                                <label class="pos check-default ptCheck" data-value="8ccff01548652" data-name="pos"></label>
                                <a href="/job-8ccff01548652.html" target="_blank" class="fb des_title" style="" rel="hello">道具管理</a>
                            </li>
                            <li class="firm-md"><a href="/com-6952ac391929/" target="_blank">北京聚宝影视传媒文化中心</a></li>
                            <li >5000-8000元</li>
                            <li class="firm-md2">北京市</li>
                            <li class="firm-time">09-05 </li>
                        </ul>
                        <div class="clear"></div>
                    </div>
                    <!-- 职位浮动层 -->
                    <div class="pos_overlay job-pop">
                        <div class="job-tit">
                            <p class="right" style="margin-top: 7px">
                                <a class="btn5 btnsF12 btnApply"  data-value="8ccff01548652" data-autofilter="false" href="javascript:void(0)">投递职位</a>
                                <a class="btn3 btnsF12" target="_blank" href="/job-8ccff01548652.html">查看详情</a>
                            </p>
                            <span class="f14c9">北京聚宝影视传媒文化中心</span>
                            <h3 class="name">
                                道具管理<span></span>
                            </h3>
                        </div>
                        <div class="clearfix job-detail">
                            <ul class="one">
                                <li>
                                    <label>薪资待遇：</label>
                                    <!--<span style="ax_pushR" style="display:none">（底薪：2500-3000元/月+提成）</span>-->
                                    <span class='ax_pushL' >5000-8000元</span>
                                </li>
                                <li>
                                    <label>工作地点：</label>
                                    北京市</li>
                                <li>
                                    <label>工作经验：</label>
                                    不限</li>
                            </ul>
                            <ul>
                                <li>
                                    <label>语言要求：</label>
                                    不限</li>
                                <!--
                                <li>
                                <label>所属行业：</label>
                                </li>
                                -->
                                <li>
                                    <label>学历要求：</label>
                                    不限</li>
                                <li>
                                    <label>年龄性别：</label>
                                    16岁到35岁(性别不限)
                                </li>
                                <li>
                                    <label>招聘人数：</label>
                                    20人
                                </li>
                            </ul>
                        </div><p class="job-welf"><span>五险</span><span>住房公积金</span><span>包吃</span><span>包住</span><span>周末双休</span></p><strong class="job-detTit">岗位职责：</strong>
                        <div class="job-detList">
                            招聘要求： <br />本组郑重承诺面试合格，当天进组拍戏 ，为每位进组人员员签订《演出劳务合同》，工资发放有保障，望各位艺员谨慎选择。<br /><br />1.热爱影视事业，具有进取精神。身体健康，道德品质优良，遵守片场纪律。，创新能力强，拥有足够的自信和热爱演艺事业的心。<br />2、有一定的表演天赋、敢于表现自我、勇于表演。 <br />3、谈吐幽雅、普通话标准（也需要各地方言）。 <br />4、能吃苦耐劳，无不良嗜好，上进心强。 <br />5、有自信......</div>
                    </div><div class="firm-item">
                        <ul class="firm-list2">
                            <li class="firm-l">
                                <label class="pos check-default ptCheck" data-value="56b4f12455176" data-name="pos"></label>
                                <a href="/job-56b4f12455176.html" target="_blank" class="fb des_title" style="" rel="hello">诚聘销售代表</a>
                            </li>
                            <li class="firm-md"><a href="/com-c9d1131502668/" target="_blank">北京腾飞盛世环保科技有限公司</a></li>
                            <li >底薪:3000-5000元+提成</li>
                            <li class="firm-md2">北京市-朝阳区</li>
                            <li class="firm-time">09-05 </li>
                        </ul>
                        <div class="clear"></div>
                    </div>
                    <!-- 职位浮动层 -->
                    <div class="pos_overlay job-pop">
                        <div class="job-tit">
                            <p class="right" style="margin-top: 7px">
                                <a class="btn5 btnsF12 btnApply"  data-value="56b4f12455176" data-autofilter="false" href="javascript:void(0)">投递职位</a>
                                <a class="btn3 btnsF12" target="_blank" href="/job-56b4f12455176.html">查看详情</a>
                            </p>
                            <span class="f14c9">北京腾飞盛世环保科技有限公司</span>
                            <h3 class="name">
                                诚聘销售代表<span></span>
                            </h3>
                        </div>
                        <div class="clearfix job-detail">
                            <ul class="one">
                                <li>
                                    <label>薪资待遇：</label>
                                    <!--<span style="ax_pushR" style="display:none">（底薪：2500-3000元/月+提成）</span>-->
                                    <span class='ax_pushL' >底薪:3000-5000元+提成</span>
                                </li>
                                <li>
                                    <label>工作地点：</label>
                                    北京市-朝阳区</li>
                                <li>
                                    <label>工作经验：</label>
                                    不限</li>
                            </ul>
                            <ul>
                                <li>
                                    <label>语言要求：</label>
                                    不限</li>
                                <!--
                                <li>
                                <label>所属行业：</label>
                                </li>
                                -->
                                <li>
                                    <label>学历要求：</label>
                                    不限</li>
                                <li>
                                    <label>年龄性别：</label>
                                    18岁到27岁(男性)
                                </li>
                                <li>
                                    <label>招聘人数：</label>
                                    10人
                                </li>
                            </ul>
                        </div><p class="job-welf"><span>五险</span><span>包住</span></p><strong class="job-detTit">岗位职责：</strong>
                        <div class="job-detList">
                            岗位职责：<br />1、承担本区域内的售、回款工作，完成区域内的销售任务。<br />2、开拓新市场的领域，做全面的推广。<br />3、参加公司技术及营销培训，提高自身综合素质。<br />4、新老顾客的维护<br />职位要求：<br />1、学历不限，26岁以下，未婚，男女不限，退役军人优先。<br />2、工作积极主动，励志从事销售工作，有较强的责任心，独立思考，分析解决问题的能力。<br />3、有良好的人际沟通能力，具有较强的客户服务意识和团队合作精神。<br />福利待......</div>
                    </div><div class="firm-item">
                        <ul class="firm-list2">
                            <li class="firm-l">
                                <label class="pos check-default ptCheck" data-value="c2baa82455177" data-name="pos"></label>
                                <a href="/job-c2baa82455177.html" target="_blank" class="fb des_title" style="" rel="hello">市场拓展员</a>
                            </li>
                            <li class="firm-md"><a href="/com-c9d1131502668/" target="_blank">北京腾飞盛世环保科技有限公司</a></li>
                            <li >底薪:3000-5000元+提成</li>
                            <li class="firm-md2">北京市-朝阳区</li>
                            <li class="firm-time">09-05 </li>
                        </ul>
                        <div class="clear"></div>
                    </div>
                    <!-- 职位浮动层 -->
                    <div class="pos_overlay job-pop">
                        <div class="job-tit">
                            <p class="right" style="margin-top: 7px">
                                <a class="btn5 btnsF12 btnApply"  data-value="c2baa82455177" data-autofilter="false" href="javascript:void(0)">投递职位</a>
                                <a class="btn3 btnsF12" target="_blank" href="/job-c2baa82455177.html">查看详情</a>
                            </p>
                            <span class="f14c9">北京腾飞盛世环保科技有限公司</span>
                            <h3 class="name">
                                市场拓展员<span></span>
                            </h3>
                        </div>
                        <div class="clearfix job-detail">
                            <ul class="one">
                                <li>
                                    <label>薪资待遇：</label>
                                    <!--<span style="ax_pushR" style="display:none">（底薪：2500-3000元/月+提成）</span>-->
                                    <span class='ax_pushL' >底薪:3000-5000元+提成</span>
                                </li>
                                <li>
                                    <label>工作地点：</label>
                                    北京市-朝阳区</li>
                                <li>
                                    <label>工作经验：</label>
                                    不限</li>
                            </ul>
                            <ul>
                                <li>
                                    <label>语言要求：</label>
                                    不限</li>
                                <!--
                                <li>
                                <label>所属行业：</label>
                                </li>
                                -->
                                <li>
                                    <label>学历要求：</label>
                                    不限</li>
                                <li>
                                    <label>年龄性别：</label>
                                    16岁到27岁(男性)
                                </li>
                                <li>
                                    <label>招聘人数：</label>
                                    10人
                                </li>
                            </ul>
                        </div><p class="job-welf"><span>五险</span><span>包住</span></p><strong class="job-detTit">岗位职责：</strong>
                        <div class="job-detList">
                            岗位职责：　　　<br />　1、承担本区域内的销售、回款工作，完成区域内的销售任务。　　<br />　2、开拓新市场的领域，做全面的推广。　　　<br />　3、参加公司技术及营销培训，提高自身综合素质。    <br />   4、新老顾客的维护</div>
                    </div><div class="firm-item">
                        <ul class="firm-list2">
                            <li class="firm-l">
                                <label class="pos check-default ptCheck" data-value="7efb252456639" data-name="pos"></label>
                                <a href="/job-7efb252456639.html" target="_blank" class="fb des_title" style="" rel="hello">外派出差员</a>
                            </li>
                            <li class="firm-md"><a href="/com-c9d1131502668/" target="_blank">北京腾飞盛世环保科技有限公司</a></li>
                            <li >底薪:3000-5000元+提成</li>
                            <li class="firm-md2">北京市-朝阳区</li>
                            <li class="firm-time">09-05 </li>
                        </ul>
                        <div class="clear"></div>
                    </div>
                    <!-- 职位浮动层 -->
                    <div class="pos_overlay job-pop">
                        <div class="job-tit">
                            <p class="right" style="margin-top: 7px">
                                <a class="btn5 btnsF12 btnApply"  data-value="7efb252456639" data-autofilter="false" href="javascript:void(0)">投递职位</a>
                                <a class="btn3 btnsF12" target="_blank" href="/job-7efb252456639.html">查看详情</a>
                            </p>
                            <span class="f14c9">北京腾飞盛世环保科技有限公司</span>
                            <h3 class="name">
                                外派出差员<span></span>
                            </h3>
                        </div>
                        <div class="clearfix job-detail">
                            <ul class="one">
                                <li>
                                    <label>薪资待遇：</label>
                                    <!--<span style="ax_pushR" style="display:none">（底薪：2500-3000元/月+提成）</span>-->
                                    <span class='ax_pushL' >底薪:3000-5000元+提成</span>
                                </li>
                                <li>
                                    <label>工作地点：</label>
                                    北京市-朝阳区</li>
                                <li>
                                    <label>工作经验：</label>
                                    不限</li>
                            </ul>
                            <ul>
                                <li>
                                    <label>语言要求：</label>
                                    不限</li>
                                <!--
                                <li>
                                <label>所属行业：</label>
                                </li>
                                -->
                                <li>
                                    <label>学历要求：</label>
                                    不限</li>
                                <li>
                                    <label>年龄性别：</label>
                                    18岁到27岁(性别不限)
                                </li>
                                <li>
                                    <label>招聘人数：</label>
                                    10人
                                </li>
                            </ul>
                        </div><p class="job-welf"><span>五险</span><span>包住</span></p><strong class="job-detTit">岗位职责：</strong>
                        <div class="job-detList">
                            1.公司免费提供住宿，带薪培训<br /> 2.每年享受各地旅游的机会，年终奖。<br /> 3底薪5k+个人提成+个人奖金+团队奖金+定期旅游+年终奖+（免费提供食宿）=月收入&gt;10000---50000元(公司将根据业绩提成比例)；<br /> 4.提拔晋升空间大（没有空降兵，全部管理人员均在公司内部提拔），内部晋升渠道为：销售员——销售主管——销售副经理——独立的公司经理，为员工营造更好的发展平台<br /> 5.良好的员工......</div>
                    </div><div class="firm-item">
                        <ul class="firm-list2">
                            <li class="firm-l">
                                <label class="pos check-default ptCheck" data-value="b7a7e42457036" data-name="pos"></label>
                                <a href="/job-b7a7e42457036.html" target="_blank" class="fb des_title" style="" rel="hello">销售助理</a>
                            </li>
                            <li class="firm-md"><a href="/com-c9d1131502668/" target="_blank">北京腾飞盛世环保科技有限公司</a></li>
                            <li >底薪:3000-5000元+提成</li>
                            <li class="firm-md2">北京市-东城区</li>
                            <li class="firm-time">09-05 </li>
                        </ul>
                        <div class="clear"></div>
                    </div>
                    <!-- 职位浮动层 -->
                    <div class="pos_overlay job-pop">
                        <div class="job-tit">
                            <p class="right" style="margin-top: 7px">
                                <a class="btn5 btnsF12 btnApply"  data-value="b7a7e42457036" data-autofilter="false" href="javascript:void(0)">投递职位</a>
                                <a class="btn3 btnsF12" target="_blank" href="/job-b7a7e42457036.html">查看详情</a>
                            </p>
                            <span class="f14c9">北京腾飞盛世环保科技有限公司</span>
                            <h3 class="name">
                                销售助理<span></span>
                            </h3>
                        </div>
                        <div class="clearfix job-detail">
                            <ul class="one">
                                <li>
                                    <label>薪资待遇：</label>
                                    <!--<span style="ax_pushR" style="display:none">（底薪：2500-3000元/月+提成）</span>-->
                                    <span class='ax_pushL' >底薪:3000-5000元+提成</span>
                                </li>
                                <li>
                                    <label>工作地点：</label>
                                    北京市-东城区</li>
                                <li>
                                    <label>工作经验：</label>
                                    不限</li>
                            </ul>
                            <ul>
                                <li>
                                    <label>语言要求：</label>
                                    不限</li>
                                <!--
                                <li>
                                <label>所属行业：</label>
                                </li>
                                -->
                                <li>
                                    <label>学历要求：</label>
                                    不限</li>
                                <li>
                                    <label>年龄性别：</label>
                                    18岁到27岁(男性)
                                </li>
                                <li>
                                    <label>招聘人数：</label>
                                    5人
                                </li>
                            </ul>
                        </div><p class="job-welf"><span>五险</span><span>包吃</span><span>包住</span></p><strong class="job-detTit">岗位职责：</strong>
                        <div class="job-detList">
                            你是不是还在从事着没有意义，没有前景的工作？<br />是不是每天都在数着时间等待着下班的到来？<br />你现在从事的工作对你来说是不是发现自己很颓废，没有一点激情？想要让自己过得更有意义吗？<br />想让自己凭个人的能力拥有高薪吗？<br />你对自己的未来有规划吗？只要你敢挑战自己，并战胜自己，在大勤你可以拥有更多！<br />在这里我们不限学历，不限工作经验，只要你敢于挑战自我，突破自我，那么大勤欢迎你！！！<br />热血创业的有为青年，这里将......</div>
                    </div><div class="job_list_table">
                        <div class="batch-butn">
                            <label for="select-all"><input type="checkbox" class="select-all" id="select-all" />
                                全选</label>
                            <a class="btn5 btnsF14" id="btnApplyJob" href="javascript:void(0)">
                                批量投递职位（
                                <span class="batch_num">0</span>
                                ）
                            </a>
                            <a class="btn3 btnsF14" id="btnFavJob" href="javascript:void(0)">收藏</a>
                        </div>

                        <div class="page">
                            <div class="page">
                                <span class="now">上一页</span><span class="">1</span>
                                <a  href="/search/o0g1100/?page=2">2</a>
                                <a  href="/search/o0g1100/?page=3">3</a>
                                <a  href="/search/o0g1100/?page=4">4</a>
                                <a  href="/search/o0g1100/?page=5">5</a>
                                <a  href="/search/o0g1100/?page=6">6</a>
                                <a  href="/search/o0g1100/?page=7">7</a>
                                <a  href="/search/o0g1100/?page=8">8</a>
                                <a  href="/search/o0g1100/?page=9">9</a>
                                <a  href="/search/o0g1100/?page=2">下一页</a></div>
                        </div>
                    </div>
                </div>


            </div>
            <!-- <div class="postSearchRight">
            <div class="job_list_side">
                                 <div class="side_banner_list mgb10" id="jobsearchAdvert">
            <p class="mgb5">
            <a href="#">
            <img src="/img/v2/temp/2.jpg" alt="" />
            </a>
            </p>
            </div>

            <div class="side_msg_list mgb10" id="job_recommend">
            <div class="title">
            <h4>智能推荐</h4>
            </div>

            <dl>
            <dt>
            <a target="_blank" href="/zhaopin/zhiwei/job6jvdcd9.html" title="会计">会计</a>
            </dt>
            <dd>
            <div>
            <em title="该职位正在急聘中..." class="icons16_jipin"></em>
            <a target="_blank" title="管理有限公司" href="/zhaopin/qiye/entq8genl0f.html">管理有限公司</a>
            </div>
            <p>面议 - 观音桥</p>
            </dd>
            </dl>

            </div>
            </div>
            </div> -->
            <div class="clear"></div>
        </div>
    </div>

    <style>
        .job_sort_list dt { text-align: left; width: 80px;}
        .job_sort_list dd { padding-left: 70px;}
    </style>


</div>
<div id="scrollFun" class="scrollFun">
    <div class="scrollFunBox">
        <div class="conR">
            <span class="decPic"></span>
        </div>
        <div class="conL">
            <a id="btnApply1" href="javascript:void(0)" class="btn5 btnsF16">批量投递职位（<font class="batch_num">0</font>）</a>
            <a id="btnFav" href="javascript:void(0)" class="btn3 btnsF16">收藏</a>
        </div>
    </div>
    <div class="scrollFunBg"></div>
</div>
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
    <link rel="logo1" href="images/logo121x75.png" />
    <link rel="logo2" href="images/75px.png" />
</div>


<div class="bottom-bar" id="listBottomBar" style="display: none;">
    <a href="javascript:;" class="bottom-bar-close"></a>
    <div class="content">
        <span class="bottom-bar-txt">没有找到合适的工作？</span><a href="/person/register.html" target="_blank" class="bottom-bar-btn">1分钟留下信息</a><span class="bottom-bar-txt">我们会将你推荐给优秀企业！坐等好工作来找你！</span>
    </div>
</div>

<img src="http://cdn.597.com/img/common/loadBox.gif" style="position:fixed;left:50%;top:30%;margin-left:-24px;margin-top:-24px;display:none;" id="loadBox">

<script type="text/javascript">



    if(!jpjs){
        $(document).ready(function(){
            factory($);
        });
    } else {
        jpjs.use(factory);
    }
    function factory($){
        $(window).scroll(function(){
            if ($(document).scrollTop() > 120){
                $('#sus').find('a.backTop').css({'display':'inline-block'});
            }else{
                $('#sus').find('a.backTop').css({'display':'none'});
            }
        });
        $('#sus').find('a.backTop').click(function(){
            $('html,body').animate({ scrollTop: 0 });
        });
    }

</script>
<script type="text/javascript">
    jpjs.use('@jpCommon, @jobsort2, @jobSortActions', function(m){

        var $ = m['jpjob.jobsort2'];
        $('#mutil_select_group').jobsort({target:"#mutil_select_group",type:"multiple",max:5,hddName:'hidJobsort',isLimit:true});
        $('#btnSubmitJobsort').click(function(){
            var $jobsort = $('#mutil_select_group').find('input[name="hidJobsort"]').val();
            if($jobsort){
                $('#hddJobsort').val('a'+ $jobsort['replace'](/,/g,'_'));
            }
            $('#frmJobsort').get(0).submit();
        });
        $("#btnSubmitSalary").click(function(){
            var frm = $("#frmSalary"),
                    txt1 = frm.find("[name='txtminSalary']"),
                    txt2 = frm.find("[name='txtmaxSalary']");

            frm.find("[name='params']").val('e'+txt1.val()+"_"+txt2.val());
            txt1.remove();txt2.remove();
            frm.submit();
            return false;
        });

//xiaomi
        /*mj beign*/

//默认文字 搜索
        $.extend($, m['product.jpCommon']);
        $(".simple_search_bar").textDefault();
        /*end*/

    });

    jpjs.use('@checkLogin, @verifier, @checkBoxer, @confirmBox, @form, @changeClass, @jobPostipGroup', function(m){

        var $ = m['jquery'],
                CheckBoxer = m['widge.checkBoxer'], //列表勾选
                checkLogin = m['product.checkLogin'], //判断是否登录，是则弹出层
                verifier = m['module.verifier'],
                cookie = m['tools.cookie'],
                listBoxer = new CheckBoxer({
                    className : "check-checked",
                    hoverClassName:"check-hover",
                    maxLength:1000,
                    element: $('#job_list_main').find('.pos')
                }),
                srlfun = $("#scrollFun");
//悬浮窗
        m['tools.fixed'].pin(srlfun, 0, 0, false, true);


//底部内容

        var bottomType = cookie.get('bottomType');
        var userType = cookie.get('userType');

        if(!bottomType&&userType!='per'){
            $('#listBottomBar').show();
        }

        $('#listBottomBar .bottom-bar-close').click(function(){
            cookie.set('bottomType', true,{expires:3});
            $('#listBottomBar').hide();
        });

//关注窗口
        var dialog = m['widge.overlay.jpDialog'],
                confirmBox = m['widge.overlay.confirmBox'],
                follower = new dialog({
                    idName: 'follow_dialog',
                    title: '添加关注',
                    close: 'x',
                    isAjax: true,
                    initHeight: 100,
                    width: 480
                });

        /*
         $('#shield').click(function(){
         var islogin = checkLogin.isLogin('ajaxshield');
         if(!islogin){
         return false;
         }
         });
         */
//列表勾选
        listBoxer.on('select', function(e){
            var value = listBoxer.getValue(true)['pos'],
                    leth = value && value.length;
            if(leth==undefined) leth=0;
            /*
             if(leth){
             srlfun.show();
             } else {
             srlfun.hide();
             }
             */
            $(".batch_num").html(leth);
        });
//全选
        $('#select-all').click(function(){
            if ($(this).attr("checked")) {
                var i=0;
                $('.firm-l .pos').each(function(index,value){
                    listBoxer.setStatus(index,true);
//$(this).addClass('check-checked');
//$(this).attr('data-status',true);
                    i++;
                });
                $(".batch_num").html(i);
            } else {
                $('.firm-l .pos').each(function(index,value){
                    listBoxer.setStatus(index,false);
                });
                $(".batch_num").html('0');
            }
        });

//职业预览层
        new m['product.jobList.jobPostipGroup']({
            container:$("#job_list_table, #firm_box"),
            width:670
        });
        $('.hb_ui_jobPostip').eq(0).on('click', '.btnApply', function(){
            var jobid=$(this).attr('data-value');
            $.getJSON('/api/web/job.api?act=join&jid='+jobid,function(result){
                if (result.status==-1){
                    checkLogin.isLogin('ajaxLoginCallback');
                    checkLogin.dialog.resetSize(498);
                    return false;
                }
                if (result.status<1){
                    confirmBox.timeBomb(result.msg, 'fail');
                    return false;
                }
                if (result.status>=1){
                    confirmBox.timeBomb(result.msg, 'success').resetSize('auto');
                    return false;
                }
            });
        });

        var posValue;

//批量投递
        $('#btnApplyJob,#btnApply1').click(function(e){
            var arr = new Array();
            $(".firm-l .check-checked").each(function(){
                arr.push($(this).attr('data-value'));
            });
            var str=arr.join(",");
            if(str==""){
                confirmBox.timeBomb("请选择职位", {
                    name : "warning",
                    timeout : 1000
                });
                return false;
            }


            $.ajax({
                url : "/api/web/job.api",
                type : "get",
                data : {
                    act : 'join',
                    str : str
                },
                dataType : "json",
                beforeSend : function(){
                    $('#loadBox').show();
                },
                success : function(json) {
                    $('#loadBox').hide();
                    if(json.status==-1){
                        checkLogin.isLogin('ajaxLoginCallback');
                        checkLogin.dialog.resetSize(498);
                        return false;
                    }
                    if(json.status==1){
                        confirmBox.timeBomb('职位投递成功', 'success').resetSize('auto');
                        window.location.href = window.location.href;
                    }else{
                        confirmBox.timeBomb(json.msg, 'fail').resetSize('auto');
                    }
                }
            });
        });

//批量收藏
        $('#btnFavJob,#btnFav').on('click', function(){
            var arr = new Array();
            $(".firm-l .check-checked").each(function(){
                arr.push($(this).attr('data-value'));
            });
            var str=arr.join(",");
            if(str==""){
                confirmBox.timeBomb("请选择职位", {
                    name : "warning",
                    timeout : 1000
                });
                return false;
            }

            $.ajax({
                url : "/api/web/job.api",
                type : "get",
                data : {
                    act : 'favorites',
                    str : str
                },
                dataType : "json",
                beforeSend : function(){
                    $('#loadBox').show();
                },
                success : function(json) {
                    $('#loadBox').hide();
                    if(json.status==-1){
                        checkLogin.isLogin('ajaxLoginCallback');
                        checkLogin.dialog.resetSize(498);
                        return false;
                    }
                    if(json.status==1){
                        confirmBox.timeBomb('职位收藏成功', 'success').resetSize('auto');
                    }else{
                        confirmBox.timeBomb('职位收藏失败', 'fail').resetSize('auto');
                    }
                }
            });

        });

        $('.firm_box').find('.firm-bot').find('#btnApply').click(function(){
            var jobid=$(this).attr('rel');
            $.getJSON('/api/web/job.api?act=join&jid='+jobid,function(result){
                if (result.status==-1){
                    var url = '/person/applyLogin.htm';
                    checkLogin.dialog.setContent(url).show().off('loadComplete').on('loadComplete',function(){
                        this.oneCloseEvent('#btnApplyClose');
                    });
                    return false;
                }
                if (result.status<1){
                    confirmBox.timeBomb(data.error, 'fail');
                    return false;
                }
                if (result.status>=1){
                    confirmBox.timeBomb(result.msg, 'success').resetSize('auto');
                    return false;
                }
            });
        });

        $('.firm_box').find('.firm-bot').find('#btnFavorites').click(function(){
            var jobid=$(this).attr('rel');
            $.getJSON('/api/web/job.api?act=favorites&jid='+jobid, function(data) {
                if (data && data.status) {
                    if (data.status==-1){
                        var url = '/person/applyLogin.htm';
                        checkLogin.dialog.setContent(url).show().off('loadComplete').on('loadComplete',function(){
                            this.oneCloseEvent('#btnFavoritesClose');
                        });
                        return false;
                    }
                    if (data.status<0){
                        confirmBox.timeBomb('职位收藏失败', 'fail');
                        return false;
                    }
                    if (data.status==1){
                        confirmBox.timeBomb('职位收藏成功', 'success').resetSize('auto');
                        return false;
                    }
                    if (data.status==2){
                        confirmBox.timeBomb('该职位已经被收藏过', 'success').resetSize('auto');
                        return false;
                    }
                }
            });
        });

        $(".allResume").on("click", function () {
            $(this).addClass("hide").siblings(".allResume").removeClass("hide");
            $(this).closest(".postIntro").find(".more").toggleClass("hidden");
        });

        $('.zwPost').click(function(){
            $('.zwPost i').toggleClass('cut');
            if ($('.zwPost i').hasClass('cut'))
                window.location.href = $(this).attr("data-urgent-src");
            else
                window.location.href = $(this).attr("data-src");
        });
    });


    function ajaxLoginCallback() {
        window.location.href = window.location.href ;
    }
    function ajaxshield(){
        window.location.href = document.getElementById("shield").href;
    }


</script>




</body>

</html>
