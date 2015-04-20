<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="../../favicon.ico">
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles-extras" prefix="tilesx"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<title><tiles:getAsString name="title" /></title>
<link href='http://fonts.googleapis.com/css?family=Raleway:500' rel='stylesheet' type='text/css'>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">



<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
<!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->


<script type="text/javascript"
	src="../../js/ie-emulation-modes-warning.js">
	
</script>
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
<style type="text/css">
body {
	min-height: 800px;
	padding-top: 60px;
}

#body-container {
	min-height: 500px;
}
</style>

</head>

<body>

	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Careers Guide</a>
			</div>
			<div id="navbar" class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li class="${current=='index'?'active':'' }"><a
						href='<spring:url value="/" />'>Home</a></li>
						
						
						<security:authorize access="hasRole('ROLE_ADMIN')">
					<li class="${current=='users'?'active':'' }"><a
						href='<spring:url value="/users.html" />'>Users</a></li>
						</security:authorize>
						
						
						
					<security:authorize access="hasRole('ROLE_USER')">
					<li class="${current=='resume'?'active':'' }"><a
						href='<spring:url value="/resume-update.html" />'>Update Resume</a></li>
						<li class="${current=='resume-update'?'active':'' }"><a
						href='<spring:url value="/resume.html" />'>Preview Resume</a></li>
						
						<li class="${current=='applied-jobs'?'active':'' }"><a
						href='<spring:url value="/applied-jobs.html" />'>Apllication Status</a></li>
						</security:authorize>
						
						
						
						<security:authorize access="hasRole('ROLE_CORP')">
					<li class="${current=='jobform'?'active':'' }"><a
						href='<spring:url value="/jobform.html" />'>Submit Job</a></li>
						<li class="${current=='tests'?'active':'' }"><a
						href='<spring:url value="/tests.html" />'>Exams</a></li>
						<li class="${current=='posted-jobs'?'active':'' }"><a
						href='<spring:url value="/posted-jobs.html" />'>All Jobs</a></li>
						
						<li class="${current=='applies'?'active':'' }"><a
						href='<spring:url value="/applies.html" />'>Jobs Applies</a></li>
						
						</security:authorize>
						
						
						<security:authorize access="!isAuthenticated()">
						<li class="${current=='register'?'active':'' }"><a
						href='<spring:url value="/register.html" />'>Register</a></li>
						<li class="${current=='regcorp'?'active':'' }"><a
						href='<spring:url value="/regcorp.html" />'>Employer Register</a></li>
						<li class="${current=='login'?'active':'' }"><a
						href='<spring:url value="/login.html" />'>Login</a></li>
						</security:authorize>
					
						
						<security:authorize access="isAuthenticated()">
					<li><a href='<spring:url value="/logout" />'>Logout</a></li>
					</security:authorize>
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</nav>

	<div class="container">

		<div class="starter-template" id="body-container">
			<tiles:insertAttribute name="body" />



		</div>

	</div>
	<!-- /.container -->

	<tiles:insertAttribute name="footer" />
	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<!-- Latest compiled and minified JavaScript -->
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>
