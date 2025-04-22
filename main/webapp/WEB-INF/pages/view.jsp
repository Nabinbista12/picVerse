<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="navbar.jsp"%>
<%@ include file="leftNavbar.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Page</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/view.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
</head>
<body>

	<main class="view-main">
		<!-- This is for the single post.  -->
		<div class="view-post">
			<div class="view-post-header">
				<img
					src="${pageContext.request.contextPath}/resources/Images/lion.jpg"
					alt="Profile Picture" class="view-profile-pic" />
				<div class="view-user-content">
					<span class="view-username">Tom</span>
				</div>
				<a style="position: relative; left: 320px; color: black;"
					href="${pageContext.request.contextPath}/edit"> <i class="fa-solid fa-pen-to-square"></i>
				</a>
			</div>
			<div class="view-caption-container">
				<p class="view-caption">I am chaning profile picture after long
						time. This is of the lion which i found in internet.</p>
			</div>

			<!-- This is the post image.  -->
			<div class="view-post-image">
				<a href="view.html"> <img
					src="${pageContext.request.contextPath}/resources/Images/lion.jpg"
					alt="Post Image" />
				</a>
			</div>

			<div class="view-like">
				<i class="fa-solid fa-heart"></i> <i class="fa-solid fa-comment"></i>
			</div>
			<div class="view-comment">
				<div class="view-comments">
					<div class="view-user">
						<img
							src="${pageContext.request.contextPath}/resources/Images/lion.jpg"
							alt="">
						<h3>User</h3>
					</div>
					<p class="view-comment">Amazing profile picture.</p>
				</div>

				<div class="view-comments">
					<div class="view-user">
						<img
							src="${pageContext.request.contextPath}/resources/Images/lion.jpg"
							alt="">
						<h3>User</h3>
					</div>
					<p class="view-comment">This is nice.</p>
				</div>

			</div>
		</div>

	</main>

</body>
</html>