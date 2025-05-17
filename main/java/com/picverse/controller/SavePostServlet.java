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

import com.picverse.config.DatabaseConfig;

/**
 * Servlet implementation class SavePostServlet
 */
@WebServlet("/saved-posts")
public class SavePostServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SavePostServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.println("saved post called");
		request.getRequestDispatcher("/WEB-INF/pages/savedposts.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		System.out.println("SavePost servlet called");
		int postId = Integer.parseInt(request.getParameter("postId"));
		
		System.out.println("Post ID: " + postId);
		int userId = -1;
		HttpSession session = request.getSession(false);
		if (session != null) {
			userId = (int) request.getSession().getAttribute("userId");;
		}
		if (userId == -1) {
			response.sendError(HttpServletResponse.SC_UNAUTHORIZED);
			return;
		}

		try (Connection conn = DatabaseConfig.getDbConnection()) {
			boolean saved = false;

			try (PreparedStatement psCheck = conn
					.prepareStatement("SELECT * FROM saved_post WHERE user_id=? AND post_id=?")) {
				psCheck.setInt(1, userId);
				psCheck.setInt(2, postId);
				try (ResultSet rs = psCheck.executeQuery()) {
					if (rs.next()) {
						try (PreparedStatement psDelete = conn
								.prepareStatement("DELETE FROM saved_post WHERE user_id=? AND post_id=?")) {
							psDelete.setInt(1, userId);
							psDelete.setInt(2, postId);
							psDelete.executeUpdate();
						}
						saved = false;
					} else {
						try (PreparedStatement psInsert = conn
								.prepareStatement("INSERT INTO saved_post(user_id, post_id) VALUES (?, ?)")) {
							psInsert.setInt(1, userId);
							psInsert.setInt(2, postId);
							psInsert.executeUpdate();
						}
						saved = true;
					}
				}
			}

			try (PreparedStatement psCount = conn.prepareStatement("SELECT COUNT(*) FROM saved_post WHERE post_id=?")) {
				psCount.setInt(1, postId);
				try (ResultSet rsCount = psCount.executeQuery()) {
					rsCount.next();
					int saveCount = rsCount.getInt(1);
					response.setContentType("application/json");
					response.getWriter().write("{\"saved\":" + saved + ",\"count\":" + saveCount + "}");
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
