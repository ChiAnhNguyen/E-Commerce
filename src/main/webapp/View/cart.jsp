<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cart</title>
<link rel="icon" href="assets/icon.png" type="image/x-icon">
<link rel="stylesheet" href="css/cart.css">
</head>
<body>
	<!-- header -->
    <header>
        <nav>

            <!-- logo -->
            <div class="logo"><img src="assets/Logo.png" alt=""></div>


            <!-- navigation -->
            <ul>
                <li><a href="./home.jsp">Home</a></li>
                <li><a href="shop.jsp">Shop</a></li>
                <li><a href="myAccount.jsp">My Account</a></li>
                <li><a href="cart.jsp" ><ion-icon style="font-size: 30px; margin-top: 10px" name="cart-outline"></ion-icon></a></li>
            </ul>
        </nav>
    </header>
    
    <!-- Cart -->
    
    <div class="container">
    	<h2>Cart</h2>
    	
    	<div class="cart_item">
    		<table class="check_item">
			  <tr>
			    <th>Cột 1</th>
			    <th>Cột 2</th>
			    <th>Cột 3</th>
			  </tr>
			  <tr>
			    <td>Hàng 1, cột 1</td>
			    <td>Hàng 1, cột 2</td>
			    <td>Hàng 1, cột 3</td>
			  </tr>
			  <tr>
			    <td>Hàng 2, cột 1</td>
			    <td>Hàng 2, cột 2</td>
			    <td>Hàng 2, cột 3</td>
			  </tr>
			</table>

    		<table class="check_total">
			    <tr>
			        <th style="font-weight: bold">Summary</th>
			    </tr>
			    <tr>
			        <td>Delivery Charge</td>
			        <td>
			        	<p>$0</p>
			        </td>
			    </tr>
			    <tr>
			        <td style="font-weight:bold">Grand Total:</td>
			    </tr>
			    <tr>
			    	<td>
			    		<button><a href="">Procced to Checkout</a></button>
			    	</td>
			        
			    </tr>
			</table>
    	</div>
    	<div class="shopping">
    		<div class="title">
    			<p>Continue Shopping</p>
    			<span>Discover more products that are perfect for gift, for your wardrobe, or a unique addition to your collection.</span>
    		</div>
    		<button><a href="">Continue Shopping</a></button>
    	</div>
    </div>
    
    <!-- infor -->
    <section id="infor">
        <div class="infor_item">
            <ion-icon name="layers-outline"></ion-icon>
            <p>Free Shipping</p>
            <span>Free shipping for order above $150</span>
        </div>

        <div class="infor_item">
            <ion-icon name="cash-outline"></ion-icon>
            <p>Money Guarantee</p>
            <span>Within 30 days for an exchange</span>
        </div>

        <div class="infor_item">
            <ion-icon name="headset-outline"></ion-icon>
            <p>Online Support</p>
            <span>24 hours a day, 7 days a week</span>
        </div>

        <div class="infor_item">
            <ion-icon name="wallet-outline"></ion-icon>
            <p>Flexible Payment</p>
            <span>Pay with multiple credit cards</span>
        </div>
    </section>


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