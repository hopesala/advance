<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
    
    <title>My JSP 'Mybooktview.jsp' starting page</title>
    
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
      <table border="1">
    <tr>
    <td>学生姓名</td>
     <%
     dbconnection d = new dbconnection();
     Connection t = d.getConnection();
	 Statement stmt;
	 stmt=null;
	 	try {
			stmt = t.createStatement();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	 String teachertimeid=request.getParameter("name"); 
	 ResultSet rs,rs1=null;
	 String sql="select * from studenttime where teachertimeid=\""+teachertimeid+"\";";
		try {
		rs=stmt.executeQuery(sql);
		while(rs.next())
		{
		String studentid=rs.getString(2);
		String sql1="select * from student where studentid=\""+studentid+"\";";
		
		try {
		rs1=stmt.executeQuery(sql1);
		while(rs1.next())
		{
		String name=rs1.getString(3);
		%>
		<td>
		<%=name %>
		</td>
		<%
		}
		}catch (Exception E) {
		E.printStackTrace();	
	     }
	     }
		}catch (Exception E) {
		E.printStackTrace();	
	     }
	     %>
	     </tr>
	     </table>
	     <input type="button" value="返回" onclick="window.location.href='successt.jsp'"  style="background:White;width:400px;height:40px;font-size:20px;">
  </body>
</html>
