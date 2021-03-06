<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@include file="AdminDashboardNavigation.jsp" %>
<%@page import="java.text.SimpleDateFormat" %>
<html>

<body>
<section>
  <div class="container">
    <div class="row">
          
  
         <div class="col-8">
               <div class="card project" style="width:650px">
                  <div class="card-header  p_header">
                  
                     <c:set var="user" value="${project.getUser()}"/>
                     <a href="/admin/dashboard/show/user/${user.getUsername()}"  role="button">
                     <img src="Users/${ user.getProfilePicture()}" class="rounded-circle" width="50" height="50"/>
                     <span class="font-weight-bold p_u_name"> @${user.getUsername()}</span>
                     </a>
                  </div>

        
                               <c:set var="projectImages" value="${project.getImage()}"/>
                                <c:set var="images" value="${fn:split(projectImages,',') }"/>
                                 <c:set var="video" value="${project.getVideo() }"/>
                                 
                                 <c:set var="length" value="${fn:length(images)}"/>
                                 
                                 <c:if test="${not empty video }" >
                                     <c:set var="length" value="${length+1}"/>
                                  </c:if>
                                 
                                  
                     <div id="demo" class="carousel slide" data-ride="carousel">
                        <!-- Indicators -->
                        
                              <ul class="carousel-indicators">
                              <li data-target="#demo" data-slide-to="0" class="active"></li>
                              <c:forEach begin="1" end="${length-1}" varStatus="couter" >
                                  <li data-target="#demo" data-slide-to="${couter.count}" ></li>
                               </c:forEach> 
                                                            
                              </ul>


                        <!-- The slideshow -->
                        
                        <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <img src="/ProjectAssets/Images/${images[0]}" class="card-img-top p_image" alt="Los Angeles">
                                 </div>
                                 
                                 <c:forEach  begin="1" end="${fn:length(images)-1}" varStatus="i">
                                   <div class="carousel-item">
                                     <img src="/ProjectAssets/Images/${images[i.count]}" class="card-img-top p_image" alt="Chicago">
                                  </div>
                               
                               </c:forEach>
                               
                               <c:set value="${fn:split(video,'.')}" var="extension" />
                               <c:set var="videoextension" value="${extension[fn:length(extension)-1]}"/>
                                
                               
                               <c:if test="${not empty video }" >
                                      <div class="carousel-item">
                                         <video class="video-fluid p_video" poster="blog_3.png" autoplay loop muted controls>
                                          <source src="/ProjectAssets/Video/${video}" type="video/${videoextension}" />
                                      </video>
                                       </div>
                                </c:if>
                                
                                 
                   </div>

                        <!-- Left and right controls -->
                        
                        <c:if test="${length gt 1 }">
                              <a class="carousel-control-prev" href="#demo" data-slide="prev">
                                  <span class="carousel-control-prev-icon"></span>
                               </a>

                                 <a class="carousel-control-next" href="#demo" data-slide="next">
                                    <span class="carousel-control-next-icon"></span>
                                </a>
                        </c:if>
                     </div>




                       <div class="card-body">
                             <hr>
                             <div>
                                  <a href="#" class=" btn btn-link  " style="font-size: 30px;margin-top: -25px;"><i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
                                  </a>

                                   <a  class=" btn btn-link"  href="#comment_box" style="font-size: 30px; margin-top: -25px;"><i  class="fa fa-comment-o" aria-hidden="true"></i>
                                     </a>
                                
                                  <a href="#" class=" btn btn-link  " style="font-size: 30px; margin-top: -25px;"><i class="fa fa-share" aria-hidden="true"></i>
                                  </a>
                              </div>
                              
                                
                                 <span class="text-muted">likes ${project.getLikes().size()}</span>
                                 <span class="text-muted">comment ${project.getComments().size()}</span>
                                 <h4 class="card-title">${project.getProjectName()}</h4>
                                 <p class="card-text">${projeect.getShortDesc()}</p>
                                 
                                 
                          </div>


                     <div class="card-footer  " style="background-color: white">
                          <c:forEach var="comment" items="${project.getComments()}" >
                                <c:set var="userInfo" value="${comment.getUser()}"/>
                                
                             <div class="comment_img">
                                <img src="Users/${ userInfo.getProfilePicture()}" style="width: 32px; height: 32px;">
                                    <div class="comment_text">
                                       <a href="/admin/dashboard/show/user/${userInfo.getUsername()}">${userInfo.getUsername()}</a>
                                        <span> ${comment.getCommentText()}</span>
                                       &nbsp &nbsp
                                   </div>
                                      
                                    &nbsp &nbsp
                                   <a href="kjkjh" >delete</a>
                                   
                              </div>
                           </c:forEach>
                                    <hr>
                              <div class="comment">
                                  <div class="comment_box">
                                         <form class="input">
                                             <img src="author.png" style="width: 32px; height: 32px; ">
                                             <input type="text" class="input_text "  id="comment_box"  style="display:inline-block;" placeholder="Add a comment here">
                                              <input type="submit" class="btn btn-primary button" style="  border-radius: 18px;" name="" value="Comment">
                                         </form>
                                  </div>
                              </div>
                     </div>
                </div>
             </div>



                      <!-- ------------------------------- Project Description ------------------------------------ -->
                   <div class="col-4">
                     <div class="descripton">
                              <div class="card">
                                           <div class="card-header d_header text-center ">
                                               <h3>About Project</h3>
                                            </div>
                                          <div class="card-body " style="overflow: scroll;resize: both;">                                         
                                               <div  style="width:650px;height:650px;"> 
                                               <p> ${project.getDescription()} </p>
                                               
                                               </div>
                                          </div>


                                       <div class="card-footer text-center">
                                        ${project.dateCounter()} 
                                       </div>   
                                </div>  
                          </div>
                       </div>

                       </div>

                     </div>
</section>
   
   
   
   


</body>




</html>