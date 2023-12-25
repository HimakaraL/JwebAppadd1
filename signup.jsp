<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Sign up</title>
    <link href="CSS/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #333;
            color: white;
            text-align: center;
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }
        .c1 {
            margin: 0 auto;
            padding: 20px;
            text-align: center;
            max-width: 400px;
            background-color: rgba(0, 0, 0, 0.5);
            border-radius: 10px;
        }
        h1 {
            font-size: 24px;
        }
        img {
            width: 200px;
            height: 200px;
        }
        form {
            text-align: left;
        }
        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin: 5px 0;
            border: 2px solid white; /* Add white border */
            background-color: #333;
            color: white;
        }
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: none;
            background-color: #28a745;
            color: white;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #218838;
        }
    </style>
</head>

<body>
    <div class="c1">
        <h1>Enter your details below!</h1>
        <img src="3.JPG" alt="login" class="rounded">
        <form action="insert" method="post">
            Name <input type="text" name="name"><br>
            Email <input type="text" name="email"><br>
            Phone Number <input type="text" name="phone"><br>
            User name <input type="text" name="uname"><br>
            Password <input type="text" name="pword"><br>
            <input type="submit" class="btn btn-success" name="submit" value="Signup">
        </form>
    </div>
</body>
</html>
