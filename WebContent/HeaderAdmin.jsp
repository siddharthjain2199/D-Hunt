<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
  <nav class="navbar navbar-expand-lg navbar-dark sticky-top bg-dark">
  	 <a href="AdminDashboard.jsp"><img class="navbar-brand" alt="logo" src="image/logo/website_logo.png" style="width:40px;"></a>
      <a class="navbar-brand" href="AdminDashboard.jsp">D-Hunt</a> 
       <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  
  
  <div class="collapse navbar-collapse justify-content-end" id="navbarSupportedContent">
      		 
      
   <%
 response.setHeader("Cache-control","no-cache,no-store,must-revalidate");
   if(session.getAttribute("adminemail")==null)
   {
	   response.sendRedirect("AdminLogin.jsp");
   }
 %>   
   <%
     if(session.getAttribute("adminemail")==null){ %>
    <ul class="nav navbar-nav navbar-right ">
      <li><a class="nav-link"  href="signup.jsp"><span><i class="fa fa-sign-in" aria-hidden="true"></i></span> Sign Up</a></li>
      <li><a class="nav-link " href="login.jsp"><span><i class="fa fa-sign-in" aria-hidden="true"></i></span> Login</a></li>
    </ul>
		
    <% } else{ %>   
    <ul class="nav navbar-nav">
      	<li>
      		<form class="nav-link"  action="adminlogout"><span>
      		<input type="submit" value="Logout" name="logout">
      		</form>
   		</li>
    	</ul>   
    <% }%>
    </div>
 
</nav>

<div class="main col-3 fixed-top pt-5">
        <aside>
          <div class="sidebar left">
            <div class="user-panel">
              <div class="pull-left image">
                <img src="http://via.placeholder.com/160x160" class="rounded-circle" alt="User Image"><br>
              </div>
              <div class="pull-left info">
                <p> Hello  Admin!</p>
                <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
              </div>
            </div>
            <ul class="list-sidebar bg-defoult">
             <li >
             	 <a href="AdminDashboard.jsp" class="active"> <i class="fa fa-th-large"></i> <span class="nav-label"> Dashboards </span></a> 
            </li>
            <li> <a href="#"><i class="fa fa-diamond"></i> <span class="nav-label">Layouts</span></a> </li>
            <li> <a href="#" data-toggle="collapse" data-target="#products" class="collapsed" > <i class="fa fa-plus"></i> <span class="nav-label">Add</span> <span class="fa fa-chevron-left pull-right"></span> </a>
            <ul class="sub-menu collapse" id="products">
              <li><a href="AdminAddProduct.jsp">Add Product</a></li>
              
              <li><a href="AdminAddSubCategory.jsp">Add Sub-Category</a></li>
              <li><a href="AdminAddProductType.jsp">Add Product-Type</a></li>
            </ul>
          </li>
           <li> <a href="#" data-toggle="collapse" data-target="#e-commerce" class="collapsed" ><i class="fa fa-shopping-cart"></i> <span class="nav-label">E-commerce</span><span class="fa fa-chevron-left pull-right"></span></a>
        <ul  class="sub-menu collapse" id="e-commerce" >
          <li><a href="#"> Products grid</a></li>
          <li><a href="AdminShowProduct.jsp"> Products list</a></li>
          <li><a href="#"> Orders</a></li>
          <li><a href="#"> Sold Products</a></li>
        </ul>
      </li>
        <li> <a href="#" data-toggle="collapse" data-target="#e-commerce" class="collapsed" ><i class="fa fa-shopping-cart"></i> <span class="nav-label">Remove</span><span class="fa fa-chevron-left pull-right"></span></a>
        <ul  class="sub-menu collapse" id="e-commerce" >
          <li><a href="AdminRemoveProduct.jsp"> Remove Products</a></li>
          <li><a href="#"> Remove Category</a></li>
          <li><a href="#"> Remove Sub-Category</a></li>
          <li><a href="#"> Remove Product_type</a></li>
        </ul>
      </li>
          <li> <a href="#" data-toggle="collapse" data-target="#tables" class="collapsed" ><i class="fa fa-table"></i> <span class="nav-label">Tables</span><span class="fa fa-chevron-left pull-right"></span></a>
          <ul  class="sub-menu collapse" id="tables" >
            <li><a href="#"> Static Tables</a></li>
            <li><a href="#"> Data Tables</a></li>
            <li><a href="#"> Foo Tables</a></li>
            <li><a href="#"> jqGrid</a></li>
          </ul>
        </li>
      <li> <a href=""><i class="fa fa-tablet"></i> <span class="nav-label">Add Pages</span> </a></li>
      <li> <a href=""><i class="fa fa-pie-chart"></i> <span class="nav-label">Metrics</span> </a></li> 
      <li> <a href=""><i class="fa fa-key"></i> <span class="nav-label">Change Password</span> </a></li>
      

    </div>
    </aside>
    </div>
  
