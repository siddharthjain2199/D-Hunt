package com.Eshop;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.*;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;


/**
 * Servlet implementation class AdminAddProduct
 */
@WebServlet("/adminAddProduct")
@MultipartConfig(fileSizeThreshold= 1024 * 1024 * 2,
	maxFileSize = 1024 * 1024 * 10,
	maxRequestSize = 1024 * 1024 * 50
	)

public class AdminAddProduct extends HttpServlet {
	private static final String SAVE_DIR ="product"; 
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=ISO-8859-1");
		PrintWriter out = response.getWriter();
		String product_image_path = "D:\\projects\\eclipes second\\E-Shop.com\\WebContent\\image" + File.separator + SAVE_DIR;
		File fileSaveDir = new File(product_image_path);
		//System.out.println("********************************"+File.separator);
		
		//System.out.println("********************************"+product_image_path);
		
		
		int product_category_id = Integer.parseInt(request.getParameter("product_category_id") );
		System.out.println("********************************"+product_category_id);
		int product_subcategory_id= Integer.parseInt(request.getParameter("product_subcategory_id"));
		System.out.println("********************************"+product_subcategory_id);
		
		int product_type_id= Integer.parseInt(request.getParameter("product_type_id"));
		System.out.println("********************************"+product_type_id);
		
		String product_name = request.getParameter("product_name");
		String product_brand = request.getParameter("product_brand");
		String product_desc = request.getParameter("product_desc");
		int product_quantity = Integer.parseInt(request.getParameter("product_quantity"));
		String product_price = request.getParameter("product_price");
		
		Part part = request.getPart("product_image");
		String fileName = extractFileName(part);
		part.write(product_image_path + File.separator + fileName);
		
		Part part2 = request.getPart("product_image2");
		String fileName2 = extractFileName(part2);
		part2.write(product_image_path + File.separator + fileName2);
		
		Part part3 = request.getPart("product_image3");
		String fileName3 = extractFileName(part3);
		part3.write(product_image_path + File.separator + fileName3);
		
		
      	try { 
			Class.forName("com.mysql.jdbc.Driver");
		    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Company","root","root");
		    PreparedStatement ps = con.prepareStatement("insert into product(product_name,product_brand,product_desc,product_quantity,product_price,product_image,product_image2,product_image3,product_category_id,product_subcategory_id,product_type_id) values(?,?,?,?,?,?,?,?,?,?,?);");
		  
		    
		    ps.setString(1,product_name);
		    ps.setString(2,product_brand);
		    ps.setString(3,product_desc);
		    ps.setInt(4,product_quantity);
		    ps.setString(5,product_price);
		    
		    String product_image = fileName ;
		    ps.setString(6,product_image);
		    
		    String product_image2 = fileName2 ;
		    ps.setString(7,product_image2);
		    
		    String product_image3 = fileName3 ;
		    ps.setString(8,product_image3);
		    
		    
		    ps.setInt(9,product_category_id);
		    ps.setInt(10,product_subcategory_id);
		    ps.setInt(11,product_type_id);
		    int i = ps.executeUpdate();
		    
        	//out.println("<center><h1>Image Add Successfully..........!</h1></center>");
			if(i>0){
				    HttpSession session =  request.getSession();
					session.setAttribute("product_name",product_name);
					response.sendRedirect("AdminAddProduct.jsp");
			}/*else{
				HttpSession session =  request.getSession();
				//session.setAttribute("product_name",product_name );
				response.sendRedirect("AdminAddProduct.jsp");
			}*/
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		

	
		}
	private String extractFileName(Part part) {
		String contentDisp = part.getHeader("content-disposition");
		String[] items = contentDisp.split(";");
		for(String s : items){
			if(s.trim().startsWith("filename")){
				return s.substring(s.indexOf("=") +2, s.length()-1);
			}
		}
		return "";
	}

}
