<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>查询结果</title>
    <link href="<%=path %>/css/common1.css" rel="stylesheet" type="text/css" />
    <link href="<%=path %>/css/common.css" rel="stylesheet" type="text/css" />
  </head>
  
  <body>
  <form method="post" action="" id="">
    <%@ include file="../userTopIndex.jsp" %>
    <div class="main">
    	<div class="main_left">
                <div class="main_left_box">
                    <div class="main_left_top">&nbsp;</div>
                    <div class="main_left_list">
                        <ul>
						
						
						</ul>
                    </div>
                    <div class="main_left_bottom">&nbsp;</DIV>
                </div>
            </div>
    	<div class= "main_middle" style="width:700">
    		<div class="main_middle_local">
    			<a>首页</a>
    			>>
    			<a>快件查询</a>
    			>> 货物追踪结果
    		</div>
    		<div class="main_service_pic">
    			<img src="../images/pic_service.png" width="600" height="80">
    			<h1>快件查询</h1>
    		</div>
    		<div class="clear"></div>
    		<div class="result">
    			<div class="crumb_title fix mt20">
    				<span class="sp_tit">
    					货物追踪结果
    				</span>
    			</div>
    			<div class="result_list">
    				<ul>
    					<li>
    					</li>
    					<li>
    						<p>
								<c:if test="${ empty queryResult }">
									没有跟踪记录！
								</c:if>
							</p>
    						<table cellpadding="0" cellspacing="0" class="tab_result" width="100%">
    							<tbody>
    								
    								<c:if test="${ !empty queryResult }">
	    								<tr>
	    									<th width="25%" align="center">扫描日期时间</th>
	    									<th width="55%">跟踪扫描记录</th>
	    									<th width="20%">操作</th>
	    								</tr>
	    								<!-- <tr>
	    									<td width="25%">2014/09/16 16:16:09</td>
	    									<td width="75%">"【"<a>***公司</a>"】的收件员。。。"</td>
	    								</tr> -->
	    								<c:forEach items="${ queryResult }" var="loc">
											<tr><td width="25%">${ loc.date }</td><td width="55%">${ loc.location }</td><td width="20%">${ loc.operation }</td></tr>
										</c:forEach>
									</c:if>
    							</tbody>
    						</table>
    					</li>
    				</ul>
    			</div>
    		</div>
    	</div>
    </div>
    <%@ include file="../footer.jsp" %>
   </form>
  </body>
</html>
