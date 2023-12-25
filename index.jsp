<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>www.Rent4U.com</title>
<link href="CSS/bootstrap.min.css" rel="stylesheet">


<style type="text/css">
	body{
		background-color : #333;
	}
	
	#n1{
		  color: black;
		  font-family: 'San Francisco', Arial, sans-serif;
          font-size: 24px;
	}
	
	.c1{
		color: white;
		font-family: Arial, Helvetica, sans-serif;
		font-size: 26px;
	}
	
	#h2{
		color: white;
		font-family: Arial, Helvetica, sans-serif;
		font-size: 20px;
	}
	
	#B1{
		position: absolute;
    	top: 10px; 
   	 	right: 20px; 
	}
	
	#B2{
		position: absolute;
    	top: 10px; 
   	 	right: 100px; 
	}
	
	#B3{
		position: absolute;
    	top: 10px; 
   	 	right: 190px; 
	}
	
	#B4 {
		position: absolute;
		top: 50%;
		left: 50%;
    	padding: 15px 20px; 
   	 	font-size: 16px; 
	}

	#B4.btn-primary {
   		background-color: #007BFF; 
    	color: #fff; 
    	border: none; 
    	border-radius: 5px; 
    	cursor: pointer;
	}

	#B4.btn-primary:hover {
    	background-color: #0056b3; /* Change color on hover */
	}
	
	#B5 {
		position: absolute;
		top: 50%;
		left: 35%;
    	padding: 15px 20px; 
   	 	font-size: 16px; 
	}

	#B5.btn-primary {
   		background-color: #007BFF; 
    	color: #fff; 
    	border: none; 
    	border-radius: 5px; 
    	cursor: pointer;
	}

	#B5.btn-primary:hover {
    	background-color: #0056b3; /* Change color on hover */
	}
	.image {
   		position: absolute;
    	top: 100px;
    	left: 10px;
    
	}
	
	#B5{
		
	}
	
	#h3{
		text-align: center;
		color: white;
		font-family: sans-serif;
		font-size: 10px
	}
	
	#h4{
		text-align: center;
		color: white;
		font-family: sans-serif;
		font-size: 10px
	}
	
</style>

</head>
<body>



<div class="p-3 mb-2 bg-success text-white" id="n1">Rent4U</div>
<img src="1.JPG" alt="Image Description" width="100" height="100" class="image">
<img src="1.JPG" class="rounded float-start" alt="logo"><br><br><br>

<a href="login.jsp"><button type="button" id="B1" class="btn btn-warning">Login</button></a><br><br>
<a href="signup.jsp"><button type="button" id="B2" class="btn btn-warning">Signup</button></a>
<a href="Offerdisplayservlet"><button type="button" id="B3" class="btn btn-warning">Offers!</button></a>
<a href="homeView.jsp"><button type="button" id="B4" class="btn btn-primary">Our Vehicles  &#128663;</button></a>
<a href="ListReviewsServlet"><button type="button" id="B5" class="btn btn-success">Customer Feedback &#128513;</button></a>

<div class="c1">
	
	<figure class="text-center">
  <blockquote class="blockquote">
    <p>The Best Place To Book A Vehicle For Your Next Journey</p>
 	 </blockquote>
 	 </figure>
 	 

</div>


<p id="h2">
With more than 20 years of experience, Rent4U has honed its expertise in the vehicle rental industry. Our longevity is a testament to our commitment to customer satisfaction and our ability to adapt to changing market dynamics. Over the years, we have gained valuable insights into the needs and preferences of our customers, allowing us to continually improve our services.

Why Rent4U:

Reliability: Our 20+ years of experience speaks to our reliability and commitment to customer satisfaction. You can trust us to provide safe and dependable vehicles for your journeys.

Variety: With a wide selection of vehicles, we cater to a diverse range of customers and purposes, ensuring that you find the right vehicle for your needs.

Quality: We take pride in maintaining our vehicles to the highest standards, ensuring they are clean, well-maintained, and equipped with modern features.

Convenience: Our online platform makes it easy to browse, book, and manage your rentals from the comfort of your home or office, saving you time and hassle.

Customer Service: Our dedicated customer support team is available to assist you at every step of your rental journey, ensuring a smooth and pleasant experience.
</p><br><br><br>


<p id="h3">
	<a href="Policydisplayservlet">Our Policies</a>
</p>

<br><br>

<p id="h4">
	<b>Copyright 2023 Rent4U.com</b>
</p>


</body>
</html>