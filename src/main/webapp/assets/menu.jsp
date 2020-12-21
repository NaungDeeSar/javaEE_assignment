<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Menu</title>
</head>
<body>
<c:url value="/assets/css/bootstrap.min.css" var="bsCss"></c:url>
<c:url value="/assets/css/style.css" var="stCss"></c:url>
<link href="${bsCss}" rel="stylesheet" type="text/css"/>
<link href="${stCss}" rel="stylesheet" type="text/css"/>
<div class="container">
<nav class="container navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="#"></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link ${empty title ? 'active': '' }" aria-current="page" 
          href="<%=pageContext.getServletContext().getContextPath() %>">
          All Course</a>
        </li>
        <li class="nav-item">
        <c:url value="/add-course" var="add"></c:url>
          <a class="nav-link ${(not empty title and title == 'addcourse') ? 'active': ''}" href="${add }">Add Course</a>
        </li>
        <li class="nav-item">
        <c:url value="/student.jsp" var="student"></c:url>
          <a class="nav-link">Student</a>
        </li>
         <li class="nav-item">
         <c:url value="/add-student" var="addstudent"></c:url>
          <a class="nav-link ${(not empty title and title == 'student') ? 'active': ''}" href="${addstudent}">Add Student</a>
        </li>
      
      
      </ul>
    </div>
  </div>
</nav>
</div>
</body>
</html>