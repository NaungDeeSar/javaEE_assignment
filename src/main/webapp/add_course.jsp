<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Course</title>
</head>
<body>
<div class="container-fluid bg-danger">
 <jsp:include page="/assets/menu.jsp"></jsp:include>
 </div>
 <div class="container">
 <div class="row">
   <h3 class="my-3">Add  New Course</h3>
   <hr>
   <c:url value="/add-course" var="add"></c:url>
    <form action="${add}" method="post">
  	<div class="form-group">
  		<label for="name">Name</label>
  		<input type="text" name="name" class="form-control w-50" required="required">
  	</div>
  		<div class="form-group">
  		<label for="level">Level</label>
  		<select id="level" name="level" class="form-control w-50"> 
  			<option value="basic">Basic</option>
  			<option value="intermediate">intermediate</option>
  			<option value="advance">Advance</option>
  		</select>
  	</div>
  		<div class="form-group">
  		<label for="price">Prce</label>
  		<input type="number" name="price" class="form-control w-50" required="required">
  	</div>
  		<div class="form-group">
  		<label for="duration">Duration(month)</label>
  		<input type="number" name="duration" class="form-control w-50" required="required">
  	</div>
  		<div class="form-group">
  		<label for="date">StartDate</label>
  		<input type="date" name="date" class="form-control w-50" required="required">
  	</div>
  		<div class="form-group">
  		<br>
  	<button type="submit" class="btn btn-outline-primary">Add Course</button>
  	</div>
  	
  </form>
   
 </div>
</div>
</body>
</html>