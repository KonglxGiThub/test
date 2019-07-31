<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML >
<html>
  	<head>
      <title>登录日志管理</title>  
  </head>
  
  <body >
  		<style type="text/css">
  			table th{ font-size:12px; }
  			.select{ width:155px;}
  			.table6{ position:relative; padding:20 20;width:560px; top:30px;line-height:25px;}
  			#dlg6 .combo-text{position:relative;top:-4px;}
  			.tableForm tr{ position:relative;line-height:25px;}
  			.tableForm6 tr th{ position:relative;text-align:right;}
  		</style>
  		<script type="text/javascript" charset="utf-8">
  			/* datagrid Start */
  			$('#user_table input').each(function () {
            if ($(this).attr('required') || $(this).attr('validType'))
                $(this).validatebox();
        	})
			var datagrid6;
			// $('#cc').combobox('reload');
			$(function() {
				datagrid6 = $('#datagrid6').datagrid({
					url : 'LogServlet',
					title : '日志管理',
					pagination : true,
					pagePosition : 'bottom',
					pageSize : 10,
					pageList : [ 10, 20, 30, 40 ],
					fit : true,
					fitColumns:true,
					striped:true,
					idField : 'id',
					singleSelect:false,
					sortName : 'id',
					sortOrder : 'desc',
					checkOnSelect : true,
					selectOnCheck : true,
					scrollbarSize:0,
					toolbar : [  '-', {
						text : '刷新',
						iconCls : 'icon-reload',
						handler : function() {
							$('#datagrid6').datagrid({ url:'LogServlet' }) ;
							$('#searchForm6').form('reset');
							$('#cc').combobox('reload');
						}
					}, '-'],
					columns : [ [
					{
						checkbox:true,
						width : 120,
					},{
						title : '编号',
						field : 'id',
						width : 125,
						align:'center'
					},{
						title : '时间',
						field : 'time',
						width : 125,
						align:'center'
					},{
						title : '日志内容',
						field : 'text',
						width : 125,
						align:'center'
					}
								 ] ]
								
							});

						});
			
			function saveEmployee5() {
				$('#fm6').form('submit', {
					url : url,
					onSubmit : function() {
						return $(this).form('validate');
					},
					success : function(result) {
						var result = eval('(' + result + ')');
						if (result.errorMsg) {
							$.messager.show({
								title : 'Error',
								msg : result.errorMsg
							});
						} else {
							$('#dlg6').dialog('close'); // 关闭dialog
							$('#datagrid6').datagrid({
							data:result
						 	}) ;
						 	$.messager.show({  	
							  title:'操作成功',  	
							  msg:'操作已成功',  	
							  timeout:1000,  	
							  showType:'slide'  
							});  
							$('#searchForm6').form('reset');  
						}
					}
				});
			}
			function EditEmployee5() {
				var row = $('#datagrid6').datagrid('getSelected');
				if (row) {
					$('#dlg6').dialog('open').dialog('setTitle', '日志管理  >>  编辑');
					$('#fm6').form('load', row);
					$('#dlg6').find('input').attr('disabled',false);
					$('#dlg6').find('input[name="state"]').attr('disabled',true);
					$('#dlg6').find('textarea').attr('disabled',false);
					$('#dlg6').find('#button1').show();
					$('#button2').html("<span class='l-btn-left'><span class='l-btn-text icon-cancel l-btn-icon-left'>取消</span></span>");
					url = 'UserEditServlet?id=' + row.id;
				}
			}
			
			function DeleteEmployee6(){ 
	         var ss = [];
			var rows = $('#datagrid6').datagrid('getSelections');
				var ro=""; 
				for(var i=0; i<rows.length; i++){
					var row = rows[i];
					ro+="'"+rows[i].id+"',";					
				} 
				ss.push('<span>'+'您确定要删除这些信息么？'+'</span>');
            var row = $('#datagrid6').datagrid('getSelected');  
            if (row){  
            	if(row.state=="0"){
            			alert('存在未处理的评论，请确认！！！！');
            			return;
           		 }
                $.messager.confirm('删除警告', ss.join('<br/>'),function(r){  
                    if (r){  
                        $.post('AdminDelMessageServlet',{id:ro},function(result){  
                         
                                $('#datagrid6').datagrid('reload') ;   // reload the user data  
                             
                        },'json');  
                    }  
                });  
            }  
        } 
			
			function CheckEmployee5Details() {
				var row = $('#datagrid6').datagrid('getSelected');
				if (row) {
					$('#dlg6').dialog('open').dialog('setTitle', '日志管理  >>  查看详情');
					$('#fm6').form('load', row);
					$('#dlg6').find('#button1').hide();	
					$('#dlg6').find('input').attr('disabled',true);
					$('#dlg6').find('textarea').attr('disabled',true);
					$('#button2').html("<span class='l-btn-left'><span class='l-btn-text icon-cancel l-btn-icon-left'>关闭</span></span>");
				}
			}
			
			/* pagerFilter(data) 分页 Start */
			function pagerFilter(data) {
				if (typeof data.length == 'number'
						&& typeof data.splice == 'function') { // is array
					data = {
						total : data.length,
						rows : data
					}
				}
				var dg = $(this);
				var opts = dg.datagrid('options');
				var pager = dg.datagrid('getPager');
				pager.pagination({
					onSelectPage : function(pageNum, pageSize) {
						opts.pageNumber = pageNum;
						opts.pageSize = pageSize;
						pager.pagination('refresh', {
							pageNumber : pageNum,
							pageSize : pageSize
						});
						dg.datagrid('loadData', data);
					}
				});
				if (!data.originalRows) {
					data.originalRows = (data.rows);
				}
				var start = (opts.pageNumber - 1) * parseInt(opts.pageSize);
				var end = start + parseInt(opts.pageSize);
				data.rows = (data.originalRows.slice(start, end));
				return data;
			}	
			$(function(){
				$('#datagrid6').datagrid({
					loadFilter : pagerFilter
				});
			})
			
			
			var url;
			function NewEmployee5() {
				$('#dlg6').dialog('open').dialog('setTitle', '日志管理  >>  新增');
				$('#fm6').form('clear');
				$('#dlg6').find('input').attr('disabled',false);
				$('#dlg6').find('input[id="time"]').attr('disabled',true);
				$('#dlg6').find('textarea').attr('disabled',false);
				$('#dlg6').find('#button1').show();
				$('#button2').html("<span class='l-btn-left'><span class='l-btn-text icon-cancel l-btn-icon-left'>取消</span></span>");
				url = 'UserAddServlet';
			}
		</script>
	<div class="easyui-layout" data-options="fit:true" style="position:absolute;">
		<div data-options="region:'center',border:false,title:''" style="overflow: hidden;">
			<table id="datagrid6"></table>
		</div>
	</div>
		
		
		
	</body>
</html>
