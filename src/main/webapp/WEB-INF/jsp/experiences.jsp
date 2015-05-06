<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/taglib.jsp"%>
<h3>Update Your Resume</h3>
<div class="container">

	<div class="row">
		<div class="col-sm-3 col-md-3">
			<div class="panel-group" id="accordion">


				<div class="panel panel-default">
					<div class="panel-heading">
						<h4 class="panel-title">
							<a data-toggle="collapse" data-parent="#accordion"><span
								class="glyphicon glyphicon-user"> </span>Update Resume</a>
						</h4>
					</div>
					<div id="collapseThree" class="panel-collapse">
						<div class="panel-body" id="panel-boby">
							<table class="table">
								<tr>
									<td><a id="Snapshot" href="/resume-update.html">Snapshot</a>
									</td>
								</tr>
								<tr>
									<td><a id="Employer" href="/experiences.html">Employer</a>
									</td>
								</tr>
								<tr>
									<td><a id="Education" href="/education.html">Education</a>
									</td>
								</tr>
								<tr>
									<td><a id="Skills" href="/skills.html">Skills</a></td>
								</tr>
								<tr>
									<td><span class="glyphicon glyphicon-trash text-danger"></span><a
										href="#" class="text-danger"> Update Resume</a></td>
								</tr>
							</table>
						</div>
					</div>
				</div>

			</div>
		</div>
		<div class="col-sm-9 col-md-9" id="bodyDiv">
			<div class="alert alert-danger " hidden="true" id="message">
				<h4>Password does not match</h4>

			</div>
			<c:if test="${param.success eq true}">
				<div class="alert alert-success ">
					<h6>Success full</h6>
				</div>
			</c:if>

			<div class="panel panel-default">
				<div class="panel-heading">Prior Experiences</div>
				<div class="panel-body">
					<!-- Button trigger modal -->
					<button type="button" class="btn btn-primary  pull-right"
						data-toggle="modal" data-target="#myModal">Add Experience
					</button>
					 
 <div class="bs-callout bs-callout-danger">
        <h4>Prior Experiences</h4>
       
        <ul class="list-group">
         <c:forEach items='${experiences}' var="experience">
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
           	
         
					<!-- Modal -->
					<form:form commandName="experience" class="form-horizontal">
						<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
							aria-labelledby="myModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
										<h4 class="modal-title" id="myModalLabel">Add Prior Work
											Experiences</h4>
									</div>
									<div class="modal-body">


										<div class="form-group">
											<label for="firstName" class="col-sm-2 control-label">Profile
												:</label>
											<div class="col-sm-10">
												<form:input path="title" class="form-control" />

											</div>
										</div>
										<div class="form-group">
											<label for="firstName" class="col-sm-2 control-label">Name:</label>
											<div class="col-sm-10">
												<form:input path="industry" class="form-control" />

											</div>
										</div>
										<div class="form-group">
											<label for="firstName" class="col-sm-2 control-label">Duration
												 :</label>
											<div class="col-sm-10">
												<form:input path="Duration" class="form-control" />

											</div>
										</div>
										<div class="form-group">
											<label for="firstName" class="col-sm-2 control-label">Description
												:</label>
											<div class="col-sm-10">
												<form:input path="jobDescription"
													class="form-control" />

											</div>

										</div>


									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-default"
											data-dismiss="modal">Close</button>
										<button type="submit" class="btn btn-primary">submit
										</button>
									</div>
								</div>
							</div>
						</div>
					</form:form>


				</div>
			</div>
		</div>

	</div>
</div>
