<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Foogot</title>
	<jsp:include page="Library.html"></jsp:include>
</head>
<body>
  <jsp:include page="Header.jsp"></jsp:include>
  
  <!-- **********************************************************Forgot Form************************************************ -->
   <form class="box" action="login" method="post">
     <h2>Forgot Password</h2>
     <input type="text" name="email" placeholder="Email Id"><br><br>
     <input type="submit" name="" value="Reset password"><br><br>
     <a href="login.html">Login</a><strong>New to D-Hunt</strong>
     <a href="signup.jsp" id = "forSignup">Create Account</a>
   </form>
   
   
  <jsp:include page="Footer.jsp"></jsp:include>  
   
</body>
</html>