<%@ page import="java.sql.*"%>
<%@ page import="javax.servlet.http.*,java.lang.*"%>
<%
    response.setHeader("Cache-Control","no-cache, no-store, must-revalidate"); // HTTP 1.1
    if (session.getAttribute("success-admin-login-uname")==null){
        response.sendRedirect("http://localhost:8081/OpticLens/login-now.jsp");
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Favicon -->
    <link rel="shortcut icon" href="http://localhost:8081/OpticLens/images/logo/eyeglasses (1).png" type="image/x-icon">
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
    <script src="http://localhost:8081/OpticLens/js/script.js" defer></script>
    <title>Cart | Optic Lens</title>
</head>
<body>
    <!-- header section -->
    <header class="header">
        <a href="http://localhost:8081/OpticLens/admin/index.jsp" class="logo"><img src="http://localhost:8081/OpticLens/images/logo/eyeglasses_header.png" alt="">&nbsp;Optic Lens</a>
        <nav class="navbar">
            <ul>
                <li><div class="currency-toggler">
                    <span>USD($)</span>
                    <div class="toggler"></div>
                    <span>INR(&#8377;)</span>
                </div></li>
                <li><a href="http://localhost:8081/OpticLens/admin/index.jsp" class="active">Home</a></li>
                <li><a href="http://localhost:8081/OpticLens/admin/products.jsp">products
        
                </a></li>
                <li><a href="#">Pages <i class="ion-chevron-down"></i></span></a>
                    <ul>
                        <li><a href="http://localhost:8081/OpticLens/admin/about.html">About</a></li>
                        <li><a href="http://localhost:8081/OpticLens/admin/blogs.html">Blog</a></li>
                    </ul>
                </li>
                <li><a href="http://localhost:8081/OpticLens/admin/contact_us.jsp">Contact us</a></li>
                <li><a href="#">Hello &#128075; <% String index_uname = (String) session.getAttribute("success-admin-login-uname"); %> <%= index_uname %> <i class="ion-chevron-down"></i></a>
                    <ul>
                        <li>
                            <a href="http://localhost:8081/OpticLens/admin/show-user.jsp">Show users</a>
                        </li>
                        <li>
                            <a href="http://localhost:8081/OpticLens/admin/add-user.jsp">Add user</a>
                        </li>
                        <li>
                            <a href="http://localhost:8081/OpticLens/admin/update-user.jsp">Update user</a>
                        </li>
                        <li>
                            <a href="http://localhost:8081/OpticLens/admin/remove-user.jsp">Remove user</a>
                        </li>
                        <li>
                            <a href="http://localhost:8081/OpticLens/admin-logout.jsp">Logout <i class="fas fa-sign-out-alt"></i></a>
                        </li>
                    </ul>
                </li>
            </ul>
        </nav>
        <div class="icons">
            <div id="menu-btn" class="fas fa-bars"></div>
            <div id="search-btn" class="fas fa-search"></div>
            <a href="http://localhost:8081/OpticLens/admin/cart.jsp" class="fas fa-shopping-cart"></a>
        </div>
        <form action="" class="search-form">
            <input type="search" name="" id="search-box" placeholder="search here...">
            <label for="search-box" class="fas fa-search"></label>
        </form>
    </header>

    <section class="heading">
        <h1>Shopping Cart</h1>
        <p><a href="http://localhost:8081/OpticLens/admin/index.jsp">Home&nbsp;<i class="fas fa-home" style="color:black;text-decoration: none;"></i></a> >> <a href="http://localhost:8081/OpticLens/admin/cart.jsp">Cart</a></p>
    </section>
    <!-- header section ends -->

    <!-- cart section start -->

    <section class="shopping-cart">
        <h1 class="title">Your products</h1>
        <div class="box-container">
            <div class="box">
                <i class="fas fa-times"></i>
                    <img src="http://localhost:8081/OpticLens/images/cart-item-1.png" alt="">
                    <div class="content">
                        <h3>Premium glasses</h3>
                        <form action="">
                            <span>quantity :</span>
                            <input type="number" name="" id="" value="1">
                        </form>
                        <div class="price"><span class="dollar">$</span><span class="dprice">20.00</span>&nbsp;&nbsp;<span class="striked-price"><span class="dollar" style="font-size: 1.5rem;">$</span><span class = "dprice" style="font-size: 1.5rem;font-weight: 400;">25.00</span></span></div>
                    </div>
            </div>
            <div class="box">
                <i class="fas fa-times"></i>
                    <img src="http://localhost:8081/OpticLens/images/cart-item-2.png" alt="">
                    <div class="content">
                        <h3>Premium glasses</h3>
                        <form action="">
                            <span>quantity :</span>
                            <input type="number" name="" id="" value="1">
                        </form>
                        <div class="price"><span class="dollar">$</span><span class="dprice">20.00</span>&nbsp;&nbsp;<span class="striked-price"><span class="dollar" style="font-size: 1.5rem;">$</span><span class = "dprice" style="font-size: 1.5rem;font-weight: 400;">25.00</span></span></div>
                    </div>
                
            </div>
            <div class="box">
                <i class="fas fa-times"></i>
                    <img src="http://localhost:8081/OpticLens/images/cart-item-3.png" alt="">
                    <div class="content">
                        <h3>Premium glasses</h3>
                        <form action="">
                            <span>quantity :</span>
                            <input type="number" name="" id="" value="1">
                        </form>
                        <div class="price"><span class="dollar">$</span><span class="dprice">20.00</span>&nbsp;&nbsp;<span class="striked-price"><span class="dollar" style="font-size: 1.5rem;">$</span><span class = "dprice" style="font-size: 1.5rem;font-weight: 400;">25.00</span></span></div>
                    </div>
                
            </div>
            <div class="box">
                <i class="fas fa-times"></i>
                    <img src="http://localhost:8081/OpticLens/images/cart-item-4.png" alt="">
                    <div class="content">
                        <h3>Premium glasses</h3>
                        <form action="">
                            <span>quantity :</span>
                            <input type="number" name="" id="" value="1">
                        </form>
                        <div class="price"><span class="dollar">$</span><span class="dprice">20.00</span>&nbsp;&nbsp;<span class="striked-price"><span class="dollar" style="font-size: 1.5rem;">$</span><span class = "dprice" style="font-size: 1.5rem;font-weight: 400;">25.00</span></span></div>
                    </div>
                
            </div>
            <div class="box">
                <i class="fas fa-times"></i>
                    <img src="http://localhost:8081/OpticLens/images/cart-item-5.png" alt="">
                    <div class="content">
                        <h3>Premium glasses</h3>
                        <form action="">
                            <span>quantity :</span>
                            <input type="number" name="" id="" value="1">
                        </form>
                        <div class="price"><span class="dollar">$</span><span class="dprice">20.00</span>&nbsp;&nbsp;<span class="striked-price"><span class="dollar" style="font-size: 1.5rem;">$</span><span class = "dprice" style="font-size: 1.5rem;font-weight: 400;">25.00</span></span></div>
                    </div>
                
            </div>
        </div>
        <h1 class="title">
            Checkout cart
        </h1>
        <div class="cart-total">
            <h3>subtotal : <span class="dollar">$</span><span class="dprice">100.00</span></h3>
            <h3>total : <span class="dollar">$</span><span class="dprice">100.00</span></h3>
            <a href="http://localhost:8081/OpticLens/admin/payment_form.jsp" class="btn">proceed to checkout</a>
        </div>
    </section>

    <!-- cart section ends -->

<!-- Footer section start -->
    <section class="footer">
        <div class="box-container">
            <div class="box">
                <h3>Quick links</h3>
                <a href="http://localhost:8081/OpticLens/admin/index.jsp"><i class="fas fa-angle-right"></i>Home</a>
                <a href="http://localhost:8081/OpticLens/admin/products.jsp"><i class="fas fa-angle-right"></i>products</a>
                <a href="http://localhost:8081/OpticLens/admin/about.html"><i class="fas fa-angle-right"></i>About</a>
                <a href="http://localhost:8081/OpticLens/admin/blogs.html"><i class="fas fa-angle-right"></i>Blogs</a>
                <a href="http://localhost:8081/OpticLens/admin/contact_us.jsp"><i class="fas fa-angle-right"></i>Contact</a>
                <a href="http://localhost:8081/OpticLens/login-now.jsp"><i class="fas fa-angle-right"></i>Login</a>
                <a href="http://localhost:8081/OpticLens/register.html"><i class="fas fa-angle-right"></i>Register</a>
                <a href="http://localhost:8081/OpticLens/admin/cart.jsp"><i class="fas fa-angle-right"></i>Cart</a>
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
                <form action="http://localhost:8081/OpticLens/admin/subscribe.jsp" method="post">
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