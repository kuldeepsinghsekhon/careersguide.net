<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/taglib.jsp"%>

        <div class="slider-area">
            <div class="slider">
                <div id="bg-slider" class="owl-carousel owl-theme">
                 
                  <div class="item"><img src="img/slider-image-3.jpg" alt="Mirror Edge"></div>
                  <div class="item"><img src="img/slider-image-2.jpg" alt="The Last of us"></div>
                  <div class="item"><img src="img/slider-image-1.jpg" alt="GTA V"></div>
                 
                </div>
            </div>
            <div class="container slider-content">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1 col-sm-12">
                        <h2>Job Searching Just Got So Easy</h2>
                        <p></p>
                        <div class="search-form wow pulse" data-wow-delay="0.8s">
                            <form:form commandName="search" class=" form-inline">
                            
                                <div class="form-group">
                                    <form:input path="title" placeholder=" Job Title" type="text" class="form-control"/>
                                </div>
                                <div class="form-group">
                                    <select  name="" class="form-control">
                                        <option>Select Your City</option>
                                        <option selected>Amritsar</option>
                                        <option>Delhi</option>
                                        <option>Bomby</option>
                                        <option>Calcuta</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <form:select path="qualification" placeholder="Qualification" class="form-control">
                                        <option selected>Qualification</option>
                                        <option >bbc</option>
                                        <option>mba</option>
                                        
                                    </form:select>
                                </div>
                                <input type="submit" class="btn" value="Search">
                           </form:form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="content-area">
            <div class="container">
                <div class="row page-title text-center wow bounce"  data-wow-delay="1s">
                   
                    <h2>Available jobs for you</h2>
                </div>
              
                
               
         <c:forEach items="${jobs}" var="job"> 
         <div class="col-xs-6 col-md-3" >
         <div class="panel panel-default">
  <div class="panel-heading" style="background-color:fff;"><c:out value="${job.experienceMin}" /> - <c:out value="${job.experienceMax}" /> Yrs </div>
  <div class="panel-body">
  <p><a href='<spring:url value="/jobdetail/${job.id}.html"/>'><c:out value="${job.companyName}" />
   is Hiring as <c:out value="${job.title}" /></a> at <c:out value="${job.state}" /></p>
  <p>  <c:out value="${job.publishdate}" /></p>
       
     <p>Location   <i class="icon-location"></i><c:out value="${job.state}" /> <br><c:out value="${job.city}" /></p>
      
										

							
  </div>
  <div class="panel-footer"><a href='<spring:url value="/jobdetail/${job.id}.html"/>'>
											<button type="button" class="btn btn-primary btn-xs"
												title="View Detail">
												<span class="glyphicon glyphicon-pencil"></span>View
											</button>
										</a> <a href='<spring:url value="/apply/${job.id}.html"/>'>
											<button type="button" class="btn btn-success btn-xs"
												title="Approved">
												<span class="glyphicon glyphicon-ok"></span>Apply
											</button>
										</a></div>
</div>
     
    </div>  
           
    </c:forEach>            
                
            </div>
            <hr>

            <div class="container">
                <div class="row page-title text-center  wow bounce"  data-wow-delay=".7s">
                    <h5>TESTIMONIALS</h5>
                    <h2>WHAT PEOPLES ARE SAYING</h2>
                </div>
                <div class="row testimonial">
                    <div class="col-md-12">
                        <div id="testimonial-slider">
                            <div class="item">
                                <div class="client-text">                                
                                    <p>Jobify offer an amazing service and I couldn’t be happier! They 
                                    are dedicated to helping recruiters find great candidates, wonderful service!</p>
                                    <h4><strong>Ohidul Islam, </strong><i>Web Designer</i></h4>
                                </div>
                                <div class="client-face wow fadeInRight" data-wow-delay=".4s"> 
                                    <img src="img/client-face1.png" alt="">
                                </div>
                            </div>
                            <div class="item">
                                <div class="client-text">                                
                                    <p>Jobify offer an amazing service and I couldn’t be happier! They 
                                    are dedicated to helping recruiters find great candidates, wonderful service!</p>
                                    <h4><strong>Ohidul Islam, </strong><i>Web Designer</i></h4>
                                </div>
                                <div class="client-face">
                                    <img src="img/client-face2.png" alt="">
                                </div>
                            </div>
                            <div class="item">
                                <div class="client-text">                                
                                    <p>Jobify offer an amazing service and I couldn’t be happier! They 
                                    are dedicated to helping recruiters find great candidates, wonderful service!</p>
                                    <h4><strong>Ohidul Islam, </strong><i>Web Designer</i></h4>
                                </div>
                                <div class="client-face">
                                    <img src="img/client-face1.png" alt="">
                                </div>
                            </div>
                            <div class="item">
                                <div class="client-text">                                
                                    <p>Jobify offer an amazing service and I couldn’t be happier! They 
                                    are dedicated to helping recruiters find great candidates, wonderful service!</p>
                                    <h4><strong>Ohidul Islam, </strong><i>Web Designer</i></h4>
                                </div>
                                <div class="client-face">
                                    <img src="img/client-face2.png" alt="">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
     
