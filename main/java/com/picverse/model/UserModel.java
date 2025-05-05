package com.picverse.model;

public class UserModel {

    private int id;              // Added ID field
    private String name;
    private String userName;
    private String email;
    private String password;

    // Default constructor
    public UserModel() {
    }
    

	public UserModel(String username, String pasword) {
		this.userName = username;
		this.password = pasword;
	}

    // Constructor with all fields
    public UserModel(int id, String name, String userName, String email, String password) {
        this.id = id;
        this.name = name;
        this.userName = userName;
        this.email = email;
        this.password = password;
    }

    // Getters and setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
