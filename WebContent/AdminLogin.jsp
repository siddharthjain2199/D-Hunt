<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AdminLogin</title>
 <jsp:include page="Library.html"></jsp:include>
</head>
<body>
  <jsp:include page="Header.jsp"></jsp:include>

    <!-- login form -->
<div class="login-form">
    	<form class="box" action="admin_login">
		      <h1>ADMIN LOGIN</h1>
		    	 <input type="text" name="adminemail" placeholder="Email Id" required><br><br>
		    	<input type="password" id="password" name="adminpassword" placeholder="password" required><br><br>
		    	<input type="checkbox" onclick="showPassword();">Show Password<br><br>
		    	 <input type="submit" name="login" value="Login"><br><br> 	 
		    <div> 
		    <label>
		     	<a href="forgot.jsp">forgot password ?</a>
		     </label>
		     </div>
  		 </form>
	  </div>

	<jsp:include page="FooterAdmin.jsp"></jsp:include>

</body>
</html>