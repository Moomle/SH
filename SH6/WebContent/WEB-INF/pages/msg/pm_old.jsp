<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>用户中心</title> 
    <link href="<%=path %>/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="<%=path %>/css/common1.css" rel="stylesheet" type="text/css" />
    <link href="<%=path %>/css/common.css" rel="stylesheet" type="text/css" />    
  	<script type="text/javascript" src="<%=path %>/js/jquery-1.8.2.js"></script>
  	<script type="text/javascript" src="<%=path %>/js/bootstrap.min.js" ></script>
  	<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
  
  <script>
  	$(function(){
  		var curNetAddr = window.document.location.href;
  			$.ajax({
  				url:curNetAddr + "?history",
  				dataType:"json",
  				type:"get",
  				success: function(data){
  					for (var i=0; i<data.length; i++){
  						$("<tr><td><input type=" + "checkbox" + " /></td><td>"+data[i].sendId +"</td><td>" + data[i].content + "</td><td>" + data[i].sendDate + "</td></tr>").appendTo("#profile-body");
  					}
  				},
  				error: function(d){
  					alert("error");
  				}
  			});
  	})
  </script>
  	
  </head>

  
  <body>
    <div class="main" style="height:400px">
    	<div class="main_middle_local" style="margin-left:20px;margin-top:5px">
  			<a href="<%=path %>">     首页</a> >> 站内信
  		</div>
    	<div class="row" style="margin-top:20px">
  			<div class="col-sm-2" style="left:55px">
    			<ul class="nav nav-tabs" role="tablist" style="width:98px;height:42px;" id="myTab">
    				<li style="width:98px;height:42px" class="active"><a href="#home" role="tab" data-toggle="tab" >未读消息</a></li>
    				<li style="width:98px;height:42px"><a id="historyMsg" href="#profile"  role="tab" data-toggle="tab">历史消息</a></li>
    				<li style="width:98px;height:42px"><a href="#messages"  role="tab" data-toggle="tab">发送消息</a></li>
    			</ul>
  			</div>
			<div class="col-sm-9" >
  				<div class="tab-content" style="padding-left:100px;padding-top:0px;">
    				<div class="tab-pane active" id="home">
    					<div >	
 							<c:if test="${ empty u_msgs }">
								没有未读消息！
							</c:if>
							<c:if test="${ not empty u_msgs }"> 
 								<form method="post"> 
									<input type="hidden" name="read" /> 
 									<table class="table table-hover" style="border:#d9d9d9 1px solid"> 
 										<thead>
											<tr>
												<th><input type="checkbox" value="" name="" disabled></th>
												<th>收件人</th>
												<th>内容</th>
												<th>时间</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${ u_msgs }" var="msg"> 
 												<tr> 
 													<td><input type="checkbox" name="msgId" value="${ msg.id }"/></td>
 													<td data-toggle="modal" data-target="#myModal">${ msg.sendId }</td>
 													<td>${ msg.content }</td><td>${ msg.sendDate }</td> 
													<td data-toggle="modal" data-target="#myModal"></td> 
 												</tr>
 												
 												<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  										<div class="modal-dialog">
   											<div class="modal-content">
												<form>
      												<div class="modal-header">
        												<button type="button" class="close" data-dismiss="modal">
        													<span aria-hidden="true">&times;</span>
        													<span class="sr-only">Close</span>
        												</button>
        												<h4 class="modal-title" id="myModalLabel">Modal title</h4>
      												</div>
      												<div class="modal-body">
        												<div class="control-group" style="margin-top:10px">
   															<label class="control-label" for="inputName">收件人:</label>
  															<div class="controls">
     															<input type="text" id="inputName" placeholder="收件人" style="width:50%">
   															</div>
  														</div>
  														<div class="control-group">
   															<label class="control-label" for="inputName" >内容:</label>
  								  							<div class="controls" >
     															<textarea rows="3" cols="" style="width:100%"></textarea>
   															</div>
  														</div>
  														<div class="modal-footer">
        													<button type="reset" name="resetMessage" class="btn btn-default" data-dismiss="modal">取消</button>
        													<button type="submit" name="submitMessage" class="btn btn-primary" value="">提交</button>
      													</div>
													</div>
												</form>
    										</div>
  										</div>
									</div>
 												
 											</c:forEach>
										</tbody>
 										
 									</table>
 									<input type="submit" value="标记为已读" style="float:right">
								</form>	
							</c:if>
							
							
							
							<!--<form >
								<table class="table table-hover" style="border:#d9d9d9 1px solid" >
								<thead>
									<tr>
										<th><input type="checkbox" value="" name="" disabled></th>
										<th>收件人</th>
										<th>内容</th>
										<th>时间</th>
									</tr>
								</thead>
								<tbody>
									<tr >
										<td><input type="checkbox" value="" name=""></td>
										<td data-toggle="modal" data-target="#myModal">afa</td>
										<td data-toggle="modal" data-target="#myModal">123213123213</td>
										<td>12:20</td>
									</tr>
									点击站内信显示具体内容
									<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  										<div class="modal-dialog">
   											<div class="modal-content">
												<form>
      												<div class="modal-header">
        												<button type="button" class="close" data-dismiss="modal">
        													<span aria-hidden="true">&times;</span>
        													<span class="sr-only">Close</span>
        												</button>
        												<h4 class="modal-title" id="myModalLabel">Modal title</h4>
      												</div>
      												<div class="modal-body">
        												<div class="control-group" style="margin-top:10px">
   															<label class="control-label" for="inputName">收件人:</label>
  															<div class="controls">
     															<input type="text" id="inputName" placeholder="收件人" style="width:50%">
   															</div>
  														</div>
  														<div class="control-group">
   															<label class="control-label" for="inputName" >内容:</label>
  								  							<div class="controls" >
     															<textarea rows="3" cols="" style="width:100%"></textarea>
   															</div>
  														</div>
  														<div class="modal-footer">
        													<button type="reset" name="resetMessage" class="btn btn-default" data-dismiss="modal">取消</button>
        													<button type="submit" name="submitMessage" class="btn btn-primary" value="">提交</button>
      													</div>
													</div>
												</form>
    										</div>
  										</div>
									</div>
									点击站内信显示具体内容 END
									<tr>
										<td><input type="checkbox" value="" name=""></td>
										<td>afa</td>
										<td>123213123213</td>
										<td>12:20</td>
									</tr>
									<tr>
										<td><input type="checkbox" value="" name=""></td>
										<td>afa</td>
										<td>123213123213</td>
										<td>12:20</td>
									</tr>
									<tr>
										<td><input type="checkbox" value="" name=""></td>
										<td>afa</td>
										<td>123213123213</td>
										<td>12:20</td>
									</tr>
									<tr>
										<td><input type="checkbox" value="" name=""></td>
										<td>afa</td>
										<td>123213123213</td>
										<td>12:20</td>
									</tr>
								</tbody>
								</table>
								<input type="submit" value="标记为已读" style="float:right">
								
							</form> -->
							
						</div>
    				</div>
    				<div class="tab-pane" id="profile">
    					<table class="table table-hover" style="border:#d9d9d9 1px solid">
    						<thead>
    							<tr>
	    							<th><input type=" " value="" name="" disabled></th>
	    							<th>发送人</th>
	    							<th>内容</th>
	    							<th>发送时间</th>
    							</tr>
    						</thead>
    						<tbody id="profile-body">
    						
    						</tbody>
							
    					</table>
    				</div>
    				
    				<div class="tab-pane" id="messages">
						<form class="form-horizontal" action="<%=path %>/pm/send" method="post">
      						<div class="modal-header">
        						<button type="button" class="close" data-dismiss="modal">
  									<span aria-hidden="true">&times;</span>
        							<span class="sr-only">Close</span>
       							</button>
        						<h4 class="modal-title" id="myModalLabel">站内信</h4>
      						</div>
      						<div class="modal-body">
        						<div class="control-group">
        							
   									<label class="control-label" for="inputName">收件人:</label>
  									 <div class="controls">
  									 
     									<input class="fade" type="text" name="recvId" id="inputName" placeholder="收件人" style="width:50%">
   									
   									</div>
  								</div>
  								<div class="control-group">
   									<label class="control-label" for="inputName" >内容:</label>
  								  	<div class="controls" >
     									<textarea name="content" rows="3" cols="" style="width:100%"></textarea>
   									</div>
  								</div>
  								<div class="modal-footer">
        							<button type="reset" name="resetMessage" class="btn btn-default" data-dismiss="modal">取消</button>
        								<button type="submit" name="submitMessage" class="btn btn-primary" value="">提交</button>
      							</div>
							</div>
		  				</form>
    				</div>
  				</div>
			</div>
	</div>
<script>
  $(function () {
	
    $('#myTab a:first').tab('show');
  });
</script>	
	</div>
  </body>
</html>
