<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<div id="header" class="topHeader " style="height:80px;padding-top:10px;">
	<div class="header_fix">
		<div class="header_cont">
			<div class="header_left">
				<a class="logo" href="/"><img src="images/logo.jpg" alt="" /></a>
				<div class="nav" >
				</div>
				<div id="search_box_a" class="search_box_a mgt5" >
					<form action="">
						<div class="selecter">
							<div class="label">
								<i class="jpFntWes">&#xf0dd;</i>
								<label>职位</label>
							</div>
							<ul class="options">
								<li data-value="1"><a href="javascript:">职位</a></li>
								<li data-value="2"><a href="javascript:">公司</a></li>
							</ul>
						</div>
						<div class="searchInput">
							<input id="searchInput" class="keys" type="text" value='' />
							<div id="ui_hbsug" class="ui_hbsug"></div>
						</div>
						<button id="search">搜 索</button>
					</form>
				</div>
			</div>
		</div>
	</div>

</div>