package com.picverse.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.picverse.config.DatabaseConfig;
import com.picverse.model.PostModel;

/**
 * Servlet implementation class UpdateServlet
 */
@WebServlet("/edit")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UpdateServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			// Get post ID from request parameter
			int postId = Integer.parseInt(request.getParameter("id"));

			// Initialize post variable
			PostModel post = null;

			// Fetch post details from database
			Connection conn = DatabaseConfig.getDbConnection();
			String sql = "SELECT * FROM posts WHERE id = ?";
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setInt(1, postId);
			ResultSet rs = stmt.executeQuery();

			if (rs.next()) {
				post = new PostModel(rs.getInt("id"), rs.getString("caption"), rs.getString("image"));
			}

			rs.close();
			stmt.close();
			conn.close();

			// Set post attribute to the request
			request.setAttribute("post", post);

			// Forward to view.jsp to display the post
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/pages/edit.jsp");
			rd.forward(request, response);

		} catch (Exception e) {
			e.printStackTrace(); // Log the error
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		String caption = request.getParameter("caption");

		try {
			Connection conn = DatabaseConfig.getDbConnection();
			String sql = "UPDATE posts SET caption=? WHERE id=?";
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setString(1, caption);
			stmt.setInt(2, id);

			stmt.executeUpdate();

			stmt.close();
			conn.close();

			response.sendRedirect("home");
		} catch (Exception e) {
			e.printStackTrace();
			response.sendRedirect("error.jsp");
		}
	}

}
