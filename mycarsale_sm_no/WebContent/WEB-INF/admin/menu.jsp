<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!-- java脚本，抓的是项目名 -->
<%
String path = request.getContextPath();
%>


</script>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'menu.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="<%=path %>/css/base.css" type="text/css" />
	<style type="text/css">
	    div {
			padding:0px;
			margin:0px;
		}
		
		body {
		 scrollbar-base-color:#bae87c;
		 scrollbar-arrow-color:#FFFFFF;
		 scrollbar-shadow-color:#c1ea8b;
		 padding:0px;
		 margin:auto;
		 text-align:center;
		 background-color:#9ad075;
		}
		
		dl.bitem {
			width:148px;
			margin:0px 0px 5px 4px;
		}
		
		dl.bitem dt {
		  background:url(<%=path %>/images/menubg.gif);
		  height:26px;
		  line-height:26px;
		  text-align:center;
		  cursor:pointer;
		}
		
		dl.bitem dd {
		  padding:3px 3px 3px 3px;
		  background-color:#fff;
		}
		
		.fllct
		{
			float:left;
			
			width:90px;
		}
		
		.flrct
		{
			padding-top:3px;
			float:left;
		}
		
		div.items
		{
			line-height:22px;
			background:url(<%=path %>/images/arr4.gif) no-repeat 10px 9px;
		}
		
		span.items
		{
			padding:10px 0px 10px 22px;
			background:url(<%=path %>/images/arr4.gif) no-repeat 10px 12px;
		}
		
		ul {
		  padding-top:3px;
		}
		
		li {
		  height:22px;
		}
		
		.sitemu li {
			padding:0px 0px 0px 22px;
			line-height:24px;
			background:url(<%=path %>/images/arr4.gif) no-repeat 10px 9px;
		}
	</style>
	<script language='javascript'>var curopenItem = '1';</script>
	<script language="javascript" type="text/javascript" src="<%=path %>/js/menu.js"></script>
	<base target="main" />
  </head>
  
  <body >
	<table width='99%' height="100%" border='0' cellspacing='0' cellpadding='0'>
	  <tr>
	    <td style='padding-left:3px;padding-top:8px' valign="top">
		  <!-- 1 -->
	      <dl class='bitem'>
	        <dt onClick='showHide("items1_1")'><b>基本操作</b></dt>
	        <dd style='display:block' class='sitem' id='items1_1'>
	          <ul class='sitemu'>
	          <!-- 项目当与mycarsale_sm_no项目名 -->
	            <li><a href='#' target='main'>系统属性</a> </li>
	            <li><a href='<%=path %>/user/updatepasssuccess.action' target='main'>密码修改</a> </li>
	            <li><a href='<%=path %>/user/managerview.action' target='main'>管理员维护</a> </li>
	          </ul>
	        </dd>
	      </dl>
	      <!-- 1 -->
	      <dl class='bitem'>
	        <dt onClick='showHide("items5_1")'><b>车辆管理</b></dt>
	        <dd style='display:block' class='sitem' id='items5_1'>
	          <ul class='sitemu'>
	             <li><a href='<%=path %>/type/CarTypeShowview.action' target='main'>车系列管理</a> </li>
	             <li><a href='<%=path %>/brand/CarBrandShowview.action' target='main'>车品牌管理</a> </li>
	             <li><a href='<%=path %>/car/CarGoodsView.action' target='main'>车辆管理</a> </li>
	          </ul>
	        </dd>
	      </dl>
	      <!-- 1 -->
	      <dl class='bitem'>
	        <dt onClick='showHide("items6_1")'><b>订单管理</b></dt>
	        <dd style='display:block' class='sitem' id='items6_1'>
	          <ul class='sitemu'>
	             <li><a href='<%=path %>/userMana.action' target='main'>会员管理</a> </li>
	             <li><a href='<%=path %>/orderMana.action' target='main'>订单管理</a> </li>
	          </ul>
	        </dd>
	      </dl>
	      <!-- 1 -->
	      <!-- 1 -->
	      <dl class='bitem'>
	        <dt onClick='showHide("items6_1")'><b>财务管理</b></dt>
	        <dd style='display:block' class='sitem' id='items6_1'>
	          <ul class='sitemu'>
	             <li><a href='<%=path %>/goodsKucun.action' target='main'>库存管理</a> </li>
	             <li><a href='<%=path %>/caiwuMana.action' target='main'>财务统计</a> </li>
	          </ul>
	        </dd>
	      </dl>
	      <!-- 1 -->
	      <!-- 1 -->
	      <dl class='bitem'>
	        <dt onClick='showHide("items3_1")'><b>其他管理</b></dt>
	        <dd style='display:block' class='sitem' id='items3_1'>
	          <ul class='sitemu'>
	            <li><a href='<%=path %>/liuyanMana.action' target='main'>留言版管理</a> </li>
	            <li><a href='<%=path %>/gonggaoMana.action' target='main'>公告管理</a> </li>
	        </dd>
	      </dl>
	      <!-- 1 -->
		</td>
	  </tr>
	</table>
  </body>
</html>
