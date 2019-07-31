<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML >
<html>
  	<head>
      <title>校友账号管理</title>  
  </head>
  
  <body >
  		<style type="text/css">
  			table th{ font-size:12px; }
  			.select{ width:155px;}
  			.table2{ position:relative; padding:20 20;width:560px; top:30px;line-height:25px;}
  			#dlg2 .combo-text{position:relative;top:-4px;}
  			.tableForm tr{ position:relative;line-height:25px;}
  			.tableForm6 tr th{ position:relative;text-align:right;}
  		</style>
  		<script type="text/javascript" charset="utf-8">
  			/* datagrid Start */
  			$('#user_table input').each(function () {
            if ($(this).attr('required') || $(this).attr('validType'))
                $(this).validatebox();
        	})
        	var cardview = $.extend({}, $.fn.datagrid.defaults.view, {
				renderRow: function(target, fields, frozen, rowIndex, rowData){
					var cc = [];
					cc.push('<td colspan=' + fields.length + ' style="padding:10px 100px;border:0;">');
					if (!frozen){
						cc.push('<img src="images/upload/' + rowData.img + '" style="height:150px;width:120px;float:left">');
						cc.push('<div style="float:left;margin-left:250px;height:130px;width:200px;">');
						for(var i=1; i<fields.length-1; i++){
							var copts = $(target).datagrid('getColumnOption', fields[i]);
							cc.push('<p><span class="c-label">' + copts.title + ':</span> ' + rowData[fields[i]] + '</p>');
						}
						cc.push('<img style=\"cursor:pointer;\" title=\"修改\" sytle=\"cursor:pointer;\" src=\"themes/icons/pencil.png\" onclick=\"EditEmployee2()\"/>&nbsp;&nbsp;&nbsp;&nbsp;');
						cc.push('<img style=\"cursor:pointer;\" title=\"查看详情\" sytle=\"cursor:pointer;\" src=\"themes/icons/print.png\" onclick=\"CheckEmployeeDetails2();\"/>&nbsp;&nbsp;&nbsp;&nbsp;');
						cc.push('<img style=\"cursor:pointer;\" title=\"上传图片\" sytle=\"cursor:pointer;\" src=\"themes/icons/application_view_tile.png\" onclick=\"EditEmployeeS2()\"/>&nbsp;&nbsp;&nbsp;&nbsp;');
						cc.push('</div>');
					}
					cc.push('</td>');
					
					return cc.join('');
				}
			});
			var datagrid2;
			$(function() {
				datagrid2 = $('#datagrid2').datagrid({
					view: cardview,
					url : 'AdminViewStuServlet',
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
							NewEmployee2();
						}
					},'-', {
						text : '删除',
						iconCls : 'icon-remove',
						handler : function() {
							DeleteEmployee2();
						}
						},'-', {
						text : '刷新',
						iconCls : 'icon-reload',
						handler : function() {
							$('#datagrid2').datagrid({ url:'AdminViewStuServlet' }) ;
							$('#searchForm2').form('reset');
							$('#sel').combobox('reload');
						}
					}, '-'],
					columns : [ [
					{
						checkbox:true,
						width : 120,
						height: 120
					},{
						title : '学号',
						field : 'stu_no',
						width : 125,
						align:'center'
					},{
						title : '姓名',
						field : 'name',
						width : 125,
						align:'center'
					},{
						title : '电话',
						field : 'tel',
						width : 125,
						align:'center'
					},{
						title : '邮箱',
						field : 'email',
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
				opertorString="<img style=\"cursor:pointer;\" title=\"修改\" sytle=\"cursor:pointer;\" src=\"themes/icons/pencil.png\" onclick=\"EditEmployee2()\"/>&nbsp;&nbsp;";
				//判断是否使用查看
				opertorString=opertorString+"<img style=\"cursor:pointer;\" title=\"查看详情\" sytle=\"cursor:pointer;\" src=\"themes/icons/print.png\" onclick=\"CheckEmployeeDetails2();\"/>&nbsp;&nbsp;";
				return opertorString;			
			}
								}
								 ] ]
								
							});

						});
			
			function saveEmployee2() {
				$('#fm2').form('submit', {
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
							$('#dlg2').dialog('close'); // 关闭dialog
							$('#datagrid2').datagrid({
							data:result
						 	}) ;
						 	$.messager.show({  	
							  title:'操作成功',  	
							  msg:'操作已成功',  	
							  timeout:1000,  	
							  showType:'slide'  
							});  
							$('#searchForm2').form('reset');  
						}
					}
				});
			}
			
			
			function EditEmployee2() {
				var row = $('#datagrid2').datagrid('getSelected');
				if (row) {
					document.getElementById("imgTotext").type="text";
					$('#dlg2').dialog('open').dialog('setTitle', '校友账号管理  >>  编辑');
					$('#dlg2').find('tr[id="noImg"]').show();
					$('#fm2').form('load', row);
					if(row.sex=="1"){
						$("#radio1").attr("checked","checked");
					}else{
						$("#radio2").attr("checked","checked");
					}
					$('#dlg2').find('input').attr('disabled',false);
					$('#dlg2').find('input[id="imgTotext"]').attr('disabled',true);
					$('#dlg2').find('#imgs').show();
					$("#imgs").attr('src','images/upload/'+row.img); 
					$('#dlg2').find('#button1').show();
					$('#dlg2').find('#aImg').hide();
					$('#button2').html("<span class='l-btn-left'><span class='l-btn-text icon-cancel l-btn-icon-left'>取消</span></span>");
					url = 'FileUploadFromEditServlet?id=' + row.id;
				}
			}
			
			function EditEmployeeS2() {
				var row = $('#datagrid2').datagrid('getSelected');
				if (row) {
					document.getElementById("imgTotext").type="file";
					$('#dlg2').dialog('open').dialog('setTitle', '校友账号管理  >>  上传头像');
					$('#dlg2').find('#aImg').show();
					$('#dlg2').find('#button1').hide();
					$('#dlg2').find('tr[id="noImg"]').hide();
					$('#imgTotext').attr('disabled',false);
					$('#dlg2').find('input[name="id"]').attr('value',row.id);
					$('#dlg2').find('#imgs').show();
					$("#imgs").attr('src','images/upload/'+row.img); 
					$('#button2').html("<span class='l-btn-left'><span class='l-btn-text icon-cancel l-btn-icon-left'>取消</span></span>");
					url = 'FileUploadImgEditServlet?id=' + row.id;
				}
			}
			
			function pic() {
		        var strs = new Array(); //定义一数组
		        var pic1= $("#imgTotext").val();
		        strs = pic1.split('.');
		        var suffix = strs [strs .length - 1];
		
		        if (suffix != 'jpg' && suffix != 'gif' && suffix != 'jpeg' && suffix != 'png') {
		            alert("你选择的不是图片,请选择图片！");
		            var obj = document.getElementById('imgTotext');
		            obj.outerHTML = obj.outerHTML; //这样清空，在IE8下也能执行成功
		             //obj.select(); document.selection.clear(); 好像这种方法也可以清空 input file 的value值，不过我没测试
		        }
		    } 
		    
		    
			
			function saveEmployeeS2() {
				var Count = document.getElementById("imgTotext").value.length;
	            if (Count <= 0) {
	                alert("请上传图片");
	                return;
	            }
				$('#fm2').form('submit', {
					url : url,
					onSubmit : function() {
						return $(this).form('submit');
					},
					success : function(result) {
						var result = eval('(' + result + ')');
						if (result.errorMsg) {
							$.messager.show({
								title : 'Error',
								msg : result.errorMsg
							});
						} else {
							$('#dlg2').dialog('close'); // 关闭dialog
							$('#datagrid2').datagrid({
							data:result
						 	}) ;
						 	$.messager.show({  	
							  title:'操作成功',  	
							  msg:'操作已成功',  	
							  timeout:1000,  	
							  showType:'slide'  
							});  
							$('#searchForm2').form('reset');  
						}
					}
				});
			}
			
			function DeleteEmployee2(){ 
	         var ss = [];
			var rows = $('#datagrid2').datagrid('getSelections');
				var ro=""; 
				for(var i=0; i<rows.length; i++){
					var row = rows[i];
					ro+="'"+rows[i].id+"',";					
				} 
				ss.push('<span>'+'您确定要删除这些信息么？'+'</span>');
            var row = $('#datagrid2').datagrid('getSelected');  
            if (row){  
                $.messager.confirm('删除警告', ss.join('<br/>'),function(r){  
                    if (r){  
                        $.post('AdminDelStuServlet',{id:ro},function(result){  
                         
                                $('#datagrid2').datagrid('reload') ;   // reload the user data  
                             
                        },'json');  
                    }  
                });  
            }  
        } 
			
			function CheckEmployeeDetails2() {
				var row = $('#datagrid2').datagrid('getSelected');
				if (row) {
					document.getElementById("imgTotext").type="text";
					$('#dlg2').find('input').attr('disabled',true);
					$('#dlg2').find('#imgs').show();
					$("#imgs").attr('src','images/upload/'+row.img); 
					$('#dlg2').dialog('open').dialog('setTitle', '校友账号管理  >>  查看详情');
					$('#dlg2').find('tr[id="noImg"]').show();
					$('#fm2').form('load', row);
					if(row.sex=="1"){
						$("#radio1").attr("checked","checked");
					}else{
						$("#radio2").attr("checked","checked");
					}
					$('#dlg2').find('#aImg').hide();
					$('#dlg2').find('#button1').hide();	
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
				$('#datagrid2').datagrid({
					loadFilter : pagerFilter
				});
			})
			
			
			var url;
			function NewEmployee2() {
				document.getElementById("imgTotext").type="file";
				$('#sel').combobox('reload');
				$('#dlg2').dialog('open').dialog('setTitle', '校友账号管理  >>  新增');
				$('#fm2').form('clear');
				$('#dlg2').find('tr[id="noImg"]').show();
				$('#dlg2').find('#imgs').show();
				$('#dlg2').find('input').attr('disabled',false);
				$('#dlg2').find('input[name="id"]').attr('value',0);
				$("#imgs").attr('src','images/upload/0.jpg'); 
				$("#radio1").attr("checked","checked");
				$('#dlg2').find('#button1').show();
				$('#dlg2').find('#aImg').hide();
				$('#button2').html("<span class='l-btn-left'><span class='l-btn-text icon-cancel l-btn-icon-left'>取消</span></span>");
				url = 'FileUploadServlet';
			}
			
			
			/* SearchEntryOrder 快速查询 Start */
			function Search2() {
				$('#searchForm2').form('submit', {  	
				   url: 'ClsSearchStuServlet',	
				   onSubmit: function(){
				   		var t1=$('#searchForm2').find('input[name="stu_no"]').val();
				   		var t2=$('#searchForm2').find('input[name="class_id"]').val();
				        if (t1==""&&t2=="" ){  	/* 判断查询表单中内容不为空 */		
				            $.messager.alert('查询警告','查询的内容不能为空！','warning');
				            return false; 		
				        }
				        return true;   		
				    },
				    success:function(data){ 
						var v=jQuery.parseJSON(data);						
						$('#searchForm2').form('reset');
						$('#datagrid2').datagrid({
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
		<div data-options="region:'north',border:false,title:'校友账号管理'" style="height: 60px;overflow: hidden;background:#FFF;" align="left">
			<form id="searchForm2" >
				<table class="tableForm1 datagrid-toolbar" style="width: 100%;height:100%;position:absolute;">
					<tr>
						<th>学号：</th>
						<td>
							<input  name="stu_no" class="easyui-numberbox" data-options="validType:['length[10,10]']"/>
						</td>
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
								iconCls="icon-search" plain="true" onclick="Search2()">查询</a>
								<a
								href="javascript:void(0)" class="easyui-linkbutton"
								iconCls="icon-reload" onclick="javascript:$('#searchForm12).form('reset')" plain="true">重置
							 </a> 
						</td>
					</tr>
				</table>
			</form>
		</div>
		<div data-options="region:'center',border:false,title:''" style="overflow: hidden;">
			<table id="datagrid2"></table>
		</div>
	</div>
		<div id="dlg2" class="easyui-dialog"
			style="width: 600px; height: 450px; padding:20px" data-options="title: '校友账号管理  >>  新增',closed: true,
						closable:false, 
						cache: false,  
						modal: true,
						resizable:true"
			buttons="#dlg-buttons">
			<form id="fm2" method="post" encType="multipart/form-data" >
				<table  class="table2" id="user_table">
				<input type="hidden" name="id"/>
					<tr id="noImg">
						<th>学    号：</th>
						<td> 
							<input name="stu_no"  class="easyui-numberbox" data-options="required:true,validType:['length[10,10]'] " />
						</td>
						<th>密    码：</th>
						<td> 
							<input name="pwd" type="password" class="easyui-validatebox" data-options="required:true " />
						</td>
					</tr>
					<tr id="noImg">
						<th>姓    名：</th>
						<td> 
							<input name="name" class="easyui-validatebox" data-options="required:true " />
						</td>
						<th>电    话：</th>
						<td> 
							<input name="tel" class="easyui-numberbox" data-options="required:true,validType:['phone'] " />
						</td>
					</tr>
					<tr id="noImg">
						<th>性    别：</th>
						<td> 
							<input id="radio1" type="radio" name="sex" value="1" />男
							<input id="radio2" type="radio"  name="sex" value="2" />女
						</td>
						<th>生    日：</th>
						<td> 
							<input name="birthday" class="easyui-datebox" data-options="required:true,editable:false " />
						</td>
					</tr>
					<tr id="noImg">
						<th>QQ：</th>
						<td> 
							<input name="qq" class="easyui-numberbox" data-options="required:true,validType:['length[9,12]']  " />
						</td>
						<th>E-mail：</th>
						<td> 
							<input name="email" class="easyui-validatebox" data-options="required:true,validType:['email']" />
						</td>
					</tr>
					<tr id="noImg">
						<th>状    态：</th>
						<td> 
							<input  name="state" class="easyui-combobox" data-options="
							required:true,
							editable:false,
							valueField: 'value',
							textField: 'label',
							panelHeight:'auto',
							panelAlign:'right',
							data: [{
									label: '已通过',
									value: '1'
								},{
									label: '未通过',
									value: '0'
								}]" 
							/>
						</td>
						<th>所属班级：</th>
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
					<tr id="noImg">
						<th>昵    称：</th>
						<td> 
							<input name="nickname" class="easyui-validatebox" data-options="required:true " />
						</td>
					</tr>
					<tr>
						<th>头    像：</th>
						<td> 
							<input id="imgTotext" name="img"  type="file" style="width:75%" onchange="pic();"/>
							<!-- 
							<input id="imgTotext" name="img" type="text"  style="width:50%">
							 -->
						</td>
						<td colspan="2">
							<img id="imgs" src="" style="width: 100px;height: 120px"/>
						</td>
					</tr>
				</table>
			</form>
		</div>
		<div id="dlg-buttons">
			<a id="aImg" href="javascript:void(0)" class="easyui-linkbutton" 
				iconCls="icon-save" onclick="saveEmployeeS2()">上传</a>
			<a href="javascript:void(0)" class="easyui-linkbutton" id="button1"
				iconCls="icon-save" onclick="saveEmployee2()">保存</a> <a
				href="javascript:void(0)" class="easyui-linkbutton" id="button2" 
				iconCls="icon-cancel" onclick="javascript:$('#dlg2').dialog('close')">取消</a>
		</div>
		
	</body>
</html>
