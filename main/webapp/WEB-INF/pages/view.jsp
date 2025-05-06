<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="navbar.jsp"%>
<%@ include file="leftNavbar.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Page</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/view.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
</head>
<body>

    <main class="view-main">
        <!-- This is for the single post -->
        <div class="view-post">
            <div class="view-post-header">
                <img src="${pageContext.request.contextPath}/resources/Images/lion.jpg" alt="Profile Picture" class="view-profile-pic" />
                <div class="view-user-content">
                    <span class="view-username">Tom</span>
                </div>
                <a style="position: relative; left: 300px; color: black;" href="${pageContext.request.contextPath}/edit?id=${post.id}">
                    <i class="fa-solid fa-pen-to-square"></i>
                </a>
                
                <form action="${pageContext.request.contextPath}/delete" method="get">
                    <input type="hidden" name="id" value="${post.id}" />
                    <button type="submit" style="position: relative; left: 320px; color: black; background: none; border: none; font-size: 18px; cursor: pointer;">
                        <i class="fa-solid fa-trash-can"></i>
                    </button>
                </form>
                
            </div>

            <!-- This is the post caption -->
            <div class="view-caption-container">
                <p class="view-caption">${post.caption}</p>
            </div>

            <!-- This is the post image -->
            <div class="view-post-image">
                <a href="${pageContext.request.contextPath}/uploads/images/${post.image}">
                    <img src="${pageContext.request.contextPath}/uploads/images/${post.image}" alt="Post Image" />
                </a>
            </div>

            <div class="view-like">
                <i class="fa-solid fa-heart"></i> <i class="fa-solid fa-comment"></i>
            </div>

            <!-- Comment section will be added later -->
        </div>
    </main>

</body>
</html>
