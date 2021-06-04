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
 * Servlet implementation class AdminRemoveProductType
 */
@WebServlet("/adminRemoveProductType")
public class AdminRemoveProductType extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();	
		int product_type_id = Integer.parseInt(request.getParameter("product_type_id"));
		
		try { 
			Class.forName("com.mysql.jdbc.Driver");
		    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Company","root","root");
		    PreparedStatement ps = con.prepareStatement("select * from product_type where product_type_id = '"+product_type_id+"';");
		    ResultSet rs =  ps.executeQuery();
		    if(rs.next()){
		    	 PreparedStatement ps1 = con.prepareStatement("delete from product_type where product_type_id = ?;");
			    	ps1.setInt(1,product_type_id);
			    	ps1.executeUpdate();
			    
		        	out.println("<center><h1>Product Type Remove Successfully..........!</h1></center>");
		//        	HttpSession session =  request.getSession();
		//        	session.setAttribute("product_name", product_name);
		//        	response.sendRedirect("AdminAddProduct.jsp");
			   
			    
		     }else{
		    	 out.println("<center><h1>product TYpe Not Exists..........!</h1></center>");
			    	
		       }
        	
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		

		
		
	}

}
