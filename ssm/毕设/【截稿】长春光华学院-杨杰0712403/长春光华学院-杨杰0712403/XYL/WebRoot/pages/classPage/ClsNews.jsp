<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML >
<html>
  	<head>
      <title>新闻管理</title>  
  </head>
  
  <body >
  		<style type="text/css">
  			table th{ font-size:12px; }
  			.select{ width:155px;}
  			.table4{ position:relative; padding:20 20;width:560px; top:30px;line-height:25px;}
  			#dlg4 .combo-text{position:relative;top:-4px;}
  			.tableForm tr{ position:relative;line-height:25px;}
  			.tableForm6 tr th{ position:relative;text-align:right;}
  		</style>
  		<script type="text/javascript" charset="utf-8">
  			/* datagrid Start */
  			$('#user_table input').each(function () {
            if ($(this).attr('required') || $(this).attr('validType'))
                $(this).validatebox();
        	})
			var datagrid4;
			$(function() {
				datagrid4 = $('#datagrid4').datagrid({
					url : 'ClsViewNewsServlet?class_id=-1',
					title : '',
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
							NewNews();
						}
					},'-', {
						text : '删除',
						iconCls : 'icon-remove',
						handler : function() {
							DeleteNews();
						}
						} ,'-'],
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
						title : '更新时间',
						field : 'time',
						width : 125,
						align:'center'
					},{
						title : '标题',
						field : 'title',
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
				opertorString="<img style=\"cursor:pointer;\" title=\"修改\" sytle=\"cursor:pointer;\" src=\"themes/icons/pencil.png\" onclick=\"EditNews()\"/>&nbsp;&nbsp;";
				//判断是否使用查看
				opertorString=opertorString+"<img style=\"cursor:pointer;\" title=\"查看详情\" sytle=\"cursor:pointer;\" src=\"themes/icons/print.png\" onclick=\"CheckNewsDetails();\"/>&nbsp;&nbsp;";
				return opertorString;			
			}
								}
								 ] ]
								
							});

						});
			
			function saveNews() {
				$('#fm4').form('submit', {
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
							$('#dlg4').dialog('close'); // 关闭dialog
							$('#datagrid4').datagrid({
							data:result
						 	}) ;
						 	$.messager.show({  	
							  title:'操作成功',  	
							  msg:'操作已成功',  	
							  timeout:1000,  	
							  showType:'slide'  
							});  
							$('#searchForm4').form('reset');  
						}
					}
				});
			}
			function EditNews() {
				var row = $('#datagrid4').datagrid('getSelected');
				if (row) {
					$('#dlg4').dialog('open').dialog('setTitle', '新闻管理  >>  编辑');
					$('#fm4').form('load', row);
					$('#dlg4').find('input').attr('disabled',false);
					$('#dlg4').find('textarea').attr('disabled',false);
					$('#dlg4').find('#button1').show();
					$('#button2').html("<span class='l-btn-left'><span class='l-btn-text icon-cancel l-btn-icon-left'>取消</span></span>");
					url = 'ClsEditNewsServlet?id=' + row.id;
				}
			}
			
			function DeleteNews(){ 
	         var ss = [];
			var rows = $('#datagrid4').datagrid('getSelections');
				var ro=""; 
				for(var i=0; i<rows.length; i++){
					var row = rows[i];
					ro+="'"+rows[i].id+"',";					
				} 
				ss.push('<span>'+'您确定要删除这些信息么？'+'</span>');
            var row = $('#datagrid4').datagrid('getSelected');  
            if (row){  
                $.messager.confirm('删除警告', ss.join('<br/>'),function(r){  
                    if (r){  
                        $.post('ClsDelNewsServlet',{id:ro,class_id:rows[0].class_id},function(result){  
                                $('#datagrid4').datagrid({
									data:result,
								 }) ;
                        },'json');  
                    }  
                });  
            }  
        } 
			
			function CheckNewsDetails() {
				var row = $('#datagrid4').datagrid('getSelected');
				if (row) {
					$('#dlg4').dialog('open').dialog('setTitle', '新闻管理  >>  查看详情');
					$('#fm4').form('load', row);
					$('#dlg4').find('#button1').hide();	
					$('#dlg4').find('input').attr('disabled',true);
					$('#dlg4').find('textarea').attr('disabled',true);
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
				$('#datagrid4').datagrid({
					loadFilter : pagerFilter
				});
			})
			
			
			var url;
			function NewNews() {
				$('#dlg4').dialog('open').dialog('setTitle', '新闻管理  >>  新增');
				$('#fm4').form('clear');
				$('#dlg4').find('input').attr('disabled',false);
				$('#dlg4').find('textarea').attr('disabled',false);
				$('#dlg4').find('#button1').show();
				$('#button2').html("<span class='l-btn-left'><span class='l-btn-text icon-cancel l-btn-icon-left'>取消</span></span>");
				url = 'ClsNewNewsServlet';
			}
			
			/* SearchEntryOrder 快速查询 Start */
			function Search4() {
				$('#searchForm4').form('submit', {  	
				   url: 'ClsViewNewsServlet',	
				   onSubmit: function(){
				   		var t2=$('#searchForm4').find('input[name="class_id"]').val();
				        if (t2=="" ){  	/* 判断查询表单中内容不为空 */		
				            $.messager.alert('查询警告','查询的内容不能为空！','warning');
				            return false; 		
				        }
				        return true;   		
				    },
				    success:function(data){ 
						var v=jQuery.parseJSON(data);						
						$('#searchForm4').form('reset');
						$('#datagrid4').datagrid({
							data:v,
							url:'',
							loadFilter : pagerFilter
						 }) ;
						
						}
						
						});
				
			}	
       		/* SearchEntryOrder 快速查询 End */
		</script>
	<div class="easyui-layout" data-options="fit:true" style="position:absolute;">
		<div data-options="region:'north',border:false,title:'新闻管理'" style="height: 60px;overflow: hidden;background:#FFF;" align="left">
			<form id="searchForm4" >
				<table class="tableForm1 datagrid-toolbar" style="width: 100%;height:100%;position:absolute;">
					<tr>
						<th>班级：</th>
						<td>
							<input  id="sel"  name="class_id" class="easyui-combobox" data-options="
							url:'AdminSelClsServlet',
							editable:false,
							valueField: 'sel_ban_id',
							textField: 'sel_ban_name',
							panelHeight:'auto',
							panelAlign:'right'" 
							/>
						</td>
						<td>
							<a href="javascript:void(0)" class="easyui-linkbutton"
								iconCls="icon-search" plain="true" onclick="Search4()">查询</a>
								<a
								href="javascript:void(0)" class="easyui-linkbutton"
								iconCls="icon-reload" onclick="javascript:$('#searchForm4').form('reset')" plain="true">重置
							 </a> 
						</td>
					</tr>
				</table>
			</form>
		</div>
		<div data-options="region:'center',border:false,title:''" style="overflow: hidden;">
			<table id="datagrid4"></table>
		</div>
	</div>
		<div id="dlg4" class="easyui-dialog"
			style="width: 600px; height: 350px; padding:20px" data-options="title: '新闻管理  >>  新增',closed: true,
						closable:false, 
						cache: false,  
						modal: true,
						resizable:true"
			buttons="#dlg-buttons">
			<form id="fm4" method="post" data-options="novalidate:true">
				<table  class="table4" id="user_table" cellpadding="5">
					<tr>
						<th>标    题：</th>
						<td> 
							<input name="title" class="easyui-validatebox" data-options="required:true"  />
						</td>
						<th>班级：</th>
						<td>
							<input  id="sel"  name="class_id" class="easyui-combobox" data-options="
							url:'AdminSelClsServlet',
							required:true,
							editable:false,
							valueField: 'sel_ban_id',
							textField: 'sel_ban_name',
							panelHeight:'auto',
							panelAlign:'right'" 
							/>
						</td>
					</tr>
					<tr>
						<th>内    容：</th>
						<td  colspan="3"> 
							<textarea cols="50" rows="5" name="text" class="easyui-validatebox" data-options="required:true,missingMessage:'故障描述必填'" ></textarea>
						</td>
					</tr>
				</table>
			</form>
		</div>
		<div id="dlg-buttons">
			<a href="javascript:void(0)" class="easyui-linkbutton" id="button1"
				iconCls="icon-save" onclick="saveNews()">保存</a> <a
				href="javascript:void(0)" class="easyui-linkbutton" id="button2" 
				iconCls="icon-cancel" onclick="javascript:$('#dlg4').dialog('close')">取消</a>
		</div>
		
	</body>
</html>
