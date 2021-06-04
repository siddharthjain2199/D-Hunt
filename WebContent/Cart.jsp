<%@page import="com.Eshop.Cart"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>cart</title>
	<jsp:include page="Library.html"></jsp:include>
</head>
<body>
	 <jsp:include page="Header.jsp"></jsp:include>
  <%--  <%
  response.setHeader("Cache-control","no-cache,no-store,must-revalidate");
   if(session.getAttribute("email")==null)
   {
	   response.sendRedirect("login.jsp");
   } 
 %>--%>
  <!-- **************************************For Showing cart Product to User***************************************************** -->
  <div class="container p-4">
	<div class="row">
		<div class="col-xs-8">
			<div class="panel panel-info">
				<div class="panel-heading">
					<div class="panel-title">
						<div class="row">
							<div class="col-xs-6 p-2">
								<h5><span><i class="fa fa-shopping-cart"></i></span> Shopping Cart</h5>
							</div>
							
							<div class="col-xs-6">
								<a href="index.jsp"><button type="button" class="btn btn-primary btn-sm btn-block">
									<span><i class="fa fa-share"></i></span> Continue shopping
								</button>
								</a>
							</div>
						</div>
					</div>
				</div>
				<div class="container table-responsive">
  <table class="table table-bordered">
  <thead>
     <tr class= "text-center">
       <th>Product Name</th>
       <th>Product Image</th>
       <th>Product Price</th>
       <th>Product desc</th>
       <th>Product Quantity</th>
       <th>Option</th>
     </tr>
   </thead>
     <tbody>
	 <tr class= "text-center">
				
		<%
			ArrayList arraylist = (ArrayList)session.getAttribute("arraylist");
	    	for(int i=0; i<arraylist.size(); i++)
	    	{
	    		Cart cart = (Cart)(arraylist.get(i));
	    %>
		<tr class= "text-center">
      
       <td><%=cart.getProductName() %></td>
       <td><img id="item-display" src="image\product\<%=cart.getProductImage()%>" alt="image" style="max-height: 100px;"></img></td>
       <td><%=cart.getProductPrice() %></td>
       <td><%=cart.getProductDesc()%></td>
       <td><input type = "number" class="form-control input-sm" name="orderquantity" value="1" ></td>
       <td>
       	<form action="removefromcart">
       		<input type="hidden" name="product_id" value=<%=cart.getProductId()%> >
       		<span><i class="fa fa-trash-o"></i></span>
       		<input type="submit" value ="remove from cart" class="btn btn-danger">
       	</form>
       </td>
	   
     </tr>
	 	<%}
	 	System.out.println("********************************************"+arraylist.size());%>
	 	
				   </tbody>
  </table>
  </div>	
  		<hr>
					<div class="row">
						<div class="text-center">
							<div class="col-xs-9">
								<h6 class="text-right">Added items?</h6>
							</div>
							<div class="col-xs-3">
								<form action="updatecart">
								<input type="submit" value = "Update cart" class="btn btn-default btn-sm btn-block">
								</form>
							</div>
						</div>
					</div>
				</div>
				<div class="panel-footer">
					<div class="row text-center">
						<div class="col-xs-9">
							<h4 class="text-right">Total <strong> 200/- </strong></h4>
						</div>
						<div class="col-xs-3">
							<a href="Checkout.jsp"><button type="button" class="btn btn-success btn-block">
								Checkout
							</button>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
  
  <jsp:include page="FooterAdmin.jsp"></jsp:include>
</body>
</html>