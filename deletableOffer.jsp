<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <title>Delete_offer_here</title>
    <link href="CSS/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #333;
            color: white;
            text-align: center;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        form {
            background-color: rgba(0, 0, 0, 0.5);
            padding: 20px;
            border-radius: 10px;
        }

        input[type="text"] {
            background-color: white;
            color: #333;
            padding: 5px;
            border: 2px solid white;
        }

        input[type="submit"] {
            background-color: #333;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #555;
        }
    </style>
</head>

<body>

<%
	String oid1 = request.getParameter("oid");
	String description1 = request.getParameter("description");

%>
    <form method="post" action="Offersdelete">
        <input type="text" name="oid" readonly value="<%=oid1 %>">
        <br><br>
        <input type="text" name="description" readonly value="<%=description1 %>">
        <br><br><br>
        <input type="submit" class="btn btn-danger" value="Delete" id="B1">
    </form>
</body>

</html>

