<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>login Page</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css">
</head>
<body>

    <section class="login-main">

        <h1 class="login-heading-main">Share your memories to your <br>friend and family</h1>

        <!-- this is the icon navbar of the in the top.  -->
        <div class="icon-navbar">
            <a href="home.jsp" class="login-logo">
                <img src="${pageContext.request.contextPath}/resources/Images/logo.png" alt="logo">
            </a>

            <!-- This is the form of the login.  -->
            <form class="login-form" action="${pageContext.request.contextPath}/LoginServlet" method="post">
                
                <!-- This is for the heading paragraph.  -->
                <div class="login-heading">
                    <h1 class="login-heading2">Signup To PicVerse</h1>
                </div>

                <%
                    String usernameValue = request.getParameter("username") != null ? request.getParameter("username") : "";
                    
                    String usernameError = (String) request.getAttribute("usernameError");
                    String passwordError = (String) request.getAttribute("passwordError");
                %>


                <!-- This is the label and input for the username -->
                <div class="login-username login-input">
                    <label for="username">Username</label>
                    <input type="text" id="username" name="username" placeholder="<%= usernameError != null ? usernameError : "Enter a username or email" %>" 
                           value="<%= usernameValue %>" 
                           style="<%= usernameError != null ? "border: 1px solid red;" : "" %>"
                           data-original-placeholder="Enter a username">
                </div>
                <br><br>

                <!-- This is the label and input for the password -->
                <div class="login-password login-input">
                    <label for="password">Password</label>
                    <input type="password" id="password" name="password" placeholder="<%= passwordError != null ? passwordError : "Enter a password" %>" 
                           style="<%= passwordError != null ? "border: 1px solid red;" : "" %>"
                           data-original-placeholder="Enter a password">
                </div>
                <br><br>

                <!-- This is for the redirection.  -->
                <a href="register.jsp" class="register-link">New User</a>
                <!-- This is for the submit button.  -->
                <button class="login-button" type="submit">login</button>
            </form>
        </div>

    </section>
    
</body>
</html>