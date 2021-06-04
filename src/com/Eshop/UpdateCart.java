package com.Eshop;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class UpdateCart
 */
@WebServlet("/updatecart")
public class UpdateCart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateCart() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		ArrayList arraylist = (ArrayList)session.getAttribute("arraylist");
  	    int product_quantity = Integer.parseInt(request.getParameter("orderquantity"));
    	int product_price = Integer.parseInt(request.getParameter("product_price"));
  	    if(arraylist == null)
    	{
    		arraylist = new ArrayList();
    	}
    	else
    	{
    		arraylist = (ArrayList)session.getAttribute("arraylist");
    		Cart cart = (Cart)session.getAttribute("cart");
    		cart.setNOI(request.getParameter("NOI")); 
    		if(product_quantity>0) {
    			int products_total_price = product_price* product_quantity;
    			cart.setProductsTotalPrice(products_total_price);
    		}
    		
    	}
    	session.setAttribute("arraylist", arraylist);
    	response.sendRedirect("Cart.jsp");
		
		
		
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
