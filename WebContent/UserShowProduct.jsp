<%@page import="java.util.ArrayList"%>
<%@page import="com.Eshop.Cart"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Show Products</title>
	<jsp:include page="Library.html"></jsp:include>
</head>
<body>
	 <jsp:include page="Header.jsp"></jsp:include>
  
  <!-- **************************************For Showing All Product to User***************************************************** -->
 <%
 int product_id = Integer.parseInt(request.getParameter("product_id"));

 try { 
	 Class.forName("com.mysql.jdbc.Driver");
	    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Company","root","root");
	    PreparedStatement ps = con.prepareStatement("select product_id,product_name,product_brand,product_desc,product_price,product_image,product_image2,product_image3 from product where product_id = ? ;");
	    ps.setInt(1,product_id);
	    ResultSet rs =  ps.executeQuery();
	    
	    Cart cart = new Cart();
	    ArrayList arraylist = (ArrayList)session.getAttribute("arraylist");
	    
	    String Product_id = "";
	    String product_name ="";
	    String product_image ="";
	    String product_desc = "";
	    String product_price = "";
	    
	    while(rs.next()){
	     Product_id = rs.getString("product_id");
	    	product_name = rs.getString("product_name");
	    	product_image = rs.getString("product_image");
	    	String product_image2 = rs.getString("product_image2");
	    	String product_image3 = rs.getString("product_image3");
	    	product_desc = rs.getString("product_desc");
	    	product_price = rs.getString("product_price");
	    	session.setAttribute("arraylist",arraylist);
	    	   %>
				 <div class="container-fluid">
    <div class="content-wrapper">	
		<div class="item-container">	
			<div class="container">	
				<div class="col-md-12">
					<div class="product col-md-3 service-image-left">
                    
						<center>
							<a href="image\product\<%=product_image %>" data-toggle="lightbox">
							<img id="item-display" src="image\product\<%=product_image %>" alt="image" class="img-fluid"></img>
							</a>
						</center>
					</div>
					
					<div class="container service1-items col-sm-2 col-md-2 pull-left">
						<center>
							<a id="item-1" class="service1-item" href="image\product\<%=product_image2 %>" data-toggle="lightbox" >
								<img src="image\product\<%=product_image2 %>" alt="image"></img>
							</a>
							<a id="item-2" class="service1-item" href="image\product\<%=product_image3 %>" data-toggle="lightbox" >
								<img src="image\product\<%=product_image3 %>" alt="image"></img>
							</a>
							
						</center>
					</div>
				</div>
					
				<div class= "container">
					<div class="product-title"><%=product_name %></div>
					<div class="product-desc"><%=product_desc %></div>
					<div class="product-rating"><i class="fa fa-star gold"></i> <i class="fa fa-star gold"></i> <i class="fa fa-star gold"></i> <i class="fa fa-star gold"></i> <i class="fa fa-star-o"></i> </div>
					<hr>
					<div class="product-price"><%=product_price %></div>
					<!-- <div class="product-stock">In Stock</div>
					 -->
					 <hr>
					<div class="btn-group cart">
						<form action="addtocart">
							<input type="hidden" name="product_id" value=<%= product_id %> >
							<input type="submit" value="Add To Cart" class="btn btn-success">
						</form>
						
					</div>
					<div class="btn-group wishlist">
						<a href="#"><button type="button" class="btn btn-danger">
							Add to wishlist 
						</button></a>
					</div>
					<div class="btn-group wishlist">
						<a href="opencamera.jsp"><button type="button" class="btn btn-danger">
							Try It Now....!
						</button></a>
					</div>
				</div>
			</div> 
		</div>
		<div class="container-fluid">		
			<div class="col-md-12 product-info">
					<ul id="myTab" class="nav nav-tabs nav_tabs">
						
						<li class="active"><a href="#service-one" data-toggle="tab">DESCRIPTION</a></li>&nbsp;&nbsp;
						<li><a href="#service-two" data-toggle="tab">PRODUCT INFO</a></li>&nbsp;&nbsp;
						<li><a href="#service-three" data-toggle="tab">REVIEWS</a></li>&nbsp;
					</ul>
				<div id="myTabContent" class="tab-content">
						<div class="tab-pane fade in active" id="service-one">
						 
							<section class="container product-info">
								The Corsair Gaming Series GS600 power supply is the ideal price-performance solution for building or upgrading a Gaming PC. A single +12V rail provides up to 48A of reliable, continuous power for multi-core gaming PCs with multiple graphics cards. The ultra-quiet, dual ball-bearing fan automatically adjusts its speed according to temperature, so it will never intrude on your music and games. Blue LEDs bathe the transparent fan blades in a cool glow. Not feeling blue? You can turn off the lighting with the press of a button.

								<h3><%=product_name %> Features:</h3>
								<li><%=product_desc %></li>
								<li>Extra long fully-sleeved cables support full tower chassis</li>
								<li>Safety Approvals: UL, CUL, CE, CB, FCC Class B, TÜV, CCC, C-tick</li>
								<li><%=product_desc %></li>
								<li><%=product_desc %></li>
								<li>Extra long fully-sleeved cables support full tower chassis</li>
								<li>A three year warranty and lifetime access to Corsairs legendary technical support and customer service</li>
								<li>Over Current/Voltage/Power Protection, Under Voltage Protection and Short Circuit Protection provide complete component safety</li>
								<li>Dimensions: 150mm(W) x 86mm(H) x 160mm(L)</li>
								<li>MTBF: 100,000 hours</li>
								<li>Safety Approvals: UL, CUL, CE, CB, FCC Class B, TÜV, CCC, C-tick</li>
							</section>
										  
						</div>
					<div class="tab-pane fade" id="service-two">
						
						<section class="container">
								The Corsair Gaming Series GS600 power supply is the ideal price-performance solution for building or upgrading a Gaming PC. A single +12V rail provides up to 48A of reliable, continuous power for multi-core gaming PCs with multiple graphics cards. The ultra-quiet, dual ball-bearing fan automatically adjusts its speed according to temperature, so it will never intrude on your music and games. Blue LEDs bathe the transparent fan blades in a cool glow. Not feeling blue? You can turn off the lighting with the press of a button.

								<h3><%=product_name %> Features:</h3>
								<li><%=product_desc %></li>
								<li>Extra long fully-sleeved cables support full tower chassis</li>
								<li>Safety Approvals: UL, CUL, CE, CB, FCC Class B, TÜV, CCC, C-tick</li>
								<li><%=product_desc %></li>
								<li><%=product_desc %></li>
								<li>Extra long fully-sleeved cables support full tower chassis</li>
								<li>A three year warranty and lifetime access to Corsairs legendary technical support and customer service</li>
								<li>Over Current/Voltage/Power Protection, Under Voltage Protection and Short Circuit Protection provide complete component safety</li>
								<li>Dimensions: 150mm(W) x 86mm(H) x 160mm(L)</li>
								<li>MTBF: 100,000 hours</li>
								<li>Safety Approvals: UL, CUL, CE, CB, FCC Class B, TÜV, CCC, C-tick</li>
						</section>
						
					</div>
					<div class="tab-pane fade" id="service-three">
								The Corsair Gaming Series GS600 power supply is the ideal price-performance solution for building or upgrading a Gaming PC. A single +12V rail provides up to 48A of reliable, continuous power for multi-core gaming PCs with multiple graphics cards. The ultra-quiet, dual ball-bearing fan automatically adjusts its speed according to temperature, so it will never intrude on your music and games. Blue LEDs bathe the transparent fan blades in a cool glow. Not feeling blue? You can turn off the lighting with the press of a button.

								<h3><%=product_name %> Features:</h3>
								<li><%=product_desc %></li>
								<li>Extra long fully-sleeved cables support full tower chassis</li>
								<li>Safety Approvals: UL, CUL, CE, CB, FCC Class B, TÜV, CCC, C-tick</li>
								<li><%=product_desc %></li>
								<li><%=product_desc %></li>
								<li>Extra long fully-sleeved cables support full tower chassis</li>
								<li>A three year warranty and lifetime access to Corsairs legendary technical support and customer service</li>
								<li>Over Current/Voltage/Power Protection, Under Voltage Protection and Short Circuit Protection provide complete component safety</li>
								<li>Dimensions: 150mm(W) x 86mm(H) x 160mm(L)</li>
								<li>MTBF: 100,000 hours</li>
								<li>Safety Approvals: UL, CUL, CE, CB, FCC Class B, TÜV, CCC, C-tick</li>				
					</div>
				</div>
				<hr>
			</div>
		</div>
	</div>
</div>
  

 <% 
 cart.setProductId(Product_id);
 cart.setProductName(product_name);
 cart.setProductPrice(product_price);
 cart.setProductImage(product_image);
 cart.setProductDesc(product_desc);
 session.setAttribute("cart", cart);
 if(cart != null && arraylist != null){
 		arraylist = (ArrayList)session.getAttribute("arraylist");
 		arraylist.add(cart);
 	}
 	else{
 		arraylist = new ArrayList();
 		//session.setAttribute("al",al);
 		arraylist.add(cart);
 }
 }
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}	
 %>

  <jsp:include page="FooterAdmin.jsp"></jsp:include>
</body>
</html>