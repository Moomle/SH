<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="<%=path %>/js/jquery-1.8.2.js"></script>
<title>UserIndex</title>
</head>
<body>
	<h1>你好！[${ loginUser.name }]</h1>
	
	<hr />
	
	<div>
		<input type="button" value="用户注册" />
	</div>
	<br />
	<div>
  		<input id="btn" type="button" value="用户列表" />
	<script>
		
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
						var isAdmin =  $("#"+telephone+" [name='isAdmin']");
						data = {"name":name.val(), "location":location.val(), "password":password.val(), "isAdmin":isAdmin.val()}
						$.post("${ pageContext.request.contextPath }/user/"+telephone+"/update?ajax=", data, function(data){
							alert(data);
						});
						
					}
			});
			
			$("body").on("click", ".delete", function(){
				var telephone = $(this).parent().parent().attr("id");
				deleteUser(telephone);
				showUserLists();
				function deleteUser(telephone){
					$.post("${ pageContext.request.contextPath }/user/"+telephone+"/delete", telephone, function(data){
						alert(data);
					});
				}
			});
		
			$("#btn").click(function(){
				showUserLists();
			});
			
			function showUserLists(){
				$.get("${ pageContext.request.contextPath }/user/users", function(data){
					$("#console").text(data.length);
					$("#tbody").empty();
					for(var i=0; i<data.length; i++){
						$("#tbody").append("<tr id='"+data[i].telephone+"'><td>"
								+data[i].telephone+"</td><td><input id='"+data[i].telephone+"' name='name' type='text' value='"
								+data[i].name+"' /></td><td><input id='"+data[i].telephone+"' name='location' type='text' value='"
								+data[i].location+"' /></td><td><input id='"+data[i].telephone+"' name='password' type='password' value='"
								+data[i].password+"' /></td><td><input id='"+data[i].telephone+"' name='isAdmin' type='text' value='"+
								+data[i].isAdmin+
								"' /><td><input  class='update' type='button' value='更新' />/<input class='delete' type='button' value='删除' /></td></tr>");
					}
				});
			}
			
			
			
			function console(context){
				var console = $("#console");
				console.append(context);
			}
			
		});
		
	</script>
	</div>
	<hr />
	
		
	<br />
	<hr />
	
	<p id="console"></p>

		<form>
			<table border="1">
				<thead>
					<tr>
						<td>手机号码</td>
						<td>用户姓名</td>
						<td>所在站点</td>
						<td>用户密码</td>
						<td>是否是管理员</td>
						<td>操作</td>
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
		</form>
		
	
</body>
</html>