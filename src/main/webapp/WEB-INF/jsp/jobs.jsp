<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/taglib.jsp"%>
<style>
<!--
.widget .panel-body {
	padding: 0px;
}

.widget .list-group {
	margin-bottom: 0;
}

.widget .panel-title {
	display: inline
}

.widget .label-info {
	float: right;
}

.widget li.list-group-item {
	border-radius: 0;
	border: 0;
	border-top: 1px solid #ddd;
}

.widget li.list-group-item:hover {
	background-color: rgba(86, 61, 124, .1);
}

.widget .mic-info {
	color: #666666;
	font-size: 11px;
}

.widget .action {
	margin-top: 5px;
}

.widget .comment-text {
	font-size: 12px;
}

.widget .btn-block {
	border-top-left-radius: 0px;
	border-top-right-radius: 0px;
}
-->
</style>
<div class="container">
	<div class="row">
		<div class="jumbotron">
			<div class="search-form wow pulse" data-wow-delay="0.8s">
				<form:form commandName="search" class=" form-inline">

					<div class="form-group">
						<form:input path="title" placeholder=" Job Title" type="text"
							class="form-control" />
					</div>
					<div class="form-group">
						<select name="" class="form-control">
							<option>Select Your City</option>
							<option selected>New york, CA</option>
							<option>New york, CA</option>
							<option>New york, CA</option>
							<option>New york, CA</option>
						</select>
					</div>
					<div class="form-group">
						<form:select path="qualification" placeholder="Qualification"
							class="form-control">
							<option selected>Qualification</option>
							<option>bbc</option>
							<option>mba</option>
							<option>App Design</option>
						</form:select>
					</div>
					<input type="submit" class="btn" value="Search">


				</form:form>
			</div>
		</div>
	</div>
</div>

<div class="container">
	
	<c:forEach items="${jobs}" var="job">
		<div class="col-xs-6 col-md-3">
			<div class="panel panel-default">
				<div class="panel-heading" style="background-color: fff;">
					<c:out value="${job.experienceMin}" />
					-
					<c:out value="${job.experienceMax}" />
					Yrs
				</div>
				<div class="panel-body">
					<p>
						<a href='<spring:url value="/jobdetail/${job.id}.html"/>'><c:out
								value="${job.companyName}" /> is Hiring as <c:out
								value="${job.title}" /></a> at
						<c:out value="${job.state}" />
					</p>
					<p>
						<c:out value="${job.publishdate}" />
					</p>

					<p>
						Location <i class="icon-location"></i>
						<c:out value="${job.state}" />
						<br>
						<c:out value="${job.city}" />
					</p>




				</div>
				<div class="panel-footer">
					<a href='<spring:url value="/jobdetail/${job.id}.html"/>'>
						<button type="button" class="btn btn-primary btn-xs"
							title="View Detail">
							<span class="glyphicon glyphicon-pencil"></span>View
						</button>
					</a> <a href='<spring:url value="/apply/${job.id}.html"/>'>
						<button type="button" class="btn btn-success btn-xs"
							title="Approved">
							<span class="glyphicon glyphicon-ok"></span>Apply
						</button>
					</a>
				</div>
			</div>

		</div>

	</c:forEach>
</div>
