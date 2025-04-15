<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Report</title>
    <link rel="stylesheet" href="../css/report.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
    <div class="report-container">
        <div class="sidebar">
            <div class="logo">
                <img src="../resources/logo.png" alt="Logo">
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
        
        
        <div class="report-main">
            <div class="report-topbar">
              <div class="search-bar">
                <input type="text" placeholder="Search...">
              </div>
              <div class="user-info">
                <i class="fa fa-user-circle" style="font-size: 30px;"></i>
                <div>Name<br><small>Admin</small></div>
              </div>
        </div>


        <main class="main-content">
            <section class="report-section">
                <h1>Customer Report</h1>
                <div class="report-card">
                    <div class="profile-icon-container">
                        <div class="profile-icon">
                            <i class="fa-solid fa-user fa-3x"></i>
                        </div>
                    </div>
                    <div class="customer-details">
                        <p><strong>Customer Name:</strong> Mary Christian</p>
                        <p><strong>Total Likes:</strong> 5000</p>
                        <p><strong>Total Comments:</strong> 100</p>
                        <p><strong>Total Followers:</strong> 20000</p>
                        <p><strong>Total Following:</strong> 169</p>
                    </div>
                </div>
            </section>
        </main>
    </div>
</body>
</html>