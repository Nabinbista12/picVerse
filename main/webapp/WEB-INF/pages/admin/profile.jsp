<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Profile</title>

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/admin/profile.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/admin/adminSidebar.css">

<!--    <link rel="stylesheet" href="../../css/admin/profile.css">   -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg==" crossorigin="anonymous" referrerpolicy="no-referrer" />

</head>
<body>

	<div class="admin-container">
	
	<%@ include file="adminSidebar.jsp" %>
	
		
		<main class="main-content">
			<header class="main-header">
                <h1>Admin Profile</h1>
                <div class="search-bar">
                    <input type="text" placeholder="Search...">
                </div>
            </header>
            <section class="profile-section">
                <div class="profile-details-card">
                    <div class="profile-image">
                        <i class="fa-solid fa-user-circle fa-5x"></i>
                    </div>
                    <div class="profile-info">
                        <h2>Aakriti Chaudhary</h2>
                        <p><i class="fa-solid fa-envelope"></i> aakriti.chaudhary@example.com</p>
                        <p><i class="fa-solid fa-briefcase"></i> Administrator</p>
                        <p><i class="fa-solid fa-calendar-alt"></i> Member Since: January 15, 2023</p>
                    </div>
                </div>

                <div class="admin-actions-grid">
                    <div class="action-card">
                        <a href="#"><i class="fa-solid fa-users-cog fa-2x"></i> <span>Manage Users</span></a>
                    </div>
                    <div class="action-card">
                        <a href="#"><i class="fa-solid fa-file-alt fa-2x"></i> <span>Manage Posts</span></a>
                    </div>
                    <div class="action-card">
                        <a href="#"><i class="fa-solid fa-chart-line fa-2x"></i> <span>View Analytics</span></a>
                    </div>
                    <div class="action-card">
                        <a href="#"><i class="fa-solid fa-cog fa-2x"></i> <span>Settings</span></a>
                    </div>
                    <form class="action-card logout-card" action="${pageContext.request.contextPath}/logout" method="post">
                        <a href="#"><i class="fa-solid fa-sign-out-alt fa-2x"></i> <button style="border: none; outline: none; background-color: transparent">Logout</button></a>
                    </form>
                </div>
            </section>
		</main>
		
	</div>

</body>
</html>