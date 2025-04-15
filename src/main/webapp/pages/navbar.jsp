<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/navbar.css"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
    
    <header class="top-navbar">

        <!-- The logo of the website.  -->
        <div class="logo">
            <a href="home.jsp">
	            <img src="../resources/Images/logo.png" alt="">
	            <h2>picVerse</h2>
            </a>
        </div>

        <!-- This are the botton of the navbar.  -->
        <div class="top-nav-item">

            <!-- This is for the navbar item. -->
            <!-- Home  -->
            <div class="top-nav-item-common">
                <i class="fa-solid fa-igloo"></i> 
                <a href="home.jsp">Home</a>
            </div>


            <div class="top-nav-item-common">
                <i class="fa-solid fa-newspaper"></i> 
                <a href="#">News/Feed</a>
            </div>


            <div class="top-nav-item-common">
                <i class="fa-solid fa-shop"></i> 
                <a href="#">Shop</a>
            </div>


            <div class="top-nav-item-common">
                <i class="fa-solid fa-phone"></i>
                <a href="contact.jsp">Contact</a>
            </div>

            <!-- About us  -->
            <div class="top-nav-item-common">
                <i class="fa-solid fa-users"></i>
                <a href="aboutUs.jsp">About Us</a>
            </div>
        </div>

        <!-- This is the profile of the user.  -->
        <div class="profile">
            <img src="../resources/Images/lion.jpg" alt="">
            <h4>Username</h4>
        </div>
        
    </header>

</body>
</html>