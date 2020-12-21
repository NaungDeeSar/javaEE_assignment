<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
</head>
<body>
<div class="container-fluid bg-danger">
 <jsp:include page="/assets/menu.jsp"></jsp:include>
 </div>
 <div class="container">
 <div class="row my-3">
    <div class="col-10">
     <h3 class="">All Course</h3>
    </div>
    <div class="col-2">
     <c:url value="add-course" var="add"></c:url>
     <a href="${add}"  class="btn btn-primary">Add Course</a>
    </div>
   <hr>
   <table class="table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Course Name</th>
      <th scope="col">Level</th>
      <th scope="col">Price</th>
      <th scope="col">Duration</th>
      <th scope="col">Date</th>
     
    </tr>
  </thead>
  <tbody>
 
  <c:forEach items="${courselist}" var="course" >
   <tr>
      <th scope="row">1</th>
      <td>${course.name}</td>
      <td>${course.level}</td>
      <td>${course.price}</td>
      <td>${course.duration}</td>
      <td>${course.date}</td>
    </tr>
  </c:forEach>
   
   
  </tbody>
</table>
   
 </div>
</div>
</body>
</html>