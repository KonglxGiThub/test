<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML >
<html>
  	<head>
      <title>留言板管理</title>  
  </head>
  
  <body >
  		<style type="text/css">
  			table th{ font-size:12px; }
  			.select{ width:155px;}
  			.table5{ position:relative; padding:20 20;width:560px; top:30px;line-height:25px;}
  			#dlg5 .combo-text{position:relative;top:-4px;}
  			.tableForm tr{ position:relative;line-height:25px;}
  			.tableForm6 tr th{ position:relative;text-align:right;}
  		</style>
  		<script type="text/javascript" charset="utf-8">
  			/* datagrid Start */
  			$('#user_table input').each(function () {
            if ($(this).attr('required') || $(this).attr('validType'))
                $(this).validatebox();
        	})
			var datagrid5;
			$(function() {
				datagrid5 = $('#datagrid5').datagrid({
					url : 'AdminViewMessageServlet',
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
						text : '未处理留言',
						handler : function() {
							$('#datagrid5').datagrid({ url:'ClsSearchMessageByStateServlet?state=0' }) ;
						}
					},'-', {
						text : '全部留言',
						handler : function() {
							$('#datagrid5').datagrid({ url:'AdminViewMessageServlet' }) ;
						}
					}],
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
						title : '标题',
						field : 'title',
						width : 125,
						align:'center'
					},{
						title : '留言时间',
						field : 'time',
						width : 125,
						align:'center'
					},{
						title : '留言状态',
						field : 'state',
						width : 125,
						align:'center',
						formatter:function(value){
							var newValue=value;
							if(value==0){
								newValue="未回复";
							}else{
								newValue="已处理";
							}
							return newValue;
						},
						styler: function(index,row){
							if(row.state==0){
								return 'background-color:#B8B8DC;';
							}
						}
					},{
						title : '回复时间',
						field : 'rtime',
						width : 125,
						align:'center',
						formatter:function(value){
							var newValue=value;
							if(value==""){
								newValue="----------";
							}
							return newValue;
						},
						styler: function(index,row){
							if(row.state==0){
								return 'color:#B8B8DC;';
							}
						}
					},{
						title : '留言人账号',
						field : 'stu_no',
						width : 125,
						align:'center'
					},{
						title : '留言班级',
						field : 'class_name',
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
				if(rowData.state==0){
					opertorString="<img style=\"cursor:pointer;\" title=\"回复\" sytle=\"cursor:pointer;\" src=\"themes/icons/pencil.png\" onclick=\"EditMessage()\"/>&nbsp;&nbsp;";
				}else{
					opertorString="<img style=\"cursor:pointer;\" title=\"回复\" sytle=\"cursor:pointer;\" src=\"themes/icons/pencil_cancel.png\" />&nbsp;&nbsp;";
				}
				//判断是否使用查看
				opertorString=opertorString+"<img style=\"cursor:pointer;\" title=\"查看详情\" sytle=\"cursor:pointer;\" src=\"themes/icons/print.png\" onclick=\"CheckMessageDetails();\"/>&nbsp;&nbsp;";
				return opertorString;			
			}
								}
								 ] ]
								
							});

						});
			
			function saveMessage() {
				$('#fm5').form('submit', {
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
							$('#dlg5').dialog('close'); // 关闭dialog
							$('#datagrid5').datagrid({
							data:result
						 	}) ;
						 	$.messager.show({  	
							  title:'操作成功',  	
							  msg:'操作已成功',  	
							  timeout:1000,  	
							  showType:'slide'  
							});  
							$('#searchForm5').form('reset');  
						}
					}
				});
			}
			function EditMessage() {
				var row = $('#datagrid5').datagrid('getSelected');
				if (row) {
					$('#dlg5').dialog('open').dialog('setTitle', '留言板管理  >>  编辑');
					$('#fm5').form('load', row);
					$('#dlg5').find('input').attr('disabled',true);
					$('#dlg5').find('textarea').attr('disabled',true);
					$('#dlg5').find('textarea[name="rtext"]').attr('disabled',false);
					$('#dlg5').find('#button1').show();
					$('#button2').html("<span class='l-btn-left'><span class='l-btn-text icon-cancel l-btn-icon-left'>取消</span></span>");
					url = 'ClsEditMessageServlet?id=' + row.id;
				}
			}
			
			function DeleteMessage(){ 
	         var ss = [];
			var rows = $('#datagrid5').datagrid('getSelections');
				var ro=""; 
				for(var i=0; i<rows.length; i++){
					var row = rows[i];
					ro+="'"+rows[i].id+"',";					
				} 
				ss.push('<span>'+'您确定要删除这些信息么？'+'</span>');
            var row = $('#datagrid5').datagrid('getSelected');  
            if (row){  
                $.messager.confirm('删除警告', ss.join('<br/>'),function(r){  
                    if (r){  
                        $.post('UserDelServlet',{id:ro},function(result){  
                         
                                $('#datagrid5').datagrid('reload') ;   // reload the user data  
                             
                        },'json');  
                    }  
                });  
            }  
        } 
			
			function CheckMessageDetails() {
				var row = $('#datagrid5').datagrid('getSelected');
				if (row) {
					$('#dlg5').dialog('open').dialog('setTitle', '留言板管理  >>  查看详情');
					$('#fm5').form('load', row);
					$('#dlg5').find('#button1').hide();	
					$('#dlg5').find('input').attr('disabled',true);
					$('#dlg5').find('textarea').attr('disabled',true);
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
				$('#datagrid5').datagrid({
					loadFilter : pagerFilter
				});
			})
			
			
			var url;
			function NewMessage() {
				$('#dlg5').dialog('open').dialog('setTitle', '留言板管理  >>  新增');
				$('#fm5').form('clear');
				$('#dlg5').find('input').attr('disabled',false);
				$('#dlg5').find('input[id="time"]').attr('disabled',true);
				$('#dlg5').find('#button1').show();
				$('#button2').html("<span class='l-btn-left'><span class='l-btn-text icon-cancel l-btn-icon-left'>取消</span></span>");
				url = 'ClsNewMessageServlet';
			}
			
			/* SearchEntryOrder 快速查询 Start */
			function SearchMessage() {
				$('#searchForm5').form('submit', {  	
				   url: 'ClsSearchMessageServlet',	
				   onSubmit: function(){
				   		var t2=$('#searchForm5').find('input[name="class_id"]').val();
				        if (t2=="" ){  	/* 判断查询表单中内容不为空 */		
				            $.messager.alert('查询警告','查询的内容不能为空！','warning');
				            return false; 		
				        }
				        return true;   		
				    },
				    success:function(data){ 
						var v=jQuery.parseJSON(data);						
						//$('#searchForm2').form('reset');
						$('#datagrid5').datagrid({
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
		<div data-options="region:'north',border:false,title:'留言板管理'" style="height: 60px;overflow: hidden;background:#FFF;" align="left">
			<form id="searchForm5" >
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
								iconCls="icon-search" plain="true" onclick="SearchMessage()">查询</a>
								<a
								href="javascript:void(0)" class="easyui-linkbutton"
								iconCls="icon-reload" onclick="javascript:$('#searchForm5').form('reset')" plain="true">重置
							 </a> 
						</td>
					</tr>
				</table>
			</form>
		</div>
		<div data-options="region:'center',border:false,title:''" style="overflow: hidden;">
			<table id="datagrid5"></table>
		</div>
	</div>
		<div id="dlg5" class="easyui-dialog"
			style="width: 650px; height: 420px; padding:20px" data-options="title: '留言板管理  >>  新增',closed: true,
						closable:false, 
						cache: false,  
						modal: true,
						resizable:true"
			buttons="#dlg-buttons">
			<form id="fm5" method="post" data-options="novalidate:true">
				<table  class="table5" id="user_table" cellpadding="5">
					<tr>
						<th>标    题：</th>
						<td> 
							<input name="title" class="easyui-validatebox" data-options="required:true " />
						</td>
						<th>留言时间：</th>
						<td> 
							<input id="time" name="time" class="easyui-validatebox" data-options="editable:false " />
						</td>
					</tr>
					<tr>
						<th>内    容：</th>
						<td  colspan="3"> 
							<textarea cols="60" rows="5" name="text" class="easyui-validatebox" data-options="required:true" ></textarea>
						</td>
					</tr>
					<tr>
						<th>留言状态：</th>
						<td> 
							<input  name="state" class="easyui-combobox" data-options="
							required:true,
							editable:false,
							valueField: 'value',
							textField: 'label',
							panelHeight:'auto',
							panelAlign:'right',
							data: [{
									label: '已处理',
									value: '1'
								},{
									label: '未回复',
									value: '0'
								}]" 
							/>
						</td>
						<th>回复时间：</th>
						<td> 
							<input id="time" name="rtime" class="easyui-validatebox" data-options="editable:false " />
						</td>
					</tr>
					<tr>
						<th>回复内容：</th>
						<td  colspan="3"> 
							<textarea cols="60" rows="6" name="rtext" class="easyui-validatebox" data-options="required:true" ></textarea>
						</td>
					</tr>
				</table>
			</form>
		</div>
		<div id="dlg-buttons">
			<a href="javascript:void(0)" class="easyui-linkbutton" id="button1"
				iconCls="icon-save" onclick="saveMessage()">保存</a> <a
				href="javascript:void(0)" class="easyui-linkbutton" id="button2" 
				iconCls="icon-cancel" onclick="javascript:$('#dlg5').dialog('close')">取消</a>
		</div>
		
	</body>
</html>
