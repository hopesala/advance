<%@ page contentType="text/html;charset=GB2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import ="com.ht.servlet.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'book1.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <form method="POST" action="Book1">
  <%
  request.setCharacterEncoding("UTF-8");
  String tti=request.getParameter("teachertimeid"); 
  session.setAttribute("tti",request.getParameter("tti"));
  String name=request.getParameter("name"); 
  String time=request.getParameter("time");
  String week=request.getParameter("week");
 %>
 tti:<%=tti %>

  <p>可以设定预约事件<p>
  教师名字：<%=name %>
 <p>预约事件:<input type="text" name="thing"><br><p>
 
    <input type="submit" value="预约">
    </form>
    <input type="button" value="返回" onclick="window.location.href='success.jsp'"  style="background:White;width:400px;height:40px;font-size:20px;">
  </body>
</html>
