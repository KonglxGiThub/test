<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head >
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="mobile-agent" content="format=xhtml; url=http://m.597.com">
    <meta name="mobile-agent" content="format=html5; url=http://m.597.com">
    <meta name="mobile-agent" content="format=wml; url=http://m.597.com">
    <title>人才网</title>

    <meta http-equiv="Content-Language" content="zh-CN" />
    <link rel="shortcut icon" href="../images/favicon.ico" />
    <link rel="logo" href="../images/logo121x75.png" />
    <!--[if lt IE9]  -->
    <script src="js/html5.js"></script>
    <!-- [endif] -->
    <link rel="stylesheet" type="text/css" href="css/base.css" />
    <link rel="stylesheet" type="text/css" href="css/597index.css" />
    <!--<script language="javascript" type="text/javascript" src="js/jquery-1.js"></script>-->
    <script language="javascript" type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" language="javascript" src="js/jquery.cookie.js"></script>
    <script language="javascript" type="text/javascript" src="js/index.js"></script>
</head>
<body>
<!-- 顶部导航 -->
<div class="top">
    <div class="topCon">
        <ul id="topLoginStatus">
            <li><a href="/person/register.html" >个人注册</a> |</li>
            <li><a href="/company/register.html" >企业注册</a> |</li>
            <li><a href="/person/login.html" >求职者登录</a> | </li>
            <li><a href="/company/login.html" >企业登录</a> |  </li>
            <li><a href="/about/price.html" style="color:red;" target="_blank">收费标准</a></li>
        </ul>
        <ul id="topPerLogin" style="display:none;" >
            <li>您好,<a href="/person/"><span id="topUsername" class=" fb"></span></a> | </li>
            <li><a href="/person/logout.html" >退出</a>  </li>
        </ul>
        <ul id="topComLogin" style="display:none;" class="flor">
            <li>您好,<a href="/company/"><span id="topUsername" class=" fb"></span></a> | </li>
            <li><a href="/company/logout.html" >退出</a>  </li>
        </ul>
        <div class="wel">
            <ul>
                <li><a href="/">北京招聘网</a> - </li>
                <li><a href="/search/">北京找工作</a>首选 </li>
            </ul>
        </div>
    </div>
    <div class="clear"></div>
</div>

<!-- logo头部 -->
<div class="head auto">
    <div class="logo"><a href="/"><img src="images/logo.gif" alt="597北京人才网" /></a></div>
    <div class="changeCity">
        <strong><span id="currentCity"></span></strong><br />

    </div>
    <div class="searchBox">
<span class="tSch" id="tSch">
<span id="inpBox">
<span>
<input type="text" class="text tSchText ac_input" id="tSchJobText" value="请输入职位名称或公司名称" autocomplete="off" style="color: rgb(153, 153, 153);">
<a href="javascript:void(0)" class="yahei tSchBtn" id="btnJobSearch">搜索</a>
</span>
</span>
</span>
    </div>
    <div class="btns" id="btns">
        <a href="/company/job/job.html?act=edit" target="_blank" class="fabu">发布招聘</a>
        <a href="/person/" target="_blank">登记简历</a>
    </div>
    <div class="clear"></div>
</div>

<!-- 导航条 -->
<div class="nav">
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
                                        <a href="/search/a12/">计算机硬件</a>
                                    </dt>
                                    <dd><a href="/search/a1210/">计算机硬件</a><a href="/search/a1211/">高级硬件工程师</a><a href="/search/a1212/">硬件工程师</a><a href="/search/a1213/">其他</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/search/a13/">计算机软件</a>
                                    </dt>
                                    <dd><a href="/search/a1310/">计算机软件</a><a href="/search/a1311/">高级软件工程师</a><a href="/search/a1312/">软件工程师</a><a href="/search/a1313/">软件UI设计师/工程师</a><a href="/search/a1314/">仿真应用工程师</a><a href="/search/a1315/">ERP实施顾问</a><a href="/search/a1316/">ERP技术开发</a><a href="/search/a1317/">需求工程师</a><a href="/search/a1318/">系统集成工程师</a><a href="/search/a1319/">系统分析员</a><a href="/search/a1320/">系统工程师</a><a href="/search/a1321/">系统架构设计师</a><a href="/search/a1322/">数据库工程师/管理员</a><a href="/search/a1323/">计算机辅助设计工程师</a><a href="/search/a1324/">其他</a><a href="/search/a1325/">设计总监</a><a href="/search/a1326/">设计经理</a><a href="/search/a1327/">设计主管</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/search/a14/">互联网/网游</a>
                                    </dt>
                                    <dd><a href="/search/a1410/">互联网/网游</a><a href="/search/a1411/">互联网软件开发工程师</a><a href="/search/a1412/">语音/视频开发工程师</a><a href="/search/a1413/">多媒体/游戏开发工程师</a><a href="/search/a1414/">网站营运经理/主管</a><a href="/search/a1415/">网站营运专员</a><a href="/search/a1416/">网络工程师</a><a href="/search/a1417/">UI设计师/顾问</a><a href="/search/a1418/">网站架构设计师</a><a href="/search/a1419/">网站维护工程师</a><a href="/search/a1420/">系统管理员/网络管理员</a><a href="/search/a1421/">网站策划</a><a href="/search/a1422/">网站编辑</a><a href="/search/a1423/">网页设计/制作/美工</a><a href="/search/a1424/">脚本开发工程师</a><a href="/search/a1425/">游戏策划师</a><a href="/search/a1426/">游戏界面设计师</a><a href="/search/a1427/">Flash设计/开发</a><a href="/search/a1428/">特效设计师</a><a href="/search/a1429/">视觉设计师</a><a href="/search/a1430/">音效设计师</a><a href="/search/a1431/">SEO搜索引擎优化</a><a href="/search/a1432/">网络信息安全工程师</a><a href="/search/a1433/">智能大厦/综合布线</a><a href="/search/a1434/">其他</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/search/a15/">IT-管理</a>
                                    </dt>
                                    <dd><a href="/search/a1510/">IT-管理</a><a href="/search/a1511/">首席技术执行官CTO/首席信息官CIO</a><a href="/search/a1512/">技术总监/经理</a><a href="/search/a1513/">信息技术经理/主管</a><a href="/search/a1514/">信息技术专员</a><a href="/search/a1515/">项目总监</a><a href="/search/a1516/">项目经理</a><a href="/search/a1517/">项目主管</a><a href="/search/a1518/">项目执行/协调人员</a><a href="/search/a1519/">其他</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/search/a16/">IT-品管、技术支持及其它</a>
                                    </dt>
                                    <dd><a href="/search/a1610/">IT-品管、技术支持及其它</a><a href="/search/a1611/">技术支持/维护经理</a><a href="/search/a1612/">技术支持/维护工程师</a><a href="/search/a1613/">Helpdesk 技术支持</a><a href="/search/a1614/">计量工程师</a><a href="/search/a1615/">标准化工程师</a><a href="/search/a1616/">品质经理</a><a href="/search/a1617/">系统测试</a><a href="/search/a1618/">软件测试</a><a href="/search/a1619/">硬件测试</a><a href="/search/a1620/">测试员</a><a href="/search/a1621/">文档工程师</a><a href="/search/a1622/">技术文员/助理</a><a href="/search/a1623/">其他</a><a href="/search/a1624/">研发总监</a><a href="/search/a1625/">研发经理</a><a href="/search/a1626/">研发主管</a><a href="/search/a1627/">研发工程师</a><a href="/search/a1628/">助理研发工程师</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/search/a17/">通信技术开发及应用</a>
                                    </dt>
                                    <dd><a href="/search/a1710/">通信技术开发及应用</a><a href="/search/a1711/">通信技术工程师</a><a href="/search/a1712/">有线传输工程师</a><a href="/search/a1713/">无线通信工程师</a><a href="/search/a1714/">电信交换工程师</a><a href="/search/a1715/">数据通信工程师</a><a href="/search/a1716/">移动通信工程师</a><a href="/search/a1717/">电信网络工程师</a><a href="/search/a1718/">通信电源工程师</a><a href="/search/a1719/">增值产品开发工程师</a><a href="/search/a1720/">手机软件开发工程师</a><a href="/search/a1721/">手机应用开发工程师</a><a href="/search/a1722/">其他</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/search/a18/">电子/电器/半导体/仪器仪表</a>
                                    </dt>
                                    <dd><a href="/search/a1810/">电子/电器/半导体/仪器仪表</a><a href="/search/a1811/">集成电路IC设计/应用工程师</a><a href="/search/a1812/">IC验证工程师</a><a href="/search/a1813/">电子工程师/技术员</a><a href="/search/a1814/">电子技术研发工程师</a><a href="/search/a1815/">射频工程师</a><a href="/search/a1816/">电子/电器维修工程师/技师</a><a href="/search/a1817/">变压器与磁电工程师</a><a href="/search/a1818/">版图设计工程师</a><a href="/search/a1819/">电气工程师/技术员</a><a href="/search/a1820/">电路工程师/技术员(模拟/数字)</a><a href="/search/a1821/">电声/音响工程师/技术员</a><a href="/search/a1822/">激光/光电子技术</a><a href="/search/a1823/">半导体技术</a><a href="/search/a1824/">自动控制工程师/技术员</a><a href="/search/a1825/">电子软件开发(ARM/MCU...)</a><a href="/search/a1826/">嵌入式软件开发(Linux/单片机/DLC/DSP…)</a><a href="/search/a1827/">嵌入式硬件开发(主板机…)</a><a href="/search/a1828/">电池/电源开发</a><a href="/search/a1829/">FAE 现场应用工程师</a><a href="/search/a1830/">工艺工程师</a><a href="/search/a1831/">家用电器/数码产品研发</a><a href="/search/a1832/">仪器/仪表/计量分析师</a><a href="/search/a1833/">测试工程师</a><a href="/search/a1834/">其他</a></dd>
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
                                        <a href="/search/a19/">销售管理</a>
                                    </dt>
                                    <dd><a href="/search/a1910/">销售管理</a><a href="/search/a1911/">销售总监</a><a href="/search/a1912/">销售经理</a><a href="/search/a1913/">销售主管</a><a href="/search/a1914/">业务拓展主管/经理</a><a href="/search/a1915/">渠道/分销总监</a><a href="/search/a1916/">渠道/分销经理</a><a href="/search/a1917/">分销主管</a><a href="/search/a1918/">大客户经理</a><a href="/search/a1919/">客户经理/主管</a><a href="/search/a1920/">区域销售总监</a><a href="/search/a1921/">区域销售经理</a><a href="/search/a1922/">团购经理/主管</a><a href="/search/a1923/">其他</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/search/a20/">销售人员</a>
                                    </dt>
                                    <dd><a href="/search/a2010/">销售人员</a><a href="/search/a2011/">销售代表</a><a href="/search/a2012/">渠道/分销专员</a><a href="/search/a2013/">客户代表</a><a href="/search/a2014/">销售工程师</a><a href="/search/a2015/">电话销售</a><a href="/search/a2016/">团购业务员</a><a href="/search/a2017/">经销商</a><a href="/search/a2018/">其他</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/search/a21/">销售行政及商务</a>
                                    </dt>
                                    <dd><a href="/search/a2110/">销售行政及商务</a><a href="/search/a2111/">销售行政经理/主管</a><a href="/search/a2112/">销售行政专员/助理</a><a href="/search/a2113/">业务分析经理/主管</a><a href="/search/a2114/">业务分析专员/助理</a><a href="/search/a2115/">商务经理</a><a href="/search/a2116/">商务主管/专员</a><a href="/search/a2117/">商务助理</a><a href="/search/a2118/">销售助理</a><a href="/search/a2119/">其他</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/search/a22/">客服及技术支持</a>
                                    </dt>
                                    <dd><a href="/search/a2210/">客服及技术支持</a><a href="/search/a2211/">客服总监(非技术)</a><a href="/search/a2212/">客服经理(非技术)</a><a href="/search/a2213/">客服主管(非技术)</a><a href="/search/a2214/">客服专员/助理(非技术)</a><a href="/search/a2215/">客户关系经理/主管</a><a href="/search/a2216/">投诉专员</a><a href="/search/a2217/">售前/售后技术支持经理</a><a href="/search/a2218/">售前/售后技术支持主管</a><a href="/search/a2219/">售前/售后技术支持工程师</a><a href="/search/a2220/">咨询热线/呼叫中心服务人员</a><a href="/search/a2221/">VIP专员</a><a href="/search/a2222/">其他</a></dd>
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
                                        <a href="/search/a23/">财务/审计/税务</a>
                                    </dt>
                                    <dd><a href="/search/a2310/">财务/审计/税务</a><a href="/search/a2311/">首席财务官 CFO</a><a href="/search/a2312/">财务总监</a><a href="/search/a2313/">财务经理</a><a href="/search/a2314/">财务顾问</a><a href="/search/a2315/">财务主管/总帐主管</a><a href="/search/a2316/">会计经理/会计主管</a><a href="/search/a2317/">会计</a><a href="/search/a2318/">出纳员</a><a href="/search/a2319/">财务/会计助理</a><a href="/search/a2320/">会计文员</a><a href="/search/a2321/">固定资产会计</a><a href="/search/a2322/">财务分析经理/主管</a><a href="/search/a2323/">财务分析员</a><a href="/search/a2324/">成本经理/成本主管</a><a href="/search/a2325/">成本管理员</a><a href="/search/a2326/">资金经理/主管</a><a href="/search/a2327/">资金专员</a><a href="/search/a2328/">审计经理/主管</a><a href="/search/a2329/">审计专员/助理</a><a href="/search/a2330/">税务经理/税务主管</a><a href="/search/a2331/">税务专员/助理</a><a href="/search/a2332/">统计员</a><a href="/search/a2333/">其他</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/search/a24/">金融/证券/期货/投资</a>
                                    </dt>
                                    <dd><a href="/search/a2410/">金融/证券/期货/投资</a><a href="/search/a2411/">证券/期货/外汇经纪人</a><a href="/search/a2412/">证券分析师</a><a href="/search/a2413/">股票/期货操盘手</a><a href="/search/a2414/">金融/经济研究员</a><a href="/search/a2415/">投资/基金项目经理</a><a href="/search/a2416/">投资/理财顾问</a><a href="/search/a2417/">投资银行业务</a><a href="/search/a2418/">融资经理/融资主管</a><a href="/search/a2419/">融资专员</a><a href="/search/a2420/">拍卖师</a><a href="/search/a2421/">其他</a><a href="/search/a2422/">高级证券分析师</a><a href="/search/a2423/">理财总监</a><a href="/search/a2424/">理财经理</a><a href="/search/a2425/">融资总监</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/search/a25/">银行</a>
                                    </dt>
                                    <dd><a href="/search/a2510/">银行</a><a href="/search/a2511/">行长/副行长</a><a href="/search/a2512/">个人业务部门经理/主管</a><a href="/search/a2513/">个人业务客户经理</a><a href="/search/a2514/">公司业务部门经理/主管</a><a href="/search/a2515/">公司业务客户经理</a><a href="/search/a2516/">综合业务经理/主管</a><a href="/search/a2517/">综合业务专员</a><a href="/search/a2518/">资产评估/分析</a><a href="/search/a2519/">风险控制</a><a href="/search/a2520/">信贷管理</a><a href="/search/a2521/">信审核查</a><a href="/search/a2522/">进出口/信用证结算</a><a href="/search/a2523/">外汇交易</a><a href="/search/a2524/">清算人员</a><a href="/search/a2525/">高级客户经理/客户经理</a><a href="/search/a2526/">客户主管/专员</a><a href="/search/a2527/">营业部大堂经理</a><a href="/search/a2528/">银行柜员</a><a href="/search/a2529/">银行卡、电子银行业务推广</a><a href="/search/a2530/">其他</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/search/a26/">保险</a>
                                    </dt>
                                    <dd><a href="/search/a2610/">保险</a><a href="/search/a2611/">保险精算师</a><a href="/search/a2612/">保险产品开发/项目策划</a><a href="/search/a2613/">保险业务经理/主管</a><a href="/search/a2614/">保险代理/经纪人/客户经理</a><a href="/search/a2615/">理财顾问/财务规划师</a><a href="/search/a2616/">储备经理人</a><a href="/search/a2617/">保险核保</a><a href="/search/a2618/">保险理赔</a><a href="/search/a2619/">保险客户服务/续期管理</a><a href="/search/a2620/">保险培训师</a><a href="/search/a2621/">保险内勤</a><a href="/search/a2622/">契约管理</a><a href="/search/a2623/">其他</a></dd>
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
                                        <a href="/search/a27/">生产/营运</a>
                                    </dt>
                                    <dd><a href="/search/a2710/">生产/营运</a><a href="/search/a2711/">工厂经理/厂长</a><a href="/search/a2712/">总工程师/副总工程师</a><a href="/search/a2713/">项目总监</a><a href="/search/a2714/">项目经理/主管</a><a href="/search/a2715/">项目工程师</a><a href="/search/a2716/">营运经理</a><a href="/search/a2717/">营运主管</a><a href="/search/a2718/">生产总监</a><a href="/search/a2719/">生产经理/车间主任</a><a href="/search/a2720/">生产计划/物料管理(PMC)</a><a href="/search/a2721/">生产主管/督导/领班/组长</a><a href="/search/a2722/">生产文员</a><a href="/search/a2723/">化验员</a><a href="/search/a2724/">其他</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/search/a28/">质量/安全管理</a>
                                    </dt>
                                    <dd><a href="/search/a2810/">质量/安全管理</a><a href="/search/a2811/">质量管理/测试经理(QA/QC经理)</a><a href="/search/a2812/">质量管理/测试主管(QA/QC主管)</a><a href="/search/a2813/">质量管理/测试工程师(QA/QC工程师)</a><a href="/search/a2814/">质量检验员/测试员</a><a href="/search/a2815/">可靠度工程师</a><a href="/search/a2816/">故障分析工程师</a><a href="/search/a2817/">认证工程师/审核员</a><a href="/search/a2818/">体系工程师/审核员</a><a href="/search/a2819/">环境/健康/安全经理/主管（EHS）</a><a href="/search/a2820/">环境/健康/安全工程师（EHS）</a><a href="/search/a2821/">供应商管理</a><a href="/search/a2822/">采购材料、设备质量管理</a><a href="/search/a2823/">其他</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/search/a29/">工程/机械/能源</a>
                                    </dt>
                                    <dd><a href="/search/a2910/">工程/机械/能源</a><a href="/search/a2911/">技术研发经理/主管</a><a href="/search/a2912/">技术研发工程师</a><a href="/search/a2913/">产品工艺/制程工程师</a><a href="/search/a2914/">产品规划工程师</a><a href="/search/a2915/">实验室负责人/工程师</a><a href="/search/a2916/">工程/设备经理</a><a href="/search/a2917/">工程/设备主管</a><a href="/search/a2918/">工程/设备工程师</a><a href="/search/a2919/">工程/机械绘图员</a><a href="/search/a2920/">工业工程师</a><a href="/search/a2921/">材料工程师</a><a href="/search/a2922/">机械工程师</a><a href="/search/a2923/">结构工程师</a><a href="/search/a2924/">模具工程师</a><a href="/search/a2925/">机电工程师</a><a href="/search/a2926/">维修经理/主管</a><a href="/search/a2927/">维修工程师</a><a href="/search/a2928/">装配工程师/技师</a><a href="/search/a2929/">铸造/锻造工程师/技师</a><a href="/search/a2930/">注塑工程师/技师</a><a href="/search/a2931/">焊接工程师/技师</a><a href="/search/a2932/">夹具工程师/技师</a><a href="/search/a2933/">CNC工程师</a><a href="/search/a2934/">冲压工程师/技师</a><a href="/search/a2935/">锅炉工程师/技师</a><a href="/search/a2936/">电力工程师/技术员</a><a href="/search/a2937/">光源与照明工程</a><a href="/search/a2938/">汽车/摩托车工程师</a><a href="/search/a2939/">船舶工程师</a><a href="/search/a2940/">轨道交通工程师/技术员</a><a href="/search/a2941/">飞机维修机械师</a><a href="/search/a2942/">飞行器设计与制造</a><a href="/search/a2943/">水利/水电工程师</a><a href="/search/a2944/">石油天然气技术人员</a><a href="/search/a2945/">矿产勘探/地质勘测工程师</a><a href="/search/a2946/">其他</a><a href="/search/a2947/">研发总监</a><a href="/search/a2948/">研发经理</a><a href="/search/a2949/">研发主管</a><a href="/search/a2950/">研发工程师</a><a href="/search/a2951/">助理研发工程师</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/search/a30/">汽车</a>
                                    </dt>
                                    <dd><a href="/search/a3010/">汽车</a><a href="/search/a3011/">汽车机构工程师</a><a href="/search/a3012/">汽车设计工程师</a><a href="/search/a3013/">汽车电子工程师</a><a href="/search/a3014/">汽车质量管理</a><a href="/search/a3015/">汽车安全性能工程师</a><a href="/search/a3016/">汽车装配工艺工程师</a><a href="/search/a3017/">汽车修理人员</a><a href="/search/a3018/">4S店经理/维修站经理</a><a href="/search/a3019/">汽车销售/经纪人</a><a href="/search/a3020/">二手车评估师</a><a href="/search/a3021/">其他</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/search/a31/">技工</a>
                                    </dt>
                                    <dd><a href="/search/a3110/">技工</a><a href="/search/a3111/">钳工/机修工/钣金工</a><a href="/search/a3112/">电焊工/铆焊工</a><a href="/search/a3113/">车工/磨工/铣工/冲压工/锣工</a><a href="/search/a3114/">切割技工</a><a href="/search/a3115/">模具工</a><a href="/search/a3116/">电工</a><a href="/search/a3117/">叉车工</a><a href="/search/a3118/">空调工/电梯工/锅炉工</a><a href="/search/a3119/">水工/木工/漆工</a><a href="/search/a3120/">普工/操作工</a><a href="/search/a3121/">裁缝印纺熨烫</a><a href="/search/a3122/">汽车修理工</a><a href="/search/a3123/">其他</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/search/a32/">服装/纺织/皮革</a>
                                    </dt>
                                    <dd><a href="/search/a3210/">服装/纺织/皮革</a><a href="/search/a3211/">服装/纺织设计总监</a><a href="/search/a3212/">服装/纺织设计</a><a href="/search/a3213/">面料辅料开发</a><a href="/search/a3214/">面料辅料采购</a><a href="/search/a3215/">服装/纺织/皮革跟单</a><a href="/search/a3216/">质量管理/验货员(QA/QC)</a><a href="/search/a3217/">板房/楦头/底格出格师</a><a href="/search/a3218/">打样/制版</a><a href="/search/a3219/">电脑放码员</a><a href="/search/a3220/">纸样师/车板工</a><a href="/search/a3221/">裁床</a><a href="/search/a3222/">其他</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/search/a33/">采购</a>
                                    </dt>
                                    <dd><a href="/search/a3310/">采购</a><a href="/search/a3311/">采购总监</a><a href="/search/a3312/">采购经理</a><a href="/search/a3313/">采购主管</a><a href="/search/a3314/">采购员</a><a href="/search/a3315/">采购助理</a><a href="/search/a3316/">买手</a><a href="/search/a3317/">供应商开发</a><a href="/search/a3318/">其他</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/search/a34/">贸易</a>
                                    </dt>
                                    <dd><a href="/search/a3410/">贸易</a><a href="/search/a3411/">贸易/进出口经理/主管</a><a href="/search/a3412/">贸易/进出口专员/助理</a><a href="/search/a3413/">国内贸易人员</a><a href="/search/a3414/">业务跟单经理</a><a href="/search/a3415/">高级业务跟单</a><a href="/search/a3416/">业务跟单</a><a href="/search/a3417/">助理业务跟单</a><a href="/search/a3418/">其他</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/search/a35/">物流/仓储</a>
                                    </dt>
                                    <dd><a href="/search/a3510/">物流/仓储</a><a href="/search/a3511/">物流总监</a><a href="/search/a3512/">物流经理</a><a href="/search/a3513/">物流主管</a><a href="/search/a3514/">物流专员/助理</a><a href="/search/a3515/">供应链总监</a><a href="/search/a3516/">供应链经理</a><a href="/search/a3517/">供应链主管/专员</a><a href="/search/a3518/">物料经理</a><a href="/search/a3519/">物料主管/专员</a><a href="/search/a3520/">仓库经理/主管</a><a href="/search/a3521/">仓库管理员</a><a href="/search/a3522/">运输经理/主管</a><a href="/search/a3523/">项目经理/主管</a><a href="/search/a3524/">货运代理</a><a href="/search/a3525/">集装箱业务</a><a href="/search/a3526/">海关事务管理</a><a href="/search/a3527/">报关员</a><a href="/search/a3528/">单证员</a><a href="/search/a3529/">船务/空运陆运操作</a><a href="/search/a3530/">快递员</a><a href="/search/a3531/">调度员</a><a href="/search/a3532/">理货员</a><a href="/search/a3533/">其他</a></dd>
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
                                        <a href="/search/a36/">生物/制药/医疗器械</a>
                                    </dt>
                                    <dd><a href="/search/a3610/">生物/制药/医疗器械</a><a href="/search/a3611/">生物工程/生物制药</a><a href="/search/a3612/">化学分析测试员</a><a href="/search/a3613/">医药技术研发管理人员</a><a href="/search/a3614/">医药技术研发人员</a><a href="/search/a3615/">临床研究员</a><a href="/search/a3616/">临床协调员</a><a href="/search/a3617/">临床数据分析员</a><a href="/search/a3618/">药品注册</a><a href="/search/a3619/">药品生产/质量管理</a><a href="/search/a3620/">药品市场推广经理</a><a href="/search/a3621/">药品市场推广主管/专员</a><a href="/search/a3622/">医药招商</a><a href="/search/a3623/">政府事务管理</a><a href="/search/a3624/">招投标管理</a><a href="/search/a3625/">医药销售经理/主管</a><a href="/search/a3626/">医药销售代表</a><a href="/search/a3627/">医疗设备注册</a><a href="/search/a3628/">医疗设备生产/质量管理</a><a href="/search/a3629/">医疗器械市场推广</a><a href="/search/a3630/">医疗器械销售</a><a href="/search/a3631/">医疗器械维修人员</a><a href="/search/a3632/">其他</a><a href="/search/a3633/">研发总监</a><a href="/search/a3634/">研发经理</a><a href="/search/a3635/">研发主管</a><a href="/search/a3636/">研发工程师</a><a href="/search/a3637/">助理研发工程师</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/search/a37/">化工</a>
                                    </dt>
                                    <dd><a href="/search/a3710/">化工</a><a href="/search/a3711/">化工技术应用/化工工程师</a><a href="/search/a3712/">化工实验室研究员/技术员</a><a href="/search/a3713/">涂料研发工程师</a><a href="/search/a3714/">配色技术员</a><a href="/search/a3715/">塑料工程师</a><a href="/search/a3716/">化妆品研发</a><a href="/search/a3717/">食品/饮料研发</a><a href="/search/a3718/">造纸研发</a><a href="/search/a3719/">其他</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/search/a38/">医院/医疗/护理</a>
                                    </dt>
                                    <dd><a href="/search/a3810/">医院/医疗/护理</a><a href="/search/a3811/">医院管理人员</a><a href="/search/a3812/">内科医生</a><a href="/search/a3813/">外科医生</a><a href="/search/a3814/">专科医生</a><a href="/search/a3815/">牙科医生</a><a href="/search/a3816/">麻醉医生</a><a href="/search/a3817/">美容整形师</a><a href="/search/a3818/">理疗师</a><a href="/search/a3819/">中医科医生</a><a href="/search/a3820/">针灸、推拿</a><a href="/search/a3821/">儿科医生</a><a href="/search/a3822/">心理医生</a><a href="/search/a3823/">营养师</a><a href="/search/a3824/">药库主任/药剂师</a><a href="/search/a3825/">医药学检验</a><a href="/search/a3826/">公共卫生/疾病控制</a><a href="/search/a3827/">护理主任/护士长</a><a href="/search/a3828/">护士/护理人员</a><a href="/search/a3829/">兽医</a><a href="/search/a3830/">验光师</a><a href="/search/a3831/">其他</a></dd>
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
                                        <a href="/search/a39/">广告</a>
                                    </dt>
                                    <dd><a href="/search/a3910/">广告</a><a href="/search/a3911/">广告客户总监/副总监</a><a href="/search/a3912/">广告客户经理</a><a href="/search/a3913/">广告客户主管/专员</a><a href="/search/a3914/">广告创意/设计经理</a><a href="/search/a3915/">广告创意总监</a><a href="/search/a3916/">广告创意/设计主管/专员</a><a href="/search/a3917/">美术指导</a><a href="/search/a3918/">文案/策划</a><a href="/search/a3919/">企业/业务发展经理</a><a href="/search/a3920/">企业策划人员</a><a href="/search/a3921/">其他</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/search/a40/">公关/媒介</a>
                                    </dt>
                                    <dd><a href="/search/a4010/">公关/媒介</a><a href="/search/a4011/">公关经理</a><a href="/search/a4012/">公关主管</a><a href="/search/a4013/">公关专员</a><a href="/search/a4014/">会务/会展经理</a><a href="/search/a4015/">会务/会展主管</a><a href="/search/a4016/">会务/会展专员</a><a href="/search/a4017/">媒介经理</a><a href="/search/a4018/">媒介主管</a><a href="/search/a4019/">媒介专员</a><a href="/search/a4020/">公关/媒介助理</a><a href="/search/a4021/">媒介销售</a><a href="/search/a4022/">活动策划</a><a href="/search/a4023/">其他</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/search/a41/">市场/营销</a>
                                    </dt>
                                    <dd><a href="/search/a4110/">市场/营销</a><a href="/search/a4111/">市场/营销/拓展总监</a><a href="/search/a4112/">市场/营销/拓展经理</a><a href="/search/a4113/">市场/营销/拓展主管</a><a href="/search/a4114/">市场/营销/拓展专员</a><a href="/search/a4115/">市场助理</a><a href="/search/a4116/">市场分析/调研人员</a><a href="/search/a4117/">产品/品牌经理</a><a href="/search/a4118/">产品/品牌主管</a><a href="/search/a4119/">产品/品牌专员</a><a href="/search/a4120/">市场通路经理/主管</a><a href="/search/a4121/">市场通路专员</a><a href="/search/a4122/">市场企划经理/主管</a><a href="/search/a4123/">市场企划专员</a><a href="/search/a4124/">促销经理</a><a href="/search/a4125/">促销主管/督导</a><a href="/search/a4126/">促销员/导购</a><a href="/search/a4127/">选址拓展/新店开发</a><a href="/search/a4128/">其他</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/search/a42/">影视/媒体</a>
                                    </dt>
                                    <dd><a href="/search/a4210/">影视/媒体</a><a href="/search/a4211/">影视策划/制作人员</a><a href="/search/a4212/">导演/编导</a><a href="/search/a4213/">艺术/设计总监</a><a href="/search/a4214/">经纪人/星探</a><a href="/search/a4215/">演员/模特/主持人</a><a href="/search/a4216/">摄影师/摄像师</a><a href="/search/a4217/">后期制作</a><a href="/search/a4218/">音效师</a><a href="/search/a4219/">配音员</a><a href="/search/a4220/">放映经理/主管</a><a href="/search/a4221/">放映员</a><a href="/search/a4222/">化妆师/造型师</a><a href="/search/a4223/">其他</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/search/a43/">写作/出版/印刷</a>
                                    </dt>
                                    <dd><a href="/search/a4310/">写作/出版/印刷</a><a href="/search/a4311/">总编/副总编</a><a href="/search/a4312/">编辑</a><a href="/search/a4313/">作家/撰稿人</a><a href="/search/a4314/">记者</a><a href="/search/a4315/">电话采编</a><a href="/search/a4316/">美术编辑</a><a href="/search/a4317/">排版设计</a><a href="/search/a4318/">校对/录入</a><a href="/search/a4319/">出版/发行</a><a href="/search/a4320/">电分操作员</a><a href="/search/a4321/">印刷排版/制版</a><a href="/search/a4322/">数码直印/菲林输出</a><a href="/search/a4323/">打稿机操作员</a><a href="/search/a4324/">调墨技师</a><a href="/search/a4325/">印刷机械机长</a><a href="/search/a4326/">晒版/拼版/装订/烫金技工</a><a href="/search/a4327/">其他</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/search/a44/">艺术/设计</a>
                                    </dt>
                                    <dd><a href="/search/a4410/">艺术/设计</a><a href="/search/a4411/">平面设计总监</a><a href="/search/a4412/">平面设计经理/主管</a><a href="/search/a4413/">平面设计师</a><a href="/search/a4414/">绘画</a><a href="/search/a4415/">动画/3D设计</a><a href="/search/a4416/">原画师</a><a href="/search/a4417/">展览/展示/店面设计</a><a href="/search/a4418/">多媒体设计</a><a href="/search/a4419/">包装设计</a><a href="/search/a4420/">工业/产品设计</a><a href="/search/a4421/">工艺品/珠宝设计鉴定</a><a href="/search/a4422/">家具/家居用品设计</a><a href="/search/a4423/">玩具设计</a><a href="/search/a4424/">其他</a></dd>
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
                                        <a href="/search/a45/">建筑装潢/市政建设</a>
                                    </dt>
                                    <dd><a href="/search/a4510/">建筑装潢/市政建设</a><a href="/search/a4511/">高级建筑工程师/总工</a><a href="/search/a4512/">建筑工程师</a><a href="/search/a4513/">建筑设计师</a><a href="/search/a4514/">市政工程师</a><a href="/search/a4515/">结构/土木/土建工程师</a><a href="/search/a4516/">公路/桥梁/港口/隧道工程</a><a href="/search/a4517/">岩土工程</a><a href="/search/a4518/">楼宇自动化</a><a href="/search/a4519/">建筑机电工程师</a><a href="/search/a4520/">安防工程师</a><a href="/search/a4521/">给排水/暖通工程</a><a href="/search/a4522/">幕墙工程师</a><a href="/search/a4523/">规划与设计</a><a href="/search/a4524/">室内外装潢设计</a><a href="/search/a4525/">园艺/园林/景观设计</a><a href="/search/a4526/">测绘/测量</a><a href="/search/a4527/">建筑制图</a><a href="/search/a4528/">开发报建</a><a href="/search/a4529/">工程造价师/预结算经理</a><a href="/search/a4530/">预结算员</a><a href="/search/a4531/">建筑工程管理/项目经理</a><a href="/search/a4532/">建筑工程验收</a><a href="/search/a4533/">工程监理</a><a href="/search/a4534/">合同管理</a><a href="/search/a4535/">安全员</a><a href="/search/a4536/">资料员</a><a href="/search/a4537/">施工员</a><a href="/search/a4538/">其他</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/search/a46/">房地产</a>
                                    </dt>
                                    <dd><a href="/search/a4610/">房地产</a><a href="/search/a4611/">房地产项目/开发/策划经理</a><a href="/search/a4612/">房地产项目/开发/策划主管/专员</a><a href="/search/a4613/">房产项目配套工程师</a><a href="/search/a4614/">房地产项目招投标</a><a href="/search/a4615/">房地产评估</a><a href="/search/a4616/">房地产中介/交易</a><a href="/search/a4617/">房地产销售经理/主管</a><a href="/search/a4618/">房地产销售人员</a><a href="/search/a4619/">其他</a><a href="/search/a4620/">项目总监</a><a href="/search/a4621/">项目经理</a><a href="/search/a4622/">项目主管</a><a href="/search/a4623/">质量管理</a><a href="/search/a4624/">研发总监</a><a href="/search/a4625/">研发经理</a><a href="/search/a4626/">研发主管</a><a href="/search/a4627/">研发工程师</a><a href="/search/a4628/">助理研发工程师</a><a href="/search/a4629/">设计总监</a><a href="/search/a4630/">设计经理</a><a href="/search/a4631/">设计主管</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/search/a47/">物业管理</a>
                                    </dt>
                                    <dd><a href="/search/a4710/">物业管理</a><a href="/search/a4711/">高级物业顾问/物业顾问</a><a href="/search/a4712/">物业管理经理/主管</a><a href="/search/a4713/">物业管理专员/助理</a><a href="/search/a4714/">物业招商/租赁/租售</a><a href="/search/a4715/">物业设施管理人员</a><a href="/search/a4716/">物业机电工程师</a><a href="/search/a4717/">物业维修人员</a><a href="/search/a4718/">其他</a></dd>
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
                                        <a href="/search/a48/">人力资源</a>
                                    </dt>
                                    <dd><a href="/search/a4810/">人力资源</a><a href="/search/a4811/">人事总监</a><a href="/search/a4812/">人事经理</a><a href="/search/a4813/">人事主管</a><a href="/search/a4814/">人事专员</a><a href="/search/a4815/">人事助理</a><a href="/search/a4816/">招聘经理/主管</a><a href="/search/a4817/">招聘专员/助理</a><a href="/search/a4818/">薪资福利经理/主管</a><a href="/search/a4819/">薪资福利专员/助理</a><a href="/search/a4820/">绩效考核经理/主管</a><a href="/search/a4821/">绩效考核专员/助理</a><a href="/search/a4822/">培训经理/主管</a><a href="/search/a4823/">培训专员/助理/培训师</a><a href="/search/a4824/">企业文化/员工关系/工会管理</a><a href="/search/a4825/">人力资源信息系统专员</a><a href="/search/a4826/">其他</a><a href="/search/a4827/">人力资源总监</a><a href="/search/a4828/">人力资源经理</a><a href="/search/a4829/">人力资源主管</a><a href="/search/a4830/">人力资源专员</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/search/a49/">高级管理</a>
                                    </dt>
                                    <dd><a href="/search/a4910/">高级管理</a><a href="/search/a4911/">首席执行官CEO/总裁/总经理</a><a href="/search/a4912/">首席运营官COO</a><a href="/search/a4913/">副总经理/副总裁</a><a href="/search/a4914/">合伙人</a><a href="/search/a4915/">总监/部门经理</a><a href="/search/a4916/">策略发展总监</a><a href="/search/a4917/">办事处首席代表</a><a href="/search/a4918/">办事处/分公司/分支机构经理</a><a href="/search/a4919/">总裁助理/总经理助理</a><a href="/search/a4920/">其他</a><a href="/search/a4921/">运营总监</a><a href="/search/a4922/">运营经理</a><a href="/search/a4923/">运营主管</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/search/a50/">行政/后勤</a>
                                    </dt>
                                    <dd><a href="/search/a5010/">行政/后勤</a><a href="/search/a5011/">行政总监</a><a href="/search/a5012/">行政经理/主管/办公室主任</a><a href="/search/a5013/">行政专员/助理</a><a href="/search/a5014/">经理助理/秘书</a><a href="/search/a5015/">前台接待/总机/接待生</a><a href="/search/a5016/">后勤</a><a href="/search/a5017/">图书管理员/资料管理员</a><a href="/search/a5018/">电脑操作员/打字员</a><a href="/search/a5019/">其他</a></dd>
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
                                        <a href="/search/a51/">咨询/顾问</a>
                                    </dt>
                                    <dd><a href="/search/a5110/">咨询/顾问</a><a href="/search/a5111/">专业顾问</a><a href="/search/a5112/">咨询总监</a><a href="/search/a5113/">咨询经理</a><a href="/search/a5114/">专业培训师</a><a href="/search/a5115/">咨询员</a><a href="/search/a5116/">调研员</a><a href="/search/a5117/">猎头/人才中介</a><a href="/search/a5118/">情报信息分析人员</a><a href="/search/a5119/">其他</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/search/a52/">律师/法务/合规</a>
                                    </dt>
                                    <dd><a href="/search/a5210/">律师/法务/合规</a><a href="/search/a5211/">律师/法律顾问</a><a href="/search/a5212/">律师助理</a><a href="/search/a5213/">法务经理</a><a href="/search/a5214/">法务主管/专员</a><a href="/search/a5215/">法务助理</a><a href="/search/a5216/">合规经理</a><a href="/search/a5217/">合规主管/专员</a><a href="/search/a5218/">知识产权/专利顾问/专员</a><a href="/search/a5219/">其他</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/search/a53/">教师</a>
                                    </dt>
                                    <dd><a href="/search/a5310/">教师</a><a href="/search/a5311/">校长</a><a href="/search/a5312/">大学教授</a><a href="/search/a5313/">讲师/助教</a><a href="/search/a5314/">中学教师</a><a href="/search/a5315/">小学教师</a><a href="/search/a5316/">幼教</a><a href="/search/a5317/">院校教务管理人员</a><a href="/search/a5318/">兼职教师</a><a href="/search/a5319/">家教</a><a href="/search/a5320/">职业技术教师</a><a href="/search/a5321/">其他</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/search/a54/">培训</a>
                                    </dt>
                                    <dd><a href="/search/a5410/">培训</a><a href="/search/a5411/">培训督导</a><a href="/search/a5412/">培训讲师</a><a href="/search/a5413/">培训策划</a><a href="/search/a5414/">培训产品开发</a><a href="/search/a5415/">培训/课程顾问</a><a href="/search/a5416/">培训助理</a><a href="/search/a5417/">其他</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/search/a55/">科研人员</a>
                                    </dt>
                                    <dd><a href="/search/a5510/">科研人员</a><a href="/search/a5511/">科研管理人员</a><a href="/search/a5512/">科研人员</a></dd>
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
                                        <a href="/search/a56/">餐饮/娱乐</a>
                                    </dt>
                                    <dd><a href="/search/a5610/">餐饮/娱乐</a><a href="/search/a5611/">餐饮/娱乐管理</a><a href="/search/a5612/">餐饮/娱乐领班/部长</a><a href="/search/a5613/">餐饮/娱乐服务员</a><a href="/search/a5614/">传菜主管/传菜员</a><a href="/search/a5615/">礼仪/迎宾</a><a href="/search/a5616/">司仪</a><a href="/search/a5617/">行政主厨/厨师长</a><a href="/search/a5618/">厨师/面点师</a><a href="/search/a5619/">调酒师/吧台员</a><a href="/search/a5620/">茶艺师</a><a href="/search/a5621/">其他</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/search/a57/">酒店/旅游</a>
                                    </dt>
                                    <dd><a href="/search/a5710/">酒店/旅游</a><a href="/search/a5711/">酒店/宾馆经理</a><a href="/search/a5712/">酒店/宾馆营销</a><a href="/search/a5713/">宴会管理</a><a href="/search/a5714/">大堂经理</a><a href="/search/a5715/">宾客服务经理</a><a href="/search/a5716/">楼面经理</a><a href="/search/a5717/">前厅接待</a><a href="/search/a5718/">预定部主管</a><a href="/search/a5719/">预定员</a><a href="/search/a5720/">客房服务员/楼面服务员</a><a href="/search/a5721/">机场代表</a><a href="/search/a5722/">行李员</a><a href="/search/a5723/">管家部经理/主管</a><a href="/search/a5724/">清洁服务人员</a><a href="/search/a5725/">健身房服务</a><a href="/search/a5726/">旅游产品销售</a><a href="/search/a5727/">导游/旅行顾问</a><a href="/search/a5728/">行程管理/操作</a><a href="/search/a5729/">票务/订房服务</a><a href="/search/a5730/">签证专员</a><a href="/search/a5731/">其他</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/search/a58/">美容/健身/体育</a>
                                    </dt>
                                    <dd><a href="/search/a5810/">美容/健身/体育</a><a href="/search/a5811/">美容顾问/化妆</a><a href="/search/a5812/">彩妆培训师</a><a href="/search/a5813/">专柜彩妆顾问(BA)</a><a href="/search/a5814/">美容助理/见席美容师</a><a href="/search/a5815/">瘦身顾问</a><a href="/search/a5816/">发型师</a><a href="/search/a5817/">发型助理/学徒</a><a href="/search/a5818/">美甲师</a><a href="/search/a5819/">按摩/足疗</a><a href="/search/a5820/">健身顾问/教练</a><a href="/search/a5821/">体育运动教练</a><a href="/search/a5822/">救生员</a><a href="/search/a5823/">瑜伽/舞蹈老师</a><a href="/search/a5824/">宠物护理/美容</a><a href="/search/a5825/">其他</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/search/a59/">百货/连锁/零售服务</a>
                                    </dt>
                                    <dd><a href="/search/a5910/">百货/连锁/零售服务</a><a href="/search/a5911/">店长/卖场经理/楼面管理</a><a href="/search/a5912/">品类经理</a><a href="/search/a5913/">店员/营业员</a><a href="/search/a5914/">安防主管</a><a href="/search/a5915/">防损员/内保</a><a href="/search/a5916/">收银主管/收银员</a><a href="/search/a5917/">理货员/陈列员/收货员</a><a href="/search/a5918/">导购员</a><a href="/search/a5919/">西点师/面包糕点加工</a><a href="/search/a5920/">生鲜食品加工/处理</a><a href="/search/a5921/">熟食加工</a><a href="/search/a5922/">兼职店员</a><a href="/search/a5923/">其他</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/search/a60/">交通运输服务</a>
                                    </dt>
                                    <dd><a href="/search/a6010/">交通运输服务</a><a href="/search/a6011/">飞机机长/副机长</a><a href="/search/a6012/">空乘人员</a><a href="/search/a6013/">地勤人员</a><a href="/search/a6014/">列车/地铁车长</a><a href="/search/a6015/">列车/地铁司机</a><a href="/search/a6016/">船长/副船长</a><a href="/search/a6017/">船员</a><a href="/search/a6018/">乘务员</a><a href="/search/a6019/">司机</a><a href="/search/a6020/">其他</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/search/a61/">保安/家政/其他服务</a>
                                    </dt>
                                    <dd><a href="/search/a6110/">保安/家政/其他服务</a><a href="/search/a6111/">保安经理</a><a href="/search/a6112/">保安人员</a><a href="/search/a6113/">保镖</a><a href="/search/a6114/">寻呼员/话务员</a><a href="/search/a6115/">搬运工</a><a href="/search/a6116/">清洁工</a><a href="/search/a6117/">家政服务/保姆</a><a href="/search/a6118/">其他</a></dd>
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
                                        <a href="/search/a62/">公务员</a>
                                    </dt>
                                    <dd><a href="/search/a6210/">公务员</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/search/a63/">翻译</a>
                                    </dt>
                                    <dd><a href="/search/a6310/">翻译</a><a href="/search/a6311/">英语翻译</a><a href="/search/a6312/">日语翻译</a><a href="/search/a6313/">德语翻译</a><a href="/search/a6314/">法语翻译</a><a href="/search/a6315/">俄语翻译</a><a href="/search/a6316/">意大利语翻译</a><a href="/search/a6317/">西班牙语翻译</a><a href="/search/a6318/">葡萄牙语翻译</a><a href="/search/a6319/">阿拉伯语翻译</a><a href="/search/a6320/">韩语/朝鲜语翻译</a><a href="/search/a6321/">泰语翻译</a><a href="/search/a6322/">中国方言翻译</a><a href="/search/a6323/">其他语种翻译</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/search/a64/">在校学生</a>
                                    </dt>
                                    <dd><a href="/search/a6410/">在校学生</a><a href="/search/a6411/">研究生</a><a href="/search/a6412/">大学/大专应届毕业生</a><a href="/search/a6413/">中专/职校生</a><a href="/search/a6414/">其他</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/search/a65/">储备干部/培训生/实习生</a>
                                    </dt>
                                    <dd><a href="/search/a6510/">储备干部/培训生/实习生</a><a href="/search/a6511/">储备干部</a><a href="/search/a6512/">培训生</a><a href="/search/a6513/">实习生</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/search/a66/">兼职</a>
                                    </dt>
                                    <dd><a href="/search/a6610/">兼职</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/search/a67/">其他</a>
                                    </dt>
                                    <dd><a href="/search/a6710/">其他</a><a href="/search/a6711/">驯兽师/助理驯兽师</a><a href="/search/a6712/">志愿者</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/search/a68/">环保</a>
                                    </dt>
                                    <dd><a href="/search/a6810/">环保</a><a href="/search/a6811/">环保工程师</a><a href="/search/a6812/">环境影响评价工程师</a><a href="/search/a6813/">环保检测</a><a href="/search/a6814/">水质检测员</a><a href="/search/a6815/">污水处理工程师</a><a href="/search/a6816/">固废工程师</a><a href="/search/a6819/">其它</a></dd>
                                    <div class="clear"></div>
                                </dl><dl>
                                    <dt>
                                        <a href="/search/a69/">农/林/牧/渔</a>
                                    </dt>
                                    <dd><a href="/search/a6910/">农/林/牧/渔</a><a href="/search/a6911/">养殖部主管</a><a href="/search/a6912/">场长(农/林/牧/渔业)</a><a href="/search/a6913/">农艺师</a><a href="/search/a6914/">畜牧师</a><a href="/search/a6915/">饲养员</a><a href="/search/a6916/">动物营养/饲料研发</a><a href="/search/a6917/">其他</a></dd>
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
            <li><a href="/">首页</a></li>
            <li><a href="/search/">找工作</a></li>
            <li><a href="/company/resume/search.html">找人才</a></li>
            <li><a href="/person/">求职管理</a></li>
            <li><a href="/companyjob.html">最新招聘</a></li>
            <li><a href="http://www.597.com/guide/">职场指南</a></li>
            <li><a href="http://www.597.com/hrnews/">HR资讯</a></li>
        </ul>
    </div>

    <div class="clear"></div>
</div>


<!-- banner广告 -->
<div class="banner">
    <div id="focus">
        <div class="adv1"></div>
        <div class="adv2" style="display:none;"></div>
        <div class="adv3" style="display:none;"></div>
    </div>
    <div id="focusArr">
        <ul >
            <li class="cu">1</li>
            <li>2</li>
            <!-- <li>3</li> -->
        </ul>
    </div>
    <div class="loginWrap">
        <div class="loginBox" >
            <div id="notLoginStatus">
                <ul id="loginPanel">
                    <li class="cu">个人登录</li>
                    <li>企业登录</li>
                </ul>
                <div class="loginPer">
                    <form id="formPer" name="formPer" method="post" action="/api/web/person.api">
                        <p class="tipTxt"><i class="jpFntWes"></i><span></span></p>
                        <span class="formTxt"><input type="text" class="text " id="username1" placeholder="手机/邮箱/用户名" /><label for="username1">手机/邮箱/用户名</label></span>
                        <span class="formTxt"><input type="password" class="text" id="pwd1" placeholder="请输入密码"/><label for="pwd1">请输入密码</label></span>
<span class="formTxt" id="perYzm" style="display:none;"><input type="text" class="text" style="width:100px;" id="yzm1" placeholder="请输入验证码"/><label for="yzm1" >请输入验证码</label>
<img id="imgCode" src="" alt="验证码" class="yzm" /></span>
                        <!--
                        <span id="recordPwd">
                        <label for="recordCbox">
                        <input type="checkbox" />
                        自动登录
                        </label>
                        </span>
                        -->
                        <input type="button" id="perBtn" class="btn" value="登录" />
                    </form>
                    <p><a href="/person/findpassword.htm" class="forget aGray2">忘记密码？</a>还没有账号，<a href="/person/register.html">立即注册</a></p>
                    <!--
                    <p class="third_login">使用第三方帐号快速登录
                    <a href="javascript:void(0)" id="sinaLoginTop" title="新浪微博登录"><img src="img/common/weibo_login.gif" alt="新浪微博登录" /></a>
                    <a href="javascript:void(0)" id="qqLoginTop" title="QQ登录"><img src="img/common/qq_login.gif" alt="QQ登录" /></a>
                    </p>
                    -->
                </div>
                <div class="loginCom" style="display:none;">
                    <form id="formCom" name="formCom" method="post" action="/api/web/company.api">
                        <p class="tipTxt" ><i class="jpFntWes"></i><span></span></p>
                        <span class="formTxt"><input type="text" class="text" id="username2" placeholder="请输入用户名" /><label for="username2">请输入用户名</label></span>
                        <span class="formTxt"><input type="password" class="text"  id="pwd2" placeholder="请输入密码" /><label for="pwd1">请输入密码</label></span>
<span class="formTxt" id="comYzm" style="display:none;"><input type="text" class="text" style="width:100px;" placeholder="请输入验证码" id="yzm2" /><label for="yzm1">请输入验证码</label>
<img id="imgComCode" src="" alt="验证码" class="yzm" /></span>
<span id="recordPwd">
<label for="recordCbox2">
    <input type="checkbox" id="comAutoLogin" name="comAutoLogin"/>
    自动登录
</label>
</span>
                        <input type="button" id="comBtn" class="btn" value="登录" />
                    </form>
                    <p><a href="http://wpa.qq.com/msgrd?v=3&amp;uin=2355751654&amp;site=597人才网&amp;menu=yes" target="_blank" class="forget aGray2">忘记密码？</a>还没有账号，<a href="/company/register.html">立即注册</a></p>
                </div>
            </div>
            <div class="logined" style="display:none;">
                <div id="perStatus" style="display:none;">
                    <div>您好，<span id="user_menu_name" ></span></div>
                    <div style="margin:15px 0 20px;"><a href="/person/logout.html" class="exit">退出</a><a href="/person/resume" class="fb aGray">管理我的简历</a></div>
                    <!--
                    <div style="font:12px 宋体;margin-bottom:15px;">
                    您当前共收到<span class="green" style="font:12px arial">(0)</span>个面试邀请。
                    </div>
                    -->
                    <div><a href="/person/" class="enter">进入我的会员中心</a></div>
                </div>
                <div id="comStatus" style="display:none;">
                    <div>您好，<span id="com_menu_name" ></span></div>
                    <div style="margin:15px 0 20px;"><a href="/company/logout.html" class="exit">退出</a><a href="/company/resume/apply.html" class="fb aGray">管理收到的简历</a></div>
                    <!--
                    <div style="font:12px 宋体;margin-bottom:15px;">
                    您当前共有<span class="green" style="font:12px arial">(0)</span>份未读简历。
                    </div>
                    -->
                    <div><a href="/company/" class="enter">进入我的企业中心</a></div>
                </div>
            </div>
        </div>
    </div>

</div>

<!-- 行业招聘 -->
<div class="trade auto">
    <div class="tradeWrap">
        <div id="tradeSlide">
            <dl class="trade-dl1">
                <dt><span></span>互联网</dt>
                <dd>
                    <a href="/jishuzongjian/" target="_blank">技术总监</a>
                    <a href="/java/" target="_blank">java</a>
                    <a href="/wangzhancehua/" target="_blank">网站策划</a>
                    <a href="/webqianduan/" target="_blank">web前端 </a>
                    <a href="/chanpinjingli/" target="_blank">产品经理 </a>
                    <a href="/php/" target="_blank">php</a>
                    <a href="/Android/" target="_blank">Android</a>
                    <a href="/UIshejishi/" target="_blank">UI设计师</a>
                    <a href="/xiangmujingli/" target="_blank">项目经理</a>
                    <a href="/xitongjiagou/" target="_blank">系统架构</a>
                    <a href="/cyuyan/" target="_blank">c语言</a>
                </dd>
            </dl>
            <dl class="trade-dl2">
                <dt><span></span>财务</dt>
                <dd>
                    <a href="/chuna/" target="_blank">出纳</a>
                    <a href="/kuaiji/" target="_blank">会计/会计师</a>
                    <a href="/caiwu/" target="_blank">财务/会计助理</a>
                    <a href="/caiwujingli/" target="_blank">财务经理/主管</a>
                    <a href="/swuzyuan/" target="_blank">税务专员/助理</a>
                    <a href="/swjingli/" target="_blank">税务经理/主管</a>
                    <a href="/caiwufenxiyuan/" target="_blank">财务分析员</a>
                    <a href="/tongjiyuan/" target="_blank">统计员</a>
                </dd>
            </dl>
            <dl style="border-right:none;" class="trade-dl3">
                <dt><span></span>销售</dt>
                <dd>
                    <a href="/xiaoshou/" target="_blank">销售代表</a>
                    <a href="/xiaoshouzhuli/" target="_blank">销售助理</a>
                    <a href="/xiaohsoujingli/" target="_blank">销售经理/主管</a>
                    <a href="/xiaoshouzongjian/" target="_blank">销售总监</a>
                    <a href="/dianhuaxiaoshou/" target="_blank">电话销售</a>
                    <a href="/xiaoshouzhichi/" target="_blank">销售支持</a>
                    <a href="/jishuzongjian/" target="_blank">网络销售</a>
                    <a href="/tuangouyewuyuan/" target="_blank">团购业务员/经理</a>
                    <a href="/qudaozhuanyuan/" target="_blank">渠道专员</a>
                </dd>
            </dl>
            <dl class="trade-dl4">
                <dt><span></span>服务</dt>
                <dd>
                    <a href="/pugong/" target="_blank">普工</a>
                    <a href="/diangong/" target="_blank">电工</a>
                    <a href="/zhengquan/" target="_blank">证券/期货/外汇经纪人</a>
                    <a href="/wuyeguanli/" target="_blank">物业管理员</a>
                    <a href="/wuliuzhuanyuan/" target="_blank">物流专员/助理</a>
                    <a href="/kuaidiyuan/" target="_blank">快递员</a>
                    <a href="/cangkuguanli/" target="_blank">仓库管理员</a>
                    <a href="/gongyinglian/" target="_blank">供应链管理</a>
                    <a href="/diaoduyuan/" target="_blank">调度员</a>
                </dd>
            </dl>
            <dl class="trade-dl5">
                <dt><span></span>人事</dt>
                <dd>
                    <a href="/wenyuan/" target="_blank">文员</a>
                    <a href="/renshijingli/" target="_blank">人事经理/主管</a>
                    <a href="/renshizhuanyuan/" target="_blank">人事专员/助理</a>
                    <a href="/renshizongjian/" target="_blank">人事总监</a>
                    <a href="/lietouguwen/" target="_blank">猎头顾问</a>
                    <a href="/jixiao/" target="_blank">薪酬/绩效</a>
                    <a href="/peixunjingli/" target="_blank">培训经理/主管</a>
                    <a href="/zhaopinzhuanyuan/" target="_blank">招聘专员/助理</a>
                </dd>
            </dl>
            <dl style="border-right:none;" class="trade-dl6">
                <dt><span></span>建筑</dt>
                <dd>
                    <a href="/gongchengxiangmu/" target="_blank">项目管理</a>
                    <a href="/zaojiashi/" target="_blank">造价师/预算师</a>
                    <a href="/gongchengjianli/" target="_blank">工程监理</a>
                    <a href="/jianzhushi/" target="_blank">建筑工程师/总工程师</a>
                    <a href="/muqiangshi/" target="_blank">幕墙工程师</a>
                    <a href="/yuanlijingguan/" target="_blank">园林/景观设计</a>
                </dd>
            </dl>
            <div class="clear"></div>
        </div>
    </div>
    <a href="javascript:void(0);" id="tradeL"></a>
    <a href="javascript:void(0);" id="tradeR"></a>
    <div class="clear"></div>
</div>

<!-- 热门招聘 --><div class="hot">
    <h3 class="hd2"><!--<a href="#" class="more">更多&gt;&gt;</a>--><span>热门招聘</span></h3>
    <ul><li>
        <a href="/com-9189c72190827/" class="aGray" title="大唐国际发电股份有限公司" target="_blank">大唐国际发电股份有限公司</a>
    </li><li>
        <a href="/com-156d3c392893/" class="aGray" title="北京德瑞普商贸有限公司" target="_blank">北京德瑞普商贸有限公司</a>
    </li><li>
        <a href="/com-013aac392353/" class="aGray" title="北京我爱我家房地产经纪有限公司光熙门分公司" target="_blank">北京我爱我家房地产经纪有限公司光熙门分公司</a>
    </li></ul>
    <div class="clear"></div>
</div><!-- 金牌企业招聘 --><div class="auto ">
    <div class="gold">
        <!-- 金牌图标 -->
        <ul><li ><a href="http://bj.597.com/com-e59d67377352/" title="麦田房产" target="_blank"><img src="http://pic.597.com/adv/2015/04/07/15040703294128481.gif"  alt="麦田房产" /></a></li><li ><a href="/com-45b6df424023/" title="北京财智亿达理财顾问有限公司" target="_blank"><img src="http://pic.597.com/adv/2015/04/07/15040703223424787.gif"  alt="北京财智亿达理财顾问有限公司" /></a></li><li ><a href="/com-9189c72190827/" title="大唐国际发电股份有限公司" target="_blank"><img src="http://pic.597.com/adv/2015/08/24/15082407073357684.gif"  alt="大唐国际发电股份有限公司" /></a></li><li ><a href="http://www.jh597.com/company/gxhym/hjhr01/" title="汇众时代信息" target="_blank"><img src="http://pic.597.com/adv/2015/08/02/15080202043389379.gif"  alt="汇众时代信息" /></a></li><li ><a href="/com-3a9e71376823/" title="绿地控股集团海外投资有限公司" target="_blank"><img src="http://pic.597.com/adv/2015/08/02/15080202054033015.gif"  alt="绿地控股集团海外投资有限公司" /></a></li><li ><a href="/com-eb7560376684/" title="中国平安人寿保险有限公司" target="_blank"><img src="http://pic.597.com/adv/2015/08/02/15080202072973633.gif"  alt="中国平安人寿保险有限公司" /></a></li><li ><a href="/com-f9d9cd403504/" title="北京伍玖柒网络科技有限公司" target="_blank"><img src="http://pic.597.com/adv/2015/08/02/15080202091566119.gif"  alt="北京伍玖柒网络科技有限公司" /></a></li><li ><a href="/com-c9cb5b418443/" title="北京东审鼎立国际会计师事务所有限责任公司" target="_blank"><img src="http://pic.597.com/adv/2015/08/02/15080202100669688.gif"  alt="北京东审鼎立国际会计师事务所有限责任公司" /></a></li><li ><a href="/com-a7dd76688628/" title="北京指南针科技发展股份有限公司" target="_blank"><img src="http://pic.597.com/adv/2015/07/22/15072208470626020.gif"  alt="北京指南针科技发展股份有限公司" /></a></li><li ><a href="/com-c672032153739/" title="百度时代网络技术（北京）有限公司" target="_blank"><img src="http://pic.597.com/adv/2015/08/05/15080501392240026.gif"  alt="百度时代网络技术（北京）有限公司" /></a></li><li ><a href="/com-a8866b2183492/" title="北京新浪互联信息服务有限公司" target="_blank"><img src="http://pic.597.com/adv/2015/08/05/15080501414953722.gif"  alt="北京新浪互联信息服务有限公司" /></a></li><li ><a href="/com-4682aa2186351/" title="北京八千行商贸有限公司" target="_blank"><img src="http://pic.597.com/adv/2015/08/11/15081101361297448.gif"  alt="北京八千行商贸有限公司" /></a></li></ul>
        <div class="clear"></div>
    </div>
</div><!-- 金牌企业招聘2 中图标 --><!-- 推荐企业招聘 --><div class="hot">
    <h3 class="hd2"><span>推荐企业招聘</span></h3>
    <ul><li>
        <a href="/com-802e74399611/" class="aGray" title="中国太平洋人寿保险股份有限公司北京分公司（区域拓展部）" target="_blank">中国太平洋人寿保险股份有限公司北京分公司（区域拓展部）</a>
    </li><li>
        <a href="/com-29e890376815/" class="aGray" title="安宇国际集团" target="_blank">安宇国际集团</a>
    </li><li>
        <a href="/com-2a6571400774/" class="aGray" title="北京市星火实业总公司" target="_blank">北京市星火实业总公司</a>
    </li><li>
        <a href="/com-06fbd2650974/" class="aGray" title="北京一品草木科技有限公司" target="_blank">北京一品草木科技有限公司</a>
    </li><li>
        <a href="/com-f9d9cd403504/" class="aGray" title="北京伍玖柒网络科技有限公司" target="_blank">北京伍玖柒网络科技有限公司</a>
    </li><li>
        <a href="/com-506ae6375927/" class="aGray" title="深圳美景天下国际旅行社有限公司" target="_blank">深圳美景天下国际旅行社有限公司</a>
    </li><li>
        <a href="/com-7e96bf375228/" class="aGray" title="北京浩翔远景科技有限公司" target="_blank">北京浩翔远景科技有限公司</a>
    </li></ul>
    <div class="clear"></div>
</div><!-- 品牌企业招聘 --><div class="pinpai auto mgb20">
    <h2 class="hd2" style="padding-left:10px; border-bottom:none;"><span>品牌企业招聘</span></h2>
    <div>
        <ul><li><a href="/com-802e74399611/" title="中国太平洋人寿保险股份有限公司北京分公司（区域拓展部）" target="_blank"><img src="http://pic.597.com/adv/2015/08/02/15080202114440536.gif"  alt="中国太平洋人寿保险股份有限公司北京分公司（区域拓展部）" /></a></li><li><a href="/com-f83254389358/" title="北京月亮河科技有限公司" target="_blank"><img src="http://pic.597.com/adv/2015/08/02/15080202171663742.gif"  alt="北京月亮河科技有限公司" /></a></li><li><a href="/com-eb7560376684/" title="中国平安人寿保险有限公司" target="_blank"><img src="http://pic.597.com/adv/2015/08/02/15080202334991934.gif"  alt="中国平安人寿保险有限公司" /></a></li><li><a href="/com-2e7e87374045/" title="北京恒永通保洁服务有限公司" target="_blank"><img src="http://pic.597.com/adv/2015/08/02/15080202122746828.gif"  alt="北京恒永通保洁服务有限公司" /></a></li><li><a href="/com-7e96bf375228/" title="北京浩翔远景科技有限公司" target="_blank"><img src="http://pic.597.com/adv/2015/08/02/15080202285743073.gif"  alt="北京浩翔远景科技有限公司" /></a></li><li><a href="/com-3162c0430409/" title="北京光辉兴达不锈钢经营部" target="_blank"><img src="http://pic.597.com/adv/2015/08/02/15080202293746643.gif"  alt="北京光辉兴达不锈钢经营部" /></a></li><li><a href="/com-57cf74374083/" title="北京嘉华骄猛国际贸易有限公司" target="_blank"><img src="http://pic.597.com/adv/2015/08/02/15080202180576818.gif"  alt="北京嘉华骄猛国际贸易有限公司" /></a></li><li><a href="/com-8ff39e374094/" title="北京万家购科贸有限公司" target="_blank"><img src="http://pic.597.com/adv/2015/08/02/15080202205336182.gif"  alt="北京万家购科贸有限公司" /></a></li><li><a href="/com-da7a53374278/" title="北京百通世纪科技有限公司" target="_blank"><img src="http://pic.597.com/adv/2015/08/02/15080202214967682.gif"  alt="北京百通世纪科技有限公司" /></a></li><li><a href="/com-cb5824375137/" title="北京金振玉声国际投资管理有限公司" target="_blank"><img src="http://pic.597.com/adv/2015/08/02/15080202325492841.gif"  alt="北京金振玉声国际投资管理有限公司" /></a></li><li><a href="/com-00c9fd374348/" title="北京民意装饰有限公司" target="_blank"><img src="http://pic.597.com/adv/2015/08/02/15080202230613750.gif"  alt="北京民意装饰有限公司" /></a></li><li><a href="/com-81ff0a374367/" title="郑福星（厦门）茶业进出口有限公司" target="_blank"><img src="http://pic.597.com/adv/2015/08/02/15080202234378513.gif"  alt="郑福星（厦门）茶业进出口有限公司" /></a></li><li><a href="/com-b579fc390405/" title="北京东方红航天生物技术股份有限公司" target="_blank"><img src="http://pic.597.com/adv/2015/08/02/15080202241961591.gif"  alt="北京东方红航天生物技术股份有限公司" /></a></li><li><a href="/com-8baa29374307/" title="北京市鑫桂冠服饰" target="_blank"><img src="http://pic.597.com/adv/2015/08/02/15080202223198599.gif"  alt="北京市鑫桂冠服饰" /></a></li></ul>
        <p class="clear"></p>
    </div>
</div><!-- 城市频道招聘 --><!-- 最新企业招聘 --><!-- 最新职位招聘信息 --><!-- 行业热门招聘 --><div class="hot" id="hotTrade">
    <h3 class="hd2"><a href="/search/" class="more" target="_blank">更多&gt;&gt;</a><span>北京行业招聘</span></h3>
    <div class="hyTitle"><a href="#trade1">IT/互联网/通信/电子</a><a href="#trade2">金融/银行/保险</a><a href="#trade3">房产/建筑建设/物业</a><a href="#trade4">广告/传媒/印刷出版</a><a href="#trade5">消费零售/贸易/交通物流</a><a href="#trade6">加工制造/设备仪表</a><a href="#trade7">咨询中介/教育科研/专业服务</a><a href="#trade8">医药生物/医疗保健</a><a href="#trade9">服务业</a><a href="#trade10">能源/矿产/石油化工</a><a href="#trade11">政府/非赢利机构/其他</a></div><div class="jobModel" id="trade1">
    <h4><a class="aGray" href="javascript:void(0);" target="_blank">IT/互联网/通信/电子</a></h4>
    <ul><li>
        <a href="/com-2ed735401996/" title="北京大地之窗广告有限公司" class="aGray" target="_blank">北京大地之窗广告有限公司</a>
    </li><li>
        <a href="/com-0a1b03383364/" title="中钢集团吉林机电设备有限公司" class="aGray" target="_blank">中钢集团吉林机电设备有限公司</a>
    </li><li>
        <a href="/com-891f3e377187/" title="纵横世纪(北京)科技发展有限公司" class="aGray" target="_blank">纵横世纪(北京)科技发展有限公司</a>
    </li><li>
        <a href="/com-e1c7ed406247/" title="北京新安特风机有限公司" class="aGray" target="_blank">北京新安特风机有限公司</a>
    </li><li>
        <a href="/com-c48412389699/" title="北京宇龙仪器仪表有限公司" class="aGray" target="_blank">北京宇龙仪器仪表有限公司</a>
    </li><li>
        <a href="/com-a183fd424720/" title="北京华锐视点数字科技有限公司" class="aGray" target="_blank">北京华锐视点数字科技有限公司</a>
    </li><li>
        <a href="/com-187ad4376758/" title="北京碧福生环保设备工程有限公司" class="aGray" target="_blank">北京碧福生环保设备工程有限公司</a>
    </li><li>
        <a href="/com-d7704a2165680/" title="熙麦田投资管理（北京）有限公司 " class="aGray" target="_blank">熙麦田投资管理（北京）有限公司 </a>
    </li><li>
        <a href="/com-e0e163653485/" title="仙游县度尾龙承阁工艺品店" class="aGray" target="_blank">仙游县度尾龙承阁工艺品店</a>
    </li><li>
        <a href="/com-922b1c2191304/" title="北京科讯创鑫科技有限公司" class="aGray" target="_blank">北京科讯创鑫科技有限公司</a>
    </li><li>
        <a href="/com-4ec6c6463365/" title="北京平衡影楼工作室" class="aGray" target="_blank">北京平衡影楼工作室</a>
    </li><li>
        <a href="/com-84d9e92196203/" title="北京联达动力信息科技股份有限公司" class="aGray" target="_blank">北京联达动力信息科技股份有限公司</a>
    </li><li>
        <a href="/com-3a326e663360/" title="北京华企联信科技有限公司" class="aGray" target="_blank">北京华企联信科技有限公司</a>
    </li><li>
        <a href="/com-e57a5c2197622/" title="深圳市易点点无线互联科技有限公司" class="aGray" target="_blank">深圳市易点点无线互联科技有限公司</a>
    </li><li>
        <a href="/com-b58763688036/" title="北京万岩通软件有限公司" class="aGray" target="_blank">北京万岩通软件有限公司</a>
    </li><li>
        <a href="/com-fc6dd4655917/" title="北京海天同舟科技有限责任公司" class="aGray" target="_blank">北京海天同舟科技有限责任公司</a>
    </li><li>
        <a href="/com-9a00f72201137/" title="北京稍稍网络信息科技有限公司" class="aGray" target="_blank">北京稍稍网络信息科技有限公司</a>
    </li><li>
        <a href="/com-e8f581386868/" title="北京大汉方圆文化发展中心" class="aGray" target="_blank">北京大汉方圆文化发展中心</a>
    </li><li>
        <a href="/com-7eed53440281/" title="北京百思特电信科技发展公司" class="aGray" target="_blank">北京百思特电信科技发展公司</a>
    </li><li>
        <a href="/com-b542e82189192/" title="北京斯科威尔体育文化有限公司" class="aGray" target="_blank">北京斯科威尔体育文化有限公司</a>
    </li><li>
        <a href="/com-7a72082200600/" title="北京普华世纪科技有限责任公司" class="aGray" target="_blank">北京普华世纪科技有限责任公司</a>
    </li><li>
        <a href="/com-516e6d688845/" title="亚太恒通北京科技有限公司" class="aGray" target="_blank">亚太恒通北京科技有限公司</a>
    </li><li>
        <a href="/com-27a85e2183770/" title="艾盛互联（北京）科技有限公司" class="aGray" target="_blank">艾盛互联（北京）科技有限公司</a>
    </li><li>
        <a href="/com-557e992191222/" title="北京合力中税科技发展有限公司" class="aGray" target="_blank">北京合力中税科技发展有限公司</a>
    </li><li>
        <a href="/com-8c5d4b2184245/" title="北京戎马天成信息技术有限公司" class="aGray" target="_blank">北京戎马天成信息技术有限公司</a>
    </li><li>
        <a href="/com-5a4ed22192964/" title="北京祺兴达科技有限公司" class="aGray" target="_blank">北京祺兴达科技有限公司</a>
    </li><li>
        <a href="/com-a878d92169099/" title="北京易才博普奥管理顾问有限公司" class="aGray" target="_blank">北京易才博普奥管理顾问有限公司</a>
    </li><li>
        <a href="/com-130963401470/" title="北京智达新元科技有限公司" class="aGray" target="_blank">北京智达新元科技有限公司</a>
    </li><li>
        <a href="/com-1f6b1f2192563/" title="北京北青酒店有限公司 " class="aGray" target="_blank">北京北青酒店有限公司 </a>
    </li><li>
        <a href="/com-c898bb2184145/" title="易捷云科信息技术（北京）有限公司" class="aGray" target="_blank">易捷云科信息技术（北京）有限公司</a>
    </li><li>
        <a href="/com-2d0af82168479/" title="北京腾明启源科技有限公司" class="aGray" target="_blank">北京腾明启源科技有限公司</a>
    </li><li>
        <a href="/com-fd7e042168454/" title="北京途牛天下信息技术有限公司" class="aGray" target="_blank">北京途牛天下信息技术有限公司</a>
    </li></ul>
    <div class="clear"></div>
</div><div class="jobModel" id="trade2">
    <h4><a class="aGray" href="javascript:void(0);" target="_blank">金融/银行/保险</a></h4>
    <ul><li>
        <a href="/com-62a3d82184943/" title="太平洋人寿北京分公司" class="aGray" target="_blank">太平洋人寿北京分公司</a>
    </li><li>
        <a href="/com-a5eb0e445452/" title="北京强鑫财富投资管理有限公司" class="aGray" target="_blank">北京强鑫财富投资管理有限公司</a>
    </li><li>
        <a href="/com-8b3b5e378351/" title="北京创亿嘉信科技发展有限公司" class="aGray" target="_blank">北京创亿嘉信科技发展有限公司</a>
    </li><li>
        <a href="/com-36f1152167947/" title="北京易拓财富投资管理有限公司" class="aGray" target="_blank">北京易拓财富投资管理有限公司</a>
    </li><li>
        <a href="/com-f08830374205/" title="北京4U财富管理中心" class="aGray" target="_blank">北京4U财富管理中心</a>
    </li><li>
        <a href="/com-0ad0e82201864/" title="深圳市龙阳商务咨询有限公司北京第一分公司 " class="aGray" target="_blank">深圳市龙阳商务咨询有限公司北京第一分公司 </a>
    </li><li>
        <a href="/com-802e74399611/" title="中国太平洋人寿保险股份有限公司北京分公司（区域拓展部）" class="aGray" target="_blank">中国太平洋人寿保险股份有限公司北京分公司（区域拓展部）</a>
    </li><li>
        <a href="/com-891e252191106/" title="深圳市前海正信石油化工投资有限公司北京分公司 " class="aGray" target="_blank">深圳市前海正信石油化工投资有限公司北京分公司 </a>
    </li><li>
        <a href="/com-97f9be2191462/" title="北京今联投资有限公司" class="aGray" target="_blank">北京今联投资有限公司</a>
    </li><li>
        <a href="/com-924452656894/" title="北京中投硬石投资管理有限公司" class="aGray" target="_blank">北京中投硬石投资管理有限公司</a>
    </li><li>
        <a href="/com-e97977374608/" title="承德乐野食品有限公司" class="aGray" target="_blank">承德乐野食品有限公司</a>
    </li><li>
        <a href="/com-93521f2154204/" title="北京宇宸投资基金管理有限公司" class="aGray" target="_blank">北京宇宸投资基金管理有限公司</a>
    </li><li>
        <a href="/com-4006912169960/" title="北京平衡资产" class="aGray" target="_blank">北京平衡资产</a>
    </li><li>
        <a href="/com-5643d62200875/" title="北京腾铭律师事务所" class="aGray" target="_blank">北京腾铭律师事务所</a>
    </li><li>
        <a href="/com-67c0c62169868/" title="北京金鸿德投资有限责任公司" class="aGray" target="_blank">北京金鸿德投资有限责任公司</a>
    </li><li>
        <a href="/com-9ac18f2195360/" title="北京华文财富商品经营有限公司" class="aGray" target="_blank">北京华文财富商品经营有限公司</a>
    </li><li>
        <a href="/com-af09e82147178/" title="佰润明辉（北京）投资有限公司" class="aGray" target="_blank">佰润明辉（北京）投资有限公司</a>
    </li><li>
        <a href="/com-69d7f61554145/" title="北京恒科仲达投资管理有限公司" class="aGray" target="_blank">北京恒科仲达投资管理有限公司</a>
    </li><li>
        <a href="/com-3f136e2151327/" title="北京京宝融投资担保有限公司" class="aGray" target="_blank">北京京宝融投资担保有限公司</a>
    </li><li>
        <a href="/com-0e9261688442/" title="北京习鼎阁资产管理有限公司" class="aGray" target="_blank">北京习鼎阁资产管理有限公司</a>
    </li><li>
        <a href="/com-f86fab2190719/" title="国元金泰（北京）贵金属经营有限公司" class="aGray" target="_blank">国元金泰（北京）贵金属经营有限公司</a>
    </li><li>
        <a href="/com-7690832186668/" title="北京安承财富资产管理有限公司" class="aGray" target="_blank">北京安承财富资产管理有限公司</a>
    </li><li>
        <a href="/com-6d6817404910/" title="北京正隆昌商贸有限责任公司" class="aGray" target="_blank">北京正隆昌商贸有限责任公司</a>
    </li><li>
        <a href="/com-e9a67b377628/" title="圣鑫融金（北京）投资担保有限公司" class="aGray" target="_blank">圣鑫融金（北京）投资担保有限公司</a>
    </li><li>
        <a href="/com-6a878b2164737/" title="北京鼎高嘉业资产管理有限公司 " class="aGray" target="_blank">北京鼎高嘉业资产管理有限公司 </a>
    </li><li>
        <a href="/com-f37a882145977/" title="北京日益盛投资管理有限公司" class="aGray" target="_blank">北京日益盛投资管理有限公司</a>
    </li><li>
        <a href="/com-188d862192106/" title="普信资产管理有限公司北京第二分公司 " class="aGray" target="_blank">普信资产管理有限公司北京第二分公司 </a>
    </li><li>
        <a href="/com-f83447375009/" title="北京铸银博科技有限责任公司" class="aGray" target="_blank">北京铸银博科技有限责任公司</a>
    </li><li>
        <a href="/com-fc68e22191204/" title="北京鑫融宏泰投资管理有限公司" class="aGray" target="_blank">北京鑫融宏泰投资管理有限公司</a>
    </li><li>
        <a href="/com-b3dc662181091/" title="中矿联合投资集团有限公司" class="aGray" target="_blank">中矿联合投资集团有限公司</a>
    </li><li>
        <a href="/com-224c212154520/" title="易广富（北京）投资管理有限公司 " class="aGray" target="_blank">易广富（北京）投资管理有限公司 </a>
    </li><li>
        <a href="/com-1bd8a02153434/" title="北京博富投资管理有限公司" class="aGray" target="_blank">北京博富投资管理有限公司</a>
    </li></ul>
    <div class="clear"></div>
</div><div class="jobModel" id="trade3">
    <h4><a class="aGray" href="javascript:void(0);" target="_blank">房产/建筑建设/物业</a></h4>
    <ul><li>
        <a href="/com-129ebe465826/" title="北京韵达物流有限公司" class="aGray" target="_blank">北京韵达物流有限公司</a>
    </li><li>
        <a href="/com-82ed29400993/" title="八零时代（北京）房地产经纪有限公司" class="aGray" target="_blank">八零时代（北京）房地产经纪有限公司</a>
    </li><li>
        <a href="/com-96fc492164283/" title="北京金三优装饰有限责任公司海淀北三环中路分公司" class="aGray" target="_blank">北京金三优装饰有限责任公司海淀北三环中路分公司</a>
    </li><li>
        <a href="/com-707399421170/" title="北京嘉华万顺投资有限公司" class="aGray" target="_blank">北京嘉华万顺投资有限公司</a>
    </li><li>
        <a href="/com-45b6df424023/" title="北京财智亿达理财顾问有限公司" class="aGray" target="_blank">北京财智亿达理财顾问有限公司</a>
    </li><li>
        <a href="/com-b7a72f400276/" title="北京链家房地产经纪有限公司" class="aGray" target="_blank">北京链家房地产经纪有限公司</a>
    </li><li>
        <a href="/com-731b20420058/" title="北京金源日盛工程技术有限公司" class="aGray" target="_blank">北京金源日盛工程技术有限公司</a>
    </li><li>
        <a href="/com-e59d67377352/" title="麦田房产" class="aGray" target="_blank">麦田房产</a>
    </li><li>
        <a href="/com-ccadce433599/" title="北京赢商房地产经纪有限公司" class="aGray" target="_blank">北京赢商房地产经纪有限公司</a>
    </li><li>
        <a href="/com-013aac392353/" title="北京我爱我家房地产经纪有限公司光熙门分公司" class="aGray" target="_blank">北京我爱我家房地产经纪有限公司光熙门分公司</a>
    </li><li>
        <a href="/com-bca1402165075/" title="北京红澳卓越投资管理有限公司" class="aGray" target="_blank">北京红澳卓越投资管理有限公司</a>
    </li><li>
        <a href="/com-acbca1383630/" title="北京安艺达保安服务有限公司" class="aGray" target="_blank">北京安艺达保安服务有限公司</a>
    </li><li>
        <a href="/com-26f4d7388575/" title="北京凯达金科装饰有限责任公司" class="aGray" target="_blank">北京凯达金科装饰有限责任公司</a>
    </li><li>
        <a href="/com-a1f63b459077/" title="北京思源创新房地产经纪有限公司" class="aGray" target="_blank">北京思源创新房地产经纪有限公司</a>
    </li><li>
        <a href="/com-ca5366422659/" title="中天银都（北京）建设工程有限公司" class="aGray" target="_blank">中天银都（北京）建设工程有限公司</a>
    </li><li>
        <a href="/com-ffe70b2169110/" title="北京广电音视科技发展有限公司" class="aGray" target="_blank">北京广电音视科技发展有限公司</a>
    </li><li>
        <a href="/com-94b15a2187721/" title="北京恒伟圣杰物业管理有限公司" class="aGray" target="_blank">北京恒伟圣杰物业管理有限公司</a>
    </li><li>
        <a href="/com-9856df2190768/" title="新中物业管理（中国）有限公司第一分公司" class="aGray" target="_blank">新中物业管理（中国）有限公司第一分公司</a>
    </li><li>
        <a href="/com-6d096e422561/" title="泰康人寿保险股份有限公司北京分公司" class="aGray" target="_blank">泰康人寿保险股份有限公司北京分公司</a>
    </li><li>
        <a href="/com-17069d2164741/" title="中物联物业集团有限公司 " class="aGray" target="_blank">中物联物业集团有限公司 </a>
    </li><li>
        <a href="/com-f27ae4388717/" title="装和建筑装饰工程（北京）有限公司" class="aGray" target="_blank">装和建筑装饰工程（北京）有限公司</a>
    </li><li>
        <a href="/com-7f04062186698/" title="北京北鹏首豪建材集团有限公司 " class="aGray" target="_blank">北京北鹏首豪建材集团有限公司 </a>
    </li><li>
        <a href="/com-0f2a602196135/" title="北京博讯电子机房工程有限公司" class="aGray" target="_blank">北京博讯电子机房工程有限公司</a>
    </li><li>
        <a href="/com-b7bc922194399/" title="北京京商融合财富管理顾问有限公司" class="aGray" target="_blank">北京京商融合财富管理顾问有限公司</a>
    </li><li>
        <a href="/com-49e842378470/" title="北京成宏热力供应有限责任公司" class="aGray" target="_blank">北京成宏热力供应有限责任公司</a>
    </li><li>
        <a href="/com-79dcd02200221/" title="北京康力千顺科技有限公司" class="aGray" target="_blank">北京康力千顺科技有限公司</a>
    </li><li>
        <a href="/com-64ea5a2200699/" title="北京华宝益丰收藏品文化有限公司" class="aGray" target="_blank">北京华宝益丰收藏品文化有限公司</a>
    </li><li>
        <a href="/com-60c3b3394110/" title="上海悦宝环保科技有限公司" class="aGray" target="_blank">上海悦宝环保科技有限公司</a>
    </li><li>
        <a href="/com-8f6f872196062/" title="北京银合汇新材料科技有限公司" class="aGray" target="_blank">北京银合汇新材料科技有限公司</a>
    </li><li>
        <a href="/com-9003db658501/" title="北京东海茗华建材有限公司" class="aGray" target="_blank">北京东海茗华建材有限公司</a>
    </li><li>
        <a href="/com-40a5662169598/" title="北京众诚建安科技有限公司" class="aGray" target="_blank">北京众诚建安科技有限公司</a>
    </li><li>
        <a href="/com-9cfd322191715/" title="皆斯内（上海）物业管理服务有限公司北京分公司" class="aGray" target="_blank">皆斯内（上海）物业管理服务有限公司北京分公司</a>
    </li></ul>
    <div class="clear"></div>
</div><div class="jobModel" id="trade4">
    <h4><a class="aGray" href="javascript:void(0);" target="_blank">广告/传媒/印刷出版</a></h4>
    <ul><li>
        <a href="/com-d44f31653942/" title="兄弟同盟（北京）文化传媒有限公司" class="aGray" target="_blank">兄弟同盟（北京）文化传媒有限公司</a>
    </li><li>
        <a href="/com-4406e42194777/" title="北京宏茂国际影视文化交流中心" class="aGray" target="_blank">北京宏茂国际影视文化交流中心</a>
    </li><li>
        <a href="/com-f9bd6a2165491/" title="北京盈润振华文化传媒有限公司" class="aGray" target="_blank">北京盈润振华文化传媒有限公司</a>
    </li><li>
        <a href="/com-ae0c6b2190242/" title="北京兼程信息技术有限公司" class="aGray" target="_blank">北京兼程信息技术有限公司</a>
    </li><li>
        <a href="/com-d926862169073/" title="北京亚泰世纪文化交流中心" class="aGray" target="_blank">北京亚泰世纪文化交流中心</a>
    </li><li>
        <a href="/com-2cfe422195388/" title="北京润无声文化发展有限公司" class="aGray" target="_blank">北京润无声文化发展有限公司</a>
    </li><li>
        <a href="/com-ec2a5e2190945/" title="北京宏茂国际影视文化交流中心" class="aGray" target="_blank">北京宏茂国际影视文化交流中心</a>
    </li><li>
        <a href="/com-773083406098/" title="北京升星文化传媒有限公司" class="aGray" target="_blank">北京升星文化传媒有限公司</a>
    </li><li>
        <a href="/com-2523462152791/" title="唯美创世(北京)广告传媒有限公司" class="aGray" target="_blank">唯美创世(北京)广告传媒有限公司</a>
    </li><li>
        <a href="/com-e8cd022153178/" title="北京世博威国际展览有限公司" class="aGray" target="_blank">北京世博威国际展览有限公司</a>
    </li><li>
        <a href="/com-3d9bd1431719/" title="北京三读典藏图书发行有限公司" class="aGray" target="_blank">北京三读典藏图书发行有限公司</a>
    </li><li>
        <a href="/com-0288602181060/" title="北京旺旅展览展示有限公司" class="aGray" target="_blank">北京旺旅展览展示有限公司</a>
    </li><li>
        <a href="/com-df8c80660228/" title="北京东清特达文化传媒有限公司" class="aGray" target="_blank">北京东清特达文化传媒有限公司</a>
    </li><li>
        <a href="/com-cd8d33391563/" title="北京市永生运佳包装材料有限公司" class="aGray" target="_blank">北京市永生运佳包装材料有限公司</a>
    </li><li>
        <a href="/com-33a7092191224/" title="北京维圣文化传媒有限责任公司" class="aGray" target="_blank">北京维圣文化传媒有限责任公司</a>
    </li><li>
        <a href="/com-e1f141664220/" title="世信朗普国际展览(北京)有限公司" class="aGray" target="_blank">世信朗普国际展览(北京)有限公司</a>
    </li><li>
        <a href="/com-0253932167774/" title="北京广联先锋网络技术有限公司" class="aGray" target="_blank">北京广联先锋网络技术有限公司</a>
    </li><li>
        <a href="/com-94571a2169334/" title="北京西西木国际展览有限公司" class="aGray" target="_blank">北京西西木国际展览有限公司</a>
    </li><li>
        <a href="/com-ab9608394396/" title="北京德远联合广告有限公司" class="aGray" target="_blank">北京德远联合广告有限公司</a>
    </li><li>
        <a href="/com-5099dd2188314/" title="北京恒源智兴文化交流中心" class="aGray" target="_blank">北京恒源智兴文化交流中心</a>
    </li><li>
        <a href="/com-b9d1692169541/" title="北京吉川天尚文化艺术有限公司" class="aGray" target="_blank">北京吉川天尚文化艺术有限公司</a>
    </li><li>
        <a href="/com-2884862200512/" title="北京梦杰家园文化传媒有限公司" class="aGray" target="_blank">北京梦杰家园文化传媒有限公司</a>
    </li><li>
        <a href="/com-e8ecae2196994/" title="北京嘉名正则文化传媒有限公司" class="aGray" target="_blank">北京嘉名正则文化传媒有限公司</a>
    </li><li>
        <a href="/com-5888bf459379/" title="北京海空影视文化咨询有限公司" class="aGray" target="_blank">北京海空影视文化咨询有限公司</a>
    </li><li>
        <a href="/com-94e74d1232042/" title="北京光影堂文化传播有限公司" class="aGray" target="_blank">北京光影堂文化传播有限公司</a>
    </li><li>
        <a href="/com-93ee4d2152794/" title="华人营销策划（北京）有限公司 " class="aGray" target="_blank">华人营销策划（北京）有限公司 </a>
    </li><li>
        <a href="/com-9fae042183455/" title="深圳市纵延展业展览有限公司北京分公司" class="aGray" target="_blank">深圳市纵延展业展览有限公司北京分公司</a>
    </li><li>
        <a href="/com-49621c2191661/" title="北京博熙亨通艺术传媒有限公司" class="aGray" target="_blank">北京博熙亨通艺术传媒有限公司</a>
    </li><li>
        <a href="/com-4fbcc32164921/" title="华杰永泰科技（北京）有限公司" class="aGray" target="_blank">华杰永泰科技（北京）有限公司</a>
    </li><li>
        <a href="/com-1eb5d32191291/" title="三原国际广告（北京）有限公司" class="aGray" target="_blank">三原国际广告（北京）有限公司</a>
    </li><li>
        <a href="/com-34a8c22195278/" title="汇隆基业科技（北京）有限责任公司" class="aGray" target="_blank">汇隆基业科技（北京）有限责任公司</a>
    </li><li>
        <a href="/com-9f4b152196921/" title="五洲传播出版社" class="aGray" target="_blank">五洲传播出版社</a>
    </li></ul>
    <div class="clear"></div>
</div><div class="jobModel" id="trade5">
    <h4><a class="aGray" href="javascript:void(0);" target="_blank">消费零售/贸易/交通物流</a></h4>
    <ul><li>
        <a href="/com-28c5c9399213/" title="北京天易恒辉商贸有限公司" class="aGray" target="_blank">北京天易恒辉商贸有限公司</a>
    </li><li>
        <a href="/com-f31c132165776/" title="广东趣尚网商贸有限公司" class="aGray" target="_blank">广东趣尚网商贸有限公司</a>
    </li><li>
        <a href="/com-0d1484424203/" title="北京五洲中兴机电设备开发有限公司" class="aGray" target="_blank">北京五洲中兴机电设备开发有限公司</a>
    </li><li>
        <a href="/com-35415b391214/" title="北京同学时代教育科技有限公司" class="aGray" target="_blank">北京同学时代教育科技有限公司</a>
    </li><li>
        <a href="/com-1928b2795211/" title="北京嘉德喜商贸中心" class="aGray" target="_blank">北京嘉德喜商贸中心</a>
    </li><li>
        <a href="/com-9dcd2e391128/" title="北京亚展宏达环卫设备有限公司" class="aGray" target="_blank">北京亚展宏达环卫设备有限公司</a>
    </li><li>
        <a href="/com-c9d1131502668/" title="北京腾飞盛世环保科技有限公司" class="aGray" target="_blank">北京腾飞盛世环保科技有限公司</a>
    </li><li>
        <a href="/com-902f412166472/" title="北京鸿业兴盛商贸有限公司" class="aGray" target="_blank">北京鸿业兴盛商贸有限公司</a>
    </li><li>
        <a href="/com-51e6b22189188/" title="恒旺兴达（北京）国际贸易有限公司 " class="aGray" target="_blank">恒旺兴达（北京）国际贸易有限公司 </a>
    </li><li>
        <a href="/com-06065d2197701/" title="北京丁丁投资有限公司" class="aGray" target="_blank">北京丁丁投资有限公司</a>
    </li><li>
        <a href="/com-c5a45f456115/" title="北京贝康永和商贸有限责任公司" class="aGray" target="_blank">北京贝康永和商贸有限责任公司</a>
    </li><li>
        <a href="/com-f726b12195197/" title="北京定国建业五金有限公司" class="aGray" target="_blank">北京定国建业五金有限公司</a>
    </li><li>
        <a href="/com-3b1e162189075/" title="小微律政(北京)企业管理有限公司" class="aGray" target="_blank">小微律政(北京)企业管理有限公司</a>
    </li><li>
        <a href="/com-1da1242201791/" title="培高（北京）商业连锁有限公司" class="aGray" target="_blank">培高（北京）商业连锁有限公司</a>
    </li><li>
        <a href="/com-fc1e4a2201783/" title="小微律政（北京）企业管理有限公司" class="aGray" target="_blank">小微律政（北京）企业管理有限公司</a>
    </li><li>
        <a href="/com-f1ac8c2196664/" title="北京艺威木业有限责任公司 " class="aGray" target="_blank">北京艺威木业有限责任公司 </a>
    </li><li>
        <a href="/com-2b62f8379561/" title="北岛北方科贸（北京）有限公司" class="aGray" target="_blank">北岛北方科贸（北京）有限公司</a>
    </li><li>
        <a href="/com-d28f8a404281/" title="北京建迅网天科技有限公司" class="aGray" target="_blank">北京建迅网天科技有限公司</a>
    </li><li>
        <a href="/com-ce56182146916/" title="北京金汇奇缘商贸有限公司" class="aGray" target="_blank">北京金汇奇缘商贸有限公司</a>
    </li><li>
        <a href="/com-08d51b2196719/" title="龙马传奇（北京）商贸有限公司" class="aGray" target="_blank">龙马传奇（北京）商贸有限公司</a>
    </li><li>
        <a href="/com-8971a9375583/" title="北京华知学园教育科技有限公司" class="aGray" target="_blank">北京华知学园教育科技有限公司</a>
    </li><li>
        <a href="/com-3a72552191814/" title="北京宏方誉达商贸有限公司" class="aGray" target="_blank">北京宏方誉达商贸有限公司</a>
    </li><li>
        <a href="/com-e85ce42188399/" title="和善商贸（北京）有限公司" class="aGray" target="_blank">和善商贸（北京）有限公司</a>
    </li><li>
        <a href="/com-af3140659770/" title="上海大勤实业有限公司北京商贸分公司 " class="aGray" target="_blank">上海大勤实业有限公司北京商贸分公司 </a>
    </li><li>
        <a href="/com-3f9b2c2200984/" title="北京绿信生态农业开发有限公司" class="aGray" target="_blank">北京绿信生态农业开发有限公司</a>
    </li><li>
        <a href="/com-a0063f2190782/" title="北京安信立洋商贸有限公司 " class="aGray" target="_blank">北京安信立洋商贸有限公司 </a>
    </li><li>
        <a href="/com-f9f2142197610/" title="艾莱客（北京）国际餐饮文化传播有限公司" class="aGray" target="_blank">艾莱客（北京）国际餐饮文化传播有限公司</a>
    </li><li>
        <a href="/com-dc017e2194994/" title="北京瀚道禅风古典家具厂" class="aGray" target="_blank">北京瀚道禅风古典家具厂</a>
    </li><li>
        <a href="/com-07c499382087/" title="中意科创市场调查（北京）有限公司" class="aGray" target="_blank">中意科创市场调查（北京）有限公司</a>
    </li><li>
        <a href="/com-39c8932191355/" title="北京零味道商贸有限公司" class="aGray" target="_blank">北京零味道商贸有限公司</a>
    </li><li>
        <a href="/com-8909ab2196083/" title="北京丰裕时代商贸有限公司" class="aGray" target="_blank">北京丰裕时代商贸有限公司</a>
    </li><li>
        <a href="/com-be638d2197608/" title="北京森泉博创科技有限公司" class="aGray" target="_blank">北京森泉博创科技有限公司</a>
    </li></ul>
    <div class="clear"></div>
</div><div class="jobModel" id="trade6">
    <h4><a class="aGray" href="javascript:void(0);" target="_blank">加工制造/设备仪表</a></h4>
    <ul><li>
        <a href="/com-5c1aca388609/" title="北京三川纵横科技有限公司" class="aGray" target="_blank">北京三川纵横科技有限公司</a>
    </li><li>
        <a href="/com-6501652196590/" title="中国包装总公司" class="aGray" target="_blank">中国包装总公司</a>
    </li><li>
        <a href="/com-5017052199601/" title="北京信至盟投资管理有限公司" class="aGray" target="_blank">北京信至盟投资管理有限公司</a>
    </li><li>
        <a href="/com-c9d7a12183789/" title="北京绿三爱环保科技开发有限公司" class="aGray" target="_blank">北京绿三爱环保科技开发有限公司</a>
    </li><li>
        <a href="/com-367df12153341/" title="北京国立信科技术有限公司 " class="aGray" target="_blank">北京国立信科技术有限公司 </a>
    </li><li>
        <a href="/com-fd77062182886/" title="北京华科拓普电子仪器有限公司" class="aGray" target="_blank">北京华科拓普电子仪器有限公司</a>
    </li><li>
        <a href="/com-a335282200746/" title="北京利雍鑫电力技术有限公司" class="aGray" target="_blank">北京利雍鑫电力技术有限公司</a>
    </li><li>
        <a href="/com-057af0659379/" title="北京恒通万达仪器有限公司" class="aGray" target="_blank">北京恒通万达仪器有限公司</a>
    </li><li>
        <a href="/com-3d82dc2197416/" title="中科赛凌（北京）科技有限公司" class="aGray" target="_blank">中科赛凌（北京）科技有限公司</a>
    </li><li>
        <a href="/com-bb8f242166308/" title="北京创力源电子科技发展有限公司" class="aGray" target="_blank">北京创力源电子科技发展有限公司</a>
    </li><li>
        <a href="/com-72f3e32166956/" title="北京诚信达汽车销售有限公司" class="aGray" target="_blank">北京诚信达汽车销售有限公司</a>
    </li><li>
        <a href="/com-9f2e0b2182669/" title="北京京洋包装设备有限公司" class="aGray" target="_blank">北京京洋包装设备有限公司</a>
    </li><li>
        <a href="/com-42d7a52194442/" title="北京普安科技有限公司" class="aGray" target="_blank">北京普安科技有限公司</a>
    </li><li>
        <a href="/com-6ef4ff2195892/" title="北京东方联菲供热技术有限公司" class="aGray" target="_blank">北京东方联菲供热技术有限公司</a>
    </li><li>
        <a href="/com-75844c2188096/" title="菲亿频电气集团有限公司" class="aGray" target="_blank">菲亿频电气集团有限公司</a>
    </li><li>
        <a href="/com-e534cb2154399/" title="北京宏少嘉业人力资源咨询有限公司 " class="aGray" target="_blank">北京宏少嘉业人力资源咨询有限公司 </a>
    </li><li>
        <a href="/com-c508ec2188216/" title="北京九天龙建筑石材工程有限公司" class="aGray" target="_blank">北京九天龙建筑石材工程有限公司</a>
    </li><li>
        <a href="/com-c56fc02189072/" title="北京尤萨洗涤设备有限公司" class="aGray" target="_blank">北京尤萨洗涤设备有限公司</a>
    </li><li>
        <a href="/com-afc6cd2165957/" title="北京宝利来科技有限公司" class="aGray" target="_blank">北京宝利来科技有限公司</a>
    </li><li>
        <a href="/com-e0fb592192477/" title="北京优耐士科技有限公司" class="aGray" target="_blank">北京优耐士科技有限公司</a>
    </li><li>
        <a href="/com-6dd2102191247/" title="北京万车达汽车俱乐部有限公司" class="aGray" target="_blank">北京万车达汽车俱乐部有限公司</a>
    </li><li>
        <a href="/com-9b44982190296/" title="北京藤田科技有限公司" class="aGray" target="_blank">北京藤田科技有限公司</a>
    </li><li>
        <a href="/com-89ca342190137/" title="北京华信三林机电设备有限公司" class="aGray" target="_blank">北京华信三林机电设备有限公司</a>
    </li><li>
        <a href="/com-4a30132191741/" title="北京拓新达科技有限公司" class="aGray" target="_blank">北京拓新达科技有限公司</a>
    </li><li>
        <a href="/com-85dafa2167436/" title="北京汽车股份有限公司北京分公司" class="aGray" target="_blank">北京汽车股份有限公司北京分公司</a>
    </li><li>
        <a href="/com-2d34c32191221/" title="北京欣益鸿科技有限公司" class="aGray" target="_blank">北京欣益鸿科技有限公司</a>
    </li><li>
        <a href="/com-927cde2188502/" title="北京迪文科技有限公司" class="aGray" target="_blank">北京迪文科技有限公司</a>
    </li><li>
        <a href="/com-7554d4658909/" title="中和拓普（北京）科技有限公司" class="aGray" target="_blank">中和拓普（北京）科技有限公司</a>
    </li><li>
        <a href="/com-bae62d2190603/" title="北京禾信科学仪器有限公司" class="aGray" target="_blank">北京禾信科学仪器有限公司</a>
    </li><li>
        <a href="/com-8b470d654763/" title="江苏九龙汽车制造有限公司" class="aGray" target="_blank">江苏九龙汽车制造有限公司</a>
    </li><li>
        <a href="/com-91e8202169775/" title="北京淳一航空科技有限公司" class="aGray" target="_blank">北京淳一航空科技有限公司</a>
    </li><li>
        <a href="/com-abc4d31880537/" title="北京精诚华泰仪表有限公司" class="aGray" target="_blank">北京精诚华泰仪表有限公司</a>
    </li></ul>
    <div class="clear"></div>
</div><div class="jobModel" id="trade7">
    <h4><a class="aGray" href="javascript:void(0);" target="_blank">咨询中介/教育科研/专业服务</a></h4>
    <ul><li>
        <a href="/com-8a55b5655184/" title="北京天谱创辉企业管理咨询有限公司" class="aGray" target="_blank">北京天谱创辉企业管理咨询有限公司</a>
    </li><li>
        <a href="/com-27e5ca2201682/" title="北京巨源信息咨询有限公司" class="aGray" target="_blank">北京巨源信息咨询有限公司</a>
    </li><li>
        <a href="/com-4f9bdc2146158/" title="北京闻美教育咨询有限公司" class="aGray" target="_blank">北京闻美教育咨询有限公司</a>
    </li><li>
        <a href="/com-6e16ad2189404/" title="北京巨源信息咨询有限公司" class="aGray" target="_blank">北京巨源信息咨询有限公司</a>
    </li><li>
        <a href="/com-89219c2168253/" title="北京世纪森宝商贸有限公司" class="aGray" target="_blank">北京世纪森宝商贸有限公司</a>
    </li><li>
        <a href="/com-8190ec407247/" title="北京我爱我家房地产经纪有限公司文学馆路分公司" class="aGray" target="_blank">北京我爱我家房地产经纪有限公司文学馆路分公司</a>
    </li><li>
        <a href="/com-be0ff92166364/" title="北京君和益健康科技有限公司" class="aGray" target="_blank">北京君和益健康科技有限公司</a>
    </li><li>
        <a href="/com-e3096a2200831/" title="北京红日会计师事务所有限责任公司" class="aGray" target="_blank">北京红日会计师事务所有限责任公司</a>
    </li><li>
        <a href="/com-99f9182192124/" title="北京驭时德隆科技有限公司" class="aGray" target="_blank">北京驭时德隆科技有限公司</a>
    </li><li>
        <a href="/com-991ce92183170/" title="北京环创企业管理顾问有限公司" class="aGray" target="_blank">北京环创企业管理顾问有限公司</a>
    </li><li>
        <a href="/com-8d6ae32197658/" title="北京卓越新标企业管理咨询中心" class="aGray" target="_blank">北京卓越新标企业管理咨询中心</a>
    </li><li>
        <a href="/com-8447a12196815/" title="北京联合智业检验检测有限公司" class="aGray" target="_blank">北京联合智业检验检测有限公司</a>
    </li><li>
        <a href="/com-604c232194539/" title="北京中建前沿信息咨询中心" class="aGray" target="_blank">北京中建前沿信息咨询中心</a>
    </li><li>
        <a href="/com-8e0acd2182938/" title="深圳市新阳光教育发展有限公司" class="aGray" target="_blank">深圳市新阳光教育发展有限公司</a>
    </li><li>
        <a href="/com-6af4b12200709/" title="华资在线（北京）教育科技有限公司" class="aGray" target="_blank">华资在线（北京）教育科技有限公司</a>
    </li><li>
        <a href="/com-3016f7656586/" title="北京冀商宝业投资管理有限公司" class="aGray" target="_blank">北京冀商宝业投资管理有限公司</a>
    </li><li>
        <a href="/com-3eb4eb2164331/" title="北京华宇聚智企业管理有限公司" class="aGray" target="_blank">北京华宇聚智企业管理有限公司</a>
    </li><li>
        <a href="/com-8abdda2165727/" title="北京金蓝人力资源服务有限公司" class="aGray" target="_blank">北京金蓝人力资源服务有限公司</a>
    </li><li>
        <a href="/com-36f011660116/" title="北京成功人翰德文化交流有限公司" class="aGray" target="_blank">北京成功人翰德文化交流有限公司</a>
    </li><li>
        <a href="/com-ca055d2197712/" title="北京燕园世纪教育科技有限公司" class="aGray" target="_blank">北京燕园世纪教育科技有限公司</a>
    </li><li>
        <a href="/com-b4770d688900/" title="北京市大兴区万通汽修职业技能培训学校" class="aGray" target="_blank">北京市大兴区万通汽修职业技能培训学校</a>
    </li><li>
        <a href="/com-a1218b660333/" title="北京聚知堂教育咨询有限公司" class="aGray" target="_blank">北京聚知堂教育咨询有限公司</a>
    </li><li>
        <a href="/com-0d138f2187362/" title="北京博思嘉业企业管理咨询有限公司" class="aGray" target="_blank">北京博思嘉业企业管理咨询有限公司</a>
    </li><li>
        <a href="/com-bf99bd2154587/" title="北京兆龙出入境中介服务中心 " class="aGray" target="_blank">北京兆龙出入境中介服务中心 </a>
    </li><li>
        <a href="/com-f0cdbc2146912/" title="北京安济律师事务所" class="aGray" target="_blank">北京安济律师事务所</a>
    </li><li>
        <a href="/com-89209e2191346/" title="群艺芳华教育科技发展（北京）有限公司西城分公司 " class="aGray" target="_blank">群艺芳华教育科技发展（北京）有限公司西城分公司 </a>
    </li><li>
        <a href="/com-214752662373/" title="琥珀英华教育咨询（北京）有限公司" class="aGray" target="_blank">琥珀英华教育咨询（北京）有限公司</a>
    </li><li>
        <a href="/com-085d4c2200004/" title="北京原世通会计服务中心" class="aGray" target="_blank">北京原世通会计服务中心</a>
    </li><li>
        <a href="/com-a623cf2188363/" title="北京元汇天下投资管理有限公司" class="aGray" target="_blank">北京元汇天下投资管理有限公司</a>
    </li><li>
        <a href="/com-cff0a4457247/" title="北京理达知识产权代理有限公司" class="aGray" target="_blank">北京理达知识产权代理有限公司</a>
    </li><li>
        <a href="/com-42e5d52180955/" title="北京礼仪专修学院" class="aGray" target="_blank">北京礼仪专修学院</a>
    </li><li>
        <a href="/com-5cad21358747/" title="心海仁立（北京）信息技术有限公司 " class="aGray" target="_blank">心海仁立（北京）信息技术有限公司 </a>
    </li></ul>
    <div class="clear"></div>
</div><div class="jobModel" id="trade8">
    <h4><a class="aGray" href="javascript:void(0);" target="_blank">医药生物/医疗保健</a></h4>
    <ul><li>
        <a href="/com-e91c05384080/" title="邦尔泰生物科技（北京）有限公司" class="aGray" target="_blank">邦尔泰生物科技（北京）有限公司</a>
    </li><li>
        <a href="/com-58246c2194385/" title="北京盛世堂生物科技有限公司" class="aGray" target="_blank">北京盛世堂生物科技有限公司</a>
    </li><li>
        <a href="/com-06e9842187726/" title="北京远程金卫肿瘤医院管理有限公司 " class="aGray" target="_blank">北京远程金卫肿瘤医院管理有限公司 </a>
    </li><li>
        <a href="/com-d177f32195672/" title="北京中农永盛科技有限公司" class="aGray" target="_blank">北京中农永盛科技有限公司</a>
    </li><li>
        <a href="/com-b790c62169145/" title="北京远程心界医院管理有限公司" class="aGray" target="_blank">北京远程心界医院管理有限公司</a>
    </li><li>
        <a href="/com-080e1a2187369/" title="御圣康源(北京）中医研究院有限公司" class="aGray" target="_blank">御圣康源(北京）中医研究院有限公司</a>
    </li><li>
        <a href="/com-f128e62194403/" title="北京健坤禾润科技有限公司" class="aGray" target="_blank">北京健坤禾润科技有限公司</a>
    </li><li>
        <a href="/com-aa58c22187202/" title="联盟博大（北京）生物工程技术研究所" class="aGray" target="_blank">联盟博大（北京）生物工程技术研究所</a>
    </li><li>
        <a href="/com-343b392186686/" title="北京桀亚莱福生物技术有限责任公司" class="aGray" target="_blank">北京桀亚莱福生物技术有限责任公司</a>
    </li><li>
        <a href="/com-5b1100379333/" title="北京宝润佳科技有限公司" class="aGray" target="_blank">北京宝润佳科技有限公司</a>
    </li><li>
        <a href="/com-6ea6cb399298/" title="北京全净通一科技有限公司" class="aGray" target="_blank">北京全净通一科技有限公司</a>
    </li><li>
        <a href="/com-2104892200715/" title="柯来安（北京）科技发展有限公司" class="aGray" target="_blank">柯来安（北京）科技发展有限公司</a>
    </li><li>
        <a href="/com-fd7d1d2195330/" title="北京世恒尔力科贸有限公司" class="aGray" target="_blank">北京世恒尔力科贸有限公司</a>
    </li><li>
        <a href="/com-d8cc37388338/" title="北京珺邦友成经贸有限公司" class="aGray" target="_blank">北京珺邦友成经贸有限公司</a>
    </li><li>
        <a href="/com-dcd3542187292/" title="北京米赫医院 " class="aGray" target="_blank">北京米赫医院 </a>
    </li><li>
        <a href="/com-4cd3af2168473/" title="大国宏盛实业有限公司" class="aGray" target="_blank">大国宏盛实业有限公司</a>
    </li><li>
        <a href="/com-7942fc2196048/" title="北京华益精点生物技术有限公司" class="aGray" target="_blank">北京华益精点生物技术有限公司</a>
    </li><li>
        <a href="/com-0bdeee2147646/" title="北京中安国康医疗器械有限公司" class="aGray" target="_blank">北京中安国康医疗器械有限公司</a>
    </li><li>
        <a href="/com-bc66492196705/" title="北京贵美汇医院" class="aGray" target="_blank">北京贵美汇医院</a>
    </li><li>
        <a href="/com-576aba381525/" title="北京睿仁堂生物科技有限公司" class="aGray" target="_blank">北京睿仁堂生物科技有限公司</a>
    </li><li>
        <a href="/com-c591a22196931/" title="佰宁伟业（北京）国际生物科技有限公司" class="aGray" target="_blank">佰宁伟业（北京）国际生物科技有限公司</a>
    </li><li>
        <a href="/com-d2d4902190789/" title="北京安信立洋商贸有限公司 " class="aGray" target="_blank">北京安信立洋商贸有限公司 </a>
    </li><li>
        <a href="/com-3f65212195379/" title="康美德医疗器械（北京）有限公司" class="aGray" target="_blank">康美德医疗器械（北京）有限公司</a>
    </li><li>
        <a href="/com-f1e23d2194982/" title="北京诺瑞鑫科技有限公司" class="aGray" target="_blank">北京诺瑞鑫科技有限公司</a>
    </li><li>
        <a href="/com-becbb92190831/" title="北京广赫天昌科技有限责任公司" class="aGray" target="_blank">北京广赫天昌科技有限责任公司</a>
    </li><li>
        <a href="/com-4477c02168489/" title="北京全民康科技发展有限公司" class="aGray" target="_blank">北京全民康科技发展有限公司</a>
    </li><li>
        <a href="/com-bc99582187126/" title="北京中唐医院管理有限公司 " class="aGray" target="_blank">北京中唐医院管理有限公司 </a>
    </li><li>
        <a href="/com-96c61d2192063/" title="北京创力恒泰科贸有限公司" class="aGray" target="_blank">北京创力恒泰科贸有限公司</a>
    </li><li>
        <a href="/com-7854c92164777/" title="新里程智慧(北京)国际医疗技术有限公司" class="aGray" target="_blank">新里程智慧(北京)国际医疗技术有限公司</a>
    </li><li>
        <a href="/com-4fc87f2185141/" title="北京盖天力医药投资有限公司" class="aGray" target="_blank">北京盖天力医药投资有限公司</a>
    </li><li>
        <a href="/com-0da062379477/" title="北京康爱门诊部" class="aGray" target="_blank">北京康爱门诊部</a>
    </li><li>
        <a href="/com-2ecf9d2183710/" title="博锐百舟（北京）商贸有限公司" class="aGray" target="_blank">博锐百舟（北京）商贸有限公司</a>
    </li></ul>
    <div class="clear"></div>
</div><div class="jobModel" id="trade9">
    <h4><a class="aGray" href="javascript:void(0);" target="_blank">服务业</a></h4>
    <ul><li>
        <a href="/com-f3573e2196055/" title="北京百润伯龙科技有限公司" class="aGray" target="_blank">北京百润伯龙科技有限公司</a>
    </li><li>
        <a href="/com-04060a2145765/" title="北京铁盾特卫保安服务有限公司大兴分公司" class="aGray" target="_blank">北京铁盾特卫保安服务有限公司大兴分公司</a>
    </li><li>
        <a href="/com-bc25eb2194588/" title="北京会联管理咨询有限公司" class="aGray" target="_blank">北京会联管理咨询有限公司</a>
    </li><li>
        <a href="/com-9169162200718/" title="北京来跑吧体育管理有限公司" class="aGray" target="_blank">北京来跑吧体育管理有限公司</a>
    </li><li>
        <a href="/com-94ad8f2189860/" title="湖北国创楚源投资管理有限公司北京朝阳酒店管理分公司" class="aGray" target="_blank">湖北国创楚源投资管理有限公司北京朝阳酒店管理分公司</a>
    </li><li>
        <a href="/com-a2499c2189247/" title="小微律政(北京)企业管理有限公司" class="aGray" target="_blank">小微律政(北京)企业管理有限公司</a>
    </li><li>
        <a href="/com-a44ed42195275/" title="北京奥婷环燕美容化妆品有限公司" class="aGray" target="_blank">北京奥婷环燕美容化妆品有限公司</a>
    </li><li>
        <a href="/com-12480c2167345/" title="中商国际旅行社有限公司北京东城第一分社" class="aGray" target="_blank">中商国际旅行社有限公司北京东城第一分社</a>
    </li><li>
        <a href="/com-8441c62190331/" title="北京康洁源环保科技有限公司" class="aGray" target="_blank">北京康洁源环保科技有限公司</a>
    </li><li>
        <a href="/com-517022389996/" title="北京华娱星城文化传媒有限公司" class="aGray" target="_blank">北京华娱星城文化传媒有限公司</a>
    </li><li>
        <a href="/com-b66abf2200568/" title="北京航信通咨询管理有限公司" class="aGray" target="_blank">北京航信通咨询管理有限公司</a>
    </li><li>
        <a href="/com-3af4c02195887/" title="北京航信通管理咨询有限公司" class="aGray" target="_blank">北京航信通管理咨询有限公司</a>
    </li><li>
        <a href="/com-8f019a2201195/" title="北京金瑞冉形象设计工作室" class="aGray" target="_blank">北京金瑞冉形象设计工作室</a>
    </li><li>
        <a href="/com-2879a02190621/" title="北京煌泰吉餐饮投资管理有限公司" class="aGray" target="_blank">北京煌泰吉餐饮投资管理有限公司</a>
    </li><li>
        <a href="/com-f395c72201069/" title="原鲜（北京）餐饮管理有限公司" class="aGray" target="_blank">原鲜（北京）餐饮管理有限公司</a>
    </li><li>
        <a href="/com-a4c64f2188611/" title="北京华清朗洁环保科技有限公司" class="aGray" target="_blank">北京华清朗洁环保科技有限公司</a>
    </li><li>
        <a href="/com-ea4d532188710/" title="北京格润斯特管理咨询有限公司" class="aGray" target="_blank">北京格润斯特管理咨询有限公司</a>
    </li><li>
        <a href="/com-14d3882165415/" title="北京尚途国际旅行社有限公司" class="aGray" target="_blank">北京尚途国际旅行社有限公司</a>
    </li><li>
        <a href="/com-5f43312190240/" title="北京艺海正德国际酒店投资管理有限公司" class="aGray" target="_blank">北京艺海正德国际酒店投资管理有限公司</a>
    </li><li>
        <a href="/com-2b85c92166009/" title="哈尔滨市道里区鑫京日用品商店" class="aGray" target="_blank">哈尔滨市道里区鑫京日用品商店</a>
    </li><li>
        <a href="/com-0a44a42151432/" title="北京宠包汇商贸有限公司" class="aGray" target="_blank">北京宠包汇商贸有限公司</a>
    </li><li>
        <a href="/com-4aa616464412/" title="北京锦泰融成国际贸易发展有限公司" class="aGray" target="_blank">北京锦泰融成国际贸易发展有限公司</a>
    </li><li>
        <a href="/com-4963c82199566/" title="北京拢兰香餐饮管理有限公司" class="aGray" target="_blank">北京拢兰香餐饮管理有限公司</a>
    </li><li>
        <a href="/com-51b5b72195212/" title="北京新源望湘酒楼" class="aGray" target="_blank">北京新源望湘酒楼</a>
    </li><li>
        <a href="/com-34bb10657414/" title="北京欧思贝科技有限公司" class="aGray" target="_blank">北京欧思贝科技有限公司</a>
    </li><li>
        <a href="/com-16b7302191540/" title="北京万年青宾馆" class="aGray" target="_blank">北京万年青宾馆</a>
    </li><li>
        <a href="/com-ea49492186363/" title="北京美车源贸易有限责任公司" class="aGray" target="_blank">北京美车源贸易有限责任公司</a>
    </li><li>
        <a href="/com-7d46a92190809/" title="北京扬程国际旅行社有限公司" class="aGray" target="_blank">北京扬程国际旅行社有限公司</a>
    </li><li>
        <a href="/com-57f8e82194433/" title="北京中科量子医学研究院" class="aGray" target="_blank">北京中科量子医学研究院</a>
    </li><li>
        <a href="/com-d36fa32190683/" title="北京大易大醒餐饮有限公司" class="aGray" target="_blank">北京大易大醒餐饮有限公司</a>
    </li><li>
        <a href="/com-fdd5722182983/" title="魏老香餐饮管理（北京）有限公司" class="aGray" target="_blank">魏老香餐饮管理（北京）有限公司</a>
    </li><li>
        <a href="/com-8232822168163/" title="北京激活地带信息咨询有限公司" class="aGray" target="_blank">北京激活地带信息咨询有限公司</a>
    </li></ul>
    <div class="clear"></div>
</div><div class="jobModel" id="trade10">
    <h4><a class="aGray" href="javascript:void(0);" target="_blank">能源/矿产/石油化工</a></h4>
    <ul><li>
        <a href="/com-bd67372190883/" title="北京凯力正信科技发展有限公司" class="aGray" target="_blank">北京凯力正信科技发展有限公司</a>
    </li><li>
        <a href="/com-5a9257678564/" title="北京东方企联环保技术服务中心" class="aGray" target="_blank">北京东方企联环保技术服务中心</a>
    </li><li>
        <a href="/com-2bddbb2194066/" title="北京市大地开源地质工程有限公司" class="aGray" target="_blank">北京市大地开源地质工程有限公司</a>
    </li><li>
        <a href="/com-3b093f2144287/" title="德金申富（北京）资产管理有限公司" class="aGray" target="_blank">德金申富（北京）资产管理有限公司</a>
    </li><li>
        <a href="/com-9c61232187141/" title="金版国际文化传播（北京）有限公司" class="aGray" target="_blank">金版国际文化传播（北京）有限公司</a>
    </li><li>
        <a href="/com-b3522b2146191/" title="上海大勤实业有限公司北京丰台商贸分公司" class="aGray" target="_blank">上海大勤实业有限公司北京丰台商贸分公司</a>
    </li><li>
        <a href="/com-a146f62195305/" title="中车能源科技（北京）有限公司" class="aGray" target="_blank">中车能源科技（北京）有限公司</a>
    </li><li>
        <a href="/com-4d86752187094/" title="航天钧和科技有限公司" class="aGray" target="_blank">航天钧和科技有限公司</a>
    </li><li>
        <a href="/com-9618a42194973/" title="北京九运初科技有限责任公司" class="aGray" target="_blank">北京九运初科技有限责任公司</a>
    </li><li>
        <a href="/com-03d048662358/" title="中能国电集团新能源有限公司" class="aGray" target="_blank">中能国电集团新能源有限公司</a>
    </li><li>
        <a href="/com-a38ac62153445/" title="洛阳维达石化工程有限公司北京分公司" class="aGray" target="_blank">洛阳维达石化工程有限公司北京分公司</a>
    </li><li>
        <a href="/com-9189c72190827/" title="大唐国际发电股份有限公司" class="aGray" target="_blank">大唐国际发电股份有限公司</a>
    </li><li>
        <a href="/com-2eda9b2188670/" title="北京国禄中央空调设备有限公司" class="aGray" target="_blank">北京国禄中央空调设备有限公司</a>
    </li><li>
        <a href="/com-afc407693739/" title="北京中鼎品道集调贸易有限公司" class="aGray" target="_blank">北京中鼎品道集调贸易有限公司</a>
    </li><li>
        <a href="/com-fe9e232169088/" title="大生科技（北京）有限公司" class="aGray" target="_blank">大生科技（北京）有限公司</a>
    </li><li>
        <a href="/com-fac927392752/" title="环宇译世界（北京）翻译服务有限公司" class="aGray" target="_blank">环宇译世界（北京）翻译服务有限公司</a>
    </li><li>
        <a href="/com-d431002167461/" title="华电峰源（北京）贸易有限公司" class="aGray" target="_blank">华电峰源（北京）贸易有限公司</a>
    </li><li>
        <a href="/com-5e02292153721/" title="中石国际贸易有限公司" class="aGray" target="_blank">中石国际贸易有限公司</a>
    </li><li>
        <a href="/com-2022fb2151464/" title="北京中润普照科技有限公司" class="aGray" target="_blank">北京中润普照科技有限公司</a>
    </li><li>
        <a href="/com-01e34f2151488/" title="北京海洋亿丰石油化工销售有限公司" class="aGray" target="_blank">北京海洋亿丰石油化工销售有限公司</a>
    </li><li>
        <a href="/com-192659390920/" title="斯诺德科技（北京）有限公司" class="aGray" target="_blank">斯诺德科技（北京）有限公司</a>
    </li><li>
        <a href="/com-4e6fc7659268/" title="优龙（北京）重防腐涂料有限公司" class="aGray" target="_blank">优龙（北京）重防腐涂料有限公司</a>
    </li><li>
        <a href="/com-ac8f12655998/" title="北京金源百特水处理设备有限公司" class="aGray" target="_blank">北京金源百特水处理设备有限公司</a>
    </li></ul>
    <div class="clear"></div>
</div><div class="jobModel" id="trade11">
    <h4><a class="aGray" href="javascript:void(0);" target="_blank">政府/非赢利机构/其他</a></h4>
    <ul><li>
        <a href="/com-188dae2168717/" title="池州九华山慈善基金会 " class="aGray" target="_blank">池州九华山慈善基金会 </a>
    </li><li>
        <a href="/com-bcdbe72201586/" title="北京乾坤恒大健康扶贫基金会" class="aGray" target="_blank">北京乾坤恒大健康扶贫基金会</a>
    </li><li>
        <a href="/com-9dfcf02190138/" title="北京雨施捷工程技术有限公司" class="aGray" target="_blank">北京雨施捷工程技术有限公司</a>
    </li><li>
        <a href="/com-faea372192135/" title="北京新兴微纳科技有限公司" class="aGray" target="_blank">北京新兴微纳科技有限公司</a>
    </li><li>
        <a href="/com-c3745c2153451/" title="儆堂集老年产业投资管理（北京）有限公司" class="aGray" target="_blank">儆堂集老年产业投资管理（北京）有限公司</a>
    </li><li>
        <a href="/com-cd50c52169322/" title="北京东方巨龙高新技术交流中心" class="aGray" target="_blank">北京东方巨龙高新技术交流中心</a>
    </li><li>
        <a href="/com-83b3dc2199634/" title="北京光华纺织集团有限公司" class="aGray" target="_blank">北京光华纺织集团有限公司</a>
    </li><li>
        <a href="/com-42dc012190087/" title="北京源莱水处理设备有限公司" class="aGray" target="_blank">北京源莱水处理设备有限公司</a>
    </li><li>
        <a href="/com-b88a832192448/" title="北京泽博恒业电子科技有限公司" class="aGray" target="_blank">北京泽博恒业电子科技有限公司</a>
    </li><li>
        <a href="/com-dd29ea377697/" title="天路苑酒店" class="aGray" target="_blank">天路苑酒店</a>
    </li><li>
        <a href="/com-fcdba62190219/" title="北京民之梦科技发展股份有限公司" class="aGray" target="_blank">北京民之梦科技发展股份有限公司</a>
    </li><li>
        <a href="/com-5938222187133/" title="北京青山绿野环保科技有限公司" class="aGray" target="_blank">北京青山绿野环保科技有限公司</a>
    </li><li>
        <a href="/com-1c0119688708/" title="北京鑫融宏泰投资管理有限公司 " class="aGray" target="_blank">北京鑫融宏泰投资管理有限公司 </a>
    </li><li>
        <a href="/com-57cb932167994/" title="斯麦恩科技（北京）有限公司" class="aGray" target="_blank">斯麦恩科技（北京）有限公司</a>
    </li><li>
        <a href="/com-aa54982190285/" title="国发城镇化发展股份公司" class="aGray" target="_blank">国发城镇化发展股份公司</a>
    </li><li>
        <a href="/com-1778182187413/" title="北京卉金正生物科技有限公司" class="aGray" target="_blank">北京卉金正生物科技有限公司</a>
    </li><li>
        <a href="/com-52aeea2184542/" title="北京创意圈营销顾问有限公司" class="aGray" target="_blank">北京创意圈营销顾问有限公司</a>
    </li><li>
        <a href="/com-3d07492184488/" title="康源绿洲生物科技（北京）有限公司" class="aGray" target="_blank">康源绿洲生物科技（北京）有限公司</a>
    </li><li>
        <a href="/com-22b8632169779/" title="北京霍普兰德科技发展有限公司" class="aGray" target="_blank">北京霍普兰德科技发展有限公司</a>
    </li><li>
        <a href="/com-63c6ad2184412/" title="北京涌联恒创电力工程设计有限公司" class="aGray" target="_blank">北京涌联恒创电力工程设计有限公司</a>
    </li><li>
        <a href="/com-d15a182183700/" title="北京三江致远商业管理有限公司" class="aGray" target="_blank">北京三江致远商业管理有限公司</a>
    </li><li>
        <a href="/com-9ef2172183838/" title="北京盛世珍藏文化发展有限公司" class="aGray" target="_blank">北京盛世珍藏文化发展有限公司</a>
    </li><li>
        <a href="/com-1b90f72186446/" title="北京汇众翔科技有限公司" class="aGray" target="_blank">北京汇众翔科技有限公司</a>
    </li><li>
        <a href="/com-49fe402186348/" title="北京田宇行兴汽车技术服务有限责任公司" class="aGray" target="_blank">北京田宇行兴汽车技术服务有限责任公司</a>
    </li><li>
        <a href="/com-e29ae22168997/" title="北京国协九九天科技发展有限公司" class="aGray" target="_blank">北京国协九九天科技发展有限公司</a>
    </li><li>
        <a href="/com-e8abab2181064/" title="北京市海淀区羊坊店敬老院" class="aGray" target="_blank">北京市海淀区羊坊店敬老院</a>
    </li><li>
        <a href="/com-6a5ac12169861/" title="北京定国建业五金有限公司" class="aGray" target="_blank">北京定国建业五金有限公司</a>
    </li><li>
        <a href="/com-acc9752168991/" title="北京亿久天农业科技有限公司" class="aGray" target="_blank">北京亿久天农业科技有限公司</a>
    </li><li>
        <a href="/com-b388b5658529/" title="北京安达禾欣科技发展有限公司" class="aGray" target="_blank">北京安达禾欣科技发展有限公司</a>
    </li><li>
        <a href="/com-6847162168394/" title="北京环科腾越环保工程有限公司" class="aGray" target="_blank">北京环科腾越环保工程有限公司</a>
    </li><li>
        <a href="/com-f7a92c2164380/" title="北京康华远景科技股份有限公司" class="aGray" target="_blank">北京康华远景科技股份有限公司</a>
    </li><li>
        <a href="/com-0e3b7c2153462/" title="北京启智智障儿童教育培训中心" class="aGray" target="_blank">北京启智智障儿童教育培训中心</a>
    </li></ul>
    <div class="clear"></div>
</div></div><!-- hr职场指南 -->
<div class="auto news">

    <div class="newsL">
        <h3 class="hd2">
            <span><a href="http://www.597.com/guide/" target="_blank" class="aGray">职场指南</a> / <a href="http://www.597.com/hrnews/" target="_blank" class="aGray">HR资讯</a></span>
        </h3><ul class="list" ><li>
        <a href="http://www.597.com/guide/detail-52791.html" class="aGray" target='_blank'>[ 职场眺望 ] 人人羡慕的&quot;职场幸运儿&quot;，是有秘密武器的！</a>
    </li><li>
        <a href="http://www.597.com/guide/detail-52790.html" class="aGray" target='_blank'>[ 求职实录 ] 专家支招女生求职:要发挥细致耐心等职场优势</a>
    </li><li>
        <a href="http://www.597.com/guide/detail-52789.html" class="aGray" target='_blank'>[ 简历指导 ] 写自我评价很简单，一看就会！</a>
    </li><li>
        <a href="http://www.597.com/guide/detail-52788.html" class="aGray" target='_blank'>[ 面试技巧 ] [面试]这些信号代表面试失败？那可不一定</a>
    </li><li>
        <a href="http://www.597.com/guide/detail-52785.html" class="aGray" target='_blank'>[ 薪酬福利 ] 别只简单涨工资 给员工加薪有18种方式</a>
    </li><li>
        <a href="http://www.597.com/guide/detail-52782.html" class="aGray" target='_blank'>[ 职场眺望 ] 职场须知：了解上司的处境到底有多重要</a>
    </li>
    </ul><ul class="list" ><li>
        <a href="http://www.597.com/guide/detail-52781.html" class="aGray" target='_blank'>[ 求职实录 ] 国庆放假不误求职 网上找工作免去奔波之苦</a>
    </li><li>
        <a href="http://www.597.com/guide/detail-52780.html" class="aGray" target='_blank'>[ 简历指导 ] 包装：简历如同嫁女儿</a>
    </li><li>
        <a href="http://www.597.com/guide/detail-52779.html" class="aGray" target='_blank'>[ 面试技巧 ] 面试时向面试官提问的智慧</a>
    </li><li>
        <a href="http://www.597.com/guide/detail-52776.html" class="aGray" target='_blank'>[ 薪酬福利 ] HR案例：“水泥+鼠标”的薪酬体系</a>
    </li><li>
        <a href="http://www.597.com/guide/detail-52773.html" class="aGray" target='_blank'>[ 职场眺望 ] 混职场 可在会议室里“偷偷”成长</a>
    </li><li>
        <a href="http://www.597.com/guide/detail-52772.html" class="aGray" target='_blank'>[ 求职实录 ] 求职，有时也需跟着性格走</a>
    </li>
    </ul><ul class="list " ><li>
        <a href="http://www.597.com/hrnews/detail-52787.html" class="aGray" target='_blank'>[ 管理激励 ] 员工激励的四个驱动力</a>
    </li><li>
        <a href="http://www.597.com/hrnews/detail-52786.html" class="aGray" target='_blank'>[ 业绩考核 ] KPI应用必须知道的几个注意事项</a>
    </li><li>
        <a href="http://www.597.com/hrnews/detail-52784.html" class="aGray" target='_blank'>[ 人力管理 ] 超过三分之一的员工会出卖公司数据</a>
    </li><li>
        <a href="http://www.597.com/hrnews/detail-52783.html" class="aGray" target='_blank'>[ 招聘面试 ] 以招聘员工为例，教你如何利用MESOs化解谈判压力</a>
    </li><li>
        <a href="http://www.597.com/hrnews/detail-52778.html" class="aGray" target='_blank'>[ 管理激励 ] 有效激励催生绩效文化</a>
    </li><li>
        <a href="http://www.597.com/hrnews/detail-52777.html" class="aGray" target='_blank'>[ 业绩考核 ] 四个维度做好招聘工作的绩效评价</a>
    </li>
    </ul><ul class="list end" ><li>
        <a href="http://www.597.com/hrnews/detail-52775.html" class="aGray" target='_blank'>[ 人力管理 ] 扎克伯格招聘原则：只要那些我愿意为他工作的人</a>
    </li><li>
        <a href="http://www.597.com/hrnews/detail-52774.html" class="aGray" target='_blank'>[ 招聘面试 ] 变革与发展 招聘官即将面临的10大挑战</a>
    </li><li>
        <a href="http://www.597.com/hrnews/detail-52769.html" class="aGray" target='_blank'>[ 管理激励 ] 一盘散沙的团队该如何管理</a>
    </li><li>
        <a href="http://www.597.com/hrnews/detail-52768.html" class="aGray" target='_blank'>[ 业绩考核 ] 绩效管理 到底是谁说了算？</a>
    </li><li>
        <a href="http://www.597.com/hrnews/detail-52766.html" class="aGray" target='_blank'>[ 人力管理 ] 人 生活时代 人力资源管理的10种方式</a>
    </li><li>
        <a href="http://www.597.com/hrnews/detail-52765.html" class="aGray" target='_blank'>[ 招聘面试 ] 如何听懂招聘面试官的话中话</a>
    </li>
    </ul></div>
    <p class="clear"></p>
</div><!-- 友情链接 --><div class="friendLnk auto ">
    <h3 class="hd2"><span>友情链接</span></h3>
    <ul><li><a href="http://www.zh-365.com/" target="_blank" class="aGray">在线学习</a></li><li><a href="http://www.xinjin.zp300.cn" target="_blank" class="aGray">新津人才网</a></li><li><a href="http://www.hotpoll.com.cn/" target="_blank" class="aGray">石家庄人事考试网</a></li><li><a href="http://www.meilele.com/beijing/" target="_blank" class="aGray">北京家具	</a></li><li><a href="http://beijing.ganchang.cn/" target="_blank" class="aGray">北京信息网</a></li><li><a href="http://www.fxzpw.com/" target="_blank" class="aGray">丰县人才网</a></li><li><a href="http://bj.jiaoyubao.cn    " target="_blank" class="aGray">北京培训学校</a></li><li><a href="http://www.wustudy.com/" target="_blank" class="aGray">吾学网</a></li><li><a href="http://shenzhen.workpcb.com " target="_blank" class="aGray">深圳pcb人才网</a></li><li><a href="http://www.dksrcw.com" target="_blank" class="aGray">昆山人才网</a></li><li><a href="http://www.w379.com" target="_blank" class="aGray">洛阳民营经济网</a></li><li><a href="http://www.5918job.com/" target="_blank" class="aGray">义乌人才网</a></li><li><a href="http://yy.60.cm" target="_blank" class="aGray">云阳人才网</a></li><li><a href="http://zhangjiajie.fang.com/" target="_blank" class="aGray">张家界搜房网</a></li><li><a href="http://beijing.okcis.cn" target="_blank" class="aGray">北京招标网</a></li><li><a href="http://maanshan.goodjobs.cn" target="_blank" class="aGray">马鞍山招聘网</a></li><li><a href="http://www.rqzpw.com/" target="_blank" class="aGray">任丘招聘网</a></li><li><a href="http://www.sdjob.com" target="_blank" class="aGray">山东人才网</a></li><li><a href="http://jobs.zhaopin.com/zhongshan" target="_blank" class="aGray">中山人才网</a></li><li><a href="http://www.0579job.com" target="_blank" class="aGray">金华人才网</a></li><li><a href="http://ah.jinrongren.net/" target="_blank" class="aGray">安徽银行招聘网</a></li><li><a href="http://www.uzielts.com/" target="_blank" class="aGray">北京雅思培训</a></li><li><a href="http://w.aia.edu.cn" target="_blank" class="aGray">AIA培训</a></li><li><a href="http://news.dl.fang.com/" target="_blank" class="aGray">大连房地产新闻</a></li><li><a href="http://news.sy.fang.com/" target="_blank" class="aGray">沈阳房产资讯</a></li><li><a href="http://www.xinxian.wang/" target="_blank" class="aGray">新县网</a></li><li><a href="http://www.zljob.net" target="_blank" class="aGray">会展人才 </a></li><li><a href="http://www.ttxuexi.net/ " target="_blank" class="aGray">范文网</a></li><li><a href="http://yulu.quhua.com/" target="_blank" class="aGray">经典语录     </a></li><li><a href="http://www.qszpw.net" target="_blank" class="aGray">潜山招聘网</a></li><li><a href="http://www.0543hr.com" target="_blank" class="aGray">滨州招聘网</a></li><li><a href="http://www.mochateam.com/" target="_blank" class="aGray">婚礼策划</a></li><li><a href="http://www.xmbcw.cn" target="_blank" class="aGray">厦门博才网</a></li><li><a href="http://xjh.yjbys.com/" target="_blank" class="aGray">宣讲会</a></li><li><a href="http://daxue.chazidian.com" target="_blank" class="aGray">大学网</a></li><li><a href="http://www.0875job.net/" target="_blank" class="aGray">宝山地区人才网</a></li><li><a href="http://hz.fenlei168.com/" target="_blank" class="aGray">杭州分类信息</a></li><li><a href="http://beijing.pztuan.com/" target="_blank" class="aGray">北京团购</a></li><li><a href="http://qd.bendibao.com" target="_blank" class="aGray">青岛本地宝	</a></li><li><a href="http://www.qdjiazheng.com/" target="_blank" class="aGray">青岛家政公司</a></li><li><a href="http://www.job5555.com" target="_blank" class="aGray">资阳招聘网</a></li><li><a href="http://www.bxycw.com" target="_blank" class="aGray">保险招聘</a></li><li><a href="http://headhunt.goodjobs.cn" target="_blank" class="aGray">合肥猎头招聘</a></li><li><a href="http://www.hr0668.cn/" target="_blank" class="aGray">茂名招聘网</a></li><li><a href="http://xy.0516zpw.com" target="_blank" class="aGray">新沂人才网 </a></li><li><a href="http://beijing.tuliu.com" target="_blank" class="aGray">北京土地流转</a></li><li><a href="http://www.myubbs.com/" target="_blank" class="aGray">大学论坛大全</a></li><li><a href="http://bj.baiye5.com/" target="_blank" class="aGray">北京免费发布信息  </a></li><li><a href="http://hengyang.ohqly.com" target="_blank" class="aGray">衡阳百姓网</a></li><li><a href="http://www.0527rc.cn" target="_blank" class="aGray">宿迁人才网</a></li><li><a href="http://dongcheng.597.com/" title="" target="_blank" class="aGray">东城人才网</a></li><li><a href="http://xicheng.597.com/" title="" target="_blank" class="aGray">西城人才网</a></li><li><a href="http://chaoyang.597.com/" title="" target="_blank" class="aGray">朝阳人才网</a></li><li><a href="http://fengtai.597.com/" title="" target="_blank" class="aGray">丰台人才网</a></li><li><a href="http://shijingshan.597.com/" title="" target="_blank" class="aGray">石景山人才网</a></li><li><a href="http://haidian.597.com/" title="" target="_blank" class="aGray">海淀人才网</a></li><li><a href="http://mentougou.597.com/" title="" target="_blank" class="aGray">门头沟人才网</a></li><li><a href="http://fangshan.597.com/" title="" target="_blank" class="aGray">房山人才网</a></li><li><a href="http://tongzhou.597.com/" title="" target="_blank" class="aGray">通州人才网</a></li><li><a href="http://shunyi.597.com/" title="" target="_blank" class="aGray">顺义人才网</a></li><li><a href="http://changping.597.com/" title="" target="_blank" class="aGray">昌平人才网</a></li><li><a href="http://daxing.597.com/" title="" target="_blank" class="aGray">大兴人才网</a></li><li><a href="http://huairou.597.com/" title="" target="_blank" class="aGray">怀柔人才网</a></li><li><a href="http://pinggu.597.com/" title="" target="_blank" class="aGray">平谷人才网</a></li><li><a href="http://miyun.597.com/" title="" target="_blank" class="aGray">密云人才网</a></li><li><a href="http://yanqing.597.com/" title="" target="_blank" class="aGray">延庆人才网</a></li><li><a href="http://bjzhoubian.597.com/" title="" target="_blank" class="aGray">北京周边人才网</a></li></ul>
    <div class="clear"></div>
</div><footer>
    <div class="footerNav">
        <a target="_blank" href="/about/about.html">关于我们</a>
        |
        <a target="_blank" href="/about/statement.html">网站声明</a>
        |

        <a target="_blank" href="/about/service.html">招聘服务</a>
        <!-- |
        <a target="_blank" href="#">帮助中心</a>
        |
        <a target="_blank" href="#">诚聘英才</a> -->
        |
        <a target="_blank" href="/about/friend.html">友情链接</a>
        |
        <a target="_blank" href="/about/adprice.html">广告发布</a>
        |
        <a target="_blank" href="/about/contact.html">联系我们</a>
        |
        <a target="_blank" href="/about/price.html">收费标准</a>
    </div>
    <div class="copyright">
        <p>&copy;2015&nbsp;597人才网&nbsp;版权所有</p>
    </div>
</footer>
<!-- <section class="floatRT">
<a href="/about/message" target="_blank" class="serviceLink">我有问题要反馈</a> <b></b>
</section> -->
<a href="/about/indexfeed.html" id="fankui" target="_blank">意见<br>反馈</a>
<div id="sus" class="sus">
    <a class="backTop jpFntWes" title="返回顶部" href="javascript:void(0);" style="display: none;">&#xf0d8;</a>
</div>
<script type="text/javascript">
    $(document).ready(function() {
        $(window).scroll(function() {
            if ($(document).scrollTop() > 120) {
                $('#sus').find('a.backTop').css({
                    'display': 'inline-block'
                });
            } else {
                $('#sus').find('a.backTop').css({
                    'display': 'none'
                });
            }
        });

        $('#sus').find('a.backTop').click(function() {
            $('html,body').animate({
                scrollTop: 0
            });
        });
    });
</script>
<div style="display: none" id="wx_stats">
    <script src="http://s5.cnzz.com/z_stat.php?id=1000320696&web_id=1000320696" language="JavaScript"></script>
    <link rel="logo1" href="/597logo/logo121x75.png" />
    <link rel="logo2" href="/597logo/75px.png" />
</div>

<script type="text/javascript">
    var currentCity="北京人才网";
    var userType=$.cookie("userType");
    var nickname = $.cookie("nickname");
    if(nickname){
        if(userType=='per'){
            $('#topLoginStatus').hide();
            $('#topPerLogin').show();
            $('#topComLogin').hide();
            $('#topPerLogin #topUsername').html(nickname);
            $('#notLoginStatus').hide();
            $('.logined').show();
            $('.logined #perStatus').show();
            $('.logined').find('#user_menu_name').html(nickname);
        }
        if(userType=='com'){
            $('#topLoginStatus').hide();
            $('#topPerLogin').hide();
            $('#topComLogin').show();
            $('#topComLogin #topUsername').html(nickname);
            $('#notLoginStatus').hide();
            $('.logined').show();
            $('.logined #comStatus').show();
            $('.logined').find('#com_menu_name').html(nickname);
        }
    }
    $('#currentCity').html(currentCity);

    $('#qqLoginTop').click(function(){
        qqBox=$.showModal("http://api.597.com/qq/login.api", {title:'QQ登录',contentType : 'iframe',width:'800', height:'410'});
    });
    $('#sinaLoginTop').click(function(){
        sinaBox=$.showModal("http://api.597.com/weibo/login.api", {title:'微博登录',contentType : 'iframe',width:'800', height:'410'});
    });
    dateFormate(".dateFormate",1441429020);


</script>

</body>
</html>