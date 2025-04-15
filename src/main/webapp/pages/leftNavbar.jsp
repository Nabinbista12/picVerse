<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css/leftNavbar.css"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>

    <!-- This is for the footer of icon and the element. -->
    <main class="left-navbar">
      <div class="left-nav-item">
        <!-- Home icon  -->
        <div class="left-nav-item-common">
          <i class="fa-solid fa-igloo"></i>
          <a href="home.jsp">Home</a>
        </div>

        <!-- Create Icon.  -->
        <div class="left-nav-item-common">
          <i class="fa-solid fa-circle-plus"></i>
          <a href="create.jsp">Create</a>
        </div>

        <!-- Setting option  -->
        <div class="left-nav-item-common">
          <i class="fa-solid fa-gear"></i>
          <a href="#">Setting</a>
        </div>

        <!-- .History option  -->
        <div class="left-nav-item-common">
          <i class="fa-solid fa-clock-rotate-left"></i>
          <a href="#">History</a>
        </div>

        <!-- Profile  -->
        <div class="left-nav-item-common">
          <img class="profile-img" src="../resources/Images/lion.jpg" alt="alt" />
          <a href="profile.jsp">Profile</a>
        </div>
      </div>
    </main>

</body>
</html>