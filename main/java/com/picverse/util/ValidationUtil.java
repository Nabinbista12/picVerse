package com.picverse.util;

import java.util.regex.Pattern;


/**
 * Utility class for validation of various input types.
 * Provides methods to check if a string is null or empty, 
 * if it contains only alphabetic characters, 
 * if it is alphanumeric starting with a letter, 
 * if it is a valid email address, and 
 * if it is a valid full name.
 */
public class ValidationUtil {
	
    public static boolean isNullOrEmpty(String value) {
        return value == null || value.trim().isEmpty();
    }
    
    public static boolean isAlphabetic(String value) {
        return value != null && value.matches("^[a-zA-Z]+$");
    }

    public static boolean isAlphanumericStartingWithLetter(String value) {
        return value != null && value.matches("^[a-zA-Z][a-zA-Z0-9]*$");
    }
    
    public static boolean isValidEmail(String email) {
        String emailRegex = "^[\\w-\\.]+@([\\w-]+\\.)+[\\w-]{2,4}$";
        return email != null && Pattern.matches(emailRegex, email);
    }
    
    public static boolean isValidFullName(String value) {
        return value != null && value.matches("^[a-zA-Z]+(\\s[a-zA-Z]+)+$");
    }

}
