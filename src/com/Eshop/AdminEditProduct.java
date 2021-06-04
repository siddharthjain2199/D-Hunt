package com.Eshop;

import java.io.File;
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
import javax.servlet.http.Part;

/**
 * Servlet implementation class AdminEditProduct
 */
@WebServlet("/adminEditProduct")
public class AdminEditProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=ISO-8859-1");
		PrintWriter out = response.getWriter();
		
		int product_id = Integer.parseInt(request.getParameter("product_id"));
		String product_name = request.getParameter("product_name");
    	
    	String product_brand = request.getParameter("product_brand");
    	
    	String product_price = request.getParameter("product_price");
    	String product_quantity = request.getParameter("product_quantity");
    		
		try { 
			Class.forName("com.mysql.jdbc.Driver");
		    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Company","root","root");
		    PreparedStatement ps = con.prepareStatement("UPDATE product SET product_name = '?',product_brand = '?',product_price = '?',product_quantity = '?' where product_id = ?;");
		    ps.setString(1,product_name);
		    ps.setString(2,product_brand);
		    ps.setString(3,product_price);
		    ps.setString(4,product_quantity);
		    ps.setInt(5,product_id);
		    ps.executeUpdate();
		    out.println("<h1>EDit product Successully</h1");
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}

	}

	
}
