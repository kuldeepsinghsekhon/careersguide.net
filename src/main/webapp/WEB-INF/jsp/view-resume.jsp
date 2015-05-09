<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <style>
<!--
/* uses font awesome for social icons */
@import url(http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css);

.page-header{
  text-align: center;    
}

/*social buttons*/
.btn-social{
  color: white;
  opacity:0.9;
}
.btn-social:hover {
  color: white;
    opacity:1;
}
.btn-facebook {
background-color: #3b5998;
opacity:0.9;
}
.btn-twitter {
background-color: #00aced;
opacity:0.9;
}
.btn-linkedin {
background-color:#0e76a8;
opacity:0.9;
}
.btn-github{
  background-color:#000000;
  opacity:0.9;
}
.btn-google {
  background-color: #c32f10;
  opacity: 0.9;
}
.btn-stackoverflow{
  background-color: #D38B28;
  opacity: 0.9;
}

/* resume stuff */

.bs-callout {
    -moz-border-bottom-colors: none;
    -moz-border-left-colors: none;
    -moz-border-right-colors: none;
    -moz-border-top-colors: none;
    border-color: #eee;
    border-image: none;
    border-radius: 3px;
    border-style: solid;
    border-width: 1px 1px 1px 5px;
    margin-bottom: 5px;
    padding: 20px;
}
.bs-callout:last-child {
    margin-bottom: 0px;
}
.bs-callout h4 {
    margin-bottom: 10px;
    margin-top: 0;
}

.bs-callout-danger {
    border-left-color: #d9534f;
}

.bs-callout-danger h4{
    color: #d9534f;
}

.resume .list-group-item:first-child, .resume .list-group-item:last-child{
  border-radius:0;
}

/*makes an anchor inactive(not clickable)*/
.inactive-link {
   pointer-events: none;
   cursor: default;
}

.resume-heading .social-btns{
  margin-top:15px;
}
.resume-heading .social-btns i.fa{
  margin-left:-5px;
}



@media (max-width: 992px) {
  .resume-heading .social-btn-holder{
    padding:5px;
  }
}


/* skill meter in resume. copy pasted from http://bootsnipp.com/snippets/featured/progress-bar-meter */

.progress-bar {
    text-align: left;
	white-space: nowrap;
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
	cursor: pointer;
}

.progress-bar > .progress-type {
	padding-left: 10px;
}

.progress-meter {
	min-height: 15px;
	border-bottom: 2px solid rgb(160, 160, 160);
  margin-bottom: 15px;
}

.progress-meter > .meter {
	position: relative;
	float: left;
	min-height: 15px;
	border-width: 0px;
	border-style: solid;
	border-color: rgb(160, 160, 160);
}

.progress-meter > .meter-left {
	border-left-width: 2px;
}

.progress-meter > .meter-right {
	float: right;
	border-right-width: 2px;
}

.progress-meter > .meter-right:last-child {
	border-left-width: 2px;
}

.progress-meter > .meter > .meter-text {
	position: absolute;
	display: inline-block;
	bottom: -20px;
	width: 100%;
	font-weight: 700;
	font-size: 0.85em;
	color: rgb(160, 160, 160);
	text-align: left;
}

.progress-meter > .meter.meter-right > .meter-text {
	text-align: right;
}


-->
</style>
<div class="container">
<div class="row info" style="text-align:center;">
    
</div>

<div class="resume">
    <header class="page-header">
    <h1 class="page-title">Resume of <c:out value="${resumeContent.firstName}"/>  <c:out value="${resumeContent.lastName}"/></h1>
    <small> <i class="fa fa-clock-o"></i> Last Updated on: <time> <c:out value="${resumeContent.updatedate}"/></time></small>
  </header>
<div class="row">
  <div class="col-xs-12 col-sm-12 col-md-offset-1 col-md-10 col-lg-offset-2 col-lg-8">
    <div class="panel panel-default">
      <div class="panel-heading resume-heading">
        <div class="row">
          <div class="col-lg-12">
            <div class="col-xs-12 col-sm-4">
              <figure>
                <img class="img-circle img-responsive" alt="" src="http://placehold.it/300x300">
              </figure>
              
              <div class="row">
                <div class="col-xs-12 social-btns">
                  
                    <div class="col-xs-3 col-md-1 col-lg-1 social-btn-holder">
                      <a href="#" class="btn btn-social btn-block btn-google">
                        <i class="fa fa-google"></i> </a>
                    </div>
                  
                    <div class="col-xs-3 col-md-1 col-lg-1 social-btn-holder">
                      <a href="#" class="btn btn-social btn-block btn-facebook">
                        <i class="fa fa-facebook"></i> </a>
                    </div>
                  
                    <div class="col-xs-3 col-md-1 col-lg-1 social-btn-holder">
                      <a href="#" class="btn btn-social btn-block btn-twitter">
                        <i class="fa fa-twitter"></i> </a>
                    </div>
                  
                    <div class="col-xs-3 col-md-1 col-lg-1 social-btn-holder">
                      <a href="#" class="btn btn-social btn-block btn-linkedin">
                        <i class="fa fa-linkedin"></i> </a>
                    </div>
                  
                    <div class="col-xs-3 col-md-1 col-lg-1 social-btn-holder">
                      <a href="#" class="btn btn-social btn-block btn-github">
                        <i class="fa fa-github"></i> </a>
                    </div>
                  
                    <div class="col-xs-3 col-md-1 col-lg-1 social-btn-holder">
                      <a href="#" class="btn btn-social btn-block btn-stackoverflow">
                        <i class="fa fa-stack-overflow"></i> </a>
                    </div>
                  
                </div>
              </div>
              
            </div>

            <div class="col-xs-12 col-sm-8">
              <ul class="list-group">
                <li class="list-group-item"> <c:out value="${resumeContent.firstName}"/>  <c:out value="${resumeContent.lastName}"/></li>
                <li class="list-group-item"><c:out value="${resumeContent.currentProfile}"/> </li>
                <li class="list-group-item"><c:out value="${resumeContent.currentCompany}"/> </li>
                <li class="list-group-item"><i class="fa fa-phone"></i> 000-000-0000 </li>
                <li class="list-group-item"><i class="fa fa-envelope"></i> <c:out value="${resumeContent.email}"/></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <div class="bs-callout bs-callout-danger">
        <h4>Summary</h4>
        <p>
         <c:out value="${resumeContent.summary}"/>

        </p>
      </div>
      <div class="bs-callout bs-callout-danger">
        <h4>Research Interests</h4>
        <p>
         <c:out value="${resumeContent.interests}"/>
        </p>
      </div>

      <div class="bs-callout bs-callout-danger">
        <h4>Prior Experiences</h4>
         <ul class="list-group">
         <c:forEach items='${resumeContent.experiences}' var="experience">
          <a class="list-group-item inactive-link" href="#">
            <h4 class="list-group-item-heading">
              <c:out value='${experience.title}'/> at <c:out value='${experience.industry}'/>
            </h4>
            <p class="list-group-item-text">
              <c:out value='${experience.jobDescription}'/>
            </p>
          </a>
          </c:forEach>
        </ul>
        
      </div>
      
      <div class="bs-callout bs-callout-danger">
        <h4>Language and Platform Skills</h4>
        <table class="table table-striped ">
          <thead>
            <tr><th>Name</th><th>Certification</th>
            <th>Passing year</th>
             <th>Version</th>
            <th>Personal Rating %</th>
          </tr></thead>
          <tbody>
           <c:forEach items='${resumeContent.skills}' var="skill">
            <tr>
              <td> <c:out value='${skill.skillName}'/></td>
               <td> <c:out value='${skill.certificationName}'/></td>
              <td> <c:out value='${skill.passingYear}'/></td>
              <td>  <c:out value='${skill.version}'/> </td>
              <td>  <c:out value='${skill.percentSkill}'/> </td>
            </tr>
            </c:forEach>	
          </tbody>
        </table>
        

            
      </div>
      <div class="bs-callout bs-callout-danger">
        <h4>Education</h4>
        <table class="table table-striped table-responsive ">
          <thead>
            <tr><th>Degree</th><th>University</th>
            <th>Graduation Year</th>
            <th>CGPA</th>
          </tr></thead>
          <tbody>
            <c:forEach items="${resumeContent.education}" var="education">
            <tr>
              <td> <c:out value='${education.courseName}'/></td>
               <td> <c:out value='${education.institution}'/></td>
              <td> <c:out value='${education.passingYear}'/></td>
              <td>  <c:out value='${education.marks}'/> </td>
            </tr>
            </c:forEach>
          </tbody>
        </table>
      </div>
    </div>

  </div>
</div>
    
</div>

</div>