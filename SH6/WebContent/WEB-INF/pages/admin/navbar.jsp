<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%
String npath = request.getContextPath();
String nbasePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+npath+"/";
%>
<header class="header navbar navbar-fixed-top" role="banner">
      <div class="container">
        <ul class="nav navbar-nav">
          <li class="nav-toggle">
            <a href="javascript:void(0);" title="">
              <i class="icon-reorder">
              </i>
            </a>
          </li>
        </ul>
        <a class="navbar-brand" href="index.html">
          <img src="<%=npath%>/assets/img/logo.png" alt="logo" />
          <strong>
            Me
          </strong>
          Admin
        </a>
        <a href="#" class="toggle-sidebar bs-tooltip" data-placement="bottom"
        data-original-title="Toggle navigation">
          <i class="icon-reorder">
          </i>
        </a>
        
        <ul class="nav navbar-nav navbar-right">
   
          <li class="dropdown hidden-xs hidden-sm">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="icon-envelope">
              </i>
              <span class="badge">
                3
              </span>
            </a>
            <ul class="dropdown-menu extended notification">
              <li class="title">
                <p>
                  你有3条新消息
                </p>
              </li>
              <li>
                <a href="javascript:void(0);">
                  <span class="photo">
                    <img src="<%=npath%>/assets/img/demo/avatar-1.jpg" alt="" />
                  </span>
                  <span class="subject">
                    <span class="from">
                      Bob Carter
                    </span>
                    <span class="time">
                      Just Now
                    </span>
                  </span>
                  <span class="text">
                    Consetetur sadipscing elitr...
                  </span>
                </a>
              </li>
              <li>
                <a href="javascript:void(0);">
                  <span class="photo">
                    <img src="<%=npath%>/assets/img/demo/avatar-2.jpg" alt="" />
                  </span>
                  <span class="subject">
                    <span class="from">
                      Jane Doe
                    </span>
                    <span class="time">
                      45 mins
                    </span>
                  </span>
                  <span class="text">
                    Sed diam nonumy...
                  </span>
                </a>
              </li>
              <li>
                <a href="javascript:void(0);">
                  <span class="photo">
                    <img src="<%=npath%>/assets/img/demo/avatar-3.jpg" alt="" />
                  </span>
                  <span class="subject">
                    <span class="from">
                      Patrick Nilson
                    </span>
                    <span class="time">
                      6 hours
                    </span>
                  </span>
                  <span class="text">
                    No sea takimata sanctus...
                  </span>
                </a>
              </li>
              <li class="footer">
                <a href="javascript:void(0);">
                  View all messages
                </a>
              </li>
            </ul>
          </li>
          <li class="dropdown user">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="icon-male">
              </i>
              <span class="username">
                John Doe
              </span>
              <i class="icon-caret-down small">
              </i>
            </a>
            <ul class="dropdown-menu">
              <li>
                <a href="pages_user_profile.html">
                  <i class="icon-user">
                  </i>
                  我的资料
                </a>
              </li>
              <li>
                <a href="pages_calendar.html">
                  <i class="icon-calendar">
                  </i>
                  我的日历
                </a>
              </li>
              <li>
                <a href="#">
                  <i class="icon-tasks">
                  </i>
                  我的任务
                </a>
              </li>
              <li class="divider">
              </li>
              <li>
                <a href="login.html">
                  <i class="icon-key">
                  </i>
                  退出
                </a>
              </li>
            </ul>
          </li>
        </ul>
      </div>
    </header>