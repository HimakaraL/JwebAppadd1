<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Offers_section_trending_now</title>
    <link href="CSS/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #333;
            color: white;
            text-align: center;
        }
        .star-tabs {
            display: flex;
            justify-content: space-between;
            margin: 20px;
        }
        .star-tab {
            position: relative;
            width: 23%; /* Adjust as needed to fit 4 tabs per section */
            background-color: #333;
            color: white;
            padding: 15px;
            text-align: center;
            cursor: pointer;
            border-radius: 8px;
            transition: background-color 0.3s;
        }
        .star-tab:hover {
            background-color: #555; /* Change the background color on hover */
        }
        .offer-id {
            font-weight: bold;
        }
        .star {
            content: "\2605";
            position: absolute;
            top: -15px;
            left: 50%;
            transform: translateX(-50%);
            font-size: 24px;
        }
        h1{
        	text-align: center;
        }
        h2{
        	font-size: 11px;
        }
    </style>
</head>
<body>
	
	<h1 id="h1">Offers Trending Now! &#127873; &#127873; &#127873; </h1><br><br><br>
    <div class="star-tabs">
        <c:forEach var="off" items="${offerdetails}">
            <div class="star-tab">
                <div class="star">&#9733;</div>
                <span class="offer-id">Offer ID: ${off.oid}</span>
                <p>${off.description}</p>
            </div>
        </c:forEach>
    </div><br><br><br><br>
    <h2 id="h2">Use these OfferID in your booking point to gain more discount! </h2><br><br><br>
</body>
</html>
