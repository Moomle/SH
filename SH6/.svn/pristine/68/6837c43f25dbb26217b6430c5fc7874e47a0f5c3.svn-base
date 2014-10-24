<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <script type="text/javascript" src="<%=path %>/js/jquery-1.8.2.js"></script>
 <script type="text/javascript">
    $(function(){
      var user = {"ord_num":"12345",
        "cur_phone":"158xxxxxxxx",
        "org_plac":"China",
        "org_name":"jiangsu",
        "org_phone":"123",
        "dst_phone":"321",
        "dst_plc":"sfsfs",
        "dst_name":"name",
      };
      
      
      $.post("http://localhost:8080/SH5/order/add?json", user, function(data){alert(data);});
   
    });
  </script>  
<title>Insert title here</title>
</head>
<body>

</body>
</html>
