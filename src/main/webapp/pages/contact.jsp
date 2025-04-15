<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="navbar.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Contact Us</title>
	<link rel="stylesheet" type="text/css"href="../css/contact.css" />
</head>
<body>
   
	 <section class="contact-section">
        <div class="contact-header">
            <h2>SEND US A MESSAGE</h2>
            <p>Lorem Ipsum has been the text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
        </div>

        <div class="contact-form">
            <form>
                <div class="row">
                    <div class="input-group">
                        <label for="firstName">FIRST NAME</label>
                        <input type="text" id="firstName" name="firstName">
                    </div>
                    <div class="input-group">
                        <label for="lastName">LAST NAME</label>
                        <input type="text" id="lastName" name="lastName">
                    </div>
                </div>
                <div class="row">
                    <div class="input-group">
                        <label for="phone">PHONE</label>
                        <input type="text" id="phone" name="phone">
                    </div>
                    <div class="input-group">
                        <label for="email">EMAIL</label>
                        <input type="email" id="email" name="email">
                    </div>
                </div>
                <div class="input-group full">
                    <label for="subject">SUBJECT</label>
                    <input type="text" id="subject" name="subject">
                </div>
                <div class="input-group full">
                    <label for="message">MESSAGE</label>
                    <textarea id="message" name="message"></textarea>
                </div>
                <button type="submit">SEND MESSAGE</button>
            </form>
        </div>
    </section>


</body>
</html>