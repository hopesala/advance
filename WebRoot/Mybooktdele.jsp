<%@ page contentType="text/html;charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import ="com.ht.servlet.*"%>
<%@ page import="java.sql.*"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Mybooktdele.jsp' starting page</title>
    
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
     <%
     dbconnection d = new dbconnection();
     Connection t = d.getConnection();
	 Statement stmt,stmt1,stmt2;
	 stmt=null;
	 stmt1=null;
	 	try {
			stmt = t.createStatement();
			stmt1 = t.createStatement();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	 request.setCharacterEncoding("UTF-8");
     String teachertimeid=request.getParameter("name"); 
	 String sql="delete  from studenttime where teachertimeid=\""+teachertimeid+"\";";
	 String sql1="delete  from teachertime where teachertimeid=\""+teachertimeid+"\";";
		try {
	    stmt.executeUpdate(sql);
	    stmt1.executeUpdate(sql1);
		}catch (Exception E) {
		E.printStackTrace();	
	     }
	%>

    删除成功 <br>
    <jsp:include  page="Mybookt.jsp"/>
  </body>
</html>
