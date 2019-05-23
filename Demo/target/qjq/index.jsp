<%@ include file="/common/taglibs.jsp"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    pageContext.setAttribute("path", request.getContextPath());
%>

<!DOCTYPE HTML>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="renderer" content="webkit">
    <title>用户列表</title>
    <link
            href="${path}/static/css/bootstrap.min.css"
            rel="stylesheet">
    <script type="text/javascript"
            src="${path}/static/js/jquery-1.10.1.min.js"></script>
    <script type="text/javascript"
            src="${path}/static/js/bootstrap.min.js"></script>
    <link href="${path}/static/css/bootstrap.min.css?v=3.4.0" rel="stylesheet">
    <link href="${path}/static/css/font-awesome.min.css?v=4.3.0" rel="stylesheet">
    <link href="${path}/static/css/animate.min.css" rel="stylesheet">
    <link href="${path}/static/css/style.min.css?v=3.0.0" rel="stylesheet">
</head>

<body class="fixed-sidebar full-height-layout gray-bg">
<div id="wrapper">
    <!--左侧导航开始-->
    <nav class="navbar-default navbar-static-side" role="navigation">
        <div class="nav-close"><i class="fa fa-times-circle"></i>
        </div>
        <div class="sidebar-collapse">
            <ul class="nav" id="side-menu">
                <li class="nav-header">
                    <div class="dropdown profile-element text-center">
                        <span><img alt="image" class="img-circle" src="${contextPath}/static/images/user.png" style="width:64px" /></span>
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                <span class="clear">
                               <span class="block m-t-xs"><strong class="font-bold">admin</strong></span>
                                <span class="text-muted text-xs block">管理员<b class="caret"></b></span>
                                </span>
                        </a>
                        <ul class="dropdown-menu animated fadeInRight m-t-xs">
                            <li class="divider"></li>
                            <li><a href="${contextPath}/user/logout.html">安全退出</a>
                            </li>
                        </ul>
                    </div>
                    <div class="logo-element">
                    </div>
                </li>

                <li>
                    <a href="toSubHome.html">
                        <i class="fa fa-home"></i>
                        <span class="nav-label">用户信息管理</span>
                        <span class="fa arrow"></span>
                    </a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a class="J_menuItem" href="${path}/user/userInfo" data-index="0">用户列表</a>
                        </li>

                    </ul>

                </li>

            </ul>
        </div>
    </nav>
    <!--左侧导航结束-->
    <!--右侧部分开始-->
    <div id="page-wrapper" class="gray-bg dashbard-1">

        <div class="row content-tabs">
            <button class="roll-nav roll-left J_tabLeft"><i class="fa fa-backward"></i>
            </button>
            <nav class="page-tabs J_menuTabs">
                <div class="page-tabs-content">
                    <a href="javascript:;" class="active J_menuTab" data-id="index_v1.html">首页</a>
                </div>
            </nav>
            <button class="roll-nav roll-right J_tabRight"><i class="fa fa-forward"></i>
            </button>
            <button class="roll-nav roll-right dropdown J_tabClose"><span class="dropdown-toggle" data-toggle="dropdown">关闭操作<span class="caret"></span></span>
                <ul role="menu" class="dropdown-menu dropdown-menu-right">
                    <li class="J_tabShowActive"><a>定位当前选项卡</a>
                    </li>
                    <li class="divider"></li>
                    <li class="J_tabCloseAll"><a>关闭全部选项卡</a>
                    </li>
                    <li class="J_tabCloseOther"><a>关闭其他选项卡</a>
                    </li>
                </ul>
            </button>
            <a href="${contextPath}/user/logout.html" class="roll-nav roll-right J_tabExit"><i class="fa fa fa-sign-out"></i> 退出</a>
        </div>
        <div class="row J_mainContent" id="content-main">
            <iframe class="J_iframe" name="iframe0" width="100%" height="100%" src="toSubHome.html?v=3.0" frameborder="0" data-id="toSubHome.html" seamless>

                <!-- 内嵌内容 -->

            </iframe>
        </div>
        <div class="footer">
            <div class="pull-right">&copy; 2016-2017 <a href="#" target="_blank">pinhu</a>
            </div>
        </div>
    </div>
    <!--右侧部分结束-->

</div>

<!-- 全局js -->
<script src="${contextPath}/static/js/jquery-2.1.1.min.js"></script>
<script src="${contextPath}/static/js/bootstrap.min.js?v=3.4.0"></script>
<script src="${contextPath}/static/js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="${contextPath}/static/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
<script src="${contextPath}/static/js/plugins/layer/layer.min.js"></script>

<!-- 自定义js -->
<script src="${contextPath}/static/js/hplus.min.js?v=3.0.0"></script>
<script type="text/javascript" src="${contextPath}/static/js/contabs.min.js"></script>

<!-- 第三方插件 -->
<script src="${contextPath}/static/js/plugins/pace/pace.min.js"></script>
<div class="theme-config">
    <div class="theme-config-box">
        <div class="spin-icon">
            <i class="fa fa-cog fa-spin"></i>
        </div>
        <div class="skin-setttings">
            <div class="title">主题设置</div>
            <div class="setings-item">
                <span>
                        收起左侧菜单
                    </span>

                <div class="switch">
                    <div class="onoffswitch">
                        <input type="checkbox" name="collapsemenu" class="onoffswitch-checkbox" id="collapsemenu">
                        <label class="onoffswitch-label" for="collapsemenu">
                            <span class="onoffswitch-inner"></span>
                            <span class="onoffswitch-switch"></span>
                        </label>
                    </div>
                </div>
            </div>
            <div class="setings-item">
                <span>
                        固定顶部
                    </span>

                <div class="switch">
                    <div class="onoffswitch">
                        <input type="checkbox" name="fixednavbar" class="onoffswitch-checkbox" id="fixednavbar">
                        <label class="onoffswitch-label" for="fixednavbar">
                            <span class="onoffswitch-inner"></span>
                            <span class="onoffswitch-switch"></span>
                        </label>
                    </div>
                </div>
            </div>
            <div class="setings-item">
                <span>
                        固定宽度
                    </span>

                <div class="switch">
                    <div class="onoffswitch">
                        <input type="checkbox" name="boxedlayout" class="onoffswitch-checkbox" id="boxedlayout">
                        <label class="onoffswitch-label" for="boxedlayout">
                            <span class="onoffswitch-inner"></span>
                            <span class="onoffswitch-switch"></span>
                        </label>
                    </div>
                </div>
            </div>
            <div class="title">皮肤选择</div>
            <div class="setings-item default-skin">
                <span class="skin-name ">
                         <a href="#" class="s-skin-0">
                             默认皮肤
                         </a>
                    </span>
            </div>
            <div class="setings-item blue-skin">
                <span class="skin-name ">
                        <a href="#" class="s-skin-1">
                            蓝色主题
                        </a>
                    </span>
            </div>
            <div class="setings-item yellow-skin">
                <span class="skin-name ">
                        <a href="#" class="s-skin-3">
                            黄色/紫色主题
                        </a>
                    </span>
            </div>
        </div>
    </div>
</div>


<style>
    .fixed-nav .slimScrollDiv #side-menu {
        padding-bottom: 60px;
    }
</style>

</body>

</html>

</html>