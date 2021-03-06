<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <link rel="stylesheet" href="/css/bootstrap/css/bootstrap.min.css"/>
  <style>
  
 
  
  </style>
</head>
<body>


<div class="container-fluid">
  <h1 class="text-center mt-2 pb-3">User SignUp Report</h1>
  
  <br>
  <div class="${bootstrapclass} text-center "><h4>${errorMessage}</h4></div>
   
  <div class="table-responsive" >
   
  <table class="table table-bordered">
    <thead>
      <tr class="text-center">
        <th>Username</th>
        <th>Firstname</th>
        <th>Lastname</th>
        <th>Email</th>
        <th>Mobile no </th>
        <th>Profession</th>
        <th>Bio</th>
        <th>Registerd Date</th>
        <th>Modified Date</th>
      </tr>
    </thead>
    
    <tbody>
    
    <c:forEach var="user" items="${usersReport}">
      <tr>
        <td>${user.getUsername()}</td>
        <td>${user.getFirstname() }</td>
        <td>${user.getLastname()}</td>
        <td>${user.getEmail() }</td>
        <td>${user.getMobileNo()}</td>
        <td>${user.getProfession() }</td>
        <td>${user.getBio()}</td>
        <td><fmt:formatDate pattern="dd-MM-yyyy" value="${user.getCreatedDate()}" /></td>
        <td><fmt:formatDate pattern="dd-MM-yyyy" value="${user.getCreatedDate()}" /></td>
                  
        </tr>
     </c:forEach> 
    </tbody>
  </table>
 </div>
  
  <center>
  
  <button   onclick="javascipt:window.print()" class="btn btn-primary px-5 m-4" >Print</button>
     </center>
</div>

</body>
</html>
