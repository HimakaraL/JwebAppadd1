<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <title>Delete_UserProfile</title>
    <link href="CSS/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background-color: #333;
            text-align: center;
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }

        #h {
            color: white;
        }

        form {
            background-color: rgba(255, 255, 255, 0.2);
            display: inline-block;
            padding: 20px;
            border-radius: 10px;
        }

        form input[type="text"] {
            outline: 2px solid white;
            margin: 10px;
            padding: 10px;
            border-radius: 5px;
            display: block;
        }

        .btn-danger {
            background-color: red;
            color: white;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .btn-danger:hover {
            background-color: darkred;
        }
    </style>
</head>

<body>
    <h1 id="h">Welcome!</h1><br>

    <%
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String username = request.getParameter("uname");
        String password = request.getParameter("pword");
    %>

    <form action="delete" method="post">
        <input type="text" name="cusid" value="<%= id %>" readonly>
        <input type="text" name="name" value="<%= name %>" readonly>
        <input type="text" name="email" value="<%= email %>" readonly>
        <input type="text" name="phone" value="<%= phone %>" readonly>
        <input type="text" name="uname" value="<%= username %>" readonly>
        <br>
        <input type="submit" name="submit" class="btn btn-danger" value="Delete My Account"><br>
    </form>
</body>

</html>
