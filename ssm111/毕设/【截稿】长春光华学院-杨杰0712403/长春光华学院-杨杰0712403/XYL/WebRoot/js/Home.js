var System_users_id;
/**
	  * 换肤功能
	  */
	  	function changeTheme(themeName) {
			var $easyuiTheme = $('#easyuiTheme');
			var url = $easyuiTheme.attr('href');
			var href = url.substring(0, url.indexOf('themes')) + 'themes/' + themeName + '/easyui.css';
			$easyuiTheme.attr('href', href);
		
			var $iframe = $('iframe');
			if ($iframe.length > 0) {
				for ( var i = 0; i < $iframe.length; i++) {
					var ifr = $iframe[i];
					$(ifr).contents().find('#easyuiTheme').attr('href', href);
				}
			}
		
			$.cookie('easyuiThemeName', themeName, {
				expires : 7
			});
		};	
	  /**
	  *动态树
	  */
	  $(function(){
	  	$('#employee').tree({   
		    data:[{
		  		   id:8,
		  		   text: '员工信息',
		  		   attributes : {
                        url :'Employee.jsp'
                   }
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
		  $('#client').tree({
		  	data:[{
		  		   id:9,
		  		   text: '客户信息',
		  		   attributes : {
                        url :'Client.jsp'
                   }
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
		  $('#Earea').tree({
		  	line:true,
		  	data:[{
		  		   id:1,
		  		   text: '最新发布',
		  		   attributes : {
                        url :'NewPublish.jsp'
                    }
		  			},{
		  			id:2,
			  		text:'处理业务',
			  		attributes : {
                        url :'ProcessingService.jsp'
                    }
			  		},{
			  		id:3,
			  		text:'查看历史',
			  		attributes : {
                        url :'PastRecords.jsp'
                    }								  				
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
		  $('#amaldar').tree({
		  	line:true,
		  	data:[{
		  			id:4,
		  			text: '管理发布',
		  			attributes : {
                        url :'ManagerNewPublish.jsp'
                    }
		  			},{
		  			id:5,
			  		text:'查看任务',
			  		attributes : {
                        url :'ExamineTask.jsp'
                    }
			  		},{
			  		id:6,
			  		text:'管理档案',
			  		attributes : {
                        url :'FileManagement.jsp'
                    }
			  		},{
			  		id:7,
			  		text:'客户服务统计',
			  		attributes : {
                        url :'CManage.jsp'
                    }								  				
				  	}],
			//在右边center区域打开菜单，新增tab
            onClick : function (node) {
	            if (node.attributes) {
	                Open(node.text, node.attributes.url)
	                $.messager.show({  	
					  title:'消息提示',  	
					  msg:'欢迎进入'+node.text,  	
					  timeout:3000,  	
					  showType:'slide'  
					});  
	            }    
			}	  	  
				  	
		  });
		  
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
	            $('#tabsMenu').menu('show', {
	                left : e.pageX,
	                top : e.pageY
	            }).data("tabTitle", title);
	        }
	    });
	    
	    //实例化menu的onClick事件
	    $("#tabsMenu").menu({
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
	  /**
	  *管理页面--数据表格
	  */ 
		$('#dg').datagrid({  
		    url:'Select', 
		    fit:true,
		    fitColumns:true, 
		    singleSelect:false,
			autoRowHeight:false,
			pagination:true,
			pageSize:10,
			toolbar:'#toolbar',
		    columns:[[ 
		    	{field:'ck',checkbox:true,width:20},
		        {field:'id',title:'id',width:20},  
		        {field:'name',title:'name',width:20},  
		        {field:'age',title:'age',width:20},
		        {field:'gender',title:'gender',width:20,align:'right'}, 
		        {field:'major',title:'major',width:20,align:'right',},
		        {field:'操作',title:'major',width:20,align:'right',formatter:function(value,rowData,rowIndex){
				var pkV = rowData.evtrenewaid;
				var parentId = rowData.evtrenewacode;
				var opertorString='';
				// 判断是否使用编辑
				opertorString="<img style=\"cursor:pointer;\" title=\"编辑\" sytle=\"cursor:pointer;\" src=\"themes/icons/pencil.png\" onclick=\"openWinEditEventSequel('"+pkV+"','"+parentId+"');\"/>&nbsp;&nbsp;&nbsp;&nbsp;";
				//判断是否使用查看
				opertorString=opertorString+"<img style=\"cursor:pointer;\" title=\"查看详情\" sytle=\"cursor:pointer;\" src=\"themes/icons/print.png\" onclick=\"openWinViewEventSequel('"+pkV+"','"+parentId+"');\"/>&nbsp;&nbsp;&nbsp;&nbsp;";
				//删除列
				opertorString=opertorString+"<img style=\"cursor:pointer;\" title=\"删除\" sytle=\"cursor:pointer;\" src=\"themes/icons/no.png\" onclick=\"delEventSequel('"+pkV+"');\"/>&nbsp;&nbsp;&nbsp;&nbsp;";
				return opertorString;
			}
		        }
		        
		         ]] 
		          
		          
		            
			});  
	  	
			
			$('#calendar').calendar({
			current : new Date(),
			onSelect : function(date) {
				$(this).calendar('moveTo', new Date());
			}
			});
		  
	  })
	  
	  /* autoMail 自动邮箱输入 Start */
       		$(document).ready(function(){
				$('#email').autoMail({
					emails:['qq.com','163.com','126.com','sina.com','sohu.com','yahoo.cn','gmail.com','hotmail.com','live.cn']
				});
			});
      /* autoMail 自动邮箱输入 End */
      
      /* id="user_id_auto" 系统用户异步查询combox Start */
		$(function(){
			$('#user_id_auto').combobox({
					url : 'EmployeeSelect?id=3',
					textField : 'text',
					valueField : 'id',
					delay : 500,
					required:false,
					panelHeight : 100,
					required:true,
					missingMessage:'请选择一个用户登录',
					editable:true				
				});
		})			
	/* id="user_id_auto" 系统用户异步查询combox End */
      
      /* 登录对话框 Start */
      	$(function(){
	  		$('#dlg77').dialog({
	  			title: '用户登录', 
				width: 350, 
				height: 200, 
				closed: false,
				closable:false, 
				cache: false,  
				modal: true,
				resizable:true,
				buttons:[{
				text:'登录',
				iconCls:'icon-ok',
				handler:function(){
					$('#fm77').form('submit', {  	
				   url: 'LoginServlet',	
				   onSubmit: function(){
				   		return $(this).form('validate');
				   },
				   success:function(data){
				   		var v=jQuery.parseJSON(data);
				   		if((v.password)==true){
							$.messager.show({  	
							  title:'登录成功',  	
							  msg:'欢迎您回来！',  	
							  timeout:2000,  	
							  showType:'slide',							    
							});
							$('#dlg77').dialog('close'); 
						}
				   		else if((v.password)==false){
				   			$.messager.show({  	
							  title:'登录失败',  	
							  msg:'用户名或者密码不匹配！',  	
							  timeout:2000,  	
							  showType:'slide',							    
							});
							$('#fm77').form('reset');
				   		}
				   		if((v.role)=='经理'){
				   			$(aa).accordion('remove','员工办公室');
				   		}
				   		if((v.role)=='员工'){
				   			$(aa).accordion('remove','经理办公室');
				   		}
						//alert(v.user_id+v.name);
						$('.welcome').html('【'+v.name+'】  欢迎您！');
						System_users_id=v.user_id;
				    }
				   });
					
						}
					}]
				
					
	  		});
	  		
	  	})
	  
	  /* 登录对话框 End */