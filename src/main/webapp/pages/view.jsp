<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="navbar.jsp" %>
<%@ include file="leftNavbar.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Page</title>
<link rel="stylesheet" href="../css/view.css">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
</head>
<body>

  <main class="view-main">
      <!-- This is for the single post.  -->
      <div class="view-post">
        <div class="view-post-header">
          <img src="../resources/Images/lion.jpg" alt="Profile Picture" class="view-profile-pic" />
          <div class="view-user-content">
            <span class="view-username">Tom</span>
          </div>
          <a style="position: relative; left: 280px; color: black;" href="edit.jsp">
              <i class="fa-solid fa-pen-to-square"></i>
          </a>
        </div>
        <div class="view-caption-container">
          <p class="view-caption">
              Lorem ipsum dolor sit amet consectetur adipisicing elit. Eaque ab sunt voluptatem sed non quaerat placeat quam nobis aliquid expedita cum dolorem consequuntur atque corporis doloribus vero similique, reprehenderit exercitationem.
          </p>
        </div>

        <!-- This is the post image.  -->
        <div class="view-post-image">
          <a href="view.html">
            <img src="../resources/Images/lion.jpg" alt="Post Image" />
          </a>
        </div>

        <div class="view-like">
            <i class="fa-solid fa-heart"></i>
            <i class="fa-solid fa-comment"></i>
        </div>
        <div class="view-comment">
            <div class="view-comments">
                <div class="view-user"><img src="../resources/Images/lion.jpg" alt=""> 
                    <h3>User</h3>
                </div>
                <p class="view-comment">Lorem ipsum dolor sit amet consectetur adipisicing elit. Soluta deleniti atque voluptatem sint. Voluptatibus, maxime nobis, perspiciatis recusandae neque ullam officiis fugit quasi hic harum cumque amet culpa, laborum distinctio.</p>
            </div>
            <div class="view-comments">
                <div class="view-user"><img src="../resources/Images/lion.jpg" alt=""> 
                    <h3>User</h3>
                </div>
                <p class="view-comment">Lorem ipsum dolor sit amet consectetur adipisicing elit. Soluta deleniti atque voluptatem sint. Voluptatibus, maxime nobis, perspiciatis recusandae neque ullam officiis fugit quasi hic harum cumque amet culpa, laborum distinctio.</p>
            </div>
            
        </div>
	</div>

    </main>

</body>
</html>