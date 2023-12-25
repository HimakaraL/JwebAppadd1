<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Log into Rent4U</title>
<link href="CSS/bootstrap.min.css" rel="stylesheet">
<style>
    body {
        background-color: #333;
        color: white;
    }

    .container {
        min-height: 100vh;
    }

    .form-group label {
        color: white;
    }
</style>
</head>
<body>
<div class="container d-flex justify-content-center align-items-center">
    <div class="text-center">
        <h1 class="c1">Log in to the system</h1><br><br><br>
        <img src="2.JPG" alt="login" class="rounded" width="200" height="200"><br><br>
        <form action="log" method="post">
            <div class="form-group">
                <label for="uname">User name:</label>
                <input type="text" class="form-control" name="uname" required>
            </div>
            <div class="form-group">
                <label for="pword">Password:</label>
                <input type="password" class="form-control" name="pword" required>
            </div><br><br>
            <button type="submit" class="btn btn-success">Login</button>
            <button type="reset" class="btn btn-light">Reset</button>
        </form>
    </div>
</div>
</body>
</html>
