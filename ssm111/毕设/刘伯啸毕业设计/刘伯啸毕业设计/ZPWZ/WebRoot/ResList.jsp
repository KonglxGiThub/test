<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.bs.zp.bean.Seeker"%>
<%@page import="com.bs.zp.bean.Company"%>
<%@page import="com.bs.zp.bean.ResumeBean"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String role = (String)session.getAttribute("role");
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>人才网ResList.jsp</title>
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
            </div>
            <div class="btns" id="btns">
            </div>
        </div>
    </div>

</div>



<div class="job_main mgb20">

    <!-- 职位搜索结果部分 -->
    <div class="job_list_container mgb10">
        <div class="postSearchBg">
            <!-- 搜索结果左半部分 -->
            <div class="postSearchLeft" id="job_list_main">
                <!-- 结果tab页 -->
                <div class="job_list_tab">
                    <ul>
                        <li class="current">
                            <a href="/ZPWZ/FindAllJob" title="所有职位" class="one"></a>
                        </li>

                    </ul>
                </div>
                <div class="firm_box" id="firm_box"><!--循环 firm-item-->
                    <div class="firm-item fb" style="padding:10px 0 5px;color:#333;background:#f8f8f8;">
                        <ul class="firm-list2">
                            <li class="firm-l" style="width:150px;">职位名称</li>
                            <li class="firm-l" style="width:150px;">求职者名称</li>
                            <li class="firm-md" style="width:150px;">学历</li>
                            <li class="firm-md" style="width:200px;">经验</li>
                            <li class="firm-md" style="width:100px;">年龄</li>
                            <li class="firm-md" style="width:50px;">性别</li>
                            <li class="firm-time" style="width:150px;color:#444;">更新时间</li>
                        </ul>
                        <div class="clear"></div>
                    </div>
                    <!-- 职位浮动层 -->
                    <%
						List lists = (List)request.getAttribute("lists");				
						for(int i=0;i<lists.size();i++){
							 ResumeBean rb = (ResumeBean)lists.get(i);
					%>
					<div class="firm-item">
                        <ul class="firm-list2">
                            <li class="firm-md" style="width:150px;"><%=rb.getJob().getName() %></li>
                            <li class="firm-l"style="width:150px;">
                            <a class="firm-md" href="/ZPWZ/ViewSekerById?id=<%=rb.getRbid() %>"  class="fb des_title" style="" rel="hello"><%=rb.getSek().getName() %></a>
                            </li>
                            <li class="firm-md" style="width:150px;"><%=rb.getSek().getEducation() %></li>
                            <li class="firm-md" style="width:200px;"><%=rb.getSek().getBackground() %></li>
                            <li class="firm-md" style="width:100px;"><%=rb.getSek().getAge() %></li>
                            <li class="firm-md" style="width:50px;"><%=rb.getSek().getSex() %></li>
                            <li class="firm-time" style="width:150px;color:#444;"><%=rb.getTime() %></li>
                        </ul>
                        <div class="clear"></div>
                    </div>
					<%} %>
                    <div class="job_list_table">

                        <jsp:include page="pages/page.jsp"/>
                    </div>
                </div>

            </div>
            <div class="clear"></div>
        </div>
    </div>

    <style>
        .job_sort_list dt { text-align: left; width: 80px;}
        .job_sort_list dd { padding-left: 70px;}
    </style>


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
