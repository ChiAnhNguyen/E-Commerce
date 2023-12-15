<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Shop</title>
<link rel="stylesheet" href="css/shop.css">
<link rel="icon" href="assets/icon.png" type="image/x-icon">
</head>
<body>
	    <!-- header -->
    <header>
        <nav>

            <!-- logo -->
            <div class="logo"><img src="assets/Logo.png" alt=""></div>


            <!-- navigation -->
            <ul>
                <li><a href="/BanHang/home">Home</a></li>
                <li><a href="./shop.jsp">Shop</a></li>
                <li style="display: none"><a href="">My Account</a></li>
                <li style="display: none"><a href="./View/cart.jsp" ><ion-icon style="font-size: 30px; margin-top: 10px" name="cart-outline"></ion-icon></a></li>
                <li><button><a href="/BanHang/View/login.jsp">Login</a></button></li>
            </ul>
        </nav>
    </header>
    
    
    <!-- footer -->
    <footer>
        <img src="assets/Logo-white.png" alt="" class="logo">
        <p>2023 Logo. All right are reserved</p>
        <div class="social">
            <ion-icon name="logo-facebook"></ion-icon>
            <ion-icon name="logo-instagram"></ion-icon>
            <ion-icon name="logo-twitter"></ion-icon>
        </div>
    </footer>
    
    
    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
	<script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
</body>
</html>