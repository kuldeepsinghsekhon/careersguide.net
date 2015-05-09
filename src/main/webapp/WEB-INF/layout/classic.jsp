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
<script type="text/javascript"
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.1/jquery.validate.min.js"></script>
<script src='https://www.google.com/recaptcha/api.js'></script>

<title><tiles:getAsString name="title" /></title>
     <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800' rel='stylesheet' type='text/css'>

        <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
        <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
        <link rel="icon" href="favicon.ico" type="image/x-icon">

        <link rel="stylesheet" href="../../css/normalize.css">
        <link rel="stylesheet" href="../../css/bootstrap.min.css">
        <link rel="stylesheet" href="../../css/fontello.css">
        <link rel="stylesheet" href="../../css/animate.css">        
        <link rel="stylesheet" href="../../css/bootstrap.min.css">
        <link rel="stylesheet" href="../../css/owl.carousel.css">
        <link rel="stylesheet" href="../../css/owl.theme.css">
        <link rel="stylesheet" href="../../css/owl.transitions.css">
        <link rel="stylesheet" href="../../css/style.css">
        <link rel="stylesheet" href="../../css/responsive.css">
        <script src="js/vendor/modernizr-2.6.2.min.js"></script>
        <link href="../../dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
        <link href="../../dist/css/skins/skin-blue-light.min.css" rel="stylesheet" type="text/css" />
         <link href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" rel="stylesheet" type="text/css" />
<style type="text/css">
body {
	min-height: 1000px;
	padding-top: 0px;
}

#body-container {
	min-height: 1800px;
}
</style>

</head>

<body class=" sidebar-collapse ">
  
   <div class="wrapper">
  
  
  
	<nav class="navbar navbar-default ">
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
							href='<spring:url value="/register.html" />'>Job Seekers</a></li>
						<li class="${current=='regcorp'?'active':'' }"><a
							href='<spring:url value="/regcorp.html" />'>Employeers</a></li>
						<li class="${current=='login'?'active':'' }"><a
							href='<spring:url value="/login.html" />'>Login</a></li>
					</security:authorize>
					<li class="${current=='contactus'?'active':'' }"><a
						href='<spring:url value="/contactus.html" />'>Contact</a></li>
					
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
			<tiles:insertAttribute name="body" />
	<tiles:insertAttribute name="footer" />
        <script src="../../js/bootstrap.min.js"></script>
        <script src="../../js/owl.carousel.min.js"></script>
        <script src="../../js/wow.js"></script>
        <script src="../../js/main.js"></script>
 </div>       
</body>
</html>
