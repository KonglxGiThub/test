<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.bs.zp.bean.Seeker"%>
<%@page import="com.bs.zp.bean.Company"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
Seeker sek = (Seeker)session.getAttribute("UserBean");
Company cpy = (Company)session.getAttribute("CpyBean");
String role = (String)session.getAttribute("role");
%>
<div class="navCon">
<div class="navBox" id="navMain">
<h3>
    <a href="javascript:void(0);" id="navMenu"> <b>全部职位分类</b><i class="jpFntWes"></i>
    </a>
</h3>
<div class="pos" id="boxNav" >
                <div class="lst" id="navLst">
                    <ul><li class="">
                        <a class="lstLnk" href="javascript:void(0)"><!--/search/a1/-->
                            <p class="lnk">IT/互联网/通信/电子</p> <b class="jpFntWes arr"></b>
                        </a>
                        <div  class="posBox"  style="display:block;">
                            <div class="posJobSort">
                                <div  class="l"><dl>
                                    <dt>
                                        <a href="/ZPWZ/FindJobById?c1=12&c2=0">计算机硬件</a>
                                    </dt>
                                    <dd><a href="/ZPWZ/FindJobById?c1=12&c2=10">计算机硬件</a><a href="/ZPWZ/FindJobById?c1=12&c2=11">高级硬件工程师</a><a href="/ZPWZ/FindJobById?c1=12&c2=12">硬件工程师</a><a href="/ZPWZ/FindJobById?c1=12&c2=13">其他</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/ZPWZ/FindJobById?c1=13&c2=0">计算机软件</a>
                                    </dt>
                                    <dd><a href="/ZPWZ/FindJobById?c1=13&c2=10">计算机软件</a><a href="/ZPWZ/FindJobById?c1=13&c2=11">高级软件工程师</a><a href="/ZPWZ/FindJobById?c1=13&c2=12">软件工程师</a><a href="/ZPWZ/FindJobById?c1=13&c2=13">软件UI设计师/工程师</a><a href="/ZPWZ/FindJobById?c1=13&c2=14">仿真应用工程师</a><a href="/ZPWZ/FindJobById?c1=13&c2=15">ERP实施顾问</a><a href="/ZPWZ/FindJobById?c1=13&c2=16">ERP技术开发</a><a href="/ZPWZ/FindJobById?c1=13&c2=17">需求工程师</a><a href="/ZPWZ/FindJobById?c1=13&c2=18">系统集成工程师</a><a href="/ZPWZ/FindJobById?c1=13&c2=19">系统分析员</a><a href="/ZPWZ/FindJobById?c1=13&c2=20">系统工程师</a><a href="/ZPWZ/FindJobById?c1=13&c2=21">系统架构设计师</a><a href="/ZPWZ/FindJobById?c1=13&c2=22">数据库工程师/管理员</a><a href="/ZPWZ/FindJobById?c1=13&c2=23">计算机辅助设计工程师</a><a href="/ZPWZ/FindJobById?c1=13&c2=24">其他</a><a href="/ZPWZ/FindJobById?c1=13&c2=25">设计总监</a><a href="/ZPWZ/FindJobById?c1=13&c2=26">设计经理</a><a href="/ZPWZ/FindJobById?c1=13&c2=27">设计主管</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/ZPWZ/FindJobById?c1=14&c2=0">互联网/网游</a>
                                    </dt>
                                    <dd><a href="/ZPWZ/FindJobById?c1=14&c2=10">互联网/网游</a><a href="/ZPWZ/FindJobById?c1=14&c2=11">互联网软件开发工程师</a><a href="/ZPWZ/FindJobById?c1=14&c2=12">语音/视频开发工程师</a><a href="/ZPWZ/FindJobById?c1=14&c2=13">多媒体/游戏开发工程师</a><a href="/ZPWZ/FindJobById?c1=14&c2=14">网站营运经理/主管</a><a href="/ZPWZ/FindJobById?c1=14&c2=15">网站营运专员</a><a href="/ZPWZ/FindJobById?c1=14&c2=16">网络工程师</a><a href="/ZPWZ/FindJobById?c1=14&c2=17">UI设计师/顾问</a><a href="/ZPWZ/FindJobById?c1=14&c2=18">网站架构设计师</a><a href="/ZPWZ/FindJobById?c1=14&c2=19">网站维护工程师</a><a href="/ZPWZ/FindJobById?c1=14&c2=20">系统管理员/网络管理员</a><a href="/ZPWZ/FindJobById?c1=14&c2=21">网站策划</a><a href="/ZPWZ/FindJobById?c1=14&c2=22">网站编辑</a><a href="/ZPWZ/FindJobById?c1=14&c2=23">网页设计/制作/美工</a><a href="/ZPWZ/FindJobById?c1=14&c2=24">脚本开发工程师</a><a href="/ZPWZ/FindJobById?c1=14&c2=25">游戏策划师</a><a href="/ZPWZ/FindJobById?c1=14&c2=26">游戏界面设计师</a><a href="/ZPWZ/FindJobById?c1=14&c2=27">Flash设计/开发</a><a href="/ZPWZ/FindJobById?c1=14&c2=28">特效设计师</a><a href="/ZPWZ/FindJobById?c1=14&c2=29">视觉设计师</a><a href="/ZPWZ/FindJobById?c1=14&c2=30">音效设计师</a><a href="/ZPWZ/FindJobById?c1=14&c2=31">SEO搜索引擎优化</a><a href="/ZPWZ/FindJobById?c1=14&c2=32">网络信息安全工程师</a><a href="/ZPWZ/FindJobById?c1=14&c2=33">智能大厦/综合布线</a><a href="/ZPWZ/FindJobById?c1=14&c2=34">其他</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/ZPWZ/FindJobById?c1=15&c2=0">IT-管理</a>
                                    </dt>
                                    <dd><a href="/ZPWZ/FindJobById?c1=15&c2=10">IT-管理</a><a href="/ZPWZ/FindJobById?c1=15&c2=11">首席技术执行官CTO/首席信息官CIO</a><a href="/ZPWZ/FindJobById?c1=15&c2=12">技术总监/经理</a><a href="/ZPWZ/FindJobById?c1=15&c2=13">信息技术经理/主管</a><a href="/ZPWZ/FindJobById?c1=15&c2=14">信息技术专员</a><a href="/ZPWZ/FindJobById?c1=15&c2=15">项目总监</a><a href="/ZPWZ/FindJobById?c1=15&c2=16">项目经理</a><a href="/ZPWZ/FindJobById?c1=15&c2=17">项目主管</a><a href="/ZPWZ/FindJobById?c1=15&c2=18">项目执行/协调人员</a><a href="/ZPWZ/FindJobById?c1=15&c2=19">其他</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/ZPWZ/FindJobById?c1=16&c2=0">IT-品管、技术支持及其它</a>
                                    </dt>
                                    <dd><a href="/ZPWZ/FindJobById?c1=16&c2=10">IT-品管、技术支持及其它</a><a href="/ZPWZ/FindJobById?c1=16&c2=11">技术支持/维护经理</a><a href="/ZPWZ/FindJobById?c1=16&c2=12">技术支持/维护工程师</a><a href="/ZPWZ/FindJobById?c1=16&c2=13">Helpdesk 技术支持</a><a href="/ZPWZ/FindJobById?c1=16&c2=14">计量工程师</a><a href="/ZPWZ/FindJobById?c1=16&c2=15">标准化工程师</a><a href="/ZPWZ/FindJobById?c1=16&c2=16">品质经理</a><a href="/ZPWZ/FindJobById?c1=16&c2=17">系统测试</a><a href="/ZPWZ/FindJobById?c1=16&c2=18">软件测试</a><a href="/ZPWZ/FindJobById?c1=16&c2=19">硬件测试</a><a href="/ZPWZ/FindJobById?c1=16&c2=20">测试员</a><a href="/ZPWZ/FindJobById?c1=16&c2=21">文档工程师</a><a href="/ZPWZ/FindJobById?c1=16&c2=22">技术文员/助理</a><a href="/ZPWZ/FindJobById?c1=16&c2=23">其他</a><a href="/ZPWZ/FindJobById?c1=16&c2=24">研发总监</a><a href="/ZPWZ/FindJobById?c1=16&c2=25">研发经理</a><a href="/ZPWZ/FindJobById?c1=16&c2=26">研发主管</a><a href="/ZPWZ/FindJobById?c1=16&c2=27">研发工程师</a><a href="/ZPWZ/FindJobById?c1=16&c2=28">助理研发工程师</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/ZPWZ/FindJobById?c1=17&c2=0">通信技术开发及应用</a>
                                    </dt>
                                    <dd><a href="/ZPWZ/FindJobById?c1=17&c2=10">通信技术开发及应用</a><a href="/ZPWZ/FindJobById?c1=17&c2=11">通信技术工程师</a><a href="/ZPWZ/FindJobById?c1=17&c2=12">有线传输工程师</a><a href="/ZPWZ/FindJobById?c1=17&c2=13">无线通信工程师</a><a href="/ZPWZ/FindJobById?c1=17&c2=14">电信交换工程师</a><a href="/ZPWZ/FindJobById?c1=17&c2=15">数据通信工程师</a><a href="/ZPWZ/FindJobById?c1=17&c2=16">移动通信工程师</a><a href="/ZPWZ/FindJobById?c1=17&c2=17">电信网络工程师</a><a href="/ZPWZ/FindJobById?c1=17&c2=18">通信电源工程师</a><a href="/ZPWZ/FindJobById?c1=17&c2=19">增值产品开发工程师</a><a href="/ZPWZ/FindJobById?c1=17&c2=20">手机软件开发工程师</a><a href="/ZPWZ/FindJobById?c1=17&c2=21">手机应用开发工程师</a><a href="/ZPWZ/FindJobById?c1=17&c2=22">其他</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/ZPWZ/FindJobById?c1=18&c2=0">电子/电器/半导体/仪器仪表</a>
                                    </dt>
                                    <dd><a href="/ZPWZ/FindJobById?c1=18&c2=10">电子/电器/半导体/仪器仪表</a><a href="/ZPWZ/FindJobById?c1=18&c2=11">集成电路IC设计/应用工程师</a><a href="/ZPWZ/FindJobById?c1=18&c2=12">IC验证工程师</a><a href="/ZPWZ/FindJobById?c1=18&c2=13">电子工程师/技术员</a><a href="/ZPWZ/FindJobById?c1=18&c2=14">电子技术研发工程师</a><a href="/ZPWZ/FindJobById?c1=18&c2=15">射频工程师</a><a href="/ZPWZ/FindJobById?c1=18&c2=16">电子/电器维修工程师/技师</a><a href="/ZPWZ/FindJobById?c1=18&c2=17">变压器与磁电工程师</a><a href="/ZPWZ/FindJobById?c1=18&c2=18">版图设计工程师</a><a href="/ZPWZ/FindJobById?c1=18&c2=19">电气工程师/技术员</a><a href="/ZPWZ/FindJobById?c1=18&c2=20">电路工程师/技术员(模拟/数字)</a><a href="/ZPWZ/FindJobById?c1=18&c2=21">电声/音响工程师/技术员</a><a href="/ZPWZ/FindJobById?c1=18&c2=22">激光/光电子技术</a><a href="/ZPWZ/FindJobById?c1=18&c2=23">半导体技术</a><a href="/ZPWZ/FindJobById?c1=18&c2=24">自动控制工程师/技术员</a><a href="/ZPWZ/FindJobById?c1=18&c2=25">电子软件开发(ARM/MCU...)</a><a href="/ZPWZ/FindJobById?c1=18&c2=26">嵌入式软件开发(Linux/单片机/DLC/DSP…)</a><a href="/ZPWZ/FindJobById?c1=18&c2=27">嵌入式硬件开发(主板机…)</a><a href="/ZPWZ/FindJobById?c1=18&c2=28">电池/电源开发</a><a href="/ZPWZ/FindJobById?c1=18&c2=29">FAE 现场应用工程师</a><a href="/ZPWZ/FindJobById?c1=18&c2=30">工艺工程师</a><a href="/ZPWZ/FindJobById?c1=18&c2=31">家用电器/数码产品研发</a><a href="/ZPWZ/FindJobById?c1=18&c2=32">仪器/仪表/计量分析师</a><a href="/ZPWZ/FindJobById?c1=18&c2=33">测试工程师</a><a href="/ZPWZ/FindJobById?c1=18&c2=34">其他</a></dd>
                                    <div class="clear"></div>
                                </dl></div>
                                <div class="r"></div>
                            </div>
                        </div>
                    </li><li class="">
                        <a class="lstLnk" href="javascript:void(0)"><!--/search/a2/-->
                            <p class="lnk">销售/客服/技术支持</p> <b class="jpFntWes arr"></b>
                        </a>
                        <div  class="posBox"  style="display:block;">
                            <div class="posJobSort">
                                <div  class="l"><dl>
                                    <dt>
                                        <a href="/ZPWZ/FindJobById?c1=19&c2=0">销售管理</a>
                                    </dt>
                                    <dd><a href="/ZPWZ/FindJobById?c1=19&c2=10">销售管理</a><a href="/ZPWZ/FindJobById?c1=19&c2=11">销售总监</a><a href="/ZPWZ/FindJobById?c1=19&c2=12">销售经理</a><a href="/ZPWZ/FindJobById?c1=19&c2=13">销售主管</a><a href="/ZPWZ/FindJobById?c1=19&c2=14">业务拓展主管/经理</a><a href="/ZPWZ/FindJobById?c1=19&c2=15">渠道/分销总监</a><a href="/ZPWZ/FindJobById?c1=19&c2=16">渠道/分销经理</a><a href="/ZPWZ/FindJobById?c1=19&c2=17">分销主管</a><a href="/ZPWZ/FindJobById?c1=19&c2=18">大客户经理</a><a href="/ZPWZ/FindJobById?c1=19&c2=19">客户经理/主管</a><a href="/ZPWZ/FindJobById?c1=19&c2=20">区域销售总监</a><a href="/ZPWZ/FindJobById?c1=19&c2=21">区域销售经理</a><a href="/ZPWZ/FindJobById?c1=19&c2=22">团购经理/主管</a><a href="/ZPWZ/FindJobById?c1=19&c2=23">其他</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/ZPWZ/FindJobById?c1=20&c2=0">销售人员</a>
                                    </dt>
                                    <dd><a href="/ZPWZ/FindJobById?c1=20&c2=10">销售人员</a><a href="/ZPWZ/FindJobById?c1=20&c2=11">销售代表</a><a href="/ZPWZ/FindJobById?c1=20&c2=12">渠道/分销专员</a><a href="/ZPWZ/FindJobById?c1=20&c2=13">客户代表</a><a href="/ZPWZ/FindJobById?c1=20&c2=14">销售工程师</a><a href="/ZPWZ/FindJobById?c1=20&c2=15">电话销售</a><a href="/ZPWZ/FindJobById?c1=20&c2=16">团购业务员</a><a href="/ZPWZ/FindJobById?c1=20&c2=17">经销商</a><a href="/ZPWZ/FindJobById?c1=20&c2=18">其他</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/ZPWZ/FindJobById?c1=21&c2=0">销售行政及商务</a>
                                    </dt>
                                    <dd><a href="/ZPWZ/FindJobById?c1=21&c2=10">销售行政及商务</a><a href="/ZPWZ/FindJobById?c1=21&c2=11">销售行政经理/主管</a><a href="/ZPWZ/FindJobById?c1=21&c2=12">销售行政专员/助理</a><a href="/ZPWZ/FindJobById?c1=21&c2=13">业务分析经理/主管</a><a href="/ZPWZ/FindJobById?c1=21&c2=14">业务分析专员/助理</a><a href="/ZPWZ/FindJobById?c1=21&c2=15">商务经理</a><a href="/ZPWZ/FindJobById?c1=21&c2=16">商务主管/专员</a><a href="/ZPWZ/FindJobById?c1=21&c2=17">商务助理</a><a href="/ZPWZ/FindJobById?c1=21&c2=18">销售助理</a><a href="/ZPWZ/FindJobById?c1=21&c2=19">其他</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/ZPWZ/FindJobById?c1=22&c2=0">客服及技术支持</a>
                                    </dt>
                                    <dd><a href="/ZPWZ/FindJobById?c1=22&c2=10">客服及技术支持</a><a href="/ZPWZ/FindJobById?c1=22&c2=11">客服总监(非技术)</a><a href="/ZPWZ/FindJobById?c1=22&c2=12">客服经理(非技术)</a><a href="/ZPWZ/FindJobById?c1=22&c2=13">客服主管(非技术)</a><a href="/ZPWZ/FindJobById?c1=22&c2=14">客服专员/助理(非技术)</a><a href="/ZPWZ/FindJobById?c1=22&c2=15">客户关系经理/主管</a><a href="/ZPWZ/FindJobById?c1=22&c2=16">投诉专员</a><a href="/ZPWZ/FindJobById?c1=22&c2=17">售前/售后技术支持经理</a><a href="/ZPWZ/FindJobById?c1=22&c2=18">售前/售后技术支持主管</a><a href="/ZPWZ/FindJobById?c1=22&c2=19">售前/售后技术支持工程师</a><a href="/ZPWZ/FindJobById?c1=22&c2=20">咨询热线/呼叫中心服务人员</a><a href="/ZPWZ/FindJobById?c1=22&c2=21">VIP专员</a><a href="/ZPWZ/FindJobById?c1=22&c2=22">其他</a></dd>
                                    <div class="clear"></div>
                                </dl></div>
                                <div class="r"></div>
                            </div>
                        </div>
                    </li><li class="">
                        <a class="lstLnk" href="javascript:void(0)"><!--/search/a3/-->
                            <p class="lnk">会计/金融/银行/保险</p> <b class="jpFntWes arr"></b>
                        </a>
                        <div  class="posBox"  style="display:block;">
                            <div class="posJobSort">
                                <div  class="l"><dl>
                                    <dt>
                                        <a href="/ZPWZ/FindJobById?c1=23&c2=0">财务/审计/税务</a>
                                    </dt>
                                    <dd><a href="/ZPWZ/FindJobById?c1=23&c2=10">财务/审计/税务</a><a href="/ZPWZ/FindJobById?c1=23&c2=11">首席财务官 CFO</a><a href="/ZPWZ/FindJobById?c1=23&c2=12">财务总监</a><a href="/ZPWZ/FindJobById?c1=23&c2=13">财务经理</a><a href="/ZPWZ/FindJobById?c1=23&c2=14">财务顾问</a><a href="/ZPWZ/FindJobById?c1=23&c2=15">财务主管/总帐主管</a><a href="/ZPWZ/FindJobById?c1=23&c2=16">会计经理/会计主管</a><a href="/ZPWZ/FindJobById?c1=23&c2=17">会计</a><a href="/ZPWZ/FindJobById?c1=23&c2=18">出纳员</a><a href="/ZPWZ/FindJobById?c1=23&c2=19">财务/会计助理</a><a href="/ZPWZ/FindJobById?c1=23&c2=20">会计文员</a><a href="/ZPWZ/FindJobById?c1=23&c2=21">固定资产会计</a><a href="/ZPWZ/FindJobById?c1=23&c2=22">财务分析经理/主管</a><a href="/ZPWZ/FindJobById?c1=23&c2=23">财务分析员</a><a href="/ZPWZ/FindJobById?c1=23&c2=24">成本经理/成本主管</a><a href="/ZPWZ/FindJobById?c1=23&c2=25">成本管理员</a><a href="/ZPWZ/FindJobById?c1=23&c2=26">资金经理/主管</a><a href="/ZPWZ/FindJobById?c1=23&c2=27">资金专员</a><a href="/ZPWZ/FindJobById?c1=23&c2=28">审计经理/主管</a><a href="/ZPWZ/FindJobById?c1=23&c2=29">审计专员/助理</a><a href="/ZPWZ/FindJobById?c1=23&c2=30">税务经理/税务主管</a><a href="/ZPWZ/FindJobById?c1=23&c2=31">税务专员/助理</a><a href="/ZPWZ/FindJobById?c1=23&c2=32">统计员</a><a href="/ZPWZ/FindJobById?c1=23&c2=33">其他</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/ZPWZ/FindJobById?c1=24&c2=0">金融/证券/期货/投资</a>
                                    </dt>
                                    <dd><a href="/ZPWZ/FindJobById?c1=24&c2=10">金融/证券/期货/投资</a><a href="/ZPWZ/FindJobById?c1=24&c2=11">证券/期货/外汇经纪人</a><a href="/ZPWZ/FindJobById?c1=24&c2=12">证券分析师</a><a href="/ZPWZ/FindJobById?c1=24&c2=13">股票/期货操盘手</a><a href="/ZPWZ/FindJobById?c1=24&c2=14">金融/经济研究员</a><a href="/ZPWZ/FindJobById?c1=24&c2=15">投资/基金项目经理</a><a href="/ZPWZ/FindJobById?c1=24&c2=16">投资/理财顾问</a><a href="/ZPWZ/FindJobById?c1=24&c2=17">投资银行业务</a><a href="/ZPWZ/FindJobById?c1=24&c2=18">融资经理/融资主管</a><a href="/ZPWZ/FindJobById?c1=24&c2=19">融资专员</a><a href="/ZPWZ/FindJobById?c1=24&c2=20">拍卖师</a><a href="/ZPWZ/FindJobById?c1=24&c2=21">其他</a><a href="/ZPWZ/FindJobById?c1=24&c2=22">高级证券分析师</a><a href="/ZPWZ/FindJobById?c1=24&c2=23">理财总监</a><a href="/ZPWZ/FindJobById?c1=24&c2=24">理财经理</a><a href="/ZPWZ/FindJobById?c1=24&c2=25">融资总监</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/ZPWZ/FindJobById?c1=25&c2=0">银行</a>
                                    </dt>
                                    <dd><a href="/ZPWZ/FindJobById?c1=25&c2=10">银行</a><a href="/ZPWZ/FindJobById?c1=25&c2=11">行长/副行长</a><a href="/ZPWZ/FindJobById?c1=25&c2=12">个人业务部门经理/主管</a><a href="/ZPWZ/FindJobById?c1=25&c2=13">个人业务客户经理</a><a href="/ZPWZ/FindJobById?c1=25&c2=14">公司业务部门经理/主管</a><a href="/ZPWZ/FindJobById?c1=25&c2=15">公司业务客户经理</a><a href="/ZPWZ/FindJobById?c1=25&c2=16">综合业务经理/主管</a><a href="/ZPWZ/FindJobById?c1=25&c2=17">综合业务专员</a><a href="/ZPWZ/FindJobById?c1=25&c2=18">资产评估/分析</a><a href="/ZPWZ/FindJobById?c1=25&c2=19">风险控制</a><a href="/ZPWZ/FindJobById?c1=25&c2=20">信贷管理</a><a href="/ZPWZ/FindJobById?c1=25&c2=21">信审核查</a><a href="/ZPWZ/FindJobById?c1=25&c2=22">进出口/信用证结算</a><a href="/ZPWZ/FindJobById?c1=25&c2=23">外汇交易</a><a href="/ZPWZ/FindJobById?c1=25&c2=24">清算人员</a><a href="/ZPWZ/FindJobById?c1=25&c2=25">高级客户经理/客户经理</a><a href="/ZPWZ/FindJobById?c1=25&c2=26">客户主管/专员</a><a href="/ZPWZ/FindJobById?c1=25&c2=27">营业部大堂经理</a><a href="/ZPWZ/FindJobById?c1=25&c2=28">银行柜员</a><a href="/ZPWZ/FindJobById?c1=25&c2=29">银行卡、电子银行业务推广</a><a href="/ZPWZ/FindJobById?c1=25&c2=30">其他</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/ZPWZ/FindJobById?c1=26&c2=0">保险</a>
                                    </dt>
                                    <dd><a href="/ZPWZ/FindJobById?c1=26&c2=10">保险</a><a href="/ZPWZ/FindJobById?c1=26&c2=11">保险精算师</a><a href="/ZPWZ/FindJobById?c1=26&c2=12">保险产品开发/项目策划</a><a href="/ZPWZ/FindJobById?c1=26&c2=13">保险业务经理/主管</a><a href="/ZPWZ/FindJobById?c1=26&c2=14">保险代理/经纪人/客户经理</a><a href="/ZPWZ/FindJobById?c1=26&c2=15">理财顾问/财务规划师</a><a href="/ZPWZ/FindJobById?c1=26&c2=16">储备经理人</a><a href="/ZPWZ/FindJobById?c1=26&c2=17">保险核保</a><a href="/ZPWZ/FindJobById?c1=26&c2=18">保险理赔</a><a href="/ZPWZ/FindJobById?c1=26&c2=19">保险客户服务/续期管理</a><a href="/ZPWZ/FindJobById?c1=26&c2=20">保险培训师</a><a href="/ZPWZ/FindJobById?c1=26&c2=21">保险内勤</a><a href="/ZPWZ/FindJobById?c1=26&c2=22">契约管理</a><a href="/ZPWZ/FindJobById?c1=26&c2=23">其他</a></dd>
                                    <div class="clear"></div>
                                </dl></div>
                                <div class="r"></div>
                            </div>
                        </div>
                    </li><li class="">
                        <a class="lstLnk" href="javascript:void(0)"><!--/search/a4/-->
                            <p class="lnk">生产/营运/采购/物流</p> <b class="jpFntWes arr"></b>
                        </a>
                        <div  class="posBox"  style="display:block;">
                            <div class="posJobSort">
                                <div  class="l"><dl>
                                    <dt>
                                        <a href="/ZPWZ/FindJobById?c1=27&c2=0">生产/营运</a>
                                    </dt>
                                    <dd><a href="/ZPWZ/FindJobById?c1=27&c2=10">生产/营运</a><a href="/ZPWZ/FindJobById?c1=27&c2=11">工厂经理/厂长</a><a href="/ZPWZ/FindJobById?c1=27&c2=12">总工程师/副总工程师</a><a href="/ZPWZ/FindJobById?c1=27&c2=13">项目总监</a><a href="/ZPWZ/FindJobById?c1=27&c2=14">项目经理/主管</a><a href="/ZPWZ/FindJobById?c1=27&c2=15">项目工程师</a><a href="/ZPWZ/FindJobById?c1=27&c2=16">营运经理</a><a href="/ZPWZ/FindJobById?c1=27&c2=17">营运主管</a><a href="/ZPWZ/FindJobById?c1=27&c2=18">生产总监</a><a href="/ZPWZ/FindJobById?c1=27&c2=19">生产经理/车间主任</a><a href="/ZPWZ/FindJobById?c1=27&c2=20">生产计划/物料管理(PMC)</a><a href="/ZPWZ/FindJobById?c1=27&c2=21">生产主管/督导/领班/组长</a><a href="/ZPWZ/FindJobById?c1=27&c2=22">生产文员</a><a href="/ZPWZ/FindJobById?c1=27&c2=23">化验员</a><a href="/ZPWZ/FindJobById?c1=27&c2=24">其他</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/ZPWZ/FindJobById?c1=28&c2=0">质量/安全管理</a>
                                    </dt>
                                    <dd><a href="/ZPWZ/FindJobById?c1=28&c2=10">质量/安全管理</a><a href="/ZPWZ/FindJobById?c1=28&c2=11">质量管理/测试经理(QA/QC经理)</a><a href="/ZPWZ/FindJobById?c1=28&c2=12">质量管理/测试主管(QA/QC主管)</a><a href="/ZPWZ/FindJobById?c1=28&c2=13">质量管理/测试工程师(QA/QC工程师)</a><a href="/ZPWZ/FindJobById?c1=28&c2=14">质量检验员/测试员</a><a href="/ZPWZ/FindJobById?c1=28&c2=15">可靠度工程师</a><a href="/ZPWZ/FindJobById?c1=28&c2=16">故障分析工程师</a><a href="/ZPWZ/FindJobById?c1=28&c2=17">认证工程师/审核员</a><a href="/ZPWZ/FindJobById?c1=28&c2=18">体系工程师/审核员</a><a href="/ZPWZ/FindJobById?c1=28&c2=19">环境/健康/安全经理/主管（EHS）</a><a href="/ZPWZ/FindJobById?c1=28&c2=20">环境/健康/安全工程师（EHS）</a><a href="/ZPWZ/FindJobById?c1=28&c2=21">供应商管理</a><a href="/ZPWZ/FindJobById?c1=28&c2=22">采购材料、设备质量管理</a><a href="/ZPWZ/FindJobById?c1=28&c2=23">其他</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/ZPWZ/FindJobById?c1=29&c2=0">工程/机械/能源</a>
                                    </dt>
                                    <dd><a href="/ZPWZ/FindJobById?c1=29&c2=10">工程/机械/能源</a><a href="/ZPWZ/FindJobById?c1=29&c2=11">技术研发经理/主管</a><a href="/ZPWZ/FindJobById?c1=29&c2=12">技术研发工程师</a><a href="/ZPWZ/FindJobById?c1=29&c2=13">产品工艺/制程工程师</a><a href="/ZPWZ/FindJobById?c1=29&c2=14">产品规划工程师</a><a href="/ZPWZ/FindJobById?c1=29&c2=15">实验室负责人/工程师</a><a href="/ZPWZ/FindJobById?c1=29&c2=16">工程/设备经理</a><a href="/ZPWZ/FindJobById?c1=29&c2=17">工程/设备主管</a><a href="/ZPWZ/FindJobById?c1=29&c2=18">工程/设备工程师</a><a href="/ZPWZ/FindJobById?c1=29&c2=19">工程/机械绘图员</a><a href="/ZPWZ/FindJobById?c1=29&c2=20">工业工程师</a><a href="/ZPWZ/FindJobById?c1=29&c2=21">材料工程师</a><a href="/ZPWZ/FindJobById?c1=29&c2=22">机械工程师</a><a href="/ZPWZ/FindJobById?c1=29&c2=23">结构工程师</a><a href="/ZPWZ/FindJobById?c1=29&c2=24">模具工程师</a><a href="/ZPWZ/FindJobById?c1=29&c2=25">机电工程师</a><a href="/ZPWZ/FindJobById?c1=29&c2=26">维修经理/主管</a><a href="/ZPWZ/FindJobById?c1=29&c2=27">维修工程师</a><a href="/ZPWZ/FindJobById?c1=29&c2=28">装配工程师/技师</a><a href="/ZPWZ/FindJobById?c1=29&c2=29">铸造/锻造工程师/技师</a><a href="/ZPWZ/FindJobById?c1=29&c2=30">注塑工程师/技师</a><a href="/ZPWZ/FindJobById?c1=29&c2=31">焊接工程师/技师</a><a href="/ZPWZ/FindJobById?c1=29&c2=32">夹具工程师/技师</a><a href="/ZPWZ/FindJobById?c1=29&c2=33">CNC工程师</a><a href="/ZPWZ/FindJobById?c1=29&c2=34">冲压工程师/技师</a><a href="/ZPWZ/FindJobById?c1=29&c2=35">锅炉工程师/技师</a><a href="/ZPWZ/FindJobById?c1=29&c2=36">电力工程师/技术员</a><a href="/ZPWZ/FindJobById?c1=29&c2=37">光源与照明工程</a><a href="/ZPWZ/FindJobById?c1=29&c2=38">汽车/摩托车工程师</a><a href="/ZPWZ/FindJobById?c1=29&c2=39">船舶工程师</a><a href="/ZPWZ/FindJobById?c1=29&c2=40">轨道交通工程师/技术员</a><a href="/ZPWZ/FindJobById?c1=29&c2=41">飞机维修机械师</a><a href="/ZPWZ/FindJobById?c1=29&c2=42">飞行器设计与制造</a><a href="/ZPWZ/FindJobById?c1=29&c2=43">水利/水电工程师</a><a href="/ZPWZ/FindJobById?c1=29&c2=44">石油天然气技术人员</a><a href="/ZPWZ/FindJobById?c1=29&c2=45">矿产勘探/地质勘测工程师</a><a href="/ZPWZ/FindJobById?c1=29&c2=46">其他</a><a href="/ZPWZ/FindJobById?c1=29&c2=47">研发总监</a><a href="/ZPWZ/FindJobById?c1=29&c2=48">研发经理</a><a href="/ZPWZ/FindJobById?c1=29&c2=49">研发主管</a><a href="/ZPWZ/FindJobById?c1=29&c2=50">研发工程师</a><a href="/ZPWZ/FindJobById?c1=29&c2=51">助理研发工程师</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/ZPWZ/FindJobById?c1=30&c2=0">汽车</a>
                                    </dt>
                                    <dd><a href="/ZPWZ/FindJobById?c1=30&c2=10">汽车</a><a href="/ZPWZ/FindJobById?c1=30&c2=11">汽车机构工程师</a><a href="/ZPWZ/FindJobById?c1=30&c2=12">汽车设计工程师</a><a href="/ZPWZ/FindJobById?c1=30&c2=13">汽车电子工程师</a><a href="/ZPWZ/FindJobById?c1=30&c2=14">汽车质量管理</a><a href="/ZPWZ/FindJobById?c1=30&c2=15">汽车安全性能工程师</a><a href="/ZPWZ/FindJobById?c1=30&c2=16">汽车装配工艺工程师</a><a href="/ZPWZ/FindJobById?c1=30&c2=17">汽车修理人员</a><a href="/ZPWZ/FindJobById?c1=30&c2=18">4S店经理/维修站经理</a><a href="/ZPWZ/FindJobById?c1=30&c2=19">汽车销售/经纪人</a><a href="/ZPWZ/FindJobById?c1=30&c2=20">二手车评估师</a><a href="/ZPWZ/FindJobById?c1=30&c2=21">其他</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/ZPWZ/FindJobById?c1=31&c2=0">技工</a>
                                    </dt>
                                    <dd><a href="/ZPWZ/FindJobById?c1=31&c2=10">技工</a><a href="/ZPWZ/FindJobById?c1=31&c2=11">钳工/机修工/钣金工</a><a href="/ZPWZ/FindJobById?c1=31&c2=12">电焊工/铆焊工</a><a href="/ZPWZ/FindJobById?c1=31&c2=13">车工/磨工/铣工/冲压工/锣工</a><a href="/ZPWZ/FindJobById?c1=31&c2=14">切割技工</a><a href="/ZPWZ/FindJobById?c1=31&c2=15">模具工</a><a href="/ZPWZ/FindJobById?c1=31&c2=16">电工</a><a href="/ZPWZ/FindJobById?c1=31&c2=17">叉车工</a><a href="/ZPWZ/FindJobById?c1=31&c2=18">空调工/电梯工/锅炉工</a><a href="/ZPWZ/FindJobById?c1=31&c2=19">水工/木工/漆工</a><a href="/ZPWZ/FindJobById?c1=31&c2=20">普工/操作工</a><a href="/ZPWZ/FindJobById?c1=31&c2=21">裁缝印纺熨烫</a><a href="/ZPWZ/FindJobById?c1=31&c2=22">汽车修理工</a><a href="/ZPWZ/FindJobById?c1=31&c2=23">其他</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/ZPWZ/FindJobById?c1=32&c2=0">服装/纺织/皮革</a>
                                    </dt>
                                    <dd><a href="/ZPWZ/FindJobById?c1=32&c2=10">服装/纺织/皮革</a><a href="/ZPWZ/FindJobById?c1=32&c2=11">服装/纺织设计总监</a><a href="/ZPWZ/FindJobById?c1=32&c2=12">服装/纺织设计</a><a href="/ZPWZ/FindJobById?c1=32&c2=13">面料辅料开发</a><a href="/ZPWZ/FindJobById?c1=32&c2=14">面料辅料采购</a><a href="/ZPWZ/FindJobById?c1=32&c2=15">服装/纺织/皮革跟单</a><a href="/ZPWZ/FindJobById?c1=32&c2=16">质量管理/验货员(QA/QC)</a><a href="/ZPWZ/FindJobById?c1=32&c2=17">板房/楦头/底格出格师</a><a href="/ZPWZ/FindJobById?c1=32&c2=18">打样/制版</a><a href="/ZPWZ/FindJobById?c1=32&c2=19">电脑放码员</a><a href="/ZPWZ/FindJobById?c1=32&c2=20">纸样师/车板工</a><a href="/ZPWZ/FindJobById?c1=32&c2=21">裁床</a><a href="/ZPWZ/FindJobById?c1=32&c2=22">其他</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/ZPWZ/FindJobById?c1=33&c2=0">采购</a>
                                    </dt>
                                    <dd><a href="/ZPWZ/FindJobById?c1=33&c2=10">采购</a><a href="/ZPWZ/FindJobById?c1=33&c2=11">采购总监</a><a href="/ZPWZ/FindJobById?c1=33&c2=12">采购经理</a><a href="/ZPWZ/FindJobById?c1=33&c2=13">采购主管</a><a href="/ZPWZ/FindJobById?c1=33&c2=14">采购员</a><a href="/ZPWZ/FindJobById?c1=33&c2=15">采购助理</a><a href="/ZPWZ/FindJobById?c1=33&c2=16">买手</a><a href="/ZPWZ/FindJobById?c1=33&c2=17">供应商开发</a><a href="/ZPWZ/FindJobById?c1=33&c2=18">其他</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/ZPWZ/FindJobById?c1=34&c2=0">贸易</a>
                                    </dt>
                                    <dd><a href="/ZPWZ/FindJobById?c1=34&c2=10">贸易</a><a href="/ZPWZ/FindJobById?c1=34&c2=11">贸易/进出口经理/主管</a><a href="/ZPWZ/FindJobById?c1=34&c2=12">贸易/进出口专员/助理</a><a href="/ZPWZ/FindJobById?c1=34&c2=13">国内贸易人员</a><a href="/ZPWZ/FindJobById?c1=34&c2=14">业务跟单经理</a><a href="/ZPWZ/FindJobById?c1=34&c2=15">高级业务跟单</a><a href="/ZPWZ/FindJobById?c1=34&c2=16">业务跟单</a><a href="/ZPWZ/FindJobById?c1=34&c2=17">助理业务跟单</a><a href="/ZPWZ/FindJobById?c1=34&c2=18">其他</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/ZPWZ/FindJobById?c1=35&c2=0">物流/仓储</a>
                                    </dt>
                                    <dd><a href="/ZPWZ/FindJobById?c1=35&c2=10">物流/仓储</a><a href="/ZPWZ/FindJobById?c1=35&c2=11">物流总监</a><a href="/ZPWZ/FindJobById?c1=35&c2=12">物流经理</a><a href="/ZPWZ/FindJobById?c1=35&c2=13">物流主管</a><a href="/ZPWZ/FindJobById?c1=35&c2=14">物流专员/助理</a><a href="/ZPWZ/FindJobById?c1=35&c2=15">供应链总监</a><a href="/ZPWZ/FindJobById?c1=35&c2=16">供应链经理</a><a href="/ZPWZ/FindJobById?c1=35&c2=17">供应链主管/专员</a><a href="/ZPWZ/FindJobById?c1=35&c2=18">物料经理</a><a href="/ZPWZ/FindJobById?c1=35&c2=19">物料主管/专员</a><a href="/ZPWZ/FindJobById?c1=35&c2=20">仓库经理/主管</a><a href="/ZPWZ/FindJobById?c1=35&c2=21">仓库管理员</a><a href="/ZPWZ/FindJobById?c1=35&c2=22">运输经理/主管</a><a href="/ZPWZ/FindJobById?c1=35&c2=23">项目经理/主管</a><a href="/ZPWZ/FindJobById?c1=35&c2=24">货运代理</a><a href="/ZPWZ/FindJobById?c1=35&c2=25">集装箱业务</a><a href="/ZPWZ/FindJobById?c1=35&c2=26">海关事务管理</a><a href="/ZPWZ/FindJobById?c1=35&c2=27">报关员</a><a href="/ZPWZ/FindJobById?c1=35&c2=28">单证员</a><a href="/ZPWZ/FindJobById?c1=35&c2=29">船务/空运陆运操作</a><a href="/ZPWZ/FindJobById?c1=35&c2=30">快递员</a><a href="/ZPWZ/FindJobById?c1=35&c2=31">调度员</a><a href="/ZPWZ/FindJobById?c1=35&c2=32">理货员</a><a href="/ZPWZ/FindJobById?c1=35&c2=33">其他</a></dd>
                                    <div class="clear"></div>
                                </dl></div>
                                <div class="r"></div>
                            </div>
                        </div>
                    </li><li class="">
                        <a class="lstLnk" href="javascript:void(0)"><!--/search/a5/-->
                            <p class="lnk">生物/制药/医疗/护理</p> <b class="jpFntWes arr"></b>
                        </a>
                        <div  class="posBox"  style="display:block;">
                            <div class="posJobSort">
                                <div  class="l"><dl>
                                    <dt>
                                        <a href="/ZPWZ/FindJobById?c1=36&c2=0">生物/制药/医疗器械</a>
                                    </dt>
                                    <dd><a href="/ZPWZ/FindJobById?c1=36&c2=10">生物/制药/医疗器械</a><a href="/ZPWZ/FindJobById?c1=36&c2=11">生物工程/生物制药</a><a href="/ZPWZ/FindJobById?c1=36&c2=12">化学分析测试员</a><a href="/ZPWZ/FindJobById?c1=36&c2=13">医药技术研发管理人员</a><a href="/ZPWZ/FindJobById?c1=36&c2=14">医药技术研发人员</a><a href="/ZPWZ/FindJobById?c1=36&c2=15">临床研究员</a><a href="/ZPWZ/FindJobById?c1=36&c2=16">临床协调员</a><a href="/ZPWZ/FindJobById?c1=36&c2=17">临床数据分析员</a><a href="/ZPWZ/FindJobById?c1=36&c2=18">药品注册</a><a href="/ZPWZ/FindJobById?c1=36&c2=19">药品生产/质量管理</a><a href="/ZPWZ/FindJobById?c1=36&c2=20">药品市场推广经理</a><a href="/ZPWZ/FindJobById?c1=36&c2=21">药品市场推广主管/专员</a><a href="/ZPWZ/FindJobById?c1=36&c2=22">医药招商</a><a href="/ZPWZ/FindJobById?c1=36&c2=23">政府事务管理</a><a href="/ZPWZ/FindJobById?c1=36&c2=24">招投标管理</a><a href="/ZPWZ/FindJobById?c1=36&c2=25">医药销售经理/主管</a><a href="/ZPWZ/FindJobById?c1=36&c2=26">医药销售代表</a><a href="/ZPWZ/FindJobById?c1=36&c2=27">医疗设备注册</a><a href="/ZPWZ/FindJobById?c1=36&c2=28">医疗设备生产/质量管理</a><a href="/ZPWZ/FindJobById?c1=36&c2=29">医疗器械市场推广</a><a href="/ZPWZ/FindJobById?c1=36&c2=30">医疗器械销售</a><a href="/ZPWZ/FindJobById?c1=36&c2=31">医疗器械维修人员</a><a href="/ZPWZ/FindJobById?c1=36&c2=32">其他</a><a href="/ZPWZ/FindJobById?c1=36&c2=33">研发总监</a><a href="/ZPWZ/FindJobById?c1=36&c2=34">研发经理</a><a href="/ZPWZ/FindJobById?c1=36&c2=35">研发主管</a><a href="/ZPWZ/FindJobById?c1=36&c2=36">研发工程师</a><a href="/ZPWZ/FindJobById?c1=36&c2=37">助理研发工程师</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/ZPWZ/FindJobById?c1=37&c2=0">化工</a>
                                    </dt>
                                    <dd><a href="/ZPWZ/FindJobById?c1=37&c2=10">化工</a><a href="/ZPWZ/FindJobById?c1=37&c2=11">化工技术应用/化工工程师</a><a href="/ZPWZ/FindJobById?c1=37&c2=12">化工实验室研究员/技术员</a><a href="/ZPWZ/FindJobById?c1=37&c2=13">涂料研发工程师</a><a href="/ZPWZ/FindJobById?c1=37&c2=14">配色技术员</a><a href="/ZPWZ/FindJobById?c1=37&c2=15">塑料工程师</a><a href="/ZPWZ/FindJobById?c1=37&c2=16">化妆品研发</a><a href="/ZPWZ/FindJobById?c1=37&c2=17">食品/饮料研发</a><a href="/ZPWZ/FindJobById?c1=37&c2=18">造纸研发</a><a href="/ZPWZ/FindJobById?c1=37&c2=19">其他</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/ZPWZ/FindJobById?c1=38&c2=0">医院/医疗/护理</a>
                                    </dt>
                                    <dd><a href="/ZPWZ/FindJobById?c1=38&c2=10">医院/医疗/护理</a><a href="/ZPWZ/FindJobById?c1=38&c2=11">医院管理人员</a><a href="/ZPWZ/FindJobById?c1=38&c2=12">内科医生</a><a href="/ZPWZ/FindJobById?c1=38&c2=13">外科医生</a><a href="/ZPWZ/FindJobById?c1=38&c2=14">专科医生</a><a href="/ZPWZ/FindJobById?c1=38&c2=15">牙科医生</a><a href="/ZPWZ/FindJobById?c1=38&c2=16">麻醉医生</a><a href="/ZPWZ/FindJobById?c1=38&c2=17">美容整形师</a><a href="/ZPWZ/FindJobById?c1=38&c2=18">理疗师</a><a href="/ZPWZ/FindJobById?c1=38&c2=19">中医科医生</a><a href="/ZPWZ/FindJobById?c1=38&c2=20">针灸、推拿</a><a href="/ZPWZ/FindJobById?c1=38&c2=21">儿科医生</a><a href="/ZPWZ/FindJobById?c1=38&c2=22">心理医生</a><a href="/ZPWZ/FindJobById?c1=38&c2=23">营养师</a><a href="/ZPWZ/FindJobById?c1=38&c2=24">药库主任/药剂师</a><a href="/ZPWZ/FindJobById?c1=38&c2=25">医药学检验</a><a href="/ZPWZ/FindJobById?c1=38&c2=26">公共卫生/疾病控制</a><a href="/ZPWZ/FindJobById?c1=38&c2=27">护理主任/护士长</a><a href="/ZPWZ/FindJobById?c1=38&c2=28">护士/护理人员</a><a href="/ZPWZ/FindJobById?c1=38&c2=29">兽医</a><a href="/ZPWZ/FindJobById?c1=38&c2=30">验光师</a><a href="/ZPWZ/FindJobById?c1=38&c2=31">其他</a></dd>
                                    <div class="clear"></div>
                                </dl></div>
                                <div class="r"></div>
                            </div>
                        </div>
                    </li><li class="">
                        <a class="lstLnk" href="javascript:void(0)"><!--/search/a6/-->
                            <p class="lnk">广告/市场/媒体/艺术</p> <b class="jpFntWes arr"></b>
                        </a>
                        <div  class="posBox"  style="display:block;">
                            <div class="posJobSort">
                                <div  class="l"><dl>
                                    <dt>
                                        <a href="/ZPWZ/FindJobById?c1=39&c2=0">广告</a>
                                    </dt>
                                    <dd><a href="/ZPWZ/FindJobById?c1=39&c2=10">广告</a><a href="/ZPWZ/FindJobById?c1=39&c2=11">广告客户总监/副总监</a><a href="/ZPWZ/FindJobById?c1=39&c2=12">广告客户经理</a><a href="/ZPWZ/FindJobById?c1=39&c2=13">广告客户主管/专员</a><a href="/ZPWZ/FindJobById?c1=39&c2=14">广告创意/设计经理</a><a href="/ZPWZ/FindJobById?c1=39&c2=15">广告创意总监</a><a href="/ZPWZ/FindJobById?c1=39&c2=16">广告创意/设计主管/专员</a><a href="/ZPWZ/FindJobById?c1=39&c2=17">美术指导</a><a href="/ZPWZ/FindJobById?c1=39&c2=18">文案/策划</a><a href="/ZPWZ/FindJobById?c1=39&c2=19">企业/业务发展经理</a><a href="/ZPWZ/FindJobById?c1=39&c2=20">企业策划人员</a><a href="/ZPWZ/FindJobById?c1=39&c2=21">其他</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/ZPWZ/FindJobById?c1=40&c2=0">公关/媒介</a>
                                    </dt>
                                    <dd><a href="/ZPWZ/FindJobById?c1=40&c2=10">公关/媒介</a><a href="/ZPWZ/FindJobById?c1=40&c2=11">公关经理</a><a href="/ZPWZ/FindJobById?c1=40&c2=12">公关主管</a><a href="/ZPWZ/FindJobById?c1=40&c2=13">公关专员</a><a href="/ZPWZ/FindJobById?c1=40&c2=14">会务/会展经理</a><a href="/ZPWZ/FindJobById?c1=40&c2=15">会务/会展主管</a><a href="/ZPWZ/FindJobById?c1=40&c2=16">会务/会展专员</a><a href="/ZPWZ/FindJobById?c1=40&c2=17">媒介经理</a><a href="/ZPWZ/FindJobById?c1=40&c2=18">媒介主管</a><a href="/ZPWZ/FindJobById?c1=40&c2=19">媒介专员</a><a href="/ZPWZ/FindJobById?c1=40&c2=20">公关/媒介助理</a><a href="/ZPWZ/FindJobById?c1=40&c2=21">媒介销售</a><a href="/ZPWZ/FindJobById?c1=40&c2=22">活动策划</a><a href="/ZPWZ/FindJobById?c1=40&c2=23">其他</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/ZPWZ/FindJobById?c1=41&c2=0">市场/营销</a>
                                    </dt>
                                    <dd><a href="/ZPWZ/FindJobById?c1=41&c2=10">市场/营销</a><a href="/ZPWZ/FindJobById?c1=41&c2=11">市场/营销/拓展总监</a><a href="/ZPWZ/FindJobById?c1=41&c2=12">市场/营销/拓展经理</a><a href="/ZPWZ/FindJobById?c1=41&c2=13">市场/营销/拓展主管</a><a href="/ZPWZ/FindJobById?c1=41&c2=14">市场/营销/拓展专员</a><a href="/ZPWZ/FindJobById?c1=41&c2=15">市场助理</a><a href="/ZPWZ/FindJobById?c1=41&c2=16">市场分析/调研人员</a><a href="/ZPWZ/FindJobById?c1=41&c2=17">产品/品牌经理</a><a href="/ZPWZ/FindJobById?c1=41&c2=18">产品/品牌主管</a><a href="/ZPWZ/FindJobById?c1=41&c2=19">产品/品牌专员</a><a href="/ZPWZ/FindJobById?c1=41&c2=20">市场通路经理/主管</a><a href="/ZPWZ/FindJobById?c1=41&c2=21">市场通路专员</a><a href="/ZPWZ/FindJobById?c1=41&c2=22">市场企划经理/主管</a><a href="/ZPWZ/FindJobById?c1=41&c2=23">市场企划专员</a><a href="/ZPWZ/FindJobById?c1=41&c2=24">促销经理</a><a href="/ZPWZ/FindJobById?c1=41&c2=25">促销主管/督导</a><a href="/ZPWZ/FindJobById?c1=41&c2=26">促销员/导购</a><a href="/ZPWZ/FindJobById?c1=41&c2=27">选址拓展/新店开发</a><a href="/ZPWZ/FindJobById?c1=41&c2=28">其他</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/ZPWZ/FindJobById?c1=42&c2=0">影视/媒体</a>
                                    </dt>
                                    <dd><a href="/ZPWZ/FindJobById?c1=42&c2=10">影视/媒体</a><a href="/ZPWZ/FindJobById?c1=42&c2=11">影视策划/制作人员</a><a href="/ZPWZ/FindJobById?c1=42&c2=12">导演/编导</a><a href="/ZPWZ/FindJobById?c1=42&c2=13">艺术/设计总监</a><a href="/ZPWZ/FindJobById?c1=42&c2=14">经纪人/星探</a><a href="/ZPWZ/FindJobById?c1=42&c2=15">演员/模特/主持人</a><a href="/ZPWZ/FindJobById?c1=42&c2=16">摄影师/摄像师</a><a href="/ZPWZ/FindJobById?c1=42&c2=17">后期制作</a><a href="/ZPWZ/FindJobById?c1=42&c2=18">音效师</a><a href="/ZPWZ/FindJobById?c1=42&c2=19">配音员</a><a href="/ZPWZ/FindJobById?c1=42&c2=20">放映经理/主管</a><a href="/ZPWZ/FindJobById?c1=42&c2=21">放映员</a><a href="/ZPWZ/FindJobById?c1=42&c2=22">化妆师/造型师</a><a href="/ZPWZ/FindJobById?c1=42&c2=23">其他</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/ZPWZ/FindJobById?c1=43&c2=0">写作/出版/印刷</a>
                                    </dt>
                                    <dd><a href="/ZPWZ/FindJobById?c1=43&c2=10">写作/出版/印刷</a><a href="/ZPWZ/FindJobById?c1=43&c2=11">总编/副总编</a><a href="/ZPWZ/FindJobById?c1=43&c2=12">编辑</a><a href="/ZPWZ/FindJobById?c1=43&c2=13">作家/撰稿人</a><a href="/ZPWZ/FindJobById?c1=43&c2=14">记者</a><a href="/ZPWZ/FindJobById?c1=43&c2=15">电话采编</a><a href="/ZPWZ/FindJobById?c1=43&c2=16">美术编辑</a><a href="/ZPWZ/FindJobById?c1=43&c2=17">排版设计</a><a href="/ZPWZ/FindJobById?c1=43&c2=18">校对/录入</a><a href="/ZPWZ/FindJobById?c1=43&c2=19">出版/发行</a><a href="/ZPWZ/FindJobById?c1=43&c2=20">电分操作员</a><a href="/ZPWZ/FindJobById?c1=43&c2=21">印刷排版/制版</a><a href="/ZPWZ/FindJobById?c1=43&c2=22">数码直印/菲林输出</a><a href="/ZPWZ/FindJobById?c1=43&c2=23">打稿机操作员</a><a href="/ZPWZ/FindJobById?c1=43&c2=24">调墨技师</a><a href="/ZPWZ/FindJobById?c1=43&c2=25">印刷机械机长</a><a href="/ZPWZ/FindJobById?c1=43&c2=26">晒版/拼版/装订/烫金技工</a><a href="/ZPWZ/FindJobById?c1=43&c2=27">其他</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/ZPWZ/FindJobById?c1=44&c2=0">艺术/设计</a>
                                    </dt>
                                    <dd><a href="/ZPWZ/FindJobById?c1=44&c2=10">艺术/设计</a><a href="/ZPWZ/FindJobById?c1=44&c2=11">平面设计总监</a><a href="/ZPWZ/FindJobById?c1=44&c2=12">平面设计经理/主管</a><a href="/ZPWZ/FindJobById?c1=44&c2=13">平面设计师</a><a href="/ZPWZ/FindJobById?c1=44&c2=14">绘画</a><a href="/ZPWZ/FindJobById?c1=44&c2=15">动画/3D设计</a><a href="/ZPWZ/FindJobById?c1=44&c2=16">原画师</a><a href="/ZPWZ/FindJobById?c1=44&c2=17">展览/展示/店面设计</a><a href="/ZPWZ/FindJobById?c1=44&c2=18">多媒体设计</a><a href="/ZPWZ/FindJobById?c1=44&c2=19">包装设计</a><a href="/ZPWZ/FindJobById?c1=44&c2=20">工业/产品设计</a><a href="/ZPWZ/FindJobById?c1=44&c2=21">工艺品/珠宝设计鉴定</a><a href="/ZPWZ/FindJobById?c1=44&c2=22">家具/家居用品设计</a><a href="/ZPWZ/FindJobById?c1=44&c2=23">玩具设计</a><a href="/ZPWZ/FindJobById?c1=44&c2=24">其他</a></dd>
                                    <div class="clear"></div>
                                </dl></div>
                                <div class="r"></div>
                            </div>
                        </div>
                    </li><li class="">
                        <a class="lstLnk" href="javascript:void(0)"><!--/search/a7/-->
                            <p class="lnk">建筑/房地产</p> <b class="jpFntWes arr"></b>
                        </a>
                        <div  class="posBox"  style="display:block;">
                            <div class="posJobSort">
                                <div  class="l"><dl>
                                    <dt>
                                        <a href="/ZPWZ/FindJobById?c1=45&c2=0">建筑装潢/市政建设</a>
                                    </dt>
                                    <dd><a href="/ZPWZ/FindJobById?c1=45&c2=10">建筑装潢/市政建设</a><a href="/ZPWZ/FindJobById?c1=45&c2=11">高级建筑工程师/总工</a><a href="/ZPWZ/FindJobById?c1=45&c2=12">建筑工程师</a><a href="/ZPWZ/FindJobById?c1=45&c2=13">建筑设计师</a><a href="/ZPWZ/FindJobById?c1=45&c2=14">市政工程师</a><a href="/ZPWZ/FindJobById?c1=45&c2=15">结构/土木/土建工程师</a><a href="/ZPWZ/FindJobById?c1=45&c2=16">公路/桥梁/港口/隧道工程</a><a href="/ZPWZ/FindJobById?c1=45&c2=17">岩土工程</a><a href="/ZPWZ/FindJobById?c1=45&c2=18">楼宇自动化</a><a href="/ZPWZ/FindJobById?c1=45&c2=19">建筑机电工程师</a><a href="/ZPWZ/FindJobById?c1=45&c2=20">安防工程师</a><a href="/ZPWZ/FindJobById?c1=45&c2=21">给排水/暖通工程</a><a href="/ZPWZ/FindJobById?c1=45&c2=22">幕墙工程师</a><a href="/ZPWZ/FindJobById?c1=45&c2=23">规划与设计</a><a href="/ZPWZ/FindJobById?c1=45&c2=24">室内外装潢设计</a><a href="/ZPWZ/FindJobById?c1=45&c2=25">园艺/园林/景观设计</a><a href="/ZPWZ/FindJobById?c1=45&c2=26">测绘/测量</a><a href="/ZPWZ/FindJobById?c1=45&c2=27">建筑制图</a><a href="/ZPWZ/FindJobById?c1=45&c2=28">开发报建</a><a href="/ZPWZ/FindJobById?c1=45&c2=29">工程造价师/预结算经理</a><a href="/ZPWZ/FindJobById?c1=45&c2=30">预结算员</a><a href="/ZPWZ/FindJobById?c1=45&c2=31">建筑工程管理/项目经理</a><a href="/ZPWZ/FindJobById?c1=45&c2=32">建筑工程验收</a><a href="/ZPWZ/FindJobById?c1=45&c2=33">工程监理</a><a href="/ZPWZ/FindJobById?c1=45&c2=34">合同管理</a><a href="/ZPWZ/FindJobById?c1=45&c2=35">安全员</a><a href="/ZPWZ/FindJobById?c1=45&c2=36">资料员</a><a href="/ZPWZ/FindJobById?c1=45&c2=37">施工员</a><a href="/ZPWZ/FindJobById?c1=45&c2=38">其他</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/ZPWZ/FindJobById?c1=46&c2=0">房地产</a>
                                    </dt>
                                    <dd><a href="/ZPWZ/FindJobById?c1=46&c2=10">房地产</a><a href="/ZPWZ/FindJobById?c1=46&c2=11">房地产项目/开发/策划经理</a><a href="/ZPWZ/FindJobById?c1=46&c2=12">房地产项目/开发/策划主管/专员</a><a href="/ZPWZ/FindJobById?c1=46&c2=13">房产项目配套工程师</a><a href="/ZPWZ/FindJobById?c1=46&c2=14">房地产项目招投标</a><a href="/ZPWZ/FindJobById?c1=46&c2=15">房地产评估</a><a href="/ZPWZ/FindJobById?c1=46&c2=16">房地产中介/交易</a><a href="/ZPWZ/FindJobById?c1=46&c2=17">房地产销售经理/主管</a><a href="/ZPWZ/FindJobById?c1=46&c2=18">房地产销售人员</a><a href="/ZPWZ/FindJobById?c1=46&c2=19">其他</a><a href="/ZPWZ/FindJobById?c1=46&c2=20">项目总监</a><a href="/ZPWZ/FindJobById?c1=46&c2=21">项目经理</a><a href="/ZPWZ/FindJobById?c1=46&c2=22">项目主管</a><a href="/ZPWZ/FindJobById?c1=46&c2=23">质量管理</a><a href="/ZPWZ/FindJobById?c1=46&c2=24">研发总监</a><a href="/ZPWZ/FindJobById?c1=46&c2=25">研发经理</a><a href="/ZPWZ/FindJobById?c1=46&c2=26">研发主管</a><a href="/ZPWZ/FindJobById?c1=46&c2=27">研发工程师</a><a href="/ZPWZ/FindJobById?c1=46&c2=28">助理研发工程师</a><a href="/ZPWZ/FindJobById?c1=46&c2=29">设计总监</a><a href="/ZPWZ/FindJobById?c1=46&c2=30">设计经理</a><a href="/ZPWZ/FindJobById?c1=46&c2=31">设计主管</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/ZPWZ/FindJobById?c1=47&c2=0">物业管理</a>
                                    </dt>
                                    <dd><a href="/ZPWZ/FindJobById?c1=47&c2=10">物业管理</a><a href="/ZPWZ/FindJobById?c1=47&c2=11">高级物业顾问/物业顾问</a><a href="/ZPWZ/FindJobById?c1=47&c2=12">物业管理经理/主管</a><a href="/ZPWZ/FindJobById?c1=47&c2=13">物业管理专员/助理</a><a href="/ZPWZ/FindJobById?c1=47&c2=14">物业招商/租赁/租售</a><a href="/ZPWZ/FindJobById?c1=47&c2=15">物业设施管理人员</a><a href="/ZPWZ/FindJobById?c1=47&c2=16">物业机电工程师</a><a href="/ZPWZ/FindJobById?c1=47&c2=17">物业维修人员</a><a href="/ZPWZ/FindJobById?c1=47&c2=18">其他</a></dd>
                                    <div class="clear"></div>
                                </dl></div>
                                <div class="r"></div>
                            </div>
                        </div>
                    </li><li class="">
                        <a class="lstLnk" href="javascript:void(0)"><!--/search/a8/-->
                            <p class="lnk">人事/行政/高级管理</p> <b class="jpFntWes arr"></b>
                        </a>
                        <div  class="posBox"  style="display:block;">
                            <div class="posJobSort">
                                <div  class="l"><dl>
                                    <dt>
                                        <a href="/ZPWZ/FindJobById?c1=48&c2=0">人力资源</a>
                                    </dt>
                                    <dd><a href="/ZPWZ/FindJobById?c1=48&c2=10">人力资源</a><a href="/ZPWZ/FindJobById?c1=48&c2=11">人事总监</a><a href="/ZPWZ/FindJobById?c1=48&c2=12">人事经理</a><a href="/ZPWZ/FindJobById?c1=48&c2=13">人事主管</a><a href="/ZPWZ/FindJobById?c1=48&c2=14">人事专员</a><a href="/ZPWZ/FindJobById?c1=48&c2=15">人事助理</a><a href="/ZPWZ/FindJobById?c1=48&c2=16">招聘经理/主管</a><a href="/ZPWZ/FindJobById?c1=48&c2=17">招聘专员/助理</a><a href="/ZPWZ/FindJobById?c1=48&c2=18">薪资福利经理/主管</a><a href="/ZPWZ/FindJobById?c1=48&c2=19">薪资福利专员/助理</a><a href="/ZPWZ/FindJobById?c1=48&c2=20">绩效考核经理/主管</a><a href="/ZPWZ/FindJobById?c1=48&c2=21">绩效考核专员/助理</a><a href="/ZPWZ/FindJobById?c1=48&c2=22">培训经理/主管</a><a href="/ZPWZ/FindJobById?c1=48&c2=23">培训专员/助理/培训师</a><a href="/ZPWZ/FindJobById?c1=48&c2=24">企业文化/员工关系/工会管理</a><a href="/ZPWZ/FindJobById?c1=48&c2=25">人力资源信息系统专员</a><a href="/ZPWZ/FindJobById?c1=48&c2=26">其他</a><a href="/ZPWZ/FindJobById?c1=48&c2=27">人力资源总监</a><a href="/ZPWZ/FindJobById?c1=48&c2=28">人力资源经理</a><a href="/ZPWZ/FindJobById?c1=48&c2=29">人力资源主管</a><a href="/ZPWZ/FindJobById?c1=48&c2=30">人力资源专员</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/ZPWZ/FindJobById?c1=49&c2=0">高级管理</a>
                                    </dt>
                                    <dd><a href="/ZPWZ/FindJobById?c1=49&c2=10">高级管理</a><a href="/ZPWZ/FindJobById?c1=49&c2=11">首席执行官CEO/总裁/总经理</a><a href="/ZPWZ/FindJobById?c1=49&c2=12">首席运营官COO</a><a href="/ZPWZ/FindJobById?c1=49&c2=13">副总经理/副总裁</a><a href="/ZPWZ/FindJobById?c1=49&c2=14">合伙人</a><a href="/ZPWZ/FindJobById?c1=49&c2=15">总监/部门经理</a><a href="/ZPWZ/FindJobById?c1=49&c2=16">策略发展总监</a><a href="/ZPWZ/FindJobById?c1=49&c2=17">办事处首席代表</a><a href="/ZPWZ/FindJobById?c1=49&c2=18">办事处/分公司/分支机构经理</a><a href="/ZPWZ/FindJobById?c1=49&c2=19">总裁助理/总经理助理</a><a href="/ZPWZ/FindJobById?c1=49&c2=20">其他</a><a href="/ZPWZ/FindJobById?c1=49&c2=21">运营总监</a><a href="/ZPWZ/FindJobById?c1=49&c2=22">运营经理</a><a href="/ZPWZ/FindJobById?c1=49&c2=23">运营主管</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/ZPWZ/FindJobById?c1=50&c2=0">行政/后勤</a>
                                    </dt>
                                    <dd><a href="/ZPWZ/FindJobById?c1=50&c2=10">行政/后勤</a><a href="/ZPWZ/FindJobById?c1=50&c2=11">行政总监</a><a href="/ZPWZ/FindJobById?c1=50&c2=12">行政经理/主管/办公室主任</a><a href="/ZPWZ/FindJobById?c1=50&c2=13">行政专员/助理</a><a href="/ZPWZ/FindJobById?c1=50&c2=14">经理助理/秘书</a><a href="/ZPWZ/FindJobById?c1=50&c2=15">前台接待/总机/接待生</a><a href="/ZPWZ/FindJobById?c1=50&c2=16">后勤</a><a href="/ZPWZ/FindJobById?c1=50&c2=17">图书管理员/资料管理员</a><a href="/ZPWZ/FindJobById?c1=50&c2=18">电脑操作员/打字员</a><a href="/ZPWZ/FindJobById?c1=50&c2=19">其他</a></dd>
                                    <div class="clear"></div>
                                </dl></div>
                                <div class="r"></div>
                            </div>
                        </div>
                    </li><li class="">
                        <a class="lstLnk" href="javascript:void(0)"><!--/search/a9/-->
                            <p class="lnk">咨询/法律/教育/科研</p> <b class="jpFntWes arr"></b>
                        </a>
                        <div  class="posBox"  style="display:block;">
                            <div class="posJobSort">
                                <div  class="l"><dl>
                                    <dt>
                                        <a href="/ZPWZ/FindJobById?c1=51&c2=0">咨询/顾问</a>
                                    </dt>
                                    <dd><a href="/ZPWZ/FindJobById?c1=51&c2=10">咨询/顾问</a><a href="/ZPWZ/FindJobById?c1=51&c2=11">专业顾问</a><a href="/ZPWZ/FindJobById?c1=51&c2=12">咨询总监</a><a href="/ZPWZ/FindJobById?c1=51&c2=13">咨询经理</a><a href="/ZPWZ/FindJobById?c1=51&c2=14">专业培训师</a><a href="/ZPWZ/FindJobById?c1=51&c2=15">咨询员</a><a href="/ZPWZ/FindJobById?c1=51&c2=16">调研员</a><a href="/ZPWZ/FindJobById?c1=51&c2=17">猎头/人才中介</a><a href="/ZPWZ/FindJobById?c1=51&c2=18">情报信息分析人员</a><a href="/ZPWZ/FindJobById?c1=51&c2=19">其他</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/ZPWZ/FindJobById?c1=52&c2=0">律师/法务/合规</a>
                                    </dt>
                                    <dd><a href="/ZPWZ/FindJobById?c1=52&c2=10">律师/法务/合规</a><a href="/ZPWZ/FindJobById?c1=52&c2=11">律师/法律顾问</a><a href="/ZPWZ/FindJobById?c1=52&c2=12">律师助理</a><a href="/ZPWZ/FindJobById?c1=52&c2=13">法务经理</a><a href="/ZPWZ/FindJobById?c1=52&c2=14">法务主管/专员</a><a href="/ZPWZ/FindJobById?c1=52&c2=15">法务助理</a><a href="/ZPWZ/FindJobById?c1=52&c2=16">合规经理</a><a href="/ZPWZ/FindJobById?c1=52&c2=17">合规主管/专员</a><a href="/ZPWZ/FindJobById?c1=52&c2=18">知识产权/专利顾问/专员</a><a href="/ZPWZ/FindJobById?c1=52&c2=19">其他</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/ZPWZ/FindJobById?c1=53&c2=0">教师</a>
                                    </dt>
                                    <dd><a href="/ZPWZ/FindJobById?c1=53&c2=10">教师</a><a href="/ZPWZ/FindJobById?c1=53&c2=11">校长</a><a href="/ZPWZ/FindJobById?c1=53&c2=12">大学教授</a><a href="/ZPWZ/FindJobById?c1=53&c2=13">讲师/助教</a><a href="/ZPWZ/FindJobById?c1=53&c2=14">中学教师</a><a href="/ZPWZ/FindJobById?c1=53&c2=15">小学教师</a><a href="/ZPWZ/FindJobById?c1=53&c2=16">幼教</a><a href="/ZPWZ/FindJobById?c1=53&c2=17">院校教务管理人员</a><a href="/ZPWZ/FindJobById?c1=53&c2=18">兼职教师</a><a href="/ZPWZ/FindJobById?c1=53&c2=19">家教</a><a href="/ZPWZ/FindJobById?c1=53&c2=20">职业技术教师</a><a href="/ZPWZ/FindJobById?c1=53&c2=21">其他</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/ZPWZ/FindJobById?c1=54&c2=0">培训</a>
                                    </dt>
                                    <dd><a href="/ZPWZ/FindJobById?c1=54&c2=10">培训</a><a href="/ZPWZ/FindJobById?c1=54&c2=11">培训督导</a><a href="/ZPWZ/FindJobById?c1=54&c2=12">培训讲师</a><a href="/ZPWZ/FindJobById?c1=54&c2=13">培训策划</a><a href="/ZPWZ/FindJobById?c1=54&c2=14">培训产品开发</a><a href="/ZPWZ/FindJobById?c1=54&c2=15">培训/课程顾问</a><a href="/ZPWZ/FindJobById?c1=54&c2=16">培训助理</a><a href="/ZPWZ/FindJobById?c1=54&c2=17">其他</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/ZPWZ/FindJobById?c1=55&c2=0">科研人员</a>
                                    </dt>
                                    <dd><a href="/ZPWZ/FindJobById?c1=55&c2=10">科研人员</a><a href="/ZPWZ/FindJobById?c1=55&c2=11">科研管理人员</a><a href="/ZPWZ/FindJobById?c1=55&c2=12">科研人员</a></dd>
                                    <div class="clear"></div>
                                </dl></div>
                                <div class="r"></div>
                            </div>
                        </div>
                    </li><li class="">
                        <a class="lstLnk" href="javascript:void(0)"><!--/search/a10/-->
                            <p class="lnk">服务业</p> <b class="jpFntWes arr"></b>
                        </a>
                        <div  class="posBox"  style="display:block;">
                            <div class="posJobSort">
                                <div  class="l"><dl>
                                    <dt>
                                        <a href="/ZPWZ/FindJobById?c1=56&c2=0">餐饮/娱乐</a>
                                    </dt>
                                    <dd><a href="/ZPWZ/FindJobById?c1=56&c2=10">餐饮/娱乐</a><a href="/ZPWZ/FindJobById?c1=56&c2=11">餐饮/娱乐管理</a><a href="/ZPWZ/FindJobById?c1=56&c2=12">餐饮/娱乐领班/部长</a><a href="/ZPWZ/FindJobById?c1=56&c2=13">餐饮/娱乐服务员</a><a href="/ZPWZ/FindJobById?c1=56&c2=14">传菜主管/传菜员</a><a href="/ZPWZ/FindJobById?c1=56&c2=15">礼仪/迎宾</a><a href="/ZPWZ/FindJobById?c1=56&c2=16">司仪</a><a href="/ZPWZ/FindJobById?c1=56&c2=17">行政主厨/厨师长</a><a href="/ZPWZ/FindJobById?c1=56&c2=18">厨师/面点师</a><a href="/ZPWZ/FindJobById?c1=56&c2=19">调酒师/吧台员</a><a href="/ZPWZ/FindJobById?c1=56&c2=20">茶艺师</a><a href="/ZPWZ/FindJobById?c1=56&c2=21">其他</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/ZPWZ/FindJobById?c1=57&c2=0">酒店/旅游</a>
                                    </dt>
                                    <dd><a href="/ZPWZ/FindJobById?c1=57&c2=10">酒店/旅游</a><a href="/ZPWZ/FindJobById?c1=57&c2=11">酒店/宾馆经理</a><a href="/ZPWZ/FindJobById?c1=57&c2=12">酒店/宾馆营销</a><a href="/ZPWZ/FindJobById?c1=57&c2=13">宴会管理</a><a href="/ZPWZ/FindJobById?c1=57&c2=14">大堂经理</a><a href="/ZPWZ/FindJobById?c1=57&c2=15">宾客服务经理</a><a href="/ZPWZ/FindJobById?c1=57&c2=16">楼面经理</a><a href="/ZPWZ/FindJobById?c1=57&c2=17">前厅接待</a><a href="/ZPWZ/FindJobById?c1=57&c2=18">预定部主管</a><a href="/ZPWZ/FindJobById?c1=57&c2=19">预定员</a><a href="/ZPWZ/FindJobById?c1=57&c2=20">客房服务员/楼面服务员</a><a href="/ZPWZ/FindJobById?c1=57&c2=21">机场代表</a><a href="/ZPWZ/FindJobById?c1=57&c2=22">行李员</a><a href="/ZPWZ/FindJobById?c1=57&c2=23">管家部经理/主管</a><a href="/ZPWZ/FindJobById?c1=57&c2=24">清洁服务人员</a><a href="/ZPWZ/FindJobById?c1=57&c2=25">健身房服务</a><a href="/ZPWZ/FindJobById?c1=57&c2=26">旅游产品销售</a><a href="/ZPWZ/FindJobById?c1=57&c2=27">导游/旅行顾问</a><a href="/ZPWZ/FindJobById?c1=57&c2=28">行程管理/操作</a><a href="/ZPWZ/FindJobById?c1=57&c2=29">票务/订房服务</a><a href="/ZPWZ/FindJobById?c1=57&c2=30">签证专员</a><a href="/ZPWZ/FindJobById?c1=57&c2=31">其他</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/ZPWZ/FindJobById?c1=58&c2=0">美容/健身/体育</a>
                                    </dt>
                                    <dd><a href="/ZPWZ/FindJobById?c1=58&c2=10">美容/健身/体育</a><a href="/ZPWZ/FindJobById?c1=58&c2=11">美容顾问/化妆</a><a href="/ZPWZ/FindJobById?c1=58&c2=12">彩妆培训师</a><a href="/ZPWZ/FindJobById?c1=58&c2=13">专柜彩妆顾问(BA)</a><a href="/ZPWZ/FindJobById?c1=58&c2=14">美容助理/见席美容师</a><a href="/ZPWZ/FindJobById?c1=58&c2=15">瘦身顾问</a><a href="/ZPWZ/FindJobById?c1=58&c2=16">发型师</a><a href="/ZPWZ/FindJobById?c1=58&c2=17">发型助理/学徒</a><a href="/ZPWZ/FindJobById?c1=58&c2=18">美甲师</a><a href="/ZPWZ/FindJobById?c1=58&c2=19">按摩/足疗</a><a href="/ZPWZ/FindJobById?c1=58&c2=20">健身顾问/教练</a><a href="/ZPWZ/FindJobById?c1=58&c2=21">体育运动教练</a><a href="/ZPWZ/FindJobById?c1=58&c2=22">救生员</a><a href="/ZPWZ/FindJobById?c1=58&c2=23">瑜伽/舞蹈老师</a><a href="/ZPWZ/FindJobById?c1=58&c2=24">宠物护理/美容</a><a href="/ZPWZ/FindJobById?c1=58&c2=25">其他</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/ZPWZ/FindJobById?c1=59&c2=0">百货/连锁/零售服务</a>
                                    </dt>
                                    <dd><a href="/ZPWZ/FindJobById?c1=59&c2=10">百货/连锁/零售服务</a><a href="/ZPWZ/FindJobById?c1=59&c2=11">店长/卖场经理/楼面管理</a><a href="/ZPWZ/FindJobById?c1=59&c2=12">品类经理</a><a href="/ZPWZ/FindJobById?c1=59&c2=13">店员/营业员</a><a href="/ZPWZ/FindJobById?c1=59&c2=14">安防主管</a><a href="/ZPWZ/FindJobById?c1=59&c2=15">防损员/内保</a><a href="/ZPWZ/FindJobById?c1=59&c2=16">收银主管/收银员</a><a href="/ZPWZ/FindJobById?c1=59&c2=17">理货员/陈列员/收货员</a><a href="/ZPWZ/FindJobById?c1=59&c2=18">导购员</a><a href="/ZPWZ/FindJobById?c1=59&c2=19">西点师/面包糕点加工</a><a href="/ZPWZ/FindJobById?c1=59&c2=20">生鲜食品加工/处理</a><a href="/ZPWZ/FindJobById?c1=59&c2=21">熟食加工</a><a href="/ZPWZ/FindJobById?c1=59&c2=22">兼职店员</a><a href="/ZPWZ/FindJobById?c1=59&c2=23">其他</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/ZPWZ/FindJobById?c1=60&c2=0">交通运输服务</a>
                                    </dt>
                                    <dd><a href="/ZPWZ/FindJobById?c1=60&c2=10">交通运输服务</a><a href="/ZPWZ/FindJobById?c1=60&c2=11">飞机机长/副机长</a><a href="/ZPWZ/FindJobById?c1=60&c2=12">空乘人员</a><a href="/ZPWZ/FindJobById?c1=60&c2=13">地勤人员</a><a href="/ZPWZ/FindJobById?c1=60&c2=14">列车/地铁车长</a><a href="/ZPWZ/FindJobById?c1=60&c2=15">列车/地铁司机</a><a href="/ZPWZ/FindJobById?c1=60&c2=16">船长/副船长</a><a href="/ZPWZ/FindJobById?c1=60&c2=17">船员</a><a href="/ZPWZ/FindJobById?c1=60&c2=18">乘务员</a><a href="/ZPWZ/FindJobById?c1=60&c2=19">司机</a><a href="/ZPWZ/FindJobById?c1=60&c2=20">其他</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/ZPWZ/FindJobById?c1=61&c2=0">保安/家政/其他服务</a>
                                    </dt>
                                    <dd><a href="/ZPWZ/FindJobById?c1=61&c2=10">保安/家政/其他服务</a><a href="/ZPWZ/FindJobById?c1=61&c2=11">保安经理</a><a href="/ZPWZ/FindJobById?c1=61&c2=12">保安人员</a><a href="/ZPWZ/FindJobById?c1=61&c2=13">保镖</a><a href="/ZPWZ/FindJobById?c1=61&c2=14">寻呼员/话务员</a><a href="/ZPWZ/FindJobById?c1=61&c2=15">搬运工</a><a href="/ZPWZ/FindJobById?c1=61&c2=16">清洁工</a><a href="/ZPWZ/FindJobById?c1=61&c2=17">家政服务/保姆</a><a href="/ZPWZ/FindJobById?c1=61&c2=18">其他</a></dd>
                                    <div class="clear"></div>
                                </dl></div>
                                <div class="r"></div>
                            </div>
                        </div>
                    </li><li class="">
                        <a class="lstLnk" href="javascript:void(0)"><!--/search/a11/-->
                            <p class="lnk">公务员/翻译/其他</p> <b class="jpFntWes arr"></b>
                        </a>
                        <div  class="posBox"  style="display:block;">
                            <div class="posJobSort">
                                <div  class="l"><dl>
                                    <dt>
                                        <a href="/ZPWZ/FindJobById?c1=62&c2=0">公务员</a>
                                    </dt>
                                    <dd><a href="/ZPWZ/FindJobById?c1=62&c2=10">公务员</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/ZPWZ/FindJobById?c1=63&c2=0">翻译</a>
                                    </dt>
                                    <dd><a href="/ZPWZ/FindJobById?c1=63&c2=10">翻译</a><a href="/ZPWZ/FindJobById?c1=63&c2=11">英语翻译</a><a href="/ZPWZ/FindJobById?c1=63&c2=12">日语翻译</a><a href="/ZPWZ/FindJobById?c1=63&c2=13">德语翻译</a><a href="/ZPWZ/FindJobById?c1=63&c2=14">法语翻译</a><a href="/ZPWZ/FindJobById?c1=63&c2=15">俄语翻译</a><a href="/ZPWZ/FindJobById?c1=63&c2=16">意大利语翻译</a><a href="/ZPWZ/FindJobById?c1=63&c2=17">西班牙语翻译</a><a href="/ZPWZ/FindJobById?c1=63&c2=18">葡萄牙语翻译</a><a href="/ZPWZ/FindJobById?c1=63&c2=19">阿拉伯语翻译</a><a href="/ZPWZ/FindJobById?c1=63&c2=20">韩语/朝鲜语翻译</a><a href="/ZPWZ/FindJobById?c1=63&c2=21">泰语翻译</a><a href="/ZPWZ/FindJobById?c1=63&c2=22">中国方言翻译</a><a href="/ZPWZ/FindJobById?c1=63&c2=23">其他语种翻译</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/ZPWZ/FindJobById?c1=64&c2=0">在校学生</a>
                                    </dt>
                                    <dd><a href="/ZPWZ/FindJobById?c1=64&c2=10">在校学生</a><a href="/ZPWZ/FindJobById?c1=64&c2=11">研究生</a><a href="/ZPWZ/FindJobById?c1=64&c2=12">大学/大专应届毕业生</a><a href="/ZPWZ/FindJobById?c1=64&c2=13">中专/职校生</a><a href="/ZPWZ/FindJobById?c1=64&c2=14">其他</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/ZPWZ/FindJobById?c1=65&c2=0">储备干部/培训生/实习生</a>
                                    </dt>
                                    <dd><a href="/ZPWZ/FindJobById?c1=65&c2=10">储备干部/培训生/实习生</a><a href="/ZPWZ/FindJobById?c1=65&c2=11">储备干部</a><a href="/ZPWZ/FindJobById?c1=65&c2=12">培训生</a><a href="/ZPWZ/FindJobById?c1=65&c2=13">实习生</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/ZPWZ/FindJobById?c1=66&c2=0">兼职</a>
                                    </dt>
                                    <dd><a href="/ZPWZ/FindJobById?c1=66&c2=10">兼职</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/ZPWZ/FindJobById?c1=67&c2=0">其他</a>
                                    </dt>
                                    <dd><a href="/ZPWZ/FindJobById?c1=67&c2=10">其他</a><a href="/ZPWZ/FindJobById?c1=67&c2=11">驯兽师/助理驯兽师</a><a href="/ZPWZ/FindJobById?c1=67&c2=12">志愿者</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/ZPWZ/FindJobById?c1=68&c2=0">环保</a>
                                    </dt>
                                    <dd><a href="/ZPWZ/FindJobById?c1=68&c2=10">环保</a><a href="/ZPWZ/FindJobById?c1=68&c2=11">环保工程师</a><a href="/ZPWZ/FindJobById?c1=68&c2=12">环境影响评价工程师</a><a href="/ZPWZ/FindJobById?c1=68&c2=13">环保检测</a><a href="/ZPWZ/FindJobById?c1=68&c2=14">水质检测员</a><a href="/ZPWZ/FindJobById?c1=68&c2=15">污水处理工程师</a><a href="/ZPWZ/FindJobById?c1=68&c2=16">固废工程师</a><a href="/ZPWZ/FindJobById?c1=68&c2=19">其它</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/ZPWZ/FindJobById?c1=69&c2=0">农/林/牧/渔</a>
                                    </dt>
                                    <dd><a href="/ZPWZ/FindJobById?c1=69&c2=10">农/林/牧/渔</a><a href="/ZPWZ/FindJobById?c1=69&c2=11">养殖部主管</a><a href="/ZPWZ/FindJobById?c1=69&c2=12">场长(农/林/牧/渔业)</a><a href="/ZPWZ/FindJobById?c1=69&c2=13">农艺师</a><a href="/ZPWZ/FindJobById?c1=69&c2=14">畜牧师</a><a href="/ZPWZ/FindJobById?c1=69&c2=15">饲养员</a><a href="/ZPWZ/FindJobById?c1=69&c2=16">动物营养/饲料研发</a><a href="/ZPWZ/FindJobById?c1=69&c2=17">其他</a></dd>
                                    <div class="clear"></div>
                                </dl></div>
                                <div class="r"></div>
                            </div>
                        </div>
                    </li></ul>
                </div>
                <div class="lstMaskWhite1"></div>
                <div class="lstMaskGray1"></div>
            </div>
</div>
<ul class="navList">
    <li><a href="/ZPWZ/">首页</a></li>
    <% if("".equals(role)||null==role){ %>
    <li><a href="#" onclick="alert('您还没有登录！！！！')">找工作</a></li>
    <li><a href="#" onclick="alert('您还没有登录！！！！')">找人才</a></li>
    <li><a href="#" onclick="alert('您还没有登录！！！！')">求职管理</a></li>
    <%}else if("1".equals(role)){ %>
    <li><a href="/ZPWZ/FindAllJob">找工作</a></li>
    <%}else{ %>
    <li><a href="/ZPWZ/FindAllSeker">找人才</a></li>
    <li><a href="/ZPWZ/ViewResByCid?cid=<%=cpy.getId() %>">求职管理</a></li>
    <%} %>
</ul>
</div>