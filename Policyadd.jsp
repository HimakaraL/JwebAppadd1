<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add_policies</title>
<link href="CSS/bootstrap.min.css" rel="stylesheet">

<style>
    body {
        background-color: #333;
        color: white;
        text-align: center;
    }

    .c1 {
        margin: 0 auto;
        padding: 30px;
        max-width: 600px;
    }

    h1 {
        font-size: 30px;
    }

    form {
        border: 2px solid white;
        padding: 20px;
        background-color: rgba(255, 255, 255, 0.1);
        border-radius: 10px;
    }

    input[type="text"] {
        width: 100%;
        padding: 10px;
        margin: 5px 0;
    }

    .btn {
        margin: 10px 0;
    }


</style>
</head>

<body>
<div class="c1">
    <h1>Enter the new Policy details below</h1><br><br><br>
    <form action="addo1" method="post">
        New Policy: <input type="text" name="pdescription"><br><br>
        <input type="submit" class="btn btn-warning" name="submit" value="Add Policy">
    </form>
</div>

<div class="container d-flex justify-content-center align-items-center">
	<a href="Policyupdate.jsp"><button type="button" class="btn btn-success" id="B3">Policy update!</button></a>
	<a href="Policydelete.jsp"><button type="button" class="btn btn-danger" id="B4">Policy delete</button></a>
</div>
</body>
</html>
