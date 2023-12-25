<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
  <meta charset="ISO-8859-1">
  <title>Customer Profile</title>
  <link href="CSS/bootstrap.min.css" rel="stylesheet">
  <style>
    body {
      text-align: center;
      font-family: Arial, sans-serif;
    }

    #header {
      font-size: 36px;
    }

    #customer-info {
      margin: 20px;
      padding: 20px;
      border: 1px solid #ccc;
      display: inline-block;
      text-align: left;
    }

    #update-delete {
      margin: 20px;
    }

    #offers-button {
      position: absolute;
      top: 10px;
      right: 20px;
    }
    
    #policy-button {
      position: absolute;
      top: 10px;
      right: 120px;
    }
    
  </style>
</head>

<body>
  <div id="header">Welcome!</div>

  <c:forEach var="cus" items="${Customerdetails}">
    <!-- passing values to variables -->
    <c:set var="id" value="${cus.id}" />
    <c:set var="name" value="${cus.name}" />
    <c:set var="email" value="${cus.email}" />
    <c:set var="phone" value="${cus.phone}" />
    <c:set var="username" value="${cus.username}" />
    <c:set var="password" value="${cus.password}" />

    <div id="customer-info">
      <h2>Customer information</h2>
      <ul>
        <li><strong>ID:</strong> ${cus.id}</li>
        <li><strong>Name:</strong> ${cus.name}</li>
        <li><strong>Email:</strong> ${cus.email}</li>
        <li><strong>Telephone:</strong> ${cus.phone}</li>
        <li><strong>User_name:</strong> ${cus.username}</li>
      </ul>
    </div>
  </c:forEach>

  <div id="update-delete">
    <c:url value="updateCustom.jsp" var="cusupdate">
      <c:param name="id" value="${id}" />
      <c:param name="name" value="${name}" />
      <c:param name="email" value="${email}" />
      <c:param name="phone" value="${phone}" />
      <c:param name="uname" value="${username}" />
      <c:param name="pword" value="${password}" />
    </c:url>
    <a href="${cusupdate}">
      <input type="button" class="btn btn-success" name="update" value="Update my data" id="B1">
    </a>

    <c:url value="deletecustom.jsp" var="cusdelete">
      <c:param name="id" value="${id}" />
      <c:param name="name" value="${name}" />
      <c:param name="email" value="${email}" />
      <c:param name="phone" value="${phone}" />
      <c:param name="uname" value="${username}" />
      <c:param name="pword" value="${password}" />
    </c:url>
    <a href="${cusdelete}">
      <input type="button" class="btn btn-danger" name="delete" value="Delete My Account" id="B2">
    </a>
  </div>

  <a href="Offersadd.jsp">
    <button type="button" class="btn btn-warning" id="offers-button">Offers</button>
  </a>
  
  <a href="Policyadd.jsp">
    <button type="button" class="btn btn-warning" id="policy-button">Policies</button>
  </a>
  
</body>

</html>
