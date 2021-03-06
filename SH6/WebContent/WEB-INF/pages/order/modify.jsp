 <%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
  	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>修改订单</title> 
    <link href="<%=path %>/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="<%=path %>/css/common1.css" rel="stylesheet" type="text/css" />
    <link href="<%=path %>/css/common.css" rel="stylesheet" type="text/css" />    
  	<script type="text/javascript" src="<%=path %>/js/jquery-1.8.2.js"></script>
  	<script type="text/javascript" src="<%=path %>/js/bootstrap.min.js" ></script>
  	<script type="text/javascript" src="<%=path %>/js/modify-order.js" ></script>
    <script type="text/javascript" src="<%=path %>/js/html5shiv.min.js"></script>
<%--     <script type="text/javascript" src="<%=path %>/css/bootstrap-ie7.css"></script> --%>
    <script type="text/javascript" src="<%=path %>/js/respond.min.js"></script>
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
  	</style>
  </head>
  
  <body>
    <%@ include file="../userTopIndex.jsp" %>
    <div class="main" style="height:500px">
    	<div class="main_middle_local" style="margin-left:20px;margin-top:5px">
  		</div>
    	<div class="row" style="margin-top:20px">
  			<div class="col-sm-2" style="left:55px">
  			</div>
			<div class="col-sm-9" >
  				<div class="tab-content" style="padding-left:100px;padding-top:0px;">
    				<div class="tab-pane active" id="home">
    					<sf:form modelAttribute="order" class="form-horizontal" id="form" role="form" method="post">
    						<sf:input path="id" type="hidden"/> 
    						<div class="form-group">
    							<label class="col-sm-2 control-label">
    								订单号:
    							</label>
    							<div class="col-sm-5">
    								<sf:input style="display:disabled" path="ord_num" id="ord_num_modify" class="form-control" placeholder="订单号" disabled="disabled" />
    								<sf:errors path="ord_num"></sf:errors>
    							</div>
    							<div style="display:none;" class="ui-err" id="ord_num_modify_error">
                                    <em class="arrow"></em>
                                    <span class="err-txt"></span>
                                </div>
    						</div>
    						<div class="form-group">
    							<label class="col-sm-2 control-label">
    								寄件人:
    							</label>
    							<div class="col-sm-3">
    								<sf:input  path="org_name" id="org_name_modify" class="form-control" placeholder="寄件人" />
    								<sf:errors path="org_name"></sf:errors>
    							</div>
    							<div style="display:none;" class="ui-err" id="org_name_modify_error">
                                    <em class="arrow"></em>
                                    <span class="err-txt"></span>
                                </div>
    						</div>
    						<div class="form-group">
    							<label class="col-sm-2 control-label">
    								寄件人电话:
    							</label>
    							<div class="col-sm-4">
    								<sf:input path="org_phone" id="org_phone_modify" class="form-control" placeholder="寄件人电话" />
    								<sf:errors path="org_phone"></sf:errors>
    							</div>
    							<div style="display:none;" class="ui-err" id="org_phone_modify_error">
                                    <em class="arrow"></em>
                                    <span class="err-txt"></span>
                                </div>
    						</div>
    						<div class="form-group">
    							<label class="col-sm-2 control-label">
    								寄件人地址:
    							</label>
    							<div class="col-sm-8">
    								<sf:input path="org_plc" id="org_plc_modify" class="form-control" placeholder="寄件人地址" />
    								<sf:errors path="org_plc"></sf:errors>
    							</div>
    							<div style="display:none;" class="ui-err" id="org_plc_modify_error">
                                    <em class="arrow"></em>
                                    <span class="err-txt"></span>
                                </div>
    						</div>
    						<div class="form-group">
    							<label class="col-sm-2 control-label">
    								收件人:
    							</label>
    							<div class="col-sm-3">
    								<sf:input path="dst_name" id="dst_name_modify" class="form-control" placeholder="收件人" />
    								<sf:errors path="dst_name"></sf:errors>
    							</div>
    							<div style="display:none;" class="ui-err" id="dst_name_modify_error">
                                    <em class="arrow"></em>
                                    <span class="err-txt"></span>
                                </div>
    						</div>
    						<div class="form-group">
    							<label class="col-sm-2 control-label">
    								收件人电话:
    							</label>
    							<div class="col-sm-4">
    								<sf:input path="dst_phone" id="dst_phone_modify" class="form-control" placeholder="收件人电话" />
    								<sf:errors path="dst_phone"></sf:errors>
    							</div>
    							<div style="display:none;" class="ui-err" id="dst_phone_modify_error">
                                    <em class="arrow"></em>
                                    <span class="err-txt"></span>
                                </div>
    						</div>
    						<div class="form-group">
    							<label class="col-sm-2 control-label">
    								收件人地址:
    							</label>
    							<div class="col-sm-8">
    								<sf:input path="dst_plc" id="dst_plc_modify" class="form-control" placeholder="收件人地址" />
    								<sf:errors path="dst_plc"></sf:errors>
    							</div>
    							<div style="display:none;" class="ui-err" id="dst_plc_modify_error">
                                    <em class="arrow"></em>
                                    <span class="err-txt"></span>
                                </div>
    						</div>
    						<div class="form-group">
    							<label class="col-sm-2 control-label">
    								快递员电话:
    							</label>
    							<div class="col-sm-4">
    								<sf:input path="cur_phone" id="cur_phone_modify" class="form-control"/>
    								<sf:errors path="cur_phone"></sf:errors>
    							</div>
    							<div style="display:none;" class="ui-err" id="cur_phone_modify_error">
                                    <em class="arrow"></em>
                                    <span class="err-txt"></span>
                                </div>
    						</div>
    						<div class="form-group">
    							<div class="col-sm-offset-2 col-sm-10">
     					 			<button type="button" id="submitModify" class="btn btn-default" style="background-color:#66c1f7">修改</button>
    							</div>
  							</div>
    					</sf:form>
    				</div>
  				</div>
			</div>
			<button>AjaxTestFormAndPojo</button>
	</div>
<script>
  $(function () {
    $('#myTab a:first').tab('show');
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
   $("#form").submit(function(){
   		/* $(this).ajaxSubmit();
   		return false; */
   });
</script>	
	</div>
    <%@ include file="../footer.jsp" %>
  </body>
</html>
