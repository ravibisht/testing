<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="AdminDashboardNavigation.jsp" %>
<html>
<head>
<meta charset="ISO-8859-1">


<style type="text/css">



</style>
</head>
<body>



  <div class="container custom-container">
    <div class="card">
      <div class="card-header">
        <div class="row">
          <div class="col col-xs-6">
            <h3 class="panel-title text-center">All Products Category</h3>
          </div>
          <div class="col col-xs-6 text-right">
            <a href="/admin/dashboard/add/projectcategory" class="btn btn-primary" role="button" >Create Category
            </a>
          </div>
        </div>
      </div>

      <div class="card-body">
        <table class="table table-hover" >
            
        <thead>     
         <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Description</th>
            <th>Image</th>
            <th>Actions</th>
        </tr>
       </thead>

       <tbody>
         <c:forEach  var="projectCategory" items="${projectCategoriesByPage.getContent()}">
          	<tr>
        	   <td>${projectCategory.getId()}</td>
        	    <td>${projectCategory.getName()}</td>
        	    <td>${projectCategory.getDescription()}</td>
        	    <td> 
        	       <div class="categroy_image">
        	      <img src="/ProjectAssets/Category/${projectCategory.getImage()}"  class="img-thumbnail" alt="error ">
        	       </div>
        	    </td>
        	
                <td>
                  <a class="btn btn-warning custom-btn-link" href="/admin/dashboard/edit/projectcategory?id=${projectCategory.getId()}"><i class="fa fa-pencil-square" aria-hidden="true"></i>   </a>
                  <c:set var="totalElement" value="${projectCategoriesByPage.getNumberOfElements()}" />
                  
                  <a class="btn btn-danger custom-btn-link" 
                   href="/admin/dashboard/del/projectCategory/${currentPage}/${projectCategory.getId()}/?total=${totalElement}" 
                   onclick="return confirm('Are you really want to delete')"><i class="fa fa-trash" aria-hidden="true"></i></a>
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
                           
               <a class="page-link" href="/admin/dashboard/show/projectCategory/page?page=${page}" aria-label="Previous">
                    <span aria-hidden="true">Previous</span>
               </a>
             </li> 
             <c:set var="totalPages" value="${projectCategoriesByPage.getTotalPages()}"/>
       <c:forEach var="page" begin="0" step="1" end="${totalPages}">
           <c:if test="${ page le totalPages-1}">
                  <li class="page-item <c:if test="${page==currentPage}">
                                        <c:set var="active" value="active"></c:set>
				                        <c:out value="${active}"></c:out>
                                   </c:if>">
              
				 <a class="page-link" href="/admin/dashboard/show/projectCategory/page?page=${page}">${page+1}</a>
              </li>
            </c:if>
           </c:forEach>
           
           <li class="page-item <c:if test="${currentPage == totalPages-1}">
				                        <c:out value="${disabled}"></c:out>
                                   </c:if>" >
           
                 <a class="page-link" href="/admin/dashboard/show/projectCategory/page?page=${page+1}" aria-label="Next">
                    <span aria-hidden="true">Next</span>
                 </a>
           </li>    
          </ul>          	
      </div>
    </div>
  </div>
   


</body>
</html>