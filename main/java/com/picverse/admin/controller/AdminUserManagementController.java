package com.picverse.admin.controller;

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
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.picverse.config.DatabaseConfig;

/**
 * Servlet implementation class AdminUserManagementController
 */
@WebServlet(asyncSupported = true, urlPatterns = { "/admin-usermanagement" })
public class AdminUserManagementController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AdminUserManagementController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Map<String, Object>> users = new ArrayList<>();

		// SQL query to fetch user data
		String sql = "SELECT id, name, email FROM user";

		try (Connection conn = DatabaseConfig.getDbConnection();
				PreparedStatement stmt = conn.prepareStatement(sql);
				ResultSet rs = stmt.executeQuery()) {

			while (rs.next()) {
				Map<String, Object> user = new HashMap<>();
				user.put("userId", rs.getInt("id"));
				user.put("username", rs.getString("name"));
				user.put("email", rs.getString("email"));
				//user.put("status", rs.getString("status"));
				users.add(user);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		// Set the users data to the request scope
		request.setAttribute("users", users);

		// Forward to JSP page
		request.getRequestDispatcher("/WEB-INF/pages/admin/userManagement.jsp").forward(request, response);
	}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {


		String action = request.getParameter("action"); // Expected to be "delete"
	    
	    if ("delete".equals(action)) {
	        deleteUser(request, response);
	    }
	    
	}
	
	
	private void deleteUser(HttpServletRequest request, HttpServletResponse response)
	        throws ServletException, IOException {
	    
	    int userId = Integer.parseInt(request.getParameter("user_id"));
	    String sql = "DELETE FROM user WHERE id = ?";

	    try (Connection conn = DatabaseConfig.getDbConnection();
	         PreparedStatement stmt = conn.prepareStatement(sql)) {

	        stmt.setInt(1, userId);
	        stmt.executeUpdate();
	        response.sendRedirect(request.getContextPath() + "/admin-usermanagement");

	    } catch (SQLException | ClassNotFoundException e) {
	        e.printStackTrace();
	    }
	}

	

}
