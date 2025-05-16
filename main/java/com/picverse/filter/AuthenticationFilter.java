package com.picverse.filter;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

import com.picverse.util.CookieUtil;
import com.picverse.util.SessionUtil;

/**
 * AuthenticationFilter is a servlet filter that intercepts incoming HTTP requests
 * to enforce authentication and authorization rules based on user roles.
 * It checks if the user is logged in and redirects them accordingly.
 */
@WebFilter(asyncSupported = true, urlPatterns = "/*")
public class AuthenticationFilter implements Filter {
	
	// Define the paths that require authentication

	private static final String LOGIN = "/login";
	private static final String REGISTER = "/register";
	private static final String HOME = "/home";
	private static final String ROOT = "/";
	private static final String CREATE = "/create";
	private static final String DELETE = "/delete";
	private static final String VIEW = "/view";
	private static final String UPDATE = "/edit";
	private static final String PROFILE = "/profile";
	private static final String DELETE_COMMENT = "/delete-comment";
	private static final String EDIT_PROFILE = "/edit-profile";

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// Initialization logic, if required
	}

	/**
	 * The doFilter method is called for each request that matches the filter's URL pattern.
	 * It checks if the user is logged in and redirects them based on their role and requested URI.
	 */
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {

		// Cast the generic ServletRequest/Response to their HTTP-specific versions
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse res = (HttpServletResponse) response;

		// Extract the requested URI and application context path
		String uri = req.getRequestURI();
		String contextPath = req.getContextPath();

	    /**
	     * Determine whether the current request URI is one of the protected paths
	     * that require authentication (e.g., LOGIN, REGISTER, HOME, etc.)
	     */
		boolean isProtectedPath = uri.endsWith(LOGIN) || uri.endsWith(REGISTER) || uri.endsWith(HOME)
				|| uri.endsWith(ROOT) || uri.endsWith(CREATE) || uri.endsWith(DELETE) || uri.endsWith(UPDATE)
				|| uri.endsWith(PROFILE) || uri.endsWith(DELETE_COMMENT) || uri.endsWith(VIEW) || uri.endsWith(EDIT_PROFILE);

		// If the request URI is not a protected path, proceed with the filter chain
		if (!isProtectedPath) {
			chain.doFilter(request, response); 
			return;
		}

		// Check if user is logged in by looking for a "username" attribute in session
		boolean isLoggedIn = SessionUtil.getAttribute(req, "username") != null;
		
		// Retrieve user's role from cookies (either "admin", "user", or null)
		String userRole = CookieUtil.getCookie(req, "role") != null ? CookieUtil.getCookie(req, "role").getValue()
				: null;
		
	    /**
	     * Handle role-based access:
	     * - Logged-in users should not access LOGIN or REGISTER pages
	     * - Admin and user roles are allowed to proceed for protected paths
	     * - Unauthenticated users are redirected to the LOGIN page for protected paths
	     */

		if ("admin".equals(userRole)) {
			if (uri.endsWith(LOGIN) || uri.endsWith(REGISTER)) {
				res.sendRedirect(contextPath + HOME);	// Redirect to HOME if trying to access LOGIN or REGISTER 	
			} else {
				chain.doFilter(request, response);		// Allow admin to access all paths
			}
		} else if ("user".equals(userRole)) {
			if (uri.endsWith(LOGIN) || uri.endsWith(REGISTER)) {
				res.sendRedirect(contextPath + HOME);	// Redirect to HOME if trying to access LOGIN or REGISTER
			} else {
				chain.doFilter(request, response);		// Allow user to access all paths
			}
		} else {
			// If the user is not logged in and trying to access a protected path
			if (uri.endsWith(LOGIN) || uri.endsWith(REGISTER) || uri.endsWith(HOME) || uri.endsWith(ROOT)) {
				chain.doFilter(request, response);		// Allow access to LOGIN, REGISTER, HOME, and ROOT paths
			} else {
				res.sendRedirect(contextPath + LOGIN);	// Redirect to LOGIN if trying to access protected paths without authentication
			}
		}
	}

	@Override
	public void destroy() {
		// Cleanup logic, if required
	}
}
