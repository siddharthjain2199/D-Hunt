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
	<title>Admin Edit Product</title>
	<jsp:include page="Library.html"></jsp:include>
</head>
<body>
	<jsp:include page="HeaderAdmin.jsp"></jsp:include>
 	<%
 
 	try { 
 		int product_id = Integer.parseInt(request.getParameter("product_id")); 
		Class.forName("com.mysql.jdbc.Driver");
	    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Company","root","root");
	    PreparedStatement ps = con.prepareStatement("select * from product where product_id = ?;");
	    ps.setInt(1,product_id);
	    ResultSet rs = ps.executeQuery();
		while(rs.next()){
	    	String product_name = rs.getString("product_name");
	    	String product_image = rs.getString("product_image");
	    	String product_image2 = rs.getString("product_image2");
	    	String product_image3 = rs.getString("product_image3");
	    	String product_brand = rs.getString("product_brand");
	    	String product_desc = rs.getString("product_desc");
	    	String product_price = rs.getString("product_price");
	    	String product_quantity = rs.getString("product_quantity");
 	%>
 	 <div class="row justify-content-center align-items-center h-100">
	<div class="col col-sm-6 col-md-6 col-lg-4 col-xl-3">
	<form class="form-horizontal" method="post" action="adminEditProduct" enctype="multipart/form-data">
			<fieldset>

			<!-- Form Name -->
			<legend>Edit PRODUCTS</legend>
		<!-- Text input -->
			<div class="form-group">
			  <label class="control-label" for="product_id">PRODUCT ID</label>  
			  <div>
			  <input id="product_id" name="product_id" value="<%=product_id %>" placeholder="PRODUCT ID" class="form-control input-md" required type="text">  
			  </div>
			</div>				         
		
		<!-- Text input -->
			<div class="form-group">
			  <label class="control-label" for="product_name">PRODUCT NAME</label>  
			  <div>
			  <input id="product_name" name="product_name" value="<%=product_name %>" placeholder="PRODUCT NAME" class="form-control input-md" required type="text">  
			  </div>
			</div>
			
			<!-- Text input-->
			<div class="form-group">
			  <label class="control-label" for="product_brand">BRAND</label>  
			  <div>
			  <input id="product_brand" name="product_brand"  value="<%=product_brand %>"placeholder="PRODUCT BRAND" class="form-control input-md" required="" type="text">  
			  </div>
			</div>



			<!-- number input-->
			<div class="form-group">
			  <label class="control-label" for="product_quantity">QUANTITY</label>  
			  <div>
			  <input id="product_quantity" name="product_quantity" value="<%=product_quantity %>"placeholder="QUANTITY" class="form-control input-md" required="" type="number" min="1" max ="20">
			  </div>
			</div>
			
			<!-- Text input-->
			<div class="form-group">
			  <label class=" control-label" for="product_price">PRICE</label>  
			  <div>
			
			  <input id="product_price" name="product_price" value="<%=product_price %>" placeholder="PRICE" class="form-control input-md" required="" type="text">
			    
			  </div>
			</div>
			  
			
			<!-- Button -->
			<div class="form-group">
			   <div>
			    
			   </div>
			   <div>
			    <button id="editproduct" name="editproduct" class="btn btn-primary">PRODUCT SUBMIT</button>
			   </div>
			</div>
			</fieldset>
	</form>
	</div>
	</div>
	<%}
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}		

 
 
 
 %>
	<jsp:include page="FooterAdmin.jsp"></jsp:include>
</body>
</html>