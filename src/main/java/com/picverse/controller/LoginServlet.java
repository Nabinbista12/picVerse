package com.picverse.controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
        boolean hasError = false;
        
        System.out.println("Processing Login for: " + username + ".");
        
        
        if (username == null || username.trim().isEmpty()) {
            request.setAttribute("usernameError", "Field is empty");
            hasError = true;
            System.out.println("Username is empty");
        }
        
        if (password == null || password.trim().isEmpty()) {
            request.setAttribute("passwordError", "Field is empty");
            hasError = true;
            System.out.println("Password is empty");
        }
        
        if (hasError) {
            System.out.println("Validation failed, returning to form");
            request.setAttribute("usernameValue", username != null ? username : "");
            request.getRequestDispatcher("/pages/login.jsp").forward(request, response);
        } else {
            System.out.println("Validation passed, redirecting to home");
                     
            response.sendRedirect(request.getContextPath() + "/pages/home.jsp");
        }
    }
}