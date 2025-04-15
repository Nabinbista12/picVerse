<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Admin Dashboard</title>
  <link rel="stylesheet" href="../css/adminDashboard.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>

  <div class="sidebar">
    <div class="logo">
        <img src="../resources/Images/logo.png" alt="Logo">
    </div>
    <ul>
		<li>
		  <a href="adminDashboard.jsp" style="color: black; text-decoration: none;">
		    <i class="fa fa-chart-line"></i> Dashboard
		  </a>
		</li>
		<li>
		  <a href="userManagement.jsp" style="color: black; text-decoration: none;">
		    <i class="fa fa-users"></i> User Management
		  </a>
		</li>
		<li>
		  <a href="#" style="color: black; text-decoration: none;">
		    <i class="fa fa-image"></i> Post Management
		  </a>
		</li>
		<li>
		  <a href="report.jsp" style="color: black; text-decoration: none;">
		    <i class="fa fa-file-alt"></i> Reports
		  </a>
		</li>
    </ul>
  </div>

  <div class="dashboard-main">
    <div class="dashboard-topbar">
      <div class="search-bar">
        <input type="text" placeholder="Search...">
      </div>
      <div class="user-info">
        <i class="fa fa-user-circle" style="font-size: 30px;"></i>
        <div>Name<br><small>Admin</small></div>
      </div>
    </div>

    <div class="dashboard-section">
      <h2>Dashboard</h2>
      <div class="cards">
        <div class="card">
          <h3><i class="fa fa-users"></i> Total Users</h3>
          <p>20,000</p>
        </div>
        <div class="card">
          <h3><i class="fa fa-image"></i> Total Posts</h3>
          <p>110,000</p>
        </div>
        <div class="card">
          <h3><i class="fa fa-heart"></i> Total Likes</h3>
          <p>2,000,500</p>
        </div>
      </div>
    </div>

  </div>
</body>
</html>