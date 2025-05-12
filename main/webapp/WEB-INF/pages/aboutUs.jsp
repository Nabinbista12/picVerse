<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="navbar.jsp"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>About Us</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/aboutUs.css" />
</head>
<body>
	<div class="container">
		<h1>
			<b>About Us</b>
		</h1>

		<div class="team-member layout-1">
			<h2>
				<b>Nabin Bista</b>
			</h2>
			<div class="member-details">
				<p class="short-info">Nabin brings leadership and innovation to
					the team, with a strong background communication.</p>
				<div class="profile-image">
					<img
						src="${pageContext.request.contextPath}/resources/Images/lion.jpg"
						alt="Nabin Bista" />
				</div>
			</div>
		</div>

		<div class="team-member layout-2">
			<h2>
				<b>Simran Dangol</b>
			</h2>
			<div class="member-details">
				<div class="profile-image">
					<img src="${pageContext.request.contextPath}/resources/Images/lion.jpg" alt="Simran Dangol" />
				</div>
				<p class="short-info">Simran brings creativity and precision to
					front-end design, with a flair for responsive layouts and
					accessibility.</p>
			</div>
		</div>

		<div class="team-member layout-1">
			<h2>
				<b>Prarthana Shahi</b>
			</h2>
			<div class="member-details">
				<p class="short-info">Prarthana excels in project coordination
					and quality assurance, ensuring that all team goals are met
					smoothly.</p>
				<div class="profile-image">
					<img src="${pageContext.request.contextPath}/resources/Images/lion.jpg" alt="Prarthana Shahi" />
				</div>
			</div>
		</div>

		<div class="team-member layout-2">
			<h2>
				<b>Aakriti Chaudhary</b>
			</h2>
			<div class="member-details">
				<div class="profile-image">
					<img src="${pageContext.request.contextPath}/resources/Images/lion.jpg" alt="Aakriti Chaudhary" />
				</div>
				<p class="short-info">Aakriti is known for her problem-solving
					skills in back-end development and API integration.</p>
			</div>
		</div>

		<div class="team-member layout-1">
			<h2>
				<b>Anushka Adhikari</b>
			</h2>
			<div class="member-details">
				<p class="short-info">Anushka specializes in UI design and
					brings visual harmony and user-centric design to every project.</p>
				<div class="profile-image">
					<img src="${pageContext.request.contextPath}/resources/Images/lion.jpg" alt="Anushka Adhikari" />
				</div>
			</div>
		</div>

		<div class="team-member layout-2">
			<h2>
				<b>Santosh Singh Chad</b>
			</h2>
			<div class="member-details">
				<div class="profile-image">
					<img src="${pageContext.request.contextPath}/resources/Images/lion.jpg" alt="Santosh Singh Chad" />
				</div>
				<p class="short-info">Santosh is a passionate developer focused
					on innovative UI/UX solutions.</p>
			</div>
		</div>
	</div>


</body>
</html>
