<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Student</title>
</head>
<body>
<div class="container-fluid bg-danger">
 <jsp:include page="/assets/menu.jsp"></jsp:include>
 </div>
 <div class="container">
 <div class="row my-3">
   <h3 class="">Add New Student</h3>
   <hr>
    <c:url value="/add-student" var="add"></c:url>
    <form action="${add}" method="post" enctype="multipart/form-data">
  	<div class="form-group">
  		<label for="name">Student Name</label>
  		<input type="text" name="sname" class="form-control w-50" required="required" placeholder="Enter your name">
  	</div>
  		<div class="form-group">
  		<label for="Email">Email</label>
  		<input type="email" name="email" class="form-control w-50" required="required" placeholder="Enter Your Email">
  	</div>
  		
  		<div class="form-group">
  		<label for="age">Age</label>
  		<input type="number" name="age" class="form-control w-50" required="required" placeholder="Enter Your Age">
  	</div>
  	<div class="form-group">
  		<label for="year">Year</label>
  		<select id="level" name="year" class="form-control w-50">
  		   <option>Select Your Year</option> 
  			<option value="First">First Year</option>
  			<option value="Second">Second Year</option>
  			<option value="Third">Third Year</option>
  		</select>
  	</div>
  		<div class="form-group">
  		<label for="address">Address</label>
  
  	<textarea rows="" cols="" name="address" class="form-control w-50" placeholder="Enter Your Address">
  	</textarea>
  	</div>
  		<div class="form-group">
  		<label for="date">DOB</label>
  		<input type="date" name="date" class="form-control w-50" required="required">
  	</div>
  	<div class="form-group">
  		<label for="date">Photo</label>
  		<input type="file" name="photo" class="form-control w-50" required="required">
  	</div>
  		<div class="form-group">
  		<br>
  	<button type="submit" class="btn btn-outline-primary">Add Student</button>
  	</div>
  	
  </form>
   
 </div>
</div>
</body>
</html>