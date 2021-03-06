<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@include file="AdminDashboardNavigation.jsp" %>

<html>
<head>
<meta charset="ISO-8859-1">
</head>
<body>
 
   
<div class="container custom-container">
   <div class="card">
      <div class="card-header">
        <div class="row">
          <div class="col col-xs-6">
            <h3 class="panel-title text-center">All Users</h3>
          </div>
        </div>
      </div>

     <div class="card-body">
        <table class="table table-hover">
          <thead>
            <tr>
              <th>User Id</th>
              <th>Full Name</th>
              <th>Username</th>
              <th>Email</th>
              <th>Mobile no</th>
              <th>Actions</th>
            </tr>
           </thead>
       <tbody> 
           <c:forEach  var="user" items="${userByPage.getContent()}">
               <tr>
                 <td>${user.getId()}</td>
                 <td>${user.getFirstname()}${user.getLastname()}</td>
                 <td>${user.getUsername()}</td>
                 <td>${user.getEmail()}</td>
                 <td>${user.getMobileNo()}</td>
                              <c:set var="totalElement" value="${userByPage.getNumberOfElements()}" />
                 
                 <td style="width:140px;">
                   <a class="btn btn-light btn-outline-success custom-btn-link text-dark" href="/admin/dashboard/show/user/${user.getUsername()}">
                   <i class="fa fa-eye"aria-hidden="true"></i></a>
                   
                   <a class="btn btn-danger custom-btn-link" 
                      href="/admin/dashboard/del/user/page/${currentPage}/${user.getId()}/?total=${totalElement}" 
                      onclick="return confirm('Are you really want to delete')" ><i class="fa fa-trash" aria-hidden="true">
                     </i>
                   </a>
                   
               </td>
            </tr>
        </c:forEach>
      </tbody>
     </table>

        <hr>
                                        
       <c:set var="disabled" value="disabled"/>
          <ul class="pagination  justify-content-center">
              <c:set var="currentPage"  value="${currentPage}"/>
                  <li class="page-item <c:if test="${currentPage eq 0}">
				                        <c:out value="${disabled}"></c:out>
                                     </c:if>" >
                           
               <a class="page-link" href="/admin/dashboard/show/users/page?page=${page}" aria-label="Previous">
                    <span aria-hidden="true">Previous</span>
               </a>
             </li> 
             <c:set var="totalPages" value="${userByPage.getTotalPages()}"/>
           <c:forEach var="page" begin="0" step="1" end="${totalPages}">
         
             <c:if test="${ page le totalPages-1}">
                  <li class="page-item <c:if test="${page==currentPage}">
                                        <c:set var="active" value="active"></c:set>
				                        <c:out value="${active}"></c:out>
                                   </c:if>">
              
				    
                   <a class="page-link" href="/admin/dashboard/show/users/page?page=${page}">${page+1}</a>
              </li>
            </c:if>
           </c:forEach>
           
           <li class="page-item <c:if test="${currentPage == totalPages-1}">
				                        <c:out value="${disabled}"></c:out>
                                   </c:if>" >
           
               <a class="page-link" href="/admin/dashboard/show/users/page?page=${page+1}" aria-label="Next">
                    <span aria-hidden="true">Next</span>
                   </a>
            </li>    
          </ul>
      </div>
    </div>
  </div>
</body>
</html>