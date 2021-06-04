<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  	<!-- LOGO and Menubar  -->
<nav class="navbar navbar-expand-lg navbar-dark sticky-top bg-dark">
      
      <a class="navbar-brand" href="index.jsp">
      <img class="navbar-brand" alt="logo" src="image/logo/website_logo.png" style="width:40px;"></a>
      <a class="navbar-brand" href="index.jsp">D-Hunt</a> 
       <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

    
    
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      		<li class="nav-item active"><a class="nav-link" href="index.jsp">Home</a></li>
      		
      		<li class="nav-item dropdown">
      		<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Men</a>
                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                <li class="dropdown-header">Men Top Wear</li>
                  <li><a class="dropdown-item" href="SelectProduct.jsp?product_category_id=1&product_subcategory_id=1&product_type_id=1">T-shirt</a></li>
                  <li><a class="dropdown-item" href="SelectProduct.jsp?product_category_id=1&product_subcategory_id=1&product_type_id=2">Shirt</a></li>
                  <li><a class="dropdown-item" href="SelectProduct.jsp?product_category_id=1&product_subcategory_id=1&product_type_id=11">Kurtas</a></li>
                  <li><a class="dropdown-item" href="SelectProduct.jsp?product_category_id=1&product_subcategory_id=1&product_type_id=12">Jackets</a></li>
                  <li><a class="dropdown-item" href="SelectProduct.jsp?product_category_id=1&product_subcategory_id=1&product_type_id=3">Blazers</a></li>
                  <li><a class="dropdown-item" href="SelectProduct.jsp?product_category_id=1&product_subcategory_id=1&product_type_id=7">Sherwani</a></li>
                  
                  <li class="dropdown-header">Men Bottom Wear</li>
                  <li><a class="dropdown-item" href="SelectProduct.jsp?product_category_id=1&product_subcategory_id=2&product_type_id=4">Jeans</a></li>
                  <li><a class="dropdown-item" href="SelectProduct.jsp?product_category_id=1&product_subcategory_id=2&product_type_id=6">Trousers</a></li>
                  <li><a class="dropdown-item" href="SelectProduct.jsp?product_category_id=1&product_subcategory_id=2&product_type_id=5">Pants</a></li>	
                </ul>
            </li>
            <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Women</span></a>
                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                  <li class="dropdown-header">Women Top Wear</li>
                  <li><a class="dropdown-item" href="SelectProduct.jsp?product_category_id=2&product_subcategory_id=1&product_type_id=1">T-shirt</a></li>
                  <li><a class="dropdown-item" href="SelectProduct.jsp?product_category_id=2&product_subcategory_id=1&product_type_id=1">Tops</a></li>
                  <li><a class="dropdown-item" href="SelectProduct.jsp?product_category_id=2&product_subcategory_id=1&product_type_id=2">Shirt</a></li>
                  <li><a class="dropdown-item" href="SelectProduct.jsp?product_category_id=2&product_subcategory_id=1&product_type_id=2">Suit and Kurtis</a></li>
                  <li><a class="dropdown-item" href="SelectProduct.jsp?product_category_id=2&product_subcategory_id=1&product_type_id=3">Coats And Blazers</a></li>
                  
                  <li class="dropdown-header">Women Bottom Wear</li>
                  <li><a class="dropdown-item" href="SelectProduct.jsp?product_category_id=2&product_subcategory_id=2&product_type_id=4">Jeans And Jeggings </a></li>
                  <li><a class="dropdown-item" href="SelectProduct.jsp?product_category_id=2&product_subcategory_id=2&product_type_id=6">Shorts And Skirts</a></li>
                  <li><a class="dropdown-item" href="SelectProduct.jsp?product_category_id=2&product_subcategory_id=2&product_type_id=6">Trousers And Capris</a></li>
                  <li><a class="dropdown-item" href="SelectProduct.jsp?product_category_id=2&product_subcategory_id=2&product_type_id=4">Leggings And Salwars</a></li>
                </ul>
            </li>
             
              <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Boys</span></a>
                <ul class="dropdown-menu" aria-labelledby="navbarDropdown"> 
                          <li class="dropdown-header">Boys Top Wear</li>
                          <li><a class="dropdown-item" href="SelectProduct.jsp?product_category_id=3&product_subcategory_id=1&product_type_id=1">T-shirt</a></li>
                          <li><a class="dropdown-item" href="SelectProduct.jsp?product_category_id=3&product_subcategory_id=1&product_type_id=2">Shirt</a></li>
                          <li><a class="dropdown-item" href="SelectProduct.jsp?product_category_id=3&product_subcategory_id=1&product_type_id=12">Jackets</a></li>
                          <li><a class="dropdown-item" href="SelectProduct.jsp?product_category_id=3&product_subcategory_id=1&product_type_id=14">Sweaters</a></li>
                          <li><a class="dropdown-item" href="SelectProduct.jsp?product_category_id=3&product_subcategory_id=1&product_type_id=3">Blazers</a></li>
                          
                          <li class="dropdown-header">Boys Bottom Wear</li>
                          <li><a class="dropdown-item" href="SelectProduct.jsp?product_category_id=3&product_subcategory_id=2&product_type_id=4">Jeans And Trousers</a></li>
                          <li><a class="dropdown-item" href="SelectProduct.jsp?product_category_id=3&product_subcategory_id=2&product_type_id=5">Shorts</a></li>
                          <li><a class="dropdown-item" href="SelectProduct.jsp?product_category_id=3&product_subcategory_id=2&product_type_id=5">Track Pants And Pyjamas </a></li>
                          
                </ul>
              </li>
              <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Girls</span></a>
              
                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                	<li class="dropdown-header">Girls Top Wear</li>
                          <li><a class="dropdown-item" href="SelectProduct.jsp?product_category_id=4&product_subcategory_id=1&product_type_id=1">T-shirt</a></li>
                          <li><a class="dropdown-item" href="SelectProduct.jsp?product_category_id=4&product_subcategory_id=1&product_type_id=1">Tops</a></li>
                          
                          
                    <li class="dropdown-header">Girls Bottom Wear</li>
                          <li><a class="dropdown-item" href="SelectProduct.jsp?product_category_id=4&product_subcategory_id=2&product_type_id=4">Jeans</a></li>
                          <li><a class="dropdown-item" href="SelectProduct.jsp?product_category_id=4&product_subcategory_id=2&product_type_id=4">Skirts,Shorts And Jumpsuits</a></li>
                          <li><a class="dropdown-item" href="SelectProduct.jsp?product_category_id=4&product_subcategory_id=2&product_type_id=4">Tights And Leggings</a></li>
                </ul>
              </li>

              <li class="nav-item"><a class="nav-link" href="Blog.jsp">Blog</a></li>
              <li class="nav-item"><a class="nav-link" href="ContactUs.jsp">Contact Us</a></li>
              <li class="nav-item"><a class="nav-link" href="AboutUs.jsp">About Us</a></li>
     
    </ul>
    <form class="form-inline my-2 my-lg-0" action="SearchProduct.jsp">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
     <button class="btn btn-outline-success my-2 my-sm-0" type="submit"><span><i class="fa fa-search"></i></span></button>
    </form>
    <li class="nav-item"><a href="Cart.jsp"><span><i class="fa fa-shopping-cart"></i></span>Cart()</a></li>
   <%
 response.setHeader("Cache-control","no-cache,no-store,must-revalidate");
   if(session.getAttribute("email")==null)
   {
	   response.sendRedirect("Login.jsp");
   }
 %>
   <%
     if(session.getAttribute("email")==null){ %>
    	  <ul class="nav navbar-nav navbar-right">
      <li><a class="nav-link"  href="signup.jsp"><span><i class="fa fa-sign-in" aria-hidden="true"></i></span> Sign Up</a></li>
      <li><a class="nav-link" href="login.jsp"><span><i class="fa fa-user" aria-hidden="true"></i></span> Login</a></li>
    </ul>
		
    <% } else{ %>   
    <ul class="nav navbar-nav">
      	<li>
       			<form action="logout.jsp">
      					<button class="btn btn-primary"><span class="glyphicon glyphicon-log-in"></span>Logout</button> 
       			</form>  
   		</li>
    	</ul>   
    <% }%>
  </div>
</nav>
