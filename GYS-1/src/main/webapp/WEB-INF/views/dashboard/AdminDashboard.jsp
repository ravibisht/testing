<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="AdminDashboardNavigation.jsp" %>
<!DOCTYPE html>


<html>
<body>

  <div class="container custom-container">
  <div class="card-deck">
    <div class="card" style="width: 18rem;">
      <div class="custom-brand"> <i class="fa fa-users" aria-hidden="true"></i> </div>
        <div class="card-body">
         <h5 class="card-title">Total Users </h5>
           <p class="card-text">The number of users from beginning to today is <strong> ${totalUsers}</strong>.</p>
            <a href="/admin/dashboard/show/users/page" class="btn btn-primary btn-custom-link">Detail</a>
        </div>
       </div>

       <div class="card" style="width: 18rem;">
         <div class="custom-brand"><i class="fa fa-th-large" aria-hidden="true"></i></div>
           <div class="card-body">
             <h5 class="card-title">Total Projects</h5>
               <p class="card-text">The number of projects from beginning to today is <strong>${totalProjects}</strong>.</p>
                <a href="/admin/dashboard/show/projects/page" class="btn btn-primary btn-custom-link">Detail</a>
           </div>
         </div>


        <div class="card" style="width: 18rem;">
          <div class="custom-brand"><i class="fa fa-list-alt" aria-hidden="true"></i></div>
            <div class="card-body">
              <h5 class="card-title">Total Project Categories</h5>
                <p class="card-text">The number of Project Categories from beginning to today is <strong>${totalProjectCategories}</strong>.</p>
                 <a href="/admin/dashboard/show/projectCategory/page" class="btn btn-primary btn-custom-link">Detail</a>
            </div>
           </div>
          </div>
         </div>

   	  <div class="container custom-container ">
        <div class="card-deck" style="width: 380px;">
          <div class="card" >
            <div class="custom-brand"><i class="fa fa-comments" aria-hidden="true"></i></div>
              <div class="card-body">
                <h5 class="card-title">Total Feedbacks</h5>
                  <p class="card-text">The number of feedbacks from beginning to today is <strong>${totalFeedbacks}</strong>.</p>
                   <a href="/admin/dashboard/show/feedback/page" class="btn btn-primary btn-custom-link">Detail</a>
                 </div>
                </div>
               </div>
              </div>
 </body>
</html>