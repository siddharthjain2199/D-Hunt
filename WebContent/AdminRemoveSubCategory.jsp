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
<title>REMOVE SUB-CATEGORY</title>
 <jsp:include page="Library.html"></jsp:include>
</head>
<body>
  <jsp:include page="HeaderAdmin.jsp"></jsp:include>
  
  <div class="row justify-content-center align-items-center h-100">
	<div class="col col-sm-6 col-md-6 col-lg-4 col-xl-3">
	<form class="form-horizontal" method="post" action="adminRemoveSubCategory">
			<fieldset>

			<!-- Form Name -->
			<legend>REMOVE SUB-CATEGORY</legend>
						         
	
			<!-- Text input -->
			<div class="form-group">
			  <label class="control-label" for="subcategory_name">Sub-Category NAME</label>  
			  <div>
			    <select id="subcategory_id" name="subcategory_id" class="form-control" required>
			    	<option value="">Choose Sub-Category</option>
			    			 <%
								try { 
									Class.forName("com.mysql.jdbc.Driver");
								    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Company","root","root");
								    PreparedStatement ps = con.prepareStatement("select * from subcategory ;");
								    ResultSet rs =  ps.executeQuery();
								    
								    while(rs.next()){
								    	int subcategory_id = rs.getInt("subcategory_id");
								    	String subcategory_name = rs.getString("subcategory_name");
								 		 %>
										   <option value="<%=subcategory_id %>"><%=subcategory_name %></option>
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
			    <button id="removesubcategory" name="removesubcategory" class="btn btn-primary">REMOVE Sub-Category</button>
			   </div>
			</div>
			<div class="form-group">
			  <a href="AdminAddSubCategory.jsp">ADD SUB-CATEGORY</a>
			  
			</div>
			</fieldset>
	</form>
	</div>
	</div>
  
  <jsp:include page="FooterAdmin.jsp"></jsp:include>
</body>
</html>