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
 * Servlet implementation class OrderConfirm
 */
@WebServlet("/orderconfirm")
public class OrderConfirm extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String bill_user_name = request.getParameter("username");
		String bill_user_email_id = request.getParameter("useremail");
		String bill_address = request.getParameter("address");
		String bill_user_mobile_number= request.getParameter("usermobile");
		String bill_user_city = request.getParameter("usercity");
		String bill_user_state = request.getParameter("userstate");
		String bill_pincode = request.getParameter("pincode");
		/*int bill_products_number = Integer.parseInt(request.getParameter("product_quantity"));*/
		/*int bill_products_price = Integer.parseInt(request.getParameter("product_quantity"));*/
		String bill_card_type= request.getParameter("cardtype");
		String bill_card_holder_name= request.getParameter("holdername");
		String bill_card_number= request.getParameter("cardnumber");
		String bill_card_cvv= request.getParameter("cvv");
		String bill_card_expiry_month= request.getParameter("expmonth");
		String bill_card_expiry_year= request.getParameter("expyear");

      	try { 
			Class.forName("com.mysql.jdbc.Driver");
		    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Company","root","root");
		    PreparedStatement ps = con.prepareStatement("insert into billing(bill_user_name,bill_user_email_id,bill_address,bill_user_mobile_number,bill_user_city,bill_user_state,bill_pincode,bill_products_number,bill_products_amount,bill_card_type,bill_card_holder_name,bill_card_number,bill_card_cvv,bill_card_expiry_month,bill_card_expiry_year) values('?','?','?','?','?','?','?',3,261,'?','?','?','?','?','?');");
		    ps.setString(1,bill_user_name);
		    ps.setString(2,bill_user_email_id);
		    ps.setString(3,bill_address);
		    ps.setString(4,bill_user_mobile_number);
		    ps.setString(5,bill_user_city);
		    ps.setString(6,bill_user_state);
  		    ps.setString(7,bill_pincode);
  		    ps.setString(8,bill_card_type);
		    ps.setString(9,bill_card_holder_name);
		    ps.setString(10,bill_card_number);
		    ps.setString(11,bill_card_cvv);
		    ps.setString(12,bill_card_expiry_month);
		    ps.setString(13,bill_card_expiry_year);
		    int i = ps.executeUpdate();
		    
			if(i>0){
				    HttpSession session =  request.getSession();
					/*session.setAttribute("product_name",product_name);*/
					response.sendRedirect("OrderConfirm.jsp");
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

}
