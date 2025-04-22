<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Post Management</title>

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/admin/postManagement.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/admin/adminSidebar.css">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

</head>
<body>

	<%@ include file="adminSidebar.jsp" %>
	
	<div class="post-container">
		<h1>Manage Posts</h1>
		
		<div class="post-search-bar">
			<input type="text" placeholder="Search posts by username or postid...">
			<button><i class="fa fa-search"></i></button>
		</div>
		
		<table class="posts-table">
			<thead>
				<tr>
					<th>Post ID</th>
		        	<th>Username</th>
		        	<th>Caption</th>
		        	<th>Image</th>
		        	<th>Date Posted</th>
		        	<th>Actions</th>
				</tr>
			</thead>
			
			<tbody>
				<tr>
					<td>101</td>
					<td>tom_jerry</td>
					<td>Beautiful sunset!</td>
					<td><img src="${pageContext.request.contextPath}/resources/Images/flower.jpg" alt="Post" width="60"></td>
					<td>April 1, 2025</td>
					
					<td class="action-buttons">
			            <button>Edit</button>
			            <button class="delete">Delete</button>
          			</td>
				</tr>
				
				<tr>
		          <td>102</td>
		          <td>jane_smith</td>
		          <td>I love photography...</td>
		          <td><img src="${pageContext.request.contextPath}/Images/CP.jpeg" alt="Post" width="60"></td>
		          <td>April 3, 2025</td>
		          
		          <td class="action-buttons">
		            <button>Edit</button>
		            <button class="delete">Delete</button>
		          </td>
		        </tr>
		        
		        <tr>
		          <td>103</td>
		          <td>aakriti37</td>
		          <td>Capturing the moment...!</td>
		          <td><img src="${pageContext.request.contextPath}/Images/Girl.jpg" alt="Post" width="60"></td>
		          <td>April 4, 2025</td>
		          
		          <td class="action-buttons">
		            <button>Edit</button>
		            <button class="delete">Delete</button>
		          </td>
		        </tr>
		        
		        <tr>
		          <td>104</td>
		          <td>simran.dangol</td>
		          <td>Trying to light up the world with a bulb.</td>
		          <td><img src="${pageContext.request.contextPath}/Images/light.jpeg" alt="Post" width="60"></td>
		          <td>April 4, 2025</td>
		          
		          <td class="action-buttons">
		            <button>Edit</button>
		            <button class="delete">Delete</button>
		          </td>
		        </tr>
		        
		        <tr>
		          <td>105</td>
		          <td>Anushka</td>
		          <td>Trying to light up the world with a bulb.</td>
		          <td><img src="${pageContext.request.contextPath}/Images/light.jpeg" alt="Post" width="60"></td>
		          <td>April 5, 2025</td>
		          
		          <td class="action-buttons">
		            <button>Edit</button>
		            <button class="delete">Delete</button>
		          </td>
		        </tr>
				
			</tbody>
			
		</table>
		
	</div>

</body>
</html>