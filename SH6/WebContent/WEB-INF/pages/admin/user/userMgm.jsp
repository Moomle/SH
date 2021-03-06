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
    <!-- <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700'
    rel='stylesheet' type='text/css'> -->
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
  </head>
  
  <body>
	<%@include file="../navbar.jsp" %>
    <div id="container" class="fixed-header">
      <div id="sidebar" class="sidebar-fixed">
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
          	    <li>
          	    	<a href="<%=path %>/user">用户管理</a>
          	    </li>
          	  </ul>
          	</div>
          	<div class="page-header">
          	  <h3>用户管理：</h3>
          	</div>
          	<div class="row">
          	  <div class="col-md-12">
          	  	<div class="tabbable tabbable-custom tabbable-full-width">
          	  	  <ul class="nav nav-tabs">
          	  	    <li class="active">
          	  	      <a data-toggle="tab" href="#tab_profile">个人资料</a>
          	  	    </li>
          	  	    <li>
          	  	      <a data-toggle="tab" href="#tab_adduser">注册用户</a>
          	  	    </li>
          	  	    <li>
          	  	      <a data-toggle="tab" href="#tab_mnguser">用户管理</a>
          	  	    </li>
          	  	  </ul>
          	  	  <div class="tab-content row">
          	  	  	<div id="tab_profile" class="tab-pane active">
          	  	  	  <h3>Tab Profile</h3>
          	  	  	</div>
          	  	  	<div id="tab_adduser" class="tab-pane">
          	  	  	  <h3>Tab AddUser</h3>
          	  	  	</div>
          	  	  	<div id="tab_mnguser" class="tab-pane">
          	  	  	  <h3>Tab ManageUser</h3>
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