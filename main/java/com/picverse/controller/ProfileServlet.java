package com.picverse.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.picverse.config.DatabaseConfig;

/**
 * Servlet implementation class ProfileServlet
 */
@WebServlet("/profile")
public class ProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ProfileServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		if (session == null || session.getAttribute("userId") == null) {
			response.sendRedirect("login");
			return;
		}

		try (Connection conn = DatabaseConfig.getDbConnection()) {
			Integer loggedInUserId = (Integer) session.getAttribute("userId");
			String targetUsername = request.getParameter("username"); // Optional param

			int userIdToFetch;
			String username;
			String profilePicture;

			// If visiting other user's profile
			if (targetUsername != null && !targetUsername.trim().isEmpty()) {
				// Get their user ID
				String userSql = "SELECT id, username, profile_picture FROM user WHERE username = ?";
				PreparedStatement userStmt = conn.prepareStatement(userSql);
				userStmt.setString(1, targetUsername);
				ResultSet userRs = userStmt.executeQuery();

				if (!userRs.next()) {
					response.sendRedirect("not-found.jsp"); // Handle user not found
					return;
				}

				userIdToFetch = userRs.getInt("id");
				username = userRs.getString("username");
				profilePicture = userRs.getString("profile_picture");
			} else {
				// Default: fetch logged-in user's data
				userIdToFetch = loggedInUserId;

				String userSql = "SELECT username, profile_picture FROM user WHERE id = ?";
				PreparedStatement userStmt = conn.prepareStatement(userSql);
				userStmt.setInt(1, userIdToFetch);
				ResultSet userRs = userStmt.executeQuery();
				userRs.next();
				username = userRs.getString("username");
				profilePicture = userRs.getString("profile_picture");
			}

			if (profilePicture == null || profilePicture.trim().isEmpty()) {
				profilePicture = "logo.png";
			}

			request.setAttribute("username", username);
			request.setAttribute("profilePicture", profilePicture);
			request.setAttribute("isOwnProfile", userIdToFetch == loggedInUserId);

			// Get posts by that user
			String postSql = "SELECT image FROM post WHERE user_id = ?";
			PreparedStatement postStmt = conn.prepareStatement(postSql);
			postStmt.setInt(1, userIdToFetch);
			ResultSet postRs = postStmt.executeQuery();

			ArrayList<String> postImages = new ArrayList<>();
			while (postRs.next()) {
				postImages.add(postRs.getString("image"));
			}

			request.setAttribute("postImages", postImages);

		} catch (Exception e) {
			e.printStackTrace();
		}

		request.getRequestDispatcher("/WEB-INF/pages/profile.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
