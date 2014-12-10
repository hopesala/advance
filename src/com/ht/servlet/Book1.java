package com.ht.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Book1 extends HttpServlet {

 /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

@Override
 protected void doPost(HttpServletRequest req, HttpServletResponse resp)
   throws ServletException, IOException {
  doGet(req,resp);
 }

 @Override
 public void doGet(HttpServletRequest req, HttpServletResponse resp)
   throws ServletException, IOException {
  String thing = req.getParameter("thing");
  byte b[]=thing.getBytes("ISO-8859-1");
  thing=new String(b);
  System.out.println("thing="+thing);
  Student st=(Student)req.getSession().getAttribute("account");
  String tti=(String)req.getSession().getAttribute("tti");
  System.out.println("teachertimeid="+tti);
  dbconnection d = new dbconnection();
  Connection t = d.getConnection();
  int numed=1;
	Statement stmt;
	stmt=null;
	try {
		stmt = t.createStatement();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	try {
	String sql="update  teachertime set  thingsec=\""+thing+"\",timeed=\""+numed+"\" where teachertimeid=\""+tti+"\"";
	stmt.executeUpdate(sql);
	sql="insert into studenttime values(\""+st.getStudentid()+"\", \""+tti+"\")";
	stmt.executeUpdate(sql);
	t.close();
	 resp.sendRedirect("Mybook.jsp");
	}catch (Exception E) {
	E.printStackTrace();	
}
 }
}