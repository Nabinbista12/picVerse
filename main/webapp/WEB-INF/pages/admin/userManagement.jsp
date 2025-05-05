<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Management Page</title>


<link rel="stylesheet" href="${pageContext.request.contextPath}/css/admin/userManagement.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/admin/adminSidebar.css">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css" integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg==" crossorigin="anonymous" referrerpolicy="no-referrer" />

</head>
<body>

	<div class="user-container">
	
	<%@ include file="adminSidebar.jsp" %>
        
        
        <main class="user-main-content">
            <header class="user-main-header">
                <h1>users</h1>
                <div class="search-bar">
                    <input type="text" placeholder="Search...">
                </div>
            </header>
            <section class="user-list">
                <table>
                    <thead>
                        <tr>
                            <th>Full Name</th>
                            <th>Status</th>
                            <th>Email</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>user name</td>
                            <td>Active</td>
                            <td>user12@gmail.com</td>
                        </tr>
                        <tr>
                            <td>user name</td>
                            <td>Not Active</td>
                            <td>user23@gmail.com</td>
                        </tr>
                        <tr>
                            <td>user name</td>
                            <td>Active</td>
                            <td>user13@gmail.com</td>
                        </tr>
                        <tr>
                            <td>user name</td>
                            <td>Not Active</td>
                            <td>user876@gmail.com</td>
                        </tr>
                        <tr>
                            <td>user name</td>
                            <td>Active</td>
                            <td>user45@gmail.com</td>
                        </tr>
                        <tr>
                            <td>user name</td>
                            <td>Active</td>
                            <td>user98@gmail.com</td>
                        </tr>
                        <tr>
                            <td>user name</td>
                            <td>Active</td>
                            <td>user45@gmail.com</td>
                        </tr>
                        <tr>
                            <td>user name</td>
                            <td>Not Active</td>
                            <td>user@gmail.com</td>
                        </tr>
                        <tr>
                            <td>user name</td>
                            <td>Active</td>
                            <td>user@gmail.com</td>
                        </tr>
                        <tr>
                            <td>user name</td>
                            <td>Active</td>
                            <td>user54@gmail.com</td>
                        </tr>
                        <tr>
                            <td>user name</td>
                            <td>Active</td>
                            <td>user76@gmail.com</td>
                        </tr>
                        <tr>
                            <td>user name</td>
                            <td>Not Active</td>
                            <td>user44@gmail.com</td>
                        </tr>
                        <tr>
                            <td>user name</td>
                            <td>Active</td>
                            <td>user7889@gmail.com</td>
                        </tr>
                        <tr>
                            <td>user name</td>
                            <td>Active</td>
                            <td>user01@gmail.com</td>
                        </tr>
                        <tr>
                            <td>user name</td>
                            <td>Active</td>
                            <td>user67@gmail.com</td>
                        </tr>
                        <tr>
                            <td>user name</td>
                            <td>Active</td>
                            <td>user484@gmail.com</td>
                        </tr>
                        <tr>
                            <td>user name</td>
                            <td>Active</td>
                            <td>user91@gmail.com</td>
                        </tr>
                        <tr>
                            <td>user name</td>
                            <td>Not Active</td>
                            <td>user77@gmail.com</td>
                        </tr>
                        <tr>
                            <td>user name</td>
                            <td>Active</td>
                            <td>user58@gmail.com</td>
                        </tr>
                        </tbody>
                </table>
            </section>
        </main>
        <aside class="user-info">
            <div class="user-info-header">
                <span>user information</span>
                <span class="active-status">Active</span>
            </div>
            <div class="user-details">
                <div class="profile-image">
                    <div class="placeholder-icon">
                        <i class="fa-solid fa-user fa-3x"></i>
                    </div>
                </div>
                <h2 class="user-name">User_Name</h2>
                <div class="info-item">
                    <i class="fa-regular fa-envelope"></i>
                    <span>Email: User@gmail.com</span>
                </div>
                <div class="info-item">
                    <i class="fa-regular fa-clock"></i>
                    <span>Last visit: 4th April, 2025</span>
                </div>
                <button class="update-button">
                    <i class="fa-solid fa-pen-to-square"></i>
                    Update info
                </button>
            </div>
        </aside>
	</div>

</body>
</html>