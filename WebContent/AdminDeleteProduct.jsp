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
<title>Delete product</title>
<jsp:include page="Library.html"></jsp:include>
</head>
<body>
	<jsp:include page="HeaderAdmin.jsp"></jsp:include>
	

 	<%
 	
 	try {
		int product_id = Integer.parseInt(request.getParameter("product_id"));
		Class.forName("com.mysql.jdbc.Driver");
	    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Company","root","root");
	    PreparedStatement ps = con.prepareStatement("delete from product where product_id = ?");
	    ps.setInt(1,product_id);
	    ps.executeUpdate();
	    response.sendRedirect("AdminShowProduct.jsp");
} catch (Exception e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}

 
 
 
 %>
	<jsp:include page="FooterAdmin.jsp"></jsp:include>
</body>
</html>