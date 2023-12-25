<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <title>Update_offer_here</title>
    <link href="CSS/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background-color: #333;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        form {
            background-color: rgba(255, 255, 255, 0.2);
            padding: 20px;
            border-radius: 10px;
            display: inline-block;
            text-align: center;
        }

        form input[type="text"] {
            outline: 2px solid white;
            margin: 10px;
            padding: 10px;
            border-radius: 5px;
            display: block;
        }

        #B1 {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        #B1:hover {
            background-color: #45a049;
        }
    </style>
</head>

<body>

<%
	String oid = request.getParameter("oid");
	String description = request.getParameter("description");
	
%>

    <form method="post" action="Offersupdate">
        <input type="text" name="oid" readonly value="<%= oid %>">
        <input type="text" name="description" value="<%= description %>">
        <input type="submit" class="btn btn-success" value="Update" id="B1">
    </form>
</body>

</html>
