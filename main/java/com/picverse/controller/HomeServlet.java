package com.picverse.controller;

import com.picverse.model.PostModel;
import com.picverse.service.HomeService;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;


@WebServlet({ "/", "/home" })
public class HomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public HomeServlet() {
		super();
		// TODO Auto-generated constructor stub
	}


	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 * 
	 *      This method handles GET requests for the home page. It retrieves all
	 *      posts from the HomeService and forwards the request to the home.jsp page.
	 */
	// TODO Auto-generated method stub
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
	        throws ServletException, IOException {

		// HomeService is a service class that handles the logic for the home page
	    HomeService postService = new HomeService();
	    ArrayList<PostModel> posts = postService.getAllPosts();

	    request.setAttribute("posts", posts);
	    RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/pages/home.jsp");
	    rd.forward(request, response);
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
