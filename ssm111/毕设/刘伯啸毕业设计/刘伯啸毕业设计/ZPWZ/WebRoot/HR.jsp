<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>职场指南_597人才网</title>
<meta name="mobile-agent" content="format=xhtml; url=http://m.597.com/guide/">
<meta name="mobile-agent" content="format=html5; url=http://m.597.com/guide/">
<meta name="mobile-agent" content="format=wml; url=http://m.597.com/guide/">
<!–[if lt IE9]> 
<script type="text/javascript"  src="http://cdn.597.com/js/html5.js?v=20150226" ></script>
<![endif]–>
<link rel="stylesheet" type="text/css" href="http://cdn.597.com/css/base.css?v=20150226" />
<link rel="stylesheet" type="text/css" href="http://cdn.597.com/css/front.css?v=20150226" />
<link rel="stylesheet" type="text/css" href="http://cdn.597.com/www/css/v2/default/v2-header.css?v=20140821" />
<link rel="stylesheet" type="text/css" href="http://cdn.597.com/www/css/v2/default/v2-widge.css?v=20141122" />
<link rel="stylesheet" type="text/css" href="http://cdn.597.com/css/wkplc.css?v=20150226" />
<script type="text/javascript" language="javascript" src="http://cdn.597.com/js/jquery-1.8.3.min.js?v=20150226"></script>
<script type="text/javascript" src="http://cdn1.597.com/min/js/v2/version.js?v=20141117"></script>
<script type="text/javascript">
window.CONFIG = {
HOST: 'http://cdn1.597.com/min/??',
COMBOPATH: '/js/v2/'
}
</script>
<script type="text/javascript" src="http://cdn1.597.com/min/??/js/v2/jpjs.js,/js/v2/jquery.min.js,/js/v2/base/util.js,/js/v2/base/class.js,/js/v2/base/shape.js,/js/v2/base/event.js,/js/v2/base/aspect.js,/js/v2/base/attribute.js,/js/v2/tools/cookie.js?v=181266488"></script>
<script type="text/javascript" src="http://cdn1.597.com/min/js/v2/global.js?v=20150116"></script>
<script type="text/javascript">
jpjs.config({
combos: {
'@jobMenu': [
'product.jobMenu', '@changeClass', 'product.sideMenu.sideSortMenuGroup', 'product.sideMenu.sideSortMenu',
'product.sideMenu.sideSortMenuData', '@popup'
],
'@jobPostipGroup': [
'product.jobList.jobPostipGroup', 'product.jobList.jobPostip', '@popup'
],
'@followTemplate': 'template.follow',
'@jobSortActions': 'product.jobSortActions'
}
});
jpjs.loadJS('http://cdn1.597.com/min/js/v2/common.js');

var currentCity="全国站";

</script>
<style>

/*页面底部友情链接样式*/
.pageBot{border-top:1px solid #bbb; height:auto;width:100%; overflow:hidden;zoom:1; background:#fff;margin-top:20px;}
 .pageBotCon{width:1000px;margin:0 auto; text-align:left; border-bottom:1px solid #bbb; padding-bottom:10px;}
 footer{ margin-top:0; border-top:none;}
 .frdLink{position:relative;z-index:10;height:50px;overflow:hidden;}
 .footer{margin-top:0;}
 .frdLink b{float:left;display:inline;height:35px;font-size:12px;line-height:35px;width:70px;font-weight:normal;color:#999;}
 .frdLink .linkScroller{float:left;display:inline;line-height:25px;width:930px; height:50px; overflow:hidden;position:relative;}
 .frdLink .linkScroller ul{width:930px;position:absolute;left:0px;margin:5px 0 0;top:0px;}
 .frdLink .linkScroller ul li{float:left; display:inline-block; *display:inline;zoom:1; height:25px; line-height:25px;margin:0 10px 0 0;}
 .frdLink .linkScroller ul li a{color:#424242; display:inline; height:25px; line-height:25px;white-space:nowrap;font-size:12px;}
 .frdLink .linkScroller ul li a:hover{color:#0af;}
 .frdLink .linkScroller{ height:auto;}
 .frdLink .linkScroller ul{ position:inherit;}
</style>
</head>

<body>

<div class="topNav">
	<div class="topNavCon">
		<span class="topNavR">
			<div id="user_menu_notlogin" >
				<span class="per_icon">&nbsp;</span><a href="/person/login.html" id="cityPersonLogin">求职者登录</a><span class="topLine">|</span><a href="/company/login.html" id="cityCompanyLogin">企业登录</a><span class="topLine">|</span><a href="/person/register.htm" style="font-weight:normal;" id="cityFreeReg">免费注册</a>&nbsp;&nbsp;&nbsp;&nbsp;
			</div>
			<span class="" id="user_menu_logined" style="margin-right:0; display:none;">
				<span class="per_icon">&nbsp;</span><a href="/person/" id="user_menu_name" class="user_name" target="_blank"></a><span class="topLine">|</span>
				<a href="/person/logout.html" style="color:#777" id="cityPersonLogout">[退出]</a>
			</span>
			<span class="" id="com_menu_logined" style="margin-right:0; display:none;">
				<span class="per_icon">&nbsp;</span><a href="/company/" id="com_menu_name" class="user_name" target="_blank"></a><span class="topLine">|</span> 
				<a href="/company/logout.html" style="color:#777" id="cityCompanyLogout">[退出]</a>
			</span>
		</span>
		<ul>
			<!-- <li><a href="#">切换城市 <i class="jpFntWes searchType" style="font-size:14px;"></i></a></li><em class="topLine">|</em> -->
			<li><a href="/" id="curCity">首 页</a></li><em class="topLine">|</em>
			<li><a href="/search/" target="_blank" id="curCityJob">找工作</a></li><em class="topLine">|</em>
			<li><a href="/company/resume/search.html"  target="_blank" id="curCityResume">找人才</a></li><em class="topLine">|</em>
			<li><a href="/person/"  target="_blank" id="curCityPerson">求职管理</a></li><em class="topLine">|</em>
			<li><a href="/companyjob.html"  target="_blank" id="curCompanyJob">最新招聘</a></li><em class="topLine">|</em>
			<li><a href="/ZPWZ/ZCzhinan.jsp"  target="_blank">职场指南</a></li><em class="topLine">|</em>
			<li><a href="/ZPWZ/ZCzhinan.jsp"  target="_blank">HR资讯</a></li>
		</ul>
	</div> 
</div>
<div id="header" class="topHeader " style="height:80px;padding-top:10px;">
	<div class="header_fix">
		<div class="header_cont">
			<div class="header_left">
				<a class="logo" href="/"><img src="http://cdn.597.com/img/common/smLogo.jpg" alt="" /></a>
				<div class="nav" >
					<div class="changeCity">
						<span id="currentCity">全国站</span><br />
						<a href="/changecity.html"  id="showCitys">切换城市 <i class="jpFntWes searchType"></i></a>
					</div>
					<!-- <a id="browser" href="javascript:"><i class="jpFntWes">&#xf03a;</i>浏览</a> -->
				</div>
				<div id="search_box_a" class="search_box_a mgt5" >
					<form action="">
						<div class="selecter">
							<div class="label">
								<i class="jpFntWes">&#xf0dd;</i>
								<label>职位</label>
							</div>
							<ul class="options">
								<li data-value="1"><a href="javascript:">职位</a></li>
								<li data-value="2"><a href="javascript:">公司</a></li>
								<!--<li data-value="3"><a href="javascript:">工资</a></li>-->
							</ul>
						</div>
						<div class="searchInput">
							<input id="searchInput" class="keys" type="text" value='' />
							<div id="ui_hbsug" class="ui_hbsug"></div>
						</div>
						<button id="search">搜 索</button>
					</form>
				</div>
				<!--<a class="adSearch" href="/jobSearch.html" >高级搜索</a>-->
			</div>
			<div class="btns" id="btns">
				<span class="loginBtn">
					<i class="jpFntWes ico" ></i>手机站<i class="jpFntWes searchType"></i>
					<p>
						<img src="http://cdn.597.com/img/common/mobileIco.png" alt="手机站点：m.597.com" />
						<em>手机站点：m.597.com</em>
					</p>
				</span>
				<span class="zhuce">
					<img src="http://cdn.597.com/img/common/weixinLogo.jpg" alt="微信" class="weixinIco" />微信<i class="jpFntWes searchType"></i>
					<p>
						<img src="http://cdn.597.com/img/common/wxCode.png" alt="关注597官方微信！" />
						<em>关注597官方微信！</em>
					</p>
				</span>
			</div>
		</div>
	</div>

</div>

<div id="boxNav" class="navBox panelBox">
	<div class="navBoxC">
		<div class="l">
			<div class="navLst">
				<p><a href="/jobSearch.html">找工作</a></p>
				<p><a href="/famous.html">名企招聘</a></p>
				<p><a href="http://www.597.com/hrnews/">HR咨询</a></p>
				<p><a href="http://www.597.com/guide/">职场指南</a></p>
				<p><a href="http://www.597.com/company/login.html">企业服务</a></p>
			</div>
			<div class="navPhone"><p>下载手机客户端</p><p class="lnk"><a href="javascript:;"></a></p></div>
		 </div>
		<div class="r">
			<div class="hd"><h3>热门导航</h3></div>
			<div class="bd">
				<ul>
				<li><a href="/search/?txtKeyWord=销售">销售</a></li>
				<li><a href="/search/?txtKeyWord=会计">会计</a></li>
				<li><a href="/search/?txtKeyWord=营业员">营业员</a></li>
				 <li><a href="/search/?txtKeyWord=出纳">出纳</a></li>
				<li><a href="/search/?txtKeyWord=人力资源">人力资源</a></li>
				<li><a href="/search/?txtKeyWord=文员">文员</a></li>
				<li><a href="/search/?txtKeyWord=前台">前台</a></li>
				<li><a href="/search/?txtKeyWord=网络推广">网络推广</a></li>
				<li><a href="/search/?txtKeyWord=软件开发">软件开发</a></li>
				<li><a href="/search/?txtKeyWord=美工">美工</a></li>
				<li><a href="/search/?txtKeyWord=网站运营">网站运营</a></li>
				<li><a href="/search/?txtKeyWord=行政">行政</a></li>
				<li><a href="/search/?txtKeyWord=设计">设计</a></li>
				<li><a href="/search/?txtKeyWord=平面">平面</a></li>
				<li><a href="/search/?txtKeyWord=助理">助理</a></li>
				<li><a href="/search/?txtKeyWord=施工员">施工员</a></li>
				<li><a href="/search/?txtKeyWord=置业顾问">置业顾问</a></li>
				<li><a href="/search/?txtKeyWord=服务员">服务员</a></li>
				<li><a href="/search/?txtKeyWord=二手房销售">二手房销售</a></li>
				<li><a href="/search/?txtKeyWord=平面模特">平面模特</a></li>
				<li><a href="/search/?txtKeyWord=护理师">护理师</a></li>
				<li class="hot"><a href="/search/?txtKeyWord=外贸">外贸</a></li>
				<li class="hot"><a href="/search/?txtKeyWord=营销总监">营销总监</a></li><li class="hot"><a target="_blank" href="/search/?txtKeyWord=大区经理">大区经理</a></li>
				<li class="hot"><a href="/search/?txtKeyWord=总经理">总经理</a></li>
				</ul>
				<div class="clear"></div>
			</div>
		</div>
		<div class="clear"></div>
		<b class="arr"></b>
	</div>
</div>
<script type="text/javascript">
	/*
	 * 查询js
	 */
	var currentCity="<!--{if $domainInfo['region_id']==1}-->全国站<!--{else}-->{$domainInfo['region_name_short']}人才网<!--{/if}-->";
	jpjs.use('@search', function(m){
		var $ = m['jquery'],
			trigger = $('#browser'),
			popup = m['widge.popup'],
			cookie = m['tools.cookie'],
			p = new popup({
				idName: 'navBox panelBox',
				width: 550,
				height: 'auto',
				align: {
					baseElement: trigger,
					baseXY: ['-50%', '100%+10']
				}
			}),
			hideTimer,
			element = p.get('element');

		var nickName=cookie.get('nickname',{isDecode: true});
		var userType=cookie.get("userType");
		if(nickName){
			if(userType=='per'){
				$('#user_menu_notlogin').hide();
				$('#com_menu_logined').hide();
				$('#user_menu_logined').show();
				$('#user_menu_logined').find('#user_menu_name').html(nickName);
			}
			if(userType=='com'){
				$('#user_menu_notlogin').hide();
				$('#com_menu_logined').show();
				$('#user_menu_logined').hide();
				$('#com_menu_logined').find('#com_menu_name').html(nickName);
			}
		}

		var _cityStr = '全国站';
		var _cityStr = cookie.get('_cityStr',{isDecode: true});
		var _cityDomain = cookie.get('_cityDomain');
		$('#currentCity').html(_cityStr);

		$($('#boxNav').remove().html()).appendTo(element);
		trigger.on('mouseenter', enterHandle).on('mouseleave', leaveHandle); 
		element.on('mouseenter', enterHandle).on('mouseleave', leaveHandle);
		
		function enterHandle(){
			hideTimer && clearTimeout(hideTimer);
			p.show();
		}
		function leaveHandle(){
			hideTimer && clearTimeout(hideTimer);
			hideTimer = setTimeout(function(){
				p.hide();
			}, 120);
		}
		
		var cityUrl = 'www';
		if(_cityDomain){
			cityUrl = 'http://'+_cityDomain+'.597.com';
			$('.logo').attr('href',cityUrl);
			//_cityStr = _cityStr.replace('人才网','');
			//$('#curCity').html(_cityStr);
			$('#curCity').attr('href',cityUrl);
			$('#curCityJob').attr('href',cityUrl+'/search/');
			$('#curCityResume').attr('href',cityUrl+'/company/resume/search.html');
			$('#curCityPerson').attr('href',cityUrl+'/person/');
			$('#curCompanyJob').attr('href',cityUrl+'/companyjob.html');
			$('.adSearch').attr('href',cityUrl+'/jobSearch.html');
			$('#user_menu_name').attr('href',cityUrl+'/person/');
			$('#cityPersonLogin').attr('href',cityUrl+'/person/login.html');
			$('#cityCompanyLogin').attr('href',cityUrl+'/company/login.html');
			$('#cityFreeReg').attr('href',cityUrl+'/person/register.htm');
			$('#com_menu_name').attr('href',cityUrl+'/company/');
			$('#cityPersonLogout').attr('href',cityUrl+'/person/logout.html');
			$('#cityCompanyLogout').attr('href',cityUrl+'/company/logout.html');

		}
		//头部搜索
		var search = new m['product.jobSearch.jobTopSearch']({
			selectedIndex:0,
			search: {
				width: 333
			},
			initDataSource: '', 
			dataSource:[],
			url: [
				//'/jobsearch/?key={{query}}',
				//'/jobsearch/?params=u2&key={{query}}',
				//'/salary/{{query}}/'
				cityUrl+'/search/?txtKeyWord={{query}}',
				cityUrl+'/search/c1/?txtKeyWord={{query}}'
				//'/search/'
			],
			placeHolder: [
				'找一找，总有适合您的工作',
				'请输入公司名称',
				'请输入职位名称'
			]
		});
		
		var searchInput = search.getSearch(),
			searchSelect = search.getSelect(),
			maxSize = 10;
		searchInput.on('itemAllDelete', function(e){
			$.getJSON('/head/ClearSearchKeywords/?callback=?');
		});
		searchInput.on('itemDeleted', function(e){
			$.getJSON('/head/DelSearchKeyword/?keyword='+e.value+'&callback=?');
		});
		searchInput.on('searchItemSelected', function(e){
			//e.url是链接
			//e.data.text是对应的文字
			//e.index是索引号
			var index = searchSelect.get('selectedIndex');
			window.location.href = e.url;
			/*
			if(e.url){
				$.getJSON('/head/SaveJobkey/?keyword='+e.data.text+'&callback=?',function(result){
					window.location.href = e.url;
				});
			}else {
				window.location.href = e.url;
			}
			*/
		});
		searchInput.before('show', function(){
			this.setLevel(99);
			p.setLevel(98);
		});
		p.before('show', function(){
			this.setLevel(99);
			searchInput.setLevel(98);
		});
		
		search.on('submit', function(e){
			window.location.href = e.url;
			/*
			if(e.index==0&&e.value) {
				$.getJSON('/head/SaveJobkey/?keyword='+e.value+'&callback=?',function(result){
					window.location.href = e.url;
				});
			}else {
				  window.location.href = e.url;	
			}
			*/
		});


		$('#btns span').hover(function() {
			$(this).find('p').show();
		}, function() {
			$(this).find('p').hide();
		});



	});	
</script>

<div class="content" >
<div class="bread"><a href="/" id="guideCity">597人才网</a>&gt;<span>职场指南</span></div>
<div class="wkplc">
<div class="left">
<div class="wkplLst leftPart">
<div class="hd">
<h3>职场指南</h3><div class="rBtn"></div>
</div>
<div class="bd" id="lst">
<ul><li class=" noPic" title='人人羡慕的&quot;职场幸运儿&quot;，是有秘密武器的！'>
<h2><a href="http://www.597.com/guide/detail-52791.html" target='_blank'>人人羡慕的&quot;职场幸运儿&quot;，是有秘密武器的！</a></h2>
<dl>
<dt><a><img src="" /></a></dt>
<dd>
<div class="txt">
工作很多年，尤其负责企业HR之后，我开始慢慢的觉察和分析一件事——左右职场幸福感的那个无形的东西到底是什么？为什么每个人在其职业生涯中的收获有如此大的差距，在职场中穿梭的人们，为何内心的感受都是如此的...
</div>
<div class="bot">
<p class="time"><i class="jpFntWes">&#xf017;</i><span>2015-08-18</span></p>
<div class="share"><a href="javascript:void(0);" class="sina" id="shareSina" title="分享至新浪微博"></a><a href="javascript:void(0);" class="txweibo" id="shareTengXun" title="分享至腾讯微博"></a><a href="javascript:void(0);" class="qzone" id="shareQQ" title="分享至QQ空间"></a><a href="javascript:void(0);" class="renren" id="shareRenRen" title="分享至人人网"></a></div>
<p class="rTo"><a href="http://www.597.com/guide/detail-52791.html" target='_blank'>查看详情&gt;&gt;</a></p>
</div>
</dd>
</dl>
   </li>
   <li class=" noPic" title='专家支招女生求职:要发挥细致耐心等职场优势'>
<h2><a href="http://www.597.com/guide/detail-52790.html" target='_blank'>专家支招女生求职:要发挥细致耐心等职场优势</a></h2>
<dl>
<dt><a><img src="" /></a></dt>
<dd>
<div class="txt">
昨日，重庆师范大学，首届普通高校毕业女大学生专场双选会举行&nbsp; 许恢毅 摄&nbsp;现场：3000多个岗位为女生量身定做&nbsp;大学生求职难，而作为女大学生，求职时面临的难度有可能比男生...
</div>
<div class="bot">
<p class="time"><i class="jpFntWes">&#xf017;</i><span>2015-08-18</span></p>
<div class="share"><a href="javascript:void(0);" class="sina" id="shareSina" title="分享至新浪微博"></a><a href="javascript:void(0);" class="txweibo" id="shareTengXun" title="分享至腾讯微博"></a><a href="javascript:void(0);" class="qzone" id="shareQQ" title="分享至QQ空间"></a><a href="javascript:void(0);" class="renren" id="shareRenRen" title="分享至人人网"></a></div>
<p class="rTo"><a href="http://www.597.com/guide/detail-52790.html" target='_blank'>查看详情&gt;&gt;</a></p>
</div>
</dd>
</dl>
   </li>
   <li class=" noPic" title='写自我评价很简单，一看就会！'>
<h2><a href="http://www.597.com/guide/detail-52789.html" target='_blank'>写自我评价很简单，一看就会！</a></h2>
<dl>
<dt><a><img src="" /></a></dt>
<dd>
<div class="txt">
写自我评价的核心是：用最少的语言，突现出你最“牛”的地方。　　　语言简练，弃用套话　　简历模板设置的自我评价字数上限是500字，折合下来是5-10句话左右。而这不到10句话，如果你都用来写“性格开朗”...
</div>
<div class="bot">
<p class="time"><i class="jpFntWes">&#xf017;</i><span>2015-08-18</span></p>
<div class="share"><a href="javascript:void(0);" class="sina" id="shareSina" title="分享至新浪微博"></a><a href="javascript:void(0);" class="txweibo" id="shareTengXun" title="分享至腾讯微博"></a><a href="javascript:void(0);" class="qzone" id="shareQQ" title="分享至QQ空间"></a><a href="javascript:void(0);" class="renren" id="shareRenRen" title="分享至人人网"></a></div>
<p class="rTo"><a href="http://www.597.com/guide/detail-52789.html" target='_blank'>查看详情&gt;&gt;</a></p>
</div>
</dd>
</dl>
   </li>
   <li class=" noPic" title='[面试]这些信号代表面试失败？那可不一定'>
<h2><a href="http://www.597.com/guide/detail-52788.html" target='_blank'>[面试]这些信号代表面试失败？那可不一定</a></h2>
<dl>
<dt><a><img src="" /></a></dt>
<dd>
<div class="txt">
　我们在面试时，时常会遇到一些情况，让我们觉得这个面试大概没戏了。其实并不一定哦！&nbsp;情况一：回去等通知，XX天后再联系你&nbsp;　　网友“Imgood”：感觉一般面试完HR如果说回去等通...
</div>
<div class="bot">
<p class="time"><i class="jpFntWes">&#xf017;</i><span>2015-08-18</span></p>
<div class="share"><a href="javascript:void(0);" class="sina" id="shareSina" title="分享至新浪微博"></a><a href="javascript:void(0);" class="txweibo" id="shareTengXun" title="分享至腾讯微博"></a><a href="javascript:void(0);" class="qzone" id="shareQQ" title="分享至QQ空间"></a><a href="javascript:void(0);" class="renren" id="shareRenRen" title="分享至人人网"></a></div>
<p class="rTo"><a href="http://www.597.com/guide/detail-52788.html" target='_blank'>查看详情&gt;&gt;</a></p>
</div>
</dd>
</dl>
   </li>
   <li class=" noPic" title='别只简单涨工资 给员工加薪有18种方式'>
<h2><a href="http://www.597.com/guide/detail-52785.html" target='_blank'>别只简单涨工资 给员工加薪有18种方式</a></h2>
<dl>
<dt><a><img src="" /></a></dt>
<dd>
<div class="txt">
一、固定加薪法 &nbsp;1、加薪方式：年末或年初，根据公司经营状况及员工综合表现，按比率，预算为员工增加固定收入；利:员工有一定安全感弊端：平衡难度大，企业用工成本高，缺乏激励性，员工收入增长缓慢...
</div>
<div class="bot">
<p class="time"><i class="jpFntWes">&#xf017;</i><span>2015-08-18</span></p>
<div class="share"><a href="javascript:void(0);" class="sina" id="shareSina" title="分享至新浪微博"></a><a href="javascript:void(0);" class="txweibo" id="shareTengXun" title="分享至腾讯微博"></a><a href="javascript:void(0);" class="qzone" id="shareQQ" title="分享至QQ空间"></a><a href="javascript:void(0);" class="renren" id="shareRenRen" title="分享至人人网"></a></div>
<p class="rTo"><a href="http://www.597.com/guide/detail-52785.html" target='_blank'>查看详情&gt;&gt;</a></p>
</div>
</dd>
</dl>
   </li>
   <li class=" noPic" title='职场须知：了解上司的处境到底有多重要'>
<h2><a href="http://www.597.com/guide/detail-52782.html" target='_blank'>职场须知：了解上司的处境到底有多重要</a></h2>
<dl>
<dt><a><img src="" /></a></dt>
<dd>
<div class="txt">
职场须知：了解上司的处境到底有多重要情境：就在我辅导的一家成长型互联网企业里，发生了这样一个事件：公司新入职了一位业务总监，在业界口碑非常好，据说是非常有能力的人，业务员小乔对能够跟随这样一位有能力的...
</div>
<div class="bot">
<p class="time"><i class="jpFntWes">&#xf017;</i><span>2015-08-17</span></p>
<div class="share"><a href="javascript:void(0);" class="sina" id="shareSina" title="分享至新浪微博"></a><a href="javascript:void(0);" class="txweibo" id="shareTengXun" title="分享至腾讯微博"></a><a href="javascript:void(0);" class="qzone" id="shareQQ" title="分享至QQ空间"></a><a href="javascript:void(0);" class="renren" id="shareRenRen" title="分享至人人网"></a></div>
<p class="rTo"><a href="http://www.597.com/guide/detail-52782.html" target='_blank'>查看详情&gt;&gt;</a></p>
</div>
</dd>
</dl>
   </li>
   <li class=" noPic" title='国庆放假不误求职 网上找工作免去奔波之苦'>
<h2><a href="http://www.597.com/guide/detail-52781.html" target='_blank'>国庆放假不误求职 网上找工作免去奔波之苦</a></h2>
<dl>
<dt><a><img src="" /></a></dt>
<dd>
<div class="txt">
这个国庆大假，上网看看有什么好工作。记者昨日获悉，虽然成都不少人力资源市场的现场招聘会都宣布“休息”了，但各大网上招聘会却开展得热火朝天。对于利用国庆7天大假找工作的人们来说，上网求职正当时。但有关人...
</div>
<div class="bot">
<p class="time"><i class="jpFntWes">&#xf017;</i><span>2015-08-17</span></p>
<div class="share"><a href="javascript:void(0);" class="sina" id="shareSina" title="分享至新浪微博"></a><a href="javascript:void(0);" class="txweibo" id="shareTengXun" title="分享至腾讯微博"></a><a href="javascript:void(0);" class="qzone" id="shareQQ" title="分享至QQ空间"></a><a href="javascript:void(0);" class="renren" id="shareRenRen" title="分享至人人网"></a></div>
<p class="rTo"><a href="http://www.597.com/guide/detail-52781.html" target='_blank'>查看详情&gt;&gt;</a></p>
</div>
</dd>
</dl>
   </li>
   <li class=" noPic" title='包装：简历如同嫁女儿'>
<h2><a href="http://www.597.com/guide/detail-52780.html" target='_blank'>包装：简历如同嫁女儿</a></h2>
<dl>
<dt><a><img src="" /></a></dt>
<dd>
<div class="txt">
一般人在路上看到新娘子，总是忍不住停下来想去看看她的脸，但却通常会忽略了伴娘的长相。这就是包装的重要性。　　田师兄让我把简历做厚，实际上也是提醒我注意对简历的包装，用今日的企业术语来说，就是提供差异化...
</div>
<div class="bot">
<p class="time"><i class="jpFntWes">&#xf017;</i><span>2015-08-17</span></p>
<div class="share"><a href="javascript:void(0);" class="sina" id="shareSina" title="分享至新浪微博"></a><a href="javascript:void(0);" class="txweibo" id="shareTengXun" title="分享至腾讯微博"></a><a href="javascript:void(0);" class="qzone" id="shareQQ" title="分享至QQ空间"></a><a href="javascript:void(0);" class="renren" id="shareRenRen" title="分享至人人网"></a></div>
<p class="rTo"><a href="http://www.597.com/guide/detail-52780.html" target='_blank'>查看详情&gt;&gt;</a></p>
</div>
</dd>
</dl>
   </li>
   <li class=" noPic" title='面试时向面试官提问的智慧'>
<h2><a href="http://www.597.com/guide/detail-52779.html" target='_blank'>面试时向面试官提问的智慧</a></h2>
<dl>
<dt><a><img src="" /></a></dt>
<dd>
<div class="txt">
很多应聘者成功闯过初试、复试，最后却败在了面试上，究其原因，可能跟自己的谈吐有很大的关系，也就是说，在面试时，哪些问题不能问，哪些问题可以问，哪些问题可以深究，哪些问题应浅问辄止。　　面试时，谈到最后...
</div>
<div class="bot">
<p class="time"><i class="jpFntWes">&#xf017;</i><span>2015-08-17</span></p>
<div class="share"><a href="javascript:void(0);" class="sina" id="shareSina" title="分享至新浪微博"></a><a href="javascript:void(0);" class="txweibo" id="shareTengXun" title="分享至腾讯微博"></a><a href="javascript:void(0);" class="qzone" id="shareQQ" title="分享至QQ空间"></a><a href="javascript:void(0);" class="renren" id="shareRenRen" title="分享至人人网"></a></div>
<p class="rTo"><a href="http://www.597.com/guide/detail-52779.html" target='_blank'>查看详情&gt;&gt;</a></p>
</div>
</dd>
</dl>
   </li>
   <li class=" noPic" title='HR案例：“水泥+鼠标”的薪酬体系'>
<h2><a href="http://www.597.com/guide/detail-52776.html" target='_blank'>HR案例：“水泥+鼠标”的薪酬体系</a></h2>
<dl>
<dt><a><img src="" /></a></dt>
<dd>
<div class="txt">
【案例】公司里的招聘模块是由我负责的，近来我遇到了一个小麻烦：要给公司的一个项目团队招人员进来，这个项目属于热门行业，人才比较抢手，我所找到的符合条件的简历，10份有9份的工资要求是超出薪资范围上限的...
</div>
<div class="bot">
<p class="time"><i class="jpFntWes">&#xf017;</i><span>2015-08-17</span></p>
<div class="share"><a href="javascript:void(0);" class="sina" id="shareSina" title="分享至新浪微博"></a><a href="javascript:void(0);" class="txweibo" id="shareTengXun" title="分享至腾讯微博"></a><a href="javascript:void(0);" class="qzone" id="shareQQ" title="分享至QQ空间"></a><a href="javascript:void(0);" class="renren" id="shareRenRen" title="分享至人人网"></a></div>
<p class="rTo"><a href="http://www.597.com/guide/detail-52776.html" target='_blank'>查看详情&gt;&gt;</a></p>
</div>
</dd>
</dl>
   </li>
   </ul>
<div class="page"><span class="now">上一页</span><span class="">1</span>
<a  href="/guide/?page=2">2</a>
<a  href="/guide/?page=3">3</a>
<a  href="/guide/?page=4">4</a>
<a  href="/guide/?page=5">5</a>
<a  href="/guide/?page=6">6</a>
<a  href="/guide/?page=7">7</a>
<a  href="/guide/?page=8">8</a>
<a  href="/guide/?page=9">9</a>
<a  href="/guide/?page=2">下一页</a></div>
</div>
</div>
</div>
<div class="right">
<div class="rightPart">
                <div class="classify">
<div class="hd">分类浏览</div>
<div class="bd">
<ul>
<li><a href="http://www.597.com/guide/list-10.html">简历指导</a></li>
<li><a href="http://www.597.com/guide/list-11.html">面试技巧</a></li>
<li><a href="http://www.597.com/guide/list-8.html">求职实录</a></li>
<li><a href="http://www.597.com/guide/list-7.html">职场眺望</a></li>
<li><a href="http://www.597.com/guide/list-16.html">薪酬福利</a></li>
</ul>
<div class="clear"></div>
</div>
</div>
                <div class="rec">
<div class="hd">推荐阅读</div>
<div class="bd">
<ul>
                                  <li><a href="http://www.597.com/guide/detail-52791.html" target='_blank'>人人羡慕的&quot;职场幸运儿&quot;，是有秘密武器的！</a></li>
                                  <li><a href="http://www.597.com/guide/detail-52790.html" target='_blank'>专家支招女生求职:要发挥细致耐心等职场优势</a></li>
                                  <li><a href="http://www.597.com/guide/detail-52785.html" target='_blank'>别只简单涨工资 给员工加薪有18种方式</a></li>
                                  <li><a href="http://www.597.com/guide/detail-52783.html" target='_blank'>以招聘员工为例，教你如何利用MESOs化解谈判压力</a></li>
                                  <li><a href="http://www.597.com/guide/detail-52782.html" target='_blank'>职场须知：了解上司的处境到底有多重要</a></li>
                                  <li><a href="http://www.597.com/guide/detail-52781.html" target='_blank'>国庆放假不误求职 网上找工作免去奔波之苦</a></li>
                                  <li><a href="http://www.597.com/guide/detail-52777.html" target='_blank'>四个维度做好招聘工作的绩效评价</a></li>
                                  <li><a href="http://www.597.com/guide/detail-52775.html" target='_blank'>扎克伯格招聘原则：只要那些我愿意为他工作的人</a></li>
                                  <li><a href="http://www.597.com/guide/detail-52770.html" target='_blank'>大学生如何避免盲目面试</a></li>
                                  <li><a href="http://www.597.com/guide/detail-52767.html" target='_blank'>[薪酬]四种作死的加薪理由，千万别用！</a></li>
                                  <li><a href="http://www.597.com/guide/detail-52766.html" target='_blank'>人 生活时代 人力资源管理的10种方式</a></li>
                                  <li><a href="http://www.597.com/guide/detail-52765.html" target='_blank'>如何听懂招聘面试官的话中话</a></li>
                                  <li><a href="http://www.597.com/guide/detail-52764.html" target='_blank'>应届生应该勇敢对公司上司say NO</a></li>
                                  <li><a href="http://www.597.com/guide/detail-52762.html" target='_blank'>如何做一份好简历——好简历=目标+优势+细节</a></li>
                                  <li><a href="http://www.597.com/guide/detail-52761.html" target='_blank'>2015年三支一扶面试技巧：面试考场术语使用技巧</a></li>
                            </ul>
</div>
</div>
</div>
</div>
<div class="clear"></div>
</div>
</div>
<footer>
<footer>
	<div class="footerNav">
		<a target="_blank" href="/about/about.html">关于我们</a>
		|
		<a target="_blank" href="/about/statement.html">网站声明</a>
		|
		
		<a target="_blank" href="/about/service.html">招聘服务</a>
		<!-- |
		<a target="_blank" href="#">帮助中心</a>
		|
		<a target="_blank" href="#">诚聘英才</a> -->
		|
		<a target="_blank" href="/about/friend.html">友情链接</a>
		|		
		<a target="_blank" href="/about/adprice.html">广告发布</a>
		|
		<a target="_blank" href="/about/contact.html">联系我们</a>
		|
		<a target="_blank" href="/about/price.html">收费标准</a>		
	</div>
	<div class="copyright">
		<p>&copy;2015&nbsp;597人才网&nbsp;版权所有</p>
	</div>
</footer>
<!-- <section class="floatRT">
<a href="/about/message" target="_blank" class="serviceLink">我有问题要反馈</a> <b></b>
</section> -->
<a href="/about/indexfeed.html" id="fankui" target="_blank">意见<br>反馈</a>
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
</footer>
<script type="text/javascript">
$(document).ready(function(){
jpjs.use('tools.cookie',function(cookie, $){
var _cityDomain = cookie.get('_cityDomain');
if(_cityDomain){
cityUrl = 'http://'+_cityDomain+'.597.com';
$('#guideCity').attr('href',cityUrl);
}
});

$('#lst').find('li').hover(function(){
$(this).addClass('hov');
},function(){
$(this).removeClass('hov');
});
});

$(document).ready(function(){
function createTips(){
  		var strArray = ['赶紧推荐给您的朋友阅读吧。', '分享一下，推荐阅读。'];
  		return  strArray[Math.round(Math.random())];
}
 //分享到新浪微博
 $('#lst .sina').click(function()
 {
 var tip =  createTips(),
 	acttitle = $(this).closest('li').attr('title'),
 	info = '【这篇文章还不错】' + '“'+ acttitle + '”'+ '（来自597.com  职场指南)，'
  var href = 'http://service.weibo.com/share/share.php?title=' + encodeURIComponent(info + tip) + '&url=' + encodeURIComponent(window.location.href) + '&source=bookmark';
 $(this).attr({ target: '_blank', href: href });
 });
 //腾讯微博
 $('#lst .txweibo').click(function()
 {
 var tip =  createTips(),
 acttitle = $(this).closest('li').attr('title'),
 	 info = '【这篇文章还不错】' + '“'+ acttitle + '”'+ '（来自597.com  职场指南)，'
 var href = 'http://v.t.qq.com/share/share.php?title=' + encodeURIComponent(info + tip) + '&url=' + encodeURIComponent(window.location.href);
 $(this).attr({ target: '_blank', href: href });
 });
 //QQ空间
 $('#lst .qzone').click(function()
 {
 var tip =  createTips(),
 acttitle = $(this).closest('li').attr('title'),
 	 info = '【这篇文章还不错】' + '“'+ acttitle + '”'+ '（来自597.com  职场指南)，'
 var href = 'http://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_onekey?title=' + encodeURIComponent(info + tip) + '&summary=' + encodeURIComponent(info + tip) + '&url=' + encodeURIComponent(window.location.href);
 $(this).attr({ target: '_blank', href: href });
 });
 //人人网 
 $('#lst .renren').click(function()
 {
 var tip =  createTips(),
 acttitle = $(this).closest('li').attr('title'),
 	 info = '【这篇文章还不错】' + '“'+ acttitle + '”'+ '（来自597.com  职场指南)，'
 var href = 'http://share.renren.com/share/buttonshare.do?link=' + encodeURIComponent(window.location.href) + '&title==' + encodeURIComponent(info + tip);
 $(this).attr({ target: '_blank', href: href });
 });
});

</script>
</body>
</html>
