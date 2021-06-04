<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ADD PRODUCT TYPE</title>
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
  
  <!-- ************************************ADD CATEGORY PAGE *******************************************-->
  
  <div class="row justify-content-center align-items-center h-100">
	<div class="col col-sm-6 col-md-6 col-lg-4 col-xl-3">
	<form class="form-horizontal" method="post" action="adminAddProductType">
			<fieldset>

			<!-- Form Name -->
			<legend>ADD PRODUCT TYPE</legend>
						         
			
			<!-- Text input -->
			<div class="form-group">
			  <label class="control-label" for="product_type_name">PRODUCT TYPE NAME</label>  
			  <div>
			  <input id="product_type_name" name="product_type_name" placeholder="PRODUCT TYPE NAME" class="form-control input-md" required type="text">  
			  </div>
			</div>
			
			
			<!-- Button -->
			<div class="form-group">
			   <div>
			    
			   </div>
			   <div>
			    <button id="addproducttype" name="addproducttype" class="btn btn-primary">ADD PRODUCT TYPE</button>
			   </div>
			</div>
			
			<div class="form-group">
			  <a href="AdminRemoveProductType.jsp">REMOVE PRODUCT TYPE</a>
			</div>
			</fieldset>
	</form>
	</div>
	</div>
  
  
  
  
  <jsp:include page="FooterAdmin.jsp"></jsp:include>

</body>
</html>