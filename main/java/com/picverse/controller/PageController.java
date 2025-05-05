package com.picverse.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class Pages
 */
@WebServlet(urlPatterns = { "/contact", "/about-us", "/history", "/admin",
		"/admin-usermanagement", "/admin-postmanagement", "/admin-report", "/admin-profile"})
//@WebServlet("/*")
public class PageController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public PageController() {
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
		String path = request.getServletPath();
		System.out.println("PageController: " + path);
		switch (path) {
		case "/contact":
			request.getRequestDispatcher("/WEB-INF/pages/contact.jsp").forward(request, response);
			break;
		case "/about-us":
			request.getRequestDispatcher("/WEB-INF/pages/aboutUs.jsp").forward(request, response);
			break;
		case "/history":
			request.getRequestDispatcher("/WEB-INF/pages/history.jsp").forward(request, response);
			break;
		case "/admin":
			request.getRequestDispatcher("/WEB-INF/pages/admin/dashboard.jsp").forward(request, response);
			break;
		case "/admin-usermanagement":
			request.getRequestDispatcher("/WEB-INF/pages/admin/userManagement.jsp").forward(request, response);
			break;
		case "/admin-postmanagement":
			request.getRequestDispatcher("/WEB-INF/pages/admin/postManagement.jsp").forward(request, response);
			break;
		case "/admin-report":
			request.getRequestDispatcher("/WEB-INF/pages/admin/report.jsp").forward(request, response);
			break;
		case "/admin-profile":
			request.getRequestDispatcher("/WEB-INF/pages/admin/profile.jsp").forward(request, response);
			break;
		default:
			response.sendError(HttpServletResponse.SC_NOT_FOUND);
			break;
		}

	}

}
