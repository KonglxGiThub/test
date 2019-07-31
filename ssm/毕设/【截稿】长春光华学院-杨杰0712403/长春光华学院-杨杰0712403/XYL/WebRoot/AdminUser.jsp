<%@ page language="java" import="java.util.*,com.bs.xyl.bean.*" pageEncoding="UTF-8"%>
<%
	Admin user=(Admin)session.getAttribute("UserBean");
	String name = user.getName();
	int role = user.getRole();
        %>
<!DOCTYPE HTML >
<html>
  	<head>
      <title>校友录管理系统</title> 
      <!--解决ie显示问题及Css3.0的支持-->
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
	  <script type="text/javascript" src="js/jquery-1.8.0.min.js"></script>  
	  <script type="text/javascript" src="js/jquery.easyui.min.js"></script>
	  <script type="text/javascript" src="js/jquery_extend.js"></script>
	  <!-- icons.css Css文件 -->
	   <link rel="stylesheet" href="themes/icon.css" type="text/css"></link>
	   <!-- 汉化easyui Js文件 -->
	  <script type="text/javascript" src="locale/easyui-lang-zh_CN.js"></script>
	   <!-- 日历插件 -->
  	  <script type="text/javascript" src="js/jquery.fullcalendar.js?v=0.7"></script>
	  <!-- 主题 Css文件 -->
	  <link id="easyuiTheme" rel="stylesheet" href="themes/metro-blue/easyui.css" type="text/css"></link>
	  <style type="text/css">
	  		body{ font-size:12px; font-family:'宋体';}
			.west{ width:195px; background-color:# F5F5F5; height:26px; }
			.center{ height:26px;}
			.panel-title{ line-height: 18px;color:#000;}
			.easyui-accordion .panel-title{ line-height: 18px;color:#153B66;}
			.messager .panel-title{ line-height: 18px;color:#153B66;}
			.panel-icon{ left: 5px;}
			.panel-header{ height:18px;}
			.tree-title{ color:#000;height:30px;line-height: 30px; }
			.tree-node{height: 26px;}
			.tree-node-proxy{ line-height: 26px;}
			.tree-expanded,.tree-collapsed,.tree-folder,.tree-file,.tree-checkbox,.tree-indent{ position:relative;margin-top:4px; }
			.panel.window .panel-title{ line-height: 18px;color:#000;}
			.tabs{height:26px;}
			.tabs-wrap{ padding-left:8px;}
			.welcome{ text-align:right;position:relative;margin-top:20px;padding-right:20px;top:30px;left:-150px; }
			.quit{position:relative;text-align:right;left:-90px;top:10px; }
			.table77{ position:relative; padding:10 10; top:10px;line-height:30px;left:30px;}
			#user_id_combo span .combo-arrow{ position:relative;top:4px; }
			.word{position:relative;float:left;left:50px;}
			.man-ok {
			  background: url('themes/metro-blue/images/menu.png') no-repeat -195px -125px;
			}
			.man-ok2 {
			  background: url('themes/metro-blue/images/menu.png') no-repeat -35px -95px;
			}
	  </style>
	  <script type="text/javascript">
	  $(function(){
	  $('#Earea').tree({
		  	line:true,
		  	data:[{
		  		   id:1,
		  		   text: '账号管理',
		  		   iconCls:'man-ok',
		  		   state: 'closed',
                   children: [{
                   id:5,
		  		   text: '管理员账号管理',
		  		   iconCls:'man-ok2',
		  		   attributes : {
                        url :'pages/adminPage/SysUsers.jsp',
                    }
		  		   },{
                   id:6,
		  		   text: '注册用户管理',
		  		   iconCls:'man-ok2',
		  		   attributes : {
                        url :'pages/adminPage/StuUsers.jsp',
                    }
		  		   }],
		  			},{
		  		   id:3,
		  		   text: '班级管理',
		  		   iconCls:'man-ok',
		  		   attributes : {
                        url :'pages/adminPage/SysClasses.jsp'
                    }
		  			},{
		  		   id:4,
		  		   text: '网站信息管理',
		  		   iconCls:'man-ok',
		  		   state: 'opened',
                   children: [{
                   id:7,
		  		   text: '系统新闻管理',
		  		   iconCls:'man-ok2',
		  		   attributes : {
                        url :'pages/adminPage/SysNews.jsp',
                    }
		  		   },{
                   id:8,
		  		   text: '留言板消息维护',
		  		   iconCls:'man-ok2',
		  		   attributes : {
                        url :'pages/adminPage/SysMessage.jsp',
                    }
		  		   },{
                   id:9,
		  		   text: '登录日志维护',
		  		   iconCls:'man-ok2',
		  		   attributes : {
                        url :'pages/adminPage/SysLog.jsp',
                    }
		  		   }]
		  			}],
			//在右边center区域打开菜单，新增tab
            onClick : function (node) {
	            if (node.attributes) {
	                Open(node.text, node.attributes.url);
	                $.messager.show({  	
					  title:'消息提示', 	
					  msg:'欢迎进入'+node.text,  	
					  timeout:3000,  	
					  showType:'slide'  
					});  
	            }    
			}	   	
		  });
		 })
		  /**
	  *增加面板方法
	  */ 
		 function Open(text, url) {
	        if ($("#tabs").tabs('exists', text)) 
	        {
	            $('#tabs').tabs('select', text);
	            var tab = $('#tabs').tabs('getSelected');  
	            tab.panel('refresh',url);  
	        } else {
	            $('#tabs').tabs('add', {
	                title : text,
	                closable : true,
	                content : text
	                
	            			});
	            $('#tabs').tabs('select', text);
	            var tab = $('#tabs').tabs('getSelected');  
	            tab.panel('refresh',url);
	        		}
	    }
	    //绑定tabs的右键菜单
	    $("#tabs").tabs({
	        onContextMenu : function (e, title) {
	            e.preventDefault();
	            $('#tabsMenu1').menu('show', {
	                left : e.pageX,
	                top : e.pageY
	            }).data("tabTitle", title);
	        }
	    });
	    
	    //实例化menu的onClick事件
	    $("#tabsMenu1").menu({
	        onClick : function (item) {
	            CloseTab(this, item.name);
	        }
	    });
	    
	    //几个关闭事件的实现
	    function CloseTab(menu, type) {
	        var curTabTitle = $(menu).data("tabTitle");
	        var tabs = $("#tabs");
	        
	        if (type === "close") {
	            tabs.tabs("close", curTabTitle);
	            return;
	        }
	        
	        var allTabs = tabs.tabs("tabs");
	        var closeTabsTitle = [];
	        
	        $.each(allTabs, function () {
	            var opt = $(this).panel("options");
	            if (opt.closable && opt.title != curTabTitle && type === "Other") {
	                closeTabsTitle.push(opt.title);
	            } else if (opt.closable && type === "All") {
	                closeTabsTitle.push(opt.title);
	            }
	        });
	        
	        for (var i = 0; i < closeTabsTitle.length; i++) {
	            tabs.tabs("close", closeTabsTitle[i]);
	        }
	    }
	
	  </script>
	</head>
	<body class="easyui-layout" style="height:100%">
   		<div data-options="region:'north'" style="height:90px;width:100%;" >
   			<div class="word">
	   		</div>
   			<div class="welcome">
				【<%=name %>】  欢迎您！角色：超级管理员&nbsp;&nbsp;
			</div>
			<div class="quit">
				<a id="btn" href="index.jsp" target="_self"  class="easyui-linkbutton" data-options="plain:true,text:'退出登录'">退出登录</a>
			</div>
			</div>
		<!-- 底部版权信息 -->
		<div data-options="region:'south',split:false" style="height:50px;">
			<center><h4>版权所有：长春光华学院	</h4></center>
		</div>
		<div data-options="region:'west',split:false,border:true,title:'系统功能',iconCls:'icon-View'" class="west" id="westRegion" >
		<!-- 左边面板 -->
			<div id="aa" class="easyui-accordion" data-options="fit:true" >   
			        <ul id="Earea"></ul>  
			         
			</div>    
		</div>
		<!-- 中间面板 -->
		<div data-options="region:'center',border:true" class="center" id="centerRegion">
			<div class="easyui-tabs" fit="true" border="false" id="tabs" height="26px" >
		      <div title="首页" iconCls="icon-Flag" fit="true">
		      	<div class="easyui-layout" fit="true">
			        <div region="center">
			            <div class="easyui-fullCalendar" fit="true"></div>
			        </div>
			    </div>
		      </div>
		      <div id="tabsMenu1" class="easyui-menu" style="width:120px;">  
			    <div name="close">关闭</div>  
			    <div name="Other">关闭其他</div>  
			    <div name="All">关闭所有</div>
			  </div>  
		 </div>	
		</div>
  	</body>
</html>