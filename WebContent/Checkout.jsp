<%@page import="com.Eshop.Cart"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Checkout</title>
	<jsp:include page="Library.html"></jsp:include>
</head>
<body>
	 <jsp:include page="Header.jsp"></jsp:include>
  <%
  response.setHeader("Cache-control","no-cache,no-store,must-revalidate");
   if(session.getAttribute("email")==null)
   {
	   response.sendRedirect("login.jsp");
   }
 %>
  <!-- **************************************For Showing Checkout Product to User***************************************************** -->
  <div class="row">
  <div class="col-75">
    <div class="container">
      <form action="OrderConfirm.jsp" method="post">
      
        <div class="row">
          <div class="col-50">
            <h3>Billing Address</h3>
            <label for="username"><i class="fa fa-user"></i> Full Name</label>
            <input type="text" id="username" name="username" placeholder="Siddharth Jain">
            <label for="useremail"><i class="fa fa-envelope"></i> Email</label>
            <input type="text" id="useremail" name="useremail" placeholder="siddharth@example.com">
		    <label for="usermobile"><i class="fa fa-envelope"></i> Mobile</label>
            <input type="text" id="usermobile" name="usermobile" placeholder="6654653218" maxlength="10">

            <label for="address"><i class="fa fa-address-card-o"></i> Address</label>
            <input type="text" id="address" name="address" placeholder="141,Rajiv Gandhi">
            <label for="usercity"><i class="fa fa-institution"></i> City</label>
            <input type="text" id="usercity" name="usercity" placeholder="Indore">

            <div class="row">
              <div class="col-50">
                <label for="userstate">State</label>
                <input type="text" id="userstate" name="userstate" placeholder="Madhaya Pradesh">
              </div>
              <div class="col-50">
                <label for="pincode">Pincode</label>
                <input type="text" id="pincode" name="pincode" placeholder="452001" maxlength="6">
              </div>
            </div>
          </div>

          <div class="col-50">
            <h3>Payment</h3>
            <label for="fname">Accepted Cards</label>
            <div class="icon-container">
             <input type="radio" name="cardtype" value = "Visa">
              <i class="fa fa-cc-visa" style="color:navy;"></i>
             <input type="radio" name="cardtype" value = "Amex">
              <i class="fa fa-cc-amex" style="color:blue;"></i>
              <input type="radio" name="cardtype" value = "MasterCard">
              <i class="fa fa-cc-mastercard" style="color:red;"></i>
             <input type="radio" name="cardtype" value = "Discover">
              <i class="fa fa-cc-discover" style="color:orange;"></i>
            </div>
            <label for="holdername">Name on Card / Card Holder Name</label>
            <input type="text" id="holdername" name="holdername" placeholder="Siddharth Jain">
            <label for="cardnumber">Card number</label>
            <input type="text" id="cardnumber" name="cardnumber" placeholder="1111-2222-3333-4444" maxlength="16">
            <label for="expmonth">Exp Month</label>
            <input type="text" id="expmonth" name="expmonth" placeholder="September">
            <div class="row">
              <div class="col-50">
                <label for="expyear">Exp Year</label>
                <input type="text" id="expyear" name="expyear" placeholder="2018" maxlength="4">
              </div>
              <div class="col-50">
                <label for="cvv">CVV</label>
                <input type="text" id="cvv" name="cvv" placeholder="352" maxlength="3">
              </div>
            </div>
          </div>
          
        </div>
        <label>
          <input type="checkbox" checked="checked" name="sameadr"> Shipping address same as billing
        </label>
        <input type="submit" value="Continue to checkout" class="btn1">
      </form>
    </div>
  </div>
  <div class="col-25">
    <div class="container">
     <h4>Cart</h4>
    <%
			ArrayList arraylist = (ArrayList)session.getAttribute("arraylist");
	    	for(int i=0; i<arraylist.size(); i++)
	    	{
	    		Cart cart = (Cart)(arraylist.get(i));
	    %>
     <h4><span class="price" style="color:black"><i class="fa fa-shopping-cart"></i> <b><%=arraylist.size() %></b></span></h4>
      <p><a href="#"><%=cart.getProductName() %></a> <span class="price"><%=cart.getProductPrice() %>/-</span></p>
      <%}
	 	System.out.println("********************************************"+arraylist.size());%>
      <hr>
      <p>Total <span class="price" style="color:black"><b>200/-</b></span></p>
    </div>
  </div>
</div>
  <jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>