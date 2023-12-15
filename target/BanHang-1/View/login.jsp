<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="<c:url value = "css/home.css" /> " rel="stylesheet" type="text/css" >
</head>
<body>
		<div class="img">
			<img alt="" src="assets/login.jpg">
		</div>
		<div class="form">
			<h1>Welcome</h1>
			<p>Please login here</p>
			<form id="loginForm" action="" method="post">
        		<label for="email">Email Address *</label>
        		<input type="email" id="email" name="email" required>

        		<label for="password">Password *</label>
        		<input type="password" id="password" name="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Phải có ít nhất 8 ký tự, bao gồm chữ số, chữ hoa và chữ thường" required>

        		<button type="submit">Login</button>
    		</form>
    		<div class="exception">
    			<a href="signup.jsp">Create an account?</a>
    			<a href="forgot.jsp">Forgot password?</a>
    		</div>
		</div>
</body>
</html>