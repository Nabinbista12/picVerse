<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="navbar.jsp" %>
<%@ include file="leftNavbar.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit your page</title>
   <link rel="stylesheet" href="../css/edit.css">
</head>
<body>

   <!-- This is to create a new post.  -->
    <main class="edit">
        <h1 class="heading">Edit your post</h1>
           <br>

        <form action="#" class="edit-main">
            <div class="edit-post">
                <!-- Caption for the post.  -->
                <textarea name="caption" id="" class="edit-caption" rows="10" cols="30" placeholder="Enter caption or the detail of the post">Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis blanditiis, esse pariatur amet reprehenderit ipsam sequi iusto, rem non est doloremque minima cum, saepe atque illo sunt vitae doloribus recusandae.</textarea>

                <!-- Picture for the post.  -->
                <input type="file" class="post-img" accept="image/*">
            </div>


            <button class="submit-btn">Edit your post</button>
        </form>
    </main>

</body>
</html>