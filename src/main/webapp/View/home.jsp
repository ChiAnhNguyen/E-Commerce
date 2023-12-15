<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<link rel="stylesheet" href="./View/css/home.css">
<link rel="icon" href="assets/icon.png" type="image/x-icon">
</head>
<style>
	#deals {
		width: 100%;
		height: 100vh;
		padding-left: 190px;
		padding-right: 190px;
		display: flex;
		flex-direction: row;
		justify-content: center;
		align-items: center;
	}
	
	#deals > .deals_infor {
		height: 100%;
		width: calc(100% - 400px);	
	}
	
	#deals > .deals_infor > h2 {
		font-size: 30px;
		margin-bottom: 20px;
		margin-top: 50px;
	}
	
	#deals > .deals_infor > p {
		font-size: 15px;
		margin-bottom: 50px
	}
	
	#deals > .deals_infor > .deals_countdown {
		display: flex;
		flex-direction: row;
		justify-content: space-around;
		align-items: center;
		margin-bottom: 50px;	
		margin-left: -20px;
	}
	
	#deals > .deals_infor > .deals_countdown > div {
		width: 80px;
		height: 100px;
		border: 1px solid black;
		display: flex;
		flex-direction: column;
		justify-content: center;
		align-items: center;
		font-size: 40px;
		font-weight: bold;
		border-radius: 10px;
	}
	
	#deals > .deals_infor > .deals_countdown > div > span {
		font-size: 15px;
	}
	
	#deals > .deals_infor > button {
		width: 150px;
		height: 50px;
		background-color: black;
		border-radius: 15px; 
		font-size: 15px;
		border: none;
	}
	
	#deals > .deals_infor > button > a {
		color: white;
		text-decoration: none;
	}
	
	#deals > img {
		width: 400px;
		height: 435px;
	}
	
	
	/*Infor*/
	
	#infor {
	width: 100%;
	height: 50vh;
	padding-left: 190px;
	padding-right: 190px;
	display: flex;
	flex-direction: row;
	justify-content: space-around;
	align-items: center;
	}
	
	#infor > .infor_item {
		width: 266px;
		height: 150px;
		border: none;
		padding-left: 10px;
		padding-top: 10px;
		border-radius: 10px;
		transition: all .5s;
	}
	
	#infor > .infor_item:hover {
		box-shadow: 0 0 10px rgba(0,0,0, 0.7);
	}
	
	#infor > .infor_item > ion-icon {
		font-size: 40px;
	}
	
	#infor > .infor_item > p {
		font-weight: bold;
		font-size: 20px;
	}
	
	#infor > .infor_item > span {
		font-size: 15px;
	}
	
	/* footer */
	
	footer {
		width: 100%;
		height: 10vh;
		background-color: black;
		display: flex;
		flex-direction: row;
		justify-content: space-around;
		align-items: center;
	}
	
	footer > img {
		width: 100px;
		object-position: center;
		object-fit: cover;
	}
	
	footer > p {
	color: white;
	}
	
	footer > .social {
		display: flex;
		flex-direction: row;
		justify-content: space-around;
		align-items: center;
	}
	
	footer > .social > ion-icon {
		color: white;
		margin-left: 15px;
		margin-right: 15px;
		font-size: 20px;
	}
	
</style>
<body>

    <!-- header -->
    <header>
        <nav>

            <!-- logo -->
            <div class="logo"><img src="./View/assets/Logo.png" alt=""></div>


            <!-- navigation -->
            <ul>
                <li><a href="">Home</a></li>
                <li><a href="./View/shop.jsp">Shop</a></li>
                <li style="display: none"><a href="">My Account</a></li>
                <li style="display: none"><a href="./View/cart.jsp" ><ion-icon style="font-size: 30px; margin-top: 10px" name="cart-outline"></ion-icon></a></li>
                <li><button><a href="./View/login.jsp">Login</a></button></li>
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
                <img src="./View/assets/sport-shoes.png" alt="">
                <button>
                    <a href="">Sport Shoes</a>
                </button>
            </div>

            <div class="cate_item">
                <img src="./View/assets/high heels.png" alt="">
                <button>
                    <a href="">High heels</a>
                </button>
            </div>

            <div class="cate_item">
                <img src="./View/assets/dress-shoes.png" alt="">
                <button>
                    <a href="">Dress Shoes</a>
                </button>
            </div>

            <div class="cate_item">
                <img src="./View/assets/travel-shoes.png" alt="">
                <button>
                    <a href="">Travel Shoes</a>
                </button>
            </div>

            <div class="cate_item">
                <img src="./View/assets/fashion-shoes.png" alt="">
                <button>
                    <a href="">Fashion Shoes</a>
                </button>
            </div>

            <div class="cate_item">
                <img src="./View/assets/sandal.png" alt="">
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
                	<img src="./View/assets/vans.png" alt="">
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
                	<img src="./View/assets/nike-air.png" alt="">
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
                	<img src="./View/assets/sandal (2).png" alt="">
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
    <section id="deals">
        <div class="deals_infor">
            <h2>Deals of the Month</h2>
            <p>Get ready for a shopping experience like never before with our Deals of the Month!<br>
            Every purchase comes with exclusive perks and offers, making this month a celebration<br> of savvy choices and amazing deals. Don't mis out!
            </p>
            <div class="deals_countdown">
            	<div id="days">7
            		<span>Days</span>
            	</div>
		        <div id="hours">10
		        	<span>Hours</span>
		        </div>
		        <div id="minutes">07
		        	<span>Mins</span>
		        </div>
		        <div id="seconds">10
		        	<span>Sec</span>
		        </div>
    		</div>
            <button><a href="">View Product</a></button>
        </div>
        <img src="./View/assets/img-ads.png" alt="">
    </section>


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
    
    <script>
        document.addEventListener('DOMContentLoaded', function () {
        	const daysElement = document.getElementById('days');
            const hoursElement = document.getElementById('hours');
            const minutesElement = document.getElementById('minutes');
            const secondsElement = document.getElementById('seconds');
			
            let days = 7;
            let hours = 10;
            let minutes = 7;
            let seconds = 10; // Set initial value for seconds

            function updateCountdown() {
                seconds--;
                if (seconds < 0) {
                    seconds = 59;
                    minutes--;
                    if (minutes < 0) {
                        minutes = 59;
                        hours--;
                        if (hours < 0) {
                            // Countdown finished
                            hours = 24;
                            days--;
                            if (days < 365) {
                            	days = 7;
                            }
                            minutes = 0;
                            seconds = 0;
                            alert("Countdown finished!");
                        }
                    }
                }

                // Update the display
                hoursElement.innerHTML = hours.toString().padStart(2, '0') + '<span>Hours</span>';
                minutesElement.innerHTML = minutes.toString().padStart(2, '0') + '<span>Mins</span>';
                secondsElement.innerHTML = seconds.toString().padStart(2, '0') + '<span>Sec</span>';
            }

            // Update countdown every second
            setInterval(updateCountdown, 1000);
        });
    </script>
    


    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
	<script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
</body>
</html>