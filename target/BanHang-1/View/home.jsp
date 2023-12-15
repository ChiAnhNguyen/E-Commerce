<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="<c:url value = "css/home.css" /> " rel="stylesheet" type="text/css" >
</head>
<body>

    <!-- header -->
    <header>
        <nav>

            <!-- logo -->
            <div class="logo"><img src="assets/Logo.png" alt=""></div>


            <!-- navigation -->
            <ul>
                <li><a href="">Home</a></li>
                <li><a href="">Shop</a></li>
                <li style="display: none"><a href="">My Account</a></li>
                <li style="display: none"><a href="" ><ion-icon style="font-size: 30px; margin-top: 10px" name="cart-outline"></ion-icon></a></li>
                <li>
	            	<button >
	            	<a href ="login.jsp">Login</a> 
	            	</button>
                </li>
            </ul>
        </nav>
    </header>


    <!-- section hero -->


    <section id="hero">
        <h1>Unleash Innovation<br> in Every Byte.</h1>
        <p>Explore a World of Cutting-Edge Tech</p>
        <button><a href="#">Shop Now</a></button>
        
    </section>


    <!-- categories -->


    <section id="categories">

        <!-- title -->

        <h2>Shop by Categories</h2>

        <!-- card items -->
        <div class="cate_select">

            
            <div class="cate_item">
                <img src="assets/sport-shoes.png" alt="">
                <button>
                    <a href="">Sport Shoes</a>
                </button>
            </div>

            <div class="cate_item">
                <img src="assets/high heels.png" alt="">
                <button>
                    <a href="">High heels</a>
                </button>
            </div>

            <div class="cate_item">
                <img src="assets/dress-shoes.png" alt="">
                <button>
                    <a href="">Dress Shoes</a>
                </button>
            </div>

            <div class="cate_item">
                <img src="assets/travel-shoes.png" alt="">
                <button>
                    <a href="">Travel Shoes</a>
                </button>
            </div>

            <div class="cate_item">
                <img src="assets/fashion-shoes.png" alt="">
                <button>
                    <a href="">Fashion Shoes</a>
                </button>
            </div>

            <div class="cate_item">
                <img src="assets/sandal.png" alt="">
                <button>
                    <a href="">Sandal</a>
                </button>
            </div>
        </div>
    </section>


    <!-- new collections -->
    <section id="new_collections">
        <h2>New Collection</h2>
        <p>Showing 1 - 3 of 15 Product</p>
        <div class="new_select">
            <div class="card_item vans">
                <h3>Vans Old Skool</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
                <div class="product">
                	<img src="assets/vans.png" alt="">
                </div>
                <div class="price">
                	<p>$60.00</p>
                	<button><a href="">View infor</a></button>	
                </div>
            </div>

            <div class="card_item nike">
                <h3>Nike Air</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
                <div class="product">
                	<img src="assets/nike-air.png" alt="">
                </div>
                <div class="price">
                	<p>$60.00</p>
                	<button><a href="">View infor</a></button>
                </div>
            </div>

            <div class="card_item sandal">
                <h3>Supper Sandal</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
                <div class="product">
                	<img src="assets/sandal (2).png" alt="">
                </div>
                <div class="price">
                	<p>$60.00</p>
                	<button><a href="">View infor</a></button>
                </div>
            </div>
        </div>

        <div class="view_all"><a href="">View All</a></div>
    </section>


    <!-- deals -->
    <section class="deals">
        <div class="deals_infor">
            <h2>Deals of the Month</h2>
            <p>Get ready for a shopping experience like never before with our Deals of the Month!
            Every purchase comes with exclusive perks and offers, making this month a celebration of savvy choices and amazing deals. Don't mis out!
            </p>
            <button><a href="">View Product</a></button>
        </div>
        <img src="" alt="">
    </section>


    <!-- infor -->
    <section class="infor">
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
        <img src="" alt="" class="logo">
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