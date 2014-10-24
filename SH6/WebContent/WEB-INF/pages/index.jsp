<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>SH快递</title>
    <link href="<%=path %>/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="<%=path %>/css/common.css" rel="stylesheet" type="text/css" />
    <link href="<%=path %>/css/picStyle.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="<%=path %>/js/jquery-1.8.2.js"></script>
  	<script type="text/javascript" src="<%=path %>/js/index.js" ></script>
  </head>
  <style>
  	.err-txt{
  	color:red;}
  	.btn{
  	float:left;
  	background-color:#66c1f7;
  	color:#fff;
  	padding:0 12px;}
  </style>
  <body>
    <%@ include file="userTopIndex.jsp" %>
    <div class="main">
    	<div class="index_left">
    		<form  id="index_form" name="QueryForm" action="<%=path %>/order/query " method="post">
    			<div class="index_left_form">
    				<h1>快件查询</h1>
    				<div class="index_left_form_input">
    					<textarea name="ord_num" id="index_search"  placeholder="请输入快递单号，如：668787170085"></textarea>
    				</div>
    				<h2 style="margin-top:0">
    					<div style="display:none;" class="ui-err" id="index_search_error">
	                        <em class="arrow"></em>
	                        <span class="err-txt"></span>
	                     </div>
    				</h2>
    				<div class="index_left_form_submit">
    					<input id="index_submit" name="Submit" class="btn" type="submit" value="查询">
    				</div>
    			</div>
    		</form>
    		<div class="left_module">
    		<!--空缺。。。。。。。。。。。。。。。。。。。。。。。  -->
    		</div>
    		<div class="left_module">
    		<!--空缺。。。。。。。。。。。。。。。。。。。。。。。  -->
    		</div>
    		<div class="left_module">
    		<!--空缺。。。。。。。。。。。。。。。。。。。。。。。  -->
    		</div>
    	</div>
    	<div class="index_right">
			<div id="index_pic" class="index_pic">
				<ul>
					<li><img src="<%=path %>/images/01.jpg" text="http://www.baidu.com/|_self" pic="1" /></li>
					<li><img src="<%=path %>/images/02.jpg" text="http://www.baidu.com/|_blank" pic="2" /></li>
					<li><img src="<%=path %>/images/03.jpg" text="http://sc.baidu.com/|_self" pic="3" /></li>
					<li><img src="<%=path %>/images/04.jpg" text="http://sc.baidu.com/|_blank" pic="4" /></li>
					<li><img src="<%=path %>/images/05.jpg" text="http://sc.baidu.com/|_blank" pic="5" /></li>
					<li><img src="<%=path %>/images/06.jpg" text="http://sc.baidu.com/|_self" pic="6" /></li>
				</ul>
				<div id="back"><a href="http://www.taobao.com/" target="_self"><img width="760" height="300" src="<%=path %>/images/index1.jpg" /></a></div>
			</div><!--index_pic end-->
			<script type="text/javascript" src="<%=path %>/js/jquery-1.8.2.js"></script>
			<script type="text/javascript" src="<%=path %>/js/zzsc.js"></script>
    	</div>
    	<div class="clear"></div>
    </div>
    <%@ include file="footer.jsp" %>
  </body>
</html>
