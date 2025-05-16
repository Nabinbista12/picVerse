package com.picverse.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.picverse.config.DatabaseConfig;
import com.picverse.model.UserModel;
import com.picverse.util.PasswordUtil;
//import com.picverse.util.PasswordUtil;

/**
 * Service class for handling login operations. Connects to the database,
 * verifies user credentials, and returns login status.
 */
public class LoginService {

	private Connection dbConn;
	private boolean isConnectionError = false;

	/**
	 * Constructor initializes the database connection. Sets the connection error
	 * flag if the connection fails.
	 */
	public LoginService() {
		try {
			dbConn = DatabaseConfig.getDbConnection();
		} catch (SQLException | ClassNotFoundException ex) {
			ex.printStackTrace();
			isConnectionError = true;
		}
	}

	/**
	 * Validates the user credentials against the database records.
	 *
	 * @param studentModel the StudentModel object containing user credentials
	 * @return true if the user credentials are valid, false otherwise; null if a
	 *         connection error occurs
	 */
//	public Boolean loginUser(UserModel userModel) {
//		if (isConnectionError) {
//			System.out.println("Connection Error!");
//			return null;
//		}
//
//		String query = "SELECT username, password FROM user WHERE username = ?";
//		try (PreparedStatement stmt = dbConn.prepareStatement(query)) {
//			stmt.setString(1, userModel.getUsername());
//			ResultSet result = stmt.executeQuery();
//
//			if (result.next()) {
//				return validatePassword(result, userModel);
//			}
//		} catch (SQLException e) {
//			e.printStackTrace();
//			return null;
//		}
//
//		return false;
//	}

	public Integer loginUser(UserModel userModel) {
		if (isConnectionError) {
			System.out.println("Connection Error!");
			return null;
		}

		String query = "SELECT id, username, password FROM user WHERE username = ?";
		try (PreparedStatement stmt = dbConn.prepareStatement(query)) {
			stmt.setString(1, userModel.getUsername());
			ResultSet result = stmt.executeQuery();

			if (result.next()) {
				return validatePassword(result, userModel); // returns user ID or null
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return null;
	}

	/**
	 * Validates the password retrieved from the database.
	 *
	 * @param result       the ResultSet containing the username and password from
	 *                     the database
	 * @param studentModel the StudentModel object containing user credentials
	 * @return true if the passwords match, false otherwise
	 * @throws SQLException if a database access error occurs
	 */
	private Integer validatePassword(ResultSet result, UserModel userModel) throws SQLException {
		String dbUsername = result.getString("username");
		String dbPassword = result.getString("password");

//		return dbUsername.equals(userModel.getUsername())
//				&& PasswordUtil.decrypt(dbPassword, dbUsername).equals(userModel.getPassword());
		boolean isValid = dbUsername.equals(userModel.getUsername())
				&& PasswordUtil.decrypt(dbPassword, dbUsername).equals(userModel.getPassword());

		return isValid ? result.getInt("id") : null;
	}

	public UserModel getUserById(int userId) {
		if (isConnectionError) {
			System.out.println("Connection Error!");
			return null;
		}

		String query = "SELECT * FROM user WHERE id = ?";
		try (PreparedStatement stmt = dbConn.prepareStatement(query)) {
			stmt.setInt(1, userId);
			ResultSet result = stmt.executeQuery();

			if (result.next()) {
				UserModel user = new UserModel();
				user.setId(result.getInt("id"));
				user.setName(result.getString("name"));
				user.setUsername(result.getString("username"));
				user.setEmail(result.getString("email"));
				user.setPassword(result.getString("password"));
				user.setProfilePicture(result.getString("profile_picture")); 
				return user;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return null;
	}

}