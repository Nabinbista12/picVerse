//package com.picverse.controller;
//
//import jakarta.servlet.RequestDispatcher;
//import jakarta.servlet.ServletException;
//import jakarta.servlet.annotation.WebServlet;
//import jakarta.servlet.http.HttpServlet;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
//import jakarta.servlet.http.HttpSession;
//
//import java.io.IOException;
//import java.sql.Connection;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//
//import com.picverse.config.DatabaseConfig;
//
//@WebServlet("/like")
//public class LikeServlet extends HttpServlet {
//	private static final long serialVersionUID = 1L;
//
//	public LikeServlet() {
//		super();
//	}
//
//	protected void doPost(HttpServletRequest request, HttpServletResponse response)
//			throws ServletException, IOException {
//		HttpSession session = request.getSession(false);
//
//		if (session != null) {
//			Integer userId = (Integer) session.getAttribute("userId");
//			Integer postId = Integer.parseInt(request.getParameter("postId"));
//=
//			try {
//				Connection conn = DatabaseConfig.getDbConnection();
//				String checkSql = "SELECT * FROM likes WHERE post_id = ? AND user_id = ?";
//				PreparedStatement checkStmt = conn.prepareStatement(checkSql);
//				checkStmt.setInt(1, postId);
//				checkStmt.setInt(2, userId);
//				ResultSet rs = checkStmt.executeQuery();
//
//				if (rs.next()) {
//					boolean isLiked = rs.getBoolean("is_liked");
//					String updateSql = "UPDATE post_like SET is_liked = ? WHERE posts_id = ? AND user_id = ?";
//					PreparedStatement updateStmt = conn.prepareStatement(updateSql);
//					updateStmt.setBoolean(1, !isLiked); 
//					updateStmt.setInt(2, postId);
//					updateStmt.setInt(3, userId);
//					updateStmt.executeUpdate();
//					System.out.println("Like status toggled for post " + postId);
//				} else {
//					String insertSql = "INSERT INTO likes (post_id, user_id, is_liked) VALUES (?, ?, ?)";
//					PreparedStatement insertStmt = conn.prepareStatement(insertSql);
//					insertStmt.setInt(1, postId);
//					insertStmt.setInt(2, userId);
//					insertStmt.setBoolean(3, true);
//					insertStmt.executeUpdate();
//					System.out.println("Like added for post " + postId);
//				}
//
//				String likeCountSql = "SELECT COUNT(*) FROM post_like WHERE post_id = ? AND is_liked = true";
//				PreparedStatement likeCountStmt = conn.prepareStatement(likeCountSql);
//				likeCountStmt.setInt(1, postId);
//				ResultSet countRs = likeCountStmt.executeQuery();
//				if (countRs.next()) {
//					int likeCount = countRs.getInt(1);
//					String updatePostSql = "UPDATE post SET like_count = ? WHERE id = ?";
//					PreparedStatement updatePostStmt = conn.prepareStatement(updatePostSql);
//					updatePostStmt.setInt(1, likeCount);
//					updatePostStmt.setInt(2, postId);
//					updatePostStmt.executeUpdate();
//					System.out.println("Post like count updated: " + likeCount);
//				}
//
//				conn.close();
//				response.sendRedirect("post-details?id=" + postId); 
//			} catch (Exception e) {
//				e.printStackTrace();
//				response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR,
//						"Error while processing the like/unlike request");
//			}
//		} else {
//			response.sendRedirect("login"); 
//		}
//	}
//}
