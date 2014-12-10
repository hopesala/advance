<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import ="com.ht.servlet.*"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ttr.jsp' starting page</title>
    
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
  <form action="" method="post">
<% Teachertime[] tt=(Teachertime[])session.getAttribute("tt");
   TeacherTimeWeek ttw=(TeacherTimeWeek)session.getAttribute("ttw");
   int num=ttw.getNum();
 %>
 
 该教师可预约的日期
 ttw.getNum()<%=ttw.getNum()%>
  <select name="time">
 <%
 for (int i = 1; i <= ttw.getNum();) {
   String time=ttw.getTime();
   %>
    <option value="<%=time %>" ><%=time %></option>
    <%
   }
   ttw.setNum(num);
   %>
 </select>
 <input type="submit" value="查询">
 </form>
 <%
String time=request.getParameter("time");
if(time==null)
time="";
int Num=Integer.valueOf((String)session.getAttribute("j"));
 %>
<table border="1">
 	<tr>
 	<td>日期</td>
 	<td>教师名字</td>
 	<td>具体时间</td>
 	<td>可预约总人数</td>
 	<td>已经预约人数</td>
 	<td>预约时间</td>
 	<td>预约</td>
 	</tr>
 	<%for(int i=0;i<Num;i++) 
 	{

 	if(time.equals(tt[i].getYear()+','+tt[i].getMonth()+','+tt[i].getDay()))
 	{%>
 	<tr>
 	<td><%=time %></td>
 	<td><%=tt[i].getName() %></td>
    <td><%=tt[i].getStime() %></td>
    
      <td><%=tt[i].getTime() %></td>
        <td><%=tt[i].getTimeed() %></td>
        <%if(tt[i].getThing()==null){
        if ( tt[i].getThingsec() == null) {
        %>
    <td>未设定</td>
    <td><a href="book1.jsp?tti=<%=tt[i].getTeachertimeid()%> &name=<%=tt[i].getName()%>&time=<%=tt[i].getStime()%>&week=<%=tt[i].getDay()%>"> 可设定预约</a> </td> 
    <%}else {
       %>
          <td><%=tt[i].getThingsec() %></td>
          <%if(Integer.valueOf(tt[i].getTime())>Integer.valueOf(tt[i].getTimeed())) { %>
          <td><a href="book2.jsp?name=<%=tt[i].getTeachertimeid()%>"> 可预约</a> </td> 
          <% } else {%>
          <td>不可预约</td>
          <%}
          }
          }
         else {
          %>
          <td><%=tt[i].getThing() %></td>
          <%if(Integer.valueOf(tt[i].getTime())>Integer.valueOf(tt[i].getTimeed())) { %>
          <td><a href="book2.jsp?name=<%=tt[i].getTeachertimeid()%>"> 可预约</a> </td> 
          <% } else {%>
          <td>不可预约</td>
          <%
         }}}}%>
    </tr>
     
	</table>


 	
	<input type="button" value="返回" onclick="window.location.href='success.jsp'"  style="background:White;width:400px;height:40px;font-size:20px;">
  </body>
</html>
