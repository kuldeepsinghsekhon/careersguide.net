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
<script type="text/javascript"
		src="../../js/jquery-2.1.3.min.js"></script>
		
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
        <link rel="stylesheet" href="../../css/owl.carousel.css">
        <link rel="stylesheet" href="../../css/owl.theme.css">
        <link rel="stylesheet" href="../../css/owl.transitions.css">
        <link rel="stylesheet" href="../../css/style.css">
        <link rel="stylesheet" href="../../css/main.css">
        <link rel="stylesheet" href="../../css/responsive.css">
        <script src="js/vendor/modernizr-2.6.2.min.js"></script>
        <link href="../../dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" href="../../css/bootstrap-theme.min.css">
        <link href="../../dist/css/skins/_all-skins.min.css" rel="stylesheet" type="text/css" />
<style type="text/css">
body {
	min-height: 600px;
	padding-top: 0px;
}

#body-container {
	min-height: 900px;
}
</style>

</head>

<body class=" skin-blue layout-top-nav">
  
   <div class="wrapper">
  
  <header class="main-header">
  
	<nav class="navbar navbar-static-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> 
					<span class="icon-bar"></span> 
					<span class="icon-bar"></span>
					 <span class="icon-bar"></span>
				</button>
				</div>
			
			 <div class="collapse navbar-collapse pull-left" id="navbar-collapse">
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
				 <form class="navbar-form navbar-left" role="search">
                <div class="form-group">
                  <input type="text" class="form-control" id="navbar-search-input" placeholder="Search">
                </div>
              </form>                          
            </div><!-- /.navbar-collapse -->
				
			
					
				
				       <!-- Navbar Right Menu -->
              <div class="navbar-custom-menu">
                <ul class="nav navbar-nav">
                  <!-- Messages: style can be found in dropdown.less-->
                  <li class="dropdown messages-menu">
                    <!-- Menu toggle button -->
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                      <i class="fa fa-envelope-o"></i>
                      <span class="label label-success">4</span><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>
                    </a>
                    <ul class="dropdown-menu">
                      <li class="header">You have 4 messages</li>
                      <li>
                        <!-- inner menu: contains the messages -->
                        <ul class="menu">
                          <li><!-- start message -->
                            <a href="#">
                              <div class="pull-left">
                                <!-- User Image -->
                                <img src="../../dist/img/user2-160x160.jpg" class="img-circle" alt="User Image"/>
                              </div>
                              <!-- Message title and timestamp -->
                              <h4>
                                Support Team
                                <small><i class="fa fa-clock-o"></i> 5 mins</small>
                              </h4>
                              <!-- The message -->
                              <p>Why not buy a new awesome theme?</p>
                            </a>
                          </li><!-- end message -->
                        </ul><!-- /.menu -->
                      </li>
                      <li class="footer"><a href="#">See All Messages</a></li>
                    </ul>
                  </li><!-- /.messages-menu -->

                  <!-- Notifications Menu -->
                  <li class="dropdown notifications-menu">
                    <!-- Menu toggle button -->
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                      <i class="fa fa-bell-o"></i>
                      <span class="label label-warning">10</span><span class="glyphicon glyphicon-bell"></span>
                    </a>
                    <ul class="dropdown-menu">
                      <li class="header">You have 10 notifications</li>
                      <li>
                        <!-- Inner Menu: contains the notifications -->
                        <ul class="menu">
                          <li><!-- start notification -->
                            <a href="#">
                              <i class="text-aqua"></i> 5 new members joined today
                            </a>
                          </li><!-- end notification -->
                        </ul>
                      </li>
                      <li class="footer"><a href="#">View all</a></li>
                    </ul>
                  </li>
                  <!-- Tasks Menu -->
                 
                  <!-- User Account Menu -->
                  <li class="dropdown user user-menu">
                    <!-- Menu Toggle Button -->
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                      <!-- The user image in the navbar-->
                      <img src="../../dist/img/user2-160x160.jpg" class="user-image" alt="User Image"/>
                      <!-- hidden-xs hides the username on small devices so only the image appears. -->
                      <span class="hidden-xs">Alexander Pierce</span>
                    </a>
                    <ul class="dropdown-menu">
                      <!-- The user image in the menu -->
                      <li class="user-header">
                        <img src="../../dist/img/user2-160x160.jpg" class="img-circle" alt="User Image" />
                        <p>
                          Alexander Pierce - Web Developer
                          <small>Member since Nov. 2012</small>
                        </p>
                      </li>
                      <!-- Menu Body -->
                      <li class="user-body">
                        <div class="col-xs-4 text-center">
                          <a href="#">Followers</a>
                        </div>
                        <div class="col-xs-4 text-center">
                          <a href="#">Sales</a>
                        </div>
                        <div class="col-xs-4 text-center">
                          <a href="#">Friends</a>
                        </div>
                      </li>
                      <!-- Menu Footer-->
                       <security:authorize access="isAuthenticated()">
                       <a href="/settings.html" class="btn btn-default btn-flat"><span class=" glyphicon glyphicon-cog" aria-hidden="true"></span>Settings</a>
                      <li class="user-footer">
                        <div class="pull-left">
                       
			<a href='<spring:url value="/profile.html" />' class="btn btn-default btn-flat"><span class=" glyphicon glyphicon-user" aria-hidden="true"></span>Profile</a>
					
                          
                        </div>
                        <div class="pull-right">
                        <a href='<spring:url value="/logout" />' class="btn btn-default btn-flat" ><span class=" glyphicon glyphicon-off" aria-hidden="true"></span>Sign out</a>
                         
                        </div>
                      </li>
                      </security:authorize>
                    </ul>
                  </li>
                </ul>
				
		   </div><!-- /.navbar-custom-menu -->
          </div><!-- /.container-fluid -->
        </nav>
      </header> 
       <div class="content-wrapper"> 
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
