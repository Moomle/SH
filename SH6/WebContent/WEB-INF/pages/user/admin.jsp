<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
  	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>用户管理</title>
    <link href="<%=path %>/css/global.css" rel="stylesheet" type="text/css" />
    <link href="<%=path %>/css/reset_style.css" rel="stylesheet" type="text/css" />
    <link href="<%=path %>/css/logon.css" rel="stylesheet" type="text/css" />
    <link href="<%=path %>/css/other_order_cs.css" rel="stylesheet" type="text/css" />
    <link href="<%=path %>/css/base.css" rel="stylesheet" type="text/css" />
    <link href="<%=path %>/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="<%=path %>/css/common1.css" rel="stylesheet" type="text/css" />
    <link href="<%=path %>/css/common.css" rel="stylesheet" type="text/css" />
    <link href="<%=path %>/css/pagination.css" rel="stylesheet" type="text/css" />  
    <link href="<%=path %>/css/tabbable.css" rel="stylesheet" type="text/css" />  
  	<script type="text/javascript" src="<%=path %>/js/jquery-1.8.2.js"></script>
  	<script type="text/javascript" src="<%=path %>/js/bootstrap.min.js" ></script>
    <script type="text/javascript" src="<%=path %>/js/common.js" ></script>
    <script type="text/javascript" src="<%=path %>/js/jquery.pagination.js" ></script>
    <script type="text/javascript" src="<%=path %>/js/placeMe.js" ></script>
    <script type="text/javascript" src="<%=path %>/js/html5shiv.min.js"></script>
    <%-- <script type="text/javascript" src="<%=path %>/css/bootstrap-ie7.css"></script> --%>
    <script type="text/javascript" src="<%=path %>/js/respond.min.js"></script>
  	<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
  	<style>
	.user-register .ui-err{height:40px;line-height:40px;}
    .ui-err .arrow, .ui-err .err-txt, .ui-err-line .arrow, .ui-err-line .err-txt, .ui-err-dn .arrow, .ui-err-dn .err-txt, .quyu_msg {
        background:  no-repeat;
        overflow: hidden;}
   .user-register .ui-err .arrow {
        background-position:left -37px;
        height: 8px;
        left:11px;
        position: absolute;
        top:22px;
        width:8px;}
    .ui-err, .ui-err-line, .ui-err-dn {
        background:#FFFAEC;
        border: 1px solid #F3D8BD;
        height:25px !important;
        line-height:25px !important;
        position: absolute; left:60px;top:-26px; z-index:999; margin-left:0;}
    .user-register .err-txt {
        background-position:-4px -7px;
        padding: 0 10px 0 23px;}
    .ui-err .err-txt, .ui-err-line .err-txt, .ui-err-dn .err-txt, .quyu_msg {
        background-position: -6px -8px;
        color: #6D686E;
        padding: 0 10px 0 20px;}
	.service .sv-checkbox{margin:0 10px 0 0px;}
	.user-register li div{
	height:42px}
	.pp{
		color:#08c;
		text-align:center;
		font-size:15px}
    </style>
    <script>
	var fullPath = location.href;
	var cPhone = fullPath.split("/")[5];
	$(document).ready(function(){
		var telephone = 0;
		$("body").on("click", ".update", function(){
			//var ele = $(this).parents("tr");
			var telephone = $(this).parent().parent().attr("id");
			postUpdate(telephone);
			showUserLists();
			function postUpdate(telephone){
					var name = $("#"+telephone+" [name='name']");
					var location = $("#"+telephone+" [name='location']");
					var password =  $("#"+telephone+" [name='password']");
					var isAdmin =  $("#"+telephone+" select");
					data = {"telephone":telephone,"name":name.val(), "location":location.val(), "password":password.val(), "isAdmin":isAdmin.attr("value")}
					$.post("<%=path %>/user/"+cPhone+"/update?ajax=", data, function(data){
						alert("success");
						$("#userMng").click();
					});
					
				}
		});
		
		$("body").on("click", ".delete", function(){
			var telephone = $(this).parent().parent().attr("id");
			deleteUser(telephone);
			showUserLists();
			function deleteUser(telephone){
				$.ajax({
					url: "<%=path %>/user/"+cPhone+"/delete?ajax",
					data: {"telephone":telephone},
					success: function(data){
						alert("success");
						$("#userMng").click();
					},
					error:function(data){
						alert("failed");
					}					
				});
			}
		});
	
		$("#userMng1").click(function(){
			showUserLists();
		});
		
		function showUserLists(){
			$.get("${ pageContext.request.contextPath }/user/users", function(data){
				$("#tbody").empty();
				for(var i=0; i<data.length; i++){
					$("#tbody").append("<tr id='"+data[i].telephone+"'><td>"
							+data[i].telephone+"</td><td><input id='"+data[i].telephone+"' name='name' type='text' value='"
							+data[i].name+"' /></td><td><input id='"+data[i].telephone+"' name='location' type='text' value='"
							+data[i].location+"' /></td><td><input id='"+data[i].telephone+"' name='password' type='text' value='' placeholder="
							+data[i].password+" /></td><td><input id='"+data[i].telephone+"' name='isAdmin' type='text' value='"+
							+data[i].isAdmin+
							"' /><td><input  class='update' type='button' value='更新' />/<input class='delete' type='button' value='删除' /></td></tr>");
				}
			});
		}
		
		//分页 显示用户列表
			$("#userMng").click(function(){
  			
  			var curPageNum;
  	  		InitTable(1);
  	  		
  	  		console.log("after init(1) totalCount:"+totalCount);
  	  		
  	  		$("#Pagination").pagination(totalCount, {  
  	  	        callback: PageCallback,  
  	  	        prev_text: '上一页',  
  	  	        next_text: '下一页',  
  	  	        items_per_page: 8,  
  	  	        num_display_entries: 6,//连续分页主体部分分页条目数  
  	  	        current_page: curPageNum,//当前页索引  
  	  	        num_edge_entries: 0,//两侧首尾分页条目数
  	  	        
  	  	    });  
  	  		
  	  		 function PageCallback(index, jq) {             
  	  	         InitTable(index);  
  	  	     } 
  	  		 
  	  		 function InitTable(pageIndex) {   
  	  			 console.log("init pageIndex:"+pageIndex)
  	  	         $.ajax({   
  	  	             type: "get",
  	  	             async:false,
  	  	             url: "${ pageContext.request.contextPath }/user/users",  
  	  	             data: {"curPageNum":pageIndex, "ajax":""},  
  	  	             success: function(data) {
  	  	                 //$("#Result tr:gt(0)").remove();//移除Id为Result的表格里的行，从第二行开始（这里根据页面布局不同页变）  
  	  	                 //$("#Result").append(data);//将返回的数据追加到表格
  	  	                 
  	  	                 curPageNum = data.curPageNum;
  	  	                 console.log("curPageNum:"+curPageNum);
  	  	                 totalCount = data.totalCount;
  	  	                 console.log("totalCount:"+totalCount);
  	  	                 if (data.length == 0){
  	  							$("#profile-body").append("没有已读消息");
  	  					 } else {
  	  						$("#tbody").empty();
  	  						
  	  						function opselect(isAdmin, telephone){
  	  							return isAdmin == 1 ? "<select id='"+telephone+"' name='isAdmin' value='" + isAdmin + "'><option value='1' selected>管理员</option><option value='0'>非管理员</option></select>" :
  	  								"<select id='"+telephone+"' name='isAdmin' value='" + isAdmin + "'><option value='1'>管理员</option><option value='0' selected>非管理员</option></select>";
  	  						}
  	  						
  	  						for(var i=0; i<data.data.length; i++){
  	  							$("#tbody").append("<tr id='"+data.data[i].telephone+"'><td style='width:100'>"
  	  								+data.data[i].telephone+"</td><td style='width:100'><input id='"+data.data[i].telephone+"' name='name' type='text' value='"
  	  								+data.data[i].name+"' /></td><td style='width:100'><input id='"+data.data[i].telephone+"' name='location' type='text' value='"
  	  								+data.data[i].location+"' /></td style='width:100'><td><input id='"+data.data[i].telephone+"' name='password' type='password' value='"+data.data[i].password+"' data="
  	  								+data.data[i].password+" /></td style='width:100'><td>"+opselect(data.data[i].isAdmin, data.data[i].telephone)+"<td><input  class='update' type='button' value='更新' />/<input class='delete' type='button' value='删除' /></td></tr>");
  	  							}
  	  							//备份
  	  							/* $("#tbody").append("<tr id='"+data.data[i].telephone+"'><td style='width:100'>"
	  								+data.data[i].telephone+"</td><td style='width:100'><input id='"+data.data[i].telephone+"' name='name' type='text' value='"
	  								+data.data[i].name+"' /></td><td style='width:100'><input id='"+data.data[i].telephone+"' name='location' type='text' value='"
	  								+data.data[i].location+"' /></td style='width:100'><td><input id='"+data.data[i].telephone+"' name='password' type='password' value='"+data.data[i].password+"' data="
	  								+data.data[i].password+" /></td style='width:100'><td><input id='"+data.data[i].telephone+"' name='isAdmin' type='text' value='"+
	  								+data.data[i].isAdmin+
	  								"' /><td><input  class='update' type='button' value='更新' />/<input class='delete' type='button' value='删除' /></td></tr>");
	  							} */
  	  					}
  	  	                 
  	  	             },
  	  	             error:function(data){
  	  	            	 alert("error");
  	  	             }
  	  	         });
  	  			 console.log("ajax performed");
  	  	     }  
  			
  		});
		
	});
	
</script>
  </head>
  
  <body>
    <%@ include file="../userTopIndex.jsp" %>
    <div class="main" style="height:500px">
    	<div class="row" style="margin-top:20px">
  			<div class="col-sm-2" style="left:55px">
  				<div class="tabbable tabs-left">
  					<ul class="nav nav-tabs" role="tablist"  id="myTab">
	    				<li  class="active">
	    					<a href="#home" role="tab" data-toggle="tab" >
	    						<p class="pp">注册会员</p>
	    					</a>
	    				</li>
	    				<li id="userMng" >
	    					<a href="#profile"  role="tab" data-toggle="tab">
	    						<p class="pp">用户管理</p>
	    					</a>
	    				</li>
    				</ul>
  				</div>
    			
  			</div>
			<div class="col-sm-10" style="width:800px;left:20px">
  				<div class="tab-content" style="padding-top:0px;">
    				<div class="tab-pane active" id="home">
    					<form method="post" action="" id="form">
		                    <div class="user-register">
		                        <ul>
		                            <li style="margin-bottom:25px;">
		                                <div class="ui-input-item">
		                                    <!--label class="userInfo" for="">用户名：</label-->
		                                    <div class="input-box fl-left w315">
		                                   		<em class="user_bg">&nbsp;</em>
		                                    	<input autocomplete="off" type="text" value="" name="telephone" style="left:50px" id="phoneNum" placeholder="输入手机号">
		                                    	<div class="clear"></div>
		                                	</div>
		                                </div>
		                                <div style="display:none;" class="use-correct" id="phone_correct">
		                                    <em class="correct"></em>
		                                    <!--span class="cor-txt">可使用</span-->
		                                </div>
		                                <div style="display:none;" class="ui-err" id="phone_error">
		                                    <em class="arrow"></em>
		                                    <span class="err-txt"></span>
		                                </div>
		                            </li>
		                            
		                            <li style="margin-bottom:25px;">
		                                <div class="ui-input-item">
		                                    <div class="fl-left input-box w315">
		                                    <em class="user_bg">&nbsp;</em>
		                                    <input autocomplete="off" type="text" value="" name="name" style="left:50px" id="showname" placeholder="输入姓名">
		                                    </div>
		                                </div>
		                                <div style="display:none;" class="ui-err" id="name_error">
		                                    <em class="arrow"></em>
		                                    <span class="err-txt"></span>
		                                </div>
		                            </li>
		                            
		                            <li style="margin-bottom:25px;">
		                                <div class="ui-input-item">
		                                    <div class="fl-left input-box w315">
		                                    <em class="user_psw_bg">&nbsp;</em>
		                                    <input type="password" value="" maxlength="16" style="left:50px" id="showpwd" name="password" placeholder="6-16位英文或数字组成">
		                                    </div>
		                                </div>
		                                <div style="display:none;" class="ui-err" id="pwd_error">
		                                    <em class="arrow"></em>
		                                    <span class="err-txt"></span>
		                                </div>
		                            </li>
		                            <li style="margin-bottom:10px;">
		                                <div class="ui-input-item">
		                                    
		                                    <!--label class="userInfo" for="">确认密码：</label-->
		                                    <div class="input-box fl-left w315">
		                                    <em class="user_psw_bg">&nbsp;</em>
		                                    <input type="password" value="" maxlength="16" style="left:50px" id="showrpw" placeholder="请再次输入密码">
		                                    </div>
		                                </div>
		                                <div style="display:none;" class="ui-err" id="rpw_error">
		                                    <em class="arrow"></em>
		                                    <span class="err-txt">两次密码输入不一致</span>
		                                </div>
		                            </li>
		                             <li style="margin-bottom:25px;">
		                                <div class="ui-input-item">
		                                    <div class="fl-left input-box w315">
		                                    <em class="user_bg">&nbsp;</em>
		                                    <input autocomplete="off" type="text" value="" name="location" style="left:50px" id="showaddress" placeholder="输入地址">
		                                    </div>
		                                </div>
		                                <div style="display:none;" class="ui-err" id="address_error">
		                                    <em class="arrow"></em>
		                                    <span class="err-txt"></span>
		                                </div>
		                            </li>
		                            <li style="margin-bottom:25px;">
		                                <!-- <div class="ui-input-item">
		                                    <div class="fl-left input-box w315">
		                                    <em class="user_bg">&nbsp;</em>
		                                   	<input autocomplete="off" type="text" value="0" name="isAdmin" style="left:50px" id="isAdmin" placeholder="是否为管理员">		                                   	
		                                    </div>
		                                </div> -->
		                                <div class="ui-input-item">
		                                	<div class="fl-left input-box w315">
		                                		<em class="user_bg">&nbsp;</em>
		                                		<select name="isAdmin" style="margin-left:40px;width:273px;height:100%" id="isAdmin" class="form-control">
			                                   		<option value="0">非管理员</option>
			                                   		<option value="1">管理员</option>
		                                   		</select>
		                                	</div>
		                                	
		                                </div>
		                                <div style="display:none;" class="ui-err" id="address_error">
		                                    <em class="arrow"></em>
		                                    <span class="err-txt"></span>
		                                </div>
		                            </li>
		                            <li class="login-btn" style="margin-bottom:5px;">
		                                <div class="button-hover">
		                                    <input type="button" value="注册" id="zhuce" class="btn padding60" style="width:315px">　
		                                </div>
		                            </li>
		                        </ul>
		                    </div>
                    	</form>
    				</div>
    				<div class="tab-pane" id="profile">
    					<div class="tab-content">
    					<table class="table table-hover table-striped" style="border:#d9d9d9 1px solid">
							<thead>
								<tr>
									<th>手机号码</th>
									<th >用户姓名</th>
									<th >所在站点</th>
									<th >用户密码</th>
									<th >管理员</th>
									<th >操作</th>
								</tr>
							</thead>
				
				<tbody id="tbody">
					<%-- <c:forEach items="users" var="u">
						<tr>
							<td> ${ u.telephone } </td>
							<td> ${ u.name } </td>
							<td> ${ u.location } </td>
							<td> ${ u.password } </td>
						</tr>
					</c:forEach> --%>
				</tbody>
			</table>
			<div id="Pagination" class="pagination">
			
			</div>
    		</div>
    	</div>
    	</div>
  		</div>
		</div>
	</div>
<script>
  $(function () {
    $('#myTab a:first').tab('show');
  });
</script>
 <script language='javascript'>
var isuserName = false;
var isphoneNum = false;
var isAddress = false;
var ispwd = false;
var isagree =true;
var isrpwd = false;
var usertell = null;
$(function(){
	
	$("#phoneNum").focus(function(){
		$('#phone_correct').hide();
		$("#phone_error").hide();
		$(".isactive").hide();
		usertell = $('#phoneNum').val();
		
	}).blur(function(){
		cuserphone();
	});
	

	
	$("#showpwd").focus(function(){
		$(this).parent().addClass('hid-tip');
		$("#pwd_error").hide();
	});
	
	$("#showrpw").focus(function(){
		$(this).parent().addClass('hid-tip');
		$("#rpw_error").hide();
	});

	
	$("#showpwd").blur(function(){
		
		cpassword();
	});
		$("#showname").focus(function(){
		$(this).parent().addClass('hid-tip');
		$("#name_error").hide();
		username = $('#showname').val();
		
	});
	$("#showname").blur(function(){
	
		cusername();
	});
	$("#showaddress").focus(function(){
		$(this).parent().addClass('hid-tip');
		$("#address_error").hide();
		useraddress = $('#showaddress').val();
		
	});
	$("#showaddress").blur(function(){
	
		cuseraddress();
	});

	
	$("#showrpw").blur(function(){
		
		rpw();
	});
	
	$("#protocol").click(function(){
		if ($(this).attr("checked") == 'checked'){
			$(".service .err-txt").hide();
			isagree = true;
		} else {
			isagree = false;
		}
	});
	
});//加载页面时

/* function resend(){
	var phoneNum = $("#phoneNum").val();
	location.href='/reg/forgetpsw2?usertell='+phoneNum;
}
 */
	function rpw() {
		var rpw_val = $("#showrpw").val();
		var npw_val = $("#showpwd").val();
		
		if (rpw_val==''){			
			$("#showpwd").show();
		}else {
			if (rpw_val != npw_val){
				$("#showrpw").parent().addClass("bor_");
				$("#rpw_error").show().find(".err-txt").text("密码前后不一致");
				isrpwd = false;
			} else {
				$("#rpw_error").hide();
				isrpwd = true;
			}
		}
		
	}
	
	//验证手机号
	function cuserphone() {
		usertell = $("#phoneNum").val();
		if (usertell == '') {
			
			$("#phoneNum").parent().addClass("bor_");
			$("#phone_error").show().find(".err-txt").text("手机号不能为空");
			isphoneNum = false;
		} else {
			var patrn = /^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/;
			var patrn1 = /^1[3|4|5|8][0-9]\d{8}$/; 
			if (!( patrn1.exec(usertell))) {
				$("#phoneNum").parent().addClass("bor_");
				$("#phone_error").show().find(".err-txt").text("手机格式不正确");
				isphoneNum = false;
			} else {
				$.get('<%=path %>/signup/phoneNumexist',{telephone:usertell},function(data){
					
					if (data==1) {
						$("#phone_error").hide();
						$("#phone_correct").show();
						isphoneNum = true;
					} else if (data == 0) {
						$("#phone_correct").hide();
						$("#phoneNum").parent().addClass("bor_");
						$("#phone_error").show().find(".err-txt").text("已被使用！");
						isphoneNum = false;
					} else {
						alert("unkonwn error");
						isphoneNum = false;
					}
				});
			}
		}
	}
	
		//验证用户名
	function cusername() {
		
		$("#name_error").hide();
		username = $("#showname").val();
		if (username == '') {
			$("#showname").show();
			$("#name_error").show().find(".err-txt").text("姓名不能为空");
			isuserName = false;
		} 
		else {
				$("#name_error").hide();
				isuserName = true;
			}
	}
	
	//验证地址
	function cuseraddress() {
		
		$("#address_error").hide();
		useraddress = $("#showaddress").val();
		if (useraddress == '') {
			$("#showaddress").show();
			$("#address_error").show().find(".err-txt").text("地址不能为空");
			isAddress = false;
		} 
		else {
				$("#address_error").hide();
				isAddress = true;
			}
	}
	//验证密码
	function cpassword() {
		
		$("#pwd_error").hide();
		password = $("#showpwd").val();
		if (password == '') {
			$("#showpwd").show();
			$("#pwd_error").show().find(".err-txt").text("密码不能为空");
		} else {
			var patrn = /^[0-9a-zA-Z]{6,16}$/;
			if (password.length < 6) {
				$("#showpwd").parent().addClass("bor_");
				$("#pwd_error").show().find(".err-txt").text("密码小于6位");
				ispwd = false;
			} else if (!patrn.exec(password)) {
					$("#showpwd").parent().addClass("bor_");
					$("#pwd_error").show().find(".err-txt").text("密码格式不正确");
					ispwd = false;
			} else {
				$("#pwd_error").hide();
				ispwd = true;
			}
		}
	}
	//验证地址
	
/* 	
	$("#form").submit(function(){
		cuserphone();
		cusername();
		cpassword();
		rpw();
		cuseraddress()
		if (!isagree) {
			$(".service .err-txt").show();
		}
		if (!isphoneNum || !isuserName || !ispwd || !isAddress || !isagree || !isrpwd) {
			return false;
		}
	}); */
	
	$("#zhuce").click(function () {
		cuserphone();
		cusername();
		cpassword();
		rpw();
		cuseraddress()
		if (!isagree) {
			$(".service .err-txt").show();
		}
		
		
		if (isphoneNum && isuserName && ispwd && isAddress && isagree && isrpwd) {
			
			usertell = $("#phoneNum").val();
			//$("#form").submit();	
			//var data = $("#form").serializeArray();
			var data = $("#form").serialize();
			
			$.post("<%=path %>/signup?ajax",data, function(data){
				location.reload()
				alert(data);
			});
			
		}
		//return;
		
	});


</script>
<div id="console">
</div>
    <%@ include file="../footer.jsp" %>
  </body>
</html>
