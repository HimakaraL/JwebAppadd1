<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Our Policies</title>
    <link href="CSS/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: white; /* White background */
            color: black; /* Black text */
            
        }
        table {
            border-collapse: collapse;
            width: 80%; /* Adjust as needed */
            margin: 0 auto;
        }
        th, td {
            padding: 10px;
        }
        th {
            background-color: #555; /* Header background color */
        }
        tr:nth-child(even) {
            background-color: #444; /* Even row background color */
        }
        tr:nth-child(odd) {
            background-color: #333; /* Odd row background color */
        }
        h1{
        	text-align: center;
        }
    </style>
</head>
<body>
    <h1 id="h1">Our Policies</h1> <!-- Added heading "Our Policies" -->
    <ul>
        <c:forEach var="pol" items="${policydetails}">
            <li>${pol.pdescription}</li> <!-- Display policies as list items -->
        </c:forEach>
    </ul>
</body>
</html>
