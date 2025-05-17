package com.picverse.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.picverse.config.DatabaseConfig;

/**
 * Servlet implementation class ContactServlet
 */
@WebServlet("/contact")
public class ContactServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ContactServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		request.getRequestDispatcher("WEB-INF/pages/contact.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name = request.getParameter("name");
		int phoneNumber = Integer.parseInt(request.getParameter("phone"));
		String email = request.getParameter("email");
		String subject = request.getParameter("subject");
		String message = request.getParameter("message");
		
		// Here you can add code to save the contact information to the database or send an email
		// For now, we'll just print it to the console
		System.out.println("Name: " + name);
		
		try {
			Connection conn = DatabaseConfig.getDbConnection();
			PreparedStatement stmt = conn.prepareStatement("INSERT INTO contact (name, phone_number, email, subject, message) VALUES (?, ?, ?, ?, ?)");
			stmt.setString(1, name);
			stmt.setInt(2, phoneNumber);
			stmt.setString(3, email);
			stmt.setString(4, subject);
			stmt.setString(5, message);
			stmt.executeUpdate();
			stmt.close();
			conn.close();
			
			System.out.println("Contact information saved successfully.");
			
			response.sendRedirect("contact");
			
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
