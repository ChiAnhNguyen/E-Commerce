<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/signup.css">
</head>
<body>
	<div class="img">
		<img src="assets/signup.jpg" alt="">
	</div>
	<div class="form">
		<h1>Create Account</h1>
		<p>Please enter details</p>

		<form id="registeredForm" action="" method="post">
  			<label for="fullname">Full Name *</label>
  			<input type="text" id="fullname" name="fullname" required>

  			<label for="email">Email Address *</label>
  			<input type="email" id="email" name="email" required>

		  	<label for="password">Password *</label>
		  	<input type="password" id="password" name="password" required>
		
		  	<label for="confirm-password">Confirm Password *</label>
		  	<input type="password" id="confirm-password" name="confirm-password" required>
		
		  	<input type="submit" value="Sign Up">
		</form>
		<div class="exception">
    			<a href="login.jsp">Already have an account?Login</a>
    		</div>

	</div>
</body>
</html>