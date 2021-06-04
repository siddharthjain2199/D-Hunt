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
	<title>Show All Product</title>
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
 <div class="container table-responsive col-8">
  <table class="table table-bordered">
  <thead>
     <tr class= "text-center">
       <th>Product Id</th>
       <th>Product Name</th>
       <th>Product Image</th>
       <th>Product Brand</th>
       <th>Product Quantity</th>
       <th>Product Price</th>
       <th>Product desc</th>
       <th>Option</th> 
     </tr>
   </thead>
     <tbody>
	 <tr class= "text-center">
 <%
	try { 
		Class.forName("com.mysql.jdbc.Driver");
	    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Company","root","root");
	    PreparedStatement ps = con.prepareStatement("select * from product;");
	    ResultSet rs = ps.executeQuery();
		while(rs.next()){
			String product_id = rs.getString("product_id");
	    	String product_name = rs.getString("product_name");
	    	String product_image = rs.getString("product_image");
	    	String product_brand = rs.getString("product_brand");
	    	String product_desc = rs.getString("product_desc");
	    	String product_price = rs.getString("product_price");
	    	String product_quantity = rs.getString("product_quantity");
	    %>
	      <!-- **************************************For Showing All Product in Table Category Wise***************************************************** -->
		<tr class= "text-center">
       <td><%=product_id %></td>
       <td><%=product_name %></td>
       <td><img id="item-display" src="image\product\<%=product_image %>" alt="image" style="max-height: 100px;"></img></td>
       <td><%=product_brand %></td>
       <td><%=product_quantity %></td>
       <td><%=product_price %></td>
       <td><%=product_desc%></td>
       <td>
       <a onclick="ConfirmDelete()" href="AdminDeleteProduct.jsp?product_id=<%=product_id%>"><button  class="btn btn-danger" ><span><i class="fa fa-trash-o"></i></span></button></a>
         <a href="AdminEditProduct.jsp?product_id=<%=product_id%>"><button class="btn btn-primary"><span><i class="fa fa-cog"></i></span></button></a>
       <%--<a href="adminDisableProduct"><button class="btn btn-light"><span><i class="fa fa-ban"></i></span></button></a> --%>
       </td>
     </tr>
     <%}%>
     
     </tbody>
  </table>
  </div>
  <%
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}		

 
 
 
 %>
  
  <jsp:include page="FooterAdmin.jsp"></jsp:include>
</body>
</html>
     
     
     
     
     