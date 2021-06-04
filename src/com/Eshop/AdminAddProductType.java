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
 * Servlet implementation class AdminAddCategory
 */
@WebServlet("/adminAddProductType")
public class AdminAddProductType extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
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
		String  product_type_name = request.getParameter("product_type_name");
		
		try { 
			Class.forName("com.mysql.jdbc.Driver");
		    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Company","root","root");
		    PreparedStatement ps = con.prepareStatement("select * from product_type where product_type_name = '"+product_type_name+"';");
		    ResultSet rs =  ps.executeQuery();
		    if(rs.next()){
		    	out.println("<center><h1>Sub-Category Already exists..........!</h1></center>");
		     }else{
		    	 PreparedStatement ps1 = con.prepareStatement("insert into product_type(product_type_name) values(?);");
		    	 ps1.setString(1,product_type_name);
			    ps1.executeUpdate();
			    
	        	out.println("<center><h1>Category Add Successfully..........!</h1></center>");
//		        	HttpSession session =  request.getSession();
//		        	session.setAttribute("product_name", product_name);
//		        	response.sendRedirect("AdminAddProduct.jsp");
			  
		    }
        	
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		

		
		
		
		
	}

}
