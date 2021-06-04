<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SignUp</title>
	<jsp:include page="Library.html"></jsp:include>
</head>
<body>
 <jsp:include page="Header.jsp"></jsp:include>
 
 
 <!--****************************************************** Sigup PAge ***************************************************** -->
  <div class="signup-form">
	  <form class="box" action="signup">
	     <h1>SIGNUP</h1>
	      <input type="text" name="uname" placeholder="Enter Username" required><br><br>
	      <input type="email" name="email" placeholder="Enter email" required><br><br>
	      <input type="text" name="mobile" maxlength="10" placeholder="Enter mobile number" required><br><br>
	      <input type="password" id="password" name="password" placeholder="Enter password" required><br>
	      <input type="checkbox" onclick="showPassword()">Show Password<br>
	      <p><input type="checkbox" name="true" required>I accepted the <a href="term.jsp">T&C</a>.</p>
	      <input type="submit" name="submit" value="Signup"><br><br>
		  <div>
			      <label>
			      	<a href="login.jsp">Already Have an account...!</a>
			  	  </label>
	  	  </div>
	  </form>
  </div>
  
 <jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>