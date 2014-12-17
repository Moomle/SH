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
    <title>内容管理</title>
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
    <script type="text/javascript" src="assets/js/libs/jquery-1.10.2.min.js">
    </script>
    <script type="text/javascript" src="plugins/jquery-ui/jquery-ui-1.10.2.custom.min.js">
    </script>
    <script type="text/javascript" src="bootstrap/js/bootstrap.min.js">
    </script>
    <script type="text/javascript" src="assets/js/libs/lodash.compat.min.js">
    </script>
    <!--[if lt IE 9]>
      <script src="assets/js/libs/html5shiv.js">
      </script>
    <![endif]-->
    <script type="text/javascript" src="plugins/touchpunch/jquery.ui.touch-punch.min.js">
    </script>
    <script type="text/javascript" src="plugins/event.swipe/jquery.event.move.js">
    </script>
    <script type="text/javascript" src="plugins/event.swipe/jquery.event.swipe.js">
    </script>
    <script type="text/javascript" src="assets/js/libs/breakpoints.js">
    </script>
    <script type="text/javascript" src="plugins/respond/respond.min.js">
    </script>
    <script type="text/javascript" src="plugins/cookie/jquery.cookie.min.js">
    </script>
    <script type="text/javascript" src="plugins/slimscroll/jquery.slimscroll.min.js">
    </script>
    <script type="text/javascript" src="plugins/slimscroll/jquery.slimscroll.horizontal.min.js">
    </script>
    <!--[if lt IE 9]>
      <script type="text/javascript" src="plugins/flot/excanvas.min.js">
      </script>
    <![endif]-->
    <script type="text/javascript" src="assets/js/app.js">
    </script>
    <script type="text/javascript" src="assets/js/plugins.js">
    </script>
    <script type="text/javascript" src="assets/js/plugins.form-components.js">
    </script>
    <script>
      $(document).ready(function() {
        App.init();
        Plugins.init();
        FormComponents.init()
      });
    </script>
  </head>
  
  <body>
    <%@ include file="navbar.jsp" %>
    <div id="container">
      <div id="sidebar" class="sidebar-fixed">
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
                <a href="">
                  控制台
                </a>
              </li>
              
            </ul>

          </div>
          <div class="page-header">
            <div class="page-title">
              <h3>
                
              </h3>
              <span>
                你好！
              </span>
            </div>
         
          </div>
          <div class="row row-bg">
          </div>
          <div class="row">
          </div>
          <div class="row">
          </div>
          <div class="row">
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