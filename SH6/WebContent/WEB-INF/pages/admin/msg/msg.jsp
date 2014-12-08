<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">  
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0"
    />
    <title>Bootstrap3响应式后台管理系统模版MeAdmin - JS代码网</title>
    <link href="<%=path%>/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"
    />
    <!--[if lt IE 9]>
      <link rel="stylesheet" type="text/css" href="plugins/jquery-ui/jquery.ui.1.10.2.ie.css"
      />
    <![endif]-->
    <link href="<%=path%>/assets/css/main.css" rel="stylesheet" type="text/css" />
    <link href="<%=path%>/assets/css/plugins.css" rel="stylesheet" type="text/css" />
    <link href="<%=path%>/assets/css/responsive.css" rel="stylesheet" type="text/css"
    />
    <link href="<%=path%>/assets/css/icons.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="<%=path %>/assets/css/fontawesome/font-awesome.min.css">
    <!--[if IE 7]>
      <link rel="stylesheet" href="assets/css/fontawesome/font-awesome-ie7.min.css">
    <![endif]-->
    <!--[if IE 8]>
      <link href="<%=path%>/assets/css/ie8.css" rel="stylesheet" type="text/css" />
    <![endif]-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700'
    rel='stylesheet' type='text/css'>
    <script type="text/javascript" src="<%=path%>/assets/js/libs/jquery-1.10.2.min.js">
    </script>
    <script type="text/javascript" src="<%=path%>/plugins/jquery-ui/jquery-ui-1.10.2.custom.min.js">
    </script>
    <script type="text/javascript" src="<%=path%>/bootstrap/js/bootstrap.min.js">
    </script>
    <script type="text/javascript" src="<%=path%>/assets/js/libs/lodash.compat.min.js">
    </script>
    <!--[if lt IE 9]>
      <script src="<%=path%>/assets/js/libs/html5shiv.js">
      </script>
    <![endif]-->
    <script type="text/javascript" src="<%=path%>/plugins/touchpunch/jquery.ui.touch-punch.min.js">
    </script>
    <script type="text/javascript" src="<%=path%>/plugins/event.swipe/jquery.event.move.js">
    </script>
    <script type="text/javascript" src="<%=path%>/plugins/event.swipe/jquery.event.swipe.js">
    </script>
    <script type="text/javascript" src="<%=path%>/assets/js/libs/breakpoints.js">
    </script>
    <script type="text/javascript" src="<%=path%>/plugins/respond/respond.min.js">
    </script>
    <script type="text/javascript" src="<%=path%>/plugins/cookie/jquery.cookie.min.js">
    </script>
    <script type="text/javascript" src="<%=path%>/plugins/slimscroll/jquery.slimscroll.min.js">
    </script>
    <script type="text/javascript" src="<%=path%>/plugins/slimscroll/jquery.slimscroll.horizontal.min.js">
    </script>
    <!--[if lt IE 9]>
      <script type="text/javascript" src="<%=path%>/plugins/flot/excanvas.min.js">
      </script>
    <![endif]-->
    <script type="text/javascript" src="<%=path%>/plugins/sparkline/jquery.sparkline.min.js">
    </script>
    <script type="text/javascript" src="<%=path%>/plugins/flot/jquery.flot.min.js">
    </script>
    <script type="text/javascript" src="<%=path%>/plugins/flot/jquery.flot.tooltip.min.js">
    </script>
    <script type="text/javascript" src="<%=path%>/plugins/flot/jquery.flot.resize.min.js">
    </script>
    <script type="text/javascript" src="<%=path%>/plugins/flot/jquery.flot.time.min.js">
    </script>
    <script type="text/javascript" src="<%=path%>/plugins/flot/jquery.flot.growraf.min.js">
    </script>
    <script type="text/javascript" src="<%=path%>/plugins/easy-pie-chart/jquery.easy-pie-chart.min.js">
    </script>
    <script type="text/javascript" src="<%=path%>/plugins/daterangepicker/moment.min.js">
    </script>
    <script type="text/javascript" src="<%=path%>/plugins/daterangepicker/daterangepicker.js">
    </script>
    <script type="text/javascript" src="<%=path%>/plugins/blockui/jquery.blockUI.min.js">
    </script>
    <script type="text/javascript" src="<%=path%>/plugins/fullcalendar/fullcalendar.min.js">
    </script>
    <script type="text/javascript" src="<%=path%>/plugins/noty/jquery.noty.js">
    </script>
    <script type="text/javascript" src="<%=path%>/plugins/noty/layouts/top.js">
    </script>
    <script type="text/javascript" src="<%=path%>/plugins/noty/themes/default.js">
    </script>
    <script type="text/javascript" src="<%=path%>/plugins/uniform/jquery.uniform.min.js">
    </script>
    <script type="text/javascript" src="<%=path%>/plugins/select2/select2.min.js">
    </script>
    <script type="text/javascript" src="<%=path%>/assets/js/app.js">
    </script>
    <script type="text/javascript" src="<%=path%>/assets/js/plugins.js">
    </script>
    <script type="text/javascript" src="<%=path%>/assets/js/plugins.form-components.js">
    </script>
    <script>
      $(document).ready(function() {
        App.init();
        Plugins.init();
        FormComponents.init()
      });
    </script>
    <script type="text/javascript" src="<%=path%>/assets/js/custom.js">
    </script>
    <script type="text/javascript" src="<%=path%>/assets/js/demo/pages_calendar.js">
    </script>
    <script type="text/javascript" src="<%=path%>/assets/js/demo/charts/chart_filled_blue.js">
    </script>
    <script type="text/javascript" src="<%=path%>/assets/js/demo/charts/chart_simple.js">
    </script>
    <script type="text/javascript">
    	$(document).ready(function(){
    		$("#tab_newmessages").bind("click", function(){
    			$.get("<%=path%>/msg");
    		});
    	});
    </script>
  </head>
  
<body>
	<%@include file="../navbar.jsp" %>
    <div id="container" class="fixed-header">
       <div id="sidebar" class="sidebar-fixed">
        <%--<div id="sidebar-content">
          <ul id="nav">
          <c:if test="${ sessionScope.loginUser.isAdmin == 1 }">
            <li>
              <a href="<%=path%>/user/manage">
                <i class="icon-dashboard">
                </i>
                控制台
              </a>
            </li>
          </c:if>
            <li>
              <a href="javascript:void(0);">
                <i class="icon-desktop">
                </i>
               订单管理
               
              </a>
              <ul class="sub-menu">
                <li>
                  <a href="ui_general.html">
                    <i class="icon-angle-right">
                    </i>
                    订单录入
                  </a>
                </li>
                <li>
                  <a href="ui_buttons.html">
                    <i class="icon-angle-right">
                    </i>
                    订单修改
                  </a>
                </li>
                <li>
                  <a href="ui_tabs_accordions.html">
                    <i class="icon-angle-right">
                    </i>
                    订单更新
                  </a>
                </li>
                <li>
                  <a href="ui_sliders.html">
                    <i class="icon-angle-right">
                    </i>
                    订单查询
                  </a>
                </li>
              </ul>
            </li>
            <li class="current">
              <a href="#">
                <i class="icon-edit">
                </i>
               站内信
              </a>
            </li>
           
            <c:if test="${ sessionScope.loginUser.isAdmin == 1 }">
      
            <li>
              <a href="input_select.html">
                <i class="icon-list-ol">
                </i>
                前台内容管理
              </a>
              <ul class="sub-menu">
                <li class="open-default">
                  <a href="javascript:void(0);">
                    <i class="icon-cogs">
                    </i>
                    首页
                    <span class="arrow">
                    </span>
                  </a>
                  <ul class="sub-menu">
                    <li class="open-default">
                      <a href="javascript:void(0);">
                        <i class="icon-user">
                        </i>
                        Sample Link 1
                        <span class="arrow">
                        </span>
                      </a>
                      <ul class="sub-menu">
                        <li class="current">
                          <a href="javascript:void(0);">
                            <i class="icon-remove">
                            </i>
                            Sample Link 1
                          </a>
                        </li>
                        <li>
                          <a href="javascript:void(0);">
                            <i class="icon-pencil">
                            </i>
                            Sample Link 1
                          </a>
                        </li>
                        <li>
                          <a href="javascript:void(0);">
                            <i class="icon-edit">
                            </i>
                            Sample Link 1
                          </a>
                        </li>
                      </ul>
                    </li>
                    <li>
                      <a href="javascript:void(0);">
                        <i class="icon-user">
                        </i>
                        Sample Link 1
                      </a>
                    </li>
                    <li>
                      <a href="javascript:void(0);">
                        <i class="icon-external-link">
                        </i>
                        Sample Link 2
                      </a>
                    </li>
                    <li>
                      <a href="javascript:void(0);">
                        <i class="icon-bell">
                        </i>
                        Sample Link 3
                      </a>
                    </li>
                  </ul>
                </li>
                <li>
                  <a href="javascript:void(0);">
                    <i class="icon-globe">
                    </i>
                    关于我们
                    <span class="arrow">
                    </span>
                  </a>
                  <ul class="sub-menu">
                    <li>
                      <a href="javascript:void(0);">
                        <i class="icon-user">
                        </i>
                        Sample Link 1
                      </a>
                    </li>
                    <li>
                      <a href="javascript:void(0);">
                        <i class="icon-external-link">
                        </i>
                        Sample Link 1
                      </a>
                    </li>
                    <li>
                      <a href="javascript:void(0);">
                        <i class="icon-bell">
                        </i>
                        Sample Link 1
                      </a>
                    </li>
                  </ul>
                </li>
                <li>
                  <a href="javascript:void(0);">
                    <i class="icon-folder-open">
                    </i>
                    资讯中心
                  </a>
                </li>
                 <li>
                  <a href="javascript:void(0);">
                    <i class="icon-folder-open">
                    </i>
                    经营领域
                  </a>
                </li>
                 <li>
                  <a href="javascript:void(0);">
                    <i class="icon-folder-open">
                    </i>
                    人才中心
                  </a>
                </li>
                 <li>
                  <a href="javascript:void(0);">
                    <i class="icon-folder-open">
                    </i>
                    联系我们
                  </a>
                </li>
              </ul>
            </li>
            </c:if>
          </ul>
          <div class="sidebar-widget align-center">
            <div class="btn-group" data-toggle="buttons" id="theme-switcher">
              <label class="btn active">
                <input type="radio" name="theme-switcher" data-theme="bright">
                <i class="icon-sun">
                </i>
                白天
              </label>
              <label class="btn">
                <input type="radio" name="theme-switcher" data-theme="dark">
                <i class="icon-moon">
                </i>
                夜晚
              </label>
            </div>
          </div>
        </div> --%>
        <%@ include file="../sidebar.jsp" %>
        <div id="divider" class="resizeable">
        </div>
      </div>
      <div id="content">
      	<div class="container">
      	  <div class="crumbs">
      	  	<ul id="breadcrumbs" class="breadcrumb">
      	  	  <li>
      	  	  	<i class="icon-home"></i>
      	  	  	<a href="<%=path %>/">控制台</a>
      	  	  </li>
      	  	  <li class="current">
      	  	    <a title="" href="<%=path %>/msg">站内信</a>
      	  	  </li>
      	  	</ul>
      	  </div>
      	  <div class="page-header">
      	  	<h4>Page-Header</h4>
      	  </div>
      	  <div class="row">
      	    <div class="col-md-12">
      	      <div class="tabbable tabbable-custom tabbable-full-width">
      	      	<ul class="nav nav-tabs">
      	      	  <li class="active">
      	      	    <a data-toggle="tab" href="#tab_newmessages">NewMessages</a>
      	      	  </li>
      	      	  <li>
      	      	  	<a data-toggle="tab" href="#tab_oldmessages">OldMessages</a>
      	      	  </li>
      	      	  <li>
      	      	  	<a data-toggle="tab" href="#tab_sendmessages">SendMessages</a>
      	      	  </li>
      	      	</ul>
      	      	<div class="tab-content row">
      	      	  <div id="tab_newmessages" class="tab-pane active">
      	      	  	<h4>Tab NewMessages</h4>
      	      	  	<div class="col-md-12">
      	      	  	  <div class="widget">
      	      	  	  	<div class="widget-header">
      	      	  	      <h3><i class="icon-reorder"></i>  新消息</h3>
      	      	  	  	</div>
      	      	  	  	<div class="widget-content">
      	      	  	  		<table class="table table-bordered table-striped">
      	      	  	  	      <thead>
      	      	  	  	        <tr>
      	      	  	  	          <th>aaaa</th>
      	      	  	  	          <th>bbbb</th>
      	      	  	  	          <th>cccc</th>
      	      	  	  	          <th>dddd</th>
      	      	  	  	        </tr>
      	      	  	  	      </thead>
      	      	  	  	      <tbody>
      	      	  	  	      	<tr>
      	      	  	  	      	  <td>111</td>
      	      	  	  	      	  <td>222</td>
      	      	  	  	      	  <td>333</td>
      	      	  	  	      	  <td>444</td>
      	      	  	  	      	</tr>
      	      	  	  	      	<tr>
      	      	  	  	      	  <td>333</td>
      	      	  	  	      	  <td>444</td>
      	      	  	  	      	  <td>555</td>
      	      	  	  	      	  <td>666</td>
      	      	  	  	      	</tr>
      	      	  	  	      </tbody>
      	      	  	  		</table>
      	      	  	  	</div>
      	      	  	  </div>
      	      	  	</div>
      	      	  </div>
      	      	  <div id="tab_oldmessages" class="tab-pane">
      	      	  	<h4>Tab OldMessages</h4>
      	      	  </div>
      	      	  <div id="tab_sendmessages" class="tab-pane">
      	      	  	<h4>Tab SendMessages</h4>
      	      	  </div>
      	      	</div>
      	      </div>
      	    </div>
      	  </div>
      	</div>
      </div>
	</div>
</body>
</html>