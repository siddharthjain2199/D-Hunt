<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>About Us</title>
	 <jsp:include page="Library.html"></jsp:include>
</head>
<body>

<jsp:include page="Header.jsp"></jsp:include>

<div class="container">
<section class="banner-section">
	   	   
</section>
<section class="post-content-section">
    <div class="container">

        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 post-title-block">
               
                <h1 class="text-center">About Us</h1>
                <ul class="list-inline text-center">
                   <li> Author | Category | Date |</li>
                </ul>
            </div>
            <div class="col-md-12 text-center">
                <jsp:include page="Aboutus.html"></jsp:include>
			</div>
   	</div> <!-- /container -->
 </div> 	
</div>  

	<jsp:include page="Footer.jsp"></jsp:include>

</body>
</html>