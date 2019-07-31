<%@ page language="java" import="java.util.*,com.bs.xyl.bean.*" pageEncoding="UTF-8"%>
<%
	Student stu=(Student)session.getAttribute("UserBean");
	String name = stu.getName();
	int id = stu.getId();
	int class_id = stu.getClass_id();
        %>
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
			// $('#cc').combobox('reload');
			$(function() {
				datagrid5 = $('#datagrid5').datagrid({
					url : 'StuViewMessageServlet?stu_id=<%=id%>',
					title : '留言板管理',
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
						text : '添加评论',
						iconCls : 'icon-add',
						handler : function() {
							NewEmployee();
						}
					},'-', {
						text : '刷新',
						iconCls : 'icon-reload',
						handler : function() {
							$('#datagrid5').datagrid({ url:'StuViewMessageServlet?stu_id=<%=id%>' }) ;
							$('#searchForm5').form('reset');
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
						styler:cellStyler,
						formatter:function(value){
						 var newValue=value;
							if(value==1){
								newValue="已回复";
							}else{
								newValue="未回复";
							}
						 return newValue;
						}
					},{
						title : '回复时间',
						field : 'rtime',
						width : 125,
						align:'center',
						styler:cellStyler,
						formatter:function(value){
							var newValue=value;
							if(value==""){
								return "----------";
							}
						 return newValue;
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
					opertorString="<img style=\"cursor:pointer;\" title=\"修改\" sytle=\"cursor:pointer;\" src=\"themes/icons/pencil.png\" onclick=\"EditEmployee()\"/>&nbsp;&nbsp;";
				}else{
					opertorString="<img style=\"cursor:pointer;\" title=\"修改\" sytle=\"cursor:pointer;\" src=\"themes/icons/pencil_cancel.png\" />&nbsp;&nbsp;";
				}
				//判断是否使用查看
				opertorString=opertorString+"<img style=\"cursor:pointer;\" title=\"查看详情\" sytle=\"cursor:pointer;\" src=\"themes/icons/print.png\" onclick=\"CheckEmployeeDetails();\"/>&nbsp;&nbsp;";
				return opertorString;			
			}
								}
								 ] ]
								
							});

						});
						
			function cellStyler(value){
						if(value==""){
							return 'background-color:#ffee00;color:red;';
						}
					}
			
			function saveEmployee() {
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
			function EditEmployee() {
				var row = $('#datagrid5').datagrid('getSelected');
				if (row) {
					$('#dlg5').dialog('open').dialog('setTitle', '留言板管理  >>  编辑');
					$('#fm5').form('load', row);
					$('#dlg5').find('input').attr('disabled',false);
					$('#dlg5').find('textarea').attr('disabled',false);
					$('#dlg5').find('tr[id="p"]').show();
					$('#dlg5').find('tr[id="rp"]').hide();
					$('#dlg5').find('th[id="liuyan"]').hide();
					$('#dlg5').find('input[name="time"]').hide();
					$('#dlg5').find('#button1').show();
					$('#button2').html("<span class='l-btn-left'><span class='l-btn-text icon-cancel l-btn-icon-left'>取消</span></span>");
					url = 'StuEditMessageServlet?stu_id=<%=id%>&id=' + row.id;
				}
			}
			
			function DeleteEmployee(){ 
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
			
			function CheckEmployeeDetails() {
				var row = $('#datagrid5').datagrid('getSelected');
				if (row) {
					$('#dlg5').dialog('open').dialog('setTitle', '留言板管理  >>  查看详情');
					$('#fm5').form('load', row);
					$('#dlg5').find('#button1').hide();	
					$('#dlg5').find('input').attr('disabled',true);
					$('#dlg5').find('textarea').attr('disabled',true);
					$('#dlg5').find('tr[id="rp"]').show();
					$('#dlg5').find('th[id="liuyan"]').show();
					$('#dlg5').find('input[name="time"]').show();
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
			function NewEmployee() {
				$('#dlg5').dialog('open').dialog('setTitle', '留言板管理  >>  新增');
				$('#fm5').form('clear');
				$('#dlg5').find('input').attr('disabled',false);
				$('#dlg5').find('tr[id="p"]').show();
				$('#dlg5').find('tr[id="rp"]').hide();
				$('#dlg5').find('th[id="liuyan"]').hide();
				$('#dlg5').find('input[name="time"]').hide();
				$('#dlg5').find('#button1').show();
				$('#button2').html("<span class='l-btn-left'><span class='l-btn-text icon-cancel l-btn-icon-left'>取消</span></span>");
				url = 'StuNewMessageServlet?stu_id=<%=id%>&class_id=<%=class_id%>';
			}
		</script>
	<div class="easyui-layout" data-options="fit:true" style="position:absolute;">
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
					<tr id="p">
						<th>标    题：</th>
						<td> 
							<input  name="title" class="easyui-validatebox"  />
						</td>
						<th id="liuyan">留言时间：</th>
						<td id="liuyan"> 
							<input name="time" class="easyui-validatebox" data-options="editable:false " />
						</td>
					</tr>
					<tr id="p">
						<th>内    容：</th>
						<td  colspan="3"> 
							<textarea cols="60" rows="5" name="text" class="easyui-validatebox" ></textarea>
						</td>
					</tr>
					<tr id="rp">
						<th>回复时间：</th>
						<td> 
							<input name="rtime" class="easyui-validatebox" data-options="editable:false" />
						</td>
					</tr>
					<tr id="rp">
						<th>回复内容：</th>
						<td  colspan="3"> 
							<textarea cols="60" rows="6" name="rtext" class="easyui-validatebox"  ></textarea>
						</td>
					</tr>
				</table>
			</form>
		</div>
		<div id="dlg-buttons">
			<a href="javascript:void(0)" class="easyui-linkbutton" id="button1"
				iconCls="icon-save" onclick="saveEmployee()">保存</a> <a
				href="javascript:void(0)" class="easyui-linkbutton" id="button2" 
				iconCls="icon-cancel" onclick="javascript:$('#dlg5').dialog('close')">取消</a>
		</div>
		
	</body>
</html>
