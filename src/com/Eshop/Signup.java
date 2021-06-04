package com.Eshop;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Signup
 */
@WebServlet("/signup")
public class Signup extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Signup() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		   String uname =  request.getParameter("uname");
		   String uemail = request.getParameter("email");
		   String umobile = request.getParameter("mobile");
		   String upassword = request.getParameter("password");
		 try {
			Class.forName("com.mysql.jdbc.Driver");
		    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Company","root","root");
		    System.out.print("Connected to db");
		    //Statement statement = con.createStatement();
		    PreparedStatement ps = con.prepareStatement("insert into user(uname,uemail,umobile,upassword) values (?,?,?,?)");
		   // ResultSet rs;
		    //int i = statement.executeUpdate("insert into student(sname,email,dob,address,mobile,password) values('"+sname+"','"+email+"','"+dob+"','"+address+"','"+mobile+"','"+password+"')");
		    ps.setString(1,uname);
		    ps.setString(2,uemail);
		    ps.setString(3,umobile);
		    ps.setString(4,upassword);
	
		    ps.executeUpdate();
		    HttpSession session = request.getSession();
		    session.setAttribute("email",uemail);
		    response.sendRedirect("profile.jsp"); 
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
		//doGet(request, response);
		  
		
	}

}
