package com.Eshop;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AdminAddSubCategory
 */
@WebServlet("/adminAddSubCategory")
public class AdminAddSubCategory extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		PrintWriter out = response.getWriter();	
		String  subcategory_name = request.getParameter("subcategory_name");
			
		try { 
			Class.forName("com.mysql.jdbc.Driver");
		    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Company","root","root");
		    PreparedStatement ps = con.prepareStatement("select * from subcategory where subcategory_name = '?';");
		    ps.setString(1,subcategory_name );
		    ResultSet rs =  ps.executeQuery();
		    if(rs.next()){
		    	out.println("<center><h1>Sub-Category Already exists..........!</h1></center>");	
		    }
		    else{
		    	PreparedStatement ps1 = con.prepareStatement("insert into subcategory(subcategory_name) values(?);");
			    ps1.setString(1,subcategory_name);
			    ps1.executeUpdate();
			    
	        	out.println("<center><h1>Sub-Category Add Successfully..........!</h1></center>");
//	        	HttpSession session =  request.getSession();
//	        	session.setAttribute("product_name", product_name);
//	        	response.sendRedirect("AdminAddProduct.jsp");
		   
		    }
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		
		
		
		
		
	}

}
