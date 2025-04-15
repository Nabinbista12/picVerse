<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="navbar.jsp" %>
<%@ include file="leftNavbar.jsp" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>
<link rel="stylesheet" href="../css/home.css">
</head>
<body>

<main class="home-main">
      <!-- This is for the every single post.  -->
      <div class="home-post">
        <div class="home-post-header">
          <img src="../resources/Images/lion.jpg" alt="Profile Picture" class="home-profile-pic" />
          <div class="home-user-content">
            <span class="home-username">Tom</span>
          </div>
        </div>

        <!-- This is the post image.  -->
        <div class="home-post-image">
          <a href="view.jsp">
            <img src="../resources/Images/Girl.jpg" alt="Post Image" />
          </a>
        </div>

        <!-- Post footer - Contains interaction buttons and likes count -->
        <div class="home-post-footer">
          <!-- Action buttons for post interaction -->
          <div class="home-actions">
            <div class="home-like-btn">
              <i class="fa fa-heart"></i>
              <p class="likes">100 likes</p>
            </div>
            <a href="view.jsp">
              <button class="home-comment-btn"><i class="fa fa-comment"></i></button>
            </a>
          </div>
        </div>
      </div>
      
      <!-- This is for the every single post.  -->
      <div class="home-post">
        <div class="home-post-header">
          <img src="../resources/Images/lion.jpg" alt="Profile Picture" class="home-profile-pic" />
          <div class="home-user-content">
            <span class="home-username">Tom</span>
          </div>
        </div>

        <!-- This is the post image.  -->
        <div class="home-post-image">
          <a href="view.jsp">
            <img src="../resources/Images/lion.jpg" alt="Post Image" />
          </a>
        </div>

        <!-- Post footer - Contains interaction buttons and likes count -->
        <div class="home-post-footer">
          <!-- Action buttons for post interaction -->
          <div class="home-actions">
            <div class="home-like-btn">
              <i class="fa fa-heart"></i>
              <p class="likes">100 likes</p>
            </div>
            <a href="view.html">
              <button class="home-comment-btn"><i class="fa fa-comment"></i></button>
            </a>
          </div>
        </div>
      </div>

    </main>

<%@ include file="footer.jsp" %>

</body>
</html>