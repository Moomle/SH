<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>register</title>
    <link href="<%=path %>/css/common.css" rel="stylesheet" type="text/css" />
    <link href="<%=path %>/css/global.css" rel="stylesheet" type="text/css" />
    <link href="<%=path %>/css/reset_style.css" rel="stylesheet" type="text/css" />
    <link href="<%=path %>/css/logon.css" rel="stylesheet" type="text/css" />
    <link href="<%=path %>/css/other_order_cs.css" rel="stylesheet" type="text/css" />
    <link href="<%=path %>/css/base.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="<%=path %>/js/jquery-1.8.2.js"></script>
    <script type="text/javascript" src="<%=path %>/js/common.js" ></script>
  </head>
 
  <body>
 
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
    </style>
     <div id="center" class="clearfix">
            <div class="content logon-wrap clearfix reg-new-sty" style="margin: 20px auto;padding:30px 0;">
                <div class="logon-layout clearfix">
                    <form method="post" action="<%=path %>/signup" id="form">
                    <div class="user-register">
                        <ul>
                            <li class="down-warn">
	                            <h3>会员注册</h3>
                            </li>
                            <li style="margin-bottom:25px;">
                                <div style="display:none;" class="ui-err isactive dow_">
                                    <em class="arrow"></em>
                                    <span class="err-txt">该账号已注册，尚未激活</span>
                                    <a style="display:none;" class="a-active button-hover isactive" href="javascript:resend()">立即激活</a>
                                </div>
                                <div class="ui-input-item">
                                    <!--label class="userInfo" for="">用户名：</label-->
                                    <div class="input-box fl-left w315">
                                   		<em class="user_bg">&nbsp;</em>
                                    	<input autocomplete="off" type="text" value="" name="account" class="ipt-size color999" id="account" placeholder="输入手机号">
                                    	<div class="clear"></div>
                                	</div>
                                </div>
                                <div style="display:none;" class="use-correct" id="acc_correct">
                                    <em class="correct"></em>
                                    <!--span class="cor-txt">可使用</span-->
                                </div>
                                <div style="display:none;" class="ui-err" id="acc_error">
                                    <em class="arrow"></em>
                                    <span class="err-txt"></span>
                                </div>
                            </li>
                            <li style="margin-bottom:25px;">
                                <div class="ui-input-item">
                                    <!--label class="userInfo" for="">密码：</label-->
                                    <div class="fl-left input-box w315">
                                    <em class="user_psw_bg">&nbsp;</em>
                                    <input type="password" value="" maxlength="16" class="ipt-size color999" id="showpwd" name="password" placeholder="6-16位英文或数字组成">
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
                                    <input type="password" value="" maxlength="16" class="ipt-size color999" id="showrpw" placeholder="请再次输入密码">
                                    </div>
                                </div>
                                <div style="display:none;" class="ui-err" id="rpw_error">
                                    <em class="arrow"></em>
                                    <span class="err-txt">两次密码输入不一致</span>
                                </div>
                            </li>
                            <li class="service" style="margin-bottom:20px;">
                                <input type="checkbox" checked="checked" class="sv-checkbox" id="protocol">
                                <span>我同意<a target="_blank" href=" ">《用户协议》</a></span>
                                <span style="color:red; display:none;" class="err-txt">请选择</span>                             
                            </li>
                            <li class="login-btn" style="margin-bottom:5px;">
                                <div class="button-hover">
                                    <input type="button" value="注册" id="zhuce" class="btn padding60">　
                                </div>
                            </li>
                        </ul>
                    </div>

                    <div class="logon-right">
                        <div class="ui-login">
                            <a href="loginForm.jsp" class="login-btna">登录</a>
                            <p><span class="colddd">———</span> 已有如下帐号，请直接点击登录 <span class="colddd">———</span></p>
                        </div>
                    </div>
                    </form>
                </div>
            </div>      
        </div>       
<script language='javascript'>
var isaccount = false;
var ispwd = false;
var isagree =true;
var isrpwd = false;
$(function(){
	
	$("#account").focus(function(){
		$('#acc_correct').hide();
		$("#acc_error").hide();
		$(".isactive").hide();
		username = $('#account').val();
		
	}).blur(function(){
		cusername();
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
	
	$("#zhuce").click(function () {
		cusername();
		cpassword();
		rpw();
		$("#form").submit();
		if (!isagree) {
			$(".service .err-txt").show();
		}
		
		
		if (isaccount && ispwd && isagree && isrpwd) {
			
			username = $("#account").val();
			//var patrn1 = /^(.*)@(.*)$/;
			
			
			
			
			
		}
		//return;
		
	});
	
});//加载页面时


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
	
	
	//验证用户名
	function cusername() {
		username = $("#account").val();
		if (username == '') {
			
			$("#account").parent().addClass("bor_");
			$("#acc_error").show().find(".err-txt").text("用户名不能为空");
			isaccount = false;
		} else {
			var patrn = /^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/;
			var patrn1 = /^1[3|4|5|8][0-9]\d{8}$/; 
			if (!( patrn1.exec(username))) {
				$("#account").parent().addClass("bor_");
				$("#acc_error").show().find(".err-txt").text("手机格式不正确");
				isaccount = false;
			} else {
				/* $.get('/reg/accountexist',{account:username},function(data){
					
					if (data=='0') {
						
						$("#acc_error").hide();
						$("#acc_correct").show();
						isaccount = true;
					} else if (data == '1') {
						$("#acc_correct").hide();
						$("#account").addClass("focusin");
						$("#acc_error").hide();
						$(".isactive").show();
						isaccount = false;
					} else {
						$("#acc_correct").hide();
						$("#account").parent().addClass("bor_");
						$("#acc_error").show().find(".err-txt").text("已被使用！");
						isaccount = false;
					}
				}); */
			}
		}
	}
	
	//验证密码
	function cpassword() {
		
		$("#pwd_error").hide();
		password = $("#showpwd").val();
		if (password == '') {
			$("#showpwd").show();
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
	



</script>
<style>
   /**意见反馈等右侧浮动按钮**/
.Feedback {top:320px;position: fixed;right: 15px;width:65px !important;z-index:2;}
    .Feedback .clear{height:1px;}
.Feedback h4{color: #333333;font-size: 14px;line-height:20px;margin:0 0 10px 15px;}
.Feedback .dh-back{background: #FFFFFF;border-top: 1px solid #44AADD;bottom: 25px;left: 4px;padding-top: 10px;position: absolute;width: 362px;}
.Feedback .btn-model{background: url("http://img.kuaidihelp.com/www/hz/ui-bg-2.png") no-repeat 18px -152px;clear: both;float: right;height:30px;padding-bottom:6px;width:65px;}
.Feedback .btn-model a{line-height:30px;text-indent:20px;cursor: pointer;display:block;width:63px;height:30px; text-align:center;border:1px solid #e5e5e5;color: #666666;background:url("http://img.kuaidihelp.com/www/hz/ui-bg-2.png") no-repeat #FFFFFF;}
.Feedback .btn-model a:hover{color:#ff983e;}
.Feedback .Collect a{background-position: 5px -3px}
.Feedback .Service a{background-position: 5px -41px}
.Feedback .OpenBtn a{background-position: 5px -80px}
.Feedback .Share a{background-position: 5px -119px}
.Feedback .MessageBox {background: url("http://img.kuaidihelp.com/www/images/MessageBg.png") no-repeat -7px center;clear: both;display: none;float: right;height: 300px;margin-bottom: 6px;padding:20px 4px; position: absolute;right: -3px;top: -291px;width: 362px;}
.Feedback .MessageBox .CloseBtn {background: url("http://img.kuaidihelp.com/www/images/icon_set.png") no-repeat -73px -464px;cursor: pointer;display: block;height: 23px;position: absolute;right: -9px;
    top: -6px;width: 23px;}
.Feedback .MessageBox .text-box {position:relative;background:#FFFFFF;border: 1px solid #DDDDDD;margin:0 auto 10px auto;width:335px;}
.Feedback .MessageBox .search-input {color: #999999;font-size: 12px;height:38px;outline: medium none;resize: none;width: 315px;position:absolute; left:10px; top:10px;overflow-y: hidden;}
.Feedback .MessageBox input {color: #999999;font-size: 12px;height: 18px;line-height: 18px;width: 210px;position:absolute; left:10px; top:8px;}
.Feedback .MessageBox .submitBtn {position:static;margin:0 auto;background:#ff942b;color: #FFFFFF;cursor: pointer;float: right;font-size: 13px;height: 35px;line-height: 33px;width:100px;border: 1px solid #ff942b;display: block;}
.Feedback .MessageBox #message {color: #F1A32C;padding-left: 10px;}
.Feedback .MessageBox .text-box.bor_{ border:1px solid #FF942B}
.Feedback .MessageBox .text-box.bor_ textarea, .Feedback .MessageBox .text-box.bor_ input{ color:#333;}
.point {color: #999999;left: 10px;line-height: 18px;position: absolute;top:8px;}
.hid-tip .point{ display:none;}
.wz_service{ background: url("http://img.kuaidihelp.com/www/hz/icon-min.png") no-repeat 3px -67px;border: 1px solid #DDDDDD;border-radius: 3px;line-height: 30px;margin-left: 10px;padding: 2px 5px 2px 26px; color:#666;}
#shareBox.bdsharebuttonbox{width:227px;height:35px;padding-left:5px;position: absolute;right: 0; bottom: -39px; background: #FFF;border: 1px solid #DDD;border-radius: 3px;}
#shareBox.bdsharebuttonbox a, .bdshare-button-style1-24 .bds_more{float: right;margin:6px 12px 6px 0px;}
#shareBox.bdsharebuttonbox .bds_more {float: left;}
</style>
<div class="clear"></div>
    
</body>
</html>
