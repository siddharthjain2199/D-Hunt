package com.Eshop;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class AdminLogin
 */
@WebServlet("/admin_login")
public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String admin_email = request.getParameter("adminemail");
		String admin_password = request.getParameter("adminpassword");
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
		    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Company","root","root");
		   // System.out.println("Connected to db");
	        //Statement statement = con.createStatement();
		    PreparedStatement ps = con.prepareStatement("select * from Admin where admin_email = ? and admin_password = ?");
	        //ResultSet rs = statement.executeQuery("select * from student where email = '"+email+"' and password = '"+password+"'");
		    ps.setString(1,admin_email);
		    ps.setString(2,admin_password);
		    ResultSet rs  =  ps.executeQuery();
	        if(rs.next()) {
	        	 HttpSession session = request.getSession();
	        	 session.setAttribute("adminemail",admin_email);
	        	 response.sendRedirect("AdminDashboard.jsp");
	          }
	          else {
	        	 response.sendRedirect("AdminLogin.jsp");
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
