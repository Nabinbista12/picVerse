<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="navbar.jsp"%>
<%@ include file="leftNavbar.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Liked Posts Page</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/history.css" />

</head>
<body>
	<div class="container">

		<!-- Main Content -->
		<main class="main-content">

			<section class="liked-posts">
				<h2>Liked Post</h2>
				<div class="post-grid">
					<!-- Repeat these blocks for each image -->
					<div class="post-item">
						<img src="${pageContext.request.contextPath}/resources/Images/FBG.jpeg" /> <span
							class="post-user">Tom</span>
					</div>
					<div class="post-item">
						<img src="${pageContext.request.contextPath}/resources/Images/FBG2.jpeg" /> <span
							class="post-user">Jerry</span>
					</div>
					<div class="post-item">
						<img src="${pageContext.request.contextPath}/resources/Images/FBG3.jpeg" /> <span
							class="post-user">David</span>
					</div>
				</div>
			</section>
		</main>
	</div>
</body>
</html>
