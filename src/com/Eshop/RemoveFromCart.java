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
 * Servlet implementation class RemoveFromCart
 */
@WebServlet("/removefromcart")
public class RemoveFromCart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RemoveFromCart() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*String product_id = request.getParameter("product_id");
		System.out.println("**************************************"+product_id);*/
		HttpSession session = request.getSession();
		ArrayList arraylist = (ArrayList)session.getAttribute("arraylist");
		
		if(arraylist == null)
    	{
    		arraylist = new ArrayList();
    	}
    	else
    	{
    		arraylist = (ArrayList)session.getAttribute("arraylist");
    		Cart cart = (Cart)session.getAttribute("cart");
    		cart.setNOI(request.getParameter("NOI")); 
    		
    		arraylist.remove(cart);
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
