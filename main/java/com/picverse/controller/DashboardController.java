package com.picverse.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.picverse.config.DatabaseConfig;

/**
 * Servlet implementation class DashboardController
 */
@WebServlet(asyncSupported = true, urlPatterns = { "/dashboard" })
public class DashboardController extends HttpServlet {
      private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DashboardController() {
        super();
        // TODO Auto-generated constructor stub
    }

      /**
       * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
       */
      protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            
            int totalUsers = 0;
	        int totalPosts = 0;
	
	        try (Connection conn = DatabaseConfig.getDbConnection()) {
	            // Get total users
	            String userSql = "SELECT COUNT(*) FROM user";
	            try (PreparedStatement userStmt = conn.prepareStatement(userSql);
	                 ResultSet userRs = userStmt.executeQuery()) {
	                if (userRs.next()) {
	                    totalUsers = userRs.getInt(1);
	                }
	            }

            // Get total posts
            String postSql = "SELECT COUNT(*) FROM posts";
            try (PreparedStatement postStmt = conn.prepareStatement(postSql);
                 ResultSet postRs = postStmt.executeQuery()) {
                if (postRs.next()) {
                    totalPosts = postRs.getInt(1);
                }
            }

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace(); // Log the error
            // Consider setting an error attribute in the request to display an error message in the JSP
            request.setAttribute("error", "Failed to retrieve dashboard data.");
        }

        // Set the data as attributes in the request
        request.setAttribute("totalUsers", totalUsers);
        request.setAttribute("totalPosts", totalPosts);
      
            
          request.getRequestDispatcher("/WEB-INF/pages/admin/dashboard.jsp").forward(request, response);
      }

      /**
       * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
       */
      protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            // TODO Auto-generated method stub
            doGet(request, response);
      }

}
