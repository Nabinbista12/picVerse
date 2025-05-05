<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Report</title>

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/admin/report.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/admin/adminSidebar.css">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg==" crossorigin="anonymous" referrerpolicy="no-referrer" />

</head>
<body>

	<div class="report-container">
	
	<%@ include file="adminSidebar.jsp" %>
	
		
		<div class="report-main">
			<div class="report-topbar">
				<div class="search-bar">
					<input type="text" placeholder="Search...">
				</div>
				
				<div class="user-info">
					<a href="${pageContext.request.contextPath}/admin-profile">
					<i class="fa fa-user-circle" style="color: black; font-size: 30px; "></i>
					<div>Name Admin</div>
					
					<!--  <div style="color: black;">Name<br><small style="color: black;">Admin</small></div>   -->
					</a>
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
	</div>

</body>
</html>