<%@ page import="java.sql.*"%>
<%@ page import="javax.servlet.http.*,java.lang.*"%>
<%
    response.setHeader("Cache-Control","no-cache, no-store, must-revalidate"); // HTTP 1.1
    if (session.getAttribute("success-login-uname")==null){
        response.sendRedirect("http://localhost:8081/OpticLens/login.html");
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Favicon -->
    <link rel="shortcut icon" href="images/logo/eyeglasses (1).png" type="image/x-icon">
    <!-- https://swiperjs.com -->
    <link
      rel="stylesheet"
      href="https://unpkg.com/swiper/swiper-bundle.min.css"
    />
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <!-- icons -->
    <link rel="stylesheet" href="http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Local CSS -->
    <link rel="stylesheet" href="http://localhost:8081/OpticLens/styles/style.css">
    <!-- Font awesome cdn -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <!-- Local javascript -->
    <script src="js/script.js" defer></script>
    <title>Home | Optic Lens</title>
</head>
<body>
    <!-- header section -->
    <header class="header">
        <a href="index.jsp" class="logo"><img src="images/logo/eyeglasses_header.png" alt="">&nbsp;Optic Lens</a>
        <nav class="navbar">
            <ul>
                <li style="background-color: #eee;font-weight: 900;"><a href="index.jsp" class="active">Home</a></li>
                <li><a href="products.jsp">Products</a></li>
                <li><a href="#">Pages <i class="ion-chevron-down"></i></span></a>
                    <ul>
                        <li><a href="about.html">About</a></li>
                        <li><a href="blogs.html">Blog</a></li>
                    </ul>
                </li>
                <li><a href="contact_us.jsp">Contact us</a></li>
                <li><a href="#">Hello &#128075; <% String index_uname = (String) session.getAttribute("success-login-uname"); %> <%= index_uname %> <i class="ion-chevron-down"></i></a>
                    <ul>
                        <li>
                            <a href="logout.jsp">Logout <i class="fas fa-sign-out-alt"></i></a>
                        </li>
                    </ul>
                </li>
            </ul>
        </nav>
        <div class="icons">
            <div id="menu-btn" class="fas fa-bars"></div>
            <div id="search-btn" class="fas fa-search"></div>
            <a href="cart.jsp" class="fas fa-shopping-cart"></a>
        </div>
        <form action="" class="search-form" id="search-form">
            <input type="search" name="" id="search-box" placeholder="search here...">
            <label for="search-box" class="fas fa-search"></label>
        </form>
    </header>
    <!-- header section ends -->

    <!-- home section start -->
    <!-- Swiper -->
    <section class="home">
        <div class="swiper-slide slide" style="background: url(images/home-bg-1.png) no-repeat;">
            <div class="content">
                <span>Study Eye wear</span>
                <h3>upto 50% off *</h3>
                <a href="#" class="btn">Shop now</a>
            </div>
        </div>
    
        <div class="slide active swiper-slide" style="background: url(images/home-bg-2.png) no-repeat;">
            <div class="content">
                <span>Professional eye wear</span>
                <h3>upto 30% off *</h3>
                <a href="#" class="btn">Shop now</a>
            </div>
        </div>
    
        <div class="slide swiper-slide" style="background: url(images/power-glass.png) no-repeat;">
            <div class="content">
                <span style="color:white">Power Glasses</span>
                <h3 style="color:white">upto 60% off *</h3>
                <a href="#" class="btn">Shop now</a>
            </div>
        </div>
    
        <div class="slide swiper-slide" style="background: url(images/studyglass-slider1.jpg) no-repeat;">
            <div class="content">
                <span>Study Eye wear</span>
                <h3>upto 70% off *</h3>
                <a href="#" class="btn">Shop now</a>
            </div>
        </div>
    
        <div class="slide swiper-slide" style="background: url(images/sunglass-slider2.jpg) no-repeat;">
            <div class="content">
                <span style="color:white">Sunglasses</span>
                <h3 style="color:white">upto 30% off *</h3>
                <a href="#" class="btn">Shop now</a>
            </div>
        </div>

        <div class="slide swiper-slide" style="background: url(images/home-bg-4.png) no-repeat;">
            <div class="content">
                <span>Casual Eye wear</span>
                <h3>upto 80% off *</h3>
                <a href="#" class="btn">Shop now</a>
            </div>
        </div>
        <div id="prev-slide" onclick="prev()" class="fas fa-angle-left"></div>
        <div id="next-slide" onclick="next()" class="fas fa-angle-right"></div>
    </section>
    <!-- home section ends -->

    <!-- banner section start -->
    <section class="banner">
        <div class="box">
            <img src="images/banner-1.jpg" alt="">
            <div class="content">
                <span>Men's Glasses</span>
                <h3>upto 50% off *</h3>
                <a href="#" class="btn">Shop Now</a>
            </div>
        </div>
        <div class="box">
            <img src="images/banner-2.jpg" alt="">
            <div class="content">
                <span>Women's Glasses</span>
                <h3>upto 75% off *</h3>
                <a href="#" class="btn">Shop Now</a>
            </div>
        </div>
        <div class="box">
            <img src="images/banner-3.jpg" alt="">
            <div class="content">
                <span>Special Offer</span>
                <h3>upto 40% off *</h3>
                <a href="#" class="btn">Shop Now</a>
            </div>
        </div>
    </section>
<!-- banner section ends -->

<!-- Footer section start -->
    <section class="footer">
        <div class="box-container">
            <div class="box">
                <h3>Quick links</h3>
                <a href="index.jsp"><i class="fas fa-angle-right"></i>Home</a>
                <a href="products.jsp"><i class="fas fa-angle-right"></i>Products</a>
                <a href="about.html"><i class="fas fa-angle-right"></i>About</a>
                <a href="blogs.html"><i class="fas fa-angle-right"></i>Blogs</a>
                <a href="contact_us.jsp"><i class="fas fa-angle-right"></i>Contact</a>
                <a href="login.html"><i class="fas fa-angle-right"></i>Login</a>
                <a href="register.html"><i class="fas fa-angle-right"></i>Register</a>
                <a href="cart.jsp"><i class="fas fa-angle-right"></i>Cart</a>
            </div>

            <div class="box">
                <h3>Extra links</h3>
                <a href="#"><i class="fas fa-angle-right"></i>My Account</a>
                <a href="#"><i class="fas fa-angle-right"></i>My Order</a>
                <a href="#"><i class="fas fa-angle-right"></i>My Wishlist</a>
                <a href="#"><i class="fas fa-angle-right"></i>Terms Of Use</a>
                <a href="#"><i class="fas fa-angle-right"></i>privacy policy</a>
            </div>

            <div class="box">
                <h3>Follow us</h3>
                <a href="#"><i class="fab fa-whatsapp" class="whatsapp"></i>WhatsApp</a>
                <a href="#"><i class="fab fa-facebook" class="facebook"></i>Facebook</a>
                <a href="#"><i class="fab fa-twitter" class="twitter"></i>Twitter</a>
                <a href="#"><i class="fab fa-instagram" class="instagram"></i>Instagram</a>
                <a href="#"><i class="fab fa-pinterest" class="pintrest"></i>Pintrest</a>
                <a href="#"><i class="fab fa-linkedin" class="linkedin"></i>LinkedIn</a>
                <a href="#"><i class="fab fa-github" class="github"></i>Github</a>
            </div>

            <div class="box">
                <h3>News Letter</h3>
                <p>Subscribe for latest updates</p>
                <form action="subscribe.jsp" method="post">
                    <input type="email" placeholder="enter your email..." name="Email">
                    <input type="submit" value="subscribe" class="btn">
                </form>
            </div>
        </div>
        <div class="credit">
            Created by <span><a href="https://github.com/srikanth-kandi">Kandi Srikanth</a></span> | &#169; 2022 | All rights reserved.
        </div>
    </section>
    <!-- footer section ends -->
</body>
</html>