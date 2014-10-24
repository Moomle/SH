<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>快件查询</title>
    <link href="<%=path %>/css/common.css" rel="stylesheet" type="text/css" />
    <link href="<%=path %>/css/other_order_cs.css" rel="stylesheet" type="text/css" />
    <link href="<%=path %>/css/logon.css" rel="stylesheet" type="text/css" />
    <link href="<%=path %>/css/base.css" rel="stylesheet" type="text/css" />
    <link href="<%=path %>/css/reset_style.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="<%=path %>/js/jquery-1.8.2.js"></script>
    <script type="text/javascript" src="<%=path %>/js/verify-system.js"></script>
    <script type="text/javascript" src="<%=path %>/js/common.js" ></script>
  </head>
  <style>
  	.err-txt{
  	color:red;}
  </style>
  <body>
    <%@ include file="../userTopIndex.jsp" %>
   <form id="formLogined" action="<%=path %>/order/query" method="post">
        <div id="center" class="clearfix help banner_cx" style="padding-bottom:0;">   
            <div class="content">
               <div class="cx_mbox clearfix" id="pos_left">
               			<div style="display:none;" class="ui-err" id="dh_error">
                            <em class="arrow"></em>
                            <span class="err-txt"></span>
                       </div>
                       <div class="fl-left vertical-line"><i class="oblique-triangle-bg col-orang"></i></div>
                       <h3 class="fl-left">快件跟踪<br/>网上查询<i class="ui-bg-1 title-no-bg"></i></h3>
                       <div class="textarea-box dh-input fl-left" style="border-right:none;">
                           <textarea id="dh" name="ord_num" style="font-size: 16px;" placeholder="请输入快递单号，如：668787170085"></textarea>
                       </div>
                       <div class="btnBox-new fl-left clearfix">
                           <input type="button" id="submitLogined" class="btn" value="查询" />
                       </div>
                       <div class="fl-left" style="margin:19px 0 0 10px; line-height: 62px;">
                       </div>
                </div>
            </div>
        </div>
        </form> 
<script>
  $('.textarea-box').click(function(){
      $(this).find('textarea').focus();

  });
</script>
<div class="clear"></div>
    <%@ include file="../footer.jsp" %>
  </body>
</html>
