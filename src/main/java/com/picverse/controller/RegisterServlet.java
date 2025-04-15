package com.picverse.controller;

import java.io.IOException;
import java.util.regex.Pattern;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    

    private static final Pattern NAME_REGEX = Pattern.compile("^[a-zA-Z]+$");
    private static final Pattern EMAIL_REGEX = Pattern.compile("^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$");
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String name = request.getParameter("name");
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        boolean hasError = false;
        

        System.out.println("Processing registration for: " + name + ", " + username + ", " + email);
        

        if (name == null || name.trim().isEmpty()) {
            request.setAttribute("nameError", "Field is empty");
            hasError = true;
            System.out.println("Name is empty");
        }
        
        if (username == null || username.trim().isEmpty()) {
            request.setAttribute("usernameError", "Field is empty");
            hasError = true;
            System.out.println("Username is empty");
        }
        
        if (email == null || email.trim().isEmpty()) {
            request.setAttribute("emailError", "Field is empty");
            hasError = true;
            System.out.println("Email is empty");
        }
        
        if (password == null || password.trim().isEmpty()) {
            request.setAttribute("passwordError", "Field is empty");
            hasError = true;
            System.out.println("Password is empty");
        }
        

        if (name != null && !name.trim().isEmpty()) {
            String trimmedName = name.trim();
            boolean nameMatches = NAME_REGEX.matcher(trimmedName).matches();
            System.out.println("Name validation: " + trimmedName + " matches regex: " + nameMatches);
            
            if (!nameMatches) {
                request.setAttribute("nameError", "Please enter word only");
                hasError = true;
            }
        }
        
        
        if (email != null && !email.trim().isEmpty()) {
            String trimmedEmail = email.trim();
            boolean emailMatches = EMAIL_REGEX.matcher(trimmedEmail).matches();
            System.out.println("Email validation: " + trimmedEmail + " matches regex: " + emailMatches);
            
            if (!emailMatches) {
                request.setAttribute("emailError", "Please enter correct format of the email.");
                hasError = true;
            }
        }
        

        if (hasError) {
            System.out.println("Validation failed, returning to form");
            
            // Store the entered values to preserve them on form
            request.setAttribute("nameValue", name != null ? name : "");
            request.setAttribute("usernameValue", username != null ? username : "");
            request.setAttribute("emailValue", email != null ? email : "");
            
            request.getRequestDispatcher("/pages/register.jsp").forward(request, response);
        } else {
            System.out.println("Validation passed, redirecting to home");     
            response.sendRedirect(request.getContextPath() + "/pages/home.jsp");
        }
    }
}