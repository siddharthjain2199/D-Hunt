<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>AdminAddProduct</title>

   <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="ISO-8859-1">
        <link rel="stylesheet" type="text/css" href="css/stylesheet.css">
    <script type="text/javascript" src="javaScript/main.js"></script>
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
   
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <link rel="shortcut icon" href="image/logo/website_logo.png">
    
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    
    
</head>
<body>
   
    <jsp:include page="HeaderAdmin.jsp"></jsp:include> 
	 
	<%
  response.setHeader("Cache-control","no-cache,no-store,must-revalidate");
   if(session.getAttribute("adminemail")==null)
   {
	   response.sendRedirect("AdminLogin.jsp");
   }
 %>
 <div class = "container main col-8 pt-5">
	<%
	
	response.setHeader("Cache-control","no-cache,no-store,must-revalidate");
	if(session.getAttribute("product_name")!=null){ %>
			
			<div class="alert alert-success alert-dismissible">
			<button type="button" class="close" data-dismiss="alert">&times;</button>
		    <strong>Success!</strong> Successfully Added Product.
		  	</div>
   <%--  <%}else if (session.getAttribute("product_name")==null){%>
	   <div class="alert alert-danger">
	    <strong>Danger!</strong> This alert box could indicate a dangerous or potentially negative action.
	  </div>   --%>
  <% 	} %>
  <div class="row justify-content-center align-items-center h-100">
	<div class="col col-sm-6 col-md-6 col-lg-4 col-xl-8">
	<form class="form-horizontal" method="post" action="adminAddProduct" enctype="multipart/form-data">
			<fieldset>

			<!-- Form Name -->
			<legend>ADD PRODUCTS</legend>
						         
		   <!-- Select Basic -->
			<div class="form-group">
			  <label class="control-label" for="product_category_id">CATEGORY</label>
			  <div>
			    <select id="product_category_id" name="product_category_id" class="form-control" onchange="populate(this.id,'sub_category')" required>
			    	<option value="choose_category">Choose category</option>
			    	<option value="1">Men</option>
			    	<option value="2">Women</option>
			    	<option value="3">Boys</option>
			    	<option value="4">Girls</option>
			    </select>
			  </div>
			</div>
			
			  <!-- Select Basic -->
			<div class="form-group">
			  <label class="control-label" for="product_subcategory_id">SUB-CATEGORY</label>
			  <div>
			    <select id="product_subcategory_id" name="product_subcategory_id" class="form-control" onchange="populate1(this.id,'p_category')" required></select>
			  </div>
			</div>
			
			  <!-- Select Basic -->
			<div class="form-group">
			  <label class="control-label" for="product_type_id">PRODUCT CATEGORY</label>
			  <div>
			    <select id="product_type_id" name="product_type_id" class="form-control" required></select>
			     </div>
			</div> 
			
		<!-- Text input -->
			<div class="form-group">
			  <label class="control-label" for="product_name">PRODUCT NAME</label>  
			  <div>
			  <input id="product_name" name="product_name" placeholder="PRODUCT NAME" class="form-control input-md" required type="text">  
			  </div>
			</div>
			
			<!-- Text input-->
			<div class="form-group">
			  <label class="control-label" for="product_brand">BRAND</label>  
			  <div>
			  <input id="product_brand" name="product_brand" placeholder="PRODUCT BRAND" class="form-control input-md" required="" type="text">  
			  </div>
			</div>

			<!-- Text input-->
			<div class="form-group">
			  <label class="control-label" for="product_desc">PRODUCT DESCRIPTION</label>  
			  <div>
			  <textarea id="product_desc" name="product_desc" placeholder="PRODUCT DESCRIPTION" class="form-control input-md" required="" rows="" cols=""></textarea>
			  </div>
			</div>



			<!-- number input-->
			<div class="form-group">
			  <label class="control-label" for="product_quantity">QUANTITY</label>  
			  <div>
			  <input id="product_quantity" name="product_quantity" placeholder="QUANTITY" class="form-control input-md" required="" type="number" min="1" max ="20">
			  </div>
			</div>
			
			<!-- Text input-->
			<div class="form-group">
			  <label class=" control-label" for="product_price">PRICE</label>  
			  <div>
			
			  <input id="product_price" name="product_price" placeholder="PRICE" class="form-control input-md" required="" type="text">
			    
			  </div>
			</div>
			  
			 <!-- File Button --> 
			<div class="form-group">
			  <label class="control-label" for="product_image">PRODUCT IMAGES</label>
			  <div>
			    <input id="product_image" name="product_image" class="input-file" type="file">
			  </div><br>
			  <div>
			    <input id="product_image2" name="product_image2" class="input-file" type="file">
			  </div><br>
			  <div>
			    <input id="product_image3" name="product_image3" class="input-file" type="file">
			  </div><br>
			 
			</div>
			
			<!-- Button -->
			<div class="form-group">
			   <div>
			    
			   </div>
			   <div>
			    <button id="addproduct" name="addproduct" class="btn btn-primary">ADD PRODUCT</button>
			   </div>
			</div>
			
			</fieldset>
	</form>
	</div>
	</div>
</div>	
<jsp:include page="FooterAdmin.jsp"></jsp:include>
</body>
</html>
