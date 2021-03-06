<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
  	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>站内信</title> 
    <link href="<%=path %>/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="<%=path %>/css/common1.css" rel="stylesheet" type="text/css" />   
    <link href="<%=path %>/css/common.css" rel="stylesheet" type="text/css" /> 
    <link rel="stylesheet" href="<%=path %>/css/pagination.css" type="text/css" />
    <link rel="stylesheet" href="<%=path %>/css/tabbable.css" type="text/css" />
  	<script type="text/javascript" src="<%=path %>/js/jquery-1.8.2.js"></script>
  	<script type="text/javascript" src="<%=path %>/js/bootstrap.min.js" ></script>
  	<script type="text/javascript" src="<%=path %>/js/jquery.pagination.js" ></script>
  	<script type="text/javascript" src="<%=path %>/js/verify-system.js" ></script>
    <script type="text/javascript" src="<%=path %>/js/html5shiv.min.js"></script>
<%--     <script type="text/javascript" src="<%=path %>/css/bootstrap-ie7.css"></script> --%>
    <script type="text/javascript" src="<%=path %>/js/respond.min.js"></script>
  	<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
  	<style>
  		.ctltable{
			border-collapse: collapse;
				table-layout:fixed}
		.ctltable td {
			text-overflow:ellipsis;
			overflow:hidden;
			white-space: nowrap;
			padding:2px}
			.err-txt{
			color:red;}
		.tt{
		float:right;
		background-color:#66c1f7;
		color:#fff}
		.pp{
		color:#08c;
		text-align:center;
		font-size:15px}
		
		
  	</style>
  	<script>
  	$(function(){
  		
  		
  		
  		$("body").on("click",".msg-content",function(){
  			var msgshowmodal = $(this).parent();
  			var tds = msgshowmodal.children();
  			var msgid = tds.eq(0).children().attr("value");
  			tds.eq(0).children().attr("checked","checked");
  			var postPhone = tds.eq(1).text();
  			var content = tds.eq(2).text();
  			var sentDate = tds.eq(3).text();
  			$(".modal-msg-sentPhone").empty().text(postPhone);
  			$(".modal-msg-content").empty().text(content);
  			$(".modal-msg-sentDate").empty().text(sentDate);
  			$(this).attr("data-toggle","modal");
  			$(this).attr("data-target","#myModal");
  			$("#modal-msg-subread").click(function(){
  				/* $.get(location.href+"/read?ajax", {id:msgid}, function(data){
  					if (data !="success")
  						alert(data);
  				});
  				tabunread(); */
  				$("#tagRead").click();
  			});
  		});
  		
  		$("body").on("click",".hmsgcnt",function(){
  			var msgshowmodal = $(this).parent();
  			var tds = msgshowmodal.children();
  			var msgid = tds.eq(0).children().attr("value");
  			var postPhone = tds.eq(1).text();
  			var content = tds.eq(2).text();
  			var sentDate = tds.eq(3).text();
  			$(".modal-msg-sentPhone").empty().text(postPhone);
  			$(".modal-msg-content").empty().text(content);
  			$(".modal-msg-sentDate").empty().text(sentDate);
  			$(this).attr("data-toggle","modal");
  			$(this).attr("data-target","#hisModal");
  		});
  		
  		
  		function getHistoryPage(){
  			
  			var curNetAddr = window.document.location.href;
  			var curPageNum = 1;
  			
  			$.ajax({
  				url:curNetAddr + "?history&curPageNum="+curPageNum,
  				dataType:"json",
  				type:"get",
  				success: function(data){
  					
  					if (data.length == 0){
  						$("#profile-body").append("没有历史消息");
  					} else {
  						$("#profile-body").empty();
  						for (var i=0; i<data.length; i++){
  							$("#profile-body").append("<tr id='"+data[i].postPhone+"' data='"+data[i].id+"'><td>"+data[i].postPhone +"</td><td class='hmsgcnt'>" + data[i].content + "</td><td>" + data[i].sentDate + "</td></tr>");
  						}
  						
  						
  					}
  				},
  				error: function(d){
  					alert("failed");
  				}
  			});
  		}
  			
  		//点击历史消息tab带分页
  		function initHisPager(){
  	  	 	$.ajax({   
	             type: "get",    
	             url: location.href,  
	             data: {"curPageNum":0, "history":""},  
	             //async:false,
	             
	             success: function(data) {
	                 curPageNum = data.curPageNum;
	                 console.log("init curPageNum:"+curPageNum);
	                 totalCount = data.totalCount;
	                 console.log("init totalCount:"+totalCount);
	                 pageSize = data.pageSize;
	                 console.log("init pageSize:"+pageSize);
	                 if (data == null){
							$("#profile-body").empty().append("没有历史消息");
					 } else {
						$("#profile-body").empty();
						$("#profile-body").append("<tr id='"+data.data[i].postPhone+"' data='"+data.data[i].id+"'><td><input type='checkbox' name='msgId' value='"+
									data.data[i].id+"' /></td><td>"+
									data.data[i].postPhone +"</td><td class='hmsgcnt'>" + data.data[i].content + "</td><td>" +
									new Date(data.data[i].sentDate).toLocaleString() + "</td></tr>");
					}
	                 
	             },
	             error:function(data){
	            	 alert("error");
	             }
	         });
  		}
  		
  		initHisPager();
  		
  		$("#tabhistory").click(function(){
  			var curPageNum;
  			
  	  		initHisPager();
  	  		
  	  	 	console.log("init ajax performed, totalCount = "+totalCount);
  	  	 	
  	  		$("#Pagination").pagination(totalCount, {  
  	  	        callback: PageCallback,  
  	  	        prev_text: '上一页',  
  	  	        next_text: '下一页',  
  	  	        items_per_page: pageSize,  
  	  	        num_display_entries: pageSize,//连续分页主体部分分页条目数  
  	  	        current_page: curPageNum,//当前页索引  
  	  	        num_edge_entries: 1,//两侧首尾分页条目数
  	  	        
  	  	    });  
  	  		
  	  		 function PageCallback(index, jq) {
  	  			InitTable(index);  
  	  	     } 
  	  		 
  	  		 function InitTable(pageIndex) {   
  	  			 console.log("init pageIndex:"+pageIndex)
  	  	         $.ajax({   
  	  	             type: "get",    
  	  	             url: location.href,  
  	  	             data: {"curPageNum":pageIndex, "history":""},  
  	  	             success: function(data) {
  	  	                 //$("#Result tr:gt(0)").remove();//移除Id为Result的表格里的行，从第二行开始（这里根据页面布局不同页变）  
  	  	                 //$("#Result").append(data);//将返回的数据追加到表格
  	  	                 
  	  	                 curPageNum = data.curPageNum;
  	  	                 console.log("curPageNum:"+curPageNum);
  	  	                 totalCount = data.totalCount;
  	  	                 console.log("totalCount:"+totalCount);
  	  	                 if (data == null){
  	  							$("#profile-body").empty().append("没有历史消息");
  	  					 } else {
  	  						$("#profile-body").empty();
  	  						for (var i=0; i<data.data.length; i++){
  	  							$("#profile-body").append("<tr id='"+data.data[i].postPhone+"' data='"+data.data[i].id+"'><td><input type='checkbox' name='msgId' value='"+
  	  									data.data[i].id+"' /></td><td>"+
  	  									data.data[i].postPhone +"</td><td class='hmsgcnt' style='cursor:pointer'>" + data.data[i].content + "</td><td>" +
  	  									new Date(data.data[i].sentDate).toLocaleString() + "</td></tr>");
  	  						}
  	  					}
  	  	                 
  	  	             },
  	  	             error:function(data){
  	  	            	 alert("error");
  	  	             }
  	  	         });
  	  			 console.log("ajax performed");
  	  	     }  
  			
  		});
  		
  		
  		//点击发送消息tab
  		$("#tabsend").click(function(){
  			var receivers = [];
  			$.get("<%=path %>/msg/messangers",null,function(data){
  				if(data != null){
  					$("#recv_names").empty();
  					for (var i=0; i<data.length; i++){
  	  					$("#recv_names").append("<option value='"+data[i].telephone+"' >"+data[i].name+" "+data[i].telephone +"</option>");
  	  				}
  					$("#seqItem").empty();
  				} else {
  					$("#recv_names").empty().text("没有联系人！");
  				}
  				
  			});
  			
  		});
  		
  		$("#suoyouren").click(function(){
  		})
  		
  		//发送消息
  		$("#submsg").click(function(){
  			cpostContent();
  			cseqItem();
  			var suoyouren = $("#suoyouren").attr("checked") == "checked" ? true : false ;
  			if (suoyouren && isSeqItem && ispostContent){
  				var postPhone = location.href.split("/")[5];
  				var content = $("#postContent").val();
  				$.ajax({
  	  				url:"<%=path %>/msg/send?all",
  	  				type: "POST",
  	  			  	data: {"postPhone":postPhone,"content":content},
  	  			  	//dataType: "json",
  	  				success:function(data){
  	  					$("#postContent").attr("value","");
  	  					alert(data);
  	  				}
  	  			});
  			} 
  			if(!suoyouren && isSeqItem && ispostContent){
  				var recvPhones = [];
  	  			var recvPhoneDom = $("#seqItem").children();
  	  			for(var i=0; i<recvPhoneDom.length; i++){
  	  				recvPhones.push($(recvPhoneDom[i]).attr("value"));
  	  				//recvPhones["recvPhones"] = $(recvPhoneDom[i]).attr("value");
  	  			}
  	  			var postPhone = location.href.split("/")[5];
  	  			var postContent = $("#postContent").val();
  	  			var postData ={
  	  					'recvPhones':JSON.stringify(recvPhones),
  	  					'postPhone':postPhone,
  	  					'content':postContent
  	  			};
  	  			
  	  			$.ajax({
  	  				url:"<%=path %>/msg/send",
  	  				type: "POST",
  	  			  	data: postData,
  	  			  	//dataType: "json",
  	  				success:function(data){
  	  					$("#postContent").attr("value","");
  	  					alert(data);
  	  				},
  	  				error:function(data){
  	  					$("#postContent").attr("value","");
  	    				
  	  				}
  	  			});
  			}
  			
  		});
  		
 
  		//标记消息为已读
  		$("#tagRead").click(function(){
  			var data = $("input:checkbox[checked=checked]");
  			if (data != null){
  				$(data).each(function(){
  	  				var id = $(this).attr("value");
  	  				console.log(id);
  	  				$.post("<%=path %>/msg/read",{"id":id,"ajax":""}, function(data){
  	  					if (data !="success"){
  	  						alert(data);
  	  					}
  	  					tabunread();
  	  				}); 
  	  			});
  			} else {
  				return false;
  			}
  		});
  		
  		//点击未读消息tab
  		$("#tabunread").click(function(){
  			location.reload();
  			/* $.get(location.href+"/unread", "ajax", function(data){
  				if(data != null){
  					$("#home-body").empty();
  					for(var i=0; i<data.length; i++){
  						$("#home-body").append("<tr class='msg-showmodal'><td><input type='checkbox' name='id' value='"
  								+data[i].id+"'/></td><td>"
  								+data[i].postPhone+"</td><td class='msg-content' style='cursor:pointer'>"
  								+data[i].content+"</td><td>"
  								+data[i].sentDate+"</td></tr>");
  					}
  				}
  			}); */
  		});
  		
  		//分页显示未读消息
  		
  		//全选
  		$("#his-tagall").click(function(){
			$("#profile input[name='msgId']").attr("checked","checked");
		});
  		
  		$("#his-ctag").click(function(){
  			$("#profile input[name='msgId']").removeAttr("checked");
  		});
  		
  		$("#his-delall").click(function(){
  			var form = $("#profile form");
  			var pdata = [];
  			$("#profile input[name='msgId']").each(function(){
  				pdata.push($(this).attr("value"));
  			});
  			$.post("<%=path %>/msg/del", form.serializeArray(), function(data){
  				alert(data); 
  				initHisPager();
  				$("#tabhistory").click();
  			});
  			
  		});
  		
  	});
  			
  	function tabunread(){
  		/* $.get(location.href+"/unread", "ajax", function(data){
				if(data != null){
					$("#home-body").empty();
					for(var i=0; i<data.length; i++){
						$("#home-body").append("<tr class='msg-showmodal'><td><input type='checkbox' name='id' value='"
								+data[i].id+"'/></td><td>"
								+data[i].postPhone+"</td><td class='msg-content' style='cursor:pointer'>"
								+data[i].content+"</td><td>"
								+data[i].sentDate+"</td></tr>");
					}
				}
			}); */
			location.reload();
	  }


  </script>
  </head>
  
  <body>
    <%@ include file="../userTopIndex.jsp" %>
    <div class="main" style="height:550px">
    	<div class="row" style="margin-top:20px">
  			<div class="col-sm-2" style="left:55px">
  				<div class="tabbable tabs-left">
  					<ul class="nav nav-tabs" role="tablist"  id="myTab">
	    				<li id="tabunread"  class="active"><a href="#home" role="tab" data-toggle="tab"><p class="pp">未读消息</p></a></li>
	    				<li id="tabhistory"><a href="#profile"  role="tab" data-toggle="tab"><p class="pp">已读消息</p></a></li>
	    				<li id="tabsend" ><a href="#messages"  role="tab" data-toggle="tab"><p class="pp">发送消息</p></a></li>
    				</ul>
  				</div>	
  			</div>
			<div class="col-sm-9" style="left:5px">
  				<div class="tab-content" style="padding-left:100px;padding-top:0px;">
    				<div class="tab-pane active" id="home">
    					<div >							
							<form method="post" action="read" id="unreadform">
								<table class="table table-hover ctltable table-striped" style="border:#d9d9d9 1px solid;" >
								<thead>
									<tr>
										<th style="width:12.5%;height:35px"><input type="checkbox" value="" name="" disabled></th>
										<th style="width:22.8%;height:35px">发件人</th>
										<th style="width:41.0%;height:35px">内容</th>
										<th style="width:25.7%;height:35px">时间</th>
									</tr>
								</thead>
								
								
								<tbody id="home-body">
									
									<c:if test="${ not empty u_msgs }" >
										<c:forEach items="${ u_msgs }" var="um">
											<tr class="msg-showmodal">
												<td><input type="checkbox" name="msgId" value="${ um.id }"/></td>
												<td> ${ um.postPhone } </td>
												<td style="cursor:pointer" data-toggle="modal" data-target="#myModal" class="msg-content"> ${ um.content } </td>
												<td> ${ um.sentDate } </td>
											</tr>
										</c:forEach>
									</c:if>
								
									<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  										<div class="modal-dialog" style="margin-top:200px">
   											<div class="modal-content">
      												<div class="modal-header">
        												<button type="button" class="close" data-dismiss="modal">
        													<span aria-hidden="true">&times;</span>
        													<span class="sr-only">Close</span>
        												</button>
        												<h6 class="modal-title" id="myModalLabel" style="font-weight:bold">发件人：</h6>
        												<p class="modal-msg-sentPhone"></p>
        												<h6 class="modal-title" style="font-weight:bold">发送时间：</h6>
        												<p class="modal-msg-sentDate"></p>
        												<!-- <h6 class="modal-title" id="myModalbabel">发送时间：</h6> -->
      												</div>
      												<div class="modal-body">
        												<h4 style="font-weight:bold">内容：</h4>
        												<p class="modal-msg-content"></p>
        												
													</div>
													<div class="modal-footer">
														<button type="submit" name="submitMessage" class="btn btn-primary" data-dismiss="modal" id="modal-msg-subread">确定</button>
      												</div>
    										</div>
  										</div>
									</div>
									<!-- 点击站内信显示具体内容 END-->
									
								</tbody>
								
								</table>
								
								
								<input id="tagRead" class="btn btn-default tt" type="button" value="标记为已读">
							</form>
							<div id="PaginationUnread" class="pagination">
							</div>
						</div>
    				</div>
    				<div class="tab-pane" id="profile">
    					<form >
    					<table class="table table-hover ctltable table-striped" style="border:#d9d9d9 1px solid">
    						<thead>
    							<tr>
	    							<th style="width:12.5%;height:35px"><input type="checkbox" value="" name="" disabled></th>
	    							<th style="width:22.8%;height:35px">发送人</th>
	    							<th style="width:41.0%;height:35px">内容</th>
	    							<th style="width:25.7%;height:35px">发送时间</th>
    							</tr>
    						</thead>
    						<tbody id="profile-body">
    							<!-- 測試用例 -->
    							<tr id="123123">
    								<td class="msg-sentPhone">123123</td>
    								<td class="msg-content" data-toggle="modal" style="cursor:pointer" data="123123"></td>
    								<td class="msg-sentData"></td>
    							</tr>
    							
    							<div class="modal fade" id="hisModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  										<div class="modal-dialog" style="margin-top:200px">
   											<div class="modal-content">
      												<div class="modal-header">
        												<button type="button" class="close" data-dismiss="modal">
        													<span aria-hidden="true">&times;</span>
        													<span class="sr-only">Close</span>
        												</button>
        												<h6 class="modal-title" id="myModalLabel" style="font-weight:bold">发件人：</h6>
        												<p class="modal-msg-sentPhone"></p>
        												<h6 class="modal-title" style="font-weight:bold" >发送时间：</h6>
        												<p class="modal-msg-sentDate"></p>
        												<!-- <h6 class="modal-title" id="myModalbabel">发送时间：</h6> -->
      												</div>
      												<div class="modal-body">
        												<h4 style="font-weight:bold">内容：</h4>
        												<p class="modal-msg-content"></p>
        												
													</div>
													<div class="modal-footer">
														<button type="submit" name="submitMessage" class="btn btn-primary" data-dismiss="modal">确定</button>
      												</div>
    										</div>
  										</div>
									</div>
									<!-- 点击站内信显示具体内容 END-->
    						</tbody>
    						
    						
    						
    					</table>
    					<div>
    						<input id="his-tagall" type="button" value="标记全部" />
    						<input id="his-ctag" type="button" value="取消标记" />
    						<input id="his-delall" type="button" value="删除" />
    					</div>
    					</form>
    					<div id="Pagination" class="pagination">
    									
    					</div>
    					
    				</div>
    				<div class="tab-pane" id="messages">
						<form class="form-horizontal" id="formmsg" action="" method="post" name="">
      						<div class="modal-header">
        						<h4 class="modal-title" id="myModalLabel">站内信</h4>
      						</div>
      						<div class="modal-body">
        						<div class="control-group">
   									<label class="control-label" for="inputName" >收件人:</label>
  									 <div class="controls">
<!--  									 	<select  multiple style="width:50%" class="form-control"  id="inputName">-->
<!--  									 		<option>刘宗磊</option>-->
<!--  									 		<option>周宇鹏</option>-->
<!--  									 	</select>-->
  									 	<!-- <button type="button" data-toggle="modal" data-target="#myRe" name="recvId" id="inputName" style="width:50%">
  									 	收件人
     									</button> -->
     									
     									<table align="center" id="inputForm">
											<tr align=center>
												<td width="200">
													<select size=8 name="list1" id="recv_names" style="width:175" class="form-control">
														<!-- <option value="">15995021082</option>
														<option value=2>15995021081</option> -->
													</select>
												</td>
												<td><input id="adds" type="button" class="btn btn-default" value="增 加>>>" onclick="add()">
													<br/>
													<br/>
													<input id="dels" type="button"  class="btn btn-default" value="<<<删 除" onclick="del()">
												</td>
												<td width="200">
													<select name="seqItem" autofocus id="seqItem" size="8" style="width:175" multiple class="form-control">
													</select>
												</td>
											</tr>
										</table>
										<div style="display:none;" class="ui-err" id="seqItem_error">
                                    		<em class="arrow"></em>
                                    		<span class="err-txt"></span>
                               		 	</div>
     									
     									<label><input type="checkbox" id="suoyouren" value="1">所有人</label>
   									</div>
  								</div>
  								<div class="control-group">
   									<label class="control-label" for="inputName" >内容:</label>
  								  	<div class="controls" >
     									<textarea rows="3" cols="" class="form-control" id="postContent"></textarea>
   									</div>
   									<div style="display:none;" class="ui-err" id="postContent_error">
                                    	<em class="arrow"></em>
                                    	<span class="err-txt"></span>
                               		 </div>
  								</div>
  								<div class="modal-footer">
        							<button type="reset" name="resetMessage" class="btn btn-default">取消</button>
        							<div id="submsg" class="btn tt btn-default">发送</div>
      							</div>
							</div>
		  				</form>
    				</div>
  				</div>
			</div>
	</div>
<script>
/*   $(function () {
    $('#myTab a:first').tab('show');
  }); */
  /* $(function(){
            $(":checkbox").click(function(){
                if($(this).attr("checked")=="checked")
                
                {
                   $($(this).parents("div").find("table").get(0)).attr("disabled","disabled");
                }
                else
                {
                   $($(this).parents("div").find("table").get(0)).removeAttr("disabled");
                } 
            });
        }); */
        
        $(function(){
            $(":checkbox").click(function(){
                if($(this).attr("checked")=="checked")
                {
                    $($(this).parents("div").find("select").get(0)).attr("disabled","disabled");
                    $($(this).parents("div").find("#adds").get(0)).attr("disabled","disabled");
                    $($(this).parents("div").find("#dels").get(0)).attr("disabled","disabled");
                    //copy(recv_names,seqItem);
                   // document.all.seqItem.options.length=0;
                    for(i=0;i<document.all.recv_names.options.length;i++)
                    {
                    	document.all.seqItem.options[document.all.seqItem.options.length] = new Option(document.all.recv_names.options[i].text,document.all.recv_names.options[i].value);
                    }
                  //  $($(this).parents("div").find("#recv_names").children("option")).each(function(){
                   // $(this).get(0).remove(0);
                  // });
                  var obj = document.getElementById("recv_names");
                  for(var i=obj.length;i>=0;i--){
                	  obj.options[i]=null;
                  }
                  
                }
                else
                {
                    $($(this).parents("div").find("select").get(0)).removeAttr("disabled");
                    $($(this).parents("div").find("#adds").get(0)).removeAttr("disabled");
                    $($(this).parents("div").find("#dels").get(0)).removeAttr("disabled");
                    //copy(seqItem,recv_names);
                    document.all.recv_names.options.length=0;
                    for(i=0;i<document.all.seqItem.options.length;i++)
                    {
                    	document.all.recv_names.options[document.all.recv_names.options.length] = new Option(document.all.seqItem.options[i].text,document.all.seqItem.options[i].value);
                    }
                   // $($(this).parents("div").find("#seqItem").children("option")).each(function(){
                   // $(this).get(0).remove();
                   // });
                    var obj = document.getElementById("seqItem");
                    for(var i=obj.length;i>=0;i--){
                  	  obj.options[i]=null;
                    }
                }
            });
        });
        
	var seqSelect=document.forms[0].seqItem;
 	function setCursor(objStyle,cursor){
    	objStyle.cursor = cursor;
    }
    
    $("#seqNames").click(function(){
    	goClick()
    });
    $("")
 	function goClick()
 	{
 		
 		alert($("#seqItem").text());
 		
	}

	function add_singer(object,value,text)//添加数据
	{
		if(singer_exist(object,value)==false)
		{
			object.options.add(new Option(text,value,true,true));
			return true;
		}
	return false;
	}
	function remove_singer(object,index)//删除数据
	{
		if(index<0)return false;
			object.options.remove(index)
	}
	function singer_exist(object,value)//检查是否存在
	{
		for(var i=0;i<object.options.length; i++)
		{
			if(object.options[i].value==value)
				return true;
		}
	return false;
	}
	function add()
	{
		var obj1=document.all.list1;
		var index=obj1.selectedIndex;
		if (index<0) return false;
		value=obj1.options[index].value;
		text=obj1.options[index].text;
		var obj2=document.all.seqItem;
		add_singer(obj2,value,text)
		remove_singer(obj1,index)
	}
	function del()
	{
		var obj2=document.all.seqItem;
		var index=obj2.selectedIndex;
		if (index<0) return false;
		value=obj2.options[index].value;
		text=obj2.options[index].text;
		var obj1=document.all.list1;
		add_singer(obj1,value,text)
		remove_singer(obj2,index)
	}

</script>	
	</div>
    <%@ include file="../footer.jsp" %>
   <div id="totalCountRepository" class="hidden">
   		
   </div>
  </body>
</html>
