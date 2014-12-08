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
    <%@include file="navbar.jsp" %>
    <div id="container">
      <div id="sidebar" class="sidebar-fixed">
        <%-- <div id="sidebar-content">
         
          <ul id="nav">
          <c:if test="${ sessionScope.loginUser.isAdmin == 1 }">
            <li class="current">
              <a href="<%=path%>/user/manage">
                <i class="icon-dashboard">
                </i>
                用户管理
              </a>
            </li>
          </c:if>
            <li class>
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
            <li>
              <a href="<%=path%>/msg">
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
        <%@ include file="sidebar.jsp" %>
        <div id="divider" class="resizeable">
        </div>
      </div>
      <div id="content">
        <div class="container">
          <div class="crumbs">
            <ul id="breadcrumbs" class="breadcrumb">
              <li>
                <i class="icon-home">
                </i>
                <a href="index.html">
                  控制台
                </a>
              </li>
              
            </ul>

          </div>
          <div class="page-header">
            <div class="page-title">
              <h3>
                控制台
              </h3>
              <span>
                早上好, John!
              </span>
            </div>
            <ul class="page-stats">
              <li>
                <div class="summary">
                  <span>
                    新订单
                  </span>
                  <h3>
                    17,561
                  </h3>
                </div>
                <div id="sparkline-bar" class="graph sparkline hidden-xs">
                  20,15,8,50,20,40,20,30,20,15,30,20,25,20
                </div>
              </li>
              <li>
                <div class="summary">
                  <span>
                    我的余额
                  </span>
                  <h3>
                    $21,561.21
                  </h3>
                </div>
                <div id="sparkline-bar2" class="graph sparkline hidden-xs">
                  20,15,8,50,20,40,20,30,20,15,30,20,25,20
                </div>
              </li>
            </ul>
          </div>
          <div class="row row-bg">
            <div class="col-sm-6 col-md-3">
              <div class="statbox widget box box-shadow">
                <div class="widget-content">
                  <div class="visual cyan">
                    <div class="statbox-sparkline">
                      30,20,15,30,22,25,26,30,27
                    </div>
                  </div>
                  <div class="title">
                    客户
                  </div>
                  <div class="value">
                    4 501
                  </div>
                  <a class="more" href="javascript:void(0);">
                    查看更多
                    <i class="pull-right icon-angle-right">
                    </i>
                  </a>
                </div>
              </div>
            </div>
            <div class="col-sm-6 col-md-3">
              <div class="statbox widget box box-shadow">
                <div class="widget-content">
                  <div class="visual green">
                    <div class="statbox-sparkline">
                      20,30,30,29,22,15,20,30,32
                    </div>
                  </div>
                  <div class="title">
                    反馈
                  </div>
                  <div class="value">
                    714
                  </div>
                  <a class="more" href="javascript:void(0);">
                   查看更多
                    <i class="pull-right icon-angle-right">
                    </i>
                  </a>
                </div>
              </div>
            </div>
            <div class="col-sm-6 col-md-3 hidden-xs">
              <div class="statbox widget box box-shadow">
                <div class="widget-content">
                  <div class="visual yellow">
                    <i class="icon-dollar">
                    </i>
                  </div>
                  <div class="title">
                    总共利润
                  </div>
                  <div class="value">
                    $42,512.61
                  </div>
                  <a class="more" href="javascript:void(0);">
                    查看更多
                    <i class="pull-right icon-angle-right">
                    </i>
                  </a>
                </div>
              </div>
            </div>
            <div class="col-sm-6 col-md-3 hidden-xs">
              <div class="statbox widget box box-shadow">
                <div class="widget-content">
                  <div class="visual red">
                    <i class="icon-user">
                    </i>
                  </div>
                  <div class="title">
                    访问量
                  </div>
                  <div class="value">
                    2 521 719
                  </div>
                  <a class="more" href="javascript:void(0);">
                   查看更多
                    <i class="pull-right icon-angle-right">
                    </i>
                  </a>
                </div>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-12">
              <div class="widget box">
                <div class="widget-header">
                  <h4>
                    <i class="icon-reorder">
                    </i>
                    总的点击率(
                    <span class="blue">
                      +29%
                    </span>
                    )
                  </h4>
                  <div class="toolbar no-padding">
                    <div class="btn-group">
                      <span class="btn btn-xs widget-collapse">
                        <i class="icon-angle-down">
                        </i>
                      </span>
                    </div>
                  </div>
                </div>
                <div class="widget-content">
                  <div id="chart_filled_blue" class="chart">
                  </div>
                </div>
                <div class="divider">
                </div>
                <div class="widget-content">
                  <ul class="stats">
                    <li>
                      <strong>
                        4,853
                      </strong>
                      <small>
                        Total Views
                      </small>
                    </li>
                    <li class="light hidden-xs">
                      <strong>
                        271
                      </strong>
                      <small>
                        Last 24 Hours
                      </small>
                    </li>
                    <li>
                      <strong>
                        1,025
                      </strong>
                      <small>
                        Unique Users
                      </small>
                    </li>
                    <li class="light hidden-xs">
                      <strong>
                        105
                      </strong>
                      <small>
                        Last 24 Hours
                      </small>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-6">
              <div class="widget box">
                <div class="widget-header">
                  <h4>
                    <i class="icon-reorder">
                    </i>
                    曲线图
                  </h4>
                  <div class="toolbar no-padding">
                    <div class="btn-group">
                      <span class="btn btn-xs widget-collapse">
                        <i class="icon-angle-down">
                        </i>
                      </span>
                    </div>
                  </div>
                </div>
                <div class="widget-content">
                  <div id="chart_simple" class="chart" style="height: 219px;">
                  </div>
                </div>
              </div>
            </div>
            <div class="col-md-6">
              <div class="widget box">
                <div class="widget-header">
                  <h4>
                    <i class="icon-reorder">
                    </i>
                   新用户
                  </h4>
                  <div class="toolbar no-padding">
                    <div class="btn-group">
                      <span class="btn btn-xs widget-collapse">
                        <i class="icon-angle-down">
                        </i>
                      </span>
                    </div>
                  </div>
                </div>
                <div class="widget-content no-padding">
                  <table class="table table-striped table-checkable table-hover">
                    <thead>
                      <tr>
                        <th class="checkbox-column">
                          <input type="checkbox" class="uniform">
                        </th>
                        <th class="hidden-xs">
                          First Name
                        </th>
                        <th>
                          Last Name
                        </th>
                        <th>
                          Status
                        </th>
                        <th class="align-center">
                          Approve
                        </th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td class="checkbox-column">
                          <input type="checkbox" class="uniform">
                        </td>
                        <td class="hidden-xs">
                          Joey
                        </td>
                        <td>
                          Greyson
                        </td>
                        <td>
                          <span class="label label-success">
                            Approved
                          </span>
                        </td>
                        <td class="align-center">
                          <span class="btn-group">
                            <a href="javascript:void(0);" title="Approve" class="btn btn-xs bs-tooltip">
                              <i class="icon-ok">
                              </i>
                            </a>
                          </span>
                        </td>
                      </tr>
                      <tr>
                        <td class="checkbox-column">
                          <input type="checkbox" class="uniform">
                        </td>
                        <td class="hidden-xs">
                          Wolf
                        </td>
                        <td>
                          Bud
                        </td>
                        <td>
                          <span class="label label-info">
                            Pending
                          </span>
                        </td>
                        <td class="align-center">
                          <span class="btn-group">
                            <a href="javascript:void(0);" title="Approve" class="btn btn-xs bs-tooltip">
                              <i class="icon-ok">
                              </i>
                            </a>
                          </span>
                        </td>
                      </tr>
                      <tr>
                        <td class="checkbox-column">
                          <input type="checkbox" class="uniform">
                        </td>
                        <td class="hidden-xs">
                          Darin
                        </td>
                        <td>
                          Alec
                        </td>
                        <td>
                          <span class="label label-warning">
                            Suspended
                          </span>
                        </td>
                        <td class="align-center">
                          <span class="btn-group">
                            <a href="javascript:void(0);" title="Approve" class="btn btn-xs bs-tooltip">
                              <i class="icon-ok">
                              </i>
                            </a>
                          </span>
                        </td>
                      </tr>
                      <tr>
                        <td class="checkbox-column">
                          <input type="checkbox" class="uniform">
                        </td>
                        <td class="hidden-xs">
                          Andrea
                        </td>
                        <td>
                          Brenden
                        </td>
                        <td>
                          <span class="label label-danger">
                            Blocked
                          </span>
                        </td>
                        <td class="align-center">
                          <span class="btn-group">
                            <a href="javascript:void(0);" title="Approve" class="btn btn-xs bs-tooltip">
                              <i class="icon-ok">
                              </i>
                            </a>
                          </span>
                        </td>
                      </tr>
                    </tbody>
                  </table>
                  <div class="row">
                    <div class="table-footer">
                      <div class="col-md-12">
                        <div class="table-actions">
                          <label>
                            Apply action:
                          </label>
                          <select class="select2" data-minimum-results-for-search="-1" data-placeholder="Select action...">
                            <option value="">
                            </option>
                            <option value="Edit">
                              Edit
                            </option>
                            <option value="Delete">
                              Delete
                            </option>
                            <option value="Move">
                              Move
                            </option>
                          </select>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-6">
              <div class="widget">
                <div class="widget-header">
                  <h4>
                    <i class="icon-calendar">
                    </i>
                    日历
                  </h4>
                </div>
                <div class="widget-content">
                  <div id="calendar">
                  </div>
                </div>
              </div>
            </div>
            <div class="col-md-6">
              <div class="widget">
                <div class="widget-header">
                  <h4>
                    <i class="icon-reorder">
                    </i>
                    订阅
                  </h4>
                  <div class="toolbar no-padding">
                    <div class="btn-group">
                      <span class="btn btn-xs widget-collapse">
                        <i class="icon-angle-down">
                        </i>
                      </span>
                      <span class="btn btn-xs widget-refresh">
                        <i class="icon-refresh">
                        </i>
                      </span>
                    </div>
                  </div>
                </div>
                <div class="widget-content">
                  <div class="tabbable tabbable-custom">
                    <ul class="nav nav-tabs">
                      <li class="active">
                        <a href="#tab_feed_1" data-toggle="tab">
                          System
                        </a>
                      </li>
                      <li>
                        <a href="#tab_feed_2" data-toggle="tab">
                          Activities
                        </a>
                      </li>
                    </ul>
                    <div class="tab-content">
                      <div class="tab-pane active" id="tab_feed_1">
                        <div class="scroller" data-height="290px" data-always-visible="1" data-rail-visible="0">
                          <ul class="feeds clearfix">
                            <li>
                              <div class="col1">
                                <div class="content">
                                  <div class="content-col1">
                                    <div class="label label-success">
                                      <i class="icon-bell">
                                      </i>
                                    </div>
                                  </div>
                                  <div class="content-col2">
                                    <div class="desc">
                                      You have 2 puzzles to solve.
                                    </div>
                                  </div>
                                </div>
                              </div>
                              <div class="col2">
                                <div class="date">
                                  Just now
                                </div>
                              </div>
                            </li>
                            <li>
                              <div class="col1">
                                <div class="content">
                                  <div class="content-col1">
                                    <div class="label label-success">
                                      <i class="icon-plus">
                                      </i>
                                    </div>
                                  </div>
                                  <div class="content-col2">
                                    <div class="desc">
                                      New user registered.
                                    </div>
                                  </div>
                                </div>
                              </div>
                              <div class="col2">
                                <div class="date">
                                  20 mins ago
                                </div>
                              </div>
                            </li>
                            <li class="hoverable">
                              <a href="javascript:void(0);">
                                <div class="col1">
                                  <div class="content">
                                    <div class="content-col1">
                                      <div class="label label-info">
                                        <i class="icon-bullhorn">
                                        </i>
                                      </div>
                                    </div>
                                    <div class="content-col2">
                                      <div class="desc">
                                        New items are in queue.
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <div class="col2">
                                  <div class="date">
                                    25 mins ago
                                  </div>
                                </div>
                              </a>
                            </li>
                            <li>
                              <div class="col1">
                                <div class="content">
                                  <div class="content-col1">
                                    <div class="label label-danger">
                                      <i class="icon-warning-sign">
                                      </i>
                                    </div>
                                  </div>
                                  <div class="content-col2">
                                    <div class="desc">
                                      High CPU load on cluster #2.
                                      <span class="label label-danger label-mini">
                                        Fix it
                                        <i class="icon-share-alt">
                                        </i>
                                      </span>
                                    </div>
                                  </div>
                                </div>
                              </div>
                              <div class="col2">
                                <div class="date">
                                  30 mins ago
                                </div>
                              </div>
                            </li>
                            <li>
                              <div class="col1">
                                <div class="content">
                                  <div class="content-col1">
                                    <div class="label label-warning">
                                      <i class="icon-bolt">
                                      </i>
                                    </div>
                                  </div>
                                  <div class="content-col2">
                                    <div class="desc">
                                      Disk space to 85% full.
                                    </div>
                                  </div>
                                </div>
                              </div>
                              <div class="col2">
                                <div class="date">
                                  45 mins ago
                                </div>
                              </div>
                            </li>
                            <li>
                              <div class="col1">
                                <div class="content">
                                  <div class="content-col1">
                                    <div class="label label-success">
                                      <i class="icon-plus">
                                      </i>
                                    </div>
                                  </div>
                                  <div class="content-col2">
                                    <div class="desc">
                                      New user registered.
                                    </div>
                                  </div>
                                </div>
                              </div>
                              <div class="col2">
                                <div class="date">
                                  1 hour ago
                                </div>
                              </div>
                            </li>
                            <li>
                              <div class="col1">
                                <div class="content">
                                  <div class="content-col1">
                                    <div class="label label-default">
                                      <i class="icon-time">
                                      </i>
                                    </div>
                                  </div>
                                  <div class="content-col2">
                                    <div class="desc">
                                      Time successfully synced.
                                    </div>
                                  </div>
                                </div>
                              </div>
                              <div class="col2">
                                <div class="date">
                                  1.5 hours ago
                                </div>
                              </div>
                            </li>
                            <li>
                              <div class="col1">
                                <div class="content">
                                  <div class="content-col1">
                                    <div class="label label-info">
                                      <i class="icon-bullhorn">
                                      </i>
                                    </div>
                                  </div>
                                  <div class="content-col2">
                                    <div class="desc">
                                      Download finished.
                                    </div>
                                  </div>
                                </div>
                              </div>
                              <div class="col2">
                                <div class="date">
                                  1.8 hours ago
                                </div>
                              </div>
                            </li>
                            <li>
                              <div class="col1">
                                <div class="content">
                                  <div class="content-col1">
                                    <div class="label label-success">
                                      <i class="icon-plus">
                                      </i>
                                    </div>
                                  </div>
                                  <div class="content-col2">
                                    <div class="desc">
                                      New order received.
                                    </div>
                                  </div>
                                </div>
                              </div>
                              <div class="col2">
                                <div class="date">
                                  2 hours ago
                                </div>
                              </div>
                            </li>
                            <li>
                              <div class="col1">
                                <div class="content">
                                  <div class="content-col1">
                                    <div class="label label-info">
                                      <i class="icon-bullhorn">
                                      </i>
                                    </div>
                                  </div>
                                  <div class="content-col2">
                                    <div class="desc">
                                      Download finished.
                                    </div>
                                  </div>
                                </div>
                              </div>
                              <div class="col2">
                                <div class="date">
                                  3 hours ago
                                </div>
                              </div>
                            </li>
                            <li>
                              <div class="col1">
                                <div class="content">
                                  <div class="content-col1">
                                    <div class="label label-success">
                                      <i class="icon-plus">
                                      </i>
                                    </div>
                                  </div>
                                  <div class="content-col2">
                                    <div class="desc">
                                      New order received.
                                    </div>
                                  </div>
                                </div>
                              </div>
                              <div class="col2">
                                <div class="date">
                                  5 hours ago
                                </div>
                              </div>
                            </li>
                            <li>
                              <div class="col1">
                                <div class="content">
                                  <div class="content-col1">
                                    <div class="label label-info">
                                      <i class="icon-bullhorn">
                                      </i>
                                    </div>
                                  </div>
                                  <div class="content-col2">
                                    <div class="desc">
                                      Download finished.
                                    </div>
                                  </div>
                                </div>
                              </div>
                              <div class="col2">
                                <div class="date">
                                  5.5 hours ago
                                </div>
                              </div>
                            </li>
                            <li>
                              <div class="col1">
                                <div class="content">
                                  <div class="content-col1">
                                    <div class="label label-success">
                                      <i class="icon-plus">
                                      </i>
                                    </div>
                                  </div>
                                  <div class="content-col2">
                                    <div class="desc">
                                      New order received.
                                    </div>
                                  </div>
                                </div>
                              </div>
                              <div class="col2">
                                <div class="date">
                                  7 hours ago
                                </div>
                              </div>
                            </li>
                            <li>
                              <div class="col1">
                                <div class="content">
                                  <div class="content-col1">
                                    <div class="label label-info">
                                      <i class="icon-bullhorn">
                                      </i>
                                    </div>
                                  </div>
                                  <div class="content-col2">
                                    <div class="desc">
                                      Download finished.
                                    </div>
                                  </div>
                                </div>
                              </div>
                              <div class="col2">
                                <div class="date">
                                  16 hours ago
                                </div>
                              </div>
                            </li>
                            <li>
                              <div class="col1">
                                <div class="content">
                                  <div class="content-col1">
                                    <div class="label label-success">
                                      <i class="icon-plus">
                                      </i>
                                    </div>
                                  </div>
                                  <div class="content-col2">
                                    <div class="desc">
                                      New order received.
                                    </div>
                                  </div>
                                </div>
                              </div>
                              <div class="col2">
                                <div class="date">
                                  20 hours ago
                                </div>
                              </div>
                            </li>
                          </ul>
                        </div>
                      </div>
                      <div class="tab-pane" id="tab_feed_2">
                        <div class="scroller" data-height="290px" data-always-visible="1" data-rail-visible="0">
                          <ul class="feeds clearfix">
                            <li>
                              <div class="col1">
                                <div class="content">
                                  <div class="content-col1">
                                    <div class="label label-success">
                                      <i class="icon-plus">
                                      </i>
                                    </div>
                                  </div>
                                  <div class="content-col2">
                                    <div class="desc">
                                      New user registered.
                                    </div>
                                  </div>
                                </div>
                              </div>
                              <div class="col2">
                                <div class="date">
                                  1 min ago
                                </div>
                              </div>
                            </li>
                            <li>
                              <div class="col1">
                                <div class="content">
                                  <div class="content-col1">
                                    <div class="label label-success">
                                      <i class="icon-plus">
                                      </i>
                                    </div>
                                  </div>
                                  <div class="content-col2">
                                    <div class="desc">
                                      New user registered.
                                    </div>
                                  </div>
                                </div>
                              </div>
                              <div class="col2">
                                <div class="date">
                                  5 mins ago
                                </div>
                              </div>
                            </li>
                            <li>
                              <div class="col1">
                                <div class="content">
                                  <div class="content-col1">
                                    <div class="label label-info">
                                      <i class="icon-plus">
                                      </i>
                                    </div>
                                  </div>
                                  <div class="content-col2">
                                    <div class="desc">
                                      New order received.
                                    </div>
                                  </div>
                                </div>
                              </div>
                              <div class="col2">
                                <div class="date">
                                  10 mins ago
                                </div>
                              </div>
                            </li>
                            <li>
                              <div class="col1">
                                <div class="content">
                                  <div class="content-col1">
                                    <div class="label label-success">
                                      <i class="icon-plus">
                                      </i>
                                    </div>
                                  </div>
                                  <div class="content-col2">
                                    <div class="desc">
                                      New user registered.
                                    </div>
                                  </div>
                                </div>
                              </div>
                              <div class="col2">
                                <div class="date">
                                  20 mins ago
                                </div>
                              </div>
                            </li>
                            <li>
                              <div class="col1">
                                <div class="content">
                                  <div class="content-col1">
                                    <div class="label label-info">
                                      <i class="icon-plus">
                                      </i>
                                    </div>
                                  </div>
                                  <div class="content-col2">
                                    <div class="desc">
                                      New order received.
                                    </div>
                                  </div>
                                </div>
                              </div>
                              <div class="col2">
                                <div class="date">
                                  30 mins ago
                                </div>
                              </div>
                            </li>
                            <li>
                              <div class="col1">
                                <div class="content">
                                  <div class="content-col1">
                                    <div class="label label-success">
                                      <i class="icon-plus">
                                      </i>
                                    </div>
                                  </div>
                                  <div class="content-col2">
                                    <div class="desc">
                                      New user registered.
                                    </div>
                                  </div>
                                </div>
                              </div>
                              <div class="col2">
                                <div class="date">
                                  40 mins ago
                                </div>
                              </div>
                            </li>
                            <li>
                              <div class="col1">
                                <div class="content">
                                  <div class="content-col1">
                                    <div class="label label-info">
                                      <i class="icon-plus">
                                      </i>
                                    </div>
                                  </div>
                                  <div class="content-col2">
                                    <div class="desc">
                                      New order received.
                                    </div>
                                  </div>
                                </div>
                              </div>
                              <div class="col2">
                                <div class="date">
                                  50 mins ago
                                </div>
                              </div>
                            </li>
                            <li>
                              <div class="col1">
                                <div class="content">
                                  <div class="content-col1">
                                    <div class="label label-success">
                                      <i class="icon-plus">
                                      </i>
                                    </div>
                                  </div>
                                  <div class="content-col2">
                                    <div class="desc">
                                      New user registered.
                                    </div>
                                  </div>
                                </div>
                              </div>
                              <div class="col2">
                                <div class="date">
                                  1 hour ago
                                </div>
                              </div>
                            </li>
                            <li>
                              <div class="col1">
                                <div class="content">
                                  <div class="content-col1">
                                    <div class="label label-info">
                                      <i class="icon-plus">
                                      </i>
                                    </div>
                                  </div>
                                  <div class="content-col2">
                                    <div class="desc">
                                      New order received.
                                    </div>
                                  </div>
                                </div>
                              </div>
                              <div class="col2">
                                <div class="date">
                                  1.5 hours ago
                                </div>
                              </div>
                            </li>
                          </ul>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <script type="text/javascript">
      if (location.host == "envato.stammtec.de" || location.host == "themes.stammtec.de") {
        var _paq = _paq || [];
        _paq.push(["trackPageView"]);
        _paq.push(["enableLinkTracking"]); (function() {
          var a = (("https:" == document.location.protocol) ? "https": "http") + "://analytics.stammtec.de/";
          _paq.push(["setTrackerUrl", a + "piwik.php"]);
          _paq.push(["setSiteId", "17"]);
          var e = document,
          c = e.createElement("script"),
          b = e.getElementsByTagName("script")[0];
          c.type = "text/javascript";
          c.defer = true;
          c.async = true;
          c.src = a + "piwik.js";
          b.parentNode.insertBefore(c, b)
        })()
      };
    </script>
  </body>

</html>