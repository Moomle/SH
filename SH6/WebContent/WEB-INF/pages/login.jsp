<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
  	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>登录</title>
    <link href="<%=path %>/css/common.css" rel="stylesheet" type="text/css" />
    <link href="<%=path %>/css/other_order_cs.css" rel="stylesheet" type="text/css" />
    <link href="<%=path %>/css/logon.css" rel="stylesheet" type="text/css" />
    <link href="<%=path %>/css/base.css" rel="stylesheet" type="text/css" />
    <link href="<%=path %>/css/reset_style.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="<%=path %>/js/jquery-1.8.2.js"></script>
    <script type="text/javascript" src="<%=path %>/js/common.js" ></script>
    <script type="text/javascript" src="<%=path %>/js/placeMe.js" ></script>
    <style>
    .ui-err .arrow, .ui-err .err-txt, .ui-err-line .arrow, .ui-err-line .err-txt, .ui-err-dn .arrow, .ui-err-dn .err-txt, .quyu_msg {
        background: no-repeat;
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
        position: absolute; left:60px;top:-26px; z-index:999;}
    .user-register .err-txt {
        background-position:-4px -7px;
        padding: 0 10px 0 23px;}
    .ui-err .err-txt, .ui-err-line .err-txt, .ui-err-dn .err-txt, .quyu_msg {
        background-position: -6px -8px;
        color: #6D686E;
        padding: 0 10px 0 20px;}
    </style>
    
  </head>
 
  <body>
 	<%@ include file="userTopIndex.jsp" %>
     <div id="center" class="clearfix">
          <div class="content logon-wrap clearfix login_bg _bg01">
                <!--div class="logon-sub-hd clearfix">
                    <h3 class="logon-artical">用户登录</h3>
                    <div class="fl-left zhUse">
                    <a href="http://www.kuaidihelp.com"><img alt="快递助手" src="http://img.kuaidihelp.com/www/hz/kdhelo-logo-min.png"/></a> <a href="http://www.kuaidihelp.com/app/userIndex.html"><img alt="微快递" src="http://img.kuaidihelp.com/www/hz/wkd-icon.png"/> 微快递 </a><span class="col999">账号也可在此登录</span>
                    </div>
                    
                </div-->
                <div class="logon-layout clearfix">
                    <form method="post" action="<%=path %>/login" id="form">
                    <input type="hidden" value="/order/" name="callback">
                    <div class="user-register user-login">
                        <ul>            
                            <li class="down-warn">
	                            <h3>登录</h3>
                            </li>
                            <li class="clearfix" style="margin-bottom:25px;">
                              <!-- <div class="ui-err isactive dow_" style="display:none;">
                                    <em class="arrow"></em>
                                    <span class="err-txt">该账号已注册，尚未激活</span>
                                    <a style="display:none;" class="a-active button-hover isactive" href="">立即激活</a>
                               </div> -->   
                                <div class="ui-input-item">
                                    <!--label class="userInfo" for="">用户名：</label-->
                                    <div class="input-box fl-left w315">
                                        <em class="user_bg">&nbsp;</em>
	                                    <input type="text" value="" class="ipt-size" name="telephone" id="account" autocomplete="off" placeholder="您注册时的手机号">
                                    </div>
                                    <div style="display:none;" id="acc_error" class="ui-err fl-left">
                                    <em class="arrow"></em>
                                    <span class="err-txt"></span>
                                    </div>
                                    
                                    <div class="clear"></div>
                                </div>
                                
                                
                            </li>
                            <li class="clearfix">
                                <div class="ui-input-item">
                                    <!--label class="userInfo" for="">密码：</label-->
                                    <div class="input-box fl-left w315">
                                    <em class="user_psw_bg">&nbsp;</em>
                                    <input type="password" value="" maxlength="16" class="ipt-size color999" id="showpwd" name="password" placeholder="6-16位英文或数字组成">
                                    </div>
                                    <div id="pwd_error" class="ui-err fl-left" style="display:none;">
                                        <em class="arrow"></em>
                                        <span class="err-txt"></span>
                                    </div>
                                    <div class="clear"></div>
                                </div>
                                
                            </li>
                            <li class="clearfix">
                            <label class="savePw"><input type="" value="" name="rememberme" id="rememberme" style="display:none"></label>
                            	<!-- <a style="color:#666;"  class="">忘记密码?</a> -->
                            </li>
                            <li class="login-btn">
                                <div class="button button-hover">
                                    <input id="thislogin" type="button" value="登录" class="btn padding60" />　
                                </div>
                                
                            </li>
                            
                        </ul>
                    </div>  
                    </form>  
                </div>
            </div>
            <!--登陆页面//-->
        </div>
           
<script>
var isaccount = false;
var ispwd = false;
$(function(){

	/*************用户名密码的提示**************/
	$("#account").focus(function(){
		$(this).parent().addClass('bor_');
		$(this).parent().addClass('hid-tip');
		$("#acc_error").hide();
		$(".isactive").hide();
		username = $(this).val();
		
	}).blur(function(){
		$(this).parent().removeClass('bor_');
		if($(this).val()==""){
			$(this).parent().removeClass('hid-tip');
		}
		cusername();
	});

	$("#showpwd").focus(function(){
		$(this).parent().addClass('bor_');
		$(this).parent().addClass('hid-tip');
		$("#pwd_error").hide();
		password = $(this).val();
	});
	
	$("#showpwd").blur(function(){
		$(this).parent().removeClass('bor_');
		if($(this).val()==""){
			$(this).parent().removeClass('hid-tip');
		}
		cpassword();
	});
	
	$('.point').click(function(){
		$(this).prev().focus();
	});	
	
	$("#thislogin").click(function(){
		$("#form").submit();
	});

	$("#form").submit(function() {
		cusername();
		cpassword();
		if (!isaccount || !ispwd) {
			return false;
		}
	});
	
	//验证用户名
	function cusername() {
		username = $("#account").val();
		if (username == '') {
			
			$("#acc_error").show().find(".err-txt").text("用户名不能为空");
			isaccount = false;
		} else {
			//过滤两边空格
			String.prototype.trim=function() { return this.replace(/(^\s*)|(\s*$)/g, ""); }
			username = username.trim();
			var patrn = /^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/;
			var patrn1 = /^1[3|4|5|8][0-9]\d{8}$/; 
			if (!(patrn.exec(username) || patrn1.exec(username))) {	
			
				
				$("#acc_error").show().find(".err-txt").text("请输入手机号");
				isaccount = false;
			} else {
				
				$.ajax({
					url:'<%=path %>/login?ajax',
					async:false,
					data:{telephone:username},
					type:"get",
					success:function(data){
						if (data=='0') {
							
							$("#acc_error").show().find(".err-txt").text("该用户名不存在！");
							isaccount = false;
						} else if (data == '1') {
							$("#acc_error").hide();
							isaccount = true;
							
						} else {
							$("#acc_error").hide();
							$(".isactive").show();
							isaccount = false;
						}
					}
				});
				
				<%-- $.get('<%=path %>/login?ajax',{telephone:username},function(data){
					if (data=='0') {
						
						$("#acc_error").show().find(".err-txt").text("该用户名不存在！");
						isaccount = false;
					} else if (data == '1') {
						$("#acc_error").hide();
						isaccount = true;
						
					} else {
						$("#acc_error").hide();
						$(".isactive").show();
						isaccount = false;
					
					}
				}); --%> 
			}
		}
	}

	//验证密码
	function cpassword() {
		
		$("#pwd_error").hide();
		password = $("#showpwd").val();
		if (password == '') {

		} else {
			var patrn = /^[0-9a-zA-Z]{6,16}$/;
			if (password.length < 6) {
				
				$("#pwd_error").show().find(".err-txt").text("密码小于6位");
				ispwd = false;
			} else if (!patrn.exec(password)) {
					
					$("#pwd_error").show().find(".err-txt").text("密码格式不正确");
					ispwd = false;
			} else {
				
				$("#pwd_error").hide();
				ispwd = true;
			}
		}
	}

	/********************************************/
});//加载页面时



</script>        

<div class="clear"></div>
    
    <%@ include file="footer.jsp" %>
  </body>
</html>
