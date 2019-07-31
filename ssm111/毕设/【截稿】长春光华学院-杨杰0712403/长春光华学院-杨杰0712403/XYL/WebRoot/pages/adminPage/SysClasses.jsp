<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML >
<html>
  	<head>
      <title>班级管理</title>  
  </head>
  
  <body >
  		
  		<style type="text/css">
  			table th{ font-size:12px; }
  			.select{ width:155px;}
  			.table3{ position:relative; padding:20 20;width:560px; top:30px;line-height:25px;}
  			#dlg3 .combo-text{position:relative;top:-4px;}
  			.tableForm tr{ position:relative;line-height:25px;}
  			.tableForm6 tr th{ position:relative;text-align:right;}
  		</style>
  		<script type="text/javascript" charset="utf-8">
  			/* datagrid Start */
  			$('#user_table input').each(function () {
            if ($(this).attr('required') || $(this).attr('validType'))
                $(this).validatebox();
        	})
			var datagrid3;
			// $('#cc').combobox('reload');
			$(function() {
				datagrid3 = $('#datagrid3').datagrid({
					url : 'AdminViewClsServlet',
					title : '班级管理',
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
					toolbar : [ {
						text : '增加',
						iconCls : 'icon-add',
						handler : function() {
							NewEmployee3();
						}
					},'-', {
						text : '删除',
						iconCls : 'icon-remove',
						handler : function() {
							DeleteEmployee3();
						}
						},'-', {
						text : '刷新',
						iconCls : 'icon-reload',
						handler : function() {
							$('#datagrid3').datagrid({ url:'AdminViewClsServlet' }) ;
							$('#searchForm3').form('reset');
							$('#cc').combobox('reload');
						}
					}, '-'],
					columns : [ [
					{
						checkbox:true,
						width : 120,
					},{
						title : '年级',
						field : 'grade',
						width : 125,
						align:'center'
					},{
						title : '班级',
						field : 'name',
						width : 125,
						align:'center'
					},{
						title : '操作',
						field : 'operate',
						align:'center',
						width : 150,
						formatter:function(value,rowData,rowIndex){
				var pkV = rowData.evtrenewaid;
				var parentId = rowData.evtrenewacode;
				var opertorString='';
				// 判断是否使用编辑
				opertorString="<img style=\"cursor:pointer;\" title=\"修改\" sytle=\"cursor:pointer;\" src=\"themes/icons/pencil.png\" onclick=\"EditEmployee3()\"/>&nbsp;&nbsp;";
				//判断是否使用查看
				opertorString=opertorString+"<img style=\"cursor:pointer;\" title=\"查看详情\" sytle=\"cursor:pointer;\" src=\"themes/icons/print.png\" onclick=\"CheckEmployeeDetails3();\"/>&nbsp;&nbsp;";
				return opertorString;			
			}
								}
								 ] ]
								
							});

						});
			
			function saveEmployee3() {
				$('#fm3').form('submit', {
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
							$('#dlg3').dialog('close'); // 关闭dialog
							$('#datagrid3').datagrid({
							data:result
						 	}) ;
						 	$.messager.show({  	
							  title:'操作成功',  	
							  msg:'操作已成功',  	
							  timeout:1000,  	
							  showType:'slide'  
							});  
							$('#searchForm3').form('reset');  
						}
					}
				});
			}
			function EditEmployee3() {
				var row = $('#datagrid3').datagrid('getSelected');
				if (row) {
					$('#dlg3').dialog('open').dialog('setTitle', '班级管理  >>  编辑');
					$('#fm3').form('load', row);
					$('#dlg3').find('input').attr('disabled',false);
					$('#dlg3').find('#button1').show();
					$('#button2').html("<span class='l-btn-left'><span class='l-btn-text icon-cancel l-btn-icon-left'>取消</span></span>");
					url = 'AdminEditClsServlet?id=' + row.id;
				}
			}
			
			function DeleteEmployee3(){ 
	         var ss = [];
			var rows = $('#datagrid3').datagrid('getSelections');
				var ro=""; 
				for(var i=0; i<rows.length; i++){
					var row = rows[i];
					ro+="'"+rows[i].id+"',";					
				} 
				ss.push('<span>'+'您确定要删除这些信息么？'+'</span>');
            var row = $('#datagrid3').datagrid('getSelected');  
            if (row){  
                $.messager.confirm('删除警告', ss.join('<br/>'),function(r){  
                    if (r){  
                        $.post('AdminDelClsServlet',{id:ro},function(result){  
                         
                                $('#datagrid3').datagrid('reload') ;   // reload the user data  
                             
                        },'json');  
                    }  
                });  
            }  
        } 
			
			function CheckEmployeeDetails3() {
				var row = $('#datagrid3').datagrid('getSelected');
				if (row) {
					$('#dlg3').dialog('open').dialog('setTitle', '班级管理  >>  查看详情');
					$('#fm3').form('load', row);
					$('#dlg3').find('#button1').hide();	
					$('#dlg3').find('input').attr('disabled',true);
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
				$('#datagrid3').datagrid({
					loadFilter : pagerFilter
				});
			})
			
			
			var url;
			function NewEmployee3() {
				$('#dlg3').dialog('open').dialog('setTitle', '班级管理  >>  新增');
				$('#fm3').form('clear');
				$('#dlg3').find('input').attr('disabled',false);
				$('#dlg3').find('#button1').show();
				$('#button2').html("<span class='l-btn-left'><span class='l-btn-text icon-cancel l-btn-icon-left'>取消</span></span>");
				url = 'AdminNewClsServlet';
			}
		</script>
	<div class="easyui-layout" data-options="fit:true" style="position:absolute;">
		<div data-options="region:'center',border:false,title:''" style="overflow: hidden;">
			<table id="datagrid3"></table>
		</div>
	</div>
		<div id="dlg3" class="easyui-dialog"
			style="width: 600px; height: 250px; padding:20px" data-options="title: '班级管理  >>  新增',closed: true,
						closable:false, 
						cache: false,  
						modal: true,
						resizable:true"
			buttons="#dlg-buttons">
			<form id="fm3" method="post" novalidate >
				<table  class="table3" id="user_table">
					<tr>
						<th>年    级：</th>
						<td> 
							<input name="grade" class="easyui-validatebox" data-options="required:true " />
						</td>
						<th>班    级：</th>
						<td> 
							<input name="name" class="easyui-validatebox" data-options="required:true " />
						</td>
					</tr>
				</table>
			</form>
		</div>
		<div id="dlg-buttons">
			<a href="javascript:void(0)" class="easyui-linkbutton" id="button1"
				iconCls="icon-save" onclick="saveEmployee3()">保存</a> <a
				href="javascript:void(0)" class="easyui-linkbutton" id="button2" 
				iconCls="icon-cancel" onclick="javascript:$('#dlg3').dialog('close')">取消</a>
		</div>
		
	</body>
</html>
