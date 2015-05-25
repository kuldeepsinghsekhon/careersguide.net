<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"  %>
<!--
User Profile Sidebar by @keenthemes
A component of Metronic Theme - #1 Selling Bootstrap 3 Admin Theme in Themeforest: http://j.mp/metronictheme
Licensed under MIT
-->
<style>
<!--


body {
  background: #F1F3FA;
}

/* Profile container */
.profile {
  margin: 20px 0;
}

/* Profile sidebar */
.profile-sidebar {
  padding: 20px 0 10px 0;
  background: #fff;
}

.profile-userpic img {
  float: none;
  margin: 0 auto;
  width: 50%;
  height: 50%;
  -webkit-border-radius: 50% !important;
  -moz-border-radius: 50% !important;
  border-radius: 50% !important;
}

.profile-usertitle {
  text-align: center;
  margin-top: 20px;
}

.profile-usertitle-name {
  color: #5a7391;
  font-size: 16px;
  font-weight: 600;
  margin-bottom: 7px;
}

.profile-usertitle-job {
  text-transform: uppercase;
  color: #5b9bd1;
  font-size: 12px;
  font-weight: 600;
  margin-bottom: 15px;
}

.profile-userbuttons {
  text-align: center;
  margin-top: 10px;
}

.profile-userbuttons .btn {
  text-transform: uppercase;
  font-size: 11px;
  font-weight: 600;
  padding: 6px 15px;
  margin-right: 5px;
}

.profile-userbuttons .btn:last-child {
  margin-right: 0px;
}
    
.profile-usermenu {
  margin-top: 30px;
}

.profile-usermenu ul li {
  border-bottom: 1px solid #f0f4f7;
}

.profile-usermenu ul li:last-child {
  border-bottom: none;
}

.profile-usermenu ul li a {
  color: #93a3b5;
  font-size: 14px;
  font-weight: 400;
}

.profile-usermenu ul li a i {
  margin-right: 8px;
  font-size: 14px;
}

.profile-usermenu ul li a:hover {
  background-color: #fafcfd;
  color: #5b9bd1;
}

.profile-usermenu ul li.active {
  border-bottom: none;
}

.profile-usermenu ul li.active a {
  color: #5b9bd1;
  background-color: #f6f9fb;
  border-left: 2px solid #5b9bd1;
  margin-left: -2px;
}

/* Profile Content */
.profile-content {
  padding: 20px;
  background: #fff;
  min-height: 460px;
}

.table-user-information > tbody > tr {
    border-top: 1px solid rgb(221, 221, 221);
}

.table-user-information > tbody > tr:first-child {
    border-top: 0;
}


.table-user-information > tbody > tr > td {
    border-top: 0;
}
-->
</style>
<div class="container">
    <div class="row profile">
		<div class="col-md-3">
			<div class="profile-sidebar">
				<!-- SIDEBAR USERPIC -->
				<div class="profile-userpic">
					<img src="#" class="img-responsive" alt="">
				</div>
				<!-- END SIDEBAR USERPIC -->
				<!-- SIDEBAR USER TITLE -->
				<div class="profile-usertitle">
					<div class="profile-usertitle-name">
						<c:out value="${ userDetail.firstName}"/>
    <c:out value='${ userDetail.lastName}'/>
					</div>
					<div class="profile-usertitle-job">
					
					</div>
				</div>
				<!-- END SIDEBAR USER TITLE -->
				<!-- SIDEBAR BUTTONS -->
				<div class="profile-userbuttons">
					<button type="button" class="btn btn-success btn-sm">Follow</button>
					<button type="button" class="btn btn-danger btn-sm">Message</button>
				</div>
				<!-- END SIDEBAR BUTTONS -->
				<!-- SIDEBAR MENU -->
				<div class="profile-usermenu">
					<ul class="nav">
						<li class="active">
							<a href="#">
							<i class="glyphicon glyphicon-home"></i>
							Overview </a>
						</li>
						
						<li>
							<a href='<spring:url value="/settings.html" />'>
							<i class="glyphicon glyphicon-user"></i>
							Account Settings </a>
						</li>
						<li>
							<a href='<spring:url value="/resume-update.html" />' target="_blank">
							<i class="glyphicon glyphicon-ok"></i>
							 Update Profile </a>
						</li>
						<li>
							<a href='<spring:url value="/education.html" />' target="_blank">
							<i class="glyphicon glyphicon-ok"></i>
							Education Update </a>
						</li>
						<li>
							<a href='<spring:url value="/experiences.html" />' target="_blank">
							<i class="glyphicon glyphicon-ok"></i>
							Experience Update </a>
						</li>
						<li>
							<a href='<spring:url value="/skills.html" />' target="_blank">
							<i class="glyphicon glyphicon-ok"></i>
							Skills Update </a>
						</li>
						
						<li>
							<a href="#">
							<i class="glyphicon glyphicon-flag"></i>
							Help </a>
						</li>
					</ul>
				</div>
				<!-- END MENU -->
			</div>
		</div>
		<div class="col-md-9">
            <div class="profile-content">
            <div class="panel panel-info">
  <div class="panel-heading">Personal Details</div>
  <div class="panel-body">
    <table class="table" class="table  table-user-information ">
 <tbody>
  <tr>
  <td>Name:</td>
    <td> <c:out value="${ userDetail.firstName}"/><c:out value="${ userDetail.lastName}"/></td>
   
  </tr>
  <tr>
  <td>Address:</td>
    <td> <c:out value="${ userDetail.address}"/></td>
       
  </tr>
 <tr>
  <td>State:</td>
    <td> <c:out value="${ userDetail.state}"/></td>
       
  </tr>
  <tr>
  <td>City:</td>
    <td> <c:out value="${ userDetail.city}"/></td>
       
  </tr>

 <tr>
  <td>Email:</td>
    <td> <c:out value="${ userDetail.email}"/></td>
       
  </tr>
  <tr>
  <td>Phone Number:</td>
    <td> <c:out value="${ userDetail.phone}"/></td>
       
  </tr>
  <tr>
   <td>Date of Birth:</td>
    <td> <c:out value="${ userDetail.birthday}"/></td>
       
  </tr>
</tbody>
</table>
  </div>
  
</div>
      <div class="panel panel-info">
  <div class="panel-heading">Education</div>
  <div class="panel-body">
        <table class="table" class="table  table-user-information ">
 <tbody>
  <c:forEach items="${ userDetail.education}" var="education">
  <tr>
 
  <td>Course Name:</td>
    <td> <c:out value="${ education.courseName}"/></td>
   
  </tr>
  <tr>
  <td>University:</td>
    <td> <c:out value="${education.institution}"/></td>
       
  </tr>
 <tr>
  <td>Passing Year:</td>
    <td> <c:out value="${education.passingYear}"/></td>
       
  </tr>
  <tr>
  <td>Duration:</td>
    <td> <c:out value="${education.specialization}"/></td>
       
  </tr>
  </c:forEach>
 
 
</tbody>
</table>
  </div>
  
</div>
 <div class="panel panel-info">
  <div class="panel-heading">Experience</div>
  <div class="panel-body">
        <table class="table" class="table  table-user-information ">
 <tbody>
 <c:forEach items="${userDetail.experiences }" var="experience">
  <tr>
  <td>Job Title:</td>
    <td> <c:out value="${experience.title}"/><c:out value="${ userDetail.lastName}"/></td>
   
  </tr>
  <tr>
  <td>Industry:</td>
    <td> <c:out value="${experience.industry}"/></td>
       
  </tr>
 <tr>
  <td>Description:</td>
    <td> <c:out value="${experience.jobDescription}"/></td>
       
  </tr>
  <tr>
  <td>Duration:</td>
    <td> <c:out value="${experience.duration}"/></td>
       
  </tr>
 </c:forEach>
</tbody>
</table>
  </div>
  
</div>
 <div class="panel panel-info">
  <div class="panel-heading">Expertice/Skill/Certification</div>
  <div class="panel-body">
       <table class="table" class="table  table-user-information ">
 <tbody>
  <c:forEach items="${userDetail.skills }" var="skill">
  <tr>
  <td>Expertice in:</td>
    <td> <c:out value="${skill.skillName}"/></td>
   
  </tr>
  <tr>
  <td>Certification:</td>
    <td> <c:out value="${ skill.certification}"/></td>
       
  </tr>

    <tr>
  <td>Version:</td>
    <td> <c:out value="${skill.version}"/></td>
       
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

<br>



