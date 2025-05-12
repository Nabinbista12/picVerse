package com.picverse.admin.controller;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.picverse.config.DatabaseConfig;

/**
 * Servlet implementation class AdminPostManagementController
 */
@WebServlet(asyncSupported = true, urlPatterns = { "/admin-postmanagement" })
public class AdminPostManagementController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminPostManagementController() {
        super();
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	
        List<Map<String, Object>> posts = new ArrayList<>();

        // SQL query to fetch posts with the username from the user table
        String sql = "SELECT p.id, p.caption, p.image, u.username "
                + "FROM post p JOIN user u ON p.user_id = u.id";

        try (Connection conn = DatabaseConfig.getDbConnection();
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                Map<String, Object> post = new HashMap<>();
                post.put("postId", rs.getInt("id"));
                post.put("username", rs.getString("username"));
                post.put("caption", rs.getString("caption"));
                post.put("image", rs.getString("image"));
                posts.add(post);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e1) {
            e1.printStackTrace();
        }

        // Set the posts data to the request scope
        request.setAttribute("posts", posts);

        // Forward to JSP page
        request.getRequestDispatcher("/WEB-INF/pages/admin/postManagement.jsp").forward(request, response);
        
        
    }
    

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("action"); // Either "edit" or "delete"
        if ("delete".equals(action)) {
            deletePost(request, response);
        }
        
    }

    
    private void deletePost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int postId = Integer.parseInt(request.getParameter("post_id"));
        String sql = "DELETE FROM post WHERE id = ?";

        try (Connection conn = DatabaseConfig.getDbConnection(); PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, postId);
            stmt.executeUpdate();
            response.sendRedirect(request.getContextPath() + "/admin-postmanagement");

        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
    }

    
}

