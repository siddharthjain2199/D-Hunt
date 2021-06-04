<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>REMOVE Product TYpe</title>
 <jsp:include page="Library.html"></jsp:include>
</head>
<body>
  <jsp:include page="HeaderAdmin.jsp"></jsp:include>
<%
  response.setHeader("Cache-control","no-cache,no-store,must-revalidate");
   if(session.getAttribute("adminemail")==null)
   {
	   response.sendRedirect("Adminlogin.jsp");
   }
 %>
  <div class="row justify-content-center align-items-center h-100">
	<div class="col col-sm-6 col-md-6 col-lg-4 col-xl-3">
	<form class="form-horizontal" method="post" action="adminRemoveProductType">
			<fieldset>

			<!-- Form Name -->
			<legend>REMOVE Product Type</legend>
						         
	
			<!-- Text input -->
			<div class="form-group">
			  <label class="control-label" for="product_type_name">Product Type NAME</label>  
			  <div>
			    <select id="product_type_id" name="product_type_id" class="form-control" required>
			    	<option value="">Choose Product Type</option>
			    			 <%
								try { 
									Class.forName("com.mysql.jdbc.Driver");
								    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Company","root","root");
								    PreparedStatement ps = con.prepareStatement("select * from product_type;");
								    ResultSet rs =  ps.executeQuery();
								    
								    while(rs.next()){
								    	int product_type_id = rs.getInt("product_type_id");
								    	String product_type_name = rs.getString("product_type_name");
								 		 %>
										   <option value="<%=product_type_id %>"><%=product_type_name %></option>
										 <% 	}
								} catch (Exception e) {
									// TODO Auto-generated catch block
									e.printStackTrace();
								}		
							  %>   	
			    	</select>
			  </div>
			</div>
		
			
			<!-- Button -->
			<div class="form-group">
			   <div>
			    
			   </div>
			   <div>
			    <button id="removeproducttype" name="removeproducttype" class="btn btn-primary">REMOVE Product Type</button>
			   </div>
			</div>
			<div class="form-group">
			  <a href="AdminAddProductType.jsp">ADD SUB-CATEGORY</a>
			  
			</div>
			</fieldset>
	</form>
	</div>
	</div>
  
  <jsp:include page="FooterAdmin.jsp"></jsp:include>
</body>
</html>