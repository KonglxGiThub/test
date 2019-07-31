<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />
		
		<link href="<%=path %>/css/layout.css" type="text/css" rel="stylesheet" />
		
		<script language="JavaScript" src="<%=path %>/js/public.js" type="text/javascript"></script>
	    <script type="text/javascript">
           function down1(fujianPath,fujianYuashiMing)
           {
               <s:if test="#session.user==null">
	                  alert("请先登录");
	           </s:if>
	            
	           <s:else>
	               var url="<%=path %>/updown/updown.jsp?fujianPath="+fujianPath+"&fujianYuashiMing="+fujianYuashiMing;
			       url=encodeURI(url); 
	               url=encodeURI(url); 
	               window.open(url,"_self");
	           </s:else>
           }	    
	    </script>
	</head>

	<body>
		<jsp:include flush="true" page="/qiantai/inc/incTop.jsp"></jsp:include>
		<div class="page_row">
			<div class="page_main_msg left">		
		        <div class="left_row">
		            <div class="list pic_news">
		  	                <div class="list_bar">&nbsp;</div>
						  	<div class="ctitle ctitle1"><s:property value="#request.yinyue.name"/></div>
							<div class="ctitleinfo"><s:property value="#request.yinyue.shijian"/>&nbsp;&nbsp;&nbsp;</div>
							<div class="pbox">
							    <object id="player" height="400" width="650" classid="CLSID:6BF52A52-394A-11d3-B153-00C04F79FAA6">
									<param NAME="AutoStart" VALUE="-1">
									<!--是否自动播放-->
									<param NAME="Balance" VALUE="0">
									<!--调整左右声道平衡,同上面旧播放器代码-->
									<param name="enabled" value="-1">
									<!--播放器是否可人为控制-->
									<param NAME="EnableContextMenu" VALUE="-1">
									<!--是否启用上下文菜单-->
									<param NAME="url" VALUE="/zxyy/<s:property value="#request.yinyue.fujian"/>">
									<!--播放的文件地址-->
									<param NAME="PlayCount" VALUE="1">
									<!--播放次数控制,为整数-->
									<param name="rate" value="1">
									<!--播放速率控制,1为正常,允许小数,1.0-2.0-->
									<param name="currentPosition" value="0">
									<!--控件设置:当前位置-->
									<param name="currentMarker" value="0">
									<!--控件设置:当前标记-->
									<param name="defaultFrame" value="">
									<!--显示默认框架-->
									<param name="invokeURLs" value="0">
									<!--脚本命令设置:是否调用URL-->
									<param name="baseURL" value="">
									<!--脚本命令设置:被调用的URL-->
									<param name="stretchToFit" value="0">
									<!--是否按比例伸展-->
									<param name="volume" value="50">
									<!--默认声音大小0%-100%,50则为50%-->
									<param name="mute" value="0">
									<!--是否静音-->
									<param name="uiMode" value="mini">
									<!--播放器显示模式:Full显示全部;mini最简化;None不显示播放控制,只显示视频窗口;invisible全部不显示-->
									<param name="windowlessVideo" value="0">
									<!--如果是0可以允许全屏,否则只能在窗口中查看-->
									<param name="fullScreen" value="0">
									<!--开始播放是否自动全屏-->
									<param name="enableErrorDialogs" value="-1">
									<!--是否启用错误提示报告-->
									<param name="SAMIStyle" value>
									<!--SAMI样式-->
									<param name="SAMILang" value>
									<!--SAMI语言-->
									<param name="SAMIFilename" value>
									<!--字幕ID-->
								</object>
                            </div>
                            <div class="ctitleinfo">
                                 <a href="#" onclick="down1('<s:property value="#request.yinyue.fujian"/>','<s:property value="#request.yinyue.fujianYuanshiming"/>')" style="font-size: 11px;color: red">下载</a>
                            </div>
				            <div class="page_no">
				                <div class="pg-3">
				                </div>
				            </div>
							<div class="arti_ref">
				            </div>	
		             </div>
		         </div>	
	        </div>
			
			<!-- 右边的用户登录。留言。投票 -->
			<div class="page_other_msg right">
				<div class="left_row">
					<div class="list">
						<div class="list_bar">用户登录</div>
						<div class="list_content">
							<div id="div">
								<jsp:include flush="true" page="/qiantai/userlogin/userlogin.jsp"></jsp:include>
							</div>
						</div>
					</div>
				</div>
				<div class="left_row">
				    <div class="list">
				        <div class="list_bar">音乐排行榜</div>
				        <div class="list_content">
				            <div id="div"> 
								<s:action name="yinyuePaihang" executeResult="true" flush="true"></s:action>
					        </div>
					    </div>
				    </div>
				</div>
				<div class="left_row">
				    <div class="list">
				        <div class="list_bar">网站日历表</div>
				        <div class="list_content">
				            <jsp:include flush="true" page="/qiantai/rili/rili.jsp"></jsp:include>
					    </div>
				    </div>
			    </div>
			</div>
			<!-- 右边的用户登录。留言。投票 -->
		</div>
		
		<div class="foot">
		   <jsp:include flush="true" page="/qiantai/inc/incFoot.jsp"></jsp:include>
	    </div>
	</body>
</html>
