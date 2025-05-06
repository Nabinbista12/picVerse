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
 * Servlet implementation class ViewServlet
 */
@WebServlet("/view")
public class ViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
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
            RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/pages/view.jsp");
            rd.forward(request, response);

        } catch (Exception e) {
            e.printStackTrace(); // Log the error
        }
    }


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
