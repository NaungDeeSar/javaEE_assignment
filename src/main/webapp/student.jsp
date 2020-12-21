<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
</head>
<body>
<div class="container-fluid bg-danger">
 <jsp:include page="/assets/menu.jsp"></jsp:include>
 </div>
 <div class="container">
 <div class="row my-3">
   <div class="col-10">
     <h3 class="">All Students</h3>
    </div>
    <div class="col-2">
  <c:url value="/add-student" var="add"></c:url>
     <a href="${add}" class="btn btn-primary">Add Student</a>
    </div>
   <hr>
    <table class="table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Student Name</th>
      <th scope="col">Email</th>
      <th scope="col">Age</th>
      <th scope="col">Year</th>
      <th scope="col">Address</th>
      <th scope="col">Birth</th>
     
    </tr>
  </thead>
  <tbody>
 
  <c:forEach items="${studentlist}" var="student" >
   <tr>
      <th scope="row">1</th>
      <td>${student.sname}</td>
      <td>${student.email}</td>
      <td>${student.age}</td>
      <td>${student.year}</td>
      <td>${student.address}</td>
       <td>${student.date}</td>
    </tr>
  </c:forEach>
   
   
  </tbody>
</table>
   
 </div>
</div>
</body>
</html>