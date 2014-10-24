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
<title>注册</title>
</head>
<body>
<!-- user 拥有 telephone name password isAdmin  -->
	<h1>用户注册</h1>
	<sf:form method="post" modelAttribute="user">
		手机号：<sf:input path="telephone"/><sf:errors path="telephone"></sf:errors><br />
		姓名：<sf:input path="name"/><sf:errors path="name"></sf:errors><br />
		密码：<sf:input type="password" path="password" /><sf:errors path="password"></sf:errors><br />
		所在地:<sf:input path="location" /> 
		用户类别:<sf:input path="isAdmin"/>
		<input type="submit" value="提交"/>
	</sf:form>

</body>
</html>