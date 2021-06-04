package com.Eshop;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
@WebServlet("/login")
public class Login extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uemail = request.getParameter("email");
		String upassword = request.getParameter("password");
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
		    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Company","root","root");
		   // System.out.println("Connected to db");
	        //Statement statement = con.createStatement();
		    PreparedStatement ps = con.prepareStatement("select * from User where uemail = ? and upassword = ?");
	        //ResultSet rs = statement.executeQuery("select * from student where email = '"+email+"' and password = '"+password+"'");
		    ps.setString(1,uemail);
		    ps.setString(2,upassword);
		    ResultSet rs  =  ps.executeQuery();
	        if(rs.next()) {
	        	 HttpSession session = request.getSession();
	        	 session.setAttribute("email",uemail);
	        	 response.sendRedirect("profile.jsp");
	          }
	          else {
	        	 response.sendRedirect("login.jsp");
	          }
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
