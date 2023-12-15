<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/forgot.css">
</head>
<body>
	<div class="img">
		<img src="assets/signup.jpg" alt="">
	</div>
	<div class="form">
		<a href="login.jsp">
			<ion-icon name="chevron-back-outline"></ion-icon>Back
		</a>
		<h1>Forgot Password</h1>
		<p>Enter your registered email address, we'll send you a code to reset your password.</p>

		<form id="forgotForm" action="" method="post">

  			<label for="email">Email Address *</label>
  			<input type="email" id="email" name="email" required>

		  	<input type="submit" value="Recover Password">
		</form>

	</div>
	
	
	<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
	<script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
	
</body>
</html>