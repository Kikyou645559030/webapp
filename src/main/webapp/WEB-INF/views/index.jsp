<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%-- <%=basePath%> --%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport"/>
<link href="<%=basePath%>static/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="<%=basePath%>static/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
<link href="<%=basePath%>static/core/css/style-metro.css" rel="stylesheet" type="text/css"/>
<link href="<%=basePath%>static/core/css/zui-layout-frame.css" rel="stylesheet" type="text/css">
<link href="<%=basePath%>static/core/css/style.css" rel="stylesheet" type="text/css"/>
<link href="<%=basePath%>static/themes/default.css" rel="stylesheet" type="text/css" id="style_color"/>
<link rel="shortcut icon" href="favicon.ico"/>
<title>首页</title>
</head>
<body>
		<iframe id="frame_main" name="frame_main" class="ui-layout-center" src="<%=basePath%>userInfo/list" frameborder="0" scrolling="auto" width="100%" height="auto"></iframe>
		<!--左菜单栏目-->
		<div class="ui-layout-west page-sidebar-closed ">
    		<div class="page-sidebar nav-collapse collapse">
        		<ul class="page-sidebar-menu">
           			 <li>
		                <a href="javascript:;" target="frame_main">
		                    <i class="fa fa-cogs"></i>
		                    <span class="title">用户管理</span>
		                </a>
		                <ul class="sub-menu">
		                    <li>
		                        <a href="<%=basePath%>userInfo/add" target="frame_main" >添加用户</a>
		                    </li>
		                </ul>
		            </li>
		            <li>
		                <a href="#" target="frame_main">
		                    <i class="fa fa-briefcase"></i>
		                    <span class="title">ui样例页面</span>
		                    <span class="selected"></span>
		                    <span class="arrow open"></span>
		                    <ul class="sub-menu">
		                        <li>
		                            <a href="javascript:;">
		                                UI布局
		                                <span class="arrow"></span>
		                            </a>
		                            <ul class="sub-menu">
		                                <li><a href="#">Sample Link 1</a></li>
		                                <li><a href="#">Sample Link 2</a></li>
		                                <li><a href="#">Sample Link 3</a></li>
		                            </ul>
		                        </li>
		                        <li>
		                            <a href="javascript:;">
		                                Item 1
		                                <span class="arrow"></span>
		                            </a>
		                            <ul class="sub-menu">
		                                <li><a href="#">Sample Link 1</a></li>
		                                <li><a href="#">Sample Link 1</a></li>
		                                <li><a href="#">Sample Link 1</a></li>
		                            </ul>
		                        </li>
                       		 <li>
	                            <a href="#">
	                                Item 3
	                            </a>
	                        </li>
	                    </ul>
                	</a>
            </li>
            <li>
                <a href="javascript:;" target="frame_main">
                    <i class="fa fa-cogs"></i>
                    <span class="title">基础组件</span>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a href="../zuiComponent/zui_buttons.html" target="frame_main">按钮和图标</a>
                    </li>
                </ul>
            </li>
            <li >
                <a href="javascript:;" target="frame_main">
                    <i class="fa fa-bookmark-o"></i>
                    <span class="title">内容块组件</span>
                    <span class="arrow "></span>
                </a>
                <ul class="sub-menu">
                    <li >
                        <a href="#" target="frame_main">内容块</a>
                    </li>
                </ul>
            </li>
            <li >
                <a href="javascript:;">
                    <i class="fa fa-table"></i>
                    <span class="title">表格控件</span>
                    <span class="selected"></span>
                    <span class="arrow open"></span>
                </a>
                <ul class="sub-menu">
                    <li >
                        <a href="../zuiComponent/zui_table_basic.html" target="frame_main">原生基础表格</a>
                    </li>
                </ul>
            </li>
            <li >
                <a href="javascript:;">
                    <i class="fa fa-sitemap"></i>
                    <span class="title">表单组件</span>
                    <span class="arrow "></span>
                    <span class="selected"></span>
                    <span class="arrow open"></span>
                </a>
                <ul class="sub-menu">
                    <li >
                        <a href="../zuiComponent/zui_form_layout.html" target="frame_main"><i class="fa fa-time"></i> 常用表单布局</a>
                    </li>
                </ul>
            </li>
            <li >
                <a href="#">
                    <i class="fa fa-cogs"></i>
                    <span class="title">汇报展示</span>
                    <span class="arrow "></span>
                </a>
            </li>
            <li class="active">
                <a href="#" target="frame_main">
                    <i class="fa fa-sitemap"></i>
                    <span class="title">统计分析</span>
                    <span class="selected"></span>
                    <span class="arrow open"></span>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a href="#" target="frame_main">项目数量统计</a>
                    </li>
                    <li>
                        <a href="#" target="frame_main">项目效率统计</a>
                    </li>
                    <li>
                        <a href="#" target="frame_main">部门效率统计</a>
                    </li>
                </ul>
            </li>
        </ul>
    </div>
</div>
<!--框架布局顶部-->
<div class="ui-layout-north">
    <div class="header navbar navbar-inverse navbar-fixed-top" >
        <div class="navbar-inner">
            <div class="container-fluid">
                <a class="brand" href="../FAIP/index.html">
                    <img src="<%=basePath%>static/core/img/logo.png" alt="logo"/>
                </a>
                <ul class="nav pull-right">
                    <li class="dropdown" id="header_notification_bar">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                            <i class="fa fa-warning"></i>
                            <span class="badge">6</span>
                        </a>
                        <ul class="dropdown-menu extended notification">
                            <li>
                                <p>你有14条新的通知</p>
                            </li>
                            <li>
                                <ul class="dropdown-menu-list scroller" style="height:250px">
                                    <li>
                                        <a href="#">
                                            <span class="label label-success"><i class="fa fa-plus"></i></span>
                                            新的收件信息。
                                            <span class="time">1 分钟以前</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <span class="label label-important"><i class="fa fa-bolt"></i></span>
                                            新的收件信息。
                                            <span class="time">15 分钟之前</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <span class="label label-warning"><i class="fa fa-bell"></i></span>
                                            新的收件信息。
                                            <span class="time">22 分钟以前</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <span class="label label-info"><i class="fa fa-bullhorn"></i></span>
                                            新的收件信息。
                                            <span class="time">40 分钟以前</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <span class="label label-important"><i class="fa fa-bolt"></i></span>
                                            新的收件信息。
                                            <span class="time">2 小时以前</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <span class="label label-important"><i class="fa fa-bolt"></i></span>
                                            新的收件信息。
                                            <span class="time">5 小时以前</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <span class="label label-warning"><i class="fa fa-bell"></i></span>
                                            新的收件信息。
                                            <span class="time">7 小时以前</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <span class="label label-info"><i class="fa fa-bullhorn"></i></span>
                                            新的收件信息。
                                            <span class="time">7 小时以前</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <span class="label label-important"><i class="fa fa-bolt"></i></span>
                                            新的收件信息。
                                            <span class="time">7 小时以前</span>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="external">
                                <a href="#">查看全部 <i class="m-icon-swapright"></i></a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown" id="header_inbox_bar">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                            <i class="fa fa-envelope"></i>
                            <span class="badge">5</span>
                        </a>
                        <ul class="dropdown-menu extended inbox">
                            <li>
                                <p>你有5条新的消息</p>
                            </li>
                            <li>
                                <ul class="dropdown-menu-list scroller" style="height:250px">
                                    <li>
                                        <a href="#">
                                            <span class="photo">
                                                <img src="img/avatar2.jpg" alt=""/>
                                            </span>
                                            <span class="subject">
                                                <span class="from">王小川</span>
                                                <span class="time">1分钟以前</span>
                                            </span>
                                            <span class="message">
                                                最新消息信息最新消息信息最新消息信息最新消息信息...
                                            </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <span class="photo">
                                                <img src="img/avatar3.jpg" alt=""/>
                                            </span>
                                            <span class="subject">
                                                <span class="from">张晓晓</span>
                                                <span class="time">16 分钟以前</span>
                                            </span>
                                            <span class="message">
                                                最新消息信息最新消息信息最新消息信息最新消息信息...
                                            </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <span class="photo">
                                                <img src="img/avatar1.jpg" alt=""/>
                                            </span>
                                            <span class="subject">
                                                <span class="from">王斌</span>
                                                <span class="time">2 小时之前</span>
                                            </span>
                                            <span class="message">
                                                最新消息信息最新消息信息最新消息信息最新消息信息...
                                            </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="inbox.html?a=view">
                                            <span class="photo">
                                                <img src="img/avatar2.jpg" alt=""/>
                                            </span>
                                            <span class="subject">
                                                <span class="from">张斌</span>
                                                <span class="time">3 小时之前</span>
                                            </span>
                                            <span class="message">
                                                最新消息信息最新消息信息最新消息信息最新消息信息...
                                            </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="inbox.html?a=view">
                                            <span class="photo">
                                                <img src="img/avatar3.jpg" alt=""/>
                                            </span>
                                            <span class="subject">
                                                <span class="from">张晓晓</span>
                                                <span class="time">4 小时之前</span>
                                            </span>
                                            <span class="message">
                                                最新消息信息最新消息信息最新消息信息最新消息信息...
                                            </span>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="external">
                                <a href="inbox.html">查看全部 <i class="m-icon-swapright"></i></a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown" id="header_task_bar">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                            <i class="fa fa-tasks"></i>
                            <span class="badge">5</span>
                        </a>
                        <ul class="dropdown-menu extended tasks">
                            <li>
                                <p>你有12个新预警信息</p>
                            </li>
                            <li>
                                <ul class="dropdown-menu-list scroller" style="height:250px">
                                    <li>
                                        <a href="#">
                                            <span class="task">
                                                <span class="desc">进入预警1</span>
                                                <span class="percent">30%</span>
                                            </span>
                                            <span class="progress progress-success ">
                                                <span style="width: 30%;" class="bar"></span>
                                            </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <span class="task">
                                                <span class="desc">进入预警2</span>
                                                <span class="percent">65%</span>
                                            </span>
                                            <span class="progress progress-danger progress-striped active">
                                                <span style="width: 65%;" class="bar"></span>
                                            </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <span class="task">
                                                <span class="desc">进入预警3</span>
                                                <span class="percent">98%</span>
                                            </span>
                                            <span class="progress progress-success">
                                                <span style="width: 98%;" class="bar"></span>
                                            </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <span class="task">
                                                <span class="desc">进入预警4</span>
                                                <span class="percent">10%</span>
                                            </span>
                                            <span class="progress progress-warning progress-striped">
                                                <span style="width: 10%;" class="bar"></span>
                                            </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <span class="task">
                                                <span class="desc">进入预警5</span>
                                                <span class="percent">58%</span>
                                            </span>
                                            <span class="progress progress-info">
                                                <span style="width: 58%;" class="bar"></span>
                                            </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <span class="task">
                                                <span class="desc">进入预警6</span>
                                                <span class="percent">85%</span>
                                            </span>
                                            <span class="progress progress-success">
                                                <span style="width: 85%;" class="bar"></span>
                                            </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <span class="task">
                                                <span class="desc">进入预警7</span>
                                                <span class="percent">18%</span>
                                            </span>
                                            <span class="progress progress-important">
                                                <span style="width: 18%;" class="bar"></span>
                                            </span>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="external">
                                <a href="#">查看全部 <i class="m-icon-swapright"></i></a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown user">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                            <img alt="" src="img/avatar1_small.jpg"/>
                            <span class="username">张珊珊</span>
                            <i class="fa fa-angle-down"></i>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="extra_profile.html"><i class="fa fa-user"></i>我的资料</a></li>
                            <li><a href="page_calendar.html"><i class="fa fa-calendar"></i>我的日程安排</a></li>
                            <li><a href="inbox.html"><i class="fa fa-envelope"></i> 我的信息 <span
                                    class="badge badge-important">3</span></a></li>
                            <li><a href="#"><i class="fa fa-tasks"></i> 我的任务 <span class="badge badge-success">8</span></a></li>
                            <li class="divider"></li>
                            <li><a href="javascript:;" id="trigger_fullscreen"><i class="fa fa-move"></i> 全屏</a></li>
                            <li><a href="extra_lock.html"><i class="fa fa-lock"></i> 离开锁定</a></li>
                            <li><a href="login.html"><i class="fa fa-key"></i> 注销系统</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!--框架布局顶部结束-->

<script src="<%=basePath%>static/plugins/jquery/jquery.js" type="text/javascript"></script>
<script src="<%=basePath%>static/plugins/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
<script src="<%=basePath%>static/plugins/jquery-ui/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
<script src="<%=basePath%>static/plugins/jquery-layout/jquery.layout-latest.js" type="text/javascript"></script>
<script src="<%=basePath%>static/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="<%=basePath%>static/plugins/bootstrap-hover-dropdown/twitter-bootstrap-hover-dropdown.min.js"
        type="text/javascript"></script>
<script src="<%=basePath%>static/plugins/excanvas.min.js"></script>
<script src="<%=basePath%>static/plugins/respond.min.js"></script>
<script src="<%=basePath%>static/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<script src="<%=basePath%>static/plugins/jquery.blockui.min.js" type="text/javascript"></script>
<script src="<%=basePath%>static/plugins/jquery.cookie.min.js" type="text/javascript"></script>
<script src="<%=basePath%>static/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
<script src="<%=basePath%>static/core/js/app.js" type="text/javascript"></script>
<script src="<%=basePath%>static/core/js/zui-layout-frame.js" type="text/javascript"></script>
<script>
    $(document).ready(function () {
        layoutframe.init();
        App.init();
    });
</script>
</body>
</html>