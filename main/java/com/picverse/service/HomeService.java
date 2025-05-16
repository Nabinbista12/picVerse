package com.picverse.service;

import com.picverse.config.DatabaseConfig;
import com.picverse.model.PostModel;

import java.sql.*;
import java.util.ArrayList;

/**
 * HomeService class is responsible for handling the business logic related to
 * the home page of the application.
 * It retrieves posts from the database and returns them to the controller.
 */
public class HomeService {
	
	/**
	 * This method retrieves all posts from the database.
	 * It returns an ArrayList of PostModel objects containing post details.
	 *
	 * @return ArrayList<PostModel> - List of posts
	 */
    public ArrayList<PostModel> getAllPosts() {
        ArrayList<PostModel> posts = new ArrayList<>();
        
        /*
		 * The try-catch block is used to handle any SQL exceptions that may occur
		 * while connecting to the database and executing the query.
		 */
        try {
            Connection conn = DatabaseConfig.getDbConnection();

            // SQL query to retrieve posts and user details
            String sql = "SELECT p.id, p.caption, p.image, u.username, u.profile_picture FROM post p JOIN user u ON p.user_id = u.id ORDER BY p.id DESC";
            PreparedStatement stmt = conn.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();
            
            // Loop through the result set and create PostModel objects for each post
            while (rs.next()) {
                PostModel post = new PostModel(
                        rs.getInt("id"),
                        rs.getString("caption"),
                        rs.getString("image"),
                        rs.getString("username"),
                        rs.getString("profile_picture")
                );
                posts.add(post);
            }

            // Close the resources
            rs.close();
            stmt.close();
            conn.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return posts;
    }
}
