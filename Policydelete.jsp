<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <title>Delete_Policies</title>
    <link href="CSS/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #333;
            color: white;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
        }

        .c1 {
            text-align: center;
        }

        h1 {
            font-size: 36px;
        }
        
 	   input[type="text"] {
        background-color: #333;
        color: white;
        border: 2px solid white; /* Add a white outline */
        text-align: center;
        margin: 5px;
        font-size: 16px;
    }

        input[type="text"]:focus {
            background-color: #555; /* Change color on focus */
        }

        .btn {
            background-color: #007BFF;
            color: white;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .btn:hover {
            background-color: #0056b3; /* Change color on hover */
        }
    </style>
</head>

<body>
    <div class="c1">
        <h1>Delete Policies</h1><br><br><br>
        <form action="policyfindServlet2" method="post">
            Policy ID  <input type="text" name="pid"><br><br>
            <input type="submit" class="btn btn-info" name="submit" value="Search"><br>
        </form>
    </div>
</body>

</html>
