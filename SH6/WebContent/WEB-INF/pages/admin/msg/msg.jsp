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
	<jsp:include page="../navbar.jsp" />
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