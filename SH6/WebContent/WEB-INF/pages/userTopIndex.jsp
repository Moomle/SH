<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<% String pathTop = request.getContextPath(); %>
<div class="header">
    	<div class="logo">
    		<a href="<%=pathTop %>/">
    			<img src="<%=pathTop %>/images/logo.png" width="230" height="100">
    		</a>
    	</div>
    	<div class="header_right">
    		<c:if test="${ empty sessionScope.loginUser}">
    			<div class="header_right_top">
    			<ul>
    				<li class="header_right_top_index">
<!--    					<a href="index.jsp">-->
<!--    						<span>首页</span>-->
<!--    					</a>-->
    				</li>
    				<li class="header_right_top_link">
    					<a href="<%=pathTop %>/">
    						<span>首页</span>
    					</a>
    					<a href="<%=pathTop %>/login">
    						<span>登陆</span>
    					</a>
    				</li>
    			</ul>		 		
    		</div>
    		</c:if>
    		<c:if test="${ not empty sessionScope.loginUser}">
    			<div class="header_right_top">
    			<ul>
    				<li class="header_right_top_index">
    					<c:if test="${ not empty sessionScope.loginUser and sessionScope.loginUser.isAdmin == 1 }">
    					<a href="<%=pathTop %>/user/${ sessionScope.loginUser.telephone }/manage">
    						<span>用户管理</span>
    					</a>
    					<a href="<%=pathTop%>/admin">
    					    <span>内容管理</span>
    					</a>
    					</c:if>
    				</li>
    				<c:if test="${!empty sessionScope.loginUser }">
    				<li class="header_right_top_link">
    					<a>
    						<span>你好, ${ sessionScope.loginUser.name }</span>
    					</a>
    					<a href="<%=pathTop %>/logout">
    						<span>退出</span>
    					</a>
    					
    				</li>
    				
    				</c:if>
    			</ul>		 		
    		</div>
    		</c:if>
    		
    		<div class="clear"></div>
    		<div class="header_menu">
    			<ul id="navigation">
    				<li id="nav_tab1">
    					<a href="<%=pathTop %>/" class="user_a header_menu_item_01">
    						<span>首页</span>
    					</a>
    				</li>
    				<li id="nav_tab2">
    					<a href="<%=pathTop %>/order/query" class="user_a header_menu_item_02">
    						<span>快件查询</span>
    					</a>
    				</li>
    				<li id="nav_tab3">
    					<a href="<%=pathTop %>/order/manage" class="user_a header_menu_item_03">
    						<span>订单管理</span>
    					</a>
    				</li>
    				<li id="nav_tab4">
    					<a href="<%=pathTop %>/msg/" class="user_a header_menu_item_04">
    						<span>站内信</span>
    					</a>
    				</li>
<!--     				<li id="nav_ta5"> -->
<!--     					<a href="mySH.jsp" class="header_menu_item_05">我的SH</a> -->
<!--     				</li> -->
    			</ul>
    		</div>
    	</div>
    </div>

