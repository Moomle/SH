 <%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
  	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>订单管理</title> 
    <link href="<%=path %>/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="<%=path %>/css/common1.css" rel="stylesheet" type="text/css" />
    <link href="<%=path %>/css/common.css" rel="stylesheet" type="text/css" />  
    <link rel="stylesheet" href="<%=path %>/css/tabbable.css" type="text/css" />  
  	<script type="text/javascript" src="<%=path %>/js/jquery-1.8.2.js"></script>
  	<script type="text/javascript" src="<%=path %>/js/bootstrap.min.js" ></script>
  	<script type="text/javascript" src="<%=path %>/js/verify-order.js" ></script>
    <script type="text/javascript" src="<%=path %>/js/respond.min.js"></script>
    <script type="text/javascript" src="<%=path %>/js/html5shiv.min.js"></script>
  	<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
  	<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%> 
  	<style>
  		.ctltable{
			border-collapse: collapse;
				table-layout:fixed}
		.ctltable td {
			text-overflow:ellipsis;
			overflow:hidden;
			white-space: nowrap;
			padding:2px}
		.form-group{
		height:6%;}
		.btn{
		background-color:#66c1f7}
		.err-txt{
		color:red;}
		.pp{
		color:#08c;
		text-align:center;
		font-size:15px}
  	</style>
  </head>
  
  <body>
    <%@ include file="../userTopIndex.jsp" %>
    <div class="main" style="height:500px">
    	<div class="main_middle_local" style="margin-left:20px;margin-top:5px">
  		</div>
    	<div class="row" style="margin-top:20px">
  			<div class="col-sm-2" style="left:55px">
  				<div class="tabbable tabs-left">
  					<ul class="nav nav-tabs" role="tablist"  id="myTab">
    				<li  class="active">
    					<a href="#home" role="tab" data-toggle="tab" >
    						<p class="pp">订单录入</p>
    					</a>
    				</li>
    				<li >
    					<a href="#messages" role="tab" data-toggle="tab" >
    					<p class="pp">订单修改</p>
    					</a>
    				</li>
    				<li >
    					<a href="#profile"  role="tab" data-toggle="tab">
    					<p class="pp">订单更新</p>
    					</a>
    				</li>
    				</ul>
  				</div>
    			
  			</div>
			<div class="col-sm-9" >
  				<div class="tab-content" style="padding-left:100px;padding-top:0px;">
    				<div class="tab-pane active" id="home">
    					<sf:form modelAttribute="order" id="formAdd" class="form-horizontal" role="form" method="post" action="${ pageContext.request.contextPath }/order/add">
    						<sf:input path="location" value="${ sessionScope.loginUser.location }" type="hidden" /> 
    						<div class="form-group">
    							<label class="col-sm-2 control-label">
    								订单号:
    							</label>
    							<div class="col-sm-5">
    								<sf:input path="ord_num" id="ord_num" class="form-control" placeholder="订单号" />
    								<sf:errors path="ord_num"></sf:errors>
    							</div>
    							<div style="display:none;" class="ui-err" id="ord_num_error">
                                    <em class="arrow"></em>
                                    <span class="err-txt"></span>
                                </div>
    						</div>
    						<div class="form-group">
    							<label class="col-sm-2 control-label">
    								寄件人:
    							</label>
    							<div class="col-sm-3">
    								<sf:input  path="org_name" id="org_name" class="form-control" placeholder="寄件人" />
    								<sf:errors path="org_name"></sf:errors>
    							</div>
    							<div style="display:none;" class="ui-err" id="org_name_error">
                                    <em class="arrow"></em>
                                    <span class="err-txt"></span>
                                </div>
    						</div>
    						<div class="form-group">
    							<label class="col-sm-2 control-label">
    								寄件人电话:
    							</label>
    							<div class="col-sm-4">
    								<sf:input path="org_phone" id="org_phone" class="form-control" placeholder="寄件人电话" />
    								<sf:errors path="org_phone"></sf:errors>
    							</div>
    							<div style="display:none;" class="ui-err" id="org_phone_error">
                                    <em class="arrow"></em>
                                    <span class="err-txt"></span>
                                </div>
    						</div>
    						<div class="form-group">
    							<label class="col-sm-2 control-label">
    								寄件人地址:
    							</label>
    							<div class="col-sm-8">
    								<sf:input path="org_plc" id="org_plc" class="form-control" placeholder="寄件人地址" />
    								<sf:errors path="org_plc"></sf:errors>
    							</div>
    							<div style="display:none;" class="ui-err" id="org_plc_error">
                                    <em class="arrow"></em>
                                    <span class="err-txt"></span>
                                </div>
    						</div>
    						<div class="form-group">
    							<label class="col-sm-2 control-label">
    								收件人:
    							</label>
    							<div class="col-sm-3">
    								<sf:input path="dst_name" id="dst_name" class="form-control" placeholder="收件人" />
    								<sf:errors path="dst_name"></sf:errors>
    							</div>
    							<div style="display:none;" class="ui-err" id="dst_name_error">
                                    <em class="arrow"></em>
                                    <span class="err-txt"></span>
                                </div>
    						</div>
    						<div class="form-group">
    							<label class="col-sm-2 control-label">
    								收件人电话:
    							</label>
    							<div class="col-sm-4">
    								<sf:input path="dst_phone" id="dst_phone" class="form-control" placeholder="收件人电话" />
    								<sf:errors path="dst_phone"></sf:errors>
    							</div>
    							<div style="display:none;" class="ui-err" id="dst_phone_error">
                                    <em class="arrow"></em>
                                    <span class="err-txt"></span>
                                </div>
    						</div>
    						<div class="form-group">
    							<label class="col-sm-2 control-label">
    								收件人地址:
    							</label>
    							<div class="col-sm-8">
    								<sf:input path="dst_plc" id="dst_plc" class="form-control" placeholder="收件人地址" />
    								<sf:errors path="dst_plc"></sf:errors>
    							</div>
    							<div style="display:none;" class="ui-err" id="dst_plc_error">
                                    <em class="arrow"></em>
                                    <span class="err-txt"></span>
                                </div>
    						</div>
    						<div class="form-group">
    							<label class="col-sm-2 control-label">
    								快递员电话:
    							</label>
    							<div class="col-sm-4">
    								<sf:input path="cur_phone" id="cur_phone" class="form-control"  value="${ sessionScope.loginUser.telephone }" />
    								<sf:errors path="cur_phone"></sf:errors>
    							</div>
    							<div style="display:none;" class="ui-err" id="cur_phone_error">
                                    <em class="arrow"></em>
                                    <span class="err-txt"></span>
                                </div>
    						</div>
    						<div class="form-group">
    							<div class="col-sm-offset-2 col-sm-10">
     					 			<button type="button" id="submitAdd" class="btn btn-default" >提交</button>
    							</div>
  							</div>
    					</sf:form>
    				</div>
    				<div class="tab-pane" id="profile">
    					<sf:form modelAttribute="location" id="formUpdate" class="form-horizontal" role="form" method="post" action="${ pageContext.request.contextPath }/order/update">
    						<div class="form-group">
    							<label class="col-sm-2 control-label">
    								订单号:
    							</label>
    							<div class="col-sm-3">
    								<sf:input path="ord_num" id="ord_num_up" class="form-control" placeholder="订单号" />
    								<sf:errors></sf:errors>
    							</div>
    							<div style="display:none;" class="ui-err" id="ord_num_up_error">
                                    <em class="arrow"></em>
                                    <span class="err-txt"></span>
                                </div>
    						</div>
    						<div class="form-group">
    							<label class="col-sm-2 control-label">
    								更新地点:
    							</label>
    							<div class="col-sm-8">
    								<sf:input path="location" id="plc_up" class="form-control" placeholder="地址" />
    								<sf:errors></sf:errors>
    							</div>
    							<div style="display:none;" class="ui-err" id="plc_up_error">
                                    <em class="arrow"></em>
                                    <span class="err-txt"></span>
                                </div>
    						</div>
    						<div class="form-group">
    							<label class="col-sm-2 control-label">
    								操作:
    							</label>
    							<div class="col-sm-3">
    								<sf:select path="operation" id="operation" class="form-control">
    									<option id="station1" value="已收入">已收入</option>	
  									 	<option id="station2" value="已扫描">已扫描</option>
  									 	<option id="station3" value="发往下一站">发往下一站</option>		
  									 	<option id="station4" value="正在派件">正在派件</option>		
  									 	<option id="station5" value="已签收">已签收</option>
  									</sf:select>
    							</div>

    						</div>
    						<div class="form-group">
    							<label class="col-sm-2 control-label">
    								快递员:
    							</label>
    							<div class="col-sm-4">
    								<sf:input path="cur_phone" id="cur_phone_up" class="form-control" value="${ sessionScope.loginUser.telephone }" />
    								<sf:errors></sf:errors>
    							</div>
    							<div style="display:none;" class="ui-err" id="cur_phone_up_error">
                                    <em class="arrow"></em>
                                    <span class="err-txt"></span>
                                </div>
    						</div>
    						<div class="form-group">
    							<div class="col-sm-offset-2 col-sm-10">
     					 			<input type="button" id="submitUpdate" class="btn btn-default" value="提交"/>
    							</div>
  							</div>
    					</sf:form>
    				</div>
    				
    				
    				
  					<div class="tab-pane" id="messages">
    					<form id="formSearch" class="form-horizontal" role="form" method="get" action="<%=path %>/order/modify">
    						<div class="form-group" style="margin-top:20">
    							<label class="col-sm-2 control-label">
    								订单号:
    							</label>
    							<div class="col-sm-3">
    								<input name="ord_num" id="ord_num_search" class="form-control" placeholder="订单号" >
    							</div>
    							<div style="display:none;" class="ui-err" id="ord_num_search_error">
                                    <em class="arrow"></em>
                                    <span class="err-txt"></span>
                                </div>
    						</div>
    						<div class="form-group" >
    							<div class="col-sm-offset-2 col-sm-10">
     					 			<button type="button" id="submitSearch" class="btn btn-default"  >确定</button>
    							</div>
  							</div>
    					</form>
    				</div>
  					
  				</div>
			</div>
	</div>
<script>
  $(function () {
	  
	  $("#ord_num_up").blur(function(){
		  console.log("ss");
		  cordnumExist();
	  });
	  
	  $("#submitUpdate").click(function(){
	<%-- 	  var ord_num = $("#ord_num_up").val();
		  var location =  $("#plc_up").val();
		  var operation = $("#operation").attr("value");
		  console.log("select: "+operation);
		  var curphone = $("#cur_phone_up");
		  
		  $.ajax({
			  url:"<%=path %>/order/update",
			  data:{"ord_num":ord_num, "location":location, "operation":operation,"cur_phone":curphone},
			  success:function(data){
				  alert(data);
			  }
		  }); --%>
		
		 	cordnumExist();
			cplcup();
			ccurphoneup();
			console.log(isOrdNumUp+","+isPlcUp+","+isCurPhoneUp);
			var ord_num = $("#ord_num_up").val();
		    var location =  $("#plc_up").val();
			var operation = $("#operation").attr("value");
			console.log("select: "+operation);
			var curphone = $("#cur_phone_up").val();
			if (isOrdNumUp && isPlcUp && isCurPhoneUp){
				<%-- $.ajax({
					  type:"post",
					  url:"<%=path %>/order/update",
					  data:{"ord_num":ord_num, "location":location, "operation":operation,"cur_phone":curphone},
					  success:function(data){
						  alert(data);
					  }
				  }); --%>
				  $.post("<%=path %>/order/update",{"ord_num":ord_num, "location":location, "operation":operation,"cur_phone":curphone},function(data){
					  $("#ord_num_up").attr("value","");
					  $("#plc_up").attr("value","");
					  alert(data)
				  });
			}
		  
	  });
	  
  });
  $(function(){
            $(":checkbox").click(function(){
                if($(this).attr("checked")=="checked")
                {
                    $($(this).parents("div").find("select").get(0)).attr("disabled","disabled");
                }
                else
                {
                    $($(this).parents("div").find("select").get(0)).removeAttr("disabled");
                }
            });
        });
</script>	
	</div>
    <%@ include file="../footer.jsp" %>
  </body>
</html>
