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
<style type="text/css" id="custom-background-css">
<link href="../../css/dropzone.css" type="text/css" rel="stylesheet" />
body.custom-background { background-color: #ffffff; }
</style>
<%@ include file="../layout/taglib.jsp"%>
<script type="text/javascript"src="../../js/jquery-2.1.3.min.js"></script>
	<script src="../../js/less.min.js" type="text/javascript"></script>
  <link rel="stylesheet" href="../../less/bootstrap.less">	
<script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.1/jquery.validate.min.js"></script>
<script src='https://www.google.com/recaptcha/api.js'></script>

<title><tiles:getAsString name="title" /></title>
 

     <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800' rel='stylesheet' type='text/css'>

        <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
        <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
        <link rel="icon" href="favicon.ico" type="image/x-icon">
      
      <link rel="stylesheet" href="../../css/bootstrap.min.css">
 		<link rel="stylesheet" href="../../css/bootstrap-theme.min.css">
    	 <link rel="stylesheet" href="../../css/style.css">
        <link rel="stylesheet" href="../../css/skin-blue1.css">
         <link rel="stylesheet" href="../../css/fontello.css">
        <link rel="stylesheet" href="../../css/animate.css">  
         <link rel="stylesheet" href="../../css/responsive.css">
         <link rel="stylesheet" href="../../css/owl.theme.css">
          <link rel="stylesheet" href="../../css/owl.transitions.css">
           <link rel="stylesheet" href="../../css/owl.carousel.css">
<style type="text/css">
body {
	min-height: 1100px;
	padding-top: 70px;
	background-color:#f5f5f5;
}

#body-container {
	min-height: 1100px;
}
</style>

</head>

<body class=" skin-blue layout-top-nav">
  
 
  
  <header class="main-header">
  
	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed btn-info"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span>
					 <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
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
						
						
						
						
						

						<li class="${current=='applied-jobs'?'active':'' }"><a
							href='<spring:url value="/applied-jobs.html" />'>MyCareer
								</a></li>
								<li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Resume <span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
           <li class="${current=='resume'?'active':'' }"><a
							href='<spring:url value="/resume-update.html" />'>Update
								Resume</a></li>
						<li class="${current=='resume-update'?'active':'' }"><a
							href='<spring:url value="/resume.html" />'>Preview Resume</a></li>
            <li><a href="#">Something else here</a></li>
            <li class="divider"></li>
            <li><a href="#">Separated link</a></li>
            <li class="divider"></li>
            <li><a href="#">One more separated link</a></li>
          </ul>
        </li>
					</security:authorize>
					
					<security:authorize access="hasRole('ROLE_CORP')">
						
							<li class="${current=='dashboard'?'active':'' }"><a
							href='<spring:url value="/dashboard.html" />'>Admin Panel</a></li>
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
        <li class="dropdown">
          <a href="" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><span class=" glyphicon glyphicon-user" aria-hidden="true"></span><security:authentication property="principal.username"/> <span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href='<spring:url value="/profile.html" />'>Profile</a></li>
            <li><a href="/settings.html"><span class=" glyphicon glyphicon-cog" aria-hidden="true"></span>Settings</a></li>
            <li><a href='<spring:url value="/logout" />'><span class=" glyphicon glyphicon-off" aria-hidden="true">Singn out</a></li>
            <li class="divider"></li>
            <li><a href="#">Separated link</a></li>
          </ul>
        </li>
      </security:authorize>
					
				</ul>
				

			</div>
			<!--/.nav-collapse -->
		</div>
	</nav>
      </header> 
      
			<tiles:insertAttribute name="body" />
			</div>
			
			
	<tiles:insertAttribute name="footer" />
	
        <script src="../../js/bootstrap.min.js"></script>
        <script src="../../js/owl.carousel.min.js"></script>
        <script src="../../js/wow.js"></script>
        <script src="../../js/main.js"></script>
 </div>  
</body>
</html>
