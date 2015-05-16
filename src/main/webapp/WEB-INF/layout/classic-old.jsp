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

<%@ include file="../layout/taglib.jsp"%>
<script src='https://www.google.com/recaptcha/api.js'></script>
<script type="text/javascript"
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.1/jquery.validate.min.js"></script>
<title><tiles:getAsString name="title" /></title>
<link href='http://fonts.googleapis.com/css?family=Raleway:500'
	rel='stylesheet' type='text/css'>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="../../css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="../../css/bootstrap-theme.min.css">
 <link rel="stylesheet" href="../../css/normalize.css">
       
        <link rel="stylesheet" href="../../css/fontello.css">
        <link rel="stylesheet" href="../../css/animate.css">        
        <link rel="stylesheet" href="../../css/owl.carousel.css">
        <link rel="stylesheet" href="../../css/owl.theme.css">
        <link rel="stylesheet" href="../../css/owl.transitions.css">
        <link rel="stylesheet" href="../../css/style.css">
        <link rel="stylesheet" href="../../css/main.css">
        <link rel="stylesheet" href="../../css/responsive.css">
       


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
				
			</div>
			<div id="navbar" class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li class="${current=='index'?'active':'' }"><a
						href='<spring:url value="/" />'><span class=" glyphicon glyphicon-home" aria-hidden="true"></span></a></li>
					<security:authorize access="hasRole('ROLE_ADMIN')">
						<li class="${current=='users'?'active':'' }"><a
							href='<spring:url value="/users.html" />'>Users</a></li>
					</security:authorize>
					<security:authorize access="hasRole('ROLE_USER')">
						<li class="${current=='resume'?'active':'' }"><a
							href='<spring:url value="/resume-update.html" />'>Update
								Resume</a></li>
						<li class="${current=='resume-update'?'active':'' }"><a
							href='<spring:url value="/resume.html" />'>Preview Resume</a></li>

						<li class="${current=='applied-jobs'?'active':'' }"><a
							href='<spring:url value="/applied-jobs.html" />'>Apllication
								Status</a></li>
					</security:authorize>
					
					<li class="${current=='jobs'?'active':'' }"><a
						href='<spring:url value="/jobs.html" />'>Search</a></li>

					<security:authorize access="!isAuthenticated()">
						<li class="${current=='register'?'active':'' }"><a
							href='<spring:url value="/register.html" />'>Register</a></li>
						<li class="${current=='regcorp'?'active':'' }"><a
							href='<spring:url value="/regcorp.html" />'>Submit Job</a></li>
						<li class="${current=='login'?'active':'' }"><a
							href='<spring:url value="/login.html" />'>Login</a></li>
					</security:authorize>
					<li class="${current=='contactus'?'active':'' }"><a
						href='<spring:url value="/contactus.html" />'>contactus</a></li>
					
				</ul>
				<ul class="nav navbar-nav navbar-right">
				<security:authorize access="isAuthenticated()">
				<li><a href='<spring:url value="/profile.html" />'><span class=" glyphicon glyphicon-user" aria-hidden="true"></span>Profile</a></li>
					
					<li><a href="/settings.html"><span class=" glyphicon glyphicon-cog" aria-hidden="true"></span></a></li>
				
						<li><a href='<spring:url value="/logout" />'><span class=" glyphicon glyphicon-off" aria-hidden="true"></span></a></li>
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
	
	<!-- Latest compiled and minified JavaScript -->
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>
