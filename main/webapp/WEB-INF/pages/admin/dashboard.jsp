<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/admin/dashboard.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/admin/adminSidebar.css">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" />

</head>
<body>

	<%@ include file="adminSidebar.jsp"%>

	<div class="dashboard-main">
		<div class="dashboard-topbar">
			<div class="search-bar">
				<input type="text" placeholder="Search...">
			</div>

			<div class="user-info">
				<a href="${pageContext.request.contextPath}/admin-profile"> <i
					class="fa fa-user-circle" style="font-size: 30px; color: black;"></i>
					<div>
						<%
					        String userName = (String) session.getAttribute("username");
					        if (userName != null) {
					            out.print(userName);
					        } else {
					            out.print("Admin"); 
					        }
					    %>
					</div>

				</a>
			</div>
		</div>

		<div class="dashboard-section">
			<h2>Dashboard</h2>
			<div class="cards">
				<div class="card">
					<h3>
						<i class="fa fa-users"></i>Total Users
					</h3>
					<p>20,000</p>
				</div>

				<div class="card">
					<h3>
						<i class="fa fa-image"></i>Total Posts
					</h3>
					<p>110,000</p>
				</div>

				<div class="card">
					<h3>
						<i class="fa fa-heart"></i>Total Likes
					</h3>
					<p>2,000,500</p>
				</div>
			</div>
		</div>

		<div class="pie-section">
			<h2>Pie Chart</h2>
			<div class="pie-chart">
				<img
					src="${pageContext.request.contextPath}/resources/Images/pieChart1.jpeg"
					alt="Pie Chart 1"> <img
					src="${pageContext.request.contextPath}/resources/Images/pieChart2.jpeg"
					alt="Pie Chart 2">
			</div>
		</div>
	</div>

</body>
</html>