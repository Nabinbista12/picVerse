<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register Page</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/register.css">
</head>
<body>

    <section class="register-main">

        <h1 class="register-heading-main">Share your memories to your <br>friend and family</h1>

        <!-- this is the icon navbar of the in the top.  -->
        <div class="icon-navbar">
            <a href="home.jsp" class="register-logo">
                <img src="${pageContext.request.contextPath}/resources/Images/logo.png" alt="logo">
            </a>

            <!-- This is the form of the register.  -->
            <form class="register-form" action="${pageContext.request.contextPath}/RegisterServlet" method="post">
                
                <!-- This is for the heading paragraph.  -->
                <div class="register-heading">
                    <h1 class="register-heading2">Signup To PicVerse</h1>
                </div>

                <%
                    // Define variables for form values and error messages
                    String nameValue = request.getParameter("name") != null ? request.getParameter("name") : "";
                    String usernameValue = request.getParameter("username") != null ? request.getParameter("username") : "";
                    String emailValue = request.getParameter("email") != null ? request.getParameter("email") : "";
                    
                    String nameError = (String) request.getAttribute("nameError");
                    String usernameError = (String) request.getAttribute("usernameError");
                    String emailError = (String) request.getAttribute("emailError");
                    String passwordError = (String) request.getAttribute("passwordError");
                %>

                <!-- This is the label and input for the name -->
                <div class="register-name register-input">
                    <label for="name">Name</label>
                    <input type="text" id="name" name="name" placeholder="<%= nameError != null ? nameError : "Enter your name" %>" 
                           value="<%= nameValue %>" 
                           style="<%= nameError != null ? "border: 1px solid red;" : "" %>"
                           data-original-placeholder="Enter your name">
                </div>
                <br><br>

                <!-- This is the label and input for the username -->
                <div class="register-username register-input">
                    <label for="username">Username</label>
                    <input type="text" id="username" name="username" placeholder="<%= usernameError != null ? usernameError : "Enter a username" %>" 
                           value="<%= usernameValue %>" 
                           style="<%= usernameError != null ? "border: 1px solid red;" : "" %>"
                           data-original-placeholder="Enter a username">
                </div>
                <br><br>

                <!-- This is the label and input for the email -->
                <div class="register-email register-input">
                    <label for="email">Email</label>
                    <input type="text" id="email" name="email" placeholder="<%= emailError != null ? emailError : "Enter a email" %>" 
                           value="<%= emailValue %>" 
                           style="<%= emailError != null ? "border: 1px solid red;" : "" %>"
                           data-original-placeholder="Enter a email">
                </div>
                <br><br>

                <!-- This is the label and input for the password -->
                <div class="register-password register-input">
                    <label for="password">Password</label>
                    <input type="password" id="password" name="password" placeholder="<%= passwordError != null ? passwordError : "Enter a password" %>" 
                           style="<%= passwordError != null ? "border: 1px solid red;" : "" %>"
                           data-original-placeholder="Enter a password">
                </div>
                <br><br>

                <!-- This is for the redirection.  -->
                <a href="login.jsp" class="login-link">Already have a account</a>
                <!-- This is for the submit button.  -->
                <button class="register-button" type="submit">Register</button>
            </form>
        </div>

    </section>
    
</body>
</html>