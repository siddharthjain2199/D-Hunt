<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>profile</title>
 <jsp:include page="Library.html"></jsp:include>
</head>
<body>
 <%
  response.setHeader("Cache-control","no-cache,no-store,must-revalidate");
   if(session.getAttribute("email")==null)
   {
	   response.sendRedirect("login.jsp");
   }
 %>
   
<jsp:include page="Header.jsp"></jsp:include>
<h1>Succesfully Login ${email}</h1>
  <jsp:include page="Slider.jsp"></jsp:include>


<!-- ********************************************Cloths Images Start******************************************** -->
<div class="container">
  <h2>Best Seller</h2>
  <div class="row">
   <%
   try { 
		Class.forName("com.mysql.jdbc.Driver");
	    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Company","root","root");
	    PreparedStatement ps = con.prepareStatement("select product_id,product_name,product_brand,product_desc,product_price,product_image from product;");
	    ResultSet rs =  ps.executeQuery();
	    while(rs.next()){
	    	int product_id = rs.getInt("product_id");
	    	String product_name = rs.getString("product_name");
	    	String product_image = rs.getString("product_image");
	    	String product_desc = rs.getString("product_desc");
	    	String product_price = rs.getString("product_price");
           
	    	/* for(int i = 1; i < p_id; i+=1) { */  %>
   				 <div class="col-md-4">
      				<div class="thumbnail">
       					 <a href="UserShowProduct.jsp" target="_blank">
        				  <img src="image\product\<%=product_image %>" alt="Lights" style="width:100%">
          					<div class="caption">
         					   <p style="text-align: center;"><b><%=product_name %><br><br><%=product_desc %><br><br><%=product_price %></b></p>
         					</div>
       					  </a>
    			 </div>
    </div>
   
    <% /* }  */
	    	}
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}	
    %>
</div>

<jsp:include page="Footer.jsp"></jsp:include>
   
</body>
</html>