<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="navbar.jsp" %>
<%@ include file="leftNavbar.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">	
	<title>Profile Page</title>
	<link rel="stylesheet" type="text/css"href="../css/profile.css" />
</head>
<body>
	<div class="container">
        <div class="profile-header">
            <div class="profile-title">PROFILE</div>
            <div class="username">@USERNAME</div>
        </div>
        <div class="buttons">
            <button class="following">Following</button>
            <button class="followers">Followers</button>
        </div>
        <div class="gallery">
            <div class="image-container"><img src="../resources/Images/FBG.jpeg" alt="Image 1"></div>
            <div class="image-container"><img src="../resources/Images/FBG1.jpeg" alt="Image 2"></div>
            <div class="image-container"><img src="../resources/Images/FBG2.jpeg" alt="Image 3"></div>
            <div class="image-container"><img src="../resources/Images/FBG3.jpeg" alt="Image 4"></div>
            <div class="image-container"><img src="../resources/Images/FBG4.jpeg" alt="Image 5"></div>
            <div class="image-container"><img src="../resources/Images/flower.jpg" alt="Image 6"></div>
        </div>
    </div>


</body>
</html>