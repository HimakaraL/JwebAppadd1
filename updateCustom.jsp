<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>Update_Your_Profile</title>
<link href="CSS/bootstrap.min.css" rel="stylesheet">
</head>

<body style="background-color: #333;"> <!-- Set the background color of the entire page -->

    <%
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String username = request.getParameter("uname");
        String password = request.getParameter("pword");
    %>

<h1 style="color: white; font-size: 30px; text-align: center;">Update your Profile!</h1><br>

    <div class="c1" style="color: white; text-align: center; height: 100vh; display: flex; align-items: center; justify-content: center;">
		
        
        <form action="update" method="post" style="background-color: rgba(255, 255, 255, 0.2); padding: 20px; border-radius: 10px; text-align: center;">
            Customer ID<input type="text" name="cusid" value="<%= id %>" readonly><br><br>
            Name<input type="text" name="name" value="<%= name %>"><br><br>
            Email<input type="text" name="email" value="<%= email %>"><br><br>
            Phone Number<input type="text" name="phone" value="<%= phone %>"><br><br>
            Username<input type="text" name="uname" value="<%= username %>"><br><br>
            Password<input type="password" name="pword" value="<%= password %>"><br><br>

            <input type="submit" name="submit" class="btn btn-success" value="Update" style="background-color: #4CAF50; color: white; border: none; padding: 10px 20px; cursor: pointer; transition: background-color 0.3s;">
        </form>

    </div>

</body>
</html>
