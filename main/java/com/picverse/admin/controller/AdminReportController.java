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
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import com.picverse.config.DatabaseConfig;

@WebServlet(asyncSupported = true, urlPatterns = { "/admin-report" })
public class AdminReportController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Map<String, Integer> report = new HashMap<>();

        try (Connection conn = DatabaseConfig.getDbConnection()) {
            PreparedStatement ps = conn.prepareStatement(
                "SELECT u.username, " +
                " (SELECT COUNT(*) FROM post p WHERE p.user_id = u.id) AS post_count, " +
                " (SELECT COUNT(*) FROM comment c WHERE c.user_id = u.id) AS comment_count " +
                " FROM user u"
            );
            ResultSet rs = ps.executeQuery();

            ArrayList<Map<String, Object>> userReports = new ArrayList<>();

            while (rs.next()) {
                Map<String, Object> userData = new HashMap<>();
                userData.put("username", rs.getString("username"));
                userData.put("postCount", rs.getInt("post_count"));
                userData.put("commentCount", rs.getInt("comment_count"));

                userReports.add(userData);
            }

            request.setAttribute("userReports", userReports);

        } catch (Exception e) {
            e.printStackTrace();
        }


        // Pass report to JSP
        request.setAttribute("reportData", report);
        request.getRequestDispatcher("/WEB-INF/pages/admin/report.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
