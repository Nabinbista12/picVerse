<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/navbar.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css"
	integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Josefin+Sans:ital,wght@0,100..700;1,100..700&display=swap"
	rel="stylesheet">
</head>
<style>
.nav-active {
	color: rgb(16, 135, 245) !important;
}

.nav-class-active {
	box-shadow: 1px 0 1px rgb(160, 32, 240);
}
</style>
<body>

	<header class="top-navbar">

		<!-- The logo of the website.  -->
		<div class="logo">
			<a href="${pageContext.request.contextPath}/"> <img
				src="${pageContext.request.contextPath}/resources/Images/logo.png"
				alt="">

			</a>
		</div>

		<!-- This are the botton of the navbar.  -->
		<div class="top-nav-item">

			<!-- This is for the navbar item. -->
			<!-- Home  -->
			<a href="${pageContext.request.contextPath}/"
				class="top-nav-item-common nav-class-active"> <i
				class="fa-solid fa-igloo nav-active"></i>
				<h2 class="nav-active">Home</h2>
			</a> <a href="#" class="top-nav-item-common"> <i
				class="fa-solid fa-newspaper"></i>
				<h2>News/Feed</h2>
			</a> <a href="#" class="top-nav-item-common"> <i
				class="fa-solid fa-shop"></i>
				<h2>Shop</h2>
			</a> <a href="${pageContext.request.contextPath}/contact"
				class="top-nav-item-common"> <i class="fa-solid fa-phone"></i>
				<h2>Contact</h2>
			</a>

			<!-- About us  -->
			<a href="${pageContext.request.contextPath}/about-us"
				class="top-nav-item-common"> <i class="fa-solid fa-users"></i>
				<h2>About Us</h2>
			</a>
		</div>

		<!-- This is the profile of the user.  -->
		<div class="profile">
			<img
				src="${pageContext.request.contextPath}/resources/Images/lion.jpg"
				alt="">
			<h4>
			
	<%
        String username = (String) session.getAttribute("username");
        if (username != null) {
            out.print(username);
        } else {
            out.print("Guest"); 
        }
    %>
			</h4>
		</div>

	</header>

</body>
</html>