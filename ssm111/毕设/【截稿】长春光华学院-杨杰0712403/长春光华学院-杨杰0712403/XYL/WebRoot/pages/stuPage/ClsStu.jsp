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
      <title>校友账号管理</title>  
  </head>
  
  <body >
  		<style type="text/css">
  			table th{ font-size:12px; }
  			.select{ width:155px;}
  			.tableClsStu{ position:relative; padding:20 20;width:560px; top:30px;line-height:25px;}
  			#dlgClsStu .combo-text{position:relative;top:-4px;}
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
						cc.push('<img style=\"cursor:pointer;\" title=\"查看详情\" sytle=\"cursor:pointer;\" src=\"themes/icons/print.png\" onclick=\"CheckEmployeeDetails2();\"/>&nbsp;&nbsp;&nbsp;&nbsp;');
						cc.push('</div>');
					}
					cc.push('</td>');
					
					return cc.join('');
				}
			});
			var datagridClsStu;
			$(function() {
				datagridClsStu = $('#datagridClsStu').datagrid({
					view: cardview,
					url : 'StuClsViewServlet?class_id=<%=class_id%>',
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
					toolbar : [ '-', {
						text : '全部查询',
						iconCls : 'icon-search',
						handler : function() {
							$('#datagridClsStu').datagrid({ url:'StuClsViewServlet?class_id=<%=class_id%>' }) ;
							$('#searchFormClsStu').form('reset');
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
				$('#fmClsStu').form('submit', {
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
							$('#dlgClsStu').dialog('close'); // 关闭dialog
							$('#datagridClsStu').datagrid({
							data:result
						 	}) ;
						 	$.messager.show({  	
							  title:'操作成功',  	
							  msg:'操作已成功',  	
							  timeout:1000,  	
							  showType:'slide'  
							});  
							$('#searchFormClsStu').form('reset');  
						}
					}
				});
			}
			
			
			function EditEmployee2() {
				var row = $('#datagridClsStu').datagrid('getSelected');
				if (row) {
					document.getElementById("imgTotext").type="text";
					$('#dlgClsStu').dialog('open').dialog('setTitle', '校友账号管理  >>  编辑');
					$('#dlgClsStu').find('tr[id="noImg"]').show();
					$('#fmClsStu').form('load', row);
					if(row.sex=="1"){
						$("#radio1").attr("checked","checked");
					}else{
						$("#radio2").attr("checked","checked");
					}
					$('#dlgClsStu').find('input').attr('disabled',false);
					$('#dlgClsStu').find('input[id="imgTotext"]').attr('disabled',true);
					$('#dlgClsStu').find('#imgs').show();
					$("#imgs").attr('src','images/upload/'+row.img); 
					$('#dlgClsStu').find('#button1').show();
					$('#dlgClsStu').find('#aImg').hide();
					$('#button2').html("<span class='l-btn-left'><span class='l-btn-text icon-cancel l-btn-icon-left'>取消</span></span>");
					url = 'StuEditServlet?id=' + row.id;
				}
			}
			
			function EditEmployeeS2() {
				var row = $('#datagridClsStu').datagrid('getSelected');
				if (row) {
					document.getElementById("imgTotext").type="file";
					$('#dlgClsStu').dialog('open').dialog('setTitle', '校友账号管理  >>  上传头像');
					$('#dlgClsStu').find('#aImg').show();
					$('#dlgClsStu').find('#button1').hide();
					$('#dlgClsStu').find('tr[id="noImg"]').hide();
					$('#imgTotext').attr('disabled',false);
					$('#dlgClsStu').find('input[name="id"]').attr('value',row.id);
					$('#dlgClsStu').find('#imgs').show();
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
				$('#fmClsStu').form('submit', {
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
							$('#dlgClsStu').dialog('close'); // 关闭dialog
							$('#datagridClsStu').datagrid({
							data:result
						 	}) ;
						 	$.messager.show({  	
							  title:'操作成功',  	
							  msg:'操作已成功',  	
							  timeout:1000,  	
							  showType:'slide'  
							});  
							$('#searchFormClsStu').form('reset');  
						}
					}
				});
			}
			
			function DeleteEmployee2(){ 
	         var ss = [];
			var rows = $('#datagridClsStu').datagrid('getSelections');
				var ro=""; 
				for(var i=0; i<rows.length; i++){
					var row = rows[i];
					ro+="'"+rows[i].id+"',";					
				} 
				ss.push('<span>'+'您确定要删除这些信息么？'+'</span>');
            var row = $('#datagridClsStu').datagrid('getSelected');  
            if (row){  
                $.messager.confirm('删除警告', ss.join('<br/>'),function(r){  
                    if (r){  
                        $.post('AdminDelStuServlet',{id:ro},function(result){  
                         
                                $('#datagridClsStu').datagrid('reload') ;   // reload the user data  
                             
                        },'json');  
                    }  
                });  
            }  
        } 
			
			function CheckEmployeeDetails2() {
				var row = $('#datagridClsStu').datagrid('getSelected');
				if (row) {
					document.getElementById("imgTotext").type="text";
					$('#dlgClsStu').find('input').attr('disabled',true);
					$('#dlgClsStu').find('#imgs').show();
					$("#imgs").attr('src','images/upload/'+row.img); 
					$('#dlgClsStu').dialog('open').dialog('setTitle', '校友账号管理  >>  查看详情');
					$('#dlgClsStu').find('tr[id="noImg"]').show();
					$('#fmClsStu').form('load', row);
					if(row.sex=="1"){
						$("#radio1").attr("checked","checked");
					}else{
						$("#radio2").attr("checked","checked");
					}
					$('#dlgClsStu').find('#aImg').hide();
					$('#dlgClsStu').find('#button1').hide();	
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
				$('#datagridClsStu').datagrid({
					loadFilter : pagerFilter
				});
			})
			
			
			var url;
			function NewEmployee2() {
				document.getElementById("imgTotext").type="file";
				$('#sel').combobox('reload');
				$('#dlgClsStu').dialog('open').dialog('setTitle', '校友账号管理  >>  新增');
				$('#fmClsStu').form('clear');
				$('#dlgClsStu').find('tr[id="noImg"]').show();
				$('#dlgClsStu').find('#imgs').show();
				$('#dlgClsStu').find('input').attr('disabled',false);
				$('#dlgClsStu').find('input[name="id"]').attr('value',0);
				$("#imgs").attr('src','images/upload/0.jpg'); 
				$("#radio1").attr("checked","checked");
				$('#dlgClsStu').find('#button1').show();
				$('#dlgClsStu').find('#aImg').hide();
				$('#button2').html("<span class='l-btn-left'><span class='l-btn-text icon-cancel l-btn-icon-left'>取消</span></span>");
				url = 'FileUploadServlet';
			}
			
			
			/* SearchEntryOrder 快速查询 Start */
			function Search2() {
				$('#searchForm2').form('submit', {  	
				   url: 'StuSearchStuServlet',	
				   onSubmit: function(){
				   		var t1=$('#searchForm2').find('input[name="stu_no"]').val();
				   		var t2=$('#searchForm2').find('input[name="name"]').val();
				        if (t1==""&&t2=="" ){  	/* 判断查询表单中内容不为空 */		
				            $.messager.alert('查询警告','查询的内容不能为空！','warning');
				            return false; 		
				        }
				        return true;   		
				    },
				    success:function(data){ 
						var v=jQuery.parseJSON(data);						
						$('#searchForm2').form('reset');
						$('#datagridClsStu').datagrid({
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
							<input type="hidden" name="class_id" value="<%=class_id%>"/>
					<tr>
						<th>学号：</th>
						<td>
							<input  name="stu_no" class="easyui-numberbox" data-options="validType:['length[10,10]']"/>
						</td>
						<th>姓名：</th>
						<td>
							<input  name="name" class="easyui-numberbox" />
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
			<table id="datagridClsStu"></table>
		</div>
	</div>
		<div id="dlgClsStu" class="easyui-dialog"
			style="width: 600px; height: 450px; padding:20px" data-options="title: '校友账号管理  >>  新增',closed: true,
						closable:false, 
						cache: false,  
						modal: true,
						resizable:true"
			buttons="#dlg-buttons">
			<form id="fmClsStu" method="post" encType="multipart/form-data" >
				<table  class="tableClsStu" id="user_table">
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
				iconCls="icon-cancel" onclick="javascript:$('#dlgClsStu').dialog('close')">取消</a>
		</div>
		
	</body>
</html>
